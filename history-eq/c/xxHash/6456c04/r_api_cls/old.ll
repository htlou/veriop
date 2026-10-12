; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6456c04/wrap_api_cls.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6456c04/wrap_api_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api_64_seed_0to0(ptr noundef readnone %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = add i64 %2, -7046029288634856825
  %7 = xor i64 %6, -4734510112055689544
  %8 = lshr i64 %7, 37
  %9 = xor i64 %8, %7
  %10 = mul i64 %9, 1609587791953885689
  %11 = lshr i64 %10, 32
  %12 = xor i64 %11, %10
  br label %13

13:                                               ; preds = %3, %5
  %14 = phi i64 [ %12, %5 ], [ 0, %3 ]
  ret i64 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_secret_0to0(ptr noundef readnone %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = icmp ne i64 %1, 0
  %6 = icmp ult i64 %3, 136
  %7 = or i1 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load i64, ptr %2, align 1
  %10 = xor i64 %9, -7046029288634856825
  %11 = lshr i64 %10, 37
  %12 = xor i64 %11, %10
  %13 = mul i64 %12, 1609587791953885689
  %14 = lshr i64 %13, 32
  %15 = xor i64 %14, %13
  br label %16

16:                                               ; preds = %4, %8
  %17 = phi i64 [ %15, %8 ], [ 0, %4 ]
  ret i64 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_1to3(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = add i64 %1, -4
  %5 = icmp ult i64 %4, -3
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %0, align 1
  %8 = lshr i64 %1, 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr i8, ptr %0, i64 %1
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %7 to i64
  %15 = shl nuw nsw i64 %14, 16
  %16 = zext i8 %10 to i64
  %17 = shl nuw nsw i64 %16, 24
  %18 = or disjoint i64 %17, %15
  %19 = zext i8 %13 to i64
  %20 = or disjoint i64 %18, %19
  %21 = shl nuw nsw i64 %1, 8
  %22 = or disjoint i64 %20, %21
  %23 = add i64 %2, 963444408
  %24 = xor i64 %22, %23
  %25 = mul i64 %24, -7046029288634856825
  %26 = lshr i64 %25, 37
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, 1609587791953885689
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  br label %31

31:                                               ; preds = %3, %6
  %32 = phi i64 [ %30, %6 ], [ 0, %3 ]
  ret i64 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_secret_1to3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = add i64 %1, -4
  %6 = icmp ult i64 %5, -3
  %7 = icmp ult i64 %3, 136
  %8 = or i1 %6, %7
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %2, align 1
  %11 = load i8, ptr %0, align 1
  %12 = lshr i64 %1, 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr i8, ptr %0, i64 %1
  %16 = getelementptr i8, ptr %15, i64 -1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %11 to i64
  %19 = shl nuw nsw i64 %18, 16
  %20 = zext i8 %14 to i64
  %21 = shl nuw nsw i64 %20, 24
  %22 = or disjoint i64 %21, %19
  %23 = zext i8 %17 to i64
  %24 = or disjoint i64 %22, %23
  %25 = shl nuw nsw i64 %1, 8
  %26 = or disjoint i64 %24, %25
  %27 = zext i32 %10 to i64
  %28 = xor i64 %26, %27
  %29 = mul i64 %28, -7046029288634856825
  %30 = lshr i64 %29, 37
  %31 = xor i64 %30, %29
  %32 = mul i64 %31, 1609587791953885689
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  br label %35

35:                                               ; preds = %4, %9
  %36 = phi i64 [ %34, %9 ], [ 0, %4 ]
  ret i64 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_4to7(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = and i64 %1, -4
  %5 = icmp eq i64 %4, 4
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -4
  %10 = load i32, ptr %9, align 1
  %11 = zext i32 %10 to i64
  %12 = zext i32 %7 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or disjoint i64 %13, %11
  %15 = add i64 %2, -4734510112055689544
  %16 = xor i64 %14, %15
  %17 = lshr i64 %16, 39
  %18 = xor i64 %17, %16
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %1
  %21 = lshr i64 %20, 47
  %22 = lshr i64 %20, 37
  %23 = xor i64 %21, %22
  %24 = xor i64 %23, %20
  %25 = mul i64 %24, 1609587791953885689
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %25
  br label %28

28:                                               ; preds = %3, %6
  %29 = phi i64 [ %27, %6 ], [ 0, %3 ]
  ret i64 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_secret_4to7(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = and i64 %1, -4
  %6 = icmp ne i64 %5, 4
  %7 = icmp ult i64 %3, 136
  %8 = or i1 %6, %7
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = load i64, ptr %2, align 1
  %11 = load i32, ptr %0, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -4
  %14 = load i32, ptr %13, align 1
  %15 = zext i32 %14 to i64
  %16 = zext i32 %11 to i64
  %17 = shl nuw i64 %16, 32
  %18 = or disjoint i64 %17, %15
  %19 = xor i64 %18, %10
  %20 = lshr i64 %19, 39
  %21 = xor i64 %20, %19
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %22, %1
  %24 = lshr i64 %23, 47
  %25 = lshr i64 %23, 37
  %26 = xor i64 %24, %25
  %27 = xor i64 %26, %23
  %28 = mul i64 %27, 1609587791953885689
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  br label %31

31:                                               ; preds = %4, %9
  %32 = phi i64 [ %30, %9 ], [ 0, %4 ]
  ret i64 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_9to16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = add i64 %1, -17
  %5 = icmp ult i64 %4, -8
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, -4734510112055689544
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1
  %12 = sub i64 2066345149520216444, %2
  %13 = xor i64 %11, %12
  %14 = zext i64 %8 to i128
  %15 = zext i64 %13 to i128
  %16 = mul nuw i128 %15, %14
  %17 = lshr i128 %16, 64
  %18 = xor i128 %17, %16
  %19 = trunc i128 %18 to i64
  %20 = add i64 %8, %1
  %21 = add i64 %20, %13
  %22 = add i64 %21, %19
  %23 = lshr i64 %22, 37
  %24 = xor i64 %23, %22
  %25 = mul i64 %24, 1609587791953885689
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %25
  br label %28

28:                                               ; preds = %3, %6
  %29 = phi i64 [ %27, %6 ], [ 0, %3 ]
  ret i64 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_secret_9to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = add i64 %1, -17
  %6 = icmp ult i64 %5, -8
  %7 = icmp ult i64 %3, 136
  %8 = or i1 %6, %7
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = load i64, ptr %2, align 1
  %11 = getelementptr i8, ptr %2, i64 8
  %12 = load i64, ptr %11, align 1
  %13 = load i64, ptr %0, align 1
  %14 = xor i64 %13, %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %16 = getelementptr inbounds i8, ptr %15, i64 -8
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %17, %12
  %19 = zext i64 %14 to i128
  %20 = zext i64 %18 to i128
  %21 = mul nuw i128 %20, %19
  %22 = lshr i128 %21, 64
  %23 = xor i128 %22, %21
  %24 = trunc i128 %23 to i64
  %25 = add i64 %14, %1
  %26 = add i64 %25, %18
  %27 = add i64 %26, %24
  %28 = lshr i64 %27, 37
  %29 = xor i64 %28, %27
  %30 = mul i64 %29, 1609587791953885689
  %31 = lshr i64 %30, 32
  %32 = xor i64 %31, %30
  br label %33

33:                                               ; preds = %4, %9
  %34 = phi i64 [ %32, %9 ], [ 0, %4 ]
  ret i64 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_8to8(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq i64 %1, 8
  br i1 %4, label %5, label %26

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 1
  %9 = zext i32 %8 to i64
  %10 = zext i32 %6 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %9
  %13 = add i64 %2, -4734510112055689544
  %14 = xor i64 %12, %13
  %15 = lshr i64 %14, 39
  %16 = xor i64 %15, %14
  %17 = mul i64 %16, -4417276706812531889
  %18 = add i64 %17, 8
  %19 = lshr i64 %18, 47
  %20 = lshr i64 %18, 37
  %21 = xor i64 %19, %20
  %22 = xor i64 %21, %18
  %23 = mul i64 %22, 1609587791953885689
  %24 = lshr i64 %23, 32
  %25 = xor i64 %24, %23
  br label %26

26:                                               ; preds = %3, %5
  %27 = phi i64 [ %25, %5 ], [ 0, %3 ]
  ret i64 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_secret_8to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = icmp ne i64 %1, 8
  %6 = icmp ult i64 %3, 136
  %7 = or i1 %5, %6
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = load i64, ptr %2, align 1
  %10 = load i32, ptr %0, align 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 1
  %13 = zext i32 %12 to i64
  %14 = zext i32 %10 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or disjoint i64 %15, %13
  %17 = xor i64 %16, %9
  %18 = lshr i64 %17, 39
  %19 = xor i64 %18, %17
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %20, 8
  %22 = lshr i64 %21, 47
  %23 = lshr i64 %21, 37
  %24 = xor i64 %22, %23
  %25 = xor i64 %24, %21
  %26 = mul i64 %25, 1609587791953885689
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  br label %29

29:                                               ; preds = %4, %8
  %30 = phi i64 [ %28, %8 ], [ 0, %4 ]
  ret i64 %30
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
