; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local i64 @target_seed_200_50(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 576, i1 false)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %4, align 64
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %9, align 16
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %11, align 32
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %13, align 16
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 552
  store i64 0, ptr %15, align 8
  br label %48

16:                                               ; preds = %2
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 552
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %18, i32 0, i32 3, i32 1)
  %19 = sub i64 0, %1
  %20 = insertelement <4 x i64> poison, i64 %1, i64 0
  %21 = insertelement <4 x i64> %20, i64 %19, i64 1
  %22 = insertelement <4 x i64> %21, i64 %1, i64 2
  %23 = insertelement <4 x i64> %22, i64 %19, i64 3
  %24 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %18) #12
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 31
  %27 = icmp eq i64 %26, 0
  call void @llvm.assume(i1 %27)
  %28 = add <4 x i64> %23, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %28, ptr %24, align 32
  %29 = add <4 x i64> %23, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 32
  store <4 x i64> %29, ptr %30, align 32
  %31 = add <4 x i64> %23, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %32 = getelementptr inbounds nuw i8, ptr %24, i64 64
  store <4 x i64> %31, ptr %32, align 32
  %33 = add <4 x i64> %23, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %34 = getelementptr inbounds nuw i8, ptr %24, i64 96
  store <4 x i64> %33, ptr %34, align 32
  %35 = add <4 x i64> %23, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %36 = getelementptr inbounds nuw i8, ptr %24, i64 128
  store <4 x i64> %35, ptr %36, align 32
  %37 = add <4 x i64> %23, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %38 = getelementptr inbounds nuw i8, ptr %24, i64 160
  store <4 x i64> %37, ptr %38, align 32
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %4, align 64
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %41, align 16
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %43, align 32
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %45, align 16
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %46, align 8
  store i64 %1, ptr %17, align 8
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 516
  store i32 1, ptr %47, align 4
  br label %48

48:                                               ; preds = %6, %16
  %49 = phi ptr [ null, %16 ], [ @XXH3_kSecret, %6 ]
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 568
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 544
  store i64 128, ptr %51, align 32
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i64 16, ptr %52, align 8
  call fastcc void @XXH3_update_regular(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 200)
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 200
  call fastcc void @XXH3_update_regular(ptr noundef nonnull %4, ptr noundef nonnull %53, i64 noundef 50)
  %54 = load ptr, ptr %50, align 8
  %55 = icmp eq ptr %54, null
  %56 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %57 = select i1 %55, ptr %56, ptr %54
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 528
  %59 = load i64, ptr %58, align 16
  %60 = icmp ugt i64 %59, 240
  br i1 %60, label %61, label %310

61:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %62 = load <4 x i64>, ptr %4, align 64
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %64 = load <4 x i64>, ptr %63, align 32
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 512
  %66 = load i32, ptr %65, align 64
  %67 = icmp ugt i32 %66, 63
  br i1 %67, label %68, label %192

68:                                               ; preds = %61
  %69 = add i32 %66, -1
  %70 = lshr i32 %69, 6
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %73 = load i64, ptr %72, align 8
  %74 = load i64, ptr %52, align 8
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %76 = shl i64 %73, 3
  %77 = getelementptr inbounds nuw i8, ptr %57, i64 %76
  %78 = sub i64 %74, %73
  %79 = icmp ugt i64 %78, %71
  br i1 %79, label %148, label %80

80:                                               ; preds = %68
  %81 = load i64, ptr %51, align 32
  %82 = getelementptr inbounds nuw i8, ptr %57, i64 %81
  %83 = load <4 x i64>, ptr %82, align 1, !noalias !6
  %84 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %85 = load <4 x i64>, ptr %84, align 1, !noalias !6
  br label %86

86:                                               ; preds = %125, %80
  %87 = phi <4 x i64> [ %64, %80 ], [ %143, %125 ]
  %88 = phi <4 x i64> [ %62, %80 ], [ %135, %125 ]
  %89 = phi i64 [ %71, %80 ], [ %146, %125 ]
  %90 = phi ptr [ %75, %80 ], [ %145, %125 ]
  %91 = phi ptr [ %77, %80 ], [ %57, %125 ]
  %92 = phi i64 [ %78, %80 ], [ %74, %125 ]
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %86, %94
  %95 = phi <4 x i64> [ %122, %94 ], [ %87, %86 ]
  %96 = phi <4 x i64> [ %111, %94 ], [ %88, %86 ]
  %97 = phi i64 [ %123, %94 ], [ 0, %86 ]
  %98 = shl i64 %97, 6
  %99 = getelementptr inbounds nuw i8, ptr %90, i64 %98
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %100, i32 0, i32 3, i32 1), !noalias !6
  %101 = shl i64 %97, 3
  %102 = getelementptr inbounds nuw i8, ptr %91, i64 %101
  %103 = load <4 x i64>, ptr %99, align 1, !noalias !6
  %104 = load <4 x i64>, ptr %102, align 1, !noalias !6
  %105 = xor <4 x i64> %104, %103
  %106 = lshr <4 x i64> %105, splat (i64 32)
  %107 = and <4 x i64> %105, splat (i64 4294967295)
  %108 = mul nuw <4 x i64> %107, %106
  %109 = shufflevector <4 x i64> %103, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %110 = add <4 x i64> %96, %109
  %111 = add <4 x i64> %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %113 = load <4 x i64>, ptr %112, align 1, !noalias !6
  %114 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %115 = load <4 x i64>, ptr %114, align 1, !noalias !6
  %116 = xor <4 x i64> %115, %113
  %117 = lshr <4 x i64> %116, splat (i64 32)
  %118 = and <4 x i64> %116, splat (i64 4294967295)
  %119 = mul nuw <4 x i64> %118, %117
  %120 = shufflevector <4 x i64> %113, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %121 = add <4 x i64> %95, %120
  %122 = add <4 x i64> %121, %119
  %123 = add nuw i64 %97, 1
  %124 = icmp eq i64 %123, %92
  br i1 %124, label %125, label %94

125:                                              ; preds = %94, %86
  %126 = phi <4 x i64> [ %87, %86 ], [ %122, %94 ]
  %127 = phi <4 x i64> [ %88, %86 ], [ %111, %94 ]
  %128 = lshr <4 x i64> %127, splat (i64 47)
  %129 = xor <4 x i64> %83, %128
  %130 = xor <4 x i64> %129, %127
  %131 = lshr <4 x i64> %130, splat (i64 32)
  %132 = and <4 x i64> %130, splat (i64 4294967295)
  %133 = mul nuw <4 x i64> %132, splat (i64 2654435761)
  %134 = mul <4 x i64> %131, splat (i64 -7046029290881679360)
  %135 = add <4 x i64> %133, %134
  %136 = lshr <4 x i64> %126, splat (i64 47)
  %137 = xor <4 x i64> %85, %136
  %138 = xor <4 x i64> %137, %126
  %139 = lshr <4 x i64> %138, splat (i64 32)
  %140 = and <4 x i64> %138, splat (i64 4294967295)
  %141 = mul nuw <4 x i64> %140, splat (i64 2654435761)
  %142 = mul <4 x i64> %139, splat (i64 -7046029290881679360)
  %143 = add <4 x i64> %141, %142
  %144 = shl i64 %92, 6
  %145 = getelementptr inbounds nuw i8, ptr %90, i64 %144
  %146 = sub i64 %89, %92
  %147 = icmp ult i64 %146, %74
  br i1 %147, label %148, label %86

148:                                              ; preds = %125, %68
  %149 = phi <4 x i64> [ %64, %68 ], [ %143, %125 ]
  %150 = phi <4 x i64> [ %62, %68 ], [ %135, %125 ]
  %151 = phi i64 [ %71, %68 ], [ %146, %125 ]
  %152 = phi ptr [ %75, %68 ], [ %145, %125 ]
  %153 = phi ptr [ %77, %68 ], [ %57, %125 ]
  %154 = icmp eq i64 %151, 0
  br i1 %154, label %186, label %155

