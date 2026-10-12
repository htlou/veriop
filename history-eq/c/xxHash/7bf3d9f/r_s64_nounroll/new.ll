; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7bf3d9f/wrap_s64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7bf3d9f/wrap_s64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH64_state_s = type { i64, i64, i64, i64, i64, [4 x i64], i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_0_0(ptr noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, 2870177450012600261
  %4 = lshr i64 %3, 33
  %5 = xor i64 %4, %3
  %6 = mul i64 %5, -4417276706812531889
  %7 = lshr i64 %6, 29
  %8 = xor i64 %7, %6
  %9 = mul i64 %8, 1609587929392839161
  %10 = lshr i64 %9, 32
  %11 = xor i64 %10, %9
  ret i64 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_s64_1_0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add i64 %1, 2870177450012600261
  br label %14

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = add i64 %1, 2870177450012600262
  %11 = xor i64 %9, %10
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 11)
  %13 = mul i64 %12, -7046029288634856825
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i64 [ %5, %4 ], [ %13, %6 ]
  %16 = lshr i64 %15, 33
  %17 = xor i64 %16, %15
  %18 = mul i64 %17, -4417276706812531889
  %19 = lshr i64 %18, 29
  %20 = xor i64 %19, %18
  %21 = mul i64 %20, 1609587929392839161
  %22 = lshr i64 %21, 32
  %23 = xor i64 %22, %21
  ret i64 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_7_8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %11, ptr noundef nonnull readonly align 1 dereferenceable(7) %0, i64 7, i1 false)
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi i32 [ 0, %2 ], [ 7, %13 ]
  %16 = phi i64 [ 8, %2 ], [ 15, %13 ]
  store i64 %16, ptr %3, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 %18
  %21 = load i64, ptr %19, align 1
  store i64 %21, ptr %20, align 1
  %22 = or disjoint i32 %15, 8
  store i32 %22, ptr %17, align 8
  %23 = add i64 %1, 2870177450012600261
  %24 = add i64 %23, %16
  %25 = load i64, ptr %11, align 8
  %26 = mul i64 %25, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %30 = xor i64 %28, %24
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = add nsw i64 %16, -8
  %35 = icmp samesign ugt i64 %34, 3
  br i1 %35, label %36, label %46

36:                                               ; preds = %14
  %37 = load i32, ptr %29, align 8
  %38 = zext i32 %37 to i64
  %39 = mul i64 %38, -7046029288634856825
  %40 = xor i64 %39, %33
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %42 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 23)
  %43 = mul i64 %42, -4417276706812531889
  %44 = add i64 %43, 1609587929392839161
  %45 = add nsw i64 %16, -12
  br label %46

46:                                               ; preds = %36, %14
  %47 = phi i64 [ %45, %36 ], [ %34, %14 ]
  %48 = phi ptr [ %41, %36 ], [ %29, %14 ]
  %49 = phi i64 [ %44, %36 ], [ %33, %14 ]
  %50 = icmp eq i64 %47, 0
  br i1 %50, label %137, label %51

51:                                               ; preds = %46
  %52 = and i64 %47, 7
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %65, %54 ], [ %49, %51 ]
  %56 = phi ptr [ %59, %54 ], [ %48, %51 ]
  %57 = phi i64 [ %66, %54 ], [ %47, %51 ]
  %58 = phi i64 [ %67, %54 ], [ 0, %51 ]
  %59 = getelementptr inbounds nuw i8, ptr %56, i64 1
  %60 = load i8, ptr %56, align 1
  %61 = zext i8 %60 to i64
  %62 = mul i64 %61, 2870177450012600261
  %63 = xor i64 %62, %55
  %64 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 11)
  %65 = mul i64 %64, -7046029288634856825
  %66 = add nsw i64 %57, -1
  %67 = add i64 %58, 1
  %68 = icmp eq i64 %67, %52
  br i1 %68, label %69, label %54

69:                                               ; preds = %54, %51
  %70 = phi i64 [ poison, %51 ], [ %65, %54 ]
  %71 = phi i64 [ %49, %51 ], [ %65, %54 ]
  %72 = phi ptr [ %48, %51 ], [ %59, %54 ]
  %73 = phi i64 [ %47, %51 ], [ %66, %54 ]
  %74 = icmp ult i64 %47, 8
  br i1 %74, label %137, label %75

75:                                               ; preds = %69, %75
  %76 = phi i64 [ %134, %75 ], [ %71, %69 ]
  %77 = phi ptr [ %128, %75 ], [ %72, %69 ]
  %78 = phi i64 [ %135, %75 ], [ %73, %69 ]
  %79 = getelementptr inbounds nuw i8, ptr %77, i64 1
  %80 = load i8, ptr %77, align 1
  %81 = zext i8 %80 to i64
  %82 = mul i64 %81, 2870177450012600261
  %83 = xor i64 %82, %76
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 11)
  %85 = mul i64 %84, -7046029288634856825
  %86 = getelementptr inbounds nuw i8, ptr %77, i64 2
  %87 = load i8, ptr %79, align 1
  %88 = zext i8 %87 to i64
  %89 = mul i64 %88, 2870177450012600261
  %90 = xor i64 %89, %85
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 11)
  %92 = mul i64 %91, -7046029288634856825
  %93 = getelementptr inbounds nuw i8, ptr %77, i64 3
  %94 = load i8, ptr %86, align 1
  %95 = zext i8 %94 to i64
  %96 = mul i64 %95, 2870177450012600261
  %97 = xor i64 %96, %92
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 11)
  %99 = mul i64 %98, -7046029288634856825
  %100 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %101 = load i8, ptr %93, align 1
  %102 = zext i8 %101 to i64
  %103 = mul i64 %102, 2870177450012600261
  %104 = xor i64 %103, %99
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 11)
  %106 = mul i64 %105, -7046029288634856825
  %107 = getelementptr inbounds nuw i8, ptr %77, i64 5
  %108 = load i8, ptr %100, align 1
  %109 = zext i8 %108 to i64
  %110 = mul i64 %109, 2870177450012600261
  %111 = xor i64 %110, %106
  %112 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 11)
  %113 = mul i64 %112, -7046029288634856825
  %114 = getelementptr inbounds nuw i8, ptr %77, i64 6
  %115 = load i8, ptr %107, align 1
  %116 = zext i8 %115 to i64
  %117 = mul i64 %116, 2870177450012600261
  %118 = xor i64 %117, %113
  %119 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 11)
  %120 = mul i64 %119, -7046029288634856825
  %121 = getelementptr inbounds nuw i8, ptr %77, i64 7
  %122 = load i8, ptr %114, align 1
  %123 = zext i8 %122 to i64
  %124 = mul i64 %123, 2870177450012600261
  %125 = xor i64 %124, %120
  %126 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 11)
  %127 = mul i64 %126, -7046029288634856825
  %128 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %129 = load i8, ptr %121, align 1
  %130 = zext i8 %129 to i64
  %131 = mul i64 %130, 2870177450012600261
  %132 = xor i64 %131, %127
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 11)
  %134 = mul i64 %133, -7046029288634856825
  %135 = add nsw i64 %78, -8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %75

137:                                              ; preds = %69, %75, %46
  %138 = phi i64 [ %49, %46 ], [ %70, %69 ], [ %134, %75 ]
  %139 = lshr i64 %138, 33
  %140 = xor i64 %139, %138
  %141 = mul i64 %140, -4417276706812531889
  %142 = lshr i64 %141, 29
  %143 = xor i64 %142, %141
  %144 = mul i64 %143, 1609587929392839161
  %145 = lshr i64 %144, 32
  %146 = xor i64 %145, %144
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %146
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_5_10(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %11, ptr noundef nonnull readonly align 1 dereferenceable(5) %0, i64 5, i1 false)
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi i32 [ 0, %2 ], [ 5, %13 ]
  %16 = phi i64 [ 10, %2 ], [ 15, %13 ]
  store i64 %16, ptr %3, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %20, ptr noundef nonnull readonly align 1 dereferenceable(10) %19, i64 10, i1 false)
  %21 = or disjoint i32 %15, 10
  store i32 %21, ptr %17, align 8
  %22 = add i64 %1, 2870177450012600261
  %23 = add i64 %22, %16
  %24 = load i64, ptr %11, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %29 = xor i64 %27, %23
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = add nsw i64 %16, -8
  %34 = icmp samesign ugt i64 %33, 3
  br i1 %34, label %35, label %45

