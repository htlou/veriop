# zstd `5dc0a1d6`: inline hint on `ZSTD_storeSeq`

**Verdict: partial local equality, not a whole-compressor proof.** The exact historical [source diff](../source-screening/5dc0a1d65921.source.diff) changes only the declaration macro on `ZSTD_storeSeq` from `MEM_STATIC` to `HINT_INLINE`; the function body is byte-identical. [`prepare.py`](prepare.py) archives the exact old and new headers and extracts that body verbatim. Their hashes are in [`source_manifest.json`](source_manifest.json).

The historical unchanged `compiler.h` and `mem.h` blobs are absent locally. The release-model harness therefore supplies a minimal `seqStore_t`, models `MEM_STATIC` as `static inline` and `HINT_INLINE` as `static inline __attribute__((always_inline))`, disables assertions, uses a shared `WILDCOPY_OVERLENGTH=32`, and leaves the three copy helpers as shared opaque calls. Under that explicit model, Clang 20 at `-O1` emits old and new [`target` LLVM modules](old.ll) that are byte-identical apart from source filenames. This is a local compiled-body result, not evidence about every historical compiler, macro branch, or caller.

This Alive2 build initially rejects LLVM's `nocapture` attribute on `target` ([forward attempt](forward.log)). [`normalize_ir.py`](normalize_ir.py) removes that same unsupported hint from both otherwise identical modules; `opt -passes=verify` accepts them. Alive2 then reports **one correct transformation in each direction because the bodies are syntactically equal** ([forward](forward-equal-ir.log), [reverse](reverse-equal-ir.log)). Forcing SMT despite identity with `--always-verify` times out in both directions ([forward timeout](forward-alive.log), [reverse timeout](reverse-alive.log)); the successful result is the syntactic identity check, not an SMT proof of separately modeled programs.

The complete historical compressor and public output remain unproved. No official historical zstd benchmark score was measured for this pair.

Reproduce from the project root:

```sh
python3 history-eq/c/zstd/5dc0a1d6/prepare.py
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O1 -fno-strict-aliasing -S -emit-llvm history-eq/c/zstd/5dc0a1d6/old.c -o history-eq/c/zstd/5dc0a1d6/old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang -std=c11 -O1 -fno-strict-aliasing -S -emit-llvm history-eq/c/zstd/5dc0a1d6/new.c -o history-eq/c/zstd/5dc0a1d6/new.ll
python3 history-eq/c/zstd/5dc0a1d6/normalize_ir.py
alive2/build/alive2/alive-tv --func=target history-eq/c/zstd/5dc0a1d6/old-alive.ll history-eq/c/zstd/5dc0a1d6/new-alive.ll
alive2/build/alive2/alive-tv --func=target history-eq/c/zstd/5dc0a1d6/new-alive.ll history-eq/c/zstd/5dc0a1d6/old-alive.ll
```
