(* MODE is fixed per experimental compiler: 0 greedy, 1 unweighted search,
   2 loop-weighted search. It is never chosen from program identity. *)
let layout_mode = MODE

let enumerate_aux f reach =
  let baseline = flatten_blocks (basic_blocks f (join_points f)) in
  let pcs = Array.of_list baseline in
  let n = Array.length pcs in
  if n = 0 then baseline else
  let index = Hashtbl.create n in
  Array.iteri (fun i pc -> Hashtbl.add index (P.to_int pc) i) pcs;
  let indices targets = List.filter_map (fun pc -> Hashtbl.find_opt index (P.to_int pc)) targets in
  let blocks = Array.map (fun pc -> match PTree.get pc f.fn_code with Some b -> b | None -> []) pcs in
  let rec eligible = function
    | Lbranch s :: _ -> [s]
    | Lcond (_, _, yes, no) :: _ -> [yes; no]
    | Lreturn :: _ | Ltailcall _ :: _ | Ljumptable _ :: _ | [] -> []
    | _ :: rest -> eligible rest in
  let graph = LayoutSearch.{
    succ = Array.map (fun b -> indices (successors_block b)) blocks;
    eligible = Array.map (fun b -> indices (eligible b)) blocks;
    entry = Hashtbl.find index (P.to_int f.fn_entrypoint)
  } in
  let weight = LayoutSearch.weights graph (layout_mode = 2) in
  (* Exact modeled Linear cost, including consecutive-label continuations.
     This ranks quality only; the original Rocq checker still validates order. *)
  let assess order =
    let labels = ref IntSet.empty and jumps = ref 0 and reward = ref 0 in
    List.iter (fun u ->
      let rec scan ordinary = function
        | [] -> if ordinary then labels := IntSet.empty
        | Lbranch s :: _ ->
            let v = Hashtbl.find index (P.to_int s) in
            if IntSet.mem v !labels then reward := !reward + weight u v
            else begin incr jumps; labels := IntSet.empty end;
            if ordinary then labels := IntSet.empty
        | Lcond (_, _, yes, no) :: _ ->
            let v1 = Hashtbl.find index (P.to_int yes)
            and v2 = Hashtbl.find index (P.to_int no) in
            if IntSet.mem v1 !labels then reward := !reward + weight u v1
            else if IntSet.mem v2 !labels then reward := !reward + weight u v2
            else incr jumps;
            labels := IntSet.empty
        | Lreturn :: _ | Ltailcall _ :: _ | Ljumptable _ :: _ -> labels := IntSet.empty
        | _ :: rest -> scan true rest in
      scan false blocks.(u); labels := IntSet.add u !labels
    ) (List.rev order);
    if not (IntSet.mem graph.LayoutSearch.entry !labels) then incr jumps;
    (!jumps, !reward) in
  let original = List.init n (fun i -> i) in
  if layout_mode = 0 then
    List.map (Array.get pcs) (LayoutSearch.greedy graph original weight)
  else begin
    let best = ref original and best_quality = ref (assess original) in
    let baseline_jumps = fst !best_quality in
    let consider order =
      let jumps, reward = assess order in
      let old_jumps, old_reward = !best_quality in
      let better =
        if layout_mode = 2 then reward > old_reward || (reward = old_reward && jumps < old_jumps)
        else jumps < old_jumps in
      if jumps <= baseline_jumps && better then begin
        best := order; best_quality := (jumps, reward)
      end in
    LayoutSearch.search graph original weight consider;
    List.map (Array.get pcs) !best
  end
