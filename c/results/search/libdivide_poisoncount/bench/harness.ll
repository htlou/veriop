; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/repos/libdivide/test/benchmark_branchfree.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/repos/libdivide/test/benchmark_branchfree.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned short>, std::allocator<libdivide::divider<unsigned short>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<unsigned short>, std::allocator<libdivide::divider<unsigned short>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned short>, std::allocator<libdivide::divider<unsigned short>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<unsigned short>, std::allocator<libdivide::divider<unsigned short>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned short, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned short, libdivide::BRANCHFREE>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<unsigned short, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned short, libdivide::BRANCHFREE>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned short, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned short, libdivide::BRANCHFREE>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<unsigned short, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned short, libdivide::BRANCHFREE>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl" }
%"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl" = type { %"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data" }
%"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.28" = type { %"struct.std::_Vector_base.29" }
%"struct.std::_Vector_base.29" = type { %"struct.std::_Vector_base<libdivide::divider<short>, std::allocator<libdivide::divider<short>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<short>, std::allocator<libdivide::divider<short>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<short>, std::allocator<libdivide::divider<short>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<short>, std::allocator<libdivide::divider<short>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<libdivide::divider<short, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<short, libdivide::BRANCHFREE>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<short, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<short, libdivide::BRANCHFREE>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<short, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<short, libdivide::BRANCHFREE>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<short, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<short, libdivide::BRANCHFREE>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.48" = type { %"struct.std::_Vector_base.49" }
%"struct.std::_Vector_base.49" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.53" = type { %"struct.std::_Vector_base.54" }
%"struct.std::_Vector_base.54" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned int>, std::allocator<libdivide::divider<unsigned int>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<unsigned int>, std::allocator<libdivide::divider<unsigned int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned int>, std::allocator<libdivide::divider<unsigned int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<unsigned int>, std::allocator<libdivide::divider<unsigned int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.58" = type { %"struct.std::_Vector_base.59" }
%"struct.std::_Vector_base.59" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned int, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned int, libdivide::BRANCHFREE>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<unsigned int, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned int, libdivide::BRANCHFREE>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned int, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned int, libdivide::BRANCHFREE>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<unsigned int, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned int, libdivide::BRANCHFREE>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.73" = type { %"struct.std::_Vector_base.74" }
%"struct.std::_Vector_base.74" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.78" = type { %"struct.std::_Vector_base.79" }
%"struct.std::_Vector_base.79" = type { %"struct.std::_Vector_base<libdivide::divider<int>, std::allocator<libdivide::divider<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<int>, std::allocator<libdivide::divider<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<int>, std::allocator<libdivide::divider<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<int>, std::allocator<libdivide::divider<int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.83" = type { %"struct.std::_Vector_base.84" }
%"struct.std::_Vector_base.84" = type { %"struct.std::_Vector_base<libdivide::divider<int, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<int, libdivide::BRANCHFREE>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<int, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<int, libdivide::BRANCHFREE>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<int, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<int, libdivide::BRANCHFREE>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<int, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<int, libdivide::BRANCHFREE>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.98" = type { %"struct.std::_Vector_base.99" }
%"struct.std::_Vector_base.99" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.103" = type { %"struct.std::_Vector_base.104" }
%"struct.std::_Vector_base.104" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned long>, std::allocator<libdivide::divider<unsigned long>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<unsigned long>, std::allocator<libdivide::divider<unsigned long>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned long>, std::allocator<libdivide::divider<unsigned long>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<unsigned long>, std::allocator<libdivide::divider<unsigned long>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.108" = type { %"struct.std::_Vector_base.109" }
%"struct.std::_Vector_base.109" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned long, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned long, libdivide::BRANCHFREE>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<unsigned long, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned long, libdivide::BRANCHFREE>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<unsigned long, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned long, libdivide::BRANCHFREE>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<unsigned long, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<unsigned long, libdivide::BRANCHFREE>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.123" = type { %"struct.std::_Vector_base.124" }
%"struct.std::_Vector_base.124" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.128" = type { %"struct.std::_Vector_base.129" }
%"struct.std::_Vector_base.129" = type { %"struct.std::_Vector_base<libdivide::divider<long>, std::allocator<libdivide::divider<long>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<long>, std::allocator<libdivide::divider<long>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<long>, std::allocator<libdivide::divider<long>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<long>, std::allocator<libdivide::divider<long>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.133" = type { %"struct.std::_Vector_base.134" }
%"struct.std::_Vector_base.134" = type { %"struct.std::_Vector_base<libdivide::divider<long, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<long, libdivide::BRANCHFREE>>>::_Vector_impl" }
%"struct.std::_Vector_base<libdivide::divider<long, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<long, libdivide::BRANCHFREE>>>::_Vector_impl" = type { %"struct.std::_Vector_base<libdivide::divider<long, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<long, libdivide::BRANCHFREE>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<libdivide::divider<long, libdivide::BRANCHFREE>, std::allocator<libdivide::divider<long, libdivide::BRANCHFREE>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.libdivide::divider" = type { %"struct.libdivide::detail::dispatcher" }
%"struct.libdivide::detail::dispatcher" = type { %"struct.libdivide::libdivide_u16_t" }
%"struct.libdivide::libdivide_u16_t" = type <{ i16, i8 }>
%"class.libdivide::divider.19" = type { %"struct.libdivide::detail::dispatcher.20" }
%"struct.libdivide::detail::dispatcher.20" = type { %"struct.libdivide::libdivide_u16_branchfree_t" }
%"struct.libdivide::libdivide_u16_branchfree_t" = type <{ i16, i8 }>
%"class.libdivide::divider.40" = type { %"struct.libdivide::detail::dispatcher.41" }
%"struct.libdivide::detail::dispatcher.41" = type { %"struct.libdivide::libdivide_s16_t" }
%"struct.libdivide::libdivide_s16_t" = type <{ i16, i8 }>
%"class.libdivide::divider.44" = type { %"struct.libdivide::detail::dispatcher.45" }
%"struct.libdivide::detail::dispatcher.45" = type { %"struct.libdivide::libdivide_s16_branchfree_t" }
%"struct.libdivide::libdivide_s16_branchfree_t" = type <{ i16, i8 }>
%"class.libdivide::divider.65" = type { %"struct.libdivide::detail::dispatcher.66" }
%"struct.libdivide::detail::dispatcher.66" = type { %"struct.libdivide::libdivide_u32_t" }
%"struct.libdivide::libdivide_u32_t" = type <{ i32, i8 }>
%"class.libdivide::divider.69" = type { %"struct.libdivide::detail::dispatcher.70" }
%"struct.libdivide::detail::dispatcher.70" = type { %"struct.libdivide::libdivide_u32_branchfree_t" }
%"struct.libdivide::libdivide_u32_branchfree_t" = type <{ i32, i8 }>
%"class.libdivide::divider.90" = type { %"struct.libdivide::detail::dispatcher.91" }
%"struct.libdivide::detail::dispatcher.91" = type { %"struct.libdivide::libdivide_s32_t" }
%"struct.libdivide::libdivide_s32_t" = type <{ i32, i8 }>
%"class.libdivide::divider.94" = type { %"struct.libdivide::detail::dispatcher.95" }
%"struct.libdivide::detail::dispatcher.95" = type { %"struct.libdivide::libdivide_s32_branchfree_t" }
%"struct.libdivide::libdivide_s32_branchfree_t" = type <{ i32, i8 }>
%"class.libdivide::divider.115" = type { %"struct.libdivide::detail::dispatcher.116" }
%"struct.libdivide::detail::dispatcher.116" = type { %"struct.libdivide::libdivide_u64_t" }
%"struct.libdivide::libdivide_u64_t" = type <{ i64, i8 }>
%"class.libdivide::divider.119" = type { %"struct.libdivide::detail::dispatcher.120" }
%"struct.libdivide::detail::dispatcher.120" = type { %"struct.libdivide::libdivide_u64_branchfree_t" }
%"struct.libdivide::libdivide_u64_branchfree_t" = type <{ i64, i8 }>
%"class.libdivide::divider.140" = type { %"struct.libdivide::detail::dispatcher.141" }
%"struct.libdivide::detail::dispatcher.141" = type { %"struct.libdivide::libdivide_s64_t" }
%"struct.libdivide::libdivide_s64_t" = type <{ i64, i8 }>
%"class.libdivide::divider.144" = type { %"struct.libdivide::detail::dispatcher.145" }
%"struct.libdivide::detail::dispatcher.145" = type { %"struct.libdivide::libdivide_s64_branchfree_t" }
%"struct.libdivide::libdivide_s64_branchfree_t" = type <{ i64, i8 }>

$_Z9benchmarkItEvjmm = comdat any

$_Z9benchmarkIsEvjmm = comdat any

$_Z9benchmarkIjEvjmm = comdat any

$_Z9benchmarkIiEvjmm = comdat any

$_Z9benchmarkImEvjmm = comdat any

$_Z9benchmarkIlEvjmm = comdat any

$_Z10get_primesIttESt6vectorIT_SaIS1_EET0_ = comdat any

$_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_ = comdat any

$_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z10get_primesIssESt6vectorIT_SaIS1_EET0_ = comdat any

$_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_ = comdat any

$_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_ = comdat any

$_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_ = comdat any

$_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_ = comdat any

$_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_ = comdat any

$_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z10get_primesImmESt6vectorIT_SaIS1_EET0_ = comdat any

$_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_ = comdat any

$_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z10get_primesIllESt6vectorIT_SaIS1_EET0_ = comdat any

$_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_ = comdat any

$_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m = comdat any

$_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_ = comdat any

$_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_ = comdat any

$_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [407 x i8] c"Usage: benchmark_branchfree [uu16] [u32] [u64] [s16] [s32] [s64] [branchfree] [branchfull] [sys|system]\0A\0AThe branchfree benchmark iterates over an array of dividers and computes\0Adivisions. This is the use case where the branchfree divider generally\0Ashines and where the default branchfull divider performs poorly because\0Athe CPU is not able to correctly predict the branches of the many different\0Adividers.\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"branchfree\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"branchfull\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"All tests passed successfully!\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"s16\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"s32\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"s64\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"----- \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c" -----\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"Error: branchfull_divider<\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"> sum: \00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c", but system sum: \00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Error: branchfree_divider<\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"    system: \00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c" seconds\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"branchfull: \00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"branchfree: \00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [33 x i8] c"libdivide.h:%d: %s(): Error: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"divider must be != 0\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"branchfree divider must be != 1\00", align 1
@__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi = private unnamed_addr constant [27 x i8] c"libdivide_internal_s16_gen\00", align 1
@__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii = private unnamed_addr constant [27 x i8] c"libdivide_internal_s32_gen\00", align 1
@__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi = private unnamed_addr constant [27 x i8] c"libdivide_internal_u64_gen\00", align 1
@__FUNCTION__._ZN9libdivideL28libdivide_u64_branchfree_genEm = private unnamed_addr constant [29 x i8] c"libdivide_u64_branchfree_gen\00", align 1
@__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli = private unnamed_addr constant [27 x i8] c"libdivide_internal_s64_gen\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_benchmark_branchfree.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5usagev() local_unnamed_addr #3 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 406)
  %2 = load ptr, ptr @_ZSt4cout, align 8
  %3 = getelementptr i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 240
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

10:                                               ; preds = %0
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %12 = load i8, ptr %11, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 67
  %16 = load i8, ptr %15, align 1
  br label %22

17:                                               ; preds = %10
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %7)
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef signext i8 %20(ptr noundef nonnull align 8 dereferenceable(570) %7, i8 noundef signext 10)
  br label %22

22:                                               ; preds = %14, %17
  %23 = phi i8 [ %16, %14 ], [ %21, %17 ]
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %23)
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %102

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = zext nneg i32 %0 to i64
  br label %13

10:                                               ; preds = %100
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %9
  br i1 %12, label %102, label %13, !llvm.loop !5

13:                                               ; preds = %6, %10
  %14 = phi i64 [ 1, %6 ], [ %11, %10 ]
  %15 = phi i32 [ 0, %6 ], [ %94, %10 ]
  %16 = phi i32 [ 0, %6 ], [ %93, %10 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %17 = getelementptr inbounds nuw ptr, ptr %1, i64 %14
  %18 = load ptr, ptr %17, align 8
  store ptr %7, ptr %4, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #22
  unreachable

21:                                               ; preds = %13
  %22 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  store i64 %22, ptr %3, align 8
  %23 = icmp ugt i64 %22, 15
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
  store ptr %25, ptr %4, align 8
  %26 = load i64, ptr %3, align 8
  store i64 %26, ptr %7, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %25, %24 ], [ %7, %21 ]
  switch i64 %22, label %31 [
    i64 1, label %29
    i64 0, label %32
  ]

29:                                               ; preds = %27
  %30 = load i8, ptr %18, align 1
  store i8 %30, ptr %28, align 1
  br label %32

31:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr nonnull align 1 %18, i64 %22, i1 false)
  br label %32

32:                                               ; preds = %31, %29, %27
  %33 = load i64, ptr %3, align 8
  store i64 %33, ptr %8, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 %33
  store i8 0, ptr %35, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  %36 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.6) #23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = or i32 %16, 1
  br label %91

40:                                               ; preds = %90
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = load ptr, ptr %4, align 8
  %43 = icmp eq ptr %42, %7
  br i1 %43, label %101, label %44

44:                                               ; preds = %40
  %45 = load i64, ptr %7, align 8
  %46 = add i64 %45, 1
  call void @_ZdlPvm(ptr noundef %42, i64 noundef %46) #23
  br label %101

47:                                               ; preds = %32
  %48 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = or i32 %16, 8
  br label %91

52:                                               ; preds = %47
  %53 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.8) #23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = or i32 %16, 2
  br label %91

57:                                               ; preds = %52
  %58 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9) #23
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = or i32 %16, 16
  br label %91

62:                                               ; preds = %57
  %63 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10) #23
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = or i32 %16, 4
  br label %91

67:                                               ; preds = %62
  %68 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11) #23
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = or i32 %16, 32
  br label %91

72:                                               ; preds = %67
  %73 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1) #23
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = or i32 %16, 128
  br label %91

77:                                               ; preds = %72
  %78 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2) #23
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = or i32 %16, 256
  br label %91

82:                                               ; preds = %77
  %83 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3) #23
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4) #23
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85, %82
  %89 = or i32 %16, 64
  br label %91

90:                                               ; preds = %85
  invoke void @_Z5usagev()
          to label %91 unwind label %40

91:                                               ; preds = %38, %55, %65, %75, %88, %80, %70, %60, %50, %90
  %92 = phi i1 [ false, %90 ], [ true, %50 ], [ true, %60 ], [ true, %70 ], [ true, %80 ], [ true, %88 ], [ true, %75 ], [ true, %65 ], [ true, %55 ], [ true, %38 ]
  %93 = phi i32 [ %16, %90 ], [ %51, %50 ], [ %61, %60 ], [ %71, %70 ], [ %81, %80 ], [ %89, %88 ], [ %76, %75 ], [ %66, %65 ], [ %56, %55 ], [ %39, %38 ]
  %94 = phi i32 [ 1, %90 ], [ %15, %50 ], [ %15, %60 ], [ %15, %70 ], [ %15, %80 ], [ %15, %88 ], [ %15, %75 ], [ %15, %65 ], [ %15, %55 ], [ %15, %38 ]
  %95 = load ptr, ptr %4, align 8
  %96 = icmp eq ptr %95, %7
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i64, ptr %7, align 8
  %99 = add i64 %98, 1
  call void @_ZdlPvm(ptr noundef %95, i64 noundef %99) #23
  br label %100

100:                                              ; preds = %91, %97
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br i1 %92, label %10, label %161

101:                                              ; preds = %44, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  resume { ptr, i32 } %41

102:                                              ; preds = %10, %2
  %103 = phi i32 [ 0, %2 ], [ %93, %10 ]
  %104 = and i32 %103, 63
  %105 = icmp eq i32 %104, 0
  %106 = or disjoint i32 %103, 63
  %107 = select i1 %105, i32 %106, i32 %103
  %108 = and i32 %107, 448
  %109 = icmp eq i32 %108, 0
  %110 = or disjoint i32 %107, 448
  %111 = select i1 %109, i32 %110, i32 %107
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %102
  call void @_Z9benchmarkItEvjmm(i32 noundef %111, i64 noundef 4194304, i64 noundef 3000)
  br label %115

115:                                              ; preds = %114, %102
  %116 = and i32 %111, 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  call void @_Z9benchmarkIsEvjmm(i32 noundef %111, i64 noundef 4194304, i64 noundef 3000)
  br label %119

119:                                              ; preds = %118, %115
  %120 = and i32 %111, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  call void @_Z9benchmarkIjEvjmm(i32 noundef %111, i64 noundef 4194304, i64 noundef 3000)
  br label %123

123:                                              ; preds = %122, %119
  %124 = and i32 %111, 16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  call void @_Z9benchmarkIiEvjmm(i32 noundef %111, i64 noundef 4194304, i64 noundef 3000)
  br label %127

127:                                              ; preds = %126, %123
  %128 = and i32 %111, 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  call void @_Z9benchmarkImEvjmm(i32 noundef %111, i64 noundef 4194304, i64 noundef 3000)
  br label %131

131:                                              ; preds = %130, %127
  %132 = and i32 %111, 32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call void @_Z9benchmarkIlEvjmm(i32 noundef %111, i64 noundef 4194304, i64 noundef 3000)
  br label %135

135:                                              ; preds = %134, %131
  %136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 30)
  %137 = load ptr, ptr @_ZSt4cout, align 8
  %138 = getelementptr i8, ptr %137, i64 -24
  %139 = load i64, ptr %138, align 8
  %140 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %139
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 240
  %142 = load ptr, ptr %141, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

145:                                              ; preds = %135
  %146 = getelementptr inbounds nuw i8, ptr %142, i64 56
  %147 = load i8, ptr %146, align 8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds nuw i8, ptr %142, i64 67
  %151 = load i8, ptr %150, align 1
  br label %157

152:                                              ; preds = %145
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %142)
  %153 = load ptr, ptr %142, align 8
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 48
  %155 = load ptr, ptr %154, align 8
  %156 = call noundef signext i8 %155(ptr noundef nonnull align 8 dereferenceable(570) %142, i8 noundef signext 10)
  br label %157

157:                                              ; preds = %149, %152
  %158 = phi i8 [ %151, %149 ], [ %156, %152 ]
  %159 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %158)
  %160 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %159)
  br label %161

161:                                              ; preds = %100, %157
  %162 = phi i32 [ 0, %157 ], [ %94, %100 ]
  ret i32 %162
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z9benchmarkItEvjmm(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::vector", align 8
  %8 = alloca %"class.std::vector.3", align 8
  %9 = alloca %"class.std::vector.8", align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 6)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 3)
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 6)
  %13 = load ptr, ptr @_ZSt4cout, align 8
  %14 = getelementptr i8, ptr %13, i64 -24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 240
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %23 = load i8, ptr %22, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 67
  %27 = load i8, ptr %26, align 1
  br label %33

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %29 = load ptr, ptr %18, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef signext i8 %31(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %33

33:                                               ; preds = %25, %28
  %34 = phi i8 [ %27, %25 ], [ %32, %28 ]
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %34)
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
  %37 = and i32 %0, 64
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %0, 256
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %0, 128
  %42 = icmp eq i32 %41, 0
  %43 = tail call i64 @llvm.umin.i64(i64 %1, i64 65535)
  %44 = udiv i64 %1, %43
  %45 = mul i64 %44, %2
  %46 = trunc nuw i64 %43 to i16
  br i1 %38, label %80, label %47

47:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @_Z10get_primesIttESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, i16 noundef zeroext %46)
  %48 = invoke { double, i64 } @_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %45)
          to label %49 unwind label %65

49:                                               ; preds = %47
  %50 = extractvalue { double, i64 } %48, 0
  %51 = extractvalue { double, i64 } %48, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 46, ptr %6, align 1
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %6, i64 noundef 1)
          to label %53 unwind label %67

53:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %55 unwind label %67

55:                                               ; preds = %53
  %56 = load ptr, ptr %7, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %60 = load ptr, ptr %59, align 8
  %61 = ptrtoint ptr %60 to i64
  %62 = ptrtoint ptr %56 to i64
  %63 = sub i64 %61, %62
  call void @_ZdlPvm(ptr noundef nonnull %56, i64 noundef %63) #23
  br label %64

64:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %80

65:                                               ; preds = %47
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %69

67:                                               ; preds = %53, %49
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  %71 = load ptr, ptr %7, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %75 = load ptr, ptr %74, align 8
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %71 to i64
  %78 = sub i64 %76, %77
  call void @_ZdlPvm(ptr noundef nonnull %71, i64 noundef %78) #23
  br label %79

79:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %318

80:                                               ; preds = %64, %33
  %81 = phi i64 [ %51, %64 ], [ 0, %33 ]
  %82 = phi double [ %50, %64 ], [ 0.000000e+00, %33 ]
  br i1 %40, label %116, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  call void @_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %8, i16 noundef zeroext %46)
  %84 = invoke { double, i64 } @_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %45)
          to label %85 unwind label %101

85:                                               ; preds = %83
  %86 = extractvalue { double, i64 } %84, 0
  %87 = extractvalue { double, i64 } %84, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 46, ptr %5, align 1
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %5, i64 noundef 1)
          to label %89 unwind label %103

89:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %91 unwind label %103

91:                                               ; preds = %89
  %92 = load ptr, ptr %8, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %96 = load ptr, ptr %95, align 8
  %97 = ptrtoint ptr %96 to i64
  %98 = ptrtoint ptr %92 to i64
  %99 = sub i64 %97, %98
  call void @_ZdlPvm(ptr noundef nonnull %92, i64 noundef %99) #23
  br label %100

100:                                              ; preds = %91, %94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %116

101:                                              ; preds = %83
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %105

103:                                              ; preds = %89, %85
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %102, %101 ]
  %107 = load ptr, ptr %8, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %111 = load ptr, ptr %110, align 8
  %112 = ptrtoint ptr %111 to i64
  %113 = ptrtoint ptr %107 to i64
  %114 = sub i64 %112, %113
  call void @_ZdlPvm(ptr noundef nonnull %107, i64 noundef %114) #23
  br label %115

115:                                              ; preds = %105, %109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %318

116:                                              ; preds = %100, %80
  %117 = phi i64 [ %87, %100 ], [ 0, %80 ]
  %118 = phi double [ %86, %100 ], [ 0.000000e+00, %80 ]
  br i1 %42, label %178, label %119

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #23
  call void @_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %9, i16 noundef zeroext %46)
  %120 = invoke { double, i64 } @_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %45)
          to label %121 unwind label %163

121:                                              ; preds = %119
  %122 = extractvalue { double, i64 } %120, 0
  %123 = extractvalue { double, i64 } %120, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 46, ptr %4, align 1
  %124 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %4, i64 noundef 1)
          to label %125 unwind label %165

125:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %126 = load ptr, ptr %124, align 8
  %127 = getelementptr i8, ptr %126, i64 -24
  %128 = load i64, ptr %127, align 8
  %129 = getelementptr inbounds i8, ptr %124, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 240
  %131 = load ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %134 unwind label %165

134:                                              ; preds = %133
  unreachable

135:                                              ; preds = %125
  %136 = getelementptr inbounds nuw i8, ptr %131, i64 56
  %137 = load i8, ptr %136, align 8
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds nuw i8, ptr %131, i64 67
  %141 = load i8, ptr %140, align 1
  br label %148

142:                                              ; preds = %135
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %131)
          to label %143 unwind label %165

143:                                              ; preds = %142
  %144 = load ptr, ptr %131, align 8
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 48
  %146 = load ptr, ptr %145, align 8
  %147 = invoke noundef signext i8 %146(ptr noundef nonnull align 8 dereferenceable(570) %131, i8 noundef signext 10)
          to label %148 unwind label %165

148:                                              ; preds = %143, %139
  %149 = phi i8 [ %141, %139 ], [ %147, %143 ]
  %150 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %124, i8 noundef signext %149)
          to label %151 unwind label %165

151:                                              ; preds = %148
  %152 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %150)
          to label %153 unwind label %165

153:                                              ; preds = %151
  %154 = load ptr, ptr %9, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %158 = load ptr, ptr %157, align 8
  %159 = ptrtoint ptr %158 to i64
  %160 = ptrtoint ptr %154 to i64
  %161 = sub i64 %159, %160
  call void @_ZdlPvm(ptr noundef nonnull %154, i64 noundef %161) #23
  br label %162

162:                                              ; preds = %153, %156
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %178

163:                                              ; preds = %119
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %167

165:                                              ; preds = %151, %148, %143, %142, %133, %121
  %166 = landingpad { ptr, i32 }
          cleanup
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %164, %163 ]
  %169 = load ptr, ptr %9, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %173 = load ptr, ptr %172, align 8
  %174 = ptrtoint ptr %173 to i64
  %175 = ptrtoint ptr %169 to i64
  %176 = sub i64 %174, %175
  call void @_ZdlPvm(ptr noundef nonnull %169, i64 noundef %176) #23
  br label %177

177:                                              ; preds = %167, %171
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %318

178:                                              ; preds = %162, %116
  %179 = phi i64 [ %123, %162 ], [ 0, %116 ]
  %180 = phi double [ %122, %162 ], [ 0.000000e+00, %116 ]
  %181 = and i32 %0, 320
  %182 = icmp ne i32 %181, 320
  %183 = icmp eq i64 %117, %81
  %184 = select i1 %182, i1 true, i1 %183
  br i1 %184, label %193, label %185

185:                                              ; preds = %178
  %186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15)
  %187 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef nonnull @.str.6)
  %188 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %187, ptr noundef nonnull @.str.16)
  %189 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %188, i64 noundef %117)
  %190 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %189, ptr noundef nonnull @.str.17)
  %191 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %190, i64 noundef %81)
  %192 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %191)
  call void @exit(i32 noundef 1) #24
  unreachable

193:                                              ; preds = %178
  %194 = and i32 %0, 192
  %195 = icmp ne i32 %194, 192
  %196 = icmp eq i64 %179, %81
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %206, label %198

198:                                              ; preds = %193
  %199 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18)
  %200 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %199, ptr noundef nonnull @.str.6)
  %201 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %200, ptr noundef nonnull @.str.16)
  %202 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %201, i64 noundef %179)
  %203 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %202, ptr noundef nonnull @.str.17)
  %204 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %203, i64 noundef %81)
  %205 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %204)
  call void @exit(i32 noundef 1) #24
  unreachable

206:                                              ; preds = %193
  br i1 %38, label %235, label %207

207:                                              ; preds = %206
  %208 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 12)
  %209 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %82)
  %210 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %209, ptr noundef nonnull @.str.20, i64 noundef 8)
  %211 = load ptr, ptr %209, align 8
  %212 = getelementptr i8, ptr %211, i64 -24
  %213 = load i64, ptr %212, align 8
  %214 = getelementptr inbounds i8, ptr %209, i64 %213
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 240
  %216 = load ptr, ptr %215, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %207
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

219:                                              ; preds = %207
  %220 = getelementptr inbounds nuw i8, ptr %216, i64 56
  %221 = load i8, ptr %220, align 8
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds nuw i8, ptr %216, i64 67
  %225 = load i8, ptr %224, align 1
  br label %231

226:                                              ; preds = %219
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %216)
  %227 = load ptr, ptr %216, align 8
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 48
  %229 = load ptr, ptr %228, align 8
  %230 = call noundef signext i8 %229(ptr noundef nonnull align 8 dereferenceable(570) %216, i8 noundef signext 10)
  br label %231

231:                                              ; preds = %223, %226
  %232 = phi i8 [ %225, %223 ], [ %230, %226 ]
  %233 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %209, i8 noundef signext %232)
  %234 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %233)
  br label %235

235:                                              ; preds = %231, %206
  br i1 %40, label %264, label %236

236:                                              ; preds = %235
  %237 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 12)
  %238 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %118)
  %239 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %238, ptr noundef nonnull @.str.20, i64 noundef 8)
  %240 = load ptr, ptr %238, align 8
  %241 = getelementptr i8, ptr %240, i64 -24
  %242 = load i64, ptr %241, align 8
  %243 = getelementptr inbounds i8, ptr %238, i64 %242
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 240
  %245 = load ptr, ptr %244, align 8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %236
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

248:                                              ; preds = %236
  %249 = getelementptr inbounds nuw i8, ptr %245, i64 56
  %250 = load i8, ptr %249, align 8
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds nuw i8, ptr %245, i64 67
  %254 = load i8, ptr %253, align 1
  br label %260

255:                                              ; preds = %248
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %245)
  %256 = load ptr, ptr %245, align 8
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 48
  %258 = load ptr, ptr %257, align 8
  %259 = call noundef signext i8 %258(ptr noundef nonnull align 8 dereferenceable(570) %245, i8 noundef signext 10)
  br label %260

260:                                              ; preds = %252, %255
  %261 = phi i8 [ %254, %252 ], [ %259, %255 ]
  %262 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %238, i8 noundef signext %261)
  %263 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %262)
  br label %264

264:                                              ; preds = %260, %235
  br i1 %42, label %293, label %265

265:                                              ; preds = %264
  %266 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.22, i64 noundef 12)
  %267 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %180)
  %268 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %267, ptr noundef nonnull @.str.20, i64 noundef 8)
  %269 = load ptr, ptr %267, align 8
  %270 = getelementptr i8, ptr %269, i64 -24
  %271 = load i64, ptr %270, align 8
  %272 = getelementptr inbounds i8, ptr %267, i64 %271
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 240
  %274 = load ptr, ptr %273, align 8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %265
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

277:                                              ; preds = %265
  %278 = getelementptr inbounds nuw i8, ptr %274, i64 56
  %279 = load i8, ptr %278, align 8
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %274, i64 67
  %283 = load i8, ptr %282, align 1
  br label %289

284:                                              ; preds = %277
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %274)
  %285 = load ptr, ptr %274, align 8
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 48
  %287 = load ptr, ptr %286, align 8
  %288 = call noundef signext i8 %287(ptr noundef nonnull align 8 dereferenceable(570) %274, i8 noundef signext 10)
  br label %289

289:                                              ; preds = %281, %284
  %290 = phi i8 [ %283, %281 ], [ %288, %284 ]
  %291 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %267, i8 noundef signext %290)
  %292 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %291)
  br label %293

293:                                              ; preds = %289, %264
  %294 = load ptr, ptr @_ZSt4cout, align 8
  %295 = getelementptr i8, ptr %294, i64 -24
  %296 = load i64, ptr %295, align 8
  %297 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 240
  %299 = load ptr, ptr %298, align 8
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

302:                                              ; preds = %293
  %303 = getelementptr inbounds nuw i8, ptr %299, i64 56
  %304 = load i8, ptr %303, align 8
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds nuw i8, ptr %299, i64 67
  %308 = load i8, ptr %307, align 1
  br label %314

