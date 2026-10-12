; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4bc56e4/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4bc56e4/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_raw_len_9to16_128b(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef writeonly %12) local_unnamed_addr #0 {
  %14 = alloca [16 x i8], align 64
  %15 = add i64 %2, -17
  %16 = icmp ult i64 %15, -8
  br i1 %16, label %58, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #3
  store i64 %0, ptr %14, align 64
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %1, ptr %18, align 8
  %19 = xor i64 %3, %0
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 %2
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = load i64, ptr %21, align 1
  %23 = sub i64 %4, %11
  %24 = xor i64 %22, %23
  %25 = xor i64 %19, %24
  %26 = zext i64 %25 to i128
  %27 = mul nuw i128 %26, 11400714785074694791
  %28 = trunc i128 %27 to i64
  %29 = lshr i128 %27, 64
  %30 = trunc nuw i128 %29 to i64
  %31 = shl nuw nsw i64 %2, 54
  %32 = add nsw i64 %31, -18014398509481984
  %33 = add i64 %32, %28
  %34 = and i64 %24, 4294967295
  %35 = mul nuw i64 %34, 2246822518
  %36 = add i64 %35, %24
  %37 = add i64 %36, %30
  %38 = tail call noundef i64 @llvm.bswap.i64(i64 %37)
  %39 = xor i64 %38, %33
  %40 = zext i64 %39 to i128
  %41 = mul nuw i128 %40, 14029467366897019727
  %42 = trunc i128 %41 to i64
  %43 = lshr i128 %41, 64
  %44 = trunc nuw i128 %43 to i64
  %45 = mul i64 %37, -4417276706812531889
  %46 = add i64 %45, %44
  %47 = lshr i64 %42, 37
  %48 = xor i64 %47, %42
  %49 = mul i64 %48, 1609587791953885689
  %50 = lshr i64 %49, 32
  %51 = xor i64 %50, %49
  %52 = lshr i64 %46, 37
  %53 = xor i64 %52, %46
  %54 = mul i64 %53, 1609587791953885689
  %55 = lshr i64 %54, 32
  %56 = xor i64 %55, %54
  store i64 %51, ptr %12, align 8
  %57 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %56, ptr %57, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #3
  br label %58

58:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
