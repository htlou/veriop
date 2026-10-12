; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap_s32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, [4 x i32], [4 x i32], i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_0_0(ptr noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 374761393
  %4 = lshr i32 %3, 15
  %5 = xor i32 %4, %3
  %6 = mul i32 %5, -2048144777
  %7 = lshr i32 %6, 13
  %8 = xor i32 %7, %6
  %9 = mul i32 %8, -1028477379
  %10 = lshr i32 %9, 16
  %11 = xor i32 %10, %9
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @target_s32_1_0(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add i32 %1, 374761393
  br label %14

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1
  %8 = zext i8 %7 to i32
  %9 = mul i32 %8, 374761393
  %10 = add i32 %1, 374761394
  %11 = add i32 %9, %10
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 11)
  %13 = mul i32 %12, -1640531535
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %5, %4 ], [ %13, %6 ]
  %16 = lshr i32 %15, 15
  %17 = xor i32 %16, %15
  %18 = mul i32 %17, -2048144777
  %19 = lshr i32 %18, 13
  %20 = xor i32 %19, %18
  %21 = mul i32 %20, -1028477379
  %22 = lshr i32 %21, 16
  %23 = xor i32 %22, %21
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @target_s32_7_8(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %5, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %6, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 16, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %11, ptr noundef nonnull readonly align 1 dereferenceable(7) %0, i64 7, i1 false)
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 0, %2 ], [ 7, %13 ]
  %16 = or disjoint i32 %15, 8
  store i32 %16, ptr %3, align 4
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %19 = zext nneg i32 %15 to i64
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 %19
  %22 = load i64, ptr %20, align 1
  store i64 %22, ptr %21, align 1
  %23 = or disjoint i32 %15, 8
  store i32 %23, ptr %18, align 4
  %24 = zext nneg i32 %23 to i64
  %25 = add i32 %1, 374761393
  %26 = add i32 %16, %25
  %27 = load i32, ptr %11, align 4
  %28 = mul i32 %27, -1028477379
  %29 = add i32 %28, %26
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %31 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = add nsw i64 %24, -4
  %34 = icmp samesign ugt i64 %33, 3
  br i1 %34, label %64, label %35

35:                                               ; preds = %72, %64, %14
  %36 = phi ptr [ %30, %14 ], [ %68, %64 ], [ %76, %72 ]
  %37 = phi i32 [ %32, %14 ], [ %70, %64 ], [ %78, %72 ]
  %38 = phi i64 [ %33, %14 ], [ %71, %64 ], [ %79, %72 ]
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %142, label %40

40:                                               ; preds = %35
  %41 = and i64 %38, 7
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40, %43
  %44 = phi i32 [ %54, %43 ], [ %37, %40 ]
  %45 = phi i64 [ %55, %43 ], [ %38, %40 ]
  %46 = phi ptr [ %48, %43 ], [ %36, %40 ]
  %47 = phi i64 [ %56, %43 ], [ 0, %40 ]
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 1
  %49 = load i8, ptr %46, align 1
  %50 = zext i8 %49 to i32
  %51 = mul i32 %50, 374761393
  %52 = add i32 %51, %44
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 11)
  %54 = mul i32 %53, -1640531535
  %55 = add nsw i64 %45, -1
  %56 = add i64 %47, 1
  %57 = icmp eq i64 %56, %41
  br i1 %57, label %58, label %43

58:                                               ; preds = %43, %40
  %59 = phi i32 [ poison, %40 ], [ %54, %43 ]
  %60 = phi i32 [ %37, %40 ], [ %54, %43 ]
  %61 = phi i64 [ %38, %40 ], [ %55, %43 ]
  %62 = phi ptr [ %36, %40 ], [ %48, %43 ]
  %63 = icmp ult i64 %38, 8
  br i1 %63, label %142, label %80

64:                                               ; preds = %14
  %65 = load i32, ptr %30, align 4
  %66 = mul i32 %65, -1028477379
  %67 = add i32 %66, %32
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %69 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 17)
  %70 = mul i32 %69, 668265263
  %71 = zext nneg i32 %15 to i64
  br i1 %12, label %35, label %72

72:                                               ; preds = %64
  %73 = load i32, ptr %68, align 4
  %74 = mul i32 %73, -1028477379
  %75 = add i32 %74, %70
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %77 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 17)
  %78 = mul i32 %77, 668265263
  %79 = add nsw i64 %24, -12
  br label %35

80:                                               ; preds = %58, %80
  %81 = phi i32 [ %139, %80 ], [ %60, %58 ]
  %82 = phi i64 [ %140, %80 ], [ %61, %58 ]
  %83 = phi ptr [ %133, %80 ], [ %62, %58 ]
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %85 = load i8, ptr %83, align 1
  %86 = zext i8 %85 to i32
  %87 = mul i32 %86, 374761393
  %88 = add i32 %87, %81
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 11)
  %90 = mul i32 %89, -1640531535
  %91 = getelementptr inbounds nuw i8, ptr %83, i64 2
  %92 = load i8, ptr %84, align 1
  %93 = zext i8 %92 to i32
  %94 = mul i32 %93, 374761393
  %95 = add i32 %94, %90
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 11)
  %97 = mul i32 %96, -1640531535
  %98 = getelementptr inbounds nuw i8, ptr %83, i64 3
  %99 = load i8, ptr %91, align 1
  %100 = zext i8 %99 to i32
  %101 = mul i32 %100, 374761393
  %102 = add i32 %101, %97
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 11)
  %104 = mul i32 %103, -1640531535
  %105 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %106 = load i8, ptr %98, align 1
  %107 = zext i8 %106 to i32
  %108 = mul i32 %107, 374761393
  %109 = add i32 %108, %104
  %110 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 11)
  %111 = mul i32 %110, -1640531535
  %112 = getelementptr inbounds nuw i8, ptr %83, i64 5
  %113 = load i8, ptr %105, align 1
  %114 = zext i8 %113 to i32
  %115 = mul i32 %114, 374761393
  %116 = add i32 %115, %111
  %117 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 11)
  %118 = mul i32 %117, -1640531535
  %119 = getelementptr inbounds nuw i8, ptr %83, i64 6
  %120 = load i8, ptr %112, align 1
  %121 = zext i8 %120 to i32
  %122 = mul i32 %121, 374761393
  %123 = add i32 %122, %118
  %124 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 11)
  %125 = mul i32 %124, -1640531535
  %126 = getelementptr inbounds nuw i8, ptr %83, i64 7
  %127 = load i8, ptr %119, align 1
  %128 = zext i8 %127 to i32
  %129 = mul i32 %128, 374761393
  %130 = add i32 %129, %125
  %131 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 11)
  %132 = mul i32 %131, -1640531535
  %133 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %134 = load i8, ptr %126, align 1
  %135 = zext i8 %134 to i32
  %136 = mul i32 %135, 374761393
  %137 = add i32 %136, %132
  %138 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 11)
  %139 = mul i32 %138, -1640531535
  %140 = add nsw i64 %82, -8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %80

142:                                              ; preds = %58, %80, %35
  %143 = phi i32 [ %37, %35 ], [ %59, %58 ], [ %139, %80 ]
  %144 = lshr i32 %143, 15
  %145 = xor i32 %144, %143
  %146 = mul i32 %145, -2048144777
  %147 = lshr i32 %146, 13
  %148 = xor i32 %147, %146
  %149 = mul i32 %148, -1028477379
  %150 = lshr i32 %149, 16
  %151 = xor i32 %150, %149
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %151
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @target_s32_5_10(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %5, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %6, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 16, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %11, ptr noundef nonnull readonly align 1 dereferenceable(5) %0, i64 5, i1 false)
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 0, %2 ], [ 5, %13 ]
  %16 = or disjoint i32 %15, 10
  store i32 %16, ptr %3, align 4
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %19 = zext nneg i32 %15 to i64
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %21, ptr noundef nonnull readonly align 1 dereferenceable(10) %20, i64 10, i1 false)
  %22 = or disjoint i32 %15, 10
  store i32 %22, ptr %18, align 4
  %23 = zext nneg i32 %22 to i64
  %24 = add i32 %1, 374761393
  %25 = add i32 %16, %24
  %26 = load i32, ptr %11, align 4
  %27 = mul i32 %26, -1028477379
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %30 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 17)
  %31 = mul i32 %30, 668265263
  %32 = add nsw i64 %23, -4
  %33 = icmp samesign ugt i64 %32, 3
  br i1 %33, label %62, label %34

34:                                               ; preds = %14, %62, %71
  %35 = phi ptr [ %29, %14 ], [ %66, %62 ], [ %75, %71 ]
  %36 = phi i32 [ %31, %14 ], [ %68, %62 ], [ %77, %71 ]
  %37 = phi i64 [ %32, %14 ], [ %69, %62 ], [ %78, %71 ]
  %38 = add nsw i64 %37, -1
  %39 = and i64 %37, 7
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %34, %41
  %42 = phi i32 [ %52, %41 ], [ %36, %34 ]
  %43 = phi i64 [ %53, %41 ], [ %37, %34 ]
  %44 = phi ptr [ %46, %41 ], [ %35, %34 ]
  %45 = phi i64 [ %54, %41 ], [ 0, %34 ]
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 1
  %47 = load i8, ptr %44, align 1
  %48 = zext i8 %47 to i32
  %49 = mul i32 %48, 374761393
  %50 = add i32 %49, %42
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %52 = mul i32 %51, -1640531535
  %53 = add nsw i64 %43, -1
  %54 = add i64 %45, 1
  %55 = icmp eq i64 %54, %39
  br i1 %55, label %56, label %41

56:                                               ; preds = %41, %34
  %57 = phi i32 [ poison, %34 ], [ %52, %41 ]
  %58 = phi i32 [ %36, %34 ], [ %52, %41 ]
  %59 = phi i64 [ %37, %34 ], [ %53, %41 ]
  %60 = phi ptr [ %35, %34 ], [ %46, %41 ]
  %61 = icmp ult i64 %38, 7
  br i1 %61, label %141, label %79

