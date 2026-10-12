; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/268fde4/wrap_helpers.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/268fde4/wrap_helpers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@keep64 = internal global i64 (i8*, i64, i64, i8*, i64)* @XXH3_hashLong_64b_withSecret, align 8
@keep128 = internal global { i64, i64 } (i8*, i64, i64, i8*, i64)* @XXH3_hashLong_128b_withSecret, align 8
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 32
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast ({ i64, i64 } (i8*, i64, i64, i8*, i64)** @keep128 to i8*), i8* bitcast (i64 (i8*, i64, i64, i8*, i64)** @keep64 to i8*)], section "llvm.metadata"

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal i64 @XXH3_hashLong_64b_withSecret(i8* noundef readonly %0, i64 noundef %1, i64 noundef %2, i8* noundef readonly %3, i64 noundef %4) #0 {
  %6 = alloca [8 x i64], align 32
  %7 = bitcast [8 x i64]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 32 dereferenceable(64) %7, i8* noundef nonnull align 32 dereferenceable(64) bitcast ([8 x i64]* @__const.XXH3_hashLong_128b_internal.acc to i8*), i64 64, i1 false) #6
  %8 = add i64 %4, -64
  %9 = lshr i64 %8, 3
  %10 = shl i64 %9, 6
  %11 = add i64 %1, -1
  %12 = udiv i64 %11, %10
  %13 = urem i64 %11, %10
  %14 = icmp ugt i64 %4, 135
  call void @llvm.assume(i1 %14) #6
  %15 = icmp ugt i64 %10, %11
  br i1 %15, label %76, label %16

16:                                               ; preds = %5
  %17 = icmp ult i64 %8, 8
  %18 = bitcast [8 x i64]* %6 to <4 x i64>*
  %19 = getelementptr inbounds i8, i8* %3, i64 %4
  %20 = getelementptr inbounds i8, i8* %19, i64 -64
  %21 = bitcast i8* %20 to <4 x i64>*
  %22 = call i64 @llvm.umax.i64(i64 %12, i64 1) #6
  br label %23

23:                                               ; preds = %73, %16
  %24 = phi i64 [ 0, %16 ], [ %74, %73 ]
  %25 = mul i64 %24, %10
  %26 = getelementptr inbounds i8, i8* %0, i64 %25
  br i1 %17, label %56, label %27

27:                                               ; preds = %23, %53
  %28 = phi i64 [ %54, %53 ], [ 0, %23 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 320
  call void @llvm.prefetch.p0i8(i8* nonnull %31, i32 0, i32 3, i32 1) #6
  %32 = shl i64 %28, 3
  %33 = getelementptr inbounds i8, i8* %3, i64 %32
  %34 = bitcast i8* %30 to <4 x i64>*
  %35 = bitcast i8* %33 to <4 x i64>*
  br label %36

36:                                               ; preds = %36, %27
  %37 = phi i64 [ 0, %27 ], [ %51, %36 ]
  %38 = getelementptr inbounds <4 x i64>, <4 x i64>* %34, i64 %37
  %39 = load <4 x i64>, <4 x i64>* %38, align 1
  %40 = getelementptr inbounds <4 x i64>, <4 x i64>* %35, i64 %37
  %41 = load <4 x i64>, <4 x i64>* %40, align 1
  %42 = xor <4 x i64> %41, %39
  %43 = lshr <4 x i64> %42, <i64 32, i64 32, i64 32, i64 32>
  %44 = and <4 x i64> %42, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
  %45 = mul nuw <4 x i64> %43, %44
  %46 = shufflevector <4 x i64> %39, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %47 = getelementptr inbounds <4 x i64>, <4 x i64>* %18, i64 %37
  %48 = load <4 x i64>, <4 x i64>* %47, align 32
  %49 = add <4 x i64> %48, %46
  %50 = add <4 x i64> %49, %45
  store <4 x i64> %50, <4 x i64>* %47, align 32
  %51 = add nuw nsw i64 %37, 1
  %52 = icmp eq i64 %51, 2
  br i1 %52, label %53, label %36, !llvm.loop !39

53:                                               ; preds = %36
  %54 = add nuw nsw i64 %28, 1
  %55 = icmp eq i64 %54, %9
  br i1 %55, label %56, label %27, !llvm.loop !42

56:                                               ; preds = %53, %23
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %71, %57 ]
  %59 = getelementptr inbounds <4 x i64>, <4 x i64>* %18, i64 %58
  %60 = load <4 x i64>, <4 x i64>* %59, align 32
  %61 = lshr <4 x i64> %60, <i64 47, i64 47, i64 47, i64 47>
  %62 = xor <4 x i64> %61, %60
  %63 = getelementptr inbounds <4 x i64>, <4 x i64>* %21, i64 %58
  %64 = load <4 x i64>, <4 x i64>* %63, align 1
  %65 = xor <4 x i64> %62, %64
  %66 = lshr <4 x i64> %65, <i64 32, i64 32, i64 32, i64 32>
  %67 = and <4 x i64> %65, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
  %68 = mul nuw <4 x i64> %67, <i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761>
  %69 = mul <4 x i64> %66, <i64 -7046029290881679360, i64 -7046029290881679360, i64 -7046029290881679360, i64 -7046029290881679360>
  %70 = add <4 x i64> %69, %68
  store <4 x i64> %70, <4 x i64>* %59, align 32
  %71 = add nuw nsw i64 %58, 1
  %72 = icmp eq i64 %71, 2
  br i1 %72, label %73, label %57, !llvm.loop !52

