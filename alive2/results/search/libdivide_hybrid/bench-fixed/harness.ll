; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/experiments/bench_libdivide_fixed.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/experiments/bench_libdivide_fixed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.random_numerators = type <{ ptr, i32, [4 x i8] }>
%"class.libdivide::divider" = type { %"struct.libdivide::detail::dispatcher" }
%"struct.libdivide::detail::dispatcher" = type { %"struct.libdivide::libdivide_u32_t" }
%"struct.libdivide::libdivide_u32_t" = type <{ i32, i8 }>
%class.random_numerators.1 = type <{ ptr, i32, [4 x i8] }>
%"class.libdivide::divider.4" = type { %"struct.libdivide::detail::dispatcher.5" }
%"struct.libdivide::detail::dispatcher.5" = type { %"struct.libdivide::libdivide_u64_t" }
%"struct.libdivide::libdivide_u64_t" = type <{ i64, i8 }>

$_Z5benchIjEvv = comdat any

$_Z5benchImEvv = comdat any

$_ZN17random_numeratorsIjEC2Ev = comdat any

$_Z13sum_quotientsIjjEmRK17random_numeratorsIT_ERKT0_ = comdat any

$_Z13sum_quotientsIjN9libdivide7dividerIjLNS0_9BranchingE0EEEEmRK17random_numeratorsIT_ERKT0_ = comdat any

$_ZN17random_numeratorsImEC2Ev = comdat any

$_Z13sum_quotientsImmEmRK17random_numeratorsIT_ERKT0_ = comdat any

$_Z13sum_quotientsImN9libdivide7dividerImLNS0_9BranchingE0EEEEmRK17random_numeratorsIT_ERKT0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [27 x i8] c"bits,divisor,ns_per_divide\00", align 1
@constinit = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 7, i32 10, i32 31, i32 63, i32 255, i32 65535, i32 -1], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"result == expected\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"/srv/home/hantaolou/code/veriop/alive2/experiments/bench_libdivide_fixed.cpp\00", align 1
@__PRETTY_FUNCTION__._Z5benchIjEvv = private unnamed_addr constant [32 x i8] c"void bench() [T = unsigned int]\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%zu,%llu,%.6f\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"libdivide.h:%d: %s(): Error: %s\0A\00", align 1
@__FUNCTION__._ZN9libdivideL26libdivide_internal_u32_genEji = private unnamed_addr constant [27 x i8] c"libdivide_internal_u32_gen\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"divider must be != 0\00", align 1
@constinit.7 = private unnamed_addr constant [10 x i64] [i64 1, i64 2, i64 3, i64 7, i64 10, i64 31, i64 63, i64 255, i64 65535, i64 -1], align 8
@__PRETTY_FUNCTION__._Z5benchImEvv = private unnamed_addr constant [33 x i8] c"void bench() [T = unsigned long]\00", align 1
@__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi = private unnamed_addr constant [27 x i8] c"libdivide_internal_u64_gen\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_bench_libdivide_fixed.cpp, ptr null }]
@str.8 = private unnamed_addr constant [24 x i8] c"Failed to align memory!\00", align 1

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str)
  tail call void @_Z5benchIjEvv()
  tail call void @_Z5benchImEvv()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z5benchIjEvv() local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %class.random_numerators, align 8
  %2 = alloca i32, align 4
  %3 = alloca %"class.libdivide::divider", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #15
  call void @_ZN17random_numeratorsIjEC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %7

5:                                                ; preds = %53
  %6 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #15
  ret void

7:                                                ; preds = %0, %53
  %8 = phi i64 [ 0, %0 ], [ %60, %53 ]
  %9 = getelementptr inbounds nuw i8, ptr @constinit, i64 %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load ptr, ptr @stderr, align 8
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.5, i32 noundef 948, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL26libdivide_internal_u32_genEji, ptr noundef nonnull @.str.6) #16
  call void @abort() #17
  unreachable

