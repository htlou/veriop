import Base64StepRef.Base64StepRef
import Base64StepOpt.Base64StepOpt
import PairEmissionProof
open Aeneas Aeneas.Std Aeneas.Std.Result
open Base64StepOpt.engine.general_purpose
namespace Base64FastStep
set_option maxHeartbeats 4000000
set_option maxRecDepth 8192

private def pairAt (i : Nat) : Array U8 2#usize :=
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

private theorem scalar_byte_bind {α : Type} (word : U64) (shift : I32)
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

private theorem update_eq (output : Slice U8) (pos : Usize) (byte : U8)
    (hbound : pos.val < output.length) :
    Slice.update output pos byte = ok (output.setAtNat pos.val byte) := by
  obtain ⟨r, hr, heq⟩ := WP.spec_imp_exists (Slice.update_spec output pos byte hbound)
  subst r
  exact hr

private theorem bind_uncurry {α β γ δ : Type} (p : α × β)
    (g : α → β → Result γ) (f : γ → Result δ) :
    Aeneas.Std.bind (Aeneas.Std.uncurry g p) f =
      Aeneas.Std.uncurry (fun a b => Aeneas.Std.bind (g a b) f) p := by
  cases p
  rfl

private theorem pair_row_bind {α : Type} (word : U64) (shift : I32)
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

private theorem range_mut_eq (output : Slice U8) (pos stop : Usize)
    (hpos : pos.val ≤ stop.val) (hbound : stop.val ≤ output.length) :
    core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8)
      output { start := pos, «end» := stop } =
    ok (Slice.from (output.val.slice pos.val stop.val) (by scalar_tac),
      fun (part : Slice U8) => output.setSlice! pos.val part.val) := by
  simp only [Slice.index_mut_SliceIndexRangeUsizeSliceInst,
    core.slice.index.SliceIndexRangeUsizeSlice.index_mut]
  rw [if_pos (by scalar_tac)]
  rfl

private theorem copy_eq (dst src : Slice U8) (hlen : dst.length = src.length) :
    core.slice.Slice.copy_from_slice core.marker.CopyU8 dst src = ok src := by
  obtain ⟨r, hr, heq⟩ := WP.spec_imp_exists
    (core.slice.Slice.copy_from_slice.step_spec core.marker.CopyU8 dst src hlen)
  subst r
  exact hr

private theorem pair_set_eq (output : Slice U8) (pos : Nat) (a b : U8)
    (hbound : pos + 2 ≤ output.length) :
    output.setSlice! pos [a, b] = (output.setAtNat pos a).setAtNat (pos + 1) b := by
  apply (Slice.eq_iff _ _).mpr
  simp only [Slice.setSlice!_val, Slice.setAtNat, Slice.from_val]
  exact pair_set_slice_eq output.val pos a b hbound

private theorem update_bind {α : Type} (output : Slice U8) (pos : Usize) (byte : U8)
    (f : Slice U8 → Result α) (hbound : pos.val < output.length) :
    Aeneas.Std.bind (Slice.update output pos byte) f = f (output.setAtNat pos.val byte) := by
  rw [update_eq output pos byte hbound, Aeneas.Std.bind_ok]

private theorem range_mut_bind {α : Type} (output : Slice U8) (pos stop : Usize)
    (f : (Slice U8 × (Slice U8 → Slice U8)) → Result α)
    (hpos : pos.val ≤ stop.val) (hbound : stop.val ≤ output.length) :
    Aeneas.Std.bind (core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8)
      output { start := pos, «end» := stop }) f =
    f (Slice.from (output.val.slice pos.val stop.val) (by scalar_tac),
      fun (part : Slice U8) => output.setSlice! pos.val part.val) := by
  rw [range_mut_eq output pos stop hpos hbound, Aeneas.Std.bind_ok]

private theorem copy_bind {α : Type} (dst src : Slice U8) (f : Slice U8 → Result α)
    (hlen : dst.length = src.length) :
    Aeneas.Std.bind (core.slice.Slice.copy_from_slice core.marker.CopyU8 dst src) f = f src := by
  rw [copy_eq dst src hlen, Aeneas.Std.bind_ok]

private theorem lift_bind {α β : Type} (x : α) (f : α → Result β) :
    Aeneas.Std.bind (lift x) f = f x := by
  simp only [lift, Aeneas.Std.bind_ok]

private theorem high_index (word shift : Nat) :
    ((word >>> shift) &&& 4095) >>> 6 = (word >>> (shift + 6)) &&& 63 := by
  rw [Nat.shiftRight_and_distrib, ← Nat.shiftRight_add]
  rfl

private theorem low_index (word shift : Nat) :
    ((word >>> shift) &&& 4095) &&& 63 = (word >>> shift) &&& 63 := by
  rw [Nat.and_assoc]
  rfl

private theorem short_output_prefix {α : Type} (output : Slice U8) (pos : Usize)
    (f g : Usize → (Slice U8 × (Slice U8 → Slice U8)) → Result α)
    (hbound : ¬ pos.val + 32 ≤ output.length) :
    (do
      let stop ← pos + 32#usize
      let part ← core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8)
        output { start := pos, «end» := stop }
      f stop part) =
    (do
      let stop ← pos + 32#usize
      let part ← core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8)
        output { start := pos, «end» := stop }
      g stop part) := by
  have ha : pos + 32#usize = UScalar.tryMk .Usize (pos.val + 32) := by
    change UScalar.add pos 32#usize = _
    simp only [UScalar.add, UScalar.ofNatCore_val_eq]
  rw [ha]
  simp only [UScalar.tryMk, UScalar.tryMkOpt]
  split
  · rename_i hfits
    simp only [Result.ofOption, Aeneas.Std.bind_ok, Aeneas.Std.bind_tc_ok,
      Slice.index_mut_SliceIndexRangeUsizeSliceInst,
      core.slice.index.SliceIndexRangeUsizeSlice.index_mut]
    have hfail : ¬ (pos ≤ UScalar.ofNatCore (pos.val + 32) (UScalar.check_bounds_imp_inBounds hfits) ∧
        (UScalar.ofNatCore (pos.val + 32) (UScalar.check_bounds_imp_inBounds hfits) : Usize) ≤ output.length) := by
      scalar_tac
    simp only [if_neg hfail, Aeneas.Std.bind_fail, Aeneas.Std.bind_tc_fail]
  · simp only [Result.ofOption, Aeneas.Std.bind_fail, Aeneas.Std.bind_tc_fail]

end Base64FastStep
