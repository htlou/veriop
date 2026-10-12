; ModuleID = 'history-eq/c/fast_float/b2e41e8b/dispatch_slice.cpp'
source_filename = "history-eq/c/fast_float/b2e41e8b/dispatch_slice.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.fast_float::parsed_number_string_t" = type <{ i64, i64, ptr, i8, i8, i8, [5 x i8], %"struct.fast_float::span", %"struct.fast_float::span", i32, [4 x i8] }>
%"struct.fast_float::span" = type { ptr, i64 }

$_ZN10fast_float30parse_number_string_javascriptIcEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EEb = comdat any

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 2) i64 @target_valid() local_unnamed_addr #0 {
  %1 = alloca [2 x i8], align 2
  %2 = alloca %"struct.fast_float::parsed_number_string_t", align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %1) #4
  store i16 13614, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #4
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @_ZN10fast_float30parse_number_string_javascriptIcEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EEb(ptr dead_on_unwind nonnull writable sret(%"struct.fast_float::parsed_number_string_t") align 8 %2, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 565, i64 42949673006, i1 noundef zeroext true) #4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 25
  %5 = load i8, ptr %4, align 1, !range !15, !noundef !16
  %6 = zext nneg i8 %5 to i64
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %1) #4
  ret i64 %6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @target_error() local_unnamed_addr #0 {
  %1 = alloca [2 x i8], align 2
  %2 = alloca %"struct.fast_float::parsed_number_string_t", align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %1) #4
  store i16 13614, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #4
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @_ZN10fast_float30parse_number_string_javascriptIcEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EEb(ptr dead_on_unwind nonnull writable sret(%"struct.fast_float::parsed_number_string_t") align 8 %2, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 565, i64 42949673006, i1 noundef zeroext true) #4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %5 = load i32, ptr %4, align 8
  %6 = sext i32 %5 to i64
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %1) #4
  ret i64 %6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @target_consumed() local_unnamed_addr #0 {
  %1 = alloca [2 x i8], align 2
  %2 = alloca %"struct.fast_float::parsed_number_string_t", align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %1) #4
  store i16 13614, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #4
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @_ZN10fast_float30parse_number_string_javascriptIcEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EEb(ptr dead_on_unwind nonnull writable sret(%"struct.fast_float::parsed_number_string_t") align 8 %2, ptr noundef nonnull %1, ptr noundef nonnull %3, i64 565, i64 42949673006, i1 noundef zeroext true) #4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %7, %8
  %10 = select i1 %6, i64 -1, i64 %9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %1) #4
  ret i64 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN10fast_float30parse_number_string_javascriptIcEENS_22parsed_number_string_tIT_EEPKS2_S5_NS_15parse_options_tIS2_EEb(ptr dead_on_unwind noalias writable sret(%"struct.fast_float::parsed_number_string_t") align 8 %0, ptr noundef %1, ptr noundef %2, i64 %3, i64 %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %7 = ptrtoint ptr %2 to i64
  %8 = trunc i64 %4 to i8
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 45
  %11 = zext i1 %10 to i8
  br i1 %10, label %17, label %12

12:                                               ; preds = %6
  %13 = and i64 %3, 128
  %14 = icmp ne i64 %13, 0
  %15 = icmp eq i8 %9, 43
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %12, %6
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %21, i8 0, i64 32, i1 false)
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %0, i8 0, i64 27, i1 false)
  store ptr %18, ptr %22, align 8, !alias.scope !20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %23, align 8, !alias.scope !20
  br label %473

24:                                               ; preds = %17
  %25 = load i8, ptr %18, align 1
  %26 = sext i8 %25 to i32
  %27 = add nsw i32 %26, -48
  %28 = icmp ult i32 %27, 10
  %29 = icmp eq i8 %25, %8
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %32, i8 0, i64 32, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %0, i8 0, i64 27, i1 false)
  store ptr %18, ptr %33, align 8, !alias.scope !23
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %34, align 8, !alias.scope !23
  br label %473