15:                                               ; preds = %7
  %16 = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %10, i1 true)
  %17 = xor i32 %16, 31
  %18 = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %10)
  %19 = icmp samesign ult i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = trunc nuw nsw i32 %17 to i8
  br label %45

22:                                               ; preds = %15
  %23 = shl nuw i32 1, %17
  %24 = call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %10, i32 0, i32 range(i32 1, -2147483647) %23) #18, !srcloc !5
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = extractvalue { i32, i32 } %24, 1
  %27 = sub i32 %10, %26
  %28 = icmp ult i32 %27, %23
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = trunc nuw nsw i32 %17 to i8
  br label %41

31:                                               ; preds = %22
  %32 = shl i32 %25, 1
  %33 = shl i32 %26, 1
  %34 = icmp uge i32 %33, %10
  %35 = icmp slt i32 %26, 0
  %36 = or i1 %35, %34
  %37 = zext i1 %36 to i32
  %38 = or disjoint i32 %32, %37
  %39 = trunc nuw nsw i32 %17 to i8
  %40 = or disjoint i8 %39, 64
  br label %41

41:                                               ; preds = %31, %29
  %42 = phi i32 [ %38, %31 ], [ %25, %29 ]
  %43 = phi i8 [ %40, %31 ], [ %30, %29 ]
  %44 = add i32 %42, 1
  br label %45

45:                                               ; preds = %20, %41
  %46 = phi i32 [ 0, %20 ], [ %44, %41 ]
  %47 = phi i8 [ %21, %20 ], [ %43, %41 ]
  %48 = zext nneg i8 %47 to i40
  %49 = shl nuw nsw i40 %48, 32
  %50 = zext i32 %46 to i40
  %51 = or disjoint i40 %49, %50
  store i40 %51, ptr %3, align 8
  %52 = invoke noundef i64 @_Z13sum_quotientsIjjEmRK17random_numeratorsIT_ERKT0_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %64 unwind label %62

53:                                               ; preds = %75
  %54 = load i32, ptr %2, align 4
  %55 = zext i32 %54 to i64
  %56 = load i32, ptr %4, align 8
  %57 = uitofp i32 %56 to double
  %58 = fdiv double %79, %57
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef 32, i64 noundef %55, double noundef %58)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %60 = add nuw nsw i64 %8, 4
  %61 = icmp eq i64 %60, 40
  br i1 %61, label %5, label %7

62:                                               ; preds = %45
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %82

64:                                               ; preds = %45, %75
  %65 = phi i32 [ %80, %75 ], [ 0, %45 ]
  %66 = phi double [ %79, %75 ], [ 1.000000e+30, %45 ]
  %67 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !6
  %68 = invoke noundef i64 @_Z13sum_quotientsIjN9libdivide7dividerIjLNS0_9BranchingE0EEEEmRK17random_numeratorsIT_ERKT0_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(5) %3)
          to label %69 unwind label %73

69:                                               ; preds = %64
  %70 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #15
  %71 = icmp eq i64 %68, %52
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 18, ptr noundef nonnull @__PRETTY_FUNCTION__._Z5benchIjEvv) #17
  unreachable

73:                                               ; preds = %64
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %82

75:                                               ; preds = %69
  %76 = sub nsw i64 %70, %67
  %77 = sitofp i64 %76 to double
  %78 = fcmp ogt double %66, %77
  %79 = select i1 %78, double %77, double %66
  %80 = add nuw nsw i32 %65, 1
  %81 = icmp eq i32 %80, 30
  br i1 %81, label %53, label %64, !llvm.loop !7

82:                                               ; preds = %73, %62
  %83 = phi { ptr, i32 } [ %63, %62 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %84 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %84) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #15
  resume { ptr, i32 } %83
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z5benchImEvv() local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
  %1 = alloca %class.random_numerators.1, align 8
  %2 = alloca i64, align 8
  %3 = alloca %"class.libdivide::divider.4", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #15
  call void @_ZN17random_numeratorsImEC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %8

