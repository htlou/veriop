; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4bc56e4/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4bc56e4/wrap_api.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind
define dso_local void @target_api_128_9to16(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = add i32 %1, -17
  %9 = icmp ult i32 %8, -8
  br i1 %9, label %81, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %11 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 8) #5
  %12 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %13 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull @kSecret, i32 noundef 8) #5
  %14 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  %15 = xor i64 %14, %12
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %17 = getelementptr inbounds i8, ptr %16, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %18 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %17, i32 noundef 8) #5
  %19 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %20 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 8), i32 noundef 8) #5
  %21 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  %22 = xor i64 %21, %19
  %23 = xor i64 %15, %22
  %24 = and i64 %23, 4294967295
  %25 = mul nuw i64 %24, 2246822535
  %26 = lshr i64 %23, 32
  %27 = mul nuw i64 %26, 2246822535
  %28 = mul nuw i64 %24, 2654435761
  %29 = mul nuw i64 %26, 2654435761
  %30 = lshr i64 %25, 32
  %31 = and i64 %27, 4294967295
  %32 = add nuw i64 %31, %28
  %33 = add nuw i64 %32, %30
  %34 = lshr i64 %27, 32
  %35 = lshr i64 %33, 32
  %36 = shl i64 %33, 32
  %37 = and i64 %25, 4294967295
  %38 = add nsw i32 %1, -1
  %39 = zext nneg i32 %38 to i64
  %40 = shl nuw nsw i64 %39, 54
  %41 = or disjoint i64 %37, %40
  %42 = add i64 %41, %36
  %43 = and i64 %22, 4294967295
  %44 = mul nuw i64 %43, 2246822518
  %45 = add i64 %44, %22
  %46 = add i64 %45, %29
  %47 = add i64 %46, %34
  %48 = add i64 %47, %35
  %49 = call noundef i64 @llvm.bswap.i64(i64 %48)
  %50 = xor i64 %49, %42
  %51 = and i64 %50, 4294967295
  %52 = mul nuw nsw i64 %51, 668265295
  %53 = lshr i64 %50, 32
  %54 = mul nuw nsw i64 %53, 668265295
  %55 = mul nuw i64 %51, 3266489917
  %56 = mul nuw i64 %53, 3266489917
  %57 = lshr i64 %52, 32
  %58 = and i64 %54, 4294967295
  %59 = add nuw i64 %58, %55
  %60 = add nuw i64 %59, %57
  %61 = lshr i64 %54, 32
  %62 = lshr i64 %60, 32
  %63 = shl i64 %60, 32
  %64 = and i64 %52, 4294967295
  %65 = or disjoint i64 %63, %64
  %66 = mul i64 %48, -4417276706812531889
  %67 = add i64 %56, %66
  %68 = add i64 %67, %61
  %69 = add i64 %68, %62
  %70 = lshr i64 %63, 37
  %71 = xor i64 %70, %65
  %72 = mul i64 %71, 1609587791953885689
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  %75 = lshr i64 %69, 37
  %76 = xor i64 %75, %69
  %77 = mul i64 %76, 1609587791953885689
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  store i64 %74, ptr %2, align 4
  %80 = getelementptr inbounds nuw i8, ptr %2, i32 8
  store i64 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %3, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nounwind
