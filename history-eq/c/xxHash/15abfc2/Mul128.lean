-- Arithmetic relation for the exact XXH_mult64to128 bodies in commit 15abfc22.
-- The four limbs a,b,c,d are the low/high 32-bit halves of lhs and rhs.

private def base : Nat := 4294967296
private def maxprod : Nat := 18446744065119617025

private theorem expand_mul (B a b c d : Nat) :
    (a + B * b) * (c + B * d) =
      a * c + B * (b * c + a * d) + B * B * (b * d) := by
  simp only [Nat.add_mul, Nat.mul_add]
  ac_rfl

private theorem split_product (p00 p10 p01 p11 : Nat) :
    let cross := p00 / base + p10 % base + p01
    let high := p10 / base + cross / base + p11
    let low := cross % base * base + p00 % base
    (p00 + base * (p10 + p01) + base * base * p11) / (base * base) = high ∧
    (p00 + base * (p10 + p01) + base * base * p11) % (base * base) = low := by
  simp only [base]
  omega

private theorem product_bound (a b : Nat) (ha : a < base) (hb : b < base) :
    a * b ≤ maxprod := by
  have ha' : a ≤ 4294967295 := by simp [base] at ha; omega
  have hb' : b ≤ 4294967295 := by simp [base] at hb; omega
  have h := Nat.mul_le_mul ha' hb'
  simpa [maxprod] using h

private theorem bounded_intermediates (p00 p10 p01 p11 : Nat)
    (h00 : p00 ≤ maxprod) (h10 : p10 ≤ maxprod)
    (h01 : p01 ≤ maxprod) (h11 : p11 ≤ maxprod) :
    let cross := p00 / base + p10 % base + p01
    let high := p10 / base + cross / base + p11
    let low := cross % base * base + p00 % base
    cross < base * base ∧ high < base * base ∧ low < base * base := by
  simp only [base, maxprod] at *
  omega

private theorem lower_or_eq_add (cross p00 : Nat) :
    (cross % base * base ||| p00 % base) =
      cross % base * base + p00 % base := by
  have h : p00 % base < 2 ^ 32 := by
    have hb : 0 < base := by decide
    simpa [base] using Nat.mod_lt p00 hb
  have hor := Nat.two_pow_add_eq_or_of_lt (i := 32) h (cross % base)
  simpa [base, Nat.mul_comm] using hor.symm

theorem portable_and_umulh_agree (a b c d : Nat)
    (ha : a < base) (hb : b < base)
    (hc : c < base) (hd : d < base) :
    let p00 := a * c
    let p10 := b * c
    let p01 := a * d
    let p11 := b * d
    let cross := p00 / base + p10 % base + p01
    let high := p10 / base + cross / base + p11
    let low := (cross % base * base ||| p00 % base)
    let full := (a + base * b) * (c + base * d)
    full / (base * base) = high ∧ full % (base * base) = low ∧
      cross < base * base ∧ high < base * base ∧ low < base * base := by
  dsimp
  rw [expand_mul]
  have hsplit := split_product (a * c) (b * c) (a * d) (b * d)
  have hbound := bounded_intermediates (a * c) (b * c) (a * d) (b * d)
    (product_bound a c ha hc) (product_bound b c hb hc)
    (product_bound a d ha hd) (product_bound b d hb hd)
  have hlow := hsplit.2
  rw [lower_or_eq_add] at *
  exact ⟨hsplit.1, hlow, hbound.1, hbound.2.1, hbound.2.2⟩

theorem arbitrary_u64_operands (lhs rhs : Nat)
    (hlhs : lhs < base * base) (hrhs : rhs < base * base) :
    let a := lhs % base
    let b := lhs / base
    let c := rhs % base
    let d := rhs / base
    let p00 := a * c
    let p10 := b * c
    let p01 := a * d
    let p11 := b * d
    let cross := p00 / base + p10 % base + p01
    let high := p10 / base + cross / base + p11
    let low := (cross % base * base ||| p00 % base)
    (lhs * rhs) / (base * base) = high ∧
    (lhs * rhs) % (base * base) = low ∧
      cross < base * base ∧ high < base * base ∧ low < base * base := by
  have ha : lhs % base < base := Nat.mod_lt lhs (by decide)
  have hc : rhs % base < base := Nat.mod_lt rhs (by decide)
  have hb : lhs / base < base := by simp [base] at *; omega
  have hd : rhs / base < base := by simp [base] at *; omega
  have hleft : lhs = lhs % base + base * (lhs / base) := by simp [base]; omega
  have hright : rhs = rhs % base + base * (rhs / base) := by simp [base]; omega
  have h := portable_and_umulh_agree (lhs % base) (lhs / base)
    (rhs % base) (rhs / base) ha hb hc hd
  rw [← hleft, ← hright] at h
  exact h

#print axioms arbitrary_u64_operands
