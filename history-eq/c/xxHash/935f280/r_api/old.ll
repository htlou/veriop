; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/935f280/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/935f280/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -9
  %5 = icmp ult i64 %4, -5
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -4
  %10 = load i32, ptr %9, align 1
  %11 = zext i32 %7 to i64
  %12 = zext i32 %10 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or disjoint i64 %13, %11
  %15 = xor i64 %14, -4734510112055689544
  %16 = xor i64 %14, 8935565165804498204
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %18 = lshr i64 %15, 51
  %19 = xor i64 %18, %15
  %20 = mul i64 %19, 2654435761
  %21 = add i64 %20, %1
  %22 = lshr i64 %21, 47
  %23 = xor i64 %22, %21
  %24 = mul i64 %23, -4417276706812531889
  %25 = lshr i64 %17, 47
  %26 = xor i64 %25, %17
  %27 = mul i64 %26, -7046029288634856825
  %28 = sub i64 %27, %1
  %29 = lshr i64 %28, 43
  %30 = xor i64 %29, %28
  %31 = mul i64 %30, -8796714831421723037
  %32 = lshr i64 %24, 37
  %33 = xor i64 %32, %24
  %34 = mul i64 %33, 1609587791953885689
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  %37 = lshr i64 %31, 37
  %38 = xor i64 %37, %31
  %39 = mul i64 %38, 1609587791953885689
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  store i64 %36, ptr %2, align 8
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_seed_4to8(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -9
  %6 = icmp ult i64 %5, -5
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %0, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -4
  %11 = load i32, ptr %10, align 1
  %12 = zext i32 %8 to i64
  %13 = zext i32 %11 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or disjoint i64 %14, %12
  %16 = tail call noundef i64 @llvm.bswap.i64(i64 %15)
  %17 = add i64 %2, -4734510112055689544
  %18 = xor i64 %15, %17
  %19 = sub i64 2066345149520216444, %2
  %20 = xor i64 %16, %19
  %21 = lshr i64 %18, 51
  %22 = xor i64 %21, %18
  %23 = mul i64 %22, 2654435761
  %24 = add i64 %23, %1
  %25 = lshr i64 %24, 47
  %26 = xor i64 %25, %24
  %27 = mul i64 %26, -4417276706812531889
  %28 = lshr i64 %20, 47
  %29 = xor i64 %28, %20
  %30 = mul i64 %29, -7046029288634856825
  %31 = sub i64 %30, %1
  %32 = lshr i64 %31, 43
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -8796714831421723037
  %35 = lshr i64 %27, 37
  %36 = xor i64 %35, %27
  %37 = mul i64 %36, 1609587791953885689
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  %40 = lshr i64 %34, 37
  %41 = xor i64 %40, %34
  %42 = mul i64 %41, 1609587791953885689
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  store i64 %39, ptr %3, align 8
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %44, ptr %45, align 8
  br label %46

46:                                               ; preds = %4, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_secret_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = add i64 %1, -9
  %7 = icmp ult i64 %6, -5
  %8 = icmp ult i64 %3, 136
  %9 = or i1 %7, %8
  br i1 %9, label %50, label %10

10:                                               ; preds = %5
  %11 = load i64, ptr %2, align 1
  %12 = getelementptr i8, ptr %2, i64 8
  %13 = load i64, ptr %12, align 1
  %14 = load i32, ptr %0, align 1
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %16 = getelementptr inbounds i8, ptr %15, i64 -4
  %17 = load i32, ptr %16, align 1
  %18 = zext i32 %14 to i64
  %19 = zext i32 %17 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or disjoint i64 %20, %18
  %22 = tail call noundef i64 @llvm.bswap.i64(i64 %21)
  %23 = xor i64 %21, %11
  %24 = xor i64 %22, %13
  %25 = lshr i64 %23, 51
  %26 = xor i64 %25, %23
  %27 = mul i64 %26, 2654435761
  %28 = add i64 %27, %1
  %29 = lshr i64 %28, 47
  %30 = xor i64 %29, %28
  %31 = mul i64 %30, -4417276706812531889
  %32 = lshr i64 %24, 47
  %33 = xor i64 %32, %24
  %34 = mul i64 %33, -7046029288634856825
  %35 = sub i64 %34, %1
  %36 = lshr i64 %35, 43
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, -8796714831421723037
  %39 = lshr i64 %31, 37
  %40 = xor i64 %39, %31
  %41 = mul i64 %40, 1609587791953885689
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  %44 = lshr i64 %38, 37
  %45 = xor i64 %44, %38
  %46 = mul i64 %45, 1609587791953885689
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  store i64 %43, ptr %4, align 8
  %49 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %48, ptr %49, align 8
  br label %50

50:                                               ; preds = %5, %10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
