; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local i64 @target_seed_200_50(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %3, i8 0, i64 576, i1 false)
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3, align 64
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 552
  store i64 0, ptr %14, align 8
  br label %47

15:                                               ; preds = %2
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 552
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %17, i32 0, i32 3, i32 1)
  %18 = sub i64 0, %1
  %19 = insertelement <4 x i64> poison, i64 %1, i64 0
  %20 = insertelement <4 x i64> %19, i64 %18, i64 1
  %21 = insertelement <4 x i64> %20, i64 %1, i64 2
  %22 = insertelement <4 x i64> %21, i64 %18, i64 3
  %23 = freeze ptr %17
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 31
  %26 = icmp eq i64 %25, 0
  call void @llvm.assume(i1 %26)
  %27 = add <4 x i64> %22, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %27, ptr %23, align 32
  %28 = add <4 x i64> %22, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 32
  store <4 x i64> %28, ptr %29, align 32
  %30 = add <4 x i64> %22, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %31 = getelementptr inbounds nuw i8, ptr %23, i64 64
  store <4 x i64> %30, ptr %31, align 32
  %32 = add <4 x i64> %22, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %33 = getelementptr inbounds nuw i8, ptr %23, i64 96
  store <4 x i64> %32, ptr %33, align 32
  %34 = add <4 x i64> %22, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %35 = getelementptr inbounds nuw i8, ptr %23, i64 128
  store <4 x i64> %34, ptr %35, align 32
  %36 = add <4 x i64> %22, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %37 = getelementptr inbounds nuw i8, ptr %23, i64 160
  store <4 x i64> %36, ptr %37, align 32
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3, align 64
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -7046029288634856825, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -4417276706812531889, ptr %40, align 16
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1609587929392839161, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -8796714831421723037, ptr %42, align 32
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2246822519, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 2870177450012600261, ptr %44, align 16
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 2654435761, ptr %45, align 8
  store i64 %1, ptr %16, align 8
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 516
  store i32 1, ptr %46, align 4
  br label %47

