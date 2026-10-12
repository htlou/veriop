; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d14b2934/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d14b2934/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @target_hash16(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #6
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
  br i1 %12, label %92, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %3, align 8
  %15 = add i32 %14, 16
  store i32 %15, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %13
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds nuw i8, ptr %11, i64 %23
  %25 = sub i32 16, %20
  %26 = zext i32 %25 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %0, i64 %26, i1 false)
  %27 = load i32, ptr %11, align 8
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %4
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  store i32 %31, ptr %7, align 8
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %5
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  store i32 %37, ptr %8, align 4
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %39 = load i32, ptr %38, align 8
  %40 = mul i32 %39, -2048144777
  %41 = add i32 %40, %1
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 13)
  %43 = mul i32 %42, -1640531535
  store i32 %43, ptr %9, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %6
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  store i32 %49, ptr %10, align 4
  %50 = load i32, ptr %19, align 8
  %51 = sub i32 16, %50
  %52 = zext i32 %51 to i64
  store i32 0, ptr %19, align 8
  br label %53

53:                                               ; preds = %22, %13
  %54 = phi i64 [ %52, %22 ], [ 0, %13 ]
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  %57 = load i32, ptr %7, align 8
  %58 = load i32, ptr %8, align 4
  %59 = load i32, ptr %9, align 8
  %60 = load i32, ptr %10, align 4
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 %54
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 12
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 4
  %65 = load i32, ptr %61, align 1
  %66 = load i32, ptr %62, align 1
  %67 = mul i32 %66, -2048144777
  %68 = add i32 %67, %60
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 13)
  %70 = mul i32 %69, -1640531535
  %71 = load i32, ptr %63, align 1
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %59
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = load i32, ptr %64, align 1
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %58
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = mul i32 %65, -2048144777
  %82 = add i32 %81, %57
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  store i32 %84, ptr %7, align 8
  store i32 %80, ptr %8, align 4
  store i32 %75, ptr %9, align 8
  store i32 %70, ptr %10, align 4
  br label %85

85:                                               ; preds = %56, %53
  %86 = phi i64 [ 16, %56 ], [ %54, %53 ]
  %87 = icmp slt i64 %86, 16
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 %86
  %90 = sub nsw i64 16, %86
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %89, i64 %90, i1 false)
  %91 = trunc i64 %90 to i32
  store i32 %91, ptr %19, align 8
  br label %92

92:                                               ; preds = %2, %85, %88
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = load i32, ptr %7, align 8
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 1)
  %99 = load i32, ptr %8, align 4
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 7)
  %101 = add i32 %100, %98
  %102 = load i32, ptr %9, align 8
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 12)
  %104 = add i32 %101, %103
  %105 = load i32, ptr %10, align 4
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 18)
  %107 = add i32 %104, %106
  br label %111

108:                                              ; preds = %92
  %109 = load i32, ptr %9, align 8
  %110 = add i32 %109, 374761393
  br label %111

111:                                              ; preds = %108, %96
  %112 = phi i32 [ %107, %96 ], [ %110, %108 ]
  %113 = load i32, ptr %3, align 8
  %114 = add i32 %113, %112
  %115 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 15
  switch i32 %117, label %265 [
    i32 12, label %118
    i32 8, label %125
    i32 4, label %134
    i32 13, label %142
    i32 9, label %149
    i32 5, label %158
    i32 14, label %173
    i32 10, label %180
    i32 6, label %189
    i32 15, label %211
    i32 11, label %218
    i32 7, label %227
    i32 3, label %236
    i32 2, label %246
    i32 1, label %256
    i32 0, label %266
  ]

118:                                              ; preds = %111
  %119 = load i32, ptr %11, align 8
  %120 = mul i32 %119, -1028477379
  %121 = add i32 %120, %114
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %123 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 17)
  %124 = mul i32 %123, 668265263
  br label %125

125:                                              ; preds = %118, %111
  %126 = phi ptr [ %11, %111 ], [ %122, %118 ]
  %127 = phi i32 [ %114, %111 ], [ %124, %118 ]
  %128 = load i32, ptr %126, align 4
  %129 = mul i32 %128, -1028477379
  %130 = add i32 %129, %127
  %131 = getelementptr inbounds nuw i8, ptr %126, i64 4
  %132 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 17)
  %133 = mul i32 %132, 668265263
  br label %134

134:                                              ; preds = %125, %111
  %135 = phi ptr [ %11, %111 ], [ %131, %125 ]
  %136 = phi i32 [ %114, %111 ], [ %133, %125 ]
  %137 = load i32, ptr %135, align 4
  %138 = mul i32 %137, -1028477379
  %139 = add i32 %138, %136
  %140 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 17)
  %141 = mul i32 %140, 668265263
  br label %266

