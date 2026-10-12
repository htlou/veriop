(set-logic QF_LIA)

; Initialized XXH64 state before a successful update on a 64-bit target.
(declare-const total Int)
(declare-const memsize Int)
(declare-const length Int)
(assert (and (<= 0 total) (< total 18446744073709551616)))
(assert (and (<= 0 memsize) (< memsize 32)))
(assert (and (<= 0 length) (<= length 9223372036854775807)))
(assert (= memsize (mod total 32)))

; The unchanged update fills a partial block, processes complete 32-byte blocks,
; then stores the remaining 0..31 bytes in state->mem64.
(define-fun fill () Int (ite (> memsize 0) (- 32 memsize) 0))
(define-fun remaining () Int (- length fill))
(define-fun next-memsize () Int
  (ite (< (+ memsize length) 32) (+ memsize length) (mod remaining 32)))
(define-fun next-total () Int (mod (+ total length) 18446744073709551616))

; Satisfiable controls exercise both update branches.
(push 1)
(assert (and (= total 0) (= memsize 0) (= length 1)))
(check-sat)
(pop 1)
(push 1)
(assert (and (= total 15) (= memsize 15) (= length 17)))
(check-sat)
(pop 1)

(push 1)
(assert (not (= next-memsize (mod next-total 32))))
(check-sat)
(pop 1)
(push 1)
(assert (or (< next-memsize 0) (>= next-memsize 32)))
(check-sat)
(pop 1)
