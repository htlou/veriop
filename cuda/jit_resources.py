"""Query the driver's actual JIT resource usage without executing the kernel."""
import ctypes as c
import hashlib
import json
import os
from pathlib import Path
import sys

ptx, symbol, block = Path(sys.argv[1]), sys.argv[2], int(sys.argv[3])
assert 1 <= block <= 1024
driver = c.CDLL('libcuda.so.1')
ptr = c.c_void_p
integer = c.c_int


def call(name, types, *args):
    function = getattr(driver, name)
    function.argtypes = types
    function.restype = integer
    result = function(*args)
    if result:
        raise RuntimeError(f'{name}: CUDA error {result}')


call('cuInit', [c.c_uint], 0)
device, context, module, function = integer(), ptr(), ptr(), ptr()
call('cuDeviceGet', [c.POINTER(integer), integer], c.byref(device), 0)
call('cuCtxCreate_v2', [c.POINTER(ptr), c.c_uint, integer], c.byref(context), 0, device)
try:
    call('cuModuleLoad', [c.POINTER(ptr), c.c_char_p], c.byref(module), os.fsencode(ptx))
    call('cuModuleGetFunction', [c.POINTER(ptr), ptr, c.c_char_p], c.byref(function), module, symbol.encode())
    result = dict(ptx_sha256=hashlib.sha256(ptx.read_bytes()).hexdigest(), kernel=symbol,
                  block=block, dynamic_shared_bytes=128, cuda_visible_devices=os.environ.get('CUDA_VISIBLE_DEVICES'))
    for name, attribute in [('registers_per_thread', 4), ('static_shared_bytes', 1), ('local_bytes', 3)]:
        value = integer()
        call('cuFuncGetAttribute', [c.POINTER(integer), integer, ptr], c.byref(value), attribute, function)
        result[name] = value.value
    active, max_threads = integer(), integer()
    call('cuOccupancyMaxActiveBlocksPerMultiprocessor', [c.POINTER(integer), ptr, integer, c.c_size_t],
         c.byref(active), function, block, 128)
    call('cuDeviceGetAttribute', [c.POINTER(integer), integer, integer], c.byref(max_threads), 39, device)
    result.update(max_active_blocks_per_sm=active.value,
                  theoretical_occupancy=active.value * block / max_threads.value)
    print(json.dumps(result, indent=2))
finally:
    call('cuCtxDestroy_v2', [ptr], context)