6:                                                ; preds = %52
  %7 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #15
  ret void

8:                                                ; preds = %0, %52
  %9 = phi i64 [ 0, %0 ], [ %58, %52 ]
  %10 = getelementptr inbounds nuw i8, ptr @constinit.7, i64 %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %3) #15
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load ptr, ptr @stderr, align 8
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.5, i32 noundef 1097, ptr noundef nonnull @__FUNCTION__._ZN9libdivideL26libdivide_internal_u64_genEmi, ptr noundef nonnull @.str.6) #16
  call void @abort() #17
  unreachable

16:                                               ; preds = %8
  %17 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %11, i1 true)
  %18 = trunc nuw nsw i64 %17 to i32
  %19 = xor i32 %18, 63
  %20 = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %11)
  %21 = icmp samesign ult i64 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = trunc nuw nsw i32 %19 to i8
  br label %48

24:                                               ; preds = %16
  %25 = zext nneg i32 %19 to i64
  %26 = shl nuw i64 1, %25
  %27 = call { i64, i64 } asm "div $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %11, i64 0, i64 range(i64 1, -9223372036854775807) %26) #18, !srcloc !9
  %28 = extractvalue { i64, i64 } %27, 0
  %29 = extractvalue { i64, i64 } %27, 1
  %30 = sub i64 %11, %29
  %31 = icmp ult i64 %30, %26
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = trunc nuw nsw i32 %19 to i8
  br label %44

34:                                               ; preds = %24
  %35 = shl i64 %28, 1
  %36 = shl i64 %29, 1
  %37 = icmp uge i64 %36, %11
  %38 = icmp slt i64 %29, 0
  %39 = or i1 %38, %37
  %40 = zext i1 %39 to i64
  %41 = or disjoint i64 %35, %40
  %42 = trunc nuw nsw i32 %19 to i8
  %43 = or disjoint i8 %42, 64
  br label %44

44:                                               ; preds = %34, %32
  %45 = phi i8 [ %43, %34 ], [ %33, %32 ]
  %46 = phi i64 [ %41, %34 ], [ %28, %32 ]
  %47 = add i64 %46, 1
  br label %48

48:                                               ; preds = %22, %44
  %49 = phi i64 [ 0, %22 ], [ %47, %44 ]
  %50 = phi i8 [ %23, %22 ], [ %45, %44 ]
  store i64 %49, ptr %3, align 8
  store i8 %50, ptr %4, align 8
  %51 = invoke noundef i64 @_Z13sum_quotientsImmEmRK17random_numeratorsIT_ERKT0_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %62 unwind label %60

52:                                               ; preds = %73
  %53 = load i64, ptr %2, align 8
  %54 = load i32, ptr %5, align 8
  %55 = uitofp i32 %54 to double
  %56 = fdiv double %77, %55
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef 64, i64 noundef %53, double noundef %56)
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %58 = add nuw nsw i64 %9, 8
  %59 = icmp eq i64 %58, 80
  br i1 %59, label %6, label %8

60:                                               ; preds = %48
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %80

62:                                               ; preds = %48, %73
  %63 = phi i32 [ %78, %73 ], [ 0, %48 ]
  %64 = phi double [ %77, %73 ], [ 1.000000e+30, %48 ]
  %65 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !6
  %66 = invoke noundef i64 @_Z13sum_quotientsImN9libdivide7dividerImLNS0_9BranchingE0EEEEmRK17random_numeratorsIT_ERKT0_(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(9) %3)
          to label %67 unwind label %71

67:                                               ; preds = %62
  %68 = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #15
  %69 = icmp eq i64 %66, %51
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 18, ptr noundef nonnull @__PRETTY_FUNCTION__._Z5benchImEvv) #17
  unreachable

71:                                               ; preds = %62
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %80

