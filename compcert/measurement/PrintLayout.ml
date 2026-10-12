(* Measurement only: replay the unchanged, extracted Tunneling and Linearize
   passes on the immutable LTL value presented to the existing debug printer.
   The real compiler still invokes its own original checked pipeline afterward.
   This observer is a separate patch, identical for baseline and candidate. *)
open AST
open Camlcoq

let rec transfers = function
  | [] -> (0, 0, 0)
  | LTL.Lbranch _ :: _ -> (1, 0, 0)
  | LTL.Lcond _ :: _ -> (0, 1, 0)
  | LTL.Ljumptable (_, targets) :: _ -> (0, 0, List.length targets)
  | LTL.Lreturn :: _ | LTL.Ltailcall _ :: _ -> (0, 0, 0)
  | _ :: rest -> transfers rest

let rec control = function
  | [] -> "empty", []
  | LTL.Lbranch s :: _ -> "branch", [s]
  | LTL.Lcond (_, _, yes, no) :: _ -> "cond", [yes;no]
  | LTL.Ljumptable (_, targets) :: _ -> "table", targets
  | LTL.Lreturn :: _ -> "return", []
  | LTL.Ltailcall _ :: _ -> "tailcall", []
  | _ :: rest -> control rest

let event oc = function
  | Linear.Llabel pc -> Printf.fprintf oc "[\"label\",%d]" (P.to_int pc)
  | Linear.Lgoto pc -> Printf.fprintf oc "[\"goto\",%d]" (P.to_int pc)
  | Linear.Lcond (_, _, pc) -> Printf.fprintf oc "[\"cond\",%d]" (P.to_int pc)
  | Linear.Ljumptable (_, targets) ->
      Printf.fprintf oc "[\"jumptable\",[%s]]"
        (String.concat "," (List.map (fun pc -> string_of_int (P.to_int pc)) targets))
  | Linear.Lreturn -> output_string oc "[\"return\"]"
  | Linear.Ltailcall _ -> output_string oc "[\"tailcall\"]"
  | _ -> output_string oc "[\"other\"]"

let record_function oc id f =
  match Linearize.transf_function f with
  | Errors.Error _ ->
      Printf.fprintf oc "{\"function\":%S,\"validator_pass\":false}\n" (extern_atom id)
  | Errors.OK linear ->
      let gotos = ref 0 and conds = ref 0 and branches = ref 0
          and tests = ref 0 and tables = ref 0 and labels = ref 0 in
      List.iter (function
        | Linear.Lgoto _ -> incr gotos
        | Linear.Lcond _ -> incr conds
        | Linear.Llabel pc ->
            incr labels;
            begin match Maps.PTree.get pc f.LTL.fn_code with
            | None -> assert false
            | Some block ->
                let u,c,j = transfers block in
                branches := !branches + u; tests := !tests + c; tables := !tables + j
            end
        | _ -> ()) linear.Linear.fn_code;
      let entry_goto = match linear.Linear.fn_code with Linear.Lgoto _ :: _ -> 1 | _ -> 0 in
      let falls = !branches + !tests - (!gotos - entry_goto) in
      assert (falls >= 0 && falls <= !branches + !tests && !conds = !tests);
      Printf.fprintf oc
        "{\"function\":%S,\"validator_pass\":true,\"nodes\":%d,\"eligible_edges\":%d,\"fallthrough_slots\":%d,\"fallthrough_edges\":%d,\"Lgoto_count\":%d,\"entry_goto_count\":%d,\"conditional_branches\":%d,\"jumptable_edges\":%d,\"linear_events\":["
        (extern_atom id) !labels (!branches + 2 * !tests) (!branches + !tests)
        falls !gotos entry_goto !conds !tables;
      List.iteri (fun i instr -> if i > 0 then output_char oc ','; event oc instr) linear.Linear.fn_code;
      output_string oc "],\"cfg\":[";
      let first = ref true in
      List.iter (function
        | Linear.Llabel pc ->
            if not !first then output_char oc ',';
            first := false;
            let block = match Maps.PTree.get pc f.LTL.fn_code with Some b -> b | None -> assert false in
            let kind, targets = control block in
            Printf.fprintf oc "[%d,%S,[%s]]" (P.to_int pc) kind
              (String.concat "," (List.map (fun s -> string_of_int (P.to_int s)) targets))
        | _ -> ()) linear.Linear.fn_code;
      Printf.fprintf oc "],\"entry\":%d}\n" (P.to_int f.LTL.fn_entrypoint)

let record prog =
  match Sys.getenv_opt "COMPCERT_LAYOUT_METRICS" with
  | None -> ()
  | Some path ->
      let oc = open_out_gen [Open_wronly; Open_creat; Open_append; Open_text] 0o644 path in
      let tunneled = Tunneling.tunnel_program prog in
      List.iter (function
        | id, Gfun (Internal f) -> record_function oc id f
        | _ -> ()) tunneled.prog_defs;
      close_out oc
