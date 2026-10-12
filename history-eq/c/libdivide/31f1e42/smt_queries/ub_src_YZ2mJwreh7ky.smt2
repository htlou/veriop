; Alive2 compiler optimization refinement query
; More info in "Alive2: Bounded Translation Validation for LLVM", PLDI'21.
(set-info :status unknown)
(declare-fun |np_%#2| () Bool)
(declare-fun |isundef_%#2| () (_ BitVec 1))
(declare-fun |np_%#1| () Bool)
(declare-fun |isundef_%#1| () (_ BitVec 1))
(declare-fun |np_%#0| () Bool)
(declare-fun |isundef_%#0| () (_ BitVec 1))
(assert
 (let (($x23 (= (_ bv0 1) |isundef_%#2|)))
(let (($x78 (and (and (and (= (_ bv0 1) |isundef_%#0|) |np_%#0|) (= (_ bv0 1) |isundef_%#1|)) |np_%#1|)))
(and (and $x78 $x23) |np_%#2|))))
(check-sat)
