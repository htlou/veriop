(* *********************************************************************)
(*                                                                     *)
(*              The Compcert verified compiler                         *)
(*                                                                     *)
(*          Xavier Leroy, INRIA Paris-Rocquencourt                     *)
(*                                                                     *)
(*  Copyright Institut National de Recherche en Informatique et en     *)
(*  Automatique.  All rights reserved.  This file is distributed       *)
(*  under the terms of the INRIA Non-Commercial License Agreement.     *)
(*                                                                     *)
(* *********************************************************************)

open LTL
open Maps
open Camlcoq

(* Trivial enumeration, in decreasing order of PC *)

(***
let enumerate_aux f reach =
  positive_rec
    Coq_nil
    (fun pc nodes ->
      if PMap.get pc reach
      then Coq_cons (pc, nodes)
      else nodes)
    f.fn_nextpc
***)

(* More clever enumeration that flattens basic blocks *)

module IntSet = Set.Make(struct type t = int let compare = compare end)

(* Determine join points: reachable nodes that have > 1 predecessor *)

let join_points f =
  let reached = ref IntSet.empty in
  let reached_twice = ref IntSet.empty in
  let rec traverse pc =
    let npc = P.to_int pc in
    if IntSet.mem npc !reached then begin
      if not (IntSet.mem npc !reached_twice) then
        reached_twice := IntSet.add npc !reached_twice
    end else begin
      reached := IntSet.add npc !reached;
      match PTree.get pc f.fn_code with
      | None -> ()
      | Some b -> traverse_succs (successors_block b)
    end
  and traverse_succs = function
    | [] -> ()
    | [pc] -> traverse pc
    | pc :: l -> traverse pc; traverse_succs l
  in traverse f.fn_entrypoint; !reached_twice

(* Cut into reachable basic blocks, annotated with the min value of the PC *)

let basic_blocks f joins =
  let blocks = ref [] in
  let visited = ref IntSet.empty in
  (* start_block:
       pc is the function entry point
          or a join point
          or the successor of a conditional test *)
  let rec start_block pc =
    let npc = P.to_int pc in
    if not (IntSet.mem npc !visited) then begin
      visited := IntSet.add npc !visited;
      in_block [] max_int pc
    end
  (* in_block: add pc to block and check successors *)
  and in_block blk minpc pc =
    let npc = P.to_int pc in
    let blk = pc :: blk in
    let minpc = min npc minpc in
    match PTree.get pc f.fn_code with
    | None -> assert false
    | Some b ->
       let rec do_instr_list = function
       | [] -> assert false
       | Lbranch s :: _ -> next_in_block blk minpc s
       | Ltailcall (sig0, ros) :: _ -> end_block blk minpc
       | Lcond (cond, args, ifso, ifnot) :: _ ->
             end_block blk minpc; start_block ifso; start_block ifnot
       | Ljumptable(arg, tbl) :: _ ->
             end_block blk minpc; List.iter start_block tbl
       | Lreturn :: _ -> end_block blk minpc
       | instr :: b' -> do_instr_list b' in
       do_instr_list b
  (* next_in_block: check if join point and either extend block
     or start block *)
  and next_in_block blk minpc pc =
    let npc = P.to_int pc in
    if IntSet.mem npc joins
    then (end_block blk minpc; start_block pc)
    else in_block blk minpc pc
  (* end_block: record block that we just discovered *)
  and end_block blk minpc =
    blocks := (minpc, List.rev blk) :: !blocks
  in
    start_block f.fn_entrypoint; !blocks

(* Flatten basic blocks in decreasing order of minpc *)

let flatten_blocks blks =
  let cmp_minpc (mpc1, _) (mpc2, _) =
    if mpc1 = mpc2 then 0 else if mpc1 > mpc2 then -1 else 1
  in
    List.flatten (List.map snd (List.sort cmp_minpc blks))

(* Build the enumeration *)

(* Count the Lgoto instructions produced by an enumeration.  Track the
   initial run of labels in the continuation, just as starts_with does.
   This is only a quality comparison, never a correctness validator. *)
