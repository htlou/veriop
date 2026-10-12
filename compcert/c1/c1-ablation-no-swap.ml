(* Node-level layout policies. Pure graph code: no benchmark identities,
   instruction rewriting, or access to the enumeration validator. *)
type graph = { succ: int list array; eligible: int list array; entry: int }

(* Cyclic SCCs are a static loop proxy, not measured frequencies. *)
let components graph =
  let n = Array.length graph.succ in
  let reverse = Array.make n [] and seen = Array.make n false in
  Array.iteri (fun u edges -> List.iter (fun v -> reverse.(v) <- u :: reverse.(v)) edges) graph.succ;
  let finished = ref [] in
  for start = 0 to n - 1 do
    let stack = ref [start, false] in
    while !stack <> [] do
      match !stack with
      | [] -> ()
      | (u, leave) :: rest ->
          stack := rest;
          if leave then finished := u :: !finished
          else if not seen.(u) then begin
            seen.(u) <- true;
            stack := (u, true) :: !stack;
            List.iter (fun v -> if not seen.(v) then stack := (v, false) :: !stack) graph.succ.(u)
          end
    done
  done;
  let component = Array.make n (-1) and count = ref 0 in
  List.iter (fun start ->
    if component.(start) < 0 then begin
      let stack = ref [start] in
      component.(start) <- !count;
      while !stack <> [] do
        match !stack with
        | [] -> ()
        | u :: rest ->
            stack := rest;
            List.iter (fun v -> if component.(v) < 0 then begin
              component.(v) <- !count; stack := v :: !stack
            end) reverse.(u)
      done;
      incr count
    end
  ) !finished;
  component

let weights graph weighted =
  let comp = components graph in
  fun u v -> if weighted && comp.(u) = comp.(v) then 8 else 1

let greedy graph order weight =
  let n = Array.length graph.succ in
  let used = Array.make n false and rank = Array.make n 0 in
  List.iteri (fun i u -> rank.(u) <- i) order;
  let result = ref [] in
  List.iter (fun seed ->
    let current = ref seed in
    while !current >= 0 && not used.(!current) do
      let u = !current in
      used.(u) <- true; result := u :: !result;
      let candidates = List.filter (fun v -> not used.(v)) graph.eligible.(u) in
      current := List.fold_left (fun best v ->
        if best < 0 || weight u v > weight u best ||
          (weight u v = weight u best &&
           (abs (rank.(v) - rank.(u) - 1), rank.(v)) <
           (abs (rank.(best) - rank.(u) - 1), rank.(best)))
        then v else best) (-1) candidates
    done
  ) (graph.entry :: order);
  List.rev !result

let improve graph seed weight random consider =
  let n = Array.length graph.succ in
  let entry = n and stop = n + 1 in
  let next = Array.make (n + 2) stop and prev = Array.make (n + 2) entry in
  let last = ref entry in
  List.iter (fun u -> next.(!last) <- u; prev.(u) <- !last; last := u) seed;
  next.(!last) <- stop; prev.(stop) <- !last;
  let edge u v =
    if u = entry then (if v = graph.entry then 1 else 0)
    else if u = stop || v >= n then 0
    else if List.mem v graph.eligible.(u) then weight u v else 0 in
  let emit () =
    let result = ref [] and u = ref next.(entry) in
    for _ = 1 to n do
      assert (!u < n); result := !u :: !result; u := next.(!u)
    done;
    assert (!u = stop); List.rev !result in
  let neutral = Array.make n false and allow_neutral = ref false in
  let accept u gain =
    if gain > 0 then true
    else if gain = 0 && !allow_neutral && not neutral.(u)
            && Random.State.int random 4 = 0
    then (neutral.(u) <- true; true) else false in
  let move x first tail =
    if x <> first && x <> tail && next.(x) <> first then begin
      let before = prev.(first) and after = next.(tail) and nx = next.(x) in
      let gain = edge before after + edge x first + edge tail nx
               - edge before first - edge tail after - edge x nx in
      if accept first gain then begin
        next.(before) <- after; prev.(after) <- before;
        next.(x) <- first; prev.(first) <- x;
        next.(tail) <- nx; prev.(nx) <- tail
      end
    end in
  let swap x y =
    if y < n && x <> y then
      if next.(x) = y then move y x x
      else if next.(y) = x then move x y y
      else begin
        let px = prev.(x) and nx = next.(x) and py = prev.(y) and ny = next.(y) in
        let gain = edge px y + edge y nx + edge py x + edge x ny
                 - edge px x - edge x nx - edge py y - edge y ny in
        if accept x gain then begin
          next.(px) <- y; prev.(y) <- px; next.(y) <- nx; prev.(nx) <- y;
          next.(py) <- x; prev.(x) <- py; next.(x) <- ny; prev.(ny) <- x
        end
      end in
  let reverse_after x y =
    let u = ref next.(x) and nodes = ref [] and budget = ref 16 in
    while !u < n && !u <> y && !budget > 0 do
      nodes := !u :: !nodes; u := next.(!u); decr budget
    done;
    if !u = y && !nodes <> [] then begin
      let reversed = y :: !nodes and after = next.(y) in
      let value sequence =
        let p = ref x and score = ref 0 in
        List.iter (fun v -> score := !score + edge !p v; p := v) sequence;
        !score + edge !p after in
      if accept y (value reversed - value (List.rev reversed)) then begin
        let p = ref x in
        List.iter (fun v -> next.(!p) <- v; prev.(v) <- !p; p := v) reversed;
        next.(!p) <- after; prev.(after) <- !p
      end
    end in
  consider (emit ());
  (* ponytail: fixed rounds and bounded reversal/trace length cap compile cost;
     an optimal path-cover solver would be a separate, more expensive policy. *)
  for round = 0 to 11 do
    allow_neutral := round mod 3 <> 0;
    Array.fill neutral 0 n false;
    let nodes = Array.init n (fun i -> i) in
    for i = n - 1 downto 1 do
      let j = Random.State.int random (i + 1) in
      let tmp = nodes.(i) in nodes.(i) <- nodes.(j); nodes.(j) <- tmp
    done;
    Array.iter (fun x ->
      List.iter (fun y ->
        move x y y;
        move prev.(y) x x;
        ();
        if x <> y && next.(x) <> y then begin
          let tail = ref y and budget = ref 64 in
          while next.(!tail) < n && next.(!tail) <> x
                && edge !tail next.(!tail) > 0 && !budget > 0 do
            tail := next.(!tail); decr budget
          done;
          move x y !tail;
          reverse_after x y
        end
      ) graph.eligible.(x);
      ()
    ) nodes;
    consider (emit ())
  done

let search graph baseline weight consider =
  let random = Random.State.make [|0x51a7; Array.length graph.succ|] in
  let trace = greedy graph baseline weight in
  List.iter (fun seed -> improve graph seed weight random consider)
    [baseline; trace; List.rev baseline]
