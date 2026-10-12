module Kuiper.Llama.OpenCL.FastDiv

open FStar.Math.Lemmas
open Kuiper.FlashAttention.FastDiv

let divisor_three (x:nat)
  : Lemma
      (requires (x < pow2 31))
      (ensures (let hi = (x * 1431655766) / pow2 32 in
               let q = (hi + x) / 4 in
               hi + x < pow2 32 /\ q == x / 3 /\ x - q * 3 == x % 3))
  =
    assert_norm (pow2 30 == 1073741824);
    assert_norm (pow2 31 == 2147483648);
    assert_norm (pow2 32 == 4294967296);
    assert_norm (pow2 34 == 17179869184);
    positive_divisor_equal x 3 3;
    pow2_plus 32 2;
    assert (pow2 (31 + 3) == pow2 32 * 4);
    assert ((pow2 (31 + 3) + 2) / 3 == 5726623062);
    assert (5726623062 == pow2 32 + 1431655766);
    assert ((x * 1431655766) / pow2 32 + x ==
            (x * (pow2 32 + 1431655766)) / pow2 32);
    division_multiplication_lemma (x * 5726623062) (pow2 32) 4;
    assert ((x * 5726623062) / (pow2 32 * 4) == x / 3);
    assert ((x * 1431655766) / pow2 32 < pow2 30);
    assert ((x * 1431655766) / pow2 32 + x < pow2 32);
    euclidean_div_axiom x 3
