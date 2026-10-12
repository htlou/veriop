// Exact ConstantTimeCompare expressions from both sides of ec22b7d, in a standalone model.
module CompareEquivalence {
  newtype uint64 = x | 0 <= x < 0x1_0000_0000_0000_0000
  newtype uint8 = x | 0 <= x < 256
  type Bytes = seq<uint8>

  function OldCompare(a: Bytes, b: Bytes, pos: nat, acc: bv8): bv8
    requires |a| == |b|
    requires pos <= |a|
    decreases |a| - pos
  {
    if |a| == pos then
      acc
    else
      var x := ((a[pos] as bv8) ^ (b[pos] as bv8));
      OldCompare(a, b, pos+1, x | acc)
  }

  function NewCompare(a: Bytes, b: Bytes, pos: uint64, acc: bv8): bv8
    requires |a| == |b|
    requires pos as nat <= |a|
    requires |a| < 0x1_0000_0000_0000_0000
    decreases |a| - pos as nat
  {
    if |a| as uint64 == pos then
      acc
    else
      var x := ((a[pos] as bv8) ^ (b[pos] as bv8));
      NewCompare(a, b, pos+1, x | acc)
  }

  lemma CompareEquiv(a: Bytes, b: Bytes, pos: uint64, acc: bv8)
    requires |a| == |b|
    requires pos as nat <= |a|
    requires |a| < 0x1_0000_0000_0000_0000
    ensures OldCompare(a, b, pos as nat, acc) == NewCompare(a, b, pos, acc)
    decreases |a| - pos as nat
  {
    if pos as nat < |a| {
      CompareEquiv(a, b, pos+1,
        ((a[pos] as bv8) ^ (b[pos] as bv8)) | acc);
    }
  }

  lemma PublicResultEquiv(a: Bytes, b: Bytes)
    requires |a| == |b|
    requires |a| < 0x1_0000_0000_0000_0000
    ensures OldCompare(a, b, 0, 0) == NewCompare(a, b, 0, 0)
    ensures (OldCompare(a, b, 0, 0) == 0) == (NewCompare(a, b, 0, 0) == 0)
  {
    CompareEquiv(a, b, 0, 0);
  }
}
