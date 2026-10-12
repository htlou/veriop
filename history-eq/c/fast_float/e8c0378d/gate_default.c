#if defined(__aarch64__) || defined(_M_ARM64)
#define FASTFLOAT_NEON 1
#endif

#if defined(FASTFLOAT_SSE2) || defined(FASTFLOAT_ARM64)
#define FASTFLOAT_HAS_SIMD 1
#endif
#if !defined(FASTFLOAT_NEON) || defined(FASTFLOAT_HAS_SIMD)
#error unexpected default AArch64 gate
#endif