47:                                               ; preds = %5, %15
  %48 = phi ptr [ null, %15 ], [ @XXH3_kSecret, %5 ]
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 128, ptr %50, align 32
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 16, ptr %51, align 8
  %52 = icmp ne ptr %0, null
  call void @llvm.assume(i1 %52)
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %54 = load <4 x i64>, ptr %3, align 64
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %56 = load <4 x i64>, ptr %55, align 32
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 528
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 512
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(200) %59, ptr noundef nonnull align 1 dereferenceable(200) %0, i64 range(i64 50, 201) 200, i1 false)
  store i64 250, ptr %57, align 16
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %60, ptr noundef nonnull align 1 dereferenceable(50) %53, i64 range(i64 50, 201) 50, i1 false)
  store i32 250, ptr %58, align 64
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %63 = select i1 %4, ptr %48, ptr %62
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %64, i32 0, i32 3, i32 1)
  %65 = load <4 x i64>, ptr %61, align 64
  %66 = load <4 x i64>, ptr %63, align 64
  %67 = xor <4 x i64> %66, %65
  %68 = lshr <4 x i64> %67, splat (i64 32)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, %68
  %71 = shufflevector <4 x i64> %65, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %72 = add <4 x i64> %54, %71
  %73 = add <4 x i64> %72, %70
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %75 = load <4 x i64>, ptr %74, align 32
  %76 = getelementptr inbounds nuw i8, ptr %48, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %78 = select i1 %4, ptr %76, ptr %77
  %79 = load <4 x i64>, ptr %78, align 32
  %80 = xor <4 x i64> %79, %75
  %81 = lshr <4 x i64> %80, splat (i64 32)
  %82 = and <4 x i64> %80, splat (i64 4294967295)
  %83 = mul nuw <4 x i64> %82, %81
  %84 = shufflevector <4 x i64> %75, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %85 = add <4 x i64> %56, %84
  %86 = add <4 x i64> %85, %83
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %88 = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %88, i32 0, i32 3, i32 1)
  %89 = getelementptr inbounds nuw i8, ptr %48, i64 8
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %91 = select i1 %4, ptr %89, ptr %90
  %92 = load <4 x i64>, ptr %87, align 64
  %93 = load <4 x i64>, ptr %91, align 8
  %94 = xor <4 x i64> %93, %92
  %95 = lshr <4 x i64> %94, splat (i64 32)
  %96 = and <4 x i64> %94, splat (i64 4294967295)
  %97 = mul nuw <4 x i64> %96, %95
  %98 = shufflevector <4 x i64> %92, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %99 = add <4 x i64> %73, %98
  %100 = add <4 x i64> %99, %97
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %102 = load <4 x i64>, ptr %101, align 32
  %103 = getelementptr inbounds nuw i8, ptr %48, i64 40
  %104 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %105 = select i1 %4, ptr %103, ptr %104
  %106 = load <4 x i64>, ptr %105, align 8
  %107 = xor <4 x i64> %106, %102
  %108 = lshr <4 x i64> %107, splat (i64 32)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = shufflevector <4 x i64> %102, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %112 = add <4 x i64> %86, %111
  %113 = add <4 x i64> %112, %110
  %114 = getelementptr inbounds nuw i8, ptr %3, i64 384
  %115 = getelementptr inbounds nuw i8, ptr %3, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %115, i32 0, i32 3, i32 1)
  %116 = getelementptr inbounds nuw i8, ptr %48, i64 16
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %118 = select i1 %4, ptr %116, ptr %117
  %119 = load <4 x i64>, ptr %114, align 64
  %120 = load <4 x i64>, ptr %118, align 16
  %121 = xor <4 x i64> %120, %119
  %122 = lshr <4 x i64> %121, splat (i64 32)
  %123 = and <4 x i64> %121, splat (i64 4294967295)
  %124 = mul nuw <4 x i64> %123, %122
  %125 = shufflevector <4 x i64> %119, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %126 = add <4 x i64> %100, %125
  %127 = add <4 x i64> %126, %124
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 416
  %129 = load <4 x i64>, ptr %128, align 32
  %130 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %132 = select i1 %4, ptr %130, ptr %131
  %133 = load <4 x i64>, ptr %132, align 16
  %134 = xor <4 x i64> %133, %129
  %135 = lshr <4 x i64> %134, splat (i64 32)
  %136 = and <4 x i64> %134, splat (i64 4294967295)
  %137 = mul nuw <4 x i64> %136, %135
  %138 = shufflevector <4 x i64> %129, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %139 = add <4 x i64> %113, %138
  %140 = add <4 x i64> %139, %137
  %141 = getelementptr i8, ptr %48, i64 19
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 83
  %143 = select i1 %4, ptr %141, ptr %142
  %144 = load i64, ptr %143, align 1
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 442
  %146 = load <4 x i64>, ptr %145, align 2
  %147 = shufflevector <4 x i64> %146, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %148 = add <4 x i64> %127, %147
  %149 = getelementptr inbounds nuw i8, ptr %48, i64 121
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 185
  %151 = select i1 %4, ptr %149, ptr %150
  %152 = load <4 x i64>, ptr %151, align 1
  %153 = xor <4 x i64> %152, %146
  %154 = and <4 x i64> %153, splat (i64 4294967295)
  %155 = lshr <4 x i64> %153, splat (i64 32)
  %156 = mul nuw <4 x i64> %154, %155
  %157 = add <4 x i64> %148, %156
  %158 = extractelement <4 x i64> %157, i64 1
  %159 = xor i64 %144, %158
  %160 = zext i64 %159 to i128
  %161 = extractelement <4 x i64> %157, i64 0
  %162 = getelementptr inbounds nuw i8, ptr %48, i64 11
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 75
  %164 = select i1 %4, ptr %162, ptr %163
  %165 = load i64, ptr %164, align 1
  %166 = xor i64 %161, %165
  %167 = zext i64 %166 to i128
  %168 = mul nuw i128 %160, %167
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %171, -9066635156306802730
  %173 = getelementptr i8, ptr %48, i64 35
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 99
  %175 = select i1 %4, ptr %173, ptr %174
  %176 = load i64, ptr %175, align 1
  %177 = extractelement <4 x i64> %157, i64 3
  %178 = xor i64 %176, %177
  %179 = zext i64 %178 to i128
  %180 = getelementptr inbounds nuw i8, ptr %48, i64 27
  %181 = getelementptr inbounds nuw i8, ptr %3, i64 91
  %182 = select i1 %4, ptr %180, ptr %181
  %183 = load i64, ptr %182, align 1
  %184 = extractelement <4 x i64> %157, i64 2
  %185 = xor i64 %183, %184
  %186 = zext i64 %185 to i128
  %187 = mul nuw i128 %179, %186
  %188 = lshr i128 %187, 64
  %189 = xor i128 %188, %187
  %190 = trunc i128 %189 to i64
  %191 = add i64 %172, %190
  %192 = getelementptr i8, ptr %48, i64 51
  %193 = getelementptr inbounds nuw i8, ptr %3, i64 115
  %194 = select i1 %4, ptr %192, ptr %193
  %195 = load i64, ptr %194, align 1
  %196 = getelementptr inbounds nuw i8, ptr %3, i64 474
  %197 = load <4 x i64>, ptr %196, align 2
  %198 = shufflevector <4 x i64> %197, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %199 = add <4 x i64> %140, %198
  %200 = getelementptr inbounds nuw i8, ptr %48, i64 153
  %201 = getelementptr inbounds nuw i8, ptr %3, i64 217
  %202 = select i1 %4, ptr %200, ptr %201
  %203 = load <4 x i64>, ptr %202, align 1
  %204 = xor <4 x i64> %203, %197
  %205 = and <4 x i64> %204, splat (i64 4294967295)
  %206 = lshr <4 x i64> %204, splat (i64 32)
  %207 = mul nuw <4 x i64> %205, %206
  %208 = add <4 x i64> %199, %207
  %209 = extractelement <4 x i64> %208, i64 1
  %210 = xor i64 %195, %209
  %211 = zext i64 %210 to i128
  %212 = getelementptr inbounds nuw i8, ptr %48, i64 43
  %213 = getelementptr inbounds nuw i8, ptr %3, i64 107
  %214 = select i1 %4, ptr %212, ptr %213
  %215 = load i64, ptr %214, align 1
  %216 = extractelement <4 x i64> %208, i64 0
  %217 = xor i64 %215, %216
  %218 = zext i64 %217 to i128
  %219 = mul nuw i128 %211, %218
  %220 = lshr i128 %219, 64
  %221 = xor i128 %220, %219
  %222 = trunc i128 %221 to i64
  %223 = add i64 %191, %222
  %224 = getelementptr i8, ptr %48, i64 67
  %225 = getelementptr inbounds nuw i8, ptr %3, i64 131
  %226 = select i1 %4, ptr %224, ptr %225
  %227 = load i64, ptr %226, align 1
  %228 = extractelement <4 x i64> %208, i64 3
  %229 = xor i64 %227, %228
  %230 = zext i64 %229 to i128
  %231 = getelementptr inbounds nuw i8, ptr %48, i64 59
  %232 = getelementptr inbounds nuw i8, ptr %3, i64 123
  %233 = select i1 %4, ptr %231, ptr %232
  %234 = load i64, ptr %233, align 1
  %235 = extractelement <4 x i64> %208, i64 2
  %236 = xor i64 %234, %235
  %237 = zext i64 %236 to i128
  %238 = mul nuw i128 %230, %237
  %239 = lshr i128 %238, 64
  %240 = xor i128 %239, %238
  %241 = trunc i128 %240 to i64
  %242 = add i64 %223, %241
  %243 = lshr i64 %242, 37
  %244 = xor i64 %243, %242
  %245 = mul i64 %244, 1609587791953885689
  %246 = lshr i64 %245, 32
  %247 = xor i64 %246, %245
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #7
  ret i64 %247
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
!5 = !{i64 2152149688}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_update: argument 1"}
!8 = distinct !{!8, !"XXH3_update"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"XXH3_update: argument 0"}
!11 = !{!10, !7}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_update: argument 1"}
!14 = distinct !{!14, !"XXH3_update"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"XXH3_update: argument 0"}
!17 = !{!16, !13}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_consumeStripes: argument 2"}
!20 = distinct !{!20, !"XXH3_consumeStripes"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"XXH3_consumeStripes: argument 3"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_accumulate_avx2: argument 1"}
!25 = distinct !{!25, !"XXH3_accumulate_avx2"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"XXH3_accumulate_avx2: argument 2"}
!28 = !{!27, !29, !22}
!29 = distinct !{!29, !20, !"XXH3_consumeStripes: argument 1"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"XXH3_accumulate_512_avx2: argument 1"}
!32 = distinct !{!32, !"XXH3_accumulate_512_avx2"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"XXH3_accumulate_512_avx2: argument 2"}
!35 = !{!31, !24, !19}
!36 = !{!37, !34, !38, !27, !39, !29, !22}
!37 = distinct !{!37, !32, !"XXH3_accumulate_512_avx2: argument 0"}
!38 = distinct !{!38, !25, !"XXH3_accumulate_avx2: argument 0"}
!39 = distinct !{!39, !20, !"XXH3_consumeStripes: argument 0"}
!40 = !{!34, !27, !22}
!41 = !{!37, !31, !38, !24, !39, !29, !19}
!42 = !{!43}
!43 = distinct !{!43, !32, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!44 = !{!45}
!45 = distinct !{!45, !32, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!46 = !{!43, !24, !19}
!47 = !{!37, !45, !38, !27, !39, !29, !22}
!48 = !{!45, !27, !22}
!49 = !{!37, !43, !38, !24, !39, !29, !19}
!50 = !{!51}
!51 = distinct !{!51, !32, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!52 = !{!53}
!53 = distinct !{!53, !32, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!54 = !{!51, !24, !19}
!55 = !{!37, !53, !38, !27, !39, !29, !22}
!56 = !{!53, !27, !22}
!57 = !{!37, !51, !38, !24, !39, !29, !19}
!58 = !{!59}
!59 = distinct !{!59, !60, !"XXH3_accumulate_512_avx2: argument 1"}
!60 = distinct !{!60, !"XXH3_accumulate_512_avx2"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"XXH3_accumulate_512_avx2: argument 2"}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"XXH3_mergeAccs: argument 1"}
!65 = distinct !{!65, !"XXH3_mergeAccs"}
!66 = distinct !{!66, !67, !"XXH3_finalizeLong_64b: argument 1"}
!67 = distinct !{!67, !"XXH3_finalizeLong_64b"}
!68 = !{!69, !70}
!69 = distinct !{!69, !65, !"XXH3_mergeAccs: argument 0"}
!70 = distinct !{!70, !67, !"XXH3_finalizeLong_64b: argument 0"}
!71 = !{!72, !62}
!72 = distinct !{!72, !60, !"XXH3_accumulate_512_avx2: argument 0"}
!73 = !{!72, !59}
