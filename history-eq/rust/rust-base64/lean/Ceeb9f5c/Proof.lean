import Ceeb9f5c.EtsincOld.EtsincOld
import Ceeb9f5c.EtsincNew.EtsincNew
import Mathlib.Tactic.IntervalCases
open Aeneas Aeneas.Std Result WP

/-! eeb9f5c "Help the optimizer by making some intermediate slices. Hand unroll the main
encode loop 4x."  Unit: private `encode_to_slice` (raw), extraction tag `etsinc`
(charon `--start-from base64::encode_to_slice --include byteorder`, byteorder 1.5.0 as resolved
today; no external axioms in the model).

STATUS: PARTIAL (verdict UNKNOWN). This file contains only finished, sorry-free lemmas:
* `old_tl`/`old_tl2`, `new_tl`/`new_tl2`: the 3-byte remainder loops of old (direct
  `output[i] = ..` writes) and new (via `input_chunk`/`output_chunk` subslices) both compute
  `tri` (k emitted triples) when the output is long enough -- so old and new remainder loops
  agree under `oi + 4k <= output.len`.
* `tri_add`: composition of triple blocks.
* `tobe`: the byte decomposition used by the old `BigEndian::write_u64` of the OR-ed chunk.
* `old_read_u64_spec`: byteorder 1.5 `read_u64` = `u64::from_be_bytes` of the first 8 bytes.
Missing (see Attempt.lean): fast-loop body specs (old 6->8 with write_u64, new 24->32),
`emitWord = two triples`, the two fast-loop induction lemmas, and the top-level assembly.
-/

namespace Ceeb9f5cProof
set_option maxHeartbeats 4000000
set_option maxRecDepth 8192

