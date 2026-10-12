# Static metadata for the rust-base64 slice (funnel, rejections, perf-commit descriptions).
FUNNEL = {
    "commits_touching_scope": 240,   # non-merge commits touching src/ excl. src/**/*tests*.rs, src/tests.rs, src/bin, src/main.rs
    "keyword_candidates": 42,
    "manual_scan_additions": 9,
    "perf_commits": 25,
}

REJECTED = [
    # keyword candidates
    ("d3831cf", "Followups to SIMD work", "keyword", "SIMD follow-up: default feature flip (Cargo.toml), MSRV/CI/tests; src/ changes are a NEON unaligned-store bug fix, removal of duplicated debug_asserts and comments - no perf intent in scope"),
    ("3d2a93e", "Improve InvalidLastSymbol error", "keyword", "error-reporting improvement, no perf intent"),
    ("a25be06", "Simplify leftover output writes", "keyword", "refactor; message explicitly says 'No perf impact'"),
    ("5466e43", "Minor doc improvements", "keyword", "docs only"),
    ("04451fb", "Allow `cargo test` to complete under any set of features.", "keyword", "build/test feature gating"),
    ("96b29d8", "Improve comments and increase test paranoia.", "keyword", "comments + debug assertion"),
    ("ac10136", "Improve docs for using custom alphabets", "keyword", "docs + clippy"),
    ("61b12a4", "Simplify chunk_encoder", "keyword", "stated goal is simplification (use chunks(), drop max_input_length); benchmarks quoted are mixed and only show no clear regression"),
    ("fa47981", "Switch to non-overflowing decoded length formula", "keyword", "overflow-correctness fix; 'No change to benchmarks'"),
    ("538e6d9", "Rename FastPortable to GeneralPurpose", "keyword", "rename"),
    ("3155ca7", "Various cleanups", "keyword", "cleanups (dead code, comments, error formatting)"),
    ("ce8bb84", "Clean up FastPortableConfig creation", "keyword", "API/config cleanup"),
    ("8b1ae22", "Rename StrWrite to StrConsumer", "keyword", "rename"),
    ("12dcfb8", "Re-implement DecoderReader.", "keyword", "correctness fix for short reads, no perf intent"),
    ("e3ed53b", "Forbid, instead of just denying, unsafe. Addresses #100", "keyword", "lint attribute only"),
    ("9ff4959", "Deny unsafe code, and add to release notes.", "keyword", "lint attribute only"),
    ("ed895d6", "Use ChunkedEncoder for encoding into Strings.", "keyword", "safety change (remove unsafe String access) with a stated performance *cost*"),
    ("5a09b31", "Add basic stream encode benchmark", "keyword", "benchmark harness + Debug/PartialEq derive + assert"),
    ("9a6b19e", "Add encode slice benchmarks, plus a test.", "keyword", "benchmark + test"),
    ("0d3b7ab", "Tweak decoding to never write more bytes that will then be discarded.", "keyword", "correctness/enabler for slice decoding; message states a perf cost, perf tuning deferred"),
    ("cefe67e", "Avoid an `unsafe` by handing encoded chunks off as byte slices, ...", "keyword", "safety (remove unsafe)"),
    ("f4747d4", "Add internal ChunkedEncoder.", "keyword", "new feature (Display wrapper); stated to be ~20% slower"),
    ("b698641", "Use a const for number of blocks per encode fast loop", "keyword", "replaces a local by a named const; no perf claim, identical code"),
    ("cab488a", "Minimize unsafe use on the basic encode code path.", "keyword", "safety change at a stated 30% perf cost"),
    ("0fc917e", "Tweak some var names and comments for clarity. ...", "keyword", "renames/comments/tests/bench profile"),
    ("1ba394c", "Add tests around encoding/decoding into an existing buffer, ...", "keyword", "tests + comments"),
    # manual-scan candidates looked at and rejected
    ("fd1e08c", "Switch to generated encode tables", "manual-scan", "moves the encode tables into a generated tables.rs; no perf claim"),
    ("d4c7744", "Collapse one layer of helper function, ...", "manual-scan", "refactor (inline a helper) + test, no perf claim"),
    ("c2d73e3", "Delegate input partitioning to `chunks()`", "manual-scan", "refactor of stream encoder, no perf claim"),
    ("d175648", "Use add_padding now that it uses encoded len", "manual-scan", "follow-up refactor of ChunkedEncoder after 9687b03, no perf claim"),
    ("0f981bd", "Add decode_slice_unchecked ...", "manual-scan", "new API (restores precise-size slice decoding); functionality, not perf"),
    ("59048ff", "Make encoded_len const", "manual-scan", "const fn for usability (#251)"),
    ("b07e0cc", "Return errors instead of panicking on _slice methods", "manual-scan", "API/error-handling change"),
    ("155df11", "Update lib.rs", "manual-scan", "error type change (issue 7)"),
]

