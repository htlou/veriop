; benchmark generated from python API
(set-info :status unknown)
(declare-fun ascii_0 () (_ BitVec 8))
(declare-fun ascii_1 () (_ BitVec 8))
(declare-fun ascii_2 () (_ BitVec 8))
(declare-fun ascii_3 () (_ BitVec 8))
(declare-fun ascii_4 () (_ BitVec 8))
(declare-fun ascii_5 () (_ BitVec 8))
(declare-fun ascii_6 () (_ BitVec 8))
(declare-fun ascii_7 () (_ BitVec 8))
(assert
 (bvuge ascii_0 (_ bv48 8)))
(assert
 (bvule ascii_0 (_ bv57 8)))
(assert
 (bvuge ascii_1 (_ bv48 8)))
(assert
 (bvule ascii_1 (_ bv57 8)))
(assert
 (bvuge ascii_2 (_ bv48 8)))
(assert
 (bvule ascii_2 (_ bv57 8)))
(assert
 (bvuge ascii_3 (_ bv48 8)))
(assert
 (bvule ascii_3 (_ bv57 8)))
(assert
 (bvuge ascii_4 (_ bv48 8)))
(assert
 (bvule ascii_4 (_ bv57 8)))
(assert
 (bvuge ascii_5 (_ bv48 8)))
(assert
 (bvule ascii_5 (_ bv57 8)))
(assert
 (bvuge ascii_6 (_ bv48 8)))
(assert
 (bvule ascii_6 (_ bv57 8)))
(assert
 (bvuge ascii_7 (_ bv48 8)))
(assert
 (bvule ascii_7 (_ bv57 8)))
(assert
 (let ((?x142 (+ (* 10 (bv2int (bvsub ascii_6 (_ bv48 8)))) (bv2int (bvsub ascii_7 (_ bv48 8))))))
(let ((?x74 (bvadd (bvmul ((_ zero_extend 8) (bvsub ascii_6 (_ bv48 8))) (_ bv10 16)) ((_ zero_extend 8) (bvsub ascii_7 (_ bv48 8))))))
(let ((?x75 ((_ extract 7 0) ?x74)))
(and (distinct (bv2int ?x75) ?x142) true)))))
(check-sat)