define dso_local void @target_api_128_seed_9to16(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = add i32 %1, -17
  %10 = icmp ult i32 %9, -8
  br i1 %10, label %83, label %11

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %12 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 8) #5
  %13 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %14 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull @kSecret, i32 noundef 8) #5
  %15 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  %16 = xor i64 %15, %13
  %17 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %18 = getelementptr inbounds i8, ptr %17, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %19 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %18, i32 noundef 8) #5
  %20 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %21 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 8), i32 noundef 8) #5
  %22 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  %23 = sub i64 %22, %2
  %24 = xor i64 %23, %20
  %25 = xor i64 %16, %24
  %26 = and i64 %25, 4294967295
  %27 = mul nuw i64 %26, 2246822535
  %28 = lshr i64 %25, 32
  %29 = mul nuw i64 %28, 2246822535
  %30 = mul nuw i64 %26, 2654435761
  %31 = mul nuw i64 %28, 2654435761
  %32 = lshr i64 %27, 32
  %33 = and i64 %29, 4294967295
  %34 = add nuw i64 %33, %30
  %35 = add nuw i64 %34, %32
  %36 = lshr i64 %29, 32
  %37 = lshr i64 %35, 32
  %38 = shl i64 %35, 32
  %39 = and i64 %27, 4294967295
  %40 = add nsw i32 %1, -1
  %41 = zext nneg i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 54
  %43 = or disjoint i64 %39, %42
  %44 = add i64 %43, %38
  %45 = and i64 %24, 4294967295
  %46 = mul nuw i64 %45, 2246822518
  %47 = add i64 %46, %24
  %48 = add i64 %47, %31
  %49 = add i64 %48, %36
  %50 = add i64 %49, %37
  %51 = call noundef i64 @llvm.bswap.i64(i64 %50)
  %52 = xor i64 %51, %44
  %53 = and i64 %52, 4294967295
  %54 = mul nuw nsw i64 %53, 668265295
  %55 = lshr i64 %52, 32
  %56 = mul nuw nsw i64 %55, 668265295
  %57 = mul nuw i64 %53, 3266489917
  %58 = mul nuw i64 %55, 3266489917
  %59 = lshr i64 %54, 32
  %60 = and i64 %56, 4294967295
  %61 = add nuw i64 %60, %57
  %62 = add nuw i64 %61, %59
  %63 = lshr i64 %56, 32
  %64 = lshr i64 %62, 32
  %65 = shl i64 %62, 32
  %66 = and i64 %54, 4294967295
  %67 = or disjoint i64 %65, %66
  %68 = mul i64 %50, -4417276706812531889
  %69 = add i64 %58, %68
  %70 = add i64 %69, %63
  %71 = add i64 %70, %64
  %72 = lshr i64 %65, 37
  %73 = xor i64 %72, %67
  %74 = mul i64 %73, 1609587791953885689
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  %77 = lshr i64 %71, 37
  %78 = xor i64 %77, %71
  %79 = mul i64 %78, 1609587791953885689
  %80 = lshr i64 %79, 32
  %81 = xor i64 %80, %79
  store i64 %76, ptr %3, align 4
  %82 = getelementptr inbounds nuw i8, ptr %3, i32 8
  store i64 %81, ptr %82, align 4
  br label %83

83:                                               ; preds = %4, %11
  ret void
}

