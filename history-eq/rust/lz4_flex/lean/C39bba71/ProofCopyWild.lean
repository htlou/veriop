import C39bba71.HlpcBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0

/-! Commit 39bba71 "10% faster safe compressor": `block::compress::copy_literals_wild`.
Old: `output.extend_from_slice(&input[input_start..input_start+len])`.
New: for `len ≤ 8` (resp. ≤16, ≤24) copies a fixed 8 (16, 24) bytes
`output.output[pos..pos+8].copy_from_slice(&input[start..start+8])`, then `pos += len`.
Verdict: NOT_EQUIV (two concrete counterexamples below). -/

theorem usize_add_ok (x y : Usize) (h : x.val + y.val ≤ Usize.max) :
    ∃ z : Usize, x + y = ok z ∧ z.val = x.val + y.val :=
  WP.spec_imp_exists (Usize.add_spec h)

/-- input `[7]` (length 1) -/
def input1 : Slice U8 := Slice.from [7#u8] (by simp; scalar_tac)
/-- input `[7,1,1,1,1,1,1,1]` (length 8) -/
def input8 : Slice U8 := Slice.from (7#u8 :: List.replicate 7 1#u8) (by simp; scalar_tac)
/-- output buffer of 8 zero bytes -/
def zeros8 : Slice U8 := Slice.from (List.replicate 8 0#u8) (by simp; scalar_tac)
/-- sink over `zeros8` at position 0 -/
def sink0 : block.Sink := { output := zeros8, pos := 0#usize }

/-! ### Counterexample 1: input of length 1, len = 1 — old succeeds, new panics. -/

theorem copy_wild_old_input1_spec :
    L39bba71HlpcOld.block.compress.copy_literals_wild sink0 input1 0#usize 1#usize
      ⦃ r => r.1.pos.val = 1 ∧ r.1.output.val = 7#u8 :: List.replicate 7 0#u8 ⦄ := by
  unfold L39bba71HlpcOld.block.compress.copy_literals_wild
    L39bba71HlpcOld.block.Sink.extend_from_slice
  step*
  all_goals simp_all [sink0, zeros8, input1, Slice.from_val]
  · scalar_tac
  · obtain ⟨a, back⟩ := x
    simp only at *
    have hlen : a.len = s.len := by simp [Slice.len, x_post, s_post]
    simp only [core.slice.Slice.copy_from_slice]
    step*
    simp_all [Slice.setSlice!, Slice.from_val, List.setSlice!]
    step*

/-- Old version succeeds (output `[7,0,0,0,0,0,0,0]`, pos 1). -/
theorem copy_wild_old_input1_ok :
    ∃ r, L39bba71HlpcOld.block.compress.copy_literals_wild sink0 input1 0#usize 1#usize = ok r ∧
      r.1.pos.val = 1 ∧ r.1.output.val = 7#u8 :: List.replicate 7 0#u8 :=
  WP.spec_imp_exists copy_wild_old_input1_spec

/-- New version panics (`input[0..8]` out of range). -/
theorem copy_wild_new_input1_fail :
    L39bba71HlpcNew.block.compress.copy_literals_wild sink0 input1 0#usize 1#usize = fail .panic := by
  unfold L39bba71HlpcNew.block.compress.copy_literals_wild
  obtain ⟨z, hz, hzv⟩ := usize_add_ok 0#usize 8#usize (by scalar_tac)
  simp [sink0, hz, core.slice.index.SliceIndexRangeUsizeSlice.index_mut,
    core.slice.index.SliceIndexRangeUsizeSlice.index, zeros8, input1, Slice.from_val, hzv]

theorem copy_wild_not_equiv_1 :
    L39bba71HlpcOld.block.compress.copy_literals_wild sink0 input1 0#usize 1#usize ≠
    L39bba71HlpcNew.block.compress.copy_literals_wild sink0 input1 0#usize 1#usize := by
  obtain ⟨r, hr, _⟩ := copy_wild_old_input1_ok
  rw [hr, copy_wild_new_input1_fail]
  simp

/-! ### Counterexample 2: input of length 8, len = 1 — both succeed, outputs differ. -/

theorem copy_wild_old_input8_spec :
    L39bba71HlpcOld.block.compress.copy_literals_wild sink0 input8 0#usize 1#usize
      ⦃ r => r.1.pos.val = 1 ∧ r.1.output.val = 7#u8 :: List.replicate 7 0#u8 ⦄ := by
  unfold L39bba71HlpcOld.block.compress.copy_literals_wild
    L39bba71HlpcOld.block.Sink.extend_from_slice
  step*
  all_goals simp_all [sink0, zeros8, input8, Slice.from_val]
  all_goals try scalar_tac
  obtain ⟨a, back⟩ := x
  simp only at *
  have hlen : a.len = s.len := by simp [Slice.len, x_post, s_post]
  simp only [core.slice.Slice.copy_from_slice]
  step*
  simp_all [Slice.setSlice!, Slice.from_val, List.setSlice!]
  step*

theorem copy_wild_new_input8_spec :
    L39bba71HlpcNew.block.compress.copy_literals_wild sink0 input8 0#usize 1#usize
      ⦃ r => r.1.pos.val = 1 ∧ r.1.output.val = 7#u8 :: List.replicate 7 1#u8 ⦄ := by
  unfold L39bba71HlpcNew.block.compress.copy_literals_wild
  simp only [sink0, zeros8, input8]
  simp
  step*
  all_goals simp_all [Slice.from_val]
  obtain ⟨a, back⟩ := x
  simp only at *
  step*
  all_goals simp_all [Slice.from_val]
  simp [List.setSlice!]

/-- Old version on input8: succeeds, output `[7,0,0,0,0,0,0,0]`, pos 1. -/
theorem copy_wild_old_input8_ok :
    ∃ r, L39bba71HlpcOld.block.compress.copy_literals_wild sink0 input8 0#usize 1#usize = ok r ∧
      r.1.pos.val = 1 ∧ r.1.output.val = 7#u8 :: List.replicate 7 0#u8 :=
  WP.spec_imp_exists copy_wild_old_input8_spec

/-- New version on input8: succeeds, output `[7,1,1,1,1,1,1,1]` (8 bytes copied), pos 1. -/
theorem copy_wild_new_input8_ok :
    ∃ r, L39bba71HlpcNew.block.compress.copy_literals_wild sink0 input8 0#usize 1#usize = ok r ∧
      r.1.pos.val = 1 ∧ r.1.output.val = 7#u8 :: List.replicate 7 1#u8 :=
  WP.spec_imp_exists copy_wild_new_input8_spec

theorem copy_wild_not_equiv_2 :
    L39bba71HlpcOld.block.compress.copy_literals_wild sink0 input8 0#usize 1#usize ≠
    L39bba71HlpcNew.block.compress.copy_literals_wild sink0 input8 0#usize 1#usize := by
  obtain ⟨r1, hr1, _, ho1⟩ := copy_wild_old_input8_ok
  obtain ⟨r2, hr2, _, ho2⟩ := copy_wild_new_input8_ok
  rw [hr1, hr2]
  intro h
  have h' : r1 = r2 := by simpa using h
  subst h'
  rw [ho1] at ho2
  simp at ho2

#print axioms usize_add_ok
#print axioms copy_wild_old_input1_spec
#print axioms copy_wild_old_input1_ok
#print axioms copy_wild_new_input1_fail
#print axioms copy_wild_not_equiv_1
#print axioms copy_wild_old_input8_spec
#print axioms copy_wild_new_input8_spec
#print axioms copy_wild_old_input8_ok
#print axioms copy_wild_new_input8_ok
#print axioms copy_wild_not_equiv_2
