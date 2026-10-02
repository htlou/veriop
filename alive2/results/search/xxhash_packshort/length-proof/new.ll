; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_packshort/xxhash_packshort.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_packshort/xxhash_packshort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


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

define dso_local i64 @target_1to3_len1(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i64 1, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 1, 4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp eq i64 1, 1
  %10 = load i8, ptr %0, align 1
  %11 = zext i8 %10 to i64
  br i1 %9, label %12, label %17

12:                                               ; preds = %4
  %13 = shl nuw nsw i64 %11, 16
  %14 = shl nuw nsw i64 %11, 24
  %15 = or disjoint i64 %14, %13
  %16 = or disjoint i64 %15, %11
  br label %32

17:                                               ; preds = %4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = icmp eq i64 1, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i64
  br label %26

26:                                               ; preds = %17, %22
  %27 = phi i64 [ %25, %22 ], [ %20, %17 ]
  %28 = shl nuw nsw i64 %20, 24
  %29 = shl nuw nsw i64 %11, 16
  %30 = or disjoint i64 %28, %29
  %31 = or disjoint i64 %30, %27
  br label %32

32:                                               ; preds = %26, %12
  %33 = phi i64 [ %16, %12 ], [ %31, %26 ]
  %34 = shl nuw nsw i64 1, 8
  %35 = or i64 %33, %34
  %36 = load i32, ptr %2, align 1
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %38 = load i32, ptr %37, align 1
  %39 = xor i32 %38, %36
  %40 = zext i32 %39 to i64
  %41 = add i64 %3, %40
  %42 = xor i64 %41, %35
  %43 = lshr i64 %42, 33
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, -4417276706812531889
  %46 = lshr i64 %45, 29
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, 1609587929392839161
  %49 = lshr i64 %48, 32
  %50 = xor i64 %49, %48
  ret i64 %50
}

define dso_local i64 @target_1to3_len2(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i64 2, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 2, 4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp eq i64 2, 1
  %10 = load i8, ptr %0, align 1
  %11 = zext i8 %10 to i64
  br i1 %9, label %12, label %17

12:                                               ; preds = %4
  %13 = shl nuw nsw i64 %11, 16
  %14 = shl nuw nsw i64 %11, 24
  %15 = or disjoint i64 %14, %13
  %16 = or disjoint i64 %15, %11
  br label %32

17:                                               ; preds = %4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = icmp eq i64 2, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i64
  br label %26

26:                                               ; preds = %17, %22
  %27 = phi i64 [ %25, %22 ], [ %20, %17 ]
  %28 = shl nuw nsw i64 %20, 24
  %29 = shl nuw nsw i64 %11, 16
  %30 = or disjoint i64 %28, %29
  %31 = or disjoint i64 %30, %27
  br label %32

32:                                               ; preds = %26, %12
  %33 = phi i64 [ %16, %12 ], [ %31, %26 ]
  %34 = shl nuw nsw i64 2, 8
  %35 = or i64 %33, %34
  %36 = load i32, ptr %2, align 1
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %38 = load i32, ptr %37, align 1
  %39 = xor i32 %38, %36
  %40 = zext i32 %39 to i64
  %41 = add i64 %3, %40
  %42 = xor i64 %41, %35
  %43 = lshr i64 %42, 33
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, -4417276706812531889
  %46 = lshr i64 %45, 29
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, 1609587929392839161
  %49 = lshr i64 %48, 32
  %50 = xor i64 %49, %48
  ret i64 %50
}

define dso_local i64 @target_1to3_len3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i64 3, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 3, 4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp eq i64 3, 1
  %10 = load i8, ptr %0, align 1
  %11 = zext i8 %10 to i64
  br i1 %9, label %12, label %17

12:                                               ; preds = %4
  %13 = shl nuw nsw i64 %11, 16
  %14 = shl nuw nsw i64 %11, 24
  %15 = or disjoint i64 %14, %13
  %16 = or disjoint i64 %15, %11
  br label %32

17:                                               ; preds = %4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = icmp eq i64 3, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i64
  br label %26

26:                                               ; preds = %17, %22
  %27 = phi i64 [ %25, %22 ], [ %20, %17 ]
  %28 = shl nuw nsw i64 %20, 24
  %29 = shl nuw nsw i64 %11, 16
  %30 = or disjoint i64 %28, %29
  %31 = or disjoint i64 %30, %27
  br label %32

