requires "kontrol.md"

module KONTROL-SHIFT-TO-DIV-SPEC
  imports KONTROL-AUX

  claim <k> X:Int >>Int 8 => X /Int 256 </k>
    requires 0 <=Int X
endmodule
