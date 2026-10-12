# OpenSSL `d6e40568`: BIO hex wrapping

**Scoped public-function verdict: `NOT_EQUIV`.** The optimization changes `BIO_hex_string` from `j = (j + 1) % width; if (!j)` to `if (++j >= width) { j = 0; ... }`. `recover.py` reverses that exact change in the available child file; both recovered files match their historical Git blob IDs (`c453da62...` before, `40c18410...` after).

For a three-byte input `{1,2,3}`, `indent=0`, and `width=-2`, the exact historical function body linked with a memory BIO emits `01:02:\n03` before and `01:\n02:\n03` after. The [native witness](native-witness.log) runs under UBSan and ASan with leak detection disabled for this sandbox. Both calls return success; neither has a sanitizer finding. This is a defined-C public-function output difference for a negative `width`. The function accepts an `int width` and the historical body does not reject this value. If an external caller contract restricts width to positive values, this witness lies outside that narrower contract.

The source-derived step model replaces the unchanged `BIO_printf("\\n")` call with an observed newline flag. [Alive2 finds a counterexample](step-unequal.log) without a width precondition and [proves both directions](step-positive-forward.log) [for the valid positive-width loop invariant](step-positive-backward.log), `width > 0` and `0 <= j < width`. This proves the changed step agrees for every reachable positive-width state, not the whole function through opaque BIO calls. The native witness compares the full public output. No official historical benchmark score was measured.

Run `bash history-eq/c/openssl/d6e40568/verify.sh` from the project root to recheck source hashes, sanitizer witness, and Alive2 results.