309:                                              ; preds = %302
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %299)
  %310 = load ptr, ptr %299, align 8
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 48
  %312 = load ptr, ptr %311, align 8
  %313 = call noundef signext i8 %312(ptr noundef nonnull align 8 dereferenceable(570) %299, i8 noundef signext 10)
  br label %314

314:                                              ; preds = %306, %309
  %315 = phi i8 [ %308, %306 ], [ %313, %309 ]
  %316 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %315)
  %317 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %316)
  ret void

318:                                              ; preds = %177, %115, %79
  %319 = phi { ptr, i32 } [ %168, %177 ], [ %106, %115 ], [ %70, %79 ]
  resume { ptr, i32 } %319
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z9benchmarkIsEvjmm(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::vector.23", align 8
  %8 = alloca %"class.std::vector.28", align 8
  %9 = alloca %"class.std::vector.33", align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 6)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 3)
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 6)
  %13 = load ptr, ptr @_ZSt4cout, align 8
  %14 = getelementptr i8, ptr %13, i64 -24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 240
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %23 = load i8, ptr %22, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 67
  %27 = load i8, ptr %26, align 1
  br label %33

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %29 = load ptr, ptr %18, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef signext i8 %31(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %33

33:                                               ; preds = %25, %28
  %34 = phi i8 [ %27, %25 ], [ %32, %28 ]
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %34)
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
  %37 = and i32 %0, 64
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %0, 256
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %0, 128
  %42 = icmp eq i32 %41, 0
  %43 = tail call i64 @llvm.umin.i64(i64 %1, i64 32767)
  %44 = udiv i64 %1, %43
  %45 = mul i64 %44, %2
  %46 = trunc nuw nsw i64 %43 to i16
  br i1 %38, label %80, label %47

47:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @_Z10get_primesIssESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.23") align 8 %7, i16 noundef signext %46)
  %48 = invoke { double, i64 } @_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %45)
          to label %49 unwind label %65

49:                                               ; preds = %47
  %50 = extractvalue { double, i64 } %48, 0
  %51 = extractvalue { double, i64 } %48, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 46, ptr %6, align 1
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %6, i64 noundef 1)
          to label %53 unwind label %67

53:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %55 unwind label %67

55:                                               ; preds = %53
  %56 = load ptr, ptr %7, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %60 = load ptr, ptr %59, align 8
  %61 = ptrtoint ptr %60 to i64
  %62 = ptrtoint ptr %56 to i64
  %63 = sub i64 %61, %62
  call void @_ZdlPvm(ptr noundef nonnull %56, i64 noundef %63) #23
  br label %64

64:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %80

65:                                               ; preds = %47
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %69

67:                                               ; preds = %53, %49
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  %71 = load ptr, ptr %7, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %75 = load ptr, ptr %74, align 8
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %71 to i64
  %78 = sub i64 %76, %77
  call void @_ZdlPvm(ptr noundef nonnull %71, i64 noundef %78) #23
  br label %79

79:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %318

80:                                               ; preds = %64, %33
  %81 = phi i64 [ %51, %64 ], [ 0, %33 ]
  %82 = phi double [ %50, %64 ], [ 0.000000e+00, %33 ]
  br i1 %40, label %116, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  call void @_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.28") align 8 %8, i16 noundef signext %46)
  %84 = invoke { double, i64 } @_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %45)
          to label %85 unwind label %101

85:                                               ; preds = %83
  %86 = extractvalue { double, i64 } %84, 0
  %87 = extractvalue { double, i64 } %84, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 46, ptr %5, align 1
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %5, i64 noundef 1)
          to label %89 unwind label %103

89:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %91 unwind label %103

91:                                               ; preds = %89
  %92 = load ptr, ptr %8, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %96 = load ptr, ptr %95, align 8
  %97 = ptrtoint ptr %96 to i64
  %98 = ptrtoint ptr %92 to i64
  %99 = sub i64 %97, %98
  call void @_ZdlPvm(ptr noundef nonnull %92, i64 noundef %99) #23
  br label %100

100:                                              ; preds = %91, %94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %116

101:                                              ; preds = %83
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %105

103:                                              ; preds = %89, %85
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %102, %101 ]
  %107 = load ptr, ptr %8, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %111 = load ptr, ptr %110, align 8
  %112 = ptrtoint ptr %111 to i64
  %113 = ptrtoint ptr %107 to i64
  %114 = sub i64 %112, %113
  call void @_ZdlPvm(ptr noundef nonnull %107, i64 noundef %114) #23
  br label %115

115:                                              ; preds = %105, %109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %318

116:                                              ; preds = %100, %80
  %117 = phi i64 [ %87, %100 ], [ 0, %80 ]
  %118 = phi double [ %86, %100 ], [ 0.000000e+00, %80 ]
  br i1 %42, label %178, label %119

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #23
  call void @_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %9, i16 noundef signext %46)
  %120 = invoke { double, i64 } @_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %45)
          to label %121 unwind label %163

121:                                              ; preds = %119
  %122 = extractvalue { double, i64 } %120, 0
  %123 = extractvalue { double, i64 } %120, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 46, ptr %4, align 1
  %124 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %4, i64 noundef 1)
          to label %125 unwind label %165

125:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %126 = load ptr, ptr %124, align 8
  %127 = getelementptr i8, ptr %126, i64 -24
  %128 = load i64, ptr %127, align 8
  %129 = getelementptr inbounds i8, ptr %124, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 240
  %131 = load ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %134 unwind label %165

134:                                              ; preds = %133
  unreachable

135:                                              ; preds = %125
  %136 = getelementptr inbounds nuw i8, ptr %131, i64 56
  %137 = load i8, ptr %136, align 8
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds nuw i8, ptr %131, i64 67
  %141 = load i8, ptr %140, align 1
  br label %148

142:                                              ; preds = %135
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %131)
          to label %143 unwind label %165

143:                                              ; preds = %142
  %144 = load ptr, ptr %131, align 8
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 48
  %146 = load ptr, ptr %145, align 8
  %147 = invoke noundef signext i8 %146(ptr noundef nonnull align 8 dereferenceable(570) %131, i8 noundef signext 10)
          to label %148 unwind label %165

148:                                              ; preds = %143, %139
  %149 = phi i8 [ %141, %139 ], [ %147, %143 ]
  %150 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %124, i8 noundef signext %149)
          to label %151 unwind label %165

151:                                              ; preds = %148
  %152 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %150)
          to label %153 unwind label %165

153:                                              ; preds = %151
  %154 = load ptr, ptr %9, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %158 = load ptr, ptr %157, align 8
  %159 = ptrtoint ptr %158 to i64
  %160 = ptrtoint ptr %154 to i64
  %161 = sub i64 %159, %160
  call void @_ZdlPvm(ptr noundef nonnull %154, i64 noundef %161) #23
  br label %162

162:                                              ; preds = %153, %156
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %178

163:                                              ; preds = %119
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %167

165:                                              ; preds = %151, %148, %143, %142, %133, %121
  %166 = landingpad { ptr, i32 }
          cleanup
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %164, %163 ]
  %169 = load ptr, ptr %9, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %173 = load ptr, ptr %172, align 8
  %174 = ptrtoint ptr %173 to i64
  %175 = ptrtoint ptr %169 to i64
  %176 = sub i64 %174, %175
  call void @_ZdlPvm(ptr noundef nonnull %169, i64 noundef %176) #23
  br label %177

177:                                              ; preds = %167, %171
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %318

178:                                              ; preds = %162, %116
  %179 = phi i64 [ %123, %162 ], [ 0, %116 ]
  %180 = phi double [ %122, %162 ], [ 0.000000e+00, %116 ]
  %181 = and i32 %0, 320
  %182 = icmp ne i32 %181, 320
  %183 = icmp eq i64 %117, %81
  %184 = select i1 %182, i1 true, i1 %183
  br i1 %184, label %193, label %185

185:                                              ; preds = %178
  %186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15)
  %187 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef nonnull @.str.7)
  %188 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %187, ptr noundef nonnull @.str.16)
  %189 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %188, i64 noundef %117)
  %190 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %189, ptr noundef nonnull @.str.17)
  %191 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %190, i64 noundef %81)
  %192 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %191)
  call void @exit(i32 noundef 1) #24
  unreachable

193:                                              ; preds = %178
  %194 = and i32 %0, 192
  %195 = icmp ne i32 %194, 192
  %196 = icmp eq i64 %179, %81
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %206, label %198

198:                                              ; preds = %193
  %199 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18)
  %200 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %199, ptr noundef nonnull @.str.7)
  %201 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %200, ptr noundef nonnull @.str.16)
  %202 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %201, i64 noundef %179)
  %203 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %202, ptr noundef nonnull @.str.17)
  %204 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %203, i64 noundef %81)
  %205 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %204)
  call void @exit(i32 noundef 1) #24
  unreachable

206:                                              ; preds = %193
  br i1 %38, label %235, label %207

207:                                              ; preds = %206
  %208 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 12)
  %209 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %82)
  %210 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %209, ptr noundef nonnull @.str.20, i64 noundef 8)
  %211 = load ptr, ptr %209, align 8
  %212 = getelementptr i8, ptr %211, i64 -24
  %213 = load i64, ptr %212, align 8
  %214 = getelementptr inbounds i8, ptr %209, i64 %213
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 240
  %216 = load ptr, ptr %215, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %207
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

219:                                              ; preds = %207
  %220 = getelementptr inbounds nuw i8, ptr %216, i64 56
  %221 = load i8, ptr %220, align 8
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds nuw i8, ptr %216, i64 67
  %225 = load i8, ptr %224, align 1
  br label %231

226:                                              ; preds = %219
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %216)
  %227 = load ptr, ptr %216, align 8
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 48
  %229 = load ptr, ptr %228, align 8
  %230 = call noundef signext i8 %229(ptr noundef nonnull align 8 dereferenceable(570) %216, i8 noundef signext 10)
  br label %231

231:                                              ; preds = %223, %226
  %232 = phi i8 [ %225, %223 ], [ %230, %226 ]
  %233 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %209, i8 noundef signext %232)
  %234 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %233)
  br label %235

235:                                              ; preds = %231, %206
  br i1 %40, label %264, label %236

236:                                              ; preds = %235
  %237 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 12)
  %238 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %118)
  %239 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %238, ptr noundef nonnull @.str.20, i64 noundef 8)
  %240 = load ptr, ptr %238, align 8
  %241 = getelementptr i8, ptr %240, i64 -24
  %242 = load i64, ptr %241, align 8
  %243 = getelementptr inbounds i8, ptr %238, i64 %242
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 240
  %245 = load ptr, ptr %244, align 8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %236
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

248:                                              ; preds = %236
  %249 = getelementptr inbounds nuw i8, ptr %245, i64 56
  %250 = load i8, ptr %249, align 8
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds nuw i8, ptr %245, i64 67
  %254 = load i8, ptr %253, align 1
  br label %260

255:                                              ; preds = %248
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %245)
  %256 = load ptr, ptr %245, align 8
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 48
  %258 = load ptr, ptr %257, align 8
  %259 = call noundef signext i8 %258(ptr noundef nonnull align 8 dereferenceable(570) %245, i8 noundef signext 10)
  br label %260

260:                                              ; preds = %252, %255
  %261 = phi i8 [ %254, %252 ], [ %259, %255 ]
  %262 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %238, i8 noundef signext %261)
  %263 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %262)
  br label %264

264:                                              ; preds = %260, %235
  br i1 %42, label %293, label %265

265:                                              ; preds = %264
  %266 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.22, i64 noundef 12)
  %267 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %180)
  %268 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %267, ptr noundef nonnull @.str.20, i64 noundef 8)
  %269 = load ptr, ptr %267, align 8
  %270 = getelementptr i8, ptr %269, i64 -24
  %271 = load i64, ptr %270, align 8
  %272 = getelementptr inbounds i8, ptr %267, i64 %271
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 240
  %274 = load ptr, ptr %273, align 8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %265
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

277:                                              ; preds = %265
  %278 = getelementptr inbounds nuw i8, ptr %274, i64 56
  %279 = load i8, ptr %278, align 8
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %274, i64 67
  %283 = load i8, ptr %282, align 1
  br label %289

284:                                              ; preds = %277
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %274)
  %285 = load ptr, ptr %274, align 8
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 48
  %287 = load ptr, ptr %286, align 8
  %288 = call noundef signext i8 %287(ptr noundef nonnull align 8 dereferenceable(570) %274, i8 noundef signext 10)
  br label %289

289:                                              ; preds = %281, %284
  %290 = phi i8 [ %283, %281 ], [ %288, %284 ]
  %291 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %267, i8 noundef signext %290)
  %292 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %291)
  br label %293

293:                                              ; preds = %289, %264
  %294 = load ptr, ptr @_ZSt4cout, align 8
  %295 = getelementptr i8, ptr %294, i64 -24
  %296 = load i64, ptr %295, align 8
  %297 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 240
  %299 = load ptr, ptr %298, align 8
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

302:                                              ; preds = %293
  %303 = getelementptr inbounds nuw i8, ptr %299, i64 56
  %304 = load i8, ptr %303, align 8
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds nuw i8, ptr %299, i64 67
  %308 = load i8, ptr %307, align 1
  br label %314

309:                                              ; preds = %302
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %299)
  %310 = load ptr, ptr %299, align 8
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 48
  %312 = load ptr, ptr %311, align 8
  %313 = call noundef signext i8 %312(ptr noundef nonnull align 8 dereferenceable(570) %299, i8 noundef signext 10)
  br label %314

314:                                              ; preds = %306, %309
  %315 = phi i8 [ %308, %306 ], [ %313, %309 ]
  %316 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %315)
  %317 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %316)
  ret void

318:                                              ; preds = %177, %115, %79
  %319 = phi { ptr, i32 } [ %168, %177 ], [ %106, %115 ], [ %70, %79 ]
  resume { ptr, i32 } %319
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z9benchmarkIjEvjmm(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::vector.48", align 8
  %8 = alloca %"class.std::vector.53", align 8
  %9 = alloca %"class.std::vector.58", align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 6)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 3)
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 6)
  %13 = load ptr, ptr @_ZSt4cout, align 8
  %14 = getelementptr i8, ptr %13, i64 -24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 240
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %23 = load i8, ptr %22, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 67
  %27 = load i8, ptr %26, align 1
  br label %33

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %29 = load ptr, ptr %18, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef signext i8 %31(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %33

33:                                               ; preds = %25, %28
  %34 = phi i8 [ %27, %25 ], [ %32, %28 ]
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %34)
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
  %37 = and i32 %0, 64
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %0, 256
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %0, 128
  %42 = icmp eq i32 %41, 0
  %43 = tail call i64 @llvm.umin.i64(i64 %1, i64 4294967295)
  %44 = udiv i64 %1, %43
  %45 = mul i64 %44, %2
  %46 = trunc nuw i64 %43 to i32
  br i1 %38, label %80, label %47

47:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.48") align 8 %7, i32 noundef %46)
  %48 = invoke { double, i64 } @_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %45)
          to label %49 unwind label %65

49:                                               ; preds = %47
  %50 = extractvalue { double, i64 } %48, 0
  %51 = extractvalue { double, i64 } %48, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 46, ptr %6, align 1
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %6, i64 noundef 1)
          to label %53 unwind label %67

53:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %55 unwind label %67

55:                                               ; preds = %53
  %56 = load ptr, ptr %7, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %60 = load ptr, ptr %59, align 8
  %61 = ptrtoint ptr %60 to i64
  %62 = ptrtoint ptr %56 to i64
  %63 = sub i64 %61, %62
  call void @_ZdlPvm(ptr noundef nonnull %56, i64 noundef %63) #23
  br label %64

64:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %80

65:                                               ; preds = %47
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %69

67:                                               ; preds = %53, %49
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  %71 = load ptr, ptr %7, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %75 = load ptr, ptr %74, align 8
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %71 to i64
  %78 = sub i64 %76, %77
  call void @_ZdlPvm(ptr noundef nonnull %71, i64 noundef %78) #23
  br label %79

79:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %318

80:                                               ; preds = %64, %33
  %81 = phi i64 [ %51, %64 ], [ 0, %33 ]
  %82 = phi double [ %50, %64 ], [ 0.000000e+00, %33 ]
  br i1 %40, label %116, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  call void @_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.53") align 8 %8, i32 noundef %46)
  %84 = invoke { double, i64 } @_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %45)
          to label %85 unwind label %101

85:                                               ; preds = %83
  %86 = extractvalue { double, i64 } %84, 0
  %87 = extractvalue { double, i64 } %84, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 46, ptr %5, align 1
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %5, i64 noundef 1)
          to label %89 unwind label %103

89:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %91 unwind label %103

91:                                               ; preds = %89
  %92 = load ptr, ptr %8, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %96 = load ptr, ptr %95, align 8
  %97 = ptrtoint ptr %96 to i64
  %98 = ptrtoint ptr %92 to i64
  %99 = sub i64 %97, %98
  call void @_ZdlPvm(ptr noundef nonnull %92, i64 noundef %99) #23
  br label %100

100:                                              ; preds = %91, %94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %116

101:                                              ; preds = %83
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %105

103:                                              ; preds = %89, %85
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %102, %101 ]
  %107 = load ptr, ptr %8, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %111 = load ptr, ptr %110, align 8
  %112 = ptrtoint ptr %111 to i64
  %113 = ptrtoint ptr %107 to i64
  %114 = sub i64 %112, %113
  call void @_ZdlPvm(ptr noundef nonnull %107, i64 noundef %114) #23
  br label %115

115:                                              ; preds = %105, %109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %318

116:                                              ; preds = %100, %80
  %117 = phi i64 [ %87, %100 ], [ 0, %80 ]
  %118 = phi double [ %86, %100 ], [ 0.000000e+00, %80 ]
  br i1 %42, label %178, label %119

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #23
  call void @_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.58") align 8 %9, i32 noundef %46)
  %120 = invoke { double, i64 } @_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %45)
          to label %121 unwind label %163

121:                                              ; preds = %119
  %122 = extractvalue { double, i64 } %120, 0
  %123 = extractvalue { double, i64 } %120, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 46, ptr %4, align 1
  %124 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %4, i64 noundef 1)
          to label %125 unwind label %165

125:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %126 = load ptr, ptr %124, align 8
  %127 = getelementptr i8, ptr %126, i64 -24
  %128 = load i64, ptr %127, align 8
  %129 = getelementptr inbounds i8, ptr %124, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 240
  %131 = load ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %134 unwind label %165

134:                                              ; preds = %133
  unreachable

135:                                              ; preds = %125
  %136 = getelementptr inbounds nuw i8, ptr %131, i64 56
  %137 = load i8, ptr %136, align 8
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds nuw i8, ptr %131, i64 67
  %141 = load i8, ptr %140, align 1
  br label %148

142:                                              ; preds = %135
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %131)
          to label %143 unwind label %165

143:                                              ; preds = %142
  %144 = load ptr, ptr %131, align 8
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 48
  %146 = load ptr, ptr %145, align 8
  %147 = invoke noundef signext i8 %146(ptr noundef nonnull align 8 dereferenceable(570) %131, i8 noundef signext 10)
          to label %148 unwind label %165

148:                                              ; preds = %143, %139
  %149 = phi i8 [ %141, %139 ], [ %147, %143 ]
  %150 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %124, i8 noundef signext %149)
          to label %151 unwind label %165

151:                                              ; preds = %148
  %152 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %150)
          to label %153 unwind label %165

153:                                              ; preds = %151
  %154 = load ptr, ptr %9, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %158 = load ptr, ptr %157, align 8
  %159 = ptrtoint ptr %158 to i64
  %160 = ptrtoint ptr %154 to i64
  %161 = sub i64 %159, %160
  call void @_ZdlPvm(ptr noundef nonnull %154, i64 noundef %161) #23
  br label %162

162:                                              ; preds = %153, %156
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %178

163:                                              ; preds = %119
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %167

165:                                              ; preds = %151, %148, %143, %142, %133, %121
  %166 = landingpad { ptr, i32 }
          cleanup
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %164, %163 ]
  %169 = load ptr, ptr %9, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %173 = load ptr, ptr %172, align 8
  %174 = ptrtoint ptr %173 to i64
  %175 = ptrtoint ptr %169 to i64
  %176 = sub i64 %174, %175
  call void @_ZdlPvm(ptr noundef nonnull %169, i64 noundef %176) #23
  br label %177

177:                                              ; preds = %167, %171
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %318

178:                                              ; preds = %162, %116
  %179 = phi i64 [ %123, %162 ], [ 0, %116 ]
  %180 = phi double [ %122, %162 ], [ 0.000000e+00, %116 ]
  %181 = and i32 %0, 320
  %182 = icmp ne i32 %181, 320
  %183 = icmp eq i64 %117, %81
  %184 = select i1 %182, i1 true, i1 %183
  br i1 %184, label %193, label %185

185:                                              ; preds = %178
  %186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15)
  %187 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef nonnull @.str.8)
  %188 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %187, ptr noundef nonnull @.str.16)
  %189 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %188, i64 noundef %117)
  %190 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %189, ptr noundef nonnull @.str.17)
  %191 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %190, i64 noundef %81)
  %192 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %191)
  call void @exit(i32 noundef 1) #24
  unreachable

193:                                              ; preds = %178
  %194 = and i32 %0, 192
  %195 = icmp ne i32 %194, 192
  %196 = icmp eq i64 %179, %81
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %206, label %198

198:                                              ; preds = %193
  %199 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18)
  %200 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %199, ptr noundef nonnull @.str.8)
  %201 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %200, ptr noundef nonnull @.str.16)
  %202 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %201, i64 noundef %179)
  %203 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %202, ptr noundef nonnull @.str.17)
  %204 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %203, i64 noundef %81)
  %205 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %204)
  call void @exit(i32 noundef 1) #24
  unreachable

206:                                              ; preds = %193
  br i1 %38, label %235, label %207

207:                                              ; preds = %206
  %208 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 12)
  %209 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %82)
  %210 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %209, ptr noundef nonnull @.str.20, i64 noundef 8)
  %211 = load ptr, ptr %209, align 8
  %212 = getelementptr i8, ptr %211, i64 -24
  %213 = load i64, ptr %212, align 8
  %214 = getelementptr inbounds i8, ptr %209, i64 %213
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 240
  %216 = load ptr, ptr %215, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %207
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

219:                                              ; preds = %207
  %220 = getelementptr inbounds nuw i8, ptr %216, i64 56
  %221 = load i8, ptr %220, align 8
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds nuw i8, ptr %216, i64 67
  %225 = load i8, ptr %224, align 1
  br label %231

226:                                              ; preds = %219
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %216)
  %227 = load ptr, ptr %216, align 8
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 48
  %229 = load ptr, ptr %228, align 8
  %230 = call noundef signext i8 %229(ptr noundef nonnull align 8 dereferenceable(570) %216, i8 noundef signext 10)
  br label %231

231:                                              ; preds = %223, %226
  %232 = phi i8 [ %225, %223 ], [ %230, %226 ]
  %233 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %209, i8 noundef signext %232)
  %234 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %233)
  br label %235

235:                                              ; preds = %231, %206
  br i1 %40, label %264, label %236

236:                                              ; preds = %235
  %237 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 12)
  %238 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %118)
  %239 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %238, ptr noundef nonnull @.str.20, i64 noundef 8)
  %240 = load ptr, ptr %238, align 8
  %241 = getelementptr i8, ptr %240, i64 -24
  %242 = load i64, ptr %241, align 8
  %243 = getelementptr inbounds i8, ptr %238, i64 %242
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 240
  %245 = load ptr, ptr %244, align 8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %236
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

248:                                              ; preds = %236
  %249 = getelementptr inbounds nuw i8, ptr %245, i64 56
  %250 = load i8, ptr %249, align 8
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds nuw i8, ptr %245, i64 67
  %254 = load i8, ptr %253, align 1
  br label %260

255:                                              ; preds = %248
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %245)
  %256 = load ptr, ptr %245, align 8
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 48
  %258 = load ptr, ptr %257, align 8
  %259 = call noundef signext i8 %258(ptr noundef nonnull align 8 dereferenceable(570) %245, i8 noundef signext 10)
  br label %260

260:                                              ; preds = %252, %255
  %261 = phi i8 [ %254, %252 ], [ %259, %255 ]
  %262 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %238, i8 noundef signext %261)
  %263 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %262)
  br label %264

264:                                              ; preds = %260, %235
  br i1 %42, label %293, label %265

265:                                              ; preds = %264
  %266 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.22, i64 noundef 12)
  %267 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %180)
  %268 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %267, ptr noundef nonnull @.str.20, i64 noundef 8)
  %269 = load ptr, ptr %267, align 8
  %270 = getelementptr i8, ptr %269, i64 -24
  %271 = load i64, ptr %270, align 8
  %272 = getelementptr inbounds i8, ptr %267, i64 %271
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 240
  %274 = load ptr, ptr %273, align 8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %265
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

277:                                              ; preds = %265
  %278 = getelementptr inbounds nuw i8, ptr %274, i64 56
  %279 = load i8, ptr %278, align 8
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %274, i64 67
  %283 = load i8, ptr %282, align 1
  br label %289

284:                                              ; preds = %277
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %274)
  %285 = load ptr, ptr %274, align 8
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 48
  %287 = load ptr, ptr %286, align 8
  %288 = call noundef signext i8 %287(ptr noundef nonnull align 8 dereferenceable(570) %274, i8 noundef signext 10)
  br label %289

289:                                              ; preds = %281, %284
  %290 = phi i8 [ %283, %281 ], [ %288, %284 ]
  %291 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %267, i8 noundef signext %290)
  %292 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %291)
  br label %293

293:                                              ; preds = %289, %264
  %294 = load ptr, ptr @_ZSt4cout, align 8
  %295 = getelementptr i8, ptr %294, i64 -24
  %296 = load i64, ptr %295, align 8
  %297 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 240
  %299 = load ptr, ptr %298, align 8
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

302:                                              ; preds = %293
  %303 = getelementptr inbounds nuw i8, ptr %299, i64 56
  %304 = load i8, ptr %303, align 8
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds nuw i8, ptr %299, i64 67
  %308 = load i8, ptr %307, align 1
  br label %314

309:                                              ; preds = %302
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %299)
  %310 = load ptr, ptr %299, align 8
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 48
  %312 = load ptr, ptr %311, align 8
  %313 = call noundef signext i8 %312(ptr noundef nonnull align 8 dereferenceable(570) %299, i8 noundef signext 10)
  br label %314

314:                                              ; preds = %306, %309
  %315 = phi i8 [ %308, %306 ], [ %313, %309 ]
  %316 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %315)
  %317 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %316)
  ret void

318:                                              ; preds = %177, %115, %79
  %319 = phi { ptr, i32 } [ %168, %177 ], [ %106, %115 ], [ %70, %79 ]
  resume { ptr, i32 } %319
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z9benchmarkIiEvjmm(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::vector.73", align 8
  %8 = alloca %"class.std::vector.78", align 8
  %9 = alloca %"class.std::vector.83", align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 6)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 3)
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 6)
  %13 = load ptr, ptr @_ZSt4cout, align 8
  %14 = getelementptr i8, ptr %13, i64 -24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 240
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %23 = load i8, ptr %22, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 67
  %27 = load i8, ptr %26, align 1
  br label %33

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %29 = load ptr, ptr %18, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef signext i8 %31(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %33

33:                                               ; preds = %25, %28
  %34 = phi i8 [ %27, %25 ], [ %32, %28 ]
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %34)
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
  %37 = and i32 %0, 64
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %0, 256
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %0, 128
  %42 = icmp eq i32 %41, 0
  %43 = tail call i64 @llvm.umin.i64(i64 %1, i64 2147483647)
  %44 = udiv i64 %1, %43
  %45 = mul i64 %44, %2
  %46 = trunc nuw nsw i64 %43 to i32
  br i1 %38, label %80, label %47

47:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.73") align 8 %7, i32 noundef %46)
  %48 = invoke { double, i64 } @_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %45)
          to label %49 unwind label %65

49:                                               ; preds = %47
  %50 = extractvalue { double, i64 } %48, 0
  %51 = extractvalue { double, i64 } %48, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 46, ptr %6, align 1
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %6, i64 noundef 1)
          to label %53 unwind label %67

53:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %55 unwind label %67

55:                                               ; preds = %53
  %56 = load ptr, ptr %7, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %60 = load ptr, ptr %59, align 8
  %61 = ptrtoint ptr %60 to i64
  %62 = ptrtoint ptr %56 to i64
  %63 = sub i64 %61, %62
  call void @_ZdlPvm(ptr noundef nonnull %56, i64 noundef %63) #23
  br label %64

64:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %80

65:                                               ; preds = %47
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %69

67:                                               ; preds = %53, %49
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  %71 = load ptr, ptr %7, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %75 = load ptr, ptr %74, align 8
  %76 = ptrtoint ptr %75 to i64
  %77 = ptrtoint ptr %71 to i64
  %78 = sub i64 %76, %77
  call void @_ZdlPvm(ptr noundef nonnull %71, i64 noundef %78) #23
  br label %79

79:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %318

80:                                               ; preds = %64, %33
  %81 = phi i64 [ %51, %64 ], [ 0, %33 ]
  %82 = phi double [ %50, %64 ], [ 0.000000e+00, %33 ]
  br i1 %40, label %116, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  call void @_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.78") align 8 %8, i32 noundef %46)
  %84 = invoke { double, i64 } @_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %45)
          to label %85 unwind label %101

85:                                               ; preds = %83
  %86 = extractvalue { double, i64 } %84, 0
  %87 = extractvalue { double, i64 } %84, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 46, ptr %5, align 1
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %5, i64 noundef 1)
          to label %89 unwind label %103

89:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %91 unwind label %103

91:                                               ; preds = %89
  %92 = load ptr, ptr %8, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %96 = load ptr, ptr %95, align 8
  %97 = ptrtoint ptr %96 to i64
  %98 = ptrtoint ptr %92 to i64
  %99 = sub i64 %97, %98
  call void @_ZdlPvm(ptr noundef nonnull %92, i64 noundef %99) #23
  br label %100

100:                                              ; preds = %91, %94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %116

101:                                              ; preds = %83
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %105

103:                                              ; preds = %89, %85
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %102, %101 ]
  %107 = load ptr, ptr %8, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %111 = load ptr, ptr %110, align 8
  %112 = ptrtoint ptr %111 to i64
  %113 = ptrtoint ptr %107 to i64
  %114 = sub i64 %112, %113
  call void @_ZdlPvm(ptr noundef nonnull %107, i64 noundef %114) #23
  br label %115

115:                                              ; preds = %105, %109
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %318

