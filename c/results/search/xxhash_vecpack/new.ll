; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecpack/xxhash_vecpack.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecpack/xxhash_vecpack.c"
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
  %24 = insertelement <2 x i32> poison, i32 %17, i64 0
  %25 = insertelement <2 x i32> %24, i32 %14, i64 1
  %26 = bitcast <2 x i32> %25 to i64
  %27 = xor i64 %23, %26
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 49)
  %29 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 24)
  %30 = xor i64 %29, %28
  %31 = xor i64 %30, %27
  %32 = mul i64 %31, -6939452855193903323
  %33 = lshr i64 %32, 35
  %34 = add nuw nsw i64 %33, %1
  %35 = xor i64 %34, %32
  %36 = mul i64 %35, -6939452855193903323
  %37 = lshr i64 %36, 28
  %38 = xor i64 %37, %36
  ret i64 %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %129

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %78, !prof !5

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
  %63 = insertelement <2 x i32> poison, i32 %56, i64 0
  %64 = insertelement <2 x i32> %63, i32 %53, i64 1
  %65 = bitcast <2 x i32> %64 to i64
  %66 = xor i64 %62, %65
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 49)
  %68 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 24)
  %69 = xor i64 %68, %67
  %70 = xor i64 %69, %66
  %71 = mul i64 %70, -6939452855193903323
  %72 = lshr i64 %71, 35
  %73 = add nuw nsw i64 %72, %1
  %74 = xor i64 %73, %71
  %75 = mul i64 %74, -6939452855193903323
  %76 = lshr i64 %75, 28
  %77 = xor i64 %76, %75
  br label %129

78:                                               ; preds = %43
  %79 = icmp eq i64 %1, 0
  br i1 %79, label %114, label %80

80:                                               ; preds = %78
  %81 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %81)
  %82 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %82)
  %83 = load i8, ptr %0, align 1
  %84 = lshr i64 %1, 1
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 %84
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr i8, ptr %0, i64 %1
  %88 = getelementptr i8, ptr %87, i64 -1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %83 to i64
  %91 = shl nuw nsw i64 %90, 16
  %92 = zext i8 %86 to i64
  %93 = shl nuw nsw i64 %92, 24
  %94 = or disjoint i64 %93, %91
  %95 = zext i8 %89 to i64
  %96 = or disjoint i64 %94, %95
  %97 = shl nuw nsw i64 %1, 8
  %98 = or disjoint i64 %96, %97
  %99 = load i32, ptr %2, align 1
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %101 = load i32, ptr %100, align 1
  %102 = xor i32 %101, %99
  %103 = zext i32 %102 to i64
  %104 = add i64 %3, %103
  %105 = xor i64 %104, %98
  %106 = lshr i64 %105, 33
  %107 = xor i64 %106, %105
  %108 = mul i64 %107, -4417276706812531889
  %109 = lshr i64 %108, 29
  %110 = xor i64 %109, %108
  %111 = mul i64 %110, 1609587929392839161
  %112 = lshr i64 %111, 32
  %113 = xor i64 %112, %111
  br label %129

114:                                              ; preds = %78
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %116 = load i64, ptr %115, align 1
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %118 = load i64, ptr %117, align 1
  %119 = xor i64 %116, %118
  %120 = xor i64 %119, %3
  %121 = lshr i64 %120, 33
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, -4417276706812531889
  %124 = lshr i64 %123, 29
  %125 = xor i64 %124, %123
  %126 = mul i64 %125, 1609587929392839161
  %127 = lshr i64 %126, 32
  %128 = xor i64 %127, %126
  br label %129

129:                                              ; preds = %114, %80, %45, %7
  %130 = phi i64 [ %42, %7 ], [ %77, %45 ], [ %113, %80 ], [ %128, %114 ]
  ret i64 %130
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
