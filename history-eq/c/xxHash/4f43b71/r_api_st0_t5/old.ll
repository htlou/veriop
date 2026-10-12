; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local void @target_128_100_200(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca <4 x i64>, align 32
  %5 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %5, i8 0, i64 576, i1 false)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %5, align 64
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -7046029288634856825, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -4417276706812531889, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1609587929392839161, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 -8796714831421723037, ptr %12, align 32
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 2246822519, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 2870177450012600261, ptr %14, align 16
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 2654435761, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 552
  store i64 0, ptr %16, align 8
  br label %49

17:                                               ; preds = %3
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 552
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %19, i32 0, i32 3, i32 1)
  %20 = sub i64 0, %1
  %21 = insertelement <4 x i64> poison, i64 %1, i64 0
  %22 = insertelement <4 x i64> %21, i64 %20, i64 1
  %23 = insertelement <4 x i64> %22, i64 %1, i64 2
  %24 = insertelement <4 x i64> %23, i64 %20, i64 3
  %25 = freeze ptr %19
  %26 = ptrtoint ptr %25 to i64
  %27 = and i64 %26, 31
  %28 = icmp eq i64 %27, 0
  call void @llvm.assume(i1 %28)
  %29 = add <4 x i64> %24, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %29, ptr %25, align 32
  %30 = add <4 x i64> %24, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 32
  store <4 x i64> %30, ptr %31, align 32
  %32 = add <4 x i64> %24, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %33 = getelementptr inbounds nuw i8, ptr %25, i64 64
  store <4 x i64> %32, ptr %33, align 32
  %34 = add <4 x i64> %24, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %35 = getelementptr inbounds nuw i8, ptr %25, i64 96
  store <4 x i64> %34, ptr %35, align 32
  %36 = add <4 x i64> %24, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %37 = getelementptr inbounds nuw i8, ptr %25, i64 128
  store <4 x i64> %36, ptr %37, align 32
  %38 = add <4 x i64> %24, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %39 = getelementptr inbounds nuw i8, ptr %25, i64 160
  store <4 x i64> %38, ptr %39, align 32
  %40 = getelementptr inbounds nuw i8, ptr %5, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %5, align 64
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -7046029288634856825, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -4417276706812531889, ptr %42, align 16
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1609587929392839161, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 -8796714831421723037, ptr %44, align 32
  %45 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 2246822519, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 2870177450012600261, ptr %46, align 16
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 2654435761, ptr %47, align 8
  store i64 %1, ptr %18, align 8
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 516
  store i32 1, ptr %48, align 4
  br label %49

