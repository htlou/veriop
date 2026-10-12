 unsigned XXH_versionNumber (void);
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef enum { XXH_OK=0, XXH_ERROR } XXH_errorcode;
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
 typedef uint32_t XXH32_hash_t;
               XXH32_hash_t XXH32 (const void* input, size_t length, XXH32_hash_t seed);
typedef struct XXH32_state_s XXH32_state_t;
               XXH32_state_t* XXH32_createState(void);
               XXH_errorcode XXH32_freeState(XXH32_state_t* statePtr);
               void XXH32_copyState(XXH32_state_t* dst_state, const XXH32_state_t* src_state);
               XXH_errorcode XXH32_reset (XXH32_state_t* statePtr, XXH32_hash_t seed);
               XXH_errorcode XXH32_update (XXH32_state_t* statePtr, const void* input, size_t length);
               XXH32_hash_t XXH32_digest (const XXH32_state_t* statePtr);
typedef struct {
    unsigned char digest[4];
} XXH32_canonical_t;
               void XXH32_canonicalFromHash(XXH32_canonical_t* dst, XXH32_hash_t hash);
               XXH32_hash_t XXH32_hashFromCanonical(const XXH32_canonical_t* src);
   typedef uint64_t XXH64_hash_t;
               XXH64_hash_t XXH64(const void* input, size_t length, XXH64_hash_t seed);
typedef struct XXH64_state_s XXH64_state_t;
               XXH64_state_t* XXH64_createState(void);
               XXH_errorcode XXH64_freeState(XXH64_state_t* statePtr);
               void XXH64_copyState(XXH64_state_t* dst_state, const XXH64_state_t* src_state);
               XXH_errorcode XXH64_reset (XXH64_state_t* statePtr, XXH64_hash_t seed);
               XXH_errorcode XXH64_update (XXH64_state_t* statePtr, const void* input, size_t length);
               XXH64_hash_t XXH64_digest (const XXH64_state_t* statePtr);
typedef struct { unsigned char digest[sizeof(XXH64_hash_t)]; } XXH64_canonical_t;
               void XXH64_canonicalFromHash(XXH64_canonical_t* dst, XXH64_hash_t hash);
               XXH64_hash_t XXH64_hashFromCanonical(const XXH64_canonical_t* src);
               XXH64_hash_t XXH3_64bits(const void* data, size_t len);
               XXH64_hash_t XXH3_64bits_withSeed(const void* data, size_t len, XXH64_hash_t seed);
               XXH64_hash_t XXH3_64bits_withSecret(const void* data, size_t len, const void* secret, size_t secretSize);
typedef struct XXH3_state_s XXH3_state_t;
               XXH3_state_t* XXH3_createState(void);
               XXH_errorcode XXH3_freeState(XXH3_state_t* statePtr);
               void XXH3_copyState(XXH3_state_t* dst_state, const XXH3_state_t* src_state);
               XXH_errorcode XXH3_64bits_reset(XXH3_state_t* statePtr);
               XXH_errorcode XXH3_64bits_reset_withSeed(XXH3_state_t* statePtr, XXH64_hash_t seed);
               XXH_errorcode XXH3_64bits_reset_withSecret(XXH3_state_t* statePtr, const void* secret, size_t secretSize);
               XXH_errorcode XXH3_64bits_update (XXH3_state_t* statePtr, const void* input, size_t length);
               XXH64_hash_t XXH3_64bits_digest (const XXH3_state_t* statePtr);
typedef struct {
    XXH64_hash_t low64;
    XXH64_hash_t high64;
} XXH128_hash_t;
               XXH128_hash_t XXH3_128bits(const void* data, size_t len);
               XXH128_hash_t XXH3_128bits_withSeed(const void* data, size_t len, XXH64_hash_t seed);
               XXH128_hash_t XXH3_128bits_withSecret(const void* data, size_t len, const void* secret, size_t secretSize);
               XXH_errorcode XXH3_128bits_reset(XXH3_state_t* statePtr);
               XXH_errorcode XXH3_128bits_reset_withSeed(XXH3_state_t* statePtr, XXH64_hash_t seed);
               XXH_errorcode XXH3_128bits_reset_withSecret(XXH3_state_t* statePtr, const void* secret, size_t secretSize);
               XXH_errorcode XXH3_128bits_update (XXH3_state_t* statePtr, const void* input, size_t length);
               XXH128_hash_t XXH3_128bits_digest (const XXH3_state_t* statePtr);
               int XXH128_isEqual(XXH128_hash_t h1, XXH128_hash_t h2);
               int XXH128_cmp(const void* h128_1, const void* h128_2);
typedef struct { unsigned char digest[sizeof(XXH128_hash_t)]; } XXH128_canonical_t;
               void XXH128_canonicalFromHash(XXH128_canonical_t* dst, XXH128_hash_t hash);
               XXH128_hash_t XXH128_hashFromCanonical(const XXH128_canonical_t* src);
struct XXH32_state_s {
   XXH32_hash_t total_len_32;
   XXH32_hash_t large_len;
   XXH32_hash_t v1;
   XXH32_hash_t v2;
   XXH32_hash_t v3;
   XXH32_hash_t v4;
   XXH32_hash_t mem32[4];
   XXH32_hash_t memsize;
   XXH32_hash_t reserved;
};
struct XXH64_state_s {
   XXH64_hash_t total_len;
   XXH64_hash_t v1;
   XXH64_hash_t v2;
   XXH64_hash_t v3;
   XXH64_hash_t v4;
   XXH64_hash_t mem64[4];
   XXH32_hash_t memsize;
   XXH32_hash_t reserved32;
   XXH64_hash_t reserved64;
};
struct XXH3_state_s {
   XXH64_hash_t acc[8] __attribute__ ((aligned(64)));
   unsigned char customSecret[192] __attribute__ ((aligned(64)));
   unsigned char buffer[256] __attribute__ ((aligned(64)));
   XXH32_hash_t bufferedSize;
   XXH32_hash_t reserved32;
   size_t nbStripesSoFar;
   XXH64_hash_t totalLen;
   size_t nbStripesPerBlock;
   size_t secretLimit;
   XXH64_hash_t seed;
   XXH64_hash_t reserved64;
   const unsigned char* extSecret;
};
               void XXH3_generateSecret(void* secretBuffer, const void* customSeed, size_t customSeedSize);
               XXH128_hash_t XXH128(const void* data, size_t len, XXH64_hash_t seed);
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
typedef struct
  {
    int quot;
    int rem;
  } div_t;
typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;
__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ )) ;
extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int rand (void) __attribute__ ((__nothrow__ ));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__)) ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int system (const char *__command) ;
typedef int (*__compar_fn_t) (const void *, const void *);
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
extern int abs (int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ ));
extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));
extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ ));
extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ))
                                      ;
extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ ))
                                    ;
static void* XXH_malloc(size_t s) { return malloc(s); }
static void XXH_free(void* p) { free(p); }
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int __memcmpeq (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
    __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
static void* XXH_memcpy(void* dest, const void* src, size_t size)
{
    return memcpy(dest,src,size);
}
 typedef uint8_t xxh_u8;
typedef XXH32_hash_t xxh_u32;
static xxh_u32 XXH_read32(const void* memPtr)
{
    xxh_u32 val;
    memcpy(&val, memPtr, sizeof(val));
    return val;
}
static xxh_u32 XXH_swap32 (xxh_u32 x)
{
    return ((x << 24) & 0xff000000 ) |
            ((x << 8) & 0x00ff0000 ) |
            ((x >> 8) & 0x0000ff00 ) |
            ((x >> 24) & 0x000000ff );
}
typedef enum {
    XXH_aligned,
    XXH_unaligned
} XXH_alignment;
static __attribute__((unused)) xxh_u32 XXH_readLE32(const void* ptr)
{
    return 1 ? XXH_read32(ptr) : XXH_swap32(XXH_read32(ptr));
}
static xxh_u32 XXH_readBE32(const void* ptr)
{
    return 1 ? XXH_swap32(XXH_read32(ptr)) : XXH_read32(ptr);
}
static __attribute__((unused)) xxh_u32
XXH_readLE32_align(const void* ptr, XXH_alignment align)
{
    if (align==XXH_unaligned) {
        return XXH_readLE32(ptr);
    } else {
        return 1 ? *(const xxh_u32*)ptr : XXH_swap32(*(const xxh_u32*)ptr);
    }
}
               unsigned XXH_versionNumber (void) { return (0 *100*100 + 8 *100 + 1); }
static xxh_u32 XXH32_round(xxh_u32 acc, xxh_u32 input)
{
    acc += input * 0x85EBCA77U;
    acc = __builtin_rotateleft32(acc, 13);
    acc *= 0x9E3779B1U;
    return acc;
}
static xxh_u32 XXH32_avalanche(xxh_u32 h32)
{
    h32 ^= h32 >> 15;
    h32 *= 0x85EBCA77U;
    h32 ^= h32 >> 13;
    h32 *= 0xC2B2AE3DU;
    h32 ^= h32 >> 16;
    return(h32);
}
static xxh_u32
XXH32_finalize(xxh_u32 h32, const xxh_u8* ptr, size_t len, XXH_alignment align)
{
    if (ptr==((void*)0)) ((void)0);
    if (0) {
        len &= 15;
        while (len >= 4) {
            do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
            len -= 4;
        }
        while (len > 0) {
            do { h32 += (*ptr++) * 0x165667B1U; h32 = __builtin_rotateleft32(h32, 11) * 0x9E3779B1U; } while (0);
            --len;
        }
        return XXH32_avalanche(h32);
    } else {
         switch(len&15) {
           case 12: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         __attribute__ ((fallthrough));
           case 8: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         __attribute__ ((fallthrough));
           case 4: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         return XXH32_avalanche(h32);
           case 13: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         __attribute__ ((fallthrough));
           case 9: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         __attribute__ ((fallthrough));
           case 5: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         do { h32 += (*ptr++) * 0x165667B1U; h32 = __builtin_rotateleft32(h32, 11) * 0x9E3779B1U; } while (0);
                         return XXH32_avalanche(h32);
           case 14: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         __attribute__ ((fallthrough));
           case 10: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         __attribute__ ((fallthrough));
           case 6: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         do { h32 += (*ptr++) * 0x165667B1U; h32 = __builtin_rotateleft32(h32, 11) * 0x9E3779B1U; } while (0);
                         do { h32 += (*ptr++) * 0x165667B1U; h32 = __builtin_rotateleft32(h32, 11) * 0x9E3779B1U; } while (0);
                         return XXH32_avalanche(h32);
           case 15: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         __attribute__ ((fallthrough));
           case 11: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         __attribute__ ((fallthrough));
           case 7: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = __builtin_rotateleft32(h32, 17) * 0x27D4EB2FU; } while (0);
                         __attribute__ ((fallthrough));
           case 3: do { h32 += (*ptr++) * 0x165667B1U; h32 = __builtin_rotateleft32(h32, 11) * 0x9E3779B1U; } while (0);
                         __attribute__ ((fallthrough));
           case 2: do { h32 += (*ptr++) * 0x165667B1U; h32 = __builtin_rotateleft32(h32, 11) * 0x9E3779B1U; } while (0);
                         __attribute__ ((fallthrough));
           case 1: do { h32 += (*ptr++) * 0x165667B1U; h32 = __builtin_rotateleft32(h32, 11) * 0x9E3779B1U; } while (0);
                         __attribute__ ((fallthrough));
           case 0: return XXH32_avalanche(h32);
        }
        ((void)0);
        return h32;
    }
}
static __attribute__((unused)) xxh_u32
XXH32_endian_align(const xxh_u8* input, size_t len, xxh_u32 seed, XXH_alignment align)
{
    xxh_u32 h32;
    if (input==((void*)0)) ((void)0);
    if (len>=16) {
        const xxh_u8* const bEnd = input + len;
        const xxh_u8* const limit = bEnd - 15;
        xxh_u32 v1 = seed + 0x9E3779B1U + 0x85EBCA77U;
        xxh_u32 v2 = seed + 0x85EBCA77U;
        xxh_u32 v3 = seed + 0;
        xxh_u32 v4 = seed - 0x9E3779B1U;
        do {
            v1 = XXH32_round(v1, XXH_readLE32_align(input, align)); input += 4;
            v2 = XXH32_round(v2, XXH_readLE32_align(input, align)); input += 4;
            v3 = XXH32_round(v3, XXH_readLE32_align(input, align)); input += 4;
            v4 = XXH32_round(v4, XXH_readLE32_align(input, align)); input += 4;
        } while (input < limit);
        h32 = __builtin_rotateleft32(v1, 1) + __builtin_rotateleft32(v2, 7)
            + __builtin_rotateleft32(v3, 12) + __builtin_rotateleft32(v4, 18);
    } else {
        h32 = seed + 0x165667B1U;
    }
    h32 += (xxh_u32)len;
    return XXH32_finalize(h32, input, len&15, align);
}
               XXH32_hash_t XXH32 (const void* input, size_t len, XXH32_hash_t seed)
{
    if (0) {
        if ((((size_t)input) & 3) == 0) {
            return XXH32_endian_align((const xxh_u8*)input, len, seed, XXH_aligned);
    } }
    return XXH32_endian_align((const xxh_u8*)input, len, seed, XXH_unaligned);
}
               XXH32_state_t* XXH32_createState(void)
{
    return (XXH32_state_t*)XXH_malloc(sizeof(XXH32_state_t));
}
               XXH_errorcode XXH32_freeState(XXH32_state_t* statePtr)
{
    XXH_free(statePtr);
    return XXH_OK;
}
               void XXH32_copyState(XXH32_state_t* dstState, const XXH32_state_t* srcState)
{
    memcpy(dstState, srcState, sizeof(*dstState));
}
               XXH_errorcode XXH32_reset(XXH32_state_t* statePtr, XXH32_hash_t seed)
{
    XXH32_state_t state;
    memset(&state, 0, sizeof(state));
    state.v1 = seed + 0x9E3779B1U + 0x85EBCA77U;
    state.v2 = seed + 0x85EBCA77U;
    state.v3 = seed + 0;
    state.v4 = seed - 0x9E3779B1U;
    memcpy(statePtr, &state, sizeof(state) - sizeof(state.reserved));
    return XXH_OK;
}
               XXH_errorcode
