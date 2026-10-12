; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/1746e5d/wrap.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/1746e5d/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress uwtable
define dso_local <4 x i32> @target_u32_lanewise(<4 x i32> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca <4 x i32>, align 16
  %4 = alloca [4 x i32], align 4
  %5 = alloca <4 x i32>, align 16
  store <4 x i32> %0, ptr %3, align 16
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %124, label %7

7:                                                ; preds = %2
  %8 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %9 = xor i32 %8, 31
  %10 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %11 = icmp samesign ult i32 %10, 2
  br i1 %11, label %36, label %12

12:                                               ; preds = %7
  %13 = shl nuw i32 1, %9
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = zext i32 %1 to i64
  %17 = udiv i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = mul i32 %1, %18
  %20 = add i32 %19, %1
  %21 = icmp ult i32 %20, %13
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = sub i32 0, %19
  %24 = shl i32 %18, 1
  %25 = shl i32 %23, 1
  %26 = icmp uge i32 %25, %1
  %27 = icmp slt i32 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i32
  %30 = or disjoint i32 %24, %29
  %31 = or disjoint i32 %9, 64
  br label %32

32:                                               ; preds = %12, %22
  %33 = phi i32 [ %30, %22 ], [ %18, %12 ]
  %34 = phi i32 [ %31, %22 ], [ %9, %12 ]
  %35 = add i32 %33, 1
  br label %36

36:                                               ; preds = %7, %32
  %37 = phi i32 [ %35, %32 ], [ 0, %7 ]
  %38 = phi i32 [ %34, %32 ], [ %9, %7 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %39 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 16) #6
  %40 = icmp eq i32 %37, 0
  %41 = zext i32 %37 to i64
  %42 = and i32 %38, 31
  br i1 %40, label %43, label %55

43:                                               ; preds = %36
  %44 = load i32, ptr %4, align 4
  %45 = lshr i32 %44, %38
  store i32 %45, ptr %4, align 4
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, %38
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, %38
  store i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %53 = load i32, ptr %52, align 4
  %54 = lshr i32 %53, %38
  store i32 %54, ptr %52, align 4
  br label %121

55:                                               ; preds = %36
  %56 = and i32 %38, 64
  %57 = icmp eq i32 %56, 0
  %58 = load i32, ptr %4, align 4
  %59 = zext i32 %58 to i64
  %60 = mul nuw i64 %59, %41
  %61 = lshr i64 %60, 32
  %62 = trunc nuw i64 %61 to i32
  br i1 %57, label %98, label %63

63:                                               ; preds = %55
  %64 = sub i32 %58, %62
  %65 = lshr i32 %64, 1
  %66 = add i32 %65, %62
  %67 = lshr i32 %66, %42
  store i32 %67, ptr %4, align 4
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %69 = load i32, ptr %68, align 4
  %70 = zext i32 %69 to i64
  %71 = mul nuw i64 %70, %41
  %72 = lshr i64 %71, 32
  %73 = trunc nuw i64 %72 to i32
  %74 = sub i32 %69, %73
  %75 = lshr i32 %74, 1
  %76 = add i32 %75, %73
  %77 = lshr i32 %76, %42
  store i32 %77, ptr %68, align 4
  %78 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %79 = load i32, ptr %78, align 4
  %80 = zext i32 %79 to i64
  %81 = mul nuw i64 %80, %41
  %82 = lshr i64 %81, 32
  %83 = trunc nuw i64 %82 to i32
  %84 = sub i32 %79, %83
  %85 = lshr i32 %84, 1
  %86 = add i32 %85, %83
  %87 = lshr i32 %86, %42
  store i32 %87, ptr %78, align 4
  %88 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %89 = load i32, ptr %88, align 4
  %90 = zext i32 %89 to i64
  %91 = mul nuw i64 %90, %41
  %92 = lshr i64 %91, 32
  %93 = trunc nuw i64 %92 to i32
  %94 = sub i32 %89, %93
  %95 = lshr i32 %94, 1
  %96 = add i32 %95, %93
  %97 = lshr i32 %96, %42
  store i32 %97, ptr %88, align 4
  br label %121

98:                                               ; preds = %55
  %99 = lshr i32 %62, %38
  store i32 %99, ptr %4, align 4
  %100 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %101 = load i32, ptr %100, align 4
  %102 = zext i32 %101 to i64
  %103 = mul nuw i64 %102, %41
  %104 = lshr i64 %103, 32
  %105 = trunc nuw i64 %104 to i32
  %106 = lshr i32 %105, %38
  store i32 %106, ptr %100, align 4
  %107 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %108 = load i32, ptr %107, align 4
  %109 = zext i32 %108 to i64
  %110 = mul nuw i64 %109, %41
  %111 = lshr i64 %110, 32
  %112 = trunc nuw i64 %111 to i32
  %113 = lshr i32 %112, %38
  store i32 %113, ptr %107, align 4
  %114 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %115 = load i32, ptr %114, align 4
  %116 = zext i32 %115 to i64
  %117 = mul nuw i64 %116, %41
  %118 = lshr i64 %117, 32
  %119 = trunc nuw i64 %118 to i32
  %120 = lshr i32 %119, %38
  store i32 %120, ptr %114, align 4
  br label %121

121:                                              ; preds = %63, %98, %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %122 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 16) #6
  %123 = load <4 x i32>, ptr %5, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %124

124:                                              ; preds = %2, %121
  %125 = phi <4 x i32> [ %123, %121 ], [ %0, %2 ]
  ret <4 x i32> %125
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

