import RegexUtf8Old
import RegexUtf8New

open Aeneas Aeneas.Std Result
noncomputable section

namespace RegexUtf8Equivalence

def oldView (start stop : Char) : Result (List (Std.U32 × Std.U32)) := do
  let seq ← RegexUtf8Old.utf8.Utf8Sequences.new start stop
  ok (seq.range_stack.val.map fun range => (range.start, range.«end»))

def newView (start stop : Char) : Result (List (Std.U32 × Std.U32)) := do
  let seq ← RegexUtf8New.utf8.Utf8Sequences.new start stop
  ok (seq.range_stack.val.map fun range => (range.start, range.«end»))

theorem new_eq_old
    (hconvert : ∀ c, RegexUtf8Old.U32.Insts.CoreConvertFromChar.from c =
      RegexUtf8New.U32.Insts.CoreConvertFromChar.from c)
    (start stop : Char) : oldView start stop = newView start stop := by
  simp [oldView, newView, RegexUtf8Old.utf8.Utf8Sequences.new,
    RegexUtf8New.utf8.Utf8Sequences.new, RegexUtf8Old.utf8.Utf8Sequences.push,
    hconvert, alloc.vec.Vec.push, alloc.vec.Vec.new,
    Aeneas.Std.Array.to_slice, Aeneas.Std.Array.make,
    Aeneas.Std.alloc.slice.Slice.into_vec]
  simp [U32.max, U32.numBits, Usize.max, lift,
    alloc.vec.Vec.val, alloc.vec.Vec.from, Slice.from_val]

end RegexUtf8Equivalence
