import Base64PairsValue.Base64PairsValue
import Mathlib.Tactic.IntervalCases

open Aeneas Aeneas.Std
open Base64PairsValue.engine.general_purpose

set_option maxHeartbeats 4000000

-- These identities connect each 12-bit lookup to the original two 6-bit lookups.
-- They are proof lemmas, not a replacement model of either Rust program.
theorem pair_indices (word : BitVec 64) :
    (((word >>> 52) &&& 4095) >>> 6 = (word >>> 58) &&& 63) ∧
    (((word >>> 52) &&& 4095) &&& 63 = (word >>> 52) &&& 63) ∧
    (((word >>> 40) &&& 4095) >>> 6 = (word >>> 46) &&& 63) ∧
    (((word >>> 40) &&& 4095) &&& 63 = (word >>> 40) &&& 63) ∧
    (((word >>> 28) &&& 4095) >>> 6 = (word >>> 34) &&& 63) ∧
    (((word >>> 28) &&& 4095) &&& 63 = (word >>> 28) &&& 63) ∧
    (((word >>> 16) &&& 4095) >>> 6 = (word >>> 22) &&& 63) ∧
    (((word >>> 16) &&& 4095) &&& 63 = (word >>> 16) &&& 63) := by
  repeat' constructor
  all_goals
    apply BitVec.eq_of_getLsbD_eq
    intro i hi
    interval_cases i <;> simp

#print axioms pair_indices
