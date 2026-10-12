// Reduced from the historical IsWriteable bodies at eb7679afa9fb^ and eb7679afa9fb.
// A one-key map makes both historical set/sequence orderings unambiguous.
module SingletonCounterexample {
  newtype uint64 = x | 0 <= x < 0x1_0000_0000_0000_0000
  const ReservedPrefix := "aws_dbe_"
  const Message := "Writing reserved attributes not allowed : "

  function Join(ss: seq<string>, separator: string): string
    requires 0 < |ss|
  {
    if |ss| == 1 then ss[0] else ss[0] + separator + Join(ss[1..], separator)
  }

  function OldOne(key: string): string
    requires ReservedPrefix <= key
  {
    Message + Join([key], "\n")
  }

  method NewOne(keys: seq<string>) returns (result: string)
    requires |keys| == 1
    requires ReservedPrefix <= keys[0]
    ensures result == Message + keys[0] + "\n"
  {
    var rp := ReservedPrefix;
    for i: uint64 := 0 to |keys| as uint64
      invariant i == 0
    {
      if rp <= keys[i] {
        assert i == 0;
        result := Message;
        for j: uint64 := i to |keys| as uint64
          invariant j == i ==> result == Message
          invariant j > i ==> result == Message + keys[i] + "\n"
        {
          if rp <= keys[i] {
            result := result + keys[i] + "\n";
          }
        }
        assert result == Message + keys[0] + "\n";
        return;
      }
    }
    result := "";
  }

  method Witness() {
    var key := ReservedPrefix;
    assert ReservedPrefix <= key;
    var newer := NewOne([key]);
    var older := OldOne(key);
    assert older == Message + key;
    assert newer == Message + key + "\n";
    assert older != newer;
  }
}
