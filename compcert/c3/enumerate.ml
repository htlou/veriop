let enumerate_aux f reach =
  let baseline = flatten_blocks (basic_blocks f (join_points f)) in
  let key, profile = PgoLayout.lookup f in
  let log matched changed = match Sys.getenv_opt "VERIOP_LAYOUT_LOG" with
  | None -> ()
  | Some path ->
    let oc = open_out_gen [Open_creat;Open_append;Open_text] 0o600 path in
    Printf.fprintf oc "%s %b %b %d\n" key matched changed (List.length baseline);
    close_out oc in
  match profile with
  | None -> log false false; baseline
  | Some profile ->
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
    let count u v = Option.value (Hashtbl.find_opt profile (u,v)) ~default:0. in
    let entry_count = count 0 (P.to_int f.fn_entrypoint) in
    let original = List.init n (fun i -> i) in
    let jumps order =
      let labels = ref IntSet.empty and jumps = ref 0 in
      List.iter (fun u ->
        let rec scan ordinary = function
          | [] -> if ordinary then labels := IntSet.empty
          | Lbranch s :: _ ->
            let v = Hashtbl.find index (P.to_int s) in
            if not (IntSet.mem v !labels) then (incr jumps; labels := IntSet.empty);
            if ordinary then labels := IntSet.empty
          | Lcond (_, _, yes, no) :: _ ->
            let v1 = Hashtbl.find index (P.to_int yes)
            and v2 = Hashtbl.find index (P.to_int no) in
            if not (IntSet.mem v1 !labels || IntSet.mem v2 !labels) then incr jumps;
            labels := IntSet.empty
          | Lreturn :: _ | Ltailcall _ :: _ | Ljumptable _ :: _ -> labels := IntSet.empty
          | _ :: rest -> scan true rest in
        scan false blocks.(u); labels := IntSet.add u !labels) (List.rev order);
      if not (IntSet.mem graph.LayoutSearch.entry !labels) then incr jumps;
      !jumps in
    let order = if entry_count = 0. then original else
      PgoLayout.search graph (Array.map (fun b -> max 4 (4 * List.length b)) blocks)
        (fun u v -> count (P.to_int pcs.(u)) (P.to_int pcs.(v))) entry_count jumps original in
    log true (order <> original);
    List.map (Array.get pcs) order
