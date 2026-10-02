import Base64StepRef.Base64StepRef
import Base64Unroll8Opt.Base64Unroll8Opt
import Base64FastStepProof
import Base64Unroll8StepProof
import Mathlib.Tactic.IntervalCases

open Aeneas Aeneas.Std Aeneas.Std.Result
namespace Base64GroupProof
set_option maxHeartbeats 2000000
set_option maxRecDepth 8192

def wordAt (input : Slice U8) (pos : Nat) (h : pos + 8 ≤ input.length) : U64 :=
  core.num.U64.from_be_bytes
    (Array.make 8#usize ((input.val.drop pos).take 8) (by
      have hh : pos + 8 ≤ input.val.length := h
      simp only [List.length_take, List.length_drop, UScalar.ofNatCore_val_eq]
      omega))

theorem wordAt_slice (input part : Slice U8) (start stop offset : Nat)
    (hpart : part.val = input.val.slice start stop)
    (hspan : start + offset + 8 ≤ stop) (hstop : stop ≤ input.length)
    (hlocal : offset + 8 ≤ part.length) :
    wordAt part offset hlocal = wordAt input (start + offset) (by omega) := by
  unfold wordAt
  congr 1
  apply (Array.eq_iff _ _).mpr
  simp only [Array.make_val, hpart, List.slice, List.drop_take, List.drop_drop, List.take_take]
  congr 1
  omega

