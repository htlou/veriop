(set-logic QF_LIA)
(declare-const gas Int)
(declare-const sload Int)
(declare-const storeset Int)
(declare-const storereset Int)
(declare-const new Int)
(declare-const curr Int)
(declare-const orig Int)
(declare-const dirty Bool)

; Exact branches of the historical Csstore.new/Csstore.old rules.
(define-fun cost () Int
  (ite dirty
    (ite (or (= curr new) (not (= orig curr))) sload
      (ite (= orig 0) storeset storereset))
    (ite (and (= curr 0) (not (= new 0))) storeset storereset)))
(define-fun covered () Bool
  (and (<= sload gas) (<= storeset gas) (<= storereset gas)))

; The two newly added simplifications may fire only under covered.
(push)
(assert covered)
(assert (< gas cost))
(check-sat)
(pop)
(push)
(assert covered)
(assert (not (<= cost gas)))
(check-sat)
(pop)

; The two new integer-simplification rules preserve truth values.
(declare-const c1 Int)
(declare-const c2 Int)
(declare-const i2 Int)
(declare-const i3 Int)
(push)
(assert (xor (< (- c1 i2) c2) (< (- c1 c2) i2)))
(check-sat)
(pop)
(push)
(assert (xor (<= c1 (- c2 i3)) (<= i3 (- c2 c1))))
(check-sat)
(pop)