155:                                              ; preds = %148, %155
  %156 = phi <4 x i64> [ %183, %155 ], [ %149, %148 ]
  %157 = phi <4 x i64> [ %172, %155 ], [ %150, %148 ]
  %158 = phi i64 [ %184, %155 ], [ 0, %148 ]
  %159 = shl i64 %158, 6
  %160 = getelementptr inbounds nuw i8, ptr %152, i64 %159
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %161, i32 0, i32 3, i32 1), !noalias !6
  %162 = shl i64 %158, 3
  %163 = getelementptr inbounds nuw i8, ptr %153, i64 %162
  %164 = load <4 x i64>, ptr %160, align 1, !noalias !6
  %165 = load <4 x i64>, ptr %163, align 1, !noalias !6
  %166 = xor <4 x i64> %165, %164
  %167 = lshr <4 x i64> %166, splat (i64 32)
  %168 = and <4 x i64> %166, splat (i64 4294967295)
  %169 = mul nuw <4 x i64> %168, %167
  %170 = shufflevector <4 x i64> %164, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %171 = add <4 x i64> %157, %170
  %172 = add <4 x i64> %171, %169
  %173 = getelementptr inbounds nuw i8, ptr %160, i64 32
  %174 = load <4 x i64>, ptr %173, align 1, !noalias !6
  %175 = getelementptr inbounds nuw i8, ptr %163, i64 32
  %176 = load <4 x i64>, ptr %175, align 1, !noalias !6
  %177 = xor <4 x i64> %176, %174
  %178 = lshr <4 x i64> %177, splat (i64 32)
  %179 = and <4 x i64> %177, splat (i64 4294967295)
  %180 = mul nuw <4 x i64> %179, %178
  %181 = shufflevector <4 x i64> %174, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %182 = add <4 x i64> %156, %181
  %183 = add <4 x i64> %182, %180
  %184 = add nuw i64 %158, 1
  %185 = icmp eq i64 %184, %151
  br i1 %185, label %186, label %155

186:                                              ; preds = %155, %148
  %187 = phi <4 x i64> [ %149, %148 ], [ %183, %155 ]
  %188 = phi <4 x i64> [ %150, %148 ], [ %172, %155 ]
  %189 = zext i32 %66 to i64
  %190 = getelementptr inbounds nuw i8, ptr %75, i64 %189
  %191 = getelementptr inbounds i8, ptr %190, i64 -64
  br label %201

192:                                              ; preds = %61
  %193 = sub nuw nsw i32 64, %66
  %194 = zext nneg i32 %193 to i64
  %195 = icmp ne i32 %66, 0
  call void @llvm.assume(i1 %195)
  %196 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %197 = sub nsw i64 0, %194
  %198 = getelementptr inbounds i8, ptr %65, i64 %197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull readonly align 1 %198, i64 %194, i1 false)
  %199 = getelementptr inbounds nuw i8, ptr %3, i64 %194
  %200 = zext nneg i32 %66 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %199, ptr nonnull readonly align 64 %196, i64 %200, i1 false)
  br label %201

201:                                              ; preds = %192, %186
  %202 = phi <4 x i64> [ %187, %186 ], [ %64, %192 ]
  %203 = phi <4 x i64> [ %188, %186 ], [ %62, %192 ]
  %204 = phi ptr [ %191, %186 ], [ %3, %192 ]
  %205 = load i64, ptr %51, align 32
  %206 = getelementptr inbounds nuw i8, ptr %57, i64 %205
  %207 = getelementptr inbounds i8, ptr %206, i64 -7
  %208 = load <4 x i64>, ptr %204, align 1
  %209 = load <4 x i64>, ptr %207, align 1
  %210 = xor <4 x i64> %209, %208
  %211 = lshr <4 x i64> %210, splat (i64 32)
  %212 = and <4 x i64> %210, splat (i64 4294967295)
  %213 = mul nuw <4 x i64> %212, %211
  %214 = shufflevector <4 x i64> %208, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %215 = add <4 x i64> %203, %214
  %216 = add <4 x i64> %215, %213
  %217 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %218 = load <4 x i64>, ptr %217, align 1
  %219 = getelementptr inbounds nuw i8, ptr %206, i64 25
  %220 = load <4 x i64>, ptr %219, align 1
  %221 = xor <4 x i64> %220, %218
  %222 = lshr <4 x i64> %221, splat (i64 32)
  %223 = and <4 x i64> %221, splat (i64 4294967295)
  %224 = mul nuw <4 x i64> %223, %222
  %225 = shufflevector <4 x i64> %218, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %226 = add <4 x i64> %202, %225
  %227 = add <4 x i64> %226, %224
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  %228 = getelementptr inbounds nuw i8, ptr %4, i64 75
  %229 = getelementptr inbounds nuw i8, ptr %54, i64 11
  %230 = select i1 %55, ptr %228, ptr %229
  %231 = mul i64 %59, -7046029288634856825
  %232 = extractelement <4 x i64> %216, i64 0
  %233 = load i64, ptr %230, align 1, !alias.scope !12, !noalias !17
  %234 = xor i64 %232, %233
  %235 = extractelement <4 x i64> %216, i64 1
  %236 = getelementptr inbounds nuw i8, ptr %4, i64 83
  %237 = getelementptr inbounds nuw i8, ptr %54, i64 19
  %238 = select i1 %55, ptr %236, ptr %237
  %239 = load i64, ptr %238, align 1, !alias.scope !12, !noalias !17
  %240 = xor i64 %239, %235
  %241 = zext i64 %234 to i128
  %242 = zext i64 %240 to i128
  %243 = mul nuw i128 %242, %241
  %244 = lshr i128 %243, 64
  %245 = xor i128 %244, %243
  %246 = trunc i128 %245 to i64
  %247 = add i64 %231, %246
  %248 = getelementptr inbounds nuw i8, ptr %4, i64 91
  %249 = getelementptr inbounds nuw i8, ptr %54, i64 27
  %250 = select i1 %55, ptr %248, ptr %249
  %251 = extractelement <4 x i64> %216, i64 2
  %252 = load i64, ptr %250, align 1, !alias.scope !12, !noalias !17
  %253 = xor i64 %252, %251
  %254 = extractelement <4 x i64> %216, i64 3
  %255 = getelementptr inbounds nuw i8, ptr %4, i64 99
  %256 = getelementptr inbounds nuw i8, ptr %54, i64 35
  %257 = select i1 %55, ptr %255, ptr %256
  %258 = load i64, ptr %257, align 1, !alias.scope !12, !noalias !17
  %259 = xor i64 %258, %254
  %260 = zext i64 %253 to i128
  %261 = zext i64 %259 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %247, %265
  %267 = getelementptr inbounds nuw i8, ptr %4, i64 107
  %268 = getelementptr inbounds nuw i8, ptr %54, i64 43
  %269 = select i1 %55, ptr %267, ptr %268
  %270 = extractelement <4 x i64> %227, i64 0
  %271 = load i64, ptr %269, align 1, !alias.scope !12, !noalias !17
  %272 = xor i64 %271, %270
  %273 = extractelement <4 x i64> %227, i64 1
  %274 = getelementptr inbounds nuw i8, ptr %4, i64 115
  %275 = getelementptr inbounds nuw i8, ptr %54, i64 51
  %276 = select i1 %55, ptr %274, ptr %275
  %277 = load i64, ptr %276, align 1, !alias.scope !12, !noalias !17
  %278 = xor i64 %277, %273
  %279 = zext i64 %272 to i128
  %280 = zext i64 %278 to i128
  %281 = mul nuw i128 %280, %279
  %282 = lshr i128 %281, 64
  %283 = xor i128 %282, %281
  %284 = trunc i128 %283 to i64
  %285 = add i64 %266, %284
  %286 = getelementptr inbounds nuw i8, ptr %4, i64 123
  %287 = getelementptr inbounds nuw i8, ptr %54, i64 59
  %288 = select i1 %55, ptr %286, ptr %287
  %289 = extractelement <4 x i64> %227, i64 2
  %290 = load i64, ptr %288, align 1, !alias.scope !12, !noalias !17
  %291 = xor i64 %290, %289
  %292 = extractelement <4 x i64> %227, i64 3
  %293 = getelementptr inbounds nuw i8, ptr %4, i64 131
  %294 = getelementptr inbounds nuw i8, ptr %54, i64 67
  %295 = select i1 %55, ptr %293, ptr %294
  %296 = load i64, ptr %295, align 1, !alias.scope !12, !noalias !17
  %297 = xor i64 %296, %292
  %298 = zext i64 %291 to i128
  %299 = zext i64 %297 to i128
  %300 = mul nuw i128 %299, %298
  %301 = lshr i128 %300, 64
  %302 = xor i128 %301, %300
  %303 = trunc i128 %302 to i64
  %304 = add i64 %285, %303
  %305 = lshr i64 %304, 37
  %306 = xor i64 %305, %304
  %307 = mul i64 %306, 1609587791953885689
  %308 = lshr i64 %307, 32
  %309 = xor i64 %308, %307
  br label %876

310:                                              ; preds = %48
  %311 = getelementptr inbounds nuw i8, ptr %4, i64 516
  %312 = load i32, ptr %311, align 4
  %313 = icmp eq i32 %312, 0
  %314 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %315 = icmp samesign ult i64 %59, 17
  br i1 %313, label %559, label %316

316:                                              ; preds = %310
  %317 = getelementptr inbounds nuw i8, ptr %4, i64 552
  %318 = load i64, ptr %317, align 8
  br i1 %315, label %319, label %413

319:                                              ; preds = %316
  %320 = icmp samesign ugt i64 %59, 8
  br i1 %320, label %321, label %345, !prof !20

