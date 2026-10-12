(* Untrusted profile input and pure node permutations. No CFG rewriting. *)
let profiles = lazy (
  match Sys.getenv_opt "VERIOP_LAYOUT_PROFILE" with
  | None -> None
  | Some path ->
    try
      let ic = open_in path in
      Fun.protect ~finally:(fun () -> close_in ic) (fun () ->
        let all = Hashtbl.create 512 and lines = ref 0 in
        (try while true do
          let line = input_line ic in incr lines;
          if !lines > 2000000 then failwith "profile too large";
          match String.split_on_char ' ' line with
          | [key; source; target; count] ->
              if String.length key <> 32 || not (String.for_all (function
                | '0'..'9' | 'a'..'f' -> true | _ -> false) key)
              then failwith "profile key";
              let u = int_of_string source and v = int_of_string target
              and f = float_of_string count in
              if u < 0 || v <= 0 || not (f >= 0. && f <= 1e15)
              then failwith "profile count";
              let edges = match Hashtbl.find_opt all key with
              | Some edges -> edges
              | None -> let edges = Hashtbl.create 64 in Hashtbl.add all key edges; edges in
              let old = Option.value (Hashtbl.find_opt edges (u,v)) ~default:0. in
              if old +. f > 1e15 then failwith "profile sum";
              Hashtbl.replace edges (u,v) (old +. f)
          | _ -> failwith "profile row"
        done with End_of_file -> ()); Some all)
    with Sys_error _ | Failure _ | Invalid_argument _ -> None)

let lookup f =
  let key = Digest.to_hex (Digest.string (Marshal.to_string f [Marshal.No_sharing])) in
  match Lazy.force profiles with None -> key, None
  | Some all -> key, Hashtbl.find_opt all key

let search graph sizes counts entry_count actual_jumps baseline =
  let n = Array.length graph.LayoutSearch.succ in
  let edge_list = ref [] and total = ref entry_count and largest = ref 1. in
  Array.iteri (fun u targets -> List.iter (fun v ->
    let f = counts u v in
    if f > 0. then begin
      edge_list := (u,v,f) :: !edge_list; total := !total +. f;
      largest := max !largest f
    end) (List.sort_uniq compare targets)) graph.LayoutSearch.succ;
  let base_jumps = actual_jumps baseline in
  let instructions = Array.fold_left (+) 0 sizes / 4 in
  let score order =
    let jumps = actual_jumps order in
    if jumps > base_jumps + max 1 (instructions / 100) then neg_infinity else
    let pos = Array.make n 0 and next = Array.make n (-1) and offset = ref 0 in
    let last = ref (-1) in
    List.iter (fun u ->
      pos.(u) <- !offset; offset := !offset + sizes.(u);
      if !last >= 0 then next.(!last) <- u; last := u) order;
    let reward = ref (if List.hd order = graph.LayoutSearch.entry then entry_count else 0.) in
    List.iter (fun (u,v,f) ->
      let fall = next.(u) = v && List.mem v graph.LayoutSearch.eligible.(u) in
      let distance = abs (pos.(v) - pos.(u) - sizes.(u)) in
      let near = max 0. (1. -. float distance /. 1024.) in
      let benefit = if fall then 1. else
        0.1 *. near -. (if List.length graph.LayoutSearch.succ.(u) = 1 then 0.15 else 0.) in
      reward := !reward +. f *. benefit) !edge_list;
    !reward -. 0.002 *. (!total /. float (max 1 n)) *. float (max 0 (jumps - base_jumps)) in
  let best = ref baseline and value = ref (score baseline) in
  let consider order =
    let v = score order in
    if v > !value +. 1e-9 then (best := order; value := v) in
  let weight u v = int_of_float (1e6 *. counts u v /. !largest) in
  LayoutSearch.search graph baseline weight consider;
  (* ponytail: bound full distance rescoring to 512 nodes and 4096 proposals;
     incremental distance deltas are only needed if compile cost warrants it. *)
  if n <= 512 then begin
    let budget = ref 4096 in
    let insert x y before =
      if x <> y && !budget > 0 then begin
        decr budget;
        let rest = List.filter ((<>) x) !best in
        let order = List.concat_map (fun u ->
          if u = y then (if before then [x;y] else [y;x]) else [u]) rest in
        consider order
      end in
    for _ = 1 to 2 do
      List.iter (fun (u,v,_) -> insert v u false; insert u v true)
        (List.sort (fun (_,_,a) (_,_,b) -> compare b a) !edge_list)
    done
  end;
  !best
