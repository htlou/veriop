requires "evm.md"
requires "lemmas/lemmas.k"

module VERIFICATION
    imports EVM
    imports LEMMAS

    // The five pre-commit rules in evm.md, with only the function names changed.
    syntax Bytes ::= #oldValidJumpDests(Bytes) [symbol(oldValidJumpDests), function, memo, total]
                   | #oldValidJumpDests(Bytes, Int, Bytes) [symbol(oldValidJumpDestsAux), function]
                   | #oldValidJumpDestsWithinBound(Bytes, Int, Bytes) [symbol(oldValidJumpDestsWithinBound), function]

    rule #oldValidJumpDests(PGM) => #oldValidJumpDests(PGM, 0, padRightBytes(.Bytes, lengthBytes(PGM), 0))
    rule #oldValidJumpDests(PGM, I, RESULT) => RESULT requires I >=Int lengthBytes(PGM)
    rule #oldValidJumpDests(PGM, I, RESULT) => #oldValidJumpDestsWithinBound(PGM, I, RESULT) requires I <Int lengthBytes(PGM)
    rule #oldValidJumpDestsWithinBound(PGM, I, RESULT) => #oldValidJumpDests(PGM, I +Int 1, RESULT[I <- 1]) requires PGM [ I ] ==Int 91
    rule #oldValidJumpDestsWithinBound(PGM, I, RESULT) => #oldValidJumpDests(PGM, I +Int #widthOpCode(PGM [ I ]), RESULT) requires notBool PGM [ I ] ==Int 91

    syntax StepSort ::= Bool
    syntax KItem ::= runLemma(StepSort) [symbol(runLemma)] | doneLemma(StepSort)
    rule <k> runLemma(T) => doneLemma(T) ... </k>
endmodule

module JUMP-DEST-RELATION-SPEC
    imports VERIFICATION

    claim [empty]:
        <k> runLemma(#oldValidJumpDests(.Bytes) ==K #computeValidJumpDests(.Bytes)) => doneLemma(true) ... </k>

    claim [one-symbolic-byte]:
        <k> runLemma(#oldValidJumpDests(#buf(1, B)) ==K #computeValidJumpDests(#buf(1, B))) => doneLemma(true) ... </k>
      requires #rangeUInt(8, B)

    claim [one-jumpdest-byte]:
        <k> runLemma(#oldValidJumpDests(#buf(1, B)) ==K #computeValidJumpDests(#buf(1, B))) => doneLemma(true) ... </k>
      requires #rangeUInt(8, B) andBool B ==Int 91

    claim [one-nonjumpdest-byte]:
        <k> runLemma(#oldValidJumpDests(#buf(1, B)) ==K #computeValidJumpDests(#buf(1, B))) => doneLemma(true) ... </k>
      requires #rangeUInt(8, B) andBool notBool B ==Int 91

    claim [one-low-byte]:
        <k> runLemma(#oldValidJumpDests(#buf(1, B)) ==K #computeValidJumpDests(#buf(1, B))) => doneLemma(true) ... </k>
      requires #rangeUInt(8, B) andBool B <Int 96 andBool notBool B ==Int 91

    claim [one-push-byte]:
        <k> runLemma(#oldValidJumpDests(#buf(1, B)) ==K #computeValidJumpDests(#buf(1, B))) => doneLemma(true) ... </k>
      requires #rangeUInt(8, B) andBool B >=Int 96 andBool B <=Int 127

    claim [one-high-byte]:
        <k> runLemma(#oldValidJumpDests(#buf(1, B)) ==K #computeValidJumpDests(#buf(1, B))) => doneLemma(true) ... </k>
      requires #rangeUInt(8, B) andBool B >Int 127

    claim [push1-and-symbolic-payload]:
        <k> runLemma(#oldValidJumpDests((96 : .Bytes) +Bytes #buf(1, B)) ==K #computeValidJumpDests((96 : .Bytes) +Bytes #buf(1, B))) => doneLemma(true) ... </k>
      requires #rangeUInt(8, B)
endmodule