COMMITS = {
    "ce2281b": dict(sel="keyword", ev="'Add SIMD-accelerated base64 ...' with instruction-count/wall-clock tables (3.7x-7.1x); 'the scalar encode tail is factored out so it is not monomorphized per engine'",
                    summary="Adds AVX2/NEON SIMD engines (unsafe, core::arch intrinsics, raw-pointer loads/stores) and refactors GeneralPurpose internal_encode/internal_decode into encode_helper/decode_helper with a no-op SIMD-prefix closure and a factored-out encode_scalar_tail."),
    "a8a60f4": dict(sel="keyword", ev="'Rearrange main decoding loops to handle chunks of 32 bytes at a time, then 4 bytes ... Moderate speed gains of around 5-10%.'",
                    summary="Restructures GeneralPurpose decode_helper (32-byte chunks_exact loop + 4-byte loop) and shrinks decode_suffix to 0-4 bytes; also changes the public error type (InvalidLength -> InvalidLength(usize)) and error precision."),
    "9979cc3": dict(sel="keyword", ev="'~6% speedup on decode_slice/3'",
                    summary="decode_suffix keeps leftover morsels in a [u8; 8] array and ORs them into a u64 afterwards (two-way split for ILP) instead of shifting into a u64 inside the loop; leftover byte count computed arithmetically instead of a match."),
    "d021c39": dict(sel="keyword", ev="subject 'Optimize generic functions' (moves generic bodies into non-AsRef-generic inner fns: less monomorphized code) + #[inline]",
                    summary="Engine trait default methods (encode, encode_string, encode_slice, decode, decode_vec, decode_slice, decode_slice_unchecked) delegate to nested `fn inner<E: Engine + ?Sized>` helpers."),
    "9687b03": dict(sel="keyword", ev="'Simpler arithmetic offers a small speedup on short inputs.'",
                    summary="add_padding takes the unpadded *encoded* length and computes (4 - n%4)%4 instead of (3 - input_len%3)%3; callers encode_with_padding and ChunkedEncoder pass b64_bytes_written."),
    "7509b25": dict(sel="keyword", ev="'This restores some of the performance lost by safely writing to Strings, especially for very short inputs.'",
                    summary="encode_config allocates vec![0; n], encodes with encode_config_slice and converts with String::from_utf8 instead of String::with_capacity + encode_config_buf."),
    "fa6a11f": dict(sel="manual-scan", ev="'Both encode_config and encode_config_slice called encoded_size resulting in encoded_size being called twice. This commit ... saving one call to encoded_size.'",
                    summary="encode_config calls encode_with_padding directly instead of encode_config_slice."),
    "5c043f9": dict(sel="manual-scan", ev="subject 'decode vec size -- don't oversize the vector' (memory)",
                    summary="decode_engine starts from Vec::new() instead of Vec::with_capacity(len*4/3) (decode_engine_vec reserves the exact estimate)."),
    "0113a05": dict(sel="keyword", ev="'nice speedups (5-11%) on medium and large sizes ... decode_config_slice is a big win ... Logic for when the fast decode logic could be used was tightened to allow using them on shorter but still legal inputs.'",
                    summary="Splits decode_config_buf into a slice-based helper, adds decode_config_slice, changes fast-loop entry conditions."),
    "3e49afe": dict(sel="keyword", ev="'we get 5-10% perf wins on larger decodes, and a few are now hitting 2G/s'",
                    summary="decode_config_buf: all writes via a slice instead of Vec functions; reworked size/index calculations."),
    "154103e": dict(sel="keyword", ev="subject 'Optimize decode performance. Fixes #30.'",
                    summary="Rewrite of decode_config_buf main loop (u64 chunks, unrolled, fewer checks)."),
    "eeb9f5c": dict(sel="keyword", ev="'Help the optimizer by making some intermediate slices. Hand unroll the main encode loop 4x.'",
                    summary="encode_to_slice: fast loop unrolled 4x (32 output bytes per iteration written individually through an intermediate slice) instead of one BigEndian::write_u64 per 6 input bytes; remainder loop uses intermediate slices."),
    "f775196": dict(sel="keyword", ev="'Rewrite line wrapping to use a linear-time algo. Encoded bytes are moved from the end to the front so each byte is only moved once.'",
                    summary="New line_wrap module (linear-time in-place wrapping, line_wrap_parameters) replacing quadratic insertion in encode_config_buf; encoding reorganised around an output slice."),
    "901eca8": dict(sel="keyword", ev="subject 'Speed up encoding by reading a u64 at a time'",
                    summary="encode_mode_buf fast loop reads a big-endian u64 (byteorder) per 6 input bytes."),
    "5409ef8": dict(sel="keyword", ev="'Like the equivalent option for encoding, this gains about 15% on benchmarks'",
                    summary="Adds decode_mode_buf (decode into a caller-supplied Vec); decode_mode delegates to it."),
    "b681bb6": dict(sel="keyword", ev="'Switch to lookup tables for decoding. This brings big speedups: over 2x at 100 byte inputs to 6x by 3KiB'",
                    summary="decode_mode uses 256-entry decode tables; as a stated consequence, internal '=' padding is now rejected instead of silently ignored."),
    "99603c1": dict(sel="keyword", ev="'Support encoding into an existing buffer. Benchmarks show 15-30% speedup.'",
                    summary="Adds encode_mode_buf writing into a String via unsafe as_mut_vec; encode_mode delegates to it with String::with_capacity."),
    "61ddf26": dict(sel="keyword", ev="'Avoid indexing while iterator 1. This tends to be slower.'",
                    summary="decode_ws uses extend(bytes().filter(...)) and decode_mode iterates input.bytes().enumerate() instead of indexing."),
    "f977b8e": dict(sel="manual-scan", ev="'Make encoded_size() calculation precisely correct to save an allocation here or there'",
                    summary="Private encoded_size (capacity hint for String::with_capacity/reserve in encode_mode/encode_mode_buf) now returns the exact padded length."),
    "3c9bc2b": dict(sel="manual-scan", ev="'Move error return outside of loop for another 10%'",
                    summary="decode_mode_buf fast loop breaks out on an invalid morsel and returns the error after the loop."),
    "87d62a9": dict(sel="manual-scan", ev="Jan-2017 decode-speed series ('... for another 10%' in the next commit); reading a whole u64 chunk is a classic perf idiom",
                    summary="decode_mode_buf reads each 8-byte chunk via BigEndian::read_u64 and extracts morsels by shifting."),
    "f3c8891": dict(sel="manual-scan", ev="Jan-2017 decode-speed series; writes through a pre-resized mutable slice instead of Vec pushes",
                    summary="decode_mode_buf resizes the Vec once and writes 8-byte big-endian words into a mutable slice, truncating at the end."),
    "4d6d81a": dict(sel="manual-scan", ev="'Main decode loop looking more like aklomp's' (aklomp/base64 = fast SIMD/scalar base64 library); starts the Jan-2017 decode-speed series",
                    summary="decode_mode_buf fast loop processes 8-byte chunks into a u64 accumulator (byteorder) instead of quads."),
    "8361c1e": dict(sel="manual-scan", ev="Jan-2017 decode-speed series; one write_u64 instead of six Vec::push calls",
                    summary="decode_mode_buf writes the 6 decoded bytes with one write_u64 + truncate instead of 6 pushes."),
    "dfb2864": dict(sel="manual-scan", ev="'Hypothetically this will produce fewer data dependencies.'",
                    summary="decode_mode_buf computes the invalid byte at error time from the input instead of tracking selected_input_byte; the rewrite accidentally uses `>> 16` instead of `>> 8` for the 7th morsel (bug, fixed later in dc44239)."),
}

