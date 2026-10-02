; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_veckeymix_qf/xxhash_veckeymix.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_veckeymix_qf/xxhash_veckeymix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}

define dso_local i64 @target_4to8_len4(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 4, 3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 4, 9
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
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %16 = getelementptr inbounds i8, ptr %15, i64 -4
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %21 = load i64, ptr %20, align 1
  %22 = xor i64 %21, %19
  %23 = sub i64 %22, %13
  %24 = insertelement <4 x i32> poison, i32 %17, i64 0
  %25 = insertelement <4 x i32> %24, i32 %14, i64 1
  %26 = insertelement <4 x i32> %25, i32 %17, i64 2
  %27 = insertelement <4 x i32> %26, i32 %14, i64 3
  %28 = bitcast <4 x i32> %27 to <2 x i64>
  %29 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %28, <2 x i64> %28, <2 x i64> <i64 49, i64 24>)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %31 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %32 = extractelement <2 x i64> %29, i64 1
  %33 = extractelement <2 x i64> %28, i64 0
  %34 = extractelement <2 x i64> %29, i64 0
  %35 = xor i64 %31, %30
  %36 = xor i64 %35, %33
  %37 = xor i64 %36, %32
  %38 = xor i64 %37, %34
  %39 = xor i64 %38, %23
  %40 = mul i64 %39, -6939452855193903323
  %41 = lshr i64 %40, 35
  %42 = add nuw nsw i64 %41, 4
  %43 = xor i64 %42, %40
  %44 = mul i64 %43, -6939452855193903323
  %45 = lshr i64 %44, 28
  %46 = xor i64 %45, %44
  ret i64 %46
}

define dso_local i64 @target_4to8_len5(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 5, 3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 5, 9
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
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %16 = getelementptr inbounds i8, ptr %15, i64 -4
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %21 = load i64, ptr %20, align 1
  %22 = xor i64 %21, %19
  %23 = sub i64 %22, %13
  %24 = insertelement <4 x i32> poison, i32 %17, i64 0
  %25 = insertelement <4 x i32> %24, i32 %14, i64 1
  %26 = insertelement <4 x i32> %25, i32 %17, i64 2
  %27 = insertelement <4 x i32> %26, i32 %14, i64 3
  %28 = bitcast <4 x i32> %27 to <2 x i64>
  %29 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %28, <2 x i64> %28, <2 x i64> <i64 49, i64 24>)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %31 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %32 = extractelement <2 x i64> %29, i64 1
  %33 = extractelement <2 x i64> %28, i64 0
  %34 = extractelement <2 x i64> %29, i64 0
  %35 = xor i64 %31, %30
  %36 = xor i64 %35, %33
  %37 = xor i64 %36, %32
  %38 = xor i64 %37, %34
  %39 = xor i64 %38, %23
  %40 = mul i64 %39, -6939452855193903323
  %41 = lshr i64 %40, 35
  %42 = add nuw nsw i64 %41, 5
  %43 = xor i64 %42, %40
  %44 = mul i64 %43, -6939452855193903323
  %45 = lshr i64 %44, 28
  %46 = xor i64 %45, %44
  ret i64 %46
}

define dso_local i64 @target_4to8_len6(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 6, 3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 6, 9
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
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %16 = getelementptr inbounds i8, ptr %15, i64 -4
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %21 = load i64, ptr %20, align 1
  %22 = xor i64 %21, %19
  %23 = sub i64 %22, %13
  %24 = insertelement <4 x i32> poison, i32 %17, i64 0
  %25 = insertelement <4 x i32> %24, i32 %14, i64 1
  %26 = insertelement <4 x i32> %25, i32 %17, i64 2
  %27 = insertelement <4 x i32> %26, i32 %14, i64 3
  %28 = bitcast <4 x i32> %27 to <2 x i64>
  %29 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %28, <2 x i64> %28, <2 x i64> <i64 49, i64 24>)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %31 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %32 = extractelement <2 x i64> %29, i64 1
  %33 = extractelement <2 x i64> %28, i64 0
  %34 = extractelement <2 x i64> %29, i64 0
  %35 = xor i64 %31, %30
  %36 = xor i64 %35, %33
  %37 = xor i64 %36, %32
  %38 = xor i64 %37, %34
  %39 = xor i64 %38, %23
  %40 = mul i64 %39, -6939452855193903323
  %41 = lshr i64 %40, 35
  %42 = add nuw nsw i64 %41, 6
  %43 = xor i64 %42, %40
  %44 = mul i64 %43, -6939452855193903323
  %45 = lshr i64 %44, 28
  %46 = xor i64 %45, %44
  ret i64 %46
}