73:                                               ; preds = %67
  %74 = sub nsw i64 %68, %65
  %75 = sitofp i64 %74 to double
  %76 = fcmp ogt double %64, %75
  %77 = select i1 %76, double %75, double %64
  %78 = add nuw nsw i32 %63, 1
  %79 = icmp eq i32 %78, 30
  br i1 %79, label %52, label %62, !llvm.loop !10

80:                                               ; preds = %71, %60
  %81 = phi { ptr, i32 } [ %61, %60 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %82 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %82) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #15
  resume { ptr, i32 } %81
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN17random_numeratorsIjEC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 524288, ptr %3, align 8
  %4 = tail call i64 @time(ptr noundef null) #15
  %5 = trunc i64 %4 to i32
  tail call void @srand(i32 noundef %5) #15
  %6 = tail call i32 @rand() #15
  %7 = srem i32 %6, 3
  %8 = shl nsw i32 %7, 10
  %9 = load i32, ptr %3, align 8
  %10 = add i32 %8, %9
  store i32 %10, ptr %3, align 8
  %11 = shl i32 %10, 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr null, ptr %2, align 8
  %12 = zext i32 %11 to i64
  %13 = call i32 @posix_memalign(ptr noundef nonnull %2, i64 noundef 64, i64 noundef %12) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  call void @exit(i32 noundef 1) #19
  unreachable

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  store ptr %18, ptr %0, align 8
  %19 = load i32, ptr %3, align 8
  %20 = zext i32 %19 to i64
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %76, label %22

22:                                               ; preds = %17
  %23 = and i64 %20, 3
  %24 = icmp ult i32 %19, 4
  br i1 %24, label %58, label %25

25:                                               ; preds = %22
  %26 = and i64 %20, 4294967292
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %55, %27 ]
  %29 = phi i32 [ 2147483563, %25 ], [ %51, %27 ]
  %30 = phi i32 [ 916361705, %25 ], [ %52, %27 ]
  %31 = phi i64 [ 0, %25 ], [ %56, %27 ]
  %32 = call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 16)
  %33 = add i32 %32, %30
  %34 = add i32 %33, %30
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds nuw i32, ptr %35, i64 %28
  store i32 %33, ptr %36, align 4
  %37 = or disjoint i64 %28, 1
  %38 = call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 16)
  %39 = add i32 %38, %34
  %40 = add i32 %39, %34
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds nuw i32, ptr %41, i64 %37
  store i32 %39, ptr %42, align 4
  %43 = or disjoint i64 %28, 2
  %44 = call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 16)
  %45 = add i32 %44, %40
  %46 = add i32 %45, %40
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds nuw i32, ptr %47, i64 %43
  store i32 %45, ptr %48, align 4
  %49 = or disjoint i64 %28, 3
  %50 = call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 16)
  %51 = add i32 %50, %46
  %52 = add i32 %51, %46
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds nuw i32, ptr %53, i64 %49
  store i32 %51, ptr %54, align 4
  %55 = add nuw nsw i64 %28, 4
  %56 = add i64 %31, 4
  %57 = icmp eq i64 %56, %26
  br i1 %57, label %58, label %27, !llvm.loop !11

58:                                               ; preds = %27, %22
  %59 = phi i64 [ 0, %22 ], [ %55, %27 ]
  %60 = phi i32 [ 2147483563, %22 ], [ %51, %27 ]
  %61 = phi i32 [ 916361705, %22 ], [ %52, %27 ]
  %62 = icmp eq i64 %23, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %58, %63
  %64 = phi i64 [ %73, %63 ], [ %59, %58 ]
  %65 = phi i32 [ %69, %63 ], [ %60, %58 ]
  %66 = phi i32 [ %70, %63 ], [ %61, %58 ]
  %67 = phi i64 [ %74, %63 ], [ 0, %58 ]
  %68 = call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 16)
  %69 = add i32 %68, %66
  %70 = add i32 %69, %66
  %71 = load ptr, ptr %0, align 8
  %72 = getelementptr inbounds nuw i32, ptr %71, i64 %64
  store i32 %69, ptr %72, align 4
  %73 = add nuw nsw i64 %64, 1
  %74 = add i64 %67, 1
  %75 = icmp eq i64 %74, %23
  br i1 %75, label %76, label %63, !llvm.loop !12