116:                                              ; preds = %100, %80
  %117 = phi i64 [ %87, %100 ], [ 0, %80 ]
  %118 = phi double [ %86, %100 ], [ 0.000000e+00, %80 ]
  br i1 %42, label %178, label %119

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #23
  call void @_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.83") align 8 %9, i32 noundef %46)
  %120 = invoke { double, i64 } @_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %45)
          to label %121 unwind label %163

121:                                              ; preds = %119
  %122 = extractvalue { double, i64 } %120, 0
  %123 = extractvalue { double, i64 } %120, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 46, ptr %4, align 1
  %124 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %4, i64 noundef 1)
          to label %125 unwind label %165

125:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %126 = load ptr, ptr %124, align 8
  %127 = getelementptr i8, ptr %126, i64 -24
  %128 = load i64, ptr %127, align 8
  %129 = getelementptr inbounds i8, ptr %124, i64 %128
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 240
  %131 = load ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %134 unwind label %165

134:                                              ; preds = %133
  unreachable

135:                                              ; preds = %125
  %136 = getelementptr inbounds nuw i8, ptr %131, i64 56
  %137 = load i8, ptr %136, align 8
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds nuw i8, ptr %131, i64 67
  %141 = load i8, ptr %140, align 1
  br label %148

142:                                              ; preds = %135
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %131)
          to label %143 unwind label %165

143:                                              ; preds = %142
  %144 = load ptr, ptr %131, align 8
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 48
  %146 = load ptr, ptr %145, align 8
  %147 = invoke noundef signext i8 %146(ptr noundef nonnull align 8 dereferenceable(570) %131, i8 noundef signext 10)
          to label %148 unwind label %165

148:                                              ; preds = %143, %139
  %149 = phi i8 [ %141, %139 ], [ %147, %143 ]
  %150 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %124, i8 noundef signext %149)
          to label %151 unwind label %165

151:                                              ; preds = %148
  %152 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %150)
          to label %153 unwind label %165

153:                                              ; preds = %151
  %154 = load ptr, ptr %9, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %158 = load ptr, ptr %157, align 8
  %159 = ptrtoint ptr %158 to i64
  %160 = ptrtoint ptr %154 to i64
  %161 = sub i64 %159, %160
  call void @_ZdlPvm(ptr noundef nonnull %154, i64 noundef %161) #23
  br label %162

162:                                              ; preds = %153, %156
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %178

163:                                              ; preds = %119
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %167

165:                                              ; preds = %151, %148, %143, %142, %133, %121
  %166 = landingpad { ptr, i32 }
          cleanup
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi { ptr, i32 } [ %166, %165 ], [ %164, %163 ]
  %169 = load ptr, ptr %9, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %173 = load ptr, ptr %172, align 8
  %174 = ptrtoint ptr %173 to i64
  %175 = ptrtoint ptr %169 to i64
  %176 = sub i64 %174, %175
  call void @_ZdlPvm(ptr noundef nonnull %169, i64 noundef %176) #23
  br label %177

177:                                              ; preds = %167, %171
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %318

178:                                              ; preds = %162, %116
  %179 = phi i64 [ %123, %162 ], [ 0, %116 ]
  %180 = phi double [ %122, %162 ], [ 0.000000e+00, %116 ]
  %181 = and i32 %0, 320
  %182 = icmp ne i32 %181, 320
  %183 = icmp eq i64 %117, %81
  %184 = select i1 %182, i1 true, i1 %183
  br i1 %184, label %193, label %185

185:                                              ; preds = %178
  %186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15)
  %187 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef nonnull @.str.9)
  %188 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %187, ptr noundef nonnull @.str.16)
  %189 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %188, i64 noundef %117)
  %190 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %189, ptr noundef nonnull @.str.17)
  %191 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %190, i64 noundef %81)
  %192 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %191)
  call void @exit(i32 noundef 1) #24
  unreachable

193:                                              ; preds = %178
  %194 = and i32 %0, 192
  %195 = icmp ne i32 %194, 192
  %196 = icmp eq i64 %179, %81
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %206, label %198

198:                                              ; preds = %193
  %199 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18)
  %200 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %199, ptr noundef nonnull @.str.9)
  %201 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %200, ptr noundef nonnull @.str.16)
  %202 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %201, i64 noundef %179)
  %203 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %202, ptr noundef nonnull @.str.17)
  %204 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %203, i64 noundef %81)
  %205 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %204)
  call void @exit(i32 noundef 1) #24
  unreachable

206:                                              ; preds = %193
  br i1 %38, label %235, label %207

207:                                              ; preds = %206
  %208 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 12)
  %209 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %82)
  %210 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %209, ptr noundef nonnull @.str.20, i64 noundef 8)
  %211 = load ptr, ptr %209, align 8
  %212 = getelementptr i8, ptr %211, i64 -24
  %213 = load i64, ptr %212, align 8
  %214 = getelementptr inbounds i8, ptr %209, i64 %213
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 240
  %216 = load ptr, ptr %215, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %207
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

219:                                              ; preds = %207
  %220 = getelementptr inbounds nuw i8, ptr %216, i64 56
  %221 = load i8, ptr %220, align 8
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds nuw i8, ptr %216, i64 67
  %225 = load i8, ptr %224, align 1
  br label %231

226:                                              ; preds = %219
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %216)
  %227 = load ptr, ptr %216, align 8
  %228 = getelementptr inbounds nuw i8, ptr %227, i64 48
  %229 = load ptr, ptr %228, align 8
  %230 = call noundef signext i8 %229(ptr noundef nonnull align 8 dereferenceable(570) %216, i8 noundef signext 10)
  br label %231

231:                                              ; preds = %223, %226
  %232 = phi i8 [ %225, %223 ], [ %230, %226 ]
  %233 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %209, i8 noundef signext %232)
  %234 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %233)
  br label %235

235:                                              ; preds = %231, %206
  br i1 %40, label %264, label %236

236:                                              ; preds = %235
  %237 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 12)
  %238 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %118)
  %239 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %238, ptr noundef nonnull @.str.20, i64 noundef 8)
  %240 = load ptr, ptr %238, align 8
  %241 = getelementptr i8, ptr %240, i64 -24
  %242 = load i64, ptr %241, align 8
  %243 = getelementptr inbounds i8, ptr %238, i64 %242
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 240
  %245 = load ptr, ptr %244, align 8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %236
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

248:                                              ; preds = %236
  %249 = getelementptr inbounds nuw i8, ptr %245, i64 56
  %250 = load i8, ptr %249, align 8
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds nuw i8, ptr %245, i64 67
  %254 = load i8, ptr %253, align 1
  br label %260

255:                                              ; preds = %248
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %245)
  %256 = load ptr, ptr %245, align 8
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 48
  %258 = load ptr, ptr %257, align 8
  %259 = call noundef signext i8 %258(ptr noundef nonnull align 8 dereferenceable(570) %245, i8 noundef signext 10)
  br label %260

260:                                              ; preds = %252, %255
  %261 = phi i8 [ %254, %252 ], [ %259, %255 ]
  %262 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %238, i8 noundef signext %261)
  %263 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %262)
  br label %264

264:                                              ; preds = %260, %235
  br i1 %42, label %293, label %265

265:                                              ; preds = %264
  %266 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.22, i64 noundef 12)
  %267 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %180)
  %268 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %267, ptr noundef nonnull @.str.20, i64 noundef 8)
  %269 = load ptr, ptr %267, align 8
  %270 = getelementptr i8, ptr %269, i64 -24
  %271 = load i64, ptr %270, align 8
  %272 = getelementptr inbounds i8, ptr %267, i64 %271
  %273 = getelementptr inbounds nuw i8, ptr %272, i64 240
  %274 = load ptr, ptr %273, align 8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %265
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

277:                                              ; preds = %265
  %278 = getelementptr inbounds nuw i8, ptr %274, i64 56
  %279 = load i8, ptr %278, align 8
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %274, i64 67
  %283 = load i8, ptr %282, align 1
  br label %289

284:                                              ; preds = %277
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %274)
  %285 = load ptr, ptr %274, align 8
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 48
  %287 = load ptr, ptr %286, align 8
  %288 = call noundef signext i8 %287(ptr noundef nonnull align 8 dereferenceable(570) %274, i8 noundef signext 10)
  br label %289

289:                                              ; preds = %281, %284
  %290 = phi i8 [ %283, %281 ], [ %288, %284 ]
  %291 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %267, i8 noundef signext %290)
  %292 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %291)
  br label %293

293:                                              ; preds = %289, %264
  %294 = load ptr, ptr @_ZSt4cout, align 8
  %295 = getelementptr i8, ptr %294, i64 -24
  %296 = load i64, ptr %295, align 8
  %297 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %296
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 240
  %299 = load ptr, ptr %298, align 8
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

302:                                              ; preds = %293
  %303 = getelementptr inbounds nuw i8, ptr %299, i64 56
  %304 = load i8, ptr %303, align 8
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds nuw i8, ptr %299, i64 67
  %308 = load i8, ptr %307, align 1
  br label %314

309:                                              ; preds = %302
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %299)
  %310 = load ptr, ptr %299, align 8
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 48
  %312 = load ptr, ptr %311, align 8
  %313 = call noundef signext i8 %312(ptr noundef nonnull align 8 dereferenceable(570) %299, i8 noundef signext 10)
  br label %314

314:                                              ; preds = %306, %309
  %315 = phi i8 [ %308, %306 ], [ %313, %309 ]
  %316 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %315)
  %317 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %316)
  ret void

318:                                              ; preds = %177, %115, %79
  %319 = phi { ptr, i32 } [ %168, %177 ], [ %106, %115 ], [ %70, %79 ]
  resume { ptr, i32 } %319
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z9benchmarkImEvjmm(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::vector.98", align 8
  %8 = alloca %"class.std::vector.103", align 8
  %9 = alloca %"class.std::vector.108", align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 6)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 3)
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 6)
  %13 = load ptr, ptr @_ZSt4cout, align 8
  %14 = getelementptr i8, ptr %13, i64 -24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 240
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %23 = load i8, ptr %22, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 67
  %27 = load i8, ptr %26, align 1
  br label %33

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %29 = load ptr, ptr %18, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef signext i8 %31(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %33

33:                                               ; preds = %25, %28
  %34 = phi i8 [ %27, %25 ], [ %32, %28 ]
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %34)
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
  %37 = and i32 %0, 64
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %0, 256
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %0, 128
  %42 = icmp eq i32 %41, 0
  br i1 %38, label %76, label %43

43:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @_Z10get_primesImmESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.98") align 8 %7, i64 noundef %1)
  %44 = invoke { double, i64 } @_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %2)
          to label %45 unwind label %61

45:                                               ; preds = %43
  %46 = extractvalue { double, i64 } %44, 0
  %47 = extractvalue { double, i64 } %44, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 46, ptr %6, align 1
  %48 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %6, i64 noundef 1)
          to label %49 unwind label %63

49:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %51 unwind label %63

51:                                               ; preds = %49
  %52 = load ptr, ptr %7, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %56 = load ptr, ptr %55, align 8
  %57 = ptrtoint ptr %56 to i64
  %58 = ptrtoint ptr %52 to i64
  %59 = sub i64 %57, %58
  call void @_ZdlPvm(ptr noundef nonnull %52, i64 noundef %59) #23
  br label %60

60:                                               ; preds = %51, %54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %76

61:                                               ; preds = %43
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %65

63:                                               ; preds = %49, %45
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi { ptr, i32 } [ %64, %63 ], [ %62, %61 ]
  %67 = load ptr, ptr %7, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %71 = load ptr, ptr %70, align 8
  %72 = ptrtoint ptr %71 to i64
  %73 = ptrtoint ptr %67 to i64
  %74 = sub i64 %72, %73
  call void @_ZdlPvm(ptr noundef nonnull %67, i64 noundef %74) #23
  br label %75

75:                                               ; preds = %65, %69
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %314

76:                                               ; preds = %60, %33
  %77 = phi i64 [ %47, %60 ], [ 0, %33 ]
  %78 = phi double [ %46, %60 ], [ 0.000000e+00, %33 ]
  br i1 %40, label %112, label %79

79:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  call void @_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.103") align 8 %8, i64 noundef %1)
  %80 = invoke { double, i64 } @_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %2)
          to label %81 unwind label %97

81:                                               ; preds = %79
  %82 = extractvalue { double, i64 } %80, 0
  %83 = extractvalue { double, i64 } %80, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 46, ptr %5, align 1
  %84 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %5, i64 noundef 1)
          to label %85 unwind label %99

85:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %84)
          to label %87 unwind label %99

87:                                               ; preds = %85
  %88 = load ptr, ptr %8, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %92 = load ptr, ptr %91, align 8
  %93 = ptrtoint ptr %92 to i64
  %94 = ptrtoint ptr %88 to i64
  %95 = sub i64 %93, %94
  call void @_ZdlPvm(ptr noundef nonnull %88, i64 noundef %95) #23
  br label %96

96:                                               ; preds = %87, %90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %112

97:                                               ; preds = %79
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %101

99:                                               ; preds = %85, %81
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %98, %97 ]
  %103 = load ptr, ptr %8, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %107 = load ptr, ptr %106, align 8
  %108 = ptrtoint ptr %107 to i64
  %109 = ptrtoint ptr %103 to i64
  %110 = sub i64 %108, %109
  call void @_ZdlPvm(ptr noundef nonnull %103, i64 noundef %110) #23
  br label %111

111:                                              ; preds = %101, %105
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %314

112:                                              ; preds = %96, %76
  %113 = phi i64 [ %83, %96 ], [ 0, %76 ]
  %114 = phi double [ %82, %96 ], [ 0.000000e+00, %76 ]
  br i1 %42, label %174, label %115

115:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #23
  call void @_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.108") align 8 %9, i64 noundef %1)
  %116 = invoke { double, i64 } @_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %2)
          to label %117 unwind label %159

117:                                              ; preds = %115
  %118 = extractvalue { double, i64 } %116, 0
  %119 = extractvalue { double, i64 } %116, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 46, ptr %4, align 1
  %120 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %4, i64 noundef 1)
          to label %121 unwind label %161

121:                                              ; preds = %117
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %122 = load ptr, ptr %120, align 8
  %123 = getelementptr i8, ptr %122, i64 -24
  %124 = load i64, ptr %123, align 8
  %125 = getelementptr inbounds i8, ptr %120, i64 %124
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 240
  %127 = load ptr, ptr %126, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %130 unwind label %161

130:                                              ; preds = %129
  unreachable

131:                                              ; preds = %121
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 56
  %133 = load i8, ptr %132, align 8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds nuw i8, ptr %127, i64 67
  %137 = load i8, ptr %136, align 1
  br label %144

138:                                              ; preds = %131
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %127)
          to label %139 unwind label %161

139:                                              ; preds = %138
  %140 = load ptr, ptr %127, align 8
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 48
  %142 = load ptr, ptr %141, align 8
  %143 = invoke noundef signext i8 %142(ptr noundef nonnull align 8 dereferenceable(570) %127, i8 noundef signext 10)
          to label %144 unwind label %161

144:                                              ; preds = %139, %135
  %145 = phi i8 [ %137, %135 ], [ %143, %139 ]
  %146 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %120, i8 noundef signext %145)
          to label %147 unwind label %161

147:                                              ; preds = %144
  %148 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %146)
          to label %149 unwind label %161

149:                                              ; preds = %147
  %150 = load ptr, ptr %9, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %154 = load ptr, ptr %153, align 8
  %155 = ptrtoint ptr %154 to i64
  %156 = ptrtoint ptr %150 to i64
  %157 = sub i64 %155, %156
  call void @_ZdlPvm(ptr noundef nonnull %150, i64 noundef %157) #23
  br label %158

158:                                              ; preds = %149, %152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %174

159:                                              ; preds = %115
  %160 = landingpad { ptr, i32 }
          cleanup
  br label %163

161:                                              ; preds = %147, %144, %139, %138, %129, %117
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi { ptr, i32 } [ %162, %161 ], [ %160, %159 ]
  %165 = load ptr, ptr %9, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %169 = load ptr, ptr %168, align 8
  %170 = ptrtoint ptr %169 to i64
  %171 = ptrtoint ptr %165 to i64
  %172 = sub i64 %170, %171
  call void @_ZdlPvm(ptr noundef nonnull %165, i64 noundef %172) #23
  br label %173

173:                                              ; preds = %163, %167
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %314

174:                                              ; preds = %158, %112
  %175 = phi i64 [ %119, %158 ], [ 0, %112 ]
  %176 = phi double [ %118, %158 ], [ 0.000000e+00, %112 ]
  %177 = and i32 %0, 320
  %178 = icmp ne i32 %177, 320
  %179 = icmp eq i64 %113, %77
  %180 = select i1 %178, i1 true, i1 %179
  br i1 %180, label %189, label %181

181:                                              ; preds = %174
  %182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15)
  %183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %182, ptr noundef nonnull @.str.10)
  %184 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef nonnull @.str.16)
  %185 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %184, i64 noundef %113)
  %186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %185, ptr noundef nonnull @.str.17)
  %187 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %186, i64 noundef %77)
  %188 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %187)
  call void @exit(i32 noundef 1) #24
  unreachable

189:                                              ; preds = %174
  %190 = and i32 %0, 192
  %191 = icmp ne i32 %190, 192
  %192 = icmp eq i64 %175, %77
  %193 = select i1 %191, i1 true, i1 %192
  br i1 %193, label %202, label %194

194:                                              ; preds = %189
  %195 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18)
  %196 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %195, ptr noundef nonnull @.str.10)
  %197 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %196, ptr noundef nonnull @.str.16)
  %198 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %197, i64 noundef %175)
  %199 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %198, ptr noundef nonnull @.str.17)
  %200 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %199, i64 noundef %77)
  %201 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %200)
  call void @exit(i32 noundef 1) #24
  unreachable

202:                                              ; preds = %189
  br i1 %38, label %231, label %203

203:                                              ; preds = %202
  %204 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 12)
  %205 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %78)
  %206 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %205, ptr noundef nonnull @.str.20, i64 noundef 8)
  %207 = load ptr, ptr %205, align 8
  %208 = getelementptr i8, ptr %207, i64 -24
  %209 = load i64, ptr %208, align 8
  %210 = getelementptr inbounds i8, ptr %205, i64 %209
  %211 = getelementptr inbounds nuw i8, ptr %210, i64 240
  %212 = load ptr, ptr %211, align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %203
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

215:                                              ; preds = %203
  %216 = getelementptr inbounds nuw i8, ptr %212, i64 56
  %217 = load i8, ptr %216, align 8
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds nuw i8, ptr %212, i64 67
  %221 = load i8, ptr %220, align 1
  br label %227

222:                                              ; preds = %215
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %212)
  %223 = load ptr, ptr %212, align 8
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 48
  %225 = load ptr, ptr %224, align 8
  %226 = call noundef signext i8 %225(ptr noundef nonnull align 8 dereferenceable(570) %212, i8 noundef signext 10)
  br label %227

227:                                              ; preds = %219, %222
  %228 = phi i8 [ %221, %219 ], [ %226, %222 ]
  %229 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %205, i8 noundef signext %228)
  %230 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %229)
  br label %231

231:                                              ; preds = %227, %202
  br i1 %40, label %260, label %232

232:                                              ; preds = %231
  %233 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 12)
  %234 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %114)
  %235 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %234, ptr noundef nonnull @.str.20, i64 noundef 8)
  %236 = load ptr, ptr %234, align 8
  %237 = getelementptr i8, ptr %236, i64 -24
  %238 = load i64, ptr %237, align 8
  %239 = getelementptr inbounds i8, ptr %234, i64 %238
  %240 = getelementptr inbounds nuw i8, ptr %239, i64 240
  %241 = load ptr, ptr %240, align 8
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %244

243:                                              ; preds = %232
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

244:                                              ; preds = %232
  %245 = getelementptr inbounds nuw i8, ptr %241, i64 56
  %246 = load i8, ptr %245, align 8
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds nuw i8, ptr %241, i64 67
  %250 = load i8, ptr %249, align 1
  br label %256

251:                                              ; preds = %244
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %241)
  %252 = load ptr, ptr %241, align 8
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 48
  %254 = load ptr, ptr %253, align 8
  %255 = call noundef signext i8 %254(ptr noundef nonnull align 8 dereferenceable(570) %241, i8 noundef signext 10)
  br label %256

256:                                              ; preds = %248, %251
  %257 = phi i8 [ %250, %248 ], [ %255, %251 ]
  %258 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %234, i8 noundef signext %257)
  %259 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %258)
  br label %260

260:                                              ; preds = %256, %231
  br i1 %42, label %289, label %261

261:                                              ; preds = %260
  %262 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.22, i64 noundef 12)
  %263 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %176)
  %264 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %263, ptr noundef nonnull @.str.20, i64 noundef 8)
  %265 = load ptr, ptr %263, align 8
  %266 = getelementptr i8, ptr %265, i64 -24
  %267 = load i64, ptr %266, align 8
  %268 = getelementptr inbounds i8, ptr %263, i64 %267
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 240
  %270 = load ptr, ptr %269, align 8
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %261
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

273:                                              ; preds = %261
  %274 = getelementptr inbounds nuw i8, ptr %270, i64 56
  %275 = load i8, ptr %274, align 8
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds nuw i8, ptr %270, i64 67
  %279 = load i8, ptr %278, align 1
  br label %285

280:                                              ; preds = %273
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %270)
  %281 = load ptr, ptr %270, align 8
  %282 = getelementptr inbounds nuw i8, ptr %281, i64 48
  %283 = load ptr, ptr %282, align 8
  %284 = call noundef signext i8 %283(ptr noundef nonnull align 8 dereferenceable(570) %270, i8 noundef signext 10)
  br label %285

285:                                              ; preds = %277, %280
  %286 = phi i8 [ %279, %277 ], [ %284, %280 ]
  %287 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %263, i8 noundef signext %286)
  %288 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %287)
  br label %289

289:                                              ; preds = %285, %260
  %290 = load ptr, ptr @_ZSt4cout, align 8
  %291 = getelementptr i8, ptr %290, i64 -24
  %292 = load i64, ptr %291, align 8
  %293 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %292
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 240
  %295 = load ptr, ptr %294, align 8
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %298

297:                                              ; preds = %289
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

298:                                              ; preds = %289
  %299 = getelementptr inbounds nuw i8, ptr %295, i64 56
  %300 = load i8, ptr %299, align 8
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %298
  %303 = getelementptr inbounds nuw i8, ptr %295, i64 67
  %304 = load i8, ptr %303, align 1
  br label %310

305:                                              ; preds = %298
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %295)
  %306 = load ptr, ptr %295, align 8
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 48
  %308 = load ptr, ptr %307, align 8
  %309 = call noundef signext i8 %308(ptr noundef nonnull align 8 dereferenceable(570) %295, i8 noundef signext 10)
  br label %310

310:                                              ; preds = %302, %305
  %311 = phi i8 [ %304, %302 ], [ %309, %305 ]
  %312 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %311)
  %313 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %312)
  ret void

314:                                              ; preds = %173, %111, %75
  %315 = phi { ptr, i32 } [ %164, %173 ], [ %102, %111 ], [ %66, %75 ]
  resume { ptr, i32 } %315
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z9benchmarkIlEvjmm(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::vector.123", align 8
  %8 = alloca %"class.std::vector.128", align 8
  %9 = alloca %"class.std::vector.133", align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 6)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 3)
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 6)
  %13 = load ptr, ptr @_ZSt4cout, align 8
  %14 = getelementptr i8, ptr %13, i64 -24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 240
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

21:                                               ; preds = %3
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %23 = load i8, ptr %22, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 67
  %27 = load i8, ptr %26, align 1
  br label %33

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %29 = load ptr, ptr %18, align 8
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef signext i8 %31(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %33

33:                                               ; preds = %25, %28
  %34 = phi i8 [ %27, %25 ], [ %32, %28 ]
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %34)
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %35)
  %37 = and i32 %0, 64
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %0, 256
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %0, 128
  %42 = icmp eq i32 %41, 0
  %43 = tail call i64 @llvm.umin.i64(i64 %1, i64 9223372036854775807)
  %44 = udiv i64 %1, %43
  %45 = mul i64 %44, %2
  br i1 %38, label %79, label %46

46:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @_Z10get_primesIllESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.123") align 8 %7, i64 noundef %43)
  %47 = invoke { double, i64 } @_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %45)
          to label %48 unwind label %64

48:                                               ; preds = %46
  %49 = extractvalue { double, i64 } %47, 0
  %50 = extractvalue { double, i64 } %47, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 46, ptr %6, align 1
  %51 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %6, i64 noundef 1)
          to label %52 unwind label %66

52:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %54 unwind label %66

54:                                               ; preds = %52
  %55 = load ptr, ptr %7, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %59 = load ptr, ptr %58, align 8
  %60 = ptrtoint ptr %59 to i64
  %61 = ptrtoint ptr %55 to i64
  %62 = sub i64 %60, %61
  call void @_ZdlPvm(ptr noundef nonnull %55, i64 noundef %62) #23
  br label %63

63:                                               ; preds = %54, %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %79

64:                                               ; preds = %46
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %68

66:                                               ; preds = %52, %48
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi { ptr, i32 } [ %67, %66 ], [ %65, %64 ]
  %70 = load ptr, ptr %7, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %74 = load ptr, ptr %73, align 8
  %75 = ptrtoint ptr %74 to i64
  %76 = ptrtoint ptr %70 to i64
  %77 = sub i64 %75, %76
  call void @_ZdlPvm(ptr noundef nonnull %70, i64 noundef %77) #23
  br label %78

78:                                               ; preds = %68, %72
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %317

79:                                               ; preds = %63, %33
  %80 = phi i64 [ %50, %63 ], [ 0, %33 ]
  %81 = phi double [ %49, %63 ], [ 0.000000e+00, %33 ]
  br i1 %40, label %115, label %82

82:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  call void @_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.128") align 8 %8, i64 noundef %43)
  %83 = invoke { double, i64 } @_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %45)
          to label %84 unwind label %100

84:                                               ; preds = %82
  %85 = extractvalue { double, i64 } %83, 0
  %86 = extractvalue { double, i64 } %83, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 46, ptr %5, align 1
  %87 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %5, i64 noundef 1)
          to label %88 unwind label %102

88:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %89 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %90 unwind label %102

90:                                               ; preds = %88
  %91 = load ptr, ptr %8, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %95 = load ptr, ptr %94, align 8
  %96 = ptrtoint ptr %95 to i64
  %97 = ptrtoint ptr %91 to i64
  %98 = sub i64 %96, %97
  call void @_ZdlPvm(ptr noundef nonnull %91, i64 noundef %98) #23
  br label %99

99:                                               ; preds = %90, %93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %115

100:                                              ; preds = %82
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %104

102:                                              ; preds = %88, %84
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %101, %100 ]
  %106 = load ptr, ptr %8, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %110 = load ptr, ptr %109, align 8
  %111 = ptrtoint ptr %110 to i64
  %112 = ptrtoint ptr %106 to i64
  %113 = sub i64 %111, %112
  call void @_ZdlPvm(ptr noundef nonnull %106, i64 noundef %113) #23
  br label %114

114:                                              ; preds = %104, %108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %317

115:                                              ; preds = %99, %79
  %116 = phi i64 [ %86, %99 ], [ 0, %79 ]
  %117 = phi double [ %85, %99 ], [ 0.000000e+00, %79 ]
  br i1 %42, label %177, label %118

118:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #23
  call void @_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.133") align 8 %9, i64 noundef %43)
  %119 = invoke { double, i64 } @_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %45)
          to label %120 unwind label %162

120:                                              ; preds = %118
  %121 = extractvalue { double, i64 } %119, 0
  %122 = extractvalue { double, i64 } %119, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 46, ptr %4, align 1
  %123 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %4, i64 noundef 1)
          to label %124 unwind label %164

124:                                              ; preds = %120
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %125 = load ptr, ptr %123, align 8
  %126 = getelementptr i8, ptr %125, i64 -24
  %127 = load i64, ptr %126, align 8
  %128 = getelementptr inbounds i8, ptr %123, i64 %127
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 240
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %133 unwind label %164

133:                                              ; preds = %132
  unreachable

134:                                              ; preds = %124
  %135 = getelementptr inbounds nuw i8, ptr %130, i64 56
  %136 = load i8, ptr %135, align 8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds nuw i8, ptr %130, i64 67
  %140 = load i8, ptr %139, align 1
  br label %147

141:                                              ; preds = %134
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %130)
          to label %142 unwind label %164

142:                                              ; preds = %141
  %143 = load ptr, ptr %130, align 8
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 48
  %145 = load ptr, ptr %144, align 8
  %146 = invoke noundef signext i8 %145(ptr noundef nonnull align 8 dereferenceable(570) %130, i8 noundef signext 10)
          to label %147 unwind label %164

147:                                              ; preds = %142, %138
  %148 = phi i8 [ %140, %138 ], [ %146, %142 ]
  %149 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %123, i8 noundef signext %148)
          to label %150 unwind label %164

150:                                              ; preds = %147
  %151 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %149)
          to label %152 unwind label %164

152:                                              ; preds = %150
  %153 = load ptr, ptr %9, align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %161, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %157 = load ptr, ptr %156, align 8
  %158 = ptrtoint ptr %157 to i64
  %159 = ptrtoint ptr %153 to i64
  %160 = sub i64 %158, %159
  call void @_ZdlPvm(ptr noundef nonnull %153, i64 noundef %160) #23
  br label %161

161:                                              ; preds = %152, %155
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %177

162:                                              ; preds = %118
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %166

164:                                              ; preds = %150, %147, %142, %141, %132, %120
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi { ptr, i32 } [ %165, %164 ], [ %163, %162 ]
  %168 = load ptr, ptr %9, align 8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %176, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %172 = load ptr, ptr %171, align 8
  %173 = ptrtoint ptr %172 to i64
  %174 = ptrtoint ptr %168 to i64
  %175 = sub i64 %173, %174
  call void @_ZdlPvm(ptr noundef nonnull %168, i64 noundef %175) #23
  br label %176

176:                                              ; preds = %166, %170
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #23
  br label %317

177:                                              ; preds = %161, %115
  %178 = phi i64 [ %122, %161 ], [ 0, %115 ]
  %179 = phi double [ %121, %161 ], [ 0.000000e+00, %115 ]
  %180 = and i32 %0, 320
  %181 = icmp ne i32 %180, 320
  %182 = icmp eq i64 %116, %80
  %183 = select i1 %181, i1 true, i1 %182
  br i1 %183, label %192, label %184

184:                                              ; preds = %177
  %185 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.15)
  %186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %185, ptr noundef nonnull @.str.11)
  %187 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef nonnull @.str.16)
  %188 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %187, i64 noundef %116)
  %189 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %188, ptr noundef nonnull @.str.17)
  %190 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %189, i64 noundef %80)
  %191 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %190)
  call void @exit(i32 noundef 1) #24
  unreachable