35:                                               ; preds = %24, %12
  %36 = phi i8 [ %25, %24 ], [ %9, %12 ]
  %37 = phi ptr [ %18, %24 ], [ %1, %12 ]
  %38 = ptrtoint ptr %37 to i64
  %39 = icmp eq ptr %37, %2
  br i1 %39, label %114, label %40

40:                                               ; preds = %35
  %41 = sext i8 %36 to i32
  %42 = add nsw i32 %41, -48
  %43 = icmp ult i32 %42, 10
  br i1 %43, label %44, label %114

44:                                               ; preds = %40
  %45 = sext i8 %36 to i64
  %46 = add nsw i64 %45, -48
  %47 = getelementptr inbounds nuw i8, ptr %37, i64 1
  %48 = icmp eq ptr %47, %2
  br i1 %48, label %114, label %49

49:                                               ; preds = %44
  %50 = load i8, ptr %47, align 1
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %114

54:                                               ; preds = %49
  %55 = mul nsw i64 %46, 10
  %56 = sext i8 %50 to i64
  %57 = add nsw i64 %55, -48
  %58 = add nsw i64 %57, %56
  %59 = getelementptr inbounds nuw i8, ptr %37, i64 2
  %60 = icmp eq ptr %59, %2
  br i1 %60, label %114, label %61

61:                                               ; preds = %54
  %62 = load i8, ptr %59, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, -48
  %65 = icmp ult i32 %64, 10
  br i1 %65, label %66, label %114

66:                                               ; preds = %61
  %67 = mul nsw i64 %58, 10
  %68 = sext i8 %62 to i64
  %69 = add nsw i64 %67, -48
  %70 = add nsw i64 %69, %68
  %71 = getelementptr inbounds nuw i8, ptr %37, i64 3
  %72 = icmp eq ptr %71, %2
  br i1 %72, label %114, label %73

73:                                               ; preds = %66
  %74 = load i8, ptr %71, align 1
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, -48
  %77 = icmp ult i32 %76, 10
  br i1 %77, label %78, label %114

78:                                               ; preds = %73
  %79 = mul nsw i64 %70, 10
  %80 = sext i8 %74 to i64
  %81 = add nsw i64 %79, -48
  %82 = add nsw i64 %81, %80
  %83 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %84 = icmp eq ptr %83, %2
  br i1 %84, label %114, label %85

85:                                               ; preds = %78
  %86 = load i8, ptr %83, align 1
  %87 = sext i8 %86 to i32
  %88 = add nsw i32 %87, -48
  %89 = icmp ult i32 %88, 10
  br i1 %89, label %90, label %114

90:                                               ; preds = %85
  %91 = mul nsw i64 %82, 10
  %92 = sext i8 %86 to i64
  %93 = add nsw i64 %91, -48
  %94 = add nsw i64 %93, %92
  %95 = getelementptr inbounds nuw i8, ptr %37, i64 5
  %96 = icmp eq ptr %95, %2
  br i1 %96, label %114, label %97

97:                                               ; preds = %90
  %98 = sub i64 %7, %38
  %99 = getelementptr i8, ptr %37, i64 %98
  br label %100

100:                                              ; preds = %97, %107
  %101 = phi ptr [ %112, %107 ], [ %95, %97 ]
  %102 = phi i64 [ %111, %107 ], [ %94, %97 ]
  %103 = load i8, ptr %101, align 1
  %104 = sext i8 %103 to i32
  %105 = add nsw i32 %104, -48
  %106 = icmp ult i32 %105, 10
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = mul i64 %102, 10
  %109 = sext i8 %103 to i64
  %110 = add i64 %108, -48
  %111 = add i64 %110, %109
  %112 = getelementptr inbounds nuw i8, ptr %101, i64 1
  %113 = icmp eq ptr %112, %2
  br i1 %113, label %114, label %100