35:                                               ; preds = %14
  %36 = load i32, ptr %28, align 8
  %37 = zext i32 %36 to i64
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %38, %32
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %41 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 23)
  %42 = mul i64 %41, -4417276706812531889
  %43 = add i64 %42, 1609587929392839161
  %44 = add nsw i64 %16, -12
  br label %45

45:                                               ; preds = %14, %35
  %46 = phi i64 [ %32, %14 ], [ %43, %35 ]
  %47 = phi ptr [ %28, %14 ], [ %40, %35 ]
  %48 = phi i64 [ %33, %14 ], [ %44, %35 ]
  %49 = add nsw i64 %48, -1
  %50 = and i64 %48, 7
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %45, %52
  %53 = phi i64 [ %63, %52 ], [ %46, %45 ]
  %54 = phi ptr [ %57, %52 ], [ %47, %45 ]
  %55 = phi i64 [ %64, %52 ], [ %48, %45 ]
  %56 = phi i64 [ %65, %52 ], [ 0, %45 ]
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 1
  %58 = load i8, ptr %54, align 1
  %59 = zext i8 %58 to i64
  %60 = mul i64 %59, 2870177450012600261
  %61 = xor i64 %60, %53
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 11)
  %63 = mul i64 %62, -7046029288634856825
  %64 = add nsw i64 %55, -1
  %65 = add i64 %56, 1
  %66 = icmp eq i64 %65, %50
  br i1 %66, label %67, label %52

67:                                               ; preds = %52, %45
  %68 = phi i64 [ poison, %45 ], [ %63, %52 ]
  %69 = phi i64 [ %46, %45 ], [ %63, %52 ]
  %70 = phi ptr [ %47, %45 ], [ %57, %52 ]
  %71 = phi i64 [ %48, %45 ], [ %64, %52 ]
  %72 = icmp ult i64 %49, 7
  br i1 %72, label %135, label %73

73:                                               ; preds = %67, %73
  %74 = phi i64 [ %132, %73 ], [ %69, %67 ]
  %75 = phi ptr [ %126, %73 ], [ %70, %67 ]
  %76 = phi i64 [ %133, %73 ], [ %71, %67 ]
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 1
  %78 = load i8, ptr %75, align 1
  %79 = zext i8 %78 to i64
  %80 = mul i64 %79, 2870177450012600261
  %81 = xor i64 %80, %74
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 11)
  %83 = mul i64 %82, -7046029288634856825
  %84 = getelementptr inbounds nuw i8, ptr %75, i64 2
  %85 = load i8, ptr %77, align 1
  %86 = zext i8 %85 to i64
  %87 = mul i64 %86, 2870177450012600261
  %88 = xor i64 %87, %83
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 11)
  %90 = mul i64 %89, -7046029288634856825
  %91 = getelementptr inbounds nuw i8, ptr %75, i64 3
  %92 = load i8, ptr %84, align 1
  %93 = zext i8 %92 to i64
  %94 = mul i64 %93, 2870177450012600261
  %95 = xor i64 %94, %90
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 11)
  %97 = mul i64 %96, -7046029288634856825
  %98 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %99 = load i8, ptr %91, align 1
  %100 = zext i8 %99 to i64
  %101 = mul i64 %100, 2870177450012600261
  %102 = xor i64 %101, %97
  %103 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %102, i64 11)
  %104 = mul i64 %103, -7046029288634856825
  %105 = getelementptr inbounds nuw i8, ptr %75, i64 5
  %106 = load i8, ptr %98, align 1
  %107 = zext i8 %106 to i64
  %108 = mul i64 %107, 2870177450012600261
  %109 = xor i64 %108, %104
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 11)
  %111 = mul i64 %110, -7046029288634856825
  %112 = getelementptr inbounds nuw i8, ptr %75, i64 6
  %113 = load i8, ptr %105, align 1
  %114 = zext i8 %113 to i64
  %115 = mul i64 %114, 2870177450012600261
  %116 = xor i64 %115, %111
  %117 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 11)
  %118 = mul i64 %117, -7046029288634856825
  %119 = getelementptr inbounds nuw i8, ptr %75, i64 7
  %120 = load i8, ptr %112, align 1
  %121 = zext i8 %120 to i64
  %122 = mul i64 %121, 2870177450012600261
  %123 = xor i64 %122, %118
  %124 = tail call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 11)
  %125 = mul i64 %124, -7046029288634856825
  %126 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %127 = load i8, ptr %119, align 1
  %128 = zext i8 %127 to i64
  %129 = mul i64 %128, 2870177450012600261
  %130 = xor i64 %129, %125
  %131 = tail call i64 @llvm.fshl.i64(i64 %130, i64 %130, i64 11)
  %132 = mul i64 %131, -7046029288634856825
  %133 = add nsw i64 %76, -8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %73

135:                                              ; preds = %73, %67
  %136 = phi i64 [ %68, %67 ], [ %132, %73 ]
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %144
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_31_0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 16, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = add i64 %1, 2870177450012600261
  br label %74

15:                                               ; preds = %2
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 31, ptr %3, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(31) %16, ptr noundef nonnull readonly align 1 dereferenceable(31) %0, i64 31, i1 false)
  store i32 31, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %19 = load i64, ptr %18, align 8
  %20 = mul i64 %19, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %24 = load i64, ptr %23, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = load i64, ptr %16, align 8
  %29 = mul i64 %28, -4417276706812531889
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %1, 2870177450012600292
  %33 = xor i64 %31, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = xor i64 %27, %36
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 27)
  %39 = mul i64 %38, -7046029288634856825
  %40 = add i64 %39, -8796714831421723037
  %41 = xor i64 %22, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 27)
  %43 = mul i64 %42, -7046029288634856825
  %44 = add i64 %43, -8796714831421723037
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %46 = load i32, ptr %45, align 8
  %47 = zext i32 %46 to i64
  %48 = mul i64 %47, -7046029288634856825
  %49 = xor i64 %48, %44
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %51 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 23)
  %52 = mul i64 %51, -4417276706812531889
  %53 = add i64 %52, 1609587929392839161
  %54 = getelementptr inbounds nuw i8, ptr %50, i64 1
  %55 = load i8, ptr %50, align 1
  %56 = zext i8 %55 to i64
  %57 = mul i64 %56, 2870177450012600261
  %58 = xor i64 %57, %53
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 11)
  %60 = mul i64 %59, -7046029288634856825
  %61 = getelementptr inbounds nuw i8, ptr %50, i64 2
  %62 = load i8, ptr %54, align 1
  %63 = zext i8 %62 to i64
  %64 = mul i64 %63, 2870177450012600261
  %65 = xor i64 %64, %60
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 11)
  %67 = mul i64 %66, -7046029288634856825
  %68 = load i8, ptr %61, align 1
  %69 = zext i8 %68 to i64
  %70 = mul i64 %69, 2870177450012600261
  %71 = xor i64 %70, %67
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 11)
  %73 = mul i64 %72, -7046029288634856825
  br label %74

