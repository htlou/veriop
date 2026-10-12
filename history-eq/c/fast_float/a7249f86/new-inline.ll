; ModuleID = 'history-eq/c/fast_float/a7249f86/wrap.cpp'
source_filename = "history-eq/c/fast_float/a7249f86/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float8int_lutsIvE7chdigitE = comdat any

@_ZN10fast_float8int_lutsIvE7chdigitE = linkonce_odr dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", comdat, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 35) i64 @target_error(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #2
  %4 = trunc i64 %0 to i8
  %5 = and i8 %4, 7
  %6 = add nuw nsw i8 %5, 49
  store i8 %6, ptr %3, align 16, !tbaa !5
  %7 = lshr i64 %0, 4
  %8 = and i64 %7, 15
  %9 = add nuw nsw i64 %8, 246
  %10 = icmp samesign ult i64 %8, 10
  %11 = select i1 %10, i64 %8, i64 %9
  %12 = trunc i64 %11 to i8
  %13 = or disjoint i8 %12, 48
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %13, ptr %14, align 1, !tbaa !5
  %15 = lshr i64 %0, 8
  %16 = and i64 %15, 15
  %17 = add nuw nsw i64 %16, 246
  %18 = icmp samesign ult i64 %16, 10
  %19 = select i1 %18, i64 %16, i64 %17
  %20 = trunc i64 %19 to i8
  %21 = or disjoint i8 %20, 48
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %21, ptr %22, align 2, !tbaa !5
  %23 = lshr i64 %0, 12
  %24 = and i64 %23, 15
  %25 = add nuw nsw i64 %24, 246
  %26 = icmp samesign ult i64 %24, 10
  %27 = select i1 %26, i64 %24, i64 %25
  %28 = trunc i64 %27 to i8
  %29 = or disjoint i8 %28, 48
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %29, ptr %30, align 1, !tbaa !5
  %31 = lshr i64 %0, 16
  %32 = and i64 %31, 15
  %33 = add nuw nsw i64 %32, 246
  %34 = icmp samesign ult i64 %32, 10
  %35 = select i1 %34, i64 %32, i64 %33
  %36 = trunc i64 %35 to i8
  %37 = or disjoint i8 %36, 48
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %37, ptr %38, align 4, !tbaa !5
  %39 = lshr i64 %0, 20
  %40 = and i64 %39, 15
  %41 = add nuw nsw i64 %40, 246
  %42 = icmp samesign ult i64 %40, 10
  %43 = select i1 %42, i64 %40, i64 %41
  %44 = trunc i64 %43 to i8
  %45 = or disjoint i8 %44, 48
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %45, ptr %46, align 1, !tbaa !5
  %47 = lshr i64 %0, 24
  %48 = and i64 %47, 15
  %49 = add nuw nsw i64 %48, 246
  %50 = icmp samesign ult i64 %48, 10
  %51 = select i1 %50, i64 %48, i64 %49
  %52 = trunc i64 %51 to i8
  %53 = or disjoint i8 %52, 48
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %53, ptr %54, align 2, !tbaa !5
  %55 = lshr i64 %0, 28
  %56 = and i64 %55, 15
  %57 = add nuw nsw i64 %56, 246
  %58 = icmp samesign ult i64 %56, 10
  %59 = select i1 %58, i64 %56, i64 %57
  %60 = trunc i64 %59 to i8
  %61 = or disjoint i8 %60, 48
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %61, ptr %62, align 1, !tbaa !5
  %63 = lshr i64 %0, 32
  %64 = and i64 %63, 15
  %65 = add nuw nsw i64 %64, 246
  %66 = icmp samesign ult i64 %64, 10
  %67 = select i1 %66, i64 %64, i64 %65
  %68 = trunc i64 %67 to i8
  %69 = or disjoint i8 %68, 48
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %69, ptr %70, align 8, !tbaa !5
  %71 = lshr i64 %0, 36
  %72 = and i64 %71, 15
  %73 = add nuw nsw i64 %72, 246
  %74 = icmp samesign ult i64 %72, 10
  %75 = select i1 %74, i64 %72, i64 %73
  %76 = trunc i64 %75 to i8
  %77 = or disjoint i8 %76, 48
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %77, ptr %78, align 1, !tbaa !5
  %79 = lshr i64 %0, 40
  %80 = and i64 %79, 15
  %81 = add nuw nsw i64 %80, 246
  %82 = icmp samesign ult i64 %80, 10
  %83 = select i1 %82, i64 %80, i64 %81
  %84 = trunc i64 %83 to i8
  %85 = or disjoint i8 %84, 48
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %85, ptr %86, align 2, !tbaa !5
  %87 = lshr i64 %0, 44
  %88 = and i64 %87, 15
  %89 = add nuw nsw i64 %88, 246
  %90 = icmp samesign ult i64 %88, 10
  %91 = select i1 %90, i64 %88, i64 %89
  %92 = trunc i64 %91 to i8
  %93 = or disjoint i8 %92, 48
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 %93, ptr %94, align 1, !tbaa !5
  %95 = lshr i64 %0, 48
  %96 = and i64 %95, 15
  %97 = add nuw nsw i64 %96, 246
  %98 = icmp samesign ult i64 %96, 10
  %99 = select i1 %98, i64 %96, i64 %97
  %100 = trunc i64 %99 to i8
  %101 = or disjoint i8 %100, 48
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %101, ptr %102, align 4, !tbaa !5
  %103 = lshr i64 %0, 52
  %104 = and i64 %103, 15
  %105 = add nuw nsw i64 %104, 246
  %106 = icmp samesign ult i64 %104, 10
  %107 = select i1 %106, i64 %104, i64 %105
  %108 = trunc i64 %107 to i8
  %109 = or disjoint i8 %108, 48
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %109, ptr %110, align 1, !tbaa !5
  %111 = lshr i64 %0, 56
  %112 = and i64 %111, 15
  %113 = add nuw nsw i64 %112, 246
  %114 = icmp samesign ult i64 %112, 10
  %115 = select i1 %114, i64 %112, i64 %113
  %116 = trunc i64 %115 to i8
  %117 = or disjoint i8 %116, 48
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %117, ptr %118, align 2, !tbaa !5
  %119 = lshr i64 %0, 60
  %120 = add nuw nsw i64 %119, 246
  %121 = icmp ult i64 %0, -6917529027641081856
  %122 = select i1 %121, i64 %119, i64 %120
  %123 = trunc i64 %122 to i8
  %124 = or disjoint i8 %123, 48
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %124, ptr %125, align 1, !tbaa !5
  %126 = and i64 %1, 15
  %127 = add nuw nsw i64 %126, 246
  %128 = icmp samesign ult i64 %126, 10
  %129 = select i1 %128, i64 %126, i64 %127
  %130 = trunc i64 %129 to i8
  %131 = or disjoint i8 %130, 48
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %131, ptr %132, align 16, !tbaa !5
  %133 = lshr i64 %1, 4
  %134 = and i64 %133, 15
  %135 = add nuw nsw i64 %134, 246
  %136 = icmp samesign ult i64 %134, 10
  %137 = select i1 %136, i64 %134, i64 %135
  %138 = trunc i64 %137 to i8
  %139 = or disjoint i8 %138, 48
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %139, ptr %140, align 1, !tbaa !5
  %141 = lshr i64 %1, 8
  %142 = and i64 %141, 15
  %143 = add nuw nsw i64 %142, 246
  %144 = icmp samesign ult i64 %142, 10
  %145 = select i1 %144, i64 %142, i64 %143
  %146 = trunc i64 %145 to i8
  %147 = or disjoint i8 %146, 48
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %147, ptr %148, align 2, !tbaa !5
  %149 = lshr i64 %1, 12
  %150 = and i64 %149, 15
  %151 = add nuw nsw i64 %150, 246
  %152 = icmp samesign ult i64 %150, 10
  %153 = select i1 %152, i64 %150, i64 %151
  %154 = trunc i64 %153 to i8
  %155 = or disjoint i8 %154, 48
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 %155, ptr %156, align 1, !tbaa !5
  %157 = load i64, ptr %3, align 16
  %158 = add i64 %157, 5063812098665367110
  %159 = add i64 %157, -3472328296227680304
  %160 = or i64 %158, %159
  %161 = and i64 %160, -9187201950435737472
  %162 = icmp eq i64 %161, 0
  %163 = trunc i64 %157 to i8
  br i1 %162, label %164, label %195

