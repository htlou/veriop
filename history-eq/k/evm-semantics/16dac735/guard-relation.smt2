(set-logic QF_LIA)
(declare-const stack-len Int)
(declare-const n Int)
(assert (<= 0 stack-len))
(assert (<= 1 n))

; Consing an Int adds one word. The unchanged WS[index := word] operation
; extends a stack only when index is outside it (index here is n-1).
(define-fun swap-written-len () Int (ite (<= n stack-len) stack-len n))

; PUSH0, PUSHn, ADD, SUB, AND, LT, GT: same one-word result-size guard.
(push)
(assert (xor (<= (+ stack-len 1) 1024) (<= stack-len 1023)))
(check-sat)
(pop)

; DUP: #stackNeeded(DUP(n)) is n; lookup is a single pushed word.
(push)
(assert (xor (and (<= n stack-len) (<= (+ stack-len 1) 1024))
             (and (<= n stack-len) (<= stack-len 1023))))
(check-sat)
(pop)

; SWAP: #stackNeeded(SWAP(n)) is n+1; its old guard counts W0 : WS.
(push)
(assert (xor (and (<= (+ n 1) (+ stack-len 1))
                  (<= (+ swap-written-len 1) 1024))
             (and (<= n stack-len) (<= stack-len 1023))))
(check-sat)
(pop)
