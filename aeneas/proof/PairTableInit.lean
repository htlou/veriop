import Base64PairsValue.Base64PairsValue
open Aeneas Aeneas.Std Aeneas.Std.Result
open Base64PairsValue.engine.general_purpose
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

  · simp only [WP.spec_ok]
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

-- A table read has the same result as the two original alphabet reads.
theorem pair_lookup_equiv (i : Usize) (hi : i.val < 4096) :
    (do
      let pairs ← encode_scalar_tail.PAIRS
      Array.index_usize pairs i) =
    (do
      let high ← i >>> 6#i32
      let first ← Array.index_usize encode_scalar_tail.STANDARD_ALPHABET high
      let low ← lift (i &&& 63#usize)
      let second ← Array.index_usize encode_scalar_tail.STANDARD_ALPHABET low
      Result.ok (Array.make 2#usize [first, second])) := by
  have hleft : (do
      let pairs ← encode_scalar_tail.PAIRS
      Array.index_usize pairs i) ⦃ row => row = pairAt i.val ⦄ := by
    step with pairs_initialized as ⟨pairs, hrows⟩
    step as ⟨row, hrow⟩
    have h := hrows i.val hi
    have hbound : i.val < pairs.val.length := by simpa using hi
    exact hrow.trans ((List.Inhabited_getElem_eq_getElem! pairs.val i.val hbound).trans h)
  have hright : (do
      let high ← i >>> 6#i32
      let first ← Array.index_usize encode_scalar_tail.STANDARD_ALPHABET high
      let low ← lift (i &&& 63#usize)
      let second ← Array.index_usize encode_scalar_tail.STANDARD_ALPHABET low
      Result.ok (Array.make 2#usize [first, second])) ⦃ row => row = pairAt i.val ⦄ := by
    step as ⟨high, hhigh, hbits⟩
    · cases System.Platform.numBits_eq <;> simp_all
    step as ⟨first, hfirst⟩
    · simp only [Array.length, Nat.shiftRight_eq_div_pow] at *
      scalar_tac
    step as ⟨low, hlow, hlowbits⟩
    step as ⟨second, hsecond⟩
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
    simp_all [pairAt]
  obtain ⟨left, hl, heql⟩ := WP.spec_imp_exists hleft
  obtain ⟨right, hr, heqr⟩ := WP.spec_imp_exists hright
  exact hl.trans ((congrArg Result.ok (heql.trans heqr.symm)).trans hr.symm)

#print axioms pair_lookup_equiv

theorem pair_set_slice_eq (xs : List U8) (i : Nat) (a b : U8)
    (h : i + 2 ≤ xs.length) :
    xs.setSlice! i [a, b] = (xs.set i a).set (i + 1) b := by
  induction i generalizing xs with
  | zero =>
    cases xs with
    | nil => simp at h
    | cons x xs =>
      cases xs with
      | nil => simp at h
      | cons y ys => simp [List.setSlice!]
  | succ i ih =>
    cases xs with
    | nil => simp at h
    | cons x xs =>
      have htail : i + 2 ≤ xs.length := by simpa using h
      have hshift (n : Nat) : i + (1 + n) - 1 = i + n := by omega
      simpa [List.setSlice!, Nat.add_assoc, hshift] using
        congrArg (List.cons x) (ih xs htail)

-- The two-byte slice copy used by the generated fast loop has the same entire
-- output state as the original two individual writes.
theorem pair_write_equiv (output : Slice U8) (pos : Usize) (a b : U8)
    (hbound : pos.val + 2 ≤ output.length) :
    (do
      let stop ← pos + 2#usize
      let (part, back) ← core.slice.index.Slice.index_mut
        (core.slice.index.SliceIndexRangeUsizeSlice U8) output
        { start := pos, «end» := stop }
      let copied ← core.slice.Slice.copy_from_slice core.marker.CopyU8 part
        (Array.to_slice (Array.make 2#usize [a, b]))
      ok (back copied)) =
    (do
      let updated ← Slice.update output pos a
      let next ← pos + 1#usize
      Slice.update updated next b) := by
  have hleft : (do
      let stop ← pos + 2#usize
      let (part, back) ← core.slice.index.Slice.index_mut
        (core.slice.index.SliceIndexRangeUsizeSlice U8) output
        { start := pos, «end» := stop }
      let copied ← core.slice.Slice.copy_from_slice core.marker.CopyU8 part
        (Array.to_slice (Array.make 2#usize [a, b]))
      ok (back copied)) ⦃ result => result = output.setSlice! pos.val [a, b] ⦄ := by
    step as ⟨stop, hstop⟩
    step as ⟨part, back, hpart, hlen, hback⟩
    step as ⟨copied, hcopied⟩
    simp_all
  have hright : (do
      let updated ← Slice.update output pos a
      let next ← pos + 1#usize
      Slice.update updated next b) ⦃ result => result = output.setSlice! pos.val [a, b] ⦄ := by
    step as ⟨updated, hupdated⟩
    step as ⟨next, hnext⟩
    step as ⟨result, hresult⟩
    apply (Slice.eq_iff _ _).mpr
    simp_all [Slice.set_val_eq, Slice.setSlice!_val]
    exact (pair_set_slice_eq output.val pos.val a b hbound).symm
  obtain ⟨left, hl, heql⟩ := WP.spec_imp_exists hleft
  obtain ⟨right, hr, heqr⟩ := WP.spec_imp_exists hright
  exact hl.trans ((congrArg Result.ok (heql.trans heqr.symm)).trans hr.symm)

#print axioms pair_write_equiv