theorem read_u64_spec (input : Slice U8) (hbound : 8 ≤ input.length) :
    Base64StepRef.engine.general_purpose.read_u64 input ⦃ word =>
      word = core.num.U64.from_be_bytes
        (Array.make 8#usize (input.val.take 8) (by simp; omega)) ⦄ := by
  unfold Base64StepRef.engine.general_purpose.read_u64
  step as ⟨part, hp, hl⟩
  step as ⟨result, hr⟩
  cases result with
  | Err e => simp_all
  | Ok bytes =>
    simp only [core.result.Result.unwrap, Aeneas.Std.bind_ok, WP.spec_ok]
    congr 1
    apply (Array.eq_iff _ _).mpr
    simp_all [List.slice]

#print axioms read_u64_spec

theorem read_at_bind {α : Type} (input : Slice U8) (pos : Usize)
    (f : U64 → Result α) (hbound : pos.val + 8 ≤ input.length) :
    (do
      let part ← core.slice.index.SliceIndexRangeFromUsizeSlice.index { start := pos } input
      let word ← Base64StepRef.engine.general_purpose.read_u64 part
      f word) = f (wordAt input pos.val hbound) := by
  have hs : (do
      let part ← core.slice.index.SliceIndexRangeFromUsizeSlice.index { start := pos } input
      Base64StepRef.engine.general_purpose.read_u64 part)
      ⦃ word => word = wordAt input pos.val hbound ⦄ := by
    step as ⟨part, hp, hl⟩
    step with read_u64_spec as ⟨word, hw⟩
    rw [hw]
    unfold wordAt
    congr 1
    apply (Array.eq_iff _ _).mpr
    simp_all
  obtain ⟨word, hr, hw⟩ := WP.spec_imp_exists hs
  subst word
  simpa only [Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok] using
    congrArg (fun r => Aeneas.Std.bind r f) hr

theorem read_at_bind_word (input : Slice U8) (pos : Usize) (word : U64)
    (hbound : pos.val + 8 ≤ input.length) (hword : wordAt input pos.val hbound = word)
    {α : Type} (f : U64 → Result α) :
    (do
      let part ← core.slice.index.SliceIndexRangeFromUsizeSlice.index { start := pos } input
      let value ← Base64StepRef.engine.general_purpose.read_u64 part
      f value) = f word := by
  rw [read_at_bind input pos f hbound, hword]

theorem scalar_byte_bind {α : Type} (table : Array U8 64#usize) (word : U64) (shift : I32)
    (f : U8 → Result α) (hshift : 0 ≤ shift.val ∧ shift.val < 64) :
    (do
      let shifted ← word >>> shift
      let masked ← lift (shifted &&& 63#u64)
      let index ← lift (UScalar.cast .Usize masked)
      let byte ← Array.index_usize table index
      f byte) = f table.val[(word.val >>> shift.toNat) &&& 63]! := by
  have hs : (do
      let shifted ← word >>> shift
      let masked ← lift (shifted &&& 63#u64)
      let index ← lift (UScalar.cast .Usize masked)
      Array.index_usize table index)
      ⦃ byte => byte = table.val[(word.val >>> shift.toNat) &&& 63]! ⦄ := by
    step as ⟨shifted, hshifted, hbits⟩
    step as ⟨masked, hmasked, hmaskedbits⟩
    have hmask : shifted.val &&& 63 ≤ 63 := Nat.and_le_right
    step with UScalar.cast_inBounds_spec as ⟨index, hindex⟩
    step as ⟨byte, hbyte⟩
    simp_all
    rw [List.getElem?_eq_getElem (by
      simp only [Array.property]
      exact Nat.lt_of_le_of_lt Nat.and_le_right (by decide))]
    rfl
  obtain ⟨byte, hr, hb⟩ := WP.spec_imp_exists hs
  subst byte
  simpa only [Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok] using
    congrArg (fun r => Aeneas.Std.bind r f) hr

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

theorem setSlice_adjacent (output : Slice U8) (pos : Nat) (left right : List U8)
    (hbound : pos + left.length + right.length ≤ output.length) :
    (output.setSlice! pos left).setSlice! (pos + left.length) right =
      output.setSlice! pos (left ++ right) := by
  apply (Slice.eq_iff _ _).mpr
  simp only [Slice.setSlice!_val]
  apply List.ext_getElem
  · simp
  · intro i hi hj
    by_cases hp : i < pos
    · simp_lists [List.getElem_setSlice!_prefix, List.getElem_setSlice!_suffix]
    · by_cases hl : i < pos + left.length
      · simp_lists [List.getElem_setSlice!_prefix, List.getElem_setSlice!_suffix]
      · by_cases hr : i < pos + left.length + right.length
        · simp_lists [List.getElem_setSlice!_prefix, List.getElem_setSlice!_suffix]
          simp only [Nat.sub_sub]
        · simp_lists [List.getElem_setSlice!_prefix, List.getElem_setSlice!_suffix]

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

def emitWord (output : Slice U8) (pos : Nat) (table : Array U8 64#usize)
    (word : U64) : Slice U8 :=
  let output := output.setAtNat pos table.val[(word.val >>> 58) &&& 63]!
  let output := output.setAtNat (pos + 1) table.val[(word.val >>> 52) &&& 63]!
  let output := output.setAtNat (pos + 2) table.val[(word.val >>> 46) &&& 63]!
  let output := output.setAtNat (pos + 3) table.val[(word.val >>> 40) &&& 63]!
  let output := output.setAtNat (pos + 4) table.val[(word.val >>> 34) &&& 63]!
  let output := output.setAtNat (pos + 5) table.val[(word.val >>> 28) &&& 63]!
  let output := output.setAtNat (pos + 6) table.val[(word.val >>> 22) &&& 63]!
  output.setAtNat (pos + 7) table.val[(word.val >>> 16) &&& 63]!

def emitFour (output : Slice U8) (pos : Nat) (table : Array U8 64#usize)
    (input : Slice U8) (start : Nat) (h : start + 26 ≤ input.length) : Slice U8 :=
  let output := emitWord output pos table (wordAt input start (by omega))
  let output := emitWord output (pos + 8) table (wordAt input (start + 6) (by omega))
  let output := emitWord output (pos + 16) table (wordAt input (start + 12) (by omega))
  emitWord output (pos + 24) table (wordAt input (start + 18) (by omega))

theorem scalar4_body_spec (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi last : Usize) (hguard : ii.val ≤ last.val)
    (hin : ii.val + 26 ≤ input.length) (hout : oi.val + 32 ≤ output.length) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
      24#usize table input last output ii oi ⦃ r =>
      ∃ ii' oi', r = ControlFlow.cont (emitFour output oi.val table input ii.val hin, ii', oi') ∧
        ii'.val = ii.val + 24 ∧ oi'.val = oi.val + 32 ⦄ := by
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
  simp only [UScalar.le_equiv, if_pos hguard,
    Base64StepRef.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    Base64StepRef.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS]
  step as ⟨stride, hstride⟩
  step as ⟨iend, hiend⟩
  step as ⟨input_chunk, hinput, hinputlen⟩
  step as ⟨out_count, hcount⟩
  step as ⟨oend, hoend⟩
  step as ⟨chunk, back, hchunk, hchunklen, hback⟩
  have hinputlen' : input_chunk.length = 26 := by scalar_tac
  have hchunklen' : chunk.length = 32 := by scalar_tac
  have hw (offset : Nat) (hb : offset + 8 ≤ 26) :
      wordAt input_chunk offset (by omega) =
        wordAt input (ii.val + offset) (by omega) := by
    apply wordAt_slice input input_chunk ii.val iend.val offset hinput <;> scalar_tac
  obtain ⟨word0, hword0⟩ : ∃ w, wordAt input_chunk 0 (by omega) = w := ⟨_, rfl⟩
  have hr0 := @read_at_bind_word input_chunk 0#usize word0 (by norm_num [hinputlen']) hword0
  obtain ⟨word1, hword1⟩ : ∃ w, wordAt input_chunk 6 (by omega) = w := ⟨_, rfl⟩
  have hr1 := @read_at_bind_word input_chunk 6#usize word1 (by norm_num [hinputlen']) hword1
  obtain ⟨word2, hword2⟩ : ∃ w, wordAt input_chunk 12 (by omega) = w := ⟨_, rfl⟩
  have hr2 := @read_at_bind_word input_chunk 12#usize word2 (by norm_num [hinputlen']) hword2
  obtain ⟨word3, hword3⟩ : ∃ w, wordAt input_chunk 18 (by omega) = w := ⟨_, rfl⟩
  have hr3 := @read_at_bind_word input_chunk 18#usize word3 (by norm_num [hinputlen']) hword3
  simp (disch := first | assumption | norm_num [hinputlen', hchunklen'] | scalar_tac) only
    [↓hr0, ↓hr1, ↓hr2, ↓hr3, ↓scalar_byte_bind, ↓Base64FastStep.update_bind,
      UScalar.ofNatCore_val_eq]
  step as ⟨oi', hoi'⟩
  step as ⟨ii', hii'⟩
  try simp only [WP.spec_ok]
  refine ⟨ii', oi', ?_, by scalar_tac, by scalar_tac⟩
  simp only [hback]
  simp (disch := (simp only [Slice.setAtNat_length, hchunklen']; omega)) only
    [setSlice_setAt]
  rw [setSlice_original output chunk oi.val oend.val hchunk (by scalar_tac) (by scalar_tac)]
  simp only [← hword0, ← hword1, ← hword2, ← hword3]
  simp (disch := omega) only [hw]
  simp only [emitFour, emitWord, Nat.add_assoc, Nat.add_zero]
  rfl

def emitEight (output : Slice U8) (pos : Nat) (table : Array U8 64#usize)
    (input : Slice U8) (start : Nat) (h : start + 50 ≤ input.length) : Slice U8 :=
  emitFour (emitFour output pos table input start (by omega))
    (pos + 32) table input (start + 24) (by omega)

@[simp] theorem emitFour_length (output : Slice U8) (pos : Nat) (table : Array U8 64#usize)
    (input : Slice U8) (start : Nat) (h : start + 26 ≤ input.length) :
    (emitFour output pos table input start h).length = output.length := by
  simp [emitFour, emitWord]

theorem scalar8_body_spec (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi last : Usize) (hguard : ii.val ≤ last.val)
    (hin : ii.val + 50 ≤ input.length) (hout : oi.val + 64 ≤ output.length) :
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0.body
      48#usize table input false last output ii oi ⦃ r =>
      ∃ ii' oi', r = ControlFlow.cont (emitEight output oi.val table input ii.val hin, ii', oi') ∧
        ii'.val = ii.val + 48 ∧ oi'.val = oi.val + 64 ⦄ := by
  have hread : Base64Unroll8Opt.engine.general_purpose.read_u64 =
      Base64StepRef.engine.general_purpose.read_u64 := by with_unfolding_all rfl
  unfold Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0.body
  simp only [UScalar.le_equiv, if_pos hguard, Bool.false_eq_true, ite_false, hread,
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS]
  step as ⟨stride, hstride⟩
  step as ⟨iend, hiend⟩
  step as ⟨input_chunk, hinput, hinputlen⟩
  step as ⟨out_count, hcount⟩
  step as ⟨oend, hoend⟩
  step as ⟨chunk, back, hchunk, hchunklen, hback⟩
  have hinputlen' : input_chunk.length = 50 := by scalar_tac
  have hchunklen' : chunk.length = 64 := by scalar_tac
  have hw (offset : Nat) (hb : offset + 8 ≤ 50) :
      wordAt input_chunk offset (by omega) =
        wordAt input (ii.val + offset) (by omega) := by
    apply wordAt_slice input input_chunk ii.val iend.val offset hinput <;> scalar_tac
  obtain ⟨word0, hword0⟩ : ∃ w, wordAt input_chunk 0 (by omega) = w := ⟨_, rfl⟩
  have hr0 := @read_at_bind_word input_chunk 0#usize word0 (by norm_num [hinputlen']) hword0
  obtain ⟨word1, hword1⟩ : ∃ w, wordAt input_chunk 6 (by omega) = w := ⟨_, rfl⟩
  have hr1 := @read_at_bind_word input_chunk 6#usize word1 (by norm_num [hinputlen']) hword1
  obtain ⟨word2, hword2⟩ : ∃ w, wordAt input_chunk 12 (by omega) = w := ⟨_, rfl⟩
  have hr2 := @read_at_bind_word input_chunk 12#usize word2 (by norm_num [hinputlen']) hword2
  obtain ⟨word3, hword3⟩ : ∃ w, wordAt input_chunk 18 (by omega) = w := ⟨_, rfl⟩
  have hr3 := @read_at_bind_word input_chunk 18#usize word3 (by norm_num [hinputlen']) hword3
  obtain ⟨word4, hword4⟩ : ∃ w, wordAt input_chunk 24 (by omega) = w := ⟨_, rfl⟩
  have hr4 := @read_at_bind_word input_chunk 24#usize word4 (by norm_num [hinputlen']) hword4
  obtain ⟨word5, hword5⟩ : ∃ w, wordAt input_chunk 30 (by omega) = w := ⟨_, rfl⟩
  have hr5 := @read_at_bind_word input_chunk 30#usize word5 (by norm_num [hinputlen']) hword5
  obtain ⟨word6, hword6⟩ : ∃ w, wordAt input_chunk 36 (by omega) = w := ⟨_, rfl⟩
  have hr6 := @read_at_bind_word input_chunk 36#usize word6 (by norm_num [hinputlen']) hword6
  obtain ⟨word7, hword7⟩ : ∃ w, wordAt input_chunk 42 (by omega) = w := ⟨_, rfl⟩
  have hr7 := @read_at_bind_word input_chunk 42#usize word7 (by norm_num [hinputlen']) hword7
  simp (disch := first | assumption | norm_num [hinputlen', hchunklen'] | scalar_tac) only
    [↓hr0, ↓hr1, ↓hr2, ↓hr3, ↓hr4, ↓hr5, ↓hr6, ↓hr7, ↓scalar_byte_bind, ↓Base64FastStep.update_bind,
      UScalar.ofNatCore_val_eq]
  step as ⟨oi', hoi'⟩
  step as ⟨ii', hii'⟩
  try simp only [WP.spec_ok]
  refine ⟨ii', oi', ?_, by scalar_tac, by scalar_tac⟩
  simp only [hback]
  simp (disch := (simp only [Slice.setAtNat_length, hchunklen']; omega)) only
    [setSlice_setAt]
  rw [setSlice_original output chunk oi.val oend.val hchunk (by scalar_tac) (by scalar_tac)]
  simp only [← hword0, ← hword1, ← hword2, ← hword3, ← hword4, ← hword5, ← hword6, ← hword7]
  simp (disch := omega) only [hw]
  simp only [emitEight, emitFour, emitWord, Nat.add_assoc, Nat.add_zero]
  rfl

#print axioms scalar8_body_spec

#print axioms wordAt_slice
#print axioms read_at_bind
#print axioms scalar_byte_bind
#print axioms setSlice_setAt
#print axioms setSlice_adjacent
#print axioms setSlice_original
#print axioms scalar4_body_spec

theorem scalar8_two_scalar4 (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi last8 last4 : Usize) (hguard8 : ii.val ≤ last8.val)
    (hguard4 : ii.val + 24 ≤ last4.val)
    (hin : ii.val + 50 ≤ input.length) (hout : oi.val + 64 ≤ output.length) :
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0.body
      48#usize table input false last8 output ii oi =
    (do
      let first ← Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
        24#usize table input last4 output ii oi
      match first with
      | .cont (out, next_i, next_o) =>
        Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
          24#usize table input last4 out next_i next_o
      | .done state => ok (.done state)) := by
  obtain ⟨r8, hr8, i8, o8, he8, hi8, ho8⟩ := WP.spec_imp_exists
    (scalar8_body_spec table input output ii oi last8 hguard8 hin hout)
  subst r8
  obtain ⟨r4, hr4, i4, o4, he4, hi4, ho4⟩ := WP.spec_imp_exists
    (scalar4_body_spec table input output ii oi last4 (by omega) (by omega) (by omega))
  subst r4
  obtain ⟨r44, hr44, i44, o44, he44, hi44, ho44⟩ := WP.spec_imp_exists
    (scalar4_body_spec table input (emitFour output oi.val table input ii.val (by omega))
      i4 o4 last4 (by omega) (by omega) (by simp only [emitFour_length]; omega))
  subst r44
  simp only [hr8, hr4, Aeneas.Std.bind_ok, hr44]
  have hii : i8 = i44 := by scalar_tac
  have hoo : o8 = o44 := by scalar_tac
  simp only [emitEight, hii, hoo, hi4, ho4]

theorem pairs8_two_scalar4 (input output : Slice U8) (ii oi last8 last4 : Usize)
    (hguard8 : ii.val ≤ last8.val) (hguard4 : ii.val + 24 ≤ last4.val)
    (hin : ii.val + 50 ≤ input.length) (hout : oi.val + 64 ≤ output.length) :
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0.body
      48#usize Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET
      input true last8 output ii oi =
    (do
      let first ← Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
        24#usize Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET
        input last4 output ii oi
      match first with
      | .cont (out, next_i, next_o) =>
        Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
          24#usize Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET
          input last4 out next_i next_o
      | .done state => ok (.done state)) := by
  rw [Base64Unroll8Step.fast_body_pairs_equiv_all]
  exact scalar8_two_scalar4 _ input output ii oi last8 last4 hguard8 hguard4 hin hout

#print axioms scalar8_two_scalar4
#print axioms pairs8_two_scalar4

theorem word_indices (a b c d e f g h : BitVec 8) :
    let word : BitVec 64 := (BitVec.fromBEBytes [a, b, c, d, e, f, g, h]).cast (by simp)
    ((word >>> 58) &&& 63).setWidth 8 = a >>> 2 ∧
    ((word >>> 52) &&& 63).setWidth 8 = ((a <<< 4) ||| (b >>> 4)) &&& 63 ∧
    ((word >>> 46) &&& 63).setWidth 8 = ((b <<< 2) ||| (c >>> 6)) &&& 63 ∧
    ((word >>> 40) &&& 63).setWidth 8 = c &&& 63 ∧
    ((word >>> 34) &&& 63).setWidth 8 = d >>> 2 ∧
    ((word >>> 28) &&& 63).setWidth 8 = ((d <<< 4) ||| (e >>> 4)) &&& 63 ∧
    ((word >>> 22) &&& 63).setWidth 8 = ((e <<< 2) ||| (f >>> 6)) &&& 63 ∧
    ((word >>> 16) &&& 63).setWidth 8 = f &&& 63 := by
  dsimp only
  repeat' constructor
  all_goals
    apply BitVec.eq_of_getLsbD_eq
    intro i hi
    interval_cases i <;> simp [BitVec.fromBEBytes, Byte.testBit] <;>
      simp [BitVec.getElem_eq_testBit_toNat]

#print axioms word_indices

end Base64GroupProof
