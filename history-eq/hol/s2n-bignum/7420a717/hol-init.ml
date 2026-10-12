#directory "+compiler-libs";;
#load "ocamlcommon.cma";;
#directory "/srv/home/hantaolou/code/veriop/aeneas/env/opam/5.3.0/lib/zarith";;
#load "zarith.cma";;
#directory "/srv/home/hantaolou/code/veriop/benchmarks/tools/hol-light";;
#load "bignum.cmo";;
#use "/srv/home/hantaolou/code/veriop/benchmarks/tools/hol-light/hol.ml";;
let _ = Bytes.length (Bytes.create 1);;
let bprintf = Printf.bprintf;;
