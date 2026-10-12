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
 (let ((?x163 ((_ zero_extend 56) pair_1_value)))
(let ((?x702 (bvadd (bvmul ((_ zero_extend 56) pair_0_value) (_ bv100 64)) ?x163)))
(bvuge ?x702 (_ bv4294967296 64)))))
(check-sat)
