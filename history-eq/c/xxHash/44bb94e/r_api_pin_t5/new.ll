; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_sec136_300_400(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #7
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 512, i1 false)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %355, label %6

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
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 520
  %20 = load <4 x i64>, ptr %11, align 32
  %21 = load <4 x i64>, ptr %3, align 64
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 528
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %24, i32 0, i32 3, i32 1)
  %25 = load <4 x i64>, ptr %0, align 1
  %26 = load <4 x i64>, ptr %1, align 1
  %27 = xor <4 x i64> %26, %25
  %28 = lshr <4 x i64> %27, splat (i64 32)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = shufflevector <4 x i64> %25, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %32 = add <4 x i64> %21, %31
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
  %43 = add <4 x i64> %20, %42
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
  store i64 4, ptr %19, align 8
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %115 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %115, ptr noundef nonnull readonly align 1 dereferenceable(44) %114, i64 range(i64 -9223372036854775808, 4294967296) 44, i1 false)
  store i32 44, ptr %7, align 64
  store i64 700, ptr %22, align 16
  %116 = getelementptr inbounds nuw i8, ptr %3, i64 300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %116, ptr noundef nonnull readonly align 1 dereferenceable(212) %23, i64 range(i64 -9223372036854775808, 4294967296) 212, i1 false)
  %117 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %118, i32 0, i32 3, i32 1)
  %119 = load <4 x i64>, ptr %115, align 64
  %120 = load <4 x i64>, ptr %117, align 1
  %121 = xor <4 x i64> %120, %119
  %122 = lshr <4 x i64> %121, splat (i64 32)
  %123 = and <4 x i64> %121, splat (i64 4294967295)
  %124 = mul nuw <4 x i64> %123, %122
  %125 = shufflevector <4 x i64> %119, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %126 = add <4 x i64> %102, %125
  %127 = add <4 x i64> %126, %124
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %129 = load <4 x i64>, ptr %128, align 32
  %130 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %131 = load <4 x i64>, ptr %130, align 1
  %132 = xor <4 x i64> %131, %129
  %133 = lshr <4 x i64> %132, splat (i64 32)
  %134 = and <4 x i64> %132, splat (i64 4294967295)
  %135 = mul nuw <4 x i64> %134, %133
  %136 = shufflevector <4 x i64> %129, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %137 = add <4 x i64> %113, %136
  %138 = add <4 x i64> %137, %135
  %139 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %140, i32 0, i32 3, i32 1)
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %142 = load <4 x i64>, ptr %139, align 64
  %143 = load <4 x i64>, ptr %141, align 1
  %144 = xor <4 x i64> %143, %142
  %145 = lshr <4 x i64> %144, splat (i64 32)
  %146 = and <4 x i64> %144, splat (i64 4294967295)
  %147 = mul nuw <4 x i64> %146, %145
  %148 = shufflevector <4 x i64> %142, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %149 = add <4 x i64> %127, %148
  %150 = add <4 x i64> %149, %147
  %151 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %152 = load <4 x i64>, ptr %151, align 32
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %154 = load <4 x i64>, ptr %153, align 1
  %155 = xor <4 x i64> %154, %152
  %156 = lshr <4 x i64> %155, splat (i64 32)
  %157 = and <4 x i64> %155, splat (i64 4294967295)
  %158 = mul nuw <4 x i64> %157, %156
  %159 = shufflevector <4 x i64> %152, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %160 = add <4 x i64> %138, %159
  %161 = add <4 x i64> %160, %158
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 384
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %163, i32 0, i32 3, i32 1)
  %164 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %165 = load <4 x i64>, ptr %162, align 64
  %166 = load <4 x i64>, ptr %164, align 1
  %167 = xor <4 x i64> %166, %165
  %168 = lshr <4 x i64> %167, splat (i64 32)
  %169 = and <4 x i64> %167, splat (i64 4294967295)
  %170 = mul nuw <4 x i64> %169, %168
  %171 = shufflevector <4 x i64> %165, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %172 = add <4 x i64> %150, %171
  %173 = add <4 x i64> %172, %170
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 416
  %175 = load <4 x i64>, ptr %174, align 32
  %176 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %177 = load <4 x i64>, ptr %176, align 1
  %178 = xor <4 x i64> %177, %175
  %179 = lshr <4 x i64> %178, splat (i64 32)
  %180 = and <4 x i64> %178, splat (i64 4294967295)
  %181 = mul nuw <4 x i64> %180, %179
  %182 = shufflevector <4 x i64> %175, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %183 = add <4 x i64> %161, %182
  %184 = add <4 x i64> %183, %181
  %185 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %186, i32 0, i32 3, i32 1)
  %187 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %188 = load <4 x i64>, ptr %185, align 64
  %189 = load <4 x i64>, ptr %187, align 1
  %190 = xor <4 x i64> %189, %188
  %191 = lshr <4 x i64> %190, splat (i64 32)
  %192 = and <4 x i64> %190, splat (i64 4294967295)
  %193 = mul nuw <4 x i64> %192, %191
  %194 = shufflevector <4 x i64> %188, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %195 = add <4 x i64> %173, %194
  %196 = add <4 x i64> %195, %193
  %197 = getelementptr inbounds nuw i8, ptr %3, i64 480
  %198 = load <4 x i64>, ptr %197, align 32
  %199 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %200 = load <4 x i64>, ptr %199, align 1
  %201 = xor <4 x i64> %200, %198
  %202 = lshr <4 x i64> %201, splat (i64 32)
  %203 = and <4 x i64> %201, splat (i64 4294967295)
  %204 = mul nuw <4 x i64> %203, %202
  %205 = shufflevector <4 x i64> %198, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %206 = add <4 x i64> %184, %205
  %207 = add <4 x i64> %206, %204
  store <4 x i64> %196, ptr %3, align 64
  store <4 x i64> %207, ptr %11, align 32
  store i64 8, ptr %19, align 8
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(188) %115, ptr noundef nonnull readonly align 1 dereferenceable(188) %208, i64 range(i64 -9223372036854775808, 4294967296) 188, i1 false)
  store i32 188, ptr %7, align 64
  %209 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %210 = load <4 x i64>, ptr %209, align 1
  %211 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %211, i32 0, i32 3, i32 1)
  %212 = load <4 x i64>, ptr %115, align 64
  %213 = xor <4 x i64> %131, %212
  %214 = lshr <4 x i64> %213, splat (i64 32)
  %215 = and <4 x i64> %213, splat (i64 4294967295)
  %216 = mul nuw <4 x i64> %215, %214
  %217 = shufflevector <4 x i64> %212, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %218 = add <4 x i64> %196, %217
  %219 = add <4 x i64> %218, %216
  %220 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %221 = load <4 x i64>, ptr %220, align 32
  %222 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %223 = load <4 x i64>, ptr %222, align 1
  %224 = xor <4 x i64> %223, %221
  %225 = lshr <4 x i64> %224, splat (i64 32)
  %226 = and <4 x i64> %224, splat (i64 4294967295)
  %227 = mul nuw <4 x i64> %226, %225
  %228 = shufflevector <4 x i64> %221, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %229 = add <4 x i64> %207, %228
  %230 = add <4 x i64> %229, %227
  %231 = lshr <4 x i64> %219, splat (i64 47)
  %232 = xor <4 x i64> %154, %231
  %233 = xor <4 x i64> %232, %219
  %234 = lshr <4 x i64> %233, splat (i64 32)
  %235 = and <4 x i64> %233, splat (i64 4294967295)
  %236 = mul nuw <4 x i64> %235, splat (i64 2654435761)
  %237 = mul <4 x i64> %234, splat (i64 -7046029290881679360)
  %238 = add <4 x i64> %236, %237
  %239 = lshr <4 x i64> %230, splat (i64 47)
  %240 = xor <4 x i64> %210, %239
  %241 = xor <4 x i64> %240, %230
  %242 = lshr <4 x i64> %241, splat (i64 32)
  %243 = and <4 x i64> %241, splat (i64 4294967295)
  %244 = mul nuw <4 x i64> %243, splat (i64 2654435761)
  %245 = mul <4 x i64> %242, splat (i64 -7046029290881679360)
  %246 = add <4 x i64> %244, %245
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %248 = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %248, i32 0, i32 3, i32 1)
  %249 = load <4 x i64>, ptr %247, align 64
  %250 = load <4 x i64>, ptr %1, align 1
  %251 = xor <4 x i64> %250, %249
  %252 = lshr <4 x i64> %251, splat (i64 32)
  %253 = and <4 x i64> %251, splat (i64 4294967295)
  %254 = mul nuw <4 x i64> %253, %252
  %255 = shufflevector <4 x i64> %249, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %256 = add <4 x i64> %238, %255
  %257 = add <4 x i64> %256, %254
  %258 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %259 = load <4 x i64>, ptr %258, align 32
  %260 = xor <4 x i64> %120, %259
  %261 = lshr <4 x i64> %260, splat (i64 32)
  %262 = and <4 x i64> %260, splat (i64 4294967295)
  %263 = mul nuw <4 x i64> %262, %261
  %264 = shufflevector <4 x i64> %259, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %265 = add <4 x i64> %246, %264
  %266 = add <4 x i64> %265, %263
  %267 = getelementptr inbounds nuw i8, ptr %3, i64 412
  %268 = load <4 x i64>, ptr %267, align 4
  %269 = getelementptr inbounds nuw i8, ptr %3, i64 380
  %270 = load <4 x i64>, ptr %269, align 4
  %271 = getelementptr inbounds nuw i8, ptr %1, i64 65
  %272 = load <4 x i64>, ptr %271, align 1
  %273 = xor <4 x i64> %272, %270
  %274 = lshr <4 x i64> %273, splat (i64 32)
  %275 = and <4 x i64> %273, splat (i64 4294967295)
  %276 = mul nuw <4 x i64> %275, %274
  %277 = shufflevector <4 x i64> %270, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %278 = add <4 x i64> %257, %277
  %279 = add <4 x i64> %278, %276
  %280 = getelementptr inbounds nuw i8, ptr %1, i64 97
  %281 = load <4 x i64>, ptr %280, align 1
  %282 = xor <4 x i64> %281, %268
  %283 = lshr <4 x i64> %282, splat (i64 32)
  %284 = and <4 x i64> %282, splat (i64 4294967295)
  %285 = mul nuw <4 x i64> %284, %283
  %286 = shufflevector <4 x i64> %268, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %287 = add <4 x i64> %266, %286
  %288 = add <4 x i64> %287, %285
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %290 = extractelement <4 x i64> %279, i64 0
  %291 = extractelement <4 x i64> %279, i64 1
  %292 = load i64, ptr %289, align 1
  %293 = getelementptr i8, ptr %1, i64 19
  %294 = load i64, ptr %293, align 1
  %295 = xor i64 %290, %292
  %296 = xor i64 %294, %291
  %297 = zext i64 %295 to i128
  %298 = zext i64 %296 to i128
  %299 = mul nuw i128 %298, %297
  %300 = lshr i128 %299, 64
  %301 = xor i128 %300, %299
  %302 = trunc i128 %301 to i64
  %303 = add i64 %302, -6939834363949496028
  %304 = getelementptr inbounds nuw i8, ptr %1, i64 27
  %305 = extractelement <4 x i64> %279, i64 2
  %306 = extractelement <4 x i64> %279, i64 3
  %307 = load i64, ptr %304, align 1
  %308 = getelementptr i8, ptr %1, i64 35
  %309 = load i64, ptr %308, align 1
  %310 = xor i64 %307, %305
  %311 = xor i64 %309, %306
  %312 = zext i64 %310 to i128
  %313 = zext i64 %311 to i128
  %314 = mul nuw i128 %313, %312
  %315 = lshr i128 %314, 64
  %316 = xor i128 %315, %314
  %317 = trunc i128 %316 to i64
  %318 = add i64 %303, %317
  %319 = getelementptr inbounds nuw i8, ptr %1, i64 43
  %320 = extractelement <4 x i64> %288, i64 0
  %321 = extractelement <4 x i64> %288, i64 1
  %322 = load i64, ptr %319, align 1
  %323 = getelementptr i8, ptr %1, i64 51
  %324 = load i64, ptr %323, align 1
  %325 = xor i64 %322, %320
  %326 = xor i64 %324, %321
  %327 = zext i64 %325 to i128
  %328 = zext i64 %326 to i128
  %329 = mul nuw i128 %328, %327
  %330 = lshr i128 %329, 64
  %331 = xor i128 %330, %329
  %332 = trunc i128 %331 to i64
  %333 = add i64 %318, %332
  %334 = getelementptr inbounds nuw i8, ptr %1, i64 59
  %335 = extractelement <4 x i64> %288, i64 2
  %336 = extractelement <4 x i64> %288, i64 3
  %337 = load i64, ptr %334, align 1
  %338 = bitcast <4 x i64> %272 to i256
  %339 = lshr i256 %338, 16
  %340 = trunc i256 %339 to i64
  %341 = xor i64 %337, %335
  %342 = xor i64 %336, %340
  %343 = zext i64 %341 to i128
  %344 = zext i64 %342 to i128
  %345 = mul nuw i128 %344, %343
  %346 = lshr i128 %345, 64
  %347 = xor i128 %346, %345
  %348 = trunc i128 %347 to i64
  %349 = add i64 %333, %348
  %350 = lshr i64 %349, 37
  %351 = xor i64 %350, %349
  %352 = mul i64 %351, 1609587791953885689
  %353 = lshr i64 %352, 32
  %354 = xor i64 %353, %352
  br label %355