62:                                               ; preds = %14
  %63 = load i32, ptr %29, align 4
  %64 = mul i32 %63, -1028477379
  %65 = add i32 %64, %31
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %67 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 17)
  %68 = mul i32 %67, 668265263
  %69 = add nsw i64 %23, -8
  %70 = icmp samesign ugt i64 %69, 3
  br i1 %70, label %71, label %34

71:                                               ; preds = %62
  %72 = load i32, ptr %66, align 4
  %73 = mul i32 %72, -1028477379
  %74 = add i32 %73, %68
  %75 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %76 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 17)
  %77 = mul i32 %76, 668265263
  %78 = add nsw i64 %23, -12
  br label %34

79:                                               ; preds = %56, %79
  %80 = phi i32 [ %138, %79 ], [ %58, %56 ]
  %81 = phi i64 [ %139, %79 ], [ %59, %56 ]
  %82 = phi ptr [ %132, %79 ], [ %60, %56 ]
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 1
  %84 = load i8, ptr %82, align 1
  %85 = zext i8 %84 to i32
  %86 = mul i32 %85, 374761393
  %87 = add i32 %86, %80
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 11)
  %89 = mul i32 %88, -1640531535
  %90 = getelementptr inbounds nuw i8, ptr %82, i64 2
  %91 = load i8, ptr %83, align 1
  %92 = zext i8 %91 to i32
  %93 = mul i32 %92, 374761393
  %94 = add i32 %93, %89
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 11)
  %96 = mul i32 %95, -1640531535
  %97 = getelementptr inbounds nuw i8, ptr %82, i64 3
  %98 = load i8, ptr %90, align 1
  %99 = zext i8 %98 to i32
  %100 = mul i32 %99, 374761393
  %101 = add i32 %100, %96
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 11)
  %103 = mul i32 %102, -1640531535
  %104 = getelementptr inbounds nuw i8, ptr %82, i64 4
  %105 = load i8, ptr %97, align 1
  %106 = zext i8 %105 to i32
  %107 = mul i32 %106, 374761393
  %108 = add i32 %107, %103
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 11)
  %110 = mul i32 %109, -1640531535
  %111 = getelementptr inbounds nuw i8, ptr %82, i64 5
  %112 = load i8, ptr %104, align 1
  %113 = zext i8 %112 to i32
  %114 = mul i32 %113, 374761393
  %115 = add i32 %114, %110
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 11)
  %117 = mul i32 %116, -1640531535
  %118 = getelementptr inbounds nuw i8, ptr %82, i64 6
  %119 = load i8, ptr %111, align 1
  %120 = zext i8 %119 to i32
  %121 = mul i32 %120, 374761393
  %122 = add i32 %121, %117
  %123 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 11)
  %124 = mul i32 %123, -1640531535
  %125 = getelementptr inbounds nuw i8, ptr %82, i64 7
  %126 = load i8, ptr %118, align 1
  %127 = zext i8 %126 to i32
  %128 = mul i32 %127, 374761393
  %129 = add i32 %128, %124
  %130 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 11)
  %131 = mul i32 %130, -1640531535
  %132 = getelementptr inbounds nuw i8, ptr %82, i64 8
  %133 = load i8, ptr %125, align 1
  %134 = zext i8 %133 to i32
  %135 = mul i32 %134, 374761393
  %136 = add i32 %135, %131
  %137 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 11)
  %138 = mul i32 %137, -1640531535
  %139 = add nsw i64 %81, -8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %79

141:                                              ; preds = %56, %79
  %142 = phi i32 [ %57, %56 ], [ %138, %79 ]
  %143 = lshr i32 %142, 15
  %144 = xor i32 %143, %142
  %145 = mul i32 %144, -2048144777
  %146 = lshr i32 %145, 13
  %147 = xor i32 %146, %145
  %148 = mul i32 %147, -1028477379
  %149 = lshr i32 %148, 16
  %150 = xor i32 %149, %148
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %150
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @target_s32_15_0(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add i32 %1, 374761393
  br label %45

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %8 = load i24, ptr %7, align 1
  %9 = zext i24 %8 to i32
  %10 = add i32 %1, 374761408
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i32, ptr %11, align 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %14 = load i32, ptr %13, align 1
  %15 = load i32, ptr %0, align 1
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %16, %10
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %19 = mul i32 %18, 668265263
  %20 = mul i32 %14, -1028477379
  %21 = add i32 %20, %19
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 17)
  %23 = mul i32 %22, 668265263
  %24 = mul i32 %12, -1028477379
  %25 = add i32 %24, %23
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 17)
  %27 = mul i32 %26, 668265263
  %28 = and i24 %8, 255
  %29 = zext nneg i24 %28 to i32
  %30 = mul i32 %29, 374761393
  %31 = add i32 %30, %27
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 11)
  %33 = mul i32 %32, -1640531535
  %34 = lshr i32 %9, 8
  %35 = and i32 %34, 255
  %36 = mul i32 %35, 374761393
  %37 = add i32 %36, %33
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 11)
  %39 = mul i32 %38, -1640531535
  %40 = lshr i32 %9, 16
  %41 = mul i32 %40, 374761393
  %42 = add i32 %41, %39
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11)
  %44 = mul i32 %43, -1640531535
  br label %45

45:                                               ; preds = %6, %4
  %46 = phi i32 [ %5, %4 ], [ %44, %6 ]
  %47 = lshr i32 %46, 15
  %48 = xor i32 %47, %46
  %49 = mul i32 %48, -2048144777
  %50 = lshr i32 %49, 13
  %51 = xor i32 %50, %49
  %52 = mul i32 %51, -1028477379
  %53 = lshr i32 %52, 16
  %54 = xor i32 %53, %52
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_10_10(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %5, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %6, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %11, ptr noundef nonnull readonly align 1 dereferenceable(10) %0, i64 10, i1 false)
  store i32 10, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 20, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %18, ptr noundef nonnull readonly align 1 dereferenceable(6) %15, i64 6, i1 false)
  %19 = load i32, ptr %11, align 8
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = freeze i32 %23
  store i32 %24, ptr %7, align 8
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %5
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  store i32 %31, ptr %8, align 4
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %33 = load i32, ptr %32, align 8
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %1
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  store i32 %38, ptr %9, align 8
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %6
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = freeze i32 %44
  store i32 %45, ptr %10, align 4
  %46 = load i32, ptr %17, align 8
  %47 = sub i32 16, %46
  store i32 0, ptr %17, align 8
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %59

49:                                               ; preds = %13
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %51 = zext nneg i32 %47 to i64
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 10
  %54 = ptrtoint ptr %50 to i64
  %55 = ptrtoint ptr %53 to i64
  %56 = sub i64 %54, %55
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %53, i64 %56, i1 false)
  %57 = trunc i64 %56 to i32
  store i32 %57, ptr %17, align 8
  %58 = and i32 %57, 15
  br label %59

59:                                               ; preds = %13, %49
  %60 = phi i32 [ %58, %49 ], [ 0, %13 ]
  %61 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 1)
  %62 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 7)
  %63 = add i32 %62, %61
  %64 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 12)
  %65 = add i32 %63, %64
  %66 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 18)
  %67 = add i32 %65, %66
  br label %76

68:                                               ; preds = %2
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 10, ptr %3, align 8
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %11, ptr noundef nonnull readonly align 1 dereferenceable(10) %69, i64 10, i1 false)
  %72 = load i32, ptr %71, align 8
  %73 = add i32 %72, 10
  store i32 %73, ptr %71, align 8
  %74 = and i32 %73, 15
  %75 = add i32 %1, 374761393
  br label %76

76:                                               ; preds = %68, %59
  %77 = phi i32 [ %60, %59 ], [ %74, %68 ]
  %78 = phi i32 [ 20, %59 ], [ 10, %68 ]
  %79 = phi i32 [ %67, %59 ], [ %75, %68 ]
  %80 = add i32 %78, %79
  %81 = zext i32 %77 to i64
  %82 = icmp samesign ugt i32 %77, 3
  br i1 %82, label %83, label %112

83:                                               ; preds = %76
  %84 = add nsw i64 %81, -4
  %85 = lshr i64 %84, 2
  %86 = add nuw nsw i64 %85, 1
  %87 = and i64 %86, 7
  %88 = and i64 %84, 28
  %89 = icmp eq i64 %88, 28
  br i1 %89, label %104, label %90

90:                                               ; preds = %83, %90
  %91 = phi i32 [ %100, %90 ], [ %80, %83 ]
  %92 = phi i64 [ %101, %90 ], [ %81, %83 ]
  %93 = phi ptr [ %98, %90 ], [ %11, %83 ]
  %94 = phi i64 [ %102, %90 ], [ 0, %83 ]
  %95 = load i32, ptr %93, align 4
  %96 = mul i32 %95, -1028477379
  %97 = add i32 %96, %91
  %98 = getelementptr inbounds nuw i8, ptr %93, i64 4
  %99 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 17)
  %100 = mul i32 %99, 668265263
  %101 = add nsw i64 %92, -4
  %102 = add i64 %94, 1
  %103 = icmp eq i64 %102, %87
  br i1 %103, label %104, label %90

104:                                              ; preds = %90, %83
  %105 = phi i32 [ %80, %83 ], [ %100, %90 ]
  %106 = phi i64 [ %81, %83 ], [ %101, %90 ]
  %107 = phi ptr [ %11, %83 ], [ %98, %90 ]
  %108 = phi ptr [ poison, %83 ], [ %98, %90 ]
  %109 = phi i32 [ poison, %83 ], [ %100, %90 ]
  %110 = phi i64 [ poison, %83 ], [ %101, %90 ]
  %111 = icmp ult i64 %84, 28
  br i1 %111, label %112, label %141

112:                                              ; preds = %104, %141, %76
  %113 = phi ptr [ %11, %76 ], [ %108, %104 ], [ %190, %141 ]
  %114 = phi i64 [ %81, %76 ], [ %110, %104 ], [ %193, %141 ]
  %115 = phi i32 [ %80, %76 ], [ %109, %104 ], [ %192, %141 ]
  %116 = icmp eq i64 %114, 0
  br i1 %116, label %257, label %117

