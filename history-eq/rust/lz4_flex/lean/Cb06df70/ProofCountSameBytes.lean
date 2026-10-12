import Cb06df70.HlpcBoth
open Aeneas Aeneas.Std Result

/-!
# b06df70 "Improve Compression Speed by ~5%": count_same_bytes interface change

IMPORTANT: Aeneas could NOT translate the body of `count_same_bytes` on EITHER side
(internal error at the `chunks_exact(..).zip(..)` for-loop, src/block/compress.rs 137:4-148:5 old /
138:4-149:5 new; see ../work/b06df70/hlpc-{old,new}-aeneas.log). In `HlpcBoth.lean` both
`Lb06df70HlpcOld.block.compress.count_same_bytes` and `Lb06df70HlpcNew.block.compress.count_same_bytes`
have body `sorry` and there is no generated `_loop` def. Hence the requested interface-adapted
equivalence cannot be proved (any "proof" would just be about two `sorryAx` terms).
We record the intended statement as a `Prop` (it typechecks), and prove that all
helpers that were translated are unchanged.

`copy_literals_wild` is not present in the generated file (only `copy_literals`, which exists
on both sides and is identical).
-/

namespace Cb06df70.CountSameBytes

/-- The intended caller-level ("api") relation; stated only (NOT proved: both bodies are `sorry`
in the generated model). -/
def count_same_bytes_api_equiv : Prop :=
  ∀ (input : Slice Std.U8) (candidate cur : Std.Usize),
    Lb06df70HlpcNew.block.compress.count_same_bytes input candidate cur =
    (do
      let d ← core.slice.index.Slice.index
                (core.slice.index.SliceIndexRangeFromUsizeSlice Std.U8) input { start := candidate }
      Lb06df70HlpcOld.block.compress.count_same_bytes input d cur)

-- Unchanged helpers (definitional equality, documents they are identical).

theorem token_from_literal_and_match_length_eq :
    Lb06df70HlpcNew.block.compress.token_from_literal_and_match_length =
    Lb06df70HlpcOld.block.compress.token_from_literal_and_match_length := by
  funext a b
  unfold Lb06df70HlpcNew.block.compress.token_from_literal_and_match_length
         Lb06df70HlpcOld.block.compress.token_from_literal_and_match_length
  rfl
#print axioms token_from_literal_and_match_length_eq

theorem get_common_bytes_eq :
    Lb06df70HlpcNew.block.compress.get_common_bytes =
    Lb06df70HlpcOld.block.compress.get_common_bytes := by
  funext d
  unfold Lb06df70HlpcNew.block.compress.get_common_bytes
         Lb06df70HlpcOld.block.compress.get_common_bytes
  rfl
#print axioms get_common_bytes_eq

theorem as_usize_le_eq :
    Lb06df70HlpcNew.block.compress.as_usize_le =
    Lb06df70HlpcOld.block.compress.as_usize_le := by
  funext a
  unfold Lb06df70HlpcNew.block.compress.as_usize_le
         Lb06df70HlpcOld.block.compress.as_usize_le
  rfl
#print axioms as_usize_le_eq

theorem USIZE_SIZE_eq :
    Lb06df70HlpcNew.block.compress.count_same_bytes.USIZE_SIZE =
    Lb06df70HlpcOld.block.compress.count_same_bytes.USIZE_SIZE := by
  unfold Lb06df70HlpcNew.block.compress.count_same_bytes.USIZE_SIZE
         Lb06df70HlpcOld.block.compress.count_same_bytes.USIZE_SIZE
  rfl
#print axioms USIZE_SIZE_eq

theorem END_OFFSET_eq :
    Lb06df70HlpcNew.block.END_OFFSET = Lb06df70HlpcOld.block.END_OFFSET := by
  unfold Lb06df70HlpcNew.block.END_OFFSET Lb06df70HlpcOld.block.END_OFFSET
  rfl
#print axioms END_OFFSET_eq

theorem copy_literals_eq :
    Lb06df70HlpcNew.block.compress.copy_literals =
    Lb06df70HlpcOld.block.compress.copy_literals := by
  funext o i
  unfold Lb06df70HlpcNew.block.compress.copy_literals
         Lb06df70HlpcOld.block.compress.copy_literals
  rfl
#print axioms copy_literals_eq

/- NOT PROVABLE from the generated model (both bodies are `sorry`):
theorem count_same_bytes_api : count_same_bytes_api_equiv := ...
-/

end Cb06df70.CountSameBytes