declare noundef ptr @_Z6memcpyPvPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress uwtable
define dso_local <4 x i32> @target_s32_lanewise(<4 x i32> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca <4 x i32>, align 16
  %4 = alloca [4 x i32], align 4
  %5 = alloca <4 x i32>, align 16
  store <4 x i32> %0, ptr %3, align 16
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %180, label %7

7:                                                ; preds = %2
  %8 = icmp slt i32 %1, 0
  %9 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %10 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %9, i1 true)
  %11 = xor i32 %10, 31
  %12 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %9)
  %13 = icmp samesign ult i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = lshr i32 %1, 24
  %16 = and i32 %15, 128
  %17 = or disjoint i32 %11, %16
  %18 = trunc nuw i32 %17 to i8
  br label %52

19:                                               ; preds = %7
  %20 = sub nsw i32 30, %10
  %21 = shl nuw nsw i32 1, %20
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 32
  %24 = zext i32 %9 to i64
  %25 = udiv i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = mul i32 %9, %26
  %28 = add i32 %27, %9
  %29 = lshr i32 %28, %11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = trunc nsw i32 %20 to i8
  br label %44

33:                                               ; preds = %19
  %34 = sub i32 0, %27
  %35 = shl i32 %26, 1
  %36 = shl i32 %34, 1
  %37 = icmp uge i32 %36, %9
  %38 = icmp slt i32 %34, 0
  %39 = or i1 %38, %37
  %40 = zext i1 %39 to i32
  %41 = or disjoint i32 %35, %40
  %42 = trunc nuw nsw i32 %11 to i8
  %43 = or disjoint i8 %42, 64
  br label %44

44:                                               ; preds = %33, %31
  %45 = phi i32 [ %41, %33 ], [ %26, %31 ]
  %46 = phi i8 [ %43, %33 ], [ %32, %31 ]
  %47 = add i32 %45, 1
  %48 = or i8 %46, -128
  %49 = xor i32 %45, -1
  %50 = select i1 %8, i8 %48, i8 %46
  %51 = select i1 %8, i32 %49, i32 %47
  br label %52

52:                                               ; preds = %14, %44
  %53 = phi i32 [ 0, %14 ], [ %51, %44 ]
  %54 = phi i8 [ %18, %14 ], [ %50, %44 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %55 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 16) #6
  %56 = and i8 %54, 31
  %57 = icmp eq i32 %53, 0
  %58 = sext i32 %53 to i64
  %59 = ashr i8 %54, 7
  %60 = sext i8 %59 to i32
  %61 = zext nneg i8 %56 to i32
  %62 = load i32, ptr %4, align 4
  br i1 %57, label %63, label %96

63:                                               ; preds = %52
  %64 = shl nsw i32 -1, %61
  %65 = xor i32 %64, -1
  %66 = icmp slt i32 %62, 0
  %67 = select i1 %66, i32 %65, i32 0
  %68 = add i32 %67, %62
  %69 = ashr i32 %68, %61
  %70 = xor i32 %69, %60
  %71 = sub i32 %70, %60
  store i32 %71, ptr %4, align 4
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %73 = load i32, ptr %72, align 4
  %74 = icmp slt i32 %73, 0
  %75 = select i1 %74, i32 %65, i32 0
  %76 = add i32 %75, %73
  %77 = ashr i32 %76, %61
  %78 = xor i32 %77, %60
  %79 = sub i32 %78, %60
  store i32 %79, ptr %72, align 4
  %80 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %81 = load i32, ptr %80, align 4
  %82 = icmp slt i32 %81, 0
  %83 = select i1 %82, i32 %65, i32 0
  %84 = add i32 %83, %81
  %85 = ashr i32 %84, %61
  %86 = xor i32 %85, %60
  %87 = sub i32 %86, %60
  store i32 %87, ptr %80, align 4
  %88 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %89 = load i32, ptr %88, align 4
  %90 = icmp slt i32 %89, 0
  %91 = select i1 %90, i32 %65, i32 0
  %92 = add i32 %91, %89
  %93 = ashr i32 %92, %61
  %94 = xor i32 %93, %60
  %95 = sub i32 %94, %60
  store i32 %95, ptr %88, align 4
  br label %177

96:                                               ; preds = %52
  %97 = and i8 %54, 64
  %98 = icmp eq i8 %97, 0
  %99 = sext i32 %62 to i64
  %100 = mul nsw i64 %99, %58
  %101 = lshr i64 %100, 32
  %102 = trunc nuw i64 %101 to i32
  br i1 %98, label %146, label %103

103:                                              ; preds = %96
  %104 = xor i32 %62, %60
  %105 = sub i32 %104, %60
  %106 = add i32 %105, %102
  %107 = ashr i32 %106, %61
  %108 = lshr i32 %107, 31
  %109 = add nsw i32 %108, %107
  store i32 %109, ptr %4, align 4
  %110 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %111 = load i32, ptr %110, align 4
  %112 = sext i32 %111 to i64
  %113 = mul nsw i64 %112, %58
  %114 = lshr i64 %113, 32
  %115 = trunc nuw i64 %114 to i32
  %116 = xor i32 %111, %60
  %117 = sub i32 %116, %60
  %118 = add i32 %117, %115
  %119 = ashr i32 %118, %61
  %120 = lshr i32 %119, 31
  %121 = add nsw i32 %120, %119
  store i32 %121, ptr %110, align 4
  %122 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %123 = load i32, ptr %122, align 4
  %124 = sext i32 %123 to i64
  %125 = mul nsw i64 %124, %58
  %126 = lshr i64 %125, 32
  %127 = trunc nuw i64 %126 to i32
  %128 = xor i32 %123, %60
  %129 = sub i32 %128, %60
  %130 = add i32 %129, %127
  %131 = ashr i32 %130, %61
  %132 = lshr i32 %131, 31
  %133 = add nsw i32 %132, %131
  store i32 %133, ptr %122, align 4
  %134 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %135 = load i32, ptr %134, align 4
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %136, %58
  %138 = lshr i64 %137, 32
  %139 = trunc nuw i64 %138 to i32
  %140 = xor i32 %135, %60
  %141 = sub i32 %140, %60
  %142 = add i32 %141, %139
  %143 = ashr i32 %142, %61
  %144 = lshr i32 %143, 31
  %145 = add nsw i32 %144, %143
  store i32 %145, ptr %134, align 4
  br label %177

