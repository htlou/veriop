; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/experiments/xxhash_specialize.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/experiments/xxhash_specialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_1to3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i64 %1, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load i8, ptr %0, align 1
  %10 = zext i8 %9 to i64
  %11 = mul nuw nsw i64 %10, 16842753
  %12 = add nuw nsw i64 %11, 256
  br label %26

13:                                               ; preds = %4
  %14 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %14)
  %15 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %15)
  %16 = load i16, ptr %0, align 1
  %17 = zext i16 %16 to i64
  %18 = shl nuw nsw i64 %17, 16
  %19 = getelementptr i8, ptr %0, i64 %1
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i64
  %23 = or disjoint i64 %18, %22
  %24 = shl nuw nsw i64 %1, 8
  %25 = or disjoint i64 %23, %24
  br label %26

26:                                               ; preds = %13, %8
  %27 = phi i64 [ %25, %13 ], [ %12, %8 ]
  %28 = load i32, ptr %2, align 1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %30 = load i32, ptr %29, align 1
  %31 = xor i32 %30, %28
  %32 = zext i32 %31 to i64
  %33 = add i64 %3, %32
  %34 = lshr i64 %33, 33
  %35 = xor i64 %27, %34
  %36 = xor i64 %35, %33
  %37 = mul i64 %36, -4417276706812531889
  %38 = lshr i64 %37, 29
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, 1609587929392839161
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  ret i64 %42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

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
  br label %130

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %79

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
  br label %130

79:                                               ; preds = %43
  switch i64 %1, label %85 [
    i64 0, label %115
    i64 1, label %80
  ]

80:                                               ; preds = %79
  %81 = load i8, ptr %0, align 1
  %82 = zext i8 %81 to i64
  %83 = mul nuw nsw i64 %82, 16842753
  %84 = add nuw nsw i64 %83, 256
  br label %98

85:                                               ; preds = %79
  %86 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %86)
  %87 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %87)
  %88 = load i16, ptr %0, align 1
  %89 = zext i16 %88 to i64
  %90 = shl nuw nsw i64 %89, 16
  %91 = getelementptr i8, ptr %0, i64 %1
  %92 = getelementptr i8, ptr %91, i64 -1
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i64
  %95 = or disjoint i64 %90, %94
  %96 = shl nuw nsw i64 %1, 8
  %97 = or disjoint i64 %95, %96
  br label %98

98:                                               ; preds = %80, %85
  %99 = phi i64 [ %97, %85 ], [ %84, %80 ]
  %100 = load i32, ptr %2, align 1
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %102 = load i32, ptr %101, align 1
  %103 = xor i32 %102, %100
  %104 = zext i32 %103 to i64
  %105 = add i64 %3, %104
  %106 = lshr i64 %105, 33
  %107 = xor i64 %99, %106
  %108 = xor i64 %107, %105
  %109 = mul i64 %108, -4417276706812531889
  %110 = lshr i64 %109, 29
  %111 = xor i64 %110, %109
  %112 = mul i64 %111, 1609587929392839161
  %113 = lshr i64 %112, 32
  %114 = xor i64 %113, %112
  br label %130

115:                                              ; preds = %79
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %117 = load i64, ptr %116, align 1
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %119 = load i64, ptr %118, align 1
  %120 = xor i64 %117, %119
  %121 = xor i64 %120, %3
  %122 = lshr i64 %121, 33
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, -4417276706812531889
  %125 = lshr i64 %124, 29
  %126 = xor i64 %125, %124
  %127 = mul i64 %126, 1609587929392839161
  %128 = lshr i64 %127, 32
  %129 = xor i64 %128, %127
  br label %130

130:                                              ; preds = %115, %98, %45, %7
  %131 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %114, %98 ], [ %129, %115 ]
  ret i64 %131
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

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
