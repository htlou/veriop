; ARM 64-bit semantics of the changed montreds macro, with mc=2^64-2^32+1.
; w=d0; a=d1, b=d2, c=d3. The macro's observable outputs are d1..d4.
(set-logic QF_BV)
(declare-fun w () (_ BitVec 64))
(declare-fun a () (_ BitVec 64))
(declare-fun b () (_ BitVec 64))
(declare-fun c () (_ BitVec 64))
(define-fun shl32 () (_ BitVec 64) (bvshl w (_ bv32 64)))
(define-fun shr32 () (_ BitVec 64) (bvlshr w (_ bv32 64)))
(define-fun oldlo () (_ BitVec 64) (bvsub w shl32))
(define-fun borrow () (_ BitVec 64) (ite (bvult w shl32) (_ bv1 64) (_ bv0 64)))
(define-fun oldhi () (_ BitVec 64) (bvsub (bvsub w shr32) borrow))
; 0xffffffff00000001 = 2^64 - 2^32 + 1, so the unsigned 128-bit
; MUL/UMULH product is w*2^64 - w*2^32 + w (ordinary distributivity).
(define-fun widew () (_ BitVec 128) ((_ zero_extend 64) w))
(define-fun product () (_ BitVec 128)
  (bvadd (bvsub (bvshl widew (_ bv64 128))
                (bvshl widew (_ bv32 128))) widew))
(define-fun newlo () (_ BitVec 64) ((_ extract 63 0) product))
(define-fun newhi () (_ BitVec 64) ((_ extract 127 64) product))

; First prove the old SUBS/SBC product split equals the new MUL/UMULH split.
(push 1)
(assert (or (not (= oldlo newlo)) (not (= oldhi newhi))))
(check-sat)
(pop 1)

; Then prove the entire carry chain, including all four destination words.
; add65 returns the 64-bit word plus the 1-bit carry at bit 64.
(define-fun first () (_ BitVec 65)
  (bvadd ((_ zero_extend 1) a) ((_ zero_extend 1) shl32)))
(define-fun second () (_ BitVec 65)
  (bvadd (bvadd ((_ zero_extend 1) b) ((_ zero_extend 1) shr32))
         ((_ zero_extend 64) ((_ extract 64 64) first))))
(define-fun oldthird () (_ BitVec 65)
  (bvadd (bvadd ((_ zero_extend 1) c) ((_ zero_extend 1) oldlo))
         ((_ zero_extend 64) ((_ extract 64 64) second))))
(define-fun newthird () (_ BitVec 65)
  (bvadd (bvadd ((_ zero_extend 1) c) ((_ zero_extend 1) newlo))
         ((_ zero_extend 64) ((_ extract 64 64) second))))
(define-fun oldfourth () (_ BitVec 64)
  (bvadd oldhi ((_ zero_extend 63) ((_ extract 64 64) oldthird))))
(define-fun newfourth () (_ BitVec 64)
  (bvadd newhi ((_ zero_extend 63) ((_ extract 64 64) newthird))))
(assert (or (not (= oldthird newthird)) (not (= oldfourth newfourth))))
(check-sat)