let jump_cost f order =
  let labels = ref IntSet.empty in
  let jumps = ref 0 in
  let rec block = function
    | [] -> ()
    | Lbranch s :: _ ->
        if not (IntSet.mem (P.to_int s) !labels) then begin
          incr jumps; labels := IntSet.empty
        end
    | Lcond (_, _, s1, s2) :: _ ->
        if not (IntSet.mem (P.to_int s1) !labels
                || IntSet.mem (P.to_int s2) !labels) then incr jumps;
        labels := IntSet.empty
    | Lreturn :: _ | Ltailcall _ :: _ | Ljumptable _ :: _ ->
        labels := IntSet.empty
    | _ :: rest -> block rest; labels := IntSet.empty
  in
  List.iter (fun pc ->
    match PTree.get pc f.fn_code with
    | None -> ()
    | Some b -> block b; labels := IntSet.add (P.to_int pc) !labels
  ) (List.rev order);
  !jumps + (if IntSet.mem (P.to_int f.fn_entrypoint) !labels then 0 else 1)

(* Improve baseline adjacencies by moving a group after an eligible
   predecessor or before an eligible successor.  The linked list preserves
   every group; each accepted move strictly increases its adjacency score. *)
let chain_blocks f blocks =
  let groups = Array.of_list
    (List.map snd (List.sort (fun (a, _) (b, _) -> compare b a) blocks)) in
  let n = Array.length groups in
  let entry = n and stop = n + 1 in
  let heads = Hashtbl.create n in
  Array.iteri (fun i nodes -> Hashtbl.add heads (P.to_int (List.hd nodes)) i) groups;
  let rec successors = function
    | [] -> []
    | Lbranch s :: _ -> [s]
    | Lcond (_, _, ifso, ifnot) :: _ -> [ifnot; ifso]
    | Lreturn :: _ | Ltailcall _ :: _ | Ljumptable _ :: _ -> []
    | _ :: rest -> successors rest
  in
  let targets = Array.init (n + 2) (fun i ->
    let pcs =
      if i = entry then [f.fn_entrypoint]
      else if i = stop then []
      else let nodes = groups.(i) in
           let last = List.fold_left (fun _ pc -> pc) (List.hd nodes) nodes in
           match PTree.get last f.fn_code with None -> [] | Some b -> successors b in
    List.filter_map (fun pc -> Hashtbl.find_opt heads (P.to_int pc)) pcs)
  in
  let score a b = if List.mem b targets.(a) then 1 else 0 in
  let next = Array.init (n + 2) (fun i -> i + 1) in
  let prev = Array.init (n + 2) (fun i -> i - 1) in
  next.(entry) <- (if n = 0 then stop else 0);
  if n > 0 then begin prev.(0) <- entry; next.(n - 1) <- stop end;
  prev.(stop) <- (if n = 0 then entry else n - 1);
  let changed = ref true in
  let move_after x y =
    if x <> y && next.(x) <> y then begin
      let py = prev.(y) and ny = next.(y) and nx = next.(x) in
      let gain = score x y + score y nx + score py ny
               - score x nx - score py y - score y ny in
      if gain > 0 then begin
        next.(py) <- ny; prev.(ny) <- py;
        next.(x) <- y; prev.(y) <- x;
        next.(y) <- nx; prev.(nx) <- y;
        changed := true
      end
    end
  in
  while !changed do
    changed := false;
    for x = 0 to n - 1 do
      List.iter (fun y -> move_after x y; move_after prev.(y) x) targets.(x)
    done
  done;
  let rec emit remaining pc acc =
    if remaining = 0 || pc = stop then List.concat (List.rev acc)
    else emit (remaining - 1) next.(pc) (groups.(pc) :: acc)
  in emit n next.(entry) []

let enumerate_aux f reach =
  let blocks = basic_blocks f (join_points f) in
  let baseline = flatten_blocks blocks in
  let candidate = chain_blocks f blocks in
  candidate