164:                                              ; preds = %2
  %165 = mul i64 %159, 10
  %166 = lshr i64 %159, 8
  %167 = add i64 %165, %166
  %168 = and i64 %167, 1095216660735
  %169 = mul i64 %168, 4294967296000100
  %170 = lshr i64 %167, 16
  %171 = and i64 %170, 1095216660735
  %172 = mul i64 %171, 42949672960001
  %173 = add i64 %172, %169
  %174 = lshr i64 %173, 32
  %175 = load i64, ptr %70, align 8
  %176 = add i64 %175, 5063812098665367110
  %177 = add i64 %175, -3472328296227680304
  %178 = or i64 %176, %177
  %179 = and i64 %178, -9187201950435737472
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %164
  %182 = mul nuw nsw i64 %174, 100000000
  %183 = mul i64 %177, 10
  %184 = lshr i64 %177, 8
  %185 = add i64 %183, %184
  %186 = and i64 %185, 1095216660735
  %187 = mul i64 %186, 4294967296000100
  %188 = lshr i64 %185, 16
  %189 = and i64 %188, 1095216660735
  %190 = mul i64 %189, 42949672960001
  %191 = add i64 %190, %187
  %192 = lshr i64 %191, 32
  %193 = add nuw nsw i64 %192, %182
  %194 = load i32, ptr %132, align 16
  br label %200

