; ModuleID = '/srv/home/hantaolou/code/veriop/heldout/c-alive2/final-verification/modules/v2_s5_z5_L16_f0_src.ll.pre'
source_filename = "/srv/home/hantaolou/code/veriop/heldout/c-alive2/harness/u16_impl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE = comdat any

$_ZN10fast_float9space_lutIvE5valueE = comdat any

$_ZN10fast_float8int_lutsIvE7chdigitE = comdat any

$_ZN10fast_float8int_lutsIvE13maxdigits_u64E = comdat any

$_ZN10fast_float8int_lutsIvE12min_safe_u64E = comdat any

@_ZN10fast_float9space_lutIvE5valueE = weak_odr dso_local local_unnamed_addr constant <{ [33 x i8], [223 x i8] }> <{ [33 x i8] c"\00\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [223 x i8] zeroinitializer }>, comdat, align 16
@_ZN10fast_float8int_lutsIvE7chdigitE = weak_odr dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", comdat, align 16
@_ZN10fast_float8int_lutsIvE13maxdigits_u64E = weak_odr dso_local local_unnamed_addr constant [35 x i64] [i64 64, i64 41, i64 32, i64 28, i64 25, i64 23, i64 22, i64 21, i64 20, i64 19, i64 18, i64 18, i64 17, i64 17, i64 16, i64 16, i64 16, i64 16, i64 15, i64 15, i64 15, i64 15, i64 14, i64 14, i64 14, i64 14, i64 14, i64 14, i64 14, i64 13, i64 13, i64 13, i64 13, i64 13, i64 13], comdat, align 16
@_ZN10fast_float8int_lutsIvE12min_safe_u64E = weak_odr dso_local local_unnamed_addr constant [35 x i64] [i64 -9223372036854775808, i64 -6289078614652622815, i64 4611686018427387904, i64 7450580596923828125, i64 4738381338321616896, i64 3909821048582988049, i64 -9223372036854775808, i64 -6289078614652622815, i64 -8446744073709551616, i64 5559917313492231481, i64 2218611106740436992, i64 8650415919381337933, i64 2177953337809371136, i64 6568408355712890625, i64 1152921504606846976, i64 2862423051509815793, i64 6746640616477458432, i64 -3265617043834753317, i64 1638400000000000000, i64 3243919932521508681, i64 6221821273427820544, i64 -6853907749170801807, i64 876488338465357824, i64 1490116119384765625, i64 2481152873203736576, i64 4052555153018976267, i64 6502111422497947648, i64 -8186115360750949427, i64 -2503514073709551616, i64 787662783788549761, i64 1152921504606846976, i64 1667889514952984961, i64 2386420683693101056, i64 3379220508056640625, i64 4738381338321616896], comdat, align 16

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define weak_odr dso_local { ptr, i32 } @_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = lshr i64 %4, 32
  %9 = trunc nuw i64 %8 to i32
  %10 = and i64 %3, 256
  %11 = icmp eq i64 %10, 0
  %12 = icmp eq ptr %0, %1
  %13 = or i1 %11, %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %5
  %15 = sub i64 %7, %6
  %16 = getelementptr i8, ptr %0, i64 %15
  br label %17

17:                                               ; preds = %24, %14
  %18 = phi ptr [ %25, %24 ], [ %0, %14 ]
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float9space_lutIvE5valueE, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !range !5, !noundef !6
  %23 = trunc nuw i8 %22 to i1
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %17, !llvm.loop !7

27:                                               ; preds = %24, %17
  %28 = phi ptr [ %18, %17 ], [ %16, %24 ]
  %29 = ptrtoint ptr %28 to i64
  br label %30

30:                                               ; preds = %27, %5
  %31 = phi i64 [ %29, %27 ], [ %6, %5 ]
  %32 = phi ptr [ %28, %27 ], [ %0, %5 ]
  %33 = icmp eq ptr %32, %1
  %34 = add i32 %9, -37
  %35 = icmp ult i32 %34, -35
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %247, label %37

37:                                               ; preds = %30
  %38 = load i8, ptr %32, align 1
  %39 = icmp eq i8 %38, 45
  br i1 %39, label %247, label %40

40:                                               ; preds = %37
  %41 = and i64 %3, 128
  %42 = icmp ne i64 %41, 0
  %43 = icmp eq i8 %38, 43
  %44 = and i1 %42, %43
  %45 = zext i1 %44 to i64
  %46 = getelementptr inbounds nuw i8, ptr %32, i64 %45
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %58, label %48

48:                                               ; preds = %40
  %49 = sub i64 %7, %31
  %50 = getelementptr i8, ptr %32, i64 %49
  br label %51

51:                                               ; preds = %55, %48
  %52 = phi ptr [ %56, %55 ], [ %46, %48 ]
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 48
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %57 = icmp eq ptr %56, %1
  br i1 %57, label %58, label %51, !llvm.loop !9

58:                                               ; preds = %55, %40
  %59 = phi ptr [ %46, %40 ], [ %50, %55 ]
  %60 = icmp ugt ptr %59, %46
  %61 = icmp eq i64 %8, 10
  br i1 %61, label %65, label %180

62:                                               ; preds = %51
  %63 = icmp ugt ptr %52, %46
  %64 = icmp eq i64 %8, 10
  br i1 %64, label %67, label %180

65:                                               ; preds = %58
  br i1 %60, label %66, label %247

66:                                               ; preds = %65
  store i16 0, ptr %2, align 2
  br label %247

67:                                               ; preds = %62
  %68 = ptrtoint ptr %52 to i64
  %69 = sub i64 %7, %68
  %70 = icmp ugt i64 %69, 3
  br i1 %70, label %71, label %180

71:                                               ; preds = %67
  %72 = load i32, ptr %52, align 1
  %73 = add i32 %72, 1179010630
  %74 = add i32 %72, -808464432
  %75 = or i32 %73, %74
  %76 = and i32 %75, -2139062144
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %71
  %79 = mul i32 %74, 10
  %80 = lshr i32 %74, 8
  %81 = add i32 %79, %80
  %82 = and i32 %81, 16711935
  %83 = mul i32 %82, 6553601
  %84 = lshr i32 %83, 16
  %85 = icmp eq i64 %69, 4
  br i1 %85, label %120, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds nuw i8, ptr %52, i64 4
  %88 = load i8, ptr %87, align 1
  %89 = sext i8 %88 to i32
  %90 = add nsw i32 %89, -48
  %91 = icmp ult i32 %90, 10
  br i1 %91, label %92, label %120

92:                                               ; preds = %86
  %93 = mul nuw nsw i32 %84, 10
  %94 = add nuw nsw i32 %90, %93
  %95 = icmp ugt i64 %69, 5
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = getelementptr inbounds nuw i8, ptr %52, i64 5
  %98 = load i8, ptr %97, align 1
  %99 = sext i8 %98 to i32
  %100 = add nsw i32 %99, -48
  %101 = icmp ult i32 %100, 10
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = icmp eq ptr %97, %1
  br i1 %103, label %247, label %104

104:                                              ; preds = %110, %102
  %105 = phi ptr [ %111, %110 ], [ %97, %102 ]
  %106 = load i8, ptr %105, align 1
  %107 = sext i8 %106 to i32
  %108 = add nsw i32 %107, -48
  %109 = icmp ult i32 %108, 10
  br i1 %109, label %110, label %247

110:                                              ; preds = %104
  %111 = getelementptr inbounds nuw i8, ptr %105, i64 1
  %112 = icmp eq ptr %111, %1
  br i1 %112, label %247, label %104, !llvm.loop !10

113:                                              ; preds = %96, %92
  %114 = icmp samesign ugt i32 %94, 65535
  br i1 %114, label %115, label %117

115:                                              ; preds = %113
  %116 = getelementptr inbounds nuw i8, ptr %52, i64 5
  br label %247

117:                                              ; preds = %113
  %118 = trunc nuw i32 %94 to i16
  store i16 %118, ptr %2, align 2
  %119 = getelementptr inbounds nuw i8, ptr %52, i64 5
  br label %247

120:                                              ; preds = %86, %78
  %121 = trunc nuw i32 %84 to i16
  store i16 %121, ptr %2, align 2
  %122 = getelementptr inbounds nuw i8, ptr %52, i64 4
  br label %247

123:                                              ; preds = %71
  %124 = icmp sgt i64 %69, 7
  br i1 %124, label %125, label %151

125:                                              ; preds = %134, %123
  %126 = phi i64 [ %146, %134 ], [ 0, %123 ]
  %127 = phi ptr [ %147, %134 ], [ %52, %123 ]
  %128 = load i64, ptr %127, align 1
  %129 = add i64 %128, 5063812098665367110
  %130 = add i64 %128, -3472328296227680304
  %131 = or i64 %129, %130
  %132 = and i64 %131, -9187201950435737472
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %125
  %135 = mul i64 %126, 100000000
  %136 = mul i64 %130, 10
  %137 = lshr i64 %130, 8
  %138 = add i64 %136, %137
  %139 = and i64 %138, 1095216660735
  %140 = mul i64 %139, 4294967296000100
  %141 = lshr i64 %138, 16
  %142 = and i64 %141, 1095216660735
  %143 = mul i64 %142, 42949672960001
  %144 = add i64 %143, %140
  %145 = lshr i64 %144, 32
  %146 = add i64 %145, %135
  %147 = getelementptr inbounds nuw i8, ptr %127, i64 8
  %148 = ptrtoint ptr %147 to i64
  %149 = sub i64 %7, %148
  %150 = icmp sgt i64 %149, 7
  br i1 %150, label %125, label %151, !llvm.loop !11

151:                                              ; preds = %134, %123
  %152 = phi ptr [ %52, %123 ], [ %147, %134 ]
  %153 = phi i64 [ 0, %123 ], [ %146, %134 ]
  %154 = phi i64 [ %69, %123 ], [ %149, %134 ]
  %155 = icmp sgt i64 %154, 3
  br i1 %155, label %156, label %180

156:                                              ; preds = %151
  %157 = load i32, ptr %152, align 1
  br label %160

158:                                              ; preds = %125
  %159 = trunc i64 %128 to i32
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  %162 = phi ptr [ %152, %156 ], [ %127, %158 ]
  %163 = phi i64 [ %153, %156 ], [ %126, %158 ]
  %164 = add i32 %161, 1179010630
  %165 = add i32 %161, -808464432
  %166 = or i32 %164, %165
  %167 = and i32 %166, -2139062144
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %160
  %170 = mul i64 %163, 10000
  %171 = mul i32 %165, 10
  %172 = lshr i32 %165, 8
  %173 = add i32 %171, %172
  %174 = and i32 %173, 16711935
  %175 = mul i32 %174, 6553601
  %176 = lshr i32 %175, 16
  %177 = zext nneg i32 %176 to i64
  %178 = add i64 %170, %177
  %179 = getelementptr inbounds nuw i8, ptr %162, i64 4
  br label %180

180:                                              ; preds = %169, %160, %151, %67, %62, %58
  %181 = phi ptr [ %52, %169 ], [ %52, %160 ], [ %52, %151 ], [ %52, %62 ], [ %59, %58 ], [ %52, %67 ]
  %182 = phi i1 [ %63, %169 ], [ %63, %160 ], [ %63, %151 ], [ %63, %62 ], [ %60, %58 ], [ %63, %67 ]
  %183 = phi ptr [ %179, %169 ], [ %162, %160 ], [ %152, %151 ], [ %52, %62 ], [ %59, %58 ], [ %52, %67 ]
  %184 = phi i64 [ %178, %169 ], [ %163, %160 ], [ %153, %151 ], [ 0, %62 ], [ 0, %58 ], [ 0, %67 ]
  %185 = ptrtoint ptr %183 to i64
  %186 = icmp eq ptr %183, %1
  br i1 %186, label %209, label %187

187:                                              ; preds = %180
  %188 = sub i64 %7, %185
  %189 = getelementptr i8, ptr %183, i64 %188
  br label %190

190:                                              ; preds = %199, %187
  %191 = phi i64 [ %202, %199 ], [ %184, %187 ]
  %192 = phi ptr [ %203, %199 ], [ %183, %187 ]
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i64
  %195 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %194
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp slt i32 %197, %9
  br i1 %198, label %199, label %205

199:                                              ; preds = %190
  %200 = mul i64 %191, %8
  %201 = zext i8 %196 to i64
  %202 = add i64 %200, %201
  %203 = getelementptr inbounds nuw i8, ptr %192, i64 1
  %204 = icmp eq ptr %203, %1
  br i1 %204, label %205, label %190

205:                                              ; preds = %199, %190
  %206 = phi ptr [ %189, %199 ], [ %192, %190 ]
  %207 = phi i64 [ %202, %199 ], [ %191, %190 ]
  %208 = ptrtoint ptr %206 to i64
  br label %209

209:                                              ; preds = %205, %180
  %210 = phi i64 [ %208, %205 ], [ %185, %180 ]
  %211 = phi ptr [ %206, %205 ], [ %183, %180 ]
  %212 = phi i64 [ %207, %205 ], [ %184, %180 ]
  %213 = ptrtoint ptr %181 to i64
  %214 = sub i64 %210, %213
  %215 = icmp eq ptr %211, %181
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  br i1 %182, label %217, label %247

217:                                              ; preds = %216
  store i16 0, ptr %2, align 2
  br label %247

218:                                              ; preds = %209
  %219 = add i64 %4, -8589934592
  %220 = ashr i64 %219, 32
  %221 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE13maxdigits_u64E, i64 0, i64 %220
  %222 = load i64, ptr %221, align 8
  %223 = icmp ugt i64 %214, %222
  br i1 %223, label %247, label %224

224:                                              ; preds = %218
  %225 = icmp eq i64 %214, %222
  br i1 %225, label %226, label %243

226:                                              ; preds = %224
  %227 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE12min_safe_u64E, i64 0, i64 %220
  %228 = load i64, ptr %227, align 8
  %229 = udiv i64 -1, %228
  %230 = load i8, ptr %181, align 1
  %231 = zext i8 %230 to i64
  %232 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %231
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i64
  %235 = icmp ult i64 %229, %234
  br i1 %235, label %247, label %236

236:                                              ; preds = %226
  %237 = icmp eq i64 %229, %234
  %238 = mul i64 %229, %228
  %239 = icmp ult i64 %212, %238
  %240 = select i1 %237, i1 %239, i1 false
  %241 = icmp ugt i64 %212, 65535
  %242 = select i1 %240, i1 true, i1 %241
  br i1 %242, label %247, label %245

243:                                              ; preds = %224
  %244 = icmp ugt i64 %212, 65535
  br i1 %244, label %247, label %245

245:                                              ; preds = %243, %236
  %246 = trunc i64 %212 to i16
  store i16 %246, ptr %2, align 2
  br label %247

247:                                              ; preds = %245, %243, %236, %226, %218, %217, %216, %120, %117, %115, %110, %104, %102, %66, %65, %37, %30
  %248 = phi ptr [ %32, %30 ], [ %32, %37 ], [ %211, %217 ], [ %32, %216 ], [ %211, %243 ], [ %211, %218 ], [ %211, %245 ], [ %32, %65 ], [ %59, %66 ], [ %122, %120 ], [ %119, %117 ], [ %116, %115 ], [ %211, %226 ], [ %211, %236 ], [ %97, %102 ], [ %105, %104 ], [ %50, %110 ]
  %249 = phi i32 [ 22, %30 ], [ 22, %37 ], [ 0, %217 ], [ 22, %216 ], [ 34, %243 ], [ 34, %218 ], [ 0, %245 ], [ 22, %65 ], [ 0, %66 ], [ 0, %120 ], [ 0, %117 ], [ 34, %115 ], [ 34, %226 ], [ 34, %236 ], [ 34, %102 ], [ 34, %110 ], [ 34, %104 ]
  %250 = insertvalue { ptr, i32 } poison, ptr %248, 0
  %251 = insertvalue { ptr, i32 } %250, i32 %249, 1
  ret { ptr, i32 } %251
}

