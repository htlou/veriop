; ModuleID = 'alive2/experiments/xxhash_loadwide.c'
source_filename = "alive2/experiments/xxhash_loadwide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
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
  br label %29

17:                                               ; preds = %4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 24
  %22 = shl nuw nsw i64 %11, 16
  %23 = or disjoint i64 %21, %22
  %24 = getelementptr i8, ptr %0, i64 %1
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %17, %12
  %30 = phi i64 [ %16, %12 ], [ %28, %17 ]
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
  ret i64 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
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
  br label %145

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 %1, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, %1
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %145

86:                                               ; preds = %43
  %87 = icmp eq i64 %1, 0
  br i1 %87, label %130, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 %1, 1
  %92 = load i8, ptr %0, align 1
  %93 = zext i8 %92 to i64
  br i1 %91, label %94, label %99

94:                                               ; preds = %88
  %95 = shl nuw nsw i64 %93, 16
  %96 = shl nuw nsw i64 %93, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %93
  br label %111

99:                                               ; preds = %88
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i64
  %103 = shl nuw nsw i64 %102, 24
  %104 = shl nuw nsw i64 %93, 16
  %105 = or disjoint i64 %103, %104
  %106 = getelementptr i8, ptr %0, i64 %1
  %107 = getelementptr i8, ptr %106, i64 -1
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i64
  %110 = or disjoint i64 %105, %109
  br label %111

111:                                              ; preds = %94, %99
  %112 = phi i64 [ %98, %94 ], [ %110, %99 ]
  %113 = shl nuw nsw i64 %1, 8
  %114 = or i64 %112, %113
  %115 = load i32, ptr %2, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %117 = load i32, ptr %116, align 1
  %118 = xor i32 %117, %115
  %119 = zext i32 %118 to i64
  %120 = add i64 %3, %119
  %121 = xor i64 %120, %114
  %122 = lshr i64 %121, 33
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, -4417276706812531889
  %125 = lshr i64 %124, 29
  %126 = xor i64 %125, %124
  %127 = mul i64 %126, 1609587929392839161
  %128 = lshr i64 %127, 32
  %129 = xor i64 %128, %127
  br label %145

130:                                              ; preds = %86
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %132 = load i64, ptr %131, align 1
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %134 = load i64, ptr %133, align 1
  %135 = xor i64 %132, %134
  %136 = xor i64 %135, %3
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %145

145:                                              ; preds = %130, %111, %61, %7
  %146 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %129, %111 ], [ %144, %130 ]
  ret i64 %146
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