142:                                              ; preds = %111
  %143 = load i32, ptr %11, align 8
  %144 = mul i32 %143, -1028477379
  %145 = add i32 %144, %114
  %146 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %147 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 17)
  %148 = mul i32 %147, 668265263
  br label %149

149:                                              ; preds = %142, %111
  %150 = phi ptr [ %11, %111 ], [ %146, %142 ]
  %151 = phi i32 [ %114, %111 ], [ %148, %142 ]
  %152 = load i32, ptr %150, align 4
  %153 = mul i32 %152, -1028477379
  %154 = add i32 %153, %151
  %155 = getelementptr inbounds nuw i8, ptr %150, i64 4
  %156 = tail call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 17)
  %157 = mul i32 %156, 668265263
  br label %158

158:                                              ; preds = %149, %111
  %159 = phi ptr [ %11, %111 ], [ %155, %149 ]
  %160 = phi i32 [ %114, %111 ], [ %157, %149 ]
  %161 = load i32, ptr %159, align 4
  %162 = mul i32 %161, -1028477379
  %163 = add i32 %162, %160
  %164 = getelementptr inbounds nuw i8, ptr %159, i64 4
  %165 = tail call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 17)
  %166 = mul i32 %165, 668265263
  %167 = load i8, ptr %164, align 1
  %168 = zext i8 %167 to i32
  %169 = mul i32 %168, 374761393
  %170 = add i32 %166, %169
  %171 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 11)
  %172 = mul i32 %171, -1640531535
  br label %266

173:                                              ; preds = %111
  %174 = load i32, ptr %11, align 8
  %175 = mul i32 %174, -1028477379
  %176 = add i32 %175, %114
  %177 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %178 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 17)
  %179 = mul i32 %178, 668265263
  br label %180

180:                                              ; preds = %173, %111
  %181 = phi ptr [ %11, %111 ], [ %177, %173 ]
  %182 = phi i32 [ %114, %111 ], [ %179, %173 ]
  %183 = load i32, ptr %181, align 4
  %184 = mul i32 %183, -1028477379
  %185 = add i32 %184, %182
  %186 = getelementptr inbounds nuw i8, ptr %181, i64 4
  %187 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 17)
  %188 = mul i32 %187, 668265263
  br label %189

189:                                              ; preds = %180, %111
  %190 = phi ptr [ %11, %111 ], [ %186, %180 ]
  %191 = phi i32 [ %114, %111 ], [ %188, %180 ]
  %192 = load i32, ptr %190, align 4
  %193 = mul i32 %192, -1028477379
  %194 = add i32 %193, %191
  %195 = getelementptr inbounds nuw i8, ptr %190, i64 4
  %196 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 17)
  %197 = mul i32 %196, 668265263
  %198 = getelementptr inbounds nuw i8, ptr %190, i64 5
  %199 = load i8, ptr %195, align 1
  %200 = zext i8 %199 to i32
  %201 = mul i32 %200, 374761393
  %202 = add i32 %197, %201
  %203 = tail call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 11)
  %204 = mul i32 %203, -1640531535
  %205 = load i8, ptr %198, align 1
  %206 = zext i8 %205 to i32
  %207 = mul i32 %206, 374761393
  %208 = add i32 %204, %207
  %209 = tail call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 11)
  %210 = mul i32 %209, -1640531535
  br label %266

211:                                              ; preds = %111
  %212 = load i32, ptr %11, align 8
  %213 = mul i32 %212, -1028477379
  %214 = add i32 %213, %114
  %215 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %216 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 17)
  %217 = mul i32 %216, 668265263
  br label %218

218:                                              ; preds = %211, %111
  %219 = phi ptr [ %11, %111 ], [ %215, %211 ]
  %220 = phi i32 [ %114, %111 ], [ %217, %211 ]
  %221 = load i32, ptr %219, align 4
  %222 = mul i32 %221, -1028477379
  %223 = add i32 %222, %220
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 4
  %225 = tail call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 17)
  %226 = mul i32 %225, 668265263
  br label %227

227:                                              ; preds = %218, %111
  %228 = phi ptr [ %11, %111 ], [ %224, %218 ]
  %229 = phi i32 [ %114, %111 ], [ %226, %218 ]
  %230 = load i32, ptr %228, align 4
  %231 = mul i32 %230, -1028477379
  %232 = add i32 %231, %229
  %233 = getelementptr inbounds nuw i8, ptr %228, i64 4
  %234 = tail call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 17)
  %235 = mul i32 %234, 668265263
  br label %236

