(* Run with the same OCaml version as CompCert; no test framework. *)
let () =
  let graph = LayoutSearch.{succ=[|[1;2];[3];[3];[]|];
    eligible=[|[1;2];[3];[3];[]|]; entry=0} in
  let count u v = match u,v with 0,2 | 2,3 -> 100. | 0,1 | 1,3 -> 1. | _ -> 0. in
  let jumps order =
    let rec loop = function
      | [] -> 0
      | [u] -> if graph.eligible.(u) = [] then 0 else 1
      | u :: (v :: _ as rest) ->
        (if graph.eligible.(u) = [] || List.mem v graph.eligible.(u) then 0 else 1) + loop rest in
    loop order + if List.hd order = 0 then 0 else 1 in
  let order = PgoLayout.search graph [|8;4;4;4|] count 101. jumps [0;1;2;3] in
  assert (List.sort compare order = [0;1;2;3]);
  assert (List.hd order = 0 && List.nth order 1 = 2 && List.nth order 2 = 3);
  let rng = Random.State.make [|719|] in
  for _ = 1 to 100 do
    let n = 2 + Random.State.int rng 30 in
    let succ = Array.init n (fun _ -> List.sort_uniq compare
      [Random.State.int rng n;Random.State.int rng n]) in
    let graph = LayoutSearch.{succ;eligible=succ;entry=0} in
    let counts = Array.init n (fun _ -> Array.init n (fun _ -> float (Random.State.int rng 100))) in
    let order = PgoLayout.search graph (Array.make n 8) (fun u v -> counts.(u).(v))
      10. (fun _ -> 0) (List.init n Fun.id) in
    assert (List.sort compare order = List.init n Fun.id)
  done;
  let _, profile = PgoLayout.lookup 7 in
  let expected = Sys.getenv_opt "EXPECT_PROFILE" = Some "yes" in
  assert (Option.is_some profile = expected);
  Printf.printf "Hot-trace and 100 randomized permutations PASS; profile=%b\n" expected