73:                                               ; preds = %57
  %74 = add nuw i64 %24, 1
  %75 = icmp eq i64 %74, %22
  br i1 %75, label %76, label %23, !llvm.loop !53

76:                                               ; preds = %73, %5
  %77 = icmp ugt i64 %1, 64
  call void @llvm.assume(i1 %77) #6
  %78 = mul i64 %12, %10
  %79 = lshr i64 %13, 6
  %80 = lshr i64 %4, 3
  %81 = icmp ule i64 %79, %80
  call void @llvm.assume(i1 %81) #6
  %82 = getelementptr inbounds i8, i8* %0, i64 %78
  %83 = icmp ult i64 %13, 64
  br i1 %83, label %115, label %84

84:                                               ; preds = %76
  %85 = bitcast [8 x i64]* %6 to <4 x i64>*
  br label %86

86:                                               ; preds = %112, %84
  %87 = phi i64 [ 0, %84 ], [ %113, %112 ]
  %88 = shl i64 %87, 6
  %89 = getelementptr inbounds i8, i8* %82, i64 %88
  %90 = getelementptr inbounds i8, i8* %89, i64 320
  call void @llvm.prefetch.p0i8(i8* nonnull %90, i32 0, i32 3, i32 1) #6
  %91 = shl i64 %87, 3
  %92 = getelementptr inbounds i8, i8* %3, i64 %91
  %93 = bitcast i8* %89 to <4 x i64>*
  %94 = bitcast i8* %92 to <4 x i64>*
  br label %95

95:                                               ; preds = %95, %86
  %96 = phi i64 [ 0, %86 ], [ %110, %95 ]
  %97 = getelementptr inbounds <4 x i64>, <4 x i64>* %93, i64 %96
  %98 = load <4 x i64>, <4 x i64>* %97, align 1
  %99 = getelementptr inbounds <4 x i64>, <4 x i64>* %94, i64 %96
  %100 = load <4 x i64>, <4 x i64>* %99, align 1
  %101 = xor <4 x i64> %100, %98
  %102 = lshr <4 x i64> %101, <i64 32, i64 32, i64 32, i64 32>
  %103 = and <4 x i64> %101, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
  %104 = mul nuw <4 x i64> %102, %103
  %105 = shufflevector <4 x i64> %98, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %106 = getelementptr inbounds <4 x i64>, <4 x i64>* %85, i64 %96
  %107 = load <4 x i64>, <4 x i64>* %106, align 32
  %108 = add <4 x i64> %107, %105
  %109 = add <4 x i64> %108, %104
  store <4 x i64> %109, <4 x i64>* %106, align 32
  %110 = add nuw nsw i64 %96, 1
  %111 = icmp eq i64 %110, 2
  br i1 %111, label %112, label %95, !llvm.loop !39

112:                                              ; preds = %95
  %113 = add nuw i64 %87, 1
  %114 = icmp eq i64 %113, %79
  br i1 %114, label %115, label %86, !llvm.loop !42

115:                                              ; preds = %112, %76
  %116 = getelementptr inbounds i8, i8* %0, i64 %1
  %117 = getelementptr inbounds i8, i8* %116, i64 -64
  %118 = getelementptr inbounds i8, i8* %3, i64 %4
  %119 = getelementptr inbounds i8, i8* %118, i64 -64
  %120 = getelementptr inbounds i8, i8* %119, i64 -7
  %121 = bitcast [8 x i64]* %6 to <4 x i64>*
  %122 = bitcast i8* %117 to <4 x i64>*
  %123 = bitcast i8* %120 to <4 x i64>*
  br label %124

