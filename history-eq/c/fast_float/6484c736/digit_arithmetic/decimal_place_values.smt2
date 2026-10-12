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
 (let ((?x21 (bvsub ascii_7 (_ bv48 8))))
(let ((?x128 (bv2int ?x21)))
(let ((?x20 (bvsub ascii_6 (_ bv48 8))))
(let ((?x68 (bv2int ?x20)))
(let ((?x19 (bvsub ascii_5 (_ bv48 8))))
(let ((?x177 (bv2int ?x19)))
(let ((?x18 (bvsub ascii_4 (_ bv48 8))))
(let ((?x298 (bv2int ?x18)))
(let ((?x17 (bvsub ascii_3 (_ bv48 8))))
(let ((?x210 (bv2int ?x17)))
(let ((?x16 (bvsub ascii_2 (_ bv48 8))))
(let ((?x117 (bv2int ?x16)))
(let ((?x15 (bvsub ascii_1 (_ bv48 8))))
(let ((?x106 (bv2int ?x15)))
(let ((?x606 (* (+ (* (+ 0 (bv2int (bvsub ascii_0 (_ bv48 8)))) 10) ?x106) 10)))
(let ((?x1277 (+ (* (+ (* (+ (* (+ ?x606 ?x117) 10) ?x210) 10) ?x298) 10) ?x177)))
(let ((?x268 (+ (* (+ (* ?x1277 10) ?x68) 10) ?x128)))
(let ((?x1071 (+ 0 (* (+ (* 10 (bv2int (bvsub ascii_0 (_ bv48 8)))) ?x106) 1000000))))
(let ((?x583 (+ (+ ?x1071 (* (+ (* 10 ?x117) ?x210) 10000)) (* (+ (* 10 ?x298) ?x177) 100))))
(let ((?x1507 (+ ?x583 (* (+ (* 10 ?x68) ?x128) 1))))
(and (distinct ?x1507 ?x268) true))))))))))))))))))))))
(check-sat)