114:                                              ; preds = %107, %100, %90, %85, %78, %73, %66, %61, %54, %49, %44, %40, %35
  %115 = phi i64 [ 0, %35 ], [ %46, %44 ], [ %58, %54 ], [ %70, %66 ], [ %82, %78 ], [ %82, %85 ], [ %70, %73 ], [ %58, %61 ], [ %46, %49 ], [ 0, %40 ], [ %94, %90 ], [ %111, %107 ], [ %102, %100 ]
  %116 = phi ptr [ %37, %35 ], [ %47, %44 ], [ %59, %54 ], [ %71, %66 ], [ %83, %78 ], [ %83, %85 ], [ %71, %73 ], [ %59, %61 ], [ %47, %49 ], [ %37, %40 ], [ %95, %90 ], [ %99, %107 ], [ %101, %100 ]
  %117 = ptrtoint ptr %116 to i64
  %118 = sub i64 %117, %38
  %119 = select i1 %5, ptr %37, ptr null
  %120 = select i1 %5, i64 %118, i64 0
  %121 = icmp sgt i64 %118, 1
  %122 = icmp eq i8 %36, 48
  %123 = and i1 %121, %122
  br i1 %123, label %124, label %198

124:                                              ; preds = %114
  %125 = and i64 %3, 1024
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %180, label %127

127:                                              ; preds = %124
  %128 = icmp eq ptr %37, %116
  br i1 %128, label %194, label %129

129:                                              ; preds = %127
  %130 = icmp ult i64 %118, 4
  br i1 %130, label %131, label %134

131:                                              ; preds = %157, %176, %129
  %132 = phi i1 [ %155, %157 ], [ false, %129 ], [ %178, %176 ]
  %133 = phi ptr [ %158, %157 ], [ %37, %129 ], [ %165, %176 ]
  br label %186

134:                                              ; preds = %129
  %135 = icmp ult i64 %118, 32
  br i1 %135, label %161, label %136

136:                                              ; preds = %134
  %137 = and i64 %118, 9223372036854775776
  br label %138

138:                                              ; preds = %138, %136
  %139 = phi i64 [ 0, %136 ], [ %150, %138 ]
  %140 = phi <16 x i1> [ zeroinitializer, %136 ], [ %148, %138 ]
  %141 = phi <16 x i1> [ zeroinitializer, %136 ], [ %149, %138 ]
  %142 = getelementptr i8, ptr %37, i64 %139
  %143 = getelementptr i8, ptr %142, i64 16
  %144 = load <16 x i8>, ptr %142, align 1
  %145 = load <16 x i8>, ptr %143, align 1
  %146 = icmp sgt <16 x i8> %144, splat (i8 55)
  %147 = icmp sgt <16 x i8> %145, splat (i8 55)
  %148 = or <16 x i1> %140, %146
  %149 = or <16 x i1> %141, %147
  %150 = add nuw i64 %139, 32
  %151 = icmp eq i64 %150, %137
  br i1 %151, label %152, label %138

152:                                              ; preds = %138
  %153 = or <16 x i1> %149, %148
  %154 = bitcast <16 x i1> %153 to i16
  %155 = icmp ne i16 %154, 0
  %156 = icmp eq i64 %118, %137
  br i1 %156, label %184, label %157

157:                                              ; preds = %152
  %158 = getelementptr i8, ptr %37, i64 %137
  %159 = and i64 %118, 28
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %131, label %161

161:                                              ; preds = %157, %134
  %162 = phi i64 [ %137, %157 ], [ 0, %134 ]
  %163 = phi i1 [ %155, %157 ], [ false, %134 ]
  %164 = and i64 %118, 9223372036854775804
  %165 = getelementptr i8, ptr %37, i64 %164
  %166 = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %163, i64 0
  br label %167

167:                                              ; preds = %167, %161
  %168 = phi i64 [ %162, %161 ], [ %174, %167 ]
  %169 = phi <4 x i1> [ %166, %161 ], [ %173, %167 ]
  %170 = getelementptr i8, ptr %37, i64 %168
  %171 = load <4 x i8>, ptr %170, align 1
  %172 = icmp sgt <4 x i8> %171, splat (i8 55)
  %173 = or <4 x i1> %169, %172
  %174 = add nuw i64 %168, 4
  %175 = icmp eq i64 %174, %164
  br i1 %175, label %176, label %167