117:                                              ; preds = %112
  %118 = and i64 %114, 7
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %117, %120
  %121 = phi i32 [ %131, %120 ], [ %115, %117 ]
  %122 = phi i64 [ %132, %120 ], [ %114, %117 ]
  %123 = phi ptr [ %125, %120 ], [ %113, %117 ]
  %124 = phi i64 [ %133, %120 ], [ 0, %117 ]
  %125 = getelementptr inbounds nuw i8, ptr %123, i64 1
  %126 = load i8, ptr %123, align 1
  %127 = zext i8 %126 to i32
  %128 = mul i32 %127, 374761393
  %129 = add i32 %128, %121
  %130 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 11)
  %131 = mul i32 %130, -1640531535
  %132 = add nsw i64 %122, -1
  %133 = add i64 %124, 1
  %134 = icmp eq i64 %133, %118
  br i1 %134, label %135, label %120

135:                                              ; preds = %120, %117
  %136 = phi i32 [ poison, %117 ], [ %131, %120 ]
  %137 = phi i32 [ %115, %117 ], [ %131, %120 ]
  %138 = phi i64 [ %114, %117 ], [ %132, %120 ]
  %139 = phi ptr [ %113, %117 ], [ %125, %120 ]
  %140 = icmp ult i64 %114, 8
  br i1 %140, label %257, label %195

141:                                              ; preds = %104, %141
  %142 = phi i32 [ %192, %141 ], [ %105, %104 ]
  %143 = phi i64 [ %193, %141 ], [ %106, %104 ]
  %144 = phi ptr [ %190, %141 ], [ %107, %104 ]
  %145 = load i32, ptr %144, align 4
  %146 = mul i32 %145, -1028477379
  %147 = add i32 %146, %142
  %148 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 17)
  %150 = mul i32 %149, 668265263
  %151 = load i32, ptr %148, align 4
  %152 = mul i32 %151, -1028477379
  %153 = add i32 %152, %150
  %154 = getelementptr inbounds nuw i8, ptr %144, i64 8
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 17)
  %156 = mul i32 %155, 668265263
  %157 = load i32, ptr %154, align 4
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %144, i64 12
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  %163 = load i32, ptr %160, align 4
  %164 = mul i32 %163, -1028477379
  %165 = add i32 %164, %162
  %166 = getelementptr inbounds nuw i8, ptr %144, i64 16
  %167 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 17)
  %168 = mul i32 %167, 668265263
  %169 = load i32, ptr %166, align 4
  %170 = mul i32 %169, -1028477379
  %171 = add i32 %170, %168
  %172 = getelementptr inbounds nuw i8, ptr %144, i64 20
  %173 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 17)
  %174 = mul i32 %173, 668265263
  %175 = load i32, ptr %172, align 4
  %176 = mul i32 %175, -1028477379
  %177 = add i32 %176, %174
  %178 = getelementptr inbounds nuw i8, ptr %144, i64 24
  %179 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 17)
  %180 = mul i32 %179, 668265263
  %181 = load i32, ptr %178, align 4
  %182 = mul i32 %181, -1028477379
  %183 = add i32 %182, %180
  %184 = getelementptr inbounds nuw i8, ptr %144, i64 28
  %185 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 17)
  %186 = mul i32 %185, 668265263
  %187 = load i32, ptr %184, align 4
  %188 = mul i32 %187, -1028477379
  %189 = add i32 %188, %186
  %190 = getelementptr inbounds nuw i8, ptr %144, i64 32
  %191 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 17)
  %192 = mul i32 %191, 668265263
  %193 = add nsw i64 %143, -32
  %194 = icmp ugt i64 %193, 3
  br i1 %194, label %141, label %112

195:                                              ; preds = %135, %195
  %196 = phi i32 [ %254, %195 ], [ %137, %135 ]
  %197 = phi i64 [ %255, %195 ], [ %138, %135 ]
  %198 = phi ptr [ %248, %195 ], [ %139, %135 ]
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 1
  %200 = load i8, ptr %198, align 1
  %201 = zext i8 %200 to i32
  %202 = mul i32 %201, 374761393
  %203 = add i32 %202, %196
  %204 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 11)
  %205 = mul i32 %204, -1640531535
  %206 = getelementptr inbounds nuw i8, ptr %198, i64 2
  %207 = load i8, ptr %199, align 1
  %208 = zext i8 %207 to i32
  %209 = mul i32 %208, 374761393
  %210 = add i32 %209, %205
  %211 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 11)
  %212 = mul i32 %211, -1640531535
  %213 = getelementptr inbounds nuw i8, ptr %198, i64 3
  %214 = load i8, ptr %206, align 1
  %215 = zext i8 %214 to i32
  %216 = mul i32 %215, 374761393
  %217 = add i32 %216, %212
  %218 = tail call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 11)
  %219 = mul i32 %218, -1640531535
  %220 = getelementptr inbounds nuw i8, ptr %198, i64 4
  %221 = load i8, ptr %213, align 1
  %222 = zext i8 %221 to i32
  %223 = mul i32 %222, 374761393
  %224 = add i32 %223, %219
  %225 = tail call i32 @llvm.fshl.i32(i32 %224, i32 %224, i32 11)
  %226 = mul i32 %225, -1640531535
  %227 = getelementptr inbounds nuw i8, ptr %198, i64 5
  %228 = load i8, ptr %220, align 1
  %229 = zext i8 %228 to i32
  %230 = mul i32 %229, 374761393
  %231 = add i32 %230, %226
  %232 = tail call i32 @llvm.fshl.i32(i32 %231, i32 %231, i32 11)
  %233 = mul i32 %232, -1640531535
  %234 = getelementptr inbounds nuw i8, ptr %198, i64 6
  %235 = load i8, ptr %227, align 1
  %236 = zext i8 %235 to i32
  %237 = mul i32 %236, 374761393
  %238 = add i32 %237, %233
  %239 = tail call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 11)
  %240 = mul i32 %239, -1640531535
  %241 = getelementptr inbounds nuw i8, ptr %198, i64 7
  %242 = load i8, ptr %234, align 1
  %243 = zext i8 %242 to i32
  %244 = mul i32 %243, 374761393
  %245 = add i32 %244, %240
  %246 = tail call i32 @llvm.fshl.i32(i32 %245, i32 %245, i32 11)
  %247 = mul i32 %246, -1640531535
  %248 = getelementptr inbounds nuw i8, ptr %198, i64 8
  %249 = load i8, ptr %241, align 1
  %250 = zext i8 %249 to i32
  %251 = mul i32 %250, 374761393
  %252 = add i32 %251, %247
  %253 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 11)
  %254 = mul i32 %253, -1640531535
  %255 = add nsw i64 %197, -8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %195

257:                                              ; preds = %135, %195, %112
  %258 = phi i32 [ %115, %112 ], [ %136, %135 ], [ %254, %195 ]
  %259 = lshr i32 %258, 15
  %260 = xor i32 %259, %258
  %261 = mul i32 %260, -2048144777
  %262 = lshr i32 %261, 13
  %263 = xor i32 %262, %261
  %264 = mul i32 %263, -1028477379
  %265 = lshr i32 %264, 16
  %266 = xor i32 %265, %264
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %266
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_3_20(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  store i32 20, ptr %3, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %54

16:                                               ; preds = %2
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %11, ptr noundef nonnull readonly align 1 dereferenceable(3) %0, i64 3, i1 false)
  store i32 3, ptr %17, align 8
  store i32 23, ptr %3, align 8
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %21, ptr noundef nonnull readonly align 1 dereferenceable(13) %20, i64 13, i1 false)
  %22 = load i32, ptr %11, align 8
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %4
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = freeze i32 %26
  store i32 %27, ptr %7, align 8
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %5
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  store i32 %34, ptr %8, align 4
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %36 = load i32, ptr %35, align 8
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %1
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  store i32 %41, ptr %9, align 8
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %6
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = freeze i32 %47
  store i32 %48, ptr %10, align 4
  %49 = load i32, ptr %19, align 8
  %50 = sub i32 16, %49
  %51 = zext i32 %50 to i64
  %52 = add nuw nsw i64 %51, 3
  store i32 0, ptr %19, align 8
  %53 = icmp ugt i32 %50, 4
  br i1 %53, label %91, label %54

54:                                               ; preds = %13, %16
  %55 = phi ptr [ %19, %16 ], [ %15, %13 ]
  %56 = phi i32 [ 23, %16 ], [ 20, %13 ]
  %57 = phi i32 [ %48, %16 ], [ %6, %13 ]
  %58 = phi i32 [ %41, %16 ], [ %1, %13 ]
  %59 = phi i32 [ %34, %16 ], [ %5, %13 ]
  %60 = phi i32 [ %27, %16 ], [ %4, %13 ]
  %61 = phi i64 [ %52, %16 ], [ 3, %13 ]
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %61
  %63 = load i32, ptr %62, align 1
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %60
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  %69 = getelementptr inbounds nuw i8, ptr %62, i64 4
  %70 = load i32, ptr %69, align 1
  %71 = mul i32 %70, -2048144777
  %72 = add i32 %71, %59
  %73 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 13)
  %74 = mul i32 %73, -1640531535
  %75 = freeze i32 %74
  %76 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %77 = load i32, ptr %76, align 1
  %78 = mul i32 %77, -2048144777
  %79 = add i32 %78, %58
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 13)
  %81 = mul i32 %80, -1640531535
  %82 = freeze i32 %81
  %83 = getelementptr inbounds nuw i8, ptr %62, i64 12
  %84 = load i32, ptr %83, align 1
  %85 = mul i32 %84, -2048144777
  %86 = add i32 %85, %57
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 13)
  %88 = mul i32 %87, -1640531535
  %89 = freeze i32 %88
  %90 = add nuw nsw i64 %61, 16
  store i32 %68, ptr %7, align 8
  store i32 %75, ptr %8, align 4
  store i32 %82, ptr %9, align 8
  store i32 %89, ptr %10, align 4
  br label %91

