; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0e47911/api_xxh32_len33/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0e47911/api_xxh32_len33/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_oneshot(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %5 = load i32, ptr %4, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %9 = load i32, ptr %8, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load i32, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %13 = load i32, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %15 = load i32, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = mul i32 %20, 374761393
  %22 = mul i32 %11, -2048144777
  %23 = mul i32 %3, -2048144777
  %24 = add i32 %1, 606290984
  %25 = add i32 %24, %23
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = add i32 %22, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 1)
  %32 = add i32 %31, 33
  %33 = mul i32 %13, -2048144777
  %34 = mul i32 %5, -2048144777
  %35 = add i32 %1, -2048144777
  %36 = add i32 %35, %34
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = add i32 %33, %38
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 7)
  %43 = add i32 %32, %42
  %44 = mul i32 %15, -2048144777
  %45 = mul i32 %7, -2048144777
  %46 = add i32 %45, %1
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 13)
  %48 = mul i32 %47, -1640531535
  %49 = add i32 %44, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 12)
  %53 = mul i32 %17, -2048144777
  %54 = mul i32 %9, -2048144777
  %55 = add i32 %1, 1640531535
  %56 = add i32 %55, %54
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = add i32 %53, %58
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 13)
  %61 = mul i32 %60, -1640531535
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 18)
  %63 = add i32 %43, %21
  %64 = add i32 %63, %52
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 11)
  %67 = mul i32 %66, -1640531535
  %68 = lshr i32 %67, 15
  %69 = xor i32 %68, %67
  %70 = mul i32 %69, -2048144777
  %71 = lshr i32 %70, 13
  %72 = xor i32 %71, %70
  %73 = mul i32 %72, -1028477379
  %74 = lshr i32 %73, 16
  %75 = xor i32 %74, %73
  ret i32 %75
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
