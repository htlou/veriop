// LD_PRELOAD shim: alive-tv hard-codes Z3's memory_high_watermark to 2 GB
// (alive2 smt/ctx.cpp). This raises that resource limit only (value from
// Z3MEM_BYTES, default 48 GiB); every other Z3 parameter is passed through
// unchanged. It does not change any semantics or verification logic.
#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
typedef void (*fn_t)(const char *, const char *);
void Z3_global_param_set(const char *id, const char *val) {
  static fn_t real = 0;
  if (!real) real = (fn_t)dlsym(RTLD_NEXT, "Z3_global_param_set");
  if (id && strcmp(id, "memory_high_watermark") == 0) {
    const char *v = getenv("Z3MEM_BYTES");
    val = v ? v : "51539607552";
    fprintf(stderr, "[z3mem_shim] memory_high_watermark=%s\n", val);
  }
  real(id, val);
}
