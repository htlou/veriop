; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_lookup_early/xxhash_lookup_early.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_lookup_early/xxhash_lookup_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i64 @target_0to16(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp eq i64 %1, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i64 @target_1to3(ptr noundef %0, i64 noundef 1, ptr noundef %2, i64 noundef %3) #5
  br label %134

9:                                                ; preds = %4
  %10 = icmp samesign ugt i64 %1, 8
  br i1 %10, label %11, label %47, !prof !5

11:                                               ; preds = %9
  %12 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %12)
  %13 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %13)
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %17, %15
  %19 = add i64 %18, %3
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %21 = load i64, ptr %20, align 1
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %23 = load i64, ptr %22, align 1
  %24 = xor i64 %23, %21
  %25 = sub i64 %24, %3
  %26 = load i64, ptr %0, align 1
  %27 = xor i64 %26, %19
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %29 = getelementptr inbounds i8, ptr %28, i64 -8
  %30 = load i64, ptr %29, align 1
  %31 = xor i64 %30, %25
  %32 = tail call noundef i64 @llvm.bswap.i64(i64 %27)
  %33 = add i64 %32, %1
  %34 = add i64 %33, %31
  %35 = zext i64 %27 to i128
  %36 = zext i64 %31 to i128
  %37 = mul nuw i128 %36, %35
  %38 = lshr i128 %37, 64
  %39 = xor i128 %38, %37
  %40 = trunc i128 %39 to i64
  %41 = add i64 %34, %40
  %42 = lshr i64 %41, 37
  %43 = xor i64 %42, %41
  %44 = mul i64 %43, 1609587791953885689
  %45 = lshr i64 %44, 32
  %46 = xor i64 %45, %44
  br label %134

47:                                               ; preds = %9
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

134:                                              ; preds = %119, %85, %49, %11, %7
  %135 = phi i64 [ %8, %7 ], [ %46, %11 ], [ %82, %49 ], [ %118, %85 ], [ %133, %119 ]
  ret i64 %135
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

declare i64 @target_1to3(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
