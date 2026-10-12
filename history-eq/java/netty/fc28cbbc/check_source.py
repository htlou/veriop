#!/usr/bin/env python3
"""Bind the one-poll model to the exact historical Recycler change."""

import hashlib
import os
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[4]
repo = root / "benchmarks/repos/netty"
commit = "fc28cbbc8839feacfa1cb7cfbda209d9ab8bad3b"
path = "common/src/main/java/io/netty/util/Recycler.java"
expected = ("0c56b9a38a2b5a667ab4349a93042ed181f887a6",
            "381c14bedde0721afa0ad35cb4aefd872dc5b1f7")
files = []
for revision, blob in zip((commit + "^", commit), expected):
    data = subprocess.check_output(["git", "-C", str(repo), "cat-file", "blob", revision + ":" + path],
                                   env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})
    assert hashlib.sha1(f"blob {len(data)}\0".encode() + data).hexdigest() == blob
    files.append(data)
old, new = files
assert b"private static final int STATE_CLAIMED = 0;" in old and b"private static final int STATE_AVAILABLE = 1;" in old
assert b"return STATE_UPDATER.compareAndSet(this, STATE_AVAILABLE, STATE_CLAIMED);" in old
assert b"} while (handle != null && !handle.availableToClaim());" in old
assert b"assert state == STATE_AVAILABLE;" in new and b"state = STATE_CLAIMED;" in new
assert b"DefaultHandle<T> handle = handles.relaxedPoll();" in new
assert b"handle.toClaimed();" in new
diff = subprocess.check_output(["git", "-C", str(repo), "diff", commit + "^", commit, "--", path],
                               env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})
archive = root / "history-eq/java/netty/source-screening/fc28cbbc.java.diff"
assert archive.read_bytes() == diff
print("Exact parent/child Recycler blobs and one-poll source mapping verified")