176:                                              ; preds = %167
  %177 = bitcast <4 x i1> %173 to i4
  %178 = icmp ne i4 %177, 0
  %179 = icmp eq i64 %118, %164
  br i1 %179, label %184, label %131

180:                                              ; preds = %124
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %181, i8 0, i64 32, i1 false)
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %0, i8 0, i64 27, i1 false)
  store ptr %37, ptr %182, align 8, !alias.scope !32
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %183, align 8, !alias.scope !32
  br label %473

184:                                              ; preds = %186, %176, %152
  %185 = phi i1 [ %155, %152 ], [ %178, %176 ], [ %191, %186 ]
  br i1 %185, label %198, label %194

186:                                              ; preds = %131, %186
  %187 = phi i1 [ %191, %186 ], [ %132, %131 ]
  %188 = phi ptr [ %192, %186 ], [ %133, %131 ]
  %189 = load i8, ptr %188, align 1
  %190 = icmp sgt i8 %189, 55
  %191 = or i1 %187, %190
  %192 = getelementptr inbounds nuw i8, ptr %188, i64 1
  %193 = icmp eq ptr %192, %116
  br i1 %193, label %184, label %186

194:                                              ; preds = %127, %184
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %195, i8 0, i64 32, i1 false)
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %0, i8 0, i64 27, i1 false)
  store ptr %37, ptr %196, align 8, !alias.scope !36
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 8, ptr %197, align 8, !alias.scope !36
  br label %473

198:                                              ; preds = %184, %114
  %199 = icmp eq ptr %116, %2
  br i1 %199, label %298, label %200

200:                                              ; preds = %198
  %201 = load i8, ptr %116, align 1
  %202 = icmp eq i8 %201, %8
  br i1 %202, label %203, label %298

203:                                              ; preds = %200
  %204 = getelementptr inbounds nuw i8, ptr %116, i64 1
  %205 = ptrtoint ptr %204 to i64
  %206 = sub i64 %7, %205
  %207 = icmp sgt i64 %206, 7
  br i1 %207, label %208, label %234

208:                                              ; preds = %203, %217
  %209 = phi ptr [ %230, %217 ], [ %204, %203 ]
  %210 = phi i64 [ %229, %217 ], [ %115, %203 ]
  %211 = load i64, ptr %209, align 1
  %212 = add i64 %211, 5063812098665367110
  %213 = add i64 %211, -3472328296227680304
  %214 = or i64 %212, %213
  %215 = and i64 %214, -9187201950435737472
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %241

217:                                              ; preds = %208
  %218 = mul i64 %210, 100000000
  %219 = mul i64 %213, 10
  %220 = lshr i64 %213, 8
  %221 = add i64 %219, %220
  %222 = and i64 %221, 1095216660735
  %223 = mul i64 %222, 4294967296000100
  %224 = lshr i64 %221, 16
  %225 = and i64 %224, 1095216660735
  %226 = mul i64 %225, 42949672960001
  %227 = add i64 %226, %223
  %228 = lshr i64 %227, 32
  %229 = add i64 %228, %218
  %230 = getelementptr inbounds nuw i8, ptr %209, i64 8
  %231 = ptrtoint ptr %230 to i64
  %232 = sub i64 %7, %231
  %233 = icmp sgt i64 %232, 7
  br i1 %233, label %208, label %234

234:                                              ; preds = %217, %203
  %235 = phi i64 [ %115, %203 ], [ %229, %217 ]
  %236 = phi ptr [ %204, %203 ], [ %230, %217 ]
  %237 = phi i64 [ %206, %203 ], [ %232, %217 ]
  %238 = icmp sgt i64 %237, 3
  br i1 %238, label %239, label %263

