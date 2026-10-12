; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/5ab5d5fb/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/5ab5d5fb/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @compare_2x2(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [8 x <16 x i8>], align 16
  %5 = alloca [8 x <16 x i8>], align 16



  %6 = getelementptr inbounds nuw i8, ptr %1, i64 210
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 96
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 112
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 338
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 296
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 402
  br label %121

27:                                               ; preds = %208
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 292
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 260
  %30 = tail call { <8 x i16>, <8 x i16> } @llvm.aarch64.neon.ld1x2.v8i16.p0(ptr nonnull %29)
  %31 = extractvalue { <8 x i16>, <8 x i16> } %30, 0
  %32 = extractvalue { <8 x i16>, <8 x i16> } %30, 1
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 552
  %34 = tail call { <8 x i16>, <8 x i16> } @llvm.aarch64.neon.ld1x2.v8i16.p0(ptr nonnull %33)
  %35 = extractvalue { <8 x i16>, <8 x i16> } %34, 0
  %36 = extractvalue { <8 x i16>, <8 x i16> } %34, 1
  %37 = load <16 x i8>, ptr %25, align 2
  %38 = shufflevector <16 x i8> %37, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %39 = sext <8 x i8> %38 to <8 x i16>
  %40 = shufflevector <16 x i8> %37, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %41 = sext <8 x i8> %40 to <8 x i16>
  %42 = load <16 x i8>, ptr %26, align 2
  %43 = shufflevector <16 x i8> %42, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %44 = sext <8 x i8> %43 to <8 x i16>
  %45 = shufflevector <16 x i8> %42, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %46 = sext <8 x i8> %45 to <8 x i16>
  %47 = shufflevector <8 x i16> %31, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %48 = shufflevector <8 x i16> %39, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %49 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %47, <4 x i16> %48)
  %50 = shufflevector <8 x i16> %31, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %51 = shufflevector <8 x i16> %39, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %52 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %50, <4 x i16> %51)
  %53 = shufflevector <8 x i16> %32, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %54 = shufflevector <8 x i16> %41, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %55 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %53, <4 x i16> %54)
  %56 = shufflevector <8 x i16> %32, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %57 = shufflevector <8 x i16> %41, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %58 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %56, <4 x i16> %57)
  %59 = add <4 x i32> %52, %49
  %60 = add <4 x i32> %59, %55
  %61 = add <4 x i32> %60, %58
  %62 = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32> %61)
  %63 = insertelement <4 x i32> poison, i32 %62, i64 0
  %64 = shufflevector <8 x i16> %35, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %65 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %64, <4 x i16> %48)
  %66 = shufflevector <8 x i16> %35, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %67 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %66, <4 x i16> %51)
  %68 = shufflevector <8 x i16> %36, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %69 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %68, <4 x i16> %54)
  %70 = shufflevector <8 x i16> %36, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %71 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %70, <4 x i16> %57)
  %72 = add <4 x i32> %67, %65
  %73 = add <4 x i32> %72, %69
  %74 = add <4 x i32> %73, %71
  %75 = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32> %74)
  %76 = insertelement <4 x i32> %63, i32 %75, i64 1
  %77 = shufflevector <8 x i16> %44, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %78 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %47, <4 x i16> %77)
  %79 = shufflevector <8 x i16> %44, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %80 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %50, <4 x i16> %79)
  %81 = shufflevector <8 x i16> %46, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %82 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %53, <4 x i16> %81)
  %83 = shufflevector <8 x i16> %46, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %84 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %56, <4 x i16> %83)
  %85 = add <4 x i32> %80, %78
  %86 = add <4 x i32> %85, %82
  %87 = add <4 x i32> %86, %84
  %88 = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32> %87)
  %89 = insertelement <4 x i32> %76, i32 %88, i64 2
  %90 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %64, <4 x i16> %77)
  %91 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %66, <4 x i16> %79)
  %92 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %68, <4 x i16> %81)
  %93 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %70, <4 x i16> %83)
  %94 = add <4 x i32> %91, %90
  %95 = add <4 x i32> %94, %92
  %96 = add <4 x i32> %95, %93
  %97 = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32> %96)
  %98 = insertelement <4 x i32> %89, i32 %97, i64 3
  %99 = shl <4 x i32> %98, splat (i32 5)
  %100 = getelementptr inbounds nuw i8, ptr %1, i64 208
  %101 = load half, ptr %100, align 2
  %102 = load float, ptr %2, align 4
  %103 = load float, ptr %28, align 4
  %104 = getelementptr inbounds nuw i8, ptr %1, i64 418
  %105 = load half, ptr %104, align 2
  %106 = insertelement <2 x half> poison, half %101, i64 0
  %107 = insertelement <2 x half> %106, half %105, i64 1
  %108 = fpext <2 x half> %107 to <2 x float>
  %109 = shufflevector <2 x float> %108, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %110 = insertelement <4 x float> poison, float %102, i64 0
  %111 = insertelement <4 x float> %110, float %103, i64 1
  %112 = shufflevector <4 x float> %111, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %113 = fmul <4 x float> %112, %109
  %114 = sub <4 x i32> %247, %99
  %115 = sitofp <4 x i32> %114 to <4 x float>
  %116 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %115, <4 x float> %113, <4 x float> zeroinitializer)
  %117 = shufflevector <4 x float> %116, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %118 = shufflevector <4 x float> %117, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %118, ptr %0, align 4
  %119 = shufflevector <4 x float> %117, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %119, ptr %120, align 4
  ret void

