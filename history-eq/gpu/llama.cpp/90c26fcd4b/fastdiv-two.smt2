(set-logic QF_BV)
(declare-const n (_ BitVec 32))
(assert (bvult n #x00000004))
; For ne00=2 the historical host formula gives mp=1 and L=1.
(define-fun hi () (_ BitVec 32) ((_ extract 63 32) (bvmul ((_ zero_extend 32) n) #x0000000000000001)))
(assert (not (= (bvlshr (bvadd hi n) #x00000001) (bvudiv n #x00000002))))
(check-sat)