74:                                               ; preds = %15, %13
  %75 = phi i64 [ %14, %13 ], [ %73, %15 ]
  %76 = lshr i64 %75, 33
  %77 = xor i64 %76, %75
  %78 = mul i64 %77, -4417276706812531889
  %79 = lshr i64 %78, 29
  %80 = xor i64 %79, %78
  %81 = mul i64 %80, 1609587929392839161
  %82 = lshr i64 %81, 32
  %83 = xor i64 %82, %81
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %83
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_13_18(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %11, ptr noundef nonnull readonly align 1 dereferenceable(13) %0, i64 13, i1 false)
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 0, %2 ], [ 13, %13 ]
  %16 = phi i64 [ 18, %2 ], [ 31, %13 ]
  store i64 %16, ptr %3, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %20, ptr noundef nonnull readonly align 1 dereferenceable(18) %19, i64 18, i1 false)
  %21 = or disjoint i32 %15, 18
  store i32 %21, ptr %17, align 8
  %22 = add i64 %1, 2870177450012600261
  %23 = add i64 %22, %16
  %24 = load i64, ptr %11, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %29 = xor i64 %27, %23
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 27)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %31, -8796714831421723037
  %33 = add nsw i64 %16, -8
  %34 = icmp samesign ugt i64 %33, 7
  br i1 %34, label %35, label %58

35:                                               ; preds = %14
  %36 = load i64, ptr %28, align 8
  %37 = mul i64 %36, -4417276706812531889
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %41 = xor i64 %39, %32
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 27)
  %43 = mul i64 %42, -7046029288634856825
  %44 = add i64 %43, -8796714831421723037
  %45 = add nsw i64 %16, -16
  %46 = icmp samesign ugt i64 %45, 7
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = load i64, ptr %40, align 8
  %49 = mul i64 %48, -4417276706812531889
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %53 = xor i64 %51, %44
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 27)
  %55 = mul i64 %54, -7046029288634856825
  %56 = add i64 %55, -8796714831421723037
  %57 = add nsw i64 %16, -24
  br label %58

58:                                               ; preds = %47, %35, %14
  %59 = phi ptr [ %11, %14 ], [ %28, %35 ], [ %40, %47 ]
  %60 = phi i64 [ %16, %14 ], [ %33, %35 ], [ %45, %47 ]
  %61 = phi ptr [ %28, %14 ], [ %40, %35 ], [ %52, %47 ]
  %62 = phi i64 [ %32, %14 ], [ %44, %35 ], [ %56, %47 ]
  %63 = phi i64 [ %33, %14 ], [ %45, %35 ], [ %57, %47 ]
  %64 = icmp samesign ugt i64 %63, 3
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load i32, ptr %61, align 4
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, -7046029288634856825
  %69 = xor i64 %68, %62
  %70 = getelementptr inbounds nuw i8, ptr %59, i64 12
  %71 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 23)
  %72 = mul i64 %71, -4417276706812531889
  %73 = add i64 %72, 1609587929392839161
  %74 = add nsw i64 %60, -12
  br label %75

75:                                               ; preds = %65, %58
  %76 = phi i64 [ %74, %65 ], [ %63, %58 ]
  %77 = phi ptr [ %70, %65 ], [ %61, %58 ]
  %78 = phi i64 [ %73, %65 ], [ %62, %58 ]
  %79 = icmp eq i64 %76, 0
  br i1 %79, label %166, label %80

80:                                               ; preds = %75
  %81 = and i64 %76, 7
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %80, %83
  %84 = phi i64 [ %94, %83 ], [ %78, %80 ]
  %85 = phi ptr [ %88, %83 ], [ %77, %80 ]
  %86 = phi i64 [ %95, %83 ], [ %76, %80 ]
  %87 = phi i64 [ %96, %83 ], [ 0, %80 ]
  %88 = getelementptr inbounds nuw i8, ptr %85, i64 1
  %89 = load i8, ptr %85, align 1
  %90 = zext i8 %89 to i64
  %91 = mul i64 %90, 2870177450012600261
  %92 = xor i64 %91, %84
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 11)
  %94 = mul i64 %93, -7046029288634856825
  %95 = add nsw i64 %86, -1
  %96 = add i64 %87, 1
  %97 = icmp eq i64 %96, %81
  br i1 %97, label %98, label %83

98:                                               ; preds = %83, %80
  %99 = phi i64 [ poison, %80 ], [ %94, %83 ]
  %100 = phi i64 [ %78, %80 ], [ %94, %83 ]
  %101 = phi ptr [ %77, %80 ], [ %88, %83 ]
  %102 = phi i64 [ %76, %80 ], [ %95, %83 ]
  %103 = icmp ult i64 %76, 8
  br i1 %103, label %166, label %104

104:                                              ; preds = %98, %104
  %105 = phi i64 [ %163, %104 ], [ %100, %98 ]
  %106 = phi ptr [ %157, %104 ], [ %101, %98 ]
  %107 = phi i64 [ %164, %104 ], [ %102, %98 ]
  %108 = getelementptr inbounds nuw i8, ptr %106, i64 1
  %109 = load i8, ptr %106, align 1
  %110 = zext i8 %109 to i64
  %111 = mul i64 %110, 2870177450012600261
  %112 = xor i64 %111, %105
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 11)
  %114 = mul i64 %113, -7046029288634856825
  %115 = getelementptr inbounds nuw i8, ptr %106, i64 2
  %116 = load i8, ptr %108, align 1
  %117 = zext i8 %116 to i64
  %118 = mul i64 %117, 2870177450012600261
  %119 = xor i64 %118, %114
  %120 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 11)
  %121 = mul i64 %120, -7046029288634856825
  %122 = getelementptr inbounds nuw i8, ptr %106, i64 3
  %123 = load i8, ptr %115, align 1
  %124 = zext i8 %123 to i64
  %125 = mul i64 %124, 2870177450012600261
  %126 = xor i64 %125, %121
  %127 = tail call i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 11)
  %128 = mul i64 %127, -7046029288634856825
  %129 = getelementptr inbounds nuw i8, ptr %106, i64 4
  %130 = load i8, ptr %122, align 1
  %131 = zext i8 %130 to i64
  %132 = mul i64 %131, 2870177450012600261
  %133 = xor i64 %132, %128
  %134 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 11)
  %135 = mul i64 %134, -7046029288634856825
  %136 = getelementptr inbounds nuw i8, ptr %106, i64 5
  %137 = load i8, ptr %129, align 1
  %138 = zext i8 %137 to i64
  %139 = mul i64 %138, 2870177450012600261
  %140 = xor i64 %139, %135
  %141 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 11)
  %142 = mul i64 %141, -7046029288634856825
  %143 = getelementptr inbounds nuw i8, ptr %106, i64 6
  %144 = load i8, ptr %136, align 1
  %145 = zext i8 %144 to i64
  %146 = mul i64 %145, 2870177450012600261
  %147 = xor i64 %146, %142
  %148 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 11)
  %149 = mul i64 %148, -7046029288634856825
  %150 = getelementptr inbounds nuw i8, ptr %106, i64 7
  %151 = load i8, ptr %143, align 1
  %152 = zext i8 %151 to i64
  %153 = mul i64 %152, 2870177450012600261
  %154 = xor i64 %153, %149
  %155 = tail call i64 @llvm.fshl.i64(i64 %154, i64 %154, i64 11)
  %156 = mul i64 %155, -7046029288634856825
  %157 = getelementptr inbounds nuw i8, ptr %106, i64 8
  %158 = load i8, ptr %150, align 1
  %159 = zext i8 %158 to i64
  %160 = mul i64 %159, 2870177450012600261
  %161 = xor i64 %160, %156
  %162 = tail call i64 @llvm.fshl.i64(i64 %161, i64 %161, i64 11)
  %163 = mul i64 %162, -7046029288634856825
  %164 = add nsw i64 %107, -8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %104

