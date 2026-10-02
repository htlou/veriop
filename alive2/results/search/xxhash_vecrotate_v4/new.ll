; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecrotate_v4/xxhash_vecrotate.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecrotate_v4/xxhash_vecrotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 %1, 3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 9
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = trunc i64 %3 to i32
  %10 = tail call noundef i32 @llvm.bswap.i32(i32 %9)
  %11 = zext i32 %10 to i64
  %12 = shl nuw i64 %11, 32
  %13 = xor i64 %12, %3
  %14 = load i32, ptr %0, align 1
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %16 = getelementptr inbounds i8, ptr %15, i64 -4
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %21 = load i64, ptr %20, align 1
  %22 = xor i64 %21, %19
  %23 = sub i64 %22, %13
  %24 = zext i32 %14 to i64
  %25 = shl nuw i64 %24, 32
  %26 = zext i32 %17 to i64
  %27 = or disjoint i64 %25, %26
  %28 = xor i64 %23, %27
  %29 = insertelement <2 x i64> poison, i64 %28, i64 0
  %30 = shufflevector <2 x i64> %29, <2 x i64> poison, <2 x i32> zeroinitializer
  %31 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %30, <2 x i64> %30, <2 x i64> <i64 49, i64 24>)
  %32 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %33 = xor <2 x i64> %32, %31
  %34 = extractelement <2 x i64> %33, i64 0
  %35 = xor i64 %34, %28
  %36 = mul i64 %35, -6939452855193903323
  %37 = lshr i64 %36, 35
  %38 = add nuw nsw i64 %37, %1
  %39 = xor i64 %38, %36
  %40 = mul i64 %39, -6939452855193903323
  %41 = lshr i64 %40, 28
  %42 = xor i64 %41, %40
  ret i64 %42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %43, !prof !5

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
  br i1 %44, label %45, label %82, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = zext i32 %49 to i64
  %51 = shl nuw i64 %50, 32
  %52 = xor i64 %51, %3
  %53 = load i32, ptr %0, align 1
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = zext i32 %53 to i64
  %64 = shl nuw i64 %63, 32
  %65 = zext i32 %56 to i64
  %66 = or disjoint i64 %64, %65
  %67 = xor i64 %62, %66
  %68 = insertelement <2 x i64> poison, i64 %67, i64 0
  %69 = shufflevector <2 x i64> %68, <2 x i64> poison, <2 x i32> zeroinitializer
  %70 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %69, <2 x i64> %69, <2 x i64> <i64 49, i64 24>)
  %71 = shufflevector <2 x i64> %70, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %72 = xor <2 x i64> %71, %70
  %73 = extractelement <2 x i64> %72, i64 0
  %74 = xor i64 %73, %67
  %75 = mul i64 %74, -6939452855193903323
  %76 = lshr i64 %75, 35
  %77 = add nuw nsw i64 %76, %1
  %78 = xor i64 %77, %75
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 28
  %81 = xor i64 %80, %79
  br label %133

82:                                               ; preds = %43
  %83 = icmp eq i64 %1, 0
  br i1 %83, label %118, label %84

84:                                               ; preds = %82
  %85 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %85)
  %86 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %86)
  %87 = load i8, ptr %0, align 1
  %88 = lshr i64 %1, 1
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 %88
  %90 = load i8, ptr %89, align 1
  %91 = getelementptr i8, ptr %0, i64 %1
  %92 = getelementptr i8, ptr %91, i64 -1
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %87 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = zext i8 %90 to i64
  %97 = shl nuw nsw i64 %96, 24
  %98 = or disjoint i64 %97, %95
  %99 = zext i8 %93 to i64
  %100 = or disjoint i64 %98, %99
  %101 = shl nuw nsw i64 %1, 8
  %102 = or disjoint i64 %100, %101
  %103 = load i32, ptr %2, align 1
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %105 = load i32, ptr %104, align 1
  %106 = xor i32 %105, %103
  %107 = zext i32 %106 to i64
  %108 = add i64 %3, %107
  %109 = xor i64 %108, %102
  %110 = lshr i64 %109, 33
  %111 = xor i64 %110, %109
  %112 = mul i64 %111, -4417276706812531889
  %113 = lshr i64 %112, 29
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, 1609587929392839161
  %116 = lshr i64 %115, 32
  %117 = xor i64 %116, %115
  br label %133

118:                                              ; preds = %82
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

133:                                              ; preds = %118, %84, %45, %7
  %134 = phi i64 [ %42, %7 ], [ %81, %45 ], [ %117, %84 ], [ %132, %118 ]
  ret i64 %134
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
