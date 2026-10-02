; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_veckeypack_qf/xxhash_veckeypack.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_veckeypack_qf/xxhash_veckeypack.c"
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
  %26 = bitcast <4 x i32> %25 to <2 x i64>
  %27 = shufflevector <2 x i64> %26, <2 x i64> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %27, <2 x i64> %27, <2 x i64> <i64 49, i64 24>)
  %29 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %31 = extractelement <2 x i64> %28, i64 1
  %32 = extractelement <2 x i64> %26, i64 0
  %33 = extractelement <2 x i64> %28, i64 0
  %34 = xor i64 %32, %30
  %35 = xor i64 %34, %29
  %36 = xor i64 %35, %31
  %37 = xor i64 %36, %33
  %38 = xor i64 %37, %23
  %39 = mul i64 %38, -6939452855193903323
  %40 = lshr i64 %39, 35
  %41 = add nuw nsw i64 %40, 4
  %42 = xor i64 %41, %39
  %43 = mul i64 %42, -6939452855193903323
  %44 = lshr i64 %43, 28
  %45 = xor i64 %44, %43
  ret i64 %45
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
  %26 = bitcast <4 x i32> %25 to <2 x i64>
  %27 = shufflevector <2 x i64> %26, <2 x i64> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %27, <2 x i64> %27, <2 x i64> <i64 49, i64 24>)
  %29 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %31 = extractelement <2 x i64> %28, i64 1
  %32 = extractelement <2 x i64> %26, i64 0
  %33 = extractelement <2 x i64> %28, i64 0
  %34 = xor i64 %32, %30
  %35 = xor i64 %34, %29
  %36 = xor i64 %35, %31
  %37 = xor i64 %36, %33
  %38 = xor i64 %37, %23
  %39 = mul i64 %38, -6939452855193903323
  %40 = lshr i64 %39, 35
  %41 = add nuw nsw i64 %40, 5
  %42 = xor i64 %41, %39
  %43 = mul i64 %42, -6939452855193903323
  %44 = lshr i64 %43, 28
  %45 = xor i64 %44, %43
  ret i64 %45
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
  %26 = bitcast <4 x i32> %25 to <2 x i64>
  %27 = shufflevector <2 x i64> %26, <2 x i64> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %27, <2 x i64> %27, <2 x i64> <i64 49, i64 24>)
  %29 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %31 = extractelement <2 x i64> %28, i64 1
  %32 = extractelement <2 x i64> %26, i64 0
  %33 = extractelement <2 x i64> %28, i64 0
  %34 = xor i64 %32, %30
  %35 = xor i64 %34, %29
  %36 = xor i64 %35, %31
  %37 = xor i64 %36, %33
  %38 = xor i64 %37, %23
  %39 = mul i64 %38, -6939452855193903323
  %40 = lshr i64 %39, 35
  %41 = add nuw nsw i64 %40, 6
  %42 = xor i64 %41, %39
  %43 = mul i64 %42, -6939452855193903323
  %44 = lshr i64 %43, 28
  %45 = xor i64 %44, %43
  ret i64 %45
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
  %26 = bitcast <4 x i32> %25 to <2 x i64>
  %27 = shufflevector <2 x i64> %26, <2 x i64> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %27, <2 x i64> %27, <2 x i64> <i64 49, i64 24>)
  %29 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %31 = extractelement <2 x i64> %28, i64 1
  %32 = extractelement <2 x i64> %26, i64 0
  %33 = extractelement <2 x i64> %28, i64 0
  %34 = xor i64 %32, %30
  %35 = xor i64 %34, %29
  %36 = xor i64 %35, %31
  %37 = xor i64 %36, %33
  %38 = xor i64 %37, %23
  %39 = mul i64 %38, -6939452855193903323
  %40 = lshr i64 %39, 35
  %41 = add nuw nsw i64 %40, 7
  %42 = xor i64 %41, %39
  %43 = mul i64 %42, -6939452855193903323
  %44 = lshr i64 %43, 28
  %45 = xor i64 %44, %43
  ret i64 %45
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
  %26 = bitcast <4 x i32> %25 to <2 x i64>
  %27 = shufflevector <2 x i64> %26, <2 x i64> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %27, <2 x i64> %27, <2 x i64> <i64 49, i64 24>)
  %29 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 49)
  %30 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 24)
  %31 = extractelement <2 x i64> %28, i64 1
  %32 = extractelement <2 x i64> %26, i64 0
  %33 = extractelement <2 x i64> %28, i64 0
  %34 = xor i64 %32, %30
  %35 = xor i64 %34, %29
  %36 = xor i64 %35, %31
  %37 = xor i64 %36, %33
  %38 = xor i64 %37, %23
  %39 = mul i64 %38, -6939452855193903323
  %40 = lshr i64 %39, 35
  %41 = add nuw nsw i64 %40, 8
  %42 = xor i64 %41, %39
  %43 = mul i64 %42, -6939452855193903323
  %44 = lshr i64 %43, 28
  %45 = xor i64 %44, %43
  ret i64 %45
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 0, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 0
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 0, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 0, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 0
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 0, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 1, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 1
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 1, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 1, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 1
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 1, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 2, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 2
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 2, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 2, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 2
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 2, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 3, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 3
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 3, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 3, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 3
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 3, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 4, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 4
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 4, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 4, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 4
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 4, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 5, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 5
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 5, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 5, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 5
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 5, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 6, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 6
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 6, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 6, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 6
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 6, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 7, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 7
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 7, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 7, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 7
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 7, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 8, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 8
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 8, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 8, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 8
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 8, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 9, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 9
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 9, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 9, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 9
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 9, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 10, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 10
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 10, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 10, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 10
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 10, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 11, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 11
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 11, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 11, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 11
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 11, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 12, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 12
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 12, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 12, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 12
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 12, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 13, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 13
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 13, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 13, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 13
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 13, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 14, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 14
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 14, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 14, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 14
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 14, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 15, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 15
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 15, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 15, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 15
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 15, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
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
  br label %136

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 16, 3
  br i1 %44, label %45, label %85, !prof !5

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
  %65 = bitcast <4 x i32> %64 to <2 x i64>
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %66, <2 x i64> %66, <2 x i64> <i64 49, i64 24>)
  %68 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 24)
  %70 = extractelement <2 x i64> %67, i64 1
  %71 = extractelement <2 x i64> %65, i64 0
  %72 = extractelement <2 x i64> %67, i64 0
  %73 = xor i64 %71, %69
  %74 = xor i64 %73, %68
  %75 = xor i64 %74, %70
  %76 = xor i64 %75, %72
  %77 = xor i64 %76, %62
  %78 = mul i64 %77, -6939452855193903323
  %79 = lshr i64 %78, 35
  %80 = add nuw nsw i64 %79, 16
  %81 = xor i64 %80, %78
  %82 = mul i64 %81, -6939452855193903323
  %83 = lshr i64 %82, 28
  %84 = xor i64 %83, %82
  br label %136

