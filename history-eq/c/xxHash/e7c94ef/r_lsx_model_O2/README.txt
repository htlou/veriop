old.ll/new.ll = opt -passes='default<O2>' -vectorize-loops=false -vectorize-slp=false applied (identically) to r_lsx_model/{old,new}.ll (LSX intrinsics replaced by la_model.py). Normalization only; trusts LLVM's O2 pipeline as the clang -O3 compile already does.
then 'nocapture ' attributes stripped (as the runner's normalize does)
