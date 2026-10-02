; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_eight_tail/xxhash_eight_tail.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_eight_tail/xxhash_eight_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


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

define dso_local i64 @target_4to8_len4(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 4, 3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 4, 9
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp eq i64 4, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i64, ptr %0, align 1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 32)
  br label %22

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = getelementptr inbounds i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 1
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %0, align 1
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or disjoint i64 %20, %17
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i64 [ %12, %10 ], [ %21, %13 ]
  %24 = trunc i64 %3 to i32
  %25 = tail call noundef i32 @llvm.bswap.i32(i32 %24)
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  %28 = xor i64 %27, %3
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %32, %30
  %34 = sub i64 %33, %28
  %35 = xor i64 %34, %23
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 49)
  %37 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 24)
  %38 = xor i64 %36, %37
  %39 = xor i64 %38, %35
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
  %9 = icmp eq i64 5, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i64, ptr %0, align 1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 32)
  br label %22

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %15 = getelementptr inbounds i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 1
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %0, align 1
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or disjoint i64 %20, %17
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i64 [ %12, %10 ], [ %21, %13 ]
  %24 = trunc i64 %3 to i32
  %25 = tail call noundef i32 @llvm.bswap.i32(i32 %24)
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  %28 = xor i64 %27, %3
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %32, %30
  %34 = sub i64 %33, %28
  %35 = xor i64 %34, %23
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 49)
  %37 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 24)
  %38 = xor i64 %36, %37
  %39 = xor i64 %38, %35
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
  %9 = icmp eq i64 6, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i64, ptr %0, align 1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 32)
  br label %22

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %15 = getelementptr inbounds i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 1
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %0, align 1
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or disjoint i64 %20, %17
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i64 [ %12, %10 ], [ %21, %13 ]
  %24 = trunc i64 %3 to i32
  %25 = tail call noundef i32 @llvm.bswap.i32(i32 %24)
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  %28 = xor i64 %27, %3
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %32, %30
  %34 = sub i64 %33, %28
  %35 = xor i64 %34, %23
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 49)
  %37 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 24)
  %38 = xor i64 %36, %37
  %39 = xor i64 %38, %35
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
  %9 = icmp eq i64 7, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i64, ptr %0, align 1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 32)
  br label %22

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %15 = getelementptr inbounds i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 1
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %0, align 1
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or disjoint i64 %20, %17
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i64 [ %12, %10 ], [ %21, %13 ]
  %24 = trunc i64 %3 to i32
  %25 = tail call noundef i32 @llvm.bswap.i32(i32 %24)
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  %28 = xor i64 %27, %3
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %32, %30
  %34 = sub i64 %33, %28
  %35 = xor i64 %34, %23
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 49)
  %37 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 24)
  %38 = xor i64 %36, %37
  %39 = xor i64 %38, %35
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
  %9 = icmp eq i64 8, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i64, ptr %0, align 1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 32)
  br label %22

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = getelementptr inbounds i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 1
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %0, align 1
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or disjoint i64 %20, %17
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i64 [ %12, %10 ], [ %21, %13 ]
  %24 = trunc i64 %3 to i32
  %25 = tail call noundef i32 @llvm.bswap.i32(i32 %24)
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  %28 = xor i64 %27, %3
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %32, %30
  %34 = sub i64 %33, %28
  %35 = xor i64 %34, %23
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 49)
  %37 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 24)
  %38 = xor i64 %36, %37
  %39 = xor i64 %38, %35
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 0, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 0, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 0
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 0
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 0, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 0, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 0
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 0, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 1, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 1, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 1
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 1, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 1, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 1
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 1, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 2, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 2, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 2
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 2, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 2, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 2
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 2, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 3, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 3, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 3
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 3, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 3, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 3
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 3, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 4, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 4, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 4
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 4, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 4, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 4
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 4, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 5, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 5, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 5
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 5, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 5, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 5
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 5, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 6, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 6, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 6
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 6, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 6, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 6
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 6, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 7, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 7, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 7
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 7, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 7, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 7
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 7, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 8, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 8, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 8
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 8, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 8, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 8
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 8, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 9, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 9, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 9
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 9, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 9, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 9
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 9, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 10, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 10, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 10
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 10, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 10, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 10
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 10, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 11, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 11, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 11
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 11, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 11, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 11
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 11, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 12, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 12, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 12
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 12, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 12, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 12
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 12, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 13, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 13, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 13
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 13, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 13, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 13
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 13, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 14, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 14, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 14
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 14, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 14, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 14
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 14, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 15, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 15, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 15
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 15, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 15, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 15
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 15, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
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
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 16, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 16, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, 16
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 16, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 16, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 16
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 16, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
}
