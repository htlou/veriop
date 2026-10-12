#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
if [ ! -f "$OPAMROOT/config" ]; then
  opam init --bare --disable-sandboxing --no-setup --yes default https://opam.ocaml.org
fi
if ! opam switch list --short | rg -qx compcert; then
  opam switch create compcert ocaml-base-compiler.4.14.2 --yes --jobs=16
fi
opam install --yes --assume-depexts --jobs=16 coq.8.20.1 menhir.20250912 ocamlfind
opam list --installed --json="$COMPCERT_WORK/results/opam-installed.json"
coqc --version
ocamlc -version
menhir --version