def emitTriple (output : Slice U8) (pos : Nat) (table : Array U8 64#usize)
    (a b c : U8) : Slice U8 :=
  let output := output.setAtNat pos table.val[a.val >>> 2]!
  let output := output.setAtNat (pos + 1)
    table.val[(((a.val <<< 4) % 256) ||| (b.val >>> 4)) &&& 63]!
  let output := output.setAtNat (pos + 2)
    table.val[(((b.val <<< 2) % 256) ||| (c.val >>> 6)) &&& 63]!
  output.setAtNat (pos + 3) table.val[c.val &&& 63]!

theorem getD_eq (l : List U8) (n : Nat) (h : n < l.length) : l[n] = l[n]?.getD default := by
  simp [h]

macro "tbl" : tactic => `(tactic| (first | (apply getD_eq) | rfl))

theorem old_triple_cont {α : Type} (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi : Usize) (f : Slice U8 → Usize → Usize → Result α) (Q : α → Prop)
    (hin : ii.val + 3 ≤ input.length) (hout : oi.val + 4 ≤ output.length)
    (hf : ∀ s a b, s = emitTriple output oi.val table
        input.val[ii.val]! input.val[ii.val + 1]! input.val[ii.val + 2]! →
        a.val = ii.val + 3 → b.val = oi.val + 4 → f s a b ⦃ Q ⦄) :
    (do
    let i ← Slice.index_usize input ii
    let i1 ← i >>> 2#i32
    let i2 ← lift (UScalar.cast .Usize i1)
    let i3 ← Array.index_usize table i2
    let output1 ← Slice.update output oi i3
    let i4 ← i <<< 4#i32
    let i5 ← ii + 1#usize
    let i6 ← Slice.index_usize input i5
    let i7 ← i6 >>> 4#i32
    let i8 ← lift (i4 ||| i7)
    let i9 ← lift (i8 &&& 63#u8)
    let i10 ← lift (UScalar.cast .Usize i9)
    let i11 ← Array.index_usize table i10
    let i12 ← oi + 1#usize
    let output2 ← Slice.update output1 i12 i11
    let i13 ← Slice.index_usize input i5
    let i14 ← i13 <<< 2#i32
    let i15 ← ii + 2#usize
    let i16 ← Slice.index_usize input i15
    let i17 ← i16 >>> 6#i32
    let i18 ← lift (i14 ||| i17)
    let i19 ← lift (i18 &&& 63#u8)
    let i20 ← lift (UScalar.cast .Usize i19)
    let i21 ← Array.index_usize table i20
    let i22 ← oi + 2#usize
    let output3 ← Slice.update output2 i22 i21
    let i23 ← Slice.index_usize input i15
    let i24 ← lift (i23 &&& 63#u8)
    let i25 ← lift (UScalar.cast .Usize i24)
    let i26 ← Array.index_usize table i25
    let i27 ← oi + 3#usize
    let s ← Slice.update output3 i27 i26
    let input_index1 ← ii + 3#usize
    let output_index1 ← oi + 4#usize
    f s input_index1 output_index1) ⦃ Q ⦄ := by
  have hshr (a : U8) : a.val >>> 2 < 64 := by
    have ha : a.val < 256 := by scalar_tac
    simp only [Nat.shiftRight_eq_div_pow]
    omega
  have hmask (n : Nat) : n &&& 63 < 64 := Nat.lt_of_le_of_lt Nat.and_le_right (by decide)
  have hsize : U8.size = 256 := by norm_num [U8.size, U8.numBits]
  step*
  all_goals try scalar_tac
  simp only [s_post, output3_post, output2_post, output1_post, Slice.set, emitTriple, i27_post,
    i22_post, i12_post]
  have e3 : i3 = table.val[i.val >>> 2]! := by
    simp [i3_post, i2_post, i1_post] <;> apply getD_eq
  have e11 : i11 = table.val[(((i.val <<< 4) % 256) ||| (i6.val >>> 4)) &&& 63]! := by
    simp [i11_post, i10_post, i9_post, i8_post, i7_post, i4_post, hsize] <;> apply getD_eq
  have e21 : i21 = table.val[(((i6.val <<< 2) % 256) ||| (i16.val >>> 6)) &&& 63]! := by
    simp [i21_post, i20_post, i19_post, i18_post, i17_post, i14_post, i13_post, hsize, i6_post] <;> apply getD_eq
  have e26 : i26 = table.val[i16.val &&& 63]! := by
    simp [i26_post, i25_post, i24_post, i23_post, i16_post] <;> apply getD_eq
  have ei : i = input.val[ii.val]! := by simp [i_post] <;> apply getD_eq
  have ei6 : i6 = input.val[ii.val + 1]! := by simp [i6_post, i5_post] <;> apply getD_eq
  have ei16 : i16 = input.val[ii.val + 2]! := by simp [i16_post, i15_post] <;> apply getD_eq
  rw [e3, e11, e21, e26, ← ei, ← ei6, ← ei16]

@[simp] theorem emitTriple_length (output : Slice U8) (pos : Nat) (table : Array U8 64#usize)
    (a b c : U8) : (emitTriple output pos table a b c).length = output.length := by
  simp [emitTriple]

def tri (table : Array U8 64#usize) (input : Slice U8) :
    Slice U8 → Nat → Nat → Nat → Slice U8
  | out, _, _, 0 => out
  | out, i, o, k+1 => tri table input
      (emitTriple out o table input.val[i]! input.val[i+1]! input.val[i+2]!) (i+3) (o+4) k

@[simp] theorem tri_length (table : Array U8 64#usize) (input : Slice U8) :
    ∀ k (out : Slice U8) i o, (tri table input out i o k).length = out.length := by
  intro k; induction k with
  | zero => intros; rfl
  | succ k ih => intros; simp [tri, ih]

theorem tri_add (table : Array U8 64#usize) (input : Slice U8) :
    ∀ a b (out : Slice U8) i o, tri table input out i o (a + b) =
      tri table input (tri table input out i o a) (i + 3 * a) (o + 4 * a) b := by
  intro a; induction a with
  | zero => intros; simp [tri]
  | succ a ih =>
    intro b out i o
    rw [show a + 1 + b = (a + b) + 1 by omega]
    simp only [tri]
    rw [ih]
    have e1 : i + 3 * (a + 1) = i + 3 + 3 * a := by omega
    have e2 : o + 4 * (a + 1) = o + 4 + 4 * a := by omega
    rw [e1, e2]

theorem old_tl (table : Array U8 64#usize) (input : Slice U8) (sor : Usize)
    (hsor : sor.val ≤ input.length) : ∀ k (out : Slice U8) (ii oi : Usize),
    sor.val = ii.val + 3 * k → oi.val + 4 * k ≤ out.length →
    Beeb9f5cEtsincOld.encode_to_slice_loop1 input out table ii oi sor ⦃ r =>
      r.1 = tri table input out ii.val oi.val k ∧ r.2.val = oi.val + 4 * k ⦄ := by
  intro k
  induction k with
  | zero =>
    intro out ii oi h1 h2
    rw [Beeb9f5cEtsincOld.encode_to_slice_loop1]
    have : ¬ (ii < sor) := by scalar_tac
    simp [this, tri]
  | succ k ih =>
    intro out ii oi h1 h2
    rw [Beeb9f5cEtsincOld.encode_to_slice_loop1]
    have : ii < sor := by scalar_tac
    simp only [this, if_true]
    apply old_triple_cont table input out ii oi
      (fun s a b => Beeb9f5cEtsincOld.encode_to_slice_loop1 input s table a b sor) _
      (by scalar_tac) (by scalar_tac)
    intro s a b hs ha hb
    apply WP.spec_mono (ih s a b (by omega) (by rw [hs, emitTriple_length]; omega))
    intro r ⟨hr1, hr2⟩
    refine ⟨?_, by omega⟩
    rw [hr1, hs, ha, hb]
    rfl


theorem setSlice_setAt (output part : Slice U8) (pos index : Nat) (byte : U8)
    (hbound : pos + part.length ≤ output.length) (hindex : index < part.length) :
    output.setSlice! pos (part.setAtNat index byte).val =
      (output.setSlice! pos part.val).setAtNat (pos + index) byte := by
  apply (Slice.eq_iff _ _).mpr
  simp only [Slice.setSlice!_val, Slice.setAtNat, Slice.from_val]
  apply List.ext_getElem
  · simp
  · intro i hi hj
    by_cases heq : i = pos + index
    · subst i
      simp_lists [List.getElem_set]
    · by_cases hp : i < pos
      · simp_lists [List.getElem_set, List.getElem_setSlice!_prefix]
        simp [Ne.symm heq]
      · by_cases hm : i < pos + part.length
        · simp_lists [List.getElem_set]
          have hn : index ≠ i - pos := by omega
          simp [Ne.symm heq, hn]
        · simp_lists [List.getElem_set, List.getElem_setSlice!_suffix]
          simp [Ne.symm heq]

theorem setSlice_original (output part : Slice U8) (start stop : Nat)
    (hpart : part.val = output.val.slice start stop)
    (hstart : start ≤ stop) (hstop : stop ≤ output.length) :
    output.setSlice! start part.val = output := by
  apply (Slice.eq_iff _ _).mpr
  simp only [Slice.setSlice!_val, hpart]
  apply List.ext_getElem
  · simp
  · intro i hi hj
    by_cases hp : i < start
    · simp_lists [List.getElem_setSlice!_prefix]
    · by_cases hm : i < stop
      · simp_lists [List.getElem_slice]
        congr 1
        omega
      · simp_lists [List.getElem_setSlice!_suffix]

theorem new_triple_cont {α : Type} (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi : Usize) (f : Slice U8 → Usize → Usize → Result α) (Q : α → Prop)
    (hin : ii.val + 3 ≤ input.length) (hout : oi.val + 4 ≤ output.length)
    (hf : ∀ s a b, s = emitTriple output oi.val table
        input.val[ii.val]! input.val[ii.val + 1]! input.val[ii.val + 2]! →
        a.val = ii.val + 3 → b.val = oi.val + 4 → f s a b ⦃ Q ⦄) :
    (do
    let i ← ii + 3#usize
    let input_chunk ←
      core.slice.index.Slice.index (core.slice.index.SliceIndexRangeUsizeSlice
        Std.U8) input { start := ii, «end» := i }
    let i1 ← oi + 4#usize
    let (output_chunk, index_mut_back) ←
      core.slice.index.Slice.index_mut
        (core.slice.index.SliceIndexRangeUsizeSlice Std.U8) output
        { start := oi, «end» := i1 }
    let i2 ← Slice.index_usize input_chunk 0#usize
    let i3 ← i2 >>> 2#i32
    let i4 ← lift (UScalar.cast .Usize i3)
    let i5 ← Array.index_usize table i4
    let output_chunk1 ← Slice.update output_chunk 0#usize i5
    let i6 ← i2 <<< 4#i32
    let i7 ← Slice.index_usize input_chunk 1#usize
    let i8 ← i7 >>> 4#i32
    let i9 ← lift (i6 ||| i8)
    let i10 ← lift (i9 &&& 63#u8)
    let i11 ← lift (UScalar.cast .Usize i10)
    let i12 ← Array.index_usize table i11
    let output_chunk2 ← Slice.update output_chunk1 1#usize i12
    let i13 ← i7 <<< 2#i32
    let i14 ← Slice.index_usize input_chunk 2#usize
    let i15 ← i14 >>> 6#i32
    let i16 ← lift (i13 ||| i15)
    let i17 ← lift (i16 &&& 63#u8)
    let i18 ← lift (UScalar.cast .Usize i17)
    let i19 ← Array.index_usize table i18
    let output_chunk3 ← Slice.update output_chunk2 2#usize i19
    let i20 ← lift (i14 &&& 63#u8)
    let i21 ← lift (UScalar.cast .Usize i20)
    let i22 ← Array.index_usize table i21
    let s ← Slice.update output_chunk3 3#usize i22
    let s1 := index_mut_back s
    f s1 i i1) ⦃ Q ⦄ := by
  have hshr (a : U8) : a.val >>> 2 < 64 := by
    have ha : a.val < 256 := by scalar_tac
    simp only [Nat.shiftRight_eq_div_pow]
    omega
  have hmask (n : Nat) : n &&& 63 < 64 := Nat.lt_of_le_of_lt Nat.and_le_right (by decide)
  have hsize : U8.size = 256 := by norm_num [U8.size, U8.numBits]
  step*
  all_goals try scalar_tac
  have hinputlen' : input_chunk.length = 3 := by scalar_tac
  have hchunklen' : output_chunk.length = 4 := by scalar_tac
  simp only [output_chunk_post2, s_post, output_chunk3_post, output_chunk2_post,
    output_chunk1_post, Slice.set, UScalar.ofNatCore_val_eq]
  simp (disch := (simp only [Slice.setAtNat_length, hchunklen']; omega)) only [setSlice_setAt]
  rw [setSlice_original output output_chunk oi.val i1.val output_chunk_post
    (by scalar_tac) (by scalar_tac)]
  have b0 : i2 = input.val[ii.val]! := by
    simp [i2_post, input_chunk_post] <;> simp_lists <;> (try apply getD_eq) <;> scalar_tac
  have b1 : i7 = input.val[ii.val + 1]! := by
    simp [i7_post, input_chunk_post] <;> simp_lists <;> (try apply getD_eq) <;> scalar_tac
  have b2 : i14 = input.val[ii.val + 2]! := by
    simp [i14_post, input_chunk_post] <;> simp_lists <;> (try apply getD_eq) <;> scalar_tac
  have e3 : i5 = table.val[i2.val >>> 2]! := by
    simp [i5_post, i4_post, i3_post] <;> apply getD_eq
  have e11 : i12 = table.val[(((i2.val <<< 4) % 256) ||| (i7.val >>> 4)) &&& 63]! := by
    simp [i12_post, i11_post, i10_post, i9_post, i8_post, i6_post, hsize] <;> apply getD_eq
  have e21 : i19 = table.val[(((i7.val <<< 2) % 256) ||| (i14.val >>> 6)) &&& 63]! := by
    simp [i19_post, i18_post, i17_post, i16_post, i15_post, i13_post, hsize] <;> apply getD_eq
  have e26 : i22 = table.val[i14.val &&& 63]! := by
    simp [i22_post, i21_post, i20_post] <;> apply getD_eq
  rw [e3, e11, e21, e26, ← b0, ← b1, ← b2]
  simp only [emitTriple, Nat.add_zero]

theorem new_tl (table : Array U8 64#usize) (input : Slice U8) (sor : Usize)
    (hsor : sor.val ≤ input.length) : ∀ k (out : Slice U8) (ii oi : Usize),
    sor.val = ii.val + 3 * k → oi.val + 4 * k ≤ out.length →
    Beeb9f5cEtsincNew.encode_to_slice_loop1 input out table ii oi sor ⦃ r =>
      r.1 = tri table input out ii.val oi.val k ∧ r.2.val = oi.val + 4 * k ⦄ := by
  intro k
  induction k with
  | zero =>
    intro out ii oi h1 h2
    rw [Beeb9f5cEtsincNew.encode_to_slice_loop1]
    have : ¬ (ii < sor) := by scalar_tac
    simp [this, tri]
  | succ k ih =>
    intro out ii oi h1 h2
    rw [Beeb9f5cEtsincNew.encode_to_slice_loop1]
    have : ii < sor := by scalar_tac
    simp only [this, if_true]
    apply new_triple_cont table input out ii oi
      (fun s a b => Beeb9f5cEtsincNew.encode_to_slice_loop1 input s table a b sor) _
      (by scalar_tac) (by scalar_tac)
    intro s a b hs ha hb
    apply WP.spec_mono (ih s a b (by omega) (by rw [hs, emitTriple_length]; omega))
    intro r ⟨hr1, hr2⟩
    refine ⟨?_, by omega⟩
    rw [hr1, hs, ha, hb]
    rfl


theorem old_tl2 (table : Array U8 64#usize) (input : Slice U8) (sor : Usize)
    (hsor : sor.val ≤ input.length) : ∀ k (out : Slice U8) (ii oi : Usize),
    sor.val = ii.val + 3 * k → oi.val + 4 * k ≤ out.length →
    Beeb9f5cEtsincOld.encode_to_slice_loop2 input out table ii oi sor ⦃ r =>
      r.1 = tri table input out ii.val oi.val k ∧ r.2.val = oi.val + 4 * k ⦄ := by
  intro k
  induction k with
  | zero =>
    intro out ii oi h1 h2
    rw [Beeb9f5cEtsincOld.encode_to_slice_loop2]
    have : ¬ (ii < sor) := by scalar_tac
    simp [this, tri]
  | succ k ih =>
    intro out ii oi h1 h2
    rw [Beeb9f5cEtsincOld.encode_to_slice_loop2]
    have : ii < sor := by scalar_tac
    simp only [this, if_true]
    apply old_triple_cont table input out ii oi
      (fun s a b => Beeb9f5cEtsincOld.encode_to_slice_loop2 input s table a b sor) _
      (by scalar_tac) (by scalar_tac)
    intro s a b hs ha hb
    apply WP.spec_mono (ih s a b (by omega) (by rw [hs, emitTriple_length]; omega))
    intro r ⟨hr1, hr2⟩
    refine ⟨?_, by omega⟩
    rw [hr1, hs, ha, hb]
    rfl


theorem new_tl2 (table : Array U8 64#usize) (input : Slice U8) (sor : Usize)
    (hsor : sor.val ≤ input.length) : ∀ k (out : Slice U8) (ii oi : Usize),
    sor.val = ii.val + 3 * k → oi.val + 4 * k ≤ out.length →
    Beeb9f5cEtsincNew.encode_to_slice_loop2 input out table ii oi sor ⦃ r =>
      r.1 = tri table input out ii.val oi.val k ∧ r.2.val = oi.val + 4 * k ⦄ := by
  intro k
  induction k with
  | zero =>
    intro out ii oi h1 h2
    rw [Beeb9f5cEtsincNew.encode_to_slice_loop2]
    have : ¬ (ii < sor) := by scalar_tac
    simp [this, tri]
  | succ k ih =>
    intro out ii oi h1 h2
    rw [Beeb9f5cEtsincNew.encode_to_slice_loop2]
    have : ii < sor := by scalar_tac
    simp only [this, if_true]
    apply new_triple_cont table input out ii oi
      (fun s a b => Beeb9f5cEtsincNew.encode_to_slice_loop2 input s table a b sor) _
      (by scalar_tac) (by scalar_tac)
    intro s a b hs ha hb
    apply WP.spec_mono (ih s a b (by omega) (by rw [hs, emitTriple_length]; omega))
    intro r ⟨hr1, hr2⟩
    refine ⟨?_, by omega⟩
    rw [hr1, hs, ha, hb]
    rfl


theorem tobe (a b c d e f g h : BitVec 8) :
    ((a.setWidth 64 <<< 56) ||| (b.setWidth 64 <<< 48) ||| (c.setWidth 64 <<< 40) |||
      (d.setWidth 64 <<< 32) ||| (e.setWidth 64 <<< 24) ||| (f.setWidth 64 <<< 16) |||
      (g.setWidth 64 <<< 8) ||| h.setWidth 64).toBEBytes = [a, b, c, d, e, f, g, h] := by
  unfold BitVec.toBEBytes
  rw [BitVec.toLEBytes, if_pos (by decide)]
  rw [BitVec.toLEBytes, if_pos (by decide)]
  rw [BitVec.toLEBytes, if_pos (by decide)]
  rw [BitVec.toLEBytes, if_pos (by decide)]
  rw [BitVec.toLEBytes, if_pos (by decide)]
  rw [BitVec.toLEBytes, if_pos (by decide)]
  rw [BitVec.toLEBytes, if_pos (by decide)]
  rw [BitVec.toLEBytes, if_pos (by decide)]
  rw [BitVec.toLEBytes, if_neg (by decide)]
  simp only [List.reverse_cons, List.reverse_nil, List.nil_append, List.cons_append,
    List.cons.injEq, and_true]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  all_goals
    apply BitVec.eq_of_getLsbD_eq
    intro i hi
    interval_cases i <;> simp

def wordAt (input : Slice U8) (pos : Nat) (h : pos + 8 ≤ input.length) : U64 :=
  core.num.U64.from_be_bytes
    (Array.make 8#usize ((input.val.drop pos).take 8) (by
      have hh : pos + 8 ≤ input.val.length := h
      simp only [List.length_take, List.length_drop, UScalar.ofNatCore_val_eq]
      omega))

@[step] theorem old_read_u64_spec (buf : Slice U8) (hbound : 8 ≤ buf.length) :
    Beeb9f5cEtsincOld.byteorder.BigEndian.Insts.ByteorderByteOrder.read_u64 buf ⦃ word =>
      word = core.num.U64.from_be_bytes
        (Array.make 8#usize (buf.val.take 8) (by simp; omega)) ⦄ := by
  unfold Beeb9f5cEtsincOld.byteorder.BigEndian.Insts.ByteorderByteOrder.read_u64
  step as ⟨part, hp, hl⟩
  step as ⟨result, hr⟩
  cases result with
  | Err e => simp_all
  | Ok bytes =>
    simp only [core.result.Result.unwrap, Aeneas.Std.bind_ok, WP.spec_ok]
    congr 1
    apply (Array.eq_iff _ _).mpr
    simp_all [List.slice]


#print axioms old_triple_cont
#print axioms new_triple_cont
#print axioms tri_add
#print axioms old_tl
#print axioms old_tl2
#print axioms new_tl
#print axioms new_tl2
#print axioms tobe
#print axioms old_read_u64_spec

end Ceeb9f5cProof
