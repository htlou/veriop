; ModuleID = '/srv/home/hantaolou/code/veriop/heldout/c-alive2/final-verification/modules/v2_s5_z5_L12_w1_g_src.ll.pre'
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
@gbuf = global [12 x i8] zeroinitializer, align 1

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

define { ptr, i32 } @ver(ptr noundef nonnull align 2 dereferenceable(2) %v, i64 noundef %fmt, i64 noundef %o2, i8 noundef %c5, i8 noundef %c6, i8 noundef %c7, i8 noundef %c8, i8 noundef %c9, i8 noundef %c10, i8 noundef %c11) personality ptr @__gxx_personality_v0 {
  %buf = getelementptr inbounds i8, ptr @gbuf, i64 0
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
  %s5 = sub i8 %c5, 48
  %d5 = icmp ult i8 %s5, 10
  %nd5 = xor i1 %d5, true
  call void @llvm.assume(i1 %nd5)
  %end = getelementptr i8, ptr %buf, i64 12
  %bhi = lshr i64 %o2, 32
  %base = trunc i64 %bhi to i32
  %b10 = icmp eq i32 %base, 10
  call void @llvm.assume(i1 %b10)
  %o2lo = and i64 %o2, 4294967295
  %o2b = or i64 %o2lo, 42949672960
  %fmtm = and i64 %fmt, -257
  %fmtc = or i64 %fmtm, 256
  %1 = ptrtoint ptr %buf to i64
  %2 = ptrtoint ptr %end to i64
  %3 = lshr i64 %o2b, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = sub i64 %2, %1
  br label %6

6:                                                ; preds = %13, %0
  %7 = phi ptr [ %14, %13 ], [ %buf, %0 ]
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float9space_lutIvE5valueE, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !range !5, !noundef !6
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 1
  %15 = icmp eq ptr %14, %end
  br i1 %15, label %16, label %6, !llvm.loop !7

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %7, %6 ], [ %end, %13 ]
  %18 = ptrtoint ptr %17 to i64
  %19 = icmp eq ptr %17, %end
  %20 = add i32 %4, -37
  %21 = icmp ult i32 %20, -35
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %23

23:                                               ; preds = %16
  %24 = load i8, ptr %17, align 1
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %26

26:                                               ; preds = %23
  %27 = and i64 %fmtc, 128
  %28 = icmp ne i64 %27, 0
  %29 = icmp eq i8 %24, 43
  %30 = and i1 %28, %29
  %31 = zext i1 %30 to i64
  %32 = getelementptr inbounds nuw i8, ptr %17, i64 %31
  %33 = icmp eq ptr %32, %end
  br i1 %33, label %44, label %34

34:                                               ; preds = %26
  %35 = sub i64 %2, %18
  %36 = getelementptr i8, ptr %17, i64 %35
  br label %37

37:                                               ; preds = %41, %34
  %38 = phi ptr [ %42, %41 ], [ %32, %34 ]
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 48
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %43 = icmp eq ptr %42, %end
  br i1 %43, label %44, label %37, !llvm.loop !9

44:                                               ; preds = %41, %26
  %45 = phi ptr [ %32, %26 ], [ %36, %41 ]
  %46 = icmp ugt ptr %45, %32
  %47 = icmp eq i64 %3, 10
  br i1 %47, label %51, label %166

48:                                               ; preds = %37
  %49 = icmp ugt ptr %38, %32
  %50 = icmp eq i64 %3, 10
  br i1 %50, label %53, label %166

51:                                               ; preds = %44
  br i1 %46, label %52, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

52:                                               ; preds = %51
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

53:                                               ; preds = %48
  %54 = ptrtoint ptr %38 to i64
  %55 = sub i64 %2, %54
  %56 = icmp ugt i64 %55, 3
  br i1 %56, label %57, label %166

57:                                               ; preds = %53
  %58 = load i32, ptr %38, align 1
  %59 = add i32 %58, 1179010630
  %60 = add i32 %58, -808464432
  %61 = or i32 %59, %60
  %62 = and i32 %61, -2139062144
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %109

64:                                               ; preds = %57
  %65 = mul i32 %60, 10
  %66 = lshr i32 %60, 8
  %67 = add i32 %65, %66
  %68 = and i32 %67, 16711935
  %69 = mul i32 %68, 6553601
  %70 = lshr i32 %69, 16
  %71 = icmp eq i64 %55, 4
  br i1 %71, label %106, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds nuw i8, ptr %38, i64 4
  %74 = load i8, ptr %73, align 1
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, -48
  %77 = icmp ult i32 %76, 10
  br i1 %77, label %78, label %106