# Units decided directly from the screening runs (scripts/runs-unsupported.txt, results in work/screen-unsupported.txt).
def U(name, level, verdict, reason=None, kind=None, art=None, ev="", **kw):
    d = {"name": name, "level": level, "verdict": verdict, "bounded": False, "unroll": 0,
         "precondition": None, "unsupported_reason": reason, "not_equiv_kind": kind,
         "artifact_dir": art, "evidence": ev}
    d.update(kw)
    return d

W = "rust/rust-base64/work/"
SCREEN_UNITS = {
    "a8a60f4": [
        U("general_purpose::decode::decode_helper", "raw", "UNSUPPORTED", "aeneas-error", art=W+"a8a60f4",
          ev="Aeneas (old+new): 'Breaks to outer loops are not supported yet' (decode.rs, whole decode_helper)"),
        U("general_purpose::decode_suffix::decode_suffix", "raw", "UNSUPPORTED", "aeneas-error", art=W+"a8a60f4",
          ev="Aeneas (old+new): 'Could not match the contexts' at the final output-writing loop"),
        U("Engine::decode_slice (GeneralPurpose)", "api", "UNSUPPORTED", "aeneas-error", art=W+"a8a60f4",
          ev="api path contains decode_helper/decode_suffix (untranslatable); public DecodeError also changed (InvalidLength -> InvalidLength(usize)) = interface change"),
    ],
    "9979cc3": [
        U("general_purpose::decode_suffix::decode_suffix", "raw", "UNSUPPORTED", "aeneas-error", art=W+"9979cc3",
          ev="Aeneas (old+new): 'Could not match the contexts' (decode_suffix.rs final while loop; live shared-borrow abstractions from morsels[i] indexing at the loop join)"),
    ],
    "7509b25": [
        U("encode::encode_config", "api", "UNSUPPORTED", "missing-std-model", art=W+"7509b25",
          ev="full extraction: Aeneas 'Internal error' in CharacterSet::encode_table (fn returning &'static [u8;64]) / 'Assertion failed: new value doesn't have the same type' in chunked_encoder; with helpers opaque (tag ecfgop) old = String::with_capacity (axiom) + encode_config_buf, new = vec![0;n] + encode_config_slice + String::from_utf8 (axiom): equivalence depends on unmodelled String semantics"),
    ],
    "0113a05": [
        U("decode::decode_config_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"0113a05",
          ev="Aeneas: old 'Breaks to outer loops are not supported yet', new 'Returns inside of nested loops are not supported yet' (decode.rs)"),
    ],
    "3e49afe": [
        U("decode::decode_config_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"3e49afe",
          ev="Aeneas (old+new): 'Breaks to outer loops are not supported yet' (decode.rs)"),
    ],
    "154103e": [
        U("decode_config_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"154103e",
          ev="Aeneas: old 'Early returns inside of loops are not supported yet', new 'Breaks to outer loops are not supported yet' (lib.rs)"),
    ],
    "f775196": [
        U("line_wrap::line_wrap / encode_config_buf", "raw", "UNSUPPORTED", "aeneas-error", art=W+"f775196",
          ev="Aeneas: new 'ADTs containing nested mutable borrows are not supported yet' (line_wrap.rs:99, split_at_mut tuple); old 'Nested borrows are not supported yet' (lib.rs:221)"),
        U("encode_config", "api", "UNSUPPORTED", "aeneas-error", art=W+"f775196", ev="same errors as raw (tag ecfg)"),
    ],
    "901eca8": [
        U("encode_mode_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"901eca8",
          ev="Aeneas (old+new): 'Nested borrows are not supported yet' (lib.rs:177, `let (ref charset, _) = match mode {...}`)"),
    ],
    "5409ef8": [
        U("decode_mode", "api", "UNSUPPORTED", "aeneas-error", art=W+"5409ef8",
          ev="Aeneas (old+new): 'Returns inside of nested loops are not supported yet' (lib.rs); new decode_mode_buf has no old counterpart"),
    ],
    "b681bb6": [
        U("decode_mode", "api", "UNSUPPORTED", "aeneas-error", art=W+"b681bb6",
          ev="Aeneas: old 'Could not match the contexts' (lib.rs:286), new 'Returns inside of nested loops are not supported yet'"),
    ],
    "99603c1": [
        U("encode_mode", "api", "UNSUPPORTED", "missing-std-model", art=W+"99603c1",
          ev="both extract and typecheck, but old = Vec pushes + String::from_utf8 (axiom), new = String::with_capacity/reserve/unsafe as_mut_vec (axioms): String is not modelled, so equality depends on axiomatised std behaviour"),
    ],
    "61ddf26": [
        U("decode_mode", "api", "UNSUPPORTED", "aeneas-error", art=W+"61ddf26",
          ev="new: Aeneas 'Could not match the contexts' (lib.rs:248, loop after the input.bytes().enumerate() loop); old translates"),
        U("decode_ws", "api", "UNSUPPORTED", "lean-model-typecheck-error", art=W+"61ddf26",
          ev="new: generated Lean fails: '`filter` is not a field of structure core.iter.traits.iterator.Iterator' (Iterator::filter not in Aeneas std model)"),
    ],
    "3c9bc2b": [U("decode_mode_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"3c9bc2b",
          ev="Aeneas: old 'Returns inside of nested loops are not supported yet', new 'Early returns inside of loops are not supported yet'")],
    "87d62a9": [U("decode_mode_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"87d62a9",
          ev="Aeneas (old+new): 'Returns inside of nested loops are not supported yet'")],
    "f3c8891": [U("decode_mode_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"f3c8891",
          ev="Aeneas (old+new): 'Returns inside of nested loops are not supported yet'")],
    "4d6d81a": [U("decode_mode_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"4d6d81a",
          ev="Aeneas (old+new): 'Returns inside of nested loops are not supported yet'")],
    "8361c1e": [U("decode_mode_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"8361c1e",
          ev="Aeneas (old+new): 'Returns inside of nested loops are not supported yet'")],
    "dfb2864": [U("decode_mode_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"dfb2864",
          ev="Aeneas (old+new): 'Early returns inside of loops are not supported yet'. Native differential run (work/dfb2864/native-diff.txt, not checker evidence): new decodes 'aGVsbG8gd29ybGQh' to 'hella\\xa0world!' (uses >>16 instead of >>8) - a real bug the checker could not reach")],
}