76:                                               ; preds = %58, %63, %17
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z13sum_quotientsIjjEmRK17random_numeratorsIT_ERKT0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i32, ptr %3, i64 %6
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  br label %15

11:                                               ; preds = %15
  %12 = zext i32 %20 to i64
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i64 [ 0, %2 ], [ %12, %11 ]
  ret i64 %14

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %3, %9 ], [ %21, %15 ]
  %17 = phi i32 [ 0, %9 ], [ %20, %15 ]
  %18 = load i32, ptr %16, align 4
  %19 = udiv i32 %18, %10
  %20 = add i32 %19, %17
  %21 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %11, label %15, !llvm.loop !14
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z13sum_quotientsIjN9libdivide7dividerIjLNS0_9BranchingE0EEEEmRK17random_numeratorsIT_ERKT0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(5) %1) local_unnamed_addr #7 comdat {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %13

9:                                                ; preds = %13
  %10 = zext i32 %20 to i64
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i64 [ 0, %2 ], [ %10, %9 ]
  ret i64 %12

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %7, %6 ], [ %21, %13 ]
  %15 = phi i32 [ 0, %6 ], [ %20, %13 ]
  %16 = load i32, ptr %14, align 4
  %17 = load i32, ptr %1, align 1
  %18 = load i8, ptr %8, align 1
  %19 = tail call noundef i32 @target_u32(i32 noundef %16, i32 noundef %17, i8 noundef zeroext %18)
  %20 = add i32 %19, %15
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %22 = load ptr, ptr %0, align 8
  %23 = load i32, ptr %3, align 8
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw i32, ptr %22, i64 %24
  %26 = icmp eq ptr %21, %25
  br i1 %26, label %9, label %13, !llvm.loop !15
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

declare i32 @target_u32(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN17random_numeratorsImEC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 524288, ptr %3, align 8
  %4 = tail call i64 @time(ptr noundef null) #15
  %5 = trunc i64 %4 to i32
  tail call void @srand(i32 noundef %5) #15
  %6 = tail call i32 @rand() #15
  %7 = srem i32 %6, 3
  %8 = shl nsw i32 %7, 10
  %9 = load i32, ptr %3, align 8
  %10 = add i32 %8, %9
  store i32 %10, ptr %3, align 8
  %11 = shl i32 %10, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr null, ptr %2, align 8
  %12 = zext i32 %11 to i64
  %13 = call i32 @posix_memalign(ptr noundef nonnull %2, i64 noundef 64, i64 noundef %12) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  call void @exit(i32 noundef 1) #19
  unreachable

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  store ptr %18, ptr %0, align 8
  %19 = load i32, ptr %3, align 8
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 1
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %77, label %23

23:                                               ; preds = %17
  %24 = and i64 %21, 2
  %25 = icmp eq i32 %19, 1
  br i1 %25, label %59, label %26

26:                                               ; preds = %23
  %27 = and i64 %21, 8589934588
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %56, %28 ]
  %30 = phi i32 [ 2147483563, %26 ], [ %52, %28 ]
  %31 = phi i32 [ 916361705, %26 ], [ %53, %28 ]
  %32 = phi i64 [ 0, %26 ], [ %57, %28 ]
  %33 = call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 16)
  %34 = add i32 %33, %31
  %35 = add i32 %34, %31
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds nuw i32, ptr %36, i64 %29
  store i32 %34, ptr %37, align 4
  %38 = or disjoint i64 %29, 1
  %39 = call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 16)
  %40 = add i32 %39, %35
  %41 = add i32 %40, %35
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds nuw i32, ptr %42, i64 %38
  store i32 %40, ptr %43, align 4
  %44 = or disjoint i64 %29, 2
  %45 = call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 16)
  %46 = add i32 %45, %41
  %47 = add i32 %46, %41
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds nuw i32, ptr %48, i64 %44
  store i32 %46, ptr %49, align 4
  %50 = or disjoint i64 %29, 3
  %51 = call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 16)
  %52 = add i32 %51, %47
  %53 = add i32 %52, %47
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr inbounds nuw i32, ptr %54, i64 %50
  store i32 %52, ptr %55, align 4
  %56 = add nuw nsw i64 %29, 4
  %57 = add i64 %32, 4
  %58 = icmp eq i64 %57, %27
  br i1 %58, label %59, label %28, !llvm.loop !16

