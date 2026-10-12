"""Differential controls for the exact historical shared libraries."""

import ctypes
import random

OLD = ctypes.CDLL("/tmp/ff-b14-old/libprobe.so", mode=ctypes.RTLD_LOCAL)
NEW = ctypes.CDLL("/tmp/ff-b14-new/libprobe.so", mode=ctypes.RTLD_LOCAL)
for lib in (OLD, NEW):
    lib.probe.argtypes = (ctypes.c_uint64, ctypes.c_uint)
    lib.probe.restype = ctypes.c_uint64

same = 0
different = 0
examples = []


def check(s):
    global same, different
    data = s.encode("latin1")
    packed = int.from_bytes(data.ljust(8, b"\0"), "little")
    parent = OLD.probe(packed, len(data))
    child = NEW.probe(packed, len(data))
    if parent == child:
        same += 1
    else:
        different += 1
        if len(examples) < 20:
            examples.append((repr(s), parent, child))


for n in range(100000):
    check(f"{n:05d}")
for s in (
    "0", "1", "999", "1234", "65535", "65536", "99999", "00001",
    "123x5", "1x345", "x2345", "12345x", "00000", "000000", "-1234", "+1234",
):
    check(s)
rng = random.Random(6414)
alphabet = "0123456789x-+\x00\xff"
for _ in range(200000):
    n = rng.randint(1, 8)
    check("".join(rng.choice(alphabet) for _ in range(n)))
print("same", same, "different", different)
print("examples", examples)
