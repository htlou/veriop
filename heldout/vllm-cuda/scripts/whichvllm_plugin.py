"""pytest plugin: record which vllm package / extension binary the run used."""
import hashlib, os


def pytest_sessionstart(session):
    import vllm, vllm._C_stable_libtorch as ext
    so = os.path.realpath(ext.__file__)
    print(f"\n[whichvllm] vllm={vllm.__file__} ext={so} sha256={hashlib.sha256(open(so, 'rb').read()).hexdigest()}")
