; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrapv_s32only.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrapv_s32only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

%struct.XXH_INLINE_XXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [128 x i8], align 8
  %19 = alloca %struct.XXH_INLINE_XXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #4
  store i64 %0, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #4
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967316, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 10
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %42, ptr noundef nonnull readonly align 8 dereferenceable(10) %18, i64 10, i1 false)
  store i32 10, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %45, ptr noundef nonnull readonly align 2 dereferenceable(6) %43, i64 6, i1 false)
  %46 = load i32, ptr %42, align 8
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %35
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  store i32 %50, ptr %38, align 8
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, -2048144777
  %54 = add i32 %53, %36
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13)
  %56 = mul i32 %55, -1640531535
  store i32 %56, ptr %39, align 4
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %58 = load i32, ptr %57, align 8
  %59 = mul i32 %58, -2048144777
  %60 = add i32 %59, %16
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13)
  %62 = mul i32 %61, -1640531535
  store i32 %62, ptr %40, align 8
  %63 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %64 = load i32, ptr %63, align 4
  %65 = mul i32 %64, -2048144777
  %66 = add i32 %65, %37
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13)
  %68 = mul i32 %67, -1640531535
  store i32 %68, ptr %41, align 4
  %69 = load i32, ptr %44, align 8
  %70 = sub i32 16, %69
  %71 = icmp ult i32 %70, 10
  br i1 %71, label %81, label %72

72:                                               ; preds = %17
  %73 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 7)
  %74 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 1)
  %75 = add i32 %73, %74
  %76 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 12)
  %77 = add i32 %75, %76
  %78 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 18)
  %79 = add i32 %77, %78
  %80 = add i32 %79, 20
  br label %247

81:                                               ; preds = %17
  %82 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %83 = zext nneg i32 %70 to i64
  %84 = getelementptr inbounds nuw i8, ptr %18, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 10
  %86 = ptrtoint ptr %82 to i64
  %87 = ptrtoint ptr %85 to i64
  %88 = sub i64 %86, %87
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %85, i64 %88, i1 false)
  %89 = trunc i64 %88 to i32
  store i32 %89, ptr %44, align 8
  %90 = and i32 %89, 15
  %91 = call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 7)
  %92 = call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 1)
  %93 = add i32 %91, %92
  %94 = call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 12)
  %95 = add i32 %93, %94
  %96 = call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 18)
  %97 = add i32 %95, %96
  %98 = add i32 %97, 20
  switch i32 %90, label %246 [
    i32 12, label %99
    i32 8, label %106
    i32 4, label %115
    i32 13, label %123
    i32 9, label %130
    i32 5, label %139
    i32 14, label %154
    i32 10, label %161
    i32 6, label %170
    i32 15, label %192
    i32 11, label %199
    i32 7, label %208
    i32 3, label %217
    i32 2, label %227
    i32 1, label %237
    i32 0, label %247
  ]

99:                                               ; preds = %81
  %100 = load i32, ptr %42, align 8
  %101 = mul i32 %100, -1028477379
  %102 = add i32 %101, %98
  %103 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %104 = call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 17)
  %105 = mul i32 %104, 668265263
  br label %106

106:                                              ; preds = %99, %81
  %107 = phi ptr [ %42, %81 ], [ %103, %99 ]
  %108 = phi i32 [ %98, %81 ], [ %105, %99 ]
  %109 = load i32, ptr %107, align 4
  %110 = mul i32 %109, -1028477379
  %111 = add i32 %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %107, i64 4
  %113 = call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 17)
  %114 = mul i32 %113, 668265263
  br label %115

115:                                              ; preds = %106, %81
  %116 = phi ptr [ %42, %81 ], [ %112, %106 ]
  %117 = phi i32 [ %98, %81 ], [ %114, %106 ]
  %118 = load i32, ptr %116, align 4
  %119 = mul i32 %118, -1028477379
  %120 = add i32 %119, %117
  %121 = call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 17)
  %122 = mul i32 %121, 668265263
  br label %247