239:                                              ; preds = %234
  %240 = load i32, ptr %236, align 1
  br label %243

241:                                              ; preds = %208
  %242 = trunc i64 %211 to i32
  br label %243

243:                                              ; preds = %239, %241
  %244 = phi i32 [ %240, %239 ], [ %242, %241 ]
  %245 = phi i64 [ %235, %239 ], [ %210, %241 ]
  %246 = phi ptr [ %236, %239 ], [ %209, %241 ]
  %247 = add i32 %244, 1179010630
  %248 = add i32 %244, -808464432
  %249 = or i32 %247, %248
  %250 = and i32 %249, -2139062144
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %243
  %253 = mul i64 %245, 10000
  %254 = mul i32 %248, 10
  %255 = lshr i32 %248, 8
  %256 = add i32 %254, %255
  %257 = and i32 %256, 16711935
  %258 = mul i32 %257, 6553601
  %259 = lshr i32 %258, 16
  %260 = zext nneg i32 %259 to i64
  %261 = add i64 %253, %260
  %262 = getelementptr inbounds nuw i8, ptr %246, i64 4
  br label %263

263:                                              ; preds = %234, %243, %252
  %264 = phi i64 [ %261, %252 ], [ %245, %243 ], [ %235, %234 ]
  %265 = phi ptr [ %262, %252 ], [ %246, %243 ], [ %236, %234 ]
  %266 = ptrtoint ptr %265 to i64
  %267 = icmp eq ptr %265, %2
  br i1 %267, label %289, label %268

268:                                              ; preds = %263
  %269 = sub i64 %7, %266
  %270 = getelementptr i8, ptr %265, i64 %269
  br label %271

271:                                              ; preds = %268, %278
  %272 = phi ptr [ %280, %278 ], [ %265, %268 ]
  %273 = phi i64 [ %283, %278 ], [ %264, %268 ]
  %274 = load i8, ptr %272, align 1
  %275 = sext i8 %274 to i32
  %276 = add nsw i32 %275, -48
  %277 = icmp ult i32 %276, 10
  br i1 %277, label %278, label %285

278:                                              ; preds = %271
  %279 = add i8 %274, -48
  %280 = getelementptr inbounds nuw i8, ptr %272, i64 1
  %281 = mul i64 %273, 10
  %282 = zext i8 %279 to i64
  %283 = add i64 %281, %282
  %284 = icmp eq ptr %280, %2
  br i1 %284, label %285, label %271

285:                                              ; preds = %271, %278
  %286 = phi i64 [ %283, %278 ], [ %273, %271 ]
  %287 = phi ptr [ %270, %278 ], [ %272, %271 ]
  %288 = ptrtoint ptr %287 to i64
  br label %289

289:                                              ; preds = %285, %263
  %290 = phi i64 [ %288, %285 ], [ %266, %263 ]
  %291 = phi i64 [ %286, %285 ], [ %264, %263 ]
  %292 = phi ptr [ %287, %285 ], [ %265, %263 ]
  %293 = sub i64 %205, %290
  %294 = sub i64 %290, %205
  %295 = select i1 %5, ptr %204, ptr null
  %296 = select i1 %5, i64 %294, i64 0
  %297 = sub nsw i64 %118, %293
  br label %298

298:                                              ; preds = %289, %200, %198
  %299 = phi ptr [ null, %198 ], [ %295, %289 ], [ null, %200 ]
  %300 = phi i64 [ 0, %198 ], [ %296, %289 ], [ 0, %200 ]
  %301 = phi i64 [ %115, %198 ], [ %291, %289 ], [ %115, %200 ]
  %302 = phi ptr [ %116, %198 ], [ %292, %289 ], [ %116, %200 ]
  %303 = phi i64 [ 0, %198 ], [ %293, %289 ], [ 0, %200 ]
  %304 = phi i64 [ %118, %198 ], [ %297, %289 ], [ %118, %200 ]
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %298
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %307, i8 0, i64 32, i1 false)
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %0, i8 0, i64 27, i1 false)
  store ptr %302, ptr %308, align 8, !alias.scope !41
  %309 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 6, ptr %309, align 8, !alias.scope !41
  br label %473

