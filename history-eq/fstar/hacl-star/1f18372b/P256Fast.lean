import Lean

-- Historical F* `pow`; `Nat` exponentiation is proved equal below.
private def slowPow (a b : Nat) : Nat :=
  if b = 0 then 1 else a * slowPow a (b - 1)
termination_by b

private theorem slowPow_eq_pow (a b : Nat) : slowPow a b = a ^ b := by
  induction b with
  | zero => simp [slowPow]
  | succ b ih =>
    rw [slowPow, if_neg (by omega : b + 1 ≠ 0)]
    have hs : b + 1 - 1 = b := by omega
    rw [hs, ih, Nat.pow_succ, Nat.mul_comm]

-- Historical F* `exp`/`fmul` equations on positive exponents and reduced bases.
-- The zero branch is unreachable in `p256_relation` and its recursive calls.
private def fast (n a b : Nat) : Nat :=
  if b = 0 then 0
  else if b = 1 then a
  else if b % 2 = 0 then fast n (a * a % n) (b / 2)
  else a * fast n (a * a % n) (b / 2) % n
termination_by b
decreasing_by
  all_goals omega

private theorem fast_correct (n a b : Nat) (hn : 0 < n) (ha : a < n) (hb : 0 < b) :
    fast n a b = a ^ b % n := by
  induction b using Nat.strongRecOn generalizing a with
  | ind b ih =>
    by_cases h0 : b = 0
    · subst b; omega
    by_cases h1 : b = 1
    · subst b; simp [fast, Nat.mod_eq_of_lt ha]
    have hb : 1 < b := by omega
    have hlt : b / 2 < b := Nat.div_lt_self (by omega) (by omega)
    have ih' := ih (b / 2) hlt (a * a % n) (Nat.mod_lt _ hn) (by omega)
    by_cases heven : b % 2 = 0
    · have hbdiv : b = 2 * (b / 2) := by omega
      rw [fast, if_neg h0, if_neg h1, if_pos heven, ih']
      rw [← Nat.pow_mod (a * a) (b / 2) n]
      rw [hbdiv, Nat.pow_mul]
      simp [Nat.pow_two]
    · have hodd : b = 2 * (b / 2) + 1 := by omega
      rw [fast, if_neg h0, if_neg h1, if_neg heven, ih']
      rw [← Nat.pow_mod (a * a) (b / 2) n]
      rw [Nat.mul_mod_mod]
      have hpow : a ^ b = a * (a * a) ^ (b / 2) := by
        calc
          a ^ b = a ^ (2 * (b / 2) + 1) := congrArg (fun k => a ^ k) hodd
          _ = a * (a * a) ^ (b / 2) := by simp [Nat.pow_add, Nat.pow_mul, Nat.pow_two, Nat.mul_comm]
      rw [hpow]

private theorem p256_relation (n x : Nat) (hn : 3 < n) :
    slowPow x (n - 2) % n = fast n (x % n) (n - 2) := by
  rw [slowPow_eq_pow, fast_correct n (x % n) (n - 2) (by omega) (Nat.mod_lt _ (by omega)) (by omega)]
  exact Nat.pow_mod x (n - 2) n

#print axioms p256_relation