define dso_local i64 @target_4to8_len7(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 7, 3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 7, 9
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
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %16 = getelementptr inbounds i8, ptr %15, i64 -4
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %21 = load i64, ptr %20, align 1
  %22 = xor i64 %21, %19
  %23 = sub i64 %22, %13
  %24 = insertelement <4 x i32> poison, i32 %17, i64 0
  %25 = insertelement <4 x i32> %24, i32 %14, i64 1
  %26 = insertelement <4 x i32> %25, i32 %17, i64 2
  %27 = insertelement <4 x i32> %26, i32 %14, i64 3
  %28 = bitcast <4 x i32> %27 to <2 x i64>
  %29 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %28, <2 x i64> %28, <2 x i64> <i64 49, i64 24>)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %31 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %32 = extractelement <2 x i64> %29, i64 1
  %33 = extractelement <2 x i64> %28, i64 0
  %34 = extractelement <2 x i64> %29, i64 0
  %35 = xor i64 %31, %30
  %36 = xor i64 %35, %33
  %37 = xor i64 %36, %32
  %38 = xor i64 %37, %34
  %39 = xor i64 %38, %23
  %40 = mul i64 %39, -6939452855193903323
  %41 = lshr i64 %40, 35
  %42 = add nuw nsw i64 %41, 7
  %43 = xor i64 %42, %40
  %44 = mul i64 %43, -6939452855193903323
  %45 = lshr i64 %44, 28
  %46 = xor i64 %45, %44
  ret i64 %46
}

define dso_local i64 @target_4to8_len8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 8, 3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 8, 9
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
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = getelementptr inbounds i8, ptr %15, i64 -4
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %21 = load i64, ptr %20, align 1
  %22 = xor i64 %21, %19
  %23 = sub i64 %22, %13
  %24 = insertelement <4 x i32> poison, i32 %17, i64 0
  %25 = insertelement <4 x i32> %24, i32 %14, i64 1
  %26 = insertelement <4 x i32> %25, i32 %17, i64 2
  %27 = insertelement <4 x i32> %26, i32 %14, i64 3
  %28 = bitcast <4 x i32> %27 to <2 x i64>
  %29 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %28, <2 x i64> %28, <2 x i64> <i64 49, i64 24>)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %31 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %32 = extractelement <2 x i64> %29, i64 1
  %33 = extractelement <2 x i64> %28, i64 0
  %34 = extractelement <2 x i64> %29, i64 0
  %35 = xor i64 %31, %30
  %36 = xor i64 %35, %33
  %37 = xor i64 %36, %32
  %38 = xor i64 %37, %34
  %39 = xor i64 %38, %23
  %40 = mul i64 %39, -6939452855193903323
  %41 = lshr i64 %40, 35
  %42 = add nuw nsw i64 %41, 8
  %43 = xor i64 %42, %40
  %44 = mul i64 %43, -6939452855193903323
  %45 = lshr i64 %44, 28
  %46 = xor i64 %45, %44
  ret i64 %46
}

define dso_local i64 @target_0to16_len0(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 0, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 0
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 0
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 0, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 0, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 0
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 0, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len1(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 1, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 1
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 1, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 1, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 1
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 1, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len2(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 2, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 2
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 2, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 2, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 2
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 2, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 3, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 3
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 3, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 3, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 3
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 3, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len4(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 4, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 4
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 4, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 4, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 4
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 4, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len5(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 5, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 5
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 5, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 5, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 5
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 5, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len6(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 6, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 6
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 6, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 6, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 6
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 6, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len7(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 7, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 7
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 7, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 7, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 7
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 7, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 8, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 8
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 8, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 8, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 8
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 8, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len9(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 9, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 9
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 9, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 9, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 9
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 9, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len10(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 10, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 10
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 10, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 10, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 10
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 10, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len11(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 11, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 11
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 11, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 11, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 11
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 11, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len12(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 12, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 12
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 12, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 12, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 12
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 12, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len13(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 13, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 13
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 13, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 13, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 13
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 13, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len14(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 14, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 14
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 14, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 14, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 14
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 14, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len15(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 15, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 15
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 15, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 15, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 15
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 15, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}

define dso_local i64 @target_0to16_len16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br label %137

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 16, 3
  br i1 %44, label %45, label %86, !prof !5

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
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = insertelement <4 x i32> %63, i32 %53, i64 1
  %65 = insertelement <4 x i32> %64, i32 %56, i64 2
  %66 = insertelement <4 x i32> %65, i32 %53, i64 3
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %67, <2 x i64> %67, <2 x i64> <i64 49, i64 24>)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %70 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %71 = extractelement <2 x i64> %68, i64 1
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = extractelement <2 x i64> %68, i64 0
  %74 = xor i64 %70, %69
  %75 = xor i64 %74, %72
  %76 = xor i64 %75, %71
  %77 = xor i64 %76, %73
  %78 = xor i64 %77, %62
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 16
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %137

86:                                               ; preds = %43
  %87 = icmp eq i64 16, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 16, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 16
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i64
  %99 = shl nuw nsw i64 %98, 16
  %100 = zext i8 %94 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = or disjoint i64 %101, %99
  %103 = zext i8 %97 to i64
  %104 = or disjoint i64 %102, %103
  %105 = shl nuw nsw i64 16, 8
  %106 = or disjoint i64 %104, %105
  %107 = load i32, ptr %2, align 1
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %109 = load i32, ptr %108, align 1
  %110 = xor i32 %109, %107
  %111 = zext i32 %110 to i64
  %112 = add i64 %3, %111
  %113 = xor i64 %112, %106
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %137

122:                                              ; preds = %86
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, %126
  %128 = xor i64 %127, %3
  %129 = lshr i64 %128, 33
  %130 = xor i64 %129, %128
  %131 = mul i64 %130, -4417276706812531889
  %132 = lshr i64 %131, 29
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587929392839161
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %122, %88, %45, %7
  %138 = phi i64 [ %42, %7 ], [ %85, %45 ], [ %121, %88 ], [ %136, %122 ]
  ret i64 %138
}
