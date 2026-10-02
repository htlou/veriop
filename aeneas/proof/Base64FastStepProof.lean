import Base64StepRef.Base64StepRef
import Base64StepOpt.Base64StepOpt
import PairEmissionProof
open Aeneas Aeneas.Std Aeneas.Std.Result
open Base64StepOpt.engine.general_purpose
namespace Base64FastStep
set_option maxHeartbeats 4000000
set_option maxRecDepth 8192

def pairAt (i : Nat) : Array U8 2#usize :=
  Array.make 2#usize [encode_scalar_tail.STANDARD_ALPHABET.val[i >>> 6]!,
    encode_scalar_tail.STANDARD_ALPHABET.val[i &&& 63]!]

theorem pairs_loop_spec (pairs : Array (Array U8 2#usize) 4096#usize) (i : Usize)
    (hi : i.val ≤ 4096)
    (hinv : ∀ j, j < i.val → pairs.val[j]! = pairAt j) :
    encode_scalar_tail.PAIRS_loop pairs i ⦃ result =>
      ∀ j, j < 4096 → result.val[j]! = pairAt j ⦄ := by
  unfold encode_scalar_tail.PAIRS_loop
  rw [loop]
  simp only [encode_scalar_tail.PAIRS_loop.body]
  split
  · have hival : i.val < 4096 := by scalar_tac
    step as ⟨index, hindex, hbits⟩
    · cases System.Platform.numBits_eq <;> simp_all
    step as ⟨byte0, hbyte0⟩
    · simp only [Array.length]
      simp only [Nat.shiftRight_eq_div_pow] at hindex
      scalar_tac
    step as ⟨masked, hmasked, hmaskedbits⟩
    step as ⟨byte1, hbyte1⟩
    · have hmask : i.val &&& 63 ≤ 63 := Nat.and_le_right
      simp_all only [Array.length, UScalar.val_and]
      scalar_tac
    have hb0 : (i.val >>> 6) < encode_scalar_tail.STANDARD_ALPHABET.val.length := by
      simp only [Array.property, Nat.shiftRight_eq_div_pow]
      scalar_tac
    have hb1 : (i.val &&& 63) < encode_scalar_tail.STANDARD_ALPHABET.val.length := by
      have hmask : i.val &&& 63 ≤ 63 := Nat.and_le_right
      simp only [Array.property]
      scalar_tac
    step as ⟨updated, hupdated⟩
    step as ⟨next, hnext⟩
    apply pairs_loop_spec updated next
    · scalar_tac
    · intro j hj
      by_cases hji : j = i.val
      · subst j
        simp_all [pairAt]
      · have hj' : j < i.val := by scalar_tac
        have h := hinv j hj'
        simp_all

  · simp only [Aeneas.Std.bind_ok, WP.spec_ok]
    intro j hj
    have hj' : j < i.val := by scalar_tac
    have h := hinv j hj'
    simpa using h
termination_by 4096 - i.val
decreasing_by
  simp at hnext
  omega

#print axioms pairs_loop_spec

theorem pairs_initialized :
    encode_scalar_tail.PAIRS ⦃ result =>
      ∀ j, j < 4096 → result.val[j]! = pairAt j ⦄ := by
  unfold encode_scalar_tail.PAIRS
  apply pairs_loop_spec
  · simp
  · intro j hj
    simp at hj

#print axioms pairs_initialized


private theorem alphabet_eq : encode_scalar_tail.STANDARD_ALPHABET =
    Base64PairsValue.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET := by
  with_unfolding_all rfl

theorem scalar_byte_bind {α : Type} (word : U64) (shift : I32)
    (f : U8 → Result α) (hshift : 0 ≤ shift.val ∧ shift.val < 64) :
    (do
      let shifted ← word >>> shift
      let masked ← lift (shifted &&& 63#u64)
      let index ← lift (UScalar.cast .Usize masked)
      let byte ← Array.index_usize encode_scalar_tail.STANDARD_ALPHABET index
      f byte) = f encode_scalar_tail.STANDARD_ALPHABET.val[(word.val >>> shift.toNat) &&& 63]! := by
  rw [alphabet_eq]
  obtain ⟨byte, heq, hbyte⟩ := WP.spec_imp_exists (scalar_byte_lookup word shift hshift)
  subst byte
  have h := congrArg (fun m => Aeneas.Std.bind m f) heq
  simpa only [Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok] using h

theorem update_eq (output : Slice U8) (pos : Usize) (byte : U8)
    (hbound : pos.val < output.length) :
    Slice.update output pos byte = ok (output.setAtNat pos.val byte) := by
  obtain ⟨r, hr, heq⟩ := WP.spec_imp_exists (Slice.update_spec output pos byte hbound)
  subst r
  exact hr

theorem bind_uncurry {α β γ δ : Type} (p : α × β)
    (g : α → β → Result γ) (f : γ → Result δ) :
    Aeneas.Std.bind (Aeneas.Std.uncurry g p) f =
      Aeneas.Std.uncurry (fun a b => Aeneas.Std.bind (g a b) f) p := by
  cases p
  rfl

theorem pair_row_bind {α : Type} (word : U64) (shift : I32)
    (pairs : Array (Array U8 2#usize) 4096#usize) (f : Array U8 2#usize → Result α)
    (hshift : 0 ≤ shift.val ∧ shift.val < 64)
    (hpairs : ∀ j, j < 4096 → pairs.val[j]! = pairAt j) :
    (do
      let shifted ← word >>> shift
      let masked ← lift (shifted &&& 4095#u64)
      let index ← lift (UScalar.cast .Usize masked)
      let row ← Array.index_usize pairs index
      f row) = f (pairAt ((word.val >>> shift.toNat) &&& 4095)) := by
  have hs : (do
      let shifted ← word >>> shift
      let masked ← lift (shifted &&& 4095#u64)
      let index ← lift (UScalar.cast .Usize masked)
      Array.index_usize pairs index) ⦃ r => r = pairAt ((word.val >>> shift.toNat) &&& 4095) ⦄ := by
    step as ⟨shifted, hshifted, hbits⟩
    step as ⟨masked, hmasked, hmaskedbits⟩
    have hmask : shifted.val &&& 4095 ≤ 4095 := Nat.and_le_right
    step with UScalar.cast_inBounds_spec as ⟨index, hindex⟩
    step as ⟨row, hrow⟩
    have hival : index.val = shifted.val &&& 4095 := by simp [hindex, hmasked]
    have hi : index.val < 4096 := by omega
    rw [hrow, List.Inhabited_getElem_eq_getElem! pairs.val index.val (by simpa using hi), hpairs _ hi]
    congr 1
    simp_all
  obtain ⟨row, hr, heq⟩ := WP.spec_imp_exists hs
  subst row
  have h := congrArg (fun m => Aeneas.Std.bind m f) hr
  simpa only [Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok] using h

theorem range_mut_eq (output : Slice U8) (pos stop : Usize)
    (hpos : pos.val ≤ stop.val) (hbound : stop.val ≤ output.length) :
    core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8)
      output { start := pos, «end» := stop } =
    ok (Slice.from (output.val.slice pos.val stop.val) (by scalar_tac),
      fun (part : Slice U8) => output.setSlice! pos.val part.val) := by
  simp only [Slice.index_mut_SliceIndexRangeUsizeSliceInst,
    core.slice.index.SliceIndexRangeUsizeSlice.index_mut]
  rw [if_pos (by scalar_tac)]
  rfl

theorem copy_eq (dst src : Slice U8) (hlen : dst.length = src.length) :
    core.slice.Slice.copy_from_slice core.marker.CopyU8 dst src = ok src := by
  obtain ⟨r, hr, heq⟩ := WP.spec_imp_exists
    (core.slice.Slice.copy_from_slice.step_spec core.marker.CopyU8 dst src hlen)
  subst r
  exact hr

theorem pair_set_eq (output : Slice U8) (pos : Nat) (a b : U8)
    (hbound : pos + 2 ≤ output.length) :
    output.setSlice! pos [a, b] = (output.setAtNat pos a).setAtNat (pos + 1) b := by
  apply (Slice.eq_iff _ _).mpr
  simp only [Slice.setSlice!_val, Slice.setAtNat, Slice.from_val]
  exact pair_set_slice_eq output.val pos a b hbound

theorem update_bind {α : Type} (output : Slice U8) (pos : Usize) (byte : U8)
    (f : Slice U8 → Result α) (hbound : pos.val < output.length) :
    Aeneas.Std.bind (Slice.update output pos byte) f = f (output.setAtNat pos.val byte) := by
  rw [update_eq output pos byte hbound, Aeneas.Std.bind_ok]

theorem range_mut_bind {α : Type} (output : Slice U8) (pos stop : Usize)
    (f : (Slice U8 × (Slice U8 → Slice U8)) → Result α)
    (hpos : pos.val ≤ stop.val) (hbound : stop.val ≤ output.length) :
    Aeneas.Std.bind (core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8)
      output { start := pos, «end» := stop }) f =
    f (Slice.from (output.val.slice pos.val stop.val) (by scalar_tac),
      fun (part : Slice U8) => output.setSlice! pos.val part.val) := by
  rw [range_mut_eq output pos stop hpos hbound, Aeneas.Std.bind_ok]

theorem copy_bind {α : Type} (dst src : Slice U8) (f : Slice U8 → Result α)
    (hlen : dst.length = src.length) :
    Aeneas.Std.bind (core.slice.Slice.copy_from_slice core.marker.CopyU8 dst src) f = f src := by
  rw [copy_eq dst src hlen, Aeneas.Std.bind_ok]

theorem lift_bind {α β : Type} (x : α) (f : α → Result β) :
    Aeneas.Std.bind (lift x) f = f x := by
  simp only [lift, Aeneas.Std.bind_ok]

theorem high_index (word shift : Nat) :
    ((word >>> shift) &&& 4095) >>> 6 = (word >>> (shift + 6)) &&& 63 := by
  rw [Nat.shiftRight_and_distrib, ← Nat.shiftRight_add]
  rfl

theorem low_index (word shift : Nat) :
    ((word >>> shift) &&& 4095) &&& 63 = (word >>> shift) &&& 63 := by
  rw [Nat.and_assoc]
  rfl

set_option maxHeartbeats 1000000 in
theorem fast_body_equiv (stride : Usize) (input output : Slice U8)
    (input_index output_index last_fast_index : Usize)
    (hbound : output_index.val + 32 ≤ output.length) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
      stride encode_scalar_tail.STANDARD_ALPHABET input last_fast_index output input_index output_index =
    encode_scalar_tail_loop0.body stride encode_scalar_tail.STANDARD_ALPHABET input true
      last_fast_index output input_index output_index := by
  have hm : 4#usize * 8#usize ⦃ r => r = 32#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  obtain ⟨_, hmul, rfl⟩ := WP.spec_imp_exists hm
  have ha : output_index + 32#usize ⦃ r => r.val = output_index.val + 32 ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  obtain ⟨out_end, hadd, hval⟩ := WP.spec_imp_exists ha
  have hc : core.slice.index.Slice.index_mut
      (core.slice.index.SliceIndexRangeUsizeSlice U8) output
      { start := output_index, «end» := out_end }
      ⦃ (chunk : Slice U8) (back : Slice U8 → Slice U8) => chunk.length = 32 ⦄ := by
    step as ⟨chunk, back, hv, hl, hb⟩
    scalar_tac
  obtain ⟨⟨chunk, back⟩, hchunk, hlen⟩ := WP.spec_imp_exists hc
  change chunk.length = 32 at hlen
  have hlenval : chunk.val.length = 32 := hlen
  obtain ⟨pairs, hpairs, hrows⟩ := WP.spec_imp_exists pairs_initialized
  have hread : Base64StepRef.engine.general_purpose.read_u64 = read_u64 := by
    with_unfolding_all rfl
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
    encode_scalar_tail_loop0.body
  simp only [Base64StepRef.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    encode_scalar_tail.BLOCKS_PER_FAST_LOOP, hmul, hadd, Aeneas.Std.bind_ok]
  split
  · simp only [ite_true, Aeneas.Std.bind_assoc]
    congr 1
    funext i1
    congr 1
    funext i2
    congr 1
    funext input_chunk
    rw [hchunk]
    simp only [Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
    simp only [hpairs, Aeneas.Std.bind_ok, Aeneas.Std.bind_assoc, bind_uncurry]
    simp only [hread, Base64StepRef.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS]
    simp (disch := first | assumption | norm_num [hlen, hlenval, Slice.length, List.slice]) only
      [↓scalar_byte_bind, ↓pair_row_bind, ↓range_mut_bind, ↓copy_bind, ↓update_bind, ↓lift_bind,
      ↓Aeneas.Std.uncurry_apply_pair, Aeneas.Std.uncurry_apply_pair, ↓pair_set_eq,
      pairAt, high_index, low_index, Array.val_to_slice, Array.make_val, UScalar.ofNatCore_val_eq]
    with_unfolding_all rfl
  · rfl

#print axioms fast_body_equiv

theorem short_output_prefix {α : Type} (output : Slice U8) (pos count : Usize)
    (f g : Usize → (Slice U8 × (Slice U8 → Slice U8)) → Result α)
    (hbound : ¬ pos.val + count.val ≤ output.length) :
    (do
      let stop ← pos + count
      let part ← core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8)
        output { start := pos, «end» := stop }
      f stop part) =
    (do
      let stop ← pos + count
      let part ← core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8)
        output { start := pos, «end» := stop }
      g stop part) := by
  have ha : pos + count = UScalar.tryMk .Usize (pos.val + count.val) := by
    change UScalar.add pos count = _
    simp only [UScalar.add, UScalar.ofNatCore_val_eq]
  rw [ha]
  simp only [UScalar.tryMk, UScalar.tryMkOpt]
  split
  · rename_i hfits
    simp only [Result.ofOption, Aeneas.Std.bind_ok, Aeneas.Std.bind_tc_ok,
      Slice.index_mut_SliceIndexRangeUsizeSliceInst,
      core.slice.index.SliceIndexRangeUsizeSlice.index_mut]
    have hfail : ¬ (pos ≤ UScalar.ofNatCore (pos.val + count.val) (UScalar.check_bounds_imp_inBounds hfits) ∧
        (UScalar.ofNatCore (pos.val + count.val) (UScalar.check_bounds_imp_inBounds hfits) : Usize) ≤ output.length) := by
      scalar_tac
    simp only [if_neg hfail, Aeneas.Std.bind_fail, Aeneas.Std.bind_tc_fail]
  · simp only [Result.ofOption, Aeneas.Std.bind_fail, Aeneas.Std.bind_tc_fail]

theorem fast_body_equiv_all (stride : Usize) (input output : Slice U8)
    (input_index output_index last_fast_index : Usize) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
      stride encode_scalar_tail.STANDARD_ALPHABET input last_fast_index output input_index output_index =
    encode_scalar_tail_loop0.body stride encode_scalar_tail.STANDARD_ALPHABET input true
      last_fast_index output input_index output_index := by
  by_cases hbound : output_index.val + 32 ≤ output.length
  · exact fast_body_equiv stride input output input_index output_index last_fast_index hbound
  have hm : 4#usize * 8#usize ⦃ r => r = 32#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  obtain ⟨_, hmul, rfl⟩ := WP.spec_imp_exists hm
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
    encode_scalar_tail_loop0.body
  simp only [Base64StepRef.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    encode_scalar_tail.BLOCKS_PER_FAST_LOOP, hmul, Aeneas.Std.bind_ok]
  split
  · congr 1
    funext i1
    congr 1
    funext i2
    congr 1
    funext input_chunk
    exact short_output_prefix output output_index 32#usize _ _ hbound
  · rfl

#print axioms fast_body_equiv_all

theorem fast_loop_equiv (stride : Usize) (input output : Slice U8)
    (input_index output_index last_fast_index : Usize) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
      stride encode_scalar_tail.STANDARD_ALPHABET input output input_index output_index last_fast_index =
    encode_scalar_tail_loop0 stride encode_scalar_tail.STANDARD_ALPHABET input output input_index output_index
      true last_fast_index := by
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0 encode_scalar_tail_loop0
  congr 1
  funext ⟨output, input_index, output_index⟩
  exact fast_body_equiv_all stride input output input_index output_index last_fast_index

#print axioms fast_loop_equiv

theorem fast_fallback_equiv (stride : Usize) (table : Array U8 64#usize)
    (input output : Slice U8) (input_index output_index last_fast_index : Usize) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
      stride table input output input_index output_index last_fast_index =
    encode_scalar_tail_loop0 stride table input output input_index output_index false last_fast_index := by
  have hread : Base64StepRef.engine.general_purpose.read_u64 = read_u64 := by
    with_unfolding_all rfl
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0 encode_scalar_tail_loop0
  congr 1
  funext ⟨output, input_index, output_index⟩
  simp only [Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body,
    encode_scalar_tail_loop0.body, Bool.false_eq_true, ite_false, Aeneas.Std.bind_assoc,
    Base64StepRef.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    Base64StepRef.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS,
    encode_scalar_tail.LOW_SIX_BITS, hread]

theorem fast_loop_equiv_if (stride : Usize) (table : Array U8 64#usize)
    (input output : Slice U8) (input_index output_index : Usize) (flag : Bool)
    (last_fast_index : Usize) (hflag : flag = true → table = encode_scalar_tail.STANDARD_ALPHABET) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
      stride table input output input_index output_index last_fast_index =
    encode_scalar_tail_loop0 stride table input output input_index output_index flag last_fast_index := by
  cases flag with
  | false => exact fast_fallback_equiv stride table input output input_index output_index last_fast_index
  | true =>
    rw [hflag rfl]
    exact fast_loop_equiv stride input output input_index output_index last_fast_index

private theorem alphabet_comparison_spec (table : Array U8 64#usize) :
    core.array.equality.PartialEqArray.eq core.cmp.PartialEqU8 table
      encode_scalar_tail.STANDARD_ALPHABET ⦃ b => b ↔ table = encode_scalar_tail.STANDARD_ALPHABET ⦄ := by
  have hne : ∀ (x y : U8), core.cmp.PartialEqU8.ne x y ⦃ b => b ↔ x ≠ y ⦄ := by
    intro x y
    simp [liftFun2, core.cmp.impls.PartialEqU8.ne]
  have hs := core.slice.cmp.PartialEqSlice.eq_homo_spec core.cmp.PartialEqU8
    table.to_slice encode_scalar_tail.STANDARD_ALPHABET.to_slice hne
  have heq : core.array.equality.PartialEqArray.eq core.cmp.PartialEqU8 table
      encode_scalar_tail.STANDARD_ALPHABET =
      core.slice.cmp.PartialEqSlice.eq core.cmp.PartialEqU8 table.to_slice
        encode_scalar_tail.STANDARD_ALPHABET.to_slice := by
    simp only [core.array.equality.PartialEqArray.eq, core.slice.cmp.PartialEqSlice.eq,
      Array.length, Array.property, Array.length_to_slice, Array.val_to_slice, ite_true]
  rw [heq]
  apply WP.spec_mono hs
  intro b hb
  simpa only [Slice.eq_iff, Array.val_to_slice, ← Array.eq_iff] using hb

theorem scalar_loop1_equiv :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 = encode_scalar_tail_loop1 := by
  with_unfolding_all rfl

theorem scalar_loop2_equiv :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop2 = encode_scalar_tail_loop2 := by
  with_unfolding_all rfl

theorem scalar_tail_equiv (table : Array U8 64#usize) (input output : Slice U8)
    (input_index output_index : Usize) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail table input output input_index output_index =
    encode_scalar_tail table input output input_index output_index := by
  have hd : (if Slice.len input >= 26#usize then
      core.array.equality.PartialEqArray.eq core.cmp.PartialEqU8 table encode_scalar_tail.STANDARD_ALPHABET
      else ok false) ⦃ flag => flag = true → table = encode_scalar_tail.STANDARD_ALPHABET ⦄ := by
    split
    · apply WP.spec_mono (alphabet_comparison_spec table)
      intro flag hflag
      exact hflag.mp
    · simp [WP.spec_ok]
  obtain ⟨flag, hdispatch, hflag⟩ := WP.spec_imp_exists hd
  have hfast := fun stride output input_index output_index last_fast_index =>
    fast_loop_equiv_if stride table input output input_index output_index flag last_fast_index hflag
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail encode_scalar_tail
  dsimp only
  rw [hdispatch]
  simp only [Aeneas.Std.bind_ok, ← hfast, scalar_loop1_equiv, scalar_loop2_equiv,
    Base64StepRef.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    Base64StepRef.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8,
    encode_scalar_tail.LOW_SIX_BITS_U8]

#print axioms fast_fallback_equiv
#print axioms alphabet_comparison_spec
#print axioms scalar_tail_equiv

theorem internal_encode_equiv
    (reference : Base64StepRef.engine.general_purpose.GeneralPurpose) (optimized : GeneralPurpose)
    (htable : reference.encode_table = optimized.encode_table) (input output : Slice U8) :
    Base64StepRef.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode
      reference input output =
    GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode
      optimized input output := by
  simp only [Base64StepRef.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode,
    GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode,
    Base64StepRef.engine.general_purpose.encode_helper, encode_helper,
    Base64StepRef.engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.closure.Insts.CoreOpsFunctionFnOncePairShared0SliceU8Mut1SliceU8PairUsizeUsize.call_once,
    EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.closure.Insts.CoreOpsFunctionFnOncePairShared0SliceU8Mut1SliceU8PairUsizeUsize.call_once]
  simp only [htable, scalar_tail_equiv]

#print axioms internal_encode_equiv

end Base64FastStep
