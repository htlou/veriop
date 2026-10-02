import Base64FastStepProof
import TailPairProof
import Base64TailOpt.Base64TailOpt

open Aeneas Aeneas.Std Aeneas.Std.Result
open Base64TailOpt
namespace Base64TailProof
set_option maxHeartbeats 2000000
set_option maxRecDepth 8192

private def scalar_chunk (encode_table : Array U8 64#usize)
    (input_chunk output_chunk : Slice U8) : Result (Slice U8) := do
  let i2 ← Slice.index_usize input_chunk 0#usize
  let i3 ← i2 >>> 2#i32
  let i4 ← lift (UScalar.cast .Usize i3)
  let i5 ← Array.index_usize encode_table i4
  let output_chunk2 ← Slice.update output_chunk 0#usize i5
  let i6 ← i2 <<< 4#i32
  let i7 ← Slice.index_usize input_chunk 1#usize
  let i8 ← i7 >>> 4#i32
  let i9 ← lift (i6 ||| i8)
  let i10 ←
    lift (i9 &&&
      engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8)
  let i11 ← lift (UScalar.cast .Usize i10)
  let i12 ← Array.index_usize encode_table i11
  let output_chunk3 ← Slice.update output_chunk2 1#usize i12
  let i13 ← i7 <<< 2#i32
  let i14 ← Slice.index_usize input_chunk 2#usize
  let i15 ← i14 >>> 6#i32
  let i16 ← lift (i13 ||| i15)
  let i17 ←
    lift (i16 &&&
      engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8)
  let i18 ← lift (UScalar.cast .Usize i17)
  let i19 ← Array.index_usize encode_table i18
  let output_chunk4 ← Slice.update output_chunk3 2#usize i19
  let i20 ←
    lift (i14 &&&
      engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8)
  let i21 ← lift (UScalar.cast .Usize i20)
  let i22 ← Array.index_usize encode_table i21
  Slice.update output_chunk4 3#usize i22

private def pair_chunk (input_chunk output_chunk : Slice U8) : Result (Slice U8) := do
  let i2 ← Slice.index_usize input_chunk 0#usize
  let i3 ← lift (UScalar.cast .Usize i2)
  let i4 ← i3 <<< 4#i32
  let i5 ← Slice.index_usize input_chunk 1#usize
  let i6 ← lift (UScalar.cast .Usize i5)
  let i7 ← i6 >>> 4#i32
  let first ← lift (i4 ||| i7)
  let i8 ← lift (UScalar.cast .Usize i5)
  let i9 ← lift (i8 &&& 15#usize)
  let i10 ← i9 <<< 8#i32
  let i11 ← Slice.index_usize input_chunk 2#usize
  let i12 ← lift (UScalar.cast .Usize i11)
  let second ← lift (i10 ||| i12)
  let (s, index_mut_back1) ←
    core.slice.index.Slice.index_mut
      (core.slice.index.SliceIndexRangeUsizeSlice Std.U8) output_chunk
      { start := 0#usize, «end» := 2#usize }
  let a ← engine.general_purpose.encode_scalar_tail.PAIRS
  let a1 ← Array.index_usize a first
  let s1 ← lift (Array.to_slice a1)
  let s2 ← core.slice.Slice.copy_from_slice core.marker.CopyU8 s s1
  let output_chunk2 := index_mut_back1 s2
  let (s3, index_mut_back2) ←
    core.slice.index.Slice.index_mut
      (core.slice.index.SliceIndexRangeUsizeSlice Std.U8) output_chunk2
      { start := 2#usize, «end» := 4#usize }
  let a2 ← Array.index_usize a second
  let s4 ← lift (Array.to_slice a2)
  let s5 ← core.slice.Slice.copy_from_slice core.marker.CopyU8 s3 s4
  ok (index_mut_back2 s5)

private theorem scalar_chunk_spec (table : Array U8 64#usize)
    (input output : Slice U8) (hi : input.length = 3) (ho : output.length = 4) :
    scalar_chunk table input output ⦃ result =>
      let a := input.val[0]!
      let b := input.val[1]!
      let c := input.val[2]!
      result = (((output.setAtNat 0 table.val[a.val >>> 2]!).setAtNat 1
        table.val[(((a.val <<< 4) % 256) ||| (b.val >>> 4)) &&& 63]!).setAtNat 2
        table.val[(((b.val <<< 2) % 256) ||| (c.val >>> 6)) &&& 63]!).setAtNat 3
        table.val[c.val &&& 63]! ⦄ := by
  have hshr (a : U8) : a.val >>> 2 < 64 := by
    have ha : a.val < 256 := by scalar_tac
    simp only [Nat.shiftRight_eq_div_pow]
    omega
  have hmask (n : Nat) : n &&& 63 < 64 := Nat.lt_of_le_of_lt Nat.and_le_right (by decide)
  have hsize : U8.size = 256 := by norm_num [U8.size, U8.numBits]
  unfold scalar_chunk
  step*
  all_goals simp_all [engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8, Slice.set]

#print axioms scalar_chunk_spec

private theorem pairs_eq : engine.general_purpose.encode_scalar_tail.PAIRS =
    Base64StepOpt.engine.general_purpose.encode_scalar_tail.PAIRS := by
  with_unfolding_all rfl

private theorem pair_chunk_spec (input output : Slice U8)
    (hi : input.length = 3) (ho : output.length = 4) :
    pair_chunk input output ⦃ result =>
      let first := (input.val[0]!.val <<< 4) ||| (input.val[1]!.val >>> 4)
      let second := ((input.val[1]!.val &&& 15) <<< 8) ||| input.val[2]!.val
      let table := engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET
      result = (output.setSlice! 0 [table.val[first >>> 6]!, table.val[first &&& 63]!]).setSlice! 2
        [table.val[second >>> 6]!, table.val[second &&& 63]!] ⦄ := by
  obtain ⟨pairs, hpairs, hrows⟩ := WP.spec_imp_exists Base64FastStep.pairs_initialized
  with_unfolding_all change (∀ j, j < 4096 → pairs.val[j]! = Array.make 2#usize
    [engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET.val[j >>> 6]!,
     engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET.val[j &&& 63]!]) at hrows
  have hsize : 4096 ≤ Usize.size := by
    cases System.Platform.numBits_eq <;> simp_all [Usize.size, Usize.numBits]
  have hshl (a : U8) : a.val <<< 4 < 4096 := by
    have ha : a.val < 256 := by scalar_tac
    simp only [Nat.shiftLeft_eq]
    omega
  have hmask (n : Nat) : (n &&& 15) <<< 8 < 4096 := by
    have hm : n &&& 15 ≤ 15 := Nat.and_le_right
    simp only [Nat.shiftLeft_eq]
    omega
  have hbits : 8 < System.Platform.numBits := by cases System.Platform.numBits_eq <;> omega
  have hf (a b : U8) : (a.val <<< 4) ||| (b.val >>> 4) < 4096 :=
    (tail_pair_nat_indices a b 0#u8).1
  have hs (b c : U8) : ((b.val &&& 15) <<< 8) ||| c.val < 4096 :=
    (tail_pair_nat_indices 0#u8 b c).2.1
  unfold pair_chunk
  rw [pairs_eq, hpairs]
  step*
  all_goals try simp_all [Nat.mod_eq_of_lt (Nat.lt_of_lt_of_le (hshl _) hsize),
    Nat.mod_eq_of_lt (Nat.lt_of_lt_of_le (hmask _) hsize)]

#print axioms pair_chunk_spec

private theorem pair_set_eq (output : Slice U8) (pos : Nat) (a b : U8)
    (hbound : pos + 2 ≤ output.length) :
    output.setSlice! pos [a, b] = (output.setAtNat pos a).setAtNat (pos + 1) b := by
  apply (Slice.eq_iff _ _).mpr
  simp only [Slice.setSlice!_val, Slice.setAtNat, Slice.from_val]
  exact pair_set_slice_eq output.val pos a b hbound

private theorem chunk_equiv (input output : Slice U8)
    (hi : input.length = 3) (ho : output.length = 4) :
    scalar_chunk engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET input output =
    pair_chunk input output := by
  obtain ⟨scalar, hscalar, hs⟩ := WP.spec_imp_exists
    (scalar_chunk_spec engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET input output hi ho)
  obtain ⟨paired, hpaired, hp⟩ := WP.spec_imp_exists (pair_chunk_spec input output hi ho)
  obtain ⟨_, _, h0, h1, h2, h3⟩ := tail_pair_nat_indices input.val[0]! input.val[1]! input.val[2]!
  dsimp only at hs hp
  rw [hscalar, hpaired, hs, hp, h0, h1, h2, h3]
  simp (disch := simp [ho]) only [pair_set_eq]

#print axioms chunk_equiv

private theorem add_bind_congr {α : Type} (start count : Usize)
    (f g : Usize → Result α)
    (h : ∀ stop, stop.val = start.val + count.val → f stop = g stop) :
    Aeneas.Std.bind (start + count) f = Aeneas.Std.bind (start + count) g := by
  change Aeneas.Std.bind (UScalar.add start count) f = Aeneas.Std.bind (UScalar.add start count) g
  simp only [UScalar.add, UScalar.tryMk, UScalar.tryMkOpt]
  split
  · simp only [Result.ofOption, Aeneas.Std.bind_ok]
    apply h
    rfl
  · simp only [Result.ofOption, Aeneas.Std.bind_fail]

private theorem range_bind_congr {α : Type} (input : Slice U8) (start stop : Usize)
    (f g : Slice U8 → Result α)
    (h : ∀ part, part.length = stop.val - start.val → f part = g part) :
    Aeneas.Std.bind (core.slice.index.Slice.index (core.slice.index.SliceIndexRangeUsizeSlice U8)
      input { start := start, «end» := stop }) f =
    Aeneas.Std.bind (core.slice.index.Slice.index (core.slice.index.SliceIndexRangeUsizeSlice U8)
      input { start := start, «end» := stop }) g := by
  simp only [Slice.index_SliceIndexRangeUsizeSliceInst, core.slice.index.SliceIndexRangeUsizeSlice.index]
  split
  · simp only [Aeneas.Std.bind_ok]
    apply h
    simp only [Slice.length, Slice.from_val]
    simp_lists
    scalar_tac
  · simp only [Aeneas.Std.bind_fail]

private theorem range_mut_bind_congr {α : Type} (output : Slice U8) (start stop : Usize)
    (f g : (Slice U8 × (Slice U8 → Slice U8)) → Result α)
    (h : ∀ part back, part.length = stop.val - start.val → f (part, back) = g (part, back)) :
    Aeneas.Std.bind (core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8)
      output { start := start, «end» := stop }) f =
    Aeneas.Std.bind (core.slice.index.Slice.index_mut (core.slice.index.SliceIndexRangeUsizeSlice U8)
      output { start := start, «end» := stop }) g := by
  simp only [Slice.index_mut_SliceIndexRangeUsizeSliceInst,
    core.slice.index.SliceIndexRangeUsizeSlice.index_mut]
  split
  · simp only [Aeneas.Std.bind_ok]
    apply h
    simp only [Slice.length, Slice.from_val]
    simp_lists
    scalar_tac
  · simp only [Aeneas.Std.bind_fail]

theorem tail_body_equiv (input output : Slice U8) (ii oi stop : Usize) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1.body
      engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET input stop output ii oi =
    engine.general_purpose.encode_scalar_tail_loop1.body
      engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET input true stop output ii oi := by
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1.body
    engine.general_purpose.encode_scalar_tail_loop1.body
  split
  · simp only [ite_true]
    apply add_bind_congr
    intro in_stop his
    apply range_bind_congr
    intro input_chunk hic
    apply add_bind_congr
    intro out_stop hos
    apply range_mut_bind_congr
    intro output_chunk back hoc
    simp only [Aeneas.Std.uncurry_apply_pair]
    have hi : input_chunk.length = 3 := by scalar_tac
    have ho : output_chunk.length = 4 := by scalar_tac
    have hc := chunk_equiv input_chunk output_chunk hi ho
    have hb := congrArg (fun m => Aeneas.Std.bind m
      (fun chunk => ok (ControlFlow.cont (β := Slice U8 × Usize) (back chunk, in_stop, out_stop)))) hc
    simpa only [scalar_chunk, pair_chunk, Aeneas.Std.bind_assoc,
      Base64StepRef.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8,
      engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8] using hb
  · rfl

#print axioms tail_body_equiv

theorem tail_body_equiv_if (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi stop : Usize) (flag : Bool)
    (hflag : flag = true → table = engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1.body table input stop output ii oi =
    engine.general_purpose.encode_scalar_tail_loop1.body table input flag stop output ii oi := by
  cases flag with
  | true => rw [hflag rfl]; exact tail_body_equiv input output ii oi stop
  | false =>
    simp only [Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1.body,
      engine.general_purpose.encode_scalar_tail_loop1.body, Bool.false_eq_true, ite_false,
      Aeneas.Std.bind_assoc, Base64StepRef.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8,
      engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8]

theorem tail_loop1_equiv (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi stop : Usize) (flag : Bool)
    (hflag : flag = true → table = engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input output ii oi stop =
    engine.general_purpose.encode_scalar_tail_loop1 table input output ii oi flag stop := by
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1
    engine.general_purpose.encode_scalar_tail_loop1
  congr 1
  funext ⟨output, ii, oi⟩
  exact tail_body_equiv_if table input output ii oi stop flag hflag

theorem tail_loop2_equiv (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi stop : Usize) (flag : Bool)
    (hflag : flag = true → table = engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop2 table input output ii oi stop =
    engine.general_purpose.encode_scalar_tail_loop2 table input output ii oi flag stop := by
  have hr : Base64StepRef.engine.general_purpose.encode_scalar_tail_loop2 =
      Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 := by with_unfolding_all rfl
  have ho : engine.general_purpose.encode_scalar_tail_loop2 =
      engine.general_purpose.encode_scalar_tail_loop1 := by with_unfolding_all rfl
  rw [hr, ho]
  exact tail_loop1_equiv table input output ii oi stop flag hflag

private theorem fast_loop_unchanged : engine.general_purpose.encode_scalar_tail_loop0 =
    Base64StepOpt.engine.general_purpose.encode_scalar_tail_loop0 := by
  with_unfolding_all rfl

theorem alphabet_comparison_spec (table : Array U8 64#usize) :
    core.array.equality.PartialEqArray.eq core.cmp.PartialEqU8 table
      engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET
      ⦃ b => b ↔ table = engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET ⦄ := by
  have hne : ∀ (x y : U8), core.cmp.PartialEqU8.ne x y ⦃ b => b ↔ x ≠ y ⦄ := by
    intro x y
    simp [liftFun2, core.cmp.impls.PartialEqU8.ne]
  have hs := core.slice.cmp.PartialEqSlice.eq_homo_spec core.cmp.PartialEqU8
    table.to_slice engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET.to_slice hne
  have heq : core.array.equality.PartialEqArray.eq core.cmp.PartialEqU8 table
      engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET =
      core.slice.cmp.PartialEqSlice.eq core.cmp.PartialEqU8 table.to_slice
        engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET.to_slice := by
    simp only [core.array.equality.PartialEqArray.eq, core.slice.cmp.PartialEqSlice.eq,
      Array.length, Array.property, Array.length_to_slice, Array.val_to_slice, ite_true]
  rw [heq]
  apply WP.spec_mono hs
  intro b hb
  simpa only [Slice.eq_iff, Array.val_to_slice, ← Array.eq_iff] using hb

theorem scalar_tail_equiv (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi : Usize) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail table input output ii oi =
    engine.general_purpose.encode_scalar_tail table input output ii oi := by
  obtain ⟨flag, hdispatch, hflag⟩ := WP.spec_imp_exists (alphabet_comparison_spec table)
  have hflag' : flag = true → table = engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET :=
    hflag.mp
  have ht1 := fun output ii oi stop => tail_loop1_equiv table input output ii oi stop flag hflag'
  have ht2 := fun output ii oi stop => tail_loop2_equiv table input output ii oi stop flag hflag'
  have halphabet : engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET =
      Base64StepOpt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET := by
    with_unfolding_all rfl
  have hfast := fun stride output ii oi last_fast_index =>
    Base64FastStep.fast_loop_equiv_if stride table input output ii oi flag last_fast_index
      (fun hf => (hflag' hf).trans halphabet)
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail engine.general_purpose.encode_scalar_tail
  dsimp only
  rw [hdispatch]
  simp only [Aeneas.Std.bind_ok, fast_loop_unchanged, ← hfast, ← ht1, ← ht2,
    Base64StepRef.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    Base64StepRef.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8,
    engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8]

#print axioms tail_loop1_equiv
#print axioms tail_loop2_equiv
#print axioms scalar_tail_equiv
open Base64TailOpt.engine.general_purpose

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

end Base64TailProof
