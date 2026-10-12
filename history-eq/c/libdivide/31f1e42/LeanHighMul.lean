import Std

/- Arithmetic kernel of the portable `libdivide_mullhi_u64` fallback.
   This proves the split-product carry is symmetric; it is not yet a proof
   that the compiled C function implements this Nat model without overflow. -/
namespace LibdivideHighMul

private def base : Nat := 4294967296

private def carry (cross1 cross2 lowCarry high : Nat) : Nat :=
  high + (cross1 + lowCarry) / base +
    (((cross1 + lowCarry) % base + cross2) / base)

private theorem carry_swap (a b c d : Nat) :
    carry a b c d = carry b a c d := by
  unfold carry base
  omega

private def fallback (x0 x1 y0 y1 : Nat) : Nat :=
  carry (x1 * y0) (x0 * y1) ((x0 * y0) / base) (x1 * y1)

theorem fallback_symmetric (x0 x1 y0 y1 : Nat) :
    fallback x0 x1 y0 y1 = fallback y0 y1 x0 x1 := by
  unfold fallback
  simpa only [Nat.mul_comm x0 y0, Nat.mul_comm x1 y1,
    Nat.mul_comm x1 y0, Nat.mul_comm x0 y1] using
    carry_swap (x1 * y0) (x0 * y1) ((x0 * y0) / base) (x1 * y1)

/- `cFallback` spells out the unsigned C machine operations: every uint64_t
   addition/multiplication wraps modulo 2^64; right shift by 32 is division
   by 2^32; masking with 0xffffffff is remainder modulo 2^32. -/
private def modulus : Nat := 18446744073709551616

private def cFallback (x0 x1 y0 y1 : Nat) : Nat :=
  let lowCarry := ((x0 * y0) % modulus) / base
  let cross := (x1 * y0 + lowCarry) % modulus
  let sum := (cross % base + x0 * y1) % modulus
  (x1 * y1 + cross / base + sum / base) % modulus

theorem cFallback_eq_fallback (x0 x1 y0 y1 : Nat)
    (hx0 : x0 < base) (hx1 : x1 < base)
    (hy0 : y0 < base) (hy1 : y1 < base) :
    cFallback x0 x1 y0 y1 = fallback x0 x1 y0 y1 := by
  have mulBound (a b : Nat) (ha : a < base) (hb : b < base) :
      a * b ≤ 18446744065119617025 := by
    have h := Nat.mul_le_mul (Nat.le_pred_of_lt ha) (Nat.le_pred_of_lt hb)
    simpa [base] using h
  have p00 := mulBound x0 y0 hx0 hy0
  have p10 := mulBound x1 y0 hx1 hy0
  have p01 := mulBound x0 y1 hx0 hy1
  have p11 := mulBound x1 y1 hx1 hy1
  simp only [base] at hx0 hx1 hy0 hy1
  have hLow : x0 * y0 < modulus := by
    simp only [modulus]
    omega
  have hCross : x1 * y0 + (x0 * y0) / base < modulus := by
    simp only [base, modulus]
    omega
  have hSum : (x1 * y0 + (x0 * y0) / base) % base + x0 * y1 < modulus := by
    simp only [base, modulus]
    omega
  have hResult : x1 * y1 + (x1 * y0 + (x0 * y0) / base) / base +
      ((x1 * y0 + (x0 * y0) / base) % base + x0 * y1) / base < modulus := by
    simp only [base, modulus]
    omega
  simp [cFallback, fallback, carry, Nat.mod_eq_of_lt hLow,
    Nat.mod_eq_of_lt hCross, Nat.mod_eq_of_lt hSum,
    Nat.mod_eq_of_lt hResult]

theorem cFallback_symmetric (x0 x1 y0 y1 : Nat)
    (hx0 : x0 < base) (hx1 : x1 < base)
    (hy0 : y0 < base) (hy1 : y1 < base) :
    cFallback x0 x1 y0 y1 = cFallback y0 y1 x0 x1 := by
  rw [cFallback_eq_fallback x0 x1 y0 y1 hx0 hx1 hy0 hy1,
      cFallback_eq_fallback y0 y1 x0 x1 hy0 hy1 hx0 hx1]
  exact fallback_symmetric x0 x1 y0 y1

/- Signed fallback's arithmetic kernel. `Int.ediv` models arithmetic right
   shift and `Int.emod` models the low 32 bits of a signed two's-complement
   integer, provided the C intermediate expressions do not overflow. -/
private def signedBase : Int := 4294967296

private def signedCarry (a b c d : Int) : Int :=
  d + (a + c) / signedBase + (((a + c) % signedBase + b) / signedBase)

private theorem signedCarry_swap (a b c d : Int) :
    signedCarry a b c d = signedCarry b a c d := by
  unfold signedCarry signedBase
  omega

