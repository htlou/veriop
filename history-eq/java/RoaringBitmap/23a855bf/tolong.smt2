; Exact Java long bit-vector relation for LongUtils.toLong(byte[], char).
; b0..b5 are the six bytes read from high[0..5], and lo is the char.
; The precondition high != null && high.length >= 6 rules out exceptions.
(set-logic QF_BV)
(declare-fun b0 () (_ BitVec 8))
(declare-fun b1 () (_ BitVec 8))
(declare-fun b2 () (_ BitVec 8))
(declare-fun b3 () (_ BitVec 8))
(declare-fun b4 () (_ BitVec 8))
(declare-fun b5 () (_ BitVec 8))
(declare-fun lo () (_ BitVec 16))

(define-fun old () (_ BitVec 64)
  (bvor
    (bvshl ((_ zero_extend 56) b0) (_ bv56 64))
    (bvshl ((_ zero_extend 56) b1) (_ bv48 64))
    (bvshl ((_ zero_extend 56) b2) (_ bv40 64))
    (bvshl ((_ zero_extend 56) b3) (_ bv32 64))
    (bvshl ((_ zero_extend 56) b4) (_ bv24 64))
    (bvshl ((_ zero_extend 56) b5) (_ bv16 64))
    (bvshl ((_ zero_extend 56) ((_ extract 15 8) lo)) (_ bv8 64))
    ((_ zero_extend 56) ((_ extract 7 0) lo))))

(define-fun new-high () (_ BitVec 64)
  (bvor
    (bvshl ((_ zero_extend 56) b0) (_ bv40 64))
    (bvshl ((_ zero_extend 56) b1) (_ bv32 64))
    (bvshl ((_ zero_extend 56) b2) (_ bv24 64))
    (bvshl ((_ zero_extend 56) b3) (_ bv16 64))
    (bvshl ((_ zero_extend 56) b4) (_ bv8 64))
    ((_ zero_extend 56) b5)))
(define-fun new () (_ BitVec 64)
  (bvor (bvshl new-high (_ bv16 64)) ((_ zero_extend 48) lo)))

(assert (not (= old new)))
(check-sat)
