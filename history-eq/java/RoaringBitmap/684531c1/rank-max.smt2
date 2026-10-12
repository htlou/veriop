; Source: Util.hybridUnsignedBinarySearch in Git blob
; e776660700808df54a9835d850979bc365d5cf88, called by old ArrayContainer.rank.
; Valid ArrayContainer scope: 0 <= end <= 65536, distinct sorted char values.
; k = 65535. If end>0 and the last element is less than k, the source's
; initial guard returns -end-1. Otherwise the last element equals k and
; every earlier element is less than k.
(set-logic AUFLIA)
(declare-const end Int)
(declare-const low Int)
(declare-const high Int)
(declare-const mid Int)
(declare-const x Int)
(declare-const a (Array Int Int))
(assert (<= 1 end))
(assert (<= end 65536))
(assert (= high (- end 1)))
(assert (<= 0 low))
(assert (<= low high))
(assert (= (select a high) 65535))
(assert (forall ((i Int))
  (=> (and (<= 0 i) (< i high)) (< (select a i) 65535))))

; The Java int sum cannot overflow; >>> 1 is ordinary floor division here.
(push)
(assert (or (< (+ low high) 0) (> (+ low high) 2147483647)))
(check-sat)
(pop)

; In the binary loop, low+32<=high makes middle strictly before the last slot.
(push)
(assert (<= (+ low 32) high))
(assert (= mid (div (+ low high) 2)))
(assert (or (< mid low) (>= mid high)))
(check-sat)
(pop)

; Thus the source can take only the middleValue<k branch.
(push)
(assert (<= (+ low 32) high))
(assert (= mid (div (+ low high) 2)))
(assert (>= (select a mid) 65535))
(check-sat)
(pop)

; That branch advances low and preserves low<=high, proving termination.
(push)
(assert (<= (+ low 32) high))
(assert (= mid (div (+ low high) 2)))
(assert (or (<= (+ mid 1) low) (> (+ mid 1) high)))
(check-sat)
(pop)

; In the final sequential loop, all earlier slots are less than k and the
; final slot equals k. No val>k branch or premature equality is reachable.
(push)
(assert (<= low x))
(assert (< x high))
(assert (>= (select a x) 65535))
(check-sat)
(pop)
(push)
(assert (not (= (select a high) 65535)))
(check-sat)
(pop)

; Old rank converts both binary-search return forms to end. New rank returns
; cardinality=end directly.
(push)
(declare-const answer Int)
(assert (or (= answer high) (= answer (- (- end) 1))))
(assert (not (= (ite (>= answer 0) (+ answer 1) (- (- answer) 1)) end)))
(check-sat)
(pop)