146:                                              ; preds = %96
  %147 = ashr i32 %102, %61
  %148 = lshr i32 %147, 31
  %149 = add nsw i32 %148, %147
  store i32 %149, ptr %4, align 4
  %150 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %151 = load i32, ptr %150, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, %58
  %154 = lshr i64 %153, 32
  %155 = trunc nuw i64 %154 to i32
  %156 = ashr i32 %155, %61
  %157 = lshr i32 %156, 31
  %158 = add nsw i32 %157, %156
  store i32 %158, ptr %150, align 4
  %159 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %160 = load i32, ptr %159, align 4
  %161 = sext i32 %160 to i64
  %162 = mul nsw i64 %161, %58
  %163 = lshr i64 %162, 32
  %164 = trunc nuw i64 %163 to i32
  %165 = ashr i32 %164, %61
  %166 = lshr i32 %165, 31
  %167 = add nsw i32 %166, %165
  store i32 %167, ptr %159, align 4
  %168 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %169 = load i32, ptr %168, align 4
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %170, %58
  %172 = lshr i64 %171, 32
  %173 = trunc nuw i64 %172 to i32
  %174 = ashr i32 %173, %61
  %175 = lshr i32 %174, 31
  %176 = add nsw i32 %175, %174
  store i32 %176, ptr %168, align 4
  br label %177

177:                                              ; preds = %103, %146, %63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %178 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 16) #6
  %179 = load <4 x i32>, ptr %5, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %180

180:                                              ; preds = %2, %177
  %181 = phi <4 x i32> [ %179, %177 ], [ %0, %2 ]
  ret <4 x i32> %181
}

; Function Attrs: mustprogress uwtable
define dso_local <2 x i64> @target_u64_lanewise(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca <2 x i64>, align 16
  %4 = alloca [2 x i64], align 8
  %5 = alloca <2 x i64>, align 16
  store <2 x i64> %0, ptr %3, align 16
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %135, label %7

7:                                                ; preds = %2
  %8 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = xor i32 %9, 63
  %11 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %12 = icmp samesign ult i64 %11, 2
  br i1 %12, label %83, label %13

13:                                               ; preds = %7
  %14 = zext nneg i32 %10 to i64
  %15 = shl nuw i64 1, %14
  %16 = icmp ult i64 %15, %1
  br i1 %16, label %17, label %65

17:                                               ; preds = %13
  %18 = shl i64 %1, %8
  %19 = shl i64 %15, %8
  %20 = lshr i64 %18, 32
  %21 = and i64 %18, 4294967295
  %22 = udiv i64 %19, %20
  %23 = mul i64 %22, %20
  %24 = sub i64 %19, %23
  br label %25

25:                                               ; preds = %33, %17
  %26 = phi i64 [ %22, %17 ], [ %34, %33 ]
  %27 = phi i64 [ %24, %17 ], [ %35, %33 ]
  %28 = icmp ugt i64 %26, 4294967295
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = mul nuw i64 %26, %21
  %31 = shl i64 %27, 32
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %25
  %34 = add i64 %26, -1
  %35 = add i64 %27, %20
  %36 = icmp ugt i64 %35, 4294967295
  br i1 %36, label %37, label %25

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %34, %33 ], [ %26, %29 ]
  %39 = shl i64 %19, 32
  %40 = mul i64 %38, %18
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, %20
  %43 = mul i64 %42, %20
  %44 = sub i64 %41, %43
  br label %45

45:                                               ; preds = %53, %37
  %46 = phi i64 [ %42, %37 ], [ %54, %53 ]
  %47 = phi i64 [ %44, %37 ], [ %55, %53 ]
  %48 = icmp ugt i64 %46, 4294967295
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = mul nuw i64 %46, %21
  %51 = shl i64 %47, 32
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %45
  %54 = add i64 %46, -1
  %55 = add i64 %47, %20
  %56 = icmp ugt i64 %55, 4294967295
  br i1 %56, label %57, label %45

57:                                               ; preds = %53, %49
  %58 = phi i64 [ %54, %53 ], [ %46, %49 ]
  %59 = shl i64 %41, 32
  %60 = mul i64 %58, %18
  %61 = sub i64 %59, %60
  %62 = lshr i64 %61, %8
  %63 = shl i64 %38, 32
  %64 = add i64 %58, %63
  br label %65

65:                                               ; preds = %57, %13
  %66 = phi i64 [ %62, %57 ], [ -1, %13 ]
  %67 = phi i64 [ %64, %57 ], [ -1, %13 ]
  %68 = sub i64 %1, %66
  %69 = icmp ult i64 %68, %15
  br i1 %69, label %79, label %70

70:                                               ; preds = %65
  %71 = shl i64 %67, 1
  %72 = shl i64 %66, 1
  %73 = icmp uge i64 %72, %1
  %74 = icmp slt i64 %66, 0
  %75 = or i1 %74, %73
  %76 = zext i1 %75 to i64
  %77 = or disjoint i64 %71, %76
  %78 = or disjoint i32 %10, 64
  br label %79

79:                                               ; preds = %70, %65
  %80 = phi i32 [ %78, %70 ], [ %10, %65 ]
  %81 = phi i64 [ %77, %70 ], [ %67, %65 ]
  %82 = add i64 %81, 1
  br label %83

83:                                               ; preds = %7, %79
  %84 = phi i64 [ %82, %79 ], [ 0, %7 ]
  %85 = phi i32 [ %80, %79 ], [ %10, %7 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %86 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 16) #6
  %87 = icmp eq i64 %84, 0
  %88 = zext i64 %84 to i128
  %89 = and i32 %85, 63
  %90 = zext nneg i32 %89 to i64
  %91 = and i32 %85, 191
  %92 = zext nneg i32 %91 to i64
  %93 = load i64, ptr %4, align 8
  br i1 %87, label %94, label %101

