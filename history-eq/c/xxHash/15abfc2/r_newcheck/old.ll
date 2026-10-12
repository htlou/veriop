; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/15abfc2/wrap_mul.c'
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
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

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
  %29 = and i64 %22, 4294967295
  %30 = and i64 %25, 4294967295
  %31 = mul nuw i64 %30, %29
  %32 = lshr i64 %22, 32
  %33 = mul nuw i64 %30, %32
  %34 = lshr i64 %25, 32
  %35 = mul nuw i64 %34, %29
  %36 = mul nuw i64 %34, %32
  %37 = lshr i64 %31, 32
  %38 = and i64 %33, 4294967295
  %39 = add nuw i64 %38, %35
  %40 = add nuw i64 %39, %37
  %41 = lshr i64 %33, 32
  %42 = lshr i64 %40, 32
  %43 = add nuw i64 %41, %36
  %44 = add nuw i64 %43, %42
  %45 = shl i64 %40, 32
  %46 = and i64 %31, 4294967295
  %47 = or disjoint i64 %45, %46
  %48 = xor i64 %47, %44
  %49 = add i64 %28, %48
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587791953885689
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18)
  ret i64 %54
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
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %20, align 8
  %21 = sub i64 2066345149520216444, %16
  %22 = xor i64 %21, %1
  %23 = add i64 %16, -4734510112055689544
  %24 = xor i64 %23, %0
  %25 = and i64 %24, 4294967295
  %26 = and i64 %22, 4294967295
  %27 = mul nuw i64 %26, %25
  %28 = lshr i64 %24, 32
  %29 = mul nuw i64 %26, %28
  %30 = lshr i64 %22, 32
  %31 = mul nuw i64 %30, %25
  %32 = mul nuw i64 %30, %28
  %33 = lshr i64 %27, 32
  %34 = and i64 %29, 4294967295
  %35 = add nuw i64 %34, %31
  %36 = add nuw i64 %35, %33
  %37 = lshr i64 %29, 32
  %38 = lshr i64 %36, 32
  %39 = add nuw i64 %37, %32
  %40 = add nuw i64 %39, %38
  %41 = shl i64 %36, 32
  %42 = and i64 %27, 4294967295
  %43 = or disjoint i64 %41, %42
  %44 = xor i64 %43, %40
  %45 = add i64 %44, -9102033464535256329
  %46 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %18, i64 9
  %49 = load i64, ptr %48, align 1
  %50 = sub i64 2262974939099578482, %16
  %51 = xor i64 %49, %50
  %52 = add i64 %16, -2623469361688619810
  %53 = xor i64 %47, %52
  %54 = and i64 %53, 4294967295
  %55 = and i64 %51, 4294967295
  %56 = mul nuw i64 %55, %54
  %57 = lshr i64 %53, 32
  %58 = mul nuw i64 %55, %57
  %59 = lshr i64 %51, 32
  %60 = mul nuw i64 %59, %54
  %61 = mul nuw i64 %59, %57
  %62 = lshr i64 %56, 32
  %63 = and i64 %58, 4294967295
  %64 = add nuw i64 %63, %60
  %65 = add nuw i64 %64, %62
  %66 = lshr i64 %58, 32
  %67 = lshr i64 %65, 32
  %68 = add nuw i64 %66, %61
  %69 = add nuw i64 %68, %67
  %70 = shl i64 %65, 32
  %71 = and i64 %56, 4294967295
  %72 = or disjoint i64 %70, %71
  %73 = xor i64 %72, %69
  %74 = add i64 %45, %73
  %75 = lshr i64 %74, 37
  %76 = xor i64 %75, %74
  %77 = mul i64 %76, 1609587791953885689
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18)
  ret i64 %79
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
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %2, ptr %12, align 8
  %13 = sub i64 6455697860950631241, %9
  %14 = add i64 %9, -4466874330221494952
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %16 = load i64, ptr %15, align 4
  %17 = xor i64 %13, %1
  %18 = xor i64 %17, %16
  %19 = and i64 %18, 4294967295
  %20 = mul nuw i64 %19, 2246822535
  %21 = lshr i64 %18, 32
  %22 = mul nuw i64 %21, 2246822535
  %23 = mul nuw i64 %19, 2654435761
  %24 = mul nuw i64 %21, 2654435761
  %25 = lshr i64 %20, 32
  %26 = and i64 %22, 4294967295
  %27 = add nuw i64 %26, %23
  %28 = add nuw i64 %27, %25
  %29 = lshr i64 %22, 32
  %30 = lshr i64 %28, 32
  %31 = shl i64 %28, 32
  %32 = and i64 %20, 4294967295
  %33 = or disjoint i64 %32, 198158383604301824
  %34 = add i64 %33, %31
  %35 = xor i64 %16, %14
  %36 = and i64 %35, 4294967295
  %37 = mul nuw i64 %36, 2246822518
  %38 = add i64 %37, %35
  %39 = add i64 %38, %24
  %40 = add i64 %39, %29
  %41 = add i64 %40, %30
  %42 = tail call i64 @llvm.bswap.i64(i64 %41)
  %43 = xor i64 %42, %34
  %44 = and i64 %43, 4294967295
  %45 = mul nuw nsw i64 %44, 668265295
  %46 = lshr i64 %43, 32
  %47 = mul nuw nsw i64 %46, 668265295
  %48 = mul nuw i64 %44, 3266489917
  %49 = mul nuw i64 %46, 3266489917
  %50 = lshr i64 %45, 32
  %51 = and i64 %47, 4294967295
  %52 = add nuw i64 %51, %48
  %53 = add nuw i64 %52, %50
  %54 = lshr i64 %47, 32
  %55 = lshr i64 %53, 32
  %56 = shl i64 %53, 32
  %57 = and i64 %45, 4294967295
  %58 = or disjoint i64 %56, %57
  %59 = mul i64 %41, -4417276706812531889
  %60 = add i64 %49, %59
  %61 = add i64 %60, %54
  %62 = add i64 %61, %55
  %63 = lshr i64 %56, 37
  %64 = xor i64 %63, %58
  %65 = mul i64 %64, 1609587791953885689
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  %68 = lshr i64 %62, 37
  %69 = xor i64 %68, %62
  %70 = mul i64 %69, 1609587791953885689
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  store i64 %67, ptr %0, align 8
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %72, ptr %73, align 8
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