321:                                              ; preds = %319
  %322 = add i64 %318, 7458650908927343033
  %323 = sub i64 -5812251307325107654, %318
  %324 = load i64, ptr %314, align 64
  %325 = xor i64 %324, %322
  %326 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %327 = getelementptr inbounds i8, ptr %326, i64 -8
  %328 = load i64, ptr %327, align 1
  %329 = xor i64 %328, %323
  %330 = call noundef i64 @llvm.bswap.i64(i64 %325)
  %331 = add i64 %330, %59
  %332 = add i64 %331, %329
  %333 = zext i64 %325 to i128
  %334 = zext i64 %329 to i128
  %335 = mul nuw i128 %334, %333
  %336 = lshr i128 %335, 64
  %337 = xor i128 %336, %335
  %338 = trunc i128 %337 to i64
  %339 = add i64 %332, %338
  %340 = lshr i64 %339, 37
  %341 = xor i64 %340, %339
  %342 = mul i64 %341, 1609587791953885689
  %343 = lshr i64 %342, 32
  %344 = xor i64 %343, %342
  br label %876

345:                                              ; preds = %319
  %346 = icmp samesign ugt i64 %59, 3
  br i1 %346, label %347, label %374, !prof !20

347:                                              ; preds = %345
  %348 = trunc i64 %318 to i32
  %349 = call noundef i32 @llvm.bswap.i32(i32 %348)
  %350 = zext i32 %349 to i64
  %351 = shl nuw i64 %350, 32
  %352 = xor i64 %351, %318
  %353 = load i32, ptr %314, align 64
  %354 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %355 = getelementptr inbounds i8, ptr %354, i64 -4
  %356 = load i32, ptr %355, align 1
  %357 = sub i64 -4090762196417718878, %352
  %358 = zext i32 %356 to i64
  %359 = zext i32 %353 to i64
  %360 = shl nuw i64 %359, 32
  %361 = or disjoint i64 %360, %358
  %362 = xor i64 %361, %357
  %363 = call i64 @llvm.fshl.i64(i64 %362, i64 %362, i64 49)
  %364 = call i64 @llvm.fshl.i64(i64 %362, i64 %362, i64 24)
  %365 = xor i64 %363, %364
  %366 = xor i64 %365, %362
  %367 = mul i64 %366, -6939452855193903323
  %368 = lshr i64 %367, 35
  %369 = add nuw nsw i64 %368, %59
  %370 = xor i64 %369, %367
  %371 = mul i64 %370, -6939452855193903323
  %372 = lshr i64 %371, 28
  %373 = xor i64 %372, %371
  br label %876

374:                                              ; preds = %345
  %375 = icmp eq i64 %59, 0
  br i1 %375, label %403, label %376

376:                                              ; preds = %374
  %377 = load i8, ptr %314, align 64
  %378 = lshr i64 %59, 1
  %379 = getelementptr inbounds nuw i8, ptr %314, i64 %378
  %380 = load i8, ptr %379, align 1
  %381 = getelementptr i8, ptr %314, i64 %59
  %382 = getelementptr i8, ptr %381, i64 -1
  %383 = load i8, ptr %382, align 1
  %384 = zext i8 %377 to i64
  %385 = shl nuw nsw i64 %384, 16
  %386 = zext i8 %380 to i64
  %387 = shl nuw nsw i64 %386, 24
  %388 = zext i8 %383 to i64
  %389 = shl nuw nsw i64 %59, 8
  %390 = or disjoint i64 %385, %389
  %391 = or disjoint i64 %390, %387
  %392 = or disjoint i64 %391, %388
  %393 = add i64 %318, 2267503259
  %394 = xor i64 %392, %393
  %395 = lshr i64 %394, 33
  %396 = xor i64 %395, %394
  %397 = mul i64 %396, -4417276706812531889
  %398 = lshr i64 %397, 29
  %399 = xor i64 %398, %397
  %400 = mul i64 %399, 1609587929392839161
  %401 = lshr i64 %400, 32
  %402 = xor i64 %401, %400
  br label %876

403:                                              ; preds = %374
  %404 = xor i64 %318, -8707998980786479652
  %405 = lshr i64 %404, 33
  %406 = xor i64 %405, %404
  %407 = mul i64 %406, -4417276706812531889
  %408 = lshr i64 %407, 29
  %409 = xor i64 %408, %407
  %410 = mul i64 %409, 1609587929392839161
  %411 = lshr i64 %410, 32
  %412 = xor i64 %411, %410
  br label %876

413:                                              ; preds = %316
  %414 = icmp samesign ult i64 %59, 129
  br i1 %414, label %415, label %557

415:                                              ; preds = %413
  %416 = mul i64 %59, -7046029288634856825
  %417 = icmp samesign ugt i64 %59, 32
  br i1 %417, label %418, label %520

418:                                              ; preds = %415
  %419 = icmp samesign ugt i64 %59, 64
  br i1 %419, label %420, label %487

420:                                              ; preds = %418
  %421 = icmp samesign ugt i64 %59, 96
  br i1 %421, label %422, label %454

422:                                              ; preds = %420
  %423 = getelementptr inbounds nuw i8, ptr %4, i64 304
  %424 = load i64, ptr %423, align 16
  %425 = getelementptr inbounds nuw i8, ptr %4, i64 312
  %426 = load i64, ptr %425, align 8
  %427 = add i64 %318, 4554437623014685352
  %428 = xor i64 %424, %427
  %429 = sub i64 2111919702937427193, %318
  %430 = xor i64 %426, %429
  %431 = zext i64 %428 to i128
  %432 = zext i64 %430 to i128
  %433 = mul nuw i128 %432, %431
  %434 = lshr i128 %433, 64
  %435 = xor i128 %434, %433
  %436 = trunc i128 %435 to i64
  %437 = add i64 %416, %436
  %438 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %439 = getelementptr inbounds i8, ptr %438, i64 -64
  %440 = load i64, ptr %439, align 1
  %441 = getelementptr inbounds i8, ptr %438, i64 -56
  %442 = load i64, ptr %441, align 1
  %443 = add i64 %318, 3556072174620004746
  %444 = xor i64 %440, %443
  %445 = sub i64 7238261902898274248, %318
  %446 = xor i64 %442, %445
  %447 = zext i64 %444 to i128
  %448 = zext i64 %446 to i128
  %449 = mul nuw i128 %448, %447
  %450 = lshr i128 %449, 64
  %451 = xor i128 %450, %449
  %452 = trunc i128 %451 to i64
  %453 = add i64 %437, %452
  br label %454

454:                                              ; preds = %422, %420
  %455 = phi i64 [ %453, %422 ], [ %416, %420 ]
  %456 = getelementptr inbounds nuw i8, ptr %4, i64 288
  %457 = load i64, ptr %456, align 32
  %458 = getelementptr inbounds nuw i8, ptr %4, i64 296
  %459 = load i64, ptr %458, align 8
  %460 = add i64 %318, -3818837453329782724
  %461 = xor i64 %457, %460
  %462 = sub i64 -6688317018830679928, %318
  %463 = xor i64 %459, %462
  %464 = zext i64 %461 to i128
  %465 = zext i64 %463 to i128
  %466 = mul nuw i128 %465, %464
  %467 = lshr i128 %466, 64
  %468 = xor i128 %467, %466
  %469 = trunc i128 %468 to i64
  %470 = add i64 %455, %469
  %471 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %472 = getelementptr inbounds i8, ptr %471, i64 -48
  %473 = load i64, ptr %472, align 1
  %474 = getelementptr inbounds i8, ptr %471, i64 -40
  %475 = load i64, ptr %474, align 1
  %476 = add i64 %318, 5690594596133299313
  %477 = xor i64 %473, %476
  %478 = sub i64 -2833645246901970632, %318
  %479 = xor i64 %475, %478
  %480 = zext i64 %477 to i128
  %481 = zext i64 %479 to i128
  %482 = mul nuw i128 %481, %480
  %483 = lshr i128 %482, 64
  %484 = xor i128 %483, %482
  %485 = trunc i128 %484 to i64
  %486 = add i64 %470, %485
  br label %487

487:                                              ; preds = %454, %418
  %488 = phi i64 [ %486, %454 ], [ %416, %418 ]
  %489 = getelementptr inbounds nuw i8, ptr %4, i64 272
  %490 = load i64, ptr %489, align 16
  %491 = getelementptr inbounds nuw i8, ptr %4, i64 280
  %492 = load i64, ptr %491, align 8
  %493 = add i64 %318, 8711581037947681227
  %494 = xor i64 %490, %493
  %495 = sub i64 2410270004345854594, %318
  %496 = xor i64 %492, %495
  %497 = zext i64 %494 to i128
  %498 = zext i64 %496 to i128
  %499 = mul nuw i128 %498, %497
  %500 = lshr i128 %499, 64
  %501 = xor i128 %500, %499
  %502 = trunc i128 %501 to i64
  %503 = add i64 %488, %502
  %504 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %505 = getelementptr inbounds i8, ptr %504, i64 -32
  %506 = load i64, ptr %505, align 1
  %507 = getelementptr inbounds i8, ptr %504, i64 -24
  %508 = load i64, ptr %507, align 1
  %509 = add i64 %318, -8204357891075471176
  %510 = xor i64 %506, %509
  %511 = sub i64 5487137525590930912, %318
  %512 = xor i64 %508, %511
  %513 = zext i64 %510 to i128
  %514 = zext i64 %512 to i128
  %515 = mul nuw i128 %514, %513
  %516 = lshr i128 %515, 64
  %517 = xor i128 %516, %515
  %518 = trunc i128 %517 to i64
  %519 = add i64 %503, %518
  br label %520

