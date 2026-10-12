open LayoutSearch
let () =
  let rng = Random.State.make [|917|] in
  let observations = ref 0 in
  for _trial = 1 to 300 do
    let n = 2 + Random.State.int rng 63 in
    let eligible = Array.init n (fun _ ->
      List.init (Random.State.int rng 3) (fun _ -> Random.State.int rng n)) in
    let graph = {succ=eligible; eligible; entry=Random.State.int rng n} in
    let expected = List.init n (fun i -> i) in
    (* Independently verify SCC equivalence by graph reachability. *)
    let reachable start =
      let seen = Array.make n false in
      let rec visit u = if not seen.(u) then begin seen.(u) <- true; List.iter visit graph.succ.(u) end in
      visit start; seen in
    let closure = Array.init n reachable and comp = components graph in
    for x = 0 to n - 1 do for y = 0 to n - 1 do
      assert ((comp.(x)=comp.(y)) = (closure.(x).(y) && closure.(y).(x)))
    done done;
    List.iter (fun weighted ->
      let weight = weights graph weighted in
      let consider order = assert (List.sort compare order = expected); incr observations in
      consider (greedy graph expected weight);
      search graph expected weight consider;
      let score order =
        let rec edges = function
          | u :: (v :: _ as rest) -> (if List.mem v graph.eligible.(u) then weight u v else 0) + edges rest
          | _ -> 0 in
        (if List.hd order = graph.entry then 1 else 0) + edges order in
      List.iter (fun seed ->
        let previous = ref (score seed) in
        improve graph seed weight rng (fun order ->
          consider order; let actual = score order in
          assert (actual >= !previous); previous := actual)
      ) [expected;List.rev expected]
    ) [false;true]
  done;
  Printf.printf "PASS: SCC reachability and %d node-permutation observations across 300 random CFGs\n" !observations
