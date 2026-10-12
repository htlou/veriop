// Source-audited slice-to-cursor rewrite of FilterExpr.UnicodeLess at 8ca28834.
module UnicodeLessEquivalence {
  function OldLess(a: string, b: string, isHigh: char -> bool): bool {
    if |a| == 0 && |b| == 0 then
      false
    else if |a| == 0 then
      true
    else if |b| == 0 then
      false
    else if a[0] == b[0] then
      OldLess(a[1..], b[1..], isHigh)
    else if isHigh(a[0]) == isHigh(b[0]) then
      a[0] < b[0]
    else
      isHigh(b[0])
  }

  function NewLess(a: string, b: string, pos: nat, isHigh: char -> bool): bool
    requires pos <= |a| && pos <= |b|
    decreases |a| - pos
  {
    if |a| == pos && |b| == pos then
      false
    else if |a| == pos then
      true
    else if |b| == pos then
      false
    else if a[pos] == b[pos] then
      NewLess(a, b, pos+1, isHigh)
    else if isHigh(a[pos]) == isHigh(b[pos]) then
      a[pos] < b[pos]
    else
      isHigh(b[pos])
  }

  lemma SuffixEquiv(a: string, b: string, pos: nat, isHigh: char -> bool)
    requires pos <= |a| && pos <= |b|
    ensures OldLess(a[pos..], b[pos..], isHigh) == NewLess(a, b, pos, isHigh)
    decreases |a| - pos
  {
    if pos < |a| && pos < |b| && a[pos] == b[pos] {
      assert a[pos..][0] == a[pos];
      assert b[pos..][0] == b[pos];
      assert a[pos..][1..] == a[pos+1..];
      assert b[pos..][1..] == b[pos+1..];
      SuffixEquiv(a, b, pos+1, isHigh);
    }
  }

  lemma EntryPoint(a: string, b: string, isHigh: char -> bool)
    ensures OldLess(a, b, isHigh) == NewLess(a, b, 0, isHigh)
  {
    SuffixEquiv(a, b, 0, isHigh);
  }
}
