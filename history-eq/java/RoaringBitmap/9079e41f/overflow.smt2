(set-logic QF_BV)
; Inductive relation over Java 32-bit sums. A counterexample would make this SAT.
(declare-fun old_sum () (_ BitVec 32))
(declare-fun new_sum () (_ BitVec 32))
(declare-fun runs () (_ BitVec 32))
(declare-fun k () (_ BitVec 32))
(declare-fun length () (_ BitVec 16))
(declare-fun start () (_ BitVec 16))
(define-fun len32 () (_ BitVec 32) ((_ zero_extend 16) length))
(define-fun start32 () (_ BitVec 32) ((_ zero_extend 16) start))
(define-fun one () (_ BitVec 32) #x00000001)
(define-fun end32 () (_ BitVec 32) (bvadd (bvadd start32 len32) one))

; The new per-run contribution is the old length plus one, even at wraparound.
(push 1)
(assert (not (= (bvsub end32 start32) (bvadd len32 one))))
(check-sat)
(pop 1)

; Base case: old=runs, new=0, k=0.
(push 1)
(assert (not (= runs (bvsub (bvadd #x00000000 runs) #x00000000))))
(check-sat)
(pop 1)

; Induction step: old-new=runs-k remains true after both updates.
(push 1)
(assert (= old_sum (bvsub (bvadd new_sum runs) k)))
(assert (not (= (bvadd old_sum len32)
                (bvsub (bvadd (bvadd new_sum (bvsub end32 start32)) runs)
                       (bvadd k one)))))
(check-sat)
(pop 1)

; At k=runs, the relation forces equal 32-bit outputs.
(push 1)
(assert (= k runs))
(assert (= old_sum (bvsub (bvadd new_sum runs) k)))
(assert (not (= old_sum new_sum)))
(check-sat)
(pop 1)