520:                                              ; preds = %487, %415
  %521 = phi i64 [ %519, %487 ], [ %416, %415 ]
  %522 = load i64, ptr %314, align 64
  %523 = getelementptr inbounds nuw i8, ptr %4, i64 264
  %524 = load i64, ptr %523, align 8
  %525 = add i64 %318, -4734510112055689544
  %526 = xor i64 %522, %525
  %527 = sub i64 2066345149520216444, %318
  %528 = xor i64 %524, %527
  %529 = zext i64 %526 to i128
  %530 = zext i64 %528 to i128
  %531 = mul nuw i128 %530, %529
  %532 = lshr i128 %531, 64
  %533 = xor i128 %532, %531
  %534 = trunc i128 %533 to i64
  %535 = add i64 %521, %534
  %536 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %537 = getelementptr inbounds i8, ptr %536, i64 -16
  %538 = load i64, ptr %537, align 1
  %539 = getelementptr inbounds i8, ptr %536, i64 -8
  %540 = load i64, ptr %539, align 1
  %541 = add i64 %318, -2623469361688619810
  %542 = xor i64 %538, %541
  %543 = sub i64 2262974939099578482, %318
  %544 = xor i64 %540, %543
  %545 = zext i64 %542 to i128
  %546 = zext i64 %544 to i128
  %547 = mul nuw i128 %546, %545
  %548 = lshr i128 %547, 64
  %549 = xor i128 %548, %547
  %550 = trunc i128 %549 to i64
  %551 = add i64 %535, %550
  %552 = lshr i64 %551, 37
  %553 = xor i64 %552, %551
  %554 = mul i64 %553, 1609587791953885689
  %555 = lshr i64 %554, 32
  %556 = xor i64 %555, %554
  br label %876

557:                                              ; preds = %413
  %558 = call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %314, i64 noundef range(i64 0, 241) %59, ptr noundef nonnull @XXH3_kSecret, i64 noundef %318) #13
  br label %876

559:                                              ; preds = %310
  br i1 %315, label %560, label %685

560:                                              ; preds = %559
  %561 = icmp samesign ugt i64 %59, 8
  br i1 %561, label %562, label %602, !prof !20

562:                                              ; preds = %560
  %563 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %564 = getelementptr inbounds nuw i8, ptr %54, i64 24
  %565 = select i1 %55, ptr %563, ptr %564
  %566 = load i64, ptr %565, align 1
  %567 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %568 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %569 = select i1 %55, ptr %567, ptr %568
  %570 = load i64, ptr %569, align 1
  %571 = xor i64 %570, %566
  %572 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %573 = getelementptr inbounds nuw i8, ptr %54, i64 40
  %574 = select i1 %55, ptr %572, ptr %573
  %575 = load i64, ptr %574, align 1
  %576 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %577 = getelementptr inbounds nuw i8, ptr %54, i64 48
  %578 = select i1 %55, ptr %576, ptr %577
  %579 = load i64, ptr %578, align 1
  %580 = xor i64 %579, %575
  %581 = load i64, ptr %314, align 64
  %582 = xor i64 %571, %581
  %583 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %584 = getelementptr inbounds i8, ptr %583, i64 -8
  %585 = load i64, ptr %584, align 1
  %586 = xor i64 %580, %585
  %587 = call noundef i64 @llvm.bswap.i64(i64 %582)
  %588 = add i64 %587, %59
  %589 = add i64 %588, %586
  %590 = zext i64 %582 to i128
  %591 = zext i64 %586 to i128
  %592 = mul nuw i128 %591, %590
  %593 = lshr i128 %592, 64
  %594 = xor i128 %593, %592
  %595 = trunc i128 %594 to i64
  %596 = add i64 %589, %595
  %597 = lshr i64 %596, 37
  %598 = xor i64 %597, %596
  %599 = mul i64 %598, 1609587791953885689
  %600 = lshr i64 %599, 32
  %601 = xor i64 %600, %599
  br label %876

602:                                              ; preds = %560
  %603 = icmp samesign ugt i64 %59, 3
  br i1 %603, label %604, label %634, !prof !20

604:                                              ; preds = %602
  %605 = load i32, ptr %314, align 64
  %606 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %607 = getelementptr inbounds i8, ptr %606, i64 -4
  %608 = load i32, ptr %607, align 1
  %609 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %610 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %611 = select i1 %55, ptr %609, ptr %610
  %612 = load i64, ptr %611, align 1
  %613 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %614 = getelementptr inbounds nuw i8, ptr %54, i64 16
  %615 = select i1 %55, ptr %613, ptr %614
  %616 = load i64, ptr %615, align 1
  %617 = xor i64 %616, %612
  %618 = zext i32 %608 to i64
  %619 = zext i32 %605 to i64
  %620 = shl nuw i64 %619, 32
  %621 = or disjoint i64 %620, %618
  %622 = xor i64 %617, %621
  %623 = call i64 @llvm.fshl.i64(i64 %622, i64 %622, i64 49)
  %624 = call i64 @llvm.fshl.i64(i64 %622, i64 %622, i64 24)
  %625 = xor i64 %623, %624
  %626 = xor i64 %625, %622
  %627 = mul i64 %626, -6939452855193903323
  %628 = lshr i64 %627, 35
  %629 = add nuw nsw i64 %628, %59
  %630 = xor i64 %629, %627
  %631 = mul i64 %630, -6939452855193903323
  %632 = lshr i64 %631, 28
  %633 = xor i64 %632, %631
  br label %876

634:                                              ; preds = %602
  %635 = icmp eq i64 %59, 0
  br i1 %635, label %667, label %636

636:                                              ; preds = %634
  %637 = load i8, ptr %314, align 64
  %638 = lshr i64 %59, 1
  %639 = getelementptr inbounds nuw i8, ptr %314, i64 %638
  %640 = load i8, ptr %639, align 1
  %641 = getelementptr i8, ptr %314, i64 %59
  %642 = getelementptr i8, ptr %641, i64 -1
  %643 = load i8, ptr %642, align 1
  %644 = zext i8 %637 to i64
  %645 = shl nuw nsw i64 %644, 16
  %646 = zext i8 %640 to i64
  %647 = shl nuw nsw i64 %646, 24
  %648 = zext i8 %643 to i64
  %649 = shl nuw nsw i64 %59, 8
  %650 = or disjoint i64 %645, %649
  %651 = or disjoint i64 %650, %647
  %652 = or disjoint i64 %651, %648
  %653 = load i32, ptr %57, align 1
  %654 = getelementptr inbounds nuw i8, ptr %4, i64 68
  %655 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %656 = select i1 %55, ptr %654, ptr %655
  %657 = load i32, ptr %656, align 1
  %658 = xor i32 %657, %653
  %659 = zext i32 %658 to i64
  %660 = xor i64 %652, %659
  %661 = mul i64 %660, -4417276706812531889
  %662 = lshr i64 %661, 29
  %663 = xor i64 %662, %661
  %664 = mul i64 %663, 1609587929392839161
  %665 = lshr i64 %664, 32
  %666 = xor i64 %665, %664
  br label %876

667:                                              ; preds = %634
  %668 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %669 = getelementptr inbounds nuw i8, ptr %54, i64 56
  %670 = select i1 %55, ptr %668, ptr %669
  %671 = load i64, ptr %670, align 1
  %672 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %673 = getelementptr inbounds nuw i8, ptr %54, i64 64
  %674 = select i1 %55, ptr %672, ptr %673
  %675 = load i64, ptr %674, align 1
  %676 = xor i64 %675, %671
  %677 = lshr i64 %676, 33
  %678 = xor i64 %677, %676
  %679 = mul i64 %678, -4417276706812531889
  %680 = lshr i64 %679, 29
  %681 = xor i64 %680, %679
  %682 = mul i64 %681, 1609587929392839161
  %683 = lshr i64 %682, 32
  %684 = xor i64 %683, %682
  br label %876

685:                                              ; preds = %559
  %686 = icmp samesign ult i64 %59, 129
  br i1 %686, label %687, label %874

687:                                              ; preds = %685
  %688 = mul i64 %59, -7046029288634856825
  %689 = icmp samesign ugt i64 %59, 32
  br i1 %689, label %690, label %828

