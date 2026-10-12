(set-logic QF_BV)
; Java int expression (1 << 16) - 1 - 0, narrowed to short.
(define-fun candidate () (_ BitVec 16)
  ((_ extract 15 0) (bvsub (bvshl #x00000001 #x00000010) #x00000001)))
(assert (not (= candidate #xffff)))
(check-sat)
