; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6f97097/wrap_x32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6f97097/wrap_x32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len0(ptr noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 374761393
  %4 = lshr i32 %3, 15
  %5 = xor i32 %4, %3
  %6 = mul i32 %5, -2048144777
  %7 = lshr i32 %6, 13
  %8 = xor i32 %7, %6
  %9 = mul i32 %8, -1028477379
  %10 = lshr i32 %9, 16
  %11 = xor i32 %10, %9
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len3(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761396
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %14, %4 ], [ %3, %2 ]
  %6 = phi i64 [ %15, %4 ], [ 3, %2 ]
  %7 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %9 = load i8, ptr %7, align 1
  %10 = zext i8 %9 to i32
  %11 = mul i32 %10, 374761393
  %12 = add i32 %11, %5
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 11)
  %14 = mul i32 %13, -1640531535
  %15 = add nsw i64 %6, -1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %4

17:                                               ; preds = %4
  %18 = lshr i32 %14, 15
  %19 = xor i32 %18, %14
  %20 = mul i32 %19, -2048144777
  %21 = lshr i32 %20, 13
  %22 = xor i32 %21, %20
  %23 = mul i32 %22, -1028477379
  %24 = lshr i32 %23, 16
  %25 = xor i32 %24, %23
  ret i32 %25
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len15(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761408
  br label %6

4:                                                ; preds = %6
  %5 = getelementptr i8, ptr %0, i64 12
  br label %18

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %15, %6 ], [ %3, %2 ]
  %8 = phi i64 [ %16, %6 ], [ 15, %2 ]
  %9 = phi ptr [ %13, %6 ], [ %0, %2 ]
  %10 = load i32, ptr %9, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = add nsw i64 %8, -4
  %17 = icmp ugt i64 %16, 3
  br i1 %17, label %6, label %4

18:                                               ; preds = %4, %18
  %19 = phi i32 [ %28, %18 ], [ %15, %4 ]
  %20 = phi i64 [ %29, %18 ], [ 3, %4 ]
  %21 = phi ptr [ %22, %18 ], [ %5, %4 ]
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 1
  %23 = load i8, ptr %21, align 1
  %24 = zext i8 %23 to i32
  %25 = mul i32 %24, 374761393
  %26 = add i32 %25, %19
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 11)
  %28 = mul i32 %27, -1640531535
  %29 = add nsw i64 %20, -1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %18

31:                                               ; preds = %18
  %32 = lshr i32 %28, 15
  %33 = xor i32 %32, %28
  %34 = mul i32 %33, -2048144777
  %35 = lshr i32 %34, 13
  %36 = xor i32 %35, %34
  %37 = mul i32 %36, -1028477379
  %38 = lshr i32 %37, 16
  %39 = xor i32 %38, %37
  ret i32 %39
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @target_xxh32_len16(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %3, %7
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %4, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %5, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %34 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 7)
  %35 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 12)
  %36 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 18)
  %37 = add i32 %33, 16
  %38 = add i32 %37, %34
  %39 = add i32 %38, %35
  %40 = add i32 %39, %36
  %41 = lshr i32 %40, 15
  %42 = xor i32 %41, %40
  %43 = mul i32 %42, -2048144777
  %44 = lshr i32 %43, 13
  %45 = xor i32 %44, %43
  %46 = mul i32 %45, -1028477379
  %47 = lshr i32 %46, 16
  %48 = xor i32 %47, %46
  ret i32 %48
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @target_xxh32_len31(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %5
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %35 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 7)
  %36 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 12)
  %37 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 18)
  %38 = add i32 %34, 31
  %39 = add i32 %38, %35
  %40 = add i32 %39, %36
  %41 = add i32 %40, %37
  br label %44

42:                                               ; preds = %44
  %43 = getelementptr i8, ptr %0, i64 28
  br label %56

44:                                               ; preds = %44, %2
  %45 = phi i32 [ %53, %44 ], [ %41, %2 ]
  %46 = phi i64 [ %54, %44 ], [ 15, %2 ]
  %47 = phi ptr [ %51, %44 ], [ %33, %2 ]
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -1028477379
  %50 = add i32 %49, %45
  %51 = getelementptr inbounds nuw i8, ptr %47, i64 4
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = add nsw i64 %46, -4
  %55 = icmp ugt i64 %54, 3
  br i1 %55, label %44, label %42

56:                                               ; preds = %42, %56
  %57 = phi i32 [ %66, %56 ], [ %53, %42 ]
  %58 = phi i64 [ %67, %56 ], [ 3, %42 ]
  %59 = phi ptr [ %60, %56 ], [ %43, %42 ]
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 1
  %61 = load i8, ptr %59, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 374761393
  %64 = add i32 %63, %57
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 11)
  %66 = mul i32 %65, -1640531535
  %67 = add nsw i64 %58, -1
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %56

69:                                               ; preds = %56
  %70 = lshr i32 %66, 15
  %71 = xor i32 %70, %66
  %72 = mul i32 %71, -2048144777
  %73 = lshr i32 %72, 13
  %74 = xor i32 %73, %72
  %75 = mul i32 %74, -1028477379
  %76 = lshr i32 %75, 16
  %77 = xor i32 %76, %75
  ret i32 %77
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @target_xxh32_len40(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i1 [ true, %2 ], [ false, %6 ]
  %8 = phi i64 [ 0, %2 ], [ 16, %6 ]
  %9 = phi i32 [ %3, %2 ], [ %19, %6 ]
  %10 = phi i32 [ %4, %2 ], [ %26, %6 ]
  %11 = phi i32 [ %1, %2 ], [ %33, %6 ]
  %12 = phi i32 [ %5, %2 ], [ %40, %6 ]
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %14 = load i32, ptr %13, align 1
  %15 = mul i32 %14, -2048144777
  %16 = add i32 %15, %9
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 13)
  %18 = mul i32 %17, -1640531535
  %19 = freeze i32 %18
  %20 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %21 = load i32, ptr %20, align 1
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %10
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = freeze i32 %25
  %27 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %28 = load i32, ptr %27, align 1
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %29, %11
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = mul i32 %31, -1640531535
  %33 = freeze i32 %32
  %34 = getelementptr inbounds nuw i8, ptr %13, i64 12
  %35 = load i32, ptr %34, align 1
  %36 = mul i32 %35, -2048144777
  %37 = add i32 %36, %12
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 13)
  %39 = mul i32 %38, -1640531535
  %40 = freeze i32 %39
  br i1 %7, label %6, label %41

41:                                               ; preds = %6
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 1)
  %44 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 7)
  %45 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 12)
  %46 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 18)
  %47 = add i32 %43, 40
  %48 = add i32 %47, %44
  %49 = add i32 %48, %45
  %50 = add i32 %49, %46
  br label %51

51:                                               ; preds = %51, %41
  %52 = phi i32 [ %60, %51 ], [ %50, %41 ]
  %53 = phi i64 [ %61, %51 ], [ 8, %41 ]
  %54 = phi ptr [ %58, %51 ], [ %42, %41 ]
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -1028477379
  %57 = add i32 %56, %52
  %58 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 17)
  %60 = mul i32 %59, 668265263
  %61 = add nsw i64 %53, -4
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %51

63:                                               ; preds = %51
  %64 = lshr i32 %60, 15
  %65 = xor i32 %64, %60
  %66 = mul i32 %65, -2048144777
  %67 = lshr i32 %66, 13
  %68 = xor i32 %67, %66
  %69 = mul i32 %68, -1028477379
  %70 = lshr i32 %69, 16
  %71 = xor i32 %70, %69
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = !{i64 2148108726}
!9 = distinct !{!9, !6}
