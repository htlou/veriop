#!/usr/bin/env bash
# usage: fns.sh <commit>  -- list hunk headers (enclosing fn) of the commit in scope files
H=/srv/home/hantaolou/code/veriop/history-eq
git -C $H/repos/lz4_flex -c core.attributesFile=$H/rust/lz4_flex/scripts/gitattributes -c diff.rust.xfuncname='^[ \t]*((pub(\([^)]*\))? )?(const )?(unsafe )?(fn|impl|struct|enum|trait|mod|macro_rules!) .*)$' \
  show -U0 --format='%h %s' "$1" -- src/ ':(exclude)src/tests.rs' ':(exclude,glob)src/**/tests*' ':(exclude)src/bin' ':(exclude)src/test_bins' ':(exclude)src/main.rs' | grep -E '^(@@|diff|[0-9a-f]{7} )' | sed -E 's/^@@ [^@]*@@ ?/   /' | sed 's/^diff --git a\///'