192:                                              ; preds = %177
  %193 = and i32 %0, 192
  %194 = icmp ne i32 %193, 192
  %195 = icmp eq i64 %178, %80
  %196 = select i1 %194, i1 true, i1 %195
  br i1 %196, label %205, label %197

197:                                              ; preds = %192
  %198 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18)
  %199 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %198, ptr noundef nonnull @.str.11)
  %200 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %199, ptr noundef nonnull @.str.16)
  %201 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %200, i64 noundef %178)
  %202 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %201, ptr noundef nonnull @.str.17)
  %203 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %202, i64 noundef %80)
  %204 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %203)
  call void @exit(i32 noundef 1) #24
  unreachable

205:                                              ; preds = %192
  br i1 %38, label %234, label %206

206:                                              ; preds = %205
  %207 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 12)
  %208 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %81)
  %209 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %208, ptr noundef nonnull @.str.20, i64 noundef 8)
  %210 = load ptr, ptr %208, align 8
  %211 = getelementptr i8, ptr %210, i64 -24
  %212 = load i64, ptr %211, align 8
  %213 = getelementptr inbounds i8, ptr %208, i64 %212
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 240
  %215 = load ptr, ptr %214, align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %206
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

218:                                              ; preds = %206
  %219 = getelementptr inbounds nuw i8, ptr %215, i64 56
  %220 = load i8, ptr %219, align 8
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds nuw i8, ptr %215, i64 67
  %224 = load i8, ptr %223, align 1
  br label %230

225:                                              ; preds = %218
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %215)
  %226 = load ptr, ptr %215, align 8
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 48
  %228 = load ptr, ptr %227, align 8
  %229 = call noundef signext i8 %228(ptr noundef nonnull align 8 dereferenceable(570) %215, i8 noundef signext 10)
  br label %230

230:                                              ; preds = %222, %225
  %231 = phi i8 [ %224, %222 ], [ %229, %225 ]
  %232 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %208, i8 noundef signext %231)
  %233 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %232)
  br label %234

234:                                              ; preds = %230, %205
  br i1 %40, label %263, label %235

235:                                              ; preds = %234
  %236 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 12)
  %237 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %117)
  %238 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %237, ptr noundef nonnull @.str.20, i64 noundef 8)
  %239 = load ptr, ptr %237, align 8
  %240 = getelementptr i8, ptr %239, i64 -24
  %241 = load i64, ptr %240, align 8
  %242 = getelementptr inbounds i8, ptr %237, i64 %241
  %243 = getelementptr inbounds nuw i8, ptr %242, i64 240
  %244 = load ptr, ptr %243, align 8
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %235
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

247:                                              ; preds = %235
  %248 = getelementptr inbounds nuw i8, ptr %244, i64 56
  %249 = load i8, ptr %248, align 8
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds nuw i8, ptr %244, i64 67
  %253 = load i8, ptr %252, align 1
  br label %259

254:                                              ; preds = %247
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %244)
  %255 = load ptr, ptr %244, align 8
  %256 = getelementptr inbounds nuw i8, ptr %255, i64 48
  %257 = load ptr, ptr %256, align 8
  %258 = call noundef signext i8 %257(ptr noundef nonnull align 8 dereferenceable(570) %244, i8 noundef signext 10)
  br label %259

259:                                              ; preds = %251, %254
  %260 = phi i8 [ %253, %251 ], [ %258, %254 ]
  %261 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %237, i8 noundef signext %260)
  %262 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %261)
  br label %263

263:                                              ; preds = %259, %234
  br i1 %42, label %292, label %264

264:                                              ; preds = %263
  %265 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.22, i64 noundef 12)
  %266 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %179)
  %267 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %266, ptr noundef nonnull @.str.20, i64 noundef 8)
  %268 = load ptr, ptr %266, align 8
  %269 = getelementptr i8, ptr %268, i64 -24
  %270 = load i64, ptr %269, align 8
  %271 = getelementptr inbounds i8, ptr %266, i64 %270
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 240
  %273 = load ptr, ptr %272, align 8
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %276

275:                                              ; preds = %264
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

276:                                              ; preds = %264
  %277 = getelementptr inbounds nuw i8, ptr %273, i64 56
  %278 = load i8, ptr %277, align 8
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds nuw i8, ptr %273, i64 67
  %282 = load i8, ptr %281, align 1
  br label %288

283:                                              ; preds = %276
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %273)
  %284 = load ptr, ptr %273, align 8
  %285 = getelementptr inbounds nuw i8, ptr %284, i64 48
  %286 = load ptr, ptr %285, align 8
  %287 = call noundef signext i8 %286(ptr noundef nonnull align 8 dereferenceable(570) %273, i8 noundef signext 10)
  br label %288

288:                                              ; preds = %280, %283
  %289 = phi i8 [ %282, %280 ], [ %287, %283 ]
  %290 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %266, i8 noundef signext %289)
  %291 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %290)
  br label %292

292:                                              ; preds = %288, %263
  %293 = load ptr, ptr @_ZSt4cout, align 8
  %294 = getelementptr i8, ptr %293, i64 -24
  %295 = load i64, ptr %294, align 8
  %296 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %295
  %297 = getelementptr inbounds nuw i8, ptr %296, i64 240
  %298 = load ptr, ptr %297, align 8
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %301

300:                                              ; preds = %292
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

301:                                              ; preds = %292
  %302 = getelementptr inbounds nuw i8, ptr %298, i64 56
  %303 = load i8, ptr %302, align 8
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %301
  %306 = getelementptr inbounds nuw i8, ptr %298, i64 67
  %307 = load i8, ptr %306, align 1
  br label %313

308:                                              ; preds = %301
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %298)
  %309 = load ptr, ptr %298, align 8
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 48
  %311 = load ptr, ptr %310, align 8
  %312 = call noundef signext i8 %311(ptr noundef nonnull align 8 dereferenceable(570) %298, i8 noundef signext 10)
  br label %313

313:                                              ; preds = %305, %308
  %314 = phi i8 [ %307, %305 ], [ %312, %308 ]
  %315 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %314)
  %316 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %315)
  ret void

317:                                              ; preds = %176, %114, %78
  %318 = phi { ptr, i32 } [ %167, %176 ], [ %105, %114 ], [ %69, %78 ]
  resume { ptr, i32 } %318
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIttESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = zext i16 %1 to i64
  %4 = add nuw nsw i64 %3, 1
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 1, i64 %4, i1 false)
  %6 = icmp ult i16 %1, 4
  br i1 %6, label %7, label %12

7:                                                ; preds = %25, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %8 = icmp ult i16 %1, 2
  br i1 %8, label %83, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %29

12:                                               ; preds = %2, %25
  %13 = phi i64 [ %27, %25 ], [ 4, %2 ]
  %14 = phi i64 [ %26, %25 ], [ 2, %2 ]
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  %18 = icmp ugt i64 %13, %3
  %19 = or i1 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %12, %20
  %21 = phi i64 [ %23, %20 ], [ %13, %12 ]
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  store i8 0, ptr %22, align 1
  %23 = add i64 %21, %14
  %24 = icmp ugt i64 %23, %3
  br i1 %24, label %25, label %20, !llvm.loop !7

25:                                               ; preds = %20, %12
  %26 = add i64 %14, 1
  %27 = mul i64 %26, %26
  %28 = icmp ugt i64 %27, %3
  br i1 %28, label %7, label %12, !llvm.loop !8

29:                                               ; preds = %9, %78
  %30 = phi ptr [ null, %9 ], [ %79, %78 ]
  %31 = phi i64 [ 2, %9 ], [ %81, %78 ]
  %32 = phi ptr [ null, %9 ], [ %80, %78 ]
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 %31
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %78, label %36

36:                                               ; preds = %29
  %37 = trunc nuw i64 %31 to i16
  %38 = load ptr, ptr %11, align 8
  %39 = icmp eq ptr %30, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  store i16 %37, ptr %30, align 2
  %41 = getelementptr inbounds nuw i8, ptr %30, i64 2
  store ptr %41, ptr %10, align 8
  br label %78

42:                                               ; preds = %36
  %43 = ptrtoint ptr %30 to i64
  %44 = ptrtoint ptr %32 to i64
  %45 = sub i64 %43, %44
  %46 = icmp eq i64 %45, 9223372036854775806
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  store ptr %32, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %48 unwind label %71

48:                                               ; preds = %47
  unreachable

49:                                               ; preds = %42
  %50 = ashr exact i64 %45, 1
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1)
  %52 = add i64 %51, %50
  %53 = icmp ult i64 %52, %50
  %54 = tail call i64 @llvm.umin.i64(i64 %52, i64 4611686018427387903)
  %55 = select i1 %53, i64 4611686018427387903, i64 %54
  %56 = icmp ne i64 %55, 0
  tail call void @llvm.assume(i1 %56)
  %57 = shl nuw nsw i64 %55, 1
  %58 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %57) #25
          to label %59 unwind label %69

59:                                               ; preds = %49
  %60 = getelementptr inbounds i8, ptr %58, i64 %45
  store i16 %37, ptr %60, align 2
  %61 = icmp sgt i64 %45, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %58, ptr align 2 %32, i64 %45, i1 false)
  br label %63

63:                                               ; preds = %62, %59
  %64 = getelementptr inbounds nuw i8, ptr %60, i64 2
  %65 = icmp eq ptr %32, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %45) #23
  br label %67

67:                                               ; preds = %66, %63
  store ptr %64, ptr %10, align 8
  %68 = getelementptr inbounds nuw i16, ptr %58, i64 %55
  store ptr %68, ptr %11, align 8
  br label %78

69:                                               ; preds = %49
  %70 = landingpad { ptr, i32 }
          cleanup
  store ptr %32, ptr %0, align 8
  br label %73

71:                                               ; preds = %47
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %70, %69 ], [ %72, %71 ]
  %75 = icmp eq ptr %32, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %45) #23
  br label %77

77:                                               ; preds = %73, %76
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  resume { ptr, i32 } %74

78:                                               ; preds = %40, %67, %29
  %79 = phi ptr [ %41, %40 ], [ %64, %67 ], [ %30, %29 ]
  %80 = phi ptr [ %32, %40 ], [ %58, %67 ], [ %32, %29 ]
  %81 = add nuw nsw i64 %31, 1
  %82 = icmp eq i64 %31, %3
  br i1 %82, label %83, label %29, !llvm.loop !9

83:                                               ; preds = %78, %7
  %84 = phi ptr [ null, %7 ], [ %80, %78 ]
  store ptr %84, ptr %0, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersItSt6vectorItSaItEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i16
  %9 = tail call i16 @llvm.umax.i16(i16 %8, i16 2)
  %10 = tail call noundef i64 @_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_(i16 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !10

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE0EEEtESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.3") align 8 %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = zext i16 %1 to i64
  %4 = add nuw nsw i64 %3, 1
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 1, i64 %4, i1 false)
  %6 = icmp ult i16 %1, 4
  br i1 %6, label %7, label %12

7:                                                ; preds = %25, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %8 = icmp ult i16 %1, 2
  br i1 %8, label %128, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %29

12:                                               ; preds = %2, %25
  %13 = phi i64 [ %27, %25 ], [ 4, %2 ]
  %14 = phi i64 [ %26, %25 ], [ 2, %2 ]
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  %18 = icmp ugt i64 %13, %3
  %19 = or i1 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %12, %20
  %21 = phi i64 [ %23, %20 ], [ %13, %12 ]
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  store i8 0, ptr %22, align 1
  %23 = add i64 %21, %14
  %24 = icmp ugt i64 %23, %3
  br i1 %24, label %25, label %20, !llvm.loop !11

25:                                               ; preds = %20, %12
  %26 = add i64 %14, 1
  %27 = mul i64 %26, %26
  %28 = icmp ugt i64 %27, %3
  br i1 %28, label %7, label %12, !llvm.loop !12

29:                                               ; preds = %9, %123
  %30 = phi ptr [ null, %9 ], [ %124, %123 ]
  %31 = phi i64 [ 2, %9 ], [ %126, %123 ]
  %32 = phi ptr [ null, %9 ], [ %125, %123 ]
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 %31
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %123, label %36

36:                                               ; preds = %29
  %37 = trunc nuw i64 %31 to i16
  %38 = trunc i64 %31 to i32
  %39 = and i32 %38, 65535
  %40 = tail call noundef range(i16 0, 16) i16 @llvm.ctlz.i16(i16 %37, i1 true)
  %41 = trunc nuw nsw i16 %40 to i8
  %42 = xor i8 %41, 15
  %43 = add i32 %38, 65535
  %44 = and i32 %43, %39
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %36
  %47 = zext nneg i8 %42 to i32
  %48 = shl nuw i32 65536, %47
  %49 = udiv i32 %48, %39
  %50 = trunc i32 %49 to i16
  %51 = mul i16 %50, %37
  %52 = add i16 %51, %37
  %53 = zext i16 %52 to i32
  %54 = lshr i32 %53, %47
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %46
  %57 = sub i16 0, %51
  %58 = shl i16 %50, 1
  %59 = shl i16 %57, 1
  %60 = icmp uge i16 %59, %37
  %61 = icmp slt i16 %57, 0
  %62 = or i1 %61, %60
  %63 = zext i1 %62 to i16
  %64 = or disjoint i16 %58, %63
  %65 = or disjoint i8 %42, 64
  br label %66

66:                                               ; preds = %56, %46
  %67 = phi i16 [ %64, %56 ], [ %50, %46 ]
  %68 = phi i8 [ %65, %56 ], [ %42, %46 ]
  %69 = add i16 %67, 1
  br label %70

70:                                               ; preds = %36, %66
  %71 = phi i16 [ %69, %66 ], [ 0, %36 ]
  %72 = phi i8 [ %68, %66 ], [ %42, %36 ]
  %73 = zext nneg i8 %72 to i24
  %74 = shl nuw nsw i24 %73, 16
  %75 = zext i16 %71 to i24
  %76 = or disjoint i24 %74, %75
  %77 = load ptr, ptr %11, align 8
  %78 = icmp eq ptr %30, %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  store i24 %76, ptr %30, align 1
  %80 = getelementptr inbounds nuw i8, ptr %30, i64 3
  store ptr %80, ptr %10, align 8
  br label %123

81:                                               ; preds = %70
  %82 = ptrtoint ptr %30 to i64
  %83 = ptrtoint ptr %32 to i64
  %84 = sub i64 %82, %83
  %85 = icmp eq i64 %84, 9223372036854775806
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  store ptr %32, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %87 unwind label %116

87:                                               ; preds = %86
  unreachable

88:                                               ; preds = %81
  %89 = sdiv exact i64 %84, 3
  %90 = tail call i64 @llvm.umax.i64(i64 %89, i64 1)
  %91 = add nsw i64 %90, %89
  %92 = icmp ult i64 %91, %89
  %93 = tail call i64 @llvm.umin.i64(i64 %91, i64 3074457345618258602)
  %94 = select i1 %92, i64 3074457345618258602, i64 %93
  %95 = icmp ne i64 %94, 0
  tail call void @llvm.assume(i1 %95)
  %96 = mul nuw nsw i64 %94, 3
  %97 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %96) #25
          to label %98 unwind label %114

98:                                               ; preds = %88
  %99 = getelementptr inbounds nuw i8, ptr %97, i64 %84
  store i24 %76, ptr %99, align 1
  %100 = icmp eq ptr %32, %30
  br i1 %100, label %107, label %101

101:                                              ; preds = %98, %101
  %102 = phi ptr [ %105, %101 ], [ %97, %98 ]
  %103 = phi ptr [ %104, %101 ], [ %32, %98 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %102, ptr noundef nonnull align 1 dereferenceable(3) %103, i64 3, i1 false), !alias.scope !13
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 3
  %105 = getelementptr inbounds nuw i8, ptr %102, i64 3
  %106 = icmp eq ptr %104, %30
  br i1 %106, label %107, label %101, !llvm.loop !17

107:                                              ; preds = %101, %98
  %108 = phi ptr [ %97, %98 ], [ %105, %101 ]
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 3
  %110 = icmp eq ptr %32, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %84) #23
  br label %112

112:                                              ; preds = %111, %107
  store ptr %109, ptr %10, align 8
  %113 = getelementptr inbounds nuw %"class.libdivide::divider", ptr %97, i64 %94
  store ptr %113, ptr %11, align 8
  br label %123

114:                                              ; preds = %88
  %115 = landingpad { ptr, i32 }
          cleanup
  store ptr %32, ptr %0, align 8
  br label %118

116:                                              ; preds = %86
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi { ptr, i32 } [ %115, %114 ], [ %117, %116 ]
  %120 = icmp eq ptr %32, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %84) #23
  br label %122

122:                                              ; preds = %118, %121
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  resume { ptr, i32 } %119

123:                                              ; preds = %79, %112, %29
  %124 = phi ptr [ %80, %79 ], [ %109, %112 ], [ %30, %29 ]
  %125 = phi ptr [ %32, %79 ], [ %97, %112 ], [ %32, %29 ]
  %126 = add nuw nsw i64 %31, 1
  %127 = icmp eq i64 %31, %3
  br i1 %127, label %128, label %29, !llvm.loop !18

128:                                              ; preds = %123, %7
  %129 = phi ptr [ null, %7 ], [ %125, %123 ]
  store ptr %129, ptr %0, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i16
  %9 = tail call i16 @llvm.umax.i16(i16 %8, i16 2)
  %10 = tail call noundef i64 @_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i16 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !19

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerItLNS0_9BranchingE1EEEtESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.8") align 8 %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = zext i16 %1 to i64
  %4 = add nuw nsw i64 %3, 1
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 1, i64 %4, i1 false)
  %6 = icmp ult i16 %1, 4
  br i1 %6, label %7, label %12

7:                                                ; preds = %25, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %8 = icmp ult i16 %1, 2
  br i1 %8, label %124, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %29

12:                                               ; preds = %2, %25
  %13 = phi i64 [ %27, %25 ], [ 4, %2 ]
  %14 = phi i64 [ %26, %25 ], [ 2, %2 ]
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  %18 = icmp ugt i64 %13, %3
  %19 = or i1 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %12, %20
  %21 = phi i64 [ %23, %20 ], [ %13, %12 ]
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  store i8 0, ptr %22, align 1
  %23 = add i64 %21, %14
  %24 = icmp ugt i64 %23, %3
  br i1 %24, label %25, label %20, !llvm.loop !20

25:                                               ; preds = %20, %12
  %26 = add i64 %14, 1
  %27 = mul i64 %26, %26
  %28 = icmp ugt i64 %27, %3
  br i1 %28, label %7, label %12, !llvm.loop !21

29:                                               ; preds = %9, %119
  %30 = phi ptr [ null, %9 ], [ %120, %119 ]
  %31 = phi i64 [ 2, %9 ], [ %122, %119 ]
  %32 = phi ptr [ null, %9 ], [ %121, %119 ]
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 %31
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %119, label %36

36:                                               ; preds = %29
  %37 = trunc nuw i64 %31 to i16
  %38 = trunc i64 %31 to i32
  %39 = and i32 %38, 65535
  %40 = tail call noundef range(i16 0, 16) i16 @llvm.ctlz.i16(i16 %37, i1 true)
  %41 = trunc nuw nsw i16 %40 to i8
  %42 = add i32 %38, 65535
  %43 = and i32 %42, %39
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = sub nsw i8 14, %41
  br label %65

47:                                               ; preds = %36
  %48 = xor i8 %41, 15
  %49 = zext nneg i8 %48 to i16
  %50 = shl nuw i16 1, %49
  %51 = zext i16 %50 to i32
  %52 = shl nuw i32 %51, 16
  %53 = udiv i32 %52, %39
  %54 = trunc i32 %53 to i16
  %55 = mul i16 %37, %54
  %56 = sub i16 0, %55
  %57 = shl i16 %54, 1
  %58 = shl i16 %56, 1
  %59 = icmp uge i16 %58, %37
  %60 = icmp slt i16 %56, 0
  %61 = or i1 %60, %59
  %62 = zext i1 %61 to i16
  %63 = or disjoint i16 %57, 1
  %64 = add i16 %63, %62
  br label %65

65:                                               ; preds = %47, %45
  %66 = phi i16 [ 0, %45 ], [ %64, %47 ]
  %67 = phi i8 [ %46, %45 ], [ %48, %47 ]
  %68 = zext i8 %67 to i24
  %69 = shl nuw i24 %68, 16
  %70 = zext i16 %66 to i24
  %71 = and i24 %69, 2031616
  %72 = or disjoint i24 %71, %70
  %73 = load ptr, ptr %11, align 8
  %74 = icmp eq ptr %30, %73
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  store i24 %72, ptr %30, align 1
  %76 = getelementptr inbounds nuw i8, ptr %30, i64 3
  store ptr %76, ptr %10, align 8
  br label %119

77:                                               ; preds = %65
  %78 = ptrtoint ptr %30 to i64
  %79 = ptrtoint ptr %32 to i64
  %80 = sub i64 %78, %79
  %81 = icmp eq i64 %80, 9223372036854775806
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  store ptr %32, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %83 unwind label %112

83:                                               ; preds = %82
  unreachable

84:                                               ; preds = %77
  %85 = sdiv exact i64 %80, 3
  %86 = tail call i64 @llvm.umax.i64(i64 %85, i64 1)
  %87 = add nsw i64 %86, %85
  %88 = icmp ult i64 %87, %85
  %89 = tail call i64 @llvm.umin.i64(i64 %87, i64 3074457345618258602)
  %90 = select i1 %88, i64 3074457345618258602, i64 %89
  %91 = icmp ne i64 %90, 0
  tail call void @llvm.assume(i1 %91)
  %92 = mul nuw nsw i64 %90, 3
  %93 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %92) #25
          to label %94 unwind label %110

94:                                               ; preds = %84
  %95 = getelementptr inbounds nuw i8, ptr %93, i64 %80
  store i24 %72, ptr %95, align 1
  %96 = icmp eq ptr %32, %30
  br i1 %96, label %103, label %97

97:                                               ; preds = %94, %97
  %98 = phi ptr [ %101, %97 ], [ %93, %94 ]
  %99 = phi ptr [ %100, %97 ], [ %32, %94 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %98, ptr noundef nonnull align 1 dereferenceable(3) %99, i64 3, i1 false), !alias.scope !22
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 3
  %101 = getelementptr inbounds nuw i8, ptr %98, i64 3
  %102 = icmp eq ptr %100, %30
  br i1 %102, label %103, label %97, !llvm.loop !26

103:                                              ; preds = %97, %94
  %104 = phi ptr [ %93, %94 ], [ %101, %97 ]
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 3
  %106 = icmp eq ptr %32, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %80) #23
  br label %108

108:                                              ; preds = %107, %103
  store ptr %105, ptr %10, align 8
  %109 = getelementptr inbounds nuw %"class.libdivide::divider.19", ptr %93, i64 %90
  store ptr %109, ptr %11, align 8
  br label %119

110:                                              ; preds = %84
  %111 = landingpad { ptr, i32 }
          cleanup
  store ptr %32, ptr %0, align 8
  br label %114

112:                                              ; preds = %82
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi { ptr, i32 } [ %111, %110 ], [ %113, %112 ]
  %116 = icmp eq ptr %32, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %80) #23
  br label %118

118:                                              ; preds = %114, %117
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  resume { ptr, i32 } %115

119:                                              ; preds = %75, %108, %29
  %120 = phi ptr [ %76, %75 ], [ %105, %108 ], [ %30, %29 ]
  %121 = phi ptr [ %32, %75 ], [ %93, %108 ], [ %32, %29 ]
  %122 = add nuw nsw i64 %31, 1
  %123 = icmp eq i64 %31, %3
  br i1 %123, label %124, label %29, !llvm.loop !27

124:                                              ; preds = %119, %7
  %125 = phi ptr [ null, %7 ], [ %121, %119 ]
  store ptr %125, ptr %0, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i16
  %9 = tail call i16 @llvm.umax.i16(i16 %8, i16 2)
  %10 = tail call noundef i64 @_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i16 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !28

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersItSt6vectorItSaItEEEmT_RKT0_(i16 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %9, %2
  %8 = phi i64 [ 0, %2 ], [ %15, %9 ]
  ret i64 %8

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %15, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %16, %9 ], [ %3, %2 ]
  %12 = load i16, ptr %11, align 2
  %13 = udiv i16 %0, %12
  %14 = zext i16 %13 to i64
  %15 = add i64 %10, %14
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 2
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %7, label %9
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i16 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = zext i16 %0 to i32
  br label %11

9:                                                ; preds = %37, %2
  %10 = phi i64 [ 0, %2 ], [ %41, %37 ]
  ret i64 %10

11:                                               ; preds = %7, %37
  %12 = phi i64 [ 0, %7 ], [ %41, %37 ]
  %13 = phi ptr [ %3, %7 ], [ %42, %37 ]
  %14 = load i16, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = zext nneg i8 %16 to i32
  %20 = lshr i32 %8, %19
  br label %37

21:                                               ; preds = %11
  %22 = zext i16 %14 to i32
  %23 = mul nuw i32 %22, %8
  %24 = lshr i32 %23, 16
  %25 = zext i8 %16 to i32
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = sub nsw i32 %8, %24
  %30 = lshr i32 %29, 1
  %31 = add nuw i32 %30, %24
  %32 = and i32 %31, 65535
  %33 = and i32 %25, 31
  %34 = lshr i32 %32, %33
  br label %37

35:                                               ; preds = %21
  %36 = lshr i32 %24, %25
  br label %37

37:                                               ; preds = %18, %28, %35
  %38 = phi i32 [ %20, %18 ], [ %34, %28 ], [ %36, %35 ]
  %39 = and i32 %38, 65535
  %40 = zext nneg i32 %39 to i64
  %41 = add i64 %12, %40
  %42 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %43 = icmp eq ptr %42, %5
  br i1 %43, label %9, label %11
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersItSt6vectorIN9libdivide7dividerItLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i16 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = zext i16 %0 to i32
  br label %11

9:                                                ; preds = %11, %2
  %10 = phi i64 [ 0, %2 ], [ %27, %11 ]
  ret i64 %10

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %27, %11 ]
  %13 = phi ptr [ %3, %7 ], [ %28, %11 ]
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = mul nuw i32 %15, %8
  %17 = lshr i32 %16, 16
  %18 = sub nsw i32 %8, %17
  %19 = lshr i32 %18, 1
  %20 = add nuw i32 %19, %17
  %21 = and i32 %20, 65535
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %23 = load i8, ptr %22, align 1
  %24 = zext nneg i8 %23 to i32
  %25 = lshr i32 %21, %24
  %26 = zext nneg i32 %25 to i64
  %27 = add i64 %12, %26
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %29 = icmp eq ptr %28, %5
  br i1 %29, label %9, label %11
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIssESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.23") align 8 %0, i16 noundef signext %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = sext i16 %1 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp slt i16 %1, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %10, i8 1, i64 %4, i1 false)
  %12 = ptrtoint ptr %11 to i64
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i64 [ %12, %9 ], [ 0, %7 ]
  %15 = phi ptr [ %10, %9 ], [ null, %7 ]
  %16 = icmp ult i16 %1, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %35, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %18 = icmp ult i16 %1, 2
  br i1 %18, label %96, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %39

22:                                               ; preds = %13, %35
  %23 = phi i64 [ %37, %35 ], [ 4, %13 ]
  %24 = phi i64 [ %36, %35 ], [ 2, %13 ]
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  %28 = icmp ugt i64 %23, %3
  %29 = or i1 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %22, %30
  %31 = phi i64 [ %33, %30 ], [ %23, %22 ]
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 %31
  store i8 0, ptr %32, align 1
  %33 = add i64 %31, %24
  %34 = icmp ugt i64 %33, %3
  br i1 %34, label %35, label %30, !llvm.loop !29

35:                                               ; preds = %30, %22
  %36 = add i64 %24, 1
  %37 = mul i64 %36, %36
  %38 = icmp ugt i64 %37, %3
  br i1 %38, label %17, label %22, !llvm.loop !30

39:                                               ; preds = %19, %90
  %40 = phi ptr [ null, %19 ], [ %91, %90 ]
  %41 = phi i64 [ 2, %19 ], [ %93, %90 ]
  %42 = phi ptr [ null, %19 ], [ %92, %90 ]
  %43 = getelementptr inbounds nuw i8, ptr %15, i64 %41
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %90, label %46

46:                                               ; preds = %39
  %47 = trunc i64 %41 to i16
  %48 = load ptr, ptr %21, align 8
  %49 = icmp eq ptr %40, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  store i16 %47, ptr %40, align 2
  %51 = getelementptr inbounds nuw i8, ptr %40, i64 2
  store ptr %51, ptr %20, align 8
  br label %90

52:                                               ; preds = %46
  %53 = ptrtoint ptr %40 to i64
  %54 = ptrtoint ptr %42 to i64
  %55 = sub i64 %53, %54
  %56 = icmp eq i64 %55, 9223372036854775806
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  store ptr %42, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %58 unwind label %81

58:                                               ; preds = %57
  unreachable

59:                                               ; preds = %52
  %60 = ashr exact i64 %55, 1
  %61 = tail call i64 @llvm.umax.i64(i64 %60, i64 1)
  %62 = add i64 %61, %60
  %63 = icmp ult i64 %62, %60
  %64 = tail call i64 @llvm.umin.i64(i64 %62, i64 4611686018427387903)
  %65 = select i1 %63, i64 4611686018427387903, i64 %64
  %66 = icmp ne i64 %65, 0
  tail call void @llvm.assume(i1 %66)
  %67 = shl nuw nsw i64 %65, 1
  %68 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %67) #25
          to label %69 unwind label %79

69:                                               ; preds = %59
  %70 = getelementptr inbounds i8, ptr %68, i64 %55
  store i16 %47, ptr %70, align 2
  %71 = icmp sgt i64 %55, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %68, ptr align 2 %42, i64 %55, i1 false)
  br label %73

73:                                               ; preds = %72, %69
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 2
  %75 = icmp eq ptr %42, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %55) #23
  br label %77

77:                                               ; preds = %76, %73
  store ptr %74, ptr %20, align 8
  %78 = getelementptr inbounds nuw i16, ptr %68, i64 %65
  store ptr %78, ptr %21, align 8
  br label %90

79:                                               ; preds = %59
  %80 = landingpad { ptr, i32 }
          cleanup
  store ptr %42, ptr %0, align 8
  br label %83

81:                                               ; preds = %57
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %80, %79 ], [ %82, %81 ]
  %85 = icmp eq ptr %42, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %55) #23
  br label %87

87:                                               ; preds = %83, %86
  %88 = ptrtoint ptr %15 to i64
  %89 = sub i64 %14, %88
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %89) #23
  resume { ptr, i32 } %84

90:                                               ; preds = %50, %77, %39
  %91 = phi ptr [ %51, %50 ], [ %74, %77 ], [ %40, %39 ]
  %92 = phi ptr [ %42, %50 ], [ %68, %77 ], [ %42, %39 ]
  %93 = add i64 %41, 1
  %94 = icmp ugt i64 %93, %3
  br i1 %94, label %95, label %39, !llvm.loop !31

