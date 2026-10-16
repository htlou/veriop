import DecodeApiModelNeg.DecodeApiModelNeg
import Mathlib.Tactic.Ring
import Mathlib.Tactic.IntervalCases
open Aeneas Aeneas.Std Aeneas.Std.Result
open DecodeApiModelNeg
set_option maxHeartbeats 4000000
set_option maxRecDepth 8192

/-!
Equivalence of the extracted baseline and candidate base64 decode paths.

`engine.general_purpose.decode` is the candidate (pair-table) code and
`engine.general_purpose.decode_ref` is a byte-identical copy of the baseline `decode.rs`,
extracted from the same crate so that both share every unchanged item and type.
-/

namespace DecodeApiBase


theorem or_eq_add {a b k : Nat} (ha : a % 2^k = 0) (hb : b < 2^k) : a ||| b = a + b := by
  have hd : 2^k ∣ a := Nat.dvd_of_mod_eq_zero ha
  have : a = 2^k * (a / 2^k) := (Nat.mul_div_cancel' hd).symm
  rw [this, ← Nat.two_pow_add_eq_or_of_lt hb]

-- instances of `or_eq_add` with the shift amounts used below, for `simp (disch := omega)`
theorem or6 {a b : Nat} (ha : a % 64 = 0) (hb : b < 64) : a ||| b = a + b := or_eq_add (k := 6) ha hb
theorem or8 {a b : Nat} (ha : a % 256 = 0) (hb : b < 256) : a ||| b = a + b := or_eq_add (k := 8) ha hb
theorem or16 {a b : Nat} (ha : a % 65536 = 0) (hb : b < 65536) : a ||| b = a + b := or_eq_add (k := 16) ha hb
theorem or20 {a b : Nat} (ha : a % 2^20 = 0) (hb : b < 2^20) : a ||| b = a + b := or_eq_add (k := 20) ha hb
theorem or22 {a b : Nat} (ha : a % 2^22 = 0) (hb : b < 2^22) : a ||| b = a + b := or_eq_add (k := 22) ha hb
theorem or28 {a b : Nat} (ha : a % 2^28 = 0) (hb : b < 2^28) : a ||| b = a + b := or_eq_add (k := 28) ha hb
theorem or34 {a b : Nat} (ha : a % 2^34 = 0) (hb : b < 2^34) : a ||| b = a + b := or_eq_add (k := 34) ha hb
theorem or40 {a b : Nat} (ha : a % 2^40 = 0) (hb : b < 2^40) : a ||| b = a + b := or_eq_add (k := 40) ha hb
theorem or46 {a b : Nat} (ha : a % 2^46 = 0) (hb : b < 2^46) : a ||| b = a + b := or_eq_add (k := 46) ha hb
theorem or52 {a b : Nat} (ha : a % 2^52 = 0) (hb : b < 2^52) : a ||| b = a + b := or_eq_add (k := 52) ha hb
theorem or58 {a b : Nat} (ha : a % 2^58 = 0) (hb : b < 2^58) : a ||| b = a + b := or_eq_add (k := 58) ha hb

theorem idx_ok {s : Slice U8} {i : Usize} (h : i.val < s.length) :
    s.index_usize i = ok (s.val[i.val]!) := by
  simp only [Slice.index_usize]
  simp [Slice.getElem?_Usize_eq, h]

theorem tbl_idx (T : Array U8 256#usize) (x : U8) :
    T.index_usize (core.convert.num.FromUsizeU8.from x) = ok (T.val[x.val]!) := by
  have hx : x.val < 256 := by scalar_tac
  simp only [Array.index_usize]
  simp [Array.getElem?_Usize_eq, core.convert.num.FromUsizeU8.from_val_eq, hx]

theorem shl_eq {ty tys} (x : UScalar ty) (k : IScalar tys) (h0 : 0 ≤ k.val)
    (h1 : k.toNat < ty.numBits) : x <<< k = ok ⟨x.bv <<< k.toNat⟩ := by
  simp only [HShiftLeft.hShiftLeft, UScalar.shiftLeft_IScalar, UScalar.shiftLeft, h0, h1]
  simp

theorem fromLEBytes2 (b0 b1 : BitVec 8) :
    (BitVec.fromLEBytes [b0, b1]).toNat = b0.toNat + 256 * b1.toNat := by
  have h0 := b0.isLt
  have h1 := b1.isLt
  simp [BitVec.fromLEBytes, BitVec.toNat_or, BitVec.toNat_shiftLeft, BitVec.toNat_setWidth]
  rw [Nat.or_comm, or_eq_add (k := 8)] <;> simp [Nat.shiftLeft_eq] <;> omega

theorem le16_val (a : Array U8 2#usize) (x y : U8) (h : a.val = [x, y]) :
    (core.num.U16.from_le_bytes a).val = x.val + 256 * y.val := by
  simp only [core.num.U16.from_le_bytes]
  simp only [UScalar.val]
  simp only [BitVec.toNat_cast]
  have hl : List.map U8.bv a.val = [x.bv, y.bv] := by simp [h]
  generalize List.map U8.bv a.val = l at hl ⊢
  subst hl
  rw [fromLEBytes2]

open engine.general_purpose.decode in
/-- Value of the two-symbol table entry for index `j`, from the one-symbol table `t`. -/
def entryOf (t : Array U8 256#usize) (j : Nat) : Nat :=
  let a := (t.val[j % 256]!).val
  let b := (t.val[j / 256]!).val
  if a < 64 ∧ b < 64 then a * 64 + b else 65535

open engine.general_purpose.decode in
def pairsPost (i : Usize) :
    ControlFlow (Array U16 65536#usize × Usize) (Array U16 65536#usize) → Prop
  | .done y => ∀ j, j < 65536 → (y.val[j]!).val = entryOf STANDARD_DECODE_TABLE j
  | .cont (pairs', i') => (i'.val ≤ 65536 ∧
      ∀ j, j < i'.val → (pairs'.val[j]!).val = entryOf STANDARD_DECODE_TABLE j) ∧
      65536 - i'.val < 65536 - i.val

open engine.general_purpose.decode in
theorem pairs_body_spec (pairs : Array U16 65536#usize) (i : Usize)
    (hi : i.val ≤ 65536)
    (hinv : ∀ j, j < i.val → (pairs.val[j]!).val = entryOf STANDARD_DECODE_TABLE j) :
    STANDARD_DECODE_PAIRS_loop.body pairs i ⦃ pairsPost i ⦄ := by
  unfold STANDARD_DECODE_PAIRS_loop.body
  split
  · rename_i hlt
    have hi' : i.val < 65536 := by scalar_tac
    have hand : (i &&& 255#usize).val = i.val % 256 := by
      simp only [UScalar.val_and]
      have := Nat.and_two_pow_sub_one_eq_mod i.val 8
      simpa using this
    simp only [lift]
    step as ⟨first, hfirst⟩
    step as ⟨i2, hi2, hi2b⟩
    · cases System.Platform.numBits_eq <;> simp_all
    have hi2' : i2.val = i.val / 256 := by
      rw [hi2, Nat.shiftRight_eq_div_pow]
    step as ⟨second, hsecond⟩
    have hfa : first.val = (STANDARD_DECODE_TABLE.val[i.val % 256]!).val := by
      rw [hfirst]; simp only [hand]
      rw [getElem!_pos (↑STANDARD_DECODE_TABLE : List U8) (i.val % 256) (by simp; omega)]
    have hsb : second.val = (STANDARD_DECODE_TABLE.val[i.val / 256]!).val := by
      rw [hsecond]; simp only [hi2']
      rw [getElem!_pos (↑STANDARD_DECODE_TABLE : List U8) (i.val / 256) (by simp; omega)]
    have hentry : ∀ v : U16, (first.val < 64 ∧ second.val < 64 → v.val = first.val * 64 + second.val) →
        (¬ (first.val < 64 ∧ second.val < 64) → v.val = 65535) →
        v.val = entryOf STANDARD_DECODE_TABLE i.val := by
      intro v h1 h2
      simp only [entryOf, ← hfa, ← hsb]
      split_ifs with hc
      · exact h1 hc
      · exact h2 hc
    have hfinal : ∀ v : U16, v.val = entryOf STANDARD_DECODE_TABLE i.val →
        (do
          let a ← pairs.update i v
          let i4 ← i + 1#usize
          ok (ControlFlow.cont (a, i4))) ⦃ pairsPost i ⦄ := by
      intro v hv
      step as ⟨a, ha⟩
      step as ⟨i4, hi4⟩
      simp only [pairsPost]
      refine ⟨⟨by scalar_tac, ?_⟩, by scalar_tac⟩
      intro j hj
      rw [ha]
      by_cases hji : j = i.val
      · subst hji; simp_all
      · have : j < i.val := by scalar_tac
        simp_all
    by_cases h1 : first < 64#u8
    · by_cases h2 : second < 64#u8
      · simp only [h1, h2, if_true]
        step as ⟨i5, hi5, hi5b⟩
        apply hfinal
        apply hentry
        · intro _
          have hf : first.val < 64 := by scalar_tac
          have hs : second.val < 64 := by scalar_tac
          simp only [UScalar.val_or, hi5, U8.cast_U16_val_eq]
          have hsz : U16.size = 65536 := by simp [U16.size, U16.numBits]
          rw [hsz, Nat.shiftLeft_eq, Nat.mod_eq_of_lt (by omega)]
          rw [or_eq_add (k := 6) (by omega) (by omega)]
        · intro hc; exfalso; apply hc; constructor <;> scalar_tac
      · simp only [h1, h2, if_true, if_false, bind_ok]
        apply hfinal
        apply hentry
        · intro hc; exfalso; apply h2; scalar_tac
        · intro _; rfl
    · simp only [h1, if_false, bind_ok]
      apply hfinal
      apply hentry
      · intro hc; exfalso; apply h1; scalar_tac
      · intro _; rfl
  · simp only [WP.spec_ok, pairsPost]
    intro j hj
    exact hinv j (by scalar_tac)

open engine.general_purpose.decode in
theorem pairs_spec :
    STANDARD_DECODE_PAIRS ⦃ tbl =>
      ∀ j, j < 65536 → (tbl.val[j]!).val = entryOf STANDARD_DECODE_TABLE j ⦄ := by
  unfold STANDARD_DECODE_PAIRS STANDARD_DECODE_PAIRS_loop
  apply loop.spec_decr_nat (fun (x : Array U16 65536#usize × Usize) => 65536 - x.2.val)
    (fun x => x.2.val ≤ 65536 ∧
      ∀ j, j < x.2.val → (x.1.val[j]!).val = entryOf STANDARD_DECODE_TABLE j)
  · rintro ⟨pairs, i⟩ ⟨hi, hinv⟩
    have h := pairs_body_spec pairs i hi hinv
    simp only at h ⊢
    apply WP.spec_mono h
    intro r hr
    cases r with
    | done y => exact hr
    | cont x => obtain ⟨p', i'⟩ := x; exact hr
  · dsimp only
    refine ⟨by scalar_tac, fun j hj => ?_⟩
    exfalso
    have : (0#usize).val = 0 := by simp
    omega

open engine.general_purpose.decode

/-- The common tail of `decode_chunk_8` and `decode_chunk_8_pairs`. -/
def tail8 (output : Slice U8) (accum : U64) :
    Result ((core.result.Result Unit decode.DecodeError) × (Slice U8)) := do
  let (s, index_mut_back) ←
    core.slice.index.Slice.index_mut
      (core.slice.index.SliceIndexRangeToUsizeSlice Std.U8) output { «end» := 6#usize }
  let a ← lift (core.num.U64.to_be_bytes accum)
  let s1 ← core.array.Array.index (core.ops.index.IndexSlice
      (core.slice.index.SliceIndexRangeToUsizeSlice Std.U8)) a { «end» := 6#usize }
  let s2 ← core.slice.Slice.copy_from_slice core.marker.CopyU8 s s1
  let output1 := index_mut_back s2
  ok (core.result.Result.Ok (), output1)

/-- Morsel `k` of the input as decoded by table `T`. -/
abbrev mor (T : Array U8 256#usize) (input : Slice U8) (k : Nat) : Nat :=
  (T.val[(input.val[k]!).val]!).val

theorem shl_val64 (x : U8) (k : Nat) (hk : k ≤ 58) (hx : x.val < 64) :
    (⟨(core.convert.num.FromU64U8.from x).bv <<< k⟩ : U64).val = x.val * 2^k := by
  have : (⟨(core.convert.num.FromU64U8.from x).bv <<< k⟩ : U64).val =
      ((core.convert.num.FromU64U8.from x).bv <<< k).toNat := rfl
  rw [this, BitVec.toNat_shiftLeft, core.convert.num.FromU64U8.from_bv_eq,
    BitVec.toNat_setWidth, Nat.shiftLeft_eq]
  have hx' : x.bv.toNat = x.val := rfl
  rw [hx']
  have h1 : x.val % 2^64 = x.val := Nat.mod_eq_of_lt (by omega)
  rw [h1]
  apply Nat.mod_eq_of_lt
  have : 2^k ≤ 2^58 := Nat.pow_le_pow_right (by omega) hk
  calc x.val * 2^k < 64 * 2^k := by apply Nat.mul_lt_mul_of_pos_right hx; positivity
    _ ≤ 64 * 2^58 := by omega
    _ = 2^64 := by norm_num

theorem accR_val (x0 x1 x2 x3 x4 x5 x6 x7 : U8) (h0 : x0.val < 64) (h1 : x1.val < 64)
    (h2 : x2.val < 64) (h3 : x3.val < 64) (h4 : x4.val < 64) (h5 : x5.val < 64)
    (h6 : x6.val < 64) (h7 : x7.val < 64) :
    ((⟨(core.convert.num.FromU64U8.from x0).bv <<< 58⟩ : U64) |||
      ⟨(core.convert.num.FromU64U8.from x1).bv <<< 52⟩ |||
      ⟨(core.convert.num.FromU64U8.from x2).bv <<< 46⟩ |||
      ⟨(core.convert.num.FromU64U8.from x3).bv <<< 40⟩ |||
      ⟨(core.convert.num.FromU64U8.from x4).bv <<< 34⟩ |||
      ⟨(core.convert.num.FromU64U8.from x5).bv <<< 28⟩ |||
      ⟨(core.convert.num.FromU64U8.from x6).bv <<< 22⟩ |||
      ⟨(core.convert.num.FromU64U8.from x7).bv <<< 16⟩).val =
    x0.val * 2^58 + x1.val * 2^52 + x2.val * 2^46 + x3.val * 2^40 + x4.val * 2^34 +
      x5.val * 2^28 + x6.val * 2^22 + x7.val * 2^16 := by
  simp only [UScalar.val_or]
  rw [shl_val64 x0 58 (by omega) h0, shl_val64 x1 52 (by omega) h1, shl_val64 x2 46 (by omega) h2,
    shl_val64 x3 40 (by omega) h3, shl_val64 x4 34 (by omega) h4, shl_val64 x5 28 (by omega) h5,
    shl_val64 x6 22 (by omega) h6, shl_val64 x7 16 (by omega) h7]
  simp (disch := omega) only [or58, or52, or46, or40, or34, or28, or22, or16]

theorem chunk8_fast (input : Slice U8) (idx : Usize) (T : Array U8 256#usize) (out : Slice U8)
    (hlen : 8 ≤ input.length) (hm : ∀ k, k < 8 → mor T input k < 64) :
    ∃ acc : U64, acc.val = mor T input 0 * 2^58 + mor T input 1 * 2^52 + mor T input 2 * 2^46 +
        mor T input 3 * 2^40 + mor T input 4 * 2^34 + mor T input 5 * 2^28 +
        mor T input 6 * 2^22 + mor T input 7 * 2^16 ∧
      decode_chunk_8 input idx T out = tail8 out acc := by
  have hv : ∀ k, k < 8 → T.val[(input.val[k]!).val]! ≠ engine.general_purpose.INVALID_VALUE := by
    intro k hk h
    have := hm k hk
    simp only [mor, h, engine.general_purpose.INVALID_VALUE] at this
    simp at this
  have h0 : input.index_usize 0#usize = ok (input.val[0]!) := idx_ok (by scalar_tac)
  have h1 : input.index_usize 1#usize = ok (input.val[1]!) := idx_ok (by scalar_tac)
  have h2 : input.index_usize 2#usize = ok (input.val[2]!) := idx_ok (by scalar_tac)
  have h3 : input.index_usize 3#usize = ok (input.val[3]!) := idx_ok (by scalar_tac)
  have h4 : input.index_usize 4#usize = ok (input.val[4]!) := idx_ok (by scalar_tac)
  have h5 : input.index_usize 5#usize = ok (input.val[5]!) := idx_ok (by scalar_tac)
  have h6 : input.index_usize 6#usize = ok (input.val[6]!) := idx_ok (by scalar_tac)
  have h7 : input.index_usize 7#usize = ok (input.val[7]!) := idx_ok (by scalar_tac)
  have hv0 := hv 0 (by omega)
  have hv1 := hv 1 (by omega)
  have hv2 := hv 2 (by omega)
  have hv3 := hv 3 (by omega)
  have hv4 := hv 4 (by omega)
  have hv5 := hv 5 (by omega)
  have hv6 := hv 6 (by omega)
  have hv7 := hv 7 (by omega)
  have s58 : ∀ x : U64, x <<< 58#i32 = ok ⟨x.bv <<< 58⟩ := fun x => shl_eq x _ (by decide) (by decide)
  have s52 : ∀ x : U64, x <<< 52#i32 = ok ⟨x.bv <<< 52⟩ := fun x => shl_eq x _ (by decide) (by decide)
  have s46 : ∀ x : U64, x <<< 46#i32 = ok ⟨x.bv <<< 46⟩ := fun x => shl_eq x _ (by decide) (by decide)
  have s40 : ∀ x : U64, x <<< 40#i32 = ok ⟨x.bv <<< 40⟩ := fun x => shl_eq x _ (by decide) (by decide)
  have s34 : ∀ x : U64, x <<< 34#i32 = ok ⟨x.bv <<< 34⟩ := fun x => shl_eq x _ (by decide) (by decide)
  have s28 : ∀ x : U64, x <<< 28#i32 = ok ⟨x.bv <<< 28⟩ := fun x => shl_eq x _ (by decide) (by decide)
  have s22 : ∀ x : U64, x <<< 22#i32 = ok ⟨x.bv <<< 22⟩ := fun x => shl_eq x _ (by decide) (by decide)
  have s16 : ∀ x : U64, x <<< 16#i32 = ok ⟨x.bv <<< 16⟩ := fun x => shl_eq x _ (by decide) (by decide)
  unfold decode_chunk_8
  simp only [lift, bind_ok, h0, h1, h2, h3, h4, h5, h6, h7, tbl_idx, hv0, hv1, hv2, hv3, hv4, hv5, hv6, hv7,
    s58, s52, s46, s40, s34, s28, s22, s16, if_false]
  refine ⟨?acc, ?hval, ?heq⟩
  case heq =>
    unfold tail8
    simp only [lift, bind_ok]
    rfl
  case hval =>
    have hb := fun k (hk : k < 8) => hm k hk
    simp only [mor] at hb
    have b0 := hb 0 (by omega); have b1 := hb 1 (by omega); have b2 := hb 2 (by omega)
    have b3 := hb 3 (by omega); have b4 := hb 4 (by omega); have b5 := hb 5 (by omega)
    have b6 := hb 6 (by omega); have b7 := hb 7 (by omega)
    exact accR_val _ _ _ _ _ _ _ _ b0 b1 b2 b3 b4 b5 b6 b7

theorem sub_index (input : Slice U8) (st en : Usize) (h1 : st.val ≤ en.val) (h2 : en.val ≤ input.length) :
    ∃ s, core.slice.index.Slice.index (core.slice.index.SliceIndexRangeUsizeSlice U8) input
        { start := st, «end» := en } = ok s ∧ s.val = input.val.slice st.val en.val ∧
        s.length = en.val - st.val := by
  have h := core.slice.index.SliceIndexRangeUsizeSlice.index.step_spec
    { start := st, «end» := en } input (by scalar_tac) (by scalar_tac)
  obtain ⟨s, hs, hv, hl⟩ := WP.spec_imp_exists h
  exact ⟨s, by simpa [core.slice.index.Slice.index] using hs, hv, hl⟩

theorem tryfrom2 (s : Slice U8) (h : s.length = 2) :
    ∃ a : Array U8 2#usize, core.array.TryFromArrayCopySlice.try_from 2#usize core.marker.CopyU8 s =
      ok (core.result.Result.Ok a) ∧ a.val = s.val := by
  simp only [core.array.TryFromArrayCopySlice.try_from]
  have h' : s.length = (2#usize).val := by simpa using h
  simp only [h', _root_.dite_true]
  exact ⟨_, rfl, by simp⟩

theorem unwrap_ok {T E : Type} (inst : core.fmt.Debug E) (x : T) :
    core.result.Result.unwrap inst (core.result.Result.Ok x) = ok x := rfl

theorem tbl16_idx (tbl : Array U16 65536#usize) (v : U16) :
    tbl.index_usize (core.convert.num.FromUsizeU16.from v) = ok (tbl.val[v.val]!) := by
  have hv : v.val < 65536 := by scalar_tac
  simp only [Array.index_usize]
  simp [Array.getElem?_Usize_eq, core.convert.num.FromUsizeU16.from_val_eq, hv]

theorem slice2 (l : List U8) (k : Nat) (h : k + 2 ≤ l.length) :
    l.slice k (k + 2) = [l[k]!, l[k + 1]!] := by
  have e1 : l.drop k = l[k] :: l.drop (k + 1) := List.drop_eq_getElem_cons (by omega)
  have e2 : l.drop (k + 1) = l[k + 1] :: l.drop (k + 2) := List.drop_eq_getElem_cons (by omega)
  have g1 : l[k]! = l[k] := getElem!_pos l k (by omega)
  have g2 : l[k + 1]! = l[k + 1] := getElem!_pos l (k + 1) (by omega)
  rw [g1, g2]
  unfold List.slice
  rw [Nat.add_sub_cancel_left, e1, e2]
  rfl

theorem pair_valid (tbl : Array U16 65536#usize)
    (htblv : ∀ j < 65536, (tbl.val[j]!).val = entryOf STANDARD_DECODE_TABLE j)
    (c0 c1 : U8) (v : U16) (hv : v.val = c0.val + 256 * c1.val)
    (hP : (tbl.val[v.val]!).val < 4096) :
    (STANDARD_DECODE_TABLE.val[c0.val]!).val < 64 ∧ (STANDARD_DECODE_TABLE.val[c1.val]!).val < 64 ∧
      (tbl.val[v.val]!).val =
        (STANDARD_DECODE_TABLE.val[c0.val]!).val * 64 + (STANDARD_DECODE_TABLE.val[c1.val]!).val := by
  have hc0 : c0.val < 256 := by scalar_tac
  have hc1 : c1.val < 256 := by scalar_tac
  have he := htblv v.val (by scalar_tac)
  have hm : v.val % 256 = c0.val := by omega
  have hd : v.val / 256 = c1.val := by omega
  simp only [entryOf, hm, hd] at he
  split_ifs at he with hc
  · exact ⟨hc.1, hc.2, he⟩
  · omega

theorem shl_val64_16 (x : U16) (k : Nat) (hk : k ≤ 52) (hx : x.val < 4096) :
    (⟨(core.convert.num.FromU64U16.from x).bv <<< k⟩ : U64).val = x.val * 2^k := by
  have : (⟨(core.convert.num.FromU64U16.from x).bv <<< k⟩ : U64).val =
      ((core.convert.num.FromU64U16.from x).bv <<< k).toNat := rfl
  rw [this, BitVec.toNat_shiftLeft, core.convert.num.FromU64U16.from_bv_eq,
    BitVec.toNat_setWidth, Nat.shiftLeft_eq]
  have hx' : x.bv.toNat = x.val := rfl
  rw [hx']
  have h1 : x.val % 2^64 = x.val := Nat.mod_eq_of_lt (by omega)
  rw [h1]
  apply Nat.mod_eq_of_lt
  have : 2^k ≤ 2^52 := Nat.pow_le_pow_right (by omega) hk
  calc x.val * 2^k < 4096 * 2^k := by apply Nat.mul_lt_mul_of_pos_right hx; positivity
    _ ≤ 4096 * 2^52 := by omega
    _ = 2^64 := by norm_num

theorem accO_val (x0 x1 x2 x3 : U16) (h0 : x0.val < 4096) (h1 : x1.val < 4096)
    (h2 : x2.val < 4096) (h3 : x3.val < 4096) :
    ((⟨(core.convert.num.FromU64U16.from x0).bv <<< 52⟩ : U64) |||
      ⟨(core.convert.num.FromU64U16.from x1).bv <<< 40⟩ |||
      ⟨(core.convert.num.FromU64U16.from x2).bv <<< 28⟩ |||
      ⟨(core.convert.num.FromU64U16.from x3).bv <<< 16⟩).val =
    x0.val * 2^52 + x1.val * 2^40 + x2.val * 2^28 + x3.val * 2^16 := by
  simp only [UScalar.val_or]
  rw [shl_val64_16 x0 52 (by omega) h0, shl_val64_16 x1 40 (by omega) h1,
    shl_val64_16 x2 28 (by omega) h2, shl_val64_16 x3 16 (by omega) h3]
  simp (disch := omega) only [or52, or40, or28]

theorem chunk8_pairs_eq (input : Slice U8) (idx : Usize) (T : Array U8 256#usize) (out : Slice U8)
    (hT : T = STANDARD_DECODE_TABLE) :
    decode_chunk_8_pairs input idx T out = decode_chunk_8 input idx T out := by
  unfold decode_chunk_8_pairs
  by_cases hlen : 8 ≤ input.length
  · have hlen' : Slice.len input ≥ 8#usize := by scalar_tac
    simp only [hlen', if_true]
    obtain ⟨tbl, htbl, htblv⟩ := WP.spec_imp_exists pairs_spec
    obtain ⟨s0, hs0, hs0v, hs0l⟩ := sub_index input 0#usize 2#usize (by simp) (by scalar_tac)
    have hs0l' : s0.length = 2 := by simp at hs0l; omega
    obtain ⟨a0, ha0, ha0v⟩ := tryfrom2 s0 hs0l'
    have ha0l : a0.val = [input.val[0]!, input.val[1]!] := by
      rw [ha0v, hs0v]
      have := slice2 input.val 0 (by scalar_tac)
      simpa using this
    obtain ⟨s1, hs1, hs1v, hs1l⟩ := sub_index input 2#usize 4#usize (by simp) (by scalar_tac)
    have hs1l' : s1.length = 2 := by simp at hs1l; omega
    obtain ⟨a1, ha1, ha1v⟩ := tryfrom2 s1 hs1l'
    have ha1l : a1.val = [input.val[2]!, input.val[3]!] := by
      rw [ha1v, hs1v]
      have := slice2 input.val 2 (by scalar_tac)
      simpa using this
    obtain ⟨s2, hs2, hs2v, hs2l⟩ := sub_index input 4#usize 6#usize (by simp) (by scalar_tac)
    have hs2l' : s2.length = 2 := by simp at hs2l; omega
    obtain ⟨a2, ha2, ha2v⟩ := tryfrom2 s2 hs2l'
    have ha2l : a2.val = [input.val[4]!, input.val[5]!] := by
      rw [ha2v, hs2v]
      have := slice2 input.val 4 (by scalar_tac)
      simpa using this
    obtain ⟨s3, hs3, hs3v, hs3l⟩ := sub_index input 6#usize 8#usize (by simp) (by scalar_tac)
    have hs3l' : s3.length = 2 := by simp at hs3l; omega
    obtain ⟨a3, ha3, ha3v⟩ := tryfrom2 s3 hs3l'
    have ha3l : a3.val = [input.val[6]!, input.val[7]!] := by
      rw [ha3v, hs3v]
      have := slice2 input.val 6 (by scalar_tac)
      simpa using this
    have t52 : ∀ x : U64, x <<< 52#i32 = ok ⟨x.bv <<< 52⟩ := fun x => shl_eq x _ (by decide) (by decide)
    have t40 : ∀ x : U64, x <<< 40#i32 = ok ⟨x.bv <<< 40⟩ := fun x => shl_eq x _ (by decide) (by decide)
    have t28 : ∀ x : U64, x <<< 28#i32 = ok ⟨x.bv <<< 28⟩ := fun x => shl_eq x _ (by decide) (by decide)
    have t16 : ∀ x : U64, x <<< 16#i32 = ok ⟨x.bv <<< 16⟩ := fun x => shl_eq x _ (by decide) (by decide)
    simp only [hs0, hs1, hs2, hs3, ha0, ha1, ha2, ha3, unwrap_ok, htbl, tbl16_idx, lift, bind_ok,
      t52, t40, t28, t16]
    have hv0 := le16_val a0 _ _ ha0l
    have hv1 := le16_val a1 _ _ ha1l
    have hv2 := le16_val a2 _ _ ha2l
    have hv3 := le16_val a3 _ _ ha3l
    by_cases hc : (tbl.val[(core.num.U16.from_le_bytes a0).val]! ||| tbl.val[(core.num.U16.from_le_bytes a1).val]! |||
        tbl.val[(core.num.U16.from_le_bytes a2).val]! ||| tbl.val[(core.num.U16.from_le_bytes a3).val]!) < 4096#u16
    · simp only [hc, if_true]
      have hcv : (tbl.val[(core.num.U16.from_le_bytes a0).val]! ||| tbl.val[(core.num.U16.from_le_bytes a1).val]! |||
          tbl.val[(core.num.U16.from_le_bytes a2).val]! ||| tbl.val[(core.num.U16.from_le_bytes a3).val]!).val < 4096 := by
        scalar_tac
      simp only [UScalar.val_or] at hcv
      have hp0 : (tbl.val[(core.num.U16.from_le_bytes a0).val]!).val < 4096 :=
        lt_of_le_of_lt (le_trans Nat.left_le_or (le_trans Nat.left_le_or Nat.left_le_or)) hcv
      have hp1 : (tbl.val[(core.num.U16.from_le_bytes a1).val]!).val < 4096 :=
        lt_of_le_of_lt (le_trans Nat.right_le_or (le_trans Nat.left_le_or Nat.left_le_or)) hcv
      have hp2 : (tbl.val[(core.num.U16.from_le_bytes a2).val]!).val < 4096 :=
        lt_of_le_of_lt (le_trans Nat.right_le_or Nat.left_le_or) hcv
      have hp3 : (tbl.val[(core.num.U16.from_le_bytes a3).val]!).val < 4096 :=
        lt_of_le_of_lt Nat.right_le_or hcv
      obtain ⟨q0, q1, e0⟩ := pair_valid tbl htblv _ _ _ hv0 hp0
      obtain ⟨q2, q3, e1⟩ := pair_valid tbl htblv _ _ _ hv1 hp1
      obtain ⟨q4, q5, e2⟩ := pair_valid tbl htblv _ _ _ hv2 hp2
      obtain ⟨q6, q7, e3⟩ := pair_valid tbl htblv _ _ _ hv3 hp3
      have hm : ∀ k, k < 8 → mor T input k < 64 := by
        intro k hk
        subst hT
        interval_cases k <;> assumption
      obtain ⟨acc, hacc, heq⟩ := chunk8_fast input idx T out hlen hm
      rw [heq]
      unfold tail8
      simp only [lift, bind_ok]
      have hacc' : acc = ((⟨(core.convert.num.FromU64U16.from tbl.val[(core.num.U16.from_le_bytes a0).val]!).bv <<< 52⟩ : U64) |||
          ⟨(core.convert.num.FromU64U16.from tbl.val[(core.num.U16.from_le_bytes a1).val]!).bv <<< 40⟩ |||
          ⟨(core.convert.num.FromU64U16.from tbl.val[(core.num.U16.from_le_bytes a2).val]!).bv <<< 28⟩ |||
          ⟨(core.convert.num.FromU64U16.from tbl.val[(core.num.U16.from_le_bytes a3).val]!).bv <<< 16⟩) := by
        apply UScalar.eq_of_val_eq
        rw [hacc, accO_val _ _ _ _ hp0 hp1 hp2 hp3, e0, e1, e2, e3]
        subst hT
        simp only [mor]
        ring
      rw [hacc']
    · simp only [hc, if_false]
  · have hlen' : ¬ (Slice.len input ≥ 8#usize) := by scalar_tac
    simp only [hlen', if_false]


/-! ## Four-symbol chunks -/

/-- The common tail of `decode_chunk_4` and `decode_chunk_4_pairs`. -/
def tail4 (output : Slice U8) (accum : U32) :
    Result ((core.result.Result Unit decode.DecodeError) × (Slice U8)) := do
  let (s, index_mut_back) ←
    core.slice.index.Slice.index_mut
      (core.slice.index.SliceIndexRangeToUsizeSlice Std.U8) output { «end» := 3#usize }
  let a ← lift (core.num.U32.to_be_bytes accum)
  let s1 ← core.array.Array.index (core.ops.index.IndexSlice
      (core.slice.index.SliceIndexRangeToUsizeSlice Std.U8)) a { «end» := 3#usize }
  let s2 ← core.slice.Slice.copy_from_slice core.marker.CopyU8 s s1
  let output1 := index_mut_back s2
  ok (core.result.Result.Ok (), output1)

theorem shl_val32 (x : U8) (k : Nat) (hk : k ≤ 26) (hx : x.val < 64) :
    (⟨(core.convert.num.FromU32U8.from x).bv <<< k⟩ : U32).val = x.val * 2^k := by
  have : (⟨(core.convert.num.FromU32U8.from x).bv <<< k⟩ : U32).val =
      ((core.convert.num.FromU32U8.from x).bv <<< k).toNat := rfl
  rw [this, BitVec.toNat_shiftLeft, core.convert.num.FromU32U8.from_bv_eq,
    BitVec.toNat_setWidth, Nat.shiftLeft_eq]
  have hx' : x.bv.toNat = x.val := rfl
  rw [hx']
  have h1 : x.val % 2^32 = x.val := Nat.mod_eq_of_lt (by omega)
  rw [h1]
  apply Nat.mod_eq_of_lt
  have : 2^k ≤ 2^26 := Nat.pow_le_pow_right (by omega) hk
  calc x.val * 2^k < 64 * 2^k := by apply Nat.mul_lt_mul_of_pos_right hx; positivity
    _ ≤ 64 * 2^26 := by omega
    _ = 2^32 := by norm_num

theorem shl_val32_16 (x : U16) (k : Nat) (hk : k ≤ 20) (hx : x.val < 4096) :
    (⟨(core.convert.num.FromU32U16.from x).bv <<< k⟩ : U32).val = x.val * 2^k := by
  have : (⟨(core.convert.num.FromU32U16.from x).bv <<< k⟩ : U32).val =
      ((core.convert.num.FromU32U16.from x).bv <<< k).toNat := rfl
  rw [this, BitVec.toNat_shiftLeft, core.convert.num.FromU32U16.from_bv_eq,
    BitVec.toNat_setWidth, Nat.shiftLeft_eq]
  have hx' : x.bv.toNat = x.val := rfl
  rw [hx']
  have h1 : x.val % 2^32 = x.val := Nat.mod_eq_of_lt (by omega)
  rw [h1]
  apply Nat.mod_eq_of_lt
  have : 2^k ≤ 2^20 := Nat.pow_le_pow_right (by omega) hk
  calc x.val * 2^k < 4096 * 2^k := by apply Nat.mul_lt_mul_of_pos_right hx; positivity
    _ ≤ 4096 * 2^20 := by omega
    _ = 2^32 := by norm_num

theorem or26 {a b : Nat} (ha : a % 2^26 = 0) (hb : b < 2^26) : a ||| b = a + b := or_eq_add (k := 26) ha hb
theorem or14 {a b : Nat} (ha : a % 2^14 = 0) (hb : b < 2^14) : a ||| b = a + b := or_eq_add (k := 14) ha hb

theorem accR4_val (x0 x1 x2 x3 : U8) (h0 : x0.val < 64) (h1 : x1.val < 64)
    (h2 : x2.val < 64) (h3 : x3.val < 64) :
    ((⟨(core.convert.num.FromU32U8.from x0).bv <<< 26⟩ : U32) |||
      ⟨(core.convert.num.FromU32U8.from x1).bv <<< 20⟩ |||
      ⟨(core.convert.num.FromU32U8.from x2).bv <<< 14⟩ |||
      ⟨(core.convert.num.FromU32U8.from x3).bv <<< 8⟩).val =
    x0.val * 2^26 + x1.val * 2^20 + x2.val * 2^14 + x3.val * 2^8 := by
  simp only [UScalar.val_or]
  rw [shl_val32 x0 26 (by omega) h0, shl_val32 x1 20 (by omega) h1, shl_val32 x2 14 (by omega) h2,
    shl_val32 x3 8 (by omega) h3]
  simp (disch := omega) only [or26, or20, or14]

theorem accO4_val (x0 x1 : U16) (h0 : x0.val < 4096) (h1 : x1.val < 4096) :
    ((⟨(core.convert.num.FromU32U16.from x0).bv <<< 20⟩ : U32) |||
      ⟨(core.convert.num.FromU32U16.from x1).bv <<< 8⟩).val =
    x0.val * 2^20 + x1.val * 2^8 := by
  simp only [UScalar.val_or]
  rw [shl_val32_16 x0 20 (by omega) h0, shl_val32_16 x1 8 (by omega) h1]
  simp (disch := omega) only [or20]

theorem chunk4_fast (input : Slice U8) (idx : Usize) (T : Array U8 256#usize) (out : Slice U8)
    (hlen : 4 ≤ input.length) (hm : ∀ k, k < 4 → mor T input k < 64) :
    ∃ acc : U32, acc.val = mor T input 0 * 2^26 + mor T input 1 * 2^20 + mor T input 2 * 2^14 +
        mor T input 3 * 2^8 ∧
      decode_chunk_4 input idx T out = tail4 out acc := by
  have hv : ∀ k, k < 4 → T.val[(input.val[k]!).val]! ≠ engine.general_purpose.INVALID_VALUE := by
    intro k hk h
    have := hm k hk
    simp only [mor, h, engine.general_purpose.INVALID_VALUE] at this
    simp at this
  have h0 : input.index_usize 0#usize = ok (input.val[0]!) := idx_ok (by scalar_tac)
  have h1 : input.index_usize 1#usize = ok (input.val[1]!) := idx_ok (by scalar_tac)
  have h2 : input.index_usize 2#usize = ok (input.val[2]!) := idx_ok (by scalar_tac)
  have h3 : input.index_usize 3#usize = ok (input.val[3]!) := idx_ok (by scalar_tac)
  have hv0 := hv 0 (by omega)
  have hv1 := hv 1 (by omega)
  have hv2 := hv 2 (by omega)
  have hv3 := hv 3 (by omega)
  have s26 : ∀ x : U32, x <<< 26#i32 = ok ⟨x.bv <<< 26⟩ := fun x => shl_eq x _ (by decide) (by decide)
  have s20 : ∀ x : U32, x <<< 20#i32 = ok ⟨x.bv <<< 20⟩ := fun x => shl_eq x _ (by decide) (by decide)
  have s14 : ∀ x : U32, x <<< 14#i32 = ok ⟨x.bv <<< 14⟩ := fun x => shl_eq x _ (by decide) (by decide)
  have s8 : ∀ x : U32, x <<< 8#i32 = ok ⟨x.bv <<< 8⟩ := fun x => shl_eq x _ (by decide) (by decide)
  unfold decode_chunk_4
  simp only [lift, bind_ok, h0, h1, h2, h3, tbl_idx, hv0, hv1, hv2, hv3, s26, s20, s14, s8, if_false]
  refine ⟨?acc, ?hval, ?heq⟩
  case heq =>
    unfold tail4
    simp only [lift, bind_ok]
    rfl
  case hval =>
    have hb := fun k (hk : k < 4) => hm k hk
    simp only [mor] at hb
    exact accR4_val _ _ _ _ (hb 0 (by omega)) (hb 1 (by omega)) (hb 2 (by omega)) (hb 3 (by omega))

theorem chunk4_pairs_eq (input : Slice U8) (idx : Usize) (T : Array U8 256#usize) (out : Slice U8)
    (hT : T = STANDARD_DECODE_TABLE) :
    decode_chunk_4_pairs input idx T out = decode_chunk_4 input idx T out := by
  unfold decode_chunk_4_pairs
  by_cases hlen : 4 ≤ input.length
  · have hlen' : Slice.len input ≥ 4#usize := by scalar_tac
    simp only [hlen', if_true]
    obtain ⟨tbl, htbl, htblv⟩ := WP.spec_imp_exists pairs_spec
    obtain ⟨s0, hs0, hs0v, hs0l⟩ := sub_index input 0#usize 2#usize (by simp) (by scalar_tac)
    have hs0l' : s0.length = 2 := by simp at hs0l; omega
    obtain ⟨a0, ha0, ha0v⟩ := tryfrom2 s0 hs0l'
    have ha0l : a0.val = [input.val[0]!, input.val[1]!] := by
      rw [ha0v, hs0v]
      have := slice2 input.val 0 (by scalar_tac)
      simpa using this
    obtain ⟨s1, hs1, hs1v, hs1l⟩ := sub_index input 2#usize 4#usize (by simp) (by scalar_tac)
    have hs1l' : s1.length = 2 := by simp at hs1l; omega
    obtain ⟨a1, ha1, ha1v⟩ := tryfrom2 s1 hs1l'
    have ha1l : a1.val = [input.val[2]!, input.val[3]!] := by
      rw [ha1v, hs1v]
      have := slice2 input.val 2 (by scalar_tac)
      simpa using this
    have t20 : ∀ x : U32, x <<< 20#i32 = ok ⟨x.bv <<< 20⟩ := fun x => shl_eq x _ (by decide) (by decide)
    have t8 : ∀ x : U32, x <<< 8#i32 = ok ⟨x.bv <<< 8⟩ := fun x => shl_eq x _ (by decide) (by decide)
    simp only [hs0, hs1, ha0, ha1, unwrap_ok, htbl, tbl16_idx, lift, bind_ok, t20, t8]
    have hv0 := le16_val a0 _ _ ha0l
    have hv1 := le16_val a1 _ _ ha1l
    by_cases hc : (tbl.val[(core.num.U16.from_le_bytes a0).val]! |||
        tbl.val[(core.num.U16.from_le_bytes a1).val]!) < 4096#u16
    · simp only [hc, if_true]
      have hcv : (tbl.val[(core.num.U16.from_le_bytes a0).val]! |||
          tbl.val[(core.num.U16.from_le_bytes a1).val]!).val < 4096 := by scalar_tac
      simp only [UScalar.val_or] at hcv
      have hp0 : (tbl.val[(core.num.U16.from_le_bytes a0).val]!).val < 4096 :=
        lt_of_le_of_lt Nat.left_le_or hcv
      have hp1 : (tbl.val[(core.num.U16.from_le_bytes a1).val]!).val < 4096 :=
        lt_of_le_of_lt Nat.right_le_or hcv
      obtain ⟨q0, q1, e0⟩ := pair_valid tbl htblv _ _ _ hv0 hp0
      obtain ⟨q2, q3, e1⟩ := pair_valid tbl htblv _ _ _ hv1 hp1
      have hm : ∀ k, k < 4 → mor T input k < 64 := by
        intro k hk
        subst hT
        interval_cases k <;> assumption
      obtain ⟨acc, hacc, heq⟩ := chunk4_fast input idx T out hlen hm
      rw [heq]
      unfold tail4
      simp only [lift, bind_ok]
      have hacc' : acc = ((⟨(core.convert.num.FromU32U16.from tbl.val[(core.num.U16.from_le_bytes a0).val]!).bv <<< 20⟩ : U32) |||
          ⟨(core.convert.num.FromU32U16.from tbl.val[(core.num.U16.from_le_bytes a1).val]!).bv <<< 8⟩) := by
        apply UScalar.eq_of_val_eq
        rw [hacc, accO4_val _ _ hp0 hp1, e0, e1]
        subst hT
        simp only [mor]
        ring
      rw [hacc']
    · simp only [hc, if_false]
  · have hlen' : ¬ (Slice.len input ≥ 4#usize) := by scalar_tac
    simp only [hlen', if_false]


/-! ## Array equality and unchanged copies -/

-- The verbatim baseline copy and the candidate share these unchanged helpers.
theorem ref_chunk8 : engine.general_purpose.decode_ref.decode_chunk_8 =
    engine.general_purpose.decode.decode_chunk_8 := rfl
theorem ref_chunk4 : engine.general_purpose.decode_ref.decode_chunk_4 =
    engine.general_purpose.decode.decode_chunk_4 := rfl
theorem ref_cql : engine.general_purpose.decode_ref.complete_quads_len =
    engine.general_purpose.decode.complete_quads_len := rfl

theorem allM_eqf (f : U8 × U8 → Result Bool) (hf : ∀ p, f p = ok (decide (p.1 = p.2)))
    (l : List (U8 × U8)) : List.allM f l = ok (l.all (fun p => decide (p.1 = p.2))) := by
  induction l with
  | nil => rfl
  | cons hd tl ih =>
    simp only [List.allM, hf, bind_tc_ok, List.all_cons]
    by_cases h : hd.1 = hd.2
    · simp [h, ih]
    · simp [h]; rfl

theorem zip_all_eq (l1 l2 : List U8) (hl : l1.length = l2.length)
    (h : (l1.zip l2).all (fun p => decide (p.1 = p.2)) = true) : l1 = l2 := by
  induction l1 generalizing l2 with
  | nil => cases l2 <;> simp_all
  | cons x xs ih =>
    cases l2 with
    | nil => simp at hl
    | cons y ys =>
      simp only [List.zip_cons_cons, List.all_cons, Bool.and_eq_true, decide_eq_true_eq] at h
      simp only [List.length_cons, Nat.add_right_cancel_iff] at hl
      rw [h.1, ih ys hl h.2]

theorem array_eq_ok (a b : Array U8 256#usize) :
    ∃ c, core.array.equality.PartialEqArray.eq core.cmp.PartialEqU8 a b = ok c ∧
      (c = true → a = b) := by
  simp only [core.array.equality.PartialEqArray.eq]
  have hl : a.length = b.length := by simp
  simp only [hl, if_true]
  rw [allM_eqf]
  · refine ⟨_, rfl, fun h => ?_⟩
    apply Aeneas.Std.Array.ext
    exact zip_all_eq a.val b.val (by simp) h
  · intro p
    simp [liftFun2, UScalar.eq_equiv]

open engine.general_purpose in
theorem c_in : decode.decode_complete_quads.UNROLLED_INPUT_CHUNK_SIZE =
    decode_ref.decode_complete_quads.UNROLLED_INPUT_CHUNK_SIZE := by
  unfold decode.decode_complete_quads.UNROLLED_INPUT_CHUNK_SIZE
    decode_ref.decode_complete_quads.UNROLLED_INPUT_CHUNK_SIZE; rfl
open engine.general_purpose in
theorem c_out : decode.decode_complete_quads.UNROLLED_OUTPUT_CHUNK_SIZE =
    decode_ref.decode_complete_quads.UNROLLED_OUTPUT_CHUNK_SIZE := by
  unfold decode.decode_complete_quads.UNROLLED_OUTPUT_CHUNK_SIZE
    decode_ref.decode_complete_quads.UNROLLED_OUTPUT_CHUNK_SIZE; rw [c_in]
open engine.general_purpose in
theorem in1 : decode.decode_complete_quads_loop1_loop0 = decode_ref.decode_complete_quads_loop0_loop0 := rfl
open engine.general_purpose in
theorem out1 : decode.decode_complete_quads_loop1 = decode_ref.decode_complete_quads_loop0 := by
  funext iter input s e T out os ul ue
  unfold decode.decode_complete_quads_loop1 decode_ref.decode_complete_quads_loop0
  congr 1
  funext st
  unfold decode.decode_complete_quads_loop1.body decode_ref.decode_complete_quads_loop0.body
  simp only [c_in, c_out, in1]
  rfl

/-! ## Loops of `decode_complete_quads` -/

open engine.general_purpose in
theorem quads_loop_pairs (iter : core.iter.adapters.enumerate.Enumerate (core.slice.iter.ChunksExact U8))
    (T : Array U8 256#usize) (out : Slice U8) (a b : Usize) (hT : T = STANDARD_DECODE_TABLE) :
    decode.decode_complete_quads_loop0_loop0 iter T out a b =
      decode_ref.decode_complete_quads_loop0_loop0 iter T out a b := by
  subst hT
  unfold decode.decode_complete_quads_loop0_loop0 decode_ref.decode_complete_quads_loop0_loop0
  congr 1
  funext st
  unfold decode.decode_complete_quads_loop0_loop0.body decode_ref.decode_complete_quads_loop0_loop0.body
  simp only [chunk4_pairs_eq _ _ _ _ rfl, ref_chunk4]

open engine.general_purpose in
theorem chunks_loop_pairs (iter : core.iter.adapters.enumerate.Enumerate (core.slice.iter.ChunksExact U8))
    (input : Slice U8) (s e : Usize) (T : Array U8 256#usize) (out : Slice U8) (os ul ue : Usize)
    (hT : T = STANDARD_DECODE_TABLE) :
    decode.decode_complete_quads_loop0 iter input s e T out os ul ue =
      decode_ref.decode_complete_quads_loop0 iter input s e T out os ul ue := by
  unfold decode.decode_complete_quads_loop0 decode_ref.decode_complete_quads_loop0
  congr 1
  funext st
  unfold decode.decode_complete_quads_loop0.body decode_ref.decode_complete_quads_loop0.body
  simp only [chunk8_pairs_eq _ _ _ _ hT, ref_chunk8, c_in, c_out, quads_loop_pairs _ _ _ _ _ hT]

open engine.general_purpose in
theorem out2 : decode.decode_complete_quads_loop2 = decode_ref.decode_complete_quads_loop0 := by
  funext iter input s e T out os ul ue
  unfold decode.decode_complete_quads_loop2 decode_ref.decode_complete_quads_loop0
  congr 1
  funext st
  unfold decode.decode_complete_quads_loop2.body decode_ref.decode_complete_quads_loop0.body
  simp only [c_in, c_out]
  rfl

open engine.general_purpose in
/-- The changed function: equal to the baseline copy for all arguments. -/
theorem decode_complete_quads_equiv (input : Slice U8) (s e : Usize) (T : Array U8 256#usize)
    (out : Slice U8) (os : Usize) :
    decode.decode_complete_quads input s e T out os =
      decode_ref.decode_complete_quads input s e T out os := by
  unfold decode.decode_complete_quads decode_ref.decode_complete_quads
  simp only [c_in]
  obtain ⟨c, hc, hcT⟩ := array_eq_ok T STANDARD_DECODE_TABLE
  by_cases hlt : s < e
  · simp only [hlt, if_true, hc, bind_ok, bind_tc_ok]
    cases c with
    | true =>
      simp only [if_true]
      simp only [chunks_loop_pairs _ _ _ _ _ _ _ _ _ (hcT rfl)]
    | false =>
      simp only [Bool.false_eq_true, if_false]
      simp only [out1]
  · simp only [hlt, if_false]
    simp only [out2]


/-! ## Engine-level and public API equivalence -/

open engine.general_purpose in
theorem internal_decode_equiv (g : GeneralPurpose) (r : ref_engine.RefGeneralPurpose)
    (hd : g.decode_table = r.decode_table) (hp : g.padding = r.padding) (hc : g.config = r.config)
    (input out : Slice U8) (est : decode.GeneralPurposeEstimate)
    (est' : decode_ref.GeneralPurposeEstimate) (he : est.rem = est'.rem) :
    engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode g input out est =
      engine.general_purpose.ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode r input out est' := by
  unfold engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode engine.general_purpose.ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode
  unfold decode.decode_helper decode_ref.decode_helper
  simp only [hd, hp, hc, he, ref_cql, decode_complete_quads_equiv]
  rfl


open engine.general_purpose in
theorem estimate_new_equiv (n : Usize) :
    decode_ref.GeneralPurposeEstimate.new n = (do
      let t ← decode.GeneralPurposeEstimate.new n
      ok { rem := t.rem, conservative_decoded_len := t.conservative_decoded_len }) := by
  unfold decode_ref.GeneralPurposeEstimate.new decode.GeneralPurposeEstimate.new
  simp only [Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok]

open engine.general_purpose in
/-- **Main theorem.** The public `Engine::decode_slice` on the candidate decode path equals the
public `Engine::decode_slice` on the baseline decode path, for every input and output slice and
every engine (with matching decode table, padding symbol and config), including the returned
byte count or error, the complete returned output buffer, and failure/divergence of the model. -/
theorem decode_slice_equiv (g : GeneralPurpose) (r : ref_engine.RefGeneralPurpose)
    (hd : g.decode_table = r.decode_table) (hp : g.padding = r.padding) (hc : g.config = r.config)
    (input output : Slice U8) :
    __veriop_decode_slice_opt g input output = __veriop_decode_slice_ref r input output := by
  unfold __veriop_decode_slice_opt __veriop_decode_slice_ref
  unfold engine.Engine.decode_slice.default engine.Engine.decode_slice.inner
  simp only [engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decoded_len_estimate,
    engine.general_purpose.ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decoded_len_estimate, estimate_new_equiv, Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok]
  congr 1
  funext s
  congr 1
  funext t
  rw [internal_decode_equiv g r hd hp hc s output t
    { rem := t.rem, conservative_decoded_len := t.conservative_decoded_len } rfl]
  rfl

end DecodeApiBase

#print axioms DecodeApiBase.pairs_spec
#print axioms DecodeApiBase.chunk8_pairs_eq
#print axioms DecodeApiBase.chunk4_pairs_eq
#print axioms DecodeApiBase.decode_complete_quads_equiv
#print axioms DecodeApiBase.internal_decode_equiv
#print axioms DecodeApiBase.decode_slice_equiv

open Aeneas Aeneas.Std Aeneas.Std.Result
open DecodeApiModelNeg

/-!
Public `Engine::decode` and `Engine::decode_vec` equivalence (final verification).

`DecodeApiModelNeg` is the extended extraction (`final-verification/extract-api.sh`) of the same
combined crate as `DecodeModel`, with the additional public entry points `__veriop_decode_{ref,opt}`
(`Engine::decode`) and `__veriop_decode_vec_{ref,opt}` (`Engine::decode_vec`).
`DecodeApiBase` is `proof/DecodeProof.lean` re-checked unchanged on this model (generated by renaming
the model namespace only), so `decode_complete_quads_equiv`, `internal_decode_equiv`,
`estimate_new_equiv` and `decode_slice_equiv` are available for it.

The default bodies of `Engine::decode` and `Engine::decode_vec` are shared, unchanged code: both
sides run the same extracted `engine.Engine.decode.inner` / `engine.Engine.decode_vec.inner`,
instantiated with the candidate resp. baseline engine. The only engine-specific calls in them are
`internal_decoded_len_estimate`, `DecodeEstimate::decoded_len_estimate` and `internal_decode`.
-/

namespace DecodeApiProof
open DecodeApiBase

open engine.general_purpose in
/-- The two `DecodeEstimate::decoded_len_estimate` impls agree on corresponding estimates. -/
theorem decoded_len_estimate_equiv (t : decode.GeneralPurposeEstimate) :
    decode_ref.GeneralPurposeEstimate.Insts.Base64EngineDecodeEstimate.decoded_len_estimate
        { rem := t.rem, conservative_decoded_len := t.conservative_decoded_len } =
      decode.GeneralPurposeEstimate.Insts.Base64EngineDecodeEstimate.decoded_len_estimate t := by
  rfl

open engine.general_purpose in
/-- **Public `Engine::decode`** (decode into a new `Vec`): the candidate equals the baseline for every
input and every engine with matching decode table, padding symbol and config. The equality is of
the complete `Result (core.result.Result (Vec U8) DecodeError)`: the returned `Vec` (contents and
length) or the exact `DecodeError`, and model failure (panic/overflow) or divergence. -/
theorem decode_equiv (g : GeneralPurpose) (r : ref_engine.RefGeneralPurpose)
    (hd : g.decode_table = r.decode_table) (hp : g.padding = r.padding) (hc : g.config = r.config)
    (input : Slice U8) :
    __veriop_decode_opt g input = __veriop_decode_ref r input := by
  unfold __veriop_decode_opt __veriop_decode_ref
  unfold engine.Engine.decode_to_vec.default engine.Engine.decode.inner
  simp only [engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decoded_len_estimate,
    engine.general_purpose.ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decoded_len_estimate,
    estimate_new_equiv, Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok]
  have hid : ∀ (inp out : Slice U8) (t : decode.GeneralPurposeEstimate),
      ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode
          r inp out { rem := t.rem, conservative_decoded_len := t.conservative_decoded_len } =
        GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode
          g inp out t := fun inp out t =>
    (internal_decode_equiv g r hd hp hc inp out t _ rfl).symm
  simp only [hid, decoded_len_estimate_equiv]
  rfl

open engine.general_purpose in
/-- **Public `Engine::decode_vec`** (decode appended to a caller-supplied `Vec`; the official
`decode_reuse_buf` benchmark): the candidate equals the baseline for every input, every initial
buffer and every engine with matching decode table, padding symbol and config. The equality is of
the complete `Result ((core.result.Result Unit DecodeError) × Vec U8)`: the returned `Ok(())` or exact
`DecodeError`, **and the entire returned buffer** (contents and length, also on the error path, where
the buffer stays resized and holds the partial writes), and model failure or divergence. -/
theorem decode_vec_equiv (g : GeneralPurpose) (r : ref_engine.RefGeneralPurpose)
    (hd : g.decode_table = r.decode_table) (hp : g.padding = r.padding) (hc : g.config = r.config)
    (input : Slice U8) (buffer : alloc.vec.Vec U8) :
    __veriop_decode_vec_opt g input buffer = __veriop_decode_vec_ref r input buffer := by
  unfold __veriop_decode_vec_opt __veriop_decode_vec_ref
  unfold engine.Engine.decode_vec.default engine.Engine.decode_vec.inner
  simp only [engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decoded_len_estimate,
    engine.general_purpose.ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decoded_len_estimate,
    estimate_new_equiv, Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok]
  have hid : ∀ (inp out : Slice U8) (t : decode.GeneralPurposeEstimate),
      ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode
          r inp out { rem := t.rem, conservative_decoded_len := t.conservative_decoded_len } =
        GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode
          g inp out t := fun inp out t =>
    (internal_decode_equiv g r hd hp hc inp out t _ rfl).symm
  simp only [hid, decoded_len_estimate_equiv]
  rfl

open engine.general_purpose in
/-- `Engine::decode` for **every** input type `T : AsRef<[u8]>` (the official benchmark passes a
`&String`): the default method instantiated with the candidate engine equals the one instantiated
with the baseline engine. (`AsRef::as_ref` is the caller's instance, applied identically on both sides.) -/
theorem decode_default_equiv (g : GeneralPurpose) (r : ref_engine.RefGeneralPurpose)
    (hd : g.decode_table = r.decode_table) (hp : g.padding = r.padding) (hc : g.config = r.config)
    {T : Type} (asRef : core.convert.AsRef T (Slice U8)) (input : T) :
    engine.Engine.decode_to_vec.default
        GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate asRef g input =
      engine.Engine.decode_to_vec.default
        ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate asRef r input := by
  unfold engine.Engine.decode_to_vec.default engine.Engine.decode.inner
  simp only [engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decoded_len_estimate,
    engine.general_purpose.ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decoded_len_estimate,
    estimate_new_equiv, Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok]
  have hid : ∀ (inp out : Slice U8) (t : decode.GeneralPurposeEstimate),
      ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode
          r inp out { rem := t.rem, conservative_decoded_len := t.conservative_decoded_len } =
        GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode
          g inp out t := fun inp out t =>
    (internal_decode_equiv g r hd hp hc inp out t _ rfl).symm
  simp only [hid, decoded_len_estimate_equiv]
  rfl

open engine.general_purpose in
/-- `Engine::decode_vec` for **every** input type `T : AsRef<[u8]>` and every initial buffer. -/
theorem decode_vec_default_equiv (g : GeneralPurpose) (r : ref_engine.RefGeneralPurpose)
    (hd : g.decode_table = r.decode_table) (hp : g.padding = r.padding) (hc : g.config = r.config)
    {T : Type} (asRef : core.convert.AsRef T (Slice U8)) (input : T) (buffer : alloc.vec.Vec U8) :
    engine.Engine.decode_vec.default
        GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate asRef g input buffer =
      engine.Engine.decode_vec.default
        ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate asRef r input buffer := by
  unfold engine.Engine.decode_vec.default engine.Engine.decode_vec.inner
  simp only [engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decoded_len_estimate,
    engine.general_purpose.ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decoded_len_estimate,
    estimate_new_equiv, Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok]
  have hid : ∀ (inp out : Slice U8) (t : decode.GeneralPurposeEstimate),
      ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode
          r inp out { rem := t.rem, conservative_decoded_len := t.conservative_decoded_len } =
        GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_decode
          g inp out t := fun inp out t =>
    (internal_decode_equiv g r hd hp hc inp out t _ rfl).symm
  simp only [hid, decoded_len_estimate_equiv]
  rfl

end DecodeApiProof

#print axioms DecodeApiProof.decode_equiv
#print axioms DecodeApiProof.decode_vec_equiv
#print axioms DecodeApiProof.decode_default_equiv
#print axioms DecodeApiProof.decode_vec_default_equiv