124:                                              ; preds = %124, %115
  %125 = phi i64 [ 0, %115 ], [ %139, %124 ]
  %126 = getelementptr inbounds <4 x i64>, <4 x i64>* %122, i64 %125
  %127 = load <4 x i64>, <4 x i64>* %126, align 1
  %128 = getelementptr inbounds <4 x i64>, <4 x i64>* %123, i64 %125
  %129 = load <4 x i64>, <4 x i64>* %128, align 1
  %130 = xor <4 x i64> %129, %127
  %131 = lshr <4 x i64> %130, <i64 32, i64 32, i64 32, i64 32>
  %132 = and <4 x i64> %130, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
  %133 = mul nuw <4 x i64> %131, %132
  %134 = shufflevector <4 x i64> %127, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %135 = getelementptr inbounds <4 x i64>, <4 x i64>* %121, i64 %125
  %136 = load <4 x i64>, <4 x i64>* %135, align 32
  %137 = add <4 x i64> %136, %134
  %138 = add <4 x i64> %137, %133
  store <4 x i64> %138, <4 x i64>* %135, align 32
  %139 = add nuw nsw i64 %125, 1
  %140 = icmp eq i64 %139, 2
  br i1 %140, label %141, label %124, !llvm.loop !39

141:                                              ; preds = %124
  %142 = getelementptr inbounds i8, i8* %3, i64 11
  %143 = mul i64 %1, -7046029288634856825
  br label %144

144:                                              ; preds = %144, %141
  %145 = phi i64 [ 0, %141 ], [ %168, %144 ]
  %146 = phi i64 [ %143, %141 ], [ %167, %144 ]
  %147 = shl nuw i64 %145, 1
  %148 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 %147
  %149 = shl i64 %145, 4
  %150 = getelementptr inbounds i8, i8* %142, i64 %149
  %151 = load i64, i64* %148, align 16
  %152 = bitcast i8* %150 to i64*
  %153 = load i64, i64* %152, align 1
  %154 = xor i64 %153, %151
  %155 = getelementptr inbounds i64, i64* %148, i64 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i8, i8* %150, i64 8
  %158 = bitcast i8* %157 to i64*
  %159 = load i64, i64* %158, align 1
  %160 = xor i64 %159, %156
  %161 = zext i64 %154 to i128
  %162 = zext i64 %160 to i128
  %163 = mul nuw i128 %162, %161
  %164 = lshr i128 %163, 64
  %165 = xor i128 %164, %163
  %166 = trunc i128 %165 to i64
  %167 = add i64 %146, %166
  %168 = add nuw nsw i64 %145, 1
  %169 = icmp eq i64 %168, 4
  br i1 %169, label %170, label %144, !llvm.loop !102

170:                                              ; preds = %144
  %171 = lshr i64 %167, 37
  %172 = xor i64 %171, %167
  %173 = mul i64 %172, 1609587791953885689
  %174 = lshr i64 %173, 32
  %175 = xor i64 %174, %173
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #6
  ret i64 %175
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal { i64, i64 } @XXH3_hashLong_128b_withSecret(i8* noundef readonly %0, i64 noundef %1, i64 noundef %2, i8* noundef readonly %3, i64 noundef %4) #0 {
  %6 = alloca [8 x i64], align 32
  %7 = bitcast [8 x i64]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 32 dereferenceable(64) %7, i8* noundef nonnull align 32 dereferenceable(64) bitcast ([8 x i64]* @__const.XXH3_hashLong_128b_internal.acc to i8*), i64 64, i1 false) #6
  %8 = add i64 %4, -64
  %9 = lshr i64 %8, 3
  %10 = shl i64 %9, 6
  %11 = add i64 %1, -1
  %12 = udiv i64 %11, %10
  %13 = urem i64 %11, %10
  %14 = icmp ugt i64 %4, 135
  call void @llvm.assume(i1 %14) #6
  %15 = icmp ugt i64 %10, %11
  br i1 %15, label %76, label %16

16:                                               ; preds = %5
  %17 = icmp ult i64 %8, 8
  %18 = bitcast [8 x i64]* %6 to <4 x i64>*
  %19 = getelementptr inbounds i8, i8* %3, i64 %4
  %20 = getelementptr inbounds i8, i8* %19, i64 -64
  %21 = bitcast i8* %20 to <4 x i64>*
  %22 = call i64 @llvm.umax.i64(i64 %12, i64 1) #6
  br label %23

