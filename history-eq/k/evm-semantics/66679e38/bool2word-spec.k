requires "evm.md"
requires "lemmas/lemmas.k"

module BOOL2WORD-SPEC
    imports VERIFICATION

    claim [b2w-true]:
        <k> bool2Word(B) => 1 ... </k>
      requires B

    claim [b2w-false]:
        <k> bool2Word(B) => 0 ... </k>
      requires notBool B
endmodule