195:                                              ; preds = %164, %2
  %196 = phi i64 [ 0, %2 ], [ %174, %164 ]
  %197 = phi i64 [ 0, %2 ], [ 8, %164 ]
  %198 = phi i64 [ %157, %2 ], [ %175, %164 ]
  %199 = trunc i64 %198 to i32
  br label %200

200:                                              ; preds = %195, %181
  %201 = phi i32 [ %194, %181 ], [ %199, %195 ]
  %202 = phi i64 [ 16, %181 ], [ %197, %195 ]
  %203 = phi i64 [ %193, %181 ], [ %196, %195 ]
  %204 = add i32 %201, 1179010630
  %205 = add i32 %201, -808464432
  %206 = or i32 %204, %205
  %207 = and i32 %206, -2139062144
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %200
  %210 = mul i64 %203, 10000
  %211 = mul i32 %205, 10
  %212 = lshr i32 %205, 8
  %213 = add i32 %211, %212
  %214 = and i32 %213, 16711935
  %215 = mul i32 %214, 6553601
  %216 = lshr i32 %215, 16
  %217 = zext nneg i32 %216 to i64
  %218 = add i64 %210, %217
  %219 = add nuw nsw i64 %202, 4
  %220 = icmp eq i64 %219, 20
  br i1 %220, label %246, label %221

221:                                              ; preds = %209, %200
  %222 = phi i64 [ %203, %200 ], [ %218, %209 ]
  %223 = phi i64 [ %202, %200 ], [ %219, %209 ]
  br label %224

224:                                              ; preds = %221, %231
  %225 = phi i64 [ %237, %231 ], [ %222, %221 ]
  %226 = phi i64 [ %238, %231 ], [ %223, %221 ]
  %227 = getelementptr inbounds nuw i8, ptr %3, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !5
  %229 = add i8 %228, -48
  %230 = icmp ult i8 %229, 10
  br i1 %230, label %231, label %240

231:                                              ; preds = %224
  %232 = zext nneg i8 %228 to i64
  %233 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !5
  %235 = mul i64 %225, 10
  %236 = zext i8 %234 to i64
  %237 = add i64 %235, %236
  %238 = add nuw nsw i64 %226, 1
  %239 = icmp eq i64 %238, 20
  br i1 %239, label %246, label %224

240:                                              ; preds = %224
  %241 = icmp samesign eq i64 %226, 0
  br i1 %241, label %255, label %242

242:                                              ; preds = %240
  %243 = icmp ugt i64 %226, 20
  br i1 %243, label %255, label %244

244:                                              ; preds = %242
  %245 = icmp eq i64 %226, 20
  br i1 %245, label %246, label %254

246:                                              ; preds = %231, %209, %244
  %247 = phi i64 [ %225, %244 ], [ %218, %209 ], [ %237, %231 ]
  %248 = add i8 %163, -50
  %249 = icmp ult i8 %248, -2
  br i1 %249, label %255, label %250

250:                                              ; preds = %246
  %251 = icmp eq i8 %163, 49
  %252 = icmp ult i64 %247, -8446744073709551616
  %253 = select i1 %251, i1 %252, i1 false
  br i1 %253, label %255, label %254

