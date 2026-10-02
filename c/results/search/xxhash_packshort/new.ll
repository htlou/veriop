; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_packshort/xxhash_packshort.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_packshort/xxhash_packshort.c"
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
  %21 = icmp eq i64 %1, 2
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
  %34 = shl nuw nsw i64 %1, 8
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
  br label %141

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
  br label %141

79:                                               ; preds = %43
  %80 = icmp eq i64 %1, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = icmp eq i64 %1, 1
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
  %96 = icmp eq i64 %1, 2
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
  %109 = shl nuw nsw i64 %1, 8
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
