/* The changed BMI2 flag assignment and getter, projected out of the exact
 * historical ZSTD_initCCtx and ZSTD_CCtx_get_bmi2 sources in this directory.
 * cpuSupportsBmi2 is a symbolic 0/1 result from the unchanged CPU helper.
 */
typedef struct { int bmi2; } CCtx;

int target_heap_bmi2_argument(int cpuSupportsBmi2)
{
    if (cpuSupportsBmi2 != 0 && cpuSupportsBmi2 != 1)
        __builtin_unreachable();
    CCtx cctx = {0};
#if CHILD
#  if DYNAMIC_BMI2
    cctx.bmi2 = cpuSupportsBmi2;
#  endif
#  if DYNAMIC_BMI2
    return cctx.bmi2;
#  else
    return 0;
#  endif
#else
    cctx.bmi2 = cpuSupportsBmi2;
    return cctx.bmi2;
#endif
}
