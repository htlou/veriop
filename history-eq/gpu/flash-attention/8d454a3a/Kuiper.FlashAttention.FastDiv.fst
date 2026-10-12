module Kuiper.FlashAttention.FastDiv

open FStar.Math.Lemmas

let magic_div_equal (x:nat) (d:pos) (scale:pos) (magic:nat)
  : Lemma
      (requires (x < pow2 31 /\
                 scale >= pow2 31 * d /\
                 scale <= magic * d /\
                 magic * d < scale + d))
      (ensures ((x * magic) / scale == x / d))
  =
    let q = x / d in
    let r = x - q * d in
    euclidean_div_axiom x d;
    assert (0 <= r /\ r < d);
    assert (q * d <= x);
    assert (x * scale <= x * magic * d);
    assert (q * scale <= x * magic);
    assert (magic * d - scale < d);
    assert (x * (magic * d - scale) < scale);
    assert (r * scale + x * (magic * d - scale) < d * scale);
    assert (x * magic * d < (q + 1) * d * scale);
    assert (x * magic < (q + 1) * scale);
    assert (q * scale <= x * magic /\ x * magic < (q + 1) * scale);
    euclidean_div_axiom (x * magic) scale;
    assert ((x * magic) / scale == q)

let ceil_magic_bounds (d:pos) (scale:pos)
  : Lemma
      (ensures (let magic = (scale + d - 1) / d in
               scale <= magic * d /\ magic * d < scale + d))
  =
    euclidean_div_axiom (scale + d - 1) d;
    let magic = (scale + d - 1) / d in
    assert (magic * d <= scale + d - 1);
    assert (scale + d - 1 < (magic + 1) * d);
    assert (scale <= magic * d)

let fast_div_equal (x:nat) (d:pos) (scale:pos)
  : Lemma
      (requires (x < pow2 31 /\ scale >= pow2 31 * d))
      (ensures ((x * ((scale + d - 1) / d)) / scale == x / d))
  =
    ceil_magic_bounds d scale;
    magic_div_equal x d scale ((scale + d - 1) / d)

let pow2_scale_bound (d:pos) (k:nat)
  : Lemma
      (requires (d <= pow2 k))
      (ensures (pow2 (31 + k) >= pow2 31 * d))
  =
    pow2_plus 31 k;
    lemma_mult_le_left (pow2 31) d (pow2 k)

let positive_divisor_equal (x:nat) (d:pos) (k:nat)
  : Lemma
      (requires (x < pow2 31 /\ d <= pow2 k))
      (ensures ((x * ((pow2 (31 + k) + d - 1) / d)) / pow2 (31 + k) == x / d))
  =
    pow2_scale_bound d k;
    fast_div_equal x d (pow2 (31 + k))

let mulhi_shift_equal (x:nat) (d:pos) (k:pos)
  : Lemma
      (requires (x < pow2 31 /\ d <= pow2 k))
      (ensures (let magic = (pow2 (31 + k) + d - 1) / d in
               ((x * magic) / pow2 32) / pow2 (k - 1) == x / d))
  =
    positive_divisor_equal x d k;
    pow2_plus 32 (k - 1);
    let magic = (pow2 (31 + k) + d - 1) / d in
    assert (pow2 (31 + k) == pow2 32 * pow2 (k - 1));
    division_multiplication_lemma (x * magic) (pow2 32) (pow2 (k - 1))

let machine_bounds (x:nat) (d:pos) (k:pos)
  : Lemma
      (requires (x < pow2 31 /\ d < pow2 31 /\
                 pow2 (k - 1) < d /\ d <= pow2 k))
      (ensures (let magic = (pow2 (31 + k) + d - 1) / d in
               magic < pow2 32 /\ x * magic < pow2 63))
  =
    pow2_plus 31 k;
    pow2_plus 31 1;
    pow2_plus 31 32;
    pow2_double_mult (k - 1);
    assert (pow2 k == 2 * pow2 (k - 1));
    assert (pow2 k <= 2 * (d - 1));
    assert (pow2 (31 + k) <= pow2 31 * (2 * d - 2));
    assert (pow2 (31 + k) + d - 1 < pow2 32 * d);
    let magic = (pow2 (31 + k) + d - 1) / d in
    euclidean_div_axiom (pow2 (31 + k) + d - 1) d;
    assert (magic * d <= pow2 (31 + k) + d - 1);
    assert (magic < pow2 32);
    assert (x * magic < pow2 63)

let scheduler_divmod_equal (x:nat) (d:pos) (k:pos)
  : Lemma
      (requires (x < pow2 31 /\ d > 1 /\ d < pow2 31 /\
                 k <= 31 /\ pow2 (k - 1) < d /\ d <= pow2 k))
      (ensures (let magic = (pow2 (31 + k) + d - 1) / d in
               let new_q = ((x * magic) / pow2 32) / pow2 (k - 1) in
               magic < pow2 32 /\ x * magic < pow2 63 /\
               new_q == x / d /\
               x - new_q * d == x % d))
  =
    machine_bounds x d k;
    mulhi_shift_equal x d k;
    euclidean_div_axiom x d

let divisor_one_equal (x:nat)
  : Lemma (x / 1 == x /\ x - x * 1 == x % 1)
  = euclidean_div_axiom x 1
