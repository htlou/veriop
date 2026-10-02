; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_keymix/xxhash_keymix.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_keymix/xxhash_keymix.c"
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
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 49)
  %29 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 24)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %31 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %32 = xor i64 %28, %30
  %33 = xor i64 %29, %31
  %34 = xor i64 %27, %23
  %35 = xor i64 %33, %32
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, -6939452855193903323
  %38 = lshr i64 %37, 35
  %39 = add nuw nsw i64 %38, %1
  %40 = xor i64 %39, %37
  %41 = mul i64 %40, -6939452855193903323
  %42 = lshr i64 %41, 28
  %43 = xor i64 %42, %41
  ret i64 %43
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
  br label %134

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %83, !prof !5

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
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 49)
  %68 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 24)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = xor i64 %67, %69
  %72 = xor i64 %68, %70
  %73 = xor i64 %66, %62
  %74 = xor i64 %72, %71
  %75 = xor i64 %74, %73
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 35
  %78 = add nuw nsw i64 %77, %1
  %79 = xor i64 %78, %76
  %80 = mul i64 %79, -6939452855193903323
  %81 = lshr i64 %80, 28
  %82 = xor i64 %81, %80
  br label %134

83:                                               ; preds = %43
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

134:                                              ; preds = %119, %85, %45, %7
  %135 = phi i64 [ %42, %7 ], [ %82, %45 ], [ %118, %85 ], [ %133, %119 ]
  ret i64 %135
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
