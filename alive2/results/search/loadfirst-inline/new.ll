; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/loadfirst-inline/xxhash_loadfirst.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/loadfirst-inline/xxhash_loadfirst.c"
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
  %9 = icmp eq i64 %1, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load i8, ptr %0, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 16
  %14 = shl nuw nsw i64 %12, 24
  %15 = or disjoint i64 %14, %13
  %16 = or disjoint i64 %15, %12
  br label %26

17:                                               ; preds = %4
  %18 = load i16, ptr %0, align 1
  %19 = zext i16 %18 to i64
  %20 = shl nuw nsw i64 %19, 16
  %21 = getelementptr i8, ptr %0, i64 %1
  %22 = getelementptr i8, ptr %21, i64 -1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = or disjoint i64 %20, %24
  br label %26

26:                                               ; preds = %17, %10
  %27 = phi i64 [ %16, %10 ], [ %25, %17 ]
  %28 = shl nuw nsw i64 %1, 8
  %29 = or i64 %27, %28
  %30 = load i32, ptr %2, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %32 = load i32, ptr %31, align 1
  %33 = xor i32 %32, %30
  %34 = zext i32 %33 to i64
  %35 = add i64 %3, %34
  %36 = xor i64 %35, %29
  %37 = lshr i64 %36, 33
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, -4417276706812531889
  %40 = lshr i64 %39, 29
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, 1609587929392839161
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  ret i64 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

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
  %9 = icmp eq i64 %1, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i64, ptr %0, align 1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 32)
  br label %22

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 1
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %0, align 1
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or disjoint i64 %20, %17
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i64 [ %12, %10 ], [ %21, %13 ]
  %24 = trunc i64 %3 to i32
  %25 = tail call noundef i32 @llvm.bswap.i32(i32 %24)
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  %28 = xor i64 %27, %3
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %32, %30
  %34 = sub i64 %33, %28
  %35 = xor i64 %34, %23
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 49)
  %37 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 24)
  %38 = xor i64 %36, %37
  %39 = xor i64 %38, %35
  %40 = mul i64 %39, -6939452855193903323
  %41 = lshr i64 %40, 35
  %42 = add nuw nsw i64 %41, %1
  %43 = xor i64 %42, %40
  %44 = mul i64 %43, -6939452855193903323
  %45 = lshr i64 %44, 28
  %46 = xor i64 %45, %44
  ret i64 %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 %1, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 %1, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %17, %16
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 %1
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 %1, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %140

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %140

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 %1, 9
  %65 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %65)
  %66 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %66)
  br i1 %64, label %67, label %106

67:                                               ; preds = %63
  %68 = trunc i64 %3 to i32
  %69 = tail call noundef i32 @llvm.bswap.i32(i32 %68)
  %70 = icmp eq i64 %1, 8
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, ptr %0, align 1
  %73 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 32)
  br label %83

74:                                               ; preds = %67
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %76 = getelementptr inbounds i8, ptr %75, i64 -4
  %77 = load i32, ptr %76, align 1
  %78 = zext i32 %77 to i64
  %79 = load i32, ptr %0, align 1
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = or disjoint i64 %81, %78
  br label %83

83:                                               ; preds = %71, %74
  %84 = phi i64 [ %73, %71 ], [ %82, %74 ]
  %85 = zext i32 %69 to i64
  %86 = shl nuw i64 %85, 32
  %87 = xor i64 %86, %3
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %89 = load i64, ptr %88, align 1
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %91 = load i64, ptr %90, align 1
  %92 = xor i64 %91, %89
  %93 = sub i64 %92, %87
  %94 = xor i64 %93, %84
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 49)
  %96 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 24)
  %97 = xor i64 %95, %96
  %98 = xor i64 %97, %94
  %99 = mul i64 %98, -6939452855193903323
  %100 = lshr i64 %99, 35
  %101 = add nuw nsw i64 %100, %1
  %102 = xor i64 %101, %99
  %103 = mul i64 %102, -6939452855193903323
  %104 = lshr i64 %103, 28
  %105 = xor i64 %104, %103
  br label %140

106:                                              ; preds = %63
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %108 = load i64, ptr %107, align 1
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %110 = load i64, ptr %109, align 1
  %111 = xor i64 %110, %108
  %112 = add i64 %111, %3
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %114 = load i64, ptr %113, align 1
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %116 = load i64, ptr %115, align 1
  %117 = xor i64 %116, %114
  %118 = sub i64 %117, %3
  %119 = load i64, ptr %0, align 1
  %120 = xor i64 %119, %112
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %122 = getelementptr inbounds i8, ptr %121, i64 -8
  %123 = load i64, ptr %122, align 1
  %124 = xor i64 %123, %118
  %125 = tail call noundef i64 @llvm.bswap.i64(i64 %120)
  %126 = add i64 %125, %1
  %127 = add i64 %126, %124
  %128 = zext i64 %120 to i128
  %129 = zext i64 %124 to i128
  %130 = mul nuw i128 %129, %128
  %131 = lshr i128 %130, 64
  %132 = xor i128 %131, %130
  %133 = trunc i128 %132 to i64
  %134 = add i64 %127, %133
  %135 = lshr i64 %134, 37
  %136 = xor i64 %135, %134
  %137 = mul i64 %136, 1609587791953885689
  %138 = lshr i64 %137, 32
  %139 = xor i64 %138, %137
  br label %140

140:                                              ; preds = %106, %83, %48, %29
  %141 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %105, %83 ], [ %139, %106 ]
  ret i64 %141
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