78:                                               ; preds = %72
  %79 = mul nuw nsw i32 %70, 10
  %80 = add nuw nsw i32 %76, %79
  %81 = icmp ugt i64 %55, 5
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = getelementptr inbounds nuw i8, ptr %38, i64 5
  %84 = load i8, ptr %83, align 1
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %85, -48
  %87 = icmp ult i32 %86, 10
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = icmp eq ptr %83, %end
  br i1 %89, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %90

90:                                               ; preds = %96, %88
  %91 = phi ptr [ %97, %96 ], [ %83, %88 ]
  %92 = load i8, ptr %91, align 1
  %93 = sext i8 %92 to i32
  %94 = add nsw i32 %93, -48
  %95 = icmp ult i32 %94, 10
  br i1 %95, label %96, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

96:                                               ; preds = %90
  %97 = getelementptr inbounds nuw i8, ptr %91, i64 1
  %98 = icmp eq ptr %97, %end
  br i1 %98, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %90, !llvm.loop !10

99:                                               ; preds = %82, %78
  %100 = icmp samesign ugt i32 %80, 65535
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = getelementptr inbounds nuw i8, ptr %38, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

103:                                              ; preds = %99
  %104 = trunc nuw i32 %80 to i16
  store i16 %104, ptr %v, align 2
  %105 = getelementptr inbounds nuw i8, ptr %38, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

106:                                              ; preds = %72, %64
  %107 = trunc nuw i32 %70 to i16
  store i16 %107, ptr %v, align 2
  %108 = getelementptr inbounds nuw i8, ptr %38, i64 4
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

109:                                              ; preds = %57
  %110 = icmp sgt i64 %55, 7
  br i1 %110, label %111, label %137

111:                                              ; preds = %120, %109
  %112 = phi i64 [ %132, %120 ], [ 0, %109 ]
  %113 = phi ptr [ %133, %120 ], [ %38, %109 ]
  %114 = load i64, ptr %113, align 1
  %115 = add i64 %114, 5063812098665367110
  %116 = add i64 %114, -3472328296227680304
  %117 = or i64 %115, %116
  %118 = and i64 %117, -9187201950435737472
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %111
  %121 = mul i64 %112, 100000000
  %122 = mul i64 %116, 10
  %123 = lshr i64 %116, 8
  %124 = add i64 %122, %123
  %125 = and i64 %124, 1095216660735
  %126 = mul i64 %125, 4294967296000100
  %127 = lshr i64 %124, 16
  %128 = and i64 %127, 1095216660735
  %129 = mul i64 %128, 42949672960001
  %130 = add i64 %129, %126
  %131 = lshr i64 %130, 32
  %132 = add i64 %131, %121
  %133 = getelementptr inbounds nuw i8, ptr %113, i64 8
  %134 = ptrtoint ptr %133 to i64
  %135 = sub i64 %2, %134
  %136 = icmp sgt i64 %135, 7
  br i1 %136, label %111, label %137, !llvm.loop !11

137:                                              ; preds = %120, %109
  %138 = phi ptr [ %38, %109 ], [ %133, %120 ]
  %139 = phi i64 [ 0, %109 ], [ %132, %120 ]
  %140 = phi i64 [ %55, %109 ], [ %135, %120 ]
  %141 = icmp sgt i64 %140, 3
  br i1 %141, label %142, label %166

142:                                              ; preds = %137
  %143 = load i32, ptr %138, align 1
  br label %146

144:                                              ; preds = %111
  %145 = trunc i64 %114 to i32
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = phi ptr [ %138, %142 ], [ %113, %144 ]
  %149 = phi i64 [ %139, %142 ], [ %112, %144 ]
  %150 = add i32 %147, 1179010630
  %151 = add i32 %147, -808464432
  %152 = or i32 %150, %151
  %153 = and i32 %152, -2139062144
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %146
  %156 = mul i64 %149, 10000
  %157 = mul i32 %151, 10
  %158 = lshr i32 %151, 8
  %159 = add i32 %157, %158
  %160 = and i32 %159, 16711935
  %161 = mul i32 %160, 6553601
  %162 = lshr i32 %161, 16
  %163 = zext nneg i32 %162 to i64
  %164 = add i64 %156, %163
  %165 = getelementptr inbounds nuw i8, ptr %148, i64 4
  br label %166