94:                                               ; preds = %83
  %95 = and i32 %85, 255
  %96 = zext nneg i32 %95 to i64
  %97 = lshr i64 %93, %96
  store i64 %97, ptr %4, align 8
  %98 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %99 = load i64, ptr %98, align 8
  %100 = lshr i64 %99, %96
  store i64 %100, ptr %98, align 8
  br label %132

101:                                              ; preds = %83
  %102 = and i32 %85, 64
  %103 = icmp eq i32 %102, 0
  %104 = zext i64 %93 to i128
  %105 = mul nuw i128 %104, %88
  %106 = lshr i128 %105, 64
  %107 = trunc nuw i128 %106 to i64
  br i1 %103, label %123, label %108

108:                                              ; preds = %101
  %109 = sub i64 %93, %107
  %110 = lshr i64 %109, 1
  %111 = add i64 %110, %107
  %112 = lshr i64 %111, %90
  store i64 %112, ptr %4, align 8
  %113 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %114 = load i64, ptr %113, align 8
  %115 = zext i64 %114 to i128
  %116 = mul nuw i128 %115, %88
  %117 = lshr i128 %116, 64
  %118 = trunc nuw i128 %117 to i64
  %119 = sub i64 %114, %118
  %120 = lshr i64 %119, 1
  %121 = add i64 %120, %118
  %122 = lshr i64 %121, %90
  store i64 %122, ptr %113, align 8
  br label %132

123:                                              ; preds = %101
  %124 = lshr i64 %107, %92
  store i64 %124, ptr %4, align 8
  %125 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %126 = load i64, ptr %125, align 8
  %127 = zext i64 %126 to i128
  %128 = mul nuw i128 %127, %88
  %129 = lshr i128 %128, 64
  %130 = trunc nuw i128 %129 to i64
  %131 = lshr i64 %130, %92
  store i64 %131, ptr %125, align 8
  br label %132

132:                                              ; preds = %108, %123, %94
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %133 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 16) #6
  %134 = load <2 x i64>, ptr %5, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %135

135:                                              ; preds = %2, %132
  %136 = phi <2 x i64> [ %134, %132 ], [ %0, %2 ]
  ret <2 x i64> %136
}

; Function Attrs: mustprogress uwtable
define dso_local <2 x i64> @target_s64_lanewise(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca <2 x i64>, align 16
  %4 = alloca [2 x i64], align 8
  %5 = alloca <2 x i64>, align 16
  store <2 x i64> %0, ptr %3, align 16
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %171, label %7

7:                                                ; preds = %2
  %8 = icmp slt i64 %1, 0
  %9 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %10 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %9, i1 true)
  %11 = trunc nuw nsw i64 %10 to i32
  %12 = xor i32 %11, 63
  %13 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %9)
  %14 = icmp samesign ult i64 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = lshr i64 %1, 56
  %17 = trunc nuw nsw i64 %16 to i32
  %18 = and i32 %17, 128
  %19 = or disjoint i32 %12, %18
  %20 = trunc nuw i32 %19 to i8
  br label %101

21:                                               ; preds = %7
  %22 = sub nsw i32 62, %11
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = icmp ult i64 %24, %9
  br i1 %25, label %26, label %74

26:                                               ; preds = %21
  %27 = shl i64 %9, %10
  %28 = shl i64 %24, %10
  %29 = lshr i64 %27, 32
  %30 = and i64 %27, 4294967295
  %31 = udiv i64 %28, %29
  %32 = mul i64 %31, %29
  %33 = sub i64 %28, %32
  br label %34

34:                                               ; preds = %42, %26
  %35 = phi i64 [ %31, %26 ], [ %43, %42 ]
  %36 = phi i64 [ %33, %26 ], [ %44, %42 ]
  %37 = icmp ugt i64 %35, 4294967295
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = mul nuw i64 %35, %30
  %40 = shl i64 %36, 32
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34
  %43 = add i64 %35, -1
  %44 = add i64 %36, %29
  %45 = icmp ugt i64 %44, 4294967295
  br i1 %45, label %46, label %34

46:                                               ; preds = %42, %38
  %47 = phi i64 [ %43, %42 ], [ %35, %38 ]
  %48 = shl i64 %28, 32
  %49 = mul i64 %47, %27
  %50 = sub i64 %48, %49
  %51 = udiv i64 %50, %29
  %52 = mul i64 %51, %29
  %53 = sub i64 %50, %52
  br label %54

54:                                               ; preds = %62, %46
  %55 = phi i64 [ %51, %46 ], [ %63, %62 ]
  %56 = phi i64 [ %53, %46 ], [ %64, %62 ]
  %57 = icmp ugt i64 %55, 4294967295
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = mul nuw i64 %55, %30
  %60 = shl i64 %56, 32
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %54
  %63 = add i64 %55, -1
  %64 = add i64 %56, %29
  %65 = icmp ugt i64 %64, 4294967295
  br i1 %65, label %66, label %54

66:                                               ; preds = %62, %58
  %67 = phi i64 [ %63, %62 ], [ %55, %58 ]
  %68 = shl i64 %50, 32
  %69 = mul i64 %67, %27
  %70 = sub i64 %68, %69
  %71 = lshr i64 %70, %10
  %72 = shl i64 %47, 32
  %73 = add i64 %67, %72
  br label %74

74:                                               ; preds = %66, %21
  %75 = phi i64 [ %71, %66 ], [ -1, %21 ]
  %76 = phi i64 [ %73, %66 ], [ -1, %21 ]
  %77 = sub i64 %9, %75
  %78 = zext nneg i32 %12 to i64
  %79 = lshr i64 %77, %78
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = trunc nsw i32 %22 to i8
  br label %93

