"""Lock the 3D nonpaged branch model to exact FlashAttention source."""

import hashlib
import os
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "benchmarks/repos/flash-attention"
COMMIT = "0823cf7b5d96499c1c79a4f64b1e256a035ba4b4"
PARENT = "ca71144d592876feb1ee65c959f417b26d824355"
PATH = "hopper/copy_paged_sm90_tma_cutlass35.hpp"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=env)


def source(revision, expected):
    oid = git("rev-parse", f"{revision}:{PATH}").decode().strip()
    assert oid == expected
    data = git("cat-file", "blob", oid)
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
    return data.decode()


assert git("rev-parse", COMMIT + "^").decode().strip() == PARENT
paths = (HERE.parent / "source-screening/0823cf7b.paths.txt").read_text().splitlines()
assert git("diff", PARENT, COMMIT, "--", *paths) == (HERE.parent / "source-screening/0823cf7b.source.diff").read_bytes()
old = source(PARENT, "4bd5de841da13b6bd2c53b6a9da4350539e2447a")
new = source(COMMIT, "6c467a2eb460daab7407479f8910c5d62d14d87b")
old_branch = old[old.index("PAGED_COPY_OP not implemented for 2D"):old.index("PAGED_COPY_OP not implemented for 3D") + 60]
new_branch = new[new.index("PAGED_COPY_OP not implemented for 2D"):new.index("// Index order reordered")]
assert "if (pca.block_table == nullptr)" in old_branch
assert "SM90_TMA_LOAD_3D::copy(desc_ptr, mbar_ptr, smem_ptr, crd0, crd1, crd2)" in old_branch
assert "SM90_TMA_LOAD_3D::copy(desc_ptr, mbar_ptr, smem_ptr, crd0, crd1, crd2)" in new_branch
assert "if (pca.block_table == nullptr)" not in new_branch
assert "if (pca.block_table == nullptr)" in old
assert "if (pca == nullptr)" in new
assert "pca.block_table[page_idx_offset + crdB*pca.block_table_batch_stride]" in old
assert "pca->block_table[page_idx_offset + crdB*pca->block_table_batch_stride]" in new
assert "(paged_copy_args.block_table==nullptr) ? nullptr : &paged_copy_args" in new
for name in ("old", "new"):
    model = (HERE / f"{name}.c").read_text()
    assert "__builtin_assume(args != 0 && args->block_table == 0);" in model
    assert "tma_load_3d(desc, barrier, smem, c0, c1, c2);" in model
    assert "void target_copy4" in model and "tma_load_4d(desc, barrier, smem, k, offset, h, page_index);" in model
assert "const PagedCopyArgs *pca = args->block_table == 0 ? 0 : args;" in (HERE / "new.c").read_text()
print("Exact historical 3D/4D branch and abstract Alive2 models: OK")