690:                                              ; preds = %687
  %691 = icmp samesign ugt i64 %59, 64
  br i1 %691, label %692, label %783

692:                                              ; preds = %690
  %693 = icmp samesign ugt i64 %59, 96
  br i1 %693, label %694, label %738

694:                                              ; preds = %692
  %695 = getelementptr inbounds nuw i8, ptr %4, i64 304
  %696 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %697 = getelementptr inbounds nuw i8, ptr %54, i64 96
  %698 = select i1 %55, ptr %696, ptr %697
  %699 = load i64, ptr %695, align 16
  %700 = getelementptr inbounds nuw i8, ptr %4, i64 312
  %701 = load i64, ptr %700, align 8
  %702 = load i64, ptr %698, align 1
  %703 = xor i64 %702, %699
  %704 = getelementptr inbounds nuw i8, ptr %4, i64 168
  %705 = getelementptr inbounds nuw i8, ptr %54, i64 104
  %706 = select i1 %55, ptr %704, ptr %705
  %707 = load i64, ptr %706, align 1
  %708 = xor i64 %707, %701
  %709 = zext i64 %703 to i128
  %710 = zext i64 %708 to i128
  %711 = mul nuw i128 %710, %709
  %712 = lshr i128 %711, 64
  %713 = xor i128 %712, %711
  %714 = trunc i128 %713 to i64
  %715 = add i64 %688, %714
  %716 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %717 = getelementptr inbounds i8, ptr %716, i64 -64
  %718 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %719 = getelementptr inbounds nuw i8, ptr %54, i64 112
  %720 = select i1 %55, ptr %718, ptr %719
  %721 = load i64, ptr %717, align 1
  %722 = getelementptr inbounds i8, ptr %716, i64 -56
  %723 = load i64, ptr %722, align 1
  %724 = load i64, ptr %720, align 1
  %725 = xor i64 %724, %721
  %726 = getelementptr inbounds nuw i8, ptr %4, i64 184
  %727 = getelementptr inbounds nuw i8, ptr %54, i64 120
  %728 = select i1 %55, ptr %726, ptr %727
  %729 = load i64, ptr %728, align 1
  %730 = xor i64 %729, %723
  %731 = zext i64 %725 to i128
  %732 = zext i64 %730 to i128
  %733 = mul nuw i128 %732, %731
  %734 = lshr i128 %733, 64
  %735 = xor i128 %734, %733
  %736 = trunc i128 %735 to i64
  %737 = add i64 %715, %736
  br label %738

738:                                              ; preds = %694, %692
  %739 = phi i64 [ %737, %694 ], [ %688, %692 ]
  %740 = getelementptr inbounds nuw i8, ptr %4, i64 288
  %741 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %742 = getelementptr inbounds nuw i8, ptr %54, i64 64
  %743 = select i1 %55, ptr %741, ptr %742
  %744 = load i64, ptr %740, align 32
  %745 = getelementptr inbounds nuw i8, ptr %4, i64 296
  %746 = load i64, ptr %745, align 8
  %747 = load i64, ptr %743, align 1
  %748 = xor i64 %747, %744
  %749 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %750 = getelementptr inbounds nuw i8, ptr %54, i64 72
  %751 = select i1 %55, ptr %749, ptr %750
  %752 = load i64, ptr %751, align 1
  %753 = xor i64 %752, %746
  %754 = zext i64 %748 to i128
  %755 = zext i64 %753 to i128
  %756 = mul nuw i128 %755, %754
  %757 = lshr i128 %756, 64
  %758 = xor i128 %757, %756
  %759 = trunc i128 %758 to i64
  %760 = add i64 %739, %759
  %761 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %762 = getelementptr inbounds i8, ptr %761, i64 -48
  %763 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %764 = getelementptr inbounds nuw i8, ptr %54, i64 80
  %765 = select i1 %55, ptr %763, ptr %764
  %766 = load i64, ptr %762, align 1
  %767 = getelementptr inbounds i8, ptr %761, i64 -40
  %768 = load i64, ptr %767, align 1
  %769 = load i64, ptr %765, align 1
  %770 = xor i64 %769, %766
  %771 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %772 = getelementptr inbounds nuw i8, ptr %54, i64 88
  %773 = select i1 %55, ptr %771, ptr %772
  %774 = load i64, ptr %773, align 1
  %775 = xor i64 %774, %768
  %776 = zext i64 %770 to i128
  %777 = zext i64 %775 to i128
  %778 = mul nuw i128 %777, %776
  %779 = lshr i128 %778, 64
  %780 = xor i128 %779, %778
  %781 = trunc i128 %780 to i64
  %782 = add i64 %760, %781
  br label %783

783:                                              ; preds = %738, %690
  %784 = phi i64 [ %782, %738 ], [ %688, %690 ]
  %785 = getelementptr inbounds nuw i8, ptr %4, i64 272
  %786 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %787 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %788 = select i1 %55, ptr %786, ptr %787
  %789 = load i64, ptr %785, align 16
  %790 = getelementptr inbounds nuw i8, ptr %4, i64 280
  %791 = load i64, ptr %790, align 8
  %792 = load i64, ptr %788, align 1
  %793 = xor i64 %792, %789
  %794 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %795 = getelementptr inbounds nuw i8, ptr %54, i64 40
  %796 = select i1 %55, ptr %794, ptr %795
  %797 = load i64, ptr %796, align 1
  %798 = xor i64 %797, %791
  %799 = zext i64 %793 to i128
  %800 = zext i64 %798 to i128
  %801 = mul nuw i128 %800, %799
  %802 = lshr i128 %801, 64
  %803 = xor i128 %802, %801
  %804 = trunc i128 %803 to i64
  %805 = add i64 %784, %804
  %806 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %807 = getelementptr inbounds i8, ptr %806, i64 -32
  %808 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %809 = getelementptr inbounds nuw i8, ptr %54, i64 48
  %810 = select i1 %55, ptr %808, ptr %809
  %811 = load i64, ptr %807, align 1
  %812 = getelementptr inbounds i8, ptr %806, i64 -24
  %813 = load i64, ptr %812, align 1
  %814 = load i64, ptr %810, align 1
  %815 = xor i64 %814, %811
  %816 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %817 = getelementptr inbounds nuw i8, ptr %54, i64 56
  %818 = select i1 %55, ptr %816, ptr %817
  %819 = load i64, ptr %818, align 1
  %820 = xor i64 %819, %813
  %821 = zext i64 %815 to i128
  %822 = zext i64 %820 to i128
  %823 = mul nuw i128 %822, %821
  %824 = lshr i128 %823, 64
  %825 = xor i128 %824, %823
  %826 = trunc i128 %825 to i64
  %827 = add i64 %805, %826
  br label %828

828:                                              ; preds = %783, %687
  %829 = phi i64 [ %827, %783 ], [ %688, %687 ]
  %830 = load i64, ptr %314, align 64
  %831 = getelementptr inbounds nuw i8, ptr %4, i64 264
  %832 = load i64, ptr %831, align 8
  %833 = load i64, ptr %57, align 1
  %834 = xor i64 %833, %830
  %835 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %836 = getelementptr inbounds nuw i8, ptr %54, i64 8
  %837 = select i1 %55, ptr %835, ptr %836
  %838 = load i64, ptr %837, align 1
  %839 = xor i64 %838, %832
  %840 = zext i64 %834 to i128
  %841 = zext i64 %839 to i128
  %842 = mul nuw i128 %841, %840
  %843 = lshr i128 %842, 64
  %844 = xor i128 %843, %842
  %845 = trunc i128 %844 to i64
  %846 = add i64 %829, %845
  %847 = getelementptr inbounds nuw i8, ptr %314, i64 %59
  %848 = getelementptr inbounds i8, ptr %847, i64 -16
  %849 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %850 = getelementptr inbounds nuw i8, ptr %54, i64 16
  %851 = select i1 %55, ptr %849, ptr %850
  %852 = load i64, ptr %848, align 1
  %853 = getelementptr inbounds i8, ptr %847, i64 -8
  %854 = load i64, ptr %853, align 1
  %855 = load i64, ptr %851, align 1
  %856 = xor i64 %855, %852
  %857 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %858 = getelementptr inbounds nuw i8, ptr %54, i64 24
  %859 = select i1 %55, ptr %857, ptr %858
  %860 = load i64, ptr %859, align 1
  %861 = xor i64 %860, %854
  %862 = zext i64 %856 to i128
  %863 = zext i64 %861 to i128
  %864 = mul nuw i128 %863, %862
  %865 = lshr i128 %864, 64
  %866 = xor i128 %865, %864
  %867 = trunc i128 %866 to i64
  %868 = add i64 %846, %867
  %869 = lshr i64 %868, 37
  %870 = xor i64 %869, %868
  %871 = mul i64 %870, 1609587791953885689
  %872 = lshr i64 %871, 32
  %873 = xor i64 %872, %871
  br label %876

