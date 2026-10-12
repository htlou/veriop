import Ceeb9f5c.EtsincOld.EtsincOld
import Ceeb9f5c.EtsincNew.EtsincNew
import Mathlib.Tactic.IntervalCases
open Aeneas Aeneas.Std Result WP
-- NOT EVIDENCE: unfinished attempt (contains sorry). Next step was old fast-loop body spec.
namespace Ceeb9f5cAttempt
set_option maxHeartbeats 4000000
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

theorem old_fast_cont {α : Type} (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi : Usize) (f : Slice U8 → Usize → Usize → Result α) (Q : α → Prop)
    (hin : ii.val + 8 ≤ input.length) (hout : oi.val + 8 ≤ output.length)
    (hf : ∀ s a b, s = output →
        a.val = ii.val + 6 → b.val = oi.val + 8 → f s a b ⦃ Q ⦄) :
    (do
    let i ← ii + 8#usize
    let s ←
      core.slice.index.Slice.index (core.slice.index.SliceIndexRangeUsizeSlice
        Std.U8) input { start := ii, «end» := i }
    let input_chunk ← Beeb9f5cEtsincOld.byteorder.BigEndian.Insts.ByteorderByteOrder.read_u64 s
    let i1 ← input_chunk >>> 58#i32
    let i2 ← lift (i1 &&& 63#u64)
    let i3 ← lift (UScalar.cast .Usize i2)
    let i4 ← Array.index_usize table i3
    let i5 ← lift (UScalar.cast .U64 i4)
    let chunk ← i5 <<< 56#i32
    let i6 ← input_chunk >>> 52#i32
    let i7 ← lift (i6 &&& 63#u64)
    let i8 ← lift (UScalar.cast .Usize i7)
    let i9 ← Array.index_usize table i8
    let i10 ← lift (UScalar.cast .U64 i9)
    let i11 ← i10 <<< 48#i32
    let chunk1 ← lift (chunk ||| i11)
    let i12 ← input_chunk >>> 46#i32
    let i13 ← lift (i12 &&& 63#u64)
    let i14 ← lift (UScalar.cast .Usize i13)
    let i15 ← Array.index_usize table i14
    let i16 ← lift (UScalar.cast .U64 i15)
    let i17 ← i16 <<< 40#i32
    let chunk2 ← lift (chunk1 ||| i17)
    let i18 ← input_chunk >>> 40#i32
    let i19 ← lift (i18 &&& 63#u64)
    let i20 ← lift (UScalar.cast .Usize i19)
    let i21 ← Array.index_usize table i20
    let i22 ← lift (UScalar.cast .U64 i21)
    let i23 ← i22 <<< 32#i32
    let chunk3 ← lift (chunk2 ||| i23)
    let i24 ← input_chunk >>> 34#i32
    let i25 ← lift (i24 &&& 63#u64)
    let i26 ← lift (UScalar.cast .Usize i25)
    let i27 ← Array.index_usize table i26
    let i28 ← lift (UScalar.cast .U64 i27)
    let i29 ← i28 <<< 24#i32
    let chunk4 ← lift (chunk3 ||| i29)
    let i30 ← input_chunk >>> 28#i32
    let i31 ← lift (i30 &&& 63#u64)
    let i32 ← lift (UScalar.cast .Usize i31)
    let i33 ← Array.index_usize table i32
    let i34 ← lift (UScalar.cast .U64 i33)
    let i35 ← i34 <<< 16#i32
    let chunk5 ← lift (chunk4 ||| i35)
    let i36 ← input_chunk >>> 22#i32
    let i37 ← lift (i36 &&& 63#u64)
    let i38 ← lift (UScalar.cast .Usize i37)
    let i39 ← Array.index_usize table i38
    let i40 ← lift (UScalar.cast .U64 i39)
    let i41 ← i40 <<< 8#i32
    let chunk6 ← lift (chunk5 ||| i41)
    let i42 ← input_chunk >>> 16#i32
    let i43 ← lift (i42 &&& 63#u64)
    let i44 ← lift (UScalar.cast .Usize i43)
    let i45 ← Array.index_usize table i44
    let i46 ← lift (UScalar.cast .U64 i45)
    let chunk7 ← lift (chunk6 ||| i46)
    let i47 ← oi + 8#usize
    let (s1, index_mut_back) ←
      core.slice.index.Slice.index_mut
        (core.slice.index.SliceIndexRangeUsizeSlice Std.U8) output
        { start := oi, «end» := i47 }
    let s2 ← Beeb9f5cEtsincOld.byteorder.BigEndian.Insts.ByteorderByteOrder.write_u64 s1 chunk7
    let ii1 ← ii + 6#usize
    let output1 := index_mut_back s2
    f output1 ii1 i47) ⦃ Q ⦄ := by
  have hmask (n : Nat) : n &&& 63 < 64 := Nat.lt_of_le_of_lt Nat.and_le_right (by decide)
  step*
  all_goals try scalar_tac
  trace_state
  sorry
end Ceeb9f5cAttempt
