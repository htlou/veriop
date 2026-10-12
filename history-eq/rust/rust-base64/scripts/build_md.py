import json
from collections import Counter
d=json.load(open('/srv/home/hantaolou/code/veriop/history-eq/results/rust-base64.json'))
f=d['funnel']
prov=[c['commit'] for c in d['commits'] if any(u.get('provisional') for u in c['units'])]
L=["# rust-base64: historical performance commits checked with Charon, Aeneas and Lean 4",""]
if prov:
    L+=[f"**Not final yet:** the proof sub-task for {', '.join(prov)} was still running when this file was written. Its unit is shown as UNKNOWN and marked `provisional: true` in the JSON. The commit verdicts do not depend on it.",""]
L+=["## Funnel","","| Step | Commits |","|---|---|",
 f"| Non-merge commits touching src/ (tests, bin/ and main.rs excluded) | {f['commits_touching_scope']} |",
 f"| Keyword candidates | {f['keyword_candidates']} |", f"| Added by manual scan | {f['manual_scan_additions']} |",
 f"| Confirmed performance commits | {f['perf_commits']} |",""]
c=Counter(x['commit_verdict'] for x in d['commits'])
L+=["## Commit verdicts","",", ".join(f"{k}: {v}" for k,v in c.most_common()),"",
"| Commit | Date | Subject | Verdict | Reason | Units |","|---|---|---|---|---|---|"]
for x in d['commits']:
    us="; ".join(f"{u['name'].split('(')[0][:40]} [{u['level']}] {u['verdict']}" for u in x['units'])
    L.append(f"| {x['commit']} | {x['date']} | {x['subject'][:55]} | **{x['commit_verdict']}** | {x['unsupported_reason'] or x['not_equiv_kind'] or ''} | {us} |")
L+=["","## Most interesting cases","",
"### Proofs that went through","",
"- **fa6a11f** removes a redundant `encoded_size` call from `encode_config`.",
"  - Verdict: **EQUIV**, plain `=` on all inputs (`encode_config_equiv`).",
"  - The helper `encode_with_padding` is unchanged by the commit, but Aeneas cannot translate it, so it is left opaque. The proof assumes its two copies are the same function and that it keeps the slice length.",
"- **5c043f9** drops the `Vec::with_capacity(len*4/3)` hint in `decode_engine`.",
"  - Verdict: **REFINES**.",
"  - Aeneas does not model Vec capacity, so the capacity change itself is invisible.",
"  - The old hint computes `len*4` with overflow checking, so the old code panics when len > usize::MAX/4. The new code never computes it.",
"  - Under the precondition that `len*4` does not overflow, the two are EQUIV (`deng_equiv_no_overflow`).",
"- **9687b03** changes what `add_padding`'s argument means.",
"  - Raw `add_padding` is **NOT_EQUIV** with a kernel-checked counterexample: for n=1 the old code writes 2 pad bytes and the new code writes 3.",
"  - The caller `encode_with_padding`, generic over any engine, is **EQUIV_UNDER_PRECOND** (`encode_with_padding_equiv`). Precondition: `internal_encode` returns the unpadded encoded length.",
"  - The commit verdict is still UNSUPPORTED, because the other caller (`ChunkedEncoder::encode`) triggers an Aeneas internal error.",
"- **d021c39** moves the `Engine` default methods into non-generic inner functions.",
"  - `encode_slice`, `encode`, `decode` and `decode_vec` are **EQUIV**.",
"  - `encode_string`, `decode_slice` and `decode_slice_unchecked` produce generated Lean that does not typecheck. For `decode_slice` and `decode_slice_unchecked` the cause is an Aeneas naming bug: a binder named `engine` hides the `engine.` namespace prefix.",
"  - Both of those prove EQUIV once that one binder is renamed by hand, but the hand-fixed models are not counted as evidence.",
"- **f977b8e** makes `encoded_size` exact.",
"  - Raw `encoded_size` is **NOT_EQUIV**, as intended: for input length 0, the old code returns 4 and the new code returns 0.",
"  - The value is only used as a String capacity hint, and Aeneas does not model String, so the api level is missing-std-model.",
"- **eeb9f5c** unrolls the encode loop 4x.",
"  - Raw `encode_to_slice` translates fully, including the byteorder dependency.",
"  - The equality proof did not finish within the 45-minute budget, so the verdict is UNKNOWN.",
"  - A native random test of 190,500 cases found no difference. That test is not checker evidence.","",
"### What blocked the checker","",
"- **Aeneas translation errors (14 commits).** Almost every decoder version, from 2016 to 2024, is untranslatable. Causes: early returns inside loops, breaks to outer loops, returns inside nested loops, nested borrows, and 'Could not match the contexts' at loop joins.",
"- **A real bug the checker could not reach.** **dfb2864** introduced a decoding bug: it uses `>>16` where `>>8` was meant. A native differential run shows \"aGVsbG8gd29ybGQh\" decoding wrongly (`rust/rust-base64/work/dfb2864/native-diff.txt`). The bug was fixed later in dc44239. Because Aeneas cannot translate the function, the verdict is UNSUPPORTED (aeneas-error).",
"- **SIMD engines (ce2281b).** The AVX2 kernels translate, but every intrinsic and raw-pointer store is an opaque axiom. In the model the stores never reach the output slice, so the verdict is UNSUPPORTED (unsafe-raw-pointers).",
"- **String-based APIs (99603c1, 7509b25, f977b8e api).** Aeneas only declares the relevant String operations as axioms, so these are missing-std-model.","",
"## Modelling assumptions","",
"- **Duplicated declarations.** Old and New are generated into separate Lean namespaces, so every crate type and every external std declaration exists twice.",
"  - Theorems map the duplicated crate types explicitly.",
"  - Theorems take hypotheses that the two copies of each external declaration are the same function, e.g. \"the two copies of Vec::truncate are equal\". The hypotheses used are listed per unit in the JSON.",
"- **Engine-generic theorems** quantify over pairs of old and new engine instances whose used fields agree.",
"- **Axioms.** `#print axioms` for every theorem lists only propext, Classical.choice, Quot.sound, Aeneas-generated external declarations, and the Aeneas library type `core.fmt.Formatter`. The audit output is in `rust/rust-base64/work/axiom-audit.txt`.",
"- **Toolchain.** The Aeneas binary is the sibling project's patched build, not the unpatched one on PATH. Builds use `RUSTFLAGS=--cap-lints=warn` because old commits set `#![deny(warnings)]`.",
"","## Artifacts","",
"- `rust/rust-base64/work/<c>/`: llbc files, logs, `proof.log`, `units.json`.",
"- `rust/rust-base64/lean/C<c>/`: generated Lean and `Proof.lean`.",
"- `rust/rust-base64/scripts/`: `extract.sh`, `screen.sh`, `probe.sh`, `audit_axioms.py`, `build_results.py`, `build_md.py`, `meta.py`.",
"- The rejected commits, each with its reason, are listed in the JSON."]
open('/srv/home/hantaolou/code/veriop/history-eq/results/rust-base64.md','w').write("\n".join(L)+"\n")
