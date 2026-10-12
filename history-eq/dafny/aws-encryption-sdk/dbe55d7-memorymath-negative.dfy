include "../../wt/aws-esdk-dbe55d7-new/mpl/StandardLibrary/src/MemoryMath.dfy"

module MemoryMathNegativeControl {
  import opened StandardLibrary.MemoryMath
  import opened StandardLibrary.UInt

  lemma FalseFromMemoryMathAxiom()
    ensures false
  {
    ValueIsSafeBecauseItIsInMemory(UINT64_LIMIT);
    assert HasUint64Size(UINT64_LIMIT);
  }
}