95:                                               ; preds = %90
  store ptr %92, ptr %0, align 8
  br label %98

96:                                               ; preds = %17
  %97 = icmp eq ptr %15, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95, %96
  %99 = ptrtoint ptr %15 to i64
  %100 = sub i64 %14, %99
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %100) #23
  br label %101

101:                                              ; preds = %96, %98
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIsSt6vectorIsSaIsEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i16
  %9 = tail call i16 @llvm.smax.i16(i16 %8, i16 2)
  %10 = tail call noundef i64 @_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_(i16 noundef signext %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !32

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE0EEEsESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.28") align 8 %0, i16 noundef signext %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = sext i16 %1 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp slt i16 %1, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %10, i8 1, i64 %4, i1 false)
  %12 = ptrtoint ptr %11 to i64
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i64 [ %12, %9 ], [ 0, %7 ]
  %15 = phi ptr [ %10, %9 ], [ null, %7 ]
  %16 = icmp ult i16 %1, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %35, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %18 = icmp ult i16 %1, 2
  br i1 %18, label %158, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %39

22:                                               ; preds = %13, %35
  %23 = phi i64 [ %37, %35 ], [ 4, %13 ]
  %24 = phi i64 [ %36, %35 ], [ 2, %13 ]
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  %28 = icmp ugt i64 %23, %3
  %29 = or i1 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %22, %30
  %31 = phi i64 [ %33, %30 ], [ %23, %22 ]
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 %31
  store i8 0, ptr %32, align 1
  %33 = add i64 %31, %24
  %34 = icmp ugt i64 %33, %3
  br i1 %34, label %35, label %30, !llvm.loop !33

35:                                               ; preds = %30, %22
  %36 = add i64 %24, 1
  %37 = mul i64 %36, %36
  %38 = icmp ugt i64 %37, %3
  br i1 %38, label %17, label %22, !llvm.loop !34

39:                                               ; preds = %19, %153
  %40 = phi ptr [ null, %19 ], [ %154, %153 ]
  %41 = phi i64 [ 2, %19 ], [ %156, %153 ]
  %42 = phi ptr [ null, %19 ], [ %155, %153 ]
  %43 = getelementptr inbounds nuw i8, ptr %15, i64 %41
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %153, label %46

46:                                               ; preds = %39
  %47 = trunc i64 %41 to i16
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  store ptr %42, ptr %0, align 8
  %50 = load ptr, ptr @stderr, align 8
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.25, i32 noundef 1260, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi, ptr noundef nonnull @.str.26) #26
  tail call void @abort() #27
  unreachable

52:                                               ; preds = %46
  %53 = icmp slt i16 %47, 0
  %54 = tail call i16 @llvm.abs.i16(i16 %47, i1 false)
  %55 = tail call noundef range(i16 0, 16) i16 @llvm.ctlz.i16(i16 %54, i1 true)
  %56 = xor i16 %55, 15
  %57 = zext i16 %54 to i32
  %58 = add nuw nsw i32 %57, 65535
  %59 = and i32 %58, %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = lshr i16 %47, 8
  %63 = and i16 %62, 128
  %64 = or disjoint i16 %56, %63
  %65 = trunc nuw i16 %64 to i8
  br label %98

66:                                               ; preds = %52
  %67 = zext nneg i16 %56 to i32
  %68 = shl nuw nsw i32 32768, %67
  %69 = udiv i32 %68, %57
  %70 = trunc i32 %69 to i16
  %71 = mul i16 %54, %70
  %72 = add i16 %71, %54
  %73 = zext i16 %72 to i32
  %74 = lshr i32 %73, %67
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = trunc nuw nsw i16 %55 to i8
  %78 = sub nsw i8 14, %77
  br label %90

79:                                               ; preds = %66
  %80 = sub i16 0, %71
  %81 = shl i16 %70, 1
  %82 = shl i16 %80, 1
  %83 = icmp uge i16 %82, %54
  %84 = icmp slt i16 %80, 0
  %85 = or i1 %84, %83
  %86 = zext i1 %85 to i16
  %87 = or disjoint i16 %81, %86
  %88 = trunc nuw nsw i16 %56 to i8
  %89 = or disjoint i8 %88, 64
  br label %90

90:                                               ; preds = %79, %76
  %91 = phi i16 [ %87, %79 ], [ %70, %76 ]
  %92 = phi i8 [ %89, %79 ], [ %78, %76 ]
  %93 = add i16 %91, 1
  %94 = or i8 %92, -128
  %95 = xor i16 %91, -1
  %96 = select i1 %53, i8 %94, i8 %92
  %97 = select i1 %53, i16 %95, i16 %93
  br label %98

98:                                               ; preds = %90, %61
  %99 = phi i16 [ 0, %61 ], [ %97, %90 ]
  %100 = phi i8 [ %65, %61 ], [ %96, %90 ]
  %101 = zext i8 %100 to i24
  %102 = shl nuw i24 %101, 16
  %103 = zext i16 %99 to i24
  %104 = or disjoint i24 %102, %103
  %105 = load ptr, ptr %21, align 8
  %106 = icmp eq ptr %40, %105
  br i1 %106, label %109, label %107

107:                                              ; preds = %98
  store i24 %104, ptr %40, align 1
  %108 = getelementptr inbounds nuw i8, ptr %40, i64 3
  store ptr %108, ptr %20, align 8
  br label %153

109:                                              ; preds = %98
  %110 = ptrtoint ptr %40 to i64
  %111 = ptrtoint ptr %42 to i64
  %112 = sub i64 %110, %111
  %113 = icmp eq i64 %112, 9223372036854775806
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  store ptr %42, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %115 unwind label %144

115:                                              ; preds = %114
  unreachable

116:                                              ; preds = %109
  %117 = sdiv exact i64 %112, 3
  %118 = tail call i64 @llvm.umax.i64(i64 %117, i64 1)
  %119 = add nsw i64 %118, %117
  %120 = icmp ult i64 %119, %117
  %121 = tail call i64 @llvm.umin.i64(i64 %119, i64 3074457345618258602)
  %122 = select i1 %120, i64 3074457345618258602, i64 %121
  %123 = icmp ne i64 %122, 0
  tail call void @llvm.assume(i1 %123)
  %124 = mul nuw nsw i64 %122, 3
  %125 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %124) #25
          to label %126 unwind label %142

126:                                              ; preds = %116
  %127 = getelementptr inbounds nuw i8, ptr %125, i64 %112
  store i24 %104, ptr %127, align 1
  %128 = icmp eq ptr %42, %40
  br i1 %128, label %135, label %129

129:                                              ; preds = %126, %129
  %130 = phi ptr [ %133, %129 ], [ %125, %126 ]
  %131 = phi ptr [ %132, %129 ], [ %42, %126 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %130, ptr noundef nonnull align 1 dereferenceable(3) %131, i64 3, i1 false), !alias.scope !35
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 3
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 3
  %134 = icmp eq ptr %132, %40
  br i1 %134, label %135, label %129, !llvm.loop !39

135:                                              ; preds = %129, %126
  %136 = phi ptr [ %125, %126 ], [ %133, %129 ]
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 3
  %138 = icmp eq ptr %42, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %112) #23
  br label %140

140:                                              ; preds = %139, %135
  store ptr %137, ptr %20, align 8
  %141 = getelementptr inbounds nuw %"class.libdivide::divider.40", ptr %125, i64 %122
  store ptr %141, ptr %21, align 8
  br label %153

142:                                              ; preds = %116
  %143 = landingpad { ptr, i32 }
          cleanup
  store ptr %42, ptr %0, align 8
  br label %146

144:                                              ; preds = %114
  %145 = landingpad { ptr, i32 }
          cleanup
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi { ptr, i32 } [ %143, %142 ], [ %145, %144 ]
  %148 = icmp eq ptr %42, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %112) #23
  br label %150

150:                                              ; preds = %146, %149
  %151 = ptrtoint ptr %15 to i64
  %152 = sub i64 %14, %151
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %152) #23
  resume { ptr, i32 } %147

153:                                              ; preds = %107, %140, %39
  %154 = phi ptr [ %108, %107 ], [ %137, %140 ], [ %40, %39 ]
  %155 = phi ptr [ %42, %107 ], [ %125, %140 ], [ %42, %39 ]
  %156 = add i64 %41, 1
  %157 = icmp ugt i64 %156, %3
  br i1 %157, label %158, label %39, !llvm.loop !40

158:                                              ; preds = %153, %17
  %159 = phi ptr [ null, %17 ], [ %155, %153 ]
  store ptr %159, ptr %0, align 8
  %160 = icmp eq ptr %15, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = ptrtoint ptr %15 to i64
  %163 = sub i64 %14, %162
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %163) #23
  br label %164

164:                                              ; preds = %158, %161
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i16
  %9 = tail call i16 @llvm.smax.i16(i16 %8, i16 2)
  %10 = tail call noundef i64 @_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i16 noundef signext %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !41

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerIsLNS0_9BranchingE1EEEsESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.33") align 8 %0, i16 noundef signext %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = sext i16 %1 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp slt i16 %1, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %10, i8 1, i64 %4, i1 false)
  %12 = ptrtoint ptr %11 to i64
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i64 [ %12, %9 ], [ 0, %7 ]
  %15 = phi ptr [ %10, %9 ], [ null, %7 ]
  %16 = icmp ult i16 %1, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %35, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %18 = icmp ult i16 %1, 2
  br i1 %18, label %144, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %39

22:                                               ; preds = %13, %35
  %23 = phi i64 [ %37, %35 ], [ 4, %13 ]
  %24 = phi i64 [ %36, %35 ], [ 2, %13 ]
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  %28 = icmp ugt i64 %23, %3
  %29 = or i1 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %22, %30
  %31 = phi i64 [ %33, %30 ], [ %23, %22 ]
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 %31
  store i8 0, ptr %32, align 1
  %33 = add i64 %31, %24
  %34 = icmp ugt i64 %33, %3
  br i1 %34, label %35, label %30, !llvm.loop !42

35:                                               ; preds = %30, %22
  %36 = add i64 %24, 1
  %37 = mul i64 %36, %36
  %38 = icmp ugt i64 %37, %3
  br i1 %38, label %17, label %22, !llvm.loop !43

39:                                               ; preds = %19, %139
  %40 = phi ptr [ null, %19 ], [ %140, %139 ]
  %41 = phi i64 [ 2, %19 ], [ %142, %139 ]
  %42 = phi ptr [ null, %19 ], [ %141, %139 ]
  %43 = getelementptr inbounds nuw i8, ptr %15, i64 %41
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %139, label %46

46:                                               ; preds = %39
  %47 = trunc i64 %41 to i16
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  store ptr %42, ptr %0, align 8
  %50 = load ptr, ptr @stderr, align 8
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.25, i32 noundef 1260, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL26libdivide_internal_s16_genEsi, ptr noundef nonnull @.str.26) #26
  tail call void @abort() #27
  unreachable

52:                                               ; preds = %46
  %53 = tail call i16 @llvm.abs.i16(i16 %47, i1 false)
  %54 = tail call noundef range(i16 0, 16) i16 @llvm.ctlz.i16(i16 %53, i1 true)
  %55 = xor i16 %54, 15
  %56 = zext i16 %53 to i32
  %57 = add nuw nsw i32 %56, 65535
  %58 = and i32 %57, %56
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = lshr i16 %47, 8
  %62 = and i16 %61, 128
  %63 = or disjoint i16 %55, %62
  %64 = trunc nuw i16 %63 to i8
  br label %84

65:                                               ; preds = %52
  %66 = icmp slt i16 %47, 0
  %67 = zext nneg i16 %55 to i32
  %68 = shl nuw nsw i32 32768, %67
  %69 = udiv i32 %68, %56
  %70 = trunc i32 %69 to i16
  %71 = mul i16 %53, %70
  %72 = sub i16 0, %71
  %73 = shl i16 %70, 1
  %74 = shl i16 %72, 1
  %75 = icmp uge i16 %74, %53
  %76 = icmp slt i16 %72, 0
  %77 = or i1 %76, %75
  %78 = zext i1 %77 to i16
  %79 = trunc nuw nsw i16 %55 to i8
  %80 = or disjoint i16 %73, 1
  %81 = add i16 %80, %78
  %82 = select i1 %66, i8 -64, i8 64
  %83 = or disjoint i8 %82, %79
  br label %84

84:                                               ; preds = %60, %65
  %85 = phi i16 [ 0, %60 ], [ %81, %65 ]
  %86 = phi i8 [ %64, %60 ], [ %83, %65 ]
  %87 = zext i8 %86 to i24
  %88 = shl nuw i24 %87, 16
  %89 = zext i16 %85 to i24
  %90 = or disjoint i24 %88, %89
  %91 = load ptr, ptr %21, align 8
  %92 = icmp eq ptr %40, %91
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  store i24 %90, ptr %40, align 1
  %94 = getelementptr inbounds nuw i8, ptr %40, i64 3
  store ptr %94, ptr %20, align 8
  br label %139

95:                                               ; preds = %84
  %96 = ptrtoint ptr %40 to i64
  %97 = ptrtoint ptr %42 to i64
  %98 = sub i64 %96, %97
  %99 = icmp eq i64 %98, 9223372036854775806
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  store ptr %42, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %101 unwind label %130

101:                                              ; preds = %100
  unreachable

102:                                              ; preds = %95
  %103 = sdiv exact i64 %98, 3
  %104 = tail call i64 @llvm.umax.i64(i64 %103, i64 1)
  %105 = add nsw i64 %104, %103
  %106 = icmp ult i64 %105, %103
  %107 = tail call i64 @llvm.umin.i64(i64 %105, i64 3074457345618258602)
  %108 = select i1 %106, i64 3074457345618258602, i64 %107
  %109 = icmp ne i64 %108, 0
  tail call void @llvm.assume(i1 %109)
  %110 = mul nuw nsw i64 %108, 3
  %111 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %110) #25
          to label %112 unwind label %128

112:                                              ; preds = %102
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 %98
  store i24 %90, ptr %113, align 1
  %114 = icmp eq ptr %42, %40
  br i1 %114, label %121, label %115

115:                                              ; preds = %112, %115
  %116 = phi ptr [ %119, %115 ], [ %111, %112 ]
  %117 = phi ptr [ %118, %115 ], [ %42, %112 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %116, ptr noundef nonnull align 1 dereferenceable(3) %117, i64 3, i1 false), !alias.scope !44
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 3
  %119 = getelementptr inbounds nuw i8, ptr %116, i64 3
  %120 = icmp eq ptr %118, %40
  br i1 %120, label %121, label %115, !llvm.loop !48

121:                                              ; preds = %115, %112
  %122 = phi ptr [ %111, %112 ], [ %119, %115 ]
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 3
  %124 = icmp eq ptr %42, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %98) #23
  br label %126

126:                                              ; preds = %125, %121
  store ptr %123, ptr %20, align 8
  %127 = getelementptr inbounds nuw %"class.libdivide::divider.44", ptr %111, i64 %108
  store ptr %127, ptr %21, align 8
  br label %139

128:                                              ; preds = %102
  %129 = landingpad { ptr, i32 }
          cleanup
  store ptr %42, ptr %0, align 8
  br label %132

130:                                              ; preds = %100
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi { ptr, i32 } [ %129, %128 ], [ %131, %130 ]
  %134 = icmp eq ptr %42, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %98) #23
  br label %136

136:                                              ; preds = %132, %135
  %137 = ptrtoint ptr %15 to i64
  %138 = sub i64 %14, %137
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %138) #23
  resume { ptr, i32 } %133

139:                                              ; preds = %93, %126, %39
  %140 = phi ptr [ %94, %93 ], [ %123, %126 ], [ %40, %39 ]
  %141 = phi ptr [ %42, %93 ], [ %111, %126 ], [ %42, %39 ]
  %142 = add i64 %41, 1
  %143 = icmp ugt i64 %142, %3
  br i1 %143, label %144, label %39, !llvm.loop !49

144:                                              ; preds = %139, %17
  %145 = phi ptr [ null, %17 ], [ %141, %139 ]
  store ptr %145, ptr %0, align 8
  %146 = icmp eq ptr %15, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = ptrtoint ptr %15 to i64
  %149 = sub i64 %14, %148
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %149) #23
  br label %150

150:                                              ; preds = %144, %147
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i16
  %9 = tail call i16 @llvm.smax.i16(i16 %8, i16 2)
  %10 = tail call noundef i64 @_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i16 noundef signext %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !50

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIsSt6vectorIsSaIsEEEmT_RKT0_(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = sext i16 %0 to i32
  br label %11

9:                                                ; preds = %11, %2
  %10 = phi i64 [ 0, %2 ], [ %18, %11 ]
  ret i64 %10

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %18, %11 ]
  %13 = phi ptr [ %3, %7 ], [ %19, %11 ]
  %14 = load i16, ptr %13, align 2
  %15 = sext i16 %14 to i32
  %16 = sdiv i32 %8, %15
  %17 = sext i32 %16 to i64
  %18 = add i64 %12, %17
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %9, label %11
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = sext i16 %0 to i32
  %9 = zext i16 %0 to i32
  %10 = lshr i32 %8, 15
  br label %13

11:                                               ; preds = %54, %2
  %12 = phi i64 [ 0, %2 ], [ %59, %54 ]
  ret i64 %12

13:                                               ; preds = %7, %54
  %14 = phi i64 [ 0, %7 ], [ %59, %54 ]
  %15 = phi ptr [ %3, %7 ], [ %60, %54 ]
  %16 = load i16, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 2
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 31
  %20 = icmp eq i16 %16, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = zext nneg i8 %19 to i32
  %23 = shl nsw i32 -1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %10, %24
  %26 = trunc i32 %25 to i16
  %27 = add i16 %0, %26
  %28 = sext i16 %27 to i32
  %29 = ashr i32 %28, %22
  %30 = icmp slt i8 %18, 0
  %31 = select i1 %30, i32 65535, i32 0
  %32 = xor i32 %29, %31
  %33 = sub nsw i32 %32, %31
  br label %54

34:                                               ; preds = %13
  %35 = sext i16 %16 to i32
  %36 = mul nsw i32 %35, %8
  %37 = lshr i32 %36, 16
  %38 = and i8 %18, 64
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = ashr i8 %18, 7
  %42 = sext i8 %41 to i32
  %43 = xor i32 %42, %9
  %44 = sub nsw i32 %37, %42
  %45 = add nsw i32 %44, %43
  br label %46

46:                                               ; preds = %40, %34
  %47 = phi i32 [ %45, %40 ], [ %37, %34 ]
  %48 = zext nneg i8 %19 to i32
  %49 = shl i32 %47, 16
  %50 = ashr exact i32 %49, 16
  %51 = ashr i32 %50, %48
  %52 = lshr i32 %51, 31
  %53 = add nsw i32 %52, %51
  br label %54

54:                                               ; preds = %21, %46
  %55 = phi i32 [ %53, %46 ], [ %33, %21 ]
  %56 = zext i32 %55 to i64
  %57 = shl i64 %56, 48
  %58 = ashr exact i64 %57, 48
  %59 = add i64 %58, %14
  %60 = getelementptr inbounds nuw i8, ptr %15, i64 3
  %61 = icmp eq ptr %60, %5
  br i1 %61, label %11, label %13
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIsSt6vectorIN9libdivide7dividerIsLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = sext i16 %0 to i32
  br label %11

9:                                                ; preds = %11, %2
  %10 = phi i64 [ 0, %2 ], [ %41, %11 ]
  ret i64 %10

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %41, %11 ]
  %13 = phi ptr [ %3, %7 ], [ %42, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 31
  %17 = ashr i8 %15, 7
  %18 = load i16, ptr %13, align 1
  %19 = sext i16 %18 to i32
  %20 = mul nsw i32 %19, %8
  %21 = lshr i32 %20, 16
  %22 = trunc nuw i32 %21 to i16
  %23 = add i16 %0, %22
  %24 = icmp eq i16 %18, 0
  %25 = zext nneg i8 %16 to i32
  %26 = shl nuw i32 1, %25
  %27 = sext i1 %24 to i32
  %28 = add i32 %26, %27
  %29 = trunc i32 %28 to i16
  %30 = icmp slt i16 %23, 0
  %31 = select i1 %30, i16 %29, i16 0
  %32 = add i16 %31, %23
  %33 = sext i16 %32 to i32
  %34 = ashr i32 %33, %25
  %35 = sext i8 %17 to i32
  %36 = xor i32 %34, %35
  %37 = sub nsw i32 %36, %35
  %38 = zext i32 %37 to i64
  %39 = shl i64 %38, 48
  %40 = ashr exact i64 %39, 48
  %41 = add i64 %40, %12
  %42 = getelementptr inbounds nuw i8, ptr %13, i64 3
  %43 = icmp eq ptr %42, %5
  br i1 %43, label %9, label %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIjjESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.48") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = zext i32 %1 to i64
  %4 = add nuw nsw i64 %3, 1
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 1, i64 %4, i1 false)
  %6 = icmp ult i32 %1, 4
  br i1 %6, label %7, label %12

7:                                                ; preds = %25, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %8 = icmp ult i32 %1, 2
  br i1 %8, label %83, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %29

12:                                               ; preds = %2, %25
  %13 = phi i64 [ %27, %25 ], [ 4, %2 ]
  %14 = phi i64 [ %26, %25 ], [ 2, %2 ]
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  %18 = icmp ugt i64 %13, %3
  %19 = or i1 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %12, %20
  %21 = phi i64 [ %23, %20 ], [ %13, %12 ]
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  store i8 0, ptr %22, align 1
  %23 = add i64 %21, %14
  %24 = icmp ugt i64 %23, %3
  br i1 %24, label %25, label %20, !llvm.loop !51

25:                                               ; preds = %20, %12
  %26 = add i64 %14, 1
  %27 = mul i64 %26, %26
  %28 = icmp ugt i64 %27, %3
  br i1 %28, label %7, label %12, !llvm.loop !52

29:                                               ; preds = %9, %78
  %30 = phi ptr [ null, %9 ], [ %79, %78 ]
  %31 = phi i64 [ 2, %9 ], [ %81, %78 ]
  %32 = phi ptr [ null, %9 ], [ %80, %78 ]
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 %31
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %78, label %36

36:                                               ; preds = %29
  %37 = trunc nuw i64 %31 to i32
  %38 = load ptr, ptr %11, align 8
  %39 = icmp eq ptr %30, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  store i32 %37, ptr %30, align 4
  %41 = getelementptr inbounds nuw i8, ptr %30, i64 4
  store ptr %41, ptr %10, align 8
  br label %78

42:                                               ; preds = %36
  %43 = ptrtoint ptr %30 to i64
  %44 = ptrtoint ptr %32 to i64
  %45 = sub i64 %43, %44
  %46 = icmp eq i64 %45, 9223372036854775804
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  store ptr %32, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %48 unwind label %71

48:                                               ; preds = %47
  unreachable

49:                                               ; preds = %42
  %50 = ashr exact i64 %45, 2
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1)
  %52 = add nsw i64 %51, %50
  %53 = icmp ult i64 %52, %50
  %54 = tail call i64 @llvm.umin.i64(i64 %52, i64 2305843009213693951)
  %55 = select i1 %53, i64 2305843009213693951, i64 %54
  %56 = icmp ne i64 %55, 0
  tail call void @llvm.assume(i1 %56)
  %57 = shl nuw nsw i64 %55, 2
  %58 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %57) #25
          to label %59 unwind label %69

59:                                               ; preds = %49
  %60 = getelementptr inbounds i8, ptr %58, i64 %45
  store i32 %37, ptr %60, align 4
  %61 = icmp sgt i64 %45, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %58, ptr align 4 %32, i64 %45, i1 false)
  br label %63

63:                                               ; preds = %62, %59
  %64 = getelementptr inbounds nuw i8, ptr %60, i64 4
  %65 = icmp eq ptr %32, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %45) #23
  br label %67

67:                                               ; preds = %66, %63
  store ptr %64, ptr %10, align 8
  %68 = getelementptr inbounds nuw i32, ptr %58, i64 %55
  store ptr %68, ptr %11, align 8
  br label %78

69:                                               ; preds = %49
  %70 = landingpad { ptr, i32 }
          cleanup
  store ptr %32, ptr %0, align 8
  br label %73

71:                                               ; preds = %47
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %70, %69 ], [ %72, %71 ]
  %75 = icmp eq ptr %32, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %45) #23
  br label %77

77:                                               ; preds = %73, %76
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  resume { ptr, i32 } %74

78:                                               ; preds = %40, %67, %29
  %79 = phi ptr [ %41, %40 ], [ %64, %67 ], [ %30, %29 ]
  %80 = phi ptr [ %32, %40 ], [ %58, %67 ], [ %32, %29 ]
  %81 = add nuw nsw i64 %31, 1
  %82 = icmp eq i64 %31, %3
  br i1 %82, label %83, label %29, !llvm.loop !53

83:                                               ; preds = %78, %7
  %84 = phi ptr [ null, %7 ], [ %80, %78 ]
  store ptr %84, ptr %0, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIjSt6vectorIjSaIjEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i32
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 2)
  %10 = tail call noundef i64 @_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_(i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !54

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE0EEEjESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.53") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = zext i32 %1 to i64
  %4 = add nuw nsw i64 %3, 1
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 1, i64 %4, i1 false)
  %6 = icmp ult i32 %1, 4
  br i1 %6, label %7, label %12

7:                                                ; preds = %25, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %8 = icmp ult i32 %1, 2
  br i1 %8, label %125, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %29

12:                                               ; preds = %2, %25
  %13 = phi i64 [ %27, %25 ], [ 4, %2 ]
  %14 = phi i64 [ %26, %25 ], [ 2, %2 ]
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  %18 = icmp ugt i64 %13, %3
  %19 = or i1 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %12, %20
  %21 = phi i64 [ %23, %20 ], [ %13, %12 ]
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  store i8 0, ptr %22, align 1
  %23 = add i64 %21, %14
  %24 = icmp ugt i64 %23, %3
  br i1 %24, label %25, label %20, !llvm.loop !55

25:                                               ; preds = %20, %12
  %26 = add i64 %14, 1
  %27 = mul i64 %26, %26
  %28 = icmp ugt i64 %27, %3
  br i1 %28, label %7, label %12, !llvm.loop !56

29:                                               ; preds = %9, %120
  %30 = phi ptr [ null, %9 ], [ %121, %120 ]
  %31 = phi i64 [ 2, %9 ], [ %123, %120 ]
  %32 = phi ptr [ null, %9 ], [ %122, %120 ]
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 %31
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %120, label %36

36:                                               ; preds = %29
  %37 = trunc nuw i64 %31 to i32
  %38 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %37, i1 true)
  %39 = xor i32 %38, 31
  %40 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %37)
  %41 = icmp samesign ult i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = trunc nuw nsw i32 %39 to i8
  br label %67

44:                                               ; preds = %36
  %45 = shl nuw i32 1, %39
  %46 = tail call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %37, i32 0, i32 %45) #28, !srcloc !57
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = extractvalue { i32, i32 } %46, 1
  %49 = sub i32 %37, %48
  %50 = icmp ult i32 %49, %45
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = trunc nuw nsw i32 %39 to i8
  br label %63

53:                                               ; preds = %44
  %54 = shl i32 %47, 1
  %55 = shl i32 %48, 1
  %56 = icmp uge i32 %55, %37
  %57 = icmp slt i32 %48, 0
  %58 = or i1 %57, %56
  %59 = zext i1 %58 to i32
  %60 = or disjoint i32 %54, %59
  %61 = trunc nuw nsw i32 %39 to i8
  %62 = or disjoint i8 %61, 64
  br label %63

63:                                               ; preds = %53, %51
  %64 = phi i32 [ %60, %53 ], [ %47, %51 ]
  %65 = phi i8 [ %62, %53 ], [ %52, %51 ]
  %66 = add i32 %64, 1
  br label %67

67:                                               ; preds = %42, %63
  %68 = phi i32 [ 0, %42 ], [ %66, %63 ]
  %69 = phi i8 [ %43, %42 ], [ %65, %63 ]
  %70 = zext nneg i8 %69 to i40
  %71 = shl nuw nsw i40 %70, 32
  %72 = zext i32 %68 to i40
  %73 = or disjoint i40 %71, %72
  %74 = load ptr, ptr %11, align 8
  %75 = icmp eq ptr %30, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %67
  store i40 %73, ptr %30, align 1
  %77 = getelementptr inbounds nuw i8, ptr %30, i64 5
  store ptr %77, ptr %10, align 8
  br label %120

78:                                               ; preds = %67
  %79 = ptrtoint ptr %30 to i64
  %80 = ptrtoint ptr %32 to i64
  %81 = sub i64 %79, %80
  %82 = icmp eq i64 %81, 9223372036854775805
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  store ptr %32, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %84 unwind label %113

84:                                               ; preds = %83
  unreachable

85:                                               ; preds = %78
  %86 = sdiv exact i64 %81, 5
  %87 = tail call i64 @llvm.umax.i64(i64 %86, i64 1)
  %88 = add nsw i64 %87, %86
  %89 = icmp ult i64 %88, %86
  %90 = tail call i64 @llvm.umin.i64(i64 %88, i64 1844674407370955161)
  %91 = select i1 %89, i64 1844674407370955161, i64 %90
  %92 = icmp ne i64 %91, 0
  tail call void @llvm.assume(i1 %92)
  %93 = mul nuw nsw i64 %91, 5
  %94 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %93) #25
          to label %95 unwind label %111

95:                                               ; preds = %85
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 %81
  store i40 %73, ptr %96, align 1
  %97 = icmp eq ptr %32, %30
  br i1 %97, label %104, label %98

98:                                               ; preds = %95, %98
  %99 = phi ptr [ %102, %98 ], [ %94, %95 ]
  %100 = phi ptr [ %101, %98 ], [ %32, %95 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %99, ptr noundef nonnull align 1 dereferenceable(5) %100, i64 5, i1 false), !alias.scope !58
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 5
  %102 = getelementptr inbounds nuw i8, ptr %99, i64 5
  %103 = icmp eq ptr %101, %30
  br i1 %103, label %104, label %98, !llvm.loop !62

104:                                              ; preds = %98, %95
  %105 = phi ptr [ %94, %95 ], [ %102, %98 ]
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 5
  %107 = icmp eq ptr %32, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %81) #23
  br label %109

109:                                              ; preds = %108, %104
  store ptr %106, ptr %10, align 8
  %110 = getelementptr inbounds nuw %"class.libdivide::divider.65", ptr %94, i64 %91
  store ptr %110, ptr %11, align 8
  br label %120

111:                                              ; preds = %85
  %112 = landingpad { ptr, i32 }
          cleanup
  store ptr %32, ptr %0, align 8
  br label %115

