#!/usr/bin/env python3
"""Compare exact historical Kontrol recompilation decisions."""

import ast
import hashlib
import json
import os
from pathlib import Path
import subprocess
from types import SimpleNamespace

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/kontrol"
z3 = root / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
commit = "e8fbc990d4935125dcbbbd4acca7aabb3ed3f010"
path = "src/kontrol/kompile.py"
oids = {"old": "1adc6c043949e6d12a673f45c16c72540b94490d",
        "new": "7a06845357e0ad9dc235d081e250455dea316dfd"}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


assert git("rev-parse", commit + "^").decode().strip()
functions = {}
sources = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    assert git("rev-parse", f"{revision}:{path}").decode().strip() == oids[side]
    source = git("show", f"{revision}:{path}")
    oid = hashlib.sha1(b"blob " + str(len(source)).encode() + b"\0" + source).hexdigest()
    assert oid == oids[side]
    sources[side] = source.decode()
    outer = next(node for node in ast.parse(sources[side]).body
                 if isinstance(node, ast.FunctionDef) and node.name == "foundry_kompile")
    nested = {node.name: node for node in outer.body if isinstance(node, ast.FunctionDef)}
    names = ["kompilation_up_to_date", "should_rekompile"]
    if side == "new":
        names.insert(0, "options_digest")
        assert ast.unparse(nested["options_digest"].body[0]) == "return hash_str(str(options))"
        assert ast.unparse(nested["kompilation_up_to_date"].body[-1]) == "return komp_digest and opt_digest"
    else:
        assert ast.unparse(nested["kompilation_up_to_date"].body[-1]) == (
            "return digest_dict.get('kompilation', '') == kompilation_digest()")
    assert ast.unparse(nested["kompilation_up_to_date"].body[0]) == (
        "if not foundry.digest_file.exists():\n    return False")
    assert ast.unparse(nested["should_rekompile"].body[0]) == (
        "if options.rekompile or not kompiled_timestamp.exists():\n    return True")
    decision = ast.unparse(nested["should_rekompile"].body[-1])
    assert decision == ("return not (kompilation_up_to_date() and " +
                        ("foundry.up_to_date() and " if side == "old" else "") +
                        "kontrol_up_to_date(foundry.digest_file))")
    gate = next(node for node in outer.body if isinstance(node, ast.If)
                and isinstance(node.test, ast.Call)
                and isinstance(node.test.func, ast.Name)
                and node.test.func.id == "should_rekompile")
    assert any(isinstance(node, ast.Call) and isinstance(node.func, ast.Name)
               and node.func.id == "kevm_kompile" for node in ast.walk(gate))
    functions[side] = compile(ast.fix_missing_locations(ast.Module(
        body=[nested[name] for name in names], type_ignores=[])), f"{side}:{path}", "exec")


def run_side(side, foundry_current, options_current):
    digest = {"kompilation": "same"}
    context = {
        "options": SimpleNamespace(rekompile=False),
        "kompiled_timestamp": SimpleNamespace(exists=lambda: True),
        "foundry": SimpleNamespace(digest_file=SimpleNamespace(exists=lambda: True),
                                   up_to_date=lambda: foundry_current),
        "_read_digest_file": lambda _: digest,
        "kompilation_digest": lambda: "same",
        "kontrol_up_to_date": lambda _: True,
        "hash_str": lambda value: "hash(" + value + ")",
    }
    digest["build-options"] = ("hash(" + str(context["options"]) + ")"
                               if options_current else "stale")
    exec(functions[side], context)
    return context["should_rekompile"]()


cases = {
    "contracts_changed_k_unchanged_options_current": {"foundry_current": False, "options_current": True},
    "contracts_current_options_changed": {"foundry_current": True, "options_current": False},
}
observed = {name: {side: run_side(side, **settings) for side in oids}
            for name, settings in cases.items()}
assert observed == {
    "contracts_changed_k_unchanged_options_current": {"old": True, "new": False},
    "contracts_current_options_changed": {"old": False, "new": True},
}, observed

query = """(set-logic QF_UF)
(declare-const force Bool)
(declare-const timestamp Bool)
(declare-const k_digest Bool)
(declare-const foundry_current Bool)
(declare-const options_digest Bool)
(declare-const kontrol_current Bool)
(define-fun old () Bool (or force (not timestamp) (not (and k_digest foundry_current kontrol_current))))
(define-fun new () Bool (or force (not timestamp) (not (and k_digest options_digest kontrol_current))))
(assert (not (= (not (= old new))
                (and (not force) timestamp k_digest kontrol_current
                     (not (= foundry_current options_digest))))))
(check-sat)
"""
(here / "decision-relation.smt2").write_text(query)
proof = subprocess.check_output([str(z3), "-in"], input=query.encode()).decode().strip()
assert proof == "unsat", proof
(here / "decision-relation.log").write_text(proof + "\n")
result = {
    "commit": commit,
    "source_blob_ids": oids,
    "checker": "exact-source Python AST execution and Z3 boolean relation",
    "decision_relation": "old and new differ iff not forced, timestamp exists, K digest matches, Kontrol version matches, and Foundry freshness differs from options-digest freshness",
    "z3_counterexample_to_relation": proof,
    "native_decisions": observed,
    "scope": "whether foundry_kompile reaches the kevm_kompile call; K output artifacts not compared",
    "verdict": "NOT_EQUIV for the recompilation decision in both directions",
}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["verdict"])