123:                                              ; preds = %81
  %124 = load i32, ptr %42, align 8
  %125 = mul i32 %124, -1028477379
  %126 = add i32 %125, %98
  %127 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %128 = call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 17)
  %129 = mul i32 %128, 668265263
  br label %130

130:                                              ; preds = %123, %81
  %131 = phi ptr [ %42, %81 ], [ %127, %123 ]
  %132 = phi i32 [ %98, %81 ], [ %129, %123 ]
  %133 = load i32, ptr %131, align 4
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %132
  %136 = getelementptr inbounds nuw i8, ptr %131, i64 4
  %137 = call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  br label %139

139:                                              ; preds = %130, %81
  %140 = phi ptr [ %42, %81 ], [ %136, %130 ]
  %141 = phi i32 [ %98, %81 ], [ %138, %130 ]
  %142 = load i32, ptr %140, align 4
  %143 = mul i32 %142, -1028477379
  %144 = add i32 %143, %141
  %145 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %146 = call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 17)
  %147 = mul i32 %146, 668265263
  %148 = load i8, ptr %145, align 1
  %149 = zext i8 %148 to i32
  %150 = mul i32 %149, 374761393
  %151 = add i32 %147, %150
  %152 = call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 11)
  %153 = mul i32 %152, -1640531535
  br label %247

154:                                              ; preds = %81
  %155 = load i32, ptr %42, align 8
  %156 = mul i32 %155, -1028477379
  %157 = add i32 %156, %98
  %158 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %159 = call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 17)
  %160 = mul i32 %159, 668265263
  br label %161

161:                                              ; preds = %154, %81
  %162 = phi ptr [ %42, %81 ], [ %158, %154 ]
  %163 = phi i32 [ %98, %81 ], [ %160, %154 ]
  %164 = load i32, ptr %162, align 4
  %165 = mul i32 %164, -1028477379
  %166 = add i32 %165, %163
  %167 = getelementptr inbounds nuw i8, ptr %162, i64 4
  %168 = call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 17)
  %169 = mul i32 %168, 668265263
  br label %170

170:                                              ; preds = %161, %81
  %171 = phi ptr [ %42, %81 ], [ %167, %161 ]
  %172 = phi i32 [ %98, %81 ], [ %169, %161 ]
  %173 = load i32, ptr %171, align 4
  %174 = mul i32 %173, -1028477379
  %175 = add i32 %174, %172
  %176 = getelementptr inbounds nuw i8, ptr %171, i64 4
  %177 = call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 17)
  %178 = mul i32 %177, 668265263
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 5
  %180 = load i8, ptr %176, align 1
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 374761393
  %183 = add i32 %178, %182
  %184 = call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 11)
  %185 = mul i32 %184, -1640531535
  %186 = load i8, ptr %179, align 1
  %187 = zext i8 %186 to i32
  %188 = mul i32 %187, 374761393
  %189 = add i32 %185, %188
  %190 = call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 11)
  %191 = mul i32 %190, -1640531535
  br label %247

192:                                              ; preds = %81
  %193 = load i32, ptr %42, align 8
  %194 = mul i32 %193, -1028477379
  %195 = add i32 %194, %98
  %196 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %197 = call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 17)
  %198 = mul i32 %197, 668265263
  br label %199

199:                                              ; preds = %192, %81
  %200 = phi ptr [ %42, %81 ], [ %196, %192 ]
  %201 = phi i32 [ %98, %81 ], [ %198, %192 ]
  %202 = load i32, ptr %200, align 4
  %203 = mul i32 %202, -1028477379
  %204 = add i32 %203, %201
  %205 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %206 = call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 17)
  %207 = mul i32 %206, 668265263
  br label %208

208:                                              ; preds = %199, %81
  %209 = phi ptr [ %42, %81 ], [ %205, %199 ]
  %210 = phi i32 [ %98, %81 ], [ %207, %199 ]
  %211 = load i32, ptr %209, align 4
  %212 = mul i32 %211, -1028477379
  %213 = add i32 %212, %210
  %214 = getelementptr inbounds nuw i8, ptr %209, i64 4
  %215 = call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 17)
  %216 = mul i32 %215, 668265263
  br label %217

