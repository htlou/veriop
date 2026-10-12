import Std

namespace JumpDestRelation

abbrev Marks := Nat → Bool

def mark (r : Marks) (i : Nat) : Marks := fun j => if j == i then true else r j

-- The source rule is W - 94 for PUSH1..PUSH32 and 1 otherwise.
def widthOpCode (w : Nat) : Nat :=
  if 96 ≤ w ∧ w ≤ 127 then w - 94 else 1

theorem width_positive (w : Nat) : 0 < widthOpCode w := by
  by_cases h : 96 ≤ w ∧ w ≤ 127
  · simp [widthOpCode, h]
    omega
  · simp [widthOpCode, h]

def oldScan (pgm : List Nat) : Nat → Nat → Marks → Marks
  | 0, _, result => result
  | fuel + 1, i, result =>
      if i < pgm.length then
        if pgm.getD i 0 == 91 then
          oldScan pgm fuel (i + 1) (mark result i)
        else
          oldScan pgm fuel (i + widthOpCode (pgm.getD i 0)) result
      else result

def newScan (pgm : List Nat) (cachedLength : Nat) : Nat → Nat → Marks → Marks
  | 0, _, result => result
  | fuel + 1, i, result =>
      if i < cachedLength then
        if pgm.getD i 0 == 91 then
          newScan pgm cachedLength fuel (i + 1) (mark result i)
        else
          newScan pgm cachedLength fuel (i + widthOpCode (pgm.getD i 0)) result
      else result

theorem same_scan (pgm : List Nat) (fuel i : Nat) (result : Marks) :
    oldScan pgm fuel i result = newScan pgm pgm.length fuel i result := by
  induction fuel generalizing i result with
  | zero => rfl
  | succ fuel ih =>
      by_cases h : i < pgm.length
      · simp [oldScan, newScan, h, ih]
      · simp [oldScan, newScan, h]

def completed (pgm : List Nat) : Nat → Nat → Bool
  | 0, i => !(i < pgm.length)
  | fuel + 1, i =>
      if i < pgm.length then
        if pgm.getD i 0 == 91 then
          completed pgm fuel (i + 1)
        else
          completed pgm fuel (i + widthOpCode (pgm.getD i 0))
      else true

theorem completed_of_budget (pgm : List Nat) (fuel i : Nat)
    (budget : pgm.length ≤ i + fuel) : completed pgm fuel i = true := by
  induction fuel generalizing i with
  | zero =>
      simp [completed]
      omega
  | succ fuel ih =>
      by_cases bound : i < pgm.length
      · by_cases jump : pgm.getD i 0 == 91
        · simp only [completed, if_pos bound, if_pos jump]
          exact ih (i + 1) (by omega)
        · simp only [completed, if_pos bound, if_neg jump]
          have positive := width_positive (pgm.getD i 0)
          exact ih (i + widthOpCode (pgm.getD i 0)) (by omega)
      · simp [completed, bound]

theorem initial_scan_completes (pgm : List Nat) :
    completed pgm (pgm.length + 1) 0 = true := by
  apply completed_of_budget
  omega

def oldResult (pgm : List Nat) : Marks := oldScan pgm (pgm.length + 1) 0 (fun _ => false)
def newResult (pgm : List Nat) : Marks := newScan pgm pgm.length (pgm.length + 1) 0 (fun _ => false)

theorem same_result (pgm : List Nat) : oldResult pgm = newResult pgm := by
  exact same_scan pgm (pgm.length + 1) 0 (fun _ => false)

end JumpDestRelation
