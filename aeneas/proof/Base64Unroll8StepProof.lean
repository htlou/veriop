import Base64FastStepProof
import Base64Unroll8Opt.Base64Unroll8Opt

open Aeneas Aeneas.Std Aeneas.Std.Result
open Base64Unroll8Opt.engine.general_purpose
open Base64FastStep
namespace Base64Unroll8Step
set_option maxHeartbeats 2000000
set_option maxRecDepth 8192

theorem fast_body_pairs_equiv (stride : Usize) (input output : Slice U8)
    (input_index output_index last_fast_index : Usize)
    (hbound : output_index.val + 64 ≤ output.length) :
    encode_scalar_tail_loop0.body stride encode_scalar_tail.STANDARD_ALPHABET input true
      last_fast_index output input_index output_index =
    encode_scalar_tail_loop0.body stride encode_scalar_tail.STANDARD_ALPHABET input false
      last_fast_index output input_index output_index := by
  have hm : 8#usize * 8#usize ⦃ r => r = 64#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  obtain ⟨_, hmul, rfl⟩ := WP.spec_imp_exists hm
  have ha : output_index + 64#usize ⦃ r => r.val = output_index.val + 64 ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  obtain ⟨out_end, hadd, hval⟩ := WP.spec_imp_exists ha
  have hc : core.slice.index.Slice.index_mut
      (core.slice.index.SliceIndexRangeUsizeSlice U8) output
      { start := output_index, «end» := out_end }
      ⦃ (chunk : Slice U8) (back : Slice U8 → Slice U8) => chunk.length = 64 ⦄ := by
    step as ⟨chunk, back, hv, hl, hb⟩
    scalar_tac
  obtain ⟨⟨chunk, back⟩, hchunk, hlen⟩ := WP.spec_imp_exists hc
  change chunk.length = 64 at hlen
  have hlenval : chunk.val.length = 64 := hlen
  have htable : encode_scalar_tail.STANDARD_ALPHABET =
      Base64StepOpt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET := by
    with_unfolding_all rfl
  have hpairs_def : encode_scalar_tail.PAIRS =
      Base64StepOpt.engine.general_purpose.encode_scalar_tail.PAIRS := by
    with_unfolding_all rfl
  obtain ⟨pairs, hpairs, hrows⟩ := WP.spec_imp_exists Base64FastStep.pairs_initialized
  unfold encode_scalar_tail_loop0.body
  simp only [encode_scalar_tail.BLOCKS_PER_FAST_LOOP, hmul, hadd, Aeneas.Std.bind_ok]
  split
  · simp only [Bool.false_eq_true, ite_true, ite_false, Aeneas.Std.bind_assoc]
    congr 1
    funext i1
    congr 1
    funext i2
    congr 1
    funext input_chunk
    rw [hchunk]
    simp only [Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
    simp only [hpairs_def, hpairs, Aeneas.Std.bind_ok, Aeneas.Std.bind_assoc, bind_uncurry]
    simp only [htable, encode_scalar_tail.LOW_SIX_BITS]
    simp (disch := first | assumption | norm_num [hlen, hlenval, Slice.length, List.slice]) only
      [↓scalar_byte_bind, ↓pair_row_bind, ↓range_mut_bind, ↓copy_bind, ↓update_bind, ↓lift_bind,
      ↓Aeneas.Std.uncurry_apply_pair, Aeneas.Std.uncurry_apply_pair, ↓pair_set_eq,
      pairAt, high_index, low_index, Array.val_to_slice, Array.make_val, UScalar.ofNatCore_val_eq]
    with_unfolding_all rfl
  · rfl

#print axioms fast_body_pairs_equiv

theorem fast_body_pairs_equiv_all (stride : Usize) (input output : Slice U8)
    (input_index output_index last_fast_index : Usize) :
    encode_scalar_tail_loop0.body stride encode_scalar_tail.STANDARD_ALPHABET input true
      last_fast_index output input_index output_index =
    encode_scalar_tail_loop0.body stride encode_scalar_tail.STANDARD_ALPHABET input false
      last_fast_index output input_index output_index := by
  by_cases hbound : output_index.val + 64 ≤ output.length
  · exact fast_body_pairs_equiv stride input output input_index output_index last_fast_index hbound
  have hm : 8#usize * 8#usize ⦃ r => r = 64#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  obtain ⟨_, hmul, rfl⟩ := WP.spec_imp_exists hm
  unfold encode_scalar_tail_loop0.body
  simp only [encode_scalar_tail.BLOCKS_PER_FAST_LOOP, hmul, Aeneas.Std.bind_ok]
  split
  · congr 1
    funext i1
    congr 1
    funext i2
    congr 1
    funext input_chunk
    exact short_output_prefix output output_index 64#usize _ _ hbound
  · rfl

theorem fast_loop_pairs_equiv (stride : Usize) (input output : Slice U8)
    (input_index output_index last_fast_index : Usize) :
    encode_scalar_tail_loop0 stride encode_scalar_tail.STANDARD_ALPHABET input
      output input_index output_index true last_fast_index =
    encode_scalar_tail_loop0 stride encode_scalar_tail.STANDARD_ALPHABET input
      output input_index output_index false last_fast_index := by
  unfold encode_scalar_tail_loop0
  congr 1
  funext ⟨output, input_index, output_index⟩
  exact fast_body_pairs_equiv_all stride input output input_index output_index last_fast_index

theorem fast_loop_pairs_equiv_if (stride : Usize) (table : Array U8 64#usize)
    (input output : Slice U8) (input_index output_index : Usize) (flag : Bool)
    (last_fast_index : Usize) (hflag : flag = true → table = encode_scalar_tail.STANDARD_ALPHABET) :
    encode_scalar_tail_loop0 stride table input output input_index output_index flag last_fast_index =
    encode_scalar_tail_loop0 stride table input output input_index output_index false last_fast_index := by
  cases flag
  · rfl
  · rw [hflag rfl]
    exact fast_loop_pairs_equiv stride input output input_index output_index last_fast_index

#print axioms fast_body_pairs_equiv_all
#print axioms fast_loop_pairs_equiv
#print axioms fast_loop_pairs_equiv_if
end Base64Unroll8Step
