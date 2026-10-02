; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecbytes_len/xxhash_vecbytes_len.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecbytes_len/xxhash_vecbytes_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_1to3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i64 %1, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = getelementptr i8, ptr %0, i64 %1
  %10 = getelementptr i8, ptr %9, i64 -1
  %11 = load i8, ptr %10, align 1
  %12 = insertelement <4 x i8> <i8 poison, i8 0, i8 poison, i8 poison>, i8 %11, i64 0
  %13 = load i8, ptr %0, align 1
  %14 = insertelement <4 x i8> %12, i8 %13, i64 2
  %15 = lshr i64 %1, 1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = insertelement <4 x i8> %14, i8 %17, i64 3
  %19 = bitcast <4 x i8> %18 to i32
  %20 = load i32, ptr %2, align 1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %22 = load i32, ptr %21, align 1
  %23 = xor i32 %22, %20
  %24 = zext i32 %23 to i64
  %25 = add i64 %3, %24
  %26 = zext i32 %19 to i64
  %27 = shl nuw nsw i64 %1, 8
  %28 = or disjoint i64 %27, %26
  %29 = lshr i64 %25, 33
  %30 = xor i64 %28, %29
  %31 = xor i64 %30, %25
  %32 = mul i64 %31, -4417276706812531889
  %33 = lshr i64 %32, 29
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, 1609587929392839161
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  ret i64 %37
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
  br label %128

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %79, !prof !5

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
  %63 = zext i32 %56 to i64
  %64 = zext i32 %53 to i64
  %65 = shl nuw i64 %64, 32
  %66 = or disjoint i64 %65, %63
  %67 = xor i64 %62, %66
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 24)
  %70 = xor i64 %68, %69
  %71 = xor i64 %70, %67
  %72 = mul i64 %71, -6939452855193903323
  %73 = lshr i64 %72, 35
  %74 = add nuw nsw i64 %73, %1
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %128

79:                                               ; preds = %43
  %80 = icmp eq i64 %1, 0
  br i1 %80, label %113, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = getelementptr i8, ptr %0, i64 %1
  %85 = getelementptr i8, ptr %84, i64 -1
  %86 = load i8, ptr %85, align 1
  %87 = insertelement <4 x i8> <i8 poison, i8 0, i8 poison, i8 poison>, i8 %86, i64 0
  %88 = load i8, ptr %0, align 1
  %89 = insertelement <4 x i8> %87, i8 %88, i64 2
  %90 = lshr i64 %1, 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = insertelement <4 x i8> %89, i8 %92, i64 3
  %94 = bitcast <4 x i8> %93 to i32
  %95 = load i32, ptr %2, align 1
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %97 = load i32, ptr %96, align 1
  %98 = xor i32 %97, %95
  %99 = zext i32 %98 to i64
  %100 = add i64 %3, %99
  %101 = zext i32 %94 to i64
  %102 = shl nuw nsw i64 %1, 8
  %103 = or disjoint i64 %102, %101
  %104 = lshr i64 %100, 33
  %105 = xor i64 %103, %104
  %106 = xor i64 %105, %100
  %107 = mul i64 %106, -4417276706812531889
  %108 = lshr i64 %107, 29
  %109 = xor i64 %108, %107
  %110 = mul i64 %109, 1609587929392839161
  %111 = lshr i64 %110, 32
  %112 = xor i64 %111, %110
  br label %128

113:                                              ; preds = %79
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %117 = load i64, ptr %116, align 1
  %118 = xor i64 %115, %117
  %119 = xor i64 %118, %3
  %120 = lshr i64 %119, 33
  %121 = xor i64 %120, %119
  %122 = mul i64 %121, -4417276706812531889
  %123 = lshr i64 %122, 29
  %124 = xor i64 %123, %122
  %125 = mul i64 %124, 1609587929392839161
  %126 = lshr i64 %125, 32
  %127 = xor i64 %126, %125
  br label %128

128:                                              ; preds = %113, %81, %45, %7
  %129 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %112, %81 ], [ %127, %113 ]
  ret i64 %129
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
