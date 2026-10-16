"""GPU selection/state helpers. Policy: GPU 7, else 5, else 4 (never 6, never 0-3); a GPU is usable only if no
compute process is on it and memory.used is ~0."""
import subprocess

ORDER = [7, 5, 4]


def q(args):
    return subprocess.run(['nvidia-smi', *args], capture_output=True, text=True, check=True).stdout.strip()


def state(idx):
    uuid = q(['-i', str(idx), '--query-gpu=uuid', '--format=csv,noheader'])
    apps = [l for l in q(['--query-compute-apps=gpu_uuid,pid', '--format=csv,noheader']).splitlines() if l.strip()]
    on_gpu = [l for l in apps if l.split(',')[0].strip() == uuid]
    fields = 'utilization.gpu,memory.used,clocks.sm,clocks.mem,temperature.gpu,power.draw,pstate'
    vals = q(['-i', str(idx), f'--query-gpu={fields}', '--format=csv,noheader,nounits']).split(', ')
    st = dict(zip(fields.split(','), vals))
    st.update(index=idx, uuid=uuid, compute_apps_on_gpu=on_gpu, all_compute_apps=apps)
    st['idle'] = not on_gpu and int(st['memory.used']) < 10
    return st


def pick():
    for i in ORDER:
        s = state(i)
        if s['idle']:
            return i, s
    raise RuntimeError('no idle GPU among 7/5/4')
