// Source-level projection of SerializeFunctions.Read at dbe55d7.
// The explicit bounds avoid the historical MemoryMath axiom.
const LIMIT: nat := 18446744073709551616
newtype U64 = x: int | 0 <= x < LIMIT

datatype ReadResult = Success(data: seq<int>, next: nat) | MoreNeeded(pos: nat)

function AddSafe(x: U64, y: U64): U64
  requires x as nat + y as nat < LIMIT
{
  x + y
}

function OldRead(bytes: seq<int>, start: nat, length: nat): ReadResult {
  var end := start + length;
  if |bytes| < end then MoreNeeded(end)
  else Success(bytes[start..end], end)
}

function NewRead(bytes: seq<int>, start: U64, length: U64): ReadResult
  requires |bytes| < LIMIT
  requires start as nat + length as nat < LIMIT
{
  var end := AddSafe(start, length);
  if (|bytes| as U64) < end then MoreNeeded(end as nat)
  else Success(bytes[start..end], end as nat)
}

lemma ReadEquivalent(bytes: seq<int>, start: U64, length: U64)
  requires |bytes| < LIMIT
  requires start as nat + length as nat < LIMIT
  ensures OldRead(bytes, start as nat, length as nat) == NewRead(bytes, start, length)
{
  var end := AddSafe(start, length);
  assert end as nat == start as nat + length as nat;
}
