; ModuleID = '/srv/home/hantaolou/code/veriop/heldout/c-alive2/final-verification/modules/v2_s5_z4_L16_a_src.ll.pre'
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

define { ptr, i32, i144 } @ver(i64 noundef %len, i64 noundef %vo, i64 noundef %fmt, i64 noundef %o2, i8 noundef %pl, i8 noundef %pr, i8 noundef %c4, i8 noundef %c5, i8 noundef %c6, i8 noundef %c7, i8 noundef %c8, i8 noundef %c9, i8 noundef %c10, i8 noundef %c11, i8 noundef %c12, i8 noundef %c13, i8 noundef %c14, i8 noundef %c15) personality ptr @__gxx_personality_v0 {
  %mem = alloca [18 x i8], align 1
  %buf = getelementptr inbounds i8, ptr %mem, i64 1
  store i8 %pl, ptr %mem, align 1
  %pre = getelementptr inbounds i8, ptr %mem, i64 17
  store i8 %pr, ptr %pre, align 1
  %vok = icmp ule i64 %vo, 16
  call void @llvm.assume(i1 %vok)
  %v = getelementptr inbounds i8, ptr %mem, i64 %vo
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
  %s4 = sub i8 %c4, 48
  %d4 = icmp ult i8 %s4, 10
  call void @llvm.assume(i1 %d4)
  %s5 = sub i8 %c5, 48
  %d5 = icmp ult i8 %s5, 10
  %nd5 = xor i1 %d5, true
  call void @llvm.assume(i1 %nd5)
  %nz = icmp ne i8 %c4, 48
  call void @llvm.assume(i1 %nz)
  %lenok = icmp sge i64 %len, 16
  call void @llvm.assume(i1 %lenok)
  %end = getelementptr i8, ptr %buf, i64 %len
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
  %7 = icmp eq ptr %buf, %end
  %8 = or i1 %6, %7
  br i1 %8, label %24, label %9

9:                                                ; preds = %0
  %10 = sub i64 %2, %1
  br label %11

11:                                               ; preds = %18, %9
  %12 = phi ptr [ %19, %18 ], [ %buf, %9 ]
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float9space_lutIvE5valueE, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !range !5, !noundef !6
  %17 = trunc nuw i8 %16 to i1
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 1
  %20 = icmp eq ptr %19, %end
  br i1 %20, label %21, label %11, !llvm.loop !7

21:                                               ; preds = %18, %11
  %22 = phi ptr [ %12, %11 ], [ %end, %18 ]
  %23 = ptrtoint ptr %22 to i64
  br label %24

24:                                               ; preds = %21, %0
  %25 = phi i64 [ %23, %21 ], [ %1, %0 ]
  %26 = phi ptr [ %22, %21 ], [ %buf, %0 ]
  %27 = icmp eq ptr %26, %end
  %28 = add i32 %4, -37
  %29 = icmp ult i32 %28, -35
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %31

31:                                               ; preds = %24
  %32 = load i8, ptr %26, align 1
  %33 = icmp eq i8 %32, 45
  br i1 %33, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %34

34:                                               ; preds = %31
  %35 = and i64 %fmt, 128
  %36 = icmp ne i64 %35, 0
  %37 = icmp eq i8 %32, 43
  %38 = and i1 %36, %37
  %39 = zext i1 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr %26, i64 %39
  %41 = icmp eq ptr %40, %end
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = sub i64 %2, %25
  %44 = getelementptr i8, ptr %26, i64 %43
  br label %45

45:                                               ; preds = %49, %42
  %46 = phi ptr [ %50, %49 ], [ %40, %42 ]
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 48
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = getelementptr inbounds nuw i8, ptr %46, i64 1
  %51 = icmp eq ptr %50, %end
  br i1 %51, label %52, label %45, !llvm.loop !9

52:                                               ; preds = %49, %34
  %53 = phi ptr [ %40, %34 ], [ %44, %49 ]
  %54 = icmp ugt ptr %53, %40
  %55 = icmp eq i64 %3, 10
  br i1 %55, label %59, label %174

56:                                               ; preds = %45
  %57 = icmp ugt ptr %46, %40
  %58 = icmp eq i64 %3, 10
  br i1 %58, label %61, label %174

59:                                               ; preds = %52
  br i1 %54, label %60, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

60:                                               ; preds = %59
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

61:                                               ; preds = %56
  %62 = ptrtoint ptr %46 to i64
  %63 = sub i64 %2, %62
  %64 = icmp ugt i64 %63, 3
  br i1 %64, label %65, label %174

65:                                               ; preds = %61
  %66 = load i32, ptr %46, align 1
  %67 = add i32 %66, 1179010630
  %68 = add i32 %66, -808464432
  %69 = or i32 %67, %68
  %70 = and i32 %69, -2139062144
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %65
  %73 = mul i32 %68, 10
  %74 = lshr i32 %68, 8
  %75 = add i32 %73, %74
  %76 = and i32 %75, 16711935
  %77 = mul i32 %76, 6553601
  %78 = lshr i32 %77, 16
  %79 = icmp eq i64 %63, 4
  br i1 %79, label %114, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %82 = load i8, ptr %81, align 1
  %83 = sext i8 %82 to i32
  %84 = add nsw i32 %83, -48
  %85 = icmp ult i32 %84, 10
  br i1 %85, label %86, label %114

86:                                               ; preds = %80
  %87 = mul nuw nsw i32 %78, 10
  %88 = add nuw nsw i32 %84, %87
  %89 = icmp ugt i64 %63, 5
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = getelementptr inbounds nuw i8, ptr %46, i64 5
  %92 = load i8, ptr %91, align 1
  %93 = sext i8 %92 to i32
  %94 = add nsw i32 %93, -48
  %95 = icmp ult i32 %94, 10
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = icmp eq ptr %91, %end
  br i1 %97, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %98

98:                                               ; preds = %104, %96
  %99 = phi ptr [ %105, %104 ], [ %91, %96 ]
  %100 = load i8, ptr %99, align 1
  %101 = sext i8 %100 to i32
  %102 = add nsw i32 %101, -48
  %103 = icmp ult i32 %102, 10
  br i1 %103, label %104, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

104:                                              ; preds = %98
  %105 = getelementptr inbounds nuw i8, ptr %99, i64 1
  %106 = icmp eq ptr %105, %end
  br i1 %106, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %98, !llvm.loop !10

107:                                              ; preds = %90, %86
  %108 = icmp samesign ugt i32 %88, 65535
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = getelementptr inbounds nuw i8, ptr %46, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

111:                                              ; preds = %107
  %112 = trunc nuw i32 %88 to i16
  store i16 %112, ptr %v, align 2
  %113 = getelementptr inbounds nuw i8, ptr %46, i64 5
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

114:                                              ; preds = %80, %72
  %115 = trunc nuw i32 %78 to i16
  store i16 %115, ptr %v, align 2
  %116 = getelementptr inbounds nuw i8, ptr %46, i64 4
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

117:                                              ; preds = %65
  %118 = icmp sgt i64 %63, 7
  br i1 %118, label %119, label %145

119:                                              ; preds = %128, %117
  %120 = phi i64 [ %140, %128 ], [ 0, %117 ]
  %121 = phi ptr [ %141, %128 ], [ %46, %117 ]
  %122 = load i64, ptr %121, align 1
  %123 = add i64 %122, 5063812098665367110
  %124 = add i64 %122, -3472328296227680304
  %125 = or i64 %123, %124
  %126 = and i64 %125, -9187201950435737472
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %119
  %129 = mul i64 %120, 100000000
  %130 = mul i64 %124, 10
  %131 = lshr i64 %124, 8
  %132 = add i64 %130, %131
  %133 = and i64 %132, 1095216660735
  %134 = mul i64 %133, 4294967296000100
  %135 = lshr i64 %132, 16
  %136 = and i64 %135, 1095216660735
  %137 = mul i64 %136, 42949672960001
  %138 = add i64 %137, %134
  %139 = lshr i64 %138, 32
  %140 = add i64 %139, %129
  %141 = getelementptr inbounds nuw i8, ptr %121, i64 8
  %142 = ptrtoint ptr %141 to i64
  %143 = sub i64 %2, %142
  %144 = icmp sgt i64 %143, 7
  br i1 %144, label %119, label %145, !llvm.loop !11

145:                                              ; preds = %128, %117
  %146 = phi ptr [ %46, %117 ], [ %141, %128 ]
  %147 = phi i64 [ 0, %117 ], [ %140, %128 ]
  %148 = phi i64 [ %63, %117 ], [ %143, %128 ]
  %149 = icmp sgt i64 %148, 3
  br i1 %149, label %150, label %174

150:                                              ; preds = %145
  %151 = load i32, ptr %146, align 1
  br label %154

152:                                              ; preds = %119
  %153 = trunc i64 %122 to i32
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = phi ptr [ %146, %150 ], [ %121, %152 ]
  %157 = phi i64 [ %147, %150 ], [ %120, %152 ]
  %158 = add i32 %155, 1179010630
  %159 = add i32 %155, -808464432
  %160 = or i32 %158, %159
  %161 = and i32 %160, -2139062144
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %154
  %164 = mul i64 %157, 10000
  %165 = mul i32 %159, 10
  %166 = lshr i32 %159, 8
  %167 = add i32 %165, %166
  %168 = and i32 %167, 16711935
  %169 = mul i32 %168, 6553601
  %170 = lshr i32 %169, 16
  %171 = zext nneg i32 %170 to i64
  %172 = add i64 %164, %171
  %173 = getelementptr inbounds nuw i8, ptr %156, i64 4
  br label %174

174:                                              ; preds = %163, %154, %145, %61, %56, %52
  %175 = phi ptr [ %46, %163 ], [ %46, %154 ], [ %46, %145 ], [ %46, %56 ], [ %53, %52 ], [ %46, %61 ]
  %176 = phi i1 [ %57, %163 ], [ %57, %154 ], [ %57, %145 ], [ %57, %56 ], [ %54, %52 ], [ %57, %61 ]
  %177 = phi ptr [ %173, %163 ], [ %156, %154 ], [ %146, %145 ], [ %46, %56 ], [ %53, %52 ], [ %46, %61 ]
  %178 = phi i64 [ %172, %163 ], [ %157, %154 ], [ %147, %145 ], [ 0, %56 ], [ 0, %52 ], [ 0, %61 ]
  %179 = ptrtoint ptr %177 to i64
  %180 = icmp eq ptr %177, %end
  br i1 %180, label %203, label %181

181:                                              ; preds = %174
  %182 = sub i64 %2, %179
  %183 = getelementptr i8, ptr %177, i64 %182
  br label %184

184:                                              ; preds = %193, %181
  %185 = phi i64 [ %196, %193 ], [ %178, %181 ]
  %186 = phi ptr [ %197, %193 ], [ %177, %181 ]
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp slt i32 %191, %4
  br i1 %192, label %193, label %199

193:                                              ; preds = %184
  %194 = mul i64 %185, %3
  %195 = zext i8 %190 to i64
  %196 = add i64 %194, %195
  %197 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %198 = icmp eq ptr %197, %end
  br i1 %198, label %199, label %184

199:                                              ; preds = %193, %184
  %200 = phi ptr [ %183, %193 ], [ %186, %184 ]
  %201 = phi i64 [ %196, %193 ], [ %185, %184 ]
  %202 = ptrtoint ptr %200 to i64
  br label %203

203:                                              ; preds = %199, %174
  %204 = phi i64 [ %202, %199 ], [ %179, %174 ]
  %205 = phi ptr [ %200, %199 ], [ %177, %174 ]
  %206 = phi i64 [ %201, %199 ], [ %178, %174 ]
  %207 = ptrtoint ptr %175 to i64
  %208 = sub i64 %204, %207
  %209 = icmp eq ptr %205, %175
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  br i1 %176, label %211, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

211:                                              ; preds = %210
  store i16 0, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

212:                                              ; preds = %203
  %213 = add i64 %o2b, -8589934592
  %214 = ashr i64 %213, 32
  %215 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE13maxdigits_u64E, i64 0, i64 %214
  %216 = load i64, ptr %215, align 8
  %217 = icmp ugt i64 %208, %216
  br i1 %217, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %218

218:                                              ; preds = %212
  %219 = icmp eq i64 %208, %216
  br i1 %219, label %220, label %237

220:                                              ; preds = %218
  %221 = getelementptr inbounds [35 x i64], ptr @_ZN10fast_float8int_lutsIvE12min_safe_u64E, i64 0, i64 %214
  %222 = load i64, ptr %221, align 8
  %223 = udiv i64 -1, %222
  %224 = load i8, ptr %175, align 1
  %225 = zext i8 %224 to i64
  %226 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i64
  %229 = icmp ult i64 %223, %228
  br i1 %229, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %230

230:                                              ; preds = %220
  %231 = icmp eq i64 %223, %228
  %232 = mul i64 %223, %222
  %233 = icmp ult i64 %206, %232
  %234 = select i1 %231, i1 %233, i1 false
  %235 = icmp ugt i64 %206, 65535
  %236 = select i1 %234, i1 true, i1 %235
  br i1 %236, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %239

237:                                              ; preds = %218
  %238 = icmp ugt i64 %206, 65535
  br i1 %238, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %239

239:                                              ; preds = %237, %230
  %240 = trunc i64 %206 to i16
  store i16 %240, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %24, %31, %59, %60, %96, %98, %104, %109, %111, %114, %210, %211, %212, %220, %230, %237, %239
  %241 = phi ptr [ %26, %24 ], [ %26, %31 ], [ %205, %211 ], [ %26, %210 ], [ %205, %237 ], [ %205, %212 ], [ %205, %239 ], [ %26, %59 ], [ %53, %60 ], [ %116, %114 ], [ %113, %111 ], [ %110, %109 ], [ %205, %220 ], [ %205, %230 ], [ %91, %96 ], [ %99, %98 ], [ %44, %104 ]
  %242 = phi i32 [ 22, %24 ], [ 22, %31 ], [ 0, %211 ], [ 22, %210 ], [ 34, %237 ], [ 34, %212 ], [ 0, %239 ], [ 22, %59 ], [ 0, %60 ], [ 0, %114 ], [ 0, %111 ], [ 34, %109 ], [ 34, %220 ], [ 34, %230 ], [ 34, %96 ], [ 34, %104 ], [ 34, %98 ]
  %243 = insertvalue { ptr, i32 } poison, ptr %241, 0
  %244 = insertvalue { ptr, i32 } %243, i32 %242, 1
  %fin = load i144, ptr %mem, align 1
  %r0 = extractvalue { ptr, i32 } %244, 0
  %r1 = extractvalue { ptr, i32 } %244, 1
  %x0 = insertvalue { ptr, i32, i144 } poison, ptr %r0, 0
  %x1 = insertvalue { ptr, i32, i144 } %x0, i32 %r1, 1
  %x2 = insertvalue { ptr, i32, i144 } %x1, i144 %fin, 2
  ret { ptr, i32, i144 } %x2
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
