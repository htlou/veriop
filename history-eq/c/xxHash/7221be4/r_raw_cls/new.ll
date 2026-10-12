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
  %65 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %66 = getelementptr inbounds i8, ptr %65, i64 -16
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr i8, ptr %65, i64 -8
  %69 = load i64, ptr %68, align 1
  %70 = add i64 %33, %19
  %71 = xor i64 %67, %70
  %72 = sub i64 %20, %33
  %73 = xor i64 %69, %72
  %74 = zext i64 %71 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %33, %21
  %81 = xor i64 %80, %2
  %82 = sub i64 %22, %33
  %83 = xor i64 %82, %3
  %84 = zext i64 %81 to i128
  %85 = zext i64 %83 to i128
  %86 = mul nuw i128 %85, %84
  %87 = lshr i128 %86, 64
  %88 = xor i128 %87, %86
  %89 = trunc i128 %88 to i64
  %90 = getelementptr inbounds i8, ptr %65, i64 -32
  %91 = load i64, ptr %90, align 1
  %92 = getelementptr i8, ptr %65, i64 -24
  %93 = load i64, ptr %92, align 1
  %94 = add i64 %33, %23
  %95 = xor i64 %91, %94
  %96 = sub i64 %24, %33
  %97 = xor i64 %93, %96
  %98 = zext i64 %95 to i128
  %99 = zext i64 %97 to i128
  %100 = mul nuw i128 %99, %98
  %101 = lshr i128 %100, 64
  %102 = xor i128 %101, %100
  %103 = trunc i128 %102 to i64
  %104 = add i64 %54, %64
  %105 = add i64 %104, %89
  %106 = add i64 %105, %79
  %107 = add i64 %106, %103
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
  %65 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %66 = getelementptr inbounds i8, ptr %65, i64 -16
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr i8, ptr %65, i64 -8
  %69 = load i64, ptr %68, align 1
  %70 = add i64 %33, %19
  %71 = xor i64 %67, %70
  %72 = sub i64 %20, %33
  %73 = xor i64 %69, %72
  %74 = zext i64 %71 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %33, %21
  %81 = xor i64 %80, %2
  %82 = sub i64 %22, %33
  %83 = xor i64 %82, %3
  %84 = zext i64 %81 to i128
  %85 = zext i64 %83 to i128
  %86 = mul nuw i128 %85, %84
  %87 = lshr i128 %86, 64
  %88 = xor i128 %87, %86
  %89 = trunc i128 %88 to i64
  %90 = getelementptr inbounds i8, ptr %65, i64 -32
  %91 = load i64, ptr %90, align 1
  %92 = getelementptr i8, ptr %65, i64 -24
  %93 = load i64, ptr %92, align 1
  %94 = add i64 %33, %23
  %95 = xor i64 %91, %94
  %96 = sub i64 %24, %33
  %97 = xor i64 %93, %96
  %98 = zext i64 %95 to i128
  %99 = zext i64 %97 to i128
  %100 = mul nuw i128 %99, %98
  %101 = lshr i128 %100, 64
  %102 = xor i128 %101, %100
  %103 = trunc i128 %102 to i64
  %104 = add i64 %33, %25
  %105 = xor i64 %104, %4
  %106 = sub i64 %26, %33
  %107 = xor i64 %106, %5
  %108 = zext i64 %105 to i128
  %109 = zext i64 %107 to i128
  %110 = mul nuw i128 %109, %108
  %111 = lshr i128 %110, 64
  %112 = xor i128 %111, %110
  %113 = trunc i128 %112 to i64
  %114 = getelementptr inbounds i8, ptr %65, i64 -48
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr i8, ptr %65, i64 -40
  %117 = load i64, ptr %116, align 1
  %118 = add i64 %33, %27
  %119 = xor i64 %115, %118
  %120 = sub i64 %28, %33
  %121 = xor i64 %117, %120
  %122 = zext i64 %119 to i128
  %123 = zext i64 %121 to i128
  %124 = mul nuw i128 %123, %122
  %125 = lshr i128 %124, 64
  %126 = xor i128 %125, %124
  %127 = trunc i128 %126 to i64
  %128 = add i64 %54, %64
  %129 = add i64 %128, %89
  %130 = add i64 %129, %113
  %131 = add i64 %130, %79
  %132 = add i64 %131, %103
  %133 = add i64 %132, %127
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
  %65 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %66 = getelementptr inbounds i8, ptr %65, i64 -16
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr i8, ptr %65, i64 -8
  %69 = load i64, ptr %68, align 1
  %70 = add i64 %33, %19
  %71 = xor i64 %67, %70
  %72 = sub i64 %20, %33
  %73 = xor i64 %69, %72
  %74 = zext i64 %71 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %33, %21
  %81 = xor i64 %80, %2
  %82 = sub i64 %22, %33
  %83 = xor i64 %82, %3
  %84 = zext i64 %81 to i128
  %85 = zext i64 %83 to i128
  %86 = mul nuw i128 %85, %84
  %87 = lshr i128 %86, 64
  %88 = xor i128 %87, %86
  %89 = trunc i128 %88 to i64
  %90 = getelementptr inbounds i8, ptr %65, i64 -32
  %91 = load i64, ptr %90, align 1
  %92 = getelementptr i8, ptr %65, i64 -24
  %93 = load i64, ptr %92, align 1
  %94 = add i64 %33, %23
  %95 = xor i64 %91, %94
  %96 = sub i64 %24, %33
  %97 = xor i64 %93, %96
  %98 = zext i64 %95 to i128
  %99 = zext i64 %97 to i128
  %100 = mul nuw i128 %99, %98
  %101 = lshr i128 %100, 64
  %102 = xor i128 %101, %100
  %103 = trunc i128 %102 to i64
  %104 = add i64 %33, %25
  %105 = xor i64 %104, %4
  %106 = sub i64 %26, %33
  %107 = xor i64 %106, %5
  %108 = zext i64 %105 to i128
  %109 = zext i64 %107 to i128
  %110 = mul nuw i128 %109, %108
  %111 = lshr i128 %110, 64
  %112 = xor i128 %111, %110
  %113 = trunc i128 %112 to i64
  %114 = getelementptr inbounds i8, ptr %65, i64 -48
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr i8, ptr %65, i64 -40
  %117 = load i64, ptr %116, align 1
  %118 = add i64 %33, %27
  %119 = xor i64 %115, %118
  %120 = sub i64 %28, %33
  %121 = xor i64 %117, %120
  %122 = zext i64 %119 to i128
  %123 = zext i64 %121 to i128
  %124 = mul nuw i128 %123, %122
  %125 = lshr i128 %124, 64
  %126 = xor i128 %125, %124
  %127 = trunc i128 %126 to i64
  %128 = add i64 %33, %29
  %129 = xor i64 %128, %6
  %130 = sub i64 %30, %33
  %131 = xor i64 %130, %7
  %132 = zext i64 %129 to i128
  %133 = zext i64 %131 to i128
  %134 = mul nuw i128 %133, %132
  %135 = lshr i128 %134, 64
  %136 = xor i128 %135, %134
  %137 = trunc i128 %136 to i64
  %138 = getelementptr inbounds i8, ptr %65, i64 -64
  %139 = load i64, ptr %138, align 1
  %140 = getelementptr i8, ptr %65, i64 -56
  %141 = load i64, ptr %140, align 1
  %142 = add i64 %33, %31
  %143 = xor i64 %139, %142
  %144 = sub i64 %32, %33
  %145 = xor i64 %141, %144
  %146 = zext i64 %143 to i128
  %147 = zext i64 %145 to i128
  %148 = mul nuw i128 %147, %146
  %149 = lshr i128 %148, 64
  %150 = xor i128 %149, %148
  %151 = trunc i128 %150 to i64
  %152 = add i64 %54, %64
  %153 = add i64 %152, %89
  %154 = add i64 %153, %113
  %155 = add i64 %154, %137
  %156 = add i64 %155, %79
  %157 = add i64 %156, %103
  %158 = add i64 %157, %127
  %159 = add i64 %158, %151
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
