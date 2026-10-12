from pathlib import Path
import re
import subprocess

repo = Path("benchmarks/repos/v4-core")
here = Path(__file__).parent
commit = "0fc5a0b2f44032d5c67816ec9663dd4d02d5dc64"


def historical(rev, path):
    return subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{path}"], text=True)


def body(src):
    match = re.search(r"function tickSpacingToMaxLiquidityPerTick\b.*?assembly \(\"memory-safe\"\) \{(.*?)\n\s*\}", src, re.S)
    assert match
    return " ".join(match.group(1).split())


for rev, wrapper in ((commit + "^", "PoolOld.sol"), (commit, "PoolNew.sol")):
    upstream = historical(rev, "src/libraries/Pool.sol")
    assert body(upstream) == body((here / wrapper).read_text()), wrapper
    tick_math = historical(rev, "src/libraries/TickMath.sol")
    assert re.search(r"MIN_TICK\s*=\s*-887272", tick_math)
    assert re.search(r"MAX_TICK\s*=\s*887272", tick_math)
    print(f"{wrapper}: historical assembly and TickMath constants match")