; Function Attrs: nounwind
define dso_local void @target_api_128_secret_9to16(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = add i32 %1, -17
  %11 = icmp ult i32 %10, -8
  %12 = icmp ult i32 %3, 136
  %13 = or i1 %11, %12
  br i1 %13, label %86, label %14

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %15 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 8) #5
  %16 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %17 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef %2, i32 noundef 8) #5
  %18 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  %19 = xor i64 %18, %16
  %20 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %21 = getelementptr inbounds i8, ptr %20, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %22 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %21, i32 noundef 8) #5
  %23 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  %24 = getelementptr inbounds nuw i8, ptr %2, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %25 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %24, i32 noundef 8) #5
  %26 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  %27 = xor i64 %26, %23
  %28 = xor i64 %19, %27
  %29 = and i64 %28, 4294967295
  %30 = mul nuw i64 %29, 2246822535
  %31 = lshr i64 %28, 32
  %32 = mul nuw i64 %31, 2246822535
  %33 = mul nuw i64 %29, 2654435761
  %34 = mul nuw i64 %31, 2654435761
  %35 = lshr i64 %30, 32
  %36 = and i64 %32, 4294967295
  %37 = add nuw i64 %36, %33
  %38 = add nuw i64 %37, %35
  %39 = lshr i64 %32, 32
  %40 = lshr i64 %38, 32
  %41 = shl i64 %38, 32
  %42 = and i64 %30, 4294967295
  %43 = add nsw i32 %1, -1
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw nsw i64 %44, 54
  %46 = or disjoint i64 %42, %45
  %47 = add i64 %46, %41
  %48 = and i64 %27, 4294967295
  %49 = mul nuw i64 %48, 2246822518
  %50 = add i64 %49, %27
  %51 = add i64 %50, %34
  %52 = add i64 %51, %39
  %53 = add i64 %52, %40
  %54 = call noundef i64 @llvm.bswap.i64(i64 %53)
  %55 = xor i64 %54, %47
  %56 = and i64 %55, 4294967295
  %57 = mul nuw nsw i64 %56, 668265295
  %58 = lshr i64 %55, 32
  %59 = mul nuw nsw i64 %58, 668265295
  %60 = mul nuw i64 %56, 3266489917
  %61 = mul nuw i64 %58, 3266489917
  %62 = lshr i64 %57, 32
  %63 = and i64 %59, 4294967295
  %64 = add nuw i64 %63, %60
  %65 = add nuw i64 %64, %62
  %66 = lshr i64 %59, 32
  %67 = lshr i64 %65, 32
  %68 = shl i64 %65, 32
  %69 = and i64 %57, 4294967295
  %70 = or disjoint i64 %68, %69
  %71 = mul i64 %53, -4417276706812531889
  %72 = add i64 %61, %71
  %73 = add i64 %72, %66
  %74 = add i64 %73, %67
  %75 = lshr i64 %68, 37
  %76 = xor i64 %75, %70
  %77 = mul i64 %76, 1609587791953885689
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  %80 = lshr i64 %74, 37
  %81 = xor i64 %80, %74
  %82 = mul i64 %81, 1609587791953885689
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  store i64 %79, ptr %4, align 4
  %85 = getelementptr inbounds nuw i8, ptr %4, i32 8
  store i64 %84, ptr %85, align 4
  br label %86

86:                                               ; preds = %5, %14
  ret void
}

declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !8, !10}
!6 = distinct !{!6, !7, !"XXH3_len_9to16_128b: argument 0"}
!7 = distinct !{!7, !"XXH3_len_9to16_128b"}
!8 = distinct !{!8, !9, !"XXH3_len_0to16_128b: argument 0"}
!9 = distinct !{!9, !"XXH3_len_0to16_128b"}
!10 = distinct !{!10, !11, !"XXH_INLINE_XXH3_128bits: argument 0"}
!11 = distinct !{!11, !"XXH_INLINE_XXH3_128bits"}
!12 = !{!13, !15, !17}
!13 = distinct !{!13, !14, !"XXH3_len_9to16_128b: argument 0"}
!14 = distinct !{!14, !"XXH3_len_9to16_128b"}
!15 = distinct !{!15, !16, !"XXH3_len_0to16_128b: argument 0"}
!16 = distinct !{!16, !"XXH3_len_0to16_128b"}
!17 = distinct !{!17, !18, !"XXH_INLINE_XXH3_128bits_withSeed: argument 0"}
!18 = distinct !{!18, !"XXH_INLINE_XXH3_128bits_withSeed"}
!19 = !{!20, !22, !24}
!20 = distinct !{!20, !21, !"XXH3_len_9to16_128b: argument 0"}
!21 = distinct !{!21, !"XXH3_len_9to16_128b"}
!22 = distinct !{!22, !23, !"XXH3_len_0to16_128b: argument 0"}
!23 = distinct !{!23, !"XXH3_len_0to16_128b"}
!24 = distinct !{!24, !25, !"XXH_INLINE_XXH3_128bits_withSecret: argument 0"}
!25 = distinct !{!25, !"XXH_INLINE_XXH3_128bits_withSecret"}
