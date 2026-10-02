; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_loadfirst/xxhash_loadfirst.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_loadfirst/xxhash_loadfirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable


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

define dso_local i64 @target_1to3_len1(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i64 1, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 1, 4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp eq i64 1, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load i8, ptr %0, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 16
  %14 = shl nuw nsw i64 %12, 24
  %15 = or disjoint i64 %14, %13
  %16 = or disjoint i64 %15, %12
  br label %26

17:                                               ; preds = %4
  %18 = load i16, ptr %0, align 1
  %19 = zext i16 %18 to i64
  %20 = shl nuw nsw i64 %19, 16
  %21 = getelementptr i8, ptr %0, i64 1
  %22 = getelementptr i8, ptr %21, i64 -1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = or disjoint i64 %20, %24
  br label %26

26:                                               ; preds = %17, %10
  %27 = phi i64 [ %16, %10 ], [ %25, %17 ]
  %28 = shl nuw nsw i64 1, 8
  %29 = or i64 %27, %28
  %30 = load i32, ptr %2, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %32 = load i32, ptr %31, align 1
  %33 = xor i32 %32, %30
  %34 = zext i32 %33 to i64
  %35 = add i64 %3, %34
  %36 = xor i64 %35, %29
  %37 = lshr i64 %36, 33
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, -4417276706812531889
  %40 = lshr i64 %39, 29
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, 1609587929392839161
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  ret i64 %44
}

define dso_local i64 @target_1to3_len2(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i64 2, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 2, 4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp eq i64 2, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load i8, ptr %0, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 16
  %14 = shl nuw nsw i64 %12, 24
  %15 = or disjoint i64 %14, %13
  %16 = or disjoint i64 %15, %12
  br label %26

17:                                               ; preds = %4
  %18 = load i16, ptr %0, align 1
  %19 = zext i16 %18 to i64
  %20 = shl nuw nsw i64 %19, 16
  %21 = getelementptr i8, ptr %0, i64 2
  %22 = getelementptr i8, ptr %21, i64 -1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = or disjoint i64 %20, %24
  br label %26

26:                                               ; preds = %17, %10
  %27 = phi i64 [ %16, %10 ], [ %25, %17 ]
  %28 = shl nuw nsw i64 2, 8
  %29 = or i64 %27, %28
  %30 = load i32, ptr %2, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %32 = load i32, ptr %31, align 1
  %33 = xor i32 %32, %30
  %34 = zext i32 %33 to i64
  %35 = add i64 %3, %34
  %36 = xor i64 %35, %29
  %37 = lshr i64 %36, 33
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, -4417276706812531889
  %40 = lshr i64 %39, 29
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, 1609587929392839161
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  ret i64 %44
}

define dso_local i64 @target_1to3_len3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i64 3, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 3, 4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp eq i64 3, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load i8, ptr %0, align 1
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 16
  %14 = shl nuw nsw i64 %12, 24
  %15 = or disjoint i64 %14, %13
  %16 = or disjoint i64 %15, %12
  br label %26

17:                                               ; preds = %4
  %18 = load i16, ptr %0, align 1
  %19 = zext i16 %18 to i64
  %20 = shl nuw nsw i64 %19, 16
  %21 = getelementptr i8, ptr %0, i64 3
  %22 = getelementptr i8, ptr %21, i64 -1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = or disjoint i64 %20, %24
  br label %26

26:                                               ; preds = %17, %10
  %27 = phi i64 [ %16, %10 ], [ %25, %17 ]
  %28 = shl nuw nsw i64 3, 8
  %29 = or i64 %27, %28
  %30 = load i32, ptr %2, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %32 = load i32, ptr %31, align 1
  %33 = xor i32 %32, %30
  %34 = zext i32 %33 to i64
  %35 = add i64 %3, %34
  %36 = xor i64 %35, %29
  %37 = lshr i64 %36, 33
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, -4417276706812531889
  %40 = lshr i64 %39, 29
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, 1609587929392839161
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  ret i64 %44
}

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

