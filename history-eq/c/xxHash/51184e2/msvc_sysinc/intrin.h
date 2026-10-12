/* Emulates MSVC's <intrin.h>, which on ARM/ARM64 also provides the NEON intrinsics (MSVC's intrin.h pulls in
   arm_neon.h / arm64_neon.h). clang's own intrin.h does not, so add it here (xxHash study modeling assumption). */
#ifndef SHIM_MSVC_INTRIN_H
#define SHIM_MSVC_INTRIN_H
#include_next <intrin.h>
#if defined(_M_ARM64) || defined(_M_ARM)
#  include <arm_neon.h>
#endif
#endif