166:                                              ; preds = %98, %104, %75
  %167 = phi i64 [ %78, %75 ], [ %99, %98 ], [ %163, %104 ]
  %168 = lshr i64 %167, 33
  %169 = xor i64 %168, %167
  %170 = mul i64 %169, -4417276706812531889
  %171 = lshr i64 %170, 29
  %172 = xor i64 %171, %170
  %173 = mul i64 %172, 1609587929392839161
  %174 = lshr i64 %173, 32
  %175 = xor i64 %174, %173
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %175
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_10_30(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %85, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %11, ptr noundef nonnull readonly align 1 dereferenceable(10) %0, i64 10, i1 false)
  store i32 10, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i64 40, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %17, ptr noundef nonnull readonly align 1 dereferenceable(22) %15, i64 22, i1 false)
  %18 = load i64, ptr %11, align 8
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %4
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  store i64 %22, ptr %7, align 8
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %24 = load i64, ptr %23, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %5
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  store i64 %28, ptr %8, align 8
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %30 = load i64, ptr %29, align 8
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %1
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  store i64 %34, ptr %9, align 8
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %36 = load i64, ptr %35, align 8
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %6
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  store i64 %40, ptr %10, align 8
  %41 = load i32, ptr %16, align 8
  %42 = sub i32 32, %41
  store i32 0, ptr %16, align 8
  %43 = icmp ult i32 %42, 30
  br i1 %43, label %44, label %53

44:                                               ; preds = %13
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 10
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %47 to i64
  %51 = sub i64 %49, %50
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %47, i64 %51, i1 false)
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %16, align 8
  br label %53

53:                                               ; preds = %13, %44
  %54 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 1)
  %55 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %56 = add i64 %55, %54
  %57 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 12)
  %58 = add i64 %56, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 18)
  %60 = add i64 %58, %59
  %61 = mul i64 %21, -2381459717836149591
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 31)
  %63 = mul i64 %62, -7046029288634856825
  %64 = xor i64 %60, %63
  %65 = mul i64 %64, -7046029288634856825
  %66 = add i64 %65, -8796714831421723037
  %67 = mul i64 %27, -2381459717836149591
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = xor i64 %66, %69
  %71 = mul i64 %70, -7046029288634856825
  %72 = add i64 %71, -8796714831421723037
  %73 = mul i64 %33, -2381459717836149591
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  %76 = xor i64 %72, %75
  %77 = mul i64 %76, -7046029288634856825
  %78 = add i64 %77, -8796714831421723037
  %79 = mul i64 %39, -2381459717836149591
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 31)
  %81 = mul i64 %80, -7046029288634856825
  %82 = xor i64 %78, %81
  %83 = mul i64 %82, -7046029288634856825
  %84 = add i64 %83, -8796714831421723037
  br label %91

85:                                               ; preds = %2
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i64 30, ptr %3, align 8
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %11, ptr noundef nonnull readonly align 1 dereferenceable(30) %86, i64 30, i1 false)
  %88 = load i32, ptr %87, align 8
  %89 = add i32 %88, 30
  store i32 %89, ptr %87, align 8
  %90 = add i64 %1, 2870177450012600261
  br label %91

91:                                               ; preds = %53, %85
  %92 = phi i64 [ 40, %53 ], [ 30, %85 ]
  %93 = phi i64 [ %84, %53 ], [ %90, %85 ]
  %94 = add i64 %93, %92
  %95 = and i64 %92, 30
  br label %96

96:                                               ; preds = %91, %96
  %97 = phi i64 [ %108, %96 ], [ %94, %91 ]
  %98 = phi ptr [ %104, %96 ], [ %11, %91 ]
  %99 = phi i64 [ %109, %96 ], [ %95, %91 ]
  %100 = load i64, ptr %98, align 8
  %101 = mul i64 %100, -4417276706812531889
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 31)
  %103 = mul i64 %102, -7046029288634856825
  %104 = getelementptr inbounds nuw i8, ptr %98, i64 8
  %105 = xor i64 %103, %97
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 27)
  %107 = mul i64 %106, -7046029288634856825
  %108 = add i64 %107, -8796714831421723037
  %109 = add nsw i64 %99, -8
  %110 = icmp ugt i64 %109, 7
  br i1 %110, label %96, label %111

111:                                              ; preds = %96
  %112 = icmp samesign ugt i64 %109, 3
  br i1 %112, label %113, label %123

113:                                              ; preds = %111
  %114 = load i32, ptr %104, align 4
  %115 = zext i32 %114 to i64
  %116 = mul i64 %115, -7046029288634856825
  %117 = xor i64 %116, %108
  %118 = getelementptr inbounds nuw i8, ptr %98, i64 12
  %119 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 23)
  %120 = mul i64 %119, -4417276706812531889
  %121 = add i64 %120, 1609587929392839161
  %122 = add nsw i64 %99, -12
  br label %123

123:                                              ; preds = %113, %111
  %124 = phi i64 [ %122, %113 ], [ %109, %111 ]
  %125 = phi ptr [ %118, %113 ], [ %104, %111 ]
  %126 = phi i64 [ %121, %113 ], [ %108, %111 ]
  %127 = icmp eq i64 %124, 0
  br i1 %127, label %214, label %128

128:                                              ; preds = %123
  %129 = and i64 %124, 7
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %128, %131
  %132 = phi i64 [ %142, %131 ], [ %126, %128 ]
  %133 = phi ptr [ %136, %131 ], [ %125, %128 ]
  %134 = phi i64 [ %143, %131 ], [ %124, %128 ]
  %135 = phi i64 [ %144, %131 ], [ 0, %128 ]
  %136 = getelementptr inbounds nuw i8, ptr %133, i64 1
  %137 = load i8, ptr %133, align 1
  %138 = zext i8 %137 to i64
  %139 = mul i64 %138, 2870177450012600261
  %140 = xor i64 %139, %132
  %141 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 11)
  %142 = mul i64 %141, -7046029288634856825
  %143 = add nsw i64 %134, -1
  %144 = add i64 %135, 1
  %145 = icmp eq i64 %144, %129
  br i1 %145, label %146, label %131

146:                                              ; preds = %131, %128
  %147 = phi i64 [ poison, %128 ], [ %142, %131 ]
  %148 = phi i64 [ %126, %128 ], [ %142, %131 ]
  %149 = phi ptr [ %125, %128 ], [ %136, %131 ]
  %150 = phi i64 [ %124, %128 ], [ %143, %131 ]
  %151 = icmp ult i64 %124, 8
  br i1 %151, label %214, label %152

