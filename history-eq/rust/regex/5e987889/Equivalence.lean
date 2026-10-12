import Contract

open Aeneas Aeneas.Std RegexMatchContract

theorem wrapper_equal_iff
    (shortest : Option Usize) (direct : Bool) :
    old_is_match shortest direct = new_is_match shortest direct ↔
      core.option.Option.is_some shortest = direct := by
  simp [old_is_match, new_is_match]

theorem wrapper_equal_if_backend_agrees
    (shortest : Option Usize) (direct : Bool)
    (h : core.option.Option.is_some shortest = direct) :
    old_is_match shortest direct = new_is_match shortest direct := by
  exact (wrapper_equal_iff shortest direct).2 h

-- The indexed historical exec.rs uses the same literal search result for both calls.
theorem literal_path_equal (found : Option (Usize × Usize)) :
    old_is_match (found.map Prod.snd) found.isSome =
      new_is_match (found.map Prod.snd) found.isSome := by
  cases found <;> simp [old_is_match, new_is_match]

inductive DfaResult where
  | matched (endPos : Usize)
  | noMatch
  | quit

def dfaShortest (result : DfaResult) (nfa : Option Usize) : Option Usize :=
  match result with
  | .matched endPos => some endPos
  | .noMatch => none
  | .quit => nfa

def dfaDirect (result : DfaResult) (nfa : Bool) : Bool :=
  match result with
  | .matched _ => true
  | .noMatch => false
  | .quit => nfa

theorem dfa_nonquit_equal (result : DfaResult) (nfaShortest : Option Usize)
    (nfaDirect : Bool) (h : result ≠ .quit) :
    old_is_match (dfaShortest result nfaShortest) (dfaDirect result nfaDirect) =
      new_is_match (dfaShortest result nfaShortest) (dfaDirect result nfaDirect) := by
  cases result <;> simp_all [dfaShortest, dfaDirect, old_is_match, new_is_match]

theorem dfa_quit_equal_iff (nfaShortest : Option Usize) (nfaDirect : Bool) :
    old_is_match (dfaShortest .quit nfaShortest) (dfaDirect .quit nfaDirect) =
      new_is_match (dfaShortest .quit nfaShortest) (dfaDirect .quit nfaDirect) ↔
        core.option.Option.is_some nfaShortest = nfaDirect := by
  exact wrapper_equal_iff nfaShortest nfaDirect