874:                                              ; preds = %685
  %875 = call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %314, i64 noundef range(i64 0, 241) %59, ptr noundef nonnull readonly %57, i64 noundef 0) #13
  br label %876

876:                                              ; preds = %201, %321, %347, %376, %403, %520, %557, %562, %604, %636, %667, %828, %874
  %877 = phi i64 [ %309, %201 ], [ %556, %520 ], [ %558, %557 ], [ %344, %321 ], [ %373, %347 ], [ %402, %376 ], [ %412, %403 ], [ %873, %828 ], [ %875, %874 ], [ %601, %562 ], [ %633, %604 ], [ %666, %636 ], [ %684, %667 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #11
  ret i64 %877
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_update_regular(ptr noundef nonnull %0, ptr noundef %1, i64 noundef range(i64 50, 201) %2) unnamed_addr #6 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %4 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %7 = load ptr, ptr %6, align 8, !alias.scope !24, !noalias !21
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %10 = select i1 %8, ptr %9, ptr %7
  %11 = load <4 x i64>, ptr %0, align 64, !noalias !21
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <4 x i64>, ptr %12, align 32, !noalias !21
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %15 = load i64, ptr %14, align 16, !alias.scope !24, !noalias !21
  %16 = add i64 %15, %2
  store i64 %16, ptr %14, align 16, !alias.scope !24, !noalias !21
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %18 = load i32, ptr %17, align 64, !alias.scope !24, !noalias !21
  %19 = icmp ult i32 %18, 257
  tail call void @llvm.assume(i1 %19)
  %20 = sub nuw nsw i32 256, %18
  %21 = zext nneg i32 %20 to i64
  %22 = icmp samesign ugt i64 %2, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %25 = zext nneg i32 %18 to i64
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 range(i64 50, 201) %2, i1 false), !alias.scope !26
  %27 = trunc nuw nsw i64 %2 to i32
  %28 = load i32, ptr %17, align 64, !alias.scope !24, !noalias !21
  %29 = add i32 %28, %27
  store i32 %29, ptr %17, align 64, !alias.scope !24, !noalias !21
  br label %311

30:                                               ; preds = %3
  %31 = icmp eq i32 %18, 0
  br i1 %31, label %159, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %34 = zext nneg i32 %18 to i64
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr nonnull align 1 %1, i64 %21, i1 false), !alias.scope !26
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 %21
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %39 = load i64, ptr %38, align 8, !alias.scope !24, !noalias !21
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %41 = load i64, ptr %40, align 32, !alias.scope !24, !noalias !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %42 = load i64, ptr %37, align 8, !alias.scope !27, !noalias !30
  %43 = shl i64 %42, 3
  %44 = getelementptr inbounds nuw i8, ptr %10, i64 %43
  %45 = sub i64 %39, %42
  %46 = icmp ugt i64 %45, 4
  br i1 %46, label %116, label %47

47:                                               ; preds = %32
  %48 = getelementptr inbounds nuw i8, ptr %10, i64 %41
  %49 = load <4 x i64>, ptr %48, align 1, !noalias !27
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 32
  %51 = load <4 x i64>, ptr %50, align 1, !noalias !27
  br label %52

52:                                               ; preds = %47, %91
  %53 = phi <4 x i64> [ %13, %47 ], [ %109, %91 ]
  %54 = phi <4 x i64> [ %11, %47 ], [ %101, %91 ]
  %55 = phi i64 [ 4, %47 ], [ %112, %91 ]
  %56 = phi ptr [ %33, %47 ], [ %111, %91 ]
  %57 = phi ptr [ %44, %47 ], [ %10, %91 ]
  %58 = phi i64 [ %45, %47 ], [ %39, %91 ]
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %91, label %60

60:                                               ; preds = %52, %60
  %61 = phi <4 x i64> [ %88, %60 ], [ %53, %52 ]
  %62 = phi <4 x i64> [ %77, %60 ], [ %54, %52 ]
  %63 = phi i64 [ %89, %60 ], [ 0, %52 ]
  %64 = shl i64 %63, 6
  %65 = getelementptr inbounds nuw i8, ptr %56, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %66, i32 0, i32 3, i32 1), !noalias !27
  %67 = shl i64 %63, 3
  %68 = getelementptr inbounds nuw i8, ptr %57, i64 %67
  %69 = load <4 x i64>, ptr %65, align 1, !noalias !27
  %70 = load <4 x i64>, ptr %68, align 1, !noalias !27
  %71 = xor <4 x i64> %70, %69
  %72 = lshr <4 x i64> %71, splat (i64 32)
  %73 = and <4 x i64> %71, splat (i64 4294967295)
  %74 = mul nuw <4 x i64> %73, %72
  %75 = shufflevector <4 x i64> %69, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %76 = add <4 x i64> %62, %75
  %77 = add <4 x i64> %76, %74
  %78 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %79 = load <4 x i64>, ptr %78, align 1, !noalias !27
  %80 = getelementptr inbounds nuw i8, ptr %68, i64 32
  %81 = load <4 x i64>, ptr %80, align 1, !noalias !27
  %82 = xor <4 x i64> %81, %79
  %83 = lshr <4 x i64> %82, splat (i64 32)
  %84 = and <4 x i64> %82, splat (i64 4294967295)
  %85 = mul nuw <4 x i64> %84, %83
  %86 = shufflevector <4 x i64> %79, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %87 = add <4 x i64> %61, %86
  %88 = add <4 x i64> %87, %85
  %89 = add nuw i64 %63, 1
  %90 = icmp eq i64 %89, %58
  br i1 %90, label %91, label %60

91:                                               ; preds = %60, %52
  %92 = phi <4 x i64> [ %53, %52 ], [ %88, %60 ]
  %93 = phi <4 x i64> [ %54, %52 ], [ %77, %60 ]
  %94 = lshr <4 x i64> %93, splat (i64 47)
  %95 = xor <4 x i64> %49, %94
  %96 = xor <4 x i64> %95, %93
  %97 = lshr <4 x i64> %96, splat (i64 32)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, splat (i64 2654435761)
  %100 = mul <4 x i64> %97, splat (i64 -7046029290881679360)
  %101 = add <4 x i64> %99, %100
  %102 = lshr <4 x i64> %92, splat (i64 47)
  %103 = xor <4 x i64> %51, %102
  %104 = xor <4 x i64> %103, %92
  %105 = lshr <4 x i64> %104, splat (i64 32)
  %106 = and <4 x i64> %104, splat (i64 4294967295)
  %107 = mul nuw <4 x i64> %106, splat (i64 2654435761)
  %108 = mul <4 x i64> %105, splat (i64 -7046029290881679360)
  %109 = add <4 x i64> %107, %108
  %110 = shl i64 %58, 6
  %111 = getelementptr inbounds nuw i8, ptr %56, i64 %110
  %112 = sub i64 %55, %58
  %113 = icmp ult i64 %112, %39
  br i1 %113, label %114, label %52

114:                                              ; preds = %91
  store i64 0, ptr %37, align 8, !alias.scope !27, !noalias !30
  %115 = icmp eq i64 %112, 0
  br i1 %115, label %156, label %116

116:                                              ; preds = %32, %114
  %117 = phi i64 [ %42, %32 ], [ 0, %114 ]
  %118 = phi <4 x i64> [ %13, %32 ], [ %109, %114 ]
  %119 = phi <4 x i64> [ %11, %32 ], [ %101, %114 ]
  %120 = phi ptr [ %44, %32 ], [ %10, %114 ]
  %121 = phi ptr [ %33, %32 ], [ %111, %114 ]
  %122 = phi i64 [ 4, %32 ], [ %112, %114 ]
  br label %123

123:                                              ; preds = %116, %123
  %124 = phi <4 x i64> [ %118, %116 ], [ %151, %123 ]
  %125 = phi <4 x i64> [ %119, %116 ], [ %140, %123 ]
  %126 = phi i64 [ 0, %116 ], [ %152, %123 ]
  %127 = shl i64 %126, 6
  %128 = getelementptr inbounds nuw i8, ptr %121, i64 %127
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %129, i32 0, i32 3, i32 1), !noalias !27
  %130 = shl i64 %126, 3
  %131 = getelementptr inbounds nuw i8, ptr %120, i64 %130
  %132 = load <4 x i64>, ptr %128, align 1, !noalias !27
  %133 = load <4 x i64>, ptr %131, align 1, !noalias !27
  %134 = xor <4 x i64> %133, %132
  %135 = lshr <4 x i64> %134, splat (i64 32)
  %136 = and <4 x i64> %134, splat (i64 4294967295)
  %137 = mul nuw <4 x i64> %136, %135
  %138 = shufflevector <4 x i64> %132, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %139 = add <4 x i64> %125, %138
  %140 = add <4 x i64> %139, %137
  %141 = getelementptr inbounds nuw i8, ptr %128, i64 32
  %142 = load <4 x i64>, ptr %141, align 1, !noalias !27
  %143 = getelementptr inbounds nuw i8, ptr %131, i64 32
  %144 = load <4 x i64>, ptr %143, align 1, !noalias !27
  %145 = xor <4 x i64> %144, %142
  %146 = lshr <4 x i64> %145, splat (i64 32)
  %147 = and <4 x i64> %145, splat (i64 4294967295)
  %148 = mul nuw <4 x i64> %147, %146
  %149 = shufflevector <4 x i64> %142, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %150 = add <4 x i64> %124, %149
  %151 = add <4 x i64> %150, %148
  %152 = add nuw i64 %126, 1
  %153 = icmp eq i64 %152, %122
  br i1 %153, label %154, label %123

