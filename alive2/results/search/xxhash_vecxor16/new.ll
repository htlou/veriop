; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecxor16/xxhash_vecxor16.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecxor16/xxhash_vecxor16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_9to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 %1, 8
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, %10
  %14 = add i64 %13, %3
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = sub i64 %19, %3
  %21 = icmp eq i64 %1, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load <2 x i64>, ptr %0, align 1
  %24 = insertelement <2 x i64> poison, i64 %14, i64 0
  %25 = insertelement <2 x i64> %24, i64 %20, i64 1
  %26 = xor <2 x i64> %23, %25
  %27 = extractelement <2 x i64> %26, i64 0
  %28 = extractelement <2 x i64> %26, i64 1
  br label %36

29:                                               ; preds = %4
  %30 = load i64, ptr %0, align 1
  %31 = xor i64 %30, %14
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %34, %20
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i64 [ %28, %22 ], [ %35, %29 ]
  %38 = phi i64 [ %27, %22 ], [ %31, %29 ]
  %39 = tail call noundef i64 @llvm.bswap.i64(i64 %38)
  %40 = zext i64 %38 to i128
  %41 = zext i64 %37 to i128
  %42 = mul nuw i128 %40, %41
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %37, %1
  %47 = add i64 %46, %39
  %48 = add i64 %47, %45
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  ret i64 %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %55, !prof !5

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
  %22 = icmp eq i64 %1, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load <2 x i64>, ptr %0, align 1
  %25 = insertelement <2 x i64> poison, i64 %15, i64 0
  %26 = insertelement <2 x i64> %25, i64 %21, i64 1
  %27 = xor <2 x i64> %24, %26
  %28 = extractelement <2 x i64> %27, i64 0
  %29 = extractelement <2 x i64> %27, i64 1
  br label %37

30:                                               ; preds = %7
  %31 = load i64, ptr %0, align 1
  %32 = xor i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, %21
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi i64 [ %29, %23 ], [ %36, %30 ]
  %39 = phi i64 [ %28, %23 ], [ %32, %30 ]
  %40 = tail call noundef i64 @llvm.bswap.i64(i64 %39)
  %41 = zext i64 %39 to i128
  %42 = zext i64 %38 to i128
  %43 = mul nuw i128 %41, %42
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %38, %1
  %48 = add i64 %47, %40
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %142

55:                                               ; preds = %4
  %56 = icmp samesign ugt i64 %1, 3
  br i1 %56, label %57, label %91, !prof !5

57:                                               ; preds = %55
  %58 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %58)
  %59 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %59)
  %60 = trunc i64 %3 to i32
  %61 = tail call noundef i32 @llvm.bswap.i32(i32 %60)
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = xor i64 %63, %3
  %65 = load i32, ptr %0, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %67 = getelementptr inbounds i8, ptr %66, i64 -4
  %68 = load i32, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %64
  %75 = zext i32 %68 to i64
  %76 = zext i32 %65 to i64
  %77 = shl nuw i64 %76, 32
  %78 = or disjoint i64 %77, %75
  %79 = xor i64 %74, %78
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 49)
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 24)
  %82 = xor i64 %80, %81
  %83 = xor i64 %82, %79
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 35
  %86 = add nuw nsw i64 %85, %1
  %87 = xor i64 %86, %84
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 28
  %90 = xor i64 %89, %88
  br label %142

91:                                               ; preds = %55
  %92 = icmp eq i64 %1, 0
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %94)
  %95 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %95)
  %96 = load i8, ptr %0, align 1
  %97 = lshr i64 %1, 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 %1
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %96 to i64
  %104 = shl nuw nsw i64 %103, 16
  %105 = zext i8 %99 to i64
  %106 = shl nuw nsw i64 %105, 24
  %107 = or disjoint i64 %106, %104
  %108 = zext i8 %102 to i64
  %109 = or disjoint i64 %107, %108
  %110 = shl nuw nsw i64 %1, 8
  %111 = or disjoint i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %91
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %93, %57, %37
  %143 = phi i64 [ %54, %37 ], [ %90, %57 ], [ %126, %93 ], [ %141, %127 ]
  ret i64 %143
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
