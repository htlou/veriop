(* Profiling-only CFG edge splitting. Never linked into the production C3 compiler.
   Each edge receives a private annotation stub, expanded to a flag-preserving
   counter increment by the profiling harness. Counters are untrusted input. *)
open AST
open LTL
open Maps
open Camlcoq
let fingerprint f = Digest.to_hex (Digest.string (Marshal.to_string f [Marshal.No_sharing]))
let unwrap = function Errors.OK x -> x | Errors.Error _ -> failwith "profile backend rejected CFG"
let observe prog = match Sys.getenv_opt "VERIOP_PROFILE_OUTPUT" with
| None -> ()
| Some prefix ->
  let prog = Tunneling.tunnel_program prog in
  let meta = open_out (prefix ^ ".edges.json") in
  let graphs = open_out (prefix ^ ".graphs.json") in
  let next_counter = ref 0 in
  let defs = List.map (function
  | id,Gfun(Internal f) ->
    let key = fingerprint f in
    let nodes = PTree.elements f.fn_code in
    Printf.fprintf graphs "{\"key\":%S,\"function\":%S,\"entry\":%d,\"nodes\":[" key (extern_atom id) (P.to_int f.fn_entrypoint);
    List.iteri (fun i (pc,block) ->
      if i > 0 then output_char graphs ',';
      Printf.fprintf graphs "[%d,%d,[" (P.to_int pc) (List.length block);
      List.iteri (fun j target -> if j > 0 then output_char graphs ',';Printf.fprintf graphs "%d" (P.to_int target)) (successors_block block);
      output_string graphs "]]"
    ) nodes;
    output_string graphs "]}\n";
    let fresh = ref (1 + List.fold_left (fun n (pc,_) -> max n (P.to_int pc)) 0 nodes) in
    let code = ref f.fn_code in
    let edge source target =
      let pc = P.of_int !fresh in incr fresh;
      let counter = !next_counter in incr next_counter;
      let text = Printf.sprintf "VERIOP_EDGE_%d" counter in
      code := PTree.set pc [Lbuiltin (EF_annot(P.of_int 1,text,[]),[],BR_none);Lbranch target] !code;
      Printf.fprintf meta "{\"counter\":%d,\"key\":%S,\"function\":%S,\"source\":%d,\"target\":%d}\n"
        counter key (extern_atom id) source (P.to_int target);
      pc in
    List.iter (fun (pc,block) ->
      let block = List.map (function
      | Lbranch target -> Lbranch (edge (P.to_int pc) target)
      | Lcond (cond,args,yes,no) -> Lcond(cond,args,edge (P.to_int pc) yes,edge (P.to_int pc) no)
      | Ljumptable (arg,targets) -> Ljumptable(arg,List.map (edge (P.to_int pc)) targets)
      | instr -> instr) block in
      code := PTree.set pc block !code
    ) nodes;
    let entry = edge 0 f.fn_entrypoint in
    id,Gfun(Internal {f with fn_entrypoint=entry; fn_code= !code})
  | d -> d) prog.prog_defs in
  close_out meta;
  close_out graphs;
  let linear = unwrap (Linearize.transf_program {prog with prog_defs=defs}) in
  let mach = unwrap (Stacking.transf_program (CleanupLabels.transf_program linear)) in
  let asm = unwrap (Asmgen.transf_program mach) in
  let expanded = unwrap (Asmexpand.expand_program asm) in
  let oc = open_out (prefix ^ ".s") in PrintAsm.print_program oc expanded;close_out oc
