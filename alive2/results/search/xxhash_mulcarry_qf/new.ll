; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_mulcarry_qf/xxhash_mulcarry.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_mulcarry_qf/xxhash_mulcarry.c"
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
  %21 = load i64, ptr %0, align 1
  %22 = xor i64 %21, %14
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %24 = getelementptr inbounds i8, ptr %23, i64 -8
  %25 = load i64, ptr %24, align 1
  %26 = xor i64 %25, %20
  %27 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %22, i64 %26)
  %28 = extractvalue { i64, i1 } %27, 1
  %29 = extractvalue { i64, i1 } %27, 0
  %30 = zext i64 %22 to i128
  %31 = zext i64 %26 to i128
  %32 = mul nuw i128 %31, %30
  %33 = lshr i128 %32, 64
  %34 = trunc nuw i128 %33 to i64
  %35 = select i1 %28, i64 %34, i64 0
  %36 = xor i64 %35, %29
  %37 = tail call noundef i64 @llvm.bswap.i64(i64 %22)
  %38 = add i64 %37, %1
  %39 = add i64 %38, %26
  %40 = add i64 %39, %36
  %41 = lshr i64 %40, 37
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, 1609587791953885689
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  ret i64 %45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %47, !prof !5

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
  %28 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %23, i64 %27)
  %29 = extractvalue { i64, i1 } %28, 1
  %30 = extractvalue { i64, i1 } %28, 0
  %31 = zext i64 %23 to i128
  %32 = zext i64 %27 to i128
  %33 = mul nuw i128 %32, %31
  %34 = lshr i128 %33, 64
  %35 = trunc nuw i128 %34 to i64
  %36 = select i1 %29, i64 %35, i64 0
  %37 = xor i64 %36, %30
  %38 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %39 = add i64 %38, %1
  %40 = add i64 %39, %27
  %41 = add i64 %40, %37
  %42 = lshr i64 %41, 37
  %43 = xor i64 %42, %41
  %44 = mul i64 %43, 1609587791953885689
  %45 = lshr i64 %44, 32
  %46 = xor i64 %45, %44
  br label %134

47:                                               ; preds = %4
  %48 = icmp samesign ugt i64 %1, 3
  br i1 %48, label %49, label %83, !prof !5

49:                                               ; preds = %47
  %50 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %50)
  %51 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %51)
  %52 = trunc i64 %3 to i32
  %53 = tail call noundef i32 @llvm.bswap.i32(i32 %52)
  %54 = zext i32 %53 to i64
  %55 = shl nuw i64 %54, 32
  %56 = xor i64 %55, %3
  %57 = load i32, ptr %0, align 1
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %59 = getelementptr inbounds i8, ptr %58, i64 -4
  %60 = load i32, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %62 = load i64, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %64 = load i64, ptr %63, align 1
  %65 = xor i64 %64, %62
  %66 = sub i64 %65, %56
  %67 = zext i32 %60 to i64
  %68 = zext i32 %57 to i64
  %69 = shl nuw i64 %68, 32
  %70 = or disjoint i64 %69, %67
  %71 = xor i64 %66, %70
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 49)
  %73 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 24)
  %74 = xor i64 %72, %73
  %75 = xor i64 %74, %71
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 35
  %78 = add nuw nsw i64 %77, %1
  %79 = xor i64 %78, %76
  %80 = mul i64 %79, -6939452855193903323
  %81 = lshr i64 %80, 28
  %82 = xor i64 %81, %80
  br label %134

83:                                               ; preds = %47
  %84 = icmp eq i64 %1, 0
  br i1 %84, label %119, label %85

85:                                               ; preds = %83
  %86 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %86)
  %87 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %87)
  %88 = load i8, ptr %0, align 1
  %89 = lshr i64 %1, 1
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr i8, ptr %0, i64 %1
  %93 = getelementptr i8, ptr %92, i64 -1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %88 to i64
  %96 = shl nuw nsw i64 %95, 16
  %97 = zext i8 %91 to i64
  %98 = shl nuw nsw i64 %97, 24
  %99 = or disjoint i64 %98, %96
  %100 = zext i8 %94 to i64
  %101 = or disjoint i64 %99, %100
  %102 = shl nuw nsw i64 %1, 8
  %103 = or disjoint i64 %101, %102
  %104 = load i32, ptr %2, align 1
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %106 = load i32, ptr %105, align 1
  %107 = xor i32 %106, %104
  %108 = zext i32 %107 to i64
  %109 = add i64 %3, %108
  %110 = xor i64 %109, %103
  %111 = lshr i64 %110, 33
  %112 = xor i64 %111, %110
  %113 = mul i64 %112, -4417276706812531889
  %114 = lshr i64 %113, 29
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, 1609587929392839161
  %117 = lshr i64 %116, 32
  %118 = xor i64 %117, %116
  br label %134

119:                                              ; preds = %83
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %121 = load i64, ptr %120, align 1
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %123 = load i64, ptr %122, align 1
  %124 = xor i64 %121, %123
  %125 = xor i64 %124, %3
  %126 = lshr i64 %125, 33
  %127 = xor i64 %126, %125
  %128 = mul i64 %127, -4417276706812531889
  %129 = lshr i64 %128, 29
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, 1609587929392839161
  %132 = lshr i64 %131, 32
  %133 = xor i64 %132, %131
  br label %134

134:                                              ; preds = %119, %85, %49, %7
  %135 = phi i64 [ %46, %7 ], [ %82, %49 ], [ %118, %85 ], [ %133, %119 ]
  ret i64 %135
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

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