152:                                              ; preds = %146, %152
  %153 = phi i64 [ %211, %152 ], [ %148, %146 ]
  %154 = phi ptr [ %205, %152 ], [ %149, %146 ]
  %155 = phi i64 [ %212, %152 ], [ %150, %146 ]
  %156 = getelementptr inbounds nuw i8, ptr %154, i64 1
  %157 = load i8, ptr %154, align 1
  %158 = zext i8 %157 to i64
  %159 = mul i64 %158, 2870177450012600261
  %160 = xor i64 %159, %153
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 11)
  %162 = mul i64 %161, -7046029288634856825
  %163 = getelementptr inbounds nuw i8, ptr %154, i64 2
  %164 = load i8, ptr %156, align 1
  %165 = zext i8 %164 to i64
  %166 = mul i64 %165, 2870177450012600261
  %167 = xor i64 %166, %162
  %168 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 11)
  %169 = mul i64 %168, -7046029288634856825
  %170 = getelementptr inbounds nuw i8, ptr %154, i64 3
  %171 = load i8, ptr %163, align 1
  %172 = zext i8 %171 to i64
  %173 = mul i64 %172, 2870177450012600261
  %174 = xor i64 %173, %169
  %175 = tail call i64 @llvm.fshl.i64(i64 %174, i64 %174, i64 11)
  %176 = mul i64 %175, -7046029288634856825
  %177 = getelementptr inbounds nuw i8, ptr %154, i64 4
  %178 = load i8, ptr %170, align 1
  %179 = zext i8 %178 to i64
  %180 = mul i64 %179, 2870177450012600261
  %181 = xor i64 %180, %176
  %182 = tail call i64 @llvm.fshl.i64(i64 %181, i64 %181, i64 11)
  %183 = mul i64 %182, -7046029288634856825
  %184 = getelementptr inbounds nuw i8, ptr %154, i64 5
  %185 = load i8, ptr %177, align 1
  %186 = zext i8 %185 to i64
  %187 = mul i64 %186, 2870177450012600261
  %188 = xor i64 %187, %183
  %189 = tail call i64 @llvm.fshl.i64(i64 %188, i64 %188, i64 11)
  %190 = mul i64 %189, -7046029288634856825
  %191 = getelementptr inbounds nuw i8, ptr %154, i64 6
  %192 = load i8, ptr %184, align 1
  %193 = zext i8 %192 to i64
  %194 = mul i64 %193, 2870177450012600261
  %195 = xor i64 %194, %190
  %196 = tail call i64 @llvm.fshl.i64(i64 %195, i64 %195, i64 11)
  %197 = mul i64 %196, -7046029288634856825
  %198 = getelementptr inbounds nuw i8, ptr %154, i64 7
  %199 = load i8, ptr %191, align 1
  %200 = zext i8 %199 to i64
  %201 = mul i64 %200, 2870177450012600261
  %202 = xor i64 %201, %197
  %203 = tail call i64 @llvm.fshl.i64(i64 %202, i64 %202, i64 11)
  %204 = mul i64 %203, -7046029288634856825
  %205 = getelementptr inbounds nuw i8, ptr %154, i64 8
  %206 = load i8, ptr %198, align 1
  %207 = zext i8 %206 to i64
  %208 = mul i64 %207, 2870177450012600261
  %209 = xor i64 %208, %204
  %210 = tail call i64 @llvm.fshl.i64(i64 %209, i64 %209, i64 11)
  %211 = mul i64 %210, -7046029288634856825
  %212 = add nsw i64 %155, -8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %152

214:                                              ; preds = %146, %152, %123
  %215 = phi i64 [ %126, %123 ], [ %147, %146 ], [ %211, %152 ]
  %216 = lshr i64 %215, 33
  %217 = xor i64 %216, %215
  %218 = mul i64 %217, -4417276706812531889
  %219 = lshr i64 %218, 29
  %220 = xor i64 %219, %218
  %221 = mul i64 %220, 1609587929392839161
  %222 = lshr i64 %221, 32
  %223 = xor i64 %222, %221
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %223
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_s64_32_0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, 7046029288634856825
  %6 = add i64 %1, -4417276706812531889
  %7 = add i64 %1, 6983438078262162902
  %8 = load i64, ptr %0, align 1
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, %7
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = mul i64 %14, -4417276706812531889
  %16 = add i64 %15, %6
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i64, ptr %19, align 1
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %21, %1
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i64, ptr %25, align 1
  %27 = mul i64 %26, -4417276706812531889
  %28 = add i64 %27, %5
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 1)
  %32 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 7)
  %33 = add i64 %32, %31
  %34 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 12)
  %35 = add i64 %33, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 18)
  %37 = add i64 %35, %36
  %38 = mul i64 %11, -2381459717836149591
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %37, %40
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  %44 = mul i64 %17, -2381459717836149591
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, -7046029288634856825
  %49 = add i64 %48, -8796714831421723037
  %50 = mul i64 %23, -2381459717836149591
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %49, %52
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %54, -8796714831421723037
  %56 = mul i64 %29, -2381459717836149591
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %55, %58
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %60, -8796714831421723037
  br label %64

62:                                               ; preds = %2
  %63 = add i64 %1, 2870177450012600261
  br label %64

64:                                               ; preds = %4, %62
  %65 = phi i64 [ 32, %4 ], [ 0, %62 ]
  %66 = phi i64 [ %61, %4 ], [ %63, %62 ]
  %67 = add i64 %66, %65
  %68 = lshr i64 %67, 33
  %69 = xor i64 %68, %67
  %70 = mul i64 %69, -4417276706812531889
  %71 = lshr i64 %70, 29
  %72 = xor i64 %71, %70
  %73 = mul i64 %72, 1609587929392839161
  %74 = lshr i64 %73, 32
  %75 = xor i64 %74, %73
  ret i64 %75
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_20_13(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca { [4 x i64], i32, i32, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %82, label %5

5:                                                ; preds = %2
  %6 = add i64 %1, 7046029288634856825
  %7 = add i64 %1, -4417276706812531889
  %8 = add i64 %1, 6983438078262162902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(20) %0, i64 20, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 20, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 1 dereferenceable(12) %10, i64 12, i1 false)
  %12 = load i64, ptr %3, align 8
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %13, %8
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %7
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %24 = load i64, ptr %23, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %1
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %30 = load i64, ptr %29, align 8
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %6
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %36 = load i32, ptr %35, align 8
  %37 = sub i32 32, %36
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %38, align 8
  %39 = icmp ult i32 %37, 13
  br i1 %39, label %40, label %50

40:                                               ; preds = %5
  %41 = zext nneg i32 %37 to i64
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 20
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %43 to i64
  %47 = sub i64 %45, %46
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull readonly align 1 %43, i64 %47, i1 false)
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %48, ptr %49, align 8
  br label %50

50:                                               ; preds = %5, %40
  %51 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 1)
  %52 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 7)
  %53 = add i64 %52, %51
  %54 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 12)
  %55 = add i64 %53, %54
  %56 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 18)
  %57 = add i64 %55, %56
  %58 = mul i64 %15, -2381459717836149591
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %57, %60
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = mul i64 %21, -2381459717836149591
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %63, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = mul i64 %27, -2381459717836149591
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %69, %72
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %74, -8796714831421723037
  %76 = mul i64 %33, -2381459717836149591
  %77 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 31)
  %78 = mul i64 %77, -7046029288634856825
  %79 = xor i64 %75, %78
  %80 = mul i64 %79, -7046029288634856825
  %81 = add i64 %80, -8796714831421723004
  br label %106

82:                                               ; preds = %2
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %3, ptr noundef nonnull align 1 dereferenceable(13) %83, i64 13, i1 false)
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %85 = load i32, ptr %84, align 8
  %86 = add i32 %85, 13
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %86, ptr %87, align 8
  %88 = add i64 %1, 2870177450012600274
  %89 = load i64, ptr %3, align 8
  %90 = mul i64 %89, -4417276706812531889
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 31)
  %92 = mul i64 %91, -7046029288634856825
  %93 = xor i64 %92, %88
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 27)
  %95 = mul i64 %94, -7046029288634856825
  %96 = add i64 %95, -8796714831421723037
  %97 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %98 = load i32, ptr %97, align 8
  %99 = zext i32 %98 to i64
  %100 = mul i64 %99, -7046029288634856825
  %101 = xor i64 %100, %96
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %103 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 23)
  %104 = mul i64 %103, -4417276706812531889
  %105 = add i64 %104, 1609587929392839161
  br label %106

