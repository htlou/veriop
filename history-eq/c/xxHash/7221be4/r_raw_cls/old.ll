; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7221be4/wrap_raw_cls.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7221be4/wrap_raw_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_17to128_64b_17to32(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31, i64 noundef %32, i64 noundef %33) local_unnamed_addr #0 {
  %35 = alloca [128 x i8], align 64
  %36 = add i64 %16, -33
  %37 = icmp ult i64 %36, -16
  br i1 %37, label %87, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %35) #2
  store i64 %0, ptr %35, align 64
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %1, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %2, ptr %40, align 16
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 24
  store i64 %3, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 %4, ptr %42, align 32
  %43 = getelementptr inbounds nuw i8, ptr %35, i64 40
  store i64 %5, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 48
  store i64 %6, ptr %44, align 16
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 56
  store i64 %7, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %35, i64 64
  store i64 %8, ptr %46, align 64
  %47 = getelementptr inbounds nuw i8, ptr %35, i64 72
  store i64 %9, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 80
  store i64 %10, ptr %48, align 16
  %49 = getelementptr inbounds nuw i8, ptr %35, i64 88
  store i64 %11, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 96
  store i64 %12, ptr %50, align 32
  %51 = getelementptr inbounds nuw i8, ptr %35, i64 104
  store i64 %13, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %35, i64 112
  store i64 %14, ptr %52, align 16
  %53 = getelementptr inbounds nuw i8, ptr %35, i64 120
  store i64 %15, ptr %53, align 8
  %54 = mul i64 %16, -7046029288634856825
  %55 = add i64 %33, %17
  %56 = xor i64 %55, %0
  %57 = sub i64 %18, %33
  %58 = xor i64 %57, %1
  %59 = zext i64 %56 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %54, %64
  %66 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %67 = getelementptr inbounds i8, ptr %66, i64 -16
  %68 = load i64, ptr %67, align 1
  %69 = getelementptr i8, ptr %66, i64 -8
  %70 = load i64, ptr %69, align 1
  %71 = add i64 %33, %19
  %72 = xor i64 %68, %71
  %73 = sub i64 %20, %33
  %74 = xor i64 %70, %73
  %75 = zext i64 %72 to i128
  %76 = zext i64 %74 to i128
  %77 = mul nuw i128 %76, %75
  %78 = lshr i128 %77, 64
  %79 = xor i128 %78, %77
  %80 = trunc i128 %79 to i64
  %81 = add i64 %65, %80
  %82 = lshr i64 %81, 37
  %83 = xor i64 %82, %81
  %84 = mul i64 %83, 1609587791953885689
  %85 = lshr i64 %84, 32
  %86 = xor i64 %85, %84
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %35) #2
  br label %87