85:                                               ; preds = %43
  %86 = icmp eq i64 16, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %85
  %88 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %88)
  %89 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 16, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 16
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i64
  %98 = shl nuw nsw i64 %97, 16
  %99 = zext i8 %93 to i64
  %100 = shl nuw nsw i64 %99, 24
  %101 = or disjoint i64 %100, %98
  %102 = zext i8 %96 to i64
  %103 = or disjoint i64 %101, %102
  %104 = shl nuw nsw i64 16, 8
  %105 = or disjoint i64 %103, %104
  %106 = load i32, ptr %2, align 1
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %108 = load i32, ptr %107, align 1
  %109 = xor i32 %108, %106
  %110 = zext i32 %109 to i64
  %111 = add i64 %3, %110
  %112 = xor i64 %111, %105
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  br label %136

121:                                              ; preds = %85
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %123, %125
  %127 = xor i64 %126, %3
  %128 = lshr i64 %127, 33
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531889
  %131 = lshr i64 %130, 29
  %132 = xor i64 %131, %130
  %133 = mul i64 %132, 1609587929392839161
  %134 = lshr i64 %133, 32
  %135 = xor i64 %134, %133
  br label %136

136:                                              ; preds = %121, %87, %45, %7
  %137 = phi i64 [ %42, %7 ], [ %84, %45 ], [ %120, %87 ], [ %135, %121 ]
  ret i64 %137
}
