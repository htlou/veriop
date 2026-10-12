; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_sec136_300_400(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #7
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 512, i1 false)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %347, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %3, align 64
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -7046029288634856825, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -4417276706812531889, ptr %9, align 16
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1609587929392839161, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -8796714831421723037, ptr %11, align 32
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2246822519, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 2870177450012600261, ptr %13, align 16
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 2654435761, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store ptr %1, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 72, ptr %16, align 32
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 9, ptr %17, align 8
  %18 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %18)
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 528
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 520
  %22 = load <4 x i64>, ptr %3, align 64
  %23 = load <4 x i64>, ptr %11, align 32
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %24, i32 0, i32 3, i32 1)
  %25 = load <4 x i64>, ptr %0, align 1
  %26 = load <4 x i64>, ptr %1, align 1
  %27 = xor <4 x i64> %26, %25
  %28 = lshr <4 x i64> %27, splat (i64 32)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = shufflevector <4 x i64> %25, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %32 = add <4 x i64> %22, %31
  %33 = add <4 x i64> %32, %30
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %35 = load <4 x i64>, ptr %34, align 1
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %37 = load <4 x i64>, ptr %36, align 1
  %38 = xor <4 x i64> %37, %35
  %39 = lshr <4 x i64> %38, splat (i64 32)
  %40 = and <4 x i64> %38, splat (i64 4294967295)
  %41 = mul nuw <4 x i64> %40, %39
  %42 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %43 = add <4 x i64> %23, %42
  %44 = add <4 x i64> %43, %41
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %46, i32 0, i32 3, i32 1)
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %48 = load <4 x i64>, ptr %45, align 1
  %49 = load <4 x i64>, ptr %47, align 1
  %50 = xor <4 x i64> %49, %48
  %51 = lshr <4 x i64> %50, splat (i64 32)
  %52 = and <4 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %52, %51
  %54 = shufflevector <4 x i64> %48, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %55 = add <4 x i64> %33, %54
  %56 = add <4 x i64> %55, %53
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %58 = load <4 x i64>, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %60 = load <4 x i64>, ptr %59, align 1
  %61 = xor <4 x i64> %60, %58
  %62 = lshr <4 x i64> %61, splat (i64 32)
  %63 = and <4 x i64> %61, splat (i64 4294967295)
  %64 = mul nuw <4 x i64> %63, %62
  %65 = shufflevector <4 x i64> %58, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %66 = add <4 x i64> %44, %65
  %67 = add <4 x i64> %66, %64
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %69, i32 0, i32 3, i32 1)
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %71 = load <4 x i64>, ptr %68, align 1
  %72 = load <4 x i64>, ptr %70, align 1
  %73 = xor <4 x i64> %72, %71
  %74 = lshr <4 x i64> %73, splat (i64 32)
  %75 = and <4 x i64> %73, splat (i64 4294967295)
  %76 = mul nuw <4 x i64> %75, %74
  %77 = shufflevector <4 x i64> %71, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %78 = add <4 x i64> %56, %77
  %79 = add <4 x i64> %78, %76
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %81 = load <4 x i64>, ptr %80, align 1
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %83 = load <4 x i64>, ptr %82, align 1
  %84 = xor <4 x i64> %83, %81
  %85 = lshr <4 x i64> %84, splat (i64 32)
  %86 = and <4 x i64> %84, splat (i64 4294967295)
  %87 = mul nuw <4 x i64> %86, %85
  %88 = shufflevector <4 x i64> %81, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %89 = add <4 x i64> %67, %88
  %90 = add <4 x i64> %89, %87
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %92, i32 0, i32 3, i32 1)
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %94 = load <4 x i64>, ptr %91, align 1
  %95 = load <4 x i64>, ptr %93, align 1
  %96 = xor <4 x i64> %95, %94
  %97 = lshr <4 x i64> %96, splat (i64 32)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %97
  %100 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %101 = add <4 x i64> %79, %100
  %102 = add <4 x i64> %101, %99
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %104 = load <4 x i64>, ptr %103, align 1
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %106 = load <4 x i64>, ptr %105, align 1
  %107 = xor <4 x i64> %106, %104
  %108 = lshr <4 x i64> %107, splat (i64 32)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %112 = add <4 x i64> %90, %111
  %113 = add <4 x i64> %112, %110
  store <4 x i64> %102, ptr %3, align 64
  store <4 x i64> %113, ptr %11, align 32
  %114 = getelementptr i8, ptr %0, i64 256
  store i64 4, ptr %21, align 8
  %115 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %116 = icmp ult ptr %114, %19
  tail call void @llvm.assume(i1 %116)
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %117, ptr noundef nonnull readonly align 1 dereferenceable(44) %114, i64 range(i64 -9223372036854775808, 4294967296) 44, i1 false)
  store i32 44, ptr %7, align 64
  store i64 700, ptr %20, align 16
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %118, ptr noundef nonnull readonly align 1 dereferenceable(212) %19, i64 range(i64 -9223372036854775808, 4294967296) 212, i1 false)
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %120, i32 0, i32 3, i32 1)
  %121 = load <4 x i64>, ptr %117, align 64
  %122 = xor <4 x i64> %37, %121
  %123 = lshr <4 x i64> %122, splat (i64 32)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = shufflevector <4 x i64> %121, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %127 = add <4 x i64> %102, %126
  %128 = add <4 x i64> %127, %125
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %130 = load <4 x i64>, ptr %129, align 32
  %131 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %132 = load <4 x i64>, ptr %131, align 1
  %133 = xor <4 x i64> %132, %130
  %134 = lshr <4 x i64> %133, splat (i64 32)
  %135 = and <4 x i64> %133, splat (i64 4294967295)
  %136 = mul nuw <4 x i64> %135, %134
  %137 = shufflevector <4 x i64> %130, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %138 = add <4 x i64> %113, %137
  %139 = add <4 x i64> %138, %136
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %141, i32 0, i32 3, i32 1)
  %142 = load <4 x i64>, ptr %140, align 64
  %143 = xor <4 x i64> %60, %142
  %144 = lshr <4 x i64> %143, splat (i64 32)
  %145 = and <4 x i64> %143, splat (i64 4294967295)
  %146 = mul nuw <4 x i64> %145, %144
  %147 = shufflevector <4 x i64> %142, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %148 = add <4 x i64> %128, %147
  %149 = add <4 x i64> %148, %146
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %151 = load <4 x i64>, ptr %150, align 32
  %152 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %153 = load <4 x i64>, ptr %152, align 1
  %154 = xor <4 x i64> %153, %151
  %155 = lshr <4 x i64> %154, splat (i64 32)
  %156 = and <4 x i64> %154, splat (i64 4294967295)
  %157 = mul nuw <4 x i64> %156, %155
  %158 = shufflevector <4 x i64> %151, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %159 = add <4 x i64> %139, %158
  %160 = add <4 x i64> %159, %157
  %161 = getelementptr inbounds nuw i8, ptr %3, i64 384
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %162, i32 0, i32 3, i32 1)
  %163 = load <4 x i64>, ptr %161, align 64
  %164 = xor <4 x i64> %83, %163
  %165 = lshr <4 x i64> %164, splat (i64 32)
  %166 = and <4 x i64> %164, splat (i64 4294967295)
  %167 = mul nuw <4 x i64> %166, %165
  %168 = shufflevector <4 x i64> %163, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %169 = add <4 x i64> %149, %168
  %170 = add <4 x i64> %169, %167
  %171 = getelementptr inbounds nuw i8, ptr %3, i64 416
  %172 = load <4 x i64>, ptr %171, align 32
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %174 = load <4 x i64>, ptr %173, align 1
  %175 = xor <4 x i64> %174, %172
  %176 = lshr <4 x i64> %175, splat (i64 32)
  %177 = and <4 x i64> %175, splat (i64 4294967295)
  %178 = mul nuw <4 x i64> %177, %176
  %179 = shufflevector <4 x i64> %172, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %180 = add <4 x i64> %160, %179
  %181 = add <4 x i64> %180, %178
  %182 = getelementptr inbounds nuw i8, ptr %3, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %182, i32 0, i32 3, i32 1)
  %183 = load <4 x i64>, ptr %115, align 64
  %184 = xor <4 x i64> %106, %183
  %185 = lshr <4 x i64> %184, splat (i64 32)
  %186 = and <4 x i64> %184, splat (i64 4294967295)
  %187 = mul nuw <4 x i64> %186, %185
  %188 = shufflevector <4 x i64> %183, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %189 = add <4 x i64> %170, %188
  %190 = add <4 x i64> %189, %187
  %191 = getelementptr inbounds nuw i8, ptr %3, i64 480
  %192 = load <4 x i64>, ptr %191, align 32
  %193 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %194 = load <4 x i64>, ptr %193, align 1
  %195 = xor <4 x i64> %194, %192
  %196 = lshr <4 x i64> %195, splat (i64 32)
  %197 = and <4 x i64> %195, splat (i64 4294967295)
  %198 = mul nuw <4 x i64> %197, %196
  %199 = shufflevector <4 x i64> %192, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %200 = add <4 x i64> %181, %199
  %201 = add <4 x i64> %200, %198
  store <4 x i64> %190, ptr %3, align 64
  store <4 x i64> %201, ptr %11, align 32
  store i64 8, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(188) %117, ptr noundef nonnull readonly align 1 dereferenceable(188) %119, i64 range(i64 -9223372036854775808, 4294967296) 188, i1 false)
  store i32 188, ptr %7, align 64
  %202 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %202, i32 0, i32 3, i32 1)
  %203 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %204 = load <4 x i64>, ptr %203, align 32
  %205 = shufflevector <4 x i64> %204, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %206 = add <4 x i64> %201, %205
  %207 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %208 = load <4 x i64>, ptr %207, align 1
  %209 = xor <4 x i64> %208, %204
  %210 = and <4 x i64> %209, splat (i64 4294967295)
  %211 = lshr <4 x i64> %209, splat (i64 32)
  %212 = mul nuw <4 x i64> %210, %211
  %213 = add <4 x i64> %206, %212
  %214 = load <4 x i64>, ptr %117, align 64
  %215 = shufflevector <4 x i64> %214, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %216 = add <4 x i64> %190, %215
  %217 = xor <4 x i64> %132, %214
  %218 = and <4 x i64> %217, splat (i64 4294967295)
  %219 = lshr <4 x i64> %217, splat (i64 32)
  %220 = mul nuw <4 x i64> %218, %219
  %221 = add <4 x i64> %216, %220
  %222 = lshr <4 x i64> %221, splat (i64 47)
  %223 = xor <4 x i64> %222, %153
  %224 = xor <4 x i64> %223, %221
  %225 = lshr <4 x i64> %224, splat (i64 32)
  %226 = and <4 x i64> %224, splat (i64 4294967295)
  %227 = mul nuw <4 x i64> %226, splat (i64 2654435761)
  %228 = mul <4 x i64> %225, splat (i64 -7046029290881679360)
  %229 = add <4 x i64> %227, %228
  %230 = lshr <4 x i64> %213, splat (i64 47)
  %231 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %232 = load <4 x i64>, ptr %231, align 1
  %233 = xor <4 x i64> %230, %232
  %234 = xor <4 x i64> %233, %213
  %235 = lshr <4 x i64> %234, splat (i64 32)
  %236 = and <4 x i64> %234, splat (i64 4294967295)
  %237 = mul nuw <4 x i64> %236, splat (i64 2654435761)
  %238 = mul <4 x i64> %235, splat (i64 -7046029290881679360)
  %239 = add <4 x i64> %237, %238
  %240 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %241, i32 0, i32 3, i32 1)
  %242 = load <4 x i64>, ptr %240, align 64
  %243 = xor <4 x i64> %26, %242
  %244 = lshr <4 x i64> %243, splat (i64 32)
  %245 = and <4 x i64> %243, splat (i64 4294967295)
  %246 = mul nuw <4 x i64> %245, %244
  %247 = shufflevector <4 x i64> %242, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %248 = add <4 x i64> %229, %247
  %249 = add <4 x i64> %248, %246
  %250 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %251 = load <4 x i64>, ptr %250, align 32
  %252 = xor <4 x i64> %37, %251
  %253 = lshr <4 x i64> %252, splat (i64 32)
  %254 = and <4 x i64> %252, splat (i64 4294967295)
  %255 = mul nuw <4 x i64> %254, %253
  %256 = shufflevector <4 x i64> %251, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %257 = add <4 x i64> %239, %256
  %258 = add <4 x i64> %257, %255
  %259 = getelementptr inbounds nuw i8, ptr %1, i64 65
  %260 = load <4 x i64>, ptr %259, align 1
  %261 = bitcast <4 x i64> %260 to i256
  %262 = lshr i256 %261, 16
  %263 = trunc i256 %262 to i64
  %264 = getelementptr inbounds nuw i8, ptr %3, i64 412
  %265 = load <4 x i64>, ptr %264, align 4
  %266 = shufflevector <4 x i64> %265, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %267 = add <4 x i64> %258, %266
  %268 = getelementptr inbounds nuw i8, ptr %1, i64 97
  %269 = load <4 x i64>, ptr %268, align 1
  %270 = xor <4 x i64> %269, %265
  %271 = and <4 x i64> %270, splat (i64 4294967295)
  %272 = lshr <4 x i64> %270, splat (i64 32)
  %273 = mul nuw <4 x i64> %271, %272
  %274 = add <4 x i64> %267, %273
  %275 = getelementptr inbounds nuw i8, ptr %3, i64 380
  %276 = load <4 x i64>, ptr %275, align 4
  %277 = shufflevector <4 x i64> %276, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %278 = add <4 x i64> %249, %277
  %279 = xor <4 x i64> %260, %276
  %280 = and <4 x i64> %279, splat (i64 4294967295)
  %281 = lshr <4 x i64> %279, splat (i64 32)
  %282 = mul nuw <4 x i64> %280, %281
  %283 = add <4 x i64> %278, %282
  %284 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %285 = extractelement <4 x i64> %283, i64 0
  %286 = extractelement <4 x i64> %283, i64 1
  %287 = load i64, ptr %284, align 1
  %288 = getelementptr i8, ptr %1, i64 19
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %287, %285
  %291 = xor i64 %289, %286
  %292 = zext i64 %290 to i128
  %293 = zext i64 %291 to i128
  %294 = mul nuw i128 %293, %292
  %295 = lshr i128 %294, 64
  %296 = xor i128 %295, %294
  %297 = trunc i128 %296 to i64
  %298 = add i64 %297, -6939834363949496028
  %299 = getelementptr inbounds nuw i8, ptr %1, i64 27
  %300 = extractelement <4 x i64> %283, i64 2
  %301 = extractelement <4 x i64> %283, i64 3
  %302 = load i64, ptr %299, align 1
  %303 = getelementptr i8, ptr %1, i64 35
  %304 = load i64, ptr %303, align 1
  %305 = xor i64 %302, %300
  %306 = xor i64 %304, %301
  %307 = zext i64 %305 to i128
  %308 = zext i64 %306 to i128
  %309 = mul nuw i128 %308, %307
  %310 = lshr i128 %309, 64
  %311 = xor i128 %310, %309
  %312 = trunc i128 %311 to i64
  %313 = add i64 %298, %312
  %314 = getelementptr inbounds nuw i8, ptr %1, i64 43
  %315 = extractelement <4 x i64> %274, i64 0
  %316 = extractelement <4 x i64> %274, i64 1
  %317 = load i64, ptr %314, align 1
  %318 = getelementptr i8, ptr %1, i64 51
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %317, %315
  %321 = xor i64 %319, %316
  %322 = zext i64 %320 to i128
  %323 = zext i64 %321 to i128
  %324 = mul nuw i128 %323, %322
  %325 = lshr i128 %324, 64
  %326 = xor i128 %325, %324
  %327 = trunc i128 %326 to i64
  %328 = add i64 %313, %327
  %329 = getelementptr inbounds nuw i8, ptr %1, i64 59
  %330 = extractelement <4 x i64> %274, i64 2
  %331 = extractelement <4 x i64> %274, i64 3
  %332 = load i64, ptr %329, align 1
  %333 = xor i64 %332, %330
  %334 = xor i64 %331, %263
  %335 = zext i64 %333 to i128
  %336 = zext i64 %334 to i128
  %337 = mul nuw i128 %336, %335
  %338 = lshr i128 %337, 64
  %339 = xor i128 %338, %337
  %340 = trunc i128 %339 to i64
  %341 = add i64 %328, %340
  %342 = lshr i64 %341, 37
  %343 = xor i64 %342, %341
  %344 = mul i64 %343, 1609587791953885689
  %345 = lshr i64 %344, 32
  %346 = xor i64 %345, %344
  br label %347

