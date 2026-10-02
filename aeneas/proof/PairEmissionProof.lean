import PairTableInit

open Aeneas Aeneas.Std Aeneas.Std.Result
open Base64PairsValue.engine.general_purpose
set_option maxHeartbeats 2000000

theorem scalar_byte_lookup (word : U64) (shift : I32)
    (hshift : 0 ≤ shift.val ∧ shift.val < 64) :
    (do
      let shifted ← word >>> shift
      let masked ← lift (shifted &&& 63#u64)
      let index ← lift (UScalar.cast .Usize masked)
      Array.index_usize encode_scalar_tail.STANDARD_ALPHABET index)
      ⦃ result => result =
        encode_scalar_tail.STANDARD_ALPHABET.val[(word.val >>> shift.toNat) &&& 63]! ⦄ := by
  step as ⟨shifted, hshifted, hbits⟩
  step as ⟨masked, hmasked, hmaskedbits⟩
  have hmask : shifted.val &&& 63 ≤ 63 := Nat.and_le_right
  step with UScalar.cast_inBounds_spec as ⟨index, hindex⟩
  step as ⟨result, hresult⟩
  simp_all
  rw [List.getElem?_eq_getElem (by
    simp only [Array.property]
    exact Nat.lt_of_le_of_lt Nat.and_le_right (by decide))]
  rfl

#print axioms scalar_byte_lookup

theorem pair_copy_spec (word : U64) (shift : I32)
    (output : Slice U8) (pos stop : Usize)
    (pairs : Array (Array U8 2#usize) 4096#usize)
    (hshift : 0 ≤ shift.val ∧ shift.val < 64)
    (hstop : stop.val = pos.val + 2) (hbound : stop.val ≤ output.length)
    (hpairs : ∀ j, j < 4096 → pairs.val[j]! = Array.make 2#usize
      [encode_scalar_tail.STANDARD_ALPHABET.val[j >>> 6]!,
       encode_scalar_tail.STANDARD_ALPHABET.val[j &&& 63]!]) :
    (do
      let (part, back) ← core.slice.index.Slice.index_mut
        (core.slice.index.SliceIndexRangeUsizeSlice U8) output { start := pos, «end» := stop }
      let shifted ← word >>> shift
      let masked ← lift (shifted &&& 4095#u64)
      let index ← lift (UScalar.cast .Usize masked)
      let row ← Array.index_usize pairs index
      let source ← lift (Array.to_slice row)
      let copied ← core.slice.Slice.copy_from_slice core.marker.CopyU8 part source
      ok (back copied))
      ⦃ result => let index := (word.val >>> shift.toNat) &&& 4095
        result = output.setSlice! pos.val
          [encode_scalar_tail.STANDARD_ALPHABET.val[index >>> 6]!,
           encode_scalar_tail.STANDARD_ALPHABET.val[index &&& 63]!] ⦄ := by
  step as ⟨part, back, hpart, hlen, hback⟩
  step as ⟨shifted, hshifted, hbits⟩
  step as ⟨masked, hmasked, hmaskedbits⟩
  have hmask : shifted.val &&& 4095 ≤ 4095 := Nat.and_le_right
  step with UScalar.cast_inBounds_spec as ⟨index, hindex⟩
  step as ⟨row, hrow⟩
  have hival : index.val = shifted.val &&& 4095 := by simp [hindex, hmasked]
  have hi : index.val < 4096 := by omega
  have hentry := hpairs index.val hi
  have hrow' := List.Inhabited_getElem_eq_getElem! pairs.val index.val (by simpa using hi)
  rw [hrow, hrow', hentry]
  step as ⟨source, hsource⟩
  step as ⟨copied, hcopied⟩
  simp_all

#print axioms pair_copy_spec

theorem pair_emission_equiv (word : U64) (low high : I32)
    (output : Slice U8) (pos next stop : Usize)
    (pairs : Array (Array U8 2#usize) 4096#usize)
    (hlow : 0 ≤ low.val ∧ low.val < 64)
    (hhigh : 0 ≤ high.val ∧ high.val < 64)
    (hshift : high.toNat = low.toNat + 6)
    (hnext : next.val = pos.val + 1) (hstop : stop.val = pos.val + 2)
    (hbound : stop.val ≤ output.length)
    (hpairs : ∀ j, j < 4096 → pairs.val[j]! = Array.make 2#usize
      [encode_scalar_tail.STANDARD_ALPHABET.val[j >>> 6]!,
       encode_scalar_tail.STANDARD_ALPHABET.val[j &&& 63]!]) :
    (do
      let (part, back) ← core.slice.index.Slice.index_mut
        (core.slice.index.SliceIndexRangeUsizeSlice U8) output { start := pos, «end» := stop }
      let shifted ← word >>> low
      let masked ← lift (shifted &&& 4095#u64)
      let index ← lift (UScalar.cast .Usize masked)
      let row ← Array.index_usize pairs index
      let source ← lift (Array.to_slice row)
      let copied ← core.slice.Slice.copy_from_slice core.marker.CopyU8 part source
      ok (back copied)) =
    (do
      let first ← do
        let shifted ← word >>> high
        let masked ← lift (shifted &&& 63#u64)
        let index ← lift (UScalar.cast .Usize masked)
        Array.index_usize encode_scalar_tail.STANDARD_ALPHABET index
      let updated ← Slice.update output pos first
      let second ← do
        let shifted ← word >>> low
        let masked ← lift (shifted &&& 63#u64)
        let index ← lift (UScalar.cast .Usize masked)
        Array.index_usize encode_scalar_tail.STANDARD_ALPHABET index
      Slice.update updated next second) := by
  let first := encode_scalar_tail.STANDARD_ALPHABET.val[(word.val >>> high.toNat) &&& 63]!
  let second := encode_scalar_tail.STANDARD_ALPHABET.val[(word.val >>> low.toNat) &&& 63]!
  have hi : ((word.val >>> low.toNat) &&& 4095) >>> 6 =
      (word.val >>> high.toNat) &&& 63 := by
    rw [Nat.shiftRight_and_distrib, ← Nat.shiftRight_add, ← hshift]
    rfl
  have hlo : ((word.val >>> low.toNat) &&& 4095) &&& 63 =
      (word.val >>> low.toNat) &&& 63 := by
    rw [Nat.and_assoc]
    rfl
  have hleft := pair_copy_spec word low output pos stop pairs hlow hstop hbound hpairs
  simp only [hi, hlo] at hleft
  have hright : (do
      let a ← do
        let shifted ← word >>> high
        let masked ← lift (shifted &&& 63#u64)
        let index ← lift (UScalar.cast .Usize masked)
        Array.index_usize encode_scalar_tail.STANDARD_ALPHABET index
      let updated ← Slice.update output pos a
      let b ← do
        let shifted ← word >>> low
        let masked ← lift (shifted &&& 63#u64)
        let index ← lift (UScalar.cast .Usize masked)
        Array.index_usize encode_scalar_tail.STANDARD_ALPHABET index
      Slice.update updated next b) ⦃ result => result = output.setSlice! pos.val [first, second] ⦄ := by
    apply WP.spec_bind (scalar_byte_lookup word high hhigh)
    intro a ha
    apply WP.spec_bind (Slice.update_spec output pos a (by scalar_tac))
    intro updated hupdated
    apply WP.spec_bind (scalar_byte_lookup word low hlow)
    intro b hb
    step as ⟨result, hresult⟩
    apply (Slice.eq_iff _ _).mpr
    simp_all [first, second, Slice.set_val_eq, Slice.setSlice!_val]
    exact (pair_set_slice_eq output.val pos.val _ _ (by omega)).symm
  obtain ⟨left, hl, heql⟩ := WP.spec_imp_exists hleft
  obtain ⟨right, hr, heqr⟩ := WP.spec_imp_exists hright
  exact hl.trans ((congrArg Result.ok (heql.trans heqr.symm)).trans hr.symm)

#print axioms pair_emission_equiv
