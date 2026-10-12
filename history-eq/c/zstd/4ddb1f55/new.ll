; ModuleID = 'history-eq/c/zstd/4ddb1f55/new.c'
source_filename = "history-eq/c/zstd/4ddb1f55/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -1, 4294967296) i64 @FSE_countFast(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 %3, 1500
  br i1 %5, label %6, label %76

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %8 = load i32, ptr %1, align 4
  %9 = add i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %11, i1 false)
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32 0, ptr %1, align 4
  br label %78

14:                                               ; preds = %6, %14
  %15 = phi ptr [ %16, %14 ], [ %2, %6 ]
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 1
  %17 = load i8, ptr %15, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds nuw i32, ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = icmp ult ptr %16, %7
  br i1 %22, label %14, label %23, !llvm.loop !5

23:                                               ; preds = %14, %23
  %24 = phi i32 [ %29, %23 ], [ %8, %14 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i32, ptr %0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = add i32 %24, -1
  br i1 %28, label %23, label %30, !llvm.loop !7

30:                                               ; preds = %23
  store i32 %24, ptr %1, align 4
  %31 = add nuw nsw i64 %25, 1
  %32 = and i64 %31, 3
  %33 = icmp ult i32 %24, 3
  br i1 %33, label %58, label %34

34:                                               ; preds = %30
  %35 = and i64 %31, 8589934588
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i64 [ 0, %34 ], [ %55, %36 ]
  %38 = phi i32 [ 0, %34 ], [ %54, %36 ]
  %39 = phi i64 [ 0, %34 ], [ %56, %36 ]
  %40 = getelementptr inbounds nuw i32, ptr %0, i64 %37
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 %38)
  %43 = or disjoint i64 %37, 1
  %44 = getelementptr inbounds nuw i32, ptr %0, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 %42)
  %47 = or disjoint i64 %37, 2
  %48 = getelementptr inbounds nuw i32, ptr %0, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 @llvm.umax.i32(i32 %49, i32 %46)
  %51 = or disjoint i64 %37, 3
  %52 = getelementptr inbounds nuw i32, ptr %0, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 %50)
  %55 = add nuw nsw i64 %37, 4
  %56 = add i64 %39, 4
  %57 = icmp eq i64 %56, %35
  br i1 %57, label %58, label %36, !llvm.loop !8

58:                                               ; preds = %36, %30
  %59 = phi i32 [ poison, %30 ], [ %54, %36 ]
  %60 = phi i64 [ 0, %30 ], [ %55, %36 ]
  %61 = phi i32 [ 0, %30 ], [ %54, %36 ]
  %62 = icmp eq i64 %32, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58, %63
  %64 = phi i64 [ %70, %63 ], [ %60, %58 ]
  %65 = phi i32 [ %69, %63 ], [ %61, %58 ]
  %66 = phi i64 [ %71, %63 ], [ 0, %58 ]
  %67 = getelementptr inbounds nuw i32, ptr %0, i64 %64
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 %65)
  %70 = add nuw nsw i64 %64, 1
  %71 = add i64 %66, 1
  %72 = icmp eq i64 %71, %32
  br i1 %72, label %73, label %63, !llvm.loop !9

73:                                               ; preds = %63, %58
  %74 = phi i32 [ %59, %58 ], [ %69, %63 ]
  %75 = zext i32 %74 to i64
  br label %78

76:                                               ; preds = %4
  %77 = tail call fastcc i64 @FSE_count_parallel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 0)
  br label %78

78:                                               ; preds = %73, %13, %76
  %79 = phi i64 [ %77, %76 ], [ 0, %13 ], [ %75, %73 ]
  ret i64 %79
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -1, 4294967296) i64 @FSE_count_parallel(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %2 to i64
  %7 = alloca [256 x i32], align 16
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i32], align 16
  %10 = alloca [256 x i32], align 16
  %11 = getelementptr i8, ptr %2, i64 %3
  %12 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %9, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %10, i8 0, i64 1024, i1 false)
  %13 = icmp eq i64 %3, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = add i32 %12, 1
  %16 = zext i32 %15 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %16, i1 false)
  store i32 0, ptr %1, align 4
  br label %271

