#define Q8_GATE(runtime_bytes, cached_bytes) ((runtime_bytes) == 32u)
#define GEMV_GATE(runtime_bytes, cached_bytes) (((runtime_bytes) / 4u) == 8u)
