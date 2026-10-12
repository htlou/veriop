; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/00d5458/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/00d5458/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64_seed_4to8(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -9
  %5 = icmp ult i64 %4, -5
  br i1 %5, label %36, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -4
  %10 = load i32, ptr %9, align 1
  %11 = lshr i64 %2, 32
  %12 = trunc nuw i64 %11 to i32
  %13 = add i32 %12, 963444408
  %14 = xor i32 %7, %13
  %15 = trunc i64 %2 to i32
  %16 = sub i32 -1102339037, %15
  %17 = xor i32 %10, %16
  %18 = zext i32 %14 to i64
  %19 = zext i32 %17 to i64
  %20 = mul nuw i64 %19, %18
  %21 = zext i32 %7 to i64
  %22 = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %21)
  %23 = tail call i32 @llvm.bswap.i32(i32 %10)
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 31
  %26 = or disjoint i64 %22, %1
  %27 = add i64 %26, %20
  %28 = add i64 %27, %25
  %29 = lshr i64 %28, 59
  %30 = lshr i64 %28, 37
  %31 = xor i64 %29, %30
  %32 = xor i64 %31, %28
  %33 = mul i64 %32, 1609587791953885689
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  br label %36

36:                                               ; preds = %3, %6
  %37 = phi i64 [ %35, %6 ], [ 0, %3 ]
  ret i64 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64_4to8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, -9
  %4 = icmp ult i64 %3, -5
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = getelementptr inbounds i8, ptr %7, i64 -4
  %9 = load i32, ptr %8, align 1
  %10 = xor i32 %6, 963444408
  %11 = xor i32 %9, -1102339037
  %12 = zext i32 %10 to i64
  %13 = zext i32 %11 to i64
  %14 = mul nuw i64 %13, %12
  %15 = zext i32 %6 to i64
  %16 = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %15)
  %17 = tail call i32 @llvm.bswap.i32(i32 %9)
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 31
  %20 = or disjoint i64 %16, %1
  %21 = add i64 %20, %14
  %22 = add i64 %21, %19
  %23 = lshr i64 %22, 59
  %24 = lshr i64 %22, 37
  %25 = xor i64 %23, %24
  %26 = xor i64 %25, %22
  %27 = mul i64 %26, 1609587791953885689
  %28 = lshr i64 %27, 32
  %29 = xor i64 %28, %27
  br label %30

30:                                               ; preds = %2, %5
  %31 = phi i64 [ %29, %5 ], [ 0, %2 ]
  ret i64 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_raw_len_4to8_64b(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -9
  %6 = icmp ult i64 %5, -5
  br i1 %6, label %40, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %0, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -4
  %11 = load i32, ptr %10, align 1
  %12 = lshr i64 %3, 32
  %13 = trunc nuw i64 %12 to i32
  %14 = load i32, ptr %2, align 1
  %15 = add i32 %14, %13
  %16 = xor i32 %15, %8
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %18 = load i32, ptr %17, align 1
  %19 = trunc i64 %3 to i32
  %20 = sub i32 %18, %19
  %21 = xor i32 %20, %11
  %22 = zext i32 %16 to i64
  %23 = zext i32 %21 to i64
  %24 = mul nuw i64 %23, %22
  %25 = zext i32 %8 to i64
  %26 = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %25)
  %27 = tail call i32 @llvm.bswap.i32(i32 %11)
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 31
  %30 = or disjoint i64 %26, %1
  %31 = add i64 %30, %29
  %32 = add i64 %31, %24
  %33 = lshr i64 %32, 59
  %34 = lshr i64 %32, 37
  %35 = xor i64 %34, %33
  %36 = xor i64 %35, %32
  %37 = mul i64 %36, 1609587791953885689
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %40

40:                                               ; preds = %4, %7
  %41 = phi i64 [ %39, %7 ], [ 0, %4 ]
  ret i64 %41
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
