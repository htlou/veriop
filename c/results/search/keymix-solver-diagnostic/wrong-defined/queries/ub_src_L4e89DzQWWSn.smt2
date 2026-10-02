; Alive2 compiler optimization refinement query
; More info in "Alive2: Bounded Translation Validation for LLVM", PLDI'21.
(set-info :status unknown)
(declare-fun np_%key () Bool)
(declare-fun isundef_%key () (_ BitVec 1))
(declare-fun np_%data () Bool)
(declare-fun isundef_%data () (_ BitVec 1))
(assert
 (and (and (and (= (_ bv0 1) isundef_%data) np_%data) (= (_ bv0 1) isundef_%key)) np_%key))
(check-sat)