236:                                              ; preds = %227, %111
  %237 = phi ptr [ %11, %111 ], [ %233, %227 ]
  %238 = phi i32 [ %114, %111 ], [ %235, %227 ]
  %239 = getelementptr inbounds nuw i8, ptr %237, i64 1
  %240 = load i8, ptr %237, align 1
  %241 = zext i8 %240 to i32
  %242 = mul i32 %241, 374761393
  %243 = add i32 %242, %238
  %244 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 11)
  %245 = mul i32 %244, -1640531535
  br label %246

246:                                              ; preds = %236, %111
  %247 = phi ptr [ %11, %111 ], [ %239, %236 ]
  %248 = phi i32 [ %114, %111 ], [ %245, %236 ]
  %249 = getelementptr inbounds nuw i8, ptr %247, i64 1
  %250 = load i8, ptr %247, align 1
  %251 = zext i8 %250 to i32
  %252 = mul i32 %251, 374761393
  %253 = add i32 %252, %248
  %254 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 11)
  %255 = mul i32 %254, -1640531535
  br label %256

256:                                              ; preds = %246, %111
  %257 = phi ptr [ %11, %111 ], [ %249, %246 ]
  %258 = phi i32 [ %114, %111 ], [ %255, %246 ]
  %259 = load i8, ptr %257, align 1
  %260 = zext i8 %259 to i32
  %261 = mul i32 %260, 374761393
  %262 = add i32 %261, %258
  %263 = tail call i32 @llvm.fshl.i32(i32 %262, i32 %262, i32 11)
  %264 = mul i32 %263, -1640531535
  br label %266

265:                                              ; preds = %111
  unreachable

266:                                              ; preds = %111, %256, %134, %158, %189
  %267 = phi i32 [ %141, %134 ], [ %172, %158 ], [ %210, %189 ], [ %114, %111 ], [ %264, %256 ]
  %268 = lshr i32 %267, 15
  %269 = xor i32 %268, %267
  %270 = mul i32 %269, -2048144777
  %271 = lshr i32 %270, 13
  %272 = xor i32 %271, %270
  %273 = mul i32 %272, -1028477379
  %274 = lshr i32 %273, 16
  %275 = xor i32 %274, %273
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #6
  ret i32 %275
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @target_hash32(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #6
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
  br i1 %12, label %101, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %3, align 8
  %15 = add i32 %14, 32
  store i32 %15, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %13
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds nuw i8, ptr %11, i64 %23
  %25 = sub i32 16, %20
  %26 = zext i32 %25 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %0, i64 %26, i1 false)
  %27 = load i32, ptr %11, align 8
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %4
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  store i32 %31, ptr %7, align 8
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %5
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  store i32 %37, ptr %8, align 4
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %39 = load i32, ptr %38, align 8
  %40 = mul i32 %39, -2048144777
  %41 = add i32 %40, %1
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 13)
  %43 = mul i32 %42, -1640531535
  store i32 %43, ptr %9, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %6
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  store i32 %49, ptr %10, align 4
  %50 = load i32, ptr %19, align 8
  %51 = sub i32 16, %50
  %52 = zext i32 %51 to i64
  store i32 0, ptr %19, align 8
  br label %53

53:                                               ; preds = %22, %13
  %54 = phi i64 [ %52, %22 ], [ 0, %13 ]
  %55 = icmp samesign ugt i64 %54, 16
  br i1 %55, label %94, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %7, align 8
  %58 = load i32, ptr %8, align 4
  %59 = load i32, ptr %9, align 8
  %60 = load i32, ptr %10, align 4
  br label %61

61:                                               ; preds = %61, %56
  %62 = phi i64 [ %54, %56 ], [ %91, %61 ]
  %63 = phi i32 [ %57, %56 ], [ %72, %61 ]
  %64 = phi i32 [ %58, %56 ], [ %78, %61 ]
  %65 = phi i32 [ %59, %56 ], [ %84, %61 ]
  %66 = phi i32 [ %60, %56 ], [ %90, %61 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 %62
  %68 = load i32, ptr %67, align 1
  %69 = mul i32 %68, -2048144777
  %70 = add i32 %69, %63
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 13)
  %72 = mul i32 %71, -1640531535
  %73 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %74 = load i32, ptr %73, align 1
  %75 = mul i32 %74, -2048144777
  %76 = add i32 %75, %64
  %77 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 13)
  %78 = mul i32 %77, -1640531535
  %79 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %80 = load i32, ptr %79, align 1
  %81 = mul i32 %80, -2048144777
  %82 = add i32 %81, %65
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  %85 = getelementptr inbounds nuw i8, ptr %67, i64 12
  %86 = load i32, ptr %85, align 1
  %87 = mul i32 %86, -2048144777
  %88 = add i32 %87, %66
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 13)
  %90 = mul i32 %89, -1640531535
  %91 = add nuw nsw i64 %62, 16
  %92 = icmp eq i64 %62, 0
  br i1 %92, label %61, label %93, !llvm.loop !5