83:                                               ; preds = %74
  %84 = shl i64 %76, 1
  %85 = shl i64 %75, 1
  %86 = icmp uge i64 %85, %9
  %87 = icmp slt i64 %75, 0
  %88 = or i1 %87, %86
  %89 = zext i1 %88 to i64
  %90 = or disjoint i64 %84, %89
  %91 = trunc nuw nsw i32 %12 to i8
  %92 = or disjoint i8 %91, 64
  br label %93

93:                                               ; preds = %83, %81
  %94 = phi i64 [ %90, %83 ], [ %76, %81 ]
  %95 = phi i8 [ %92, %83 ], [ %82, %81 ]
  %96 = add i64 %94, 1
  %97 = or i8 %95, -128
  %98 = xor i64 %94, -1
  %99 = select i1 %8, i8 %97, i8 %95
  %100 = select i1 %8, i64 %98, i64 %96
  br label %101

101:                                              ; preds = %15, %93
  %102 = phi i64 [ 0, %15 ], [ %100, %93 ]
  %103 = phi i8 [ %20, %15 ], [ %99, %93 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %104 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 16) #6
  %105 = and i8 %103, 63
  %106 = icmp eq i64 %102, 0
  %107 = sext i64 %102 to i128
  %108 = ashr i8 %103, 7
  %109 = sext i8 %108 to i64
  %110 = zext nneg i8 %105 to i64
  %111 = load i64, ptr %4, align 8
  br i1 %106, label %112, label %129

112:                                              ; preds = %101
  %113 = shl nsw i64 -1, %110
  %114 = xor i64 %113, -1
  %115 = icmp slt i64 %111, 0
  %116 = select i1 %115, i64 %114, i64 0
  %117 = add i64 %116, %111
  %118 = ashr i64 %117, %110
  %119 = xor i64 %118, %109
  %120 = sub nsw i64 %119, %109
  store i64 %120, ptr %4, align 8
  %121 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %122 = load i64, ptr %121, align 8
  %123 = icmp slt i64 %122, 0
  %124 = select i1 %123, i64 %114, i64 0
  %125 = add i64 %124, %122
  %126 = ashr i64 %125, %110
  %127 = xor i64 %126, %109
  %128 = sub nsw i64 %127, %109
  store i64 %128, ptr %121, align 8
  br label %168

129:                                              ; preds = %101
  %130 = and i8 %103, 64
  %131 = icmp eq i8 %130, 0
  %132 = sext i64 %111 to i128
  %133 = mul nsw i128 %132, %107
  %134 = lshr i128 %133, 64
  %135 = trunc nuw i128 %134 to i64
  br i1 %131, label %155, label %136

136:                                              ; preds = %129
  %137 = xor i64 %111, %109
  %138 = sub i64 %137, %109
  %139 = add i64 %138, %135
  %140 = ashr i64 %139, %110
  %141 = lshr i64 %140, 63
  %142 = add nsw i64 %141, %140
  store i64 %142, ptr %4, align 8
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %144 = load i64, ptr %143, align 8
  %145 = sext i64 %144 to i128
  %146 = mul nsw i128 %145, %107
  %147 = lshr i128 %146, 64
  %148 = trunc nuw i128 %147 to i64
  %149 = xor i64 %144, %109
  %150 = sub i64 %149, %109
  %151 = add i64 %150, %148
  %152 = ashr i64 %151, %110
  %153 = lshr i64 %152, 63
  %154 = add nsw i64 %153, %152
  store i64 %154, ptr %143, align 8
  br label %168

155:                                              ; preds = %129
  %156 = ashr i64 %135, %110
  %157 = lshr i64 %156, 63
  %158 = add nsw i64 %157, %156
  store i64 %158, ptr %4, align 8
  %159 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %160 = load i64, ptr %159, align 8
  %161 = sext i64 %160 to i128
  %162 = mul nsw i128 %161, %107
  %163 = lshr i128 %162, 64
  %164 = trunc nuw i128 %163 to i64
  %165 = ashr i64 %164, %110
  %166 = lshr i64 %165, 63
  %167 = add nsw i64 %166, %165
  store i64 %167, ptr %159, align 8
  br label %168

168:                                              ; preds = %136, %155, %112
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %169 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 16) #6
  %170 = load <2 x i64>, ptr %5, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %171

171:                                              ; preds = %2, %168
  %172 = phi <2 x i64> [ %170, %168 ], [ %0, %2 ]
  ret <2 x i64> %172
}

; Function Attrs: mustprogress uwtable
define dso_local <4 x i32> @target_u32_branchfree_lanewise(<4 x i32> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca <4 x i32>, align 16
  %4 = alloca [4 x i32], align 4
  %5 = alloca <4 x i32>, align 16
  store <4 x i32> %0, ptr %3, align 16
  %6 = icmp ult i32 %1, 2
  br i1 %6, label %77, label %7

7:                                                ; preds = %2
  %8 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
  %9 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %1)
  %10 = icmp samesign ult i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = sub nuw nsw i32 30, %8
  br label %32

13:                                               ; preds = %7
  %14 = xor i32 %8, 31
  %15 = shl nuw i32 1, %14
  %16 = zext i32 %15 to i64
  %17 = shl nuw i64 %16, 32
  %18 = zext i32 %1 to i64
  %19 = udiv i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = mul i32 %1, %20
  %22 = sub i32 0, %21
  %23 = shl nuw nsw i64 %19, 1
  %24 = shl i32 %22, 1
  %25 = icmp uge i32 %24, %1
  %26 = icmp slt i32 %22, 0
  %27 = or i1 %26, %25
  %28 = zext i1 %27 to i64
  %29 = or disjoint i64 %23, 1
  %30 = add nuw nsw i64 %29, %28
  %31 = and i64 %30, 4294967295
  br label %32

