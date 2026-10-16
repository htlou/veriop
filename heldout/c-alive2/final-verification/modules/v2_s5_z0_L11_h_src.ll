; ModuleID = '/srv/home/hantaolou/code/veriop/heldout/c-alive2/final-verification/modules/v2_s5_z0_L11_h_src.ll.pre'
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
@gbuf = global [11 x i8] zeroinitializer, align 1

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

define { ptr, i32, i16 } @ver(i16 noundef %v0, i64 noundef %fmt, i64 noundef %o2, i8 noundef %c0, i8 noundef %c1, i8 noundef %c2, i8 noundef %c3, i8 noundef %c4, i8 noundef %c5, i8 noundef %c6, i8 noundef %c7, i8 noundef %c8, i8 noundef %c9, i8 noundef %c10) personality ptr @__gxx_personality_v0 {
  %buf = getelementptr inbounds i8, ptr @gbuf, i64 0
  %v = alloca i16, align 2
  store i16 %v0, ptr %v, align 2
  %p0 = getelementptr inbounds i8, ptr %buf, i64 0
  store i8 %c0, ptr %p0, align 1
  %p1 = getelementptr inbounds i8, ptr %buf, i64 1
  store i8 %c1, ptr %p1, align 1
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
  %p8 = getelementptr inbounds i8, ptr %buf, i64 8
  store i8 %c8, ptr %p8, align 1
  %p9 = getelementptr inbounds i8, ptr %buf, i64 9
  store i8 %c9, ptr %p9, align 1
  %p10 = getelementptr inbounds i8, ptr %buf, i64 10
  store i8 %c10, ptr %p10, align 1
  %s0 = sub i8 %c0, 48
  %d0 = icmp ult i8 %s0, 10
  call void @llvm.assume(i1 %d0)
  %s1 = sub i8 %c1, 48
  %d1 = icmp ult i8 %s1, 10
  call void @llvm.assume(i1 %d1)
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
  %nz = icmp ne i8 %c0, 48
  call void @llvm.assume(i1 %nz)
  %end = getelementptr i8, ptr %buf, i64 11
  %bhi = lshr i64 %o2, 32
  %base = trunc i64 %bhi to i32
  %b10 = icmp eq i32 %base, 10
  call void @llvm.assume(i1 %b10)
  %o2lo = and i64 %o2, 4294967295
  %o2b = or i64 %o2lo, 42949672960
  %1 = ptrtoint ptr %buf to i64
  %2 = ptrtoint ptr %end to i64
  %3 = lshr i64 %o2b, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = and i64 %fmt, 256
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %0
  %8 = sub i64 %2, %1
  br label %9

9:                                                ; preds = %16, %7
  %10 = phi ptr [ %17, %16 ], [ %buf, %7 ]
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float9space_lutIvE5valueE, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !range !5, !noundef !6
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 1
  %18 = icmp eq ptr %17, %end
  br i1 %18, label %19, label %9, !llvm.loop !7

19:                                               ; preds = %16, %9
  %20 = phi ptr [ %10, %9 ], [ %end, %16 ]
  %21 = ptrtoint ptr %20 to i64
  br label %22

22:                                               ; preds = %19, %0
  %23 = phi i64 [ %21, %19 ], [ %1, %0 ]
  %24 = phi ptr [ %20, %19 ], [ %buf, %0 ]
  %25 = icmp eq ptr %24, %end
  %26 = add i32 %4, -37
  %27 = icmp ult i32 %26, -35
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %29

29:                                               ; preds = %22
  %30 = load i8, ptr %24, align 1
  %31 = icmp eq i8 %30, 45
  br i1 %31, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %32

32:                                               ; preds = %29
  %33 = and i64 %fmt, 128
  %34 = icmp ne i64 %33, 0
  %35 = icmp eq i8 %30, 43
  %36 = and i1 %34, %35
  %37 = zext i1 %36 to i64
  %38 = getelementptr inbounds nuw i8, ptr %24, i64 %37
  %39 = icmp eq ptr %38, %end
  br i1 %39, label %50, label %40

40:                                               ; preds = %32
  %41 = sub i64 %2, %23
  %42 = getelementptr i8, ptr %24, i64 %41
  br label %43

43:                                               ; preds = %47, %40
  %44 = phi ptr [ %48, %47 ], [ %38, %40 ]
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 48
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %44, i64 1
  %49 = icmp eq ptr %48, %end
  br i1 %49, label %50, label %43, !llvm.loop !9

50:                                               ; preds = %47, %32
  %51 = phi ptr [ %38, %32 ], [ %42, %47 ]
  %52 = icmp ugt ptr %51, %38
  %53 = icmp eq i64 %3, 10
  br i1 %53, label %57, label %172

54:                                               ; preds = %43
  %55 = icmp ugt ptr %44, %38
  %56 = icmp eq i64 %3, 10
  br i1 %56, label %59, label %172

57:                                               ; preds = %50
  br i1 %52, label %58, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

58:                                               ; preds = %57
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

59:                                               ; preds = %54
  %60 = ptrtoint ptr %44 to i64
  %61 = sub i64 %2, %60
  %62 = icmp ugt i64 %61, 3
  br i1 %62, label %63, label %172

63:                                               ; preds = %59
  %64 = load i32, ptr %44, align 1
  %65 = add i32 %64, 1179010630
  %66 = add i32 %64, -808464432
  %67 = or i32 %65, %66
  %68 = and i32 %67, -2139062144
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %63
  %71 = mul i32 %66, 10
  %72 = lshr i32 %66, 8
  %73 = add i32 %71, %72
  %74 = and i32 %73, 16711935
  %75 = mul i32 %74, 6553601
  %76 = lshr i32 %75, 16
  %77 = icmp eq i64 %61, 4
  br i1 %77, label %112, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds nuw i8, ptr %44, i64 4
  %80 = load i8, ptr %79, align 1
  %81 = sext i8 %80 to i32
  %82 = add nsw i32 %81, -48
  %83 = icmp ult i32 %82, 10
  br i1 %83, label %84, label %112

84:                                               ; preds = %78
  %85 = mul nuw nsw i32 %76, 10
  %86 = add nuw nsw i32 %82, %85
  %87 = icmp ugt i64 %61, 5
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = getelementptr inbounds nuw i8, ptr %44, i64 5
  %90 = load i8, ptr %89, align 1
  %91 = sext i8 %90 to i32
  %92 = add nsw i32 %91, -48
  %93 = icmp ult i32 %92, 10
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = icmp eq ptr %89, %end
  br i1 %95, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %96

96:                                               ; preds = %102, %94
  %97 = phi ptr [ %103, %102 ], [ %89, %94 ]
  %98 = load i8, ptr %97, align 1
  %99 = sext i8 %98 to i32
  %100 = add nsw i32 %99, -48
  %101 = icmp ult i32 %100, 10
  br i1 %101, label %102, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

102:                                              ; preds = %96
  %103 = getelementptr inbounds nuw i8, ptr %97, i64 1
  %104 = icmp eq ptr %103, %end
  br i1 %104, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %96, !llvm.loop !10

105:                                              ; preds = %88, %84
  %106 = icmp samesign ugt i32 %86, 65535
  br i1 %106, label %107, label %109

107:                                              ; preds = %105
  %108 = getelementptr inbounds nuw i8, ptr %44, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

109:                                              ; preds = %105
  %110 = trunc nuw i32 %86 to i16
  store i16 %110, ptr %v, align 2
  %111 = getelementptr inbounds nuw i8, ptr %44, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

112:                                              ; preds = %78, %70
  %113 = trunc nuw i32 %76 to i16
  store i16 %113, ptr %v, align 2
  %114 = getelementptr inbounds nuw i8, ptr %44, i64 4
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

115:                                              ; preds = %63
  %116 = icmp sgt i64 %61, 7
  br i1 %116, label %117, label %143

117:                                              ; preds = %126, %115
  %118 = phi i64 [ %138, %126 ], [ 0, %115 ]
  %119 = phi ptr [ %139, %126 ], [ %44, %115 ]
  %120 = load i64, ptr %119, align 1
  %121 = add i64 %120, 5063812098665367110
  %122 = add i64 %120, -3472328296227680304
  %123 = or i64 %121, %122
  %124 = and i64 %123, -9187201950435737472
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %117
  %127 = mul i64 %118, 100000000
  %128 = mul i64 %122, 10
  %129 = lshr i64 %122, 8
  %130 = add i64 %128, %129
  %131 = and i64 %130, 1095216660735
  %132 = mul i64 %131, 4294967296000100
  %133 = lshr i64 %130, 16
  %134 = and i64 %133, 1095216660735
  %135 = mul i64 %134, 42949672960001
  %136 = add i64 %135, %132
  %137 = lshr i64 %136, 32
  %138 = add i64 %137, %127
  %139 = getelementptr inbounds nuw i8, ptr %119, i64 8
  %140 = ptrtoint ptr %139 to i64
  %141 = sub i64 %2, %140
  %142 = icmp sgt i64 %141, 7
  br i1 %142, label %117, label %143, !llvm.loop !11

143:                                              ; preds = %126, %115
  %144 = phi ptr [ %44, %115 ], [ %139, %126 ]
  %145 = phi i64 [ 0, %115 ], [ %138, %126 ]
  %146 = phi i64 [ %61, %115 ], [ %141, %126 ]
  %147 = icmp sgt i64 %146, 3
  br i1 %147, label %148, label %172

148:                                              ; preds = %143
  %149 = load i32, ptr %144, align 1
  br label %152

150:                                              ; preds = %117
  %151 = trunc i64 %120 to i32
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = phi ptr [ %144, %148 ], [ %119, %150 ]
  %155 = phi i64 [ %145, %148 ], [ %118, %150 ]
  %156 = add i32 %153, 1179010630
  %157 = add i32 %153, -808464432
  %158 = or i32 %156, %157
  %159 = and i32 %158, -2139062144
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %152
  %162 = mul i64 %155, 10000
  %163 = mul i32 %157, 10
  %164 = lshr i32 %157, 8
  %165 = add i32 %163, %164
  %166 = and i32 %165, 16711935
  %167 = mul i32 %166, 6553601
  %168 = lshr i32 %167, 16
  %169 = zext nneg i32 %168 to i64
  %170 = add i64 %162, %169
  %171 = getelementptr inbounds nuw i8, ptr %154, i64 4
  br label %172

172:                                              ; preds = %161, %152, %143, %59, %54, %50
  %173 = phi ptr [ %44, %161 ], [ %44, %152 ], [ %44, %143 ], [ %44, %54 ], [ %51, %50 ], [ %44, %59 ]
  %174 = phi i1 [ %55, %161 ], [ %55, %152 ], [ %55, %143 ], [ %55, %54 ], [ %52, %50 ], [ %55, %59 ]
  %175 = phi ptr [ %171, %161 ], [ %154, %152 ], [ %144, %143 ], [ %44, %54 ], [ %51, %50 ], [ %44, %59 ]
  %176 = phi i64 [ %170, %161 ], [ %155, %152 ], [ %145, %143 ], [ 0, %54 ], [ 0, %50 ], [ 0, %59 ]
  %177 = ptrtoint ptr %175 to i64
  %178 = icmp eq ptr %175, %end
  br i1 %178, label %201, label %179

179:                                              ; preds = %172
  %180 = sub i64 %2, %177
  %181 = getelementptr i8, ptr %175, i64 %180
  br label %182

182:                                              ; preds = %191, %179
  %183 = phi i64 [ %194, %191 ], [ %176, %179 ]
  %184 = phi ptr [ %195, %191 ], [ %175, %179 ]
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp slt i32 %189, %4
  br i1 %190, label %191, label %197

191:                                              ; preds = %182
  %192 = mul i64 %183, %3
  %193 = zext i8 %188 to i64
  %194 = add i64 %192, %193
  %195 = getelementptr inbounds nuw i8, ptr %184, i64 1
  %196 = icmp eq ptr %195, %end
  br i1 %196, label %197, label %182

197:                                              ; preds = %191, %182
  %198 = phi ptr [ %181, %191 ], [ %184, %182 ]
  %199 = phi i64 [ %194, %191 ], [ %183, %182 ]
  %200 = ptrtoint ptr %198 to i64
  br label %201

201:                                              ; preds = %197, %172
  %202 = phi i64 [ %200, %197 ], [ %177, %172 ]
  %203 = phi ptr [ %198, %197 ], [ %175, %172 ]
  %204 = phi i64 [ %199, %197 ], [ %176, %172 ]
  %205 = ptrtoint ptr %173 to i64
  %206 = sub i64 %202, %205
  %207 = icmp eq ptr %203, %173
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  br i1 %174, label %209, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

209:                                              ; preds = %208
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

210:                                              ; preds = %201
  %211 = add i64 %o2b, -8589934592
  %212 = ashr i64 %211, 32
  %213 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE13maxdigits_u64E, i64 0, i64 %212
  %214 = load i64, ptr %213, align 8
  %215 = icmp ugt i64 %206, %214
  br i1 %215, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %216

216:                                              ; preds = %210
  %217 = icmp eq i64 %206, %214
  br i1 %217, label %218, label %235

218:                                              ; preds = %216
  %219 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE12min_safe_u64E, i64 0, i64 %212
  %220 = load i64, ptr %219, align 8
  %221 = udiv i64 -1, %220
  %222 = load i8, ptr %173, align 1
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1
  %226 = zext i8 %225 to i64
  %227 = icmp ult i64 %221, %226
  br i1 %227, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %228

228:                                              ; preds = %218
  %229 = icmp eq i64 %221, %226
  %230 = mul i64 %221, %220
  %231 = icmp ult i64 %204, %230
  %232 = select i1 %229, i1 %231, i1 false
  %233 = icmp ugt i64 %204, 65535
  %234 = select i1 %232, i1 true, i1 %233
  br i1 %234, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %237

235:                                              ; preds = %216
  %236 = icmp ugt i64 %204, 65535
  br i1 %236, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %237

237:                                              ; preds = %235, %228
  %238 = trunc i64 %204 to i16
  store i16 %238, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %22, %29, %57, %58, %94, %96, %102, %107, %109, %112, %208, %209, %210, %218, %228, %235, %237
  %239 = phi ptr [ %24, %22 ], [ %24, %29 ], [ %203, %209 ], [ %24, %208 ], [ %203, %235 ], [ %203, %210 ], [ %203, %237 ], [ %24, %57 ], [ %51, %58 ], [ %114, %112 ], [ %111, %109 ], [ %108, %107 ], [ %203, %218 ], [ %203, %228 ], [ %89, %94 ], [ %97, %96 ], [ %42, %102 ]
  %240 = phi i32 [ 22, %22 ], [ 22, %29 ], [ 0, %209 ], [ 22, %208 ], [ 34, %235 ], [ 34, %210 ], [ 0, %237 ], [ 22, %57 ], [ 0, %58 ], [ 0, %112 ], [ 0, %109 ], [ 34, %107 ], [ 34, %218 ], [ 34, %228 ], [ 34, %94 ], [ 34, %102 ], [ 34, %96 ]
  %241 = insertvalue { ptr, i32 } poison, ptr %239, 0
  %242 = insertvalue { ptr, i32 } %241, i32 %240, 1
  %vf = load i16, ptr %v, align 2
  %r0 = extractvalue { ptr, i32 } %242, 0
  %r1 = extractvalue { ptr, i32 } %242, 1
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