355:                                              ; preds = %2, %6
  %356 = phi i64 [ %354, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #7
  ret i64 %356
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

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!140 = !{!141, !139}
!141 = distinct !{!141, !142, !"XXH3_scrambleAcc_avx2: argument 1"}
!142 = distinct !{!142, !"XXH3_scrambleAcc_avx2"}
!143 = !{!144, !145, !146, !136}
!144 = distinct !{!144, !142, !"XXH3_scrambleAcc_avx2: argument 0"}
!145 = distinct !{!145, !137, !"XXH3_consumeStripes: argument 0"}
!146 = distinct !{!146, !137, !"XXH3_consumeStripes: argument 1"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"XXH3_accumulate_avx2: argument 1"}
!149 = distinct !{!149, !"XXH3_accumulate_avx2"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"XXH3_accumulate_avx2: argument 2"}
!152 = !{!151, !146, !139}
!153 = !{!154}
!154 = distinct !{!154, !155, !"XXH3_accumulate_512_avx2: argument 1"}
!155 = distinct !{!155, !"XXH3_accumulate_512_avx2"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"XXH3_accumulate_512_avx2: argument 2"}
!158 = !{!154, !148, !136}
!159 = !{!160, !157, !161, !151, !145, !146, !139}
!160 = distinct !{!160, !155, !"XXH3_accumulate_512_avx2: argument 0"}
!161 = distinct !{!161, !149, !"XXH3_accumulate_avx2: argument 0"}
!162 = !{!157, !151, !139}
!163 = !{!160, !154, !161, !148, !145, !146, !136}
!164 = !{!165}
!165 = distinct !{!165, !166, !"XXH3_accumulate_avx2: argument 1"}
!166 = distinct !{!166, !"XXH3_accumulate_avx2"}
!167 = !{!168}
!168 = distinct !{!168, !166, !"XXH3_accumulate_avx2: argument 2"}
!169 = !{!168, !146, !139}
!170 = !{!171}
!171 = distinct !{!171, !172, !"XXH3_accumulate_512_avx2: argument 1"}
!172 = distinct !{!172, !"XXH3_accumulate_512_avx2"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"XXH3_accumulate_512_avx2: argument 2"}
!175 = !{!171, !165, !136}
!176 = !{!177, !174, !178, !168, !145, !146, !139}
!177 = distinct !{!177, !172, !"XXH3_accumulate_512_avx2: argument 0"}
!178 = distinct !{!178, !166, !"XXH3_accumulate_avx2: argument 0"}
!179 = !{!174, !168, !139}
!180 = !{!177, !171, !178, !165, !145, !146, !136}
!181 = !{!182}
!182 = distinct !{!182, !183, !"XXH3_accumulate_512_avx2: argument 1"}
!183 = distinct !{!183, !"XXH3_accumulate_512_avx2"}
!184 = !{!185, !186}
!185 = distinct !{!185, !183, !"XXH3_accumulate_512_avx2: argument 0"}
!186 = distinct !{!186, !183, !"XXH3_accumulate_512_avx2: argument 2"}
!187 = !{!186}
!188 = !{!185, !182}
!189 = !{!190}
!190 = distinct !{!190, !191, !"XXH3_mergeAccs: argument 1"}
!191 = distinct !{!191, !"XXH3_mergeAccs"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"XXH3_mergeAccs: argument 0"}
