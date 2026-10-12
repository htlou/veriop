# Frozen C1 CPU benchmark

This directory's earlier custom timing study is now diagnostic only. Use
[the official scoring protocol](OFFICIAL.md) and `official-embench.py` for
current benchmark score comparisons; do not present the custom aggregates
below as official suite scores.

The [task](TASK.md) and [protocol](PROTOCOL.md) define this evaluation. Only
baseline and C1-global are compared. Compiler policy, sources and proof
artifacts remain frozen. The final report is [PERFORMANCE.md](../PERFORMANCE.md).

Inputs and commands are in `../results/c1-performance/plan.json`; raw runs are
in `samples.jsonl`, block order/sibling-load data in `blocks.jsonl`, machine
settings in `environment.json`, and checked outputs in `check-before/` and
`check-after/`. All run files are preserved; scripts refuse to overwrite them.
`summary.json` contains medians, paired bootstrap CIs, p5/p95, CPU-time and
frequency/interference diagnostics. `RESULTS.md` renders every program.

After the actual PMU permission failure, the user explicitly approved
wall-clock first. The current-stage completion audit records that scope;
requested hardware counters remain deferred, not reported as measured.

Prerequisites are the completed native and observed baseline/C1 builds and
the prior frozen functional manifests. Timing uses the unchanged native
MiBench executables. Embench is rebuilt symmetrically with its supported
CPU_MHZ=1000 parameter. Both versions use the same input tree, and outputs go
to /dev/null during measurement. The observer is used only after timing to
recount scaled Embench jumps and verify identical native object bytes.

For a fresh performance run after reproducing the original compilers and
functional checks, execute from `compcert/`:

```bash
set -e
source env.sh
gcc -O2 -Wall -Wextra -o performance/perf-probe performance/perf-probe.c
performance/perf-probe > performance/perf-probe.tsv
python3 - <<'PY'
import json,os,time
from pathlib import Path
p=Path('/sys/devices/system/cpu')
def sample():
    return {int(l.split()[0][3:]):list(map(int,l.split()[1:])) for l in Path('/proc/stat').read_text().splitlines() if l.startswith('cpu') and l[3:4].isdigit()}
a=sample();time.sleep(5);b=sample();load={}
for cpu in os.sched_getaffinity(0):
    d=[y-x for x,y in zip(a[cpu],b[cpu])];load[cpu]=1-(d[3]+d[4])/max(1,sum(d[:8]))
def siblings(cpu):
    return [int(s) for s in (p/f'cpu{cpu}/topology/thread_siblings_list').read_text().strip().split(',')]
rank=sorted((max(load[c] for c in siblings(cpu)),sum(load[c] for c in siblings(cpu)),cpu) for cpu in load if cpu>0 and cpu==min(siblings(cpu)))
record=dict(cpu=rank[0][2],siblings=siblings(rank[0][2]),selection='Five-second baseline-only idle sibling/core sample',top_candidates=rank[:12],all_cpu_busy_fraction=load)
Path('performance/core-selection.json').write_text(json.dumps(record,indent=2)+'\n')
PY
python3 performance/prepare.py > logs/performance-prepare.log 2>&1
python3 performance/run.py check-before > logs/performance-check-before.log 2>&1
python3 performance/analyze.py --self-check
python3 - <<'PY'
import hashlib,json
from pathlib import Path
out=Path('results/c1-performance');record={}
for name in ['plan.json','check-before/summary.json']:
    record[name]=hashlib.sha256((out/name).read_bytes()).hexdigest()
for name in ['prepare.py','run.py','PROTOCOL.md','perf-probe.c']:
    record[name]=hashlib.sha256((Path('performance')/name).read_bytes()).hexdigest()
(out/'pre-timing-freeze.json').write_text(json.dumps(record,indent=2)+'\n')
PY
python3 performance/run.py run > logs/performance-run.log 2>&1
python3 performance/run.py check-after > logs/performance-check-after.log 2>&1
python3 performance/analyze.py
python3 performance/check-scaled-layout.py > logs/performance-scaled-layout.log 2>&1
python3 performance/audit.py
```

The timing subprocess uses a blocking wait. Python's timeout-polling wait is
used for correctness checks/warm-ups only, so it cannot quantize measured
short-run times. Quantiles and paired-bootstrap logic have a runnable exact
2x-effect/null self-check. A full run must contain 5280 measured invocations,
with 80 per variant for each of 33 cases and no rejected observations.

On the recorded host all requested perf_event_open events returned EACCES.
Frequency/governor/boost settings were read-only. The recorded run therefore
reports wall-clock results and sampled frequency, with hardware counters
explicitly unavailable. On a host granting PMU access, add counter collection
as a separate declared evaluation; these scripts do not infer or fabricate it.