91:                                               ; preds = %54, %16
  %92 = phi ptr [ %19, %16 ], [ %55, %54 ]
  %93 = phi i32 [ 23, %16 ], [ %56, %54 ]
  %94 = phi i32 [ %48, %16 ], [ %89, %54 ]
  %95 = phi i32 [ %41, %16 ], [ %82, %54 ]
  %96 = phi i32 [ %34, %16 ], [ %75, %54 ]
  %97 = phi i32 [ %27, %16 ], [ %68, %54 ]
  %98 = phi i64 [ %52, %16 ], [ %90, %54 ]
  %99 = icmp samesign ult i64 %98, 23
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 %98
  %102 = sub nuw nsw i64 23, %98
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %101, i64 %102, i1 false)
  %103 = trunc nuw nsw i64 %102 to i32
  store i32 %103, ptr %92, align 4
  %104 = and i32 %103, 15
  br label %105

105:                                              ; preds = %91, %100
  %106 = phi i32 [ 0, %91 ], [ %104, %100 ]
  %107 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 7)
  %108 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 1)
  %109 = add i32 %107, %108
  %110 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 12)
  %111 = add i32 %109, %110
  %112 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 18)
  %113 = add i32 %111, %112
  %114 = add i32 %93, %113
  %115 = zext nneg i32 %106 to i64
  %116 = icmp samesign ugt i32 %106, 3
  br i1 %116, label %117, label %146

117:                                              ; preds = %105
  %118 = add nsw i64 %115, -4
  %119 = lshr i64 %118, 2
  %120 = add nuw nsw i64 %119, 1
  %121 = and i64 %120, 7
  %122 = and i64 %118, 28
  %123 = icmp eq i64 %122, 28
  br i1 %123, label %138, label %124

124:                                              ; preds = %117, %124
  %125 = phi i32 [ %134, %124 ], [ %114, %117 ]
  %126 = phi i64 [ %135, %124 ], [ %115, %117 ]
  %127 = phi ptr [ %132, %124 ], [ %11, %117 ]
  %128 = phi i64 [ %136, %124 ], [ 0, %117 ]
  %129 = load i32, ptr %127, align 4
  %130 = mul i32 %129, -1028477379
  %131 = add i32 %130, %125
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 4
  %133 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 17)
  %134 = mul i32 %133, 668265263
  %135 = add nsw i64 %126, -4
  %136 = add i64 %128, 1
  %137 = icmp eq i64 %136, %121
  br i1 %137, label %138, label %124

138:                                              ; preds = %124, %117
  %139 = phi i32 [ %114, %117 ], [ %134, %124 ]
  %140 = phi i64 [ %115, %117 ], [ %135, %124 ]
  %141 = phi ptr [ %11, %117 ], [ %132, %124 ]
  %142 = phi ptr [ poison, %117 ], [ %132, %124 ]
  %143 = phi i32 [ poison, %117 ], [ %134, %124 ]
  %144 = phi i64 [ poison, %117 ], [ %135, %124 ]
  %145 = icmp ult i64 %118, 28
  br i1 %145, label %146, label %175

146:                                              ; preds = %138, %175, %105
  %147 = phi ptr [ %11, %105 ], [ %142, %138 ], [ %224, %175 ]
  %148 = phi i64 [ %115, %105 ], [ %144, %138 ], [ %227, %175 ]
  %149 = phi i32 [ %114, %105 ], [ %143, %138 ], [ %226, %175 ]
  %150 = icmp eq i64 %148, 0
  br i1 %150, label %291, label %151

151:                                              ; preds = %146
  %152 = and i64 %148, 7
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %151, %154
  %155 = phi i32 [ %165, %154 ], [ %149, %151 ]
  %156 = phi i64 [ %166, %154 ], [ %148, %151 ]
  %157 = phi ptr [ %159, %154 ], [ %147, %151 ]
  %158 = phi i64 [ %167, %154 ], [ 0, %151 ]
  %159 = getelementptr inbounds nuw i8, ptr %157, i64 1
  %160 = load i8, ptr %157, align 1
  %161 = zext i8 %160 to i32
  %162 = mul i32 %161, 374761393
  %163 = add i32 %162, %155
  %164 = tail call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 11)
  %165 = mul i32 %164, -1640531535
  %166 = add nsw i64 %156, -1
  %167 = add i64 %158, 1
  %168 = icmp eq i64 %167, %152
  br i1 %168, label %169, label %154

169:                                              ; preds = %154, %151
  %170 = phi i32 [ poison, %151 ], [ %165, %154 ]
  %171 = phi i32 [ %149, %151 ], [ %165, %154 ]
  %172 = phi i64 [ %148, %151 ], [ %166, %154 ]
  %173 = phi ptr [ %147, %151 ], [ %159, %154 ]
  %174 = icmp ult i64 %148, 8
  br i1 %174, label %291, label %229

175:                                              ; preds = %138, %175
  %176 = phi i32 [ %226, %175 ], [ %139, %138 ]
  %177 = phi i64 [ %227, %175 ], [ %140, %138 ]
  %178 = phi ptr [ %224, %175 ], [ %141, %138 ]
  %179 = load i32, ptr %178, align 4
  %180 = mul i32 %179, -1028477379
  %181 = add i32 %180, %176
  %182 = getelementptr inbounds nuw i8, ptr %178, i64 4
  %183 = tail call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 17)
  %184 = mul i32 %183, 668265263
  %185 = load i32, ptr %182, align 4
  %186 = mul i32 %185, -1028477379
  %187 = add i32 %186, %184
  %188 = getelementptr inbounds nuw i8, ptr %178, i64 8
  %189 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 17)
  %190 = mul i32 %189, 668265263
  %191 = load i32, ptr %188, align 4
  %192 = mul i32 %191, -1028477379
  %193 = add i32 %192, %190
  %194 = getelementptr inbounds nuw i8, ptr %178, i64 12
  %195 = tail call i32 @llvm.fshl.i32(i32 %193, i32 %193, i32 17)
  %196 = mul i32 %195, 668265263
  %197 = load i32, ptr %194, align 4
  %198 = mul i32 %197, -1028477379
  %199 = add i32 %198, %196
  %200 = getelementptr inbounds nuw i8, ptr %178, i64 16
  %201 = tail call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 17)
  %202 = mul i32 %201, 668265263
  %203 = load i32, ptr %200, align 4
  %204 = mul i32 %203, -1028477379
  %205 = add i32 %204, %202
  %206 = getelementptr inbounds nuw i8, ptr %178, i64 20
  %207 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 17)
  %208 = mul i32 %207, 668265263
  %209 = load i32, ptr %206, align 4
  %210 = mul i32 %209, -1028477379
  %211 = add i32 %210, %208
  %212 = getelementptr inbounds nuw i8, ptr %178, i64 24
  %213 = tail call i32 @llvm.fshl.i32(i32 %211, i32 %211, i32 17)
  %214 = mul i32 %213, 668265263
  %215 = load i32, ptr %212, align 4
  %216 = mul i32 %215, -1028477379
  %217 = add i32 %216, %214
  %218 = getelementptr inbounds nuw i8, ptr %178, i64 28
  %219 = tail call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 17)
  %220 = mul i32 %219, 668265263
  %221 = load i32, ptr %218, align 4
  %222 = mul i32 %221, -1028477379
  %223 = add i32 %222, %220
  %224 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %225 = tail call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 17)
  %226 = mul i32 %225, 668265263
  %227 = add nsw i64 %177, -32
  %228 = icmp ugt i64 %227, 3
  br i1 %228, label %175, label %146

229:                                              ; preds = %169, %229
  %230 = phi i32 [ %288, %229 ], [ %171, %169 ]
  %231 = phi i64 [ %289, %229 ], [ %172, %169 ]
  %232 = phi ptr [ %282, %229 ], [ %173, %169 ]
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 1
  %234 = load i8, ptr %232, align 1
  %235 = zext i8 %234 to i32
  %236 = mul i32 %235, 374761393
  %237 = add i32 %236, %230
  %238 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 11)
  %239 = mul i32 %238, -1640531535
  %240 = getelementptr inbounds nuw i8, ptr %232, i64 2
  %241 = load i8, ptr %233, align 1
  %242 = zext i8 %241 to i32
  %243 = mul i32 %242, 374761393
  %244 = add i32 %243, %239
  %245 = tail call i32 @llvm.fshl.i32(i32 %244, i32 %244, i32 11)
  %246 = mul i32 %245, -1640531535
  %247 = getelementptr inbounds nuw i8, ptr %232, i64 3
  %248 = load i8, ptr %240, align 1
  %249 = zext i8 %248 to i32
  %250 = mul i32 %249, 374761393
  %251 = add i32 %250, %246
  %252 = tail call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 11)
  %253 = mul i32 %252, -1640531535
  %254 = getelementptr inbounds nuw i8, ptr %232, i64 4
  %255 = load i8, ptr %247, align 1
  %256 = zext i8 %255 to i32
  %257 = mul i32 %256, 374761393
  %258 = add i32 %257, %253
  %259 = tail call i32 @llvm.fshl.i32(i32 %258, i32 %258, i32 11)
  %260 = mul i32 %259, -1640531535
  %261 = getelementptr inbounds nuw i8, ptr %232, i64 5
  %262 = load i8, ptr %254, align 1
  %263 = zext i8 %262 to i32
  %264 = mul i32 %263, 374761393
  %265 = add i32 %264, %260
  %266 = tail call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 11)
  %267 = mul i32 %266, -1640531535
  %268 = getelementptr inbounds nuw i8, ptr %232, i64 6
  %269 = load i8, ptr %261, align 1
  %270 = zext i8 %269 to i32
  %271 = mul i32 %270, 374761393
  %272 = add i32 %271, %267
  %273 = tail call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 11)
  %274 = mul i32 %273, -1640531535
  %275 = getelementptr inbounds nuw i8, ptr %232, i64 7
  %276 = load i8, ptr %268, align 1
  %277 = zext i8 %276 to i32
  %278 = mul i32 %277, 374761393
  %279 = add i32 %278, %274
  %280 = tail call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 11)
  %281 = mul i32 %280, -1640531535
  %282 = getelementptr inbounds nuw i8, ptr %232, i64 8
  %283 = load i8, ptr %275, align 1
  %284 = zext i8 %283 to i32
  %285 = mul i32 %284, 374761393
  %286 = add i32 %285, %281
  %287 = tail call i32 @llvm.fshl.i32(i32 %286, i32 %286, i32 11)
  %288 = mul i32 %287, -1640531535
  %289 = add nsw i64 %231, -8
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %229