347:                                              ; preds = %2, %6
  %348 = phi i64 [ %346, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #7
  ret i64 %348
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_update: argument 0"}
!7 = distinct !{!7, !"XXH3_update"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_update: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"XXH3_consumeStripes: argument 0"}
!12 = distinct !{!12, !"XXH3_consumeStripes"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"XXH3_consumeStripes: argument 1"}
!15 = !{!16}
!16 = distinct !{!16, !12, !"XXH3_consumeStripes: argument 2"}
!17 = !{!18}
!18 = distinct !{!18, !12, !"XXH3_consumeStripes: argument 3"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"XXH3_accumulate_avx2: argument 0"}
!21 = distinct !{!21, !"XXH3_accumulate_avx2"}
!22 = !{!23}
!23 = distinct !{!23, !21, !"XXH3_accumulate_avx2: argument 1"}
!24 = !{!25}
!25 = distinct !{!25, !21, !"XXH3_accumulate_avx2: argument 2"}
!26 = !{!27, !20, !11, !6}
!27 = distinct !{!27, !28, !"XXH3_accumulate_512_avx2: argument 0"}
!28 = distinct !{!28, !"XXH3_accumulate_512_avx2"}
!29 = !{!30, !31, !23, !25, !14, !16, !18, !9}
!30 = distinct !{!30, !28, !"XXH3_accumulate_512_avx2: argument 1"}
!31 = distinct !{!31, !28, !"XXH3_accumulate_512_avx2: argument 2"}
!32 = !{!25, !14, !18}
!33 = !{!27}
!34 = !{!30}
!35 = !{!31}
!36 = !{!30, !23, !16, !9}
!37 = !{!27, !31, !20, !25, !11, !14, !18, !6}
!38 = !{!31, !25, !18}
!39 = !{!27, !30, !20, !23, !11, !14, !16}
!40 = !{!41}
!41 = distinct !{!41, !28, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!42 = !{!43}
!43 = distinct !{!43, !28, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!44 = !{!41, !23, !16, !9}
!45 = !{!46, !43, !20, !25, !11, !14, !18, !6}
!46 = distinct !{!46, !28, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!47 = !{!43, !25, !18}
!48 = !{!46, !41, !20, !23, !11, !14, !16}
!49 = !{!50}
!50 = distinct !{!50, !28, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!51 = !{!52}
!52 = distinct !{!52, !28, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!53 = !{!50, !23, !16, !9}
!54 = !{!55, !52, !20, !25, !11, !14, !18, !6}
!55 = distinct !{!55, !28, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!56 = !{!52, !25, !18}
!57 = !{!55, !50, !20, !23, !11, !14, !16}
!58 = !{!59}
!59 = distinct !{!59, !28, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!60 = !{!61}
!61 = distinct !{!61, !28, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!62 = !{!59, !23, !16, !9}
!63 = !{!64, !61, !20, !25, !11, !14, !18, !6}
!64 = distinct !{!64, !28, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!65 = !{!61, !25, !18}
!66 = !{!64, !59, !20, !23, !11, !14, !16}
!67 = !{!14, !6}
!68 = !{!11, !16, !18, !9}
!69 = !{!6, !9}
!70 = !{!71}
!71 = distinct !{!71, !72, !"XXH3_update: argument 1"}
!72 = distinct !{!72, !"XXH3_update"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"XXH3_update: argument 0"}
!75 = !{!74, !71}
!76 = !{!77}
!77 = distinct !{!77, !78, !"XXH3_consumeStripes: argument 0"}
!78 = distinct !{!78, !"XXH3_consumeStripes"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"XXH3_consumeStripes: argument 1"}
!81 = !{!82}
!82 = distinct !{!82, !78, !"XXH3_consumeStripes: argument 2"}
!83 = !{!84}
!84 = distinct !{!84, !78, !"XXH3_consumeStripes: argument 3"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"XXH3_accumulate_avx2: argument 0"}
!87 = distinct !{!87, !"XXH3_accumulate_avx2"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"XXH3_accumulate_avx2: argument 1"}
!90 = !{!91}
!91 = distinct !{!91, !87, !"XXH3_accumulate_avx2: argument 2"}
!92 = !{!91, !80, !84}
!93 = !{!94}
!94 = distinct !{!94, !95, !"XXH3_accumulate_512_avx2: argument 0"}
!95 = distinct !{!95, !"XXH3_accumulate_512_avx2"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"XXH3_accumulate_512_avx2: argument 1"}
!98 = !{!99}
!99 = distinct !{!99, !95, !"XXH3_accumulate_512_avx2: argument 2"}
!100 = !{!97, !89, !82, !74}
!101 = !{!94, !99, !86, !91, !77, !80, !84, !71}
!102 = !{!99, !91, !84}
!103 = !{!94, !97, !86, !89, !77, !80, !82}
!104 = !{!105}
!105 = distinct !{!105, !95, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!106 = !{!107}
!107 = distinct !{!107, !95, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!108 = !{!105, !89, !82, !74}
!109 = !{!110, !107, !86, !91, !77, !80, !84, !71}
!110 = distinct !{!110, !95, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!111 = !{!107, !91, !84}
!112 = !{!110, !105, !86, !89, !77, !80, !82}
!113 = !{!114}
!114 = distinct !{!114, !95, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!115 = !{!116}
!116 = distinct !{!116, !95, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!117 = !{!114, !89, !82, !74}
!118 = !{!119, !116, !86, !91, !77, !80, !84, !71}
!119 = distinct !{!119, !95, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!120 = !{!116, !91, !84}
!121 = !{!119, !114, !86, !89, !77, !80, !82}
!122 = !{!123}
!123 = distinct !{!123, !95, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!124 = !{!125}
!125 = distinct !{!125, !95, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!126 = !{!123, !89, !82, !74}
!127 = !{!128, !125, !86, !91, !77, !80, !84, !71}
!128 = distinct !{!128, !95, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!129 = !{!125, !91, !84}
!130 = !{!128, !123, !86, !89, !77, !80, !82}
!131 = !{!94, !86, !77, !74}
!132 = !{!97, !99, !89, !91, !80, !82, !84, !71}
!133 = !{!80, !74}
!134 = !{!77, !82, !84, !71}
!135 = !{!136}
!136 = distinct !{!136, !137, !"XXH3_consumeStripes: argument 2"}
!137 = distinct !{!137, !"XXH3_consumeStripes"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"XXH3_consumeStripes: argument 3"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"XXH3_accumulate_avx2: argument 1"}
!142 = distinct !{!142, !"XXH3_accumulate_avx2"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"XXH3_accumulate_avx2: argument 2"}
!145 = !{!144, !146, !139}
!146 = distinct !{!146, !137, !"XXH3_consumeStripes: argument 1"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"XXH3_accumulate_512_avx2: argument 1"}
!149 = distinct !{!149, !"XXH3_accumulate_512_avx2"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"XXH3_accumulate_512_avx2: argument 2"}
!152 = !{!148, !141, !136}
!153 = !{!154, !151, !155, !144, !156, !146, !139}
!154 = distinct !{!154, !149, !"XXH3_accumulate_512_avx2: argument 0"}
!155 = distinct !{!155, !142, !"XXH3_accumulate_avx2: argument 0"}
!156 = distinct !{!156, !137, !"XXH3_consumeStripes: argument 0"}
!157 = !{!151, !144, !139}
!158 = !{!154, !148, !155, !141, !156, !146, !136}
!159 = !{!160, !139}
!160 = distinct !{!160, !161, !"XXH3_scrambleAcc_avx2: argument 1"}
!161 = distinct !{!161, !"XXH3_scrambleAcc_avx2"}
!162 = !{!163, !156, !146, !136}
!163 = distinct !{!163, !161, !"XXH3_scrambleAcc_avx2: argument 0"}
!164 = !{!165, !146, !139}
!165 = distinct !{!165, !166, !"XXH3_accumulate_avx2: argument 2"}
!166 = distinct !{!166, !"XXH3_accumulate_avx2"}
!167 = !{!168, !170, !136}
!168 = distinct !{!168, !169, !"XXH3_accumulate_512_avx2: argument 1"}
!169 = distinct !{!169, !"XXH3_accumulate_512_avx2"}
!170 = distinct !{!170, !166, !"XXH3_accumulate_avx2: argument 1"}
!171 = !{!172, !173, !174, !165, !156, !146, !139}
!172 = distinct !{!172, !169, !"XXH3_accumulate_512_avx2: argument 0"}
!173 = distinct !{!173, !169, !"XXH3_accumulate_512_avx2: argument 2"}
!174 = distinct !{!174, !166, !"XXH3_accumulate_avx2: argument 0"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"XXH3_accumulate_512_avx2: argument 1"}
!177 = distinct !{!177, !"XXH3_accumulate_512_avx2"}
!178 = !{!179}
!179 = distinct !{!179, !177, !"XXH3_accumulate_512_avx2: argument 2"}
!180 = !{!181, !179}
!181 = distinct !{!181, !177, !"XXH3_accumulate_512_avx2: argument 0"}
!182 = !{!181, !176}
!183 = !{!184}
!184 = distinct !{!184, !185, !"XXH3_mergeAccs: argument 1"}
!185 = distinct !{!185, !"XXH3_mergeAccs"}
!186 = !{!187}
!187 = distinct !{!187, !185, !"XXH3_mergeAccs: argument 0"}