106:                                              ; preds = %50, %82
  %107 = phi i64 [ %105, %82 ], [ %81, %50 ]
  %108 = phi ptr [ %102, %82 ], [ %3, %50 ]
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i64
  %111 = mul i64 %110, 2870177450012600261
  %112 = xor i64 %111, %107
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 11)
  %114 = mul i64 %113, -7046029288634856825
  %115 = lshr i64 %114, 33
  %116 = xor i64 %115, %114
  %117 = mul i64 %116, -4417276706812531889
  %118 = lshr i64 %117, 29
  %119 = xor i64 %118, %117
  %120 = mul i64 %119, 1609587929392839161
  %121 = lshr i64 %120, 32
  %122 = xor i64 %121, %120
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i64 %122
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_40_23(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %16 = load i64, ptr %15, align 1
  %17 = mul i64 %16, -4417276706812531889
  %18 = add i64 %17, %6
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = load i64, ptr %21, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = add i64 %23, %1
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 1
  %29 = mul i64 %28, -4417276706812531889
  %30 = add i64 %29, %5
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = load i64, ptr %0, align 1
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, %4
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  %38 = getelementptr i8, ptr %0, i64 32
  store i64 %37, ptr %7, align 8
  store i64 %32, ptr %8, align 8
  store i64 %26, ptr %9, align 8
  store i64 %20, ptr %10, align 8
  %39 = icmp ult ptr %38, %14
  br i1 %39, label %40, label %43

40:                                               ; preds = %13
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %42 = load i64, ptr %38, align 1
  store i64 %42, ptr %11, align 8
  store i32 8, ptr %41, align 8
  br label %43

43:                                               ; preds = %2, %13, %40
  %44 = phi i64 [ %6, %2 ], [ %20, %13 ], [ %20, %40 ]
  %45 = phi i64 [ %1, %2 ], [ %26, %13 ], [ %26, %40 ]
  %46 = phi i64 [ %5, %2 ], [ %32, %13 ], [ %32, %40 ]
  %47 = phi i64 [ %4, %2 ], [ %37, %13 ], [ %37, %40 ]
  %48 = phi i64 [ 0, %2 ], [ 0, %13 ], [ 8, %40 ]
  %49 = phi i64 [ 23, %2 ], [ 63, %13 ], [ 63, %40 ]
  store i64 %49, ptr %3, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = getelementptr inbounds nuw i8, ptr %11, i64 %48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %52, ptr noundef nonnull readonly align 1 dereferenceable(23) %51, i64 23, i1 false)
  %53 = load i32, ptr %50, align 8
  %54 = add i32 %53, 23
  store i32 %54, ptr %50, align 8
  %55 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 1)
  %56 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 7)
  %57 = add i64 %56, %55
  %58 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 12)
  %59 = add i64 %57, %58
  %60 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 18)
  %61 = add i64 %59, %60
  %62 = mul i64 %47, -4417276706812531889
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  %68 = mul i64 %46, -4417276706812531889
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = xor i64 %67, %70
  %72 = mul i64 %71, -7046029288634856825
  %73 = add i64 %72, -8796714831421723037
  %74 = mul i64 %45, -4417276706812531889
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 31)
  %76 = mul i64 %75, -7046029288634856825
  %77 = xor i64 %73, %76
  %78 = mul i64 %77, -7046029288634856825
  %79 = add i64 %78, -8796714831421723037
  %80 = mul i64 %44, -4417276706812531889
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %79, %82
  %84 = mul i64 %83, -7046029288634856825
  %85 = add i64 %84, -8796714831421723037
  %86 = add i64 %85, %49
  %87 = and i64 %49, 31
  br label %88

88:                                               ; preds = %43, %88
  %89 = phi i64 [ %100, %88 ], [ %86, %43 ]
  %90 = phi ptr [ %96, %88 ], [ %11, %43 ]
  %91 = phi i64 [ %101, %88 ], [ %87, %43 ]
  %92 = load i64, ptr %90, align 8
  %93 = mul i64 %92, -4417276706812531889
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %97 = xor i64 %95, %89
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 27)
  %99 = mul i64 %98, -7046029288634856825
  %100 = add i64 %99, -8796714831421723037
  %101 = add nsw i64 %91, -8
  %102 = icmp ugt i64 %101, 7
  br i1 %102, label %88, label %103

103:                                              ; preds = %88
  %104 = icmp samesign ugt i64 %101, 3
  br i1 %104, label %105, label %115

105:                                              ; preds = %103
  %106 = load i32, ptr %96, align 4
  %107 = zext i32 %106 to i64
  %108 = mul i64 %107, -7046029288634856825
  %109 = xor i64 %108, %100
  %110 = getelementptr inbounds nuw i8, ptr %90, i64 12
  %111 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 23)
  %112 = mul i64 %111, -4417276706812531889
  %113 = add i64 %112, 1609587929392839161
  %114 = add nsw i64 %91, -12
  br label %115

115:                                              ; preds = %105, %103
  %116 = phi i64 [ %114, %105 ], [ %101, %103 ]
  %117 = phi ptr [ %110, %105 ], [ %96, %103 ]
  %118 = phi i64 [ %113, %105 ], [ %100, %103 ]
  %119 = icmp eq i64 %116, 0
  br i1 %119, label %206, label %120

120:                                              ; preds = %115
  %121 = and i64 %116, 7
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %138, label %123

123:                                              ; preds = %120, %123
  %124 = phi i64 [ %134, %123 ], [ %118, %120 ]
  %125 = phi ptr [ %128, %123 ], [ %117, %120 ]
  %126 = phi i64 [ %135, %123 ], [ %116, %120 ]
  %127 = phi i64 [ %136, %123 ], [ 0, %120 ]
  %128 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %129 = load i8, ptr %125, align 1
  %130 = zext i8 %129 to i64
  %131 = mul i64 %130, 2870177450012600261
  %132 = xor i64 %131, %124
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 11)
  %134 = mul i64 %133, -7046029288634856825
  %135 = add nsw i64 %126, -1
  %136 = add i64 %127, 1
  %137 = icmp eq i64 %136, %121
  br i1 %137, label %138, label %123

138:                                              ; preds = %123, %120
  %139 = phi i64 [ poison, %120 ], [ %134, %123 ]
  %140 = phi i64 [ %118, %120 ], [ %134, %123 ]
  %141 = phi ptr [ %117, %120 ], [ %128, %123 ]
  %142 = phi i64 [ %116, %120 ], [ %135, %123 ]
  %143 = icmp ult i64 %116, 8
  br i1 %143, label %206, label %144

144:                                              ; preds = %138, %144
  %145 = phi i64 [ %203, %144 ], [ %140, %138 ]
  %146 = phi ptr [ %197, %144 ], [ %141, %138 ]
  %147 = phi i64 [ %204, %144 ], [ %142, %138 ]
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %149 = load i8, ptr %146, align 1
  %150 = zext i8 %149 to i64
  %151 = mul i64 %150, 2870177450012600261
  %152 = xor i64 %151, %145
  %153 = tail call i64 @llvm.fshl.i64(i64 %152, i64 %152, i64 11)
  %154 = mul i64 %153, -7046029288634856825
  %155 = getelementptr inbounds nuw i8, ptr %146, i64 2
  %156 = load i8, ptr %148, align 1
  %157 = zext i8 %156 to i64
  %158 = mul i64 %157, 2870177450012600261
  %159 = xor i64 %158, %154
  %160 = tail call i64 @llvm.fshl.i64(i64 %159, i64 %159, i64 11)
  %161 = mul i64 %160, -7046029288634856825
  %162 = getelementptr inbounds nuw i8, ptr %146, i64 3
  %163 = load i8, ptr %155, align 1
  %164 = zext i8 %163 to i64
  %165 = mul i64 %164, 2870177450012600261
  %166 = xor i64 %165, %161
  %167 = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 11)
  %168 = mul i64 %167, -7046029288634856825
  %169 = getelementptr inbounds nuw i8, ptr %146, i64 4
  %170 = load i8, ptr %162, align 1
  %171 = zext i8 %170 to i64
  %172 = mul i64 %171, 2870177450012600261
  %173 = xor i64 %172, %168
  %174 = tail call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 11)
  %175 = mul i64 %174, -7046029288634856825
  %176 = getelementptr inbounds nuw i8, ptr %146, i64 5
  %177 = load i8, ptr %169, align 1
  %178 = zext i8 %177 to i64
  %179 = mul i64 %178, 2870177450012600261
  %180 = xor i64 %179, %175
  %181 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 11)
  %182 = mul i64 %181, -7046029288634856825
  %183 = getelementptr inbounds nuw i8, ptr %146, i64 6
  %184 = load i8, ptr %176, align 1
  %185 = zext i8 %184 to i64
  %186 = mul i64 %185, 2870177450012600261
  %187 = xor i64 %186, %182
  %188 = tail call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 11)
  %189 = mul i64 %188, -7046029288634856825
  %190 = getelementptr inbounds nuw i8, ptr %146, i64 7
  %191 = load i8, ptr %183, align 1
  %192 = zext i8 %191 to i64
  %193 = mul i64 %192, 2870177450012600261
  %194 = xor i64 %193, %189
  %195 = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 11)
  %196 = mul i64 %195, -7046029288634856825
  %197 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %198 = load i8, ptr %190, align 1
  %199 = zext i8 %198 to i64
  %200 = mul i64 %199, 2870177450012600261
  %201 = xor i64 %200, %196
  %202 = tail call i64 @llvm.fshl.i64(i64 %201, i64 %201, i64 11)
  %203 = mul i64 %202, -7046029288634856825
  %204 = add nsw i64 %147, -8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %144

