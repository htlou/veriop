; ModuleID = '/srv/home/hantaolou/code/veriop/heldout/c-alive2/final-verification/modules/v2_s4_z4_L9_f3_h_src.ll.pre'
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
@gbuf = global [9 x i8] zeroinitializer, align 1

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

define { ptr, i32, i16 } @ver(i16 noundef %v0, i64 noundef %fmt, i64 noundef %o2, i8 noundef %c4, i8 noundef %c5, i8 noundef %c6, i8 noundef %c7, i8 noundef %c8) personality ptr @__gxx_personality_v0 {
  %buf = getelementptr inbounds i8, ptr @gbuf, i64 0
  %v = alloca i16, align 2
  store i16 %v0, ptr %v, align 2
  %p0 = getelementptr inbounds i8, ptr %buf, i64 0
  store i8 48, ptr %p0, align 1
  %p1 = getelementptr inbounds i8, ptr %buf, i64 1
  store i8 48, ptr %p1, align 1
  %p2 = getelementptr inbounds i8, ptr %buf, i64 2
  store i8 48, ptr %p2, align 1
  %p3 = getelementptr inbounds i8, ptr %buf, i64 3
  store i8 48, ptr %p3, align 1
  %p4 = getelementptr inbounds i8, ptr %buf, i64 4
  store i8 %c4, ptr %p4, align 1
  %p5 = getelementptr inbounds i8, ptr %buf, i64 5
  store i8 %c5, ptr %p5, align 1
  %p6 = getelementptr inbounds i8, ptr %buf, i64 6
  store i8 %c6, ptr %p6, align 1
  %p7 = getelementptr inbounds i8, ptr %buf, i64 7
  store i8 %c7, ptr %p7, align 1
  %p8 = getelementptr inbounds i8, ptr %buf, i64 8
  store i8 %c8, ptr %p8, align 1
  %s4 = sub i8 %c4, 48
  %d4 = icmp ult i8 %s4, 10
  %nd4 = xor i1 %d4, true
  call void @llvm.assume(i1 %nd4)
  %end = getelementptr i8, ptr %buf, i64 9
  %bhi = lshr i64 %o2, 32
  %base = trunc i64 %bhi to i32
  %b10 = icmp eq i32 %base, 10
  call void @llvm.assume(i1 %b10)
  %o2lo = and i64 %o2, 4294967295
  %o2b = or i64 %o2lo, 42949672960
  %fmtm = and i64 %fmt, -385
  %fmtc = or i64 %fmtm, 384
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
  %27 = icmp eq i8 %24, 43
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 %28
  %30 = icmp eq ptr %29, %end
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = sub i64 %2, %18
  %33 = getelementptr i8, ptr %17, i64 %32
  br label %34

34:                                               ; preds = %38, %31
  %35 = phi ptr [ %39, %38 ], [ %29, %31 ]
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 48
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 1
  %40 = icmp eq ptr %39, %end
  br i1 %40, label %41, label %34, !llvm.loop !9

41:                                               ; preds = %38, %26
  %42 = phi ptr [ %29, %26 ], [ %33, %38 ]
  %43 = icmp ugt ptr %42, %29
  %44 = icmp eq i64 %3, 10
  br i1 %44, label %48, label %163

45:                                               ; preds = %34
  %46 = icmp ugt ptr %35, %29
  %47 = icmp eq i64 %3, 10
  br i1 %47, label %50, label %163

48:                                               ; preds = %41
  br i1 %43, label %49, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

49:                                               ; preds = %48
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

50:                                               ; preds = %45
  %51 = ptrtoint ptr %35 to i64
  %52 = sub i64 %2, %51
  %53 = icmp ugt i64 %52, 3
  br i1 %53, label %54, label %163

54:                                               ; preds = %50
  %55 = load i32, ptr %35, align 1
  %56 = add i32 %55, 1179010630
  %57 = add i32 %55, -808464432
  %58 = or i32 %56, %57
  %59 = and i32 %58, -2139062144
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %106

61:                                               ; preds = %54
  %62 = mul i32 %57, 10
  %63 = lshr i32 %57, 8
  %64 = add i32 %62, %63
  %65 = and i32 %64, 16711935
  %66 = mul i32 %65, 6553601
  %67 = lshr i32 %66, 16
  %68 = icmp eq i64 %52, 4
  br i1 %68, label %103, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i32
  %73 = add nsw i32 %72, -48
  %74 = icmp ult i32 %73, 10
  br i1 %74, label %75, label %103

75:                                               ; preds = %69
  %76 = mul nuw nsw i32 %67, 10
  %77 = add nuw nsw i32 %73, %76
  %78 = icmp ugt i64 %52, 5
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %35, i64 5
  %81 = load i8, ptr %80, align 1
  %82 = sext i8 %81 to i32
  %83 = add nsw i32 %82, -48
  %84 = icmp ult i32 %83, 10
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = icmp eq ptr %80, %end
  br i1 %86, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %87

87:                                               ; preds = %93, %85
  %88 = phi ptr [ %94, %93 ], [ %80, %85 ]
  %89 = load i8, ptr %88, align 1
  %90 = sext i8 %89 to i32
  %91 = add nsw i32 %90, -48
  %92 = icmp ult i32 %91, 10
  br i1 %92, label %93, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

93:                                               ; preds = %87
  %94 = getelementptr inbounds nuw i8, ptr %88, i64 1
  %95 = icmp eq ptr %94, %end
  br i1 %95, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %87, !llvm.loop !10

96:                                               ; preds = %79, %75
  %97 = icmp samesign ugt i32 %77, 65535
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  %99 = getelementptr inbounds nuw i8, ptr %35, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

100:                                              ; preds = %96
  %101 = trunc nuw i32 %77 to i16
  store i16 %101, ptr %v, align 2
  %102 = getelementptr inbounds nuw i8, ptr %35, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

103:                                              ; preds = %69, %61
  %104 = trunc nuw i32 %67 to i16
  store i16 %104, ptr %v, align 2
  %105 = getelementptr inbounds nuw i8, ptr %35, i64 4
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

106:                                              ; preds = %54
  %107 = icmp sgt i64 %52, 7
  br i1 %107, label %108, label %134

108:                                              ; preds = %117, %106
  %109 = phi i64 [ %129, %117 ], [ 0, %106 ]
  %110 = phi ptr [ %130, %117 ], [ %35, %106 ]
  %111 = load i64, ptr %110, align 1
  %112 = add i64 %111, 5063812098665367110
  %113 = add i64 %111, -3472328296227680304
  %114 = or i64 %112, %113
  %115 = and i64 %114, -9187201950435737472
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %108
  %118 = mul i64 %109, 100000000
  %119 = mul i64 %113, 10
  %120 = lshr i64 %113, 8
  %121 = add i64 %119, %120
  %122 = and i64 %121, 1095216660735
  %123 = mul i64 %122, 4294967296000100
  %124 = lshr i64 %121, 16
  %125 = and i64 %124, 1095216660735
  %126 = mul i64 %125, 42949672960001
  %127 = add i64 %126, %123
  %128 = lshr i64 %127, 32
  %129 = add i64 %128, %118
  %130 = getelementptr inbounds nuw i8, ptr %110, i64 8
  %131 = ptrtoint ptr %130 to i64
  %132 = sub i64 %2, %131
  %133 = icmp sgt i64 %132, 7
  br i1 %133, label %108, label %134, !llvm.loop !11

134:                                              ; preds = %117, %106
  %135 = phi ptr [ %35, %106 ], [ %130, %117 ]
  %136 = phi i64 [ 0, %106 ], [ %129, %117 ]
  %137 = phi i64 [ %52, %106 ], [ %132, %117 ]
  %138 = icmp sgt i64 %137, 3
  br i1 %138, label %139, label %163

139:                                              ; preds = %134
  %140 = load i32, ptr %135, align 1
  br label %143

141:                                              ; preds = %108
  %142 = trunc i64 %111 to i32
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %145 = phi ptr [ %135, %139 ], [ %110, %141 ]
  %146 = phi i64 [ %136, %139 ], [ %109, %141 ]
  %147 = add i32 %144, 1179010630
  %148 = add i32 %144, -808464432
  %149 = or i32 %147, %148
  %150 = and i32 %149, -2139062144
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %143
  %153 = mul i64 %146, 10000
  %154 = mul i32 %148, 10
  %155 = lshr i32 %148, 8
  %156 = add i32 %154, %155
  %157 = and i32 %156, 16711935
  %158 = mul i32 %157, 6553601
  %159 = lshr i32 %158, 16
  %160 = zext nneg i32 %159 to i64
  %161 = add i64 %153, %160
  %162 = getelementptr inbounds nuw i8, ptr %145, i64 4
  br label %163

163:                                              ; preds = %152, %143, %134, %50, %45, %41
  %164 = phi ptr [ %35, %152 ], [ %35, %143 ], [ %35, %134 ], [ %35, %45 ], [ %42, %41 ], [ %35, %50 ]
  %165 = phi i1 [ %46, %152 ], [ %46, %143 ], [ %46, %134 ], [ %46, %45 ], [ %43, %41 ], [ %46, %50 ]
  %166 = phi ptr [ %162, %152 ], [ %145, %143 ], [ %135, %134 ], [ %35, %45 ], [ %42, %41 ], [ %35, %50 ]
  %167 = phi i64 [ %161, %152 ], [ %146, %143 ], [ %136, %134 ], [ 0, %45 ], [ 0, %41 ], [ 0, %50 ]
  %168 = ptrtoint ptr %166 to i64
  %169 = icmp eq ptr %166, %end
  br i1 %169, label %192, label %170

170:                                              ; preds = %163
  %171 = sub i64 %2, %168
  %172 = getelementptr i8, ptr %166, i64 %171
  br label %173

173:                                              ; preds = %182, %170
  %174 = phi i64 [ %185, %182 ], [ %167, %170 ]
  %175 = phi ptr [ %186, %182 ], [ %166, %170 ]
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i64
  %178 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp slt i32 %180, %4
  br i1 %181, label %182, label %188

182:                                              ; preds = %173
  %183 = mul i64 %174, %3
  %184 = zext i8 %179 to i64
  %185 = add i64 %183, %184
  %186 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %187 = icmp eq ptr %186, %end
  br i1 %187, label %188, label %173

188:                                              ; preds = %182, %173
  %189 = phi ptr [ %172, %182 ], [ %175, %173 ]
  %190 = phi i64 [ %185, %182 ], [ %174, %173 ]
  %191 = ptrtoint ptr %189 to i64
  br label %192

192:                                              ; preds = %188, %163
  %193 = phi i64 [ %191, %188 ], [ %168, %163 ]
  %194 = phi ptr [ %189, %188 ], [ %166, %163 ]
  %195 = phi i64 [ %190, %188 ], [ %167, %163 ]
  %196 = ptrtoint ptr %164 to i64
  %197 = sub i64 %193, %196
  %198 = icmp eq ptr %194, %164
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  br i1 %165, label %200, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

200:                                              ; preds = %199
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

201:                                              ; preds = %192
  %202 = add i64 %o2b, -8589934592
  %203 = ashr i64 %202, 32
  %204 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE13maxdigits_u64E, i64 0, i64 %203
  %205 = load i64, ptr %204, align 8
  %206 = icmp ugt i64 %197, %205
  br i1 %206, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %207

207:                                              ; preds = %201
  %208 = icmp eq i64 %197, %205
  br i1 %208, label %209, label %226

209:                                              ; preds = %207
  %210 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE12min_safe_u64E, i64 0, i64 %203
  %211 = load i64, ptr %210, align 8
  %212 = udiv i64 -1, %211
  %213 = load i8, ptr %164, align 1
  %214 = zext i8 %213 to i64
  %215 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %214
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i64
  %218 = icmp ult i64 %212, %217
  br i1 %218, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %219

219:                                              ; preds = %209
  %220 = icmp eq i64 %212, %217
  %221 = mul i64 %212, %211
  %222 = icmp ult i64 %195, %221
  %223 = select i1 %220, i1 %222, i1 false
  %224 = icmp ugt i64 %195, 65535
  %225 = select i1 %223, i1 true, i1 %224
  br i1 %225, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %228

226:                                              ; preds = %207
  %227 = icmp ugt i64 %195, 65535
  br i1 %227, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %228

228:                                              ; preds = %226, %219
  %229 = trunc i64 %195 to i16
  store i16 %229, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %16, %23, %48, %49, %85, %87, %93, %98, %100, %103, %199, %200, %201, %209, %219, %226, %228
  %230 = phi ptr [ %17, %16 ], [ %17, %23 ], [ %194, %200 ], [ %17, %199 ], [ %194, %226 ], [ %194, %201 ], [ %194, %228 ], [ %17, %48 ], [ %42, %49 ], [ %105, %103 ], [ %102, %100 ], [ %99, %98 ], [ %194, %209 ], [ %194, %219 ], [ %80, %85 ], [ %88, %87 ], [ %33, %93 ]
  %231 = phi i32 [ 22, %16 ], [ 22, %23 ], [ 0, %200 ], [ 22, %199 ], [ 34, %226 ], [ 34, %201 ], [ 0, %228 ], [ 22, %48 ], [ 0, %49 ], [ 0, %103 ], [ 0, %100 ], [ 34, %98 ], [ 34, %209 ], [ 34, %219 ], [ 34, %85 ], [ 34, %93 ], [ 34, %87 ]
  %232 = insertvalue { ptr, i32 } poison, ptr %230, 0
  %233 = insertvalue { ptr, i32 } %232, i32 %231, 1
  %vf = load i16, ptr %v, align 2
  %r0 = extractvalue { ptr, i32 } %233, 0
  %r1 = extractvalue { ptr, i32 } %233, 1
  %x0 = insertvalue { ptr, i32, i16 } poison, ptr %r0, 0
  %x1 = insertvalue { ptr, i32, i16 } %x0, i32 %r1, 1
  %x2 = insertvalue { ptr, i32, i16 } %x1, i16 %vf, 2
  ret { ptr, i32, i16 } %x2
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
