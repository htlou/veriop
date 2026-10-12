# Measuring the actual Linear representation

CompCert 3.18 has an LTL dump but no Linear dump. The observer is attached only
to the existing untrusted `PrintLTL.print_if` hook in a separate instrumented
build. It replays the extracted `Tunneling.tunnel_program` and
`Linearize.transf_function` on the immutable input; these are exactly the
passes that follow that printer in `Compiler.v`. It counts constructors in
the resulting checked Linear IR. It does not change `Compiler.v`, extraction
mappings, the validator, or the program returned by the real pipeline.

The optimization patch and the observation patch are separate. Both baseline
and candidate receive byte-identical observer code. Native object/executable
comparisons with observation disabled/enabled are required to establish that
measurement does not change generated code. The original enumeration checker
runs during observation and again in the normal compiler path. Error cases
are logged and the normal compiler still reports its own validation failure.

Eligible edges are outgoing arms of reachable Lbranch (one) and Lcond (two).
Jumptable arms are reported separately: this Linear IR cannot replace an
individual jumptable arm with fall-through. Synthetic function-entry transfers
are reported separately. Each branch or conditional terminator offers at most
one fall-through slot. In the checked Linear result, each unfilled slot is
one Lgoto; hence fall-through edges equal slots minus body Lgoto instructions.
The entry Lgoto is excluded from that subtraction but included in total jump
counts. Raw Linear control events are saved for independent count checking.

This observer is not part of the formal proof and does not claim to prove a
new theorem. Compiler validity rests on unchanged CompCert validation and
semantic-preservation proofs. The C1 transparency audit checks 340
native/observed executable pairs across baseline and three policies, in all
four tiers; every loadable section is byte-identical. Only temporary object
names in the non-loaded ELF string table may differ. See
`../results/observer-transparency-c1.json` and replay with
`python3 check-transparency.py --c1` from the experiment root.

The current observer also records raw CFG edges and entry IDs. Independent
Python reconstruction in `../c1/weighted_metrics.py` derives SCCs and actual
fall-through from Linear label prefixes and control events, checking the
unweighted total against the observer. Weights are 8 within an SCC and 1
otherwise: a static loop proxy, not dynamic frequency. Per-function and
per-program results appear in each `*-comparison.json`. The earlier observer
is retained in `v1/PrintLayout.ml` and its 170-pair audit remains historical
evidence for v2.

MiBench attribution follows each executable's actual linker map, including
only directly linked objects and selected archive members. Each selected
archive member is checked byte-for-byte against its recorded compiled object.
Shared library code is counted once per executable that includes it, not once
per whole suite. Fixed system/CompCert runtime objects are excluded from the
Linear counts; executable `.text` includes the normal linked runtime code.
All source hashes must match the frozen baseline discovery inputs.

`SOURCE_DATE_EPOCH=0` is used for both MiBench compilers because Lout embeds
`__TIME__`. The initial builds with an uncontrolled clock are retained as
diagnostic attempts and are not the reported comparison. The frozen compiler
flag adapter and benchmark sources remain unchanged.