XXH32_update(XXH32_state_t* state, const void* input, size_t len)
{
    if (input==((void*)0)) {
        ((void)0);
        return XXH_OK;
    }
    { const xxh_u8* p = (const xxh_u8*)input;
        const xxh_u8* const bEnd = p + len;
        state->total_len_32 += (XXH32_hash_t)len;
        state->large_len |= (XXH32_hash_t)((len>=16) | (state->total_len_32>=16));
        if (state->memsize + len < 16) {
            XXH_memcpy((xxh_u8*)(state->mem32) + state->memsize, input, len);
            state->memsize += (XXH32_hash_t)len;
            return XXH_OK;
        }
        if (state->memsize) {
            XXH_memcpy((xxh_u8*)(state->mem32) + state->memsize, input, 16-state->memsize);
            { const xxh_u32* p32 = state->mem32;
                state->v1 = XXH32_round(state->v1, XXH_readLE32(p32)); p32++;
                state->v2 = XXH32_round(state->v2, XXH_readLE32(p32)); p32++;
                state->v3 = XXH32_round(state->v3, XXH_readLE32(p32)); p32++;
                state->v4 = XXH32_round(state->v4, XXH_readLE32(p32));
            }
            p += 16-state->memsize;
            state->memsize = 0;
        }
        if (p <= bEnd-16) {
            const xxh_u8* const limit = bEnd - 16;
            xxh_u32 v1 = state->v1;
            xxh_u32 v2 = state->v2;
            xxh_u32 v3 = state->v3;
            xxh_u32 v4 = state->v4;
            do {
                v1 = XXH32_round(v1, XXH_readLE32(p)); p+=4;
                v2 = XXH32_round(v2, XXH_readLE32(p)); p+=4;
                v3 = XXH32_round(v3, XXH_readLE32(p)); p+=4;
                v4 = XXH32_round(v4, XXH_readLE32(p)); p+=4;
            } while (p<=limit);
            state->v1 = v1;
            state->v2 = v2;
            state->v3 = v3;
            state->v4 = v4;
        }
        if (p < bEnd) {
            XXH_memcpy(state->mem32, p, (size_t)(bEnd-p));
            state->memsize = (unsigned)(bEnd-p);
        }
    }
    return XXH_OK;
}
               XXH32_hash_t XXH32_digest(const XXH32_state_t* state)
{
    xxh_u32 h32;
    if (state->large_len) {
        h32 = __builtin_rotateleft32(state->v1, 1)
            + __builtin_rotateleft32(state->v2, 7)
            + __builtin_rotateleft32(state->v3, 12)
            + __builtin_rotateleft32(state->v4, 18);
    } else {
        h32 = state->v3 + 0x165667B1U;
    }
    h32 += state->total_len_32;
    return XXH32_finalize(h32, (const xxh_u8*)state->mem32, state->memsize, XXH_aligned);
}
               void XXH32_canonicalFromHash(XXH32_canonical_t* dst, XXH32_hash_t hash)
{
    do { struct xxh_sa { char x[((sizeof(XXH32_canonical_t) == sizeof(XXH32_hash_t))) ? 1 : -1]; }; } while(0);
    if (1) hash = XXH_swap32(hash);
    memcpy(dst, &hash, sizeof(*dst));
}
               XXH32_hash_t XXH32_hashFromCanonical(const XXH32_canonical_t* src)
{
    return XXH_readBE32(src);
}
typedef XXH64_hash_t xxh_u64;
static xxh_u64 XXH_read64(const void* memPtr)
{
    xxh_u64 val;
    memcpy(&val, memPtr, sizeof(val));
    return val;
}
static xxh_u64 XXH_swap64(xxh_u64 x)
{
    return ((x << 56) & 0xff00000000000000ULL) |
            ((x << 40) & 0x00ff000000000000ULL) |
            ((x << 24) & 0x0000ff0000000000ULL) |
            ((x << 8) & 0x000000ff00000000ULL) |
            ((x >> 8) & 0x00000000ff000000ULL) |
            ((x >> 24) & 0x0000000000ff0000ULL) |
            ((x >> 40) & 0x000000000000ff00ULL) |
            ((x >> 56) & 0x00000000000000ffULL);
}
static __attribute__((unused)) xxh_u64 XXH_readLE64(const void* ptr)
{
    return 1 ? XXH_read64(ptr) : XXH_swap64(XXH_read64(ptr));
}
static xxh_u64 XXH_readBE64(const void* ptr)
{
    return 1 ? XXH_swap64(XXH_read64(ptr)) : XXH_read64(ptr);
}
static __attribute__((unused)) xxh_u64
XXH_readLE64_align(const void* ptr, XXH_alignment align)
{
    if (align==XXH_unaligned)
        return XXH_readLE64(ptr);
    else
        return 1 ? *(const xxh_u64*)ptr : XXH_swap64(*(const xxh_u64*)ptr);
}
static xxh_u64 XXH64_round(xxh_u64 acc, xxh_u64 input)
{
    acc += input * 0xC2B2AE3D27D4EB4FULL;
    acc = __builtin_rotateleft64(acc, 31);
    acc *= 0x9E3779B185EBCA87ULL;
    return acc;
}
static xxh_u64 XXH64_mergeRound(xxh_u64 acc, xxh_u64 val)
{
    val = XXH64_round(0, val);
    acc ^= val;
    acc = acc * 0x9E3779B185EBCA87ULL + 0x85EBCA77C2B2AE63ULL;
    return acc;
}
static xxh_u64 XXH64_avalanche(xxh_u64 h64)
{
    h64 ^= h64 >> 33;
    h64 *= 0xC2B2AE3D27D4EB4FULL;
    h64 ^= h64 >> 29;
    h64 *= 0x165667B19E3779F9ULL;
    h64 ^= h64 >> 32;
    return h64;
}
static xxh_u64
XXH64_finalize(xxh_u64 h64, const xxh_u8* ptr, size_t len, XXH_alignment align)
{
    if (ptr==((void*)0)) ((void)0);
    len &= 31;
    while (len >= 8) {
        xxh_u64 const k1 = XXH64_round(0, XXH_readLE64_align(ptr, align));
        ptr += 8;
        h64 ^= k1;
        h64 = __builtin_rotateleft64(h64,27) * 0x9E3779B185EBCA87ULL + 0x85EBCA77C2B2AE63ULL;
        len -= 8;
    }
    if (len >= 4) {
        h64 ^= (xxh_u64)(XXH_readLE32_align(ptr, align)) * 0x9E3779B185EBCA87ULL;
        ptr += 4;
        h64 = __builtin_rotateleft64(h64, 23) * 0xC2B2AE3D27D4EB4FULL + 0x165667B19E3779F9ULL;
        len -= 4;
    }
    while (len > 0) {
        h64 ^= (*ptr++) * 0x27D4EB2F165667C5ULL;
        h64 = __builtin_rotateleft64(h64, 11) * 0x9E3779B185EBCA87ULL;
        --len;
    }
    return XXH64_avalanche(h64);
}
static __attribute__((unused)) xxh_u64
XXH64_endian_align(const xxh_u8* input, size_t len, xxh_u64 seed, XXH_alignment align)
{
    xxh_u64 h64;
    if (input==((void*)0)) ((void)0);
    if (len>=32) {
        const xxh_u8* const bEnd = input + len;
        const xxh_u8* const limit = bEnd - 31;
        xxh_u64 v1 = seed + 0x9E3779B185EBCA87ULL + 0xC2B2AE3D27D4EB4FULL;
        xxh_u64 v2 = seed + 0xC2B2AE3D27D4EB4FULL;
        xxh_u64 v3 = seed + 0;
        xxh_u64 v4 = seed - 0x9E3779B185EBCA87ULL;
        do {
            v1 = XXH64_round(v1, XXH_readLE64_align(input, align)); input+=8;
            v2 = XXH64_round(v2, XXH_readLE64_align(input, align)); input+=8;
            v3 = XXH64_round(v3, XXH_readLE64_align(input, align)); input+=8;
            v4 = XXH64_round(v4, XXH_readLE64_align(input, align)); input+=8;
        } while (input<limit);
        h64 = __builtin_rotateleft64(v1, 1) + __builtin_rotateleft64(v2, 7) + __builtin_rotateleft64(v3, 12) + __builtin_rotateleft64(v4, 18);
        h64 = XXH64_mergeRound(h64, v1);
        h64 = XXH64_mergeRound(h64, v2);
        h64 = XXH64_mergeRound(h64, v3);
        h64 = XXH64_mergeRound(h64, v4);
    } else {
        h64 = seed + 0x27D4EB2F165667C5ULL;
    }
    h64 += (xxh_u64) len;
    return XXH64_finalize(h64, input, len, align);
}
               XXH64_hash_t XXH64 (const void* input, size_t len, XXH64_hash_t seed)
{
    if (0) {
        if ((((size_t)input) & 7)==0) {
            return XXH64_endian_align((const xxh_u8*)input, len, seed, XXH_aligned);
    } }
    return XXH64_endian_align((const xxh_u8*)input, len, seed, XXH_unaligned);
}
               XXH64_state_t* XXH64_createState(void)
{
    return (XXH64_state_t*)XXH_malloc(sizeof(XXH64_state_t));
}
               XXH_errorcode XXH64_freeState(XXH64_state_t* statePtr)
{
    XXH_free(statePtr);
    return XXH_OK;
}
               void XXH64_copyState(XXH64_state_t* dstState, const XXH64_state_t* srcState)
{
    memcpy(dstState, srcState, sizeof(*dstState));
}
               XXH_errorcode XXH64_reset(XXH64_state_t* statePtr, XXH64_hash_t seed)
{
    XXH64_state_t state;
    memset(&state, 0, sizeof(state));
    state.v1 = seed + 0x9E3779B185EBCA87ULL + 0xC2B2AE3D27D4EB4FULL;
    state.v2 = seed + 0xC2B2AE3D27D4EB4FULL;
    state.v3 = seed + 0;
    state.v4 = seed - 0x9E3779B185EBCA87ULL;
    memcpy(statePtr, &state, sizeof(state) - sizeof(state.reserved64));
    return XXH_OK;
}
               XXH_errorcode
XXH64_update (XXH64_state_t* state, const void* input, size_t len)
{
    if (input==((void*)0)) {
        ((void)0);
        return XXH_OK;
    }
    { const xxh_u8* p = (const xxh_u8*)input;
        const xxh_u8* const bEnd = p + len;
        state->total_len += len;
        if (state->memsize + len < 32) {
            XXH_memcpy(((xxh_u8*)state->mem64) + state->memsize, input, len);
            state->memsize += (xxh_u32)len;
            return XXH_OK;
        }
        if (state->memsize) {
            XXH_memcpy(((xxh_u8*)state->mem64) + state->memsize, input, 32-state->memsize);
            state->v1 = XXH64_round(state->v1, XXH_readLE64(state->mem64+0));
            state->v2 = XXH64_round(state->v2, XXH_readLE64(state->mem64+1));
            state->v3 = XXH64_round(state->v3, XXH_readLE64(state->mem64+2));
            state->v4 = XXH64_round(state->v4, XXH_readLE64(state->mem64+3));
            p += 32 - state->memsize;
            state->memsize = 0;
        }
        if (p+32 <= bEnd) {
            const xxh_u8* const limit = bEnd - 32;
            xxh_u64 v1 = state->v1;
            xxh_u64 v2 = state->v2;
            xxh_u64 v3 = state->v3;
            xxh_u64 v4 = state->v4;
            do {
                v1 = XXH64_round(v1, XXH_readLE64(p)); p+=8;
                v2 = XXH64_round(v2, XXH_readLE64(p)); p+=8;
                v3 = XXH64_round(v3, XXH_readLE64(p)); p+=8;
                v4 = XXH64_round(v4, XXH_readLE64(p)); p+=8;
            } while (p<=limit);
            state->v1 = v1;
            state->v2 = v2;
            state->v3 = v3;
            state->v4 = v4;
        }
        if (p < bEnd) {
            XXH_memcpy(state->mem64, p, (size_t)(bEnd-p));
            state->memsize = (unsigned)(bEnd-p);
        }
    }
    return XXH_OK;
}
               XXH64_hash_t XXH64_digest(const XXH64_state_t* state)
{
    xxh_u64 h64;
    if (state->total_len >= 32) {
        xxh_u64 const v1 = state->v1;
        xxh_u64 const v2 = state->v2;
        xxh_u64 const v3 = state->v3;
        xxh_u64 const v4 = state->v4;
        h64 = __builtin_rotateleft64(v1, 1) + __builtin_rotateleft64(v2, 7) + __builtin_rotateleft64(v3, 12) + __builtin_rotateleft64(v4, 18);
        h64 = XXH64_mergeRound(h64, v1);
        h64 = XXH64_mergeRound(h64, v2);
        h64 = XXH64_mergeRound(h64, v3);
        h64 = XXH64_mergeRound(h64, v4);
    } else {
        h64 = state->v3 + 0x27D4EB2F165667C5ULL;
    }
    h64 += (xxh_u64) state->total_len;
    return XXH64_finalize(h64, (const xxh_u8*)state->mem64, (size_t)state->total_len, XXH_aligned);
}
               void XXH64_canonicalFromHash(XXH64_canonical_t* dst, XXH64_hash_t hash)
{
    do { struct xxh_sa { char x[((sizeof(XXH64_canonical_t) == sizeof(XXH64_hash_t))) ? 1 : -1]; }; } while(0);
    if (1) hash = XXH_swap64(hash);
    memcpy(dst, &hash, sizeof(*dst));
}
               XXH64_hash_t XXH64_hashFromCanonical(const XXH64_canonical_t* src)
{
    return XXH_readBE64(src);
}
typedef long long __m64 __attribute__((__vector_size__(8), __aligned__(8)));
typedef long long __v1di __attribute__((__vector_size__(8)));
typedef int __v2si __attribute__((__vector_size__(8)));
typedef short __v4hi __attribute__((__vector_size__(8)));
typedef char __v8qi __attribute__((__vector_size__(8)));
typedef unsigned long long __v1du __attribute__ ((__vector_size__ (8)));
typedef unsigned int __v2su __attribute__ ((__vector_size__ (8)));
typedef unsigned short __v4hu __attribute__((__vector_size__(8)));
typedef unsigned char __v8qu __attribute__((__vector_size__(8)));
typedef signed char __v8qs __attribute__((__vector_size__(8)));
typedef long long __m128i __attribute__((__vector_size__(16), __aligned__(16)));
typedef long long __v2di __attribute__ ((__vector_size__ (16)));
typedef int __v4si __attribute__((__vector_size__(16)));
typedef short __v8hi __attribute__((__vector_size__(16)));
typedef char __v16qi __attribute__((__vector_size__(16)));
static __inline__ void __attribute__((__always_inline__, __nodebug__,
                                      __target__("mmx,no-evex512")))