17:                                               ; preds = %5
  %18 = icmp eq i32 %12, 0
  %19 = select i1 %18, i32 255, i32 %12
  %20 = getelementptr i8, ptr %11, i64 -15
  %21 = icmp sgt i64 %3, 19
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %24 = load i32, ptr %2, align 1
  br label %49

25:                                               ; preds = %49, %17
  %26 = phi ptr [ %2, %17 ], [ %102, %49 ]
  %27 = icmp ult ptr %26, %11
  br i1 %27, label %28, label %177

28:                                               ; preds = %25
  %29 = ptrtoint ptr %26 to i64
  %30 = add i64 %3, %6
  %31 = sub i64 %30, %29
  %32 = and i64 %31, 3
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %28, %34
  %35 = phi ptr [ %37, %34 ], [ %26, %28 ]
  %36 = phi i64 [ %43, %34 ], [ 0, %28 ]
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 1
  %38 = load i8, ptr %35, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = add i64 %36, 1
  %44 = icmp eq i64 %43, %32
  br i1 %44, label %45, label %34, !llvm.loop !11

45:                                               ; preds = %34, %28
  %46 = phi ptr [ %26, %28 ], [ %37, %34 ]
  %47 = sub i64 %29, %30
  %48 = icmp ugt i64 %47, -4
  br i1 %48, label %177, label %150

49:                                               ; preds = %22, %49
  %50 = phi ptr [ %148, %49 ], [ %23, %22 ]
  %51 = phi i32 [ %125, %49 ], [ %24, %22 ]
  %52 = phi ptr [ %102, %49 ], [ %2, %22 ]
  %53 = load i32, ptr %50, align 1
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %55 = and i32 %51, 255
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  %60 = lshr i32 %51, 8
  %61 = and i32 %60, 255
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  %66 = lshr i32 %51, 16
  %67 = and i32 %66, 255
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  %72 = lshr i32 %51, 24
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [256 x i32], ptr %10, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 4
  %77 = load i32, ptr %54, align 1
  %78 = getelementptr inbounds nuw i8, ptr %52, i64 12
  %79 = and i32 %53, 255
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4
  %84 = lshr i32 %53, 8
  %85 = and i32 %84, 255
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 4
  %90 = lshr i32 %53, 16
  %91 = and i32 %90, 255
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 4
  %96 = lshr i32 %53, 24
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds nuw [256 x i32], ptr %10, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 4
  %101 = load i32, ptr %78, align 1
  %102 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %103 = and i32 %77, 255
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  %108 = lshr i32 %77, 8
  %109 = and i32 %108, 255
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4
  %114 = lshr i32 %77, 16
  %115 = and i32 %114, 255
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 4
  %120 = lshr i32 %77, 24
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds nuw [256 x i32], ptr %10, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %122, align 4
  %125 = load i32, ptr %102, align 1
  %126 = and i32 %101, 255
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %128, align 4
  %131 = lshr i32 %101, 8
  %132 = and i32 %131, 255
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, 1
  store i32 %136, ptr %134, align 4
  %137 = lshr i32 %101, 16
  %138 = and i32 %137, 255
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 4
  %143 = lshr i32 %101, 24
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds nuw [256 x i32], ptr %10, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, 1
  store i32 %147, ptr %145, align 4
  %148 = getelementptr inbounds nuw i8, ptr %52, i64 20
  %149 = icmp ult ptr %148, %20
  br i1 %149, label %49, label %25, !llvm.loop !12

150:                                              ; preds = %45, %150
  %151 = phi ptr [ %170, %150 ], [ %46, %45 ]
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 1
  %153 = load i8, ptr %151, align 1
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 4
  %158 = getelementptr inbounds nuw i8, ptr %151, i64 2
  %159 = load i8, ptr %152, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 4
  %164 = getelementptr inbounds nuw i8, ptr %151, i64 3
  %165 = load i8, ptr %158, align 1
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, 1
  store i32 %169, ptr %167, align 4
  %170 = getelementptr inbounds nuw i8, ptr %151, i64 4
  %171 = load i8, ptr %164, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %173, align 4
  %176 = icmp ult ptr %170, %11
  br i1 %176, label %150, label %177, !llvm.loop !13