87:                                               ; preds = %34, %38
  %88 = phi i64 [ %86, %38 ], [ 0, %34 ]
  ret i64 %88
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_17to128_64b_33to64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31, i64 noundef %32, i64 noundef %33) local_unnamed_addr #0 {
  %35 = alloca [128 x i8], align 64
  %36 = add i64 %16, -65
  %37 = icmp ult i64 %36, -32
  br i1 %37, label %113, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %35) #2
  store i64 %0, ptr %35, align 64
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %1, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %2, ptr %40, align 16
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 24
  store i64 %3, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 %4, ptr %42, align 32
  %43 = getelementptr inbounds nuw i8, ptr %35, i64 40
  store i64 %5, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 48
  store i64 %6, ptr %44, align 16
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 56
  store i64 %7, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %35, i64 64
  store i64 %8, ptr %46, align 64
  %47 = getelementptr inbounds nuw i8, ptr %35, i64 72
  store i64 %9, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 80
  store i64 %10, ptr %48, align 16
  %49 = getelementptr inbounds nuw i8, ptr %35, i64 88
  store i64 %11, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 96
  store i64 %12, ptr %50, align 32
  %51 = getelementptr inbounds nuw i8, ptr %35, i64 104
  store i64 %13, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %35, i64 112
  store i64 %14, ptr %52, align 16
  %53 = getelementptr inbounds nuw i8, ptr %35, i64 120
  store i64 %15, ptr %53, align 8
  %54 = mul i64 %16, -7046029288634856825
  %55 = add i64 %33, %21
  %56 = xor i64 %55, %2
  %57 = sub i64 %22, %33
  %58 = xor i64 %57, %3
  %59 = zext i64 %56 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %54, %64
  %66 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %67 = getelementptr inbounds i8, ptr %66, i64 -32
  %68 = load i64, ptr %67, align 1
  %69 = getelementptr i8, ptr %66, i64 -24
  %70 = load i64, ptr %69, align 1
  %71 = add i64 %33, %23
  %72 = xor i64 %68, %71
  %73 = sub i64 %24, %33
  %74 = xor i64 %70, %73
  %75 = zext i64 %72 to i128
  %76 = zext i64 %74 to i128
  %77 = mul nuw i128 %76, %75
  %78 = lshr i128 %77, 64
  %79 = xor i128 %78, %77
  %80 = trunc i128 %79 to i64
  %81 = add i64 %33, %17
  %82 = xor i64 %81, %0
  %83 = sub i64 %18, %33
  %84 = xor i64 %83, %1
  %85 = zext i64 %82 to i128
  %86 = zext i64 %84 to i128
  %87 = mul nuw i128 %86, %85
  %88 = lshr i128 %87, 64
  %89 = xor i128 %88, %87
  %90 = trunc i128 %89 to i64
  %91 = getelementptr inbounds i8, ptr %66, i64 -16
  %92 = load i64, ptr %91, align 1
  %93 = getelementptr i8, ptr %66, i64 -8
  %94 = load i64, ptr %93, align 1
  %95 = add i64 %33, %19
  %96 = xor i64 %92, %95
  %97 = sub i64 %20, %33
  %98 = xor i64 %94, %97
  %99 = zext i64 %96 to i128
  %100 = zext i64 %98 to i128
  %101 = mul nuw i128 %100, %99
  %102 = lshr i128 %101, 64
  %103 = xor i128 %102, %101
  %104 = trunc i128 %103 to i64
  %105 = add i64 %65, %90
  %106 = add i64 %105, %80
  %107 = add i64 %106, %104
  %108 = lshr i64 %107, 37
  %109 = xor i64 %108, %107
  %110 = mul i64 %109, 1609587791953885689
  %111 = lshr i64 %110, 32
  %112 = xor i64 %111, %110
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %35) #2
  br label %113

113:                                              ; preds = %34, %38
  %114 = phi i64 [ %112, %38 ], [ 0, %34 ]
  ret i64 %114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_17to128_64b_65to96(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31, i64 noundef %32, i64 noundef %33) local_unnamed_addr #0 {
  %35 = alloca [128 x i8], align 64
  %36 = add i64 %16, -97
  %37 = icmp ult i64 %36, -32
  br i1 %37, label %139, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %35) #2
  store i64 %0, ptr %35, align 64
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %1, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %2, ptr %40, align 16
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 24
  store i64 %3, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 %4, ptr %42, align 32
  %43 = getelementptr inbounds nuw i8, ptr %35, i64 40
  store i64 %5, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 48
  store i64 %6, ptr %44, align 16
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 56
  store i64 %7, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %35, i64 64
  store i64 %8, ptr %46, align 64
  %47 = getelementptr inbounds nuw i8, ptr %35, i64 72
  store i64 %9, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 80
  store i64 %10, ptr %48, align 16
  %49 = getelementptr inbounds nuw i8, ptr %35, i64 88
  store i64 %11, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 96
  store i64 %12, ptr %50, align 32
  %51 = getelementptr inbounds nuw i8, ptr %35, i64 104
  store i64 %13, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %35, i64 112
  store i64 %14, ptr %52, align 16
  %53 = getelementptr inbounds nuw i8, ptr %35, i64 120
  store i64 %15, ptr %53, align 8
  %54 = mul i64 %16, -7046029288634856825
  %55 = add i64 %33, %25
  %56 = xor i64 %55, %4
  %57 = sub i64 %26, %33
  %58 = xor i64 %57, %5
  %59 = zext i64 %56 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %54, %64
  %66 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %67 = getelementptr inbounds i8, ptr %66, i64 -48
  %68 = load i64, ptr %67, align 1
  %69 = getelementptr i8, ptr %66, i64 -40
  %70 = load i64, ptr %69, align 1
  %71 = add i64 %33, %27
  %72 = xor i64 %68, %71
  %73 = sub i64 %28, %33
  %74 = xor i64 %70, %73
  %75 = zext i64 %72 to i128
  %76 = zext i64 %74 to i128
  %77 = mul nuw i128 %76, %75
  %78 = lshr i128 %77, 64
  %79 = xor i128 %78, %77
  %80 = trunc i128 %79 to i64
  %81 = add i64 %33, %21
  %82 = xor i64 %81, %2
  %83 = sub i64 %22, %33
  %84 = xor i64 %83, %3
  %85 = zext i64 %82 to i128
  %86 = zext i64 %84 to i128
  %87 = mul nuw i128 %86, %85
  %88 = lshr i128 %87, 64
  %89 = xor i128 %88, %87
  %90 = trunc i128 %89 to i64
  %91 = getelementptr inbounds i8, ptr %66, i64 -32
  %92 = load i64, ptr %91, align 1
  %93 = getelementptr i8, ptr %66, i64 -24
  %94 = load i64, ptr %93, align 1
  %95 = add i64 %33, %23
  %96 = xor i64 %92, %95
  %97 = sub i64 %24, %33
  %98 = xor i64 %94, %97
  %99 = zext i64 %96 to i128
  %100 = zext i64 %98 to i128
  %101 = mul nuw i128 %100, %99
  %102 = lshr i128 %101, 64
  %103 = xor i128 %102, %101
  %104 = trunc i128 %103 to i64
  %105 = add i64 %33, %17
  %106 = xor i64 %105, %0
  %107 = sub i64 %18, %33
  %108 = xor i64 %107, %1
  %109 = zext i64 %106 to i128
  %110 = zext i64 %108 to i128
  %111 = mul nuw i128 %110, %109
  %112 = lshr i128 %111, 64
  %113 = xor i128 %112, %111
  %114 = trunc i128 %113 to i64
  %115 = getelementptr inbounds i8, ptr %66, i64 -16
  %116 = load i64, ptr %115, align 1
  %117 = getelementptr i8, ptr %66, i64 -8
  %118 = load i64, ptr %117, align 1
  %119 = add i64 %33, %19
  %120 = xor i64 %116, %119
  %121 = sub i64 %20, %33
  %122 = xor i64 %118, %121
  %123 = zext i64 %120 to i128
  %124 = zext i64 %122 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %65, %90
  %130 = add i64 %129, %114
  %131 = add i64 %130, %80
  %132 = add i64 %131, %104
  %133 = add i64 %132, %128
  %134 = lshr i64 %133, 37
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, 1609587791953885689
  %137 = lshr i64 %136, 32
  %138 = xor i64 %137, %136
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %35) #2
  br label %139