_mm_empty(void) {
  __builtin_ia32_emms();
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtsi32_si64(int __i)
{
    return __extension__ (__m64)(__v2si){__i, 0};
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtsi64_si32(__m64 __m)
{
    return ((__v2si)__m)[0];
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtsi64_m64(long long __i)
{
    return (__m64)__i;
}
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtm64_si64(__m64 __m)
{
    return (long long)__m;
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_packs_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_packsswb128( (__v8hi)__builtin_shufflevector(__m1, __m2, 0, 1), (__v8hi){})), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_packs_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_packssdw128( (__v4si)__builtin_shufflevector(__m1, __m2, 0, 1), (__v4si){})), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_packs_pu16(__m64 __m1, __m64 __m2)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_packuswb128( (__v8hi)__builtin_shufflevector(__m1, __m2, 0, 1), (__v8hi){})), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_unpackhi_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_shufflevector((__v8qi)__m1, (__v8qi)__m2,
                                          4, 12, 5, 13, 6, 14, 7, 15);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_unpackhi_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_shufflevector((__v4hi)__m1, (__v4hi)__m2,
                                          2, 6, 3, 7);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_unpackhi_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_shufflevector((__v2si)__m1, (__v2si)__m2, 1, 3);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_unpacklo_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_shufflevector((__v8qi)__m1, (__v8qi)__m2,
                                          0, 8, 1, 9, 2, 10, 3, 11);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_unpacklo_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_shufflevector((__v4hi)__m1, (__v4hi)__m2,
                                          0, 4, 1, 5);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_unpacklo_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_shufflevector((__v2si)__m1, (__v2si)__m2, 0, 2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_add_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v8qu)__m1) + ((__v8qu)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_add_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v4hu)__m1) + ((__v4hu)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_add_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v2su)__m1) + ((__v2su)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_adds_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_elementwise_add_sat((__v8qs)__m1, (__v8qs)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_adds_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_elementwise_add_sat((__v4hi)__m1, (__v4hi)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_adds_pu8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_elementwise_add_sat((__v8qu)__m1, (__v8qu)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_adds_pu16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_elementwise_add_sat((__v4hu)__m1, (__v4hu)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sub_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v8qu)__m1) - ((__v8qu)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sub_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v4hu)__m1) - ((__v4hu)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sub_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v2su)__m1) - ((__v2su)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_subs_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_elementwise_sub_sat((__v8qs)__m1, (__v8qs)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_subs_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_elementwise_sub_sat((__v4hi)__m1, (__v4hi)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_subs_pu8(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_elementwise_sub_sat((__v8qu)__m1, (__v8qu)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_subs_pu16(__m64 __m1, __m64 __m2)
{
    return (__m64)__builtin_elementwise_sub_sat((__v4hu)__m1, (__v4hu)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_madd_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_pmaddwd128((__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__m1), __extension__(__v2si){}, 0, 1, -1, -1), (__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__m2), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_mulhi_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_pmulhw128((__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__m1), __extension__(__v2si){}, 0, 1, -1, -1), (__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__m2), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_mullo_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v4hu)__m1) * ((__v4hu)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sll_pi16(__m64 __m, __m64 __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psllw128((__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), (__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__count), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_slli_pi16(__m64 __m, int __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psllwi128((__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), __count)), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sll_pi32(__m64 __m, __m64 __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_pslld128((__v4si)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), (__v4si)(__m128i) __builtin_shufflevector((__v2si)(__count), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_slli_pi32(__m64 __m, int __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_pslldi128((__v4si)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), __count)), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sll_si64(__m64 __m, __m64 __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psllq128((__v2di)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), (__v2di)(__m128i) __builtin_shufflevector((__v2si)(__count), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_slli_si64(__m64 __m, int __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psllqi128((__v2di)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), __count)), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sra_pi16(__m64 __m, __m64 __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psraw128((__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), (__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__count), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_srai_pi16(__m64 __m, int __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psrawi128((__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), __count)), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sra_pi32(__m64 __m, __m64 __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psrad128((__v4si)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), (__v4si)(__m128i) __builtin_shufflevector((__v2si)(__count), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_srai_pi32(__m64 __m, int __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psradi128((__v4si)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), __count)), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_srl_pi16(__m64 __m, __m64 __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psrlw128((__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), (__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__count), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_srli_pi16(__m64 __m, int __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psrlwi128((__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), __count)), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_srl_pi32(__m64 __m, __m64 __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psrld128((__v4si)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), (__v4si)(__m128i) __builtin_shufflevector((__v2si)(__count), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_srli_pi32(__m64 __m, int __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psrldi128((__v4si)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), __count)), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_srl_si64(__m64 __m, __m64 __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psrlq128((__v2di)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), (__v2di)(__m128i) __builtin_shufflevector((__v2si)(__count), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_srli_si64(__m64 __m, int __count)
{
    return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psrlqi128((__v2di)(__m128i) __builtin_shufflevector((__v2si)(__m), __extension__(__v2si){}, 0, 1, -1, -1), __count)), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_and_si64(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v1du)__m1) & ((__v1du)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_andnot_si64(__m64 __m1, __m64 __m2)
{
    return (__m64)(~((__v1du)__m1) & ((__v1du)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_or_si64(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v1du)__m1) | ((__v1du)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_xor_si64(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v1du)__m1) ^ ((__v1du)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cmpeq_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v8qi)__m1) == ((__v8qi)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cmpeq_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v4hi)__m1) == ((__v4hi)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cmpeq_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)(((__v2si)__m1) == ((__v2si)__m2));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cmpgt_pi8(__m64 __m1, __m64 __m2)
{
    return (__m64)((__v8qs)__m1 > (__v8qs)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cmpgt_pi16(__m64 __m1, __m64 __m2)
{
    return (__m64)((__v4hi)__m1 > (__v4hi)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cmpgt_pi32(__m64 __m1, __m64 __m2)
{
    return (__m64)((__v2si)__m1 > (__v2si)__m2);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_setzero_si64(void) {
  return __extension__(__m64){0LL};
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set_pi32(int __i1, int __i0) {
  return __extension__(__m64)(__v2si){__i0, __i1};
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set_pi16(short __s3, short __s2, short __s1, short __s0) {
  return __extension__(__m64)(__v4hi){__s0, __s1, __s2, __s3};
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set_pi8(char __b7, char __b6, char __b5, char __b4, char __b3, char __b2,
            char __b1, char __b0) {
  return __extension__(__m64)(__v8qi){__b0, __b1, __b2, __b3,
                                      __b4, __b5, __b6, __b7};
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set1_pi32(int __i) {
  return _mm_set_pi32(__i, __i);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set1_pi16(short __w) {
  return _mm_set_pi16(__w, __w, __w, __w);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set1_pi8(char __b) {
  return _mm_set_pi8(__b, __b, __b, __b, __b, __b, __b, __b);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_setr_pi32(int __i0, int __i1) {
  return _mm_set_pi32(__i1, __i0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_setr_pi16(short __w0, short __w1, short __w2, short __w3) {
  return _mm_set_pi16(__w3, __w2, __w1, __w0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_setr_pi8(char __b0, char __b1, char __b2, char __b3, char __b4, char __b5,
             char __b6, char __b7) {
  return _mm_set_pi8(__b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0);
}

typedef int __v4si __attribute__((__vector_size__(16)));
typedef float __v4sf __attribute__((__vector_size__(16)));
typedef float __m128 __attribute__((__vector_size__(16), __aligned__(16)));
typedef float __m128_u __attribute__((__vector_size__(16), __aligned__(1)));
typedef unsigned int __v4su __attribute__((__vector_size__(16)));
extern int posix_memalign(void **__memptr, size_t __alignment, size_t __size);
static __inline__ void *__attribute__((__always_inline__, __nodebug__,
                                       __malloc__, __alloc_size__(1),
                                       __alloc_align__(2)))
_mm_malloc(size_t __size, size_t __align) {
  if (__align == 1) {
    return malloc(__size);
  }
  if (!(__align & (__align - 1)) && __align < sizeof(void *))
    __align = sizeof(void *);
  void *__mallocedMemory;
  if (posix_memalign(&__mallocedMemory, __align, __size))
    return 0;
  return __mallocedMemory;
}
static __inline__ void __attribute__((__always_inline__, __nodebug__))
_mm_free(void *__p)
{
  free(__p);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_add_ss(__m128 __a, __m128 __b) {
  __a[0] += __b[0];
  return __a;
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_add_ps(__m128 __a, __m128 __b) {
  return (__m128)((__v4sf)__a + (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_sub_ss(__m128 __a, __m128 __b) {
  __a[0] -= __b[0];
  return __a;
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_sub_ps(__m128 __a, __m128 __b) {
  return (__m128)((__v4sf)__a - (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_mul_ss(__m128 __a, __m128 __b) {
  __a[0] *= __b[0];
  return __a;
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_mul_ps(__m128 __a, __m128 __b) {
  return (__m128)((__v4sf)__a * (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_div_ss(__m128 __a, __m128 __b) {
  __a[0] /= __b[0];
  return __a;
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_div_ps(__m128 __a, __m128 __b) {
  return (__m128)((__v4sf)__a / (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_sqrt_ss(__m128 __a)
{
  return (__m128)__builtin_ia32_sqrtss((__v4sf)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_sqrt_ps(__m128 __a)
{
  return __builtin_ia32_sqrtps((__v4sf)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_rcp_ss(__m128 __a)
{
  return (__m128)__builtin_ia32_rcpss((__v4sf)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_rcp_ps(__m128 __a)
{
  return (__m128)__builtin_ia32_rcpps((__v4sf)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_rsqrt_ss(__m128 __a)
{
  return __builtin_ia32_rsqrtss((__v4sf)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_rsqrt_ps(__m128 __a)
{
  return __builtin_ia32_rsqrtps((__v4sf)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_min_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_minss((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_min_ps(__m128 __a, __m128 __b)
{
  return __builtin_ia32_minps((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_max_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_maxss((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_max_ps(__m128 __a, __m128 __b)
{
  return __builtin_ia32_maxps((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_and_ps(__m128 __a, __m128 __b) {
  return (__m128)((__v4su)__a & (__v4su)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_andnot_ps(__m128 __a, __m128 __b) {
  return (__m128)(~(__v4su)__a & (__v4su)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_or_ps(__m128 __a, __m128 __b) {
  return (__m128)((__v4su)__a | (__v4su)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_xor_ps(__m128 __a, __m128 __b) {
  return (__m128)((__v4su)__a ^ (__v4su)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpeq_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpeqss((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpeq_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpeqps((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmplt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpltss((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmplt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpltps((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmple_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpless((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmple_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpleps((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpgt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector((__v4sf)__a,
                                         (__v4sf)__builtin_ia32_cmpltss((__v4sf)__b, (__v4sf)__a),
                                         4, 1, 2, 3);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpgt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpltps((__v4sf)__b, (__v4sf)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpge_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector((__v4sf)__a,
                                         (__v4sf)__builtin_ia32_cmpless((__v4sf)__b, (__v4sf)__a),
                                         4, 1, 2, 3);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpge_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpleps((__v4sf)__b, (__v4sf)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpneq_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpneqss((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpneq_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpneqps((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnlt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnltss((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnlt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnltps((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnle_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnless((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnle_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnleps((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpngt_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector((__v4sf)__a,
                                         (__v4sf)__builtin_ia32_cmpnltss((__v4sf)__b, (__v4sf)__a),
                                         4, 1, 2, 3);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpngt_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnltps((__v4sf)__b, (__v4sf)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnge_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_shufflevector((__v4sf)__a,
                                         (__v4sf)__builtin_ia32_cmpnless((__v4sf)__b, (__v4sf)__a),
                                         4, 1, 2, 3);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpnge_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpnleps((__v4sf)__b, (__v4sf)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpord_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpordss((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpord_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpordps((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpunord_ss(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpunordss((__v4sf)__a, (__v4sf)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cmpunord_ps(__m128 __a, __m128 __b)
{
  return (__m128)__builtin_ia32_cmpunordps((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comieq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comieq((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comilt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comilt((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comile_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comile((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comigt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comigt((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comige_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comige((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_comineq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_comineq((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomieq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomieq((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomilt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomilt((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomile_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomile((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomigt_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomigt((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomige_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomige((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_ucomineq_ss(__m128 __a, __m128 __b)
{
  return __builtin_ia32_ucomineq((__v4sf)__a, (__v4sf)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtss_si32(__m128 __a)
{
  return __builtin_ia32_cvtss2si((__v4sf)__a);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvt_ss2si(__m128 __a)
{
  return _mm_cvtss_si32(__a);
}
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtss_si64(__m128 __a)
{
  return __builtin_ia32_cvtss2si64((__v4sf)__a);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtps_pi32(__m128 __a)
{
  return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_cvtps2dq((__v4sf)(__m128i) __builtin_shufflevector((__v4si)(__a), __extension__(__v4si){}, 0, 1, 4, 5))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvt_ps2pi(__m128 __a)
{
  return _mm_cvtps_pi32(__a);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvttss_si32(__m128 __a)
{
  return __builtin_ia32_cvttss2si((__v4sf)__a);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtt_ss2si(__m128 __a)
{
  return _mm_cvttss_si32(__a);
}
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvttss_si64(__m128 __a)
{
  return __builtin_ia32_cvttss2si64((__v4sf)__a);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvttps_pi32(__m128 __a)
{
  return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_cvttps2dq((__v4sf)(__m128i) __builtin_shufflevector((__v4si)(__a), __extension__(__v4si){}, 0, 1, 4, 5))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtt_ps2pi(__m128 __a)
{
  return _mm_cvttps_pi32(__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128))) _mm_cvtsi32_ss(__m128 __a,
                                                                     int __b) {
  __a[0] = __b;
  return __a;
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128))) _mm_cvt_si2ss(__m128 __a,
                                                                    int __b) {
  return _mm_cvtsi32_ss(__a, __b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtsi64_ss(__m128 __a, long long __b) {
  __a[0] = __b;
  return __a;
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtpi32_ps(__m128 __a, __m64 __b)
{
  return (__m128)__builtin_shufflevector(
      (__v4sf)__a,
      __builtin_convertvector((__v4si)(__m128i) __builtin_shufflevector((__v2si)(__b), __extension__(__v2si){}, 0, 1, 2, 3), __v4sf),
      4, 5, 2, 3);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvt_pi2ps(__m128 __a, __m64 __b)
{
  return _mm_cvtpi32_ps(__a, __b);
}
static __inline__ float __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_cvtss_f32(__m128 __a) {
  return __a[0];
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_loadh_pi(__m128 __a, const __m64 *__p)
{
  typedef float __mm_loadh_pi_v2f32 __attribute__((__vector_size__(8)));
  struct __mm_loadh_pi_struct {
    __mm_loadh_pi_v2f32 __u;
  } __attribute__((__packed__, __may_alias__));
  __mm_loadh_pi_v2f32 __b = ((const struct __mm_loadh_pi_struct*)__p)->__u;
  __m128 __bb = __builtin_shufflevector(__b, __b, 0, 1, 0, 1);
  return __builtin_shufflevector(__a, __bb, 0, 1, 4, 5);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_loadl_pi(__m128 __a, const __m64 *__p)
{
  typedef float __mm_loadl_pi_v2f32 __attribute__((__vector_size__(8)));
  struct __mm_loadl_pi_struct {
    __mm_loadl_pi_v2f32 __u;
  } __attribute__((__packed__, __may_alias__));
  __mm_loadl_pi_v2f32 __b = ((const struct __mm_loadl_pi_struct*)__p)->__u;
  __m128 __bb = __builtin_shufflevector(__b, __b, 0, 1, 0, 1);
  return __builtin_shufflevector(__a, __bb, 4, 5, 2, 3);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_load_ss(const float *__p)
{
  struct __mm_load_ss_struct {
    float __u;
  } __attribute__((__packed__, __may_alias__));
  float __u = ((const struct __mm_load_ss_struct*)__p)->__u;
  return __extension__ (__m128){ __u, 0, 0, 0 };
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_load1_ps(const float *__p)
{
  struct __mm_load1_ps_struct {
    float __u;
  } __attribute__((__packed__, __may_alias__));
  float __u = ((const struct __mm_load1_ps_struct*)__p)->__u;
  return __extension__ (__m128){ __u, __u, __u, __u };
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_load_ps(const float *__p)
{
  return *(const __m128*)__p;
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_loadu_ps(const float *__p)
{
  struct __loadu_ps {
    __m128_u __v;
  } __attribute__((__packed__, __may_alias__));
  return ((const struct __loadu_ps*)__p)->__v;
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_loadr_ps(const float *__p)
{
  __m128 __a = _mm_load_ps(__p);
  return __builtin_shufflevector((__v4sf)__a, (__v4sf)__a, 3, 2, 1, 0);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_undefined_ps(void)
{
  return (__m128)__builtin_ia32_undef128();
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_set_ss(float __w) {
  return __extension__ (__m128){ __w, 0.0f, 0.0f, 0.0f };
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_set1_ps(float __w) {
  return __extension__ (__m128){ __w, __w, __w, __w };
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_set_ps1(float __w) {
    return _mm_set1_ps(__w);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_set_ps(float __z, float __y, float __x, float __w) {
  return __extension__ (__m128){ __w, __x, __y, __z };
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_setr_ps(float __z, float __y, float __x, float __w) {
  return __extension__ (__m128){ __z, __y, __x, __w };
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_setzero_ps(void) {
  return __extension__ (__m128){ 0.0f, 0.0f, 0.0f, 0.0f };
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_storeh_pi(__m64 *__p, __m128 __a)
{
  typedef float __mm_storeh_pi_v2f32 __attribute__((__vector_size__(8)));
  struct __mm_storeh_pi_struct {
    __mm_storeh_pi_v2f32 __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storeh_pi_struct*)__p)->__u = __builtin_shufflevector(__a, __a, 2, 3);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_storel_pi(__m64 *__p, __m128 __a)
{
  typedef float __mm_storeh_pi_v2f32 __attribute__((__vector_size__(8)));
  struct __mm_storeh_pi_struct {
    __mm_storeh_pi_v2f32 __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storeh_pi_struct*)__p)->__u = __builtin_shufflevector(__a, __a, 0, 1);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_store_ss(float *__p, __m128 __a)
{
  struct __mm_store_ss_struct {
    float __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_store_ss_struct*)__p)->__u = __a[0];
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_storeu_ps(float *__p, __m128 __a)
{
  struct __storeu_ps {
    __m128_u __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_ps*)__p)->__v = __a;
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_store_ps(float *__p, __m128 __a)
{
  *(__m128*)__p = __a;
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_store1_ps(float *__p, __m128 __a)
{
  __a = __builtin_shufflevector((__v4sf)__a, (__v4sf)__a, 0, 0, 0, 0);
  _mm_store_ps(__p, __a);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_store_ps1(float *__p, __m128 __a)
{
  _mm_store1_ps(__p, __a);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_storer_ps(float *__p, __m128 __a)
{
  __a = __builtin_shufflevector((__v4sf)__a, (__v4sf)__a, 3, 2, 1, 0);
  _mm_store_ps(__p, __a);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_stream_pi(void *__p, __m64 __a)
{
  __builtin_nontemporal_store(__a, (__m64 *)__p);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_stream_ps(void *__p, __m128 __a)
{
  __builtin_nontemporal_store((__v4sf)__a, (__v4sf*)__p);
}
void _mm_sfence(void);
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_max_pi16(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_elementwise_max((__v4hi)__a, (__v4hi)__b);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_max_pu8(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_elementwise_max((__v8qu)__a, (__v8qu)__b);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_min_pi16(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_elementwise_min((__v4hi)__a, (__v4hi)__b);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_min_pu8(__m64 __a, __m64 __b)
{
  return (__m64)__builtin_elementwise_min((__v8qu)__a, (__v8qu)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_movemask_pi8(__m64 __a)
{
  return __builtin_ia32_pmovmskb128((__v16qi)(__m128i) __builtin_shufflevector((__v2si)(__a), __extension__(__v2si){}, 0, 1, 2, 3));
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_mulhi_pu16(__m64 __a, __m64 __b)
{
  return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_pmulhuw128((__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__a), __extension__(__v2si){}, 0, 1, -1, -1), (__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__b), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_maskmove_si64(__m64 __d, __m64 __n, char *__p)
{
  __m128i __d128 = (__m128i) __builtin_shufflevector((__v2si)(__d), __extension__(__v2si){}, 0, 1, -1, -1);
  __m128i __n128 = (__m128i) __builtin_shufflevector((__v2si)(__n), __extension__(__v2si){}, 0, 1, 2, 3);
  if (((long unsigned int)__p & 0xfff) >= 4096-15 &&
      ((long unsigned int)__p & 0xfff) <= 4096-8) {
    __p -= 8;
    __d128 = __builtin_ia32_pslldqi128_byteshift((__v2di)__d128, 8);
    __n128 = __builtin_ia32_pslldqi128_byteshift((__v2di)__n128, 8);
  }
  __builtin_ia32_maskmovdqu((__v16qi)__d128, (__v16qi)__n128, __p);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_avg_pu8(__m64 __a, __m64 __b)
{
  return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_pavgb128((__v16qi)(__m128i) __builtin_shufflevector((__v2si)(__a), __extension__(__v2si){}, 0, 1, -1, -1), (__v16qi)(__m128i) __builtin_shufflevector((__v2si)(__b), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_avg_pu16(__m64 __a, __m64 __b)
{
  return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_pavgw128((__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__a), __extension__(__v2si){}, 0, 1, -1, -1), (__v8hi)(__m128i) __builtin_shufflevector((__v2si)(__b), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sad_pu8(__m64 __a, __m64 __b)
{
  return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_psadbw128((__v16qi)(__m128i) __builtin_shufflevector((__v2si)(__a), __extension__(__v2si){}, 0, 1, 2, 3), (__v16qi)(__m128i) __builtin_shufflevector((__v2si)(__b), __extension__(__v2si){}, 0, 1, 2, 3))), __extension__(__v2di){}, 0);
}
unsigned int _mm_getcsr(void);
void _mm_setcsr(unsigned int __i);
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_unpackhi_ps(__m128 __a, __m128 __b) {
  return __builtin_shufflevector((__v4sf)__a, (__v4sf)__b, 2, 6, 3, 7);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_unpacklo_ps(__m128 __a, __m128 __b) {
  return __builtin_shufflevector((__v4sf)__a, (__v4sf)__b, 0, 4, 1, 5);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_move_ss(__m128 __a, __m128 __b) {
  __a[0] = __b[0];
  return __a;
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_movehl_ps(__m128 __a, __m128 __b) {
  return __builtin_shufflevector((__v4sf)__a, (__v4sf)__b, 6, 7, 2, 3);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_movelh_ps(__m128 __a, __m128 __b) {
  return __builtin_shufflevector((__v4sf)__a, (__v4sf)__b, 0, 1, 4, 5);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtpi16_ps(__m64 __a)
{
  return __builtin_convertvector((__v4hi)__a, __v4sf);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtpu16_ps(__m64 __a)
{
  return __builtin_convertvector((__v4hu)__a, __v4sf);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtpi8_ps(__m64 __a)
{
  return __builtin_convertvector(
      __builtin_shufflevector((__v8qs)__a, __extension__ (__v8qs){},
                              0, 1, 2, 3), __v4sf);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtpu8_ps(__m64 __a)
{
  return __builtin_convertvector(
      __builtin_shufflevector((__v8qu)__a, __extension__ (__v8qu){},
                              0, 1, 2, 3), __v4sf);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtpi32x2_ps(__m64 __a, __m64 __b)
{
  return __builtin_convertvector(
      __builtin_shufflevector((__v2si)__a, (__v2si)__b,
                              0, 1, 2, 3), __v4sf);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtps_pi16(__m128 __a)
{
  return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_packssdw128( (__v4si)__builtin_ia32_cvtps2dq((__v4sf)__a), (__v4si)_mm_setzero_ps())), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtps_pi8(__m128 __a)
{
  __m64 __b, __c;
  __b = _mm_cvtps_pi16(__a);
  __c = _mm_setzero_si64();
  return _mm_packs_pi16(__b, __c);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse"), __min_vector_width__(128)))
_mm_movemask_ps(__m128 __a)
{
  return __builtin_ia32_movmskps((__v4sf)__a);
}

typedef double __m128d __attribute__((__vector_size__(16), __aligned__(16)));
typedef long long __m128i __attribute__((__vector_size__(16), __aligned__(16)));
typedef double __m128d_u __attribute__((__vector_size__(16), __aligned__(1)));
typedef long long __m128i_u
    __attribute__((__vector_size__(16), __aligned__(1)));
typedef double __v2df __attribute__((__vector_size__(16)));
typedef long long __v2di __attribute__((__vector_size__(16)));
typedef short __v8hi __attribute__((__vector_size__(16)));
typedef char __v16qi __attribute__((__vector_size__(16)));
typedef unsigned long long __v2du __attribute__((__vector_size__(16)));
typedef unsigned short __v8hu __attribute__((__vector_size__(16)));
typedef unsigned char __v16qu __attribute__((__vector_size__(16)));
typedef signed char __v16qs __attribute__((__vector_size__(16)));
typedef _Float16 __v8hf __attribute__((__vector_size__(16), __aligned__(16)));
typedef _Float16 __m128h __attribute__((__vector_size__(16), __aligned__(16)));
typedef _Float16 __m128h_u __attribute__((__vector_size__(16), __aligned__(1)));
typedef __bf16 __v8bf __attribute__((__vector_size__(16), __aligned__(16)));
typedef __bf16 __m128bh __attribute__((__vector_size__(16), __aligned__(16)));
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_sd(__m128d __a,
                                                                  __m128d __b) {
  __a[0] += __b[0];
  return __a;
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_pd(__m128d __a,
                                                                  __m128d __b) {
  return (__m128d)((__v2df)__a + (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_sd(__m128d __a,
                                                                  __m128d __b) {
  __a[0] -= __b[0];
  return __a;
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_pd(__m128d __a,
                                                                  __m128d __b) {
  return (__m128d)((__v2df)__a - (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mul_sd(__m128d __a,
                                                                  __m128d __b) {
  __a[0] *= __b[0];
  return __a;
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mul_pd(__m128d __a,
                                                                  __m128d __b) {
  return (__m128d)((__v2df)__a * (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_div_sd(__m128d __a,
                                                                  __m128d __b) {
  __a[0] /= __b[0];
  return __a;
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_div_pd(__m128d __a,
                                                                  __m128d __b) {
  return (__m128d)((__v2df)__a / (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sqrt_sd(__m128d __a,
                                                         __m128d __b) {
  __m128d __c = __builtin_ia32_sqrtsd((__v2df)__b);
  return __extension__(__m128d){__c[0], __a[1]};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sqrt_pd(__m128d __a) {
  return __builtin_ia32_sqrtpd((__v2df)__a);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_min_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_minsd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_min_pd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_minpd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_max_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_maxsd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_max_pd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_maxpd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_and_pd(__m128d __a,
                                                                  __m128d __b) {
  return (__m128d)((__v2du)__a & (__v2du)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_andnot_pd(__m128d __a, __m128d __b) {
  return (__m128d)(~(__v2du)__a & (__v2du)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_or_pd(__m128d __a,
                                                                 __m128d __b) {
  return (__m128d)((__v2du)__a | (__v2du)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_xor_pd(__m128d __a,
                                                                  __m128d __b) {
  return (__m128d)((__v2du)__a ^ (__v2du)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpeq_pd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmpeqpd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmplt_pd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmpltpd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmple_pd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmplepd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpgt_pd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmpltpd((__v2df)__b, (__v2df)__a);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpge_pd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmplepd((__v2df)__b, (__v2df)__a);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpord_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpordpd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpunord_pd(__m128d __a,
                                                             __m128d __b) {
  return (__m128d)__builtin_ia32_cmpunordpd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpneq_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpneqpd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnlt_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnltpd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnle_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnlepd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpngt_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnltpd((__v2df)__b, (__v2df)__a);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnge_pd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnlepd((__v2df)__b, (__v2df)__a);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpeq_sd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmpeqsd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmplt_sd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmpltsd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmple_sd(__m128d __a,
                                                          __m128d __b) {
  return (__m128d)__builtin_ia32_cmplesd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpgt_sd(__m128d __a,
                                                          __m128d __b) {
  __m128d __c = __builtin_ia32_cmpltsd((__v2df)__b, (__v2df)__a);
  return __extension__(__m128d){__c[0], __a[1]};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpge_sd(__m128d __a,
                                                          __m128d __b) {
  __m128d __c = __builtin_ia32_cmplesd((__v2df)__b, (__v2df)__a);
  return __extension__(__m128d){__c[0], __a[1]};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpord_sd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpordsd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpunord_sd(__m128d __a,
                                                             __m128d __b) {
  return (__m128d)__builtin_ia32_cmpunordsd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpneq_sd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpneqsd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnlt_sd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnltsd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnle_sd(__m128d __a,
                                                           __m128d __b) {
  return (__m128d)__builtin_ia32_cmpnlesd((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpngt_sd(__m128d __a,
                                                           __m128d __b) {
  __m128d __c = __builtin_ia32_cmpnltsd((__v2df)__b, (__v2df)__a);
  return __extension__(__m128d){__c[0], __a[1]};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpnge_sd(__m128d __a,
                                                           __m128d __b) {
  __m128d __c = __builtin_ia32_cmpnlesd((__v2df)__b, (__v2df)__a);
  return __extension__(__m128d){__c[0], __a[1]};
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comieq_sd(__m128d __a,
                                                       __m128d __b) {
  return __builtin_ia32_comisdeq((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comilt_sd(__m128d __a,
                                                       __m128d __b) {
  return __builtin_ia32_comisdlt((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comile_sd(__m128d __a,
                                                       __m128d __b) {
  return __builtin_ia32_comisdle((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comigt_sd(__m128d __a,
                                                       __m128d __b) {
  return __builtin_ia32_comisdgt((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comige_sd(__m128d __a,
                                                       __m128d __b) {
  return __builtin_ia32_comisdge((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_comineq_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_comisdneq((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomieq_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_ucomisdeq((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomilt_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_ucomisdlt((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomile_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_ucomisdle((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomigt_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_ucomisdgt((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomige_sd(__m128d __a,
                                                        __m128d __b) {
  return __builtin_ia32_ucomisdge((__v2df)__a, (__v2df)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_ucomineq_sd(__m128d __a,
                                                         __m128d __b) {
  return __builtin_ia32_ucomisdneq((__v2df)__a, (__v2df)__b);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtpd_ps(__m128d __a) {
  return __builtin_ia32_cvtpd2ps((__v2df)__a);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtps_pd(__m128 __a) {
  return (__m128d) __builtin_convertvector(
      __builtin_shufflevector((__v4sf)__a, (__v4sf)__a, 0, 1), __v2df);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtepi32_pd(__m128i __a) {
  return (__m128d) __builtin_convertvector(
      __builtin_shufflevector((__v4si)__a, (__v4si)__a, 0, 1), __v2df);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtpd_epi32(__m128d __a) {
  return __builtin_ia32_cvtpd2dq((__v2df)__a);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsd_si32(__m128d __a) {
  return __builtin_ia32_cvtsd2si((__v2df)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsd_ss(__m128 __a,
                                                         __m128d __b) {
  return (__m128)__builtin_ia32_cvtsd2ss((__v4sf)__a, (__v2df)__b);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtsi32_sd(__m128d __a, int __b) {
  __a[0] = __b;
  return __a;
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtss_sd(__m128d __a, __m128 __b) {
  __a[0] = __b[0];
  return __a;
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvttpd_epi32(__m128d __a) {
  return (__m128i)__builtin_ia32_cvttpd2dq((__v2df)__a);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvttsd_si32(__m128d __a) {
  return __builtin_ia32_cvttsd2si((__v2df)__a);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtpd_pi32(__m128d __a) {
  return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_cvtpd2dq((__v2df)__a)), __extension__(__v2di){}, 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvttpd_pi32(__m128d __a) {
  return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_cvttpd2dq((__v2df)__a)), __extension__(__v2di){}, 0);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtpi32_pd(__m64 __a) {
  return (__m128d) __builtin_convertvector((__v2si)__a, __v2df);
}
static __inline__ double __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtsd_f64(__m128d __a) {
  return __a[0];
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_load_pd(double const *__dp) {
  return *(const __m128d *)__dp;
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_load1_pd(double const *__dp) {
  struct __mm_load1_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((const struct __mm_load1_pd_struct *)__dp)->__u;
  return __extension__(__m128d){__u, __u};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadr_pd(double const *__dp) {
  __m128d __u = *(const __m128d *)__dp;
  return __builtin_shufflevector((__v2df)__u, (__v2df)__u, 1, 0);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadu_pd(double const *__dp) {
  struct __loadu_pd {
    __m128d_u __v;
  } __attribute__((__packed__, __may_alias__));
  return ((const struct __loadu_pd *)__dp)->__v;
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadu_si64(void const *__a) {
  struct __loadu_si64 {
    long long __v;
  } __attribute__((__packed__, __may_alias__));
  long long __u = ((const struct __loadu_si64 *)__a)->__v;
  return __extension__(__m128i)(__v2di){__u, 0LL};
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadu_si32(void const *__a) {
  struct __loadu_si32 {
    int __v;
  } __attribute__((__packed__, __may_alias__));
  int __u = ((const struct __loadu_si32 *)__a)->__v;
  return __extension__(__m128i)(__v4si){__u, 0, 0, 0};
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadu_si16(void const *__a) {
  struct __loadu_si16 {
    short __v;
  } __attribute__((__packed__, __may_alias__));
  short __u = ((const struct __loadu_si16 *)__a)->__v;
  return __extension__(__m128i)(__v8hi){__u, 0, 0, 0, 0, 0, 0, 0};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_load_sd(double const *__dp) {
  struct __mm_load_sd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((const struct __mm_load_sd_struct *)__dp)->__u;
  return __extension__(__m128d){__u, 0};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadh_pd(__m128d __a,
                                                          double const *__dp) {
  struct __mm_loadh_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((const struct __mm_loadh_pd_struct *)__dp)->__u;
  return __extension__(__m128d){__a[0], __u};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_loadl_pd(__m128d __a,
                                                          double const *__dp) {
  struct __mm_loadl_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  double __u = ((const struct __mm_loadl_pd_struct *)__dp)->__u;
  return __extension__(__m128d){__u, __a[1]};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_undefined_pd(void) {
  return (__m128d)__builtin_ia32_undef128();
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set_sd(double __w) {
  return __extension__(__m128d){__w, 0.0};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set1_pd(double __w) {
  return __extension__(__m128d){__w, __w};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set_pd1(double __w) {
  return _mm_set1_pd(__w);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set_pd(double __w,
                                                                  double __x) {
  return __extension__(__m128d){__x, __w};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_setr_pd(double __w,
                                                                   double __x) {
  return __extension__(__m128d){__w, __x};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_setzero_pd(void) {
  return __extension__(__m128d){0.0, 0.0};
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_move_sd(__m128d __a, __m128d __b) {
  __a[0] = __b[0];
  return __a;
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_store_sd(double *__dp,
                                                       __m128d __a) {
  struct __mm_store_sd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_store_sd_struct *)__dp)->__u = __a[0];
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_store_pd(double *__dp,
                                                       __m128d __a) {
  *(__m128d *)__dp = __a;
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_store1_pd(double *__dp,
                                                        __m128d __a) {
  __a = __builtin_shufflevector((__v2df)__a, (__v2df)__a, 0, 0);
  _mm_store_pd(__dp, __a);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_store_pd1(double *__dp,
                                                        __m128d __a) {
  _mm_store1_pd(__dp, __a);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeu_pd(double *__dp,
                                                        __m128d __a) {
  struct __storeu_pd {
    __m128d_u __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_pd *)__dp)->__v = __a;
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storer_pd(double *__dp,
                                                        __m128d __a) {
  __a = __builtin_shufflevector((__v2df)__a, (__v2df)__a, 1, 0);
  *(__m128d *)__dp = __a;
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeh_pd(double *__dp,
                                                        __m128d __a) {
  struct __mm_storeh_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storeh_pd_struct *)__dp)->__u = __a[1];
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storel_pd(double *__dp,
                                                        __m128d __a) {
  struct __mm_storeh_pd_struct {
    double __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storeh_pd_struct *)__dp)->__u = __a[0];
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_epi8(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)((__v16qu)__a + (__v16qu)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_epi16(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v8hu)__a + (__v8hu)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_add_epi32(__m128i __a, __m128i __b) {
  return (__m128i)((__v4su)__a + (__v4su)__b);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_add_si64(__m64 __a, __m64 __b) {
  return (__m64)(((unsigned long long)__a) + ((unsigned long long)__b));
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_add_epi64(__m128i __a, __m128i __b) {
  return (__m128i)((__v2du)__a + (__v2du)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_adds_epi8(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_add_sat((__v16qs)__a, (__v16qs)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_adds_epi16(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)__builtin_elementwise_add_sat((__v8hi)__a, (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_adds_epu8(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_add_sat((__v16qu)__a, (__v16qu)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_adds_epu16(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)__builtin_elementwise_add_sat((__v8hu)__a, (__v8hu)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_avg_epu8(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)__builtin_ia32_pavgb128((__v16qi)__a, (__v16qi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_avg_epu16(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_ia32_pavgw128((__v8hi)__a, (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_madd_epi16(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)__builtin_ia32_pmaddwd128((__v8hi)__a, (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_max_epi16(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_max((__v8hi)__a, (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_max_epu8(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)__builtin_elementwise_max((__v16qu)__a, (__v16qu)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_min_epi16(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_min((__v8hi)__a, (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_min_epu8(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)__builtin_elementwise_min((__v16qu)__a, (__v16qu)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mulhi_epi16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)__builtin_ia32_pmulhw128((__v8hi)__a, (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mulhi_epu16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)__builtin_ia32_pmulhuw128((__v8hi)__a, (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mullo_epi16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)((__v8hu)__a * (__v8hu)__b);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mul_su32(__m64 __a, __m64 __b) {
  return (__m64) __builtin_shufflevector((__v2di)(__builtin_ia32_pmuludq128((__v4si)(__m128i) __builtin_shufflevector((__v2si)(__a), __extension__(__v2si){}, 0, 1, -1, -1), (__v4si)(__m128i) __builtin_shufflevector((__v2si)(__b), __extension__(__v2si){}, 0, 1, -1, -1))), __extension__(__v2di){}, 0);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_mul_epu32(__m128i __a,
                                                           __m128i __b) {
  return __builtin_ia32_pmuludq128((__v4si)__a, (__v4si)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sad_epu8(__m128i __a,
                                                          __m128i __b) {
  return __builtin_ia32_psadbw128((__v16qi)__a, (__v16qi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_epi8(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)((__v16qu)__a - (__v16qu)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_epi16(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v8hu)__a - (__v8hu)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sub_epi32(__m128i __a, __m128i __b) {
  return (__m128i)((__v4su)__a - (__v4su)__b);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sub_si64(__m64 __a, __m64 __b) {
  return (__m64)((unsigned long long)__a - (unsigned long long)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_sub_epi64(__m128i __a, __m128i __b) {
  return (__m128i)((__v2du)__a - (__v2du)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_subs_epi8(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_sub_sat((__v16qs)__a, (__v16qs)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_subs_epi16(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)__builtin_elementwise_sub_sat((__v8hi)__a, (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_subs_epu8(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)__builtin_elementwise_sub_sat((__v16qu)__a, (__v16qu)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_subs_epu16(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)__builtin_elementwise_sub_sat((__v8hu)__a, (__v8hu)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_and_si128(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v2du)__a & (__v2du)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_andnot_si128(__m128i __a,
                                                              __m128i __b) {
  return (__m128i)(~(__v2du)__a & (__v2du)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_or_si128(__m128i __a,
                                                          __m128i __b) {
  return (__m128i)((__v2du)__a | (__v2du)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_xor_si128(__m128i __a,
                                                           __m128i __b) {
  return (__m128i)((__v2du)__a ^ (__v2du)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_slli_epi16(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_psllwi128((__v8hi)__a, __count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sll_epi16(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_psllw128((__v8hi)__a, (__v8hi)__count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_slli_epi32(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_pslldi128((__v4si)__a, __count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sll_epi32(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_pslld128((__v4si)__a, (__v4si)__count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_slli_epi64(__m128i __a,
                                                            int __count) {
  return __builtin_ia32_psllqi128((__v2di)__a, __count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sll_epi64(__m128i __a,
                                                           __m128i __count) {
  return __builtin_ia32_psllq128((__v2di)__a, (__v2di)__count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srai_epi16(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_psrawi128((__v8hi)__a, __count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sra_epi16(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_psraw128((__v8hi)__a, (__v8hi)__count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srai_epi32(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_psradi128((__v4si)__a, __count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_sra_epi32(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_psrad128((__v4si)__a, (__v4si)__count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srli_epi16(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_psrlwi128((__v8hi)__a, __count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srl_epi16(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_psrlw128((__v8hi)__a, (__v8hi)__count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srli_epi32(__m128i __a,
                                                            int __count) {
  return (__m128i)__builtin_ia32_psrldi128((__v4si)__a, __count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srl_epi32(__m128i __a,
                                                           __m128i __count) {
  return (__m128i)__builtin_ia32_psrld128((__v4si)__a, (__v4si)__count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srli_epi64(__m128i __a,
                                                            int __count) {
  return __builtin_ia32_psrlqi128((__v2di)__a, __count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_srl_epi64(__m128i __a,
                                                           __m128i __count) {
  return __builtin_ia32_psrlq128((__v2di)__a, (__v2di)__count);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpeq_epi8(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)((__v16qi)__a == (__v16qi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpeq_epi16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)((__v8hi)__a == (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpeq_epi32(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)((__v4si)__a == (__v4si)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpgt_epi8(__m128i __a,
                                                            __m128i __b) {
  return (__m128i)((__v16qs)__a > (__v16qs)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpgt_epi16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)((__v8hi)__a > (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmpgt_epi32(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)((__v4si)__a > (__v4si)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmplt_epi8(__m128i __a,
                                                            __m128i __b) {
  return _mm_cmpgt_epi8(__b, __a);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmplt_epi16(__m128i __a,
                                                             __m128i __b) {
  return _mm_cmpgt_epi16(__b, __a);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cmplt_epi32(__m128i __a,
                                                             __m128i __b) {
  return _mm_cmpgt_epi32(__b, __a);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtsi64_sd(__m128d __a, long long __b) {
  __a[0] = __b;
  return __a;
}
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsd_si64(__m128d __a) {
  return __builtin_ia32_cvtsd2si64((__v2df)__a);
}
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvttsd_si64(__m128d __a) {
  return __builtin_ia32_cvttsd2si64((__v2df)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_cvtepi32_ps(__m128i __a) {
  return (__m128) __builtin_convertvector((__v4si)__a, __v4sf);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtps_epi32(__m128 __a) {
  return (__m128i)__builtin_ia32_cvtps2dq((__v4sf)__a);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvttps_epi32(__m128 __a) {
  return (__m128i)__builtin_ia32_cvttps2dq((__v4sf)__a);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsi32_si128(int __a) {
  return __extension__(__m128i)(__v4si){__a, 0, 0, 0};
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsi64_si128(long long __a) {
  return __extension__(__m128i)(__v2di){__a, 0};
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsi128_si32(__m128i __a) {
  __v4si __b = (__v4si)__a;
  return __b[0];
}
static __inline__ long long __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_cvtsi128_si64(__m128i __a) {
  return __a[0];
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_load_si128(__m128i const *__p) {
  return *__p;
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_loadu_si128(__m128i_u const *__p) {
  struct __loadu_si128 {
    __m128i_u __v;
  } __attribute__((__packed__, __may_alias__));
  return ((const struct __loadu_si128 *)__p)->__v;
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_loadl_epi64(__m128i_u const *__p) {
  struct __mm_loadl_epi64_struct {
    long long __u;
  } __attribute__((__packed__, __may_alias__));
  return __extension__(__m128i){
      ((const struct __mm_loadl_epi64_struct *)__p)->__u, 0};
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_undefined_si128(void) {
  return (__m128i)__builtin_ia32_undef128();
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set_epi64x(long long __q1, long long __q0) {
  return __extension__(__m128i)(__v2di){__q0, __q1};
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set_epi64(__m64 __q1, __m64 __q0) {
  return _mm_set_epi64x((long long)__q1[0], (long long)__q0[0]);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set_epi32(int __i3,
                                                                     int __i2,
                                                                     int __i1,
                                                                     int __i0) {
  return __extension__(__m128i)(__v4si){__i0, __i1, __i2, __i3};
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set_epi16(short __w7, short __w6, short __w5, short __w4, short __w3,
              short __w2, short __w1, short __w0) {
  return __extension__(__m128i)(__v8hi){__w0, __w1, __w2, __w3,
                                        __w4, __w5, __w6, __w7};
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set_epi8(char __b15, char __b14, char __b13, char __b12, char __b11,
             char __b10, char __b9, char __b8, char __b7, char __b6, char __b5,
             char __b4, char __b3, char __b2, char __b1, char __b0) {
  return __extension__(__m128i)(__v16qi){
      __b0, __b1, __b2, __b3, __b4, __b5, __b6, __b7,
      __b8, __b9, __b10, __b11, __b12, __b13, __b14, __b15};
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set1_epi64x(long long __q) {
  return _mm_set_epi64x(__q, __q);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set1_epi64(__m64 __q) {
  return _mm_set_epi64(__q, __q);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set1_epi32(int __i) {
  return _mm_set_epi32(__i, __i, __i, __i);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_set1_epi16(short __w) {
  return _mm_set_epi16(__w, __w, __w, __w, __w, __w, __w, __w);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_set1_epi8(char __b) {
  return _mm_set_epi8(__b, __b, __b, __b, __b, __b, __b, __b, __b, __b, __b,
                      __b, __b, __b, __b, __b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_setr_epi64(__m64 __q0, __m64 __q1) {
  return _mm_set_epi64(__q1, __q0);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_setr_epi32(int __i0, int __i1, int __i2, int __i3) {
  return _mm_set_epi32(__i3, __i2, __i1, __i0);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_setr_epi16(short __w0, short __w1, short __w2, short __w3, short __w4,
               short __w5, short __w6, short __w7) {
  return _mm_set_epi16(__w7, __w6, __w5, __w4, __w3, __w2, __w1, __w0);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_setr_epi8(char __b0, char __b1, char __b2, char __b3, char __b4, char __b5,
              char __b6, char __b7, char __b8, char __b9, char __b10,
              char __b11, char __b12, char __b13, char __b14, char __b15) {
  return _mm_set_epi8(__b15, __b14, __b13, __b12, __b11, __b10, __b9, __b8,
                      __b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_setzero_si128(void) {
  return __extension__(__m128i)(__v2di){0LL, 0LL};
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_store_si128(__m128i *__p,
                                                          __m128i __b) {
  *__p = __b;
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeu_si128(__m128i_u *__p,
                                                           __m128i __b) {
  struct __storeu_si128 {
    __m128i_u __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_si128 *)__p)->__v = __b;
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeu_si64(void *__p,
                                                          __m128i __b) {
  struct __storeu_si64 {
    long long __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_si64 *)__p)->__v = ((__v2di)__b)[0];
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeu_si32(void *__p,
                                                          __m128i __b) {
  struct __storeu_si32 {
    int __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_si32 *)__p)->__v = ((__v4si)__b)[0];
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storeu_si16(void *__p,
                                                          __m128i __b) {
  struct __storeu_si16 {
    short __v;
  } __attribute__((__packed__, __may_alias__));
  ((struct __storeu_si16 *)__p)->__v = ((__v8hi)__b)[0];
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_maskmoveu_si128(__m128i __d,
                                                              __m128i __n,
                                                              char *__p) {
  __builtin_ia32_maskmovdqu((__v16qi)__d, (__v16qi)__n, __p);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_storel_epi64(__m128i_u *__p,
                                                           __m128i __a) {
  struct __mm_storel_epi64_struct {
    long long __u;
  } __attribute__((__packed__, __may_alias__));
  ((struct __mm_storel_epi64_struct *)__p)->__u = __a[0];
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_stream_pd(void *__p,
                                                        __m128d __a) {
  __builtin_nontemporal_store((__v2df)__a, (__v2df *)__p);
}
static __inline__ void __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_stream_si128(void *__p,
                                                           __m128i __a) {
  __builtin_nontemporal_store((__v2di)__a, (__v2di *)__p);
}
static __inline__ void
    __attribute__((__always_inline__, __nodebug__, __target__("sse2")))
    _mm_stream_si32(void *__p, int __a) {
  __builtin_ia32_movnti((int *)__p, __a);
}
static __inline__ void
    __attribute__((__always_inline__, __nodebug__, __target__("sse2")))
    _mm_stream_si64(void *__p, long long __a) {
  __builtin_ia32_movnti64((long long *)__p, __a);
}
void _mm_clflush(void const *__p);
void _mm_lfence(void);
void _mm_mfence(void);
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_packs_epi16(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)__builtin_ia32_packsswb128((__v8hi)__a, (__v8hi)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_packs_epi32(__m128i __a,
                                                             __m128i __b) {
  return (__m128i)__builtin_ia32_packssdw128((__v4si)__a, (__v4si)__b);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_packus_epi16(__m128i __a,
                                                              __m128i __b) {
  return (__m128i)__builtin_ia32_packuswb128((__v8hi)__a, (__v8hi)__b);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_movemask_epi8(__m128i __a) {
  return __builtin_ia32_pmovmskb128((__v16qi)__a);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpackhi_epi8(__m128i __a,
                                                               __m128i __b) {
  return (__m128i)__builtin_shufflevector(
      (__v16qi)__a, (__v16qi)__b, 8, 16 + 8, 9, 16 + 9, 10, 16 + 10, 11,
      16 + 11, 12, 16 + 12, 13, 16 + 13, 14, 16 + 14, 15, 16 + 15);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpackhi_epi16(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v8hi)__a, (__v8hi)__b, 4, 8 + 4, 5,
                                          8 + 5, 6, 8 + 6, 7, 8 + 7);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpackhi_epi32(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v4si)__a, (__v4si)__b, 2, 4 + 2, 3,
                                          4 + 3);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpackhi_epi64(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v2di)__a, (__v2di)__b, 1, 2 + 1);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpacklo_epi8(__m128i __a,
                                                               __m128i __b) {
  return (__m128i)__builtin_shufflevector(
      (__v16qi)__a, (__v16qi)__b, 0, 16 + 0, 1, 16 + 1, 2, 16 + 2, 3, 16 + 3, 4,
      16 + 4, 5, 16 + 5, 6, 16 + 6, 7, 16 + 7);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpacklo_epi16(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v8hi)__a, (__v8hi)__b, 0, 8 + 0, 1,
                                          8 + 1, 2, 8 + 2, 3, 8 + 3);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpacklo_epi32(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v4si)__a, (__v4si)__b, 0, 4 + 0, 1,
                                          4 + 1);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_unpacklo_epi64(__m128i __a,
                                                                __m128i __b) {
  return (__m128i)__builtin_shufflevector((__v2di)__a, (__v2di)__b, 0, 2 + 0);
}
static __inline__ __m64 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_movepi64_pi64(__m128i __a) {
  return (__m64)__a[0];
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_movpi64_epi64(__m64 __a) {
  return __builtin_shufflevector((__v1di)__a, _mm_setzero_si64(), 0, 1);
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_move_epi64(__m128i __a) {
  return __builtin_shufflevector((__v2di)__a, _mm_setzero_si128(), 0, 2);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_unpackhi_pd(__m128d __a, __m128d __b) {
  return __builtin_shufflevector((__v2df)__a, (__v2df)__b, 1, 2 + 1);
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_unpacklo_pd(__m128d __a, __m128d __b) {
  return __builtin_shufflevector((__v2df)__a, (__v2df)__b, 0, 2 + 0);
}
static __inline__ int __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128))) _mm_movemask_pd(__m128d __a) {
  return __builtin_ia32_movmskpd((__v2df)__a);
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_castpd_ps(__m128d __a) {
  return (__m128)__a;
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_castpd_si128(__m128d __a) {
  return (__m128i)__a;
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_castps_pd(__m128 __a) {
  return (__m128d)__a;
}
static __inline__ __m128i __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_castps_si128(__m128 __a) {
  return (__m128i)__a;
}
static __inline__ __m128 __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_castsi128_ps(__m128i __a) {
  return (__m128)__a;
}
static __inline__ __m128d __attribute__((__always_inline__, __nodebug__, __target__("sse2"), __min_vector_width__(128)))
_mm_castsi128_pd(__m128i __a) {
  return (__m128d)__a;
}
void _mm_pause(void);
__attribute__ ((aligned(64))) static const xxh_u8 XXH3_kSecret[192] = {
    0xb8, 0xfe, 0x6c, 0x39, 0x23, 0xa4, 0x4b, 0xbe, 0x7c, 0x01, 0x81, 0x2c, 0xf7, 0x21, 0xad, 0x1c,
    0xde, 0xd4, 0x6d, 0xe9, 0x83, 0x90, 0x97, 0xdb, 0x72, 0x40, 0xa4, 0xa4, 0xb7, 0xb3, 0x67, 0x1f,
    0xcb, 0x79, 0xe6, 0x4e, 0xcc, 0xc0, 0xe5, 0x78, 0x82, 0x5a, 0xd0, 0x7d, 0xcc, 0xff, 0x72, 0x21,
    0xb8, 0x08, 0x46, 0x74, 0xf7, 0x43, 0x24, 0x8e, 0xe0, 0x35, 0x90, 0xe6, 0x81, 0x3a, 0x26, 0x4c,
    0x3c, 0x28, 0x52, 0xbb, 0x91, 0xc3, 0x00, 0xcb, 0x88, 0xd0, 0x65, 0x8b, 0x1b, 0x53, 0x2e, 0xa3,
    0x71, 0x64, 0x48, 0x97, 0xa2, 0x0d, 0xf9, 0x4e, 0x38, 0x19, 0xef, 0x46, 0xa9, 0xde, 0xac, 0xd8,
    0xa8, 0xfa, 0x76, 0x3f, 0xe3, 0x9c, 0x34, 0x3f, 0xf9, 0xdc, 0xbb, 0xc7, 0xc7, 0x0b, 0x4f, 0x1d,
    0x8a, 0x51, 0xe0, 0x4b, 0xcd, 0xb4, 0x59, 0x31, 0xc8, 0x9f, 0x7e, 0xc9, 0xd9, 0x78, 0x73, 0x64,
    0xea, 0xc5, 0xac, 0x83, 0x34, 0xd3, 0xeb, 0xc3, 0xc5, 0x81, 0xa0, 0xff, 0xfa, 0x13, 0x63, 0xeb,
    0x17, 0x0d, 0xdd, 0x51, 0xb7, 0xf0, 0xda, 0x49, 0xd3, 0x16, 0x55, 0x26, 0x29, 0xd4, 0x68, 0x9e,
    0x2b, 0x16, 0xbe, 0x58, 0x7d, 0x47, 0xa1, 0xfc, 0x8f, 0xf8, 0xb8, 0xd1, 0x7a, 0xd0, 0x31, 0xce,
    0x45, 0xcb, 0x3a, 0x8f, 0x95, 0x16, 0x04, 0x28, 0xaf, 0xd7, 0xfb, 0xca, 0xbb, 0x4b, 0x40, 0x7e,
};
static XXH128_hash_t
XXH_mult64to128(xxh_u64 lhs, xxh_u64 rhs)
{
    __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
    XXH128_hash_t r128;
    r128.low64 = (xxh_u64)(product);
    r128.high64 = (xxh_u64)(product >> 64);
    return r128;
}
static xxh_u64
XXH3_mul128_fold64(xxh_u64 lhs, xxh_u64 rhs)
{
    XXH128_hash_t product = XXH_mult64to128(lhs, rhs);
    return product.low64 ^ product.high64;
}
static __attribute__((unused)) xxh_u64 XXH_xorshift64(xxh_u64 v64, int shift)
{
    ((void)0);
    return v64 ^ (v64 >> shift);
}
static XXH64_hash_t XXH3_avalanche(xxh_u64 h64)
{
    h64 = XXH_xorshift64(h64, 37);
    h64 *= 0x165667919E3779F9ULL;
    h64 = XXH_xorshift64(h64, 32);
    return h64;
}
static XXH64_hash_t XXH3_rrmxmx(xxh_u64 h64, xxh_u64 len)
{
    h64 ^= __builtin_rotateleft64(h64, 49) ^ __builtin_rotateleft64(h64, 24);
    h64 *= 0x9FB21C651E98DF25ULL;
    h64 ^= (h64 >> 35) + len ;
    h64 *= 0x9FB21C651E98DF25ULL;
    return XXH_xorshift64(h64, 28);
}
static __attribute__((unused)) XXH64_hash_t
XXH3_len_1to3_64b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    { xxh_u8 const c1 = input[0];
        xxh_u8 const c2 = input[len >> 1];
        xxh_u8 const c3 = input[len - 1];
        xxh_u32 const combined = ((xxh_u32)c1 << 16) | ((xxh_u32)c2 << 24)
                               | ((xxh_u32)c3 << 0) | ((xxh_u32)len << 8);
        xxh_u64 const bitflip = (XXH_readLE32(secret) ^ XXH_readLE32(secret+4)) + seed;
        xxh_u64 const keyed = (xxh_u64)combined ^ bitflip;
        return XXH64_avalanche(keyed);
    }
}
static __attribute__((unused)) XXH64_hash_t
XXH3_len_4to8_64b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    seed ^= (xxh_u64)XXH_swap32((xxh_u32)seed) << 32;
    { xxh_u32 const input1 = XXH_readLE32(input);
        xxh_u32 const input2 = XXH_readLE32(input + len - 4);
        xxh_u64 const bitflip = (XXH_readLE64(secret+8) ^ XXH_readLE64(secret+16)) - seed;
        xxh_u64 const input64 = input2 + (((xxh_u64)input1) << 32);
        xxh_u64 const keyed = input64 ^ bitflip;
        return XXH3_rrmxmx(keyed, len);
    }
}
static __attribute__((unused)) XXH64_hash_t
XXH3_len_9to16_64b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    { xxh_u64 const bitflip1 = (XXH_readLE64(secret+24) ^ XXH_readLE64(secret+32)) + seed;
        xxh_u64 const bitflip2 = (XXH_readLE64(secret+40) ^ XXH_readLE64(secret+48)) - seed;
        xxh_u64 const input_lo = XXH_readLE64(input) ^ bitflip1;
        xxh_u64 const input_hi = XXH_readLE64(input + len - 8) ^ bitflip2;
        xxh_u64 const acc = len
                          + XXH_swap64(input_lo) + input_hi
                          + XXH3_mul128_fold64(input_lo, input_hi);
        return XXH3_avalanche(acc);
    }
}
static __attribute__((unused)) XXH64_hash_t
XXH3_len_0to16_64b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    { if (__builtin_expect(len > 8, 1)) return XXH3_len_9to16_64b(input, len, secret, seed);
        if (__builtin_expect(len >= 4, 1)) return XXH3_len_4to8_64b(input, len, secret, seed);
        if (len) return XXH3_len_1to3_64b(input, len, secret, seed);
        return XXH64_avalanche(seed ^ (XXH_readLE64(secret+56) ^ XXH_readLE64(secret+64)));
    }
}
static __attribute__((unused)) xxh_u64 XXH3_mix16B(const xxh_u8* input,
                                     const xxh_u8* secret, xxh_u64 seed64)
{
    { xxh_u64 const input_lo = XXH_readLE64(input);
        xxh_u64 const input_hi = XXH_readLE64(input+8);
        return XXH3_mul128_fold64(
            input_lo ^ (XXH_readLE64(secret) + seed64),
            input_hi ^ (XXH_readLE64(secret+8) - seed64)
        );
    }
}
static __attribute__((unused)) XXH64_hash_t
XXH3_len_17to128_64b(const xxh_u8* input, size_t len,
                     const xxh_u8* secret, size_t secretSize,
                     XXH64_hash_t seed)
{
    ((void)0); (void)secretSize;
    ((void)0);
    { xxh_u64 acc = len * 0x9E3779B185EBCA87ULL;
        if (len > 32) {
            if (len > 64) {
                if (len > 96) {
                    acc += XXH3_mix16B(input+48, secret+96, seed);
                    acc += XXH3_mix16B(input+len-64, secret+112, seed);
                }
                acc += XXH3_mix16B(input+32, secret+64, seed);
                acc += XXH3_mix16B(input+len-48, secret+80, seed);
            }
            acc += XXH3_mix16B(input+16, secret+32, seed);
            acc += XXH3_mix16B(input+len-32, secret+48, seed);
        }
        acc += XXH3_mix16B(input+0, secret+0, seed);
        acc += XXH3_mix16B(input+len-16, secret+16, seed);
        return XXH3_avalanche(acc);
    }
}
static XXH64_hash_t
XXH3_len_129to240_64b(const xxh_u8* input, size_t len,
                      const xxh_u8* secret, size_t secretSize,
                      XXH64_hash_t seed)
{
    ((void)0); (void)secretSize;
    ((void)0);
    { xxh_u64 acc = len * 0x9E3779B185EBCA87ULL;
        int const nbRounds = (int)len / 16;
        int i;
        for (i=0; i<8; i++) {
            acc += XXH3_mix16B(input+(16*i), secret+(16*i), seed);
        }
        acc = XXH3_avalanche(acc);
        ((void)0);
        for (i=8 ; i < nbRounds; i++) {
            acc += XXH3_mix16B(input+(16*i), secret+(16*(i-8)) + 3, seed);
        }
        acc += XXH3_mix16B(input + len - 16, secret + 136 - 17, seed);
        return XXH3_avalanche(acc);
    }
}
static __attribute__((unused)) void XXH_writeLE64(void* dst, xxh_u64 v64)
{
    if (!1) v64 = XXH_swap64(v64);
    memcpy(dst, &v64, sizeof(v64));
}
    typedef int64_t xxh_i64;
static __attribute__((unused)) void
XXH3_accumulate_512_sse2( void* acc,
                    const void* input,
                    const void* secret)
{
    ((void)0);
    { __m128i* const xacc = (__m128i *) acc;
        const __m128i* const xinput = (const __m128i *) input;
        const __m128i* const xsecret = (const __m128i *) secret;
        size_t i;
        for (i=0; i < 64/sizeof(__m128i); i++) {
            __m128i const data_vec = _mm_loadu_si128 (xinput+i);
            __m128i const key_vec = _mm_loadu_si128 (xsecret+i);
            __m128i const data_key = _mm_xor_si128 (data_vec, key_vec);
            __m128i const data_key_lo = ((__m128i)__builtin_ia32_pshufd((__v4si)(__m128i)(data_key), (int)((((0) << 6) | ((3) << 4) | ((0) << 2) | (1)))));
            __m128i const product = _mm_mul_epu32 (data_key, data_key_lo);
            __m128i const data_swap = ((__m128i)__builtin_ia32_pshufd((__v4si)(__m128i)(data_vec), (int)((((1) << 6) | ((0) << 4) | ((3) << 2) | (2)))));
            __m128i const sum = _mm_add_epi64(xacc[i], data_swap);
            xacc[i] = _mm_add_epi64(product, sum);
    } }
}
static __attribute__((unused)) void
XXH3_scrambleAcc_sse2(void* acc, const void* secret)
{
    ((void)0);
    { __m128i* const xacc = (__m128i*) acc;
        const __m128i* const xsecret = (const __m128i *) secret;
        const __m128i prime32 = _mm_set1_epi32((int)0x9E3779B1U);
        size_t i;
        for (i=0; i < 64/sizeof(__m128i); i++) {
            __m128i const acc_vec = xacc[i];
            __m128i const shifted = _mm_srli_epi64 (acc_vec, 47);
            __m128i const data_vec = _mm_xor_si128 (acc_vec, shifted);
            __m128i const key_vec = _mm_loadu_si128 (xsecret+i);
            __m128i const data_key = _mm_xor_si128 (data_vec, key_vec);
            __m128i const data_key_hi = ((__m128i)__builtin_ia32_pshufd((__v4si)(__m128i)(data_key), (int)((((0) << 6) | ((3) << 4) | ((0) << 2) | (1)))));
            __m128i const prod_lo = _mm_mul_epu32 (data_key, prime32);
            __m128i const prod_hi = _mm_mul_epu32 (data_key_hi, prime32);
            xacc[i] = _mm_add_epi64(prod_lo, _mm_slli_epi64(prod_hi, 32));
        }
    }
}
static __attribute__((unused)) void XXH3_initCustomSecret_sse2(void* customSecret, xxh_u64 seed64)
{
    do { struct xxh_sa { char x[(((192 & 15) == 0)) ? 1 : -1]; }; } while(0);
    (void)(&XXH_writeLE64);
    { int const nbRounds = 192 / sizeof(__m128i);
        __m128i const seed = _mm_set_epi64x((xxh_i64)(0U - seed64), (xxh_i64)seed64);
        int i;
        const void* const src16 = XXH3_kSecret;
        __m128i* dst16 = (__m128i*) customSecret;
        __asm__ __volatile__("" : "+r" (dst16));
        ((void)0);
        ((void)0);
        for (i=0; i < nbRounds; ++i) {
            dst16[i] = _mm_add_epi64(_mm_load_si128((const __m128i *)src16+i), seed);
    } }
}
static __attribute__((unused)) void
XXH3_accumulate_512_scalar(void* acc,
                     const void* input,
                     const void* secret)
{
    xxh_u64* const xacc = (xxh_u64*) acc;
    const xxh_u8* const xinput = (const xxh_u8*) input;
    const xxh_u8* const xsecret = (const xxh_u8*) secret;
    size_t i;
    ((void)0);
    for (i=0; i < (64 / sizeof(xxh_u64)); i++) {
        xxh_u64 const data_val = XXH_readLE64(xinput + 8*i);
        xxh_u64 const data_key = data_val ^ XXH_readLE64(xsecret + i*8);
        xacc[i ^ 1] += data_val;
        xacc[i] += ((xxh_u64)(xxh_u32)(data_key & 0xFFFFFFFF) * (xxh_u64)(xxh_u32)(data_key >> 32));
    }
}
static __attribute__((unused)) void
XXH3_scrambleAcc_scalar(void* acc, const void* secret)
{
    xxh_u64* const xacc = (xxh_u64*) acc;
    const xxh_u8* const xsecret = (const xxh_u8*) secret;
    size_t i;
    ((void)0);
    for (i=0; i < (64 / sizeof(xxh_u64)); i++) {
        xxh_u64 const key64 = XXH_readLE64(xsecret + 8*i);
        xxh_u64 acc64 = xacc[i];
        acc64 = XXH_xorshift64(acc64, 47);
        acc64 ^= key64;
        acc64 *= 0x9E3779B1U;
        xacc[i] = acc64;
    }
}
static __attribute__((unused)) void
XXH3_initCustomSecret_scalar(void* customSecret, xxh_u64 seed64)
{
    const xxh_u8* kSecretPtr = XXH3_kSecret;
    do { struct xxh_sa { char x[(((192 & 15) == 0)) ? 1 : -1]; }; } while(0);
    ((void)0);
    { int const nbRounds = 192 / 16;
        int i;
        for (i=0; i < nbRounds; i++) {
            xxh_u64 lo = XXH_readLE64(kSecretPtr + 16*i) + seed64;
            xxh_u64 hi = XXH_readLE64(kSecretPtr + 16*i + 8) - seed64;
            XXH_writeLE64((xxh_u8*)customSecret + 16*i, lo);
            XXH_writeLE64((xxh_u8*)customSecret + 16*i + 8, hi);
    } }
}
typedef void (*XXH3_f_accumulate_512)(void* , const void*, const void*);
typedef void (*XXH3_f_scrambleAcc)(void* , const void*);
typedef void (*XXH3_f_initCustomSecret)(void* , xxh_u64);
static __attribute__((unused)) void
XXH3_accumulate( xxh_u64* acc,
                const xxh_u8* input,
                const xxh_u8* secret,
                      size_t nbStripes,
                      XXH3_f_accumulate_512 f_acc512)
{
    size_t n;
    for (n = 0; n < nbStripes; n++ ) {
        const xxh_u8* const in = input + n*64;
        __builtin_prefetch((in + 320), 0 , 3 );
        f_acc512(acc,
                 in,
                 secret + n*8);
    }
}
static __attribute__((unused)) void
XXH3_hashLong_internal_loop(xxh_u64* acc,
                      const xxh_u8* input, size_t len,
                      const xxh_u8* secret, size_t secretSize,
                            XXH3_f_accumulate_512 f_acc512,
                            XXH3_f_scrambleAcc f_scramble)
{
    size_t const nbStripesPerBlock = (secretSize - 64) / 8;
    size_t const block_len = 64 * nbStripesPerBlock;
    size_t const nb_blocks = (len - 1) / block_len;
    size_t n;
    ((void)0);
    for (n = 0; n < nb_blocks; n++) {
        XXH3_accumulate(acc, input + n*block_len, secret, nbStripesPerBlock, f_acc512);
        f_scramble(acc, secret + secretSize - 64);
    }
    ((void)0);
    { size_t const nbStripes = ((len - 1) - (block_len * nb_blocks)) / 64;
        ((void)0);
        XXH3_accumulate(acc, input + nb_blocks*block_len, secret, nbStripes, f_acc512);
        { const xxh_u8* const p = input + len - 64;
            f_acc512(acc, p, secret + secretSize - 64 - 7);
    } }
}
static __attribute__((unused)) xxh_u64
XXH3_mix2Accs(const xxh_u64* acc, const xxh_u8* secret)
{
    return XXH3_mul128_fold64(
               acc[0] ^ XXH_readLE64(secret),
               acc[1] ^ XXH_readLE64(secret+8) );
}
static XXH64_hash_t
XXH3_mergeAccs(const xxh_u64* acc, const xxh_u8* secret, xxh_u64 start)
{
    xxh_u64 result64 = start;
    size_t i = 0;
    for (i = 0; i < 4; i++) {
        result64 += XXH3_mix2Accs(acc+2*i, secret + 16*i);
    }
    return XXH3_avalanche(result64);
}
static __attribute__((unused)) XXH64_hash_t
XXH3_hashLong_64b_internal(const void* input, size_t len,
                           const void* secret, size_t secretSize,
                           XXH3_f_accumulate_512 f_acc512,
                           XXH3_f_scrambleAcc f_scramble)
{
    __attribute__ ((aligned(16))) xxh_u64 acc[(64 / sizeof(xxh_u64))] = { 0xC2B2AE3DU, 0x9E3779B185EBCA87ULL, 0xC2B2AE3D27D4EB4FULL, 0x165667B19E3779F9ULL, 0x85EBCA77C2B2AE63ULL, 0x85EBCA77U, 0x27D4EB2F165667C5ULL, 0x9E3779B1U };
    XXH3_hashLong_internal_loop(acc, (const xxh_u8*)input, len, (const xxh_u8*)secret, secretSize, f_acc512, f_scramble);
    do { struct xxh_sa { char x[((sizeof(acc) == 64)) ? 1 : -1]; }; } while(0);
    ((void)0);
    return XXH3_mergeAccs(acc, (const xxh_u8*)secret + 11, (xxh_u64)len * 0x9E3779B185EBCA87ULL);
}
static XXH64_hash_t
XXH3_hashLong_64b_withSecret(const void* input, size_t len,
                             XXH64_hash_t seed64, const xxh_u8* secret, size_t secretLen)
{
    (void)seed64;
    return XXH3_hashLong_64b_internal(input, len, secret, secretLen, XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static XXH64_hash_t
XXH3_hashLong_64b_default(const void* input, size_t len,
                          XXH64_hash_t seed64, const xxh_u8* secret, size_t secretLen)
{
    (void)seed64; (void)secret; (void)secretLen;
    return XXH3_hashLong_64b_internal(input, len, XXH3_kSecret, sizeof(XXH3_kSecret), XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static __attribute__((unused)) XXH64_hash_t
XXH3_hashLong_64b_withSeed_internal(const void* input, size_t len,
                                    XXH64_hash_t seed,
                                    XXH3_f_accumulate_512 f_acc512,
                                    XXH3_f_scrambleAcc f_scramble,
                                    XXH3_f_initCustomSecret f_initSec)
{
    if (seed == 0)
        return XXH3_hashLong_64b_internal(input, len,
                                          XXH3_kSecret, sizeof(XXH3_kSecret),
                                          f_acc512, f_scramble);
    { __attribute__ ((aligned(16))) xxh_u8 secret[192];
        f_initSec(secret, seed);
        return XXH3_hashLong_64b_internal(input, len, secret, sizeof(secret),
                                          f_acc512, f_scramble);
    }
}
static XXH64_hash_t
XXH3_hashLong_64b_withSeed(const void* input, size_t len,
                           XXH64_hash_t seed, const xxh_u8* secret, size_t secretLen)
{
    (void)secret; (void)secretLen;
    return XXH3_hashLong_64b_withSeed_internal(input, len, seed,
                XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2, XXH3_initCustomSecret_sse2);
}
typedef XXH64_hash_t (*XXH3_hashLong64_f)(const void* , size_t,
                                          XXH64_hash_t, const xxh_u8* , size_t);
static __attribute__((unused)) XXH64_hash_t
XXH3_64bits_internal(const void* input, size_t len,
                     XXH64_hash_t seed64, const void* secret, size_t secretLen,
                     XXH3_hashLong64_f f_hashLong)
{
    ((void)0);
    if (len <= 16)
        return XXH3_len_0to16_64b((const xxh_u8*)input, len, (const xxh_u8*)secret, seed64);
    if (len <= 128)
        return XXH3_len_17to128_64b((const xxh_u8*)input, len, (const xxh_u8*)secret, secretLen, seed64);
    if (len <= 240)
        return XXH3_len_129to240_64b((const xxh_u8*)input, len, (const xxh_u8*)secret, secretLen, seed64);
    return f_hashLong(input, len, seed64, (const xxh_u8*)secret, secretLen);
}
               XXH64_hash_t XXH3_64bits(const void* input, size_t len)
{
    return XXH3_64bits_internal(input, len, 0, XXH3_kSecret, sizeof(XXH3_kSecret), XXH3_hashLong_64b_default);
}
               XXH64_hash_t
XXH3_64bits_withSecret(const void* input, size_t len, const void* secret, size_t secretSize)
{
    return XXH3_64bits_internal(input, len, 0, secret, secretSize, XXH3_hashLong_64b_withSecret);
}
               XXH64_hash_t
XXH3_64bits_withSeed(const void* input, size_t len, XXH64_hash_t seed)
{
    return XXH3_64bits_internal(input, len, seed, XXH3_kSecret, sizeof(XXH3_kSecret), XXH3_hashLong_64b_withSeed);
}
static void* XXH_alignedMalloc(size_t s, size_t align)
{
    ((void)0);
    ((void)0);
    ((void)0);
    {
        xxh_u8* base = (xxh_u8*)XXH_malloc(s + align);
        if (base != ((void*)0)) {
            size_t offset = align - ((size_t)base & (align - 1));
            xxh_u8* ptr = base + offset;
            ((void)0);
            ptr[-1] = (xxh_u8)offset;
            return ptr;
        }
        return ((void*)0);
    }
}
static void XXH_alignedFree(void* p)
{
    if (p != ((void*)0)) {
        xxh_u8* ptr = (xxh_u8*)p;
        xxh_u8 offset = ptr[-1];
        xxh_u8* base = ptr - offset;
        XXH_free(base);
    }
}
               XXH3_state_t* XXH3_createState(void)
{
    XXH3_state_t* const state = (XXH3_state_t*)XXH_alignedMalloc(sizeof(XXH3_state_t), 64);
    if (state==((void*)0)) return ((void*)0);
    { (state)->seed = 0; };
    return state;
}
               XXH_errorcode XXH3_freeState(XXH3_state_t* statePtr)
{
    XXH_alignedFree(statePtr);
    return XXH_OK;
}
               void
XXH3_copyState(XXH3_state_t* dst_state, const XXH3_state_t* src_state)
{
    memcpy(dst_state, src_state, sizeof(*dst_state));
}
static void
XXH3_reset_internal(XXH3_state_t* statePtr,
                           XXH64_hash_t seed,
                           const void* secret, size_t secretSize)
{
    size_t const initStart = __builtin_offsetof(XXH3_state_t, bufferedSize);
    size_t const initLength = __builtin_offsetof(XXH3_state_t, nbStripesPerBlock) - initStart;
    ((void)0);
    ((void)0);
    memset((char*)statePtr + initStart, 0, initLength);
    statePtr->acc[0] = 0xC2B2AE3DU;
    statePtr->acc[1] = 0x9E3779B185EBCA87ULL;
    statePtr->acc[2] = 0xC2B2AE3D27D4EB4FULL;
    statePtr->acc[3] = 0x165667B19E3779F9ULL;
    statePtr->acc[4] = 0x85EBCA77C2B2AE63ULL;
    statePtr->acc[5] = 0x85EBCA77U;
    statePtr->acc[6] = 0x27D4EB2F165667C5ULL;
    statePtr->acc[7] = 0x9E3779B1U;
    statePtr->seed = seed;
    statePtr->extSecret = (const unsigned char*)secret;
    ((void)0);
    statePtr->secretLimit = secretSize - 64;
    statePtr->nbStripesPerBlock = statePtr->secretLimit / 8;
}
               XXH_errorcode
XXH3_64bits_reset(XXH3_state_t* statePtr)
{
    if (statePtr == ((void*)0)) return XXH_ERROR;
    XXH3_reset_internal(statePtr, 0, XXH3_kSecret, 192);
    return XXH_OK;
}
               XXH_errorcode
XXH3_64bits_reset_withSecret(XXH3_state_t* statePtr, const void* secret, size_t secretSize)
{
    if (statePtr == ((void*)0)) return XXH_ERROR;
    XXH3_reset_internal(statePtr, 0, secret, secretSize);
    if (secret == ((void*)0)) return XXH_ERROR;
    if (secretSize < 136) return XXH_ERROR;
    return XXH_OK;
}
               XXH_errorcode
XXH3_64bits_reset_withSeed(XXH3_state_t* statePtr, XXH64_hash_t seed)
{
    if (statePtr == ((void*)0)) return XXH_ERROR;
    if (seed==0) return XXH3_64bits_reset(statePtr);
    if (seed != statePtr->seed) XXH3_initCustomSecret_sse2(statePtr->customSecret, seed);
    XXH3_reset_internal(statePtr, seed, ((void*)0), 192);
    return XXH_OK;
}
static __attribute__((unused)) void
XXH3_consumeStripes(xxh_u64* acc,
                    size_t* nbStripesSoFarPtr, size_t nbStripesPerBlock,
                    const xxh_u8* input, size_t nbStripes,
                    const xxh_u8* secret, size_t secretLimit,
                    XXH3_f_accumulate_512 f_acc512,
                    XXH3_f_scrambleAcc f_scramble)
{
    ((void)0);
    ((void)0);
    if (nbStripesPerBlock - *nbStripesSoFarPtr <= nbStripes) {
        size_t const nbStripesToEndofBlock = nbStripesPerBlock - *nbStripesSoFarPtr;
        size_t const nbStripesAfterBlock = nbStripes - nbStripesToEndofBlock;
        XXH3_accumulate(acc, input, secret + nbStripesSoFarPtr[0] * 8, nbStripesToEndofBlock, f_acc512);
        f_scramble(acc, secret + secretLimit);
        XXH3_accumulate(acc, input + nbStripesToEndofBlock * 64, secret, nbStripesAfterBlock, f_acc512);
        *nbStripesSoFarPtr = nbStripesAfterBlock;
    } else {
        XXH3_accumulate(acc, input, secret + nbStripesSoFarPtr[0] * 8, nbStripes, f_acc512);
        *nbStripesSoFarPtr += nbStripes;
    }
}
static __attribute__((unused)) XXH_errorcode
XXH3_update(XXH3_state_t* state,
            const xxh_u8* input, size_t len,
            XXH3_f_accumulate_512 f_acc512,
            XXH3_f_scrambleAcc f_scramble)
{
    if (input==((void*)0)) {
        ((void)0);
        return XXH_OK;
    }
    { const xxh_u8* const bEnd = input + len;
        const unsigned char* const secret = (state->extSecret == ((void*)0)) ? state->customSecret : state->extSecret;
        state->totalLen += len;
        ((void)0);
        if (state->bufferedSize + len <= 256) {
            XXH_memcpy(state->buffer + state->bufferedSize, input, len);
            state->bufferedSize += (XXH32_hash_t)len;
            return XXH_OK;
        }
        do { struct xxh_sa { char x[((256 % 64 == 0)) ? 1 : -1]; }; } while(0);
        if (state->bufferedSize) {
            size_t const loadSize = 256 - state->bufferedSize;
            XXH_memcpy(state->buffer + state->bufferedSize, input, loadSize);
            input += loadSize;
            XXH3_consumeStripes(state->acc,
                               &state->nbStripesSoFar, state->nbStripesPerBlock,
                                state->buffer, (256 / 64),
                                secret, state->secretLimit,
                                f_acc512, f_scramble);
            state->bufferedSize = 0;
        }
        ((void)0);
        if (bEnd - input > 256) {
            const xxh_u8* const limit = bEnd - 256;
            do {
                XXH3_consumeStripes(state->acc,
                                   &state->nbStripesSoFar, state->nbStripesPerBlock,
                                    input, (256 / 64),
                                    secret, state->secretLimit,
                                    f_acc512, f_scramble);
                input += 256;
            } while (input<limit);
            memcpy(state->buffer + sizeof(state->buffer) - 64, input - 64, 64);
        }
        ((void)0);
        XXH_memcpy(state->buffer, input, (size_t)(bEnd-input));
        state->bufferedSize = (XXH32_hash_t)(bEnd-input);
    }
    return XXH_OK;
}
               XXH_errorcode
XXH3_64bits_update(XXH3_state_t* state, const void* input, size_t len)
{
    return XXH3_update(state, (const xxh_u8*)input, len,
                       XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static __attribute__((unused)) void
XXH3_digest_long (XXH64_hash_t* acc,
                  const XXH3_state_t* state,
                  const unsigned char* secret)
{
    memcpy(acc, state->acc, sizeof(state->acc));
    if (state->bufferedSize >= 64) {
        size_t const nbStripes = (state->bufferedSize - 1) / 64;
        size_t nbStripesSoFar = state->nbStripesSoFar;
        XXH3_consumeStripes(acc,
                           &nbStripesSoFar, state->nbStripesPerBlock,
                            state->buffer, nbStripes,
                            secret, state->secretLimit,
                            XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
        XXH3_accumulate_512_sse2(acc,
                            state->buffer + state->bufferedSize - 64,
                            secret + state->secretLimit - 7);
    } else {
        xxh_u8 lastStripe[64];
        size_t const catchupSize = 64 - state->bufferedSize;
        ((void)0);
        memcpy(lastStripe, state->buffer + sizeof(state->buffer) - catchupSize, catchupSize);
        memcpy(lastStripe + catchupSize, state->buffer, state->bufferedSize);
        XXH3_accumulate_512_sse2(acc,
                            lastStripe,
                            secret + state->secretLimit - 7);
    }
}
               XXH64_hash_t XXH3_64bits_digest (const XXH3_state_t* state)
{
    const unsigned char* const secret = (state->extSecret == ((void*)0)) ? state->customSecret : state->extSecret;
    if (state->totalLen > 240) {
        __attribute__ ((aligned(16))) XXH64_hash_t acc[(64 / sizeof(xxh_u64))];
        XXH3_digest_long(acc, state, secret);
        return XXH3_mergeAccs(acc,
                              secret + 11,
                              (xxh_u64)state->totalLen * 0x9E3779B185EBCA87ULL);
    }
    if (state->seed)
        return XXH3_64bits_withSeed(state->buffer, (size_t)state->totalLen, state->seed);
    return XXH3_64bits_withSecret(state->buffer, (size_t)(state->totalLen),
                                  secret, state->secretLimit + 64);
}
               void
XXH3_generateSecret(void* secretBuffer, const void* customSeed, size_t customSeedSize)
{
    ((void)0);
    if (customSeedSize == 0) {
        memcpy(secretBuffer, XXH3_kSecret, 192);
        return;
    }
    ((void)0);
    { size_t const segmentSize = sizeof(XXH128_hash_t);
        size_t const nbSegments = 192 / segmentSize;
        XXH128_canonical_t scrambler;
        XXH64_hash_t seeds[12];
        size_t segnb;
        ((void)0);
        ((void)0);
        XXH128_canonicalFromHash(&scrambler, XXH128(customSeed, customSeedSize, 0));
        { size_t toFill = (((customSeedSize) > (sizeof(seeds))) ? (sizeof(seeds)) : (customSeedSize));
            size_t filled = toFill;
            memcpy(seeds, customSeed, toFill);
            while (filled < sizeof(seeds)) {
                toFill = (((filled) > (sizeof(seeds) - filled)) ? (sizeof(seeds) - filled) : (filled));
                memcpy((char*)seeds + filled, seeds, toFill);
                filled += toFill;
        } }
        memcpy(secretBuffer, &scrambler, sizeof(scrambler));
        for (segnb=1; segnb < nbSegments; segnb++) {
            size_t const segmentStart = segnb * segmentSize;
            XXH128_canonical_t segment;
            XXH128_canonicalFromHash(&segment,
                XXH128(&scrambler, sizeof(scrambler), XXH_readLE64(seeds + segnb) + segnb) );
            memcpy((char*)secretBuffer + segmentStart, &segment, sizeof(segment));
    } }
}
static __attribute__((unused)) XXH128_hash_t
XXH3_len_1to3_128b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    { xxh_u8 const c1 = input[0];
        xxh_u8 const c2 = input[len >> 1];
        xxh_u8 const c3 = input[len - 1];
        xxh_u32 const combinedl = ((xxh_u32)c1 <<16) | ((xxh_u32)c2 << 24)
                                | ((xxh_u32)c3 << 0) | ((xxh_u32)len << 8);
        xxh_u32 const combinedh = __builtin_rotateleft32(XXH_swap32(combinedl), 13);
        xxh_u64 const bitflipl = (XXH_readLE32(secret) ^ XXH_readLE32(secret+4)) + seed;
        xxh_u64 const bitfliph = (XXH_readLE32(secret+8) ^ XXH_readLE32(secret+12)) - seed;
        xxh_u64 const keyed_lo = (xxh_u64)combinedl ^ bitflipl;
        xxh_u64 const keyed_hi = (xxh_u64)combinedh ^ bitfliph;
        XXH128_hash_t h128;
        h128.low64 = XXH64_avalanche(keyed_lo);
        h128.high64 = XXH64_avalanche(keyed_hi);
        return h128;
    }
}
static __attribute__((unused)) XXH128_hash_t
XXH3_len_4to8_128b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    seed ^= (xxh_u64)XXH_swap32((xxh_u32)seed) << 32;
    { xxh_u32 const input_lo = XXH_readLE32(input);
        xxh_u32 const input_hi = XXH_readLE32(input + len - 4);
        xxh_u64 const input_64 = input_lo + ((xxh_u64)input_hi << 32);
        xxh_u64 const bitflip = (XXH_readLE64(secret+16) ^ XXH_readLE64(secret+24)) + seed;
        xxh_u64 const keyed = input_64 ^ bitflip;
        XXH128_hash_t m128 = XXH_mult64to128(keyed, 0x9E3779B185EBCA87ULL + (len << 2));
        m128.high64 += (m128.low64 << 1);
        m128.low64 ^= (m128.high64 >> 3);
        m128.low64 = XXH_xorshift64(m128.low64, 35);
        m128.low64 *= 0x9FB21C651E98DF25ULL;
        m128.low64 = XXH_xorshift64(m128.low64, 28);
        m128.high64 = XXH3_avalanche(m128.high64);
        return m128;
    }
}
static __attribute__((unused)) XXH128_hash_t
XXH3_len_9to16_128b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    { xxh_u64 const bitflipl = (XXH_readLE64(secret+32) ^ XXH_readLE64(secret+40)) - seed;
        xxh_u64 const bitfliph = (XXH_readLE64(secret+48) ^ XXH_readLE64(secret+56)) + seed;
        xxh_u64 const input_lo = XXH_readLE64(input);
        xxh_u64 input_hi = XXH_readLE64(input + len - 8);
        XXH128_hash_t m128 = XXH_mult64to128(input_lo ^ input_hi ^ bitflipl, 0x9E3779B185EBCA87ULL);
        m128.low64 += (xxh_u64)(len - 1) << 54;
        input_hi ^= bitfliph;
        if (sizeof(void *) < sizeof(xxh_u64)) {
            m128.high64 += (input_hi & 0xFFFFFFFF00000000ULL) + ((xxh_u64)(xxh_u32)((xxh_u32)input_hi) * (xxh_u64)(xxh_u32)(0x85EBCA77U));
        } else {
            m128.high64 += input_hi + ((xxh_u64)(xxh_u32)((xxh_u32)input_hi) * (xxh_u64)(xxh_u32)(0x85EBCA77U - 1));
        }
        m128.low64 ^= XXH_swap64(m128.high64);
        {
            XXH128_hash_t h128 = XXH_mult64to128(m128.low64, 0xC2B2AE3D27D4EB4FULL);
            h128.high64 += m128.high64 * 0xC2B2AE3D27D4EB4FULL;
            h128.low64 = XXH3_avalanche(h128.low64);
            h128.high64 = XXH3_avalanche(h128.high64);
            return h128;
    } }
}
static __attribute__((unused)) XXH128_hash_t
XXH3_len_0to16_128b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    { if (len > 8) return XXH3_len_9to16_128b(input, len, secret, seed);
        if (len >= 4) return XXH3_len_4to8_128b(input, len, secret, seed);
        if (len) return XXH3_len_1to3_128b(input, len, secret, seed);
        { XXH128_hash_t h128;
            xxh_u64 const bitflipl = XXH_readLE64(secret+64) ^ XXH_readLE64(secret+72);
            xxh_u64 const bitfliph = XXH_readLE64(secret+80) ^ XXH_readLE64(secret+88);
            h128.low64 = XXH64_avalanche(seed ^ bitflipl);
            h128.high64 = XXH64_avalanche( seed ^ bitfliph);
            return h128;
    } }
}
static __attribute__((unused)) XXH128_hash_t
XXH128_mix32B(XXH128_hash_t acc, const xxh_u8* input_1, const xxh_u8* input_2,
              const xxh_u8* secret, XXH64_hash_t seed)
{
    acc.low64 += XXH3_mix16B (input_1, secret+0, seed);
    acc.low64 ^= XXH_readLE64(input_2) + XXH_readLE64(input_2 + 8);
    acc.high64 += XXH3_mix16B (input_2, secret+16, seed);
    acc.high64 ^= XXH_readLE64(input_1) + XXH_readLE64(input_1 + 8);
    return acc;
}
static __attribute__((unused)) XXH128_hash_t
XXH3_len_17to128_128b(const xxh_u8* input, size_t len,
                      const xxh_u8* secret, size_t secretSize,
                      XXH64_hash_t seed)
{
    ((void)0); (void)secretSize;
    ((void)0);
    { XXH128_hash_t acc;
        acc.low64 = len * 0x9E3779B185EBCA87ULL;
        acc.high64 = 0;
        if (len > 32) {
            if (len > 64) {
                if (len > 96) {
                    acc = XXH128_mix32B(acc, input+48, input+len-64, secret+96, seed);
                }
                acc = XXH128_mix32B(acc, input+32, input+len-48, secret+64, seed);
            }
            acc = XXH128_mix32B(acc, input+16, input+len-32, secret+32, seed);
        }
        acc = XXH128_mix32B(acc, input, input+len-16, secret, seed);
        { XXH128_hash_t h128;
            h128.low64 = acc.low64 + acc.high64;
            h128.high64 = (acc.low64 * 0x9E3779B185EBCA87ULL)
                        + (acc.high64 * 0x85EBCA77C2B2AE63ULL)
                        + ((len - seed) * 0xC2B2AE3D27D4EB4FULL);
            h128.low64 = XXH3_avalanche(h128.low64);
            h128.high64 = (XXH64_hash_t)0 - XXH3_avalanche(h128.high64);
            return h128;
        }
    }
}
static XXH128_hash_t
XXH3_len_129to240_128b(const xxh_u8* input, size_t len,
                       const xxh_u8* secret, size_t secretSize,
                       XXH64_hash_t seed)
{
    ((void)0); (void)secretSize;
    ((void)0);
    { XXH128_hash_t acc;
        int const nbRounds = (int)len / 32;
        int i;
        acc.low64 = len * 0x9E3779B185EBCA87ULL;
        acc.high64 = 0;
        for (i=0; i<4; i++) {
            acc = XXH128_mix32B(acc,
                                input + (32 * i),
                                input + (32 * i) + 16,
                                secret + (32 * i),
                                seed);
        }
        acc.low64 = XXH3_avalanche(acc.low64);
        acc.high64 = XXH3_avalanche(acc.high64);
        ((void)0);
        for (i=4 ; i < nbRounds; i++) {
            acc = XXH128_mix32B(acc,
                                input + (32 * i),
                                input + (32 * i) + 16,
                                secret + 3 + (32 * (i - 4)),
                                seed);
        }
        acc = XXH128_mix32B(acc,
                            input + len - 16,
                            input + len - 32,
                            secret + 136 - 17 - 16,
                            0ULL - seed);
        { XXH128_hash_t h128;
            h128.low64 = acc.low64 + acc.high64;
            h128.high64 = (acc.low64 * 0x9E3779B185EBCA87ULL)
                        + (acc.high64 * 0x85EBCA77C2B2AE63ULL)
                        + ((len - seed) * 0xC2B2AE3D27D4EB4FULL);
            h128.low64 = XXH3_avalanche(h128.low64);
            h128.high64 = (XXH64_hash_t)0 - XXH3_avalanche(h128.high64);
            return h128;
        }
    }
}
static __attribute__((unused)) XXH128_hash_t
XXH3_hashLong_128b_internal(const void* input, size_t len,
                            const xxh_u8* secret, size_t secretSize,
                            XXH3_f_accumulate_512 f_acc512,
                            XXH3_f_scrambleAcc f_scramble)
{
    __attribute__ ((aligned(16))) xxh_u64 acc[(64 / sizeof(xxh_u64))] = { 0xC2B2AE3DU, 0x9E3779B185EBCA87ULL, 0xC2B2AE3D27D4EB4FULL, 0x165667B19E3779F9ULL, 0x85EBCA77C2B2AE63ULL, 0x85EBCA77U, 0x27D4EB2F165667C5ULL, 0x9E3779B1U };
    XXH3_hashLong_internal_loop(acc, (const xxh_u8*)input, len, secret, secretSize, f_acc512, f_scramble);
    do { struct xxh_sa { char x[((sizeof(acc) == 64)) ? 1 : -1]; }; } while(0);
    ((void)0);
    { XXH128_hash_t h128;
        h128.low64 = XXH3_mergeAccs(acc,
                                     secret + 11,
                                     (xxh_u64)len * 0x9E3779B185EBCA87ULL);
        h128.high64 = XXH3_mergeAccs(acc,
                                     secret + secretSize
                                            - sizeof(acc) - 11,
                                     ~((xxh_u64)len * 0xC2B2AE3D27D4EB4FULL));
        return h128;
    }
}
static XXH128_hash_t
XXH3_hashLong_128b_default(const void* input, size_t len,
                           XXH64_hash_t seed64,
                           const void* secret, size_t secretLen)
{
    (void)seed64; (void)secret; (void)secretLen;
    return XXH3_hashLong_128b_internal(input, len, XXH3_kSecret, sizeof(XXH3_kSecret),
                                       XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static XXH128_hash_t
XXH3_hashLong_128b_withSecret(const void* input, size_t len,
                              XXH64_hash_t seed64,
                              const void* secret, size_t secretLen)
{
    (void)seed64;
    return XXH3_hashLong_128b_internal(input, len, (const xxh_u8*)secret, secretLen,
                                       XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static __attribute__((unused)) XXH128_hash_t
XXH3_hashLong_128b_withSeed_internal(const void* input, size_t len,
                                XXH64_hash_t seed64,
                                XXH3_f_accumulate_512 f_acc512,
                                XXH3_f_scrambleAcc f_scramble,
                                XXH3_f_initCustomSecret f_initSec)
{
    if (seed64 == 0)
        return XXH3_hashLong_128b_internal(input, len,
                                           XXH3_kSecret, sizeof(XXH3_kSecret),
                                           f_acc512, f_scramble);
    { __attribute__ ((aligned(16))) xxh_u8 secret[192];
        f_initSec(secret, seed64);
        return XXH3_hashLong_128b_internal(input, len, (const xxh_u8*)secret, sizeof(secret),
                                           f_acc512, f_scramble);
    }
}
static XXH128_hash_t
XXH3_hashLong_128b_withSeed(const void* input, size_t len,
                            XXH64_hash_t seed64, const void* secret, size_t secretLen)
{
    (void)secret; (void)secretLen;
    return XXH3_hashLong_128b_withSeed_internal(input, len, seed64,
                XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2, XXH3_initCustomSecret_sse2);
}
typedef XXH128_hash_t (*XXH3_hashLong128_f)(const void* , size_t,
                                            XXH64_hash_t, const void* , size_t);
static __attribute__((unused)) XXH128_hash_t
XXH3_128bits_internal(const void* input, size_t len,
                      XXH64_hash_t seed64, const void* secret, size_t secretLen,
                      XXH3_hashLong128_f f_hl128)
{
    ((void)0);
    if (len <= 16)
        return XXH3_len_0to16_128b((const xxh_u8*)input, len, (const xxh_u8*)secret, seed64);
    if (len <= 128)
        return XXH3_len_17to128_128b((const xxh_u8*)input, len, (const xxh_u8*)secret, secretLen, seed64);
    if (len <= 240)
        return XXH3_len_129to240_128b((const xxh_u8*)input, len, (const xxh_u8*)secret, secretLen, seed64);
    return f_hl128(input, len, seed64, secret, secretLen);
}
               XXH128_hash_t XXH3_128bits(const void* input, size_t len)
{
    return XXH3_128bits_internal(input, len, 0,
                                 XXH3_kSecret, sizeof(XXH3_kSecret),
                                 XXH3_hashLong_128b_default);
}
               XXH128_hash_t
XXH3_128bits_withSecret(const void* input, size_t len, const void* secret, size_t secretSize)
{
    return XXH3_128bits_internal(input, len, 0,
                                 (const xxh_u8*)secret, secretSize,
                                 XXH3_hashLong_128b_withSecret);
}
               XXH128_hash_t
XXH3_128bits_withSeed(const void* input, size_t len, XXH64_hash_t seed)
{
    return XXH3_128bits_internal(input, len, seed,
                                 XXH3_kSecret, sizeof(XXH3_kSecret),
                                 XXH3_hashLong_128b_withSeed);
}
               XXH128_hash_t
XXH128(const void* input, size_t len, XXH64_hash_t seed)
{
    return XXH3_128bits_withSeed(input, len, seed);
}
               XXH_errorcode
XXH3_128bits_reset(XXH3_state_t* statePtr)
{
    if (statePtr == ((void*)0)) return XXH_ERROR;
    XXH3_reset_internal(statePtr, 0, XXH3_kSecret, 192);
    return XXH_OK;
}
               XXH_errorcode
XXH3_128bits_reset_withSecret(XXH3_state_t* statePtr, const void* secret, size_t secretSize)
{
    if (statePtr == ((void*)0)) return XXH_ERROR;
    XXH3_reset_internal(statePtr, 0, secret, secretSize);
    if (secret == ((void*)0)) return XXH_ERROR;
    if (secretSize < 136) return XXH_ERROR;
    return XXH_OK;
}
               XXH_errorcode
XXH3_128bits_reset_withSeed(XXH3_state_t* statePtr, XXH64_hash_t seed)
{
    if (statePtr == ((void*)0)) return XXH_ERROR;
    if (seed==0) return XXH3_128bits_reset(statePtr);
    if (seed != statePtr->seed) XXH3_initCustomSecret_sse2(statePtr->customSecret, seed);
    XXH3_reset_internal(statePtr, seed, ((void*)0), 192);
    return XXH_OK;
}
               XXH_errorcode
XXH3_128bits_update(XXH3_state_t* state, const void* input, size_t len)
{
    return XXH3_update(state, (const xxh_u8*)input, len,
                       XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
               XXH128_hash_t XXH3_128bits_digest (const XXH3_state_t* state)
{
    const unsigned char* const secret = (state->extSecret == ((void*)0)) ? state->customSecret : state->extSecret;
    if (state->totalLen > 240) {
        __attribute__ ((aligned(16))) XXH64_hash_t acc[(64 / sizeof(xxh_u64))];
        XXH3_digest_long(acc, state, secret);
        ((void)0);
        { XXH128_hash_t h128;
            h128.low64 = XXH3_mergeAccs(acc,
                                         secret + 11,
                                         (xxh_u64)state->totalLen * 0x9E3779B185EBCA87ULL);
            h128.high64 = XXH3_mergeAccs(acc,
                                         secret + state->secretLimit + 64
                                                - sizeof(acc) - 11,
                                         ~((xxh_u64)state->totalLen * 0xC2B2AE3D27D4EB4FULL));
            return h128;
        }
    }
    if (state->seed)
        return XXH3_128bits_withSeed(state->buffer, (size_t)state->totalLen, state->seed);
    return XXH3_128bits_withSecret(state->buffer, (size_t)(state->totalLen),
                                   secret, state->secretLimit + 64);
}
               int XXH128_isEqual(XXH128_hash_t h1, XXH128_hash_t h2)
{
    return !(memcmp(&h1, &h2, sizeof(h1)));
}
               int XXH128_cmp(const void* h128_1, const void* h128_2)
{
    XXH128_hash_t const h1 = *(const XXH128_hash_t*)h128_1;
    XXH128_hash_t const h2 = *(const XXH128_hash_t*)h128_2;
    int const hcmp = (h1.high64 > h2.high64) - (h2.high64 > h1.high64);
    if (hcmp) return hcmp;
    return (h1.low64 > h2.low64) - (h2.low64 > h1.low64);
}
               void
XXH128_canonicalFromHash(XXH128_canonical_t* dst, XXH128_hash_t hash)
{
    do { struct xxh_sa { char x[((sizeof(XXH128_canonical_t) == sizeof(XXH128_hash_t))) ? 1 : -1]; }; } while(0);
    if (1) {
        hash.high64 = XXH_swap64(hash.high64);
        hash.low64 = XXH_swap64(hash.low64);
    }
    memcpy(dst, &hash.high64, sizeof(hash.high64));
    memcpy((char*)dst + sizeof(hash.high64), &hash.low64, sizeof(hash.low64));
}
               XXH128_hash_t
XXH128_hashFromCanonical(const XXH128_canonical_t* src)
{
    XXH128_hash_t h;
    h.high64 = XXH_readBE64(src);
    h.low64 = XXH_readBE64(src->digest + 8);
    return h;
}