310:                                              ; preds = %298
  %311 = and i64 %3, 1
  %312 = icmp eq i64 %311, 0
  %313 = icmp eq ptr %302, %2
  %314 = or i1 %312, %313
  br i1 %314, label %317, label %315

315:                                              ; preds = %310
  %316 = load i8, ptr %302, align 1
  switch i8 %316, label %317 [
    i8 101, label %323
    i8 69, label %323
  ]

317:                                              ; preds = %315, %310
  %318 = and i64 %3, 64
  %319 = icmp eq i64 %318, 0
  %320 = or i1 %319, %313
  br i1 %320, label %383, label %321

321:                                              ; preds = %317
  %322 = load i8, ptr %302, align 1
  switch i8 %322, label %383 [
    i8 43, label %323
    i8 45, label %323
    i8 100, label %323
    i8 68, label %323
  ]

323:                                              ; preds = %321, %321, %321, %321, %315, %315
  %324 = phi i8 [ %322, %321 ], [ %322, %321 ], [ %322, %321 ], [ %322, %321 ], [ %316, %315 ], [ %316, %315 ]
  switch i8 %324, label %327 [
    i8 101, label %325
    i8 69, label %325
    i8 100, label %325
    i8 68, label %325
  ]

325:                                              ; preds = %323, %323, %323, %323
  %326 = getelementptr inbounds nuw i8, ptr %302, i64 1
  br label %327

327:                                              ; preds = %325, %323
  %328 = phi ptr [ %302, %323 ], [ %326, %325 ]
  %329 = icmp eq ptr %328, %2
  br i1 %329, label %339, label %330

330:                                              ; preds = %327
  %331 = load i8, ptr %328, align 1
  %332 = icmp eq i8 %331, 45
  br i1 %332, label %333, label %335

333:                                              ; preds = %330
  %334 = getelementptr inbounds nuw i8, ptr %328, i64 1
  br label %339

335:                                              ; preds = %330
  %336 = icmp eq i8 %331, 43
  %337 = zext i1 %336 to i64
  %338 = getelementptr inbounds nuw i8, ptr %328, i64 %337
  br label %339

339:                                              ; preds = %335, %327, %333
  %340 = phi ptr [ %334, %333 ], [ %328, %327 ], [ %338, %335 ]
  %341 = phi i1 [ true, %333 ], [ false, %327 ], [ false, %335 ]
  %342 = ptrtoint ptr %340 to i64
  %343 = icmp eq ptr %340, %2
  br i1 %343, label %352, label %344

344:                                              ; preds = %339
  %345 = load i8, ptr %340, align 1
  %346 = sext i8 %345 to i32
  %347 = add nsw i32 %346, -48
  %348 = icmp ult i32 %347, 10
  br i1 %348, label %349, label %352

349:                                              ; preds = %344
  %350 = sub i64 %7, %342
  %351 = getelementptr i8, ptr %340, i64 %350
  br label %355

352:                                              ; preds = %344, %339
  %353 = and i64 %3, 4
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %379, label %390

355:                                              ; preds = %349, %369
  %356 = phi i64 [ %370, %369 ], [ 0, %349 ]
  %357 = phi ptr [ %371, %369 ], [ %340, %349 ]
  %358 = load i8, ptr %357, align 1
  %359 = sext i8 %358 to i32
  %360 = add nsw i32 %359, -48
  %361 = icmp ult i32 %360, 10
  br i1 %361, label %362, label %373

362:                                              ; preds = %355
  %363 = icmp slt i64 %356, 268435456
  br i1 %363, label %364, label %369

364:                                              ; preds = %362
  %365 = add i8 %358, -48
  %366 = mul nsw i64 %356, 10
  %367 = zext i8 %365 to i64
  %368 = add nsw i64 %366, %367
  br label %369

