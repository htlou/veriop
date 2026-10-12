#include <stddef.h>

typedef struct XXH3_state_s XXH3_state_t;
typedef void (*accumulate_fn)(void *, const void *, const void *, int);
typedef void (*scramble_fn)(void *, const void *);

extern int XXH3_update(XXH3_state_t *, const unsigned char *, size_t, int,
                       accumulate_fn, scramble_fn);

#define DECLARE_BACKEND(name) \
  extern void XXH3_accumulate_512_##name(void *, const void *, const void *, int); \
  extern void XXH3_scrambleAcc_##name(void *, const void *)

DECLARE_BACKEND(scalar);
DECLARE_BACKEND(sse2);
DECLARE_BACKEND(avx2);
DECLARE_BACKEND(avx512);

#define DISPATCH_ARGS(name) XXH3_accumulate_512_##name, XXH3_scrambleAcc_##name

