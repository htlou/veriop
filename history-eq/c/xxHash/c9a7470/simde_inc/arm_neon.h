/* Stand-in for Emscripten's system/include/compat/arm_neon.h (SIMDe NEON polyfill with native aliases).
   SIMDe version used here: v0.7.4-rc2 (2023-02-12), the closest SIMDe release before the commit (2023-03-14). */
#ifndef XXH_STUDY_EMSCRIPTEN_ARM_NEON_H
#define XXH_STUDY_EMSCRIPTEN_ARM_NEON_H
#define SIMDE_ARM_NEON_A32V7_ENABLE_NATIVE_ALIASES
#define SIMDE_ARM_NEON_A32V8_ENABLE_NATIVE_ALIASES
#define SIMDE_ARM_NEON_A64V8_ENABLE_NATIVE_ALIASES
#include "simde/arm/neon.h"
#endif