291:                                              ; preds = %169, %229, %146
  %292 = phi i32 [ %149, %146 ], [ %170, %169 ], [ %288, %229 ]
  %293 = lshr i32 %292, 15
  %294 = xor i32 %293, %292
  %295 = mul i32 %294, -2048144777
  %296 = lshr i32 %295, 13
  %297 = xor i32 %296, %295
  %298 = mul i32 %297, -1028477379
  %299 = lshr i32 %298, 16
  %300 = xor i32 %299, %298
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %300
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_16_0(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, 1640531535
  %6 = add i32 %1, -2048144777
  %7 = add i32 %1, 606290984
  %8 = load i32, ptr %0, align 1
  %9 = mul i32 %8, -2048144777
  %10 = add i32 %9, %7
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 13)
  %12 = mul i32 %11, -1640531535
  %13 = freeze i32 %12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 1
  %16 = mul i32 %15, -2048144777
  %17 = add i32 %16, %6
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 13)
  %19 = mul i32 %18, -1640531535
  %20 = freeze i32 %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load i32, ptr %21, align 1
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %1
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = freeze i32 %26
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %5
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  %35 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %36 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 7)
  %37 = add i32 %36, %35
  %38 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 12)
  %39 = add i32 %37, %38
  %40 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 18)
  %41 = add i32 %39, %40
  br label %44

42:                                               ; preds = %2
  %43 = add i32 %1, 374761393
  br label %44

44:                                               ; preds = %42, %4
  %45 = phi i32 [ 16, %4 ], [ 0, %42 ]
  %46 = phi i32 [ %41, %4 ], [ %43, %42 ]
  %47 = add i32 %45, %46
  %48 = lshr i32 %47, 15
  %49 = xor i32 %48, %47
  %50 = mul i32 %49, -2048144777
  %51 = lshr i32 %50, 13
  %52 = xor i32 %51, %50
  %53 = mul i32 %52, -1028477379
  %54 = lshr i32 %53, 16
  %55 = xor i32 %54, %53
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_20_13(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %5, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %6, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  %12 = icmp ne ptr %0, null
  br i1 %12, label %13, label %91

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %15 = load i32, ptr %0, align 1
  %16 = mul i32 %15, -2048144777
  %17 = add i32 %16, %4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 13)
  %19 = mul i32 %18, -1640531535
  %20 = freeze i32 %19
  store i32 %20, ptr %7, align 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %22 = load i32, ptr %21, align 1
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %5
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = freeze i32 %26
  store i32 %27, ptr %8, align 4
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %1
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  store i32 %34, ptr %9, align 8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %6
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  store i32 %41, ptr %10, align 4
  %42 = getelementptr i8, ptr %0, i64 16
  %43 = icmp ult ptr %42, %14
  br i1 %43, label %44, label %91

44:                                               ; preds = %13
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %46 = load i32, ptr %42, align 1
  store i32 %46, ptr %11, align 8
  store i32 4, ptr %45, align 8
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 33, ptr %3, align 8
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %48, align 4
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %50, ptr noundef nonnull readonly align 1 dereferenceable(12) %47, i64 12, i1 false)
  %51 = load i32, ptr %11, align 8
  %52 = mul i32 %51, -2048144777
  %53 = add i32 %52, %20
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  %56 = freeze i32 %55
  store i32 %56, ptr %7, align 8
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %58 = load i32, ptr %57, align 4
  %59 = mul i32 %58, -2048144777
  %60 = add i32 %59, %27
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13)
  %62 = mul i32 %61, -1640531535
  %63 = freeze i32 %62
  store i32 %63, ptr %8, align 4
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %65 = load i32, ptr %64, align 8
  %66 = mul i32 %65, -2048144777
  %67 = add i32 %66, %34
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 13)
  %69 = mul i32 %68, -1640531535
  %70 = freeze i32 %69
  store i32 %70, ptr %9, align 8
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %72 = load i32, ptr %71, align 4
  %73 = mul i32 %72, -2048144777
  %74 = add i32 %73, %41
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 13)
  %76 = mul i32 %75, -1640531535
  %77 = freeze i32 %76
  store i32 %77, ptr %10, align 4
  %78 = load i32, ptr %49, align 8
  %79 = sub i32 16, %78
  store i32 0, ptr %49, align 8
  %80 = icmp ult i32 %79, 13
  br i1 %80, label %81, label %107

81:                                               ; preds = %44
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %83 = zext nneg i32 %79 to i64
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 20
  %86 = ptrtoint ptr %82 to i64
  %87 = ptrtoint ptr %85 to i64
  %88 = sub i64 %86, %87
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %85, i64 %88, i1 false)
  %89 = trunc i64 %88 to i32
  store i32 %89, ptr %49, align 8
  %90 = and i32 %89, 15
  br label %107

91:                                               ; preds = %13, %2
  %92 = phi i32 [ %41, %13 ], [ %6, %2 ]
  %93 = phi i32 [ %34, %13 ], [ %1, %2 ]
  %94 = phi i32 [ %27, %13 ], [ %5, %2 ]
  %95 = phi i32 [ %20, %13 ], [ %4, %2 ]
  %96 = phi i32 [ 1, %13 ], [ 0, %2 ]
  %97 = phi i32 [ 33, %13 ], [ 13, %2 ]
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %97, ptr %3, align 8
  %99 = zext i1 %12 to i32
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %101 = or i32 %96, %99
  store i32 %101, ptr %100, align 4
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %11, ptr noundef nonnull readonly align 1 dereferenceable(13) %98, i64 13, i1 false)
  %103 = load i32, ptr %102, align 8
  %104 = add i32 %103, 13
  store i32 %104, ptr %102, align 8
  %105 = and i32 %104, 15
  %106 = icmp eq i32 %101, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %44, %81, %91
  %108 = phi i32 [ %95, %91 ], [ %56, %81 ], [ %56, %44 ]
  %109 = phi i32 [ %94, %91 ], [ %63, %81 ], [ %63, %44 ]
  %110 = phi i32 [ %93, %91 ], [ %70, %81 ], [ %70, %44 ]
  %111 = phi i32 [ %92, %91 ], [ %77, %81 ], [ %77, %44 ]
  %112 = phi i32 [ %105, %91 ], [ %90, %81 ], [ 0, %44 ]
  %113 = phi i32 [ %97, %91 ], [ 33, %81 ], [ 33, %44 ]
  %114 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 1)
  %115 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 7)
  %116 = add i32 %115, %114
  %117 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 12)
  %118 = add i32 %116, %117
  %119 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 18)
  %120 = add i32 %118, %119
  br label %123

121:                                              ; preds = %91
  %122 = add i32 %93, 374761393
  br label %123

123:                                              ; preds = %121, %107
  %124 = phi i32 [ %112, %107 ], [ %105, %121 ]
  %125 = phi i32 [ %113, %107 ], [ %97, %121 ]
  %126 = phi i32 [ %120, %107 ], [ %122, %121 ]
  %127 = add i32 %125, %126
  %128 = zext i32 %124 to i64
  %129 = icmp samesign ugt i32 %124, 3
  br i1 %129, label %130, label %159

130:                                              ; preds = %123
  %131 = add nsw i64 %128, -4
  %132 = lshr i64 %131, 2
  %133 = add nuw nsw i64 %132, 1
  %134 = and i64 %133, 7
  %135 = and i64 %131, 28
  %136 = icmp eq i64 %135, 28
  br i1 %136, label %151, label %137

137:                                              ; preds = %130, %137
  %138 = phi i32 [ %147, %137 ], [ %127, %130 ]
  %139 = phi i64 [ %148, %137 ], [ %128, %130 ]
  %140 = phi ptr [ %145, %137 ], [ %11, %130 ]
  %141 = phi i64 [ %149, %137 ], [ 0, %130 ]
  %142 = load i32, ptr %140, align 4
  %143 = mul i32 %142, -1028477379
  %144 = add i32 %143, %138
  %145 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %146 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 17)
  %147 = mul i32 %146, 668265263
  %148 = add nsw i64 %139, -4
  %149 = add i64 %141, 1
  %150 = icmp eq i64 %149, %134
  br i1 %150, label %151, label %137

151:                                              ; preds = %137, %130
  %152 = phi i32 [ %127, %130 ], [ %147, %137 ]
  %153 = phi i64 [ %128, %130 ], [ %148, %137 ]
  %154 = phi ptr [ %11, %130 ], [ %145, %137 ]
  %155 = phi ptr [ poison, %130 ], [ %145, %137 ]
  %156 = phi i32 [ poison, %130 ], [ %147, %137 ]
  %157 = phi i64 [ poison, %130 ], [ %148, %137 ]
  %158 = icmp ult i64 %131, 28
  br i1 %158, label %159, label %188

159:                                              ; preds = %151, %188, %123
  %160 = phi ptr [ %11, %123 ], [ %155, %151 ], [ %237, %188 ]
  %161 = phi i64 [ %128, %123 ], [ %157, %151 ], [ %240, %188 ]
  %162 = phi i32 [ %127, %123 ], [ %156, %151 ], [ %239, %188 ]
  %163 = icmp eq i64 %161, 0
  br i1 %163, label %304, label %164

164:                                              ; preds = %159
  %165 = and i64 %161, 7
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %182, label %167

167:                                              ; preds = %164, %167
  %168 = phi i32 [ %178, %167 ], [ %162, %164 ]
  %169 = phi i64 [ %179, %167 ], [ %161, %164 ]
  %170 = phi ptr [ %172, %167 ], [ %160, %164 ]
  %171 = phi i64 [ %180, %167 ], [ 0, %164 ]
  %172 = getelementptr inbounds nuw i8, ptr %170, i64 1
  %173 = load i8, ptr %170, align 1
  %174 = zext i8 %173 to i32
  %175 = mul i32 %174, 374761393
  %176 = add i32 %175, %168
  %177 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 11)
  %178 = mul i32 %177, -1640531535
  %179 = add nsw i64 %169, -1
  %180 = add i64 %171, 1
  %181 = icmp eq i64 %180, %165
  br i1 %181, label %182, label %167