154:                                              ; preds = %123
  %155 = add i64 %117, %122
  store i64 %155, ptr %37, align 8, !alias.scope !27, !noalias !30
  br label %156

156:                                              ; preds = %114, %154
  %157 = phi <4 x i64> [ %151, %154 ], [ %109, %114 ]
  %158 = phi <4 x i64> [ %140, %154 ], [ %101, %114 ]
  store i32 0, ptr %17, align 64, !alias.scope !24, !noalias !21
  br label %159

159:                                              ; preds = %156, %30
  %160 = phi <4 x i64> [ %13, %30 ], [ %157, %156 ]
  %161 = phi <4 x i64> [ %11, %30 ], [ %158, %156 ]
  %162 = phi ptr [ %1, %30 ], [ %36, %156 ]
  %163 = icmp ult ptr %162, %5
  tail call void @llvm.assume(i1 %163)
  %164 = ptrtoint ptr %5 to i64
  %165 = ptrtoint ptr %162 to i64
  %166 = sub i64 %164, %165
  %167 = icmp sgt i64 %166, 256
  br i1 %167, label %168, label %302

168:                                              ; preds = %159
  %169 = getelementptr inbounds i8, ptr %5, i64 -1
  %170 = ptrtoint ptr %169 to i64
  %171 = sub i64 %170, %165
  %172 = lshr i64 %171, 6
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %175 = load i64, ptr %174, align 8, !alias.scope !24, !noalias !21
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %177 = load i64, ptr %176, align 32, !alias.scope !24, !noalias !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %178 = load i64, ptr %173, align 8, !alias.scope !34, !noalias !37
  %179 = shl i64 %178, 3
  %180 = getelementptr inbounds nuw i8, ptr %10, i64 %179
  %181 = sub i64 %175, %178
  %182 = icmp ult i64 %172, %181
  br i1 %182, label %251, label %183

183:                                              ; preds = %168
  %184 = getelementptr inbounds nuw i8, ptr %10, i64 %177
  %185 = load <4 x i64>, ptr %184, align 1, !noalias !34
  %186 = getelementptr inbounds nuw i8, ptr %184, i64 32
  %187 = load <4 x i64>, ptr %186, align 1, !noalias !34
  br label %188

188:                                              ; preds = %183, %227
  %189 = phi <4 x i64> [ %160, %183 ], [ %245, %227 ]
  %190 = phi <4 x i64> [ %161, %183 ], [ %237, %227 ]
  %191 = phi i64 [ %172, %183 ], [ %248, %227 ]
  %192 = phi ptr [ %162, %183 ], [ %247, %227 ]
  %193 = phi ptr [ %180, %183 ], [ %10, %227 ]
  %194 = phi i64 [ %181, %183 ], [ %175, %227 ]
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %227, label %196

196:                                              ; preds = %188, %196
  %197 = phi <4 x i64> [ %224, %196 ], [ %189, %188 ]
  %198 = phi <4 x i64> [ %213, %196 ], [ %190, %188 ]
  %199 = phi i64 [ %225, %196 ], [ 0, %188 ]
  %200 = shl i64 %199, 6
  %201 = getelementptr inbounds nuw i8, ptr %192, i64 %200
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %202, i32 0, i32 3, i32 1), !noalias !34
  %203 = shl i64 %199, 3
  %204 = getelementptr inbounds nuw i8, ptr %193, i64 %203
  %205 = load <4 x i64>, ptr %201, align 1, !noalias !34
  %206 = load <4 x i64>, ptr %204, align 1, !noalias !34
  %207 = xor <4 x i64> %206, %205
  %208 = lshr <4 x i64> %207, splat (i64 32)
  %209 = and <4 x i64> %207, splat (i64 4294967295)
  %210 = mul nuw <4 x i64> %209, %208
  %211 = shufflevector <4 x i64> %205, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %212 = add <4 x i64> %198, %211
  %213 = add <4 x i64> %212, %210
  %214 = getelementptr inbounds nuw i8, ptr %201, i64 32
  %215 = load <4 x i64>, ptr %214, align 1, !noalias !34
  %216 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %217 = load <4 x i64>, ptr %216, align 1, !noalias !34
  %218 = xor <4 x i64> %217, %215
  %219 = lshr <4 x i64> %218, splat (i64 32)
  %220 = and <4 x i64> %218, splat (i64 4294967295)
  %221 = mul nuw <4 x i64> %220, %219
  %222 = shufflevector <4 x i64> %215, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %223 = add <4 x i64> %197, %222
  %224 = add <4 x i64> %223, %221
  %225 = add nuw i64 %199, 1
  %226 = icmp eq i64 %225, %194
  br i1 %226, label %227, label %196

227:                                              ; preds = %196, %188
  %228 = phi <4 x i64> [ %189, %188 ], [ %224, %196 ]
  %229 = phi <4 x i64> [ %190, %188 ], [ %213, %196 ]
  %230 = lshr <4 x i64> %229, splat (i64 47)
  %231 = xor <4 x i64> %185, %230
  %232 = xor <4 x i64> %231, %229
  %233 = lshr <4 x i64> %232, splat (i64 32)
  %234 = and <4 x i64> %232, splat (i64 4294967295)
  %235 = mul nuw <4 x i64> %234, splat (i64 2654435761)
  %236 = mul <4 x i64> %233, splat (i64 -7046029290881679360)
  %237 = add <4 x i64> %235, %236
  %238 = lshr <4 x i64> %228, splat (i64 47)
  %239 = xor <4 x i64> %187, %238
  %240 = xor <4 x i64> %239, %228
  %241 = lshr <4 x i64> %240, splat (i64 32)
  %242 = and <4 x i64> %240, splat (i64 4294967295)
  %243 = mul nuw <4 x i64> %242, splat (i64 2654435761)
  %244 = mul <4 x i64> %241, splat (i64 -7046029290881679360)
  %245 = add <4 x i64> %243, %244
  %246 = shl i64 %194, 6
  %247 = getelementptr inbounds nuw i8, ptr %192, i64 %246
  %248 = sub i64 %191, %194
  %249 = icmp ult i64 %248, %175
  br i1 %249, label %250, label %188

250:                                              ; preds = %227
  store i64 0, ptr %173, align 8, !alias.scope !34, !noalias !37
  br label %251

251:                                              ; preds = %250, %168
  %252 = phi i64 [ %178, %168 ], [ 0, %250 ]
  %253 = phi <4 x i64> [ %160, %168 ], [ %245, %250 ]
  %254 = phi <4 x i64> [ %161, %168 ], [ %237, %250 ]
  %255 = phi i64 [ %172, %168 ], [ %248, %250 ]
  %256 = phi ptr [ %162, %168 ], [ %247, %250 ]
  %257 = phi ptr [ %180, %168 ], [ %10, %250 ]
  %258 = icmp eq i64 %255, 0
  br i1 %258, label %294, label %259

259:                                              ; preds = %251, %259
  %260 = phi <4 x i64> [ %287, %259 ], [ %253, %251 ]
  %261 = phi <4 x i64> [ %276, %259 ], [ %254, %251 ]
  %262 = phi i64 [ %288, %259 ], [ 0, %251 ]
  %263 = shl i64 %262, 6
  %264 = getelementptr inbounds nuw i8, ptr %256, i64 %263
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %265, i32 0, i32 3, i32 1), !noalias !34
  %266 = shl i64 %262, 3
  %267 = getelementptr inbounds nuw i8, ptr %257, i64 %266
  %268 = load <4 x i64>, ptr %264, align 1, !noalias !34
  %269 = load <4 x i64>, ptr %267, align 1, !noalias !34
  %270 = xor <4 x i64> %269, %268
  %271 = lshr <4 x i64> %270, splat (i64 32)
  %272 = and <4 x i64> %270, splat (i64 4294967295)
  %273 = mul nuw <4 x i64> %272, %271
  %274 = shufflevector <4 x i64> %268, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %275 = add <4 x i64> %261, %274
  %276 = add <4 x i64> %275, %273
  %277 = getelementptr inbounds nuw i8, ptr %264, i64 32
  %278 = load <4 x i64>, ptr %277, align 1, !noalias !34
  %279 = getelementptr inbounds nuw i8, ptr %267, i64 32
  %280 = load <4 x i64>, ptr %279, align 1, !noalias !34
  %281 = xor <4 x i64> %280, %278
  %282 = lshr <4 x i64> %281, splat (i64 32)
  %283 = and <4 x i64> %281, splat (i64 4294967295)
  %284 = mul nuw <4 x i64> %283, %282
  %285 = shufflevector <4 x i64> %278, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %286 = add <4 x i64> %260, %285
  %287 = add <4 x i64> %286, %284
  %288 = add nuw i64 %262, 1
  %289 = icmp eq i64 %288, %255
  br i1 %289, label %290, label %259