217:                                              ; preds = %208, %81
  %218 = phi ptr [ %42, %81 ], [ %214, %208 ]
  %219 = phi i32 [ %98, %81 ], [ %216, %208 ]
  %220 = getelementptr inbounds nuw i8, ptr %218, i64 1
  %221 = load i8, ptr %218, align 1
  %222 = zext i8 %221 to i32
  %223 = mul i32 %222, 374761393
  %224 = add i32 %223, %219
  %225 = call i32 @llvm.fshl.i32(i32 %224, i32 %224, i32 11)
  %226 = mul i32 %225, -1640531535
  br label %227

227:                                              ; preds = %217, %81
  %228 = phi ptr [ %42, %81 ], [ %220, %217 ]
  %229 = phi i32 [ %98, %81 ], [ %226, %217 ]
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 1
  %231 = load i8, ptr %228, align 1
  %232 = zext i8 %231 to i32
  %233 = mul i32 %232, 374761393
  %234 = add i32 %233, %229
  %235 = call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 11)
  %236 = mul i32 %235, -1640531535
  br label %237

237:                                              ; preds = %227, %81
  %238 = phi ptr [ %42, %81 ], [ %230, %227 ]
  %239 = phi i32 [ %98, %81 ], [ %236, %227 ]
  %240 = load i8, ptr %238, align 1
  %241 = zext i8 %240 to i32
  %242 = mul i32 %241, 374761393
  %243 = add i32 %242, %239
  %244 = call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 11)
  %245 = mul i32 %244, -1640531535
  br label %247

246:                                              ; preds = %81
  unreachable

