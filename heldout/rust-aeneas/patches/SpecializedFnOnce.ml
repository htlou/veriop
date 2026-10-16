(** Specialized [FnOnce] traits (produced by partial monomorphization with
    mutable-borrow arguments) can return updated mutable arguments. Generate
    their signatures instead of using the generic builtin model, whose [Output]
    parameter does not include that state. (From the pilot's
    aeneas-specialized-fnonce patch, moved to its own module.) *)
let filter_builtin_info (name : Types.name)
    (builtin_info : Pure.builtin_trait_decl_info option) :
    Pure.builtin_trait_decl_info option =
  match builtin_info with
  | Some info
    when info.extract_name = "core.ops.function.FnOnce"
         && List.exists
              (function
                | Types.PeInstantiated _ -> true
                | _ -> false)
              name ->
      None
  | _ -> builtin_info