93:                                               ; preds = %61
  store i32 %72, ptr %7, align 8
  store i32 %78, ptr %8, align 4
  store i32 %84, ptr %9, align 8
  store i32 %90, ptr %10, align 4
  br label %94

94:                                               ; preds = %93, %53
  %95 = phi i64 [ %91, %93 ], [ %54, %53 ]
  %96 = icmp slt i64 %95, 32
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %95
  %99 = sub nsw i64 32, %95
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %98, i64 %99, i1 false)
  %100 = trunc i64 %99 to i32
  store i32 %100, ptr %19, align 8
  br label %101

101:                                              ; preds = %2, %94, %97
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %101
  %106 = load i32, ptr %7, align 8
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 1)
  %108 = load i32, ptr %8, align 4
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 7)
  %110 = add i32 %109, %107
  %111 = load i32, ptr %9, align 8
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 12)
  %113 = add i32 %110, %112
  %114 = load i32, ptr %10, align 4
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 18)
  %116 = add i32 %113, %115
  br label %120

117:                                              ; preds = %101
  %118 = load i32, ptr %9, align 8
  %119 = add i32 %118, 374761393
  br label %120

120:                                              ; preds = %117, %105
  %121 = phi i32 [ %116, %105 ], [ %119, %117 ]
  %122 = load i32, ptr %3, align 8
  %123 = add i32 %122, %121
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 15
  switch i32 %126, label %274 [
    i32 12, label %127
    i32 8, label %134
    i32 4, label %143
    i32 13, label %151
    i32 9, label %158
    i32 5, label %167
    i32 14, label %182
    i32 10, label %189
    i32 6, label %198
    i32 15, label %220
    i32 11, label %227
    i32 7, label %236
    i32 3, label %245
    i32 2, label %255
    i32 1, label %265
    i32 0, label %275
  ]

127:                                              ; preds = %120
  %128 = load i32, ptr %11, align 8
  %129 = mul i32 %128, -1028477379
  %130 = add i32 %129, %123
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %132 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 17)
  %133 = mul i32 %132, 668265263
  br label %134

134:                                              ; preds = %127, %120
  %135 = phi ptr [ %11, %120 ], [ %131, %127 ]
  %136 = phi i32 [ %123, %120 ], [ %133, %127 ]
  %137 = load i32, ptr %135, align 4
  %138 = mul i32 %137, -1028477379
  %139 = add i32 %138, %136
  %140 = getelementptr inbounds nuw i8, ptr %135, i64 4
  %141 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 17)
  %142 = mul i32 %141, 668265263
  br label %143

143:                                              ; preds = %134, %120
  %144 = phi ptr [ %11, %120 ], [ %140, %134 ]
  %145 = phi i32 [ %123, %120 ], [ %142, %134 ]
  %146 = load i32, ptr %144, align 4
  %147 = mul i32 %146, -1028477379
  %148 = add i32 %147, %145
  %149 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 17)
  %150 = mul i32 %149, 668265263
  br label %275

151:                                              ; preds = %120
  %152 = load i32, ptr %11, align 8
  %153 = mul i32 %152, -1028477379
  %154 = add i32 %153, %123
  %155 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %156 = tail call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 17)
  %157 = mul i32 %156, 668265263
  br label %158

158:                                              ; preds = %151, %120
  %159 = phi ptr [ %11, %120 ], [ %155, %151 ]
  %160 = phi i32 [ %123, %120 ], [ %157, %151 ]
  %161 = load i32, ptr %159, align 4
  %162 = mul i32 %161, -1028477379
  %163 = add i32 %162, %160
  %164 = getelementptr inbounds nuw i8, ptr %159, i64 4
  %165 = tail call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 17)
  %166 = mul i32 %165, 668265263
  br label %167

167:                                              ; preds = %158, %120
  %168 = phi ptr [ %11, %120 ], [ %164, %158 ]
  %169 = phi i32 [ %123, %120 ], [ %166, %158 ]
  %170 = load i32, ptr %168, align 4
  %171 = mul i32 %170, -1028477379
  %172 = add i32 %171, %169
  %173 = getelementptr inbounds nuw i8, ptr %168, i64 4
  %174 = tail call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 17)
  %175 = mul i32 %174, 668265263
  %176 = load i8, ptr %173, align 1
  %177 = zext i8 %176 to i32
  %178 = mul i32 %177, 374761393
  %179 = add i32 %175, %178
  %180 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 11)
  %181 = mul i32 %180, -1640531535
  br label %275