32:                                               ; preds = %11, %13
  %33 = phi i64 [ 0, %11 ], [ %31, %13 ]
  %34 = phi i32 [ %12, %11 ], [ %14, %13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %35 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 16) #6
  %36 = load i32, ptr %4, align 4
  %37 = zext i32 %36 to i64
  %38 = mul nuw i64 %33, %37
  %39 = lshr i64 %38, 32
  %40 = trunc nuw i64 %39 to i32
  %41 = sub i32 %36, %40
  %42 = lshr i32 %41, 1
  %43 = add i32 %42, %40
  %44 = lshr i32 %43, %34
  store i32 %44, ptr %4, align 4
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %46 = load i32, ptr %45, align 4
  %47 = zext i32 %46 to i64
  %48 = mul nuw i64 %33, %47
  %49 = lshr i64 %48, 32
  %50 = trunc nuw i64 %49 to i32
  %51 = sub i32 %46, %50
  %52 = lshr i32 %51, 1
  %53 = add i32 %52, %50
  %54 = lshr i32 %53, %34
  store i32 %54, ptr %45, align 4
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %56 = load i32, ptr %55, align 4
  %57 = zext i32 %56 to i64
  %58 = mul nuw i64 %33, %57
  %59 = lshr i64 %58, 32
  %60 = trunc nuw i64 %59 to i32
  %61 = sub i32 %56, %60
  %62 = lshr i32 %61, 1
  %63 = add i32 %62, %60
  %64 = lshr i32 %63, %34
  store i32 %64, ptr %55, align 4
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %66 = load i32, ptr %65, align 4
  %67 = zext i32 %66 to i64
  %68 = mul nuw i64 %33, %67
  %69 = lshr i64 %68, 32
  %70 = trunc nuw i64 %69 to i32
  %71 = sub i32 %66, %70
  %72 = lshr i32 %71, 1
  %73 = add i32 %72, %70
  %74 = lshr i32 %73, %34
  store i32 %74, ptr %65, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %75 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 16) #6
  %76 = load <4 x i32>, ptr %5, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %77

77:                                               ; preds = %2, %32
  %78 = phi <4 x i32> [ %76, %32 ], [ %0, %2 ]
  ret <4 x i32> %78
}

; Function Attrs: mustprogress uwtable
define dso_local <4 x i32> @target_s32_branchfree_lanewise(<4 x i32> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca <4 x i32>, align 16
  %4 = alloca [4 x i32], align 4
  %5 = alloca <4 x i32>, align 16
  store <4 x i32> %0, ptr %3, align 16
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %106, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %9 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %8, i1 true)
  %10 = xor i32 %9, 31
  %11 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %8)
  %12 = icmp samesign ult i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = lshr i32 %1, 24
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %10, %15
  %17 = trunc nuw i32 %16 to i8
  br label %40

18:                                               ; preds = %7
  %19 = icmp slt i32 %1, 0
  %20 = sub nsw i32 30, %9
  %21 = shl nuw nsw i32 1, %20
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 32
  %24 = zext i32 %8 to i64
  %25 = udiv i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = mul i32 %8, %26
  %28 = sub i32 0, %27
  %29 = shl i32 %26, 1
  %30 = shl i32 %28, 1
  %31 = icmp uge i32 %30, %8
  %32 = icmp slt i32 %28, 0
  %33 = or i1 %32, %31
  %34 = zext i1 %33 to i32
  %35 = trunc nuw nsw i32 %10 to i8
  %36 = or disjoint i32 %29, 1
  %37 = add i32 %36, %34
  %38 = select i1 %19, i8 -64, i8 64
  %39 = or disjoint i8 %38, %35
  br label %40

40:                                               ; preds = %13, %18
  %41 = phi i32 [ 0, %13 ], [ %37, %18 ]
  %42 = phi i8 [ %17, %13 ], [ %39, %18 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %43 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 16) #6
  %44 = and i8 %42, 31
  %45 = ashr i8 %42, 7
  %46 = sext i8 %45 to i32
  %47 = sext i32 %41 to i64
  %48 = icmp eq i32 %41, 0
  %49 = sext i1 %48 to i32
  %50 = zext nneg i8 %44 to i32
  %51 = shl nuw i32 1, %50
  %52 = add i32 %51, %49
  %53 = load i32, ptr %4, align 4
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, %47
  %56 = lshr i64 %55, 32
  %57 = trunc nuw i64 %56 to i32
  %58 = add nsw i32 %53, %57
  %59 = icmp slt i32 %58, 0
  %60 = select i1 %59, i32 %52, i32 0
  %61 = add i32 %60, %58
  %62 = ashr i32 %61, %50
  %63 = xor i32 %62, %46
  %64 = sub nsw i32 %63, %46
  store i32 %64, ptr %4, align 4
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %66 = load i32, ptr %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, %47
  %69 = lshr i64 %68, 32
  %70 = trunc nuw i64 %69 to i32
  %71 = add nsw i32 %66, %70
  %72 = icmp slt i32 %71, 0
  %73 = select i1 %72, i32 %52, i32 0
  %74 = add i32 %73, %71
  %75 = ashr i32 %74, %50
  %76 = xor i32 %75, %46
  %77 = sub nsw i32 %76, %46
  store i32 %77, ptr %65, align 4
  %78 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %79 = load i32, ptr %78, align 4
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %80, %47
  %82 = lshr i64 %81, 32
  %83 = trunc nuw i64 %82 to i32
  %84 = add nsw i32 %79, %83
  %85 = icmp slt i32 %84, 0
  %86 = select i1 %85, i32 %52, i32 0
  %87 = add i32 %86, %84
  %88 = ashr i32 %87, %50
  %89 = xor i32 %88, %46
  %90 = sub nsw i32 %89, %46
  store i32 %90, ptr %78, align 4
  %91 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %92 = load i32, ptr %91, align 4
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 %93, %47
  %95 = lshr i64 %94, 32
  %96 = trunc nuw i64 %95 to i32
  %97 = add nsw i32 %92, %96
  %98 = icmp slt i32 %97, 0
  %99 = select i1 %98, i32 %52, i32 0
  %100 = add i32 %99, %97
  %101 = ashr i32 %100, %50
  %102 = xor i32 %101, %46
  %103 = sub nsw i32 %102, %46
  store i32 %103, ptr %91, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %104 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 16) #6
  %105 = load <4 x i32>, ptr %5, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %106