254:                                              ; preds = %250, %244
  br label %255

255:                                              ; preds = %240, %242, %246, %250, %254
  %256 = phi i64 [ 34, %246 ], [ 34, %242 ], [ 34, %250 ], [ 0, %254 ], [ 22, %240 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #2
  ret i64 %256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_value(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #2
  %4 = trunc i64 %0 to i8
  %5 = and i8 %4, 7
  %6 = add nuw nsw i8 %5, 49
  store i8 %6, ptr %3, align 16, !tbaa !5
  %7 = lshr i64 %0, 4
  %8 = and i64 %7, 15
  %9 = add nuw nsw i64 %8, 246
  %10 = icmp samesign ult i64 %8, 10
  %11 = select i1 %10, i64 %8, i64 %9
  %12 = trunc i64 %11 to i8
  %13 = or disjoint i8 %12, 48
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %13, ptr %14, align 1, !tbaa !5
  %15 = lshr i64 %0, 8
  %16 = and i64 %15, 15
  %17 = add nuw nsw i64 %16, 246
  %18 = icmp samesign ult i64 %16, 10
  %19 = select i1 %18, i64 %16, i64 %17
  %20 = trunc i64 %19 to i8
  %21 = or disjoint i8 %20, 48
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %21, ptr %22, align 2, !tbaa !5
  %23 = lshr i64 %0, 12
  %24 = and i64 %23, 15
  %25 = add nuw nsw i64 %24, 246
  %26 = icmp samesign ult i64 %24, 10
  %27 = select i1 %26, i64 %24, i64 %25
  %28 = trunc i64 %27 to i8
  %29 = or disjoint i8 %28, 48
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %29, ptr %30, align 1, !tbaa !5
  %31 = lshr i64 %0, 16
  %32 = and i64 %31, 15
  %33 = add nuw nsw i64 %32, 246
  %34 = icmp samesign ult i64 %32, 10
  %35 = select i1 %34, i64 %32, i64 %33
  %36 = trunc i64 %35 to i8
  %37 = or disjoint i8 %36, 48
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %37, ptr %38, align 4, !tbaa !5
  %39 = lshr i64 %0, 20
  %40 = and i64 %39, 15
  %41 = add nuw nsw i64 %40, 246
  %42 = icmp samesign ult i64 %40, 10
  %43 = select i1 %42, i64 %40, i64 %41
  %44 = trunc i64 %43 to i8
  %45 = or disjoint i8 %44, 48
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %45, ptr %46, align 1, !tbaa !5
  %47 = lshr i64 %0, 24
  %48 = and i64 %47, 15
  %49 = add nuw nsw i64 %48, 246
  %50 = icmp samesign ult i64 %48, 10
  %51 = select i1 %50, i64 %48, i64 %49
  %52 = trunc i64 %51 to i8
  %53 = or disjoint i8 %52, 48
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %53, ptr %54, align 2, !tbaa !5
  %55 = lshr i64 %0, 28
  %56 = and i64 %55, 15
  %57 = add nuw nsw i64 %56, 246
  %58 = icmp samesign ult i64 %56, 10
  %59 = select i1 %58, i64 %56, i64 %57
  %60 = trunc i64 %59 to i8
  %61 = or disjoint i8 %60, 48
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %61, ptr %62, align 1, !tbaa !5
  %63 = lshr i64 %0, 32
  %64 = and i64 %63, 15
  %65 = add nuw nsw i64 %64, 246
  %66 = icmp samesign ult i64 %64, 10
  %67 = select i1 %66, i64 %64, i64 %65
  %68 = trunc i64 %67 to i8
  %69 = or disjoint i8 %68, 48
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %69, ptr %70, align 8, !tbaa !5
  %71 = lshr i64 %0, 36
  %72 = and i64 %71, 15
  %73 = add nuw nsw i64 %72, 246
  %74 = icmp samesign ult i64 %72, 10
  %75 = select i1 %74, i64 %72, i64 %73
  %76 = trunc i64 %75 to i8
  %77 = or disjoint i8 %76, 48
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %77, ptr %78, align 1, !tbaa !5
  %79 = lshr i64 %0, 40
  %80 = and i64 %79, 15
  %81 = add nuw nsw i64 %80, 246
  %82 = icmp samesign ult i64 %80, 10
  %83 = select i1 %82, i64 %80, i64 %81
  %84 = trunc i64 %83 to i8
  %85 = or disjoint i8 %84, 48
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %85, ptr %86, align 2, !tbaa !5
  %87 = lshr i64 %0, 44
  %88 = and i64 %87, 15
  %89 = add nuw nsw i64 %88, 246
  %90 = icmp samesign ult i64 %88, 10
  %91 = select i1 %90, i64 %88, i64 %89
  %92 = trunc i64 %91 to i8
  %93 = or disjoint i8 %92, 48
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 %93, ptr %94, align 1, !tbaa !5
  %95 = lshr i64 %0, 48
  %96 = and i64 %95, 15
  %97 = add nuw nsw i64 %96, 246
  %98 = icmp samesign ult i64 %96, 10
  %99 = select i1 %98, i64 %96, i64 %97
  %100 = trunc i64 %99 to i8
  %101 = or disjoint i8 %100, 48
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %101, ptr %102, align 4, !tbaa !5
  %103 = lshr i64 %0, 52
  %104 = and i64 %103, 15
  %105 = add nuw nsw i64 %104, 246
  %106 = icmp samesign ult i64 %104, 10
  %107 = select i1 %106, i64 %104, i64 %105
  %108 = trunc i64 %107 to i8
  %109 = or disjoint i8 %108, 48
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %109, ptr %110, align 1, !tbaa !5
  %111 = lshr i64 %0, 56
  %112 = and i64 %111, 15
  %113 = add nuw nsw i64 %112, 246
  %114 = icmp samesign ult i64 %112, 10
  %115 = select i1 %114, i64 %112, i64 %113
  %116 = trunc i64 %115 to i8
  %117 = or disjoint i8 %116, 48
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %117, ptr %118, align 2, !tbaa !5
  %119 = lshr i64 %0, 60
  %120 = add nuw nsw i64 %119, 246
  %121 = icmp ult i64 %0, -6917529027641081856
  %122 = select i1 %121, i64 %119, i64 %120
  %123 = trunc i64 %122 to i8
  %124 = or disjoint i8 %123, 48
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %124, ptr %125, align 1, !tbaa !5
  %126 = and i64 %1, 15
  %127 = add nuw nsw i64 %126, 246
  %128 = icmp samesign ult i64 %126, 10
  %129 = select i1 %128, i64 %126, i64 %127
  %130 = trunc i64 %129 to i8
  %131 = or disjoint i8 %130, 48
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %131, ptr %132, align 16, !tbaa !5
  %133 = lshr i64 %1, 4
  %134 = and i64 %133, 15
  %135 = add nuw nsw i64 %134, 246
  %136 = icmp samesign ult i64 %134, 10
  %137 = select i1 %136, i64 %134, i64 %135
  %138 = trunc i64 %137 to i8
  %139 = or disjoint i8 %138, 48
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %139, ptr %140, align 1, !tbaa !5
  %141 = lshr i64 %1, 8
  %142 = and i64 %141, 15
  %143 = add nuw nsw i64 %142, 246
  %144 = icmp samesign ult i64 %142, 10
  %145 = select i1 %144, i64 %142, i64 %143
  %146 = trunc i64 %145 to i8
  %147 = or disjoint i8 %146, 48
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %147, ptr %148, align 2, !tbaa !5
  %149 = lshr i64 %1, 12
  %150 = and i64 %149, 15
  %151 = add nuw nsw i64 %150, 246
  %152 = icmp samesign ult i64 %150, 10
  %153 = select i1 %152, i64 %150, i64 %151
  %154 = trunc i64 %153 to i8
  %155 = or disjoint i8 %154, 48
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 %155, ptr %156, align 1, !tbaa !5
  %157 = load i64, ptr %3, align 16
  %158 = add i64 %157, 5063812098665367110
  %159 = add i64 %157, -3472328296227680304
  %160 = or i64 %158, %159
  %161 = and i64 %160, -9187201950435737472
  %162 = icmp eq i64 %161, 0
  %163 = trunc i64 %157 to i8
  br i1 %162, label %164, label %195

164:                                              ; preds = %2
  %165 = mul i64 %159, 10
  %166 = lshr i64 %159, 8
  %167 = add i64 %165, %166
  %168 = and i64 %167, 1095216660735
  %169 = mul i64 %168, 4294967296000100
  %170 = lshr i64 %167, 16
  %171 = and i64 %170, 1095216660735
  %172 = mul i64 %171, 42949672960001
  %173 = add i64 %172, %169
  %174 = lshr i64 %173, 32
  %175 = load i64, ptr %70, align 8
  %176 = add i64 %175, 5063812098665367110
  %177 = add i64 %175, -3472328296227680304
  %178 = or i64 %176, %177
  %179 = and i64 %178, -9187201950435737472
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %164
  %182 = mul nuw nsw i64 %174, 100000000
  %183 = mul i64 %177, 10
  %184 = lshr i64 %177, 8
  %185 = add i64 %183, %184
  %186 = and i64 %185, 1095216660735
  %187 = mul i64 %186, 4294967296000100
  %188 = lshr i64 %185, 16
  %189 = and i64 %188, 1095216660735
  %190 = mul i64 %189, 42949672960001
  %191 = add i64 %190, %187
  %192 = lshr i64 %191, 32
  %193 = add nuw nsw i64 %192, %182
  %194 = load i32, ptr %132, align 16
  br label %200

195:                                              ; preds = %164, %2
  %196 = phi i64 [ 0, %2 ], [ %174, %164 ]
  %197 = phi i64 [ 0, %2 ], [ 8, %164 ]
  %198 = phi i64 [ %157, %2 ], [ %175, %164 ]
  %199 = trunc i64 %198 to i32
  br label %200

200:                                              ; preds = %195, %181
  %201 = phi i32 [ %194, %181 ], [ %199, %195 ]
  %202 = phi i64 [ 16, %181 ], [ %197, %195 ]
  %203 = phi i64 [ %193, %181 ], [ %196, %195 ]
  %204 = add i32 %201, 1179010630
  %205 = add i32 %201, -808464432
  %206 = or i32 %204, %205
  %207 = and i32 %206, -2139062144
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %200
  %210 = mul i64 %203, 10000
  %211 = mul i32 %205, 10
  %212 = lshr i32 %205, 8
  %213 = add i32 %211, %212
  %214 = and i32 %213, 16711935
  %215 = mul i32 %214, 6553601
  %216 = lshr i32 %215, 16
  %217 = zext nneg i32 %216 to i64
  %218 = add i64 %210, %217
  %219 = add nuw nsw i64 %202, 4
  %220 = icmp eq i64 %219, 20
  br i1 %220, label %245, label %221

221:                                              ; preds = %209, %200
  %222 = phi i64 [ %203, %200 ], [ %218, %209 ]
  %223 = phi i64 [ %202, %200 ], [ %219, %209 ]
  br label %224

224:                                              ; preds = %221, %231
  %225 = phi i64 [ %237, %231 ], [ %222, %221 ]
  %226 = phi i64 [ %238, %231 ], [ %223, %221 ]
  %227 = getelementptr inbounds nuw i8, ptr %3, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !5
  %229 = add i8 %228, -48
  %230 = icmp ult i8 %229, 10
  br i1 %230, label %231, label %240

231:                                              ; preds = %224
  %232 = zext nneg i8 %228 to i64
  %233 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !5
  %235 = mul i64 %225, 10
  %236 = zext i8 %234 to i64
  %237 = add i64 %235, %236
  %238 = add nuw nsw i64 %226, 1
  %239 = icmp eq i64 %238, 20
  br i1 %239, label %245, label %224

240:                                              ; preds = %224
  %241 = add i64 %226, -21
  %242 = icmp ult i64 %241, -20
  br i1 %242, label %254, label %243

243:                                              ; preds = %240
  %244 = icmp eq i64 %226, 20
  br i1 %244, label %245, label %254

245:                                              ; preds = %231, %209, %243
  %246 = phi i64 [ %225, %243 ], [ %218, %209 ], [ %237, %231 ]
  %247 = add i8 %163, -50
  %248 = icmp ult i8 %247, -2
  br i1 %248, label %254, label %249

249:                                              ; preds = %245
  %250 = icmp eq i8 %163, 49
  %251 = icmp ult i64 %246, -8446744073709551616
  %252 = select i1 %250, i1 %251, i1 false
  %253 = select i1 %252, i64 0, i64 %246
  br label %254

254:                                              ; preds = %240, %243, %245, %249
  %255 = phi i64 [ 0, %245 ], [ 0, %240 ], [ %225, %243 ], [ %253, %249 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #2
  ret i64 %255
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