declare i32 @__gxx_personality_v0(...)

define { ptr, i32 } @ver(ptr noundef nonnull align 1 dereferenceable(16) %buf, i64 noundef %len, ptr noundef nonnull align 2 dereferenceable(2) %v, i64 noundef %fmt, i64 noundef %o2, i8 noundef %c5, i8 noundef %c6, i8 noundef %c7, i8 noundef %c8, i8 noundef %c9, i8 noundef %c10, i8 noundef %c11, i8 noundef %c12, i8 noundef %c13, i8 noundef %c14, i8 noundef %c15) personality ptr @__gxx_personality_v0 {
  %p0 = getelementptr inbounds i8, ptr %buf, i64 0
  store i8 48, ptr %p0, align 1
  %p1 = getelementptr inbounds i8, ptr %buf, i64 1
  store i8 48, ptr %p1, align 1
  %p2 = getelementptr inbounds i8, ptr %buf, i64 2
  store i8 48, ptr %p2, align 1
  %p3 = getelementptr inbounds i8, ptr %buf, i64 3
  store i8 48, ptr %p3, align 1
  %p4 = getelementptr inbounds i8, ptr %buf, i64 4
  store i8 48, ptr %p4, align 1
  %p5 = getelementptr inbounds i8, ptr %buf, i64 5
  store i8 %c5, ptr %p5, align 1
  %p6 = getelementptr inbounds i8, ptr %buf, i64 6
  store i8 %c6, ptr %p6, align 1
  %p7 = getelementptr inbounds i8, ptr %buf, i64 7
  store i8 %c7, ptr %p7, align 1
  %p8 = getelementptr inbounds i8, ptr %buf, i64 8
  store i8 %c8, ptr %p8, align 1
  %p9 = getelementptr inbounds i8, ptr %buf, i64 9
  store i8 %c9, ptr %p9, align 1
  %p10 = getelementptr inbounds i8, ptr %buf, i64 10
  store i8 %c10, ptr %p10, align 1
  %p11 = getelementptr inbounds i8, ptr %buf, i64 11
  store i8 %c11, ptr %p11, align 1
  %p12 = getelementptr inbounds i8, ptr %buf, i64 12
  store i8 %c12, ptr %p12, align 1
  %p13 = getelementptr inbounds i8, ptr %buf, i64 13
  store i8 %c13, ptr %p13, align 1
  %p14 = getelementptr inbounds i8, ptr %buf, i64 14
  store i8 %c14, ptr %p14, align 1
  %p15 = getelementptr inbounds i8, ptr %buf, i64 15
  store i8 %c15, ptr %p15, align 1
  %s5 = sub i8 %c5, 48
  %d5 = icmp ult i8 %s5, 10
  %nd5 = xor i1 %d5, true
  call void @llvm.assume(i1 %nd5)
  %lenok = icmp sge i64 %len, 16
  call void @llvm.assume(i1 %lenok)
  %end = getelementptr i8, ptr %buf, i64 %len
  %bhi = lshr i64 %o2, 32
  %base = trunc i64 %bhi to i32
  %b10 = icmp eq i32 %base, 10
  call void @llvm.assume(i1 %b10)
  %o2lo = and i64 %o2, 4294967295
  %o2b = or i64 %o2lo, 42949672960
  %fmtm = and i64 %fmt, -385
  %fmtc = or i64 %fmtm, 0
  %1 = ptrtoint ptr %buf to i64
  %2 = ptrtoint ptr %end to i64
  %3 = lshr i64 %o2b, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = icmp eq ptr %buf, %end
  %6 = icmp eq ptr %buf, %end
  %7 = add i32 %4, -37
  %8 = icmp ult i32 %7, -35
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %10

10:                                               ; preds = %0
  %11 = load i8, ptr %buf, align 1
  %12 = icmp eq i8 %11, 45
  br i1 %12, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %13

13:                                               ; preds = %10
  %14 = icmp eq i8 %11, 43
  %15 = icmp eq ptr %buf, %end
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = sub i64 %2, %1
  %18 = getelementptr i8, ptr %buf, i64 %17
  br label %19

19:                                               ; preds = %23, %16
  %20 = phi ptr [ %24, %23 ], [ %buf, %16 ]
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 48
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 1
  %25 = icmp eq ptr %24, %end
  br i1 %25, label %26, label %19, !llvm.loop !9

26:                                               ; preds = %23, %13
  %27 = phi ptr [ %buf, %13 ], [ %18, %23 ]
  %28 = icmp ugt ptr %27, %buf
  %29 = icmp eq i64 %3, 10
  br i1 %29, label %33, label %148

30:                                               ; preds = %19
  %31 = icmp ugt ptr %20, %buf
  %32 = icmp eq i64 %3, 10
  br i1 %32, label %35, label %148

33:                                               ; preds = %26
  br i1 %28, label %34, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

34:                                               ; preds = %33
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

35:                                               ; preds = %30
  %36 = ptrtoint ptr %20 to i64
  %37 = sub i64 %2, %36
  %38 = icmp ugt i64 %37, 3
  br i1 %38, label %39, label %148

39:                                               ; preds = %35
  %40 = load i32, ptr %20, align 1
  %41 = add i32 %40, 1179010630
  %42 = add i32 %40, -808464432
  %43 = or i32 %41, %42
  %44 = and i32 %43, -2139062144
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %91

46:                                               ; preds = %39
  %47 = mul i32 %42, 10
  %48 = lshr i32 %42, 8
  %49 = add i32 %47, %48
  %50 = and i32 %49, 16711935
  %51 = mul i32 %50, 6553601
  %52 = lshr i32 %51, 16
  %53 = icmp eq i64 %37, 4
  br i1 %53, label %88, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %56 = load i8, ptr %55, align 1
  %57 = sext i8 %56 to i32
  %58 = add nsw i32 %57, -48
  %59 = icmp ult i32 %58, 10
  br i1 %59, label %60, label %88

60:                                               ; preds = %54
  %61 = mul nuw nsw i32 %52, 10
  %62 = add nuw nsw i32 %58, %61
  %63 = icmp ugt i64 %37, 5
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %20, i64 5
  %66 = load i8, ptr %65, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, -48
  %69 = icmp ult i32 %68, 10
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = icmp eq ptr %65, %end
  br i1 %71, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %72

72:                                               ; preds = %78, %70
  %73 = phi ptr [ %79, %78 ], [ %65, %70 ]
  %74 = load i8, ptr %73, align 1
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, -48
  %77 = icmp ult i32 %76, 10
  br i1 %77, label %78, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

78:                                               ; preds = %72
  %79 = getelementptr inbounds nuw i8, ptr %73, i64 1
  %80 = icmp eq ptr %79, %end
  br i1 %80, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %72, !llvm.loop !10

81:                                               ; preds = %64, %60
  %82 = icmp samesign ugt i32 %62, 65535
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = getelementptr inbounds nuw i8, ptr %20, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

85:                                               ; preds = %81
  %86 = trunc nuw i32 %62 to i16
  store i16 %86, ptr %v, align 2
  %87 = getelementptr inbounds nuw i8, ptr %20, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

88:                                               ; preds = %54, %46
  %89 = trunc nuw i32 %52 to i16
  store i16 %89, ptr %v, align 2
  %90 = getelementptr inbounds nuw i8, ptr %20, i64 4
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

91:                                               ; preds = %39
  %92 = icmp sgt i64 %37, 7
  br i1 %92, label %93, label %119

93:                                               ; preds = %102, %91
  %94 = phi i64 [ %114, %102 ], [ 0, %91 ]
  %95 = phi ptr [ %115, %102 ], [ %20, %91 ]
  %96 = load i64, ptr %95, align 1
  %97 = add i64 %96, 5063812098665367110
  %98 = add i64 %96, -3472328296227680304
  %99 = or i64 %97, %98
  %100 = and i64 %99, -9187201950435737472
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %93
  %103 = mul i64 %94, 100000000
  %104 = mul i64 %98, 10
  %105 = lshr i64 %98, 8
  %106 = add i64 %104, %105
  %107 = and i64 %106, 1095216660735
  %108 = mul i64 %107, 4294967296000100
  %109 = lshr i64 %106, 16
  %110 = and i64 %109, 1095216660735
  %111 = mul i64 %110, 42949672960001
  %112 = add i64 %111, %108
  %113 = lshr i64 %112, 32
  %114 = add i64 %113, %103
  %115 = getelementptr inbounds nuw i8, ptr %95, i64 8
  %116 = ptrtoint ptr %115 to i64
  %117 = sub i64 %2, %116
  %118 = icmp sgt i64 %117, 7
  br i1 %118, label %93, label %119, !llvm.loop !11

119:                                              ; preds = %102, %91
  %120 = phi ptr [ %20, %91 ], [ %115, %102 ]
  %121 = phi i64 [ 0, %91 ], [ %114, %102 ]
  %122 = phi i64 [ %37, %91 ], [ %117, %102 ]
  %123 = icmp sgt i64 %122, 3
  br i1 %123, label %124, label %148

124:                                              ; preds = %119
  %125 = load i32, ptr %120, align 1
  br label %128

126:                                              ; preds = %93
  %127 = trunc i64 %96 to i32
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = phi ptr [ %120, %124 ], [ %95, %126 ]
  %131 = phi i64 [ %121, %124 ], [ %94, %126 ]
  %132 = add i32 %129, 1179010630
  %133 = add i32 %129, -808464432
  %134 = or i32 %132, %133
  %135 = and i32 %134, -2139062144
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %128
  %138 = mul i64 %131, 10000
  %139 = mul i32 %133, 10
  %140 = lshr i32 %133, 8
  %141 = add i32 %139, %140
  %142 = and i32 %141, 16711935
  %143 = mul i32 %142, 6553601
  %144 = lshr i32 %143, 16
  %145 = zext nneg i32 %144 to i64
  %146 = add i64 %138, %145
  %147 = getelementptr inbounds nuw i8, ptr %130, i64 4
  br label %148

148:                                              ; preds = %137, %128, %119, %35, %30, %26
  %149 = phi ptr [ %20, %137 ], [ %20, %128 ], [ %20, %119 ], [ %20, %30 ], [ %27, %26 ], [ %20, %35 ]
  %150 = phi i1 [ %31, %137 ], [ %31, %128 ], [ %31, %119 ], [ %31, %30 ], [ %28, %26 ], [ %31, %35 ]
  %151 = phi ptr [ %147, %137 ], [ %130, %128 ], [ %120, %119 ], [ %20, %30 ], [ %27, %26 ], [ %20, %35 ]
  %152 = phi i64 [ %146, %137 ], [ %131, %128 ], [ %121, %119 ], [ 0, %30 ], [ 0, %26 ], [ 0, %35 ]
  %153 = ptrtoint ptr %151 to i64
  %154 = icmp eq ptr %151, %end
  br i1 %154, label %177, label %155

155:                                              ; preds = %148
  %156 = sub i64 %2, %153
  %157 = getelementptr i8, ptr %151, i64 %156
  br label %158

158:                                              ; preds = %167, %155
  %159 = phi i64 [ %170, %167 ], [ %152, %155 ]
  %160 = phi ptr [ %171, %167 ], [ %151, %155 ]
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp slt i32 %165, %4
  br i1 %166, label %167, label %173

167:                                              ; preds = %158
  %168 = mul i64 %159, %3
  %169 = zext i8 %164 to i64
  %170 = add i64 %168, %169
  %171 = getelementptr inbounds nuw i8, ptr %160, i64 1
  %172 = icmp eq ptr %171, %end
  br i1 %172, label %173, label %158

173:                                              ; preds = %167, %158
  %174 = phi ptr [ %157, %167 ], [ %160, %158 ]
  %175 = phi i64 [ %170, %167 ], [ %159, %158 ]
  %176 = ptrtoint ptr %174 to i64
  br label %177

177:                                              ; preds = %173, %148
  %178 = phi i64 [ %176, %173 ], [ %153, %148 ]
  %179 = phi ptr [ %174, %173 ], [ %151, %148 ]
  %180 = phi i64 [ %175, %173 ], [ %152, %148 ]
  %181 = ptrtoint ptr %149 to i64
  %182 = sub i64 %178, %181
  %183 = icmp eq ptr %179, %149
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  br i1 %150, label %185, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

185:                                              ; preds = %184
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

186:                                              ; preds = %177
  %187 = add i64 %o2b, -8589934592
  %188 = ashr i64 %187, 32
  %189 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE13maxdigits_u64E, i64 0, i64 %188
  %190 = load i64, ptr %189, align 8
  %191 = icmp ugt i64 %182, %190
  br i1 %191, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %192

192:                                              ; preds = %186
  %193 = icmp eq i64 %182, %190
  br i1 %193, label %194, label %211

194:                                              ; preds = %192
  %195 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE12min_safe_u64E, i64 0, i64 %188
  %196 = load i64, ptr %195, align 8
  %197 = udiv i64 -1, %196
  %198 = load i8, ptr %149, align 1
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %199
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i64
  %203 = icmp ult i64 %197, %202
  br i1 %203, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %204

204:                                              ; preds = %194
  %205 = icmp eq i64 %197, %202
  %206 = mul i64 %197, %196
  %207 = icmp ult i64 %180, %206
  %208 = select i1 %205, i1 %207, i1 false
  %209 = icmp ugt i64 %180, 65535
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %213

211:                                              ; preds = %192
  %212 = icmp ugt i64 %180, 65535
  br i1 %212, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %213

213:                                              ; preds = %211, %204
  %214 = trunc i64 %180 to i16
  store i16 %214, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %0, %10, %33, %34, %70, %72, %78, %83, %85, %88, %184, %185, %186, %194, %204, %211, %213
  %215 = phi ptr [ %buf, %0 ], [ %buf, %10 ], [ %179, %185 ], [ %buf, %184 ], [ %179, %211 ], [ %179, %186 ], [ %179, %213 ], [ %buf, %33 ], [ %27, %34 ], [ %90, %88 ], [ %87, %85 ], [ %84, %83 ], [ %179, %194 ], [ %179, %204 ], [ %65, %70 ], [ %73, %72 ], [ %18, %78 ]
  %216 = phi i32 [ 22, %0 ], [ 22, %10 ], [ 0, %185 ], [ 22, %184 ], [ 34, %211 ], [ 34, %186 ], [ 0, %213 ], [ 22, %33 ], [ 0, %34 ], [ 0, %88 ], [ 0, %85 ], [ 34, %83 ], [ 34, %194 ], [ 34, %204 ], [ 34, %70 ], [ 34, %78 ], [ 34, %72 ]
  %217 = insertvalue { ptr, i32 } poison, ptr %215, 0
  %218 = insertvalue { ptr, i32 } %217, i32 %216, 1
  ret { ptr, i32 } %218
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
