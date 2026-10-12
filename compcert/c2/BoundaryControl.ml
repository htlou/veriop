(* Finite boundary experiment over actual extracted CompCert data and passes. *)
open LTL
open Maps
open Camlcoq
let pc = P.of_int
let branch target = Lbranch (pc target)
let constant value = Lop (Op.Ointconst value, [], Machregs.AX)
let valid f order =
  match Linearize.nodeset_of_list order Linearize.Nodeset.empty with
  | Errors.Error _ -> false
  | Errors.OK nodes -> Linearize.check_reachable f (Linearize.reachable f) nodes
let code f order = Linearize.add_branch f.fn_entrypoint (Linearize.linearize_body f order)
let gotos f order = List.fold_left (fun n -> function Linear.Lgoto _ -> n+1 | _ -> n) 0 (code f order)
let rec insert x = function
  | [] -> [[x]]
  | y :: rest as all -> (x :: all) :: List.map (fun xs -> y :: xs) (insert x rest)
let rec permutations = function
  | [] -> [[]]
  | x :: rest -> List.concat (List.map (insert x) (permutations rest))
let () =
  let original = {
    fn_sig=AST.signature_main; fn_stacksize=BinNums.Z0; fn_entrypoint=pc 1;
    fn_code=List.fold_left (fun code (id,block) -> PTree.set (pc id) block code) PTree.empty [
      1,[Lcond (Op.Ccompimm (Integers.Ceq,Integers.Int.zero),[Machregs.DI],pc 2,pc 3)];
      2,[constant Integers.Int.one;branch 4];
      3,[constant Integers.Int.mone;branch 4];
      4,[Lreturn]
    ]
  } in
  let order=List.map pc [1;2;4;3] in
  let original_orders=permutations (List.map pc [1;2;3;4]) in
  assert (List.for_all (valid original) original_orders);
  let min_original=List.fold_left (fun n order -> min n (gotos original order)) max_int original_orders in
  assert (min_original=1);
  assert (not (valid original (order @ [pc 4])));
  assert (valid original (order @ [pc 5]));
  assert (code original order = code original (order @ [pc 5]));
  let cloned={original with fn_code=PTree.set (pc 5) [Lreturn]
    (PTree.set (pc 3) [constant Integers.Int.mone;branch 5] original.fn_code)} in
  let clone_orders=permutations (List.map pc [1;2;3;4;5]) in
  assert (List.for_all (valid cloned) clone_orders);
  let min_cloned=List.fold_left (fun n order -> min n (gotos cloned order)) max_int clone_orders in
  assert (min_cloned=0);
  let origins=Hashtbl.create 1 in Hashtbl.add origins 5 (pc 4);
  assert (TailClone.certificate original cloned origins);
  let dangling={cloned with fn_code=PTree.remove (pc 5) cloned.fn_code} in
  assert (not (TailClone.certificate original dangling origins));
  let wrong={cloned with fn_code=PTree.set (pc 5) [constant Integers.Int.zero;Lreturn] cloned.fn_code} in
  assert (valid wrong (List.map pc [1;2;4;3;5]));
  assert (not (TailClone.certificate original wrong origins));
  Printf.printf "{\"original_permutations\":%d,\"original_min_Lgoto\":%d,\"cloned_permutations\":%d,\"cloned_min_Lgoto\":%d,\"duplicate_old_id_rejected\":true,\"fresh_id_without_code_accepted_but_no_effect\":true,\"fresh_clone_checker_passes\":true,\"wrong_clone_also_passes_enumeration_checker\":true,\"proposed_certificate_rejects_wrong_clone\":true,\"proposed_certificate_rejects_dangling_clone\":true,\"new_semantic_preservation_proof\":false}\n"
    (List.length original_orders) min_original (List.length clone_orders) min_cloned
