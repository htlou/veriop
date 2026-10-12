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
 (let ((?x14 (bvsub ascii_0 (_ bv48 8))))
(let ((?x15 (bvsub ascii_1 (_ bv48 8))))
(let ((?x16 (bvsub ascii_2 (_ bv48 8))))
(let ((?x17 (bvsub ascii_3 (_ bv48 8))))
(let ((?x18 (bvsub ascii_4 (_ bv48 8))))
(let ((?x19 (bvsub ascii_5 (_ bv48 8))))
(let ((?x50 (concat (concat (concat (bvsub ascii_7 (_ bv48 8)) (bvsub ascii_6 (_ bv48 8))) ?x19) ?x18)))
(let ((?x42 (concat (concat (concat (concat ascii_7 ascii_6) ascii_5) ascii_4) ascii_3)))
(let ((?x45 (concat (concat (concat ?x42 ascii_2) ascii_1) ascii_0)))
(let ((?x47 (bvsub ?x45 (_ bv3472328296227680304 64))))
(and (distinct ?x47 (concat (concat (concat (concat ?x50 ?x17) ?x16) ?x15) ?x14)) true))))))))))))
(check-sat)