private def signedFallback (x0 x1 y0 y1 : Int) : Int :=
  signedCarry (x1 * y0) (x0 * y1) ((x0 * y0) / signedBase) (x1 * y1)

theorem signedFallback_symmetric (x0 x1 y0 y1 : Int) :
    signedFallback x0 x1 y0 y1 = signedFallback y0 y1 x0 x1 := by
  unfold signedFallback
  simpa only [Int.mul_comm x0 y0, Int.mul_comm x1 y1,
    Int.mul_comm x1 y0, Int.mul_comm x0 y1] using
    signedCarry_swap (x1 * y0) (x0 * y1) ((x0 * y0) / signedBase) (x1 * y1)

private theorem cross_bound (hi lo : Int)
    (hhi0 : -2147483648 ≤ hi) (hhi1 : hi < 2147483648)
    (hlo0 : 0 ≤ lo) (hlo1 : lo < 4294967296) :
    -9223372034707292160 ≤ hi * lo ∧
      hi * lo ≤ 9223372030412324865 := by
  have upper1 : hi * lo ≤ 2147483647 * lo :=
    Int.mul_le_mul_of_nonneg_right (by omega) hlo0
  have upper2 : 2147483647 * lo ≤ 2147483647 * 4294967295 :=
    Int.mul_le_mul_of_nonneg_left (by omega) (by omega)
  have lower1 : -2147483648 * lo ≤ hi * lo :=
    Int.mul_le_mul_of_nonneg_right hhi0 hlo0
  have lower2 : -2147483648 * 4294967295 ≤ -2147483648 * lo :=
    Int.mul_le_mul_of_nonpos_left (by omega) (by omega)
  omega

private theorem high_product_bound (x y : Int)
    (hx0 : -2147483648 ≤ x) (hx1 : x < 2147483648)
    (hy0 : -2147483648 ≤ y) (hy1 : y < 2147483648) :
    -4611686018427387904 ≤ x * y ∧ x * y ≤ 4611686018427387904 := by
  have ax : x.natAbs ≤ 2147483648 := by omega
  have ay : y.natAbs ≤ 2147483648 := by omega
  have upper := Int.mul_le_mul_of_natAbs_le ax ay
  have lower := Int.mul_le_mul_of_natAbs_le (x := -x) (y := y) (by simpa using ax) ay
  simp only [Int.neg_mul] at lower
  omega

/- Every signed 64-bit intermediate in the portable C fallback fits int64_t.
   c is the uint32_t result of libdivide_mullhi_u32(x0,y0). This is a
   source-arithmetic obligation, not a formal C/LLVM translation proof. -/
theorem signed_fallback_no_overflow (x0 x1 y0 y1 c : Int)
    (hx0l : 0 ≤ x0) (hx0u : x0 < 4294967296)
    (hy0l : 0 ≤ y0) (hy0u : y0 < 4294967296)
    (hx1l : -2147483648 ≤ x1) (hx1u : x1 < 2147483648)
    (hy1l : -2147483648 ≤ y1) (hy1u : y1 < 2147483648)
    (hcl : 0 ≤ c) (hcu : c < 4294967296) :
    let t := x1 * y0 + c;
    let w := x0 * y1 + t % 4294967296;
    let p := x1 * y1;
    -9223372036854775808 ≤ t ∧ t ≤ 9223372036854775807 ∧
    -9223372036854775808 ≤ w ∧ w ≤ 9223372036854775807 ∧
    -9223372036854775808 ≤ p ∧ p ≤ 9223372036854775807 ∧
    -9223372036854775808 ≤ p + t / 4294967296 ∧
    p + t / 4294967296 ≤ 9223372036854775807 ∧
    -9223372036854775808 ≤ p + t / 4294967296 + w / 4294967296 ∧
    p + t / 4294967296 + w / 4294967296 ≤ 9223372036854775807 := by
  have hxy := cross_bound x1 y0 hx1l hx1u hy0l hy0u
  have hyx := cross_bound y1 x0 hy1l hy1u hx0l hx0u
  have hhi := high_product_bound x1 y1 hx1l hx1u hy1l hy1u
  have hrem0 : 0 ≤ (x1 * y0 + c) % 4294967296 :=
    Int.emod_nonneg _ (by omega)
  have hrem1 : (x1 * y0 + c) % 4294967296 < 4294967296 :=
    Int.emod_lt_of_pos _ (by omega)
  simp only
  rw [Int.mul_comm x0 y1]
  omega

end LibdivideHighMul

#print axioms LibdivideHighMul.cFallback_symmetric
#print axioms LibdivideHighMul.signedFallback_symmetric
#print axioms LibdivideHighMul.signed_fallback_no_overflow
