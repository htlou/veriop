; One arbitrary element x suffices to compare the old loop and new append layout.
; Valid Java long range arguments: 0 <= min <= 2^32-1, 0 <= max <= 2^32.
(set-logic QF_LIA)
(declare-const min Int)
(declare-const max Int)
(declare-const x Int)
(assert (and (<= 0 min) (< min 4294967296)
             (<= 0 max) (<= max 4294967296)
             (<= 0 x) (< x 4294967296)))
(define-fun hs () Int (div min 65536))
(define-fun ls () Int (mod min 65536))
(define-fun hl () Int (div (- max 1) 65536))
(define-fun ll () Int (mod (- max 1) 65536))
(define-fun hx () Int (div x 65536))
(define-fun lx () Int (mod x 65536))
; The parent add(min,max) loops from hs to hl, with partial first/last keys.
(define-fun old-member () Bool
  (and (< min max) (<= hs hx) (<= hx hl)
       (<= (ite (= hx hs) ls 0) lx)
       (<= lx (ite (= hx hl) ll 65535))))
; The child builds a first container, zero or more full middle containers,
; and (only when hs < hl) a last container.
(define-fun new-member () Bool
  (and (< min max)
       (or (and (= hx hs) (<= ls lx)
                (< lx (ite (< hs hl) 65536 (+ ll 1))))
           (and (< hs hx) (< hx hl))
           (and (< hs hl) (= hx hl) (<= lx ll)))))
(push)
(assert (xor old-member new-member))
(check-sat)
(pop)
(push)
(assert (xor old-member (and (<= min x) (< x max))))
(check-sat)
(pop)
; Sensitivity check: changing the lower bound from inclusive to exclusive differs.
(push)
(assert (= min 65535))
(assert (= max 65537))
(assert (= x 65535))
(assert (xor old-member (and (< min x) (< x max))))
(check-sat)
(pop)
