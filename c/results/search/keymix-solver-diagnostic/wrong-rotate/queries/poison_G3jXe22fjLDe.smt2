; Alive2 compiler optimization refinement query
; More info in "Alive2: Bounded Translation Validation for LLVM", PLDI'21.
(set-info :status unknown)
(declare-fun np_%key () Bool)
(declare-fun np_%data () Bool)
(assert
 (forall ((undef!0 (_ BitVec 64)) (undef!1 (_ BitVec 64)) (undef!2 (_ BitVec 64)) (undef!3 (_ BitVec 64)) (undef!4 (_ BitVec 64)) (undef!5 (_ BitVec 64)) (undef!7 (_ BitVec 64)) (undef!6 (_ BitVec 64)) (undef!8 (_ BitVec 64)) (undef!9 (_ BitVec 64)) )(let (($x23 (and np_%data np_%key)))
(let (($x97 (and $x23 np_%key)))
(let (($x108 (and $x97 np_%data)))
(let (($x112 (and $x108 np_%key)))
(let (($x111 (or (not $x23) $x112)))
(not $x111)))))))
)
(check-sat)
