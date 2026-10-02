; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_keybias_bit2/xxhash_keybias_bit2.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_keybias_bit2/xxhash_keybias_bit2.c"
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
  %28 = xor i64 %27, %23
  %29 = xor i64 %28, 2
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 49)
  %31 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 24)
  %32 = xor i64 %31, %30
  %33 = xor i64 %32, %28
  %34 = xor i64 %33, 1125899940397056
  %35 = mul i64 %34, -6939452855193903323
  %36 = lshr i64 %35, 35
  %37 = add nuw nsw i64 %36, %1
  %38 = xor i64 %37, %35
  %39 = mul i64 %38, -6939452855193903323
  %40 = lshr i64 %39, 28
  %41 = xor i64 %40, %39
  ret i64 %41
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
  br label %132

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %81, !prof !5

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
  %67 = xor i64 %66, %62
  %68 = xor i64 %67, 2
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 24)
  %71 = xor i64 %70, %69
  %72 = xor i64 %71, %67
  %73 = xor i64 %72, 1125899940397056
  %74 = mul i64 %73, -6939452855193903323
  %75 = lshr i64 %74, 35
  %76 = add nuw nsw i64 %75, %1
  %77 = xor i64 %76, %74
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 28
  %80 = xor i64 %79, %78
  br label %132

81:                                               ; preds = %43
  %82 = icmp eq i64 %1, 0
  br i1 %82, label %117, label %83

83:                                               ; preds = %81
  %84 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %84)
  %85 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %85)
  %86 = load i8, ptr %0, align 1
  %87 = lshr i64 %1, 1
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr i8, ptr %0, i64 %1
  %91 = getelementptr i8, ptr %90, i64 -1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %86 to i64
  %94 = shl nuw nsw i64 %93, 16
  %95 = zext i8 %89 to i64
  %96 = shl nuw nsw i64 %95, 24
  %97 = or disjoint i64 %96, %94
  %98 = zext i8 %92 to i64
  %99 = or disjoint i64 %97, %98
  %100 = shl nuw nsw i64 %1, 8
  %101 = or disjoint i64 %99, %100
  %102 = load i32, ptr %2, align 1
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %104 = load i32, ptr %103, align 1
  %105 = xor i32 %104, %102
  %106 = zext i32 %105 to i64
  %107 = add i64 %3, %106
  %108 = xor i64 %107, %101
  %109 = lshr i64 %108, 33
  %110 = xor i64 %109, %108
  %111 = mul i64 %110, -4417276706812531889
  %112 = lshr i64 %111, 29
  %113 = xor i64 %112, %111
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  br label %132

117:                                              ; preds = %81
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %119, %121
  %123 = xor i64 %122, %3
  %124 = lshr i64 %123, 33
  %125 = xor i64 %124, %123
  %126 = mul i64 %125, -4417276706812531889
  %127 = lshr i64 %126, 29
  %128 = xor i64 %127, %126
  %129 = mul i64 %128, 1609587929392839161
  %130 = lshr i64 %129, 32
  %131 = xor i64 %130, %129
  br label %132

132:                                              ; preds = %117, %83, %45, %7
  %133 = phi i64 [ %42, %7 ], [ %80, %45 ], [ %116, %83 ], [ %131, %117 ]
  ret i64 %133
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