177:                                              ; preds = %45, %150, %25
  %178 = icmp ne i32 %4, 0
  %179 = icmp ult i32 %19, 255
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %184, label %199

181:                                              ; preds = %184
  %182 = add nsw i32 %185, -1
  %183 = icmp ugt i32 %182, %19
  br i1 %183, label %184, label %199, !llvm.loop !14

184:                                              ; preds = %177, %181
  %185 = phi i32 [ %182, %181 ], [ 255, %177 ]
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %186
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, %188
  %192 = getelementptr inbounds nuw [256 x i32], ptr %10, i64 0, i64 %186
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %191, %193
  %195 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %186
  %196 = load i32, ptr %195, align 4
  %197 = add i32 %194, %196
  store i32 %197, ptr %195, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %181, label %271

199:                                              ; preds = %181, %177
  %200 = add i32 %19, 1
  %201 = tail call i32 @llvm.umax.i32(i32 %200, i32 1)
  %202 = zext i32 %201 to i64
  %203 = and i64 %202, 1
  %204 = icmp eq i32 %201, 1
  br i1 %204, label %241, label %205

205:                                              ; preds = %199
  %206 = and i64 %202, 4294967294
  br label %207

207:                                              ; preds = %207, %205
  %208 = phi i64 [ 0, %205 ], [ %238, %207 ]
  %209 = phi i32 [ 0, %205 ], [ %237, %207 ]
  %210 = phi i64 [ 0, %205 ], [ %239, %207 ]
  %211 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %208
  %212 = load i32, ptr %211, align 8
  %213 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %208
  %214 = load i32, ptr %213, align 8
  %215 = add i32 %214, %212
  %216 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %208
  %217 = load i32, ptr %216, align 8
  %218 = add i32 %215, %217
  %219 = getelementptr inbounds nuw [256 x i32], ptr %10, i64 0, i64 %208
  %220 = load i32, ptr %219, align 8
  %221 = add i32 %218, %220
  %222 = getelementptr inbounds nuw i32, ptr %0, i64 %208
  store i32 %221, ptr %222, align 4
  %223 = tail call i32 @llvm.umax.i32(i32 %221, i32 %209)
  %224 = or disjoint i64 %208, 1
  %225 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %224
  %228 = load i32, ptr %227, align 4
  %229 = add i32 %228, %226
  %230 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %224
  %231 = load i32, ptr %230, align 4
  %232 = add i32 %229, %231
  %233 = getelementptr inbounds nuw [256 x i32], ptr %10, i64 0, i64 %224
  %234 = load i32, ptr %233, align 4
  %235 = add i32 %232, %234
  %236 = getelementptr inbounds nuw i32, ptr %0, i64 %224
  store i32 %235, ptr %236, align 4
  %237 = tail call i32 @llvm.umax.i32(i32 %235, i32 %223)
  %238 = add nuw nsw i64 %208, 2
  %239 = add i64 %210, 2
  %240 = icmp eq i64 %239, %206
  br i1 %240, label %241, label %207, !llvm.loop !15

241:                                              ; preds = %207, %199
  %242 = phi i32 [ poison, %199 ], [ %237, %207 ]
  %243 = phi i64 [ 0, %199 ], [ %238, %207 ]
  %244 = phi i32 [ 0, %199 ], [ %237, %207 ]
  %245 = icmp eq i64 %203, 0
  br i1 %245, label %260, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %243
  %248 = load i32, ptr %247, align 4
  %249 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %243
  %250 = load i32, ptr %249, align 4
  %251 = add i32 %250, %248
  %252 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %243
  %253 = load i32, ptr %252, align 4
  %254 = add i32 %251, %253
  %255 = getelementptr inbounds nuw [256 x i32], ptr %10, i64 0, i64 %243
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %254, %256
  %258 = getelementptr inbounds nuw i32, ptr %0, i64 %243
  store i32 %257, ptr %258, align 4
  %259 = tail call i32 @llvm.umax.i32(i32 %257, i32 %244)
  br label %260

260:                                              ; preds = %241, %246
  %261 = phi i32 [ %242, %241 ], [ %259, %246 ]
  br label %262

262:                                              ; preds = %260, %262
  %263 = phi i32 [ %268, %262 ], [ %19, %260 ]
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds nuw i32, ptr %0, i64 %264
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, 0
  %268 = add i32 %263, -1
  br i1 %267, label %262, label %269, !llvm.loop !16

