// dbe55d7: source-level slices of MessageBody.IVSeq and
// SerializableTypes.GetIvLengthZeros, with GetIvLength/UInt32ToSeq
// results exposed as parameters. This does not model the whole commit.

type uint8 = x: int | 0 <= x < 256 witness 0

function OldIV(len: uint8, number: seq<uint8>): seq<uint8>
  requires len >= 4
{
  seq(len as nat - 4, _ => 0) + number
}

function NewIV(len: uint8, number: seq<uint8>): seq<uint8>
  requires len >= 4
{
  if len == 12 then
    [0,0,0,0,0,0,0,0] + number
  else
    seq(len as nat - 4, _ => 0) + number
}

lemma IVEquivalent(len: uint8, number: seq<uint8>)
  requires len >= 4
  ensures OldIV(len, number) == NewIV(len, number)
{
  if len == 12 {
    assert seq(len as nat - 4, _ => 0) == [0,0,0,0,0,0,0,0];
  }
}

function OldZeros(len: uint8): seq<uint8> {
  seq(len as nat, _ => 0)
}

function NewZeros(len: uint8): seq<uint8> {
  if len == 12 then
    [0,0,0,0,0,0,0,0,0,0,0,0]
  else
    seq(len as nat, _ => 0)
}

lemma ZerosEquivalent(len: uint8)
  ensures OldZeros(len) == NewZeros(len)
{
  if len == 12 {
    assert seq(len as nat, _ => 0) == [0,0,0,0,0,0,0,0,0,0,0,0];
  }
}
