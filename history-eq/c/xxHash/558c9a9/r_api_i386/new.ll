; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/558c9a9/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/558c9a9/wrap_api.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind
define dso_local void @target_api_128_seed_9to16(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = add i32 %1, -17
  %10 = icmp ult i32 %9, -8
  br i1 %10, label %81, label %11

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  %12 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 8) #4
  %13 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %14 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull @kSecret, i32 noundef 8) #4
  %15 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  %16 = add i64 %15, %2
  %17 = xor i64 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %19 = getelementptr inbounds i8, ptr %18, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %20 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %19, i32 noundef 8) #4
  %21 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %22 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 8), i32 noundef 8) #4
  %23 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  %24 = sub i64 %23, %2
  %25 = xor i64 %24, %21
  %26 = xor i64 %17, %25
  %27 = and i64 %26, 4294967295
  %28 = mul nuw i64 %27, 2246822535
  %29 = lshr i64 %26, 32
  %30 = mul nuw i64 %29, 2246822535
  %31 = mul nuw i64 %27, 2654435761
  %32 = mul nuw i64 %29, 2654435761
  %33 = lshr i64 %28, 32
  %34 = and i64 %30, 4294967295
  %35 = add nuw i64 %34, %31
  %36 = add nuw i64 %35, %33
  %37 = lshr i64 %30, 32
  %38 = lshr i64 %36, 32
  %39 = and i64 %28, 4294967295
  %40 = zext nneg i32 %1 to i64
  %41 = mul nuw nsw i64 %40, 374761393
  %42 = add nuw nsw i64 %39, %41
  %43 = mul i64 %25, -7046029288634856825
  %44 = add i64 %32, %43
  %45 = add i64 %44, %37
  %46 = add i64 %45, %38
  %47 = lshr i64 %46, 32
  %48 = and i64 %42, 4294967295
  %49 = xor i64 %47, %48
  %50 = mul nuw nsw i64 %49, 668265295
  %51 = lshr i64 %42, 32
  %52 = add nuw i64 %51, %36
  %53 = and i64 %52, 4294967295
  %54 = mul nuw nsw i64 %53, 668265295
  %55 = mul nuw i64 %49, 3266489917
  %56 = mul nuw i64 %53, 3266489917
  %57 = lshr i64 %50, 32
  %58 = and i64 %54, 4294967295
  %59 = add nuw i64 %55, %58
  %60 = add nuw i64 %59, %57
  %61 = lshr i64 %54, 32
  %62 = lshr i64 %60, 32
  %63 = shl i64 %60, 32
  %64 = and i64 %50, 4294967295
  %65 = or disjoint i64 %63, %64
  %66 = mul i64 %46, -4417276706812531889
  %67 = add i64 %56, %66
  %68 = add i64 %67, %61
  %69 = add i64 %68, %62
  %70 = lshr i64 %63, 37
  %71 = xor i64 %70, %65
  %72 = mul i64 %71, 1609587929392839161
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  %75 = lshr i64 %69, 37
  %76 = xor i64 %75, %69
  %77 = mul i64 %76, 1609587929392839161
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  store i64 %74, ptr %3, align 4
  %80 = getelementptr inbounds nuw i8, ptr %3, i32 8
  store i64 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %4, %11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nounwind
define dso_local void @target_api_128_9to16(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = add i32 %1, -17
  %9 = icmp ult i32 %8, -8
  br i1 %9, label %78, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %11 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 8) #4
  %12 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %13 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull @kSecret, i32 noundef 8) #4
  %14 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  %15 = xor i64 %14, %12
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %17 = getelementptr inbounds i8, ptr %16, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %18 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %17, i32 noundef 8) #4
  %19 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  %20 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 8), i32 noundef 8) #4
  %21 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
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
  %36 = and i64 %25, 4294967295
  %37 = zext nneg i32 %1 to i64
  %38 = mul nuw nsw i64 %37, 374761393
  %39 = add nuw nsw i64 %36, %38
  %40 = mul i64 %22, -7046029288634856825
  %41 = add i64 %29, %40
  %42 = add i64 %41, %34
  %43 = add i64 %42, %35
  %44 = lshr i64 %43, 32
  %45 = and i64 %39, 4294967295
  %46 = xor i64 %44, %45
  %47 = mul nuw nsw i64 %46, 668265295
  %48 = lshr i64 %39, 32
  %49 = add nuw i64 %48, %33
  %50 = and i64 %49, 4294967295
  %51 = mul nuw nsw i64 %50, 668265295
  %52 = mul nuw i64 %46, 3266489917
  %53 = mul nuw i64 %50, 3266489917
  %54 = lshr i64 %47, 32
  %55 = and i64 %51, 4294967295
  %56 = add nuw i64 %52, %55
  %57 = add nuw i64 %56, %54
  %58 = lshr i64 %51, 32
  %59 = lshr i64 %57, 32
  %60 = shl i64 %57, 32
  %61 = and i64 %47, 4294967295
  %62 = or disjoint i64 %60, %61
  %63 = mul i64 %43, -4417276706812531889
  %64 = add i64 %53, %63
  %65 = add i64 %64, %58
  %66 = add i64 %65, %59
  %67 = lshr i64 %60, 37
  %68 = xor i64 %67, %62
  %69 = mul i64 %68, 1609587929392839161
  %70 = lshr i64 %69, 32
  %71 = xor i64 %70, %69
  %72 = lshr i64 %66, 37
  %73 = xor i64 %72, %66
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  store i64 %71, ptr %2, align 4
  %77 = getelementptr inbounds nuw i8, ptr %2, i32 8
  store i64 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %3, %10
  ret void
}

