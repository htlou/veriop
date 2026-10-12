; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/b54708f/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/b54708f/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_raw_len_4to8_128b(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef writeonly %12) local_unnamed_addr #0 {
  %14 = alloca [16 x i8], align 64
  %15 = add i64 %2, -9
  %16 = icmp ult i64 %15, -5
  br i1 %16, label %56, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #3
  store i64 %0, ptr %14, align 64
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %1, ptr %18, align 8
  %19 = trunc i64 %11 to i32
  %20 = tail call noundef i32 @llvm.bswap.i32(i32 %19)
  %21 = zext i32 %20 to i64
  %22 = shl nuw i64 %21, 32
  %23 = xor i64 %22, %11
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 %2
  %25 = getelementptr inbounds i8, ptr %24, i64 -4
  %26 = load i32, ptr %25, align 1
  %27 = and i64 %0, 4294967295
  %28 = zext i32 %26 to i64
  %29 = shl nuw i64 %28, 32
  %30 = or disjoint i64 %29, %27
  %31 = add i64 %23, %3
  %32 = xor i64 %30, %31
  %33 = shl nuw nsw i64 %2, 2
  %34 = add nuw nsw i64 %33, -7046029288634856825
  %35 = zext i64 %32 to i128
  %36 = zext i64 %34 to i128
  %37 = mul nuw i128 %35, %36
  %38 = trunc i128 %37 to i64
  %39 = lshr i128 %37, 64
  %40 = trunc nuw i128 %39 to i64
  %41 = shl i64 %38, 1
  %42 = add i64 %41, %40
  %43 = lshr i64 %42, 3
  %44 = xor i64 %43, %38
  %45 = lshr i64 %44, 37
  %46 = xor i64 %45, %44
  %47 = mul i64 %46, 1609587791953885689
  %48 = lshr i64 %47, 32
  %49 = xor i64 %48, %47
  %50 = lshr i64 %42, 37
  %51 = xor i64 %50, %42
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  store i64 %49, ptr %12, align 8
  %55 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %54, ptr %55, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #3
  br label %56

56:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

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