369:                                              ; preds = %364, %362
  %370 = phi i64 [ %368, %364 ], [ %356, %362 ]
  %371 = getelementptr inbounds nuw i8, ptr %357, i64 1
  %372 = icmp eq ptr %371, %2
  br i1 %372, label %373, label %355

373:                                              ; preds = %369, %355
  %374 = phi ptr [ %351, %369 ], [ %357, %355 ]
  %375 = phi i64 [ %370, %369 ], [ %356, %355 ]
  %376 = sub nsw i64 0, %375
  %377 = select i1 %341, i64 %376, i64 %375
  %378 = add nsw i64 %377, %303
  br label %390

379:                                              ; preds = %352
  %380 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %380, i8 0, i64 32, i1 false)
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %0, i8 0, i64 27, i1 false)
  store ptr %340, ptr %381, align 8, !alias.scope !45
  %382 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 7, ptr %382, align 8, !alias.scope !45
  br label %473

383:                                              ; preds = %321, %317
  %384 = and i64 %3, 5
  %385 = icmp eq i64 %384, 1
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %387, i8 0, i64 32, i1 false)
  %388 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %0, i8 0, i64 27, i1 false)
  store ptr %302, ptr %388, align 8, !alias.scope !48
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 7, ptr %389, align 8, !alias.scope !48
  br label %473

390:                                              ; preds = %352, %373, %383
  %391 = phi ptr [ %302, %383 ], [ %302, %352 ], [ %374, %373 ]
  %392 = phi i64 [ 0, %383 ], [ 0, %352 ], [ %377, %373 ]
  %393 = phi i64 [ %303, %383 ], [ %303, %352 ], [ %378, %373 ]
  %394 = icmp sgt i64 %304, 19
  br i1 %394, label %395, label %459

395:                                              ; preds = %390
  br i1 %39, label %411, label %396

396:                                              ; preds = %395, %403
  %397 = phi i64 [ %405, %403 ], [ %304, %395 ]
  %398 = phi ptr [ %406, %403 ], [ %37, %395 ]
  %399 = load i8, ptr %398, align 1
  %400 = icmp eq i8 %399, 48
  %401 = icmp eq i8 %399, %8
  %402 = select i1 %400, i1 true, i1 %401
  br i1 %402, label %403, label %408

403:                                              ; preds = %396
  %404 = sext i1 %400 to i64
  %405 = add nsw i64 %397, %404
  %406 = getelementptr inbounds nuw i8, ptr %398, i64 1
  %407 = icmp eq ptr %406, %2
  br i1 %407, label %408, label %396

408:                                              ; preds = %396, %403
  %409 = phi i64 [ %405, %403 ], [ %397, %396 ]
  %410 = icmp sgt i64 %409, 19
  br label %411

411:                                              ; preds = %408, %395
  %412 = phi i1 [ true, %395 ], [ %410, %408 ]
  %413 = and i1 %5, %412
  %414 = zext i1 %412 to i8
  br i1 %413, label %415, label %459

415:                                              ; preds = %411
  %416 = getelementptr inbounds nuw i8, ptr %119, i64 %120
  %417 = icmp samesign eq i64 %120, 0
  br i1 %417, label %432, label %418

418:                                              ; preds = %415, %418
  %419 = phi ptr [ %426, %418 ], [ %119, %415 ]
  %420 = phi i64 [ %425, %418 ], [ 0, %415 ]
  %421 = mul nuw i64 %420, 10
  %422 = load i8, ptr %419, align 1
  %423 = sext i8 %422 to i64
  %424 = add i64 %421, -48
  %425 = add i64 %424, %423
  %426 = getelementptr inbounds nuw i8, ptr %419, i64 1
  %427 = icmp ult i64 %425, 1000000000000000000
  %428 = icmp ne ptr %426, %416
  %429 = select i1 %427, i1 %428, i1 false
  br i1 %429, label %418, label %430

