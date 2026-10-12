#!/usr/bin/env python3
"""Extract both exact historical can_exec bodies into one Rust checker crate."""

from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
subprocess.run(["python3", str(here / "recover.py")], check=True)
parts = []
for side in ("old", "new"):
    source = (here / f"dfa.{side}.rs").read_text()
    start = source.index("pub fn can_exec(insts: &Program) -> bool {")
    body = source[start:source.index("\n}\n", start) + 2]
    assert body.count("if insts.dfa_size_limit == 0") == (side == "new")
    parts.append(body.replace("pub fn can_exec(", f"pub fn can_exec_{side}("))

support = """#![allow(dead_code)]
mod prog {
    #[derive(Clone, Copy)]
    pub enum Inst {
        Char(u8), Ranges(u8), EmptyLook(u8), Match(u8),
        Save(u8), Split(u8), Bytes(u8),
    }
    pub struct Program { pub dfa_size_limit: usize, pub insts: Vec<Inst> }
    impl Program { pub fn len(&self) -> usize { self.insts.len() } }
    impl<'a> IntoIterator for &'a Program {
        type Item = &'a Inst;
        type IntoIter = std::slice::Iter<'a, Inst>;
        fn into_iter(self) -> Self::IntoIter { self.insts.iter() }
    }
}
use prog::Program;

"""
witness = """
pub fn zero_limit_witness() -> (bool, bool) {
    let program = Program { dfa_size_limit: 0, insts: Vec::new() };
    (can_exec_old(&program), can_exec_new(&program))
}
"""
(here / "contract.rs").write_text(support + "\n\n".join(parts) + witness)
print("Exact can_exec bodies extracted; only the function names changed.")
