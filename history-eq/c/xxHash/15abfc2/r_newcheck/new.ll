; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/15abfc2/wrap_mul.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/15abfc2/wrap_mul.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-p:64:64-i32:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-pc-windows-msvc19.33.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_mult64to128(ptr noundef writeonly initializes((0, 16)) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = mul i64 %2, %1
  %5 = zext i64 %1 to i128
  %6 = zext i64 %2 to i128
  %7 = mul nuw i128 %6, %5
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64
  store i64 %4, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %9, ptr %10, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_mul128_fold64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = mul i64 %1, %0
  %4 = zext i64 %0 to i128
  %5 = zext i64 %1 to i128
  %6 = mul nuw i128 %5, %4
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %9 = xor i64 %3, %8
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api64_len9(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18)
  store i64 %0, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %19, align 8
  %20 = add i64 %16, 7458650908927343033
  %21 = sub i64 -5812251307325107654, %16
  %22 = xor i64 %20, %0
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %24 = load i64, ptr %23, align 1
  %25 = xor i64 %24, %21
  %26 = tail call i64 @llvm.bswap.i64(i64 %22)
  %27 = add i64 %26, 9
  %28 = add i64 %27, %25
  %29 = mul i64 %25, %22
  %30 = zext i64 %22 to i128
  %31 = zext i64 %25 to i128
  %32 = mul nuw i128 %31, %30
  %33 = lshr i128 %32, 64
  %34 = trunc nuw i128 %33 to i64
  %35 = xor i64 %29, %34
  %36 = add i64 %28, %35
  %37 = lshr i64 %36, 37
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, 1609587791953885689
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18)
  ret i64 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api64_len16(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = add i64 %16, 7458650908927343033
  %19 = sub i64 -5812251307325107654, %16
  %20 = xor i64 %18, %0
  %21 = xor i64 %19, %1
  %22 = tail call i64 @llvm.bswap.i64(i64 %20)
  %23 = mul i64 %21, %20
  %24 = zext i64 %20 to i128
  %25 = zext i64 %21 to i128
  %26 = mul nuw i128 %25, %24
  %27 = lshr i128 %26, 64
  %28 = trunc nuw i128 %27 to i64
  %29 = xor i64 %23, %28
  %30 = add i64 %21, 16
  %31 = add i64 %30, %22
  %32 = add i64 %31, %29
  %33 = lshr i64 %32, 37
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, 1609587791953885689
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  ret i64 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api64_len17(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18)
  store i64 %0, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %20, align 8
  %21 = sub i64 2066345149520216444, %16
  %22 = xor i64 %21, %1
  %23 = add i64 %16, -4734510112055689544
  %24 = xor i64 %23, %0
  %25 = mul i64 %22, %24
  %26 = zext i64 %24 to i128
  %27 = zext i64 %22 to i128
  %28 = mul nuw i128 %27, %26
  %29 = lshr i128 %28, 64
  %30 = trunc nuw i128 %29 to i64
  %31 = xor i64 %25, %30
  %32 = add i64 %31, -9102033464535256329
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %34 = load i64, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %18, i64 9
  %36 = load i64, ptr %35, align 1
  %37 = sub i64 2262974939099578482, %16
  %38 = xor i64 %36, %37
  %39 = add i64 %16, -2623469361688619810
  %40 = xor i64 %34, %39
  %41 = mul i64 %38, %40
  %42 = zext i64 %40 to i128
  %43 = zext i64 %38 to i128
  %44 = mul nuw i128 %43, %42
  %45 = lshr i128 %44, 64
  %46 = trunc nuw i128 %45 to i64
  %47 = xor i64 %41, %46
  %48 = add i64 %32, %47
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587791953885689
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18)
  ret i64 %53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api64_len64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = sub i64 2410270004345854594, %16
  %19 = xor i64 %18, %3
  %20 = add i64 %16, 8711581037947681227
  %21 = xor i64 %20, %2
  %22 = mul i64 %19, %21
  %23 = zext i64 %21 to i128
  %24 = zext i64 %19 to i128
  %25 = mul nuw i128 %24, %23
  %26 = lshr i128 %25, 64
  %27 = trunc nuw i128 %26 to i64
  %28 = xor i64 %22, %27
  %29 = add i64 %28, -8224016703601598016
  %30 = sub i64 5487137525590930912, %16
  %31 = xor i64 %30, %5
  %32 = add i64 %16, -8204357891075471176
  %33 = xor i64 %32, %4
  %34 = mul i64 %31, %33
  %35 = zext i64 %33 to i128
  %36 = zext i64 %31 to i128
  %37 = mul nuw i128 %36, %35
  %38 = lshr i128 %37, 64
  %39 = trunc nuw i128 %38 to i64
  %40 = xor i64 %34, %39
  %41 = add i64 %29, %40
  %42 = sub i64 2066345149520216444, %16
  %43 = xor i64 %42, %1
  %44 = add i64 %16, -4734510112055689544
  %45 = xor i64 %44, %0
  %46 = mul i64 %43, %45
  %47 = zext i64 %45 to i128
  %48 = zext i64 %43 to i128
  %49 = mul nuw i128 %48, %47
  %50 = lshr i128 %49, 64
  %51 = trunc nuw i128 %50 to i64
  %52 = xor i64 %46, %51
  %53 = add i64 %41, %52
  %54 = sub i64 2262974939099578482, %16
  %55 = xor i64 %54, %7
  %56 = add i64 %16, -2623469361688619810
  %57 = xor i64 %56, %6
  %58 = mul i64 %55, %57
  %59 = zext i64 %57 to i128
  %60 = zext i64 %55 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = trunc nuw i128 %62 to i64
  %64 = xor i64 %58, %63
  %65 = add i64 %53, %64
  %66 = lshr i64 %65, 37
  %67 = xor i64 %66, %65
  %68 = mul i64 %67, 1609587791953885689
  %69 = lshr i64 %68, 32
  %70 = xor i64 %69, %68
  ret i64 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api64_len128(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = sub i64 2111919702937427193, %16
  %19 = xor i64 %18, %7
  %20 = add i64 %16, 4554437623014685352
  %21 = xor i64 %20, %6
  %22 = mul i64 %19, %21
  %23 = zext i64 %21 to i128
  %24 = zext i64 %19 to i128
  %25 = mul nuw i128 %24, %23
  %26 = lshr i128 %25, 64
  %27 = trunc nuw i128 %26 to i64
  %28 = xor i64 %22, %27
  %29 = add i64 %28, 1998710666506355584
  %30 = sub i64 7238261902898274248, %16
  %31 = xor i64 %30, %9
  %32 = add i64 %16, 3556072174620004746
  %33 = xor i64 %32, %8
  %34 = mul i64 %31, %33
  %35 = zext i64 %33 to i128
  %36 = zext i64 %31 to i128
  %37 = mul nuw i128 %36, %35
  %38 = lshr i128 %37, 64
  %39 = trunc nuw i128 %38 to i64
  %40 = xor i64 %34, %39
  %41 = add i64 %29, %40
  %42 = sub i64 -6688317018830679928, %16
  %43 = xor i64 %42, %5
  %44 = add i64 %16, -3818837453329782724
  %45 = xor i64 %44, %4
  %46 = mul i64 %43, %45
  %47 = zext i64 %45 to i128
  %48 = zext i64 %43 to i128
  %49 = mul nuw i128 %48, %47
  %50 = lshr i128 %49, 64
  %51 = trunc nuw i128 %50 to i64
  %52 = xor i64 %46, %51
  %53 = add i64 %41, %52
  %54 = sub i64 -2833645246901970632, %16
  %55 = xor i64 %54, %11
  %56 = add i64 %16, 5690594596133299313
  %57 = xor i64 %56, %10
  %58 = mul i64 %55, %57
  %59 = zext i64 %57 to i128
  %60 = zext i64 %55 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = trunc nuw i128 %62 to i64
  %64 = xor i64 %58, %63
  %65 = add i64 %53, %64
  %66 = sub i64 2410270004345854594, %16
  %67 = xor i64 %66, %3
  %68 = add i64 %16, 8711581037947681227
  %69 = xor i64 %68, %2
  %70 = mul i64 %67, %69
  %71 = zext i64 %69 to i128
  %72 = zext i64 %67 to i128
  %73 = mul nuw i128 %72, %71
  %74 = lshr i128 %73, 64
  %75 = trunc nuw i128 %74 to i64
  %76 = xor i64 %70, %75
  %77 = add i64 %65, %76
  %78 = sub i64 5487137525590930912, %16
  %79 = xor i64 %78, %13
  %80 = add i64 %16, -8204357891075471176
  %81 = xor i64 %80, %12
  %82 = mul i64 %79, %81
  %83 = zext i64 %81 to i128
  %84 = zext i64 %79 to i128
  %85 = mul nuw i128 %84, %83
  %86 = lshr i128 %85, 64
  %87 = trunc nuw i128 %86 to i64
  %88 = xor i64 %82, %87
  %89 = add i64 %77, %88
  %90 = sub i64 2066345149520216444, %16
  %91 = xor i64 %90, %1
  %92 = add i64 %16, -4734510112055689544
  %93 = xor i64 %92, %0
  %94 = mul i64 %91, %93
  %95 = zext i64 %93 to i128
  %96 = zext i64 %91 to i128
  %97 = mul nuw i128 %96, %95
  %98 = lshr i128 %97, 64
  %99 = trunc nuw i128 %98 to i64
  %100 = xor i64 %94, %99
  %101 = add i64 %89, %100
  %102 = sub i64 2262974939099578482, %16
  %103 = xor i64 %102, %15
  %104 = add i64 %16, -2623469361688619810
  %105 = xor i64 %104, %14
  %106 = mul i64 %103, %105
  %107 = zext i64 %105 to i128
  %108 = zext i64 %103 to i128
  %109 = mul nuw i128 %108, %107
  %110 = lshr i128 %109, 64
  %111 = trunc nuw i128 %110 to i64
  %112 = xor i64 %106, %111
  %113 = add i64 %101, %112
  %114 = lshr i64 %113, 37
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, 1609587791953885689
  %117 = lshr i64 %116, 32
  %118 = xor i64 %117, %116
  ret i64 %118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_api128_len12(ptr noundef writeonly initializes((0, 16)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
  %11 = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11)
  store i64 %1, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %2, ptr %12, align 8
  %13 = sub i64 6455697860950631241, %9
  %14 = add i64 %9, -4466874330221494952
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %16 = load i64, ptr %15, align 4
  %17 = xor i64 %13, %1
  %18 = xor i64 %17, %16
  %19 = mul i64 %18, -7046029288634856825
  %20 = zext i64 %18 to i128
  %21 = mul nuw i128 %20, 11400714785074694791
  %22 = lshr i128 %21, 64
  %23 = trunc nuw i128 %22 to i64
  %24 = add i64 %19, 198158383604301824
  %25 = xor i64 %16, %14
  %26 = and i64 %25, 4294967295
  %27 = mul nuw i64 %26, 2246822518
  %28 = add i64 %27, %25
  %29 = add i64 %28, %23
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %31 = xor i64 %30, %24
  %32 = mul i64 %31, -4417276706812531889
  %33 = zext i64 %31 to i128
  %34 = mul nuw i128 %33, 14029467366897019727
  %35 = lshr i128 %34, 64
  %36 = trunc nuw i128 %35 to i64
  %37 = mul i64 %29, -4417276706812531889
  %38 = add i64 %37, %36
  %39 = lshr i64 %32, 37
  %40 = xor i64 %39, %32
  %41 = mul i64 %40, 1609587791953885689
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  %44 = lshr i64 %38, 37
  %45 = xor i64 %44, %38
  %46 = mul i64 %45, 1609587791953885689
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  store i64 %43, ptr %0, align 8
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %48, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
