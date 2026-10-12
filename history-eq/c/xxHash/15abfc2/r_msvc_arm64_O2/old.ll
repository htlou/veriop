; ModuleID = '15abfc2/r_msvc_arm64/old.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/15abfc2/wrap_mul.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-p:64:64-i32:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-pc-windows-msvc19.33.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_mult64to128(ptr noundef writeonly initializes((0, 16)) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = and i64 %1, 4294967295
  %5 = and i64 %2, 4294967295
  %6 = mul nuw i64 %5, %4
  %7 = lshr i64 %1, 32
  %8 = mul nuw i64 %5, %7
  %9 = lshr i64 %2, 32
  %10 = mul nuw i64 %9, %4
  %11 = mul nuw i64 %9, %7
  %12 = lshr i64 %6, 32
  %13 = and i64 %8, 4294967295
  %14 = add nuw i64 %13, %10
  %15 = add nuw i64 %14, %12
  %16 = lshr i64 %8, 32
  %17 = lshr i64 %15, 32
  %18 = add nuw i64 %16, %11
  %19 = add nuw i64 %18, %17
  %20 = shl i64 %15, 32
  %21 = and i64 %6, 4294967295
  %22 = or disjoint i64 %20, %21
  store i64 %22, ptr %0, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %19, ptr %23, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_mul128_fold64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = and i64 %0, 4294967295
  %4 = and i64 %1, 4294967295
  %5 = mul nuw i64 %4, %3
  %6 = lshr i64 %0, 32
  %7 = mul nuw i64 %4, %6
  %8 = lshr i64 %1, 32
  %9 = mul nuw i64 %8, %3
  %10 = mul nuw i64 %8, %6
  %11 = lshr i64 %5, 32
  %12 = and i64 %7, 4294967295
  %13 = add nuw i64 %12, %9
  %14 = add nuw i64 %13, %11
  %15 = lshr i64 %7, 32
  %16 = lshr i64 %14, 32
  %17 = add nuw i64 %15, %10
  %18 = add nuw i64 %17, %16
  %19 = shl i64 %14, 32
  %20 = and i64 %5, 4294967295
  %21 = or disjoint i64 %19, %20
  %22 = xor i64 %21, %18
  ret i64 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api64_len9(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18)
  store i64 %0, ptr %18, align 8
  %.8.sroa_idx4 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %.8.sroa_idx4, align 8
  %19 = add i64 %16, 7458650908927343033
  %20 = sub i64 -5812251307325107654, %16
  %21 = xor i64 %19, %0
  %.1.sroa_idx3 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %.1..1..1..1. = load i64, ptr %.1.sroa_idx3, align 1
  %22 = xor i64 %.1..1..1..1., %20
  %23 = tail call i64 @llvm.bswap.i64(i64 %21)
  %24 = add i64 %23, 9
  %25 = add i64 %24, %22
  %26 = and i64 %21, 4294967295
  %27 = and i64 %22, 4294967295
  %28 = mul nuw i64 %27, %26
  %29 = lshr i64 %21, 32
  %30 = mul nuw i64 %27, %29
  %31 = lshr i64 %22, 32
  %32 = mul nuw i64 %31, %26
  %33 = mul nuw i64 %31, %29
  %34 = lshr i64 %28, 32
  %35 = and i64 %30, 4294967295
  %36 = add nuw i64 %35, %32
  %37 = add nuw i64 %36, %34
  %38 = lshr i64 %30, 32
  %39 = lshr i64 %37, 32
  %40 = add nuw i64 %38, %33
  %41 = add nuw i64 %40, %39
  %42 = shl i64 %37, 32
  %43 = and i64 %28, 4294967295
  %44 = or disjoint i64 %42, %43
  %45 = xor i64 %44, %41
  %46 = add i64 %25, %45
  %47 = lshr i64 %46, 37
  %48 = xor i64 %47, %46
  %49 = mul i64 %48, 1609587791953885689
  %50 = lshr i64 %49, 32
  %51 = xor i64 %50, %49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18)
  ret i64 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api64_len16(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = add i64 %16, 7458650908927343033
  %19 = sub i64 -5812251307325107654, %16
  %20 = xor i64 %18, %0
  %21 = xor i64 %19, %1
  %22 = tail call i64 @llvm.bswap.i64(i64 %20)
  %23 = and i64 %20, 4294967295
  %24 = and i64 %21, 4294967295
  %25 = mul nuw i64 %24, %23
  %26 = lshr i64 %20, 32
  %27 = mul nuw i64 %24, %26
  %28 = lshr i64 %21, 32
  %29 = mul nuw i64 %28, %23
  %30 = mul nuw i64 %28, %26
  %31 = lshr i64 %25, 32
  %32 = and i64 %27, 4294967295
  %33 = add nuw i64 %32, %29
  %34 = add nuw i64 %33, %31
  %35 = lshr i64 %27, 32
  %36 = lshr i64 %34, 32
  %37 = add nuw i64 %35, %30
  %38 = add nuw i64 %37, %36
  %39 = shl i64 %34, 32
  %40 = and i64 %25, 4294967295
  %41 = or disjoint i64 %39, %40
  %42 = xor i64 %41, %38
  %43 = add i64 %21, 16
  %44 = add i64 %43, %22
  %45 = add i64 %44, %42
  %46 = lshr i64 %45, 37
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, 1609587791953885689
  %49 = lshr i64 %48, 32
  %50 = xor i64 %49, %48
  ret i64 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api64_len17(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = alloca [24 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18)
  store i64 %0, ptr %18, align 8
  %.8.sroa_idx6 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %.8.sroa_idx6, align 8
  %.16.sroa_idx8 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %.16.sroa_idx8, align 8
  %19 = sub i64 2066345149520216444, %16
  %20 = xor i64 %19, %1
  %21 = add i64 %16, -4734510112055689544
  %22 = xor i64 %21, %0
  %23 = and i64 %22, 4294967295
  %24 = and i64 %20, 4294967295
  %25 = mul nuw i64 %24, %23
  %26 = lshr i64 %22, 32
  %27 = mul nuw i64 %24, %26
  %28 = lshr i64 %20, 32
  %29 = mul nuw i64 %28, %23
  %30 = mul nuw i64 %28, %26
  %31 = lshr i64 %25, 32
  %32 = and i64 %27, 4294967295
  %33 = add nuw i64 %32, %29
  %34 = add nuw i64 %33, %31
  %35 = lshr i64 %27, 32
  %36 = lshr i64 %34, 32
  %37 = add nuw i64 %35, %30
  %38 = add nuw i64 %37, %36
  %39 = shl i64 %34, 32
  %40 = and i64 %25, 4294967295
  %41 = or disjoint i64 %39, %40
  %42 = xor i64 %41, %38
  %43 = add i64 %42, -9102033464535256329
  %.1.sroa_idx5 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %.1..1..1..1. = load i64, ptr %.1.sroa_idx5, align 1
  %.9.sroa_idx7 = getelementptr inbounds nuw i8, ptr %18, i64 9
  %.9..9..9..9. = load i64, ptr %.9.sroa_idx7, align 1
  %44 = sub i64 2262974939099578482, %16
  %45 = xor i64 %.9..9..9..9., %44
  %46 = add i64 %16, -2623469361688619810
  %47 = xor i64 %.1..1..1..1., %46
  %48 = and i64 %47, 4294967295
  %49 = and i64 %45, 4294967295
  %50 = mul nuw i64 %49, %48
  %51 = lshr i64 %47, 32
  %52 = mul nuw i64 %49, %51
  %53 = lshr i64 %45, 32
  %54 = mul nuw i64 %53, %48
  %55 = mul nuw i64 %53, %51
  %56 = lshr i64 %50, 32
  %57 = and i64 %52, 4294967295
  %58 = add nuw i64 %57, %54
  %59 = add nuw i64 %58, %56
  %60 = lshr i64 %52, 32
  %61 = lshr i64 %59, 32
  %62 = add nuw i64 %60, %55
  %63 = add nuw i64 %62, %61
  %64 = shl i64 %59, 32
  %65 = and i64 %50, 4294967295
  %66 = or disjoint i64 %64, %65
  %67 = xor i64 %66, %63
  %68 = add i64 %43, %67
  %69 = lshr i64 %68, 37
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, 1609587791953885689
  %72 = lshr i64 %71, 32
  %73 = xor i64 %72, %71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18)
  ret i64 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api64_len64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = sub i64 2410270004345854594, %16
  %19 = xor i64 %18, %3
  %20 = add i64 %16, 8711581037947681227
  %21 = xor i64 %20, %2
  %22 = and i64 %21, 4294967295
  %23 = and i64 %19, 4294967295
  %24 = mul nuw i64 %23, %22
  %25 = lshr i64 %21, 32
  %26 = mul nuw i64 %23, %25
  %27 = lshr i64 %19, 32
  %28 = mul nuw i64 %27, %22
  %29 = mul nuw i64 %27, %25
  %30 = lshr i64 %24, 32
  %31 = and i64 %26, 4294967295
  %32 = add nuw i64 %31, %28
  %33 = add nuw i64 %32, %30
  %34 = lshr i64 %26, 32
  %35 = lshr i64 %33, 32
  %36 = add nuw i64 %34, %29
  %37 = add nuw i64 %36, %35
  %38 = shl i64 %33, 32
  %39 = and i64 %24, 4294967295
  %40 = or disjoint i64 %38, %39
  %41 = xor i64 %40, %37
  %42 = add i64 %41, -8224016703601598016
  %43 = sub i64 5487137525590930912, %16
  %44 = xor i64 %43, %5
  %45 = add i64 %16, -8204357891075471176
  %46 = xor i64 %45, %4
  %47 = and i64 %46, 4294967295
  %48 = and i64 %44, 4294967295
  %49 = mul nuw i64 %48, %47
  %50 = lshr i64 %46, 32
  %51 = mul nuw i64 %48, %50
  %52 = lshr i64 %44, 32
  %53 = mul nuw i64 %52, %47
  %54 = mul nuw i64 %52, %50
  %55 = lshr i64 %49, 32
  %56 = and i64 %51, 4294967295
  %57 = add nuw i64 %56, %53
  %58 = add nuw i64 %57, %55
  %59 = lshr i64 %51, 32
  %60 = lshr i64 %58, 32
  %61 = add nuw i64 %59, %54
  %62 = add nuw i64 %61, %60
  %63 = shl i64 %58, 32
  %64 = and i64 %49, 4294967295
  %65 = or disjoint i64 %63, %64
  %66 = xor i64 %65, %62
  %67 = add i64 %42, %66
  %68 = sub i64 2066345149520216444, %16
  %69 = xor i64 %68, %1
  %70 = add i64 %16, -4734510112055689544
  %71 = xor i64 %70, %0
  %72 = and i64 %71, 4294967295
  %73 = and i64 %69, 4294967295
  %74 = mul nuw i64 %73, %72
  %75 = lshr i64 %71, 32
  %76 = mul nuw i64 %73, %75
  %77 = lshr i64 %69, 32
  %78 = mul nuw i64 %77, %72
  %79 = mul nuw i64 %77, %75
  %80 = lshr i64 %74, 32
  %81 = and i64 %76, 4294967295
  %82 = add nuw i64 %81, %78
  %83 = add nuw i64 %82, %80
  %84 = lshr i64 %76, 32
  %85 = lshr i64 %83, 32
  %86 = add nuw i64 %84, %79
  %87 = add nuw i64 %86, %85
  %88 = shl i64 %83, 32
  %89 = and i64 %74, 4294967295
  %90 = or disjoint i64 %88, %89
  %91 = xor i64 %90, %87
  %92 = add i64 %67, %91
  %93 = sub i64 2262974939099578482, %16
  %94 = xor i64 %93, %7
  %95 = add i64 %16, -2623469361688619810
  %96 = xor i64 %95, %6
  %97 = and i64 %96, 4294967295
  %98 = and i64 %94, 4294967295
  %99 = mul nuw i64 %98, %97
  %100 = lshr i64 %96, 32
  %101 = mul nuw i64 %98, %100
  %102 = lshr i64 %94, 32
  %103 = mul nuw i64 %102, %97
  %104 = mul nuw i64 %102, %100
  %105 = lshr i64 %99, 32
  %106 = and i64 %101, 4294967295
  %107 = add nuw i64 %106, %103
  %108 = add nuw i64 %107, %105
  %109 = lshr i64 %101, 32
  %110 = lshr i64 %108, 32
  %111 = add nuw i64 %109, %104
  %112 = add nuw i64 %111, %110
  %113 = shl i64 %108, 32
  %114 = and i64 %99, 4294967295
  %115 = or disjoint i64 %113, %114
  %116 = xor i64 %115, %112
  %117 = add i64 %92, %116
  %118 = lshr i64 %117, 37
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, 1609587791953885689
  %121 = lshr i64 %120, 32
  %122 = xor i64 %121, %120
  ret i64 %122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_api64_len128(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #2 {
  %18 = sub i64 2111919702937427193, %16
  %19 = xor i64 %18, %7
  %20 = add i64 %16, 4554437623014685352
  %21 = xor i64 %20, %6
  %22 = and i64 %21, 4294967295
  %23 = and i64 %19, 4294967295
  %24 = mul nuw i64 %23, %22
  %25 = lshr i64 %21, 32
  %26 = mul nuw i64 %23, %25
  %27 = lshr i64 %19, 32
  %28 = mul nuw i64 %27, %22
  %29 = mul nuw i64 %27, %25
  %30 = lshr i64 %24, 32
  %31 = and i64 %26, 4294967295
  %32 = add nuw i64 %31, %28
  %33 = add nuw i64 %32, %30
  %34 = lshr i64 %26, 32
  %35 = lshr i64 %33, 32
  %36 = add nuw i64 %34, %29
  %37 = add nuw i64 %36, %35
  %38 = shl i64 %33, 32
  %39 = and i64 %24, 4294967295
  %40 = or disjoint i64 %38, %39
  %41 = xor i64 %40, %37
  %42 = add i64 %41, 1998710666506355584
  %43 = sub i64 7238261902898274248, %16
  %44 = xor i64 %43, %9
  %45 = add i64 %16, 3556072174620004746
  %46 = xor i64 %45, %8
  %47 = and i64 %46, 4294967295
  %48 = and i64 %44, 4294967295
  %49 = mul nuw i64 %48, %47
  %50 = lshr i64 %46, 32
  %51 = mul nuw i64 %48, %50
  %52 = lshr i64 %44, 32
  %53 = mul nuw i64 %52, %47
  %54 = mul nuw i64 %52, %50
  %55 = lshr i64 %49, 32
  %56 = and i64 %51, 4294967295
  %57 = add nuw i64 %56, %53
  %58 = add nuw i64 %57, %55
  %59 = lshr i64 %51, 32
  %60 = lshr i64 %58, 32
  %61 = add nuw i64 %59, %54
  %62 = add nuw i64 %61, %60
  %63 = shl i64 %58, 32
  %64 = and i64 %49, 4294967295
  %65 = or disjoint i64 %63, %64
  %66 = xor i64 %65, %62
  %67 = add i64 %42, %66
  %68 = sub i64 -6688317018830679928, %16
  %69 = xor i64 %68, %5
  %70 = add i64 %16, -3818837453329782724
  %71 = xor i64 %70, %4
  %72 = and i64 %71, 4294967295
  %73 = and i64 %69, 4294967295
  %74 = mul nuw i64 %73, %72
  %75 = lshr i64 %71, 32
  %76 = mul nuw i64 %73, %75
  %77 = lshr i64 %69, 32
  %78 = mul nuw i64 %77, %72
  %79 = mul nuw i64 %77, %75
  %80 = lshr i64 %74, 32
  %81 = and i64 %76, 4294967295
  %82 = add nuw i64 %81, %78
  %83 = add nuw i64 %82, %80
  %84 = lshr i64 %76, 32
  %85 = lshr i64 %83, 32
  %86 = add nuw i64 %84, %79
  %87 = add nuw i64 %86, %85
  %88 = shl i64 %83, 32
  %89 = and i64 %74, 4294967295
  %90 = or disjoint i64 %88, %89
  %91 = xor i64 %90, %87
  %92 = add i64 %67, %91
  %93 = sub i64 -2833645246901970632, %16
  %94 = xor i64 %93, %11
  %95 = add i64 %16, 5690594596133299313
  %96 = xor i64 %95, %10
  %97 = and i64 %96, 4294967295
  %98 = and i64 %94, 4294967295
  %99 = mul nuw i64 %98, %97
  %100 = lshr i64 %96, 32
  %101 = mul nuw i64 %98, %100
  %102 = lshr i64 %94, 32
  %103 = mul nuw i64 %102, %97
  %104 = mul nuw i64 %102, %100
  %105 = lshr i64 %99, 32
  %106 = and i64 %101, 4294967295
  %107 = add nuw i64 %106, %103
  %108 = add nuw i64 %107, %105
  %109 = lshr i64 %101, 32
  %110 = lshr i64 %108, 32
  %111 = add nuw i64 %109, %104
  %112 = add nuw i64 %111, %110
  %113 = shl i64 %108, 32
  %114 = and i64 %99, 4294967295
  %115 = or disjoint i64 %113, %114
  %116 = xor i64 %115, %112
  %117 = add i64 %92, %116
  %118 = sub i64 2410270004345854594, %16
  %119 = xor i64 %118, %3
  %120 = add i64 %16, 8711581037947681227
  %121 = xor i64 %120, %2
  %122 = and i64 %121, 4294967295
  %123 = and i64 %119, 4294967295
  %124 = mul nuw i64 %123, %122
  %125 = lshr i64 %121, 32
  %126 = mul nuw i64 %123, %125
  %127 = lshr i64 %119, 32
  %128 = mul nuw i64 %127, %122
  %129 = mul nuw i64 %127, %125
  %130 = lshr i64 %124, 32
  %131 = and i64 %126, 4294967295
  %132 = add nuw i64 %131, %128
  %133 = add nuw i64 %132, %130
  %134 = lshr i64 %126, 32
  %135 = lshr i64 %133, 32
  %136 = add nuw i64 %134, %129
  %137 = add nuw i64 %136, %135
  %138 = shl i64 %133, 32
  %139 = and i64 %124, 4294967295
  %140 = or disjoint i64 %138, %139
  %141 = xor i64 %140, %137
  %142 = add i64 %117, %141
  %143 = sub i64 5487137525590930912, %16
  %144 = xor i64 %143, %13
  %145 = add i64 %16, -8204357891075471176
  %146 = xor i64 %145, %12
  %147 = and i64 %146, 4294967295
  %148 = and i64 %144, 4294967295
  %149 = mul nuw i64 %148, %147
  %150 = lshr i64 %146, 32
  %151 = mul nuw i64 %148, %150
  %152 = lshr i64 %144, 32
  %153 = mul nuw i64 %152, %147
  %154 = mul nuw i64 %152, %150
  %155 = lshr i64 %149, 32
  %156 = and i64 %151, 4294967295
  %157 = add nuw i64 %156, %153
  %158 = add nuw i64 %157, %155
  %159 = lshr i64 %151, 32
  %160 = lshr i64 %158, 32
  %161 = add nuw i64 %159, %154
  %162 = add nuw i64 %161, %160
  %163 = shl i64 %158, 32
  %164 = and i64 %149, 4294967295
  %165 = or disjoint i64 %163, %164
  %166 = xor i64 %165, %162
  %167 = add i64 %142, %166
  %168 = sub i64 2066345149520216444, %16
  %169 = xor i64 %168, %1
  %170 = add i64 %16, -4734510112055689544
  %171 = xor i64 %170, %0
  %172 = and i64 %171, 4294967295
  %173 = and i64 %169, 4294967295
  %174 = mul nuw i64 %173, %172
  %175 = lshr i64 %171, 32
  %176 = mul nuw i64 %173, %175
  %177 = lshr i64 %169, 32
  %178 = mul nuw i64 %177, %172
  %179 = mul nuw i64 %177, %175
  %180 = lshr i64 %174, 32
  %181 = and i64 %176, 4294967295
  %182 = add nuw i64 %181, %178
  %183 = add nuw i64 %182, %180
  %184 = lshr i64 %176, 32
  %185 = lshr i64 %183, 32
  %186 = add nuw i64 %184, %179
  %187 = add nuw i64 %186, %185
  %188 = shl i64 %183, 32
  %189 = and i64 %174, 4294967295
  %190 = or disjoint i64 %188, %189
  %191 = xor i64 %190, %187
  %192 = add i64 %167, %191
  %193 = sub i64 2262974939099578482, %16
  %194 = xor i64 %193, %15
  %195 = add i64 %16, -2623469361688619810
  %196 = xor i64 %195, %14
  %197 = and i64 %196, 4294967295
  %198 = and i64 %194, 4294967295
  %199 = mul nuw i64 %198, %197
  %200 = lshr i64 %196, 32
  %201 = mul nuw i64 %198, %200
  %202 = lshr i64 %194, 32
  %203 = mul nuw i64 %202, %197
  %204 = mul nuw i64 %202, %200
  %205 = lshr i64 %199, 32
  %206 = and i64 %201, 4294967295
  %207 = add nuw i64 %206, %203
  %208 = add nuw i64 %207, %205
  %209 = lshr i64 %201, 32
  %210 = lshr i64 %208, 32
  %211 = add nuw i64 %209, %204
  %212 = add nuw i64 %211, %210
  %213 = shl i64 %208, 32
  %214 = and i64 %199, 4294967295
  %215 = or disjoint i64 %213, %214
  %216 = xor i64 %215, %212
  %217 = add i64 %192, %216
  %218 = lshr i64 %217, 37
  %219 = xor i64 %218, %217
  %220 = mul i64 %219, 1609587791953885689
  %221 = lshr i64 %220, 32
  %222 = xor i64 %221, %220
  ret i64 %222
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_api128_len12(ptr noundef writeonly initializes((0, 16)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #0 {
  %11 = alloca [16 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11)
  store i64 %1, ptr %11, align 8
  %.8.sroa_idx4 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %2, ptr %.8.sroa_idx4, align 8
  %12 = sub i64 6455697860950631241, %9
  %13 = add i64 %9, -4466874330221494952
  %.4.sroa_idx3 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %.4..4..4..4. = load i64, ptr %.4.sroa_idx3, align 4
  %14 = xor i64 %12, %1
  %15 = xor i64 %14, %.4..4..4..4.
  %16 = and i64 %15, 4294967295
  %17 = mul nuw i64 %16, 2246822535
  %18 = lshr i64 %15, 32
  %19 = mul nuw i64 %18, 2246822535
  %20 = mul nuw i64 %16, 2654435761
  %21 = mul nuw i64 %18, 2654435761
  %22 = lshr i64 %17, 32
  %23 = and i64 %19, 4294967295
  %24 = add nuw i64 %23, %20
  %25 = add nuw i64 %24, %22
  %26 = lshr i64 %19, 32
  %27 = lshr i64 %25, 32
  %28 = shl i64 %25, 32
  %29 = and i64 %17, 4294967295
  %30 = or disjoint i64 %29, 198158383604301824
  %31 = add i64 %30, %28
  %32 = xor i64 %.4..4..4..4., %13
  %33 = and i64 %32, 4294967295
  %34 = mul nuw i64 %33, 2246822518
  %35 = add i64 %34, %32
  %36 = add i64 %35, %21
  %37 = add i64 %36, %26
  %38 = add i64 %37, %27
  %39 = tail call i64 @llvm.bswap.i64(i64 %38)
  %40 = xor i64 %39, %31
  %41 = and i64 %40, 4294967295
  %42 = mul nuw nsw i64 %41, 668265295
  %43 = lshr i64 %40, 32
  %44 = mul nuw nsw i64 %43, 668265295
  %45 = mul nuw i64 %41, 3266489917
  %46 = mul nuw i64 %43, 3266489917
  %47 = lshr i64 %42, 32
  %48 = and i64 %44, 4294967295
  %49 = add nuw i64 %48, %45
  %50 = add nuw i64 %49, %47
  %51 = lshr i64 %44, 32
  %52 = lshr i64 %50, 32
  %53 = shl i64 %50, 32
  %54 = and i64 %42, 4294967295
  %55 = or disjoint i64 %53, %54
  %56 = mul i64 %38, -4417276706812531889
  %57 = add i64 %46, %56
  %58 = add i64 %57, %51
  %59 = add i64 %58, %52
  %60 = lshr i64 %53, 37
  %61 = xor i64 %60, %55
  %62 = mul i64 %61, 1609587791953885689
  %63 = lshr i64 %62, 32
  %64 = xor i64 %63, %62
  %65 = lshr i64 %59, 37
  %66 = xor i64 %65, %59
  %67 = mul i64 %66, 1609587791953885689
  %68 = lshr i64 %67, 32
  %69 = xor i64 %68, %67
  store i64 %64, ptr %0, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %69, ptr %70, align 8
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