206:                                              ; preds = %138, %144, %115
  %207 = phi i64 [ %118, %115 ], [ %139, %138 ], [ %203, %144 ]
  %208 = lshr i64 %207, 33
  %209 = xor i64 %208, %207
  %210 = mul i64 %209, -4417276706812531889
  %211 = lshr i64 %210, 29
  %212 = xor i64 %211, %210
  %213 = mul i64 %212, 1609587929392839161
  %214 = lshr i64 %213, 32
  %215 = xor i64 %214, %213
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %215
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_3_60(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  store i64 60, ptr %3, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 72
  br label %48

15:                                               ; preds = %2
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %11, ptr noundef nonnull readonly align 1 dereferenceable(3) %0, i64 3, i1 false)
  store i32 3, ptr %16, align 8
  store i64 63, ptr %3, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %19, ptr noundef nonnull readonly align 1 dereferenceable(29) %18, i64 29, i1 false)
  %20 = load i64, ptr %11, align 8
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %21, %4
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  store i64 %24, ptr %7, align 8
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %26 = load i64, ptr %25, align 8
  %27 = mul i64 %26, -4417276706812531889
  %28 = add i64 %27, %5
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  store i64 %30, ptr %8, align 8
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %32 = load i64, ptr %31, align 8
  %33 = mul i64 %32, -4417276706812531889
  %34 = add i64 %33, %1
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  store i64 %36, ptr %9, align 8
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %38 = load i64, ptr %37, align 8
  %39 = mul i64 %38, -4417276706812531889
  %40 = add i64 %39, %6
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %42 = mul i64 %41, -7046029288634856825
  store i64 %42, ptr %10, align 8
  %43 = load i32, ptr %17, align 8
  %44 = sub i32 32, %43
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %45, 3
  store i32 0, ptr %17, align 8
  %47 = icmp ugt i32 %44, 28
  br i1 %47, label %81, label %48

48:                                               ; preds = %13, %15
  %49 = phi i64 [ 3, %13 ], [ %46, %15 ]
  %50 = phi i64 [ %4, %13 ], [ %24, %15 ]
  %51 = phi i64 [ %5, %13 ], [ %30, %15 ]
  %52 = phi i64 [ %1, %13 ], [ %36, %15 ]
  %53 = phi i64 [ %6, %13 ], [ %42, %15 ]
  %54 = phi i64 [ 60, %13 ], [ 63, %15 ]
  %55 = phi ptr [ %14, %13 ], [ %17, %15 ]
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 %49
  %57 = load i64, ptr %56, align 1
  %58 = mul i64 %57, -4417276706812531889
  %59 = add i64 %58, %50
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 31)
  %61 = mul i64 %60, -7046029288634856825
  %62 = getelementptr inbounds nuw i8, ptr %56, i64 8
  %63 = load i64, ptr %62, align 1
  %64 = mul i64 %63, -4417276706812531889
  %65 = add i64 %64, %51
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 31)
  %67 = mul i64 %66, -7046029288634856825
  %68 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %69 = load i64, ptr %68, align 1
  %70 = mul i64 %69, -4417276706812531889
  %71 = add i64 %70, %52
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 31)
  %73 = mul i64 %72, -7046029288634856825
  %74 = getelementptr inbounds nuw i8, ptr %56, i64 24
  %75 = load i64, ptr %74, align 1
  %76 = mul i64 %75, -4417276706812531889
  %77 = add i64 %76, %53
  %78 = tail call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 31)
  %79 = mul i64 %78, -7046029288634856825
  %80 = add nuw nsw i64 %49, 32
  store i64 %61, ptr %7, align 8
  store i64 %67, ptr %8, align 8
  store i64 %73, ptr %9, align 8
  store i64 %79, ptr %10, align 8
  br label %81

81:                                               ; preds = %48, %15
  %82 = phi i64 [ %54, %48 ], [ 63, %15 ]
  %83 = phi ptr [ %55, %48 ], [ %17, %15 ]
  %84 = phi i64 [ %79, %48 ], [ %42, %15 ]
  %85 = phi i64 [ %67, %48 ], [ %30, %15 ]
  %86 = phi i64 [ %61, %48 ], [ %24, %15 ]
  %87 = phi i64 [ %73, %48 ], [ %36, %15 ]
  %88 = phi i64 [ %80, %48 ], [ %46, %15 ]
  %89 = icmp samesign ult i64 %88, 63
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 %88
  %92 = sub nuw nsw i64 63, %88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %91, i64 %92, i1 false)
  %93 = trunc nuw nsw i64 %92 to i32
  store i32 %93, ptr %83, align 8
  br label %94

94:                                               ; preds = %90, %81
  %95 = and i64 %82, 31
  %96 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 7)
  %97 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 1)
  %98 = add i64 %96, %97
  %99 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 12)
  %100 = add i64 %98, %99
  %101 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 18)
  %102 = add i64 %100, %101
  %103 = mul i64 %86, -4417276706812531889
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 31)
  %105 = mul i64 %104, -7046029288634856825
  %106 = xor i64 %102, %105
  %107 = mul i64 %106, -7046029288634856825
  %108 = add i64 %107, -8796714831421723037
  %109 = mul i64 %85, -4417276706812531889
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = xor i64 %108, %111
  %113 = mul i64 %112, -7046029288634856825
  %114 = add i64 %113, -8796714831421723037
  %115 = mul i64 %87, -4417276706812531889
  %116 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 31)
  %117 = mul i64 %116, -7046029288634856825
  %118 = xor i64 %114, %117
  %119 = mul i64 %118, -7046029288634856825
  %120 = add i64 %119, -8796714831421723037
  %121 = mul i64 %84, -4417276706812531889
  %122 = tail call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 31)
  %123 = mul i64 %122, -7046029288634856825
  %124 = xor i64 %120, %123
  %125 = mul i64 %124, -7046029288634856825
  %126 = add i64 %125, -8796714831421723037
  %127 = add i64 %126, %82
  %128 = load i64, ptr %11, align 8
  %129 = mul i64 %128, -4417276706812531889
  %130 = tail call i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 31)
  %131 = mul i64 %130, -7046029288634856825
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %133 = xor i64 %131, %127
  %134 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 27)
  %135 = mul i64 %134, -7046029288634856825
  %136 = add i64 %135, -8796714831421723037
  %137 = add nsw i64 %95, -8
  %138 = icmp ugt i64 %137, 7
  br i1 %138, label %139, label %162

139:                                              ; preds = %94
  %140 = load i64, ptr %132, align 8
  %141 = mul i64 %140, -4417276706812531889
  %142 = tail call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 31)
  %143 = mul i64 %142, -7046029288634856825
  %144 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %145 = xor i64 %143, %136
  %146 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 27)
  %147 = mul i64 %146, -7046029288634856825
  %148 = add i64 %147, -8796714831421723037
  %149 = add nsw i64 %95, -16
  %150 = icmp ugt i64 %149, 7
  br i1 %150, label %151, label %162

