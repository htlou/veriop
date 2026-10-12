#!/usr/bin/env python3
"""Recheck the source-locked FastDivmod arithmetic lemma with Kuiper's F*."""

import hashlib
import json
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
package = root / "benchmarks/tools/kuiper-package"
source = (here.parent / "source-screening/8d454a3a.source.diff").read_bytes()
assert hashlib.sha256(source).hexdigest() == "55329a097ce9a67471ff391d199c12c505cb857b0163f8251c5f653d91943edb"
for fragment in (
    b"-        hn_idx = self._tile_idx // self.num_blocks",
    b"+        hn_idx, block_idx = self.num_block_divmod.divmod(self._tile_idx)",
    b"+        p = Uint32(31 + find_log2(divisor))",
    b"+        multiplier = Uint32(((cutlass.Uint64(1) << p) + divisor_u32 - 1) // divisor_u32)",
    b"+        shift_right = Uint32(p - 32)",
    b"+            Int32(umulhi(dividend, self.multiplier) >> self.shift_right)",
    b"+            if self.divisor != 1",
    b"+        remainder = dividend - quotient * self.divisor",
):
    assert fragment in source, fragment
proof = here / "Kuiper.FlashAttention.FastDiv.fst"
proof_text = proof.read_text()
assert "admit" not in proof_text and "assume" not in proof_text
assert "let scheduler_divmod_equal" in proof_text and "let machine_bounds" in proof_text
run = subprocess.run([str(package / "fstar.sh"), str(proof)], cwd=package,
                     text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
(here / "kuiper-arithmetic.log").write_text(run.stdout)
assert run.returncode == 0, run.stdout
assert "Verified module: Kuiper.FlashAttention.FastDiv" in run.stdout
assert "All verification conditions discharged successfully" in run.stdout
result = {
    "historical_commit": "8d454a3a9336954dae75013958dc3903ce781b66",
    "source_diff_sha256": hashlib.sha256(source).hexdigest(),
    "proof_sha256": hashlib.sha256(proof.read_bytes()).hexdigest(),
    "kuiper_build_info_sha256": hashlib.sha256((package / "BUILD_INFO").read_bytes()).hexdigest(),
    "checker": "Kuiper-bundled F* verifier",
    "verdict": "verified source-level arithmetic lemma, not a CUDA-kernel equivalence verdict",
    "domain": "0 <= x < 2^31; 1 < d < 2^31; 0 < k <= 31; 2^(k-1) < d <= 2^k; mathematical unsigned mulhi/shift model",
    "property": "source-formula quotient and remainder equal x/d and x%d; multiplier fits u32 and product fits u63",
}
(here / "kuiper-arithmetic-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["verdict"])
