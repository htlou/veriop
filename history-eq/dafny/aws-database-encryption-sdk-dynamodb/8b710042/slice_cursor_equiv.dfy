// Reduced from two slice-to-cursor rewrites in historical FilterExpr.dfy.
module SliceCursorEquivalence {
  newtype uint64 = x | 0 <= x < 0x1_0000_0000_0000_0000

  datatype Token = Attr(name: string) | Special | Other

  predicate IsSpecial(t: Token) { t.Special? }
  function OldExtract(tokens: seq<Token>, tokensUntilSkip: int, resolver: Token -> string): seq<string> {
    if |tokens| == 0 then
      []
    else if IsSpecial(tokens[0]) then
      OldExtract(tokens[1..], 1, resolver)
    else if tokens[0].Attr? && tokensUntilSkip == 0 then
      OldExtract(tokens[1..], -1, resolver)
    else if tokens[0].Attr? then
      [resolver(tokens[0])] + OldExtract(tokens[1..], -1, resolver)
    else
      OldExtract(tokens[1..], tokensUntilSkip-1, resolver)
  }

  function NewExtract(tokens: seq<Token>, tokensUntilSkip: int, pos: uint64, resolver: Token -> string): seq<string>
    requires pos as nat <= |tokens|
    requires |tokens| < 0x1_0000_0000_0000_0000
    decreases |tokens| - pos as nat
  {
    if |tokens| as uint64 == pos then
      []
    else if IsSpecial(tokens[pos]) then
      NewExtract(tokens, 1, pos+1, resolver)
    else if tokens[pos].Attr? && tokensUntilSkip == 0 then
      NewExtract(tokens, -1, pos+1, resolver)
    else if tokens[pos].Attr? then
      [resolver(tokens[pos])] + NewExtract(tokens, -1, pos+1, resolver)
    else
      NewExtract(tokens, tokensUntilSkip-1, pos+1, resolver)
  }

  lemma ExtractEquiv(tokens: seq<Token>, tokensUntilSkip: int, pos: uint64, resolver: Token -> string)
    requires pos as nat <= |tokens|
    requires |tokens| < 0x1_0000_0000_0000_0000
    ensures OldExtract(tokens[pos..], tokensUntilSkip, resolver) == NewExtract(tokens, tokensUntilSkip, pos, resolver)
    decreases |tokens| - pos as nat
  {
    if pos as nat < |tokens| {
      assert tokens[pos..][0] == tokens[pos];
      assert tokens[pos..][1..] == tokens[pos+1..];
      if IsSpecial(tokens[pos]) {
        ExtractEquiv(tokens, 1, pos+1, resolver);
      } else if tokens[pos].Attr? {
        ExtractEquiv(tokens, -1, pos+1, resolver);
      } else {
        ExtractEquiv(tokens, tokensUntilSkip-1, pos+1, resolver);
      }
    }
  }

  function OldRemove(x: seq<string>, y: seq<string>): (seq<string>, seq<string>) {
    if |x| == 0 || |y| == 0 || x[0] != y[0] then
      (x, y)
    else
      OldRemove(x[1..], y[1..])
  }

  function NewRemove(x: seq<string>, y: seq<string>, pos: uint64): (seq<string>, seq<string>)
    requires pos as nat <= |x| && pos as nat <= |y|
    requires |x| < 0x1_0000_0000_0000_0000 && |y| < 0x1_0000_0000_0000_0000
    decreases |x| - pos as nat
  {
    if |x| as uint64 == pos || |y| as uint64 == pos || x[pos] != y[pos] then
      (x[pos..], y[pos..])
    else
      NewRemove(x, y, pos+1)
  }

  lemma RemoveEquiv(x: seq<string>, y: seq<string>, pos: uint64)
    requires pos as nat <= |x| && pos as nat <= |y|
    requires |x| < 0x1_0000_0000_0000_0000 && |y| < 0x1_0000_0000_0000_0000
    ensures OldRemove(x[pos..], y[pos..]) == NewRemove(x, y, pos)
    decreases |x| - pos as nat
  {
    if pos as nat < |x| && pos as nat < |y| && x[pos] == y[pos] {
      assert x[pos..][0] == x[pos];
      assert y[pos..][0] == y[pos];
      assert x[pos..][1..] == x[pos+1..];
      assert y[pos..][1..] == y[pos+1..];
      RemoveEquiv(x, y, pos+1);
    }
  }

  lemma EntryPoints(tokens: seq<Token>, skip: int, resolver: Token -> string, x: seq<string>, y: seq<string>)
    requires |tokens| < 0x1_0000_0000_0000_0000
    requires |x| < 0x1_0000_0000_0000_0000 && |y| < 0x1_0000_0000_0000_0000
    ensures OldExtract(tokens, skip, resolver) == NewExtract(tokens, skip, 0, resolver)
    ensures OldRemove(x, y) == NewRemove(x, y, 0)
  {
    ExtractEquiv(tokens, skip, 0, resolver);
    RemoveEquiv(x, y, 0);
  }
}
