; Local source-level lemma for the old/new ssm_conv_long_token_f32 load loop.
; Historical instantiations use S=128 and d_conv in {3,4,9}, so L=d_conv-1+32.
(set-logic QF_NIA)
(declare-const d Int)
(declare-const t Int)
(declare-const k Int)
(define-fun S () Int 128)
(define-fun L () Int (+ d 31))
(define-fun T () Int (* S L))
(assert (or (= d 3) (= d 4) (= d 9)))
(assert (and (<= 0 t) (< t S)))

; For iteration k>=1, new loop reaches its body iff its for-condition holds
; and the preceding iteration did not break. Compare with old for-condition.
(push 1)
(assert (and (<= 1 k) (<= k L)))
(define-fun old-active () Bool (< (+ t (* k S)) T))
(define-fun new-active () Bool
  (and (< (* k S) T) (< (* (- k 1) S) (- T t S))))
(assert (xor old-active new-active))
(check-sat)
(pop 1)

; Iteration zero executes on both sides for every valid CUDA thread.
(push 1)
(assert (not (and (< t T) (< 0 T))))
(check-sat)
(pop 1)

; The unchanged row/col update preserves the linear shared-memory index.
(declare-const row Int)
(declare-const col Int)
(assert (and (<= 0 row) (<= 0 col) (< col L)))
(push 1)
(assert (not (= (+ (* (+ row (div (+ col S) L)) L)
                   (mod (+ col S) L))
                (+ (* row L) col S))))
(check-sat)
(pop 1)
