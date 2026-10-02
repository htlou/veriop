; benchmark generated from python API
(set-info :status unknown)
(declare-fun np_%key () Bool)
(declare-fun isundef_%key () (_ BitVec 1))
(declare-fun np_%data () Bool)
(declare-fun isundef_%data () (_ BitVec 1))
(assert
 (let (($x69 (= isundef_%key (_ bv0 1))))
(let (($x68 (= isundef_%data (_ bv0 1))))
(or (and $x68 np_%data $x69 np_%key)))))
(check-sat)
