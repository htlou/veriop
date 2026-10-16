; ModuleID = '/srv/home/hantaolou/code/veriop/heldout/c-alive2/final-verification/modules/v2_s5_z2_L8_f0_src.ll.pre'
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

define { ptr, i32 } @ver(ptr noundef nonnull align 2 dereferenceable(2) %v, i64 noundef %fmt, i64 noundef %o2, i8 noundef %c2, i8 noundef %c3, i8 noundef %c4, i8 noundef %c5, i8 noundef %c6, i8 noundef %c7) personality ptr @__gxx_personality_v0 {
  %buf = alloca [8 x i8], align 1
  %p0 = getelementptr inbounds i8, ptr %buf, i64 0
  store i8 48, ptr %p0, align 1
  %p1 = getelementptr inbounds i8, ptr %buf, i64 1
  store i8 48, ptr %p1, align 1
  %p2 = getelementptr inbounds i8, ptr %buf, i64 2
  store i8 %c2, ptr %p2, align 1
  %p3 = getelementptr inbounds i8, ptr %buf, i64 3
  store i8 %c3, ptr %p3, align 1
  %p4 = getelementptr inbounds i8, ptr %buf, i64 4
  store i8 %c4, ptr %p4, align 1
  %p5 = getelementptr inbounds i8, ptr %buf, i64 5
  store i8 %c5, ptr %p5, align 1
  %p6 = getelementptr inbounds i8, ptr %buf, i64 6
  store i8 %c6, ptr %p6, align 1
  %p7 = getelementptr inbounds i8, ptr %buf, i64 7
  store i8 %c7, ptr %p7, align 1
  %s2 = sub i8 %c2, 48
  %d2 = icmp ult i8 %s2, 10
  call void @llvm.assume(i1 %d2)
  %s3 = sub i8 %c3, 48
  %d3 = icmp ult i8 %s3, 10
  call void @llvm.assume(i1 %d3)
  %s4 = sub i8 %c4, 48
  %d4 = icmp ult i8 %s4, 10
  call void @llvm.assume(i1 %d4)
  %s5 = sub i8 %c5, 48
  %d5 = icmp ult i8 %s5, 10
  %nd5 = xor i1 %d5, true
  call void @llvm.assume(i1 %nd5)
  %nz = icmp ne i8 %c2, 48
  call void @llvm.assume(i1 %nz)
  %end = getelementptr i8, ptr %buf, i64 8
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
  %6 = add i32 %4, -37
  %7 = icmp ult i32 %6, -35
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %9

9:                                                ; preds = %0
  %10 = load i8, ptr %buf, align 1
  %11 = icmp eq i8 %10, 45
  br i1 %11, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %12

12:                                               ; preds = %9
  %13 = icmp eq i8 %10, 43
  %14 = icmp eq ptr %buf, %end
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = sub i64 %2, %1
  %17 = getelementptr i8, ptr %buf, i64 %16
  br label %18

18:                                               ; preds = %22, %15
  %19 = phi ptr [ %23, %22 ], [ %buf, %15 ]
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 48
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %19, i64 1
  %24 = icmp eq ptr %23, %end
  br i1 %24, label %25, label %18, !llvm.loop !9

25:                                               ; preds = %22, %12
  %26 = phi ptr [ %buf, %12 ], [ %17, %22 ]
  %27 = icmp ugt ptr %26, %buf
  %28 = icmp eq i64 %3, 10
  br i1 %28, label %32, label %147

29:                                               ; preds = %18
  %30 = icmp ugt ptr %19, %buf
  %31 = icmp eq i64 %3, 10
  br i1 %31, label %34, label %147

32:                                               ; preds = %25
  br i1 %27, label %33, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

33:                                               ; preds = %32
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

34:                                               ; preds = %29
  %35 = ptrtoint ptr %19 to i64
  %36 = sub i64 %2, %35
  %37 = icmp ugt i64 %36, 3
  br i1 %37, label %38, label %147

38:                                               ; preds = %34
  %39 = load i32, ptr %19, align 1
  %40 = add i32 %39, 1179010630
  %41 = add i32 %39, -808464432
  %42 = or i32 %40, %41
  %43 = and i32 %42, -2139062144
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %90

45:                                               ; preds = %38
  %46 = mul i32 %41, 10
  %47 = lshr i32 %41, 8
  %48 = add i32 %46, %47
  %49 = and i32 %48, 16711935
  %50 = mul i32 %49, 6553601
  %51 = lshr i32 %50, 16
  %52 = icmp eq i64 %36, 4
  br i1 %52, label %87, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %55 = load i8, ptr %54, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %56, -48
  %58 = icmp ult i32 %57, 10
  br i1 %58, label %59, label %87

59:                                               ; preds = %53
  %60 = mul nuw nsw i32 %51, 10
  %61 = add nuw nsw i32 %57, %60
  %62 = icmp ugt i64 %36, 5
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %19, i64 5
  %65 = load i8, ptr %64, align 1
  %66 = sext i8 %65 to i32
  %67 = add nsw i32 %66, -48
  %68 = icmp ult i32 %67, 10
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = icmp eq ptr %64, %end
  br i1 %70, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %71

71:                                               ; preds = %77, %69
  %72 = phi ptr [ %78, %77 ], [ %64, %69 ]
  %73 = load i8, ptr %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, -48
  %76 = icmp ult i32 %75, 10
  br i1 %76, label %77, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

77:                                               ; preds = %71
  %78 = getelementptr inbounds nuw i8, ptr %72, i64 1
  %79 = icmp eq ptr %78, %end
  br i1 %79, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %71, !llvm.loop !10

80:                                               ; preds = %63, %59
  %81 = icmp samesign ugt i32 %61, 65535
  br i1 %81, label %82, label %84

82:                                               ; preds = %80
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

84:                                               ; preds = %80
  %85 = trunc nuw i32 %61 to i16
  store i16 %85, ptr %v, align 2
  %86 = getelementptr inbounds nuw i8, ptr %19, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

87:                                               ; preds = %53, %45
  %88 = trunc nuw i32 %51 to i16
  store i16 %88, ptr %v, align 2
  %89 = getelementptr inbounds nuw i8, ptr %19, i64 4
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

90:                                               ; preds = %38
  %91 = icmp sgt i64 %36, 7
  br i1 %91, label %92, label %118

92:                                               ; preds = %101, %90
  %93 = phi i64 [ %113, %101 ], [ 0, %90 ]
  %94 = phi ptr [ %114, %101 ], [ %19, %90 ]
  %95 = load i64, ptr %94, align 1
  %96 = add i64 %95, 5063812098665367110
  %97 = add i64 %95, -3472328296227680304
  %98 = or i64 %96, %97
  %99 = and i64 %98, -9187201950435737472
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %92
  %102 = mul i64 %93, 100000000
  %103 = mul i64 %97, 10
  %104 = lshr i64 %97, 8
  %105 = add i64 %103, %104
  %106 = and i64 %105, 1095216660735
  %107 = mul i64 %106, 4294967296000100
  %108 = lshr i64 %105, 16
  %109 = and i64 %108, 1095216660735
  %110 = mul i64 %109, 42949672960001
  %111 = add i64 %110, %107
  %112 = lshr i64 %111, 32
  %113 = add i64 %112, %102
  %114 = getelementptr inbounds nuw i8, ptr %94, i64 8
  %115 = ptrtoint ptr %114 to i64
  %116 = sub i64 %2, %115
  %117 = icmp sgt i64 %116, 7
  br i1 %117, label %92, label %118, !llvm.loop !11

118:                                              ; preds = %101, %90
  %119 = phi ptr [ %19, %90 ], [ %114, %101 ]
  %120 = phi i64 [ 0, %90 ], [ %113, %101 ]
  %121 = phi i64 [ %36, %90 ], [ %116, %101 ]
  %122 = icmp sgt i64 %121, 3
  br i1 %122, label %123, label %147

123:                                              ; preds = %118
  %124 = load i32, ptr %119, align 1
  br label %127

125:                                              ; preds = %92
  %126 = trunc i64 %95 to i32
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = phi ptr [ %119, %123 ], [ %94, %125 ]
  %130 = phi i64 [ %120, %123 ], [ %93, %125 ]
  %131 = add i32 %128, 1179010630
  %132 = add i32 %128, -808464432
  %133 = or i32 %131, %132
  %134 = and i32 %133, -2139062144
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %127
  %137 = mul i64 %130, 10000
  %138 = mul i32 %132, 10
  %139 = lshr i32 %132, 8
  %140 = add i32 %138, %139
  %141 = and i32 %140, 16711935
  %142 = mul i32 %141, 6553601
  %143 = lshr i32 %142, 16
  %144 = zext nneg i32 %143 to i64
  %145 = add i64 %137, %144
  %146 = getelementptr inbounds nuw i8, ptr %129, i64 4
  br label %147

147:                                              ; preds = %136, %127, %118, %34, %29, %25
  %148 = phi ptr [ %19, %136 ], [ %19, %127 ], [ %19, %118 ], [ %19, %29 ], [ %26, %25 ], [ %19, %34 ]
  %149 = phi i1 [ %30, %136 ], [ %30, %127 ], [ %30, %118 ], [ %30, %29 ], [ %27, %25 ], [ %30, %34 ]
  %150 = phi ptr [ %146, %136 ], [ %129, %127 ], [ %119, %118 ], [ %19, %29 ], [ %26, %25 ], [ %19, %34 ]
  %151 = phi i64 [ %145, %136 ], [ %130, %127 ], [ %120, %118 ], [ 0, %29 ], [ 0, %25 ], [ 0, %34 ]
  %152 = ptrtoint ptr %150 to i64
  %153 = icmp eq ptr %150, %end
  br i1 %153, label %176, label %154

154:                                              ; preds = %147
  %155 = sub i64 %2, %152
  %156 = getelementptr i8, ptr %150, i64 %155
  br label %157

157:                                              ; preds = %166, %154
  %158 = phi i64 [ %169, %166 ], [ %151, %154 ]
  %159 = phi ptr [ %170, %166 ], [ %150, %154 ]
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp slt i32 %164, %4
  br i1 %165, label %166, label %172

166:                                              ; preds = %157
  %167 = mul i64 %158, %3
  %168 = zext i8 %163 to i64
  %169 = add i64 %167, %168
  %170 = getelementptr inbounds nuw i8, ptr %159, i64 1
  %171 = icmp eq ptr %170, %end
  br i1 %171, label %172, label %157

172:                                              ; preds = %166, %157
  %173 = phi ptr [ %156, %166 ], [ %159, %157 ]
  %174 = phi i64 [ %169, %166 ], [ %158, %157 ]
  %175 = ptrtoint ptr %173 to i64
  br label %176

176:                                              ; preds = %172, %147
  %177 = phi i64 [ %175, %172 ], [ %152, %147 ]
  %178 = phi ptr [ %173, %172 ], [ %150, %147 ]
  %179 = phi i64 [ %174, %172 ], [ %151, %147 ]
  %180 = ptrtoint ptr %148 to i64
  %181 = sub i64 %177, %180
  %182 = icmp eq ptr %178, %148
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  br i1 %149, label %184, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

184:                                              ; preds = %183
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

185:                                              ; preds = %176
  %186 = add i64 %o2b, -8589934592
  %187 = ashr i64 %186, 32
  %188 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE13maxdigits_u64E, i64 0, i64 %187
  %189 = load i64, ptr %188, align 8
  %190 = icmp ugt i64 %181, %189
  br i1 %190, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %191

191:                                              ; preds = %185
  %192 = icmp eq i64 %181, %189
  br i1 %192, label %193, label %210

193:                                              ; preds = %191
  %194 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE12min_safe_u64E, i64 0, i64 %187
  %195 = load i64, ptr %194, align 8
  %196 = udiv i64 -1, %195
  %197 = load i8, ptr %148, align 1
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %198
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i64
  %202 = icmp ult i64 %196, %201
  br i1 %202, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %203

203:                                              ; preds = %193
  %204 = icmp eq i64 %196, %201
  %205 = mul i64 %196, %195
  %206 = icmp ult i64 %179, %205
  %207 = select i1 %204, i1 %206, i1 false
  %208 = icmp ugt i64 %179, 65535
  %209 = select i1 %207, i1 true, i1 %208
  br i1 %209, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %212

210:                                              ; preds = %191
  %211 = icmp ugt i64 %179, 65535
  br i1 %211, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %212

212:                                              ; preds = %210, %203
  %213 = trunc i64 %179 to i16
  store i16 %213, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %0, %9, %32, %33, %69, %71, %77, %82, %84, %87, %183, %184, %185, %193, %203, %210, %212
  %214 = phi ptr [ %buf, %0 ], [ %buf, %9 ], [ %178, %184 ], [ %buf, %183 ], [ %178, %210 ], [ %178, %185 ], [ %178, %212 ], [ %buf, %32 ], [ %26, %33 ], [ %89, %87 ], [ %86, %84 ], [ %83, %82 ], [ %178, %193 ], [ %178, %203 ], [ %64, %69 ], [ %72, %71 ], [ %17, %77 ]
  %215 = phi i32 [ 22, %0 ], [ 22, %9 ], [ 0, %184 ], [ 22, %183 ], [ 34, %210 ], [ 34, %185 ], [ 0, %212 ], [ 22, %32 ], [ 0, %33 ], [ 0, %87 ], [ 0, %84 ], [ 34, %82 ], [ 34, %193 ], [ 34, %203 ], [ 34, %69 ], [ 34, %77 ], [ 34, %71 ]
  %216 = insertvalue { ptr, i32 } poison, ptr %214, 0
  %217 = insertvalue { ptr, i32 } %216, i32 %215, 1
  ret { ptr, i32 } %217
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