113:                                              ; preds = %83
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi { ptr, i32 } [ %112, %111 ], [ %114, %113 ]
  %117 = icmp eq ptr %32, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %81) #23
  br label %119

119:                                              ; preds = %115, %118
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  resume { ptr, i32 } %116

120:                                              ; preds = %76, %109, %29
  %121 = phi ptr [ %77, %76 ], [ %106, %109 ], [ %30, %29 ]
  %122 = phi ptr [ %32, %76 ], [ %94, %109 ], [ %32, %29 ]
  %123 = add nuw nsw i64 %31, 1
  %124 = icmp eq i64 %31, %3
  br i1 %124, label %125, label %29, !llvm.loop !63

125:                                              ; preds = %120, %7
  %126 = phi ptr [ null, %7 ], [ %122, %120 ]
  store ptr %126, ptr %0, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i32
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 2)
  %10 = tail call noundef i64 @_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !64

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerIjLNS0_9BranchingE1EEEjESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.58") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = zext i32 %1 to i64
  %4 = add nuw nsw i64 %3, 1
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 1, i64 %4, i1 false)
  %6 = icmp ult i32 %1, 4
  br i1 %6, label %7, label %12

7:                                                ; preds = %25, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %8 = icmp ult i32 %1, 2
  br i1 %8, label %118, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %29

12:                                               ; preds = %2, %25
  %13 = phi i64 [ %27, %25 ], [ 4, %2 ]
  %14 = phi i64 [ %26, %25 ], [ 2, %2 ]
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  %18 = icmp ugt i64 %13, %3
  %19 = or i1 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %12, %20
  %21 = phi i64 [ %23, %20 ], [ %13, %12 ]
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 %21
  store i8 0, ptr %22, align 1
  %23 = add i64 %21, %14
  %24 = icmp ugt i64 %23, %3
  br i1 %24, label %25, label %20, !llvm.loop !65

25:                                               ; preds = %20, %12
  %26 = add i64 %14, 1
  %27 = mul i64 %26, %26
  %28 = icmp ugt i64 %27, %3
  br i1 %28, label %7, label %12, !llvm.loop !66

29:                                               ; preds = %9, %113
  %30 = phi ptr [ null, %9 ], [ %114, %113 ]
  %31 = phi i64 [ 2, %9 ], [ %116, %113 ]
  %32 = phi ptr [ null, %9 ], [ %115, %113 ]
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 %31
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %113, label %36

36:                                               ; preds = %29
  %37 = trunc nuw i64 %31 to i32
  %38 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %37, i1 true)
  %39 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %37)
  %40 = icmp samesign ult i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = trunc nuw nsw i32 %38 to i8
  %43 = sub nsw i8 30, %42
  br label %59

44:                                               ; preds = %36
  %45 = xor i32 %38, 31
  %46 = shl nuw i32 1, %45
  %47 = tail call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %37, i32 0, i32 %46) #28, !srcloc !57
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = extractvalue { i32, i32 } %47, 1
  %50 = shl i32 %48, 1
  %51 = shl i32 %49, 1
  %52 = icmp uge i32 %51, %37
  %53 = icmp slt i32 %49, 0
  %54 = or i1 %53, %52
  %55 = zext i1 %54 to i32
  %56 = trunc nuw nsw i32 %45 to i8
  %57 = or disjoint i32 %50, 1
  %58 = add i32 %57, %55
  br label %59

59:                                               ; preds = %44, %41
  %60 = phi i32 [ 0, %41 ], [ %58, %44 ]
  %61 = phi i8 [ %43, %41 ], [ %56, %44 ]
  %62 = zext i8 %61 to i40
  %63 = shl nuw i40 %62, 32
  %64 = zext i32 %60 to i40
  %65 = and i40 %63, 133143986176
  %66 = or disjoint i40 %65, %64
  %67 = load ptr, ptr %11, align 8
  %68 = icmp eq ptr %30, %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %59
  store i40 %66, ptr %30, align 1
  %70 = getelementptr inbounds nuw i8, ptr %30, i64 5
  store ptr %70, ptr %10, align 8
  br label %113

71:                                               ; preds = %59
  %72 = ptrtoint ptr %30 to i64
  %73 = ptrtoint ptr %32 to i64
  %74 = sub i64 %72, %73
  %75 = icmp eq i64 %74, 9223372036854775805
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  store ptr %32, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %77 unwind label %106

77:                                               ; preds = %76
  unreachable

78:                                               ; preds = %71
  %79 = sdiv exact i64 %74, 5
  %80 = tail call i64 @llvm.umax.i64(i64 %79, i64 1)
  %81 = add nsw i64 %80, %79
  %82 = icmp ult i64 %81, %79
  %83 = tail call i64 @llvm.umin.i64(i64 %81, i64 1844674407370955161)
  %84 = select i1 %82, i64 1844674407370955161, i64 %83
  %85 = icmp ne i64 %84, 0
  tail call void @llvm.assume(i1 %85)
  %86 = mul nuw nsw i64 %84, 5
  %87 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %86) #25
          to label %88 unwind label %104

88:                                               ; preds = %78
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 %74
  store i40 %66, ptr %89, align 1
  %90 = icmp eq ptr %32, %30
  br i1 %90, label %97, label %91

91:                                               ; preds = %88, %91
  %92 = phi ptr [ %95, %91 ], [ %87, %88 ]
  %93 = phi ptr [ %94, %91 ], [ %32, %88 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %92, ptr noundef nonnull align 1 dereferenceable(5) %93, i64 5, i1 false), !alias.scope !67
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 5
  %95 = getelementptr inbounds nuw i8, ptr %92, i64 5
  %96 = icmp eq ptr %94, %30
  br i1 %96, label %97, label %91, !llvm.loop !71

97:                                               ; preds = %91, %88
  %98 = phi ptr [ %87, %88 ], [ %95, %91 ]
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 5
  %100 = icmp eq ptr %32, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %74) #23
  br label %102

102:                                              ; preds = %101, %97
  store ptr %99, ptr %10, align 8
  %103 = getelementptr inbounds nuw %"class.libdivide::divider.69", ptr %87, i64 %84
  store ptr %103, ptr %11, align 8
  br label %113

104:                                              ; preds = %78
  %105 = landingpad { ptr, i32 }
          cleanup
  store ptr %32, ptr %0, align 8
  br label %108

106:                                              ; preds = %76
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi { ptr, i32 } [ %105, %104 ], [ %107, %106 ]
  %110 = icmp eq ptr %32, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void @_ZdlPvm(ptr noundef nonnull %32, i64 noundef %74) #23
  br label %112

112:                                              ; preds = %108, %111
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  resume { ptr, i32 } %109

113:                                              ; preds = %69, %102, %29
  %114 = phi ptr [ %70, %69 ], [ %99, %102 ], [ %30, %29 ]
  %115 = phi ptr [ %32, %69 ], [ %87, %102 ], [ %32, %29 ]
  %116 = add nuw nsw i64 %31, 1
  %117 = icmp eq i64 %31, %3
  br i1 %117, label %118, label %29, !llvm.loop !72

118:                                              ; preds = %113, %7
  %119 = phi ptr [ null, %7 ], [ %115, %113 ]
  store ptr %119, ptr %0, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %4) #23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i32
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 2)
  %10 = tail call noundef i64 @_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !73

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIjSt6vectorIjSaIjEEEmT_RKT0_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %9, %2
  %8 = phi i64 [ 0, %2 ], [ %15, %9 ]
  ret i64 %8

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %15, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %16, %9 ], [ %3, %2 ]
  %12 = load i32, ptr %11, align 4
  %13 = udiv i32 %0, %12
  %14 = zext i32 %13 to i64
  %15 = add i64 %10, %14
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %7, label %9
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %9, %2
  %8 = phi i64 [ 0, %2 ], [ %17, %9 ]
  ret i64 %8

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %17, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %18, %9 ], [ %3, %2 ]
  %12 = load i32, ptr %11, align 1
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %14 = load i8, ptr %13, align 1
  %15 = tail call noundef i32 @target_u32(i32 noundef %0, i32 noundef %12, i8 noundef zeroext %14)
  %16 = zext i32 %15 to i64
  %17 = add i64 %10, %16
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 5
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %7, label %9
}

declare i32 @target_u32(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIjSt6vectorIN9libdivide7dividerIjLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = zext i32 %0 to i64
  br label %11

9:                                                ; preds = %11, %2
  %10 = phi i64 [ 0, %2 ], [ %27, %11 ]
  ret i64 %10

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %27, %11 ]
  %13 = phi ptr [ %3, %7 ], [ %28, %11 ]
  %14 = load i32, ptr %13, align 1
  %15 = zext i32 %14 to i64
  %16 = mul nuw i64 %15, %8
  %17 = lshr i64 %16, 32
  %18 = trunc nuw i64 %17 to i32
  %19 = sub i32 %0, %18
  %20 = lshr i32 %19, 1
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %23 = load i8, ptr %22, align 1
  %24 = zext nneg i8 %23 to i32
  %25 = lshr i32 %21, %24
  %26 = zext i32 %25 to i64
  %27 = add i64 %12, %26
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %29 = icmp eq ptr %28, %5
  br i1 %29, label %9, label %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIiiESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.73") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = sext i32 %1 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp slt i32 %1, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %10, i8 1, i64 %4, i1 false)
  %12 = ptrtoint ptr %11 to i64
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i64 [ %12, %9 ], [ 0, %7 ]
  %15 = phi ptr [ %10, %9 ], [ null, %7 ]
  %16 = icmp ult i32 %1, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %35, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %18 = icmp ult i32 %1, 2
  br i1 %18, label %96, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %39

22:                                               ; preds = %13, %35
  %23 = phi i64 [ %37, %35 ], [ 4, %13 ]
  %24 = phi i64 [ %36, %35 ], [ 2, %13 ]
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  %28 = icmp ugt i64 %23, %3
  %29 = or i1 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %22, %30
  %31 = phi i64 [ %33, %30 ], [ %23, %22 ]
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 %31
  store i8 0, ptr %32, align 1
  %33 = add i64 %31, %24
  %34 = icmp ugt i64 %33, %3
  br i1 %34, label %35, label %30, !llvm.loop !74

35:                                               ; preds = %30, %22
  %36 = add i64 %24, 1
  %37 = mul i64 %36, %36
  %38 = icmp ugt i64 %37, %3
  br i1 %38, label %17, label %22, !llvm.loop !75

39:                                               ; preds = %19, %90
  %40 = phi ptr [ null, %19 ], [ %91, %90 ]
  %41 = phi i64 [ 2, %19 ], [ %93, %90 ]
  %42 = phi ptr [ null, %19 ], [ %92, %90 ]
  %43 = getelementptr inbounds nuw i8, ptr %15, i64 %41
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %90, label %46

46:                                               ; preds = %39
  %47 = trunc i64 %41 to i32
  %48 = load ptr, ptr %21, align 8
  %49 = icmp eq ptr %40, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  store i32 %47, ptr %40, align 4
  %51 = getelementptr inbounds nuw i8, ptr %40, i64 4
  store ptr %51, ptr %20, align 8
  br label %90

52:                                               ; preds = %46
  %53 = ptrtoint ptr %40 to i64
  %54 = ptrtoint ptr %42 to i64
  %55 = sub i64 %53, %54
  %56 = icmp eq i64 %55, 9223372036854775804
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  store ptr %42, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %58 unwind label %81

58:                                               ; preds = %57
  unreachable

59:                                               ; preds = %52
  %60 = ashr exact i64 %55, 2
  %61 = tail call i64 @llvm.umax.i64(i64 %60, i64 1)
  %62 = add nsw i64 %61, %60
  %63 = icmp ult i64 %62, %60
  %64 = tail call i64 @llvm.umin.i64(i64 %62, i64 2305843009213693951)
  %65 = select i1 %63, i64 2305843009213693951, i64 %64
  %66 = icmp ne i64 %65, 0
  tail call void @llvm.assume(i1 %66)
  %67 = shl nuw nsw i64 %65, 2
  %68 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %67) #25
          to label %69 unwind label %79

69:                                               ; preds = %59
  %70 = getelementptr inbounds i8, ptr %68, i64 %55
  store i32 %47, ptr %70, align 4
  %71 = icmp sgt i64 %55, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %68, ptr align 4 %42, i64 %55, i1 false)
  br label %73

73:                                               ; preds = %72, %69
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 4
  %75 = icmp eq ptr %42, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %55) #23
  br label %77

77:                                               ; preds = %76, %73
  store ptr %74, ptr %20, align 8
  %78 = getelementptr inbounds nuw i32, ptr %68, i64 %65
  store ptr %78, ptr %21, align 8
  br label %90

79:                                               ; preds = %59
  %80 = landingpad { ptr, i32 }
          cleanup
  store ptr %42, ptr %0, align 8
  br label %83

81:                                               ; preds = %57
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %80, %79 ], [ %82, %81 ]
  %85 = icmp eq ptr %42, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %55) #23
  br label %87

87:                                               ; preds = %83, %86
  %88 = ptrtoint ptr %15 to i64
  %89 = sub i64 %14, %88
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %89) #23
  resume { ptr, i32 } %84

90:                                               ; preds = %50, %77, %39
  %91 = phi ptr [ %51, %50 ], [ %74, %77 ], [ %40, %39 ]
  %92 = phi ptr [ %42, %50 ], [ %68, %77 ], [ %42, %39 ]
  %93 = add i64 %41, 1
  %94 = icmp ugt i64 %93, %3
  br i1 %94, label %95, label %39, !llvm.loop !76

95:                                               ; preds = %90
  store ptr %92, ptr %0, align 8
  br label %98

96:                                               ; preds = %17
  %97 = icmp eq ptr %15, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %95, %96
  %99 = ptrtoint ptr %15 to i64
  %100 = sub i64 %14, %99
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %100) #23
  br label %101

101:                                              ; preds = %96, %98
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIiSt6vectorIiSaIiEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i32
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 2)
  %10 = tail call noundef i64 @_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_(i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !77

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE0EEEiESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.78") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = sext i32 %1 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp slt i32 %1, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %10, i8 1, i64 %4, i1 false)
  %12 = ptrtoint ptr %11 to i64
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i64 [ %12, %9 ], [ 0, %7 ]
  %15 = phi ptr [ %10, %9 ], [ null, %7 ]
  %16 = icmp ult i32 %1, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %35, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %18 = icmp ult i32 %1, 2
  br i1 %18, label %153, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %39

22:                                               ; preds = %13, %35
  %23 = phi i64 [ %37, %35 ], [ 4, %13 ]
  %24 = phi i64 [ %36, %35 ], [ 2, %13 ]
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  %28 = icmp ugt i64 %23, %3
  %29 = or i1 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %22, %30
  %31 = phi i64 [ %33, %30 ], [ %23, %22 ]
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 %31
  store i8 0, ptr %32, align 1
  %33 = add i64 %31, %24
  %34 = icmp ugt i64 %33, %3
  br i1 %34, label %35, label %30, !llvm.loop !78

35:                                               ; preds = %30, %22
  %36 = add i64 %24, 1
  %37 = mul i64 %36, %36
  %38 = icmp ugt i64 %37, %3
  br i1 %38, label %17, label %22, !llvm.loop !79

39:                                               ; preds = %19, %148
  %40 = phi ptr [ null, %19 ], [ %149, %148 ]
  %41 = phi i64 [ 2, %19 ], [ %151, %148 ]
  %42 = phi ptr [ null, %19 ], [ %150, %148 ]
  %43 = getelementptr inbounds nuw i8, ptr %15, i64 %41
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %148, label %46

46:                                               ; preds = %39
  %47 = trunc i64 %41 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  store ptr %42, ptr %0, align 8
  %50 = load ptr, ptr @stderr, align 8
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.25, i32 noundef 1436, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii, ptr noundef nonnull @.str.26) #26
  tail call void @abort() #27
  unreachable

52:                                               ; preds = %46
  %53 = icmp slt i32 %47, 0
  %54 = tail call i32 @llvm.abs.i32(i32 %47, i1 false)
  %55 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %54, i1 true)
  %56 = xor i32 %55, 31
  %57 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %54)
  %58 = icmp samesign ult i32 %57, 2
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = lshr i32 %47, 24
  %61 = and i32 %60, 128
  %62 = or disjoint i32 %56, %61
  %63 = trunc nuw i32 %62 to i8
  br label %93

64:                                               ; preds = %52
  %65 = sub nsw i32 30, %55
  %66 = shl nuw nsw i32 1, %65
  %67 = tail call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %54, i32 0, i32 %66) #28, !srcloc !57
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = extractvalue { i32, i32 } %67, 1
  %70 = sub i32 %54, %69
  %71 = lshr i32 %70, %56
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = trunc nsw i32 %65 to i8
  br label %85

75:                                               ; preds = %64
  %76 = shl i32 %68, 1
  %77 = shl i32 %69, 1
  %78 = icmp uge i32 %77, %54
  %79 = icmp slt i32 %69, 0
  %80 = or i1 %79, %78
  %81 = zext i1 %80 to i32
  %82 = or disjoint i32 %76, %81
  %83 = trunc nuw nsw i32 %56 to i8
  %84 = or disjoint i8 %83, 64
  br label %85

85:                                               ; preds = %75, %73
  %86 = phi i32 [ %82, %75 ], [ %68, %73 ]
  %87 = phi i8 [ %84, %75 ], [ %74, %73 ]
  %88 = add i32 %86, 1
  %89 = or i8 %87, -128
  %90 = xor i32 %86, -1
  %91 = select i1 %53, i8 %89, i8 %87
  %92 = select i1 %53, i32 %90, i32 %88
  br label %93

93:                                               ; preds = %85, %59
  %94 = phi i32 [ 0, %59 ], [ %92, %85 ]
  %95 = phi i8 [ %63, %59 ], [ %91, %85 ]
  %96 = zext i8 %95 to i40
  %97 = shl nuw i40 %96, 32
  %98 = zext i32 %94 to i40
  %99 = or disjoint i40 %97, %98
  %100 = load ptr, ptr %21, align 8
  %101 = icmp eq ptr %40, %100
  br i1 %101, label %104, label %102

102:                                              ; preds = %93
  store i40 %99, ptr %40, align 1
  %103 = getelementptr inbounds nuw i8, ptr %40, i64 5
  store ptr %103, ptr %20, align 8
  br label %148

104:                                              ; preds = %93
  %105 = ptrtoint ptr %40 to i64
  %106 = ptrtoint ptr %42 to i64
  %107 = sub i64 %105, %106
  %108 = icmp eq i64 %107, 9223372036854775805
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  store ptr %42, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %110 unwind label %139

110:                                              ; preds = %109
  unreachable

111:                                              ; preds = %104
  %112 = sdiv exact i64 %107, 5
  %113 = tail call i64 @llvm.umax.i64(i64 %112, i64 1)
  %114 = add nsw i64 %113, %112
  %115 = icmp ult i64 %114, %112
  %116 = tail call i64 @llvm.umin.i64(i64 %114, i64 1844674407370955161)
  %117 = select i1 %115, i64 1844674407370955161, i64 %116
  %118 = icmp ne i64 %117, 0
  tail call void @llvm.assume(i1 %118)
  %119 = mul nuw nsw i64 %117, 5
  %120 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %119) #25
          to label %121 unwind label %137

121:                                              ; preds = %111
  %122 = getelementptr inbounds nuw i8, ptr %120, i64 %107
  store i40 %99, ptr %122, align 1
  %123 = icmp eq ptr %42, %40
  br i1 %123, label %130, label %124

124:                                              ; preds = %121, %124
  %125 = phi ptr [ %128, %124 ], [ %120, %121 ]
  %126 = phi ptr [ %127, %124 ], [ %42, %121 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %125, ptr noundef nonnull align 1 dereferenceable(5) %126, i64 5, i1 false), !alias.scope !80
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 5
  %128 = getelementptr inbounds nuw i8, ptr %125, i64 5
  %129 = icmp eq ptr %127, %40
  br i1 %129, label %130, label %124, !llvm.loop !84

130:                                              ; preds = %124, %121
  %131 = phi ptr [ %120, %121 ], [ %128, %124 ]
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 5
  %133 = icmp eq ptr %42, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %107) #23
  br label %135

135:                                              ; preds = %134, %130
  store ptr %132, ptr %20, align 8
  %136 = getelementptr inbounds nuw %"class.libdivide::divider.90", ptr %120, i64 %117
  store ptr %136, ptr %21, align 8
  br label %148

137:                                              ; preds = %111
  %138 = landingpad { ptr, i32 }
          cleanup
  store ptr %42, ptr %0, align 8
  br label %141

139:                                              ; preds = %109
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi { ptr, i32 } [ %138, %137 ], [ %140, %139 ]
  %143 = icmp eq ptr %42, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %107) #23
  br label %145

145:                                              ; preds = %141, %144
  %146 = ptrtoint ptr %15 to i64
  %147 = sub i64 %14, %146
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %147) #23
  resume { ptr, i32 } %142

148:                                              ; preds = %102, %135, %39
  %149 = phi ptr [ %103, %102 ], [ %132, %135 ], [ %40, %39 ]
  %150 = phi ptr [ %42, %102 ], [ %120, %135 ], [ %42, %39 ]
  %151 = add i64 %41, 1
  %152 = icmp ugt i64 %151, %3
  br i1 %152, label %153, label %39, !llvm.loop !85

153:                                              ; preds = %148, %17
  %154 = phi ptr [ null, %17 ], [ %150, %148 ]
  store ptr %154, ptr %0, align 8
  %155 = icmp eq ptr %15, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = ptrtoint ptr %15 to i64
  %158 = sub i64 %14, %157
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %158) #23
  br label %159

159:                                              ; preds = %153, %156
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i32
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 2)
  %10 = tail call noundef i64 @_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !86

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerIiLNS0_9BranchingE1EEEiESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.83") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = sext i32 %1 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp slt i32 %1, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #25
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %10, i8 1, i64 %4, i1 false)
  %12 = ptrtoint ptr %11 to i64
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i64 [ %12, %9 ], [ 0, %7 ]
  %15 = phi ptr [ %10, %9 ], [ null, %7 ]
  %16 = icmp ult i32 %1, 4
  br i1 %16, label %17, label %22

17:                                               ; preds = %35, %13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %18 = icmp ult i32 %1, 2
  br i1 %18, label %141, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %39

22:                                               ; preds = %13, %35
  %23 = phi i64 [ %37, %35 ], [ 4, %13 ]
  %24 = phi i64 [ %36, %35 ], [ 2, %13 ]
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  %28 = icmp ugt i64 %23, %3
  %29 = or i1 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %22, %30
  %31 = phi i64 [ %33, %30 ], [ %23, %22 ]
  %32 = getelementptr inbounds nuw i8, ptr %15, i64 %31
  store i8 0, ptr %32, align 1
  %33 = add i64 %31, %24
  %34 = icmp ugt i64 %33, %3
  br i1 %34, label %35, label %30, !llvm.loop !87

35:                                               ; preds = %30, %22
  %36 = add i64 %24, 1
  %37 = mul i64 %36, %36
  %38 = icmp ugt i64 %37, %3
  br i1 %38, label %17, label %22, !llvm.loop !88

39:                                               ; preds = %19, %136
  %40 = phi ptr [ null, %19 ], [ %137, %136 ]
  %41 = phi i64 [ 2, %19 ], [ %139, %136 ]
  %42 = phi ptr [ null, %19 ], [ %138, %136 ]
  %43 = getelementptr inbounds nuw i8, ptr %15, i64 %41
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %136, label %46

46:                                               ; preds = %39
  %47 = trunc i64 %41 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  store ptr %42, ptr %0, align 8
  %50 = load ptr, ptr @stderr, align 8
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.25, i32 noundef 1436, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL26libdivide_internal_s32_genEii, ptr noundef nonnull @.str.26) #26
  tail call void @abort() #27
  unreachable

52:                                               ; preds = %46
  %53 = tail call i32 @llvm.abs.i32(i32 %47, i1 false)
  %54 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %53, i1 true)
  %55 = xor i32 %54, 31
  %56 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %53)
  %57 = icmp samesign ult i32 %56, 2
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = lshr i32 %47, 24
  %60 = and i32 %59, 128
  %61 = or disjoint i32 %55, %60
  %62 = trunc nuw i32 %61 to i8
  br label %81

63:                                               ; preds = %52
  %64 = icmp slt i32 %47, 0
  %65 = sub nsw i32 30, %54
  %66 = shl nuw nsw i32 1, %65
  %67 = tail call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %53, i32 0, i32 %66) #28, !srcloc !57
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = extractvalue { i32, i32 } %67, 1
  %70 = shl i32 %68, 1
  %71 = shl i32 %69, 1
  %72 = icmp uge i32 %71, %53
  %73 = icmp slt i32 %69, 0
  %74 = or i1 %73, %72
  %75 = zext i1 %74 to i32
  %76 = trunc nuw nsw i32 %55 to i8
  %77 = or disjoint i32 %70, 1
  %78 = add i32 %77, %75
  %79 = select i1 %64, i8 -64, i8 64
  %80 = or disjoint i8 %79, %76
  br label %81

81:                                               ; preds = %58, %63
  %82 = phi i32 [ 0, %58 ], [ %78, %63 ]
  %83 = phi i8 [ %62, %58 ], [ %80, %63 ]
  %84 = zext i8 %83 to i40
  %85 = shl nuw i40 %84, 32
  %86 = zext i32 %82 to i40
  %87 = or disjoint i40 %85, %86
  %88 = load ptr, ptr %21, align 8
  %89 = icmp eq ptr %40, %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  store i40 %87, ptr %40, align 1
  %91 = getelementptr inbounds nuw i8, ptr %40, i64 5
  store ptr %91, ptr %20, align 8
  br label %136

92:                                               ; preds = %81
  %93 = ptrtoint ptr %40 to i64
  %94 = ptrtoint ptr %42 to i64
  %95 = sub i64 %93, %94
  %96 = icmp eq i64 %95, 9223372036854775805
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  store ptr %42, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %98 unwind label %127

98:                                               ; preds = %97
  unreachable

99:                                               ; preds = %92
  %100 = sdiv exact i64 %95, 5
  %101 = tail call i64 @llvm.umax.i64(i64 %100, i64 1)
  %102 = add nsw i64 %101, %100
  %103 = icmp ult i64 %102, %100
  %104 = tail call i64 @llvm.umin.i64(i64 %102, i64 1844674407370955161)
  %105 = select i1 %103, i64 1844674407370955161, i64 %104
  %106 = icmp ne i64 %105, 0
  tail call void @llvm.assume(i1 %106)
  %107 = mul nuw nsw i64 %105, 5
  %108 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %107) #25
          to label %109 unwind label %125

109:                                              ; preds = %99
  %110 = getelementptr inbounds nuw i8, ptr %108, i64 %95
  store i40 %87, ptr %110, align 1
  %111 = icmp eq ptr %42, %40
  br i1 %111, label %118, label %112

112:                                              ; preds = %109, %112
  %113 = phi ptr [ %116, %112 ], [ %108, %109 ]
  %114 = phi ptr [ %115, %112 ], [ %42, %109 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %113, ptr noundef nonnull align 1 dereferenceable(5) %114, i64 5, i1 false), !alias.scope !89
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 5
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 5
  %117 = icmp eq ptr %115, %40
  br i1 %117, label %118, label %112, !llvm.loop !93

118:                                              ; preds = %112, %109
  %119 = phi ptr [ %108, %109 ], [ %116, %112 ]
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 5
  %121 = icmp eq ptr %42, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %95) #23
  br label %123

123:                                              ; preds = %122, %118
  store ptr %120, ptr %20, align 8
  %124 = getelementptr inbounds nuw %"class.libdivide::divider.94", ptr %108, i64 %105
  store ptr %124, ptr %21, align 8
  br label %136

125:                                              ; preds = %99
  %126 = landingpad { ptr, i32 }
          cleanup
  store ptr %42, ptr %0, align 8
  br label %129

127:                                              ; preds = %97
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi { ptr, i32 } [ %126, %125 ], [ %128, %127 ]
  %131 = icmp eq ptr %42, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %95) #23
  br label %133

133:                                              ; preds = %129, %132
  %134 = ptrtoint ptr %15 to i64
  %135 = sub i64 %14, %134
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %135) #23
  resume { ptr, i32 } %130

136:                                              ; preds = %90, %123, %39
  %137 = phi ptr [ %91, %90 ], [ %120, %123 ], [ %40, %39 ]
  %138 = phi ptr [ %42, %90 ], [ %108, %123 ], [ %42, %39 ]
  %139 = add i64 %41, 1
  %140 = icmp ugt i64 %139, %3
  br i1 %140, label %141, label %39, !llvm.loop !94

141:                                              ; preds = %136, %17
  %142 = phi ptr [ null, %17 ], [ %138, %136 ]
  store ptr %142, ptr %0, align 8
  %143 = icmp eq ptr %15, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = ptrtoint ptr %15 to i64
  %146 = sub i64 %14, %145
  tail call void @_ZdlPvm(ptr noundef nonnull %15, i64 noundef %146) #23
  br label %147

147:                                              ; preds = %141, %144
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %12, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %8 = trunc i64 %6 to i32
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 2)
  %10 = tail call noundef i64 @_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %11 = add i64 %10, %7
  %12 = add i64 %6, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !95

14:                                               ; preds = %5, %2
  %15 = phi i64 [ 0, %2 ], [ %11, %5 ]
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %17 = sub nsw i64 %16, %3
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = insertvalue { double, i64 } poison, double %19, 0
  %21 = insertvalue { double, i64 } %20, i64 %15, 1
  ret { double, i64 } %21
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIiSt6vectorIiSaIiEEEmT_RKT0_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %9, %2
  %8 = phi i64 [ 0, %2 ], [ %15, %9 ]
  ret i64 %8

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %15, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %16, %9 ], [ %3, %2 ]
  %12 = load i32, ptr %11, align 4
  %13 = sdiv i32 %0, %12
  %14 = sext i32 %13 to i64
  %15 = add i64 %10, %14
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %7, label %9
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  %8 = sext i32 %0 to i64
  %9 = icmp slt i32 %0, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %7, %47
  %11 = phi i64 [ %50, %47 ], [ 0, %7 ]
  %12 = phi ptr [ %51, %47 ], [ %3, %7 ]
  %13 = load i32, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 31
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %10
  %19 = sext i32 %13 to i64
  %20 = mul nsw i64 %19, %8
  %21 = lshr i64 %20, 32
  %22 = trunc nuw i64 %21 to i32
  %23 = and i8 %15, 64
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = ashr i8 %15, 7
  %27 = sext i8 %26 to i32
  %28 = xor i32 %0, %27
  %29 = sub i32 %28, %27
  %30 = add i32 %29, %22
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi i32 [ %30, %25 ], [ %22, %18 ]
  %33 = zext nneg i8 %16 to i32
  %34 = ashr i32 %32, %33
  %35 = lshr i32 %34, 31
  %36 = add nsw i32 %35, %34
  br label %47

