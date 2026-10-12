old.ll/new.ll = opt -passes='default<O2>' -vectorize-loops=false -vectorize-slp=false applied identically to r_lsx_model/{old,new}.ll (normalization only)
then 'nocapture ' attributes stripped (as the runner's normalize does)