151:                                              ; preds = %139
  %152 = load i64, ptr %144, align 8
  %153 = mul i64 %152, -4417276706812531889
  %154 = tail call i64 @llvm.fshl.i64(i64 %153, i64 %153, i64 31)
  %155 = mul i64 %154, -7046029288634856825
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %157 = xor i64 %155, %148
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 27)
  %159 = mul i64 %158, -7046029288634856825
  %160 = add i64 %159, -8796714831421723037
  %161 = add nsw i64 %95, -24
  br label %162

162:                                              ; preds = %151, %139, %94
  %163 = phi ptr [ %11, %94 ], [ %132, %139 ], [ %144, %151 ]
  %164 = phi i64 [ %95, %94 ], [ %137, %139 ], [ %149, %151 ]
  %165 = phi ptr [ %132, %94 ], [ %144, %139 ], [ %156, %151 ]
  %166 = phi i64 [ %136, %94 ], [ %148, %139 ], [ %160, %151 ]
  %167 = phi i64 [ %137, %94 ], [ %149, %139 ], [ %161, %151 ]
  %168 = icmp samesign ugt i64 %167, 3
  br i1 %168, label %169, label %179

169:                                              ; preds = %162
  %170 = load i32, ptr %165, align 4
  %171 = zext i32 %170 to i64
  %172 = mul i64 %171, -7046029288634856825
  %173 = xor i64 %172, %166
  %174 = getelementptr inbounds nuw i8, ptr %163, i64 12
  %175 = tail call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 23)
  %176 = mul i64 %175, -4417276706812531889
  %177 = add i64 %176, 1609587929392839161
  %178 = add nsw i64 %164, -12
  br label %179

179:                                              ; preds = %169, %162
  %180 = phi i64 [ %178, %169 ], [ %167, %162 ]
  %181 = phi ptr [ %174, %169 ], [ %165, %162 ]
  %182 = phi i64 [ %177, %169 ], [ %166, %162 ]
  %183 = icmp eq i64 %180, 0
  br i1 %183, label %270, label %184

184:                                              ; preds = %179
  %185 = and i64 %180, 7
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %202, label %187

187:                                              ; preds = %184, %187
  %188 = phi i64 [ %198, %187 ], [ %182, %184 ]
  %189 = phi ptr [ %192, %187 ], [ %181, %184 ]
  %190 = phi i64 [ %199, %187 ], [ %180, %184 ]
  %191 = phi i64 [ %200, %187 ], [ 0, %184 ]
  %192 = getelementptr inbounds nuw i8, ptr %189, i64 1
  %193 = load i8, ptr %189, align 1
  %194 = zext i8 %193 to i64
  %195 = mul i64 %194, 2870177450012600261
  %196 = xor i64 %195, %188
  %197 = tail call i64 @llvm.fshl.i64(i64 %196, i64 %196, i64 11)
  %198 = mul i64 %197, -7046029288634856825
  %199 = add nsw i64 %190, -1
  %200 = add i64 %191, 1
  %201 = icmp eq i64 %200, %185
  br i1 %201, label %202, label %187

202:                                              ; preds = %187, %184
  %203 = phi i64 [ poison, %184 ], [ %198, %187 ]
  %204 = phi i64 [ %182, %184 ], [ %198, %187 ]
  %205 = phi ptr [ %181, %184 ], [ %192, %187 ]
  %206 = phi i64 [ %180, %184 ], [ %199, %187 ]
  %207 = icmp ult i64 %180, 8
  br i1 %207, label %270, label %208

208:                                              ; preds = %202, %208
  %209 = phi i64 [ %267, %208 ], [ %204, %202 ]
  %210 = phi ptr [ %261, %208 ], [ %205, %202 ]
  %211 = phi i64 [ %268, %208 ], [ %206, %202 ]
  %212 = getelementptr inbounds nuw i8, ptr %210, i64 1
  %213 = load i8, ptr %210, align 1
  %214 = zext i8 %213 to i64
  %215 = mul i64 %214, 2870177450012600261
  %216 = xor i64 %215, %209
  %217 = tail call i64 @llvm.fshl.i64(i64 %216, i64 %216, i64 11)
  %218 = mul i64 %217, -7046029288634856825
  %219 = getelementptr inbounds nuw i8, ptr %210, i64 2
  %220 = load i8, ptr %212, align 1
  %221 = zext i8 %220 to i64
  %222 = mul i64 %221, 2870177450012600261
  %223 = xor i64 %222, %218
  %224 = tail call i64 @llvm.fshl.i64(i64 %223, i64 %223, i64 11)
  %225 = mul i64 %224, -7046029288634856825
  %226 = getelementptr inbounds nuw i8, ptr %210, i64 3
  %227 = load i8, ptr %219, align 1
  %228 = zext i8 %227 to i64
  %229 = mul i64 %228, 2870177450012600261
  %230 = xor i64 %229, %225
  %231 = tail call i64 @llvm.fshl.i64(i64 %230, i64 %230, i64 11)
  %232 = mul i64 %231, -7046029288634856825
  %233 = getelementptr inbounds nuw i8, ptr %210, i64 4
  %234 = load i8, ptr %226, align 1
  %235 = zext i8 %234 to i64
  %236 = mul i64 %235, 2870177450012600261
  %237 = xor i64 %236, %232
  %238 = tail call i64 @llvm.fshl.i64(i64 %237, i64 %237, i64 11)
  %239 = mul i64 %238, -7046029288634856825
  %240 = getelementptr inbounds nuw i8, ptr %210, i64 5
  %241 = load i8, ptr %233, align 1
  %242 = zext i8 %241 to i64
  %243 = mul i64 %242, 2870177450012600261
  %244 = xor i64 %243, %239
  %245 = tail call i64 @llvm.fshl.i64(i64 %244, i64 %244, i64 11)
  %246 = mul i64 %245, -7046029288634856825
  %247 = getelementptr inbounds nuw i8, ptr %210, i64 6
  %248 = load i8, ptr %240, align 1
  %249 = zext i8 %248 to i64
  %250 = mul i64 %249, 2870177450012600261
  %251 = xor i64 %250, %246
  %252 = tail call i64 @llvm.fshl.i64(i64 %251, i64 %251, i64 11)
  %253 = mul i64 %252, -7046029288634856825
  %254 = getelementptr inbounds nuw i8, ptr %210, i64 7
  %255 = load i8, ptr %247, align 1
  %256 = zext i8 %255 to i64
  %257 = mul i64 %256, 2870177450012600261
  %258 = xor i64 %257, %253
  %259 = tail call i64 @llvm.fshl.i64(i64 %258, i64 %258, i64 11)
  %260 = mul i64 %259, -7046029288634856825
  %261 = getelementptr inbounds nuw i8, ptr %210, i64 8
  %262 = load i8, ptr %254, align 1
  %263 = zext i8 %262 to i64
  %264 = mul i64 %263, 2870177450012600261
  %265 = xor i64 %264, %260
  %266 = tail call i64 @llvm.fshl.i64(i64 %265, i64 %265, i64 11)
  %267 = mul i64 %266, -7046029288634856825
  %268 = add nsw i64 %211, -8
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %208

270:                                              ; preds = %202, %208, %179
  %271 = phi i64 [ %182, %179 ], [ %203, %202 ], [ %267, %208 ]
  %272 = lshr i64 %271, 33
  %273 = xor i64 %272, %271
  %274 = mul i64 %273, -4417276706812531889
  %275 = lshr i64 %274, 29
  %276 = xor i64 %275, %274
  %277 = mul i64 %276, 1609587929392839161
  %278 = lshr i64 %277, 32
  %279 = xor i64 %278, %277
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  ret i64 %279
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
