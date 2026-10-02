; Alive2 compiler optimization refinement query
; More info in "Alive2: Bounded Translation Validation for LLVM", PLDI'21.
(set-info :status unknown)
(declare-fun blk_addr ((_ BitVec 1)) (_ BitVec 64))
(declare-fun blk_kind ((_ BitVec 1)) (_ BitVec 2))
(declare-fun blk_size ((_ BitVec 1)) (_ BitVec 63))
(declare-fun blk_align ((_ BitVec 1)) (_ BitVec 6))
(assert
 (let ((?x584 (blk_addr (_ bv0 1))))
(let (($x631 (bvule ?x584 (_ bv18446744073709550591 64))))
(let (($x627 (= ((_ extract 3 0) ?x584) (_ bv0 4))))
(let (($x616 (not (= (_ bv0 64) ?x584))))
(let (($x171 (= (_ bv0 2) (blk_kind (_ bv0 1)))))
(let (($x619 (and (and (and (= (_ bv4 6) (blk_align (_ bv0 1))) (= (_ bv1024 63) (blk_size (_ bv0 1)))) $x171) $x616)))
(and (and $x619 $x627) $x631))))))))
(check-sat)