37:                                               ; preds = %10
  %38 = ashr i8 %15, 7
  %39 = sext i8 %38 to i32
  %40 = zext nneg i8 %16 to i32
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = add nsw i32 %0, %42
  %44 = ashr i32 %43, %40
  %45 = xor i32 %44, %39
  %46 = sub i32 %45, %39
  br label %47

47:                                               ; preds = %37, %31
  %48 = phi i32 [ %36, %31 ], [ %46, %37 ]
  %49 = sext i32 %48 to i64
  %50 = add i64 %11, %49
  %51 = getelementptr inbounds nuw i8, ptr %12, i64 5
  %52 = icmp eq ptr %51, %5
  br i1 %52, label %53, label %10

53:                                               ; preds = %89, %47, %2
  %54 = phi i64 [ 0, %2 ], [ %50, %47 ], [ %92, %89 ]
  ret i64 %54

55:                                               ; preds = %7, %89
  %56 = phi i64 [ %92, %89 ], [ 0, %7 ]
  %57 = phi ptr [ %93, %89 ], [ %3, %7 ]
  %58 = load i32, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %57, i64 4
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, 31
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = ashr i8 %60, 7
  %65 = sext i8 %64 to i32
  %66 = zext nneg i8 %61 to i32
  %67 = lshr i32 %0, %66
  %68 = xor i32 %67, %65
  %69 = sub i32 %68, %65
  br label %89

70:                                               ; preds = %55
  %71 = sext i32 %58 to i64
  %72 = mul nsw i64 %71, %8
  %73 = lshr i64 %72, 32
  %74 = trunc nuw i64 %73 to i32
  %75 = and i8 %60, 64
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %70
  %78 = ashr i8 %60, 7
  %79 = sext i8 %78 to i32
  %80 = xor i32 %0, %79
  %81 = sub i32 %80, %79
  %82 = add i32 %81, %74
  br label %83

83:                                               ; preds = %77, %70
  %84 = phi i32 [ %82, %77 ], [ %74, %70 ]
  %85 = zext nneg i8 %61 to i32
  %86 = ashr i32 %84, %85
  %87 = lshr i32 %86, 31
  %88 = add nsw i32 %87, %86
  br label %89

89:                                               ; preds = %63, %83
  %90 = phi i32 [ %88, %83 ], [ %69, %63 ]
  %91 = sext i32 %90 to i64
  %92 = add i64 %56, %91
  %93 = getelementptr inbounds nuw i8, ptr %57, i64 5
  %94 = icmp eq ptr %93, %5
  br i1 %94, label %53, label %55
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIiSt6vectorIN9libdivide7dividerIiLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = sext i32 %0 to i64
  br label %11

9:                                                ; preds = %11, %2
  %10 = phi i64 [ 0, %2 ], [ %37, %11 ]
  ret i64 %10

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %37, %11 ]
  %13 = phi ptr [ %3, %7 ], [ %38, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 31
  %17 = ashr i8 %15, 7
  %18 = sext i8 %17 to i32
  %19 = load i32, ptr %13, align 1
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, %8
  %22 = lshr i64 %21, 32
  %23 = trunc nuw i64 %22 to i32
  %24 = add nsw i32 %0, %23
  %25 = icmp eq i32 %19, 0
  %26 = sext i1 %25 to i32
  %27 = zext nneg i8 %16 to i32
  %28 = shl nuw i32 1, %27
  %29 = add i32 %28, %26
  %30 = icmp slt i32 %24, 0
  %31 = select i1 %30, i32 %29, i32 0
  %32 = add i32 %31, %24
  %33 = ashr i32 %32, %27
  %34 = xor i32 %33, %18
  %35 = sub nsw i32 %34, %18
  %36 = sext i32 %35 to i64
  %37 = add i64 %12, %36
  %38 = getelementptr inbounds nuw i8, ptr %13, i64 5
  %39 = icmp eq ptr %38, %5
  br i1 %39, label %9, label %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesImmESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.98") align 8 %0, i64 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = add i64 %1, 1
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

6:                                                ; preds = %2
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #25
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %9, i8 1, i64 %3, i1 false)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp samesign ult i64 %1, 4
  br i1 %12, label %16, label %13

13:                                               ; preds = %6, %8
  %14 = phi ptr [ %9, %8 ], [ null, %6 ]
  %15 = phi i64 [ %11, %8 ], [ 0, %6 ]
  br label %23

16:                                               ; preds = %36, %8
  %17 = phi ptr [ %9, %8 ], [ %14, %36 ]
  %18 = phi i64 [ %11, %8 ], [ %15, %36 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %19 = icmp ult i64 %1, 2
  br i1 %19, label %95, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %40

23:                                               ; preds = %13, %36
  %24 = phi i64 [ %38, %36 ], [ 4, %13 ]
  %25 = phi i64 [ %37, %36 ], [ 2, %13 ]
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = icmp ugt i64 %24, %1
  %30 = or i1 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %23, %31
  %32 = phi i64 [ %34, %31 ], [ %24, %23 ]
  %33 = getelementptr inbounds nuw i8, ptr %14, i64 %32
  store i8 0, ptr %33, align 1
  %34 = add i64 %32, %25
  %35 = icmp ugt i64 %34, %1
  br i1 %35, label %36, label %31, !llvm.loop !96

36:                                               ; preds = %31, %23
  %37 = add i64 %25, 1
  %38 = mul i64 %37, %37
  %39 = icmp ugt i64 %38, %1
  br i1 %39, label %16, label %23, !llvm.loop !97

40:                                               ; preds = %20, %90
  %41 = phi ptr [ null, %20 ], [ %91, %90 ]
  %42 = phi i64 [ 2, %20 ], [ %93, %90 ]
  %43 = phi ptr [ null, %20 ], [ %92, %90 ]
  %44 = getelementptr inbounds nuw i8, ptr %17, i64 %42
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %90, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %22, align 8
  %49 = icmp eq ptr %41, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  store i64 %42, ptr %41, align 8
  %51 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %51, ptr %21, align 8
  br label %90

52:                                               ; preds = %47
  %53 = ptrtoint ptr %41 to i64
  %54 = ptrtoint ptr %43 to i64
  %55 = sub i64 %53, %54
  %56 = icmp eq i64 %55, 9223372036854775800
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  store ptr %43, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %58 unwind label %81

58:                                               ; preds = %57
  unreachable

59:                                               ; preds = %52
  %60 = ashr exact i64 %55, 3
  %61 = tail call i64 @llvm.umax.i64(i64 %60, i64 1)
  %62 = add nsw i64 %61, %60
  %63 = icmp ult i64 %62, %60
  %64 = tail call i64 @llvm.umin.i64(i64 %62, i64 1152921504606846975)
  %65 = select i1 %63, i64 1152921504606846975, i64 %64
  %66 = icmp ne i64 %65, 0
  tail call void @llvm.assume(i1 %66)
  %67 = shl nuw nsw i64 %65, 3
  %68 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %67) #25
          to label %69 unwind label %79

69:                                               ; preds = %59
  %70 = getelementptr inbounds i8, ptr %68, i64 %55
  store i64 %42, ptr %70, align 8
  %71 = icmp sgt i64 %55, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %68, ptr align 8 %43, i64 %55, i1 false)
  br label %73

73:                                               ; preds = %72, %69
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %75 = icmp eq ptr %43, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %55) #23
  br label %77

77:                                               ; preds = %76, %73
  store ptr %74, ptr %21, align 8
  %78 = getelementptr inbounds nuw i64, ptr %68, i64 %65
  store ptr %78, ptr %22, align 8
  br label %90

79:                                               ; preds = %59
  %80 = landingpad { ptr, i32 }
          cleanup
  store ptr %43, ptr %0, align 8
  br label %83

81:                                               ; preds = %57
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %80, %79 ], [ %82, %81 ]
  %85 = icmp eq ptr %43, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %55) #23
  br label %87

87:                                               ; preds = %83, %86
  %88 = ptrtoint ptr %17 to i64
  %89 = sub i64 %18, %88
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %89) #23
  resume { ptr, i32 } %84

90:                                               ; preds = %50, %77, %40
  %91 = phi ptr [ %51, %50 ], [ %74, %77 ], [ %41, %40 ]
  %92 = phi ptr [ %43, %50 ], [ %68, %77 ], [ %43, %40 ]
  %93 = add i64 %42, 1
  %94 = icmp ugt i64 %93, %1
  br i1 %94, label %95, label %40, !llvm.loop !98

95:                                               ; preds = %90, %16
  %96 = phi ptr [ null, %16 ], [ %92, %90 ]
  store ptr %96, ptr %0, align 8
  %97 = ptrtoint ptr %17 to i64
  %98 = sub i64 %18, %97
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %98) #23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersImSt6vectorImSaImEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %11, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %8 = tail call i64 @llvm.umax.i64(i64 %6, i64 2)
  %9 = tail call noundef i64 @_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_(i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %10 = add i64 %9, %7
  %11 = add i64 %6, -1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !99

13:                                               ; preds = %5, %2
  %14 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %15 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %16 = sub nsw i64 %15, %3
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %17, 1.000000e+09
  %19 = insertvalue { double, i64 } poison, double %18, 0
  %20 = insertvalue { double, i64 } %19, i64 %14, 1
  ret { double, i64 } %20
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE0EEEmESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.103") align 8 %0, i64 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = add i64 %1, 1
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

6:                                                ; preds = %2
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #25
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %9, i8 1, i64 %3, i1 false)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp samesign ult i64 %1, 4
  br i1 %12, label %16, label %13

13:                                               ; preds = %6, %8
  %14 = phi ptr [ %9, %8 ], [ null, %6 ]
  %15 = phi i64 [ %11, %8 ], [ 0, %6 ]
  br label %23

16:                                               ; preds = %36, %8
  %17 = phi ptr [ %9, %8 ], [ %14, %36 ]
  %18 = phi i64 [ %11, %8 ], [ %15, %36 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %19 = icmp ult i64 %1, 2
  br i1 %19, label %144, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %40

23:                                               ; preds = %13, %36
  %24 = phi i64 [ %38, %36 ], [ 4, %13 ]
  %25 = phi i64 [ %37, %36 ], [ 2, %13 ]
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = icmp ugt i64 %24, %1
  %30 = or i1 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %23, %31
  %32 = phi i64 [ %34, %31 ], [ %24, %23 ]
  %33 = getelementptr inbounds nuw i8, ptr %14, i64 %32
  store i8 0, ptr %33, align 1
  %34 = add i64 %32, %25
  %35 = icmp ugt i64 %34, %1
  br i1 %35, label %36, label %31, !llvm.loop !100

36:                                               ; preds = %31, %23
  %37 = add i64 %25, 1
  %38 = mul i64 %37, %37
  %39 = icmp ugt i64 %38, %1
  br i1 %39, label %16, label %23, !llvm.loop !101

40:                                               ; preds = %20, %137
  %41 = phi ptr [ null, %20 ], [ %138, %137 ]
  %42 = phi i64 [ 2, %20 ], [ %140, %137 ]
  %43 = phi ptr [ null, %20 ], [ %139, %137 ]
  %44 = getelementptr inbounds nuw i8, ptr %17, i64 %42
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %137, label %47

47:                                               ; preds = %40
  %48 = icmp eq i64 %42, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  store ptr %43, ptr %0, align 8
  %50 = load ptr, ptr @stderr, align 8
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.25, i32 noundef 1097, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi, ptr noundef nonnull @.str.26) #26
  tail call void @abort() #27
  unreachable

52:                                               ; preds = %47
  %53 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %42, i1 true)
  %54 = trunc nuw nsw i64 %53 to i32
  %55 = xor i32 %54, 63
  %56 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %42)
  %57 = icmp samesign ult i64 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = trunc nuw nsw i32 %55 to i8
  br label %84

60:                                               ; preds = %52
  %61 = zext nneg i32 %55 to i64
  %62 = shl nuw i64 1, %61
  %63 = tail call { i64, i64 } asm "div $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %42, i64 0, i64 %62) #28, !srcloc !102
  %64 = extractvalue { i64, i64 } %63, 0
  %65 = extractvalue { i64, i64 } %63, 1
  %66 = sub i64 %42, %65
  %67 = icmp ult i64 %66, %62
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = trunc nuw nsw i32 %55 to i8
  br label %80

70:                                               ; preds = %60
  %71 = shl i64 %64, 1
  %72 = shl i64 %65, 1
  %73 = icmp uge i64 %72, %42
  %74 = icmp slt i64 %65, 0
  %75 = or i1 %74, %73
  %76 = zext i1 %75 to i64
  %77 = or disjoint i64 %71, %76
  %78 = trunc nuw nsw i32 %55 to i8
  %79 = or disjoint i8 %78, 64
  br label %80

80:                                               ; preds = %70, %68
  %81 = phi i8 [ %79, %70 ], [ %69, %68 ]
  %82 = phi i64 [ %77, %70 ], [ %64, %68 ]
  %83 = add i64 %82, 1
  br label %84

84:                                               ; preds = %58, %80
  %85 = phi i64 [ 0, %58 ], [ %83, %80 ]
  %86 = phi i8 [ %59, %58 ], [ %81, %80 ]
  %87 = load ptr, ptr %22, align 8
  %88 = icmp eq ptr %41, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  store i64 %85, ptr %41, align 1
  %90 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i8 %86, ptr %90, align 1
  %91 = getelementptr inbounds nuw i8, ptr %41, i64 9
  store ptr %91, ptr %21, align 8
  br label %137

92:                                               ; preds = %84
  %93 = ptrtoint ptr %41 to i64
  %94 = ptrtoint ptr %43 to i64
  %95 = sub i64 %93, %94
  %96 = icmp eq i64 %95, 9223372036854775800
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  store ptr %43, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %98 unwind label %128

98:                                               ; preds = %97
  unreachable

99:                                               ; preds = %92
  %100 = sdiv exact i64 %95, 9
  %101 = tail call i64 @llvm.umax.i64(i64 %100, i64 1)
  %102 = add nsw i64 %101, %100
  %103 = icmp ult i64 %102, %100
  %104 = tail call i64 @llvm.umin.i64(i64 %102, i64 1024819115206086200)
  %105 = select i1 %103, i64 1024819115206086200, i64 %104
  %106 = icmp ne i64 %105, 0
  tail call void @llvm.assume(i1 %106)
  %107 = mul nuw nsw i64 %105, 9
  %108 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %107) #25
          to label %109 unwind label %126

109:                                              ; preds = %99
  %110 = getelementptr inbounds nuw i8, ptr %108, i64 %95
  store i64 %85, ptr %110, align 1
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 8
  store i8 %86, ptr %111, align 1
  %112 = icmp eq ptr %43, %41
  br i1 %112, label %119, label %113

113:                                              ; preds = %109, %113
  %114 = phi ptr [ %117, %113 ], [ %108, %109 ]
  %115 = phi ptr [ %116, %113 ], [ %43, %109 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %114, ptr noundef nonnull align 1 dereferenceable(9) %115, i64 9, i1 false), !alias.scope !103
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 9
  %117 = getelementptr inbounds nuw i8, ptr %114, i64 9
  %118 = icmp eq ptr %116, %41
  br i1 %118, label %119, label %113, !llvm.loop !107

119:                                              ; preds = %113, %109
  %120 = phi ptr [ %108, %109 ], [ %117, %113 ]
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 9
  %122 = icmp eq ptr %43, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %95) #23
  br label %124

124:                                              ; preds = %123, %119
  store ptr %121, ptr %21, align 8
  %125 = getelementptr inbounds nuw %"class.libdivide::divider.115", ptr %108, i64 %105
  store ptr %125, ptr %22, align 8
  br label %137

126:                                              ; preds = %99
  %127 = landingpad { ptr, i32 }
          cleanup
  store ptr %43, ptr %0, align 8
  br label %130

128:                                              ; preds = %97
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi { ptr, i32 } [ %127, %126 ], [ %129, %128 ]
  %132 = icmp eq ptr %43, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %95) #23
  br label %134

134:                                              ; preds = %130, %133
  %135 = ptrtoint ptr %17 to i64
  %136 = sub i64 %18, %135
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %136) #23
  resume { ptr, i32 } %131

137:                                              ; preds = %89, %124, %40
  %138 = phi ptr [ %91, %89 ], [ %121, %124 ], [ %41, %40 ]
  %139 = phi ptr [ %43, %89 ], [ %108, %124 ], [ %43, %40 ]
  %140 = add i64 %42, 1
  %141 = icmp ugt i64 %140, %1
  br i1 %141, label %142, label %40, !llvm.loop !108

142:                                              ; preds = %137
  store ptr %139, ptr %0, align 8
  %143 = icmp eq ptr %17, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %16, %142
  %145 = ptrtoint ptr %17 to i64
  %146 = sub i64 %18, %145
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %146) #23
  br label %147

147:                                              ; preds = %142, %144
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %11, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %8 = tail call i64 @llvm.umax.i64(i64 %6, i64 2)
  %9 = tail call noundef i64 @_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %10 = add i64 %9, %7
  %11 = add i64 %6, -1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !109

13:                                               ; preds = %5, %2
  %14 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %15 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %16 = sub nsw i64 %15, %3
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %17, 1.000000e+09
  %19 = insertvalue { double, i64 } poison, double %18, 0
  %20 = insertvalue { double, i64 } %19, i64 %14, 1
  ret { double, i64 } %20
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerImLNS0_9BranchingE1EEEmESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.108") align 8 %0, i64 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = add i64 %1, 1
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

6:                                                ; preds = %2
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #25
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %9, i8 1, i64 %3, i1 false)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp samesign ult i64 %1, 4
  br i1 %12, label %16, label %13

13:                                               ; preds = %6, %8
  %14 = phi ptr [ %9, %8 ], [ null, %6 ]
  %15 = phi i64 [ %11, %8 ], [ 0, %6 ]
  br label %23

16:                                               ; preds = %36, %8
  %17 = phi ptr [ %9, %8 ], [ %14, %36 ]
  %18 = phi i64 [ %11, %8 ], [ %15, %36 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %19 = icmp ult i64 %1, 2
  br i1 %19, label %138, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %40

23:                                               ; preds = %13, %36
  %24 = phi i64 [ %38, %36 ], [ 4, %13 ]
  %25 = phi i64 [ %37, %36 ], [ 2, %13 ]
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = icmp ugt i64 %24, %1
  %30 = or i1 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %23, %31
  %32 = phi i64 [ %34, %31 ], [ %24, %23 ]
  %33 = getelementptr inbounds nuw i8, ptr %14, i64 %32
  store i8 0, ptr %33, align 1
  %34 = add i64 %32, %25
  %35 = icmp ugt i64 %34, %1
  br i1 %35, label %36, label %31, !llvm.loop !110

36:                                               ; preds = %31, %23
  %37 = add i64 %25, 1
  %38 = mul i64 %37, %37
  %39 = icmp ugt i64 %38, %1
  br i1 %39, label %16, label %23, !llvm.loop !111

40:                                               ; preds = %20, %131
  %41 = phi ptr [ null, %20 ], [ %132, %131 ]
  %42 = phi i64 [ 2, %20 ], [ %134, %131 ]
  %43 = phi ptr [ null, %20 ], [ %133, %131 ]
  %44 = getelementptr inbounds nuw i8, ptr %17, i64 %42
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %131, label %47

47:                                               ; preds = %40
  switch i64 %42, label %54 [
    i64 1, label %48
    i64 0, label %51
  ]

48:                                               ; preds = %47
  store ptr %43, ptr %0, align 8
  %49 = load ptr, ptr @stderr, align 8
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.25, i32 noundef 1153, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL28libdivide_u64_branchfree_genEm, ptr noundef nonnull @.str.27) #26
  tail call void @abort() #27
  unreachable

51:                                               ; preds = %47
  store ptr %43, ptr %0, align 8
  %52 = load ptr, ptr @stderr, align 8
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.25, i32 noundef 1097, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi, ptr noundef nonnull @.str.26) #26
  tail call void @abort() #27
  unreachable

54:                                               ; preds = %47
  %55 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %42, i1 true)
  %56 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %42)
  %57 = icmp samesign ult i64 %56, 2
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = trunc nuw nsw i64 %55 to i8
  %60 = sub nuw nsw i8 62, %59
  br label %78

61:                                               ; preds = %54
  %62 = trunc nuw nsw i64 %55 to i32
  %63 = xor i32 %62, 63
  %64 = zext nneg i32 %63 to i64
  %65 = shl nuw i64 1, %64
  %66 = tail call { i64, i64 } asm "div $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %42, i64 0, i64 %65) #28, !srcloc !102
  %67 = extractvalue { i64, i64 } %66, 0
  %68 = extractvalue { i64, i64 } %66, 1
  %69 = shl i64 %67, 1
  %70 = shl i64 %68, 1
  %71 = icmp uge i64 %70, %42
  %72 = icmp slt i64 %68, 0
  %73 = or i1 %72, %71
  %74 = zext i1 %73 to i64
  %75 = trunc nuw nsw i32 %63 to i8
  %76 = or disjoint i64 %69, 1
  %77 = add i64 %76, %74
  br label %78

78:                                               ; preds = %61, %58
  %79 = phi i64 [ 0, %58 ], [ %77, %61 ]
  %80 = phi i8 [ %60, %58 ], [ %75, %61 ]
  %81 = load ptr, ptr %22, align 8
  %82 = icmp eq ptr %41, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  store i64 %79, ptr %41, align 1
  %84 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i8 %80, ptr %84, align 1
  %85 = getelementptr inbounds nuw i8, ptr %41, i64 9
  store ptr %85, ptr %21, align 8
  br label %131

86:                                               ; preds = %78
  %87 = ptrtoint ptr %41 to i64
  %88 = ptrtoint ptr %43 to i64
  %89 = sub i64 %87, %88
  %90 = icmp eq i64 %89, 9223372036854775800
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  store ptr %43, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %92 unwind label %122

92:                                               ; preds = %91
  unreachable

93:                                               ; preds = %86
  %94 = sdiv exact i64 %89, 9
  %95 = tail call i64 @llvm.umax.i64(i64 %94, i64 1)
  %96 = add nsw i64 %95, %94
  %97 = icmp ult i64 %96, %94
  %98 = tail call i64 @llvm.umin.i64(i64 %96, i64 1024819115206086200)
  %99 = select i1 %97, i64 1024819115206086200, i64 %98
  %100 = icmp ne i64 %99, 0
  tail call void @llvm.assume(i1 %100)
  %101 = mul nuw nsw i64 %99, 9
  %102 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %101) #25
          to label %103 unwind label %120

103:                                              ; preds = %93
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 %89
  store i64 %79, ptr %104, align 1
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 8
  store i8 %80, ptr %105, align 1
  %106 = icmp eq ptr %43, %41
  br i1 %106, label %113, label %107

107:                                              ; preds = %103, %107
  %108 = phi ptr [ %111, %107 ], [ %102, %103 ]
  %109 = phi ptr [ %110, %107 ], [ %43, %103 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %108, ptr noundef nonnull align 1 dereferenceable(9) %109, i64 9, i1 false), !alias.scope !112
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 9
  %111 = getelementptr inbounds nuw i8, ptr %108, i64 9
  %112 = icmp eq ptr %110, %41
  br i1 %112, label %113, label %107, !llvm.loop !116

113:                                              ; preds = %107, %103
  %114 = phi ptr [ %102, %103 ], [ %111, %107 ]
  %115 = getelementptr inbounds nuw i8, ptr %114, i64 9
  %116 = icmp eq ptr %43, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %89) #23
  br label %118

118:                                              ; preds = %117, %113
  store ptr %115, ptr %21, align 8
  %119 = getelementptr inbounds nuw %"class.libdivide::divider.119", ptr %102, i64 %99
  store ptr %119, ptr %22, align 8
  br label %131

120:                                              ; preds = %93
  %121 = landingpad { ptr, i32 }
          cleanup
  store ptr %43, ptr %0, align 8
  br label %124

122:                                              ; preds = %91
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi { ptr, i32 } [ %121, %120 ], [ %123, %122 ]
  %126 = icmp eq ptr %43, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %89) #23
  br label %128

128:                                              ; preds = %124, %127
  %129 = ptrtoint ptr %17 to i64
  %130 = sub i64 %18, %129
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %130) #23
  resume { ptr, i32 } %125

131:                                              ; preds = %83, %118, %40
  %132 = phi ptr [ %85, %83 ], [ %115, %118 ], [ %41, %40 ]
  %133 = phi ptr [ %43, %83 ], [ %102, %118 ], [ %43, %40 ]
  %134 = add i64 %42, 1
  %135 = icmp ugt i64 %134, %1
  br i1 %135, label %136, label %40, !llvm.loop !117

136:                                              ; preds = %131
  store ptr %133, ptr %0, align 8
  %137 = icmp eq ptr %17, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %16, %136
  %139 = ptrtoint ptr %17 to i64
  %140 = sub i64 %18, %139
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %140) #23
  br label %141

141:                                              ; preds = %136, %138
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %11, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %8 = tail call i64 @llvm.umax.i64(i64 %6, i64 2)
  %9 = tail call noundef i64 @_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %10 = add i64 %9, %7
  %11 = add i64 %6, -1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !118

13:                                               ; preds = %5, %2
  %14 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %15 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %16 = sub nsw i64 %15, %3
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %17, 1.000000e+09
  %19 = insertvalue { double, i64 } poison, double %18, 0
  %20 = insertvalue { double, i64 } %19, i64 %14, 1
  ret { double, i64 } %20
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersImSt6vectorImSaImEEEmT_RKT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %9, %2
  %8 = phi i64 [ 0, %2 ], [ %14, %9 ]
  ret i64 %8

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %14, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %15, %9 ], [ %3, %2 ]
  %12 = load i64, ptr %11, align 8
  %13 = udiv i64 %0, %12
  %14 = add i64 %13, %10
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %7, label %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %9, %2
  %8 = phi i64 [ 0, %2 ], [ %16, %9 ]
  ret i64 %8

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %16, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %17, %9 ], [ %3, %2 ]
  %12 = load i64, ptr %11, align 1
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %14 = load i8, ptr %13, align 1
  %15 = tail call noundef i64 @target_u64(i64 noundef %0, i64 noundef %12, i8 noundef zeroext %14)
  %16 = add i64 %15, %10
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 9
  %18 = icmp eq ptr %17, %5
  br i1 %18, label %7, label %9
}

declare i64 @target_u64(i64 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersImSt6vectorIN9libdivide7dividerImLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = zext i64 %0 to i128
  br label %11

9:                                                ; preds = %11, %2
  %10 = phi i64 [ 0, %2 ], [ %26, %11 ]
  ret i64 %10

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %26, %11 ]
  %13 = phi ptr [ %3, %7 ], [ %27, %11 ]
  %14 = load i64, ptr %13, align 1
  %15 = zext i64 %14 to i128
  %16 = mul nuw i128 %15, %8
  %17 = lshr i128 %16, 64
  %18 = trunc nuw i128 %17 to i64
  %19 = sub i64 %0, %18
  %20 = lshr i64 %19, 1
  %21 = add i64 %20, %18
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %23 = load i8, ptr %22, align 1
  %24 = zext nneg i8 %23 to i64
  %25 = lshr i64 %21, %24
  %26 = add i64 %25, %12
  %27 = getelementptr inbounds nuw i8, ptr %13, i64 9
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %9, label %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIllESt6vectorIT_SaIS1_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.123") align 8 %0, i64 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = add i64 %1, 1
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

6:                                                ; preds = %2
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #25
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %9, i8 1, i64 %3, i1 false)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp samesign ult i64 %1, 4
  br i1 %12, label %16, label %13

13:                                               ; preds = %6, %8
  %14 = phi ptr [ %9, %8 ], [ null, %6 ]
  %15 = phi i64 [ %11, %8 ], [ 0, %6 ]
  br label %23

16:                                               ; preds = %36, %8
  %17 = phi ptr [ %9, %8 ], [ %14, %36 ]
  %18 = phi i64 [ %11, %8 ], [ %15, %36 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %19 = icmp ult i64 %1, 2
  br i1 %19, label %95, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %40

23:                                               ; preds = %13, %36
  %24 = phi i64 [ %38, %36 ], [ 4, %13 ]
  %25 = phi i64 [ %37, %36 ], [ 2, %13 ]
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = icmp ugt i64 %24, %1
  %30 = or i1 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %23, %31
  %32 = phi i64 [ %34, %31 ], [ %24, %23 ]
  %33 = getelementptr inbounds nuw i8, ptr %14, i64 %32
  store i8 0, ptr %33, align 1
  %34 = add i64 %32, %25
  %35 = icmp ugt i64 %34, %1
  br i1 %35, label %36, label %31, !llvm.loop !119

36:                                               ; preds = %31, %23
  %37 = add i64 %25, 1
  %38 = mul i64 %37, %37
  %39 = icmp ugt i64 %38, %1
  br i1 %39, label %16, label %23, !llvm.loop !120

40:                                               ; preds = %20, %90
  %41 = phi ptr [ null, %20 ], [ %91, %90 ]
  %42 = phi i64 [ 2, %20 ], [ %93, %90 ]
  %43 = phi ptr [ null, %20 ], [ %92, %90 ]
  %44 = getelementptr inbounds nuw i8, ptr %17, i64 %42
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %90, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %22, align 8
  %49 = icmp eq ptr %41, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  store i64 %42, ptr %41, align 8
  %51 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %51, ptr %21, align 8
  br label %90

52:                                               ; preds = %47
  %53 = ptrtoint ptr %41 to i64
  %54 = ptrtoint ptr %43 to i64
  %55 = sub i64 %53, %54
  %56 = icmp eq i64 %55, 9223372036854775800
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  store ptr %43, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %58 unwind label %81

58:                                               ; preds = %57
  unreachable

59:                                               ; preds = %52
  %60 = ashr exact i64 %55, 3
  %61 = tail call i64 @llvm.umax.i64(i64 %60, i64 1)
  %62 = add nsw i64 %61, %60
  %63 = icmp ult i64 %62, %60
  %64 = tail call i64 @llvm.umin.i64(i64 %62, i64 1152921504606846975)
  %65 = select i1 %63, i64 1152921504606846975, i64 %64
  %66 = icmp ne i64 %65, 0
  tail call void @llvm.assume(i1 %66)
  %67 = shl nuw nsw i64 %65, 3
  %68 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %67) #25
          to label %69 unwind label %79

69:                                               ; preds = %59
  %70 = getelementptr inbounds i8, ptr %68, i64 %55
  store i64 %42, ptr %70, align 8
  %71 = icmp sgt i64 %55, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %68, ptr align 8 %43, i64 %55, i1 false)
  br label %73

73:                                               ; preds = %72, %69
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %75 = icmp eq ptr %43, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %55) #23
  br label %77