32:                                               ; preds = %26, %12
  %33 = phi i64 [ %16, %12 ], [ %31, %26 ]
  %34 = shl nuw nsw i64 3, 8
  %35 = or i64 %33, %34
  %36 = load i32, ptr %2, align 1
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %38 = load i32, ptr %37, align 1
  %39 = xor i32 %38, %36
  %40 = zext i32 %39 to i64
  %41 = add i64 %3, %40
  %42 = xor i64 %41, %35
  %43 = lshr i64 %42, 33
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, -4417276706812531889
  %46 = lshr i64 %45, 29
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, 1609587929392839161
  %49 = lshr i64 %48, 32
  %50 = xor i64 %49, %48
  ret i64 %50
}

define dso_local i64 @target_0to16_len0(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 0, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 0, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 0
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 0
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 0, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 0
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
  %74 = add nuw nsw i64 %73, 0
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 0, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 0, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 0, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 0, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len1(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 1, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 1
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 1, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 1
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
  %74 = add nuw nsw i64 %73, 1
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 1, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 1, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 1, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 1, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len2(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 2, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 2, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 2
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 2, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 2
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
  %74 = add nuw nsw i64 %73, 2
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 2, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 2, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 2, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 2, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 3, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 3, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 3
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 3, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 3
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
  %74 = add nuw nsw i64 %73, 3
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 3, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 3, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 3, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 3, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len4(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 4, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 4, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 4
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 4, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 4
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
  %74 = add nuw nsw i64 %73, 4
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 4, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 4, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 4, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 4, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len5(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 5, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 5, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 5
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 5, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 5
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
  %74 = add nuw nsw i64 %73, 5
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 5, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 5, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 5, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 5, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len6(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 6, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 6, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 6
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 6, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 6
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
  %74 = add nuw nsw i64 %73, 6
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 6, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 6, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 6, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 6, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len7(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 7, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 7, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 7
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 7, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 7
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
  %74 = add nuw nsw i64 %73, 7
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 7, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 7, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 7, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 7, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 8, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 8, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 8
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 8, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 8
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
  %74 = add nuw nsw i64 %73, 8
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 8, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 8, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 8, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 8, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len9(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 9, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 9, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 9
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 9, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 9
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
  %74 = add nuw nsw i64 %73, 9
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 9, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 9, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 9, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 9, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len10(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 10, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 10, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 10
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 10, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 10
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
  %74 = add nuw nsw i64 %73, 10
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 10, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 10, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 10, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 10, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len11(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 11, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 11, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 11
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 11, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 11
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
  %74 = add nuw nsw i64 %73, 11
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 11, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 11, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 11, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 11, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len12(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 12, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 12, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 12
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 12, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 12
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
  %74 = add nuw nsw i64 %73, 12
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 12, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 12, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 12, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 12, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len13(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 13, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 13, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 13
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 13, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 13
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
  %74 = add nuw nsw i64 %73, 13
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 13, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 13, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 13, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 13, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len14(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 14, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 14, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 14
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 14, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 14
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
  %74 = add nuw nsw i64 %73, 14
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 14, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 14, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 14, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 14, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len15(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 15, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 15, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 15
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 15, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 15
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
  %74 = add nuw nsw i64 %73, 15
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 15, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 15, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 15, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 15, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}

define dso_local i64 @target_0to16_len16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 16, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 16, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 16
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
  br label %141

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 16, 3
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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 16
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
  %74 = add nuw nsw i64 %73, 16
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 16, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 16, 1
  %85 = load i8, ptr %0, align 1
  %86 = zext i8 %85 to i64
  br i1 %84, label %87, label %92

87:                                               ; preds = %81
  %88 = shl nuw nsw i64 %86, 16
  %89 = shl nuw nsw i64 %86, 24
  %90 = or disjoint i64 %89, %88
  %91 = or disjoint i64 %90, %86
  br label %107

92:                                               ; preds = %81
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 16, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i64 [ %100, %97 ], [ %95, %92 ]
  %103 = shl nuw nsw i64 %95, 24
  %104 = shl nuw nsw i64 %86, 16
  %105 = or disjoint i64 %103, %104
  %106 = or disjoint i64 %105, %102
  br label %107

107:                                              ; preds = %87, %101
  %108 = phi i64 [ %91, %87 ], [ %106, %101 ]
  %109 = shl nuw nsw i64 16, 8
  %110 = or i64 %108, %109
  %111 = load i32, ptr %2, align 1
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %113, %111
  %115 = zext i32 %114 to i64
  %116 = add i64 %3, %115
  %117 = xor i64 %116, %110
  %118 = lshr i64 %117, 33
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, -4417276706812531889
  %121 = lshr i64 %120, 29
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %141

126:                                              ; preds = %79
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, %130
  %132 = xor i64 %131, %3
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  br label %141

141:                                              ; preds = %126, %107, %45, %7
  %142 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %125, %107 ], [ %140, %126 ]
  ret i64 %142
}