49:                                               ; preds = %17, %7
  %50 = phi ptr [ null, %17 ], [ @XXH3_kSecret, %7 ]
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 568
  store ptr %50, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 544
  store i64 128, ptr %52, align 32
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 536
  store i64 16, ptr %53, align 8
  %54 = icmp ne ptr %0, null
  call void @llvm.assume(i1 %54)
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %56 = getelementptr inbounds nuw i8, ptr %5, i64 528
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 512
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %58, ptr noundef nonnull align 1 dereferenceable(100) %0, i64 range(i64 100, 201) 100, i1 false)
  store i32 100, ptr %57, align 64
  store i64 300, ptr %56, align 16
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %59, ptr noundef nonnull align 1 dereferenceable(156) %55, i64 156, i1 false)
  %60 = load <4 x i64>, ptr %5, align 64
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %62 = load <4 x i64>, ptr %61, align 32
  %63 = getelementptr inbounds nuw i8, ptr %5, i64 256
  %64 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %65 = select i1 %6, ptr %50, ptr %64
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %66, i32 0, i32 3, i32 1)
  %67 = load <4 x i64>, ptr %63, align 64
  %68 = load <4 x i64>, ptr %65, align 64
  %69 = xor <4 x i64> %68, %67
  %70 = lshr <4 x i64> %69, splat (i64 32)
  %71 = and <4 x i64> %69, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, %70
  %73 = shufflevector <4 x i64> %67, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %74 = add <4 x i64> %60, %73
  %75 = add <4 x i64> %74, %72
  %76 = getelementptr inbounds nuw i8, ptr %5, i64 288
  %77 = load <4 x i64>, ptr %76, align 32
  %78 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %79 = getelementptr inbounds nuw i8, ptr %5, i64 96
  %80 = select i1 %6, ptr %78, ptr %79
  %81 = load <4 x i64>, ptr %80, align 32
  %82 = xor <4 x i64> %81, %77
  %83 = lshr <4 x i64> %82, splat (i64 32)
  %84 = and <4 x i64> %82, splat (i64 4294967295)
  %85 = mul nuw <4 x i64> %84, %83
  %86 = shufflevector <4 x i64> %77, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %87 = add <4 x i64> %62, %86
  %88 = add <4 x i64> %87, %85
  %89 = getelementptr inbounds nuw i8, ptr %5, i64 320
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %90, i32 0, i32 3, i32 1)
  %91 = getelementptr inbounds nuw i8, ptr %50, i64 8
  %92 = getelementptr inbounds nuw i8, ptr %5, i64 72
  %93 = select i1 %6, ptr %91, ptr %92
  %94 = load <4 x i64>, ptr %89, align 64
  %95 = load <4 x i64>, ptr %93, align 8
  %96 = xor <4 x i64> %95, %94
  %97 = lshr <4 x i64> %96, splat (i64 32)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %97
  %100 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %101 = add <4 x i64> %75, %100
  %102 = add <4 x i64> %101, %99
  %103 = getelementptr inbounds nuw i8, ptr %5, i64 352
  %104 = load <4 x i64>, ptr %103, align 32
  %105 = getelementptr inbounds nuw i8, ptr %50, i64 40
  %106 = getelementptr inbounds nuw i8, ptr %5, i64 104
  %107 = select i1 %6, ptr %105, ptr %106
  %108 = load <4 x i64>, ptr %107, align 8
  %109 = xor <4 x i64> %108, %104
  %110 = lshr <4 x i64> %109, splat (i64 32)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %88, %113
  %115 = add <4 x i64> %114, %112
  %116 = getelementptr inbounds nuw i8, ptr %5, i64 384
  %117 = getelementptr inbounds nuw i8, ptr %5, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %117, i32 0, i32 3, i32 1)
  %118 = getelementptr inbounds nuw i8, ptr %50, i64 16
  %119 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %120 = select i1 %6, ptr %118, ptr %119
  %121 = load <4 x i64>, ptr %116, align 64
  %122 = load <4 x i64>, ptr %120, align 16
  %123 = xor <4 x i64> %122, %121
  %124 = lshr <4 x i64> %123, splat (i64 32)
  %125 = and <4 x i64> %123, splat (i64 4294967295)
  %126 = mul nuw <4 x i64> %125, %124
  %127 = shufflevector <4 x i64> %121, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %128 = add <4 x i64> %102, %127
  %129 = add <4 x i64> %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %5, i64 416
  %131 = load <4 x i64>, ptr %130, align 32
  %132 = getelementptr inbounds nuw i8, ptr %50, i64 48
  %133 = getelementptr inbounds nuw i8, ptr %5, i64 112
  %134 = select i1 %6, ptr %132, ptr %133
  %135 = load <4 x i64>, ptr %134, align 16
  %136 = xor <4 x i64> %135, %131
  %137 = lshr <4 x i64> %136, splat (i64 32)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = shufflevector <4 x i64> %131, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %141 = add <4 x i64> %115, %140
  %142 = add <4 x i64> %141, %139
  %143 = getelementptr inbounds nuw i8, ptr %5, i64 448
  %144 = getelementptr inbounds nuw i8, ptr %5, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %144, i32 0, i32 3, i32 1)
  %145 = getelementptr inbounds nuw i8, ptr %50, i64 24
  %146 = getelementptr inbounds nuw i8, ptr %5, i64 88
  %147 = select i1 %6, ptr %145, ptr %146
  %148 = load <4 x i64>, ptr %143, align 64
  %149 = load <4 x i64>, ptr %147, align 8
  %150 = xor <4 x i64> %149, %148
  %151 = lshr <4 x i64> %150, splat (i64 32)
  %152 = and <4 x i64> %150, splat (i64 4294967295)
  %153 = mul nuw <4 x i64> %152, %151
  %154 = shufflevector <4 x i64> %148, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %155 = add <4 x i64> %129, %154
  %156 = add <4 x i64> %155, %153
  %157 = getelementptr inbounds nuw i8, ptr %5, i64 480
  %158 = load <4 x i64>, ptr %157, align 32
  %159 = getelementptr inbounds nuw i8, ptr %50, i64 56
  %160 = getelementptr inbounds nuw i8, ptr %5, i64 120
  %161 = select i1 %6, ptr %159, ptr %160
  %162 = load <4 x i64>, ptr %161, align 8
  %163 = xor <4 x i64> %162, %158
  %164 = lshr <4 x i64> %163, splat (i64 32)
  %165 = and <4 x i64> %163, splat (i64 4294967295)
  %166 = mul nuw <4 x i64> %165, %164
  %167 = shufflevector <4 x i64> %158, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %168 = add <4 x i64> %142, %167
  %169 = add <4 x i64> %168, %166
  %170 = getelementptr inbounds nuw i8, ptr %5, i64 520
  %171 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store <4 x i64> %156, ptr %5, align 64
  store <4 x i64> %169, ptr %171, align 32
  store i64 4, ptr %170, align 8
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %63, ptr noundef nonnull align 1 dereferenceable(44) %172, i64 44, i1 false)
  store i32 44, ptr %57, align 64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  %173 = load <4 x i64>, ptr %5, align 64
  %174 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %175 = load <4 x i64>, ptr %174, align 32
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(20) %176, i64 20, i1 false)
  %177 = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %177, ptr noundef nonnull align 1 dereferenceable(12) %172, i64 12, i1 false)
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %179 = load <4 x i64>, ptr %178, align 1
  %180 = load <4 x i64>, ptr %4, align 32
  %181 = getelementptr i8, ptr %50, i64 121
  %182 = getelementptr inbounds nuw i8, ptr %5, i64 185
  %183 = select i1 %6, ptr %181, ptr %182
  %184 = load <4 x i64>, ptr %183, align 1
  %185 = getelementptr i8, ptr %50, i64 153
  %186 = getelementptr inbounds nuw i8, ptr %5, i64 217
  %187 = select i1 %6, ptr %185, ptr %186
  %188 = load <4 x i64>, ptr %187, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  %189 = getelementptr i8, ptr %50, i64 125
  %190 = getelementptr inbounds nuw i8, ptr %5, i64 189
  %191 = select i1 %6, ptr %189, ptr %190
  %192 = load i64, ptr %191, align 1
  %193 = shufflevector <4 x i64> %180, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %194 = add <4 x i64> %173, %193
  %195 = xor <4 x i64> %184, %180
  %196 = and <4 x i64> %195, splat (i64 4294967295)
  %197 = lshr <4 x i64> %195, splat (i64 32)
  %198 = mul nuw <4 x i64> %196, %197
  %199 = add <4 x i64> %194, %198
  %200 = extractelement <4 x i64> %199, i64 1
  %201 = xor i64 %192, %200
  %202 = zext i64 %201 to i128
  %203 = getelementptr i8, ptr %50, i64 117
  %204 = getelementptr inbounds nuw i8, ptr %5, i64 181
  %205 = select i1 %6, ptr %203, ptr %204
  %206 = load i64, ptr %205, align 1
  %207 = extractelement <4 x i64> %199, i64 0
  %208 = xor i64 %206, %207
  %209 = zext i64 %208 to i128
  %210 = mul nuw i128 %202, %209
  %211 = lshr i128 %210, 64
  %212 = xor i128 %211, %210
  %213 = trunc i128 %212 to i64
  %214 = add i64 %213, -2982561263328149653
  %215 = getelementptr i8, ptr %50, i64 141
  %216 = getelementptr inbounds nuw i8, ptr %5, i64 205
  %217 = select i1 %6, ptr %215, ptr %216
  %218 = load i64, ptr %217, align 1
  %219 = extractelement <4 x i64> %199, i64 3
  %220 = xor i64 %218, %219
  %221 = zext i64 %220 to i128
  %222 = getelementptr i8, ptr %50, i64 133
  %223 = getelementptr inbounds nuw i8, ptr %5, i64 197
  %224 = select i1 %6, ptr %222, ptr %223
  %225 = load i64, ptr %224, align 1
  %226 = extractelement <4 x i64> %199, i64 2
  %227 = xor i64 %225, %226
  %228 = zext i64 %227 to i128
  %229 = mul nuw i128 %221, %228
  %230 = lshr i128 %229, 64
  %231 = xor i128 %230, %229
  %232 = trunc i128 %231 to i64
  %233 = add i64 %214, %232
  %234 = getelementptr i8, ptr %50, i64 157
  %235 = getelementptr inbounds nuw i8, ptr %5, i64 221
  %236 = select i1 %6, ptr %234, ptr %235
  %237 = load i64, ptr %236, align 1
  %238 = shufflevector <4 x i64> %179, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %239 = add <4 x i64> %175, %238
  %240 = xor <4 x i64> %188, %179
  %241 = and <4 x i64> %240, splat (i64 4294967295)
  %242 = lshr <4 x i64> %240, splat (i64 32)
  %243 = mul nuw <4 x i64> %241, %242
  %244 = add <4 x i64> %239, %243
  %245 = extractelement <4 x i64> %244, i64 1
  %246 = xor i64 %237, %245
  %247 = zext i64 %246 to i128
  %248 = getelementptr i8, ptr %50, i64 149
  %249 = getelementptr inbounds nuw i8, ptr %5, i64 213
  %250 = select i1 %6, ptr %248, ptr %249
  %251 = load i64, ptr %250, align 1
  %252 = extractelement <4 x i64> %244, i64 0
  %253 = xor i64 %251, %252
  %254 = zext i64 %253 to i128
  %255 = mul nuw i128 %247, %254
  %256 = lshr i128 %255, 64
  %257 = xor i128 %256, %255
  %258 = trunc i128 %257 to i64
  %259 = add i64 %233, %258
  %260 = getelementptr i8, ptr %50, i64 173
  %261 = getelementptr inbounds nuw i8, ptr %5, i64 237
  %262 = select i1 %6, ptr %260, ptr %261
  %263 = load i64, ptr %262, align 1
  %264 = extractelement <4 x i64> %244, i64 3
  %265 = xor i64 %263, %264
  %266 = zext i64 %265 to i128
  %267 = getelementptr i8, ptr %50, i64 165
  %268 = getelementptr inbounds nuw i8, ptr %5, i64 229
  %269 = select i1 %6, ptr %267, ptr %268
  %270 = load i64, ptr %269, align 1
  %271 = extractelement <4 x i64> %244, i64 2
  %272 = xor i64 %270, %271
  %273 = zext i64 %272 to i128
  %274 = mul nuw i128 %266, %273
  %275 = lshr i128 %274, 64
  %276 = xor i128 %275, %274
  %277 = trunc i128 %276 to i64
  %278 = add i64 %259, %277
  %279 = lshr i64 %278, 37
  %280 = xor i64 %279, %278
  %281 = mul i64 %280, 1609587791953885689
  %282 = lshr i64 %281, 32
  %283 = xor i64 %282, %281
  %284 = getelementptr i8, ptr %50, i64 19
  %285 = getelementptr inbounds nuw i8, ptr %5, i64 83
  %286 = select i1 %6, ptr %284, ptr %285
  %287 = load i64, ptr %286, align 1
  %288 = xor i64 %287, %200
  %289 = zext i64 %288 to i128
  %290 = getelementptr inbounds nuw i8, ptr %50, i64 11
  %291 = getelementptr inbounds nuw i8, ptr %5, i64 75
  %292 = select i1 %6, ptr %290, ptr %291
  %293 = load i64, ptr %292, align 1
  %294 = xor i64 %207, %293
  %295 = zext i64 %294 to i128
  %296 = mul nuw i128 %289, %295
  %297 = lshr i128 %296, 64
  %298 = xor i128 %297, %296
  %299 = trunc i128 %298 to i64
  %300 = add i64 %299, 7566781886141388340
  %301 = getelementptr i8, ptr %50, i64 35
  %302 = getelementptr inbounds nuw i8, ptr %5, i64 99
  %303 = select i1 %6, ptr %301, ptr %302
  %304 = load i64, ptr %303, align 1
  %305 = xor i64 %304, %219
  %306 = zext i64 %305 to i128
  %307 = getelementptr inbounds nuw i8, ptr %50, i64 27
  %308 = getelementptr inbounds nuw i8, ptr %5, i64 91
  %309 = select i1 %6, ptr %307, ptr %308
  %310 = load i64, ptr %309, align 1
  %311 = xor i64 %310, %226
  %312 = zext i64 %311 to i128
  %313 = mul nuw i128 %306, %312
  %314 = lshr i128 %313, 64
  %315 = xor i128 %314, %313
  %316 = trunc i128 %315 to i64
  %317 = add i64 %300, %316
  %318 = getelementptr i8, ptr %50, i64 51
  %319 = getelementptr inbounds nuw i8, ptr %5, i64 115
  %320 = select i1 %6, ptr %318, ptr %319
  %321 = load i64, ptr %320, align 1
  %322 = xor i64 %321, %245
  %323 = zext i64 %322 to i128
  %324 = getelementptr inbounds nuw i8, ptr %50, i64 43
  %325 = getelementptr inbounds nuw i8, ptr %5, i64 107
  %326 = select i1 %6, ptr %324, ptr %325
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %327, %252
  %329 = zext i64 %328 to i128
  %330 = mul nuw i128 %323, %329
  %331 = lshr i128 %330, 64
  %332 = xor i128 %331, %330
  %333 = trunc i128 %332 to i64
  %334 = add i64 %317, %333
  %335 = getelementptr i8, ptr %50, i64 67
  %336 = getelementptr inbounds nuw i8, ptr %5, i64 131
  %337 = select i1 %6, ptr %335, ptr %336
  %338 = load i64, ptr %337, align 1
  %339 = xor i64 %338, %264
  %340 = zext i64 %339 to i128
  %341 = getelementptr inbounds nuw i8, ptr %50, i64 59
  %342 = getelementptr inbounds nuw i8, ptr %5, i64 123
  %343 = select i1 %6, ptr %341, ptr %342
  %344 = load i64, ptr %343, align 1
  %345 = xor i64 %344, %271
  %346 = zext i64 %345 to i128
  %347 = mul nuw i128 %340, %346
  %348 = lshr i128 %347, 64
  %349 = xor i128 %348, %347
  %350 = trunc i128 %349 to i64
  %351 = add i64 %334, %350
  %352 = lshr i64 %351, 37
  %353 = xor i64 %352, %351
  %354 = mul i64 %353, 1609587791953885689
  %355 = lshr i64 %354, 32
  %356 = xor i64 %355, %354
  store i64 %356, ptr %2, align 8
  %357 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %283, ptr %357, align 8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %5) #7
  ret void
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2152150030}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_update: argument 1"}
!8 = distinct !{!8, !"XXH3_update"}
!9 = !{!10, !7}
!10 = distinct !{!10, !8, !"XXH3_update: argument 0"}
!11 = !{!10}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_update: argument 1"}
!14 = distinct !{!14, !"XXH3_update"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"XXH3_update: argument 0"}
!17 = !{!16, !13}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_consumeStripes: argument 0"}
!20 = distinct !{!20, !"XXH3_consumeStripes"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"XXH3_consumeStripes: argument 1"}
!23 = !{!24}
!24 = distinct !{!24, !20, !"XXH3_consumeStripes: argument 2"}
!25 = !{!26}
!26 = distinct !{!26, !20, !"XXH3_consumeStripes: argument 3"}
!27 = !{!28, !30, !19, !16}
!28 = distinct !{!28, !29, !"XXH3_accumulate_512_avx2: argument 0"}
!29 = distinct !{!29, !"XXH3_accumulate_512_avx2"}
!30 = distinct !{!30, !31, !"XXH3_accumulate_avx2: argument 0"}
!31 = distinct !{!31, !"XXH3_accumulate_avx2"}
!32 = !{!33, !34, !35, !36, !22, !24, !26, !13}
!33 = distinct !{!33, !29, !"XXH3_accumulate_512_avx2: argument 1"}
!34 = distinct !{!34, !29, !"XXH3_accumulate_512_avx2: argument 2"}
!35 = distinct !{!35, !31, !"XXH3_accumulate_avx2: argument 1"}
!36 = distinct !{!36, !31, !"XXH3_accumulate_avx2: argument 2"}
!37 = !{!30}
!38 = !{!35}
!39 = !{!36}
!40 = !{!36, !22, !26}
!41 = !{!28}
!42 = !{!33}
!43 = !{!34}
!44 = !{!33, !35, !24, !16}
!45 = !{!28, !34, !30, !36, !19, !22, !26, !13}
!46 = !{!34, !36, !26}
!47 = !{!28, !33, !30, !35, !19, !22, !24}
!48 = !{!49}
!49 = distinct !{!49, !29, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!50 = !{!51}
!51 = distinct !{!51, !29, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!52 = !{!49, !35, !24, !16}
!53 = !{!54, !51, !30, !36, !19, !22, !26, !13}
!54 = distinct !{!54, !29, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!55 = !{!51, !36, !26}
!56 = !{!54, !49, !30, !35, !19, !22, !24}
!57 = !{!58}
!58 = distinct !{!58, !29, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!59 = !{!60}
!60 = distinct !{!60, !29, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!61 = !{!58, !35, !24, !16}
!62 = !{!63, !60, !30, !36, !19, !22, !26, !13}
!63 = distinct !{!63, !29, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!64 = !{!60, !36, !26}
!65 = !{!63, !58, !30, !35, !19, !22, !24}
!66 = !{!67}
!67 = distinct !{!67, !29, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!68 = !{!69}
!69 = distinct !{!69, !29, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!70 = !{!67, !35, !24, !16}
!71 = !{!72, !69, !30, !36, !19, !22, !26, !13}
!72 = distinct !{!72, !29, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!73 = !{!69, !36, !26}
!74 = !{!72, !67, !30, !35, !19, !22, !24}
!75 = !{!22, !16}
!76 = !{!19, !24, !26, !13}
!77 = !{!78}
!78 = distinct !{!78, !79, !"XXH3_accumulate_512_avx2: argument 1"}
!79 = distinct !{!79, !"XXH3_accumulate_512_avx2"}
!80 = !{!81, !82}
!81 = distinct !{!81, !79, !"XXH3_accumulate_512_avx2: argument 0"}
!82 = distinct !{!82, !79, !"XXH3_accumulate_512_avx2: argument 2"}
!83 = !{!82}
!84 = !{!81, !78}
!85 = !{!86, !88}
!86 = distinct !{!86, !87, !"XXH3_mergeAccs: argument 1"}
!87 = distinct !{!87, !"XXH3_mergeAccs"}
!88 = distinct !{!88, !89, !"XXH3_finalizeLong_128b: argument 1"}
!89 = distinct !{!89, !"XXH3_finalizeLong_128b"}
!90 = !{!91, !92}
!91 = distinct !{!91, !87, !"XXH3_mergeAccs: argument 0"}
!92 = distinct !{!92, !89, !"XXH3_finalizeLong_128b: argument 0"}
!93 = !{!94, !96, !88}
!94 = distinct !{!94, !95, !"XXH3_mergeAccs: argument 1"}
!95 = distinct !{!95, !"XXH3_mergeAccs"}
!96 = distinct !{!96, !97, !"XXH3_finalizeLong_64b: argument 1"}
!97 = distinct !{!97, !"XXH3_finalizeLong_64b"}
!98 = !{!99, !100, !92}
!99 = distinct !{!99, !95, !"XXH3_mergeAccs: argument 0"}
!100 = distinct !{!100, !97, !"XXH3_finalizeLong_64b: argument 0"}
