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
 (let ((?x155 (+ (* 10 (bv2int (bvsub ascii_0 (_ bv48 8)))) (bv2int (bvsub ascii_1 (_ bv48 8))))))
(let ((?x202 (bvadd (bvmul ((_ zero_extend 8) (bvsub ascii_0 (_ bv48 8))) (_ bv10 16)) ((_ zero_extend 8) (bvsub ascii_1 (_ bv48 8))))))
(let ((?x205 ((_ extract 7 0) ?x202)))
(and (distinct (bv2int ?x205) ?x155) true)))))
(check-sat)
