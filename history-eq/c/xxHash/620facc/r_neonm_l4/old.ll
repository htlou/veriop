; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neonm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neonm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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
  %40 = and i64 %38, 4294967295
  %41 = lshr i64 %38, 32
  %42 = mul nuw i64 %40, %41
  %43 = xor i64 %22, %14
  %44 = add i64 %14, %5
  %45 = add i64 %44, %42
  %46 = and i64 %43, 4294967295
  %47 = lshr i64 %43, 32
  %48 = mul nuw i64 %46, %47
  %49 = add i64 %39, %48
  %50 = xor i64 %23, %15
  %51 = add i64 %15, %8
  %52 = and i64 %50, 4294967295
  %53 = lshr i64 %50, 32
  %54 = mul nuw i64 %52, %53
  %55 = xor i64 %24, %16
  %56 = add i64 %16, %7
  %57 = add i64 %56, %54
  %58 = and i64 %55, 4294967295
  %59 = lshr i64 %55, 32
  %60 = mul nuw i64 %58, %59
  %61 = add i64 %51, %60
  %62 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %63 = xor <2 x i64> %35, %31
  %64 = lshr <2 x i64> %63, splat (i64 32)
  %65 = and <2 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <2 x i64> %64, %65
  %67 = add <2 x i64> %62, %27
  %68 = add <2 x i64> %67, %66
  %69 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %70 = xor <2 x i64> %37, %33
  %71 = lshr <2 x i64> %70, splat (i64 32)
  %72 = and <2 x i64> %70, splat (i64 4294967295)
  %73 = mul nuw <2 x i64> %71, %72
  %74 = add <2 x i64> %69, %29
  %75 = add <2 x i64> %74, %73
  store <2 x i64> %68, ptr %0, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %75, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %45, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %49, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %57, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %61, ptr %80, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