106:                                              ; preds = %2, %40
  %107 = phi <4 x i32> [ %105, %40 ], [ %0, %2 ]
  ret <4 x i32> %107
}

; Function Attrs: mustprogress uwtable
define dso_local <2 x i64> @target_u64_branchfree_lanewise(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca <2 x i64>, align 16
  %4 = alloca [2 x i64], align 8
  %5 = alloca <2 x i64>, align 16
  store <2 x i64> %0, ptr %3, align 16
  %6 = icmp ult i64 %1, 2
  br i1 %6, label %106, label %7

7:                                                ; preds = %2
  %8 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = xor i32 %9, 63
  %11 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %12 = icmp samesign ult i64 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = sub nuw nsw i32 62, %9
  br label %78

15:                                               ; preds = %7
  %16 = zext nneg i32 %10 to i64
  %17 = shl nuw i64 1, %16
  %18 = icmp ult i64 %17, %1
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  %20 = shl i64 %1, %8
  %21 = shl i64 %17, %8
  %22 = lshr i64 %20, 32
  %23 = and i64 %20, 4294967295
  %24 = udiv i64 %21, %22
  %25 = mul i64 %24, %22
  %26 = sub i64 %21, %25
  br label %27

27:                                               ; preds = %35, %19
  %28 = phi i64 [ %24, %19 ], [ %36, %35 ]
  %29 = phi i64 [ %26, %19 ], [ %37, %35 ]
  %30 = icmp ugt i64 %28, 4294967295
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = mul nuw i64 %28, %23
  %33 = shl i64 %29, 32
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %27
  %36 = add i64 %28, -1
  %37 = add i64 %29, %22
  %38 = icmp ugt i64 %37, 4294967295
  br i1 %38, label %39, label %27

39:                                               ; preds = %35, %31
  %40 = phi i64 [ %36, %35 ], [ %28, %31 ]
  %41 = shl i64 %21, 32
  %42 = mul i64 %40, %20
  %43 = sub i64 %41, %42
  %44 = udiv i64 %43, %22
  %45 = mul i64 %44, %22
  %46 = sub i64 %43, %45
  br label %47

47:                                               ; preds = %55, %39
  %48 = phi i64 [ %44, %39 ], [ %56, %55 ]
  %49 = phi i64 [ %46, %39 ], [ %57, %55 ]
  %50 = icmp ugt i64 %48, 4294967295
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = mul nuw i64 %48, %23
  %53 = shl i64 %49, 32
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51, %47
  %56 = add i64 %48, -1
  %57 = add i64 %49, %22
  %58 = icmp ugt i64 %57, 4294967295
  br i1 %58, label %59, label %47

59:                                               ; preds = %55, %51
  %60 = phi i64 [ %56, %55 ], [ %48, %51 ]
  %61 = shl i64 %43, 32
  %62 = mul i64 %60, %20
  %63 = sub i64 %61, %62
  %64 = lshr i64 %63, %8
  %65 = shl i64 %40, 33
  %66 = shl i64 %60, 1
  %67 = add i64 %66, %65
  %68 = or disjoint i64 %67, 1
  br label %69

69:                                               ; preds = %59, %15
  %70 = phi i64 [ %64, %59 ], [ -1, %15 ]
  %71 = phi i64 [ %68, %59 ], [ -1, %15 ]
  %72 = shl i64 %70, 1
  %73 = icmp uge i64 %72, %1
  %74 = icmp slt i64 %70, 0
  %75 = or i1 %74, %73
  %76 = zext i1 %75 to i64
  %77 = add i64 %71, %76
  br label %78

78:                                               ; preds = %13, %69
  %79 = phi i64 [ 0, %13 ], [ %77, %69 ]
  %80 = phi i32 [ %14, %13 ], [ %10, %69 ]
  %81 = and i32 %80, 63
  %82 = zext nneg i32 %81 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %83 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 16) #6
  %84 = zext i64 %79 to i128
  %85 = load i64, ptr %4, align 8
  %86 = zext i64 %85 to i128
  %87 = mul nuw i128 %86, %84
  %88 = lshr i128 %87, 64
  %89 = trunc nuw i128 %88 to i64
  %90 = sub i64 %85, %89
  %91 = lshr i64 %90, 1
  %92 = add i64 %91, %89
  %93 = lshr i64 %92, %82
  store i64 %93, ptr %4, align 8
  %94 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %95 = load i64, ptr %94, align 8
  %96 = zext i64 %95 to i128
  %97 = mul nuw i128 %96, %84
  %98 = lshr i128 %97, 64
  %99 = trunc nuw i128 %98 to i64
  %100 = sub i64 %95, %99
  %101 = lshr i64 %100, 1
  %102 = add i64 %101, %99
  %103 = lshr i64 %102, %82
  store i64 %103, ptr %94, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %104 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 16) #6
  %105 = load <2 x i64>, ptr %5, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %106

106:                                              ; preds = %2, %78
  %107 = phi <2 x i64> [ %105, %78 ], [ %0, %2 ]
  ret <2 x i64> %107
}