182:                                              ; preds = %167, %164
  %183 = phi i32 [ poison, %164 ], [ %178, %167 ]
  %184 = phi i32 [ %162, %164 ], [ %178, %167 ]
  %185 = phi i64 [ %161, %164 ], [ %179, %167 ]
  %186 = phi ptr [ %160, %164 ], [ %172, %167 ]
  %187 = icmp ult i64 %161, 8
  br i1 %187, label %304, label %242

188:                                              ; preds = %151, %188
  %189 = phi i32 [ %239, %188 ], [ %152, %151 ]
  %190 = phi i64 [ %240, %188 ], [ %153, %151 ]
  %191 = phi ptr [ %237, %188 ], [ %154, %151 ]
  %192 = load i32, ptr %191, align 4
  %193 = mul i32 %192, -1028477379
  %194 = add i32 %193, %189
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %196 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 17)
  %197 = mul i32 %196, 668265263
  %198 = load i32, ptr %195, align 4
  %199 = mul i32 %198, -1028477379
  %200 = add i32 %199, %197
  %201 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %202 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 17)
  %203 = mul i32 %202, 668265263
  %204 = load i32, ptr %201, align 4
  %205 = mul i32 %204, -1028477379
  %206 = add i32 %205, %203
  %207 = getelementptr inbounds nuw i8, ptr %191, i64 12
  %208 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 17)
  %209 = mul i32 %208, 668265263
  %210 = load i32, ptr %207, align 4
  %211 = mul i32 %210, -1028477379
  %212 = add i32 %211, %209
  %213 = getelementptr inbounds nuw i8, ptr %191, i64 16
  %214 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 17)
  %215 = mul i32 %214, 668265263
  %216 = load i32, ptr %213, align 4
  %217 = mul i32 %216, -1028477379
  %218 = add i32 %217, %215
  %219 = getelementptr inbounds nuw i8, ptr %191, i64 20
  %220 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 17)
  %221 = mul i32 %220, 668265263
  %222 = load i32, ptr %219, align 4
  %223 = mul i32 %222, -1028477379
  %224 = add i32 %223, %221
  %225 = getelementptr inbounds nuw i8, ptr %191, i64 24
  %226 = tail call i32 @llvm.fshl.i32(i32 %224, i32 %224, i32 17)
  %227 = mul i32 %226, 668265263
  %228 = load i32, ptr %225, align 4
  %229 = mul i32 %228, -1028477379
  %230 = add i32 %229, %227
  %231 = getelementptr inbounds nuw i8, ptr %191, i64 28
  %232 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 17)
  %233 = mul i32 %232, 668265263
  %234 = load i32, ptr %231, align 4
  %235 = mul i32 %234, -1028477379
  %236 = add i32 %235, %233
  %237 = getelementptr inbounds nuw i8, ptr %191, i64 32
  %238 = tail call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 17)
  %239 = mul i32 %238, 668265263
  %240 = add nsw i64 %190, -32
  %241 = icmp ugt i64 %240, 3
  br i1 %241, label %188, label %159

242:                                              ; preds = %182, %242
  %243 = phi i32 [ %301, %242 ], [ %184, %182 ]
  %244 = phi i64 [ %302, %242 ], [ %185, %182 ]
  %245 = phi ptr [ %295, %242 ], [ %186, %182 ]
  %246 = getelementptr inbounds nuw i8, ptr %245, i64 1
  %247 = load i8, ptr %245, align 1
  %248 = zext i8 %247 to i32
  %249 = mul i32 %248, 374761393
  %250 = add i32 %249, %243
  %251 = tail call i32 @llvm.fshl.i32(i32 %250, i32 %250, i32 11)
  %252 = mul i32 %251, -1640531535
  %253 = getelementptr inbounds nuw i8, ptr %245, i64 2
  %254 = load i8, ptr %246, align 1
  %255 = zext i8 %254 to i32
  %256 = mul i32 %255, 374761393
  %257 = add i32 %256, %252
  %258 = tail call i32 @llvm.fshl.i32(i32 %257, i32 %257, i32 11)
  %259 = mul i32 %258, -1640531535
  %260 = getelementptr inbounds nuw i8, ptr %245, i64 3
  %261 = load i8, ptr %253, align 1
  %262 = zext i8 %261 to i32
  %263 = mul i32 %262, 374761393
  %264 = add i32 %263, %259
  %265 = tail call i32 @llvm.fshl.i32(i32 %264, i32 %264, i32 11)
  %266 = mul i32 %265, -1640531535
  %267 = getelementptr inbounds nuw i8, ptr %245, i64 4
  %268 = load i8, ptr %260, align 1
  %269 = zext i8 %268 to i32
  %270 = mul i32 %269, 374761393
  %271 = add i32 %270, %266
  %272 = tail call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 11)
  %273 = mul i32 %272, -1640531535
  %274 = getelementptr inbounds nuw i8, ptr %245, i64 5
  %275 = load i8, ptr %267, align 1
  %276 = zext i8 %275 to i32
  %277 = mul i32 %276, 374761393
  %278 = add i32 %277, %273
  %279 = tail call i32 @llvm.fshl.i32(i32 %278, i32 %278, i32 11)
  %280 = mul i32 %279, -1640531535
  %281 = getelementptr inbounds nuw i8, ptr %245, i64 6
  %282 = load i8, ptr %274, align 1
  %283 = zext i8 %282 to i32
  %284 = mul i32 %283, 374761393
  %285 = add i32 %284, %280
  %286 = tail call i32 @llvm.fshl.i32(i32 %285, i32 %285, i32 11)
  %287 = mul i32 %286, -1640531535
  %288 = getelementptr inbounds nuw i8, ptr %245, i64 7
  %289 = load i8, ptr %281, align 1
  %290 = zext i8 %289 to i32
  %291 = mul i32 %290, 374761393
  %292 = add i32 %291, %287
  %293 = tail call i32 @llvm.fshl.i32(i32 %292, i32 %292, i32 11)
  %294 = mul i32 %293, -1640531535
  %295 = getelementptr inbounds nuw i8, ptr %245, i64 8
  %296 = load i8, ptr %288, align 1
  %297 = zext i8 %296 to i32
  %298 = mul i32 %297, 374761393
  %299 = add i32 %298, %294
  %300 = tail call i32 @llvm.fshl.i32(i32 %299, i32 %299, i32 11)
  %301 = mul i32 %300, -1640531535
  %302 = add nsw i64 %244, -8
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %242

304:                                              ; preds = %182, %242, %159
  %305 = phi i32 [ %162, %159 ], [ %183, %182 ], [ %301, %242 ]
  %306 = lshr i32 %305, 15
  %307 = xor i32 %306, %305
  %308 = mul i32 %307, -2048144777
  %309 = lshr i32 %308, 13
  %310 = xor i32 %309, %308
  %311 = mul i32 %310, -1028477379
  %312 = lshr i32 %311, 16
  %313 = xor i32 %312, %311
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %313
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_31_0(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  store i64 4294967327, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = add i32 %1, 1640531535
  %12 = add i32 %1, -2048144777
  %13 = add i32 %1, 606290984
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 31
  %15 = load i32, ptr %0, align 1
  %16 = mul i32 %15, -2048144777
  %17 = add i32 %16, %13
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 13)
  %19 = mul i32 %18, -1640531535
  %20 = freeze i32 %19
  store i32 %20, ptr %10, align 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %22 = load i32, ptr %21, align 1
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %12
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = freeze i32 %26
  store i32 %27, ptr %9, align 4
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %1
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  store i32 %34, ptr %8, align 8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %11
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  store i32 %41, ptr %7, align 4
  %42 = getelementptr i8, ptr %0, i64 16
  %43 = icmp ult ptr %42, %14
  br i1 %43, label %44, label %48

44:                                               ; preds = %6
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %4, ptr noundef nonnull readonly align 1 dereferenceable(15) %42, i64 15, i1 false)
  store i32 15, ptr %45, align 8
  br label %48

46:                                               ; preds = %2
  %47 = add i32 %1, 374761393
  br label %161

48:                                               ; preds = %44, %6
  %49 = phi i64 [ 15, %44 ], [ 0, %6 ]
  %50 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 1)
  %51 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 7)
  %52 = add i32 %51, %50
  %53 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 12)
  %54 = add i32 %52, %53
  %55 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 18)
  %56 = add i32 %54, %55
  %57 = add i32 %56, 31
  br i1 %43, label %87, label %58

58:                                               ; preds = %87, %48
  %59 = phi ptr [ %4, %48 ], [ %94, %87 ]
  %60 = phi i64 [ %49, %48 ], [ %97, %87 ]
  %61 = phi i32 [ %57, %48 ], [ %96, %87 ]
  %62 = icmp eq i64 %60, 0
  br i1 %62, label %161, label %63

63:                                               ; preds = %58
  %64 = and i64 %60, 7
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %63, %66
  %67 = phi i32 [ %77, %66 ], [ %61, %63 ]
  %68 = phi i64 [ %78, %66 ], [ %60, %63 ]
  %69 = phi ptr [ %71, %66 ], [ %59, %63 ]
  %70 = phi i64 [ %79, %66 ], [ 0, %63 ]
  %71 = getelementptr inbounds nuw i8, ptr %69, i64 1
  %72 = load i8, ptr %69, align 1
  %73 = zext i8 %72 to i32
  %74 = mul i32 %73, 374761393
  %75 = add i32 %74, %67
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 11)
  %77 = mul i32 %76, -1640531535
  %78 = add nsw i64 %68, -1
  %79 = add i64 %70, 1
  %80 = icmp eq i64 %79, %64
  br i1 %80, label %81, label %66

81:                                               ; preds = %66, %63
  %82 = phi i32 [ poison, %63 ], [ %77, %66 ]
  %83 = phi i32 [ %61, %63 ], [ %77, %66 ]
  %84 = phi i64 [ %60, %63 ], [ %78, %66 ]
  %85 = phi ptr [ %59, %63 ], [ %71, %66 ]
  %86 = icmp ult i64 %60, 8
  br i1 %86, label %161, label %99