23:                                               ; preds = %73, %16
  %24 = phi i64 [ 0, %16 ], [ %74, %73 ]
  %25 = mul i64 %24, %10
  %26 = getelementptr inbounds i8, i8* %0, i64 %25
  br i1 %17, label %56, label %27

27:                                               ; preds = %23, %53
  %28 = phi i64 [ %54, %53 ], [ 0, %23 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 320
  call void @llvm.prefetch.p0i8(i8* nonnull %31, i32 0, i32 3, i32 1) #6
  %32 = shl i64 %28, 3
  %33 = getelementptr inbounds i8, i8* %3, i64 %32
  %34 = bitcast i8* %30 to <4 x i64>*
  %35 = bitcast i8* %33 to <4 x i64>*
  br label %36

36:                                               ; preds = %36, %27
  %37 = phi i64 [ 0, %27 ], [ %51, %36 ]
  %38 = getelementptr inbounds <4 x i64>, <4 x i64>* %34, i64 %37
  %39 = load <4 x i64>, <4 x i64>* %38, align 1
  %40 = getelementptr inbounds <4 x i64>, <4 x i64>* %35, i64 %37
  %41 = load <4 x i64>, <4 x i64>* %40, align 1
  %42 = xor <4 x i64> %41, %39
  %43 = lshr <4 x i64> %42, <i64 32, i64 32, i64 32, i64 32>
  %44 = and <4 x i64> %42, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
  %45 = mul nuw <4 x i64> %43, %44
  %46 = shufflevector <4 x i64> %39, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %47 = getelementptr inbounds <4 x i64>, <4 x i64>* %18, i64 %37
  %48 = load <4 x i64>, <4 x i64>* %47, align 32
  %49 = add <4 x i64> %48, %46
  %50 = add <4 x i64> %49, %45
  store <4 x i64> %50, <4 x i64>* %47, align 32
  %51 = add nuw nsw i64 %37, 1
  %52 = icmp eq i64 %51, 2
  br i1 %52, label %53, label %36, !llvm.loop !39

53:                                               ; preds = %36
  %54 = add nuw nsw i64 %28, 1
  %55 = icmp eq i64 %54, %9
  br i1 %55, label %56, label %27, !llvm.loop !42

56:                                               ; preds = %53, %23
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i64 [ 0, %56 ], [ %71, %57 ]
  %59 = getelementptr inbounds <4 x i64>, <4 x i64>* %18, i64 %58
  %60 = load <4 x i64>, <4 x i64>* %59, align 32
  %61 = lshr <4 x i64> %60, <i64 47, i64 47, i64 47, i64 47>
  %62 = xor <4 x i64> %61, %60
  %63 = getelementptr inbounds <4 x i64>, <4 x i64>* %21, i64 %58
  %64 = load <4 x i64>, <4 x i64>* %63, align 1
  %65 = xor <4 x i64> %62, %64
  %66 = lshr <4 x i64> %65, <i64 32, i64 32, i64 32, i64 32>
  %67 = and <4 x i64> %65, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
  %68 = mul nuw <4 x i64> %67, <i64 2654435761, i64 2654435761, i64 2654435761, i64 2654435761>
  %69 = mul <4 x i64> %66, <i64 -7046029290881679360, i64 -7046029290881679360, i64 -7046029290881679360, i64 -7046029290881679360>
  %70 = add <4 x i64> %69, %68
  store <4 x i64> %70, <4 x i64>* %59, align 32
  %71 = add nuw nsw i64 %58, 1
  %72 = icmp eq i64 %71, 2
  br i1 %72, label %73, label %57, !llvm.loop !52

73:                                               ; preds = %57
  %74 = add nuw i64 %24, 1
  %75 = icmp eq i64 %74, %22
  br i1 %75, label %76, label %23, !llvm.loop !53

76:                                               ; preds = %73, %5
  %77 = icmp ugt i64 %1, 64
  call void @llvm.assume(i1 %77) #6
  %78 = mul i64 %12, %10
  %79 = lshr i64 %13, 6
  %80 = lshr i64 %4, 3
  %81 = icmp ule i64 %79, %80
  call void @llvm.assume(i1 %81) #6
  %82 = getelementptr inbounds i8, i8* %0, i64 %78
  %83 = icmp ult i64 %13, 64
  br i1 %83, label %115, label %84

84:                                               ; preds = %76
  %85 = bitcast [8 x i64]* %6 to <4 x i64>*
  br label %86

86:                                               ; preds = %112, %84
  %87 = phi i64 [ 0, %84 ], [ %113, %112 ]
  %88 = shl i64 %87, 6
  %89 = getelementptr inbounds i8, i8* %82, i64 %88
  %90 = getelementptr inbounds i8, i8* %89, i64 320
  call void @llvm.prefetch.p0i8(i8* nonnull %90, i32 0, i32 3, i32 1) #6
  %91 = shl i64 %87, 3
  %92 = getelementptr inbounds i8, i8* %3, i64 %91
  %93 = bitcast i8* %89 to <4 x i64>*
  %94 = bitcast i8* %92 to <4 x i64>*
  br label %95

95:                                               ; preds = %95, %86
  %96 = phi i64 [ 0, %86 ], [ %110, %95 ]
  %97 = getelementptr inbounds <4 x i64>, <4 x i64>* %93, i64 %96
  %98 = load <4 x i64>, <4 x i64>* %97, align 1
  %99 = getelementptr inbounds <4 x i64>, <4 x i64>* %94, i64 %96
  %100 = load <4 x i64>, <4 x i64>* %99, align 1
  %101 = xor <4 x i64> %100, %98
  %102 = lshr <4 x i64> %101, <i64 32, i64 32, i64 32, i64 32>
  %103 = and <4 x i64> %101, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
  %104 = mul nuw <4 x i64> %102, %103
  %105 = shufflevector <4 x i64> %98, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %106 = getelementptr inbounds <4 x i64>, <4 x i64>* %85, i64 %96
  %107 = load <4 x i64>, <4 x i64>* %106, align 32
  %108 = add <4 x i64> %107, %105
  %109 = add <4 x i64> %108, %104
  store <4 x i64> %109, <4 x i64>* %106, align 32
  %110 = add nuw nsw i64 %96, 1
  %111 = icmp eq i64 %110, 2
  br i1 %111, label %112, label %95, !llvm.loop !39

112:                                              ; preds = %95
  %113 = add nuw i64 %87, 1
  %114 = icmp eq i64 %113, %79
  br i1 %114, label %115, label %86, !llvm.loop !42

115:                                              ; preds = %112, %76
  %116 = getelementptr inbounds i8, i8* %0, i64 %1
  %117 = getelementptr inbounds i8, i8* %116, i64 -64
  %118 = getelementptr inbounds i8, i8* %3, i64 %4
  %119 = getelementptr inbounds i8, i8* %118, i64 -64
  %120 = getelementptr inbounds i8, i8* %119, i64 -7
  %121 = bitcast [8 x i64]* %6 to <4 x i64>*
  %122 = bitcast i8* %117 to <4 x i64>*
  %123 = bitcast i8* %120 to <4 x i64>*
  br label %124

124:                                              ; preds = %124, %115
  %125 = phi i64 [ 0, %115 ], [ %139, %124 ]
  %126 = getelementptr inbounds <4 x i64>, <4 x i64>* %122, i64 %125
  %127 = load <4 x i64>, <4 x i64>* %126, align 1
  %128 = getelementptr inbounds <4 x i64>, <4 x i64>* %123, i64 %125
  %129 = load <4 x i64>, <4 x i64>* %128, align 1
  %130 = xor <4 x i64> %129, %127
  %131 = lshr <4 x i64> %130, <i64 32, i64 32, i64 32, i64 32>
  %132 = and <4 x i64> %130, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
  %133 = mul nuw <4 x i64> %131, %132
  %134 = shufflevector <4 x i64> %127, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %135 = getelementptr inbounds <4 x i64>, <4 x i64>* %121, i64 %125
  %136 = load <4 x i64>, <4 x i64>* %135, align 32
  %137 = add <4 x i64> %136, %134
  %138 = add <4 x i64> %137, %133
  store <4 x i64> %138, <4 x i64>* %135, align 32
  %139 = add nuw nsw i64 %125, 1
  %140 = icmp eq i64 %139, 2
  br i1 %140, label %141, label %124, !llvm.loop !39

141:                                              ; preds = %124
  %142 = getelementptr inbounds i8, i8* %3, i64 11
  %143 = mul i64 %1, -7046029288634856825
  br label %144

144:                                              ; preds = %144, %141
  %145 = phi i64 [ 0, %141 ], [ %168, %144 ]
  %146 = phi i64 [ %143, %141 ], [ %167, %144 ]
  %147 = shl nuw i64 %145, 1
  %148 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 %147
  %149 = shl i64 %145, 4
  %150 = getelementptr inbounds i8, i8* %142, i64 %149
  %151 = load i64, i64* %148, align 16
  %152 = bitcast i8* %150 to i64*
  %153 = load i64, i64* %152, align 1
  %154 = xor i64 %153, %151
  %155 = getelementptr inbounds i64, i64* %148, i64 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i8, i8* %150, i64 8
  %158 = bitcast i8* %157 to i64*
  %159 = load i64, i64* %158, align 1
  %160 = xor i64 %159, %156
  %161 = zext i64 %154 to i128
  %162 = zext i64 %160 to i128
  %163 = mul nuw i128 %162, %161
  %164 = lshr i128 %163, 64
  %165 = xor i128 %164, %163
  %166 = trunc i128 %165 to i64
  %167 = add i64 %146, %166
  %168 = add nuw nsw i64 %145, 1
  %169 = icmp eq i64 %168, 4
  br i1 %169, label %170, label %144, !llvm.loop !102

170:                                              ; preds = %144
  %171 = getelementptr inbounds i8, i8* %119, i64 -11
  %172 = mul i64 %1, -4417276706812531889
  %173 = xor i64 %172, -1
  br label %174

174:                                              ; preds = %174, %170
  %175 = phi i64 [ 0, %170 ], [ %198, %174 ]
  %176 = phi i64 [ %173, %170 ], [ %197, %174 ]
  %177 = shl nuw i64 %175, 1
  %178 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 %177
  %179 = shl i64 %175, 4
  %180 = getelementptr inbounds i8, i8* %171, i64 %179
  %181 = load i64, i64* %178, align 16
  %182 = bitcast i8* %180 to i64*
  %183 = load i64, i64* %182, align 1
  %184 = xor i64 %183, %181
  %185 = getelementptr inbounds i64, i64* %178, i64 1
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i8, i8* %180, i64 8
  %188 = bitcast i8* %187 to i64*
  %189 = load i64, i64* %188, align 1
  %190 = xor i64 %189, %186
  %191 = zext i64 %184 to i128
  %192 = zext i64 %190 to i128
  %193 = mul nuw i128 %192, %191
  %194 = lshr i128 %193, 64
  %195 = xor i128 %194, %193
  %196 = trunc i128 %195 to i64
  %197 = add i64 %176, %196
  %198 = add nuw nsw i64 %175, 1
  %199 = icmp eq i64 %198, 4
  br i1 %199, label %200, label %174, !llvm.loop !102

200:                                              ; preds = %174
  %201 = lshr i64 %167, 37
  %202 = xor i64 %201, %167
  %203 = mul i64 %202, 1609587791953885689
  %204 = lshr i64 %203, 32
  %205 = xor i64 %204, %203
  %206 = lshr i64 %197, 37
  %207 = xor i64 %206, %197
  %208 = mul i64 %207, 1609587791953885689
  %209 = lshr i64 %208, 32
  %210 = xor i64 %209, %208
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #6
  %211 = insertvalue { i64, i64 } poison, i64 %205, 0
  %212 = insertvalue { i64, i64 } %211, i64 %210, 1
  ret { i64, i64 } %212
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_hashLong_64b_internal: argument 0"}
!7 = distinct !{!7, !"XXH3_hashLong_64b_internal"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_hashLong_64b_internal: argument 1"}
!10 = !{!6, !9}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_hashLong_internal_loop: argument 0"}
!13 = distinct !{!13, !"XXH3_hashLong_internal_loop"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"XXH3_hashLong_internal_loop: argument 1"}
!16 = !{!17}
!17 = distinct !{!17, !13, !"XXH3_hashLong_internal_loop: argument 2"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_accumulate_avx2: argument 0"}
!20 = distinct !{!20, !"XXH3_accumulate_avx2"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"XXH3_accumulate_avx2: argument 1"}
!23 = !{!24}
!24 = distinct !{!24, !20, !"XXH3_accumulate_avx2: argument 2"}
!25 = !{!24, !17, !9}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_accumulate_512_avx2: argument 0"}
!28 = distinct !{!28, !"XXH3_accumulate_512_avx2"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"XXH3_accumulate_512_avx2: argument 1"}
!31 = !{!32}
!32 = distinct !{!32, !28, !"XXH3_accumulate_512_avx2: argument 2"}
!33 = !{!30, !22, !15, !6}
!34 = !{!27, !32, !19, !24, !12, !17, !9}
!35 = !{!32, !24, !17, !9}
!36 = !{!27, !30, !19, !22, !12, !15, !6}
!37 = !{!27, !19, !12}
!38 = !{!30, !32, !22, !24, !15, !17, !6, !9}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !40, !41}
!43 = !{!44}
!44 = distinct !{!44, !45, !"XXH3_scrambleAcc_avx2: argument 0"}
!45 = distinct !{!45, !"XXH3_scrambleAcc_avx2"}
!46 = !{!47}
!47 = distinct !{!47, !45, !"XXH3_scrambleAcc_avx2: argument 1"}
!48 = !{!44, !12}
!49 = !{!47, !15, !17, !6, !9}
!50 = !{!47, !17, !9}
!51 = !{!44, !12, !15, !6}
!52 = distinct !{!52, !40, !41}
!53 = distinct !{!53, !40, !41}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_accumulate_avx2: argument 0"}
!56 = distinct !{!56, !"XXH3_accumulate_avx2"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"XXH3_accumulate_avx2: argument 1"}
!59 = !{!60}
!60 = distinct !{!60, !56, !"XXH3_accumulate_avx2: argument 2"}
!61 = !{!60, !17, !9}
!62 = !{!63}
!63 = distinct !{!63, !64, !"XXH3_accumulate_512_avx2: argument 0"}
!64 = distinct !{!64, !"XXH3_accumulate_512_avx2"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"XXH3_accumulate_512_avx2: argument 1"}
!67 = !{!68}
!68 = distinct !{!68, !64, !"XXH3_accumulate_512_avx2: argument 2"}
!69 = !{!66, !58, !15, !6}
!70 = !{!63, !68, !55, !60, !12, !17, !9}
!71 = !{!68, !60, !17, !9}
!72 = !{!63, !66, !55, !58, !12, !15, !6}
!73 = !{!63, !55, !12}
!74 = !{!66, !68, !58, !60, !15, !17, !6, !9}
!75 = !{!76}
!76 = distinct !{!76, !77, !"XXH3_accumulate_512_avx2: argument 0"}
!77 = distinct !{!77, !"XXH3_accumulate_512_avx2"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"XXH3_accumulate_512_avx2: argument 1"}
!80 = !{!81}
!81 = distinct !{!81, !77, !"XXH3_accumulate_512_avx2: argument 2"}
!82 = !{!79, !15, !6}
!83 = !{!76, !81, !12, !17, !9}
!84 = !{!81, !17, !9}
!85 = !{!76, !79, !12, !15, !6}
!86 = !{!76, !12}
!87 = !{!79, !81, !15, !17, !6, !9}
!88 = !{!89}
!89 = distinct !{!89, !90, !"XXH3_mergeAccs: argument 0"}
!90 = distinct !{!90, !"XXH3_mergeAccs"}
!91 = !{!92}
!92 = distinct !{!92, !90, !"XXH3_mergeAccs: argument 1"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_mix2Accs: argument 0"}
!95 = distinct !{!95, !"XXH3_mix2Accs"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"XXH3_mix2Accs: argument 1"}
!98 = !{!94, !89}
!99 = !{!97, !92, !6, !9}
!100 = !{!97, !92, !9}
!101 = !{!94, !89, !6}
!102 = distinct !{!102, !40, !41}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_hashLong_128b_internal: argument 0"}
!105 = distinct !{!105, !"XXH3_hashLong_128b_internal"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"XXH3_hashLong_128b_internal: argument 1"}
!108 = !{!104, !107}
!109 = !{!110}
!110 = distinct !{!110, !111, !"XXH3_hashLong_internal_loop: argument 0"}
!111 = distinct !{!111, !"XXH3_hashLong_internal_loop"}
!112 = !{!113}
!113 = distinct !{!113, !111, !"XXH3_hashLong_internal_loop: argument 1"}
!114 = !{!115}
!115 = distinct !{!115, !111, !"XXH3_hashLong_internal_loop: argument 2"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"XXH3_accumulate_avx2: argument 0"}
!118 = distinct !{!118, !"XXH3_accumulate_avx2"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"XXH3_accumulate_avx2: argument 1"}
!121 = !{!122}
!122 = distinct !{!122, !118, !"XXH3_accumulate_avx2: argument 2"}
!123 = !{!122, !115, !107}
!124 = !{!125}
!125 = distinct !{!125, !126, !"XXH3_accumulate_512_avx2: argument 0"}
!126 = distinct !{!126, !"XXH3_accumulate_512_avx2"}
!127 = !{!128}
!128 = distinct !{!128, !126, !"XXH3_accumulate_512_avx2: argument 1"}
!129 = !{!130}
!130 = distinct !{!130, !126, !"XXH3_accumulate_512_avx2: argument 2"}
!131 = !{!128, !120, !113, !104}
!132 = !{!125, !130, !117, !122, !110, !115, !107}
!133 = !{!130, !122, !115, !107}
!134 = !{!125, !128, !117, !120, !110, !113, !104}
!135 = !{!125, !117, !110}
!136 = !{!128, !130, !120, !122, !113, !115, !104, !107}
!137 = !{!138}
!138 = distinct !{!138, !139, !"XXH3_scrambleAcc_avx2: argument 0"}
!139 = distinct !{!139, !"XXH3_scrambleAcc_avx2"}
!140 = !{!141}
!141 = distinct !{!141, !139, !"XXH3_scrambleAcc_avx2: argument 1"}
!142 = !{!138, !110}
!143 = !{!141, !113, !115, !104, !107}
!144 = !{!141, !115, !107}
!145 = !{!138, !110, !113, !104}
!146 = !{!147}
!147 = distinct !{!147, !148, !"XXH3_accumulate_avx2: argument 0"}
!148 = distinct !{!148, !"XXH3_accumulate_avx2"}
!149 = !{!150}
!150 = distinct !{!150, !148, !"XXH3_accumulate_avx2: argument 1"}
!151 = !{!152}
!152 = distinct !{!152, !148, !"XXH3_accumulate_avx2: argument 2"}
!153 = !{!152, !115, !107}
!154 = !{!155}
!155 = distinct !{!155, !156, !"XXH3_accumulate_512_avx2: argument 0"}
!156 = distinct !{!156, !"XXH3_accumulate_512_avx2"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"XXH3_accumulate_512_avx2: argument 1"}
!159 = !{!160}
!160 = distinct !{!160, !156, !"XXH3_accumulate_512_avx2: argument 2"}
!161 = !{!158, !150, !113, !104}
!162 = !{!155, !160, !147, !152, !110, !115, !107}
!163 = !{!160, !152, !115, !107}
!164 = !{!155, !158, !147, !150, !110, !113, !104}
!165 = !{!155, !147, !110}
!166 = !{!158, !160, !150, !152, !113, !115, !104, !107}
!167 = !{!168}
!168 = distinct !{!168, !169, !"XXH3_accumulate_512_avx2: argument 0"}
!169 = distinct !{!169, !"XXH3_accumulate_512_avx2"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"XXH3_accumulate_512_avx2: argument 1"}
!172 = !{!173}
!173 = distinct !{!173, !169, !"XXH3_accumulate_512_avx2: argument 2"}
!174 = !{!171, !113, !104}
!175 = !{!168, !173, !110, !115, !107}
!176 = !{!173, !115, !107}
!177 = !{!168, !171, !110, !113, !104}
!178 = !{!168, !110}
!179 = !{!171, !173, !113, !115, !104, !107}
!180 = !{!181}
!181 = distinct !{!181, !182, !"XXH3_mergeAccs: argument 0"}
!182 = distinct !{!182, !"XXH3_mergeAccs"}
!183 = !{!184}
!184 = distinct !{!184, !182, !"XXH3_mergeAccs: argument 1"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"XXH3_mix2Accs: argument 0"}
!187 = distinct !{!187, !"XXH3_mix2Accs"}
!188 = !{!189}
!189 = distinct !{!189, !187, !"XXH3_mix2Accs: argument 1"}
!190 = !{!186, !181}
!191 = !{!189, !184, !104, !107}
!192 = !{!189, !184, !107}
!193 = !{!186, !181, !104}
!194 = !{!195}
!195 = distinct !{!195, !196, !"XXH3_mergeAccs: argument 0"}
!196 = distinct !{!196, !"XXH3_mergeAccs"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"XXH3_mergeAccs: argument 1"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"XXH3_mix2Accs: argument 0"}
!201 = distinct !{!201, !"XXH3_mix2Accs"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"XXH3_mix2Accs: argument 1"}
!204 = !{!200, !195}
!205 = !{!203, !198, !104, !107}
!206 = !{!203, !198, !107}
!207 = !{!200, !195, !104}
