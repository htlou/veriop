// Diagnostic only: the same assume {:axiom} pattern can discharge an
// intentionally false function-by-method equality.
function Spec(): int {
  0
} by method {
  var result := 1;
  assume {:axiom} Spec() == result;
  return result;
}
