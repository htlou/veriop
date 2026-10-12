(set-logic QF_BV)
(declare-fun word () (_ BitVec 64))
(assert (not (= (bvxor word word) (_ bv0 64))))
(check-sat)