290:                                              ; preds = %259
  %291 = shl i64 %255, 6
  %292 = getelementptr inbounds nuw i8, ptr %256, i64 %291
  %293 = add i64 %252, %255
  store i64 %293, ptr %173, align 8, !alias.scope !34, !noalias !37
  br label %294

294:                                              ; preds = %251, %290
  %295 = phi <4 x i64> [ %253, %251 ], [ %287, %290 ]
  %296 = phi <4 x i64> [ %254, %251 ], [ %276, %290 ]
  %297 = phi ptr [ %256, %251 ], [ %292, %290 ]
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %299 = getelementptr inbounds i8, ptr %297, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %298, ptr noundef nonnull align 1 dereferenceable(64) %299, i64 64, i1 false)
  %300 = ptrtoint ptr %297 to i64
  %301 = sub i64 %164, %300
  br label %302

302:                                              ; preds = %294, %159
  %303 = phi i64 [ %301, %294 ], [ %166, %159 ]
  %304 = phi <4 x i64> [ %295, %294 ], [ %160, %159 ]
  %305 = phi <4 x i64> [ %296, %294 ], [ %161, %159 ]
  %306 = phi ptr [ %297, %294 ], [ %162, %159 ]
  %307 = icmp ult ptr %306, %5
  tail call void @llvm.assume(i1 %307)
  %308 = icmp slt i64 %303, 257
  tail call void @llvm.assume(i1 %308)
  %309 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %309, ptr align 1 %306, i64 %303, i1 false)
  %310 = trunc i64 %303 to i32
  store i32 %310, ptr %17, align 64, !alias.scope !24, !noalias !21
  store <4 x i64> %305, ptr %0, align 64, !noalias !21
  store <4 x i64> %304, ptr %12, align 32, !noalias !21
  br label %311

311:                                              ; preds = %23, %302
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias noundef nonnull readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #7 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %26 = load i64, ptr %24, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = load i64, ptr %25, align 1
  %30 = add i64 %29, %3
  %31 = xor i64 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = sub i64 %33, %3
  %35 = xor i64 %34, %28
  %36 = zext i64 %31 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = add i64 %23, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %45 = load i64, ptr %43, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 1
  %48 = load i64, ptr %44, align 1
  %49 = add i64 %48, %3
  %50 = xor i64 %49, %45
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = sub i64 %52, %3
  %54 = xor i64 %53, %47
  %55 = zext i64 %50 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %42, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %64 = load i64, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %66 = load i64, ptr %65, align 1
  %67 = load i64, ptr %63, align 1
  %68 = add i64 %67, %3
  %69 = xor i64 %68, %64
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %71 = load i64, ptr %70, align 1
  %72 = sub i64 %71, %3
  %73 = xor i64 %72, %66
  %74 = zext i64 %69 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %61, %79
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %83 = load i64, ptr %81, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %85 = load i64, ptr %84, align 1
  %86 = load i64, ptr %82, align 1
  %87 = add i64 %86, %3
  %88 = xor i64 %87, %83
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %90 = load i64, ptr %89, align 1
  %91 = sub i64 %90, %3
  %92 = xor i64 %91, %85
  %93 = zext i64 %88 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %102 = load i64, ptr %100, align 1
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %104 = load i64, ptr %103, align 1
  %105 = load i64, ptr %101, align 1
  %106 = add i64 %105, %3
  %107 = xor i64 %106, %102
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = sub i64 %109, %3
  %111 = xor i64 %110, %104
  %112 = zext i64 %107 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %99, %117
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = add i64 %124, %3
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %128 = load i64, ptr %127, align 1
  %129 = sub i64 %128, %3
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %118, %136
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %140 = load i64, ptr %138, align 1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %142 = load i64, ptr %141, align 1
  %143 = load i64, ptr %139, align 1
  %144 = add i64 %143, %3
  %145 = xor i64 %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %147 = load i64, ptr %146, align 1
  %148 = sub i64 %147, %3
  %149 = xor i64 %148, %142
  %150 = zext i64 %145 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %137, %155
  %157 = lshr i32 %6, 4
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -16
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %161 = load i64, ptr %159, align 1
  %162 = getelementptr inbounds i8, ptr %158, i64 -8
  %163 = load i64, ptr %162, align 1
  %164 = load i64, ptr %160, align 1
  %165 = add i64 %164, %3
  %166 = xor i64 %165, %161
  %167 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %168 = load i64, ptr %167, align 1
  %169 = sub i64 %168, %3
  %170 = xor i64 %169, %163
  %171 = zext i64 %166 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = lshr i64 %156, 37
  %178 = xor i64 %177, %156
  %179 = mul i64 %178, 1609587791953885689
  %180 = lshr i64 %179, 32
  %181 = xor i64 %180, %179
  %182 = icmp eq i32 %157, 8
  br i1 %182, label %213, label %183

183:                                              ; preds = %4
  %184 = zext nneg i32 %157 to i64
  br label %185

185:                                              ; preds = %183, %185
  %186 = phi i64 [ 8, %183 ], [ %211, %185 ]
  %187 = phi i64 [ %181, %183 ], [ %189, %185 ]
  %188 = phi i64 [ %176, %183 ], [ %210, %185 ]
  %189 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %187) #12
  %190 = shl nuw nsw i64 %186, 4
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 %190
  %192 = getelementptr i8, ptr %2, i64 %190
  %193 = getelementptr i8, ptr %192, i64 -125
  %194 = load i64, ptr %191, align 1
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %196 = load i64, ptr %195, align 1
  %197 = load i64, ptr %193, align 1
  %198 = add i64 %197, %3
  %199 = xor i64 %198, %194
  %200 = getelementptr i8, ptr %192, i64 -117
  %201 = load i64, ptr %200, align 1
  %202 = sub i64 %201, %3
  %203 = xor i64 %202, %196
  %204 = zext i64 %199 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %188, %209
  %211 = add nuw nsw i64 %186, 1
  %212 = icmp eq i64 %211, %184
  br i1 %212, label %213, label %185

213:                                              ; preds = %185, %4
  %214 = phi i64 [ %176, %4 ], [ %210, %185 ]
  %215 = phi i64 [ %181, %4 ], [ %189, %185 ]
  %216 = add i64 %215, %214
  %217 = lshr i64 %216, 37
  %218 = xor i64 %217, %216
  %219 = mul i64 %218, 1609587791953885689
  %220 = lshr i64 %219, 32
  %221 = xor i64 %220, %219
  ret i64 %221
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(none) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2152150440}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_consumeStripes: argument 1"}
!8 = distinct !{!8, !"XXH3_consumeStripes"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!13, !15}
!13 = distinct !{!13, !14, !"XXH3_mergeAccs: argument 1"}
!14 = distinct !{!14, !"XXH3_mergeAccs"}
!15 = distinct !{!15, !16, !"XXH3_finalizeLong_64b: argument 1"}
!16 = distinct !{!16, !"XXH3_finalizeLong_64b"}
!17 = !{!18, !19}
!18 = distinct !{!18, !14, !"XXH3_mergeAccs: argument 0"}
!19 = distinct !{!19, !16, !"XXH3_finalizeLong_64b: argument 0"}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_update: argument 1"}
!23 = distinct !{!23, !"XXH3_update"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"XXH3_update: argument 0"}
!26 = !{!25, !22}
!27 = !{!28}
!28 = distinct !{!28, !29, !"XXH3_consumeStripes: argument 1"}
!29 = distinct !{!29, !"XXH3_consumeStripes"}
!30 = !{!31, !32, !33}
!31 = distinct !{!31, !29, !"XXH3_consumeStripes: argument 0"}
!32 = distinct !{!32, !29, !"XXH3_consumeStripes: argument 2"}
!33 = distinct !{!33, !29, !"XXH3_consumeStripes: argument 3"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"XXH3_consumeStripes: argument 1"}
!36 = distinct !{!36, !"XXH3_consumeStripes"}
!37 = !{!38, !39, !40}
!38 = distinct !{!38, !36, !"XXH3_consumeStripes: argument 0"}
!39 = distinct !{!39, !36, !"XXH3_consumeStripes: argument 2"}
!40 = distinct !{!40, !36, !"XXH3_consumeStripes: argument 3"}
!41 = !{i64 2152147835}
!42 = distinct !{!42, !10}
