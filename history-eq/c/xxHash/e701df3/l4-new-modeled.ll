; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neonm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neonm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @target_acc512_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <2 x i64> poison, i64 %1, i64 0
  %27 = insertelement <2 x i64> %26, i64 %2, i64 1
  %28 = insertelement <2 x i64> poison, i64 %3, i64 0
  %29 = insertelement <2 x i64> %28, i64 %4, i64 1
  %30 = insertelement <2 x i64> poison, i64 %9, i64 0
  %31 = insertelement <2 x i64> %30, i64 %10, i64 1
  %32 = insertelement <2 x i64> poison, i64 %11, i64 0
  %33 = insertelement <2 x i64> %32, i64 %12, i64 1
  %34 = insertelement <2 x i64> poison, i64 %17, i64 0
  %35 = insertelement <2 x i64> %34, i64 %18, i64 1
  %36 = insertelement <2 x i64> poison, i64 %19, i64 0
  %37 = insertelement <2 x i64> %36, i64 %20, i64 1
  %38 = xor i64 %21, %13
  %39 = add i64 %13, %6
  %40 = lshr i64 %38, 32
  %model41lo = and i64 %38, 4294967295
  %model41hi = and i64 %40, 4294967295
  %model41product = mul i64 %model41lo, %model41hi
  %41 = add i64 %model41product, %5
  %42 = xor i64 %22, %14
  %43 = add i64 %41, %14
  %44 = lshr i64 %42, 32
  %model45lo = and i64 %42, 4294967295
  %model45hi = and i64 %44, 4294967295
  %model45product = mul i64 %model45lo, %model45hi
  %45 = add i64 %model45product, %39
  %46 = xor i64 %23, %15
  %47 = add i64 %15, %8
  %48 = lshr i64 %46, 32
  %model49lo = and i64 %46, 4294967295
  %model49hi = and i64 %48, 4294967295
  %model49product = mul i64 %model49lo, %model49hi
  %49 = add i64 %model49product, %7
  %50 = xor i64 %24, %16
  %51 = add i64 %49, %16
  %52 = lshr i64 %50, 32
  %model53lo = and i64 %50, 4294967295
  %model53hi = and i64 %52, 4294967295
  %model53product = mul i64 %model53lo, %model53hi
  %53 = add i64 %model53product, %47
  %54 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %55 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %56 = xor <2 x i64> %35, %31
  %57 = xor <2 x i64> %37, %33
  %58 = bitcast <2 x i64> %56 to <4 x i32>
  %59 = bitcast <2 x i64> %57 to <4 x i32>
  %60 = shufflevector <4 x i32> %58, <4 x i32> %59, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %61 = shufflevector <4 x i32> %58, <4 x i32> %59, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %model62lhs = shufflevector <4 x i32> %60, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %model62rhs = shufflevector <4 x i32> %61, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %model62lhz = zext <2 x i32> %model62lhs to <2 x i64>
  %model62rhz = zext <2 x i32> %model62rhs to <2 x i64>
  %model62product = mul <2 x i64> %model62lhz, %model62rhz
  %62 = add <2 x i64> %model62product, %54
  %model63lhs = shufflevector <4 x i32> %60, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %model63rhs = shufflevector <4 x i32> %61, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %model63lhz = zext <2 x i32> %model63lhs to <2 x i64>
  %model63rhz = zext <2 x i32> %model63rhs to <2 x i64>
  %model63product = mul <2 x i64> %model63lhz, %model63rhz
  %63 = add <2 x i64> %model63product, %55
  %64 = add <2 x i64> %27, %62
  %65 = add <2 x i64> %29, %63
  store <2 x i64> %64, ptr %0, align 8
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %65, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %43, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %45, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %51, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %53, ptr %70, align 8
  ret void
}

attributes #0 = { nounwind memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{i64 3231264}
!7 = !{i64 3169102}
!8 = !{i64 3169297}
