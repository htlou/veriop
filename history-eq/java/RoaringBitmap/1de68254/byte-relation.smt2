(set-logic QF_BV)
(declare-fun firstV () (_ BitVec 64))
(declare-fun i () (_ BitVec 32))

; LongUtils.toBDBytes(firstV)[i], stored by eight signed right shifts.
(define-fun oldByte () (_ BitVec 8)
  (ite (= i #x00000000) ((_ extract 7 0) (bvashr firstV #x0000000000000038))
  (ite (= i #x00000001) ((_ extract 7 0) (bvashr firstV #x0000000000000030))
  (ite (= i #x00000002) ((_ extract 7 0) (bvashr firstV #x0000000000000028))
  (ite (= i #x00000003) ((_ extract 7 0) (bvashr firstV #x0000000000000020))
  (ite (= i #x00000004) ((_ extract 7 0) (bvashr firstV #x0000000000000018))
  (ite (= i #x00000005) ((_ extract 7 0) (bvashr firstV #x0000000000000010))
  (ite (= i #x00000006) ((_ extract 7 0) (bvashr firstV #x0000000000000008))
                          ((_ extract 7 0) firstV)))))))))

; The new Java expression: (byte) (firstV >>> ((7 - i) << 3)).
(define-fun shiftAmount () (_ BitVec 64)
  ((_ zero_extend 32) (bvshl (bvsub #x00000007 i) #x00000003)))
(define-fun newByte () (_ BitVec 8)
  ((_ extract 7 0) (bvlshr firstV shiftAmount)))

(assert (bvule i #x00000007))
(assert (not (= oldByte newByte)))
(check-sat)
