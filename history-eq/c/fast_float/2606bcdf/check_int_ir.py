from pathlib import Path
import re

base = Path(__file__).parent
old, new = ((base / f"{side}-tv.ll").read_text() for side in ("old", "new"))
for pattern in (r'^target datalayout = [^\n]+', r'^target triple = [^\n]+',
                r'^attributes #(?:0|8) = [^\n]+'):
    assert re.findall(pattern, old, re.M) == re.findall(pattern, new, re.M), pattern


def function(ir, name):
    match = re.search(r"^define [^\n]*@" + re.escape(name) + r"\([^\n]*\) [^\n]*\{.*?^\}", ir, re.M | re.S)
    assert match, name
    metadata = dict(re.findall(r"^!(\d+) = ([^\n]+)$", ir, re.M))
    return re.sub(r"!(range|noundef) !(\d+)",
                  lambda m: f"!{m[1]} {metadata[m[2]]}", match.group())


functions = [
    "target_int_error", "target_int_consumed", "target_int_value",
    "_ZN10fast_float23from_chars_int_advancedImcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE",
]
globals_ = [
    "_ZN10fast_float8int_lutsIvE12min_safe_u64E",
    "_ZN10fast_float8int_lutsIvE13maxdigits_u64E",
    "_ZN10fast_float8int_lutsIvE7chdigitE",
    "_ZN10fast_float9space_lutIvE5valueE",
]
allowed = set(functions + globals_ + ["llvm.lifetime.start.p0",
                                     "llvm.lifetime.end.p0", "__gxx_personality_v0"])
for name in functions:
    a, b = function(old, name), function(new, name)
    assert a == b, name
    assert set(re.findall(r"@([A-Za-z0-9_.$]+)", a)) <= allowed, name
    print("identical function", name)
for name in globals_:
    pattern = r"^@" + re.escape(name) + r" = [^\n]+"
    a, b = (re.search(pattern, ir, re.M) for ir in (old, new))
    assert a and b and a.group() == b.group(), name
    print("identical constant", name)