87:                                               ; preds = %48, %87
  %88 = phi i32 [ %96, %87 ], [ %57, %48 ]
  %89 = phi i64 [ %97, %87 ], [ %49, %48 ]
  %90 = phi ptr [ %94, %87 ], [ %4, %48 ]
  %91 = load i32, ptr %90, align 4
  %92 = mul i32 %91, -1028477379
  %93 = add i32 %92, %88
  %94 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %95 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 17)
  %96 = mul i32 %95, 668265263
  %97 = add nsw i64 %89, -4
  %98 = icmp ugt i64 %97, 3
  br i1 %98, label %87, label %58

99:                                               ; preds = %81, %99
  %100 = phi i32 [ %158, %99 ], [ %83, %81 ]
  %101 = phi i64 [ %159, %99 ], [ %84, %81 ]
  %102 = phi ptr [ %152, %99 ], [ %85, %81 ]
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 1
  %104 = load i8, ptr %102, align 1
  %105 = zext i8 %104 to i32
  %106 = mul i32 %105, 374761393
  %107 = add i32 %106, %100
  %108 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 11)
  %109 = mul i32 %108, -1640531535
  %110 = getelementptr inbounds nuw i8, ptr %102, i64 2
  %111 = load i8, ptr %103, align 1
  %112 = zext i8 %111 to i32
  %113 = mul i32 %112, 374761393
  %114 = add i32 %113, %109
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 11)
  %116 = mul i32 %115, -1640531535
  %117 = getelementptr inbounds nuw i8, ptr %102, i64 3
  %118 = load i8, ptr %110, align 1
  %119 = zext i8 %118 to i32
  %120 = mul i32 %119, 374761393
  %121 = add i32 %120, %116
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 11)
  %123 = mul i32 %122, -1640531535
  %124 = getelementptr inbounds nuw i8, ptr %102, i64 4
  %125 = load i8, ptr %117, align 1
  %126 = zext i8 %125 to i32
  %127 = mul i32 %126, 374761393
  %128 = add i32 %127, %123
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 11)
  %130 = mul i32 %129, -1640531535
  %131 = getelementptr inbounds nuw i8, ptr %102, i64 5
  %132 = load i8, ptr %124, align 1
  %133 = zext i8 %132 to i32
  %134 = mul i32 %133, 374761393
  %135 = add i32 %134, %130
  %136 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 11)
  %137 = mul i32 %136, -1640531535
  %138 = getelementptr inbounds nuw i8, ptr %102, i64 6
  %139 = load i8, ptr %131, align 1
  %140 = zext i8 %139 to i32
  %141 = mul i32 %140, 374761393
  %142 = add i32 %141, %137
  %143 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 11)
  %144 = mul i32 %143, -1640531535
  %145 = getelementptr inbounds nuw i8, ptr %102, i64 7
  %146 = load i8, ptr %138, align 1
  %147 = zext i8 %146 to i32
  %148 = mul i32 %147, 374761393
  %149 = add i32 %148, %144
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 11)
  %151 = mul i32 %150, -1640531535
  %152 = getelementptr inbounds nuw i8, ptr %102, i64 8
  %153 = load i8, ptr %145, align 1
  %154 = zext i8 %153 to i32
  %155 = mul i32 %154, 374761393
  %156 = add i32 %155, %151
  %157 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 11)
  %158 = mul i32 %157, -1640531535
  %159 = add nsw i64 %101, -8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %99

161:                                              ; preds = %81, %99, %46, %58
  %162 = phi i32 [ %61, %58 ], [ %47, %46 ], [ %82, %81 ], [ %158, %99 ]
  %163 = lshr i32 %162, 15
  %164 = xor i32 %163, %162
  %165 = mul i32 %164, -2048144777
  %166 = lshr i32 %165, 13
  %167 = xor i32 %166, %165
  %168 = mul i32 %167, -1028477379
  %169 = lshr i32 %168, 16
  %170 = xor i32 %169, %168
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %170
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_17_30(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %15 = load i32, ptr %0, align 1
  %16 = mul i32 %15, -2048144777
  %17 = add i32 %16, %4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 13)
  %19 = mul i32 %18, -1640531535
  %20 = freeze i32 %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %22 = load i32, ptr %21, align 1
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %5
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = freeze i32 %26
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %1
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %6
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  %42 = getelementptr i8, ptr %0, i64 16
  %43 = icmp ult ptr %42, %14
  br i1 %43, label %52, label %44

44:                                               ; preds = %2, %13
  %45 = phi i32 [ %41, %13 ], [ %6, %2 ]
  %46 = phi i32 [ %34, %13 ], [ %1, %2 ]
  %47 = phi i32 [ %27, %13 ], [ %5, %2 ]
  %48 = phi i32 [ %20, %13 ], [ %4, %2 ]
  %49 = phi i32 [ 47, %13 ], [ 30, %2 ]
  store i32 %49, ptr %3, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %50, align 4
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %91

52:                                               ; preds = %13
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %54 = load i8, ptr %42, align 1
  store i8 %54, ptr %11, align 8
  store i32 1, ptr %53, align 8
  store i32 47, ptr %3, align 8
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %55, align 4
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %58, ptr noundef nonnull readonly align 1 dereferenceable(15) %57, i64 15, i1 false)
  %59 = load i32, ptr %11, align 8
  %60 = mul i32 %59, -2048144777
  %61 = add i32 %60, %20
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13)
  %63 = mul i32 %62, -1640531535
  %64 = freeze i32 %63
  store i32 %64, ptr %7, align 8
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %66, -2048144777
  %68 = add i32 %67, %27
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 13)
  %70 = mul i32 %69, -1640531535
  %71 = freeze i32 %70
  store i32 %71, ptr %8, align 4
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %73 = load i32, ptr %72, align 8
  %74 = mul i32 %73, -2048144777
  %75 = add i32 %74, %34
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 13)
  %77 = mul i32 %76, -1640531535
  %78 = freeze i32 %77
  store i32 %78, ptr %9, align 8
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %80 = load i32, ptr %79, align 4
  %81 = mul i32 %80, -2048144777
  %82 = add i32 %81, %41
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  %85 = freeze i32 %84
  store i32 %85, ptr %10, align 4
  %86 = load i32, ptr %56, align 8
  %87 = sub i32 16, %86
  %88 = zext i32 %87 to i64
  %89 = add nuw nsw i64 %88, 17
  store i32 0, ptr %56, align 8
  %90 = icmp ugt i32 %87, 14
  br i1 %90, label %128, label %91

91:                                               ; preds = %44, %52
  %92 = phi ptr [ %56, %52 ], [ %51, %44 ]
  %93 = phi i32 [ 47, %52 ], [ %49, %44 ]
  %94 = phi i32 [ %85, %52 ], [ %45, %44 ]
  %95 = phi i32 [ %78, %52 ], [ %46, %44 ]
  %96 = phi i32 [ %71, %52 ], [ %47, %44 ]
  %97 = phi i32 [ %64, %52 ], [ %48, %44 ]
  %98 = phi i64 [ %89, %52 ], [ 17, %44 ]
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 %98
  %100 = load i32, ptr %99, align 1
  %101 = mul i32 %100, -2048144777
  %102 = add i32 %101, %97
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 13)
  %104 = mul i32 %103, -1640531535
  %105 = freeze i32 %104
  %106 = getelementptr inbounds nuw i8, ptr %99, i64 4
  %107 = load i32, ptr %106, align 1
  %108 = mul i32 %107, -2048144777
  %109 = add i32 %108, %96
  %110 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 13)
  %111 = mul i32 %110, -1640531535
  %112 = freeze i32 %111
  %113 = getelementptr inbounds nuw i8, ptr %99, i64 8
  %114 = load i32, ptr %113, align 1
  %115 = mul i32 %114, -2048144777
  %116 = add i32 %115, %95
  %117 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 13)
  %118 = mul i32 %117, -1640531535
  %119 = freeze i32 %118
  %120 = getelementptr inbounds nuw i8, ptr %99, i64 12
  %121 = load i32, ptr %120, align 1
  %122 = mul i32 %121, -2048144777
  %123 = add i32 %122, %94
  %124 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 13)
  %125 = mul i32 %124, -1640531535
  %126 = freeze i32 %125
  %127 = add nuw nsw i64 %98, 16
  store i32 %105, ptr %7, align 8
  store i32 %112, ptr %8, align 4
  store i32 %119, ptr %9, align 8
  store i32 %126, ptr %10, align 4
  br label %128

128:                                              ; preds = %91, %52
  %129 = phi ptr [ %56, %52 ], [ %92, %91 ]
  %130 = phi i32 [ 47, %52 ], [ %93, %91 ]
  %131 = phi i32 [ %85, %52 ], [ %126, %91 ]
  %132 = phi i32 [ %78, %52 ], [ %119, %91 ]
  %133 = phi i32 [ %71, %52 ], [ %112, %91 ]
  %134 = phi i32 [ %64, %52 ], [ %105, %91 ]
  %135 = phi i64 [ %89, %52 ], [ %127, %91 ]
  %136 = icmp samesign ult i64 %135, 47
  br i1 %136, label %137, label %142

137:                                              ; preds = %128
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 %135
  %139 = sub nuw nsw i64 47, %135
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %138, i64 %139, i1 false)
  %140 = trunc nuw nsw i64 %139 to i32
  store i32 %140, ptr %129, align 4
  %141 = and i32 %140, 15
  br label %142

142:                                              ; preds = %128, %137
  %143 = phi i32 [ 0, %128 ], [ %141, %137 ]
  %144 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 7)
  %145 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 1)
  %146 = add i32 %144, %145
  %147 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 12)
  %148 = add i32 %146, %147
  %149 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 18)
  %150 = add i32 %148, %149
  %151 = add i32 %130, %150
  %152 = zext nneg i32 %143 to i64
  %153 = icmp samesign ugt i32 %143, 3
  br i1 %153, label %154, label %183

