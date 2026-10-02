; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_four_periodic/xxhash_four_periodic.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_four_periodic/xxhash_four_periodic.c"
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
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %17, %15
  %19 = sub i64 %18, %13
  %20 = icmp eq i64 %1, 4
  %21 = load i32, ptr %0, align 1
  br i1 %20, label %22, label %34

22:                                               ; preds = %4
  %23 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 17)
  %24 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 24)
  %25 = xor i32 %24, %23
  %26 = xor i32 %25, %21
  %27 = zext i32 %26 to i64
  %28 = mul nuw i64 %27, 4294967297
  %29 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 49)
  %30 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 24)
  %31 = xor i64 %30, %29
  %32 = xor i64 %31, %28
  %33 = xor i64 %32, %19
  br label %47

34:                                               ; preds = %4
  %35 = zext i32 %21 to i64
  %36 = shl nuw i64 %35, 32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %38 = getelementptr inbounds i8, ptr %37, i64 -4
  %39 = load i32, ptr %38, align 1
  %40 = zext i32 %39 to i64
  %41 = or disjoint i64 %36, %40
  %42 = xor i64 %41, %19
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 49)
  %44 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 24)
  %45 = xor i64 %44, %43
  %46 = xor i64 %45, %42
  br label %47

47:                                               ; preds = %34, %22
  %48 = phi i64 [ %33, %22 ], [ %46, %34 ]
  %49 = mul i64 %48, -6939452855193903323
  %50 = lshr i64 %49, 35
  %51 = add nuw nsw i64 %50, %1
  %52 = xor i64 %51, %49
  %53 = mul i64 %52, -6939452855193903323
  %54 = lshr i64 %53, 28
  %55 = xor i64 %54, %53
  ret i64 %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

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
  br label %146

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %95, !prof !5

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
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %54 = load i64, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %56 = load i64, ptr %55, align 1
  %57 = xor i64 %56, %54
  %58 = sub i64 %57, %52
  %59 = icmp eq i64 %1, 4
  %60 = load i32, ptr %0, align 1
  br i1 %59, label %61, label %73

61:                                               ; preds = %45
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %63 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 24)
  %64 = xor i32 %63, %62
  %65 = xor i32 %64, %60
  %66 = zext i32 %65 to i64
  %67 = mul nuw i64 %66, 4294967297
  %68 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 24)
  %70 = xor i64 %69, %68
  %71 = xor i64 %70, %67
  %72 = xor i64 %71, %58
  br label %86

73:                                               ; preds = %45
  %74 = zext i32 %60 to i64
  %75 = shl nuw i64 %74, 32
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %77 = getelementptr inbounds i8, ptr %76, i64 -4
  %78 = load i32, ptr %77, align 1
  %79 = zext i32 %78 to i64
  %80 = or disjoint i64 %75, %79
  %81 = xor i64 %80, %58
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 49)
  %83 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 24)
  %84 = xor i64 %83, %82
  %85 = xor i64 %84, %81
  br label %86

86:                                               ; preds = %61, %73
  %87 = phi i64 [ %72, %61 ], [ %85, %73 ]
  %88 = mul i64 %87, -6939452855193903323
  %89 = lshr i64 %88, 35
  %90 = add nuw nsw i64 %89, %1
  %91 = xor i64 %90, %88
  %92 = mul i64 %91, -6939452855193903323
  %93 = lshr i64 %92, 28
  %94 = xor i64 %93, %92
  br label %146

95:                                               ; preds = %43
  %96 = icmp eq i64 %1, 0
  br i1 %96, label %131, label %97

97:                                               ; preds = %95
  %98 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %98)
  %99 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %99)
  %100 = load i8, ptr %0, align 1
  %101 = lshr i64 %1, 1
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 %101
  %103 = load i8, ptr %102, align 1
  %104 = getelementptr i8, ptr %0, i64 %1
  %105 = getelementptr i8, ptr %104, i64 -1
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %100 to i64
  %108 = shl nuw nsw i64 %107, 16
  %109 = zext i8 %103 to i64
  %110 = shl nuw nsw i64 %109, 24
  %111 = or disjoint i64 %110, %108
  %112 = zext i8 %106 to i64
  %113 = or disjoint i64 %111, %112
  %114 = shl nuw nsw i64 %1, 8
  %115 = or disjoint i64 %113, %114
  %116 = load i32, ptr %2, align 1
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %118 = load i32, ptr %117, align 1
  %119 = xor i32 %118, %116
  %120 = zext i32 %119 to i64
  %121 = add i64 %3, %120
  %122 = xor i64 %121, %115
  %123 = lshr i64 %122, 33
  %124 = xor i64 %123, %122
  %125 = mul i64 %124, -4417276706812531889
  %126 = lshr i64 %125, 29
  %127 = xor i64 %126, %125
  %128 = mul i64 %127, 1609587929392839161
  %129 = lshr i64 %128, 32
  %130 = xor i64 %129, %128
  br label %146

131:                                              ; preds = %95
  %132 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %133 = load i64, ptr %132, align 1
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %135 = load i64, ptr %134, align 1
  %136 = xor i64 %133, %135
  %137 = xor i64 %136, %3
  %138 = lshr i64 %137, 33
  %139 = xor i64 %138, %137
  %140 = mul i64 %139, -4417276706812531889
  %141 = lshr i64 %140, 29
  %142 = xor i64 %141, %140
  %143 = mul i64 %142, 1609587929392839161
  %144 = lshr i64 %143, 32
  %145 = xor i64 %144, %143
  br label %146

146:                                              ; preds = %131, %97, %86, %7
  %147 = phi i64 [ %42, %7 ], [ %94, %86 ], [ %130, %97 ], [ %145, %131 ]
  ret i64 %147
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