77:                                               ; preds = %76, %73
  store ptr %74, ptr %21, align 8
  %78 = getelementptr inbounds nuw i64, ptr %68, i64 %65
  store ptr %78, ptr %22, align 8
  br label %90

79:                                               ; preds = %59
  %80 = landingpad { ptr, i32 }
          cleanup
  store ptr %43, ptr %0, align 8
  br label %83

81:                                               ; preds = %57
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %80, %79 ], [ %82, %81 ]
  %85 = icmp eq ptr %43, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %55) #23
  br label %87

87:                                               ; preds = %83, %86
  %88 = ptrtoint ptr %17 to i64
  %89 = sub i64 %18, %88
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %89) #23
  resume { ptr, i32 } %84

90:                                               ; preds = %50, %77, %40
  %91 = phi ptr [ %51, %50 ], [ %74, %77 ], [ %41, %40 ]
  %92 = phi ptr [ %43, %50 ], [ %68, %77 ], [ %43, %40 ]
  %93 = add i64 %42, 1
  %94 = icmp ugt i64 %93, %1
  br i1 %94, label %95, label %40, !llvm.loop !121

95:                                               ; preds = %90, %16
  %96 = phi ptr [ null, %16 ], [ %92, %90 ]
  store ptr %96, ptr %0, align 8
  %97 = ptrtoint ptr %17 to i64
  %98 = sub i64 %18, %97
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %98) #23
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIlSt6vectorIlSaIlEEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %11, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %8 = tail call i64 @llvm.smax.i64(i64 %6, i64 2)
  %9 = tail call noundef i64 @_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_(i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %10 = add i64 %9, %7
  %11 = add i64 %6, -1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !122

13:                                               ; preds = %5, %2
  %14 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %15 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %16 = sub nsw i64 %15, %3
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %17, 1.000000e+09
  %19 = insertvalue { double, i64 } poison, double %18, 0
  %20 = insertvalue { double, i64 } %19, i64 %14, 1
  ret { double, i64 } %20
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE0EEElESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.128") align 8 %0, i64 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = add i64 %1, 1
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

6:                                                ; preds = %2
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #25
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %9, i8 1, i64 %3, i1 false)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp samesign ult i64 %1, 4
  br i1 %12, label %16, label %13

13:                                               ; preds = %6, %8
  %14 = phi ptr [ %9, %8 ], [ null, %6 ]
  %15 = phi i64 [ %11, %8 ], [ 0, %6 ]
  br label %23

16:                                               ; preds = %36, %8
  %17 = phi ptr [ %9, %8 ], [ %14, %36 ]
  %18 = phi i64 [ %11, %8 ], [ %15, %36 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %19 = icmp ult i64 %1, 2
  br i1 %19, label %157, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %40

23:                                               ; preds = %13, %36
  %24 = phi i64 [ %38, %36 ], [ 4, %13 ]
  %25 = phi i64 [ %37, %36 ], [ 2, %13 ]
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = icmp ugt i64 %24, %1
  %30 = or i1 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %23, %31
  %32 = phi i64 [ %34, %31 ], [ %24, %23 ]
  %33 = getelementptr inbounds nuw i8, ptr %14, i64 %32
  store i8 0, ptr %33, align 1
  %34 = add i64 %32, %25
  %35 = icmp ugt i64 %34, %1
  br i1 %35, label %36, label %31, !llvm.loop !123

36:                                               ; preds = %31, %23
  %37 = add i64 %25, 1
  %38 = mul i64 %37, %37
  %39 = icmp ugt i64 %38, %1
  br i1 %39, label %16, label %23, !llvm.loop !124

40:                                               ; preds = %20, %150
  %41 = phi ptr [ null, %20 ], [ %151, %150 ]
  %42 = phi i64 [ 2, %20 ], [ %153, %150 ]
  %43 = phi ptr [ null, %20 ], [ %152, %150 ]
  %44 = getelementptr inbounds nuw i8, ptr %17, i64 %42
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %150, label %47

47:                                               ; preds = %40
  %48 = icmp eq i64 %42, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  store ptr %43, ptr %0, align 8
  %50 = load ptr, ptr @stderr, align 8
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.25, i32 noundef 1609, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli, ptr noundef nonnull @.str.26) #26
  tail call void @abort() #27
  unreachable

52:                                               ; preds = %47
  %53 = icmp slt i64 %42, 0
  %54 = tail call i64 @llvm.abs.i64(i64 %42, i1 false)
  %55 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %54, i1 true)
  %56 = trunc nuw nsw i64 %55 to i32
  %57 = xor i32 %56, 63
  %58 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %54)
  %59 = icmp samesign ult i64 %58, 2
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = lshr i64 %42, 56
  %62 = trunc nuw nsw i64 %61 to i32
  %63 = and i32 %62, 128
  %64 = or disjoint i32 %57, %63
  %65 = trunc nuw i32 %64 to i8
  br label %97

66:                                               ; preds = %52
  %67 = sub nsw i32 62, %56
  %68 = zext nneg i32 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = tail call { i64, i64 } asm "div $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %54, i64 0, i64 %69) #28, !srcloc !102
  %71 = extractvalue { i64, i64 } %70, 0
  %72 = extractvalue { i64, i64 } %70, 1
  %73 = sub i64 %54, %72
  %74 = zext nneg i32 %57 to i64
  %75 = lshr i64 %73, %74
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = trunc nsw i32 %67 to i8
  br label %89

79:                                               ; preds = %66
  %80 = shl i64 %71, 1
  %81 = shl i64 %72, 1
  %82 = icmp uge i64 %81, %54
  %83 = icmp slt i64 %72, 0
  %84 = or i1 %83, %82
  %85 = zext i1 %84 to i64
  %86 = or disjoint i64 %80, %85
  %87 = trunc nuw nsw i32 %57 to i8
  %88 = or disjoint i8 %87, 64
  br label %89

89:                                               ; preds = %79, %77
  %90 = phi i64 [ %86, %79 ], [ %71, %77 ]
  %91 = phi i8 [ %88, %79 ], [ %78, %77 ]
  %92 = add i64 %90, 1
  %93 = or i8 %91, -128
  %94 = xor i64 %90, -1
  %95 = select i1 %53, i8 %93, i8 %91
  %96 = select i1 %53, i64 %94, i64 %92
  br label %97

97:                                               ; preds = %89, %60
  %98 = phi i64 [ 0, %60 ], [ %96, %89 ]
  %99 = phi i8 [ %65, %60 ], [ %95, %89 ]
  %100 = load ptr, ptr %22, align 8
  %101 = icmp eq ptr %41, %100
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  store i64 %98, ptr %41, align 1
  %103 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i8 %99, ptr %103, align 1
  %104 = getelementptr inbounds nuw i8, ptr %41, i64 9
  store ptr %104, ptr %21, align 8
  br label %150

105:                                              ; preds = %97
  %106 = ptrtoint ptr %41 to i64
  %107 = ptrtoint ptr %43 to i64
  %108 = sub i64 %106, %107
  %109 = icmp eq i64 %108, 9223372036854775800
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  store ptr %43, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %111 unwind label %141

111:                                              ; preds = %110
  unreachable

112:                                              ; preds = %105
  %113 = sdiv exact i64 %108, 9
  %114 = tail call i64 @llvm.umax.i64(i64 %113, i64 1)
  %115 = add nsw i64 %114, %113
  %116 = icmp ult i64 %115, %113
  %117 = tail call i64 @llvm.umin.i64(i64 %115, i64 1024819115206086200)
  %118 = select i1 %116, i64 1024819115206086200, i64 %117
  %119 = icmp ne i64 %118, 0
  tail call void @llvm.assume(i1 %119)
  %120 = mul nuw nsw i64 %118, 9
  %121 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %120) #25
          to label %122 unwind label %139

122:                                              ; preds = %112
  %123 = getelementptr inbounds nuw i8, ptr %121, i64 %108
  store i64 %98, ptr %123, align 1
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 8
  store i8 %99, ptr %124, align 1
  %125 = icmp eq ptr %43, %41
  br i1 %125, label %132, label %126

126:                                              ; preds = %122, %126
  %127 = phi ptr [ %130, %126 ], [ %121, %122 ]
  %128 = phi ptr [ %129, %126 ], [ %43, %122 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %127, ptr noundef nonnull align 1 dereferenceable(9) %128, i64 9, i1 false), !alias.scope !125
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 9
  %130 = getelementptr inbounds nuw i8, ptr %127, i64 9
  %131 = icmp eq ptr %129, %41
  br i1 %131, label %132, label %126, !llvm.loop !129

132:                                              ; preds = %126, %122
  %133 = phi ptr [ %121, %122 ], [ %130, %126 ]
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 9
  %135 = icmp eq ptr %43, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %108) #23
  br label %137

137:                                              ; preds = %136, %132
  store ptr %134, ptr %21, align 8
  %138 = getelementptr inbounds nuw %"class.libdivide::divider.140", ptr %121, i64 %118
  store ptr %138, ptr %22, align 8
  br label %150

139:                                              ; preds = %112
  %140 = landingpad { ptr, i32 }
          cleanup
  store ptr %43, ptr %0, align 8
  br label %143

141:                                              ; preds = %110
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi { ptr, i32 } [ %140, %139 ], [ %142, %141 ]
  %145 = icmp eq ptr %43, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %108) #23
  br label %147

147:                                              ; preds = %143, %146
  %148 = ptrtoint ptr %17 to i64
  %149 = sub i64 %18, %148
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %149) #23
  resume { ptr, i32 } %144

150:                                              ; preds = %102, %137, %40
  %151 = phi ptr [ %104, %102 ], [ %134, %137 ], [ %41, %40 ]
  %152 = phi ptr [ %43, %102 ], [ %121, %137 ], [ %43, %40 ]
  %153 = add i64 %42, 1
  %154 = icmp ugt i64 %153, %1
  br i1 %154, label %155, label %40, !llvm.loop !130

155:                                              ; preds = %150
  store ptr %152, ptr %0, align 8
  %156 = icmp eq ptr %17, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %16, %155
  %158 = ptrtoint ptr %17 to i64
  %159 = sub i64 %18, %158
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %159) #23
  br label %160

160:                                              ; preds = %155, %157
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %11, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %8 = tail call i64 @llvm.smax.i64(i64 %6, i64 2)
  %9 = tail call noundef i64 @_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %10 = add i64 %9, %7
  %11 = add i64 %6, -1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !131

13:                                               ; preds = %5, %2
  %14 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %15 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %16 = sub nsw i64 %15, %3
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %17, 1.000000e+09
  %19 = insertvalue { double, i64 } poison, double %18, 0
  %20 = insertvalue { double, i64 } %19, i64 %14, 1
  ret { double, i64 } %20
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z10get_primesIN9libdivide7dividerIlLNS0_9BranchingE1EEElESt6vectorIT_SaIS5_EET0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.133") align 8 %0, i64 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
  %3 = add i64 %1, 1
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

6:                                                ; preds = %2
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #25
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %9, i8 1, i64 %3, i1 false)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp samesign ult i64 %1, 4
  br i1 %12, label %16, label %13

13:                                               ; preds = %6, %8
  %14 = phi ptr [ %9, %8 ], [ null, %6 ]
  %15 = phi i64 [ %11, %8 ], [ 0, %6 ]
  br label %23

16:                                               ; preds = %36, %8
  %17 = phi ptr [ %9, %8 ], [ %14, %36 ]
  %18 = phi i64 [ %11, %8 ], [ %15, %36 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %19 = icmp ult i64 %1, 2
  br i1 %19, label %144, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %40

23:                                               ; preds = %13, %36
  %24 = phi i64 [ %38, %36 ], [ 4, %13 ]
  %25 = phi i64 [ %37, %36 ], [ 2, %13 ]
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = icmp ugt i64 %24, %1
  %30 = or i1 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %23, %31
  %32 = phi i64 [ %34, %31 ], [ %24, %23 ]
  %33 = getelementptr inbounds nuw i8, ptr %14, i64 %32
  store i8 0, ptr %33, align 1
  %34 = add i64 %32, %25
  %35 = icmp ugt i64 %34, %1
  br i1 %35, label %36, label %31, !llvm.loop !132

36:                                               ; preds = %31, %23
  %37 = add i64 %25, 1
  %38 = mul i64 %37, %37
  %39 = icmp ugt i64 %38, %1
  br i1 %39, label %16, label %23, !llvm.loop !133

40:                                               ; preds = %20, %137
  %41 = phi ptr [ null, %20 ], [ %138, %137 ]
  %42 = phi i64 [ 2, %20 ], [ %140, %137 ]
  %43 = phi ptr [ null, %20 ], [ %139, %137 ]
  %44 = getelementptr inbounds nuw i8, ptr %17, i64 %42
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %137, label %47

47:                                               ; preds = %40
  %48 = icmp eq i64 %42, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  store ptr %43, ptr %0, align 8
  %50 = load ptr, ptr @stderr, align 8
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.25, i32 noundef 1609, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL26libdivide_internal_s64_genEli, ptr noundef nonnull @.str.26) #26
  tail call void @abort() #27
  unreachable

52:                                               ; preds = %47
  %53 = tail call i64 @llvm.abs.i64(i64 %42, i1 false)
  %54 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %53, i1 true)
  %55 = trunc nuw nsw i64 %54 to i32
  %56 = xor i32 %55, 63
  %57 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %53)
  %58 = icmp samesign ult i64 %57, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = lshr i64 %42, 56
  %61 = trunc nuw nsw i64 %60 to i32
  %62 = and i32 %61, 128
  %63 = or disjoint i32 %56, %62
  %64 = trunc nuw i32 %63 to i8
  br label %84

65:                                               ; preds = %52
  %66 = icmp slt i64 %42, 0
  %67 = sub nsw i64 62, %54
  %68 = and i64 %67, 4294967295
  %69 = shl nuw i64 1, %68
  %70 = tail call { i64, i64 } asm "div $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %53, i64 0, i64 %69) #28, !srcloc !102
  %71 = extractvalue { i64, i64 } %70, 0
  %72 = extractvalue { i64, i64 } %70, 1
  %73 = shl i64 %71, 1
  %74 = shl i64 %72, 1
  %75 = icmp uge i64 %74, %53
  %76 = icmp slt i64 %72, 0
  %77 = or i1 %76, %75
  %78 = zext i1 %77 to i64
  %79 = trunc nuw nsw i32 %56 to i8
  %80 = or disjoint i64 %73, 1
  %81 = add i64 %80, %78
  %82 = select i1 %66, i8 -64, i8 64
  %83 = or disjoint i8 %82, %79
  br label %84

84:                                               ; preds = %59, %65
  %85 = phi i64 [ 0, %59 ], [ %81, %65 ]
  %86 = phi i8 [ %64, %59 ], [ %83, %65 ]
  %87 = load ptr, ptr %22, align 8
  %88 = icmp eq ptr %41, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  store i64 %85, ptr %41, align 1
  %90 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i8 %86, ptr %90, align 1
  %91 = getelementptr inbounds nuw i8, ptr %41, i64 9
  store ptr %91, ptr %21, align 8
  br label %137

92:                                               ; preds = %84
  %93 = ptrtoint ptr %41 to i64
  %94 = ptrtoint ptr %43 to i64
  %95 = sub i64 %93, %94
  %96 = icmp eq i64 %95, 9223372036854775800
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  store ptr %43, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %98 unwind label %128

98:                                               ; preds = %97
  unreachable

99:                                               ; preds = %92
  %100 = sdiv exact i64 %95, 9
  %101 = tail call i64 @llvm.umax.i64(i64 %100, i64 1)
  %102 = add nsw i64 %101, %100
  %103 = icmp ult i64 %102, %100
  %104 = tail call i64 @llvm.umin.i64(i64 %102, i64 1024819115206086200)
  %105 = select i1 %103, i64 1024819115206086200, i64 %104
  %106 = icmp ne i64 %105, 0
  tail call void @llvm.assume(i1 %106)
  %107 = mul nuw nsw i64 %105, 9
  %108 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %107) #25
          to label %109 unwind label %126

109:                                              ; preds = %99
  %110 = getelementptr inbounds nuw i8, ptr %108, i64 %95
  store i64 %85, ptr %110, align 1
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 8
  store i8 %86, ptr %111, align 1
  %112 = icmp eq ptr %43, %41
  br i1 %112, label %119, label %113

113:                                              ; preds = %109, %113
  %114 = phi ptr [ %117, %113 ], [ %108, %109 ]
  %115 = phi ptr [ %116, %113 ], [ %43, %109 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %114, ptr noundef nonnull align 1 dereferenceable(9) %115, i64 9, i1 false), !alias.scope !134
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 9
  %117 = getelementptr inbounds nuw i8, ptr %114, i64 9
  %118 = icmp eq ptr %116, %41
  br i1 %118, label %119, label %113, !llvm.loop !138

119:                                              ; preds = %113, %109
  %120 = phi ptr [ %108, %109 ], [ %117, %113 ]
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 9
  %122 = icmp eq ptr %43, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %95) #23
  br label %124

124:                                              ; preds = %123, %119
  store ptr %121, ptr %21, align 8
  %125 = getelementptr inbounds nuw %"class.libdivide::divider.144", ptr %108, i64 %105
  store ptr %125, ptr %22, align 8
  br label %137

126:                                              ; preds = %99
  %127 = landingpad { ptr, i32 }
          cleanup
  store ptr %43, ptr %0, align 8
  br label %130

128:                                              ; preds = %97
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi { ptr, i32 } [ %127, %126 ], [ %129, %128 ]
  %132 = icmp eq ptr %43, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  tail call void @_ZdlPvm(ptr noundef nonnull %43, i64 noundef %95) #23
  br label %134

134:                                              ; preds = %130, %133
  %135 = ptrtoint ptr %17 to i64
  %136 = sub i64 %18, %135
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %136) #23
  resume { ptr, i32 } %131

137:                                              ; preds = %89, %124, %40
  %138 = phi ptr [ %91, %89 ], [ %121, %124 ], [ %41, %40 ]
  %139 = phi ptr [ %43, %89 ], [ %108, %124 ], [ %43, %40 ]
  %140 = add i64 %42, 1
  %141 = icmp ugt i64 %140, %1
  br i1 %141, label %142, label %40, !llvm.loop !139

142:                                              ; preds = %137
  store ptr %139, ptr %0, align 8
  %143 = icmp eq ptr %17, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %16, %142
  %145 = ptrtoint ptr %17 to i64
  %146 = sub i64 %18, %145
  tail call void @_ZdlPvm(ptr noundef nonnull %17, i64 noundef %146) #23
  br label %147

147:                                              ; preds = %142, %144
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local { double, i64 } @_Z22benchmark_sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEE8result_tRKT0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat {
  %3 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %11, %5 ], [ %1, %2 ]
  %7 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %8 = tail call i64 @llvm.smax.i64(i64 %6, i64 2)
  %9 = tail call noundef i64 @_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %10 = add i64 %9, %7
  %11 = add i64 %6, -1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !140

13:                                               ; preds = %5, %2
  %14 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %15 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #23
  %16 = sub nsw i64 %15, %3
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %17, 1.000000e+09
  %19 = insertvalue { double, i64 } poison, double %18, 0
  %20 = insertvalue { double, i64 } %19, i64 %14, 1
  ret { double, i64 } %20
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIlSt6vectorIlSaIlEEEmT_RKT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %9, %2
  %8 = phi i64 [ 0, %2 ], [ %14, %9 ]
  ret i64 %8

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %14, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %15, %9 ], [ %3, %2 ]
  %12 = load i64, ptr %11, align 8
  %13 = sdiv i64 %0, %12
  %14 = add i64 %13, %10
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %7, label %9
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE0EEESaIS4_EEEmT_RKT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %52, label %7

7:                                                ; preds = %2
  %8 = sext i64 %0 to i128
  %9 = icmp slt i64 %0, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %7, %47
  %11 = phi i64 [ %49, %47 ], [ 0, %7 ]
  %12 = phi ptr [ %50, %47 ], [ %3, %7 ]
  %13 = load i64, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 63
  %17 = icmp eq i64 %13, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %10
  %19 = sext i64 %13 to i128
  %20 = mul nsw i128 %19, %8
  %21 = lshr i128 %20, 64
  %22 = trunc nuw i128 %21 to i64
  %23 = and i8 %15, 64
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = ashr i8 %15, 7
  %27 = sext i8 %26 to i64
  %28 = xor i64 %0, %27
  %29 = sub i64 %28, %27
  %30 = add i64 %29, %22
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi i64 [ %30, %25 ], [ %22, %18 ]
  %33 = zext nneg i8 %16 to i64
  %34 = ashr i64 %32, %33
  %35 = lshr i64 %34, 63
  %36 = add nsw i64 %35, %34
  br label %47

37:                                               ; preds = %10
  %38 = zext nneg i8 %16 to i64
  %39 = shl nsw i64 -1, %38
  %40 = xor i64 %39, -1
  %41 = add nsw i64 %0, %40
  %42 = ashr i64 %41, %38
  %43 = ashr i8 %15, 7
  %44 = sext i8 %43 to i64
  %45 = xor i64 %42, %44
  %46 = sub nsw i64 %45, %44
  br label %47

47:                                               ; preds = %37, %31
  %48 = phi i64 [ %36, %31 ], [ %46, %37 ]
  %49 = add i64 %48, %11
  %50 = getelementptr inbounds nuw i8, ptr %12, i64 9
  %51 = icmp eq ptr %50, %5
  br i1 %51, label %52, label %10

52:                                               ; preds = %88, %47, %2
  %53 = phi i64 [ 0, %2 ], [ %49, %47 ], [ %90, %88 ]
  ret i64 %53

54:                                               ; preds = %7, %88
  %55 = phi i64 [ %90, %88 ], [ 0, %7 ]
  %56 = phi ptr [ %91, %88 ], [ %3, %7 ]
  %57 = load i64, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %56, i64 8
  %59 = load i8, ptr %58, align 1
  %60 = and i8 %59, 63
  %61 = icmp eq i64 %57, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = zext nneg i8 %60 to i64
  %64 = lshr i64 %0, %63
  %65 = ashr i8 %59, 7
  %66 = sext i8 %65 to i64
  %67 = xor i64 %64, %66
  %68 = sub nsw i64 %67, %66
  br label %88

69:                                               ; preds = %54
  %70 = sext i64 %57 to i128
  %71 = mul nsw i128 %70, %8
  %72 = lshr i128 %71, 64
  %73 = trunc nuw i128 %72 to i64
  %74 = and i8 %59, 64
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %69
  %77 = ashr i8 %59, 7
  %78 = sext i8 %77 to i64
  %79 = xor i64 %0, %78
  %80 = sub i64 %79, %78
  %81 = add i64 %80, %73
  br label %82

82:                                               ; preds = %76, %69
  %83 = phi i64 [ %81, %76 ], [ %73, %69 ]
  %84 = zext nneg i8 %60 to i64
  %85 = ashr i64 %83, %84
  %86 = lshr i64 %85, 63
  %87 = add nsw i64 %86, %85
  br label %88

88:                                               ; preds = %62, %82
  %89 = phi i64 [ %87, %82 ], [ %68, %62 ]
  %90 = add i64 %89, %55
  %91 = getelementptr inbounds nuw i8, ptr %56, i64 9
  %92 = icmp eq ptr %91, %5
  br i1 %92, label %52, label %54
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z12sum_dividersIlSt6vectorIN9libdivide7dividerIlLNS1_9BranchingE1EEESaIS4_EEEmT_RKT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = sext i64 %0 to i128
  br label %11

9:                                                ; preds = %11, %2
  %10 = phi i64 [ 0, %2 ], [ %36, %11 ]
  ret i64 %10

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %36, %11 ]
  %13 = phi ptr [ %3, %7 ], [ %37, %11 ]
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 63
  %17 = ashr i8 %15, 7
  %18 = sext i8 %17 to i64
  %19 = load i64, ptr %13, align 1
  %20 = sext i64 %19 to i128
  %21 = mul nsw i128 %20, %8
  %22 = lshr i128 %21, 64
  %23 = trunc nuw i128 %22 to i64
  %24 = add nsw i64 %0, %23
  %25 = icmp eq i64 %19, 0
  %26 = sext i1 %25 to i64
  %27 = zext nneg i8 %16 to i64
  %28 = shl nuw i64 1, %27
  %29 = add i64 %28, %26
  %30 = icmp slt i64 %24, 0
  %31 = select i1 %30, i64 %29, i64 0
  %32 = add i64 %31, %24
  %33 = ashr i64 %32, %27
  %34 = xor i64 %33, %18
  %35 = sub i64 %12, %18
  %36 = add i64 %35, %34
  %37 = getelementptr inbounds nuw i8, ptr %13, i64 9
  %38 = icmp eq ptr %37, %5
  br i1 %38, label %9, label %11
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_benchmark_branchfree.cpp() #19 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { noreturn }
attributes #23 = { nounwind }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { allocsize(0) }
attributes #26 = { cold nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = !{!14, !16}
!14 = distinct !{!14, !15, !"_ZSt19__relocate_object_aIN9libdivide7dividerItLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!15 = distinct !{!15, !"_ZSt19__relocate_object_aIN9libdivide7dividerItLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_"}
!16 = distinct !{!16, !15, !"_ZSt19__relocate_object_aIN9libdivide7dividerItLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_ZSt19__relocate_object_aIN9libdivide7dividerItLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!24 = distinct !{!24, !"_ZSt19__relocate_object_aIN9libdivide7dividerItLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_"}
!25 = distinct !{!25, !24, !"_ZSt19__relocate_object_aIN9libdivide7dividerItLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"_ZSt19__relocate_object_aIN9libdivide7dividerIsLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!37 = distinct !{!37, !"_ZSt19__relocate_object_aIN9libdivide7dividerIsLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_"}
!38 = distinct !{!38, !37, !"_ZSt19__relocate_object_aIN9libdivide7dividerIsLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"_ZSt19__relocate_object_aIN9libdivide7dividerIsLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!46 = distinct !{!46, !"_ZSt19__relocate_object_aIN9libdivide7dividerIsLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_"}
!47 = distinct !{!47, !46, !"_ZSt19__relocate_object_aIN9libdivide7dividerIsLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = distinct !{!55, !6}
!56 = distinct !{!56, !6}
!57 = !{i64 3388903}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"_ZSt19__relocate_object_aIN9libdivide7dividerIjLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!60 = distinct !{!60, !"_ZSt19__relocate_object_aIN9libdivide7dividerIjLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_"}
!61 = distinct !{!61, !60, !"_ZSt19__relocate_object_aIN9libdivide7dividerIjLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!62 = distinct !{!62, !6}
!63 = distinct !{!63, !6}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !6}
!66 = distinct !{!66, !6}
!67 = !{!68, !70}
!68 = distinct !{!68, !69, !"_ZSt19__relocate_object_aIN9libdivide7dividerIjLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!69 = distinct !{!69, !"_ZSt19__relocate_object_aIN9libdivide7dividerIjLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_"}
!70 = distinct !{!70, !69, !"_ZSt19__relocate_object_aIN9libdivide7dividerIjLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!71 = distinct !{!71, !6}
!72 = distinct !{!72, !6}
!73 = distinct !{!73, !6}
!74 = distinct !{!74, !6}
!75 = distinct !{!75, !6}
!76 = distinct !{!76, !6}
!77 = distinct !{!77, !6}
!78 = distinct !{!78, !6}
!79 = distinct !{!79, !6}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"_ZSt19__relocate_object_aIN9libdivide7dividerIiLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!82 = distinct !{!82, !"_ZSt19__relocate_object_aIN9libdivide7dividerIiLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_"}
!83 = distinct !{!83, !82, !"_ZSt19__relocate_object_aIN9libdivide7dividerIiLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!84 = distinct !{!84, !6}
!85 = distinct !{!85, !6}
!86 = distinct !{!86, !6}
!87 = distinct !{!87, !6}
!88 = distinct !{!88, !6}
!89 = !{!90, !92}
!90 = distinct !{!90, !91, !"_ZSt19__relocate_object_aIN9libdivide7dividerIiLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!91 = distinct !{!91, !"_ZSt19__relocate_object_aIN9libdivide7dividerIiLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_"}
!92 = distinct !{!92, !91, !"_ZSt19__relocate_object_aIN9libdivide7dividerIiLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!93 = distinct !{!93, !6}
!94 = distinct !{!94, !6}
!95 = distinct !{!95, !6}
!96 = distinct !{!96, !6}
!97 = distinct !{!97, !6}
!98 = distinct !{!98, !6}
!99 = distinct !{!99, !6}
!100 = distinct !{!100, !6}
!101 = distinct !{!101, !6}
!102 = !{i64 3389859}
!103 = !{!104, !106}
!104 = distinct !{!104, !105, !"_ZSt19__relocate_object_aIN9libdivide7dividerImLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!105 = distinct !{!105, !"_ZSt19__relocate_object_aIN9libdivide7dividerImLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_"}
!106 = distinct !{!106, !105, !"_ZSt19__relocate_object_aIN9libdivide7dividerImLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!107 = distinct !{!107, !6}
!108 = distinct !{!108, !6}
!109 = distinct !{!109, !6}
!110 = distinct !{!110, !6}
!111 = distinct !{!111, !6}
!112 = !{!113, !115}
!113 = distinct !{!113, !114, !"_ZSt19__relocate_object_aIN9libdivide7dividerImLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!114 = distinct !{!114, !"_ZSt19__relocate_object_aIN9libdivide7dividerImLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_"}
!115 = distinct !{!115, !114, !"_ZSt19__relocate_object_aIN9libdivide7dividerImLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!116 = distinct !{!116, !6}
!117 = distinct !{!117, !6}
!118 = distinct !{!118, !6}
!119 = distinct !{!119, !6}
!120 = distinct !{!120, !6}
!121 = distinct !{!121, !6}
!122 = distinct !{!122, !6}
!123 = distinct !{!123, !6}
!124 = distinct !{!124, !6}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_ZSt19__relocate_object_aIN9libdivide7dividerIlLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!127 = distinct !{!127, !"_ZSt19__relocate_object_aIN9libdivide7dividerIlLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_"}
!128 = distinct !{!128, !127, !"_ZSt19__relocate_object_aIN9libdivide7dividerIlLNS0_9BranchingE0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!129 = distinct !{!129, !6}
!130 = distinct !{!130, !6}
!131 = distinct !{!131, !6}
!132 = distinct !{!132, !6}
!133 = distinct !{!133, !6}
!134 = !{!135, !137}
!135 = distinct !{!135, !136, !"_ZSt19__relocate_object_aIN9libdivide7dividerIlLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!136 = distinct !{!136, !"_ZSt19__relocate_object_aIN9libdivide7dividerIlLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_"}
!137 = distinct !{!137, !136, !"_ZSt19__relocate_object_aIN9libdivide7dividerIlLNS0_9BranchingE1EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!138 = distinct !{!138, !6}
!139 = distinct !{!139, !6}
!140 = distinct !{!140, !6}
