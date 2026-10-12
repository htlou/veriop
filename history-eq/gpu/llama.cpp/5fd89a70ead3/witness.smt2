(set-logic QF_FP)
(define-fun zero () (_ FloatingPoint 8 24) ((_ to_fp 8 24) #x00000000))
(define-fun one  () (_ FloatingPoint 8 24) ((_ to_fp 8 24) #x3f800000))
(define-fun pos  () (_ FloatingPoint 8 24) ((_ to_fp 8 24) #x4c000000))
(define-fun neg  () (_ FloatingPoint 8 24) ((_ to_fp 8 24) #xcc000000))

; The old q4_K f32 branch evaluates its four products left to right.
(define-fun old-sx () (_ FloatingPoint 8 24)
  (fp.add RNE
    (fp.add RNE
      (fp.add RNE (fp.mul RNE pos one) (fp.mul RNE neg one))
      (fp.mul RNE one one))
    (fp.mul RNE zero zero)))

; The new branch explicitly nests fma from the last product inward.
(define-fun new-sx () (_ FloatingPoint 8 24)
  (fp.fma RNE pos one
    (fp.fma RNE neg one
      (fp.fma RNE one one (fp.mul RNE zero zero)))))

; All other lanes and terms are zero; dall=sc0=1 and dmin=0.
(define-fun old-output () (_ FloatingPoint 8 24) (fp.add RNE zero old-sx))
(define-fun new-output () (_ FloatingPoint 8 24) (fp.fma RNE one new-sx zero))

(push 1)
(assert (not (fp.eq old-output one)))
(check-sat)
(pop 1)
(push 1)
(assert (not (fp.eq new-output zero)))
(check-sat)
(pop 1)
(assert (not (fp.eq old-output new-output)))
(check-sat)
