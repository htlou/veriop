import ErrorScan

open Aeneas Aeneas.Std Result Base64ErrorScan

theorem first_invalid_error_equal
    (m b : Octets) :
    old_scan m b = new_scan m b := by
  simp [old_scan, new_scan]
  split_ifs <;> simp_all

-- A successful chunk performs the same state update in both historical sources.
def scanChunks {State : Type}
    (scan : Octets → Octets → Result (Option (Std.Usize × Std.U8)))
    (step : State → Octets → Octets → State)
    (state : State) (chunks : List (Octets × Octets)) (chunkIndex : Nat) :
    Result (State × Option (Nat × Std.U8)) :=
  match chunks with
  | [] => ok (state, none)
  | (m, b) :: rest => do
    let hit ← scan m b
    match hit with
    | some (offset, byte) => ok (state, some (chunkIndex * 8 + offset.val, byte))
    | none => scanChunks scan step (step state m b) rest (chunkIndex + 1)

theorem all_chunks_first_error_and_state_equal {State : Type}
    (step : State → Octets → Octets → State)
    (state : State) (chunks : List (Octets × Octets)) (chunkIndex : Nat) :
    scanChunks old_scan step state chunks chunkIndex =
      scanChunks new_scan step state chunks chunkIndex := by
  induction chunks generalizing state chunkIndex with
  | nil => rfl
  | cons chunk rest ih =>
    rcases chunk with ⟨m, b⟩
    simp only [scanChunks, first_invalid_error_equal m b]
    cases new_scan m b <;> simp [ih]
