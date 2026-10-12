import C9270dc0.HlpdBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0

/-! Commit 9270dc0 "no overallocation in safe mode":
`decompress_sink_size n` was `n + 4 + 24` (old) and is `n` (new). -/

/-- WP spec of the old version at 0: it succeeds with value 28. -/
theorem decompress_sink_size_old_zero_spec :
    L9270dc0HlpdOld.block.decompress_safe.decompress_sink_size 0#usize ⦃ r => r.val = 28 ⦄ := by
  unfold L9270dc0HlpdOld.block.decompress_safe.decompress_sink_size
    L9270dc0HlpdOld.block.decompress_safe.BLOCK_COPY_SIZE
  step*

/-- Old `decompress_sink_size 0 = ok 28`. -/
theorem decompress_sink_size_old_zero :
    L9270dc0HlpdOld.block.decompress_safe.decompress_sink_size 0#usize = ok 28#usize := by
  obtain ⟨y, hy, hv⟩ := WP.spec_imp_exists decompress_sink_size_old_zero_spec
  rw [hy]
  congr 1
  scalar_tac

/-- New `decompress_sink_size n = ok n` for every `n`. -/
theorem decompress_sink_size_new (n : Std.Usize) :
    L9270dc0HlpdNew.block.decompress_safe.decompress_sink_size n = ok n := by
  rfl

/-- NOT_EQUIV: the two versions differ at input 0 (old: ok 28, new: ok 0). -/
theorem decompress_sink_size_not_equiv :
    L9270dc0HlpdOld.block.decompress_safe.decompress_sink_size 0#usize ≠
    L9270dc0HlpdNew.block.decompress_safe.decompress_sink_size 0#usize := by
  rw [decompress_sink_size_old_zero, decompress_sink_size_new]
  intro h
  simp at h

#print axioms decompress_sink_size_old_zero_spec
#print axioms decompress_sink_size_old_zero
#print axioms decompress_sink_size_new
#print axioms decompress_sink_size_not_equiv
