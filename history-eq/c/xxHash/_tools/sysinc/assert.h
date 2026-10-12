/* release-build semantics (NDEBUG) on every target */
#undef assert
#define assert(x) ((void)0)
