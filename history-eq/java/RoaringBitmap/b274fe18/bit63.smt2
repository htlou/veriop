; Java long bit-vector semantics for the exact changed single-word branch.
; RunContainer(63,64), BitmapContainer with only bit 63 set.
(set-logic QF_BV)
(define-fun word () (_ BitVec 64) #x8000000000000000)
(define-fun start () (_ BitVec 64) (_ bv63 64))
(define-fun end () (_ BitVec 64) (_ bv64 64))
(define-fun old-contains () Bool
  (not (= (bvand word (bvshl (_ bv1 64) start)) (_ bv0 64))))
; Java masks a long shift count to six bits: (-64) & 63 = 0.
(define-fun new-mask () (_ BitVec 64)
  (bvand (bvshl #xffffffffffffffff start)
         (bvlshr #xffffffffffffffff (bvand (bvneg end) (_ bv63 64)))))
(define-fun new-nonempty () Bool
  (bvsgt (bvand word new-mask) (_ bv0 64)))
; UNSAT proves that the parent sees bit 63 and the child rejects it.
(assert (not (and old-contains (not new-nonempty))))
(check-sat)
