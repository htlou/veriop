; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_keymix_fixed/xxhash_keymix_fixed.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_keymix_fixed/xxhash_keymix_fixed.c"
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
  %28 = icmp eq i64 %23, -4090762196417718878
  br i1 %28, label %29, label %35, !prof !5

29:                                               ; preds = %4
  %30 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 49)
  %31 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 24)
  %32 = xor i64 %31, %30
  %33 = xor i64 %32, %27
  %34 = xor i64 %33, 1781969510161605834
  br label %41

35:                                               ; preds = %4
  %36 = xor i64 %23, %27
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 49)
  %38 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 24)
  %39 = xor i64 %38, %37
  %40 = xor i64 %39, %36
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i64 [ %34, %29 ], [ %40, %35 ]
  %43 = mul i64 %42, -6939452855193903323
  %44 = lshr i64 %43, 35
  %45 = add nuw nsw i64 %44, %1
  %46 = xor i64 %45, %43
  %47 = mul i64 %46, -6939452855193903323
  %48 = lshr i64 %47, 28
  %49 = xor i64 %48, %47
  ret i64 %49
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
  br label %140

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %89, !prof !5

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
  %67 = icmp eq i64 %62, -4090762196417718878
  br i1 %67, label %68, label %74, !prof !5

68:                                               ; preds = %45
  %69 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 24)
  %71 = xor i64 %70, %69
  %72 = xor i64 %71, %66
  %73 = xor i64 %72, 1781969510161605834
  br label %80

74:                                               ; preds = %45
  %75 = xor i64 %62, %66
  %76 = tail call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 49)
  %77 = tail call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 24)
  %78 = xor i64 %77, %76
  %79 = xor i64 %78, %75
  br label %80

80:                                               ; preds = %68, %74
  %81 = phi i64 [ %73, %68 ], [ %79, %74 ]
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 35
  %84 = add nuw nsw i64 %83, %1
  %85 = xor i64 %84, %82
  %86 = mul i64 %85, -6939452855193903323
  %87 = lshr i64 %86, 28
  %88 = xor i64 %87, %86
  br label %140

89:                                               ; preds = %43
  %90 = icmp eq i64 %1, 0
  br i1 %90, label %125, label %91

91:                                               ; preds = %89
  %92 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %92)
  %93 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %93)
  %94 = load i8, ptr %0, align 1
  %95 = lshr i64 %1, 1
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 %95
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr i8, ptr %0, i64 %1
  %99 = getelementptr i8, ptr %98, i64 -1
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %94 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = zext i8 %97 to i64
  %104 = shl nuw nsw i64 %103, 24
  %105 = or disjoint i64 %104, %102
  %106 = zext i8 %100 to i64
  %107 = or disjoint i64 %105, %106
  %108 = shl nuw nsw i64 %1, 8
  %109 = or disjoint i64 %107, %108
  %110 = load i32, ptr %2, align 1
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %112 = load i32, ptr %111, align 1
  %113 = xor i32 %112, %110
  %114 = zext i32 %113 to i64
  %115 = add i64 %3, %114
  %116 = xor i64 %115, %109
  %117 = lshr i64 %116, 33
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, -4417276706812531889
  %120 = lshr i64 %119, 29
  %121 = xor i64 %120, %119
  %122 = mul i64 %121, 1609587929392839161
  %123 = lshr i64 %122, 32
  %124 = xor i64 %123, %122
  br label %140

125:                                              ; preds = %89
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %127 = load i64, ptr %126, align 1
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %129 = load i64, ptr %128, align 1
  %130 = xor i64 %127, %129
  %131 = xor i64 %130, %3
  %132 = lshr i64 %131, 33
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, -4417276706812531889
  %135 = lshr i64 %134, 29
  %136 = xor i64 %135, %134
  %137 = mul i64 %136, 1609587929392839161
  %138 = lshr i64 %137, 32
  %139 = xor i64 %138, %137
  br label %140

140:                                              ; preds = %125, %91, %80, %7
  %141 = phi i64 [ %42, %7 ], [ %88, %80 ], [ %124, %91 ], [ %139, %125 ]
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
