(set-logic QF_FP)
; Historical IQ2_XXS witness: idx=0, qs[0]=2, signscale=0x10000000,
; grid[2][0] low byte=25, d has binary16 bits 0x2001, positive sign.
; Each old float16_t arithmetic operator rounds to binary16; each new float
; operator rounds to binary32, with one final conversion to binary16.
(define-fun rne () RoundingMode roundNearestTiesToEven)
(define-fun d () (_ FloatingPoint 5 11) ((_ to_fp 5 11) #x2001))
(define-fun quarter16 () (_ FloatingPoint 5 11) ((_ to_fp 5 11) #x3400))
(define-fun half16 () (_ FloatingPoint 5 11) ((_ to_fp 5 11) #x3800))
(define-fun one16 () (_ FloatingPoint 5 11) ((_ to_fp 5 11) #x3c00))
(define-fun twentyfive16 () (_ FloatingPoint 5 11) ((_ to_fp 5 11) #x4e40))
(define-fun old () (_ FloatingPoint 5 11)
  (fp.mul rne
    (fp.mul rne (fp.mul rne d quarter16) (fp.add rne half16 one16))
    twentyfive16))
(define-fun d32 () (_ FloatingPoint 8 24) ((_ to_fp 8 24) rne d))
(define-fun quarter32 () (_ FloatingPoint 8 24) ((_ to_fp 8 24) rne 0.25))
(define-fun half32 () (_ FloatingPoint 8 24) ((_ to_fp 8 24) rne 0.5))
(define-fun one32 () (_ FloatingPoint 8 24) ((_ to_fp 8 24) rne 1.0))
(define-fun twentyfive32 () (_ FloatingPoint 8 24) ((_ to_fp 8 24) rne 25.0))
(define-fun new32 () (_ FloatingPoint 8 24)
  (fp.mul rne
    (fp.mul rne (fp.mul rne d32 quarter32) (fp.add rne half32 one32))
    twentyfive32))
(define-fun new () (_ FloatingPoint 5 11) ((_ to_fp 5 11) rne new32))
(push 1) (assert (not (= (fp.to_ieee_bv old) #x2cb2))) (check-sat) (pop 1)
(push 1) (assert (not (= (fp.to_ieee_bv new) #x2cb1))) (check-sat) (pop 1)
(push 1) (assert (= (fp.to_ieee_bv old) (fp.to_ieee_bv new))) (check-sat) (pop 1)
