module RELATION
  imports INT

  syntax KItem ::= old(Int) | optimized(Int)
  configuration <k> $PGM:K </k>
  rule old(I:Int) => I +Int 1
  rule optimized(I:Int) => I +Int 1
endmodule
