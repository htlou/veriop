; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9231e6d/noinl_stream32_len16/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9231e6d/noinl_stream32_len16/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_stream(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, 1640531535
  %6 = add i32 %1, -2048144777
  %7 = add i32 %1, 606290984
  %8 = load i32, ptr %0, align 1
  %9 = mul i32 %8, -2048144777
  %10 = add i32 %9, %7
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 13)
  %12 = mul i32 %11, -1640531535
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %14 = load i32, ptr %13, align 1
  %15 = mul i32 %14, -2048144777
  %16 = add i32 %15, %6
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 13)
  %18 = mul i32 %17, -1640531535
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %26 = load i32, ptr %25, align 1
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %5
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %32 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 7)
  %33 = add i32 %32, %31
  %34 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 12)
  %35 = add i32 %33, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 18)
  %37 = add i32 %35, %36
  br label %40

38:                                               ; preds = %2
  %39 = add i32 %1, 374761393
  br label %40

40:                                               ; preds = %4, %38
  %41 = phi i32 [ 16, %4 ], [ 0, %38 ]
  %42 = phi i32 [ %37, %4 ], [ %39, %38 ]
  %43 = add i32 %41, %42
  %44 = lshr i32 %43, 15
  %45 = xor i32 %44, %43
  %46 = mul i32 %45, -2048144777
  %47 = lshr i32 %46, 13
  %48 = xor i32 %47, %46
  %49 = mul i32 %48, -1028477379
  %50 = lshr i32 %49, 16
  %51 = xor i32 %50, %49
  ret i32 %51
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
