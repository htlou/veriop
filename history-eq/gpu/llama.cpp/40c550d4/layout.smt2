(set-logic QF_LIA)
; n_t <= 2^32 - 16 keeps the largest padded new y index within uint32.
(declare-const nt Int)
(declare-const token Int)
(assert (and (> nt 0) (<= nt 4294967280) (>= token 0) (< token nt)))
; Every old token maps to the same new (workgroup, local-y) coordinate.
(assert (not (= (+ (* 16 (div token 16)) (mod token 16)) token)))
(check-sat)

(reset)
(set-logic QF_LIA)
(declare-const nt Int)
(declare-const token Int)
(assert (and (> nt 0) (<= nt 4294967280) (>= token 0) (< token nt)))
; The mapped new workgroup is included by ceil(nt/16) dispatch.
(assert (>= (div token 16) (div (+ nt 15) 16)))
(check-sat)

(reset)
(set-logic QF_LIA)
(declare-const wg1 Int)
(declare-const wg2 Int)
(declare-const lane1 Int)
(declare-const lane2 Int)
(assert (and (>= wg1 0) (>= wg2 0)
             (<= 0 lane1) (< lane1 16) (<= 0 lane2) (< lane2 16)))
; No two new y lanes map to the same old token index.
(assert (= (+ (* 16 wg1) lane1) (+ (* 16 wg2) lane2)))
(assert (or (not (= wg1 wg2)) (not (= lane1 lane2))))
(check-sat)
