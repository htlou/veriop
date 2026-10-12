import Mathlib.Data.List.OfFn
import Mathlib.Data.List.Indexes

namespace Base64IteratorRelation

def indexedBytes (bytes : List UInt8) : List UInt8 :=
  List.ofFn bytes.get

def indexedPairs (bytes : List UInt8) : List (Nat × UInt8) :=
  List.ofFn fun i : Fin bytes.length => (i.val, bytes.get i)

def iteratedPairs (bytes : List UInt8) : List (Nat × UInt8) :=
  bytes.mapIdx fun i b => (i, b)

theorem indexed_bytes_equal (bytes : List UInt8) : indexedBytes bytes = bytes := by
  exact List.ofFn_get bytes

theorem indexed_pairs_equal (bytes : List UInt8) :
    indexedPairs bytes = iteratedPairs bytes := by
  simpa [indexedPairs, iteratedPairs] using
    (List.mapIdx_eq_ofFn bytes (fun i b => (i, b))).symm

theorem whitespace_filter_equal (bytes : List UInt8) (keep : UInt8 → Bool) :
    (indexedBytes bytes).filter keep = bytes.filter keep := by
  rw [indexed_bytes_equal]

def decodeRun {State Error : Type} (pairs : List (Nat × UInt8))
    (initial : State) (step : State → Nat → UInt8 → Except Error State) :
    Except Error State :=
  pairs.foldl
    (fun (result : Except Error State) pair =>
      result.bind fun state => step state pair.1 pair.2)
    (Except.ok initial)

theorem decode_loop_equal {State Error : Type} (bytes : List UInt8)
    (initial : State) (step : State → Nat → UInt8 → Except Error State) :
    decodeRun (indexedPairs bytes) initial step =
    decodeRun (iteratedPairs bytes) initial step := by
  rw [indexed_pairs_equal]

end Base64IteratorRelation

#print axioms Base64IteratorRelation.whitespace_filter_equal
#print axioms Base64IteratorRelation.decode_loop_equal
