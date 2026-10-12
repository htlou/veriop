#!/usr/bin/env python3
"""Recover the exact child msg.go from its locally available parent blob."""

import hashlib
import subprocess
from pathlib import Path

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/scion"
old = subprocess.check_output(
    ["git", "cat-file", "blob", "353e057390f5a1d5187ff62ad6ad8ed37f945470"],
    cwd=repo,
)


def blob_id(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


assert blob_id(old) == "353e057390f5a1d5187ff62ad6ad8ed37f945470"
new = old.replace(b'\t"encoding/asn1"\n', b'').replace(b'\t"math/big"\n', b'')
before = b'''\tcase *ecdsa.PublicKey:
\t\ttype ecdsaSignature struct {
\t\t\tR, S *big.Int
\t\t}

\t\t// XXX(roosd): Copied from x509/x509.go:checkSignature.
\t\tvar sig ecdsaSignature
\t\tif rest, err := asn1.Unmarshal(signed.Signature, &sig); err != nil {
\t\t\treturn nil, err
\t\t} else if len(rest) != 0 {
\t\t\treturn nil, serrors.New("trailing data after ECDSA signature")
\t\t}
\t\tif sig.R.Sign() <= 0 || sig.S.Sign() <= 0 {
\t\t\treturn nil, errors.New("ECDSA signature contained zero or negative values")
\t\t}
\t\tif !ecdsa.Verify(pub, input, sig.R, sig.S) {
'''
after = b'''\tcase *ecdsa.PublicKey:
\t\tif !ecdsa.VerifyASN1(pub, input, signed.Signature) {
'''
assert new.count(before) == 1
new = new.replace(before, after)
assert blob_id(new) == "387b3d20a13cb099153ee464a83a95d9843dd533"
(here / "historical-old.go").write_bytes(old)
(here / "historical-new.go").write_bytes(new)
print("recovered both exact historical msg.go blobs")
