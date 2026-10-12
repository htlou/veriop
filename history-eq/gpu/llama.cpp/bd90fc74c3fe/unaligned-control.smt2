(set-logic QF_BV)
(assert (not (= #x00000001
  (bvshl (bvlshr #x00000001 #x00000002) #x00000002))))
(check-sat)