182:                                              ; preds = %120
  %183 = load i32, ptr %11, align 8
  %184 = mul i32 %183, -1028477379
  %185 = add i32 %184, %123
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %187 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 17)
  %188 = mul i32 %187, 668265263
  br label %189

189:                                              ; preds = %182, %120
  %190 = phi ptr [ %11, %120 ], [ %186, %182 ]
  %191 = phi i32 [ %123, %120 ], [ %188, %182 ]
  %192 = load i32, ptr %190, align 4
  %193 = mul i32 %192, -1028477379
  %194 = add i32 %193, %191
  %195 = getelementptr inbounds nuw i8, ptr %190, i64 4
  %196 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 17)
  %197 = mul i32 %196, 668265263
  br label %198

198:                                              ; preds = %189, %120
  %199 = phi ptr [ %11, %120 ], [ %195, %189 ]
  %200 = phi i32 [ %123, %120 ], [ %197, %189 ]
  %201 = load i32, ptr %199, align 4
  %202 = mul i32 %201, -1028477379
  %203 = add i32 %202, %200
  %204 = getelementptr inbounds nuw i8, ptr %199, i64 4
  %205 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 17)
  %206 = mul i32 %205, 668265263
  %207 = getelementptr inbounds nuw i8, ptr %199, i64 5
  %208 = load i8, ptr %204, align 1
  %209 = zext i8 %208 to i32
  %210 = mul i32 %209, 374761393
  %211 = add i32 %206, %210
  %212 = tail call i32 @llvm.fshl.i32(i32 %211, i32 %211, i32 11)
  %213 = mul i32 %212, -1640531535
  %214 = load i8, ptr %207, align 1
  %215 = zext i8 %214 to i32
  %216 = mul i32 %215, 374761393
  %217 = add i32 %213, %216
  %218 = tail call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 11)
  %219 = mul i32 %218, -1640531535
  br label %275

220:                                              ; preds = %120
  %221 = load i32, ptr %11, align 8
  %222 = mul i32 %221, -1028477379
  %223 = add i32 %222, %123
  %224 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %225 = tail call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 17)
  %226 = mul i32 %225, 668265263
  br label %227

227:                                              ; preds = %220, %120
  %228 = phi ptr [ %11, %120 ], [ %224, %220 ]
  %229 = phi i32 [ %123, %120 ], [ %226, %220 ]
  %230 = load i32, ptr %228, align 4
  %231 = mul i32 %230, -1028477379
  %232 = add i32 %231, %229
  %233 = getelementptr inbounds nuw i8, ptr %228, i64 4
  %234 = tail call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 17)
  %235 = mul i32 %234, 668265263
  br label %236

236:                                              ; preds = %227, %120
  %237 = phi ptr [ %11, %120 ], [ %233, %227 ]
  %238 = phi i32 [ %123, %120 ], [ %235, %227 ]
  %239 = load i32, ptr %237, align 4
  %240 = mul i32 %239, -1028477379
  %241 = add i32 %240, %238
  %242 = getelementptr inbounds nuw i8, ptr %237, i64 4
  %243 = tail call i32 @llvm.fshl.i32(i32 %241, i32 %241, i32 17)
  %244 = mul i32 %243, 668265263
  br label %245

245:                                              ; preds = %236, %120
  %246 = phi ptr [ %11, %120 ], [ %242, %236 ]
  %247 = phi i32 [ %123, %120 ], [ %244, %236 ]
  %248 = getelementptr inbounds nuw i8, ptr %246, i64 1
  %249 = load i8, ptr %246, align 1
  %250 = zext i8 %249 to i32
  %251 = mul i32 %250, 374761393
  %252 = add i32 %251, %247
  %253 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 11)
  %254 = mul i32 %253, -1640531535
  br label %255

255:                                              ; preds = %245, %120
  %256 = phi ptr [ %11, %120 ], [ %248, %245 ]
  %257 = phi i32 [ %123, %120 ], [ %254, %245 ]
  %258 = getelementptr inbounds nuw i8, ptr %256, i64 1
  %259 = load i8, ptr %256, align 1
  %260 = zext i8 %259 to i32
  %261 = mul i32 %260, 374761393
  %262 = add i32 %261, %257
  %263 = tail call i32 @llvm.fshl.i32(i32 %262, i32 %262, i32 11)
  %264 = mul i32 %263, -1640531535
  br label %265