PENDING = "PROVISIONAL: proof sub-task still running at hand-back time; verdict to be replaced from work/{c}/units.json"
COMMIT_EXTRA = {
    "ce2281b": {"units": [
        U("engine::simd avx2 encode/decode kernels (Avx2/Simd engines)", "raw", "UNSUPPORTED", "unsafe-raw-pointers", art=W+"ce2281b",
          ev="new side extracts and typechecks (tag avx2) but every core::arch AVX2 intrinsic and raw-pointer load/store is an opaque axiom; _mm256_storeu_si256 returns Unit so stores do not affect the output slice in the model; old side has no SIMD engine (feature simd-unsafe absent); NEON kernels are cfg'd to aarch64 and not compiled on the x86 host"),
     ], "coverage": "partial", "notes": "SIMD kernels (the main perf change) are outside what Aeneas can model; only the GeneralPurpose scalar refactor is checkable."},
    "5c043f9": {"coverage": "full", "notes": "Aeneas models Vec without capacity, so the capacity change itself is invisible; the remaining difference is that the old capacity hint input.len()*4 is overflow-checked (debug semantics) and can panic for len > usize::MAX/4, so new refines old (EQUIV in release/wrapping semantics). Modelling hypotheses: the two generated copies of Vec::truncate, Vec::as_mut_slice and Result::map denote the same functions (Result::map commuting with the DecodeError copy isomorphism); engine instance of New is the field-wise copy of Old's."},
    "dfb2864": {"notes": "Checker cannot translate decode_mode_buf (early returns in loops). A native differential run (work/dfb2864/native-diff.txt; not checker evidence) shows the commit introduced a real decoding bug (>>16 instead of >>8 for the 7th morsel, 'aGVsbG8gd29ybGQh' -> 'hella\\xa0world!'), fixed later in dc44239."},
}
COMMIT_EXTRA["9687b03"] = {"coverage": "partial", "notes": "raw add_padding is NOT_EQUIV by design (parameter meaning changed; add_padding_not_equiv, n=1: 2 vs 3 pads) - secondary. Primary api: encode_with_padding<E: Engine> EQUIV_UNDER_PRECOND (internal_encode returns the unpadded encoded length; no extra hypotheses, std axioms only). ChunkedEncoder::encode change: Aeneas internal error -> UNSUPPORTED; concrete GeneralPurpose encode_slice not attempted (UNKNOWN). Commit verdict UNSUPPORTED by the METHOD aggregation rule because the ChunkedEncoder unit cannot be translated."}
COMMIT_EXTRA["d021c39"] = {"coverage": "partial", "notes": "EQUIV proved for encode_slice, encode, decode, decode_vec (generic over engine instances whose used fields agree). Modelling hypotheses: the two generated copies of Option::and_then, Vec::truncate, Vec::as_mut_slice are equal; String::from_utf8 copies agree modulo an arbitrary map between the two opaque FromUtf8Error copies; internal_decode of the two instances agree modulo the DecodeMetadata/DecodeError copy maps. encode_string: generated Lean does not typecheck (StringSink trait-method signature mismatch). decode_slice / decode_slice_unchecked: generated New Lean does not typecheck (binder `engine` shadows the `engine.` namespace prefix); theorems decode_slice_equiv / decode_slice_unchecked_equiv exist only against a hand-fixed copy (DsliceNewFix/DsuNewFix) and are NOT counted as checker evidence. core.fmt.Formatter (pre-existing Aeneas opaque type) appears in encode_equiv's axioms."}
COMMIT_EXTRA["fa6a11f"] = {"coverage": "full", "notes": "encode_config_equiv (plain =, all inputs). Full extraction fails (Aeneas 'Unreachable' at CharacterSet::encode_table returning &'static [u8;64]), so the unchanged (byte-identical) helper encode_with_padding is opaque. Modelling hypotheses: the two opaque copies of encode_with_padding are equal and keep the &mut slice length; generated copies of Option::and_then, panicking::unreachable_display, Display::fmt are equal; String::from_utf8 copies agree modulo a map between the FromUtf8Error copies."}
COMMIT_EXTRA["eeb9f5c"] = {"coverage": "partial", "notes": "raw encode_to_slice: translation OK (byteorder 1.5.0 translated via --include byteorder, no external axioms), equivalence proof not finished within the 45-min budget -> UNKNOWN; Proof.lean keeps sorry-free partial lemmas (remainder loops agree, write_u64 byte decomposition). A native differential test (rust/rust-base64/harness/eeb9f5c_native.rs; not checker evidence) found no difference other than panic kind. api encode_config_buf: Aeneas 'ADTs containing nested mutable borrows' (line_wrap) -> UNSUPPORTED."}
COMMIT_EXTRA["eeb9f5c"]["units"] = [U("encode_config_buf", "api", "UNSUPPORTED", "aeneas-error", art=W+"eeb9f5c",
    ev="Aeneas (old+new): 'ADTs containing nested mutable borrows are not supported yet' (line_wrap.rs:103)")]
COMMIT_EXTRA["f977b8e"] = {"coverage": "partial", "notes": "raw encoded_size NOT_EQUIV by design (encoded_size_not_equiv: 0 -> old 4 / new 0; secondary, private capacity hint). Primary api encode_mode: only the String capacity argument changes, but String::with_capacity/reserve/as_mut_vec are opaque axioms, so the user-visible equality cannot be established -> UNSUPPORTED(missing-std-model)."}
COMMIT_EXTRA["ce2281b"]["notes"] = "SIMD kernels (the main perf change) are outside what Aeneas can model (opaque intrinsics, raw-pointer stores lost in the model) -> UNSUPPORTED. GeneralPurpose scalar refactor: internal_encode EQUIV (gp_internal_encode_equiv, only hypothesis: equal encode_table fields of the two namespaced engine structs); internal_decode UNSUPPORTED (Aeneas: breaks to outer loops)."