139:                                              ; preds = %34, %38
  %140 = phi i64 [ %138, %38 ], [ 0, %34 ]
  ret i64 %140
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_17to128_64b_97to128(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31, i64 noundef %32, i64 noundef %33) local_unnamed_addr #0 {
  %35 = alloca [128 x i8], align 64
  %36 = add i64 %16, -129
  %37 = icmp ult i64 %36, -32
  br i1 %37, label %165, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %35) #2
  store i64 %0, ptr %35, align 64
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %1, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %2, ptr %40, align 16
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 24
  store i64 %3, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 %4, ptr %42, align 32
  %43 = getelementptr inbounds nuw i8, ptr %35, i64 40
  store i64 %5, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 48
  store i64 %6, ptr %44, align 16
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 56
  store i64 %7, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %35, i64 64
  store i64 %8, ptr %46, align 64
  %47 = getelementptr inbounds nuw i8, ptr %35, i64 72
  store i64 %9, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 80
  store i64 %10, ptr %48, align 16
  %49 = getelementptr inbounds nuw i8, ptr %35, i64 88
  store i64 %11, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 96
  store i64 %12, ptr %50, align 32
  %51 = getelementptr inbounds nuw i8, ptr %35, i64 104
  store i64 %13, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %35, i64 112
  store i64 %14, ptr %52, align 16
  %53 = getelementptr inbounds nuw i8, ptr %35, i64 120
  store i64 %15, ptr %53, align 8
  %54 = mul i64 %16, -7046029288634856825
  %55 = add i64 %33, %29
  %56 = xor i64 %55, %6
  %57 = sub i64 %30, %33
  %58 = xor i64 %57, %7
  %59 = zext i64 %56 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %54, %64
  %66 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %67 = getelementptr inbounds i8, ptr %66, i64 -64
  %68 = load i64, ptr %67, align 1
  %69 = getelementptr i8, ptr %66, i64 -56
  %70 = load i64, ptr %69, align 1
  %71 = add i64 %33, %31
  %72 = xor i64 %68, %71
  %73 = sub i64 %32, %33
  %74 = xor i64 %70, %73
  %75 = zext i64 %72 to i128
  %76 = zext i64 %74 to i128
  %77 = mul nuw i128 %76, %75
  %78 = lshr i128 %77, 64
  %79 = xor i128 %78, %77
  %80 = trunc i128 %79 to i64
  %81 = add i64 %33, %25
  %82 = xor i64 %81, %4
  %83 = sub i64 %26, %33
  %84 = xor i64 %83, %5
  %85 = zext i64 %82 to i128
  %86 = zext i64 %84 to i128
  %87 = mul nuw i128 %86, %85
  %88 = lshr i128 %87, 64
  %89 = xor i128 %88, %87
  %90 = trunc i128 %89 to i64
  %91 = getelementptr inbounds i8, ptr %66, i64 -48
  %92 = load i64, ptr %91, align 1
  %93 = getelementptr i8, ptr %66, i64 -40
  %94 = load i64, ptr %93, align 1
  %95 = add i64 %33, %27
  %96 = xor i64 %92, %95
  %97 = sub i64 %28, %33
  %98 = xor i64 %94, %97
  %99 = zext i64 %96 to i128
  %100 = zext i64 %98 to i128
  %101 = mul nuw i128 %100, %99
  %102 = lshr i128 %101, 64
  %103 = xor i128 %102, %101
  %104 = trunc i128 %103 to i64
  %105 = add i64 %33, %21
  %106 = xor i64 %105, %2
  %107 = sub i64 %22, %33
  %108 = xor i64 %107, %3
  %109 = zext i64 %106 to i128
  %110 = zext i64 %108 to i128
  %111 = mul nuw i128 %110, %109
  %112 = lshr i128 %111, 64
  %113 = xor i128 %112, %111
  %114 = trunc i128 %113 to i64
  %115 = getelementptr inbounds i8, ptr %66, i64 -32
  %116 = load i64, ptr %115, align 1
  %117 = getelementptr i8, ptr %66, i64 -24
  %118 = load i64, ptr %117, align 1
  %119 = add i64 %33, %23
  %120 = xor i64 %116, %119
  %121 = sub i64 %24, %33
  %122 = xor i64 %118, %121
  %123 = zext i64 %120 to i128
  %124 = zext i64 %122 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %33, %17
  %130 = xor i64 %129, %0
  %131 = sub i64 %18, %33
  %132 = xor i64 %131, %1
  %133 = zext i64 %130 to i128
  %134 = zext i64 %132 to i128
  %135 = mul nuw i128 %134, %133
  %136 = lshr i128 %135, 64
  %137 = xor i128 %136, %135
  %138 = trunc i128 %137 to i64
  %139 = getelementptr inbounds i8, ptr %66, i64 -16
  %140 = load i64, ptr %139, align 1
  %141 = getelementptr i8, ptr %66, i64 -8
  %142 = load i64, ptr %141, align 1
  %143 = add i64 %33, %19
  %144 = xor i64 %140, %143
  %145 = sub i64 %20, %33
  %146 = xor i64 %142, %145
  %147 = zext i64 %144 to i128
  %148 = zext i64 %146 to i128
  %149 = mul nuw i128 %148, %147
  %150 = lshr i128 %149, 64
  %151 = xor i128 %150, %149
  %152 = trunc i128 %151 to i64
  %153 = add i64 %65, %90
  %154 = add i64 %153, %114
  %155 = add i64 %154, %138
  %156 = add i64 %155, %80
  %157 = add i64 %156, %104
  %158 = add i64 %157, %128
  %159 = add i64 %158, %152
  %160 = lshr i64 %159, 37
  %161 = xor i64 %160, %159
  %162 = mul i64 %161, 1609587791953885689
  %163 = lshr i64 %162, 32
  %164 = xor i64 %163, %162
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %35) #2
  br label %165

165:                                              ; preds = %34, %38
  %166 = phi i64 [ %164, %38 ], [ 0, %34 ]
  ret i64 %166
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_len_17to128_64b: argument 0"}
!7 = distinct !{!7, !"XXH3_len_17to128_64b"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_len_17to128_64b: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"XXH3_len_17to128_64b: argument 0"}
!12 = distinct !{!12, !"XXH3_len_17to128_64b"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"XXH3_len_17to128_64b: argument 1"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_len_17to128_64b: argument 0"}
!17 = distinct !{!17, !"XXH3_len_17to128_64b"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"XXH3_len_17to128_64b: argument 1"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_len_17to128_64b: argument 0"}
!22 = distinct !{!22, !"XXH3_len_17to128_64b"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"XXH3_len_17to128_64b: argument 1"}
