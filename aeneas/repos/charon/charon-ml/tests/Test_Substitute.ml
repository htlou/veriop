open Charon
open Types
open TypesUtils

let () =
  let id = RegionId.zero in
  let param =
    { index = id; name = None; variance = VaUnknown; mutability = LtMutable }
  in
  let region = RVar (Free id) in
  let constraint_ = { binder_regions = []; binder_value = (RStatic, region) } in
  (* The number of outlives predicates must not change lifetime numbering. *)
  List.iter
    (fun regions_outlive ->
      let outer =
        {
          TypesUtils.empty_generic_params with
          regions = [ param ];
          regions_outlive;
        }
      in
      let inner =
        { TypesUtils.empty_generic_params with regions = [ param ] }
      in
      let binder =
        {
          item_binder_params = outer;
          item_binder_value =
            {
              binder_params = inner;
              binder_value = [ region; RVar (TypesUtils.zero_db_var id) ];
            };
        }
      in
      let fused =
        Substitute.fuse_binders
          (fun subst ->
            List.map (Substitute.st_substitute_visitor#visit_region subst))
          binder
      in
      assert (
        List.map
          (fun (p : region_param) -> RegionId.to_int p.index)
          fused.item_binder_params.regions
        = [ 0; 1 ]);
      assert (
        fused.item_binder_value = [ region; RVar (Free (RegionId.of_int 1)) ]))
    [ []; [ constraint_ ]; [ constraint_; constraint_ ] ]
