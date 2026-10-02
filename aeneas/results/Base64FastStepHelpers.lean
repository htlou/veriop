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

private theorem bind_prod {α β γ δ : Type} (p : α × β)
    (g : α → β → Result γ) (f : γ → Result δ) :
    Aeneas.Std.bind (Prod.casesOn p g) f =
      Prod.casesOn p (fun a b => Aeneas.Std.bind (g a b) f) := by
  cases p
  rfl

private theorem pair_copy_bind {α : Type} (word : U64) (shift : I32)
    (output : Slice U8) (pos stop : Usize)
    (pairs : Array (Array U8 2#usize) 4096#usize) (f : Slice U8 → Result α)
    (hshift : 0 ≤ shift.val ∧ shift.val < 64)
    (hstop : stop.val = pos.val + 2) (hbound : stop.val ≤ output.length)
    (hpairs : ∀ j, j < 4096 → pairs.val[j]! = pairAt j) :
    (do
      let (part, back) ← core.slice.index.Slice.index_mut
        (core.slice.index.SliceIndexRangeUsizeSlice U8) output { start := pos, «end» := stop }
      let shifted ← word >>> shift
      let masked ← lift (shifted &&& 4095#u64)
      let index ← lift (UScalar.cast .Usize masked)
      let row ← Array.index_usize pairs index
      let source ← lift (Array.to_slice row)
      let copied ← core.slice.Slice.copy_from_slice core.marker.CopyU8 part source
      f (back copied)) =
    f ((output.setAtNat pos.val
      encode_scalar_tail.STANDARD_ALPHABET.val[(word.val >>> (shift.toNat + 6)) &&& 63]!).setAtNat
      (pos.val + 1) encode_scalar_tail.STANDARD_ALPHABET.val[(word.val >>> shift.toNat) &&& 63]!) := by
  have hrows := hpairs
  simp only [pairAt, alphabet_eq] at hrows
  obtain ⟨r, hr, heq⟩ := WP.spec_imp_exists
    (pair_copy_spec word shift output pos stop pairs hshift hstop hbound hrows)
  have hi : ((word.val >>> shift.toNat) &&& 4095) >>> 6 =
      (word.val >>> (shift.toNat + 6)) &&& 63 := by
    rw [Nat.shiftRight_and_distrib, ← Nat.shiftRight_add]
    rfl
  have hlo : ((word.val >>> shift.toNat) &&& 4095) &&& 63 =
      (word.val >>> shift.toNat) &&& 63 := by
    rw [Nat.and_assoc]
    rfl
  simp only [hi, hlo] at heq
  have hs : r = (output.setAtNat pos.val
      encode_scalar_tail.STANDARD_ALPHABET.val[(word.val >>> (shift.toNat + 6)) &&& 63]!).setAtNat
      (pos.val + 1) encode_scalar_tail.STANDARD_ALPHABET.val[(word.val >>> shift.toNat) &&& 63]! := by
    rw [heq, alphabet_eq]
    apply (Slice.eq_iff _ _).mpr
    simp only [Slice.setSlice!_val, Slice.setAtNat, Slice.from_val]
    exact pair_set_slice_eq output.val pos.val _ _ (by change pos.val + 2 ≤ output.length; omega)
  rw [hs] at hr
  have h := congrArg (fun m => Aeneas.Std.bind m f) hr
  simp only [Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok] at h
  apply Eq.trans ?_ h
  congr 1
  funext ⟨part, back⟩
  change (do
      let shifted ← word >>> shift
      let masked ← lift (shifted &&& 4095#u64)
      let index ← lift (UScalar.cast .Usize masked)
      let row ← Array.index_usize pairs index
      let source ← lift (Array.to_slice row)
      let copied ← core.slice.Slice.copy_from_slice core.marker.CopyU8 part source
      f (back copied)) = Aeneas.Std.bind (do
      let shifted ← word >>> shift
      let masked ← lift (shifted &&& 4095#u64)
      let index ← lift (UScalar.cast .Usize masked)
      let row ← Array.index_usize pairs index
      let source ← lift (Array.to_slice row)
      let copied ← core.slice.Slice.copy_from_slice core.marker.CopyU8 part source
      ok (back copied)) f
  simp only [Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok]
  with_unfolding_all rfl

end Base64FastStep