265:                                              ; preds = %255, %120
  %266 = phi ptr [ %11, %120 ], [ %258, %255 ]
  %267 = phi i32 [ %123, %120 ], [ %264, %255 ]
  %268 = load i8, ptr %266, align 1
  %269 = zext i8 %268 to i32
  %270 = mul i32 %269, 374761393
  %271 = add i32 %270, %267
  %272 = tail call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 11)
  %273 = mul i32 %272, -1640531535
  br label %275

274:                                              ; preds = %120
  unreachable

275:                                              ; preds = %120, %265, %143, %167, %198
  %276 = phi i32 [ %150, %143 ], [ %181, %167 ], [ %219, %198 ], [ %123, %120 ], [ %273, %265 ]
  %277 = lshr i32 %276, 15
  %278 = xor i32 %277, %276
  %279 = mul i32 %278, -2048144777
  %280 = lshr i32 %279, 13
  %281 = xor i32 %280, %279
  %282 = mul i32 %281, -1028477379
  %283 = lshr i32 %282, 16
  %284 = xor i32 %283, %282
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #6
  ret i32 %284
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @target_hash64(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #6
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
  br i1 %12, label %101, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %3, align 8
  %15 = add i32 %14, 64
  store i32 %15, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %13
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds nuw i8, ptr %11, i64 %23
  %25 = sub i32 16, %20
  %26 = zext i32 %25 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %0, i64 %26, i1 false)
  %27 = load i32, ptr %11, align 8
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %4
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  store i32 %31, ptr %7, align 8
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %5
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  store i32 %37, ptr %8, align 4
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %39 = load i32, ptr %38, align 8
  %40 = mul i32 %39, -2048144777
  %41 = add i32 %40, %1
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 13)
  %43 = mul i32 %42, -1640531535
  store i32 %43, ptr %9, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %6
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  store i32 %49, ptr %10, align 4
  %50 = load i32, ptr %19, align 8
  %51 = sub i32 16, %50
  %52 = zext i32 %51 to i64
  store i32 0, ptr %19, align 8
  br label %53

53:                                               ; preds = %22, %13
  %54 = phi i64 [ %52, %22 ], [ 0, %13 ]
  %55 = icmp samesign ugt i64 %54, 48
  br i1 %55, label %94, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %7, align 8
  %58 = load i32, ptr %8, align 4
  %59 = load i32, ptr %9, align 8
  %60 = load i32, ptr %10, align 4
  br label %61

61:                                               ; preds = %61, %56
  %62 = phi i64 [ %54, %56 ], [ %91, %61 ]
  %63 = phi i32 [ %57, %56 ], [ %72, %61 ]
  %64 = phi i32 [ %58, %56 ], [ %78, %61 ]
  %65 = phi i32 [ %59, %56 ], [ %84, %61 ]
  %66 = phi i32 [ %60, %56 ], [ %90, %61 ]
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 %62
  %68 = load i32, ptr %67, align 1
  %69 = mul i32 %68, -2048144777
  %70 = add i32 %69, %63
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 13)
  %72 = mul i32 %71, -1640531535
  %73 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %74 = load i32, ptr %73, align 1
  %75 = mul i32 %74, -2048144777
  %76 = add i32 %75, %64
  %77 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 13)
  %78 = mul i32 %77, -1640531535
  %79 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %80 = load i32, ptr %79, align 1
  %81 = mul i32 %80, -2048144777
  %82 = add i32 %81, %65
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  %85 = getelementptr inbounds nuw i8, ptr %67, i64 12
  %86 = load i32, ptr %85, align 1
  %87 = mul i32 %86, -2048144777
  %88 = add i32 %87, %66
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 13)
  %90 = mul i32 %89, -1640531535
  %91 = add nuw nsw i64 %62, 16
  %92 = icmp samesign ugt i64 %62, 32
  br i1 %92, label %93, label %61, !llvm.loop !5

93:                                               ; preds = %61
  store i32 %72, ptr %7, align 8
  store i32 %78, ptr %8, align 4
  store i32 %84, ptr %9, align 8
  store i32 %90, ptr %10, align 4
  br label %94

94:                                               ; preds = %93, %53
  %95 = phi i64 [ %91, %93 ], [ %54, %53 ]
  %96 = icmp samesign ult i64 %95, 64
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %95
  %99 = sub nuw nsw i64 64, %95
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %98, i64 %99, i1 false)
  %100 = trunc nuw nsw i64 %99 to i32
  store i32 %100, ptr %19, align 8
  br label %101