define dso_local i64 @target_0to16_len0(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 0, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 0, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 0, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 0, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 0
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 0, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 0, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 0, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 0
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 0
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len1(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 1, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 1, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 1, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 1
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 1, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 1, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 1, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 1
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 2, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 2, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 2, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 2, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 2
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 2, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 2, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 2, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 2
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len3(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 3, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 3, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 3, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 3, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 3
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 3, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 3, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 3, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 3
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len4(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 4, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 4, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 4, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 4, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 4
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 4, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 4, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 4, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 4
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len5(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 5, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 5, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 5, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 5, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 5
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 5, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 5, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 5, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 5
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len6(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 6, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 6, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 6, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 6, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 6
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 6, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 6, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 6, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 6
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len7(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 7, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 7, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 7, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 7
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 7, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 7, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 7, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 7
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len8(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 8, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 8, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 8, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 8, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 8
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 8, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 8, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 8, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 8
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len9(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 9, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 9, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 9, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 9, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 9
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 9, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 9, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 9, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 9
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len10(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 10, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 10, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 10, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 10, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 10
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 10, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 10, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 10, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 10
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len11(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 11, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 11, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 11, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 11
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 11, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 11, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 11, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 11
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len12(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 12, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 12, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 12, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 12, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 12
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 12, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 12, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 12, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 12
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len13(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 13, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 13, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 13, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 13, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 13
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 13, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 13, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 13, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 13
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len14(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 14, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 14, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 14, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 14, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 14
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 14, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 14, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 14, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 14
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len15(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 15, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 15, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 15, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 15, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 15
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 15, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 15, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 15, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 15
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}

define dso_local i64 @target_0to16_len16(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 16, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 16, 4
  br i1 %6, label %7, label %63, !prof !5

7:                                                ; preds = %4
  %8 = icmp eq i64 16, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp eq i64 16, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = shl nuw nsw i64 %15, 24
  %18 = or disjoint i64 %16, %17
  %19 = or disjoint i64 %18, %15
  br label %29

20:                                               ; preds = %9
  %21 = load i16, ptr %0, align 1
  %22 = zext i16 %21 to i64
  %23 = shl nuw nsw i64 %22, 16
  %24 = getelementptr i8, ptr %0, i64 16
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i64
  %28 = or disjoint i64 %23, %27
  br label %29

29:                                               ; preds = %13, %20
  %30 = phi i64 [ %19, %13 ], [ %28, %20 ]
  %31 = shl nuw nsw i64 16, 8
  %32 = or i64 %30, %31
  %33 = load i32, ptr %2, align 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %35 = load i32, ptr %34, align 1
  %36 = xor i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = add i64 %3, %37
  %39 = xor i64 %38, %32
  %40 = lshr i64 %39, 33
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, -4417276706812531889
  %43 = lshr i64 %42, 29
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %103

48:                                               ; preds = %7
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %52
  %54 = xor i64 %53, %3
  %55 = lshr i64 %54, 33
  %56 = xor i64 %55, %54
  %57 = mul i64 %56, -4417276706812531889
  %58 = lshr i64 %57, 29
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, 1609587929392839161
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %103

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 16, 9
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = tail call i64 @target_4to8(ptr noundef %0, i64 noundef 16, ptr noundef %2, i64 noundef %3)
  br label %103

67:                                               ; preds = %63
  %68 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %68)
  %69 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %69)
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = xor i64 %73, %71
  %75 = add i64 %74, %3
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = sub i64 %80, %3
  %82 = load i64, ptr %0, align 1
  %83 = xor i64 %82, %75
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %85 = getelementptr inbounds i8, ptr %84, i64 -8
  %86 = load i64, ptr %85, align 1
  %87 = xor i64 %86, %81
  %88 = tail call noundef i64 @llvm.bswap.i64(i64 %83)
  %89 = add i64 %88, 16
  %90 = add i64 %89, %87
  %91 = zext i64 %83 to i128
  %92 = zext i64 %87 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %90, %96
  %98 = lshr i64 %97, 37
  %99 = xor i64 %98, %97
  %100 = mul i64 %99, 1609587791953885689
  %101 = lshr i64 %100, 32
  %102 = xor i64 %101, %100
  br label %103

103:                                              ; preds = %67, %65, %48, %29
  %104 = phi i64 [ %47, %29 ], [ %62, %48 ], [ %66, %65 ], [ %102, %67 ]
  ret i64 %104
}
