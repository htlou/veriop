"""Run a command once and preserve its command, exit status, and combined output."""
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time


def run(prefix, command):
    prefix = Path(prefix)
    metadata = prefix.with_suffix('.json')
    log = prefix.with_suffix('.log')
    assert not metadata.exists() and not log.exists(), 'Preserve existing evidence'
    record = {'command': list(map(str, command)), 'cwd': str(Path.cwd()),
              'started_unix': time.time()}
    metadata.write_text(json.dumps(record, indent=2) + '\n')
    with log.open('x') as output:
        proc = subprocess.run(record['command'], stdout=output, stderr=subprocess.STDOUT)
    record.update(returncode=proc.returncode, elapsed_seconds=time.time()-record['started_unix'],
                  log_sha256=hashlib.sha256(log.read_bytes()).hexdigest())
    metadata.write_text(json.dumps(record, indent=2) + '\n')
    print(f'{prefix}: exit {proc.returncode}', flush=True)
    return proc.returncode


if __name__ == '__main__':
    sys.exit(run(sys.argv[1], sys.argv[2:]))