101:                                              ; preds = %2, %94, %97
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %101
  %106 = load i32, ptr %7, align 8
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 1)
  %108 = load i32, ptr %8, align 4
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 7)
  %110 = add i32 %109, %107
  %111 = load i32, ptr %9, align 8
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 12)
  %113 = add i32 %110, %112
  %114 = load i32, ptr %10, align 4
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 18)
  %116 = add i32 %113, %115
  br label %120

117:                                              ; preds = %101
  %118 = load i32, ptr %9, align 8
  %119 = add i32 %118, 374761393
  br label %120

120:                                              ; preds = %117, %105
  %121 = phi i32 [ %116, %105 ], [ %119, %117 ]
  %122 = load i32, ptr %3, align 8
  %123 = add i32 %122, %121
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 15
  switch i32 %126, label %274 [
    i32 12, label %127
    i32 8, label %134
    i32 4, label %143
    i32 13, label %151
    i32 9, label %158
    i32 5, label %167
    i32 14, label %182
    i32 10, label %189
    i32 6, label %198
    i32 15, label %220
    i32 11, label %227
    i32 7, label %236
    i32 3, label %245
    i32 2, label %255
    i32 1, label %265
    i32 0, label %275
  ]

127:                                              ; preds = %120
  %128 = load i32, ptr %11, align 8
  %129 = mul i32 %128, -1028477379
  %130 = add i32 %129, %123
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %132 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 17)
  %133 = mul i32 %132, 668265263
  br label %134

134:                                              ; preds = %127, %120
  %135 = phi ptr [ %11, %120 ], [ %131, %127 ]
  %136 = phi i32 [ %123, %120 ], [ %133, %127 ]
  %137 = load i32, ptr %135, align 4
  %138 = mul i32 %137, -1028477379
  %139 = add i32 %138, %136
  %140 = getelementptr inbounds nuw i8, ptr %135, i64 4
  %141 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 17)
  %142 = mul i32 %141, 668265263
  br label %143

143:                                              ; preds = %134, %120
  %144 = phi ptr [ %11, %120 ], [ %140, %134 ]
  %145 = phi i32 [ %123, %120 ], [ %142, %134 ]
  %146 = load i32, ptr %144, align 4
  %147 = mul i32 %146, -1028477379
  %148 = add i32 %147, %145
  %149 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 17)
  %150 = mul i32 %149, 668265263
  br label %275

151:                                              ; preds = %120
  %152 = load i32, ptr %11, align 8
  %153 = mul i32 %152, -1028477379
  %154 = add i32 %153, %123
  %155 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %156 = tail call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 17)
  %157 = mul i32 %156, 668265263
  br label %158

158:                                              ; preds = %151, %120
  %159 = phi ptr [ %11, %120 ], [ %155, %151 ]
  %160 = phi i32 [ %123, %120 ], [ %157, %151 ]
  %161 = load i32, ptr %159, align 4
  %162 = mul i32 %161, -1028477379
  %163 = add i32 %162, %160
  %164 = getelementptr inbounds nuw i8, ptr %159, i64 4
  %165 = tail call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 17)
  %166 = mul i32 %165, 668265263
  br label %167

167:                                              ; preds = %158, %120
  %168 = phi ptr [ %11, %120 ], [ %164, %158 ]
  %169 = phi i32 [ %123, %120 ], [ %166, %158 ]
  %170 = load i32, ptr %168, align 4
  %171 = mul i32 %170, -1028477379
  %172 = add i32 %171, %169
  %173 = getelementptr inbounds nuw i8, ptr %168, i64 4
  %174 = tail call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 17)
  %175 = mul i32 %174, 668265263
  %176 = load i8, ptr %173, align 1
  %177 = zext i8 %176 to i32
  %178 = mul i32 %177, 374761393
  %179 = add i32 %175, %178
  %180 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 11)
  %181 = mul i32 %180, -1640531535
  br label %275

182:                                              ; preds = %120
  %183 = load i32, ptr %11, align 8
  %184 = mul i32 %183, -1028477379
  %185 = add i32 %184, %123
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %187 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 17)
  %188 = mul i32 %187, 668265263
  br label %189

189:                                              ; preds = %182, %120
  %190 = phi ptr [ %11, %120 ], [ %186, %182 ]
  %191 = phi i32 [ %123, %120 ], [ %188, %182 ]
  %192 = load i32, ptr %190, align 4
  %193 = mul i32 %192, -1028477379
  %194 = add i32 %193, %191
  %195 = getelementptr inbounds nuw i8, ptr %190, i64 4
  %196 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 17)
  %197 = mul i32 %196, 668265263
  br label %198

