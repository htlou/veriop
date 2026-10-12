; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/00d5458/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/00d5458/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_4to8_64b(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = alloca [16 x i8], align 64
  %14 = add i64 %2, -9
  %15 = icmp ult i64 %14, -5
  br i1 %15, label %47, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #4
  store i64 %0, ptr %13, align 64
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %1, ptr %17, align 8
  %18 = lshr i64 %3, 32
  %19 = trunc nuw i64 %18 to i32
  %20 = getelementptr inbounds nuw i8, ptr %13, i64 %2
  %21 = getelementptr inbounds i8, ptr %20, i64 -4
  %22 = load i32, ptr %21, align 1
  %23 = lshr i64 %11, 32
  %24 = add i64 %23, %3
  %25 = xor i64 %24, %0
  %26 = trunc i64 %11 to i32
  %27 = sub i32 %19, %26
  %28 = xor i32 %22, %27
  %29 = and i64 %25, 4294967295
  %30 = zext i32 %28 to i64
  %31 = mul nuw i64 %29, %30
  %32 = and i64 %0, 4294967295
  %33 = tail call noundef i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %32)
  %34 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 23)
  %35 = zext i32 %34 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or disjoint i64 %33, %2
  %38 = add i64 %37, %31
  %39 = add i64 %38, %36
  %40 = lshr i64 %39, 59
  %41 = lshr i64 %39, 37
  %42 = xor i64 %40, %41
  %43 = xor i64 %42, %39
  %44 = mul i64 %43, 1609587791953885689
  %45 = lshr i64 %44, 32
  %46 = xor i64 %45, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #4
  br label %47

47:                                               ; preds = %12, %16
  %48 = phi i64 [ %46, %16 ], [ 0, %12 ]
  ret i64 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
