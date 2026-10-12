import Step

open Aeneas Aeneas.Std RegexDfaStep

theorem schedule_step_equal
    (rest : alloc.vec.Vec U32) (action : Action) :
    old_schedule rest action =
      (do
        let pair ← new_schedule rest action
        materialize pair.1 pair.2) := by
  cases action <;> simp [old_schedule, new_schedule, materialize]
