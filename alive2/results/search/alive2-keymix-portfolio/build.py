from pathlib import Path
import hashlib,json,shlex,subprocess,shutil,difflib
root=Path(__file__).resolve().parents[3]
build=root/'build/alive2'
out=Path(__file__).resolve().parent
original=root/'repos/alive2/smt/solver.cpp'
s=original.read_text()
replacement = '    Z3_params params = Z3_mk_params(ctx());\n    Z3_params_inc_ref(ctx(), params);\n    for (auto *key : {"blast_select_store", "push_ite_bv", "bv_extract_prop", "bv_sort_ac"})\n      Z3_params_set_bool(ctx(), params, Z3_mk_string_symbol(ctx(), key), true);\n    Tactic simplify(Z3_mk_tactic(ctx(), "simplify"));\n    Tactic normalize(Z3_tactic_using_params(ctx(), simplify.t, params));\n    Z3_params_dec_ref(ctx(), params);\n    Tactic solve(Z3_mk_tactic(ctx(), "qfaufbv"));\n    Tactic decided(Z3_mk_tactic(ctx(), "fail-if-undecided"));\n    Tactic finish(Z3_tactic_and_then(ctx(), solve.t, decided.t));\n    Tactic fast(Z3_tactic_and_then(ctx(), normalize.t, finish.t));\n    Tactic limited(Z3_tactic_try_for(ctx(), fast.t, 1000));\n    Tactic portfolio(Z3_tactic_or_else(ctx(), limited.t, tactics.t));\n    return Z3_mk_solver_from_tactic(ctx(), portfolio.t);'
assert s.count('    return Z3_mk_solver_from_tactic(ctx(), tactics.t);') == 1
s=s.replace('    return Z3_mk_solver_from_tactic(ctx(), tactics.t);', replacement)
(out/'solver.cpp').write_text(s)
(out/'solver.patch').write_text(''.join(difflib.unified_diff(original.read_text().splitlines(True),s.splitlines(True),fromfile='a/smt/solver.cpp',tofile='b/smt/solver.cpp')))
commands=[]
def run(cmd):
 commands.append(cmd);subprocess.run(cmd,cwd=build,check=True)
def ninja_cmd(target):
 return shlex.split(subprocess.check_output(['ninja','-t','commands',target],cwd=build,text=True).splitlines()[-1])
cmd=ninja_cmd('CMakeFiles/smt.dir/smt/solver.cpp.o')
for flag,value in [('-o',str(out/'solver.cpp.o')),('-MF',str(out/'solver.cpp.o.d'))]: cmd[cmd.index(flag)+1]=value
cmd[-1]=str(out/'solver.cpp')
run(cmd)
shutil.copyfile(build/'libsmt.a',out/'libsmt.a')
run(['ar','r',str(out/'libsmt.a'),str(out/'solver.cpp.o')])
cmd=ninja_cmd('alive-tv')
assert cmd[:2]==[':','&&'] and cmd[-2:]==['&&',':']
cmd=cmd[2:-2];cmd[cmd.index('-o')+1]=str(out/'alive-tv');cmd=[str(out/'libsmt.a') if x=='libsmt.a' else x for x in cmd]
run(cmd)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
record=dict(commands=commands,base_commit=subprocess.check_output(['git','-C',str(root/'repos/alive2'),'rev-parse','HEAD'],text=True).strip(),base_checker_sha256=sha(build/'alive-tv'),checker_sha256=sha(out/'alive-tv'),source_sha256=sha(out/'solver.cpp'),patch_sha256=sha(out/'solver.patch'),base_link_inputs={str(p):sha(p) for p in [build/'libir.a',build/'libllvm_util.a',build/'libtools.a',build/'libutil.a',build/'libsmt.a',build/'CMakeFiles/alive-tv.dir/tools/alive-tv.cpp.o']})
(out/'build.json').write_text(json.dumps(record,indent=2)+'\n')
print('Built isolated verifier',record['checker_sha256'],flush=True)
