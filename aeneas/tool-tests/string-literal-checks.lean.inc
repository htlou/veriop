
#print axioms StringLiteral.message
#print axioms StringLiteral.empty

namespace StringLiteral
open Aeneas.Std Aeneas.Std.Result
theorem message_some (value : Usize) : message (some value) = ok value := by
  simp [message, core.option.Option.expect]
theorem message_none : message none = fail .panic := by
  simp [message, core.option.Option.expect]
#print axioms message_some
#print axioms message_none
end StringLiteral
