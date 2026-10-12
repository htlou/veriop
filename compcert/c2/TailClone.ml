(* Experimental CFG transformation. This module is NOT covered by the existing
   C-to-Asm theorem. Its structural certificate checker is not Rocq-proved. *)
open AST
open LTL
open Maps
open Camlcoq

let checked f = match Linearize.transf_function f with
  | Errors.OK linear -> linear
  | Errors.Error _ -> failwith "C2: original enumeration checker rejected CFG"
let jumps linear = List.fold_left (fun n -> function
  | Linear.Lgoto _ -> n + 1 | _ -> n) 0 linear.Linear.fn_code

let certificate original changed origins =
  let origin pc = match Hashtbl.find_opt origins (P.to_int pc) with Some p -> p | None -> pc in
  let erase = function
    | Lbranch pc -> Lbranch (origin pc)
    | Lcond (cond,args,yes,no) -> Lcond (cond,args,origin yes,origin no)
    | Ljumptable (arg,targets) -> Ljumptable (arg,List.map origin targets)
    | instr -> instr in
  original.fn_sig = changed.fn_sig && original.fn_stacksize = changed.fn_stacksize
  && origin changed.fn_entrypoint = original.fn_entrypoint
  && PTree.get changed.fn_entrypoint changed.fn_code <> None
  && List.for_all (fun (pc,block) ->
    PTree.get (origin pc) original.fn_code = Some (List.map erase block)
    && List.for_all (fun target -> PTree.get target changed.fn_code <> None)
         (successors_block block)
  ) (PTree.elements changed.fn_code)

let transform f =
  let before = checked f in
  let current = ref f and best = ref (jumps before) in
  let origins = Hashtbl.create 16 and clones = ref [] in
  let nodes = PTree.elements f.fn_code in
  let instruction_count = List.fold_left (fun n (_,b) -> n + List.length b) 0 nodes in
  let budget = ref (max 1 (instruction_count / 10)) in
  let fresh = ref (1 + List.fold_left (fun n (pc,_) -> max n (P.to_int pc)) 0 nodes) in
  let predecessors = Hashtbl.create (List.length nodes) in
  List.iter (fun (_,block) -> List.iter (fun pc ->
    let k = P.to_int pc in
    let old = match Hashtbl.find_opt predecessors k with None -> 0 | Some n -> n in
    Hashtbl.replace predecessors k (old + 1)
  ) (successors_block block)) nodes;
  let pc = ref None and sources = ref [] in
  List.iter (function
    | Linear.Llabel p -> pc := Some p
    | Linear.Lgoto _ -> (match !pc with Some p -> sources := p :: !sources | None -> ())
    | _ -> ()) before.Linear.fn_code;
  let attempts = ref 0 in
  List.iter (fun source ->
    if !attempts < 32 && List.length !clones < 16 then
    match PTree.get source (!current).fn_code with
    | None -> ()
    | Some block ->
      begin match List.rev block with
      | Lbranch target :: reversed_prefix ->
        begin match PTree.get target (!current).fn_code, Hashtbl.find_opt predecessors (P.to_int target) with
        | Some tail, Some count when count > 1 && List.length tail <= 4 && List.length tail <= !budget ->
          begin match List.rev tail with
          | Lreturn :: _ | Ltailcall _ :: _ ->
            incr attempts;
            let clone = P.of_int !fresh in incr fresh;
            let changed_block = List.rev (Lbranch clone :: reversed_prefix) in
            let candidate = { !current with fn_code = PTree.set clone tail (PTree.set source changed_block (!current).fn_code) } in
            Hashtbl.add origins (P.to_int clone) target;
            assert (certificate f candidate origins);
            let count = jumps (checked candidate) in
            if count < !best then begin
              current := candidate; best := count;
              budget := !budget - List.length tail;
              clones := (clone,target,source,List.length tail) :: !clones
            end else Hashtbl.remove origins (P.to_int clone)
          | _ -> ()
          end
        | _ -> ()
        end
      | _ -> ()
      end
  ) (List.rev !sources);
  assert (certificate f !current origins);
  (* Negative control: deleting a copied tail must fail the proposed checker. *)
  begin match !clones with
  | (clone,_,_,_) :: _ ->
      assert (not (certificate f { !current with fn_code = PTree.set clone [] (!current).fn_code } origins))
  | [] -> ()
  end;
  (!current, List.rev !clones, !attempts)

let unwrap = function Errors.OK x -> x | Errors.Error _ -> failwith "C2: backend rejected transformed LTL"
let emit path program =
  let linear = unwrap (Linearize.transf_program program) in
  let cleaned = CleanupLabels.transf_program linear in
  let mach = unwrap (Stacking.transf_program cleaned) in
  let asm = unwrap (Asmgen.transf_program mach) in
  let expanded = unwrap (Asmexpand.expand_program asm) in
  let oc = open_out path in PrintAsm.print_program oc expanded; close_out oc

let observe prog =
  match Sys.getenv_opt "COMPCERT_C2_OUTPUT" with
  | None -> ()
  | Some prefix ->
      let original = Tunneling.tunnel_program prog in
      let before = open_out (prefix ^ ".before.json")
      and after = open_out (prefix ^ ".after.json")
      and evidence = open_out (prefix ^ ".certificate.json") in
      let defs = List.map (function
        | id, Gfun (Internal f) ->
            let changed,clones,attempts = transform f in
            PrintLayout.record_function before id f;
            PrintLayout.record_function after id changed;
            Printf.fprintf evidence
              "{\"function\":%S,\"proposed_certificate_pass\":true,\"certificate_proved_in_Rocq\":false,\"attempts\":%d,\"clones\":["
              (extern_atom id) attempts;
            List.iteri (fun i (clone,origin,source,size) ->
              if i > 0 then output_char evidence ',';
              Printf.fprintf evidence "{\"new_node\":%d,\"origin\":%d,\"predecessor\":%d,\"copied_LTL_instructions\":%d}"
                (P.to_int clone) (P.to_int origin) (P.to_int source) size
            ) clones;
            output_string evidence "]}\n";
            (id,Gfun (Internal changed))
        | def -> def) original.prog_defs in
      close_out before; close_out after; close_out evidence;
      emit (prefix ^ ".s") {original with prog_defs=defs}
