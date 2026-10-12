import json, sys
sys.path.insert(0, '.')
from common import ENTRIES, META, R
import e2020, e2021, e2023, patches
missing = [c for c in META if c not in ENTRIES]
todo = [c for c, e in ENTRIES.items() if e['commit_verdict'] == 'TODO' or any(u['verdict'] == 'TODO' or u['evidence'] == 'TODO' for u in e['units'])]
print('entries', len(ENTRIES), 'missing', missing, 'todo', todo)
