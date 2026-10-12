; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/3bb5bb6/wrap_digest_split.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/3bb5bb6/wrap_digest_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_5_small(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 374761393
  %11 = load i32, ptr %0, align 4
  %12 = add i32 %10, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, -1028477379
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %18 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 17)
  %19 = mul i32 %18, 668265263
  %20 = load i8, ptr %17, align 1
  %21 = zext i8 %20 to i32
  %22 = mul i32 %21, 374761393
  %23 = add i32 %19, %22
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 11)
  %25 = mul i32 %24, -1640531535
  %26 = lshr i32 %25, 15
  %27 = xor i32 %26, %25
  %28 = mul i32 %27, -2048144777
  %29 = lshr i32 %28, 13
  %30 = xor i32 %29, %28
  %31 = mul i32 %30, -1028477379
  %32 = lshr i32 %31, 16
  %33 = xor i32 %32, %31
  ret i32 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_5_large(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 1)
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 7)
  %14 = add i32 %13, %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 12)
  %18 = add i32 %14, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 18)
  %22 = add i32 %18, %21
  %23 = load i32, ptr %0, align 4
  %24 = add i32 %22, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, -1028477379
  %28 = add i32 %24, %27
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %30 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 17)
  %31 = mul i32 %30, 668265263
  %32 = load i8, ptr %29, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = add i32 %31, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 11)
  %37 = mul i32 %36, -1640531535
  %38 = lshr i32 %37, 15
  %39 = xor i32 %38, %37
  %40 = mul i32 %39, -2048144777
  %41 = lshr i32 %40, 13
  %42 = xor i32 %41, %40
  %43 = mul i32 %42, -1028477379
  %44 = lshr i32 %43, 16
  %45 = xor i32 %44, %43
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_6_small(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 6
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 374761393
  %11 = load i32, ptr %0, align 4
  %12 = add i32 %10, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, -1028477379
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %18 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 17)
  %19 = mul i32 %18, 668265263
  %20 = load i8, ptr %17, align 1
  %21 = zext i8 %20 to i32
  %22 = mul i32 %21, 374761393
  %23 = add i32 %19, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %25 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 11)
  %26 = mul i32 %25, -1640531535
  %27 = load i8, ptr %24, align 1
  %28 = zext i8 %27 to i32
  %29 = mul i32 %28, 374761393
  %30 = add i32 %26, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 11)
  %32 = mul i32 %31, -1640531535
  %33 = lshr i32 %32, 15
  %34 = xor i32 %33, %32
  %35 = mul i32 %34, -2048144777
  %36 = lshr i32 %35, 13
  %37 = xor i32 %36, %35
  %38 = mul i32 %37, -1028477379
  %39 = lshr i32 %38, 16
  %40 = xor i32 %39, %38
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_6_large(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 6
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 1)
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 7)
  %14 = add i32 %13, %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 12)
  %18 = add i32 %14, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 18)
  %22 = add i32 %18, %21
  %23 = load i32, ptr %0, align 4
  %24 = add i32 %22, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, -1028477379
  %28 = add i32 %24, %27
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %30 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 17)
  %31 = mul i32 %30, 668265263
  %32 = load i8, ptr %29, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 11)
  %38 = mul i32 %37, -1640531535
  %39 = load i8, ptr %36, align 1
  %40 = zext i8 %39 to i32
  %41 = mul i32 %40, 374761393
  %42 = add i32 %38, %41
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11)
  %44 = mul i32 %43, -1640531535
  %45 = lshr i32 %44, 15
  %46 = xor i32 %45, %44
  %47 = mul i32 %46, -2048144777
  %48 = lshr i32 %47, 13
  %49 = xor i32 %48, %47
  %50 = mul i32 %49, -1028477379
  %51 = lshr i32 %50, 16
  %52 = xor i32 %51, %50
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_7_small(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 374761393
  %11 = load i32, ptr %0, align 4
  %12 = add i32 %10, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, -1028477379
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %18 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 17)
  %19 = mul i32 %18, 668265263
  %20 = load i8, ptr %17, align 1
  %21 = zext i8 %20 to i32
  %22 = mul i32 %21, 374761393
  %23 = add i32 %19, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %25 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 11)
  %26 = mul i32 %25, -1640531535
  %27 = load i8, ptr %24, align 1
  %28 = zext i8 %27 to i32
  %29 = mul i32 %28, 374761393
  %30 = add i32 %26, %29
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %32 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 11)
  %33 = mul i32 %32, -1640531535
  %34 = load i8, ptr %31, align 1
  %35 = zext i8 %34 to i32
  %36 = mul i32 %35, 374761393
  %37 = add i32 %33, %36
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 11)
  %39 = mul i32 %38, -1640531535
  %40 = lshr i32 %39, 15
  %41 = xor i32 %40, %39
  %42 = mul i32 %41, -2048144777
  %43 = lshr i32 %42, 13
  %44 = xor i32 %43, %42
  %45 = mul i32 %44, -1028477379
  %46 = lshr i32 %45, 16
  %47 = xor i32 %46, %45
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i32 @target_le_7_large(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 1)
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 7)
  %14 = add i32 %13, %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 12)
  %18 = add i32 %14, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 18)
  %22 = add i32 %18, %21
  %23 = load i32, ptr %0, align 4
  %24 = add i32 %22, %23
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, -1028477379
  %28 = add i32 %24, %27
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %30 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 17)
  %31 = mul i32 %30, 668265263
  %32 = load i8, ptr %29, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %33, 374761393
  %35 = add i32 %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %37 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 11)
  %38 = mul i32 %37, -1640531535
  %39 = load i8, ptr %36, align 1
  %40 = zext i8 %39 to i32
  %41 = mul i32 %40, 374761393
  %42 = add i32 %38, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %44 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11)
  %45 = mul i32 %44, -1640531535
  %46 = load i8, ptr %43, align 1
  %47 = zext i8 %46 to i32
  %48 = mul i32 %47, 374761393
  %49 = add i32 %45, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 11)
  %51 = mul i32 %50, -1640531535
  %52 = lshr i32 %51, 15
  %53 = xor i32 %52, %51
  %54 = mul i32 %53, -2048144777
  %55 = lshr i32 %54, 13
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, -1028477379
  %58 = lshr i32 %57, 16
  %59 = xor i32 %58, %57
  ret i32 %59
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
