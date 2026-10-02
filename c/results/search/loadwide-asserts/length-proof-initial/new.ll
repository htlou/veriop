; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/loadwide-asserts/xxhash_loadwide.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/loadwide-asserts/xxhash_loadwide.c"
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

define dso_local i64 @target_0to16_len0(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 0, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 0, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 0, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 0, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 0
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 0
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 0, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 0, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 0
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 0, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len1(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 1, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 1, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 1, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 1
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 1, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 1, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 1
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 1, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len2(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 2, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 2, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 2, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 2, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 2
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 2, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 2, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 2
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 2, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 3, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 3, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 3, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 3, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 3
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 3, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 3, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 3
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 3, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len4(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 4, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 4, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 4, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 4, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 4
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 4, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 4, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 4
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 4, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len5(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 5, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 5, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 5, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 5, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 5
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 5, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 5, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 5
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 5, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len6(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 6, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 6, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 6, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 6, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 6
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 6, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 6, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 6
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 6, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len7(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 7, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 7, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 7, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 7, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 7
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 7, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 7, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 7
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 7, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 8, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 8, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 8, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 8, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 8
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 8, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 8, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 8
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 8, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len9(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 9, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 9, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 9, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 9, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 9
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 9, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 9, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 9
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 9, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len10(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 10, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 10, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 10, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 10, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 10
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 10, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 10, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 10
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 10, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len11(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 11, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 11, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 11, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 11, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 11
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 11, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 11, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 11
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 11, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len12(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 12, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 12, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 12, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 12, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 12
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 12, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 12, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 12
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 12, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len13(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 13, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 13, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 13, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 13, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 13
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 13, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 13, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 13
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 13, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len14(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 14, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 14, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 14, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 14, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 14
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 14, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 14, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 14
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 14, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len15(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 15, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 15, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 15, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 15, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 15
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 15, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 15, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 15
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 15, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}

define dso_local i64 @target_0to16_len16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 16, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 16, 8
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
  br label %142

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 16, 3
  br i1 %44, label %45, label %86

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = icmp eq i64 16, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  br label %61

52:                                               ; preds = %45
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %55 to i64
  %57 = load i32, ptr %0, align 1
  %58 = zext i32 %57 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %56
  br label %61

61:                                               ; preds = %49, %52
  %62 = phi i64 [ %51, %49 ], [ %60, %52 ]
  %63 = trunc i64 %3 to i32
  %64 = tail call noundef i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw i64 %65, 32
  %67 = xor i64 %66, %3
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %71, %69
  %73 = sub i64 %72, %67
  %74 = xor i64 %73, %62
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 49)
  %76 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 24)
  %77 = xor i64 %76, %75
  %78 = xor i64 %77, %74
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 35
  %81 = add nuw nsw i64 %80, 16
  %82 = xor i64 %81, %79
  %83 = mul i64 %82, -6939452855193903323
  %84 = lshr i64 %83, 28
  %85 = xor i64 %84, %83
  br label %142

86:                                               ; preds = %43
  %87 = icmp eq i64 16, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %90)
  %91 = icmp eq i64 16, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i8, ptr %0, align 1
  %94 = zext i8 %93 to i64
  %95 = shl nuw nsw i64 %94, 16
  %96 = shl nuw nsw i64 %94, 24
  %97 = or disjoint i64 %95, %96
  %98 = or disjoint i64 %97, %94
  br label %108

99:                                               ; preds = %88
  %100 = load i16, ptr %0, align 1
  %101 = zext i16 %100 to i64
  %102 = shl nuw nsw i64 %101, 16
  %103 = getelementptr i8, ptr %0, i64 16
  %104 = getelementptr i8, ptr %103, i64 -1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i64
  %107 = or disjoint i64 %102, %106
  br label %108

108:                                              ; preds = %92, %99
  %109 = phi i64 [ %98, %92 ], [ %107, %99 ]
  %110 = shl nuw nsw i64 16, 8
  %111 = or i64 %109, %110
  %112 = load i32, ptr %2, align 1
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %114 = load i32, ptr %113, align 1
  %115 = xor i32 %114, %112
  %116 = zext i32 %115 to i64
  %117 = add i64 %3, %116
  %118 = xor i64 %117, %111
  %119 = lshr i64 %118, 33
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, -4417276706812531889
  %122 = lshr i64 %121, 29
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587929392839161
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  br label %142

127:                                              ; preds = %86
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %129, %131
  %133 = xor i64 %132, %3
  %134 = lshr i64 %133, 33
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, -4417276706812531889
  %137 = lshr i64 %136, 29
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587929392839161
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %127, %108, %61, %7
  %143 = phi i64 [ %42, %7 ], [ %85, %61 ], [ %126, %108 ], [ %141, %127 ]
  ret i64 %143
}