154:                                              ; preds = %142
  %155 = add nsw i64 %152, -4
  %156 = lshr i64 %155, 2
  %157 = add nuw nsw i64 %156, 1
  %158 = and i64 %157, 7
  %159 = and i64 %155, 28
  %160 = icmp eq i64 %159, 28
  br i1 %160, label %175, label %161

161:                                              ; preds = %154, %161
  %162 = phi i32 [ %171, %161 ], [ %151, %154 ]
  %163 = phi i64 [ %172, %161 ], [ %152, %154 ]
  %164 = phi ptr [ %169, %161 ], [ %11, %154 ]
  %165 = phi i64 [ %173, %161 ], [ 0, %154 ]
  %166 = load i32, ptr %164, align 4
  %167 = mul i32 %166, -1028477379
  %168 = add i32 %167, %162
  %169 = getelementptr inbounds nuw i8, ptr %164, i64 4
  %170 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 17)
  %171 = mul i32 %170, 668265263
  %172 = add nsw i64 %163, -4
  %173 = add i64 %165, 1
  %174 = icmp eq i64 %173, %158
  br i1 %174, label %175, label %161

175:                                              ; preds = %161, %154
  %176 = phi i32 [ %151, %154 ], [ %171, %161 ]
  %177 = phi i64 [ %152, %154 ], [ %172, %161 ]
  %178 = phi ptr [ %11, %154 ], [ %169, %161 ]
  %179 = phi ptr [ poison, %154 ], [ %169, %161 ]
  %180 = phi i32 [ poison, %154 ], [ %171, %161 ]
  %181 = phi i64 [ poison, %154 ], [ %172, %161 ]
  %182 = icmp ult i64 %155, 28
  br i1 %182, label %183, label %212

183:                                              ; preds = %175, %212, %142
  %184 = phi ptr [ %11, %142 ], [ %179, %175 ], [ %261, %212 ]
  %185 = phi i64 [ %152, %142 ], [ %181, %175 ], [ %264, %212 ]
  %186 = phi i32 [ %151, %142 ], [ %180, %175 ], [ %263, %212 ]
  %187 = icmp eq i64 %185, 0
  br i1 %187, label %328, label %188

188:                                              ; preds = %183
  %189 = and i64 %185, 7
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %206, label %191

191:                                              ; preds = %188, %191
  %192 = phi i32 [ %202, %191 ], [ %186, %188 ]
  %193 = phi i64 [ %203, %191 ], [ %185, %188 ]
  %194 = phi ptr [ %196, %191 ], [ %184, %188 ]
  %195 = phi i64 [ %204, %191 ], [ 0, %188 ]
  %196 = getelementptr inbounds nuw i8, ptr %194, i64 1
  %197 = load i8, ptr %194, align 1
  %198 = zext i8 %197 to i32
  %199 = mul i32 %198, 374761393
  %200 = add i32 %199, %192
  %201 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 11)
  %202 = mul i32 %201, -1640531535
  %203 = add nsw i64 %193, -1
  %204 = add i64 %195, 1
  %205 = icmp eq i64 %204, %189
  br i1 %205, label %206, label %191

206:                                              ; preds = %191, %188
  %207 = phi i32 [ poison, %188 ], [ %202, %191 ]
  %208 = phi i32 [ %186, %188 ], [ %202, %191 ]
  %209 = phi i64 [ %185, %188 ], [ %203, %191 ]
  %210 = phi ptr [ %184, %188 ], [ %196, %191 ]
  %211 = icmp ult i64 %185, 8
  br i1 %211, label %328, label %266

212:                                              ; preds = %175, %212
  %213 = phi i32 [ %263, %212 ], [ %176, %175 ]
  %214 = phi i64 [ %264, %212 ], [ %177, %175 ]
  %215 = phi ptr [ %261, %212 ], [ %178, %175 ]
  %216 = load i32, ptr %215, align 4
  %217 = mul i32 %216, -1028477379
  %218 = add i32 %217, %213
  %219 = getelementptr inbounds nuw i8, ptr %215, i64 4
  %220 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 17)
  %221 = mul i32 %220, 668265263
  %222 = load i32, ptr %219, align 4
  %223 = mul i32 %222, -1028477379
  %224 = add i32 %223, %221
  %225 = getelementptr inbounds nuw i8, ptr %215, i64 8
  %226 = tail call i32 @llvm.fshl.i32(i32 %224, i32 %224, i32 17)
  %227 = mul i32 %226, 668265263
  %228 = load i32, ptr %225, align 4
  %229 = mul i32 %228, -1028477379
  %230 = add i32 %229, %227
  %231 = getelementptr inbounds nuw i8, ptr %215, i64 12
  %232 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 17)
  %233 = mul i32 %232, 668265263
  %234 = load i32, ptr %231, align 4
  %235 = mul i32 %234, -1028477379
  %236 = add i32 %235, %233
  %237 = getelementptr inbounds nuw i8, ptr %215, i64 16
  %238 = tail call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 17)
  %239 = mul i32 %238, 668265263
  %240 = load i32, ptr %237, align 4
  %241 = mul i32 %240, -1028477379
  %242 = add i32 %241, %239
  %243 = getelementptr inbounds nuw i8, ptr %215, i64 20
  %244 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 17)
  %245 = mul i32 %244, 668265263
  %246 = load i32, ptr %243, align 4
  %247 = mul i32 %246, -1028477379
  %248 = add i32 %247, %245
  %249 = getelementptr inbounds nuw i8, ptr %215, i64 24
  %250 = tail call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 17)
  %251 = mul i32 %250, 668265263
  %252 = load i32, ptr %249, align 4
  %253 = mul i32 %252, -1028477379
  %254 = add i32 %253, %251
  %255 = getelementptr inbounds nuw i8, ptr %215, i64 28
  %256 = tail call i32 @llvm.fshl.i32(i32 %254, i32 %254, i32 17)
  %257 = mul i32 %256, 668265263
  %258 = load i32, ptr %255, align 4
  %259 = mul i32 %258, -1028477379
  %260 = add i32 %259, %257
  %261 = getelementptr inbounds nuw i8, ptr %215, i64 32
  %262 = tail call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 17)
  %263 = mul i32 %262, 668265263
  %264 = add nsw i64 %214, -32
  %265 = icmp ugt i64 %264, 3
  br i1 %265, label %212, label %183

266:                                              ; preds = %206, %266
  %267 = phi i32 [ %325, %266 ], [ %208, %206 ]
  %268 = phi i64 [ %326, %266 ], [ %209, %206 ]
  %269 = phi ptr [ %319, %266 ], [ %210, %206 ]
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 1
  %271 = load i8, ptr %269, align 1
  %272 = zext i8 %271 to i32
  %273 = mul i32 %272, 374761393
  %274 = add i32 %273, %267
  %275 = tail call i32 @llvm.fshl.i32(i32 %274, i32 %274, i32 11)
  %276 = mul i32 %275, -1640531535
  %277 = getelementptr inbounds nuw i8, ptr %269, i64 2
  %278 = load i8, ptr %270, align 1
  %279 = zext i8 %278 to i32
  %280 = mul i32 %279, 374761393
  %281 = add i32 %280, %276
  %282 = tail call i32 @llvm.fshl.i32(i32 %281, i32 %281, i32 11)
  %283 = mul i32 %282, -1640531535
  %284 = getelementptr inbounds nuw i8, ptr %269, i64 3
  %285 = load i8, ptr %277, align 1
  %286 = zext i8 %285 to i32
  %287 = mul i32 %286, 374761393
  %288 = add i32 %287, %283
  %289 = tail call i32 @llvm.fshl.i32(i32 %288, i32 %288, i32 11)
  %290 = mul i32 %289, -1640531535
  %291 = getelementptr inbounds nuw i8, ptr %269, i64 4
  %292 = load i8, ptr %284, align 1
  %293 = zext i8 %292 to i32
  %294 = mul i32 %293, 374761393
  %295 = add i32 %294, %290
  %296 = tail call i32 @llvm.fshl.i32(i32 %295, i32 %295, i32 11)
  %297 = mul i32 %296, -1640531535
  %298 = getelementptr inbounds nuw i8, ptr %269, i64 5
  %299 = load i8, ptr %291, align 1
  %300 = zext i8 %299 to i32
  %301 = mul i32 %300, 374761393
  %302 = add i32 %301, %297
  %303 = tail call i32 @llvm.fshl.i32(i32 %302, i32 %302, i32 11)
  %304 = mul i32 %303, -1640531535
  %305 = getelementptr inbounds nuw i8, ptr %269, i64 6
  %306 = load i8, ptr %298, align 1
  %307 = zext i8 %306 to i32
  %308 = mul i32 %307, 374761393
  %309 = add i32 %308, %304
  %310 = tail call i32 @llvm.fshl.i32(i32 %309, i32 %309, i32 11)
  %311 = mul i32 %310, -1640531535
  %312 = getelementptr inbounds nuw i8, ptr %269, i64 7
  %313 = load i8, ptr %305, align 1
  %314 = zext i8 %313 to i32
  %315 = mul i32 %314, 374761393
  %316 = add i32 %315, %311
  %317 = tail call i32 @llvm.fshl.i32(i32 %316, i32 %316, i32 11)
  %318 = mul i32 %317, -1640531535
  %319 = getelementptr inbounds nuw i8, ptr %269, i64 8
  %320 = load i8, ptr %312, align 1
  %321 = zext i8 %320 to i32
  %322 = mul i32 %321, 374761393
  %323 = add i32 %322, %318
  %324 = tail call i32 @llvm.fshl.i32(i32 %323, i32 %323, i32 11)
  %325 = mul i32 %324, -1640531535
  %326 = add nsw i64 %268, -8
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %266

328:                                              ; preds = %206, %266, %183
  %329 = phi i32 [ %186, %183 ], [ %207, %206 ], [ %325, %266 ]
  %330 = lshr i32 %329, 15
  %331 = xor i32 %330, %329
  %332 = mul i32 %331, -2048144777
  %333 = lshr i32 %332, 13
  %334 = xor i32 %333, %332
  %335 = mul i32 %334, -1028477379
  %336 = lshr i32 %335, 16
  %337 = xor i32 %336, %335
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %337
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !8}
!11 = !{i64 2148096159}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
