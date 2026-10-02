; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/experiments/xxhash_dispatch.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/experiments/xxhash_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 %1, 4
  br i1 %6, label %7, label %58

7:                                                ; preds = %4
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = load i8, ptr %0, align 1
  %13 = lshr i64 %1, 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i64 %1
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %12 to i64
  %20 = shl nuw nsw i64 %19, 16
  %21 = zext i8 %15 to i64
  %22 = shl nuw nsw i64 %21, 24
  %23 = or disjoint i64 %22, %20
  %24 = zext i8 %18 to i64
  %25 = or disjoint i64 %23, %24
  %26 = shl nuw nsw i64 %1, 8
  %27 = or disjoint i64 %25, %26
  %28 = load i32, ptr %2, align 1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %30 = load i32, ptr %29, align 1
  %31 = xor i32 %30, %28
  %32 = zext i32 %31 to i64
  %33 = add i64 %3, %32
  %34 = xor i64 %33, %27
  %35 = lshr i64 %34, 33
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, -4417276706812531889
  %38 = lshr i64 %37, 29
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, 1609587929392839161
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  br label %128

43:                                               ; preds = %7
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %45 = load i64, ptr %44, align 1
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %47 = load i64, ptr %46, align 1
  %48 = xor i64 %45, %47
  %49 = xor i64 %48, %3
  %50 = lshr i64 %49, 33
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, -4417276706812531889
  %53 = lshr i64 %52, 29
  %54 = xor i64 %53, %52
  %55 = mul i64 %54, 1609587929392839161
  %56 = lshr i64 %55, 32
  %57 = xor i64 %56, %55
  br label %128

58:                                               ; preds = %4
  %59 = icmp samesign ult i64 %1, 9
  %60 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %60)
  %61 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %61)
  br i1 %59, label %62, label %94

62:                                               ; preds = %58
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = load i32, ptr %0, align 1
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %70 = getelementptr inbounds i8, ptr %69, i64 -4
  %71 = load i32, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %73 = load i64, ptr %72, align 1
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %75 = load i64, ptr %74, align 1
  %76 = xor i64 %75, %73
  %77 = sub i64 %76, %67
  %78 = zext i32 %71 to i64
  %79 = zext i32 %68 to i64
  %80 = shl nuw i64 %79, 32
  %81 = or disjoint i64 %80, %78
  %82 = xor i64 %77, %81
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 49)
  %84 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 24)
  %85 = xor i64 %83, %84
  %86 = xor i64 %85, %82
  %87 = mul i64 %86, -6939452855193903323
  %88 = lshr i64 %87, 35
  %89 = add nuw nsw i64 %88, %1
  %90 = xor i64 %89, %87
  %91 = mul i64 %90, -6939452855193903323
  %92 = lshr i64 %91, 28
  %93 = xor i64 %92, %91
  br label %128

94:                                               ; preds = %58
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %96 = load i64, ptr %95, align 1
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %98 = load i64, ptr %97, align 1
  %99 = xor i64 %98, %96
  %100 = add i64 %99, %3
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %102 = load i64, ptr %101, align 1
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %104 = load i64, ptr %103, align 1
  %105 = xor i64 %104, %102
  %106 = sub i64 %105, %3
  %107 = load i64, ptr %0, align 1
  %108 = xor i64 %107, %100
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %110 = getelementptr inbounds i8, ptr %109, i64 -8
  %111 = load i64, ptr %110, align 1
  %112 = xor i64 %111, %106
  %113 = tail call noundef i64 @llvm.bswap.i64(i64 %108)
  %114 = add i64 %113, %1
  %115 = add i64 %114, %112
  %116 = zext i64 %108 to i128
  %117 = zext i64 %112 to i128
  %118 = mul nuw i128 %117, %116
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %115, %121
  %123 = lshr i64 %122, 37
  %124 = xor i64 %123, %122
  %125 = mul i64 %124, 1609587791953885689
  %126 = lshr i64 %125, 32
  %127 = xor i64 %126, %125
  br label %128

128:                                              ; preds = %94, %62, %43, %9
  %129 = phi i64 [ %42, %9 ], [ %57, %43 ], [ %93, %62 ], [ %127, %94 ]
  ret i64 %129
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

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