; Function Attrs: mustprogress uwtable
define dso_local <2 x i64> @target_s64_branchfree_lanewise(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca <2 x i64>, align 16
  %4 = alloca [2 x i64], align 8
  %5 = alloca <2 x i64>, align 16
  store <2 x i64> %0, ptr %3, align 16
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %128, label %7

7:                                                ; preds = %2
  %8 = icmp slt i64 %1, 0
  %9 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %10 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %9, i1 true)
  %11 = trunc nuw nsw i64 %10 to i32
  %12 = xor i32 %11, 63
  %13 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %9)
  %14 = icmp samesign ult i64 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = lshr i64 %1, 56
  %17 = trunc nuw nsw i64 %16 to i32
  %18 = and i32 %17, 128
  %19 = or disjoint i32 %12, %18
  %20 = trunc nuw i32 %19 to i8
  br label %88

21:                                               ; preds = %7
  %22 = sub nsw i64 62, %10
  %23 = and i64 %22, 4294967295
  %24 = shl nuw i64 1, %23
  %25 = icmp ult i64 %24, %9
  br i1 %25, label %26, label %76

26:                                               ; preds = %21
  %27 = shl i64 %9, %10
  %28 = shl i64 %24, %10
  %29 = lshr i64 %27, 32
  %30 = and i64 %27, 4294967295
  %31 = udiv i64 %28, %29
  %32 = mul i64 %31, %29
  %33 = sub i64 %28, %32
  br label %34

34:                                               ; preds = %42, %26
  %35 = phi i64 [ %31, %26 ], [ %43, %42 ]
  %36 = phi i64 [ %33, %26 ], [ %44, %42 ]
  %37 = icmp ugt i64 %35, 4294967295
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = mul nuw i64 %35, %30
  %40 = shl i64 %36, 32
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34
  %43 = add i64 %35, -1
  %44 = add i64 %36, %29
  %45 = icmp ugt i64 %44, 4294967295
  br i1 %45, label %46, label %34

46:                                               ; preds = %42, %38
  %47 = phi i64 [ %43, %42 ], [ %35, %38 ]
  %48 = shl i64 %28, 32
  %49 = mul i64 %47, %27
  %50 = sub i64 %48, %49
  %51 = udiv i64 %50, %29
  %52 = mul i64 %51, %29
  %53 = sub i64 %50, %52
  br label %54

54:                                               ; preds = %62, %46
  %55 = phi i64 [ %51, %46 ], [ %63, %62 ]
  %56 = phi i64 [ %53, %46 ], [ %64, %62 ]
  %57 = icmp ugt i64 %55, 4294967295
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = mul nuw i64 %55, %30
  %60 = shl i64 %56, 32
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %54
  %63 = add i64 %55, -1
  %64 = add i64 %56, %29
  %65 = icmp ugt i64 %64, 4294967295
  br i1 %65, label %66, label %54

66:                                               ; preds = %62, %58
  %67 = phi i64 [ %63, %62 ], [ %55, %58 ]
  %68 = shl i64 %50, 32
  %69 = mul i64 %67, %27
  %70 = sub i64 %68, %69
  %71 = lshr i64 %70, %10
  %72 = shl i64 %47, 33
  %73 = shl i64 %67, 1
  %74 = add i64 %73, %72
  %75 = or disjoint i64 %74, 1
  br label %76

76:                                               ; preds = %66, %21
  %77 = phi i64 [ %71, %66 ], [ -1, %21 ]
  %78 = phi i64 [ %75, %66 ], [ -1, %21 ]
  %79 = shl i64 %77, 1
  %80 = icmp uge i64 %79, %9
  %81 = icmp slt i64 %77, 0
  %82 = or i1 %81, %80
  %83 = zext i1 %82 to i64
  %84 = trunc nuw nsw i32 %12 to i8
  %85 = add i64 %78, %83
  %86 = select i1 %8, i8 -64, i8 64
  %87 = or disjoint i8 %86, %84
  br label %88

88:                                               ; preds = %15, %76
  %89 = phi i64 [ 0, %15 ], [ %85, %76 ]
  %90 = phi i8 [ %20, %15 ], [ %87, %76 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %91 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 16) #6
  %92 = and i8 %90, 63
  %93 = ashr i8 %90, 7
  %94 = sext i8 %93 to i64
  %95 = sext i64 %89 to i128
  %96 = icmp eq i64 %89, 0
  %97 = sext i1 %96 to i64
  %98 = zext nneg i8 %92 to i64
  %99 = shl nuw i64 1, %98
  %100 = add i64 %99, %97
  %101 = load i64, ptr %4, align 8
  %102 = sext i64 %101 to i128
  %103 = mul nsw i128 %102, %95
  %104 = lshr i128 %103, 64
  %105 = trunc nuw i128 %104 to i64
  %106 = add nsw i64 %101, %105
  %107 = icmp slt i64 %106, 0
  %108 = select i1 %107, i64 %100, i64 0
  %109 = add i64 %108, %106
  %110 = ashr i64 %109, %98
  %111 = xor i64 %110, %94
  %112 = sub nsw i64 %111, %94
  store i64 %112, ptr %4, align 8
  %113 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %114 = load i64, ptr %113, align 8
  %115 = sext i64 %114 to i128
  %116 = mul nsw i128 %115, %95
  %117 = lshr i128 %116, 64
  %118 = trunc nuw i128 %117 to i64
  %119 = add nsw i64 %114, %118
  %120 = icmp slt i64 %119, 0
  %121 = select i1 %120, i64 %100, i64 0
  %122 = add i64 %121, %119
  %123 = ashr i64 %122, %98
  %124 = xor i64 %123, %94
  %125 = sub nsw i64 %124, %94
  store i64 %125, ptr %113, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %126 = call noundef ptr @_Z6memcpyPvPKvm(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 16) #6
  %127 = load <2 x i64>, ptr %5, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  br label %128

128:                                              ; preds = %2, %88
  %129 = phi <2 x i64> [ %127, %88 ], [ %0, %2 ]
  ret <2 x i64> %129
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { mustprogress uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { alwaysinline }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