; Function Attrs: nounwind
define dso_local i64 @target_api_64_seed_0to16(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = icmp ugt i32 %1, 16
  br i1 %13, label %118, label %14

14:                                               ; preds = %3
  %15 = icmp samesign ugt i32 %1, 8
  br i1 %15, label %16, label %55

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #3
  %17 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef %0, i32 noundef 8) #4
  %18 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #3
  %19 = call ptr @memcpy(ptr noundef nonnull %11, ptr noundef nonnull @kSecret, i32 noundef 8) #4
  %20 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #3
  %21 = add i64 %20, %2
  %22 = xor i64 %21, %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %24 = getelementptr inbounds i8, ptr %23, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #3
  %25 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %24, i32 noundef 8) #4
  %26 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  %27 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 8), i32 noundef 8) #4
  %28 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  %29 = sub i64 %28, %2
  %30 = xor i64 %29, %26
  %31 = zext nneg i32 %1 to i64
  %32 = and i64 %22, 4294967295
  %33 = and i64 %30, 4294967295
  %34 = mul nuw i64 %33, %32
  %35 = lshr i64 %22, 32
  %36 = mul nuw i64 %33, %35
  %37 = lshr i64 %30, 32
  %38 = mul nuw i64 %37, %32
  %39 = mul nuw i64 %37, %35
  %40 = lshr i64 %34, 32
  %41 = and i64 %36, 4294967295
  %42 = add nuw i64 %41, %38
  %43 = add nuw i64 %42, %40
  %44 = lshr i64 %36, 32
  %45 = lshr i64 %43, 32
  %46 = add nuw i64 %44, %39
  %47 = add nuw i64 %46, %45
  %48 = shl i64 %43, 32
  %49 = and i64 %34, 4294967295
  %50 = or disjoint i64 %48, %49
  %51 = xor i64 %50, %47
  %52 = add i64 %22, %31
  %53 = add i64 %52, %30
  %54 = add i64 %53, %51
  br label %111

55:                                               ; preds = %14
  %56 = icmp samesign ugt i32 %1, 3
  br i1 %56, label %57, label %80

57:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  %58 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 4) #4
  %59 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  %60 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %61 = getelementptr inbounds i8, ptr %60, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  %62 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %61, i32 noundef 4) #4
  %63 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  %64 = zext i32 %59 to i64
  %65 = zext i32 %63 to i64
  %66 = shl nuw i64 %65, 32
  %67 = or disjoint i64 %66, %64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %68 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull @kSecret, i32 noundef 8) #4
  %69 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  %70 = add i64 %69, %2
  %71 = xor i64 %70, %67
  %72 = zext nneg i32 %1 to i64
  %73 = lshr i64 %71, 51
  %74 = xor i64 %73, %71
  %75 = mul i64 %74, 2654435761
  %76 = add i64 %75, %72
  %77 = lshr i64 %76, 47
  %78 = xor i64 %77, %76
  %79 = mul i64 %78, -4417276706812531889
  br label %111

80:                                               ; preds = %55
  %81 = icmp eq i32 %1, 0
  br i1 %81, label %106, label %82

82:                                               ; preds = %80
  %83 = load i8, ptr %0, align 1
  %84 = lshr i32 %1, 1
  %85 = getelementptr inbounds nuw i8, ptr %0, i32 %84
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr i8, ptr %0, i32 %1
  %88 = getelementptr i8, ptr %87, i32 -1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %83 to i32
  %91 = zext i8 %86 to i32
  %92 = shl nuw nsw i32 %91, 8
  %93 = or disjoint i32 %92, %90
  %94 = zext i8 %89 to i32
  %95 = shl nuw nsw i32 %94, 16
  %96 = or disjoint i32 %93, %95
  %97 = shl nuw nsw i32 %1, 24
  %98 = or disjoint i32 %96, %97
  %99 = zext nneg i32 %98 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  %100 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull @kSecret, i32 noundef 4) #4
  %101 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  %102 = zext i32 %101 to i64
  %103 = add i64 %2, %102
  %104 = xor i64 %103, %99
  %105 = mul i64 %104, -7046029288634856825
  br label %111

106:                                              ; preds = %80
  %107 = add i64 %2, -7046029288634856825
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  %108 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull @kSecret, i32 noundef 8) #4
  %109 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  %110 = xor i64 %109, %107
  br label %111

111:                                              ; preds = %16, %57, %82, %106
  %112 = phi i64 [ %110, %106 ], [ %105, %82 ], [ %79, %57 ], [ %54, %16 ]
  %113 = lshr i64 %112, 37
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, 1609587929392839161
  %116 = lshr i64 %115, 32
  %117 = xor i64 %116, %115
  br label %118

118:                                              ; preds = %3, %111
  %119 = phi i64 [ %117, %111 ], [ 0, %3 ]
  ret i64 %119
}

declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
!10 = distinct !{!10, !11, !"XXH_INLINE_XXH3_128bits_withSeed: argument 0"}
!11 = distinct !{!11, !"XXH_INLINE_XXH3_128bits_withSeed"}
!12 = !{!13, !15, !17}
!13 = distinct !{!13, !14, !"XXH3_len_9to16_128b: argument 0"}
!14 = distinct !{!14, !"XXH3_len_9to16_128b"}
!15 = distinct !{!15, !16, !"XXH3_len_0to16_128b: argument 0"}
!16 = distinct !{!16, !"XXH3_len_0to16_128b"}
!17 = distinct !{!17, !18, !"XXH_INLINE_XXH3_128bits: argument 0"}
!18 = distinct !{!18, !"XXH_INLINE_XXH3_128bits"}