59:                                               ; preds = %28, %23
  %60 = phi i64 [ 0, %23 ], [ %56, %28 ]
  %61 = phi i32 [ 2147483563, %23 ], [ %52, %28 ]
  %62 = phi i32 [ 916361705, %23 ], [ %53, %28 ]
  %63 = icmp eq i64 %24, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %59, %64
  %65 = phi i64 [ %74, %64 ], [ %60, %59 ]
  %66 = phi i32 [ %70, %64 ], [ %61, %59 ]
  %67 = phi i32 [ %71, %64 ], [ %62, %59 ]
  %68 = phi i64 [ %75, %64 ], [ 0, %59 ]
  %69 = call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 16)
  %70 = add i32 %69, %67
  %71 = add i32 %70, %67
  %72 = load ptr, ptr %0, align 8
  %73 = getelementptr inbounds nuw i32, ptr %72, i64 %65
  store i32 %70, ptr %73, align 4
  %74 = add nuw nsw i64 %65, 1
  %75 = add i64 %68, 1
  %76 = icmp eq i64 %75, %24
  br i1 %76, label %77, label %64, !llvm.loop !17

77:                                               ; preds = %59, %64, %17
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z13sum_quotientsImmEmRK17random_numeratorsIT_ERKT0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i64, ptr %3, i64 %6
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %1, align 8
  br label %13

11:                                               ; preds = %13, %2
  %12 = phi i64 [ 0, %2 ], [ %18, %13 ]
  ret i64 %12

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %3, %9 ], [ %19, %13 ]
  %15 = phi i64 [ 0, %9 ], [ %18, %13 ]
  %16 = load i64, ptr %14, align 8
  %17 = udiv i64 %16, %10
  %18 = add i64 %17, %15
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %20 = icmp eq ptr %19, %7
  br i1 %20, label %11, label %13, !llvm.loop !18
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_Z13sum_quotientsImN9libdivide7dividerImLNS0_9BranchingE0EEEEmRK17random_numeratorsIT_ERKT0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(9) %1) local_unnamed_addr #7 comdat {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %11

9:                                                ; preds = %11, %2
  %10 = phi i64 [ 0, %2 ], [ %18, %11 ]
  ret i64 %10

11:                                               ; preds = %6, %11
  %12 = phi ptr [ %7, %6 ], [ %19, %11 ]
  %13 = phi i64 [ 0, %6 ], [ %18, %11 ]
  %14 = load i64, ptr %12, align 8
  %15 = load i64, ptr %1, align 1
  %16 = load i8, ptr %8, align 1
  %17 = tail call noundef i64 @target_u64(i64 noundef %14, i64 noundef %15, i8 noundef zeroext %16)
  %18 = add i64 %17, %13
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %20 = load ptr, ptr %0, align 8
  %21 = load i32, ptr %3, align 8
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds nuw i64, ptr %20, i64 %22
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %9, label %11, !llvm.loop !19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

declare i64 @target_u64(i64 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_bench_libdivide_fixed.cpp() #13 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind memory(none) }
attributes #19 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2082821}
!6 = !{i64 634}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i64 2083777}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