121:                                              ; preds = %3, %208
  %122 = phi i1 [ true, %3 ], [ false, %208 ]
  %123 = phi i64 [ 0, %3 ], [ 8, %208 ]
  %124 = phi ptr [ %1, %3 ], [ %211, %208 ]
  %125 = phi ptr [ %6, %3 ], [ %213, %208 ]
  %126 = phi ptr [ %21, %3 ], [ %210, %208 ]
  %127 = phi ptr [ %22, %3 ], [ %212, %208 ]
  %128 = phi ptr [ %23, %3 ], [ %207, %208 ]
  %129 = phi ptr [ %24, %3 ], [ %209, %208 ]
  %130 = phi <4 x i32> [ zeroinitializer, %3 ], [ %247, %208 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #6
  %131 = tail call { <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x2.v16i8.p0(ptr nonnull %126)
  %132 = extractvalue { <16 x i8>, <16 x i8> } %131, 0
  %133 = extractvalue { <16 x i8>, <16 x i8> } %131, 1
  %134 = tail call { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x4.v16i8.p0(ptr %124)
  %135 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %134, 0
  %136 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %134, 1
  %137 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %134, 2
  %138 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %134, 3
  %139 = shl <16 x i8> %132, splat (i8 4)
  %140 = and <16 x i8> %139, splat (i8 48)
  %141 = shl <16 x i8> %133, splat (i8 4)
  %142 = and <16 x i8> %141, splat (i8 48)
  %143 = shl <16 x i8> %132, splat (i8 2)
  %144 = and <16 x i8> %143, splat (i8 48)
  %145 = shl <16 x i8> %133, splat (i8 2)
  %146 = and <16 x i8> %145, splat (i8 48)
  %147 = and <16 x i8> %135, splat (i8 15)
  %148 = or disjoint <16 x i8> %147, %140
  store <16 x i8> %148, ptr %4, align 16
  %149 = and <16 x i8> %136, splat (i8 15)
  %150 = or disjoint <16 x i8> %149, %142
  store <16 x i8> %150, ptr %7, align 16
  %151 = and <16 x i8> %137, splat (i8 15)
  %152 = or disjoint <16 x i8> %151, %144
  store <16 x i8> %152, ptr %8, align 16
  %153 = and <16 x i8> %138, splat (i8 15)
  %154 = or disjoint <16 x i8> %153, %146
  store <16 x i8> %154, ptr %9, align 16
  %155 = and <16 x i8> %132, splat (i8 48)
  %156 = and <16 x i8> %133, splat (i8 48)
  %157 = lshr <16 x i8> %132, splat (i8 2)
  %158 = and <16 x i8> %157, splat (i8 48)
  %159 = lshr <16 x i8> %133, splat (i8 2)
  %160 = and <16 x i8> %159, splat (i8 48)
  %161 = lshr <16 x i8> %135, splat (i8 4)
  %162 = or disjoint <16 x i8> %161, %155
  store <16 x i8> %162, ptr %10, align 16
  %163 = lshr <16 x i8> %136, splat (i8 4)
  %164 = or disjoint <16 x i8> %163, %156
  store <16 x i8> %164, ptr %11, align 16
  %165 = lshr <16 x i8> %137, splat (i8 4)
  %166 = or disjoint <16 x i8> %165, %158
  store <16 x i8> %166, ptr %12, align 16
  %167 = lshr <16 x i8> %138, splat (i8 4)
  %168 = or disjoint <16 x i8> %167, %160
  store <16 x i8> %168, ptr %13, align 16
  %169 = tail call { <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x2.v16i8.p0(ptr nonnull %127)
  %170 = extractvalue { <16 x i8>, <16 x i8> } %169, 0
  %171 = extractvalue { <16 x i8>, <16 x i8> } %169, 1
  %172 = tail call { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x4.v16i8.p0(ptr nonnull %125)
  %173 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %172, 0
  %174 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %172, 1
  %175 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %172, 2
  %176 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %172, 3
  %177 = shl <16 x i8> %170, splat (i8 4)
  %178 = and <16 x i8> %177, splat (i8 48)
  %179 = shl <16 x i8> %171, splat (i8 4)
  %180 = and <16 x i8> %179, splat (i8 48)
  %181 = shl <16 x i8> %170, splat (i8 2)
  %182 = and <16 x i8> %181, splat (i8 48)
  %183 = shl <16 x i8> %171, splat (i8 2)
  %184 = and <16 x i8> %183, splat (i8 48)
  %185 = and <16 x i8> %173, splat (i8 15)
  %186 = or disjoint <16 x i8> %185, %178
  store <16 x i8> %186, ptr %5, align 16
  %187 = and <16 x i8> %174, splat (i8 15)
  %188 = or disjoint <16 x i8> %187, %180
  store <16 x i8> %188, ptr %14, align 16
  %189 = and <16 x i8> %175, splat (i8 15)
  %190 = or disjoint <16 x i8> %189, %182
  store <16 x i8> %190, ptr %15, align 16
  %191 = and <16 x i8> %176, splat (i8 15)
  %192 = or disjoint <16 x i8> %191, %184
  store <16 x i8> %192, ptr %16, align 16
  %193 = and <16 x i8> %170, splat (i8 48)
  %194 = and <16 x i8> %171, splat (i8 48)
  %195 = lshr <16 x i8> %170, splat (i8 2)
  %196 = and <16 x i8> %195, splat (i8 48)
  %197 = lshr <16 x i8> %171, splat (i8 2)
  %198 = and <16 x i8> %197, splat (i8 48)
  %199 = lshr <16 x i8> %173, splat (i8 4)
  %200 = or disjoint <16 x i8> %199, %193
  store <16 x i8> %200, ptr %17, align 16
  %201 = lshr <16 x i8> %174, splat (i8 4)
  %202 = or disjoint <16 x i8> %201, %194
  store <16 x i8> %202, ptr %18, align 16
  %203 = lshr <16 x i8> %175, splat (i8 4)
  %204 = or disjoint <16 x i8> %203, %196
  store <16 x i8> %204, ptr %19, align 16
  %205 = lshr <16 x i8> %176, splat (i8 4)
  %206 = or disjoint <16 x i8> %205, %198
  store <16 x i8> %206, ptr %20, align 16
  %207 = getelementptr i8, ptr %128, i64 128
  br label %214

208:                                              ; preds = %214
  %209 = getelementptr i8, ptr %129, i64 128
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  %210 = getelementptr inbounds nuw i8, ptr %126, i64 32
  %211 = getelementptr inbounds nuw i8, ptr %124, i64 64
  %212 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %213 = getelementptr inbounds nuw i8, ptr %125, i64 64
  br i1 %122, label %121, label %27

214:                                              ; preds = %121, %214
  %215 = phi i64 [ 0, %121 ], [ %248, %214 ]
  %216 = phi ptr [ %128, %121 ], [ %222, %214 ]
  %217 = phi ptr [ %129, %121 ], [ %223, %214 ]
  %218 = phi <4 x i32> [ %130, %121 ], [ %247, %214 ]
  %219 = add nuw nsw i64 %215, %123
  %220 = load <2 x i64>, ptr %216, align 1
  %221 = load <2 x i64>, ptr %217, align 1
  %222 = getelementptr inbounds nuw i8, ptr %216, i64 16
  %223 = getelementptr inbounds nuw i8, ptr %217, i64 16
  %224 = getelementptr inbounds nuw [16 x i8], ptr %25, i64 0, i64 %219
  %225 = load i8, ptr %224, align 1
  %226 = getelementptr inbounds nuw [16 x i8], ptr %26, i64 0, i64 %219
  %227 = load i8, ptr %226, align 1
  %228 = insertelement <2 x i8> poison, i8 %225, i64 0
  %229 = insertelement <2 x i8> %228, i8 %227, i64 1
  %230 = shufflevector <2 x i8> %229, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %231 = sext <4 x i8> %230 to <4 x i32>
  %232 = getelementptr inbounds nuw [8 x <16 x i8>], ptr %4, i64 0, i64 %215
  %233 = load <2 x i64>, ptr %232, align 16
  %234 = getelementptr inbounds nuw [8 x <16 x i8>], ptr %5, i64 0, i64 %215
  %235 = load <2 x i64>, ptr %234, align 16
  %236 = shufflevector <2 x i64> %233, <2 x i64> %235, <2 x i32> <i32 0, i32 2>
  %237 = bitcast <2 x i64> %236 to <16 x i8>
  %238 = shufflevector <2 x i64> %233, <2 x i64> %235, <2 x i32> <i32 1, i32 3>
  %239 = bitcast <2 x i64> %238 to <16 x i8>
  %240 = shufflevector <2 x i64> %220, <2 x i64> %221, <2 x i32> <i32 0, i32 2>
  %241 = bitcast <2 x i64> %240 to <16 x i8>
  %242 = shufflevector <2 x i64> %220, <2 x i64> %221, <2 x i32> <i32 1, i32 3>
  %243 = bitcast <2 x i64> %242 to <16 x i8>
  %244 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> zeroinitializer, <16 x i8> %237, <16 x i8> %241)
  %245 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %244, <16 x i8> %239, <16 x i8> %243)
  %246 = mul <4 x i32> %245, %231
  %247 = add <4 x i32> %246, %218
  %248 = add nuw nsw i64 %215, 1
  %249 = icmp eq i64 %248, 8
  br i1 %249, label %208, label %214
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr ) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare { <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x2.v16i8.p0(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr ) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x4.v16i8.p0(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare { <8 x i16>, <8 x i16> } @llvm.aarch64.neon.ld1x2.v8i16.p0(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32>, <16 x i8>, <16 x i8>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16>, <4 x i16>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+bf16,+bti,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+i8mm,+jsconv,+lse,+neon,+pauth,+predres,+ras,+rcpc,+rdm,+sb,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8.6a,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"ggml_vec_dot_q6_K_q8_K: argument 0"}
!7 = distinct !{!7, !"ggml_vec_dot_q6_K_q8_K"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"ggml_vec_dot_q6_K_q8_K: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !7, !"ggml_vec_dot_q6_K_q8_K: argument 2"}
!12 = !{!6, !9}
!13 = !{!6, !11}
!14 = !{!15, !18, i64 208}
!15 = !{!"", !16, i64 0, !16, i64 128, !16, i64 192, !18, i64 208}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !{!"short", !16, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"", !21, i64 0, !16, i64 4, !16, i64 260}
!21 = !{!"float", !16, i64 0}
!22 = !{!9, !11}
!23 = !{!6, !9, !11}
!24 = !{!16, !16, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
