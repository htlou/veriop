; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_eight_shared/xxhash_eight_shared.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_eight_shared/xxhash_eight_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


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
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}

define dso_local i64 @target_0to16_len0(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 0, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 0, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 0
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 0
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 0, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 0, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 0
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 0, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 0, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 0
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 0, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 0
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len1(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 1, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 1
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 1, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 1, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 1, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 1, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 1
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 1, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 1
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len2(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 2, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 2, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 2
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 2, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 2, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 2, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 2, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 2
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 2, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 2
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 3, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 3, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 3
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 3, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 3, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 3, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 3, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 3
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 3, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 3
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len4(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 4, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 4, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 4
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 4, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 4, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 4, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 4, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 4
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 4, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 4
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len5(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 5, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 5, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 5
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 5, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 5, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 5, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 5, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 5
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 5, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 5
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len6(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 6, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 6, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 6
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 6, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 6, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 6, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 6, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 6
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 6, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 6
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len7(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 7, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 7, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 7
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 7, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 7, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 7, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 7, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 7
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 7, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 7
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 8, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 8, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 8
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 8, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 8, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 8, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 8, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 8
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 8, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 8
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len9(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 9, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 9, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 9
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 9, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 9, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 9, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 9, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 9
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 9, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 9
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len10(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 10, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 10, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 10
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 10, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 10, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 10, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 10, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 10
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 10, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 10
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len11(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 11, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 11, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 11
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 11, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 11, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 11, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 11, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 11
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 11, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 11
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len12(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 12, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 12, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 12
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 12, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 12, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 12, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 12, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 12
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 12, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 12
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len13(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 13, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 13, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 13
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 13, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 13, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 13, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 13, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 13
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 13, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 13
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len14(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 14, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 14, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 14
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 14, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 14, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 14, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 14, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 14
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 14, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 14
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len15(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 15, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 15, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 15
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 15, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 15, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 15, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 15, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 15
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 15, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 15
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}

define dso_local i64 @target_0to16_len16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 16, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 16, 8
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
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, 16
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp eq i64 16, 8
  br i1 %44, label %45, label %48, !prof !5

45:                                               ; preds = %43
  %46 = load i64, ptr %0, align 1
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 32)
  br label %110

48:                                               ; preds = %43
  %49 = icmp samesign ugt i64 16, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %53 to i64
  %55 = load i32, ptr %0, align 1
  %56 = zext i32 %55 to i64
  %57 = shl nuw i64 %56, 32
  %58 = or disjoint i64 %57, %54
  br label %110

59:                                               ; preds = %48
  %60 = icmp eq i64 16, 0
  br i1 %60, label %95, label %61

61:                                               ; preds = %59
  %62 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %62)
  %63 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %63)
  %64 = load i8, ptr %0, align 1
  %65 = lshr i64 16, 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 16
  %69 = getelementptr i8, ptr %68, i64 -1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %64 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = zext i8 %67 to i64
  %74 = shl nuw nsw i64 %73, 24
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %70 to i64
  %77 = or disjoint i64 %75, %76
  %78 = shl nuw nsw i64 16, 8
  %79 = or disjoint i64 %77, %78
  %80 = load i32, ptr %2, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %82 = load i32, ptr %81, align 1
  %83 = xor i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = add i64 %3, %84
  %86 = xor i64 %85, %79
  %87 = lshr i64 %86, 33
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, -4417276706812531889
  %90 = lshr i64 %89, 29
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587929392839161
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %136

95:                                               ; preds = %59
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %97, %99
  %101 = xor i64 %100, %3
  %102 = lshr i64 %101, 33
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, -4417276706812531889
  %105 = lshr i64 %104, 29
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %136

110:                                              ; preds = %50, %45
  %111 = phi i64 [ %47, %45 ], [ %58, %50 ]
  %112 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %112)
  %113 = trunc i64 %3 to i32
  %114 = tail call noundef i32 @llvm.bswap.i32(i32 %113)
  %115 = zext i32 %114 to i64
  %116 = shl nuw i64 %115, 32
  %117 = xor i64 %116, %3
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = sub i64 %122, %117
  %124 = xor i64 %123, %111
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 49)
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 24)
  %127 = xor i64 %125, %126
  %128 = xor i64 %127, %124
  %129 = mul i64 %128, -6939452855193903323
  %130 = lshr i64 %129, 35
  %131 = add nuw nsw i64 %130, 16
  %132 = xor i64 %131, %129
  %133 = mul i64 %132, -6939452855193903323
  %134 = lshr i64 %133, 28
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %61, %95, %110, %7
  %137 = phi i64 [ %42, %7 ], [ %135, %110 ], [ %94, %61 ], [ %109, %95 ]
  ret i64 %137
}