247:                                              ; preds = %72, %81, %115, %139, %170, %237
  %248 = phi i32 [ %191, %170 ], [ %153, %139 ], [ %122, %115 ], [ %98, %81 ], [ %245, %237 ], [ %80, %72 ]
  %249 = lshr i32 %248, 15
  %250 = xor i32 %249, %248
  %251 = mul i32 %250, -2048144777
  %252 = lshr i32 %251, 13
  %253 = xor i32 %252, %251
  %254 = mul i32 %253, -1028477379
  %255 = lshr i32 %254, 16
  %256 = xor i32 %255, %254
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #4
  ret i32 %256
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_3_20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = and i32 %21, 16777215
  %23 = trunc i64 %0 to i32
  %24 = and i32 %23, -16777216
  %25 = or disjoint i32 %22, %24
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = trunc i64 %1 to i32
  %29 = lshr i64 %1, 32
  %30 = trunc nuw i64 %29 to i32
  %31 = mul i32 %25, -2048144777
  %32 = add i32 %31, %18
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = lshr i64 %0, 32
  %36 = trunc nuw i64 %35 to i32
  %37 = and i32 %36, -16777216
  %38 = lshr i64 %0, 32
  %39 = trunc nuw i64 %38 to i32
  %40 = and i32 %39, 16711680
  %41 = or disjoint i32 %37, %40
  %42 = lshr i64 %0, 32
  %43 = trunc nuw i64 %42 to i32
  %44 = and i32 %43, 65280
  %45 = or disjoint i32 %41, %44
  %46 = and i32 %27, 255
  %47 = or disjoint i32 %45, %46
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %19
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = mul i32 %28, -2048144777
  %53 = add i32 %52, %16
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  %56 = mul i32 %30, -2048144777
  %57 = add i32 %56, %20
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = trunc i64 %2 to i32
  %61 = lshr i64 %2, 32
  %62 = trunc nuw i64 %61 to i32
  %63 = lshr i64 %2, 40
  %64 = trunc nuw nsw i64 %63 to i32
  %65 = lshr i64 %2, 48
  %66 = trunc nuw nsw i64 %65 to i32
  %67 = and i32 %66, 255
  %68 = mul i32 %67, 374761393
  %69 = and i32 %64, 255
  %70 = mul i32 %69, 374761393
  %71 = and i32 %62, 255
  %72 = mul i32 %71, 374761393
  %73 = mul i32 %60, -1028477379
  %74 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 1)
  %75 = add i32 %74, 23
  %76 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 7)
  %77 = add i32 %75, %76
  %78 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 12)
  %79 = add i32 %77, %78
  %80 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 18)
  %81 = add i32 %79, %80
  %82 = add i32 %73, %81
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 17)
  %84 = mul i32 %83, 668265263
  %85 = add i32 %72, %84
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 11)
  %87 = mul i32 %86, -1640531535
  %88 = add i32 %70, %87
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 11)
  %90 = mul i32 %89, -1640531535
  %91 = add i32 %68, %90
  %92 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 11)
  %93 = mul i32 %92, -1640531535
  %94 = lshr i32 %93, 15
  %95 = xor i32 %94, %93
  %96 = mul i32 %95, -2048144777
  %97 = lshr i32 %96, 13
  %98 = xor i32 %97, %96
  %99 = mul i32 %98, -1028477379
  %100 = lshr i32 %99, 16
  %101 = xor i32 %100, %99
  ret i32 %101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [128 x i8], align 8
  %19 = alloca %struct.XXH_INLINE_XXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #4
  store i64 %0, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #4
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967329, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %45 = load i32, ptr %18, align 8
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %35
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, -2048144777
  %53 = add i32 %52, %36
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  %56 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %57 = load i32, ptr %56, align 8
  %58 = mul i32 %57, -2048144777
  %59 = add i32 %58, %16
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 13)
  %61 = mul i32 %60, -1640531535
  %62 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %63 = load i32, ptr %62, align 4
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %37
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %69 = load i32, ptr %68, align 8
  store i32 %69, ptr %42, align 8
  store i32 4, ptr %44, align 8
  %70 = getelementptr inbounds nuw i8, ptr %19, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %70, ptr noundef nonnull readonly align 4 dereferenceable(12) %43, i64 12, i1 false)
  %71 = mul i32 %69, -2048144777
  %72 = add i32 %71, %49
  %73 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 13)
  %74 = mul i32 %73, -1640531535
  store i32 %74, ptr %38, align 8
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %76 = load i32, ptr %75, align 4
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %55
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  store i32 %80, ptr %39, align 4
  %81 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %82 = load i32, ptr %81, align 8
  %83 = mul i32 %82, -2048144777
  %84 = add i32 %83, %61
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 13)
  %86 = mul i32 %85, -1640531535
  store i32 %86, ptr %40, align 8
  %87 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %88 = load i32, ptr %87, align 4
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %67
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  store i32 %92, ptr %41, align 4
  %93 = load i32, ptr %44, align 8
  %94 = sub i32 16, %93
  %95 = icmp ult i32 %94, 13
  br i1 %95, label %105, label %96

96:                                               ; preds = %17
  %97 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 1)
  %98 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 7)
  %99 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 12)
  %100 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 18)
  %101 = add i32 %97, 33
  %102 = add i32 %101, %98
  %103 = add i32 %102, %99
  %104 = add i32 %103, %100
  br label %271

105:                                              ; preds = %17
  %106 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %107 = zext nneg i32 %94 to i64
  %108 = getelementptr inbounds nuw i8, ptr %18, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 20
  %110 = ptrtoint ptr %106 to i64
  %111 = ptrtoint ptr %109 to i64
  %112 = sub i64 %110, %111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %109, i64 %112, i1 false)
  %113 = trunc i64 %112 to i32
  store i32 %113, ptr %44, align 8
  %114 = and i32 %113, 15
  %115 = call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 1)
  %116 = call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 7)
  %117 = call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 12)
  %118 = call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 18)
  %119 = add i32 %115, 33
  %120 = add i32 %119, %116
  %121 = add i32 %120, %117
  %122 = add i32 %121, %118
  switch i32 %114, label %270 [
    i32 12, label %123
    i32 8, label %130
    i32 4, label %139
    i32 13, label %147
    i32 9, label %154
    i32 5, label %163
    i32 14, label %178
    i32 10, label %185
    i32 6, label %194
    i32 15, label %216
    i32 11, label %223
    i32 7, label %232
    i32 3, label %241
    i32 2, label %251
    i32 1, label %261
    i32 0, label %271
  ]

