; benchmark generated from python API
(set-info :status unknown)
(declare-fun pair_0_value () (_ BitVec 8))
(declare-fun pair_1_value () (_ BitVec 8))
(declare-fun pair_2_value () (_ BitVec 8))
(declare-fun pair_3_value () (_ BitVec 8))
(assert
 (bvule pair_0_value (_ bv99 8)))
(assert
 (bvule pair_1_value (_ bv99 8)))
(assert
 (bvule pair_2_value (_ bv99 8)))
(assert
 (bvule pair_3_value (_ bv99 8)))
(assert
 (let ((?x267 ((_ zero_extend 56) pair_3_value)))
(let ((?x2123 (bvadd (bvmul ((_ zero_extend 56) pair_0_value) (_ bv1000000 64)) (bvmul ((_ zero_extend 56) pair_1_value) (_ bv10000 64)))))
(let ((?x221 (bvadd (bvadd ?x2123 (bvmul ((_ zero_extend 56) pair_2_value) (_ bv100 64))) ?x267)))
(bvuge ?x221 (_ bv100000000 64))))))
(check-sat)