430:                                              ; preds = %418
  %431 = icmp ugt i64 %425, 999999999999999999
  br i1 %431, label %452, label %432

432:                                              ; preds = %415, %430
  %433 = phi i64 [ %425, %430 ], [ 0, %415 ]
  %434 = getelementptr inbounds nuw i8, ptr %299, i64 %300
  %435 = icmp samesign eq i64 %300, 0
  br i1 %435, label %448, label %436

436:                                              ; preds = %432, %436
  %437 = phi ptr [ %444, %436 ], [ %299, %432 ]
  %438 = phi i64 [ %443, %436 ], [ %433, %432 ]
  %439 = mul nuw i64 %438, 10
  %440 = load i8, ptr %437, align 1
  %441 = sext i8 %440 to i64
  %442 = add i64 %439, -48
  %443 = add i64 %442, %441
  %444 = getelementptr inbounds nuw i8, ptr %437, i64 1
  %445 = icmp ult i64 %443, 1000000000000000000
  %446 = icmp ne ptr %444, %434
  %447 = select i1 %445, i1 %446, i1 false
  br i1 %447, label %436, label %448

448:                                              ; preds = %436, %432
  %449 = phi i64 [ %433, %432 ], [ %443, %436 ]
  %450 = phi ptr [ %299, %432 ], [ %444, %436 ]
  %451 = ptrtoint ptr %299 to i64
  br label %452

452:                                              ; preds = %430, %448
  %453 = phi ptr [ %450, %448 ], [ %426, %430 ]
  %454 = phi i64 [ %451, %448 ], [ %117, %430 ]
  %455 = phi i64 [ %449, %448 ], [ %425, %430 ]
  %456 = ptrtoint ptr %453 to i64
  %457 = sub i64 %454, %456
  %458 = add nsw i64 %457, %392
  br label %459

459:                                              ; preds = %411, %452, %390
  %460 = phi i8 [ 1, %452 ], [ %414, %411 ], [ 0, %390 ]
  %461 = phi i64 [ %455, %452 ], [ %301, %411 ], [ %301, %390 ]
  %462 = phi i64 [ %458, %452 ], [ %393, %411 ], [ %393, %390 ]
  store i64 %462, ptr %0, align 8
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %461, ptr %463, align 8
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %391, ptr %464, align 8
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %11, ptr %465, align 8
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %466, align 1
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %460, ptr %467, align 2
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %119, ptr %468, align 8
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %120, ptr %469, align 8
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %299, ptr %470, align 8
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %300, ptr %471, align 8
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %472, align 8
  br label %473

473:                                              ; preds = %459, %386, %306, %180, %194, %379, %20, %31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !12, i64 25}
!6 = !{!"_ZTSN10fast_float22parsed_number_string_tIcEE", !7, i64 0, !7, i64 8, !10, i64 16, !12, i64 24, !12, i64 25, !12, i64 26, !13, i64 32, !13, i64 48, !14, i64 64}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"bool", !8, i64 0}
!13 = !{!"_ZTSN10fast_float4spanIKcEE", !10, i64 0, !7, i64 8}
!14 = !{!"_ZTSN10fast_float11parse_errorE", !8, i64 0}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!6, !14, i64 64}
!18 = !{!6, !10, i64 16}
!19 = !{!8, !8, i64 0}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE: argument 0"}
!22 = distinct !{!22, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE: argument 0"}
!25 = distinct !{!25, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE"}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !27, !29, !30}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE: argument 0"}
!34 = distinct !{!34, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE"}
!35 = distinct !{!35, !27, !30, !29}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE: argument 0"}
!38 = distinct !{!38, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE"}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE: argument 0"}
!43 = distinct !{!43, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE"}
!44 = distinct !{!44, !27}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE: argument 0"}
!47 = distinct !{!47, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE: argument 0"}
!50 = distinct !{!50, !"_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE"}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !27}
!54 = !{!7, !7, i64 0}
!55 = !{!10, !10, i64 0}
!56 = !{!12, !12, i64 0}