123:                                              ; preds = %105
  %124 = load i32, ptr %42, align 8
  %125 = mul i32 %124, -1028477379
  %126 = add i32 %125, %122
  %127 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %128 = call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 17)
  %129 = mul i32 %128, 668265263
  br label %130

130:                                              ; preds = %123, %105
  %131 = phi ptr [ %42, %105 ], [ %127, %123 ]
  %132 = phi i32 [ %122, %105 ], [ %129, %123 ]
  %133 = load i32, ptr %131, align 4
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %132
  %136 = getelementptr inbounds nuw i8, ptr %131, i64 4
  %137 = call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  br label %139

139:                                              ; preds = %130, %105
  %140 = phi ptr [ %42, %105 ], [ %136, %130 ]
  %141 = phi i32 [ %122, %105 ], [ %138, %130 ]
  %142 = load i32, ptr %140, align 4
  %143 = mul i32 %142, -1028477379
  %144 = add i32 %143, %141
  %145 = call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 17)
  %146 = mul i32 %145, 668265263
  br label %271

147:                                              ; preds = %105
  %148 = load i32, ptr %42, align 8
  %149 = mul i32 %148, -1028477379
  %150 = add i32 %149, %122
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %152 = call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 17)
  %153 = mul i32 %152, 668265263
  br label %154

154:                                              ; preds = %147, %105
  %155 = phi ptr [ %42, %105 ], [ %151, %147 ]
  %156 = phi i32 [ %122, %105 ], [ %153, %147 ]
  %157 = load i32, ptr %155, align 4
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %155, i64 4
  %161 = call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  br label %163

163:                                              ; preds = %154, %105
  %164 = phi ptr [ %42, %105 ], [ %160, %154 ]
  %165 = phi i32 [ %122, %105 ], [ %162, %154 ]
  %166 = load i32, ptr %164, align 4
  %167 = mul i32 %166, -1028477379
  %168 = add i32 %167, %165
  %169 = getelementptr inbounds nuw i8, ptr %164, i64 4
  %170 = call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 17)
  %171 = mul i32 %170, 668265263
  %172 = load i8, ptr %169, align 1
  %173 = zext i8 %172 to i32
  %174 = mul i32 %173, 374761393
  %175 = add i32 %171, %174
  %176 = call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 11)
  %177 = mul i32 %176, -1640531535
  br label %271

178:                                              ; preds = %105
  %179 = load i32, ptr %42, align 8
  %180 = mul i32 %179, -1028477379
  %181 = add i32 %180, %122
  %182 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %183 = call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 17)
  %184 = mul i32 %183, 668265263
  br label %185

185:                                              ; preds = %178, %105
  %186 = phi ptr [ %42, %105 ], [ %182, %178 ]
  %187 = phi i32 [ %122, %105 ], [ %184, %178 ]
  %188 = load i32, ptr %186, align 4
  %189 = mul i32 %188, -1028477379
  %190 = add i32 %189, %187
  %191 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %192 = call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 17)
  %193 = mul i32 %192, 668265263
  br label %194

194:                                              ; preds = %185, %105
  %195 = phi ptr [ %42, %105 ], [ %191, %185 ]
  %196 = phi i32 [ %122, %105 ], [ %193, %185 ]
  %197 = load i32, ptr %195, align 4
  %198 = mul i32 %197, -1028477379
  %199 = add i32 %198, %196
  %200 = getelementptr inbounds nuw i8, ptr %195, i64 4
  %201 = call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 17)
  %202 = mul i32 %201, 668265263
  %203 = getelementptr inbounds nuw i8, ptr %195, i64 5
  %204 = load i8, ptr %200, align 1
  %205 = zext i8 %204 to i32
  %206 = mul i32 %205, 374761393
  %207 = add i32 %202, %206
  %208 = call i32 @llvm.fshl.i32(i32 %207, i32 %207, i32 11)
  %209 = mul i32 %208, -1640531535
  %210 = load i8, ptr %203, align 1
  %211 = zext i8 %210 to i32
  %212 = mul i32 %211, 374761393
  %213 = add i32 %209, %212
  %214 = call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 11)
  %215 = mul i32 %214, -1640531535
  br label %271

