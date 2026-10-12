; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/00d5458/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/00d5458/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_4to8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, -9
  %4 = icmp ult i64 %3, -5
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = getelementptr inbounds i8, ptr %7, i64 -4
  %9 = load i32, ptr %8, align 1
  %10 = xor i32 %6, 963444408
  %11 = xor i32 %9, -1102339037
  %12 = zext i32 %10 to i64
  %13 = zext i32 %11 to i64
  %14 = mul nuw i64 %13, %12
  %15 = zext i32 %6 to i64
  %16 = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %15)
  %17 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 23)
  %18 = zext i32 %17 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or disjoint i64 %16, %1
  %21 = add i64 %20, %14
  %22 = add i64 %21, %19
  %23 = lshr i64 %22, 59
  %24 = lshr i64 %22, 37
  %25 = xor i64 %23, %24
  %26 = xor i64 %25, %22
  %27 = mul i64 %26, 1609587791953885689
  %28 = lshr i64 %27, 32
  %29 = xor i64 %28, %27
  br label %30

30:                                               ; preds = %2, %5
  %31 = phi i64 [ %29, %5 ], [ 0, %2 ]
  ret i64 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_4to8(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -9
  %5 = icmp ult i64 %4, -5
  br i1 %5, label %36, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -4
  %10 = load i32, ptr %9, align 1
  %11 = lshr i64 %2, 32
  %12 = trunc nuw i64 %11 to i32
  %13 = add i32 %12, 963444408
  %14 = xor i32 %7, %13
  %15 = trunc i64 %2 to i32
  %16 = sub i32 -1102339037, %15
  %17 = xor i32 %10, %16
  %18 = zext i32 %14 to i64
  %19 = zext i32 %17 to i64
  %20 = mul nuw i64 %19, %18
  %21 = zext i32 %7 to i64
  %22 = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %21)
  %23 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 23)
  %24 = zext i32 %23 to i64
  %25 = shl nuw i64 %24, 32
  %26 = or disjoint i64 %22, %1
  %27 = add i64 %26, %20
  %28 = add i64 %27, %25
  %29 = lshr i64 %28, 59
  %30 = lshr i64 %28, 37
  %31 = xor i64 %29, %30
  %32 = xor i64 %31, %28
  %33 = mul i64 %32, 1609587791953885689
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  br label %36

36:                                               ; preds = %3, %6
  %37 = phi i64 [ %35, %6 ], [ 0, %3 ]
  ret i64 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_secret_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -9
  %6 = icmp ult i64 %5, -5
  %7 = icmp ult i64 %3, 136
  %8 = or i1 %6, %7
  br i1 %8, label %37, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %2, align 1
  %11 = getelementptr i8, ptr %2, i64 4
  %12 = load i32, ptr %11, align 1
  %13 = load i32, ptr %0, align 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 1
  %17 = xor i32 %13, %10
  %18 = xor i32 %16, %12
  %19 = zext i32 %17 to i64
  %20 = zext i32 %18 to i64
  %21 = mul nuw i64 %20, %19
  %22 = zext i32 %13 to i64
  %23 = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %22)
  %24 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 23)
  %25 = zext i32 %24 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or disjoint i64 %23, %1
  %28 = add i64 %27, %21
  %29 = add i64 %28, %26
  %30 = lshr i64 %29, 59
  %31 = lshr i64 %29, 37
  %32 = xor i64 %30, %31
  %33 = xor i64 %32, %29
  %34 = mul i64 %33, 1609587791953885689
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  br label %37

37:                                               ; preds = %4, %9
  %38 = phi i64 [ %36, %9 ], [ 0, %4 ]
  ret i64 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_0to16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 16
  br i1 %4, label %89, label %5

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %26, !prof !5

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = xor i64 %8, -4734510112055689544
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = load i64, ptr %11, align 1
  %13 = sub i64 2066345149520216444, %2
  %14 = xor i64 %12, %13
  %15 = zext i64 %9 to i128
  %16 = zext i64 %14 to i128
  %17 = mul nuw i128 %16, %15
  %18 = lshr i128 %17, 64
  %19 = xor i128 %18, %17
  %20 = trunc i128 %19 to i64
  %21 = add i64 %9, %1
  %22 = add i64 %21, %14
  %23 = add i64 %22, %20
  %24 = lshr i64 %23, 37
  %25 = xor i64 %24, %23
  br label %84

26:                                               ; preds = %5
  %27 = icmp samesign ugt i64 %1, 3
  br i1 %27, label %28, label %55, !prof !5

28:                                               ; preds = %26
  %29 = load i32, ptr %0, align 1
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %31 = getelementptr inbounds i8, ptr %30, i64 -4
  %32 = load i32, ptr %31, align 1
  %33 = lshr i64 %2, 32
  %34 = trunc nuw i64 %33 to i32
  %35 = add i32 %34, 963444408
  %36 = xor i32 %29, %35
  %37 = trunc i64 %2 to i32
  %38 = sub i32 -1102339037, %37
  %39 = xor i32 %32, %38
  %40 = zext i32 %36 to i64
  %41 = zext i32 %39 to i64
  %42 = mul nuw i64 %41, %40
  %43 = zext i32 %29 to i64
  %44 = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %43)
  %45 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 23)
  %46 = zext i32 %45 to i64
  %47 = shl nuw i64 %46, 32
  %48 = or disjoint i64 %44, %1
  %49 = add i64 %48, %42
  %50 = add i64 %49, %47
  %51 = lshr i64 %50, 59
  %52 = lshr i64 %50, 37
  %53 = xor i64 %51, %52
  %54 = xor i64 %53, %50
  br label %84

55:                                               ; preds = %26
  %56 = icmp eq i64 %1, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %55
  %58 = load i8, ptr %0, align 1
  %59 = lshr i64 %1, 1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr i8, ptr %0, i64 %1
  %63 = getelementptr i8, ptr %62, i64 -1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %58 to i64
  %66 = shl nuw nsw i64 %65, 16
  %67 = zext i8 %61 to i64
  %68 = shl nuw nsw i64 %67, 24
  %69 = or disjoint i64 %68, %66
  %70 = zext i8 %64 to i64
  %71 = or disjoint i64 %69, %70
  %72 = shl nuw nsw i64 %1, 8
  %73 = or disjoint i64 %71, %72
  %74 = add i64 %2, 963444408
  %75 = xor i64 %73, %74
  %76 = mul i64 %75, -7046029288634856825
  %77 = lshr i64 %76, 37
  %78 = xor i64 %77, %76
  br label %84

79:                                               ; preds = %55
  %80 = add i64 %2, -7046029288634856825
  %81 = xor i64 %80, -4734510112055689544
  %82 = lshr i64 %81, 37
  %83 = xor i64 %82, %81
  br label %84

84:                                               ; preds = %7, %28, %57, %79
  %85 = phi i64 [ %83, %79 ], [ %78, %57 ], [ %54, %28 ], [ %25, %7 ]
  %86 = mul i64 %85, 1609587791953885689
  %87 = lshr i64 %86, 32
  %88 = xor i64 %87, %86
  br label %89

89:                                               ; preds = %3, %84
  %90 = phi i64 [ %88, %84 ], [ 0, %3 ]
  ret i64 %90
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
