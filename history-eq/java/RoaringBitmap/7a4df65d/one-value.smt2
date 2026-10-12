(set-logic QF_BV)
(declare-fun value () (_ BitVec 16))
(declare-fun runStart () (_ BitVec 32))
(declare-fun runEnd () (_ BitVec 32))
(assert (bvule runStart runEnd))
(assert (bvule runEnd #x0000ffff))
(define-fun val () (_ BitVec 32) ((_ zero_extend 16) value))

; Parent: scan one value, and if it exceeds the only run, reprocess at 65537.
(define-fun oldWrite () (_ BitVec 32)
  (ite (bvult val runStart) #x00000001
    (ite (bvule val runEnd) #x00000000
      (ite (bvult val #x00010001) #x00000001 #x00000000))))

; Child: one-element specialization of the two iterateUntil calls and tail copy.
(define-fun inLoop () Bool (bvule val runEnd))
(define-fun firstInRun () (_ BitVec 32)
  (ite (and inLoop (bvult val runStart)) #x00000001 #x00000000))
(define-fun readAfter () (_ BitVec 32)
  (ite inLoop
    (ite (and (= firstInRun #x00000000) (bvult val (bvadd runEnd #x00000001)))
      #x00000001 firstInRun)
    #x00000000))
(define-fun newWrite () (_ BitVec 32)
  (ite (and (= runStart #x00000000) (= runEnd #x0000ffff))
    #x00000000
    (bvadd firstInRun (bvsub #x00000001 readAfter))))

(check-sat) ; the valid-input domain is nonempty
(assert (not (= oldWrite newWrite)))
(check-sat)
