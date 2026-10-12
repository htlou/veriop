; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6456c04/wrap_raw_cls.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6456c04/wrap_raw_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_0to16_64b_0to0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = icmp eq i64 %2, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = add i64 %11, -7046029288634856825
  %16 = xor i64 %15, %3
  %17 = lshr i64 %16, 37
  %18 = xor i64 %17, %16
  %19 = mul i64 %18, 1609587791953885689
  %20 = lshr i64 %19, 32
  %21 = xor i64 %20, %19
  br label %22

22:                                               ; preds = %12, %14
  %23 = phi i64 [ %21, %14 ], [ 0, %12 ]
  ret i64 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_0to16_64b_1to3(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = alloca [16 x i8], align 64
  %14 = add i64 %2, -4
  %15 = icmp ult i64 %14, -3
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #3
  store i64 %0, ptr %13, align 64
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %1, ptr %17, align 8
  %18 = lshr i64 %2, 1
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 %18
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr i8, ptr %13, i64 %2
  %22 = getelementptr i8, ptr %21, i64 -1
  %23 = load i8, ptr %22, align 1
  %24 = shl i64 %0, 16
  %25 = and i64 %24, 16711680
  %26 = zext i8 %20 to i64
  %27 = shl nuw nsw i64 %26, 24
  %28 = or disjoint i64 %27, %25
  %29 = zext i8 %23 to i64
  %30 = or disjoint i64 %28, %29
  %31 = shl nuw nsw i64 %2, 8
  %32 = or disjoint i64 %30, %31
  %33 = and i64 %3, 4294967295
  %34 = add i64 %11, %33
  %35 = xor i64 %32, %34
  %36 = mul i64 %35, -7046029288634856825
  %37 = lshr i64 %36, 37
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, 1609587791953885689
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #3
  br label %42

42:                                               ; preds = %12, %16
  %43 = phi i64 [ %41, %16 ], [ 0, %12 ]
  ret i64 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_0to16_64b_4to7(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = alloca [16 x i8], align 64
  %14 = and i64 %2, -4
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #3
  store i64 %0, ptr %13, align 64
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %1, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 %2
  %19 = getelementptr inbounds i8, ptr %18, i64 -4
  %20 = load i32, ptr %19, align 1
  %21 = zext i32 %20 to i64
  %22 = shl i64 %0, 32
  %23 = or disjoint i64 %22, %21
  %24 = add i64 %11, %3
  %25 = xor i64 %23, %24
  %26 = lshr i64 %25, 39
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, %2
  %30 = lshr i64 %29, 47
  %31 = lshr i64 %29, 37
  %32 = xor i64 %31, %30
  %33 = xor i64 %32, %29
  %34 = mul i64 %33, 1609587791953885689
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #3
  br label %37

37:                                               ; preds = %12, %16
  %38 = phi i64 [ %36, %16 ], [ 0, %12 ]
  ret i64 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_0to16_64b_9to16(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = alloca [16 x i8], align 64
  %14 = add i64 %2, -17
  %15 = icmp ult i64 %14, -8
  br i1 %15, label %38, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #3
  store i64 %0, ptr %13, align 64
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %1, ptr %17, align 8
  %18 = xor i64 %3, %0
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 %2
  %20 = getelementptr inbounds i8, ptr %19, i64 -8
  %21 = load i64, ptr %20, align 1
  %22 = sub i64 %4, %11
  %23 = xor i64 %21, %22
  %24 = zext i64 %18 to i128
  %25 = zext i64 %23 to i128
  %26 = mul nuw i128 %25, %24
  %27 = lshr i128 %26, 64
  %28 = xor i128 %27, %26
  %29 = trunc i128 %28 to i64
  %30 = add i64 %18, %2
  %31 = add i64 %30, %23
  %32 = add i64 %31, %29
  %33 = lshr i64 %32, 37
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, 1609587791953885689
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #3
  br label %38

38:                                               ; preds = %12, %16
  %39 = phi i64 [ %37, %16 ], [ 0, %12 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_0to16_64b_8to8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = icmp eq i64 %2, 8
  br i1 %13, label %14, label %29

14:                                               ; preds = %12
  %15 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 32)
  %16 = add i64 %11, %3
  %17 = xor i64 %16, %15
  %18 = lshr i64 %17, 39
  %19 = xor i64 %18, %17
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %20, 8
  %22 = lshr i64 %21, 47
  %23 = lshr i64 %21, 37
  %24 = xor i64 %23, %22
  %25 = xor i64 %24, %21
  %26 = mul i64 %25, 1609587791953885689
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  br label %29

29:                                               ; preds = %12, %14
  %30 = phi i64 [ %28, %14 ], [ 0, %12 ]
  ret i64 %30
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