216:                                              ; preds = %105
  %217 = load i32, ptr %42, align 8
  %218 = mul i32 %217, -1028477379
  %219 = add i32 %218, %122
  %220 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %221 = call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 17)
  %222 = mul i32 %221, 668265263
  br label %223

223:                                              ; preds = %216, %105
  %224 = phi ptr [ %42, %105 ], [ %220, %216 ]
  %225 = phi i32 [ %122, %105 ], [ %222, %216 ]
  %226 = load i32, ptr %224, align 4
  %227 = mul i32 %226, -1028477379
  %228 = add i32 %227, %225
  %229 = getelementptr inbounds nuw i8, ptr %224, i64 4
  %230 = call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 17)
  %231 = mul i32 %230, 668265263
  br label %232

232:                                              ; preds = %223, %105
  %233 = phi ptr [ %42, %105 ], [ %229, %223 ]
  %234 = phi i32 [ %122, %105 ], [ %231, %223 ]
  %235 = load i32, ptr %233, align 4
  %236 = mul i32 %235, -1028477379
  %237 = add i32 %236, %234
  %238 = getelementptr inbounds nuw i8, ptr %233, i64 4
  %239 = call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 17)
  %240 = mul i32 %239, 668265263
  br label %241

241:                                              ; preds = %232, %105
  %242 = phi ptr [ %42, %105 ], [ %238, %232 ]
  %243 = phi i32 [ %122, %105 ], [ %240, %232 ]
  %244 = getelementptr inbounds nuw i8, ptr %242, i64 1
  %245 = load i8, ptr %242, align 1
  %246 = zext i8 %245 to i32
  %247 = mul i32 %246, 374761393
  %248 = add i32 %247, %243
  %249 = call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 11)
  %250 = mul i32 %249, -1640531535
  br label %251

251:                                              ; preds = %241, %105
  %252 = phi ptr [ %42, %105 ], [ %244, %241 ]
  %253 = phi i32 [ %122, %105 ], [ %250, %241 ]
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 1
  %255 = load i8, ptr %252, align 1
  %256 = zext i8 %255 to i32
  %257 = mul i32 %256, 374761393
  %258 = add i32 %257, %253
  %259 = call i32 @llvm.fshl.i32(i32 %258, i32 %258, i32 11)
  %260 = mul i32 %259, -1640531535
  br label %261

261:                                              ; preds = %251, %105
  %262 = phi ptr [ %42, %105 ], [ %254, %251 ]
  %263 = phi i32 [ %122, %105 ], [ %260, %251 ]
  %264 = load i8, ptr %262, align 1
  %265 = zext i8 %264 to i32
  %266 = mul i32 %265, 374761393
  %267 = add i32 %266, %263
  %268 = call i32 @llvm.fshl.i32(i32 %267, i32 %267, i32 11)
  %269 = mul i32 %268, -1640531535
  br label %271

270:                                              ; preds = %105
  unreachable

271:                                              ; preds = %96, %105, %139, %163, %194, %261
  %272 = phi i32 [ %215, %194 ], [ %177, %163 ], [ %146, %139 ], [ %122, %105 ], [ %269, %261 ], [ %104, %96 ]
  %273 = lshr i32 %272, 15
  %274 = xor i32 %273, %272
  %275 = mul i32 %274, -2048144777
  %276 = lshr i32 %275, 13
  %277 = xor i32 %276, %275
  %278 = mul i32 %277, -1028477379
  %279 = lshr i32 %278, 16
  %280 = xor i32 %279, %278
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #4
  ret i32 %280
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
