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
 (let ((?x202 (bvadd (bvmul ((_ zero_extend 8) (bvsub ascii_0 (_ bv48 8))) (_ bv10 16)) ((_ zero_extend 8) (bvsub ascii_1 (_ bv48 8))))))
(let ((?x205 ((_ extract 7 0) ?x202)))
(let ((?x42 (concat (concat (concat (concat ascii_7 ascii_6) ascii_5) ascii_4) ascii_3)))
(let ((?x45 (concat (concat (concat ?x42 ascii_2) ascii_1) ascii_0)))
(let ((?x47 (bvsub ?x45 (_ bv3472328296227680304 64))))
(let ((?x189 (bvadd (bvmul ?x47 (_ bv10 64)) (bvlshr ?x47 (_ bv8 64)))))
(and (distinct ((_ extract 7 0) ?x189) ?x205) true))))))))
(check-sat)
