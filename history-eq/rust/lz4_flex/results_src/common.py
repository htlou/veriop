import json
from pathlib import Path
R = Path('/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex')
META = json.loads((R/'meta.json').read_text())
ENTRIES = {}
def U(name, level, verdict, evidence, artifact, reason=None, kind=None, precondition=None, identical=False, bounded=False):
    return dict(name=name, level=level, verdict=verdict, bounded=bounded, unroll=0, precondition=precondition,
                unsupported_reason=reason, not_equiv_kind=kind,
                artifact_dir='rust/lz4_flex/' + artifact if not artifact.startswith('rust/') else artifact,
                evidence=evidence, evidence_type='identical-llbc' if identical else None)
def E(c, perf, change, units, verdict, raw=None, coverage='full', reason=None, kind=None, notes=''):
    m = META[c]
    if raw is None:
        raws = [u['verdict'] for u in units if u['level'] == 'raw']
        raw = raws[0] if raws else verdict
    ENTRIES[c] = dict(commit=c, date=m['date'], subject=m['subject'], selected_by=m['selected_by'],
                      perf_evidence=perf, change_summary=change, units=units, commit_verdict=verdict,
                      raw_verdict=raw, coverage=coverage, unsupported_reason=reason, not_equiv_kind=kind, notes=notes)