198:                                              ; preds = %189, %120
  %199 = phi ptr [ %11, %120 ], [ %195, %189 ]
  %200 = phi i32 [ %123, %120 ], [ %197, %189 ]
  %201 = load i32, ptr %199, align 4
  %202 = mul i32 %201, -1028477379
  %203 = add i32 %202, %200
  %204 = getelementptr inbounds nuw i8, ptr %199, i64 4
  %205 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 17)
  %206 = mul i32 %205, 668265263
  %207 = getelementptr inbounds nuw i8, ptr %199, i64 5
  %208 = load i8, ptr %204, align 1
  %209 = zext i8 %208 to i32
  %210 = mul i32 %209, 374761393
  %211 = add i32 %206, %210
  %212 = tail call i32 @llvm.fshl.i32(i32 %211, i32 %211, i32 11)
  %213 = mul i32 %212, -1640531535
  %214 = load i8, ptr %207, align 1
  %215 = zext i8 %214 to i32
  %216 = mul i32 %215, 374761393
  %217 = add i32 %213, %216
  %218 = tail call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 11)
  %219 = mul i32 %218, -1640531535
  br label %275

220:                                              ; preds = %120
  %221 = load i32, ptr %11, align 8
  %222 = mul i32 %221, -1028477379
  %223 = add i32 %222, %123
  %224 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %225 = tail call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 17)
  %226 = mul i32 %225, 668265263
  br label %227

227:                                              ; preds = %220, %120
  %228 = phi ptr [ %11, %120 ], [ %224, %220 ]
  %229 = phi i32 [ %123, %120 ], [ %226, %220 ]
  %230 = load i32, ptr %228, align 4
  %231 = mul i32 %230, -1028477379
  %232 = add i32 %231, %229
  %233 = getelementptr inbounds nuw i8, ptr %228, i64 4
  %234 = tail call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 17)
  %235 = mul i32 %234, 668265263
  br label %236

236:                                              ; preds = %227, %120
  %237 = phi ptr [ %11, %120 ], [ %233, %227 ]
  %238 = phi i32 [ %123, %120 ], [ %235, %227 ]
  %239 = load i32, ptr %237, align 4
  %240 = mul i32 %239, -1028477379
  %241 = add i32 %240, %238
  %242 = getelementptr inbounds nuw i8, ptr %237, i64 4
  %243 = tail call i32 @llvm.fshl.i32(i32 %241, i32 %241, i32 17)
  %244 = mul i32 %243, 668265263
  br label %245

245:                                              ; preds = %236, %120
  %246 = phi ptr [ %11, %120 ], [ %242, %236 ]
  %247 = phi i32 [ %123, %120 ], [ %244, %236 ]
  %248 = getelementptr inbounds nuw i8, ptr %246, i64 1
  %249 = load i8, ptr %246, align 1
  %250 = zext i8 %249 to i32
  %251 = mul i32 %250, 374761393
  %252 = add i32 %251, %247
  %253 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 11)
  %254 = mul i32 %253, -1640531535
  br label %255

255:                                              ; preds = %245, %120
  %256 = phi ptr [ %11, %120 ], [ %248, %245 ]
  %257 = phi i32 [ %123, %120 ], [ %254, %245 ]
  %258 = getelementptr inbounds nuw i8, ptr %256, i64 1
  %259 = load i8, ptr %256, align 1
  %260 = zext i8 %259 to i32
  %261 = mul i32 %260, 374761393
  %262 = add i32 %261, %257
  %263 = tail call i32 @llvm.fshl.i32(i32 %262, i32 %262, i32 11)
  %264 = mul i32 %263, -1640531535
  br label %265

265:                                              ; preds = %255, %120
  %266 = phi ptr [ %11, %120 ], [ %258, %255 ]
  %267 = phi i32 [ %123, %120 ], [ %264, %255 ]
  %268 = load i8, ptr %266, align 1
  %269 = zext i8 %268 to i32
  %270 = mul i32 %269, 374761393
  %271 = add i32 %270, %267
  %272 = tail call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 11)
  %273 = mul i32 %272, -1640531535
  br label %275

274:                                              ; preds = %120
  unreachable

275:                                              ; preds = %120, %265, %143, %167, %198
  %276 = phi i32 [ %150, %143 ], [ %181, %167 ], [ %219, %198 ], [ %123, %120 ], [ %273, %265 ]
  %277 = lshr i32 %276, 15
  %278 = xor i32 %277, %276
  %279 = mul i32 %278, -2048144777
  %280 = lshr i32 %279, 13
  %281 = xor i32 %280, %279
  %282 = mul i32 %281, -1028477379
  %283 = lshr i32 %282, 16
  %284 = xor i32 %283, %282
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #6
  ret i32 %284
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
