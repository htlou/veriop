# `b14e6a4`: simplified integer fast path

**Verdict: `EQUIV_PARTIAL` for the public five-byte integer API; the full commit remains unverified.** The [historical source diff](source-scoped.diff) changes the `uint16_t` decimal fast path, `is_integer`, and a big-endian four-byte read. The [public bridge wrapper](wrap_bridge.cpp) calls both `fast_float::from_chars<uint16_t,char>` and the internal `parse_int_string<uint16_t,char>` on five arbitrary bytes with base ten and initial output value 123. Each target packs the returned value, consumed position, and error code into one `uint64_t`. The [source-path audit](public-path-audit.log) verifies that the public integer dispatcher and option defaults are identical in the two revisions and route this nonempty base-ten call to the changed parser. The old and new `ascii_number.h` Git objects are respectively `7422e74fecd083c681e4814c354795cc5e42039c` and `85435373a1425632fc154dbfa7a13e8453cbab37`.

With the installed larger-constant-initializer build of Alive2, the exact historical public `target_public5` checks [old→new](bridge-target_public5-fwd.log) and [new→old](bridge-target_public5-bwd.log) each report **1 correct transformation, 0 incorrect, 0 failed to prove, 0 checker errors**. Neither run reports an approximation. The [old IR](bridge-old-tv.ll) and [new IR](bridge-new-tv.ll) differ, and Clang has inlined the integer dispatcher into both public targets. The same wrapper also checks public↔internal equivalence in [both directions on the parent](bridge-old-pub-to-direct.log) and [both directions on the child](bridge-new-pub-to-direct.log), with the reverse child log [here](bridge-new-direct-to-pub.log) and reverse parent log [here](bridge-old-direct-to-pub.log). The separate internal-parser check remains [old→new](int5-fwd.log) and [new→old](int5-bwd.log). The [checker patch](../../../../alive2/results/search/alive2-constants.patch) changes only the constant-initializer size cutoff from 128 to 4096 bytes, so the 256-byte digit table is modeled. This proves the public call's value, error, and consumed position for the specified compiled x86-64 configuration; other lengths/types/bases, optional parsing macros, and big-endian code remain outside scope.

The earlier [public wrapper](wrap.cpp) calls `fast_float::from_chars` on exactly five arbitrary `char` bytes, with base ten and initial output value 123. Its saved [parent IR](old.ll) and [child IR](new.ll) differ, pass LLVM verification, and inline the changed integer parser into each target function. The [Alive2 inputs](old-tv.ll) and [child input](new-tv.ll) symmetrically omit only TBAA and loop metadata attachments.

The earlier separately compiled public-output targets proved consumed position in [both](target_consumed-fwd.log) [directions](target_consumed-bwd.log) and error code [child→parent](target_error-bwd.log). Their [parent→child error](target_error-fwd.log) and [value checks](target_value-fwd.log) [in both directions](target_value-bwd.log) failed to prove because the standard Alive2 build approximated a constant initializer; a higher initializer limit [timed out](value-patched-fwd-120s.log). The newer combined-output public target above resolves that earlier inconclusive check for exactly five bytes.

The two exact historical public implementations also return identical results in [native differential controls](native-controls.log): all 100,000 five-digit decimal strings, 16 named cases, and 200,000 fixed-seed mixed strings of length 1–8. Those tests supplement the five-byte proof; they do not prove the other lengths. No official before/after performance benchmark score was measured.

The [native control script](native_controls.py) reruns those cases after compiling `wrap.cpp` as each historical shared library with the corresponding include directory, `-O2 -fPIC -shared -Wl,-Bsymbolic`.

Reproduce the proof attempts from the project root:

```sh
mkdir -p /tmp/ff-b14-old /tmp/ff-b14-new
git -C benchmarks/repos/fast_float archive b14e6a466a^ include | tar -x -C /tmp/ff-b14-old
git -C benchmarks/repos/fast_float archive b14e6a466a include | tar -x -C /tmp/ff-b14-new
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -fPIC -shared -Wl,-Bsymbolic -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-b14-old/include history-eq/c/fast_float/b14e6a4/wrap.cpp -L /usr/lib/gcc/x86_64-linux-gnu/11 -o /tmp/ff-b14-old/libprobe.so
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -fPIC -shared -Wl,-Bsymbolic -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-b14-new/include history-eq/c/fast_float/b14e6a4/wrap.cpp -L /usr/lib/gcc/x86_64-linux-gnu/11 -o /tmp/ff-b14-new/libprobe.so
python3 history-eq/c/fast_float/b14e6a4/native_controls.py
alive2/build/alive2/alive-tv --func=target_consumed --always-verify --smt-to=30000 history-eq/c/fast_float/b14e6a4/old-tv.ll history-eq/c/fast_float/b14e6a4/new-tv.ll
alive2/build/alive2/alive-tv --func=target_consumed --always-verify --smt-to=30000 history-eq/c/fast_float/b14e6a4/new-tv.ll history-eq/c/fast_float/b14e6a4/old-tv.ll
alive2/build/alive2/alive-tv --func=target_value --always-verify --smt-to=30000 history-eq/c/fast_float/b14e6a4/old-tv.ll history-eq/c/fast_float/b14e6a4/new-tv.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -S -emit-llvm -fno-vectorize -fno-slp-vectorize -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-b14-old/include history-eq/c/fast_float/b14e6a4/wrap_int5.cpp -o history-eq/c/fast_float/b14e6a4/int5-old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -S -emit-llvm -fno-vectorize -fno-slp-vectorize -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-b14-new/include history-eq/c/fast_float/b14e6a4/wrap_int5.cpp -o history-eq/c/fast_float/b14e6a4/int5-new.ll
sed -E 's/, !tbaa ![0-9]+//g' history-eq/c/fast_float/b14e6a4/int5-old.ll > history-eq/c/fast_float/b14e6a4/int5-old-tv.ll
sed -E 's/, !tbaa ![0-9]+//g' history-eq/c/fast_float/b14e6a4/int5-new.ll > history-eq/c/fast_float/b14e6a4/int5-new-tv.ll
alive2/build/alive2-constants/alive-tv --func=target_int5 --always-verify --smt-to=30000 history-eq/c/fast_float/b14e6a4/int5-old-tv.ll history-eq/c/fast_float/b14e6a4/int5-new-tv.ll
alive2/build/alive2-constants/alive-tv --func=target_int5 --always-verify --smt-to=30000 history-eq/c/fast_float/b14e6a4/int5-new-tv.ll history-eq/c/fast_float/b14e6a4/int5-old-tv.ll
python3 history-eq/c/fast_float/b14e6a4/check_public_path.py
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -mllvm -inline-threshold=100000 -S -emit-llvm -fno-vectorize -fno-slp-vectorize -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-b14-old/include history-eq/c/fast_float/b14e6a4/wrap_bridge.cpp -o history-eq/c/fast_float/b14e6a4/bridge-old.ll
alive2/toolchain/usr/lib/llvm-20/bin/clang++ -std=c++23 -O2 -mllvm -inline-threshold=100000 -S -emit-llvm -fno-vectorize -fno-slp-vectorize -isystem /usr/include/c++/11 -isystem /usr/include/x86_64-linux-gnu/c++/11 -I /tmp/ff-b14-new/include history-eq/c/fast_float/b14e6a4/wrap_bridge.cpp -o history-eq/c/fast_float/b14e6a4/bridge-new.ll
sed -E 's/, !tbaa ![0-9]+//g' history-eq/c/fast_float/b14e6a4/bridge-old.ll > history-eq/c/fast_float/b14e6a4/bridge-old-tv.ll
sed -E 's/, !tbaa ![0-9]+//g' history-eq/c/fast_float/b14e6a4/bridge-new.ll > history-eq/c/fast_float/b14e6a4/bridge-new-tv.ll
alive2/build/alive2-constants/alive-tv --func=target_public5 --always-verify --smt-to=60000 history-eq/c/fast_float/b14e6a4/bridge-old-tv.ll history-eq/c/fast_float/b14e6a4/bridge-new-tv.ll
alive2/build/alive2-constants/alive-tv --func=target_public5 --always-verify --smt-to=60000 history-eq/c/fast_float/b14e6a4/bridge-new-tv.ll history-eq/c/fast_float/b14e6a4/bridge-old-tv.ll
```
