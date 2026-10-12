#!/usr/bin/env python3
"""Extract the exact changed builder expressions into a small Rust model."""

from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
subprocess.run(["python3", str(here / "recover.py")], check=True)
parts = []
for side in ("old", "new"):
    source = (here / f"builders.{side}.rs").read_text()
    for kind in ("string", "bytes"):
        assert source.count(f"fn build_many_{kind}(") == 1
        start = source.index(f"fn build_many_{kind}(")
        first = source.index("        let metac = self\n", start)
        end = source.index("        let syntaxc", first)
        expression = source[first:end]
        mode = "Implicit" if side == "old" else "None"
        assert expression.count(f".which_captures(WhichCaptures::{mode})") == 1
        parts.append(f"pub fn {side}_{kind}(self_: &Builder) -> Config {{\n" +
                     expression.replace("self\n", "self_\n", 1) +
                     "    metac\n}\n")

# shortcut: the support types model configuration only; use the historical crate to prove public matching behavior.
support = """#![allow(dead_code)]
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum WhichCaptures { Implicit, None }
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum MatchKind { All }
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Config {
    pub match_kind: MatchKind,
    pub utf8_empty: bool,
    pub which_captures: WhichCaptures,
}
impl Config {
    fn match_kind(mut self, v: MatchKind) -> Self { self.match_kind = v; self }
    fn utf8_empty(mut self, v: bool) -> Self { self.utf8_empty = v; self }
    fn which_captures(mut self, v: WhichCaptures) -> Self { self.which_captures = v; self }
}
pub struct Builder { pub metac: Config }

"""
(here / "contract.rs").write_text(support + "\n".join(parts))
print("Exact build_many configuration expressions extracted; support types are abstract.")
