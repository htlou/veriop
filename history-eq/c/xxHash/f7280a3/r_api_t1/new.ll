; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind memory(readwrite, argmem: read) uwtable
define dso_local i32 @target_xxh32_heap_20(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, 1640531535
  %6 = add i32 %1, -2048144777
  %7 = add i32 %1, 606290984
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %9 = load i32, ptr %0, align 1
  %10 = mul i32 %9, -2048144777
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 13)
  %13 = mul i32 %12, -1640531535
  %14 = freeze i32 %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %16 = load i32, ptr %15, align 1
  %17 = mul i32 %16, -2048144777
  %18 = add i32 %17, %6
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 13)
  %20 = mul i32 %19, -1640531535
  %21 = freeze i32 %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %23 = load i32, ptr %22, align 1
  %24 = mul i32 %23, -2048144777
  %25 = add i32 %24, %1
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = freeze i32 %27
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %5
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = freeze i32 %34
  %36 = getelementptr i8, ptr %0, i64 16
  %37 = icmp ult ptr %36, %8
  br i1 %37, label %49, label %40

38:                                               ; preds = %2
  %39 = add i32 %1, 374761393
  br label %63

40:                                               ; preds = %4
  %41 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 1)
  %42 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 7)
  %43 = add i32 %42, %41
  %44 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 12)
  %45 = add i32 %43, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 18)
  %47 = add i32 %45, %46
  %48 = add i32 %47, 20
  br label %63

49:                                               ; preds = %4
  %50 = load i32, ptr %36, align 1
  %51 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 1)
  %52 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 7)
  %53 = add i32 %52, %51
  %54 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 12)
  %55 = add i32 %53, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 18)
  %57 = add i32 %55, %56
  %58 = add i32 %57, 20
  %59 = mul i32 %50, -1028477379
  %60 = add i32 %59, %58
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %62 = mul i32 %61, 668265263
  br label %63

63:                                               ; preds = %40, %38, %49
  %64 = phi i32 [ %62, %49 ], [ %48, %40 ], [ %39, %38 ]
  %65 = lshr i32 %64, 15
  %66 = xor i32 %65, %64
  %67 = mul i32 %66, -2048144777
  %68 = lshr i32 %67, 13
  %69 = xor i32 %68, %67
  %70 = mul i32 %69, -1028477379
  %71 = lshr i32 %70, 16
  %72 = xor i32 %71, %70
  ret i32 %72
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { nounwind memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 247308}
