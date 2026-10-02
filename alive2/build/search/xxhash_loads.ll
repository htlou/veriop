; ModuleID = 'alive2/experiments/xxhash_loads.c'
source_filename = "alive2/experiments/xxhash_loads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_1to3(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i64 %1, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load i8, ptr %0, align 1
  %10 = zext i8 %9 to i64
  %11 = mul nuw nsw i64 %10, 16842753
  %12 = or i64 %11, 256
  br label %24

13:                                               ; preds = %4
  %14 = load i16, ptr %0, align 1
  %15 = zext i16 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = getelementptr i8, ptr %0, i64 %1
  %18 = getelementptr i8, ptr %17, i64 -1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = or disjoint i64 %16, %20
  %22 = shl nuw nsw i64 %1, 8
  %23 = or disjoint i64 %21, %22
  br label %24

24:                                               ; preds = %13, %8
  %25 = phi i64 [ %12, %8 ], [ %23, %13 ]
  %26 = load i32, ptr %2, align 1
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %28 = load i32, ptr %27, align 1
  %29 = xor i32 %28, %26
  %30 = zext i32 %29 to i64
  %31 = add i64 %3, %30
  %32 = lshr i64 %31, 33
  %33 = xor i64 %25, %32
  %34 = xor i64 %33, %31
  %35 = mul i64 %34, -4417276706812531889
  %36 = lshr i64 %35, 29
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  ret i64 %40
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_4to8(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 %1, 3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 9
  tail call void @llvm.assume(i1 %6)
  %7 = icmp eq i64 %1, 8
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i64, ptr %0, align 1
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 32)
  br label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -4
  %14 = load i32, ptr %13, align 1
  %15 = zext i32 %14 to i64
  %16 = load i32, ptr %0, align 1
  %17 = zext i32 %16 to i64
  %18 = shl nuw i64 %17, 32
  %19 = or disjoint i64 %18, %15
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi i64 [ %10, %8 ], [ %19, %11 ]
  %22 = trunc i64 %3 to i32
  %23 = tail call noundef i32 @llvm.bswap.i32(i32 %22)
  %24 = zext i32 %23 to i64
  %25 = shl nuw i64 %24, 32
  %26 = xor i64 %25, %3
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %30 = load i64, ptr %29, align 1
  %31 = xor i64 %30, %28
  %32 = sub i64 %31, %26
  %33 = xor i64 %32, %21
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 49)
  %35 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 24)
  %36 = xor i64 %34, %35
  %37 = xor i64 %36, %33
  %38 = mul i64 %37, -6939452855193903323
  %39 = lshr i64 %38, 35
  %40 = add nuw nsw i64 %39, %1
  %41 = xor i64 %40, %38
  %42 = mul i64 %41, -6939452855193903323
  %43 = lshr i64 %42, 28
  %44 = xor i64 %43, %42
  ret i64 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %43

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = load i64, ptr %0, align 1
  %23 = xor i64 %22, %15
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, %1
  %30 = add i64 %29, %27
  %31 = zext i64 %23 to i128
  %32 = zext i64 %27 to i128
  %33 = mul nuw i128 %32, %31
  %34 = lshr i128 %33, 64
  %35 = xor i128 %34, %33
  %36 = trunc i128 %35 to i64
  %37 = add i64 %30, %36
  %38 = lshr i64 %37, 37
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, 1609587791953885689
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  br label %133

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %84

45:                                               ; preds = %43
  %46 = icmp eq i64 %1, 8
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i64, ptr %0, align 1
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 32)
  br label %59

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %59

59:                                               ; preds = %47, %50
  %60 = phi i64 [ %49, %47 ], [ %58, %50 ]
  %61 = trunc i64 %3 to i32
  %62 = tail call noundef i32 @llvm.bswap.i32(i32 %61)
  %63 = zext i32 %62 to i64
  %64 = shl nuw i64 %63, 32
  %65 = xor i64 %64, %3
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %69 = load i64, ptr %68, align 1
  %70 = xor i64 %69, %67
  %71 = sub i64 %70, %65
  %72 = xor i64 %71, %60
  %73 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 49)
  %74 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 24)
  %75 = xor i64 %74, %73
  %76 = xor i64 %75, %72
  %77 = mul i64 %76, -6939452855193903323
  %78 = lshr i64 %77, 35
  %79 = add nuw nsw i64 %78, %1
  %80 = xor i64 %79, %77
  %81 = mul i64 %80, -6939452855193903323
  %82 = lshr i64 %81, 28
  %83 = xor i64 %82, %81
  br label %133

84:                                               ; preds = %43
  switch i64 %1, label %90 [
    i64 0, label %118
    i64 1, label %85
  ]

85:                                               ; preds = %84
  %86 = load i8, ptr %0, align 1
  %87 = zext i8 %86 to i64
  %88 = mul nuw nsw i64 %87, 16842753
  %89 = or i64 %88, 256
  br label %101

90:                                               ; preds = %84
  %91 = load i16, ptr %0, align 1
  %92 = zext i16 %91 to i64
  %93 = shl nuw nsw i64 %92, 16
  %94 = getelementptr i8, ptr %0, i64 %1
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i64
  %98 = or disjoint i64 %93, %97
  %99 = shl nuw nsw i64 %1, 8
  %100 = or disjoint i64 %98, %99
  br label %101

101:                                              ; preds = %85, %90
  %102 = phi i64 [ %89, %85 ], [ %100, %90 ]
  %103 = load i32, ptr %2, align 1
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %105 = load i32, ptr %104, align 1
  %106 = xor i32 %105, %103
  %107 = zext i32 %106 to i64
  %108 = add i64 %3, %107
  %109 = lshr i64 %108, 33
  %110 = xor i64 %102, %109
  %111 = xor i64 %110, %108
  %112 = mul i64 %111, -4417276706812531889
  %113 = lshr i64 %112, 29
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, 1609587929392839161
  %116 = lshr i64 %115, 32
  %117 = xor i64 %116, %115
  br label %133

118:                                              ; preds = %84
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %120 = load i64, ptr %119, align 1
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %122 = load i64, ptr %121, align 1
  %123 = xor i64 %120, %122
  %124 = xor i64 %123, %3
  %125 = lshr i64 %124, 33
  %126 = xor i64 %125, %124
  %127 = mul i64 %126, -4417276706812531889
  %128 = lshr i64 %127, 29
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, 1609587929392839161
  %131 = lshr i64 %130, 32
  %132 = xor i64 %131, %130
  br label %133

133:                                              ; preds = %118, %101, %59, %7
  %134 = phi i64 [ %42, %7 ], [ %83, %59 ], [ %117, %101 ], [ %132, %118 ]
  ret i64 %134
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