269:                                              ; preds = %262
  store i32 %263, ptr %1, align 4
  %270 = zext i32 %261 to i64
  br label %271

271:                                              ; preds = %184, %269, %14
  %272 = phi i64 [ %270, %269 ], [ 0, %14 ], [ -1, %184 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #5
  ret i64 %272
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -1, 4294967296) i64 @FSE_count(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 255
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call fastcc i64 @FSE_count_parallel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, i32 noundef 1)
  br label %79

9:                                                ; preds = %4
  store i32 255, ptr %1, align 4
  %10 = icmp ult i64 %3, 1500
  br i1 %10, label %11, label %77

11:                                               ; preds = %9
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %13 = icmp eq i64 %3, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, ptr %1, align 4
  br label %79

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %17, %15 ], [ %2, %11 ]
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 1
  %18 = load i8, ptr %16, align 1
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds nuw i32, ptr %0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  %23 = icmp ult ptr %17, %12
  br i1 %23, label %15, label %24, !llvm.loop !5

24:                                               ; preds = %15, %24
  %25 = phi i32 [ %30, %24 ], [ 255, %15 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds nuw i32, ptr %0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = add i32 %25, -1
  br i1 %29, label %24, label %31, !llvm.loop !7

31:                                               ; preds = %24
  store i32 %25, ptr %1, align 4
  %32 = add nuw nsw i64 %26, 1
  %33 = and i64 %32, 3
  %34 = icmp ult i32 %25, 3
  br i1 %34, label %59, label %35

35:                                               ; preds = %31
  %36 = and i64 %32, 8589934588
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i64 [ 0, %35 ], [ %56, %37 ]
  %39 = phi i32 [ 0, %35 ], [ %55, %37 ]
  %40 = phi i64 [ 0, %35 ], [ %57, %37 ]
  %41 = getelementptr inbounds nuw i32, ptr %0, i64 %38
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @llvm.umax.i32(i32 %42, i32 %39)
  %44 = or disjoint i64 %38, 1
  %45 = getelementptr inbounds nuw i32, ptr %0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 %43)
  %48 = or disjoint i64 %38, 2
  %49 = getelementptr inbounds nuw i32, ptr %0, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @llvm.umax.i32(i32 %50, i32 %47)
  %52 = or disjoint i64 %38, 3
  %53 = getelementptr inbounds nuw i32, ptr %0, i64 %52
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 %51)
  %56 = add nuw nsw i64 %38, 4
  %57 = add i64 %40, 4
  %58 = icmp eq i64 %57, %36
  br i1 %58, label %59, label %37, !llvm.loop !8

59:                                               ; preds = %37, %31
  %60 = phi i32 [ poison, %31 ], [ %55, %37 ]
  %61 = phi i64 [ 0, %31 ], [ %56, %37 ]
  %62 = phi i32 [ 0, %31 ], [ %55, %37 ]
  %63 = icmp eq i64 %33, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59, %64
  %65 = phi i64 [ %71, %64 ], [ %61, %59 ]
  %66 = phi i32 [ %70, %64 ], [ %62, %59 ]
  %67 = phi i64 [ %72, %64 ], [ 0, %59 ]
  %68 = getelementptr inbounds nuw i32, ptr %0, i64 %65
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @llvm.umax.i32(i32 %69, i32 %66)
  %71 = add nuw nsw i64 %65, 1
  %72 = add i64 %67, 1
  %73 = icmp eq i64 %72, %33
  br i1 %73, label %74, label %64, !llvm.loop !17

74:                                               ; preds = %64, %59
  %75 = phi i32 [ %60, %59 ], [ %70, %64 ]
  %76 = zext i32 %75 to i64
  br label %79

77:                                               ; preds = %9
  %78 = tail call fastcc i64 @FSE_count_parallel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, i32 noundef 0)
  br label %79

79:                                               ; preds = %77, %74, %14, %7
  %80 = phi i64 [ %8, %7 ], [ %78, %77 ], [ 0, %14 ], [ %76, %74 ]
  ret i64 %80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @target_zero_count() local_unnamed_addr #1 {
  ret i64 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !10}
