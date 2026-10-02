; benchmark generated from python API
(set-info :status unknown)
(declare-fun np_%key () Bool)
(declare-fun np_%data () Bool)
(assert
 (let (($x24 (forall ((undef!0 (_ BitVec 64)) (undef!1 (_ BitVec 64)) (undef!2 (_ BitVec 64)) (undef!3 (_ BitVec 64)) (undef!4 (_ BitVec 64)) (undef!5 (_ BitVec 64)) (undef!7 (_ BitVec 64)) (undef!6 (_ BitVec 64)) (undef!8 (_ BitVec 64)) (undef!9 (_ BitVec 64)) )(! (let (($x20 (and (and (and (and np_%data np_%key) np_%key) np_%data) np_%key)))
(not (or (not (and np_%data np_%key)) $x20))) :qid k!12))
))
(and $x24)))
(check-sat)
