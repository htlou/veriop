import Contract

open Aeneas Aeneas.Std RegexDfaGate

theorem loop_bodies_equal (iter : core.slice.iter.Iter prog.Inst) :
    can_exec_old_loop.body iter = can_exec_new_loop.body iter := by
  rfl

theorem loops_equal (iter : core.slice.iter.Iter prog.Inst) :
    can_exec_old_loop iter = can_exec_new_loop iter := by
  rfl

theorem positive_limit_equal (p : prog.Program)
    (h : p.dfa_size_limit ≠ 0#usize) :
    can_exec_old p = can_exec_new p := by
  simp [can_exec_old, can_exec_new, h, loops_equal]

theorem zero_limit_new_disabled (p : prog.Program)
    (h : p.dfa_size_limit = 0#usize) :
    can_exec_new p = .ok false := by
  simp [can_exec_new, h]