166:                                              ; preds = %155, %146, %137, %53, %48, %44
  %167 = phi ptr [ %38, %155 ], [ %38, %146 ], [ %38, %137 ], [ %38, %48 ], [ %45, %44 ], [ %38, %53 ]
  %168 = phi i1 [ %49, %155 ], [ %49, %146 ], [ %49, %137 ], [ %49, %48 ], [ %46, %44 ], [ %49, %53 ]
  %169 = phi ptr [ %165, %155 ], [ %148, %146 ], [ %138, %137 ], [ %38, %48 ], [ %45, %44 ], [ %38, %53 ]
  %170 = phi i64 [ %164, %155 ], [ %149, %146 ], [ %139, %137 ], [ 0, %48 ], [ 0, %44 ], [ 0, %53 ]
  %171 = ptrtoint ptr %169 to i64
  %172 = icmp eq ptr %169, %end
  br i1 %172, label %195, label %173

173:                                              ; preds = %166
  %174 = sub i64 %2, %171
  %175 = getelementptr i8, ptr %169, i64 %174
  br label %176

176:                                              ; preds = %185, %173
  %177 = phi i64 [ %188, %185 ], [ %170, %173 ]
  %178 = phi ptr [ %189, %185 ], [ %169, %173 ]
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %180
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp slt i32 %183, %4
  br i1 %184, label %185, label %191

185:                                              ; preds = %176
  %186 = mul i64 %177, %3
  %187 = zext i8 %182 to i64
  %188 = add i64 %186, %187
  %189 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %190 = icmp eq ptr %189, %end
  br i1 %190, label %191, label %176

191:                                              ; preds = %185, %176
  %192 = phi ptr [ %175, %185 ], [ %178, %176 ]
  %193 = phi i64 [ %188, %185 ], [ %177, %176 ]
  %194 = ptrtoint ptr %192 to i64
  br label %195

195:                                              ; preds = %191, %166
  %196 = phi i64 [ %194, %191 ], [ %171, %166 ]
  %197 = phi ptr [ %192, %191 ], [ %169, %166 ]
  %198 = phi i64 [ %193, %191 ], [ %170, %166 ]
  %199 = ptrtoint ptr %167 to i64
  %200 = sub i64 %196, %199
  %201 = icmp eq ptr %197, %167
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  br i1 %168, label %203, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

203:                                              ; preds = %202
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

204:                                              ; preds = %195
  %205 = add i64 %o2b, -8589934592
  %206 = ashr i64 %205, 32
  %207 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE13maxdigits_u64E, i64 0, i64 %206
  %208 = load i64, ptr %207, align 8
  %209 = icmp ugt i64 %200, %208
  br i1 %209, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %210

210:                                              ; preds = %204
  %211 = icmp eq i64 %200, %208
  br i1 %211, label %212, label %229

212:                                              ; preds = %210
  %213 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE12min_safe_u64E, i64 0, i64 %206
  %214 = load i64, ptr %213, align 8
  %215 = udiv i64 -1, %214
  %216 = load i8, ptr %167, align 1
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1
  %220 = zext i8 %219 to i64
  %221 = icmp ult i64 %215, %220
  br i1 %221, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %222

222:                                              ; preds = %212
  %223 = icmp eq i64 %215, %220
  %224 = mul i64 %215, %214
  %225 = icmp ult i64 %198, %224
  %226 = select i1 %223, i1 %225, i1 false
  %227 = icmp ugt i64 %198, 65535
  %228 = select i1 %226, i1 true, i1 %227
  br i1 %228, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %231

229:                                              ; preds = %210
  %230 = icmp ugt i64 %198, 65535
  br i1 %230, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %231

231:                                              ; preds = %229, %222
  %232 = trunc i64 %198 to i16
  store i16 %232, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %16, %23, %51, %52, %88, %90, %96, %101, %103, %106, %202, %203, %204, %212, %222, %229, %231
  %233 = phi ptr [ %17, %16 ], [ %17, %23 ], [ %197, %203 ], [ %17, %202 ], [ %197, %229 ], [ %197, %204 ], [ %197, %231 ], [ %17, %51 ], [ %45, %52 ], [ %108, %106 ], [ %105, %103 ], [ %102, %101 ], [ %197, %212 ], [ %197, %222 ], [ %83, %88 ], [ %91, %90 ], [ %36, %96 ]
  %234 = phi i32 [ 22, %16 ], [ 22, %23 ], [ 0, %203 ], [ 22, %202 ], [ 34, %229 ], [ 34, %204 ], [ 0, %231 ], [ 22, %51 ], [ 0, %52 ], [ 0, %106 ], [ 0, %103 ], [ 34, %101 ], [ 34, %212 ], [ 34, %222 ], [ 34, %88 ], [ 34, %96 ], [ 34, %90 ]
  %235 = insertvalue { ptr, i32 } poison, ptr %233, 0
  %236 = insertvalue { ptr, i32 } %235, i32 %234, 1
  ret { ptr, i32 } %236
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
