; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/54a2c7a8/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/54a2c7a8/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @compare_2x2(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [8 x i8], align 4
  %5 = alloca [8 x i8], align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 296
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6, !noalias !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6, !noalias !12
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %13 = load i32, ptr %12, align 2, !alias.scope !8, !noalias !13
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load i32, ptr %14, align 2, !alias.scope !8, !noalias !13
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %17 = load i32, ptr %16, align 2, !alias.scope !8, !noalias !13
  %18 = and i32 %13, 1061109567
  %19 = and i32 %17, 252645135
  %20 = lshr i32 %13, 2
  %21 = and i32 %20, 808464432
  %22 = or disjoint i32 %19, %21
  store i32 %18, ptr %4, align 4, !noalias !12
  store i32 %22, ptr %6, align 4, !noalias !12
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 148
  %24 = load i32, ptr %23, align 2, !alias.scope !8, !noalias !13
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %26 = load i32, ptr %25, align 2, !alias.scope !8, !noalias !13
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 156
  %28 = load i32, ptr %27, align 2, !alias.scope !8, !noalias !13
  %29 = and i32 %24, 1061109567
  %30 = and i32 %28, 252645135
  %31 = lshr i32 %24, 2
  %32 = and i32 %31, 808464432
  %33 = or disjoint i32 %30, %32
  store i32 %29, ptr %5, align 4, !noalias !12
  store i32 %33, ptr %7, align 4, !noalias !12
  br label %125

34:                                               ; preds = %125
  %35 = and i32 %26, 1061109567
  %36 = insertelement <2 x i32> poison, i32 %35, i64 0
  %37 = lshr i32 %28, 4
  %38 = and i32 %37, 252645135
  %39 = lshr i32 %26, 2
  %40 = and i32 %39, 808464432
  %41 = or disjoint i32 %38, %40
  %42 = insertelement <2 x i32> %36, i32 %41, i64 1
  %43 = bitcast <2 x i32> %42 to <8 x i8>
  %44 = zext <8 x i8> %43 to <8 x i16>
  %45 = and i32 %15, 1061109567
  %46 = insertelement <2 x i32> poison, i32 %45, i64 0
  %47 = lshr i32 %17, 4
  %48 = and i32 %47, 252645135
  %49 = lshr i32 %15, 2
  %50 = and i32 %49, 808464432
  %51 = or disjoint i32 %48, %50
  %52 = insertelement <2 x i32> %46, i32 %51, i64 1
  %53 = bitcast <2 x i32> %52 to <8 x i8>
  %54 = zext <8 x i8> %53 to <8 x i16>
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 292
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 260
  %58 = load <8 x i16>, ptr %57, align 4, !alias.scope !10, !noalias !14
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 276
  %60 = load <8 x i16>, ptr %59, align 2, !alias.scope !10, !noalias !14
  %61 = tail call <8 x i16> @llvm.aarch64.neon.addp.v8i16(<8 x i16> %58, <8 x i16> %60)
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 552
  %63 = load <8 x i16>, ptr %62, align 4, !alias.scope !10, !noalias !14
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 568
  %65 = load <8 x i16>, ptr %64, align 2, !alias.scope !10, !noalias !14
  %66 = tail call <8 x i16> @llvm.aarch64.neon.addp.v8i16(<8 x i16> %63, <8 x i16> %65)
  %67 = shufflevector <8 x i16> %61, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %68 = shufflevector <8 x i16> %54, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %69 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %67, <4 x i16> %68)
  %70 = shufflevector <8 x i16> %61, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %71 = shufflevector <8 x i16> %54, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %72 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %70, <4 x i16> %71)
  %73 = add <4 x i32> %72, %69
  %74 = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32> %73)
  %75 = insertelement <4 x i32> poison, i32 %74, i64 0
  %76 = shufflevector <8 x i16> %66, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %77 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %76, <4 x i16> %68)
  %78 = shufflevector <8 x i16> %66, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %79 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %78, <4 x i16> %71)
  %80 = add <4 x i32> %79, %77
  %81 = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32> %80)
  %82 = insertelement <4 x i32> %75, i32 %81, i64 1
  %83 = shufflevector <8 x i16> %44, <8 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %84 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %67, <4 x i16> %83)
  %85 = shufflevector <8 x i16> %44, <8 x i16> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %86 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %70, <4 x i16> %85)
  %87 = add <4 x i32> %86, %84
  %88 = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32> %87)
  %89 = insertelement <4 x i32> %82, i32 %88, i64 2
  %90 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %76, <4 x i16> %83)
  %91 = tail call <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16> %78, <4 x i16> %85)
  %92 = add <4 x i32> %91, %90
  %93 = tail call i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32> %92)
  %94 = insertelement <4 x i32> %89, i32 %93, i64 3
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %96 = load half, ptr %95, align 2, !tbaa !15, !alias.scope !8, !noalias !13
  %97 = load float, ptr %2, align 4, !tbaa !20, !alias.scope !10, !noalias !14
  %98 = load float, ptr %56, align 4, !tbaa !20, !alias.scope !10, !noalias !14
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 146
  %100 = load half, ptr %99, align 2, !tbaa !15, !alias.scope !8, !noalias !13
  %101 = insertelement <2 x half> poison, half %96, i64 0
  %102 = insertelement <2 x half> %101, half %100, i64 1
  %103 = fpext <2 x half> %102 to <2 x float>
  %104 = shufflevector <2 x float> %103, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %105 = insertelement <4 x float> poison, float %97, i64 0
  %106 = insertelement <4 x float> %105, float %98, i64 1
  %107 = shufflevector <4 x float> %106, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %108 = fmul <4 x float> %107, %104
  %109 = sitofp <4 x i32> %94 to <4 x float>
  %110 = fneg <4 x float> %109
  %111 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %110, <4 x float> %108, <4 x float> zeroinitializer)
  %112 = load half, ptr %1, align 2, !tbaa !23, !alias.scope !8, !noalias !13
  %113 = load half, ptr %55, align 2, !tbaa !23, !alias.scope !8, !noalias !13
  %114 = insertelement <2 x half> poison, half %112, i64 0
  %115 = insertelement <2 x half> %114, half %113, i64 1
  %116 = fpext <2 x half> %115 to <2 x float>
  %117 = shufflevector <2 x float> %116, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %118 = fmul <4 x float> %107, %117
  %119 = sitofp <4 x i32> %227 to <4 x float>
  %120 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %119, <4 x float> %118, <4 x float> %111)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6, !noalias !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6, !noalias !12
  %121 = shufflevector <4 x float> %120, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %122 = shufflevector <4 x float> %121, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %122, ptr %0, align 4, !alias.scope !5, !noalias !24
  %123 = shufflevector <4 x float> %121, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %123, ptr %124, align 4, !alias.scope !5, !noalias !24
  ret void

125:                                              ; preds = %3, %125
  %126 = phi i64 [ 0, %3 ], [ %228, %125 ]
  %127 = phi ptr [ %8, %3 ], [ %229, %125 ]
  %128 = phi ptr [ %9, %3 ], [ %230, %125 ]
  %129 = phi ptr [ %10, %3 ], [ %231, %125 ]
  %130 = phi ptr [ %11, %3 ], [ %232, %125 ]
  %131 = phi <4 x i32> [ zeroinitializer, %3 ], [ %227, %125 ]
  %132 = tail call { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x4.v16i8.p0(ptr nonnull %129), !alias.scope !10, !noalias !14
  %133 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %132, 0
  %134 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %132, 1
  %135 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %132, 2
  %136 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %132, 3
  %137 = bitcast <16 x i8> %133 to <2 x i64>
  %138 = bitcast <16 x i8> %134 to <2 x i64>
  %139 = bitcast <16 x i8> %135 to <2 x i64>
  %140 = bitcast <16 x i8> %136 to <2 x i64>
  %141 = tail call { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x4.v16i8.p0(ptr nonnull %130), !alias.scope !10, !noalias !14
  %142 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %141, 0
  %143 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %141, 1
  %144 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %141, 2
  %145 = extractvalue { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } %141, 3
  %146 = bitcast <16 x i8> %142 to <2 x i64>
  %147 = bitcast <16 x i8> %143 to <2 x i64>
  %148 = bitcast <16 x i8> %144 to <2 x i64>
  %149 = bitcast <16 x i8> %145 to <2 x i64>
  %150 = tail call { <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x2.v16i8.p0(ptr nonnull %127), !alias.scope !8, !noalias !13
  %151 = extractvalue { <16 x i8>, <16 x i8> } %150, 0
  %152 = extractvalue { <16 x i8>, <16 x i8> } %150, 1
  %153 = bitcast <16 x i8> %151 to <2 x i64>
  %154 = and <2 x i64> %153, splat (i64 1085102592571150095)
  %155 = bitcast <16 x i8> %152 to <2 x i64>
  %156 = and <2 x i64> %155, splat (i64 1085102592571150095)
  %157 = lshr <16 x i8> %151, splat (i8 4)
  %158 = bitcast <16 x i8> %157 to <2 x i64>
  %159 = lshr <16 x i8> %152, splat (i8 4)
  %160 = bitcast <16 x i8> %159 to <2 x i64>
  %161 = tail call { <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x2.v16i8.p0(ptr nonnull %128), !alias.scope !8, !noalias !13
  %162 = extractvalue { <16 x i8>, <16 x i8> } %161, 0
  %163 = extractvalue { <16 x i8>, <16 x i8> } %161, 1
  %164 = bitcast <16 x i8> %162 to <2 x i64>
  %165 = and <2 x i64> %164, splat (i64 1085102592571150095)
  %166 = bitcast <16 x i8> %163 to <2 x i64>
  %167 = and <2 x i64> %166, splat (i64 1085102592571150095)
  %168 = lshr <16 x i8> %162, splat (i8 4)
  %169 = bitcast <16 x i8> %168 to <2 x i64>
  %170 = lshr <16 x i8> %163, splat (i8 4)
  %171 = bitcast <16 x i8> %170 to <2 x i64>
  %172 = shl nuw nsw i64 %126, 1
  %173 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 0, i64 %172
  %174 = load i8, ptr %173, align 2, !tbaa !25, !noalias !12
  %175 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 0, i64 %172
  %176 = load i8, ptr %175, align 2, !tbaa !25, !noalias !12
  %177 = insertelement <2 x i8> poison, i8 %174, i64 0
  %178 = insertelement <2 x i8> %177, i8 %176, i64 1
  %179 = shufflevector <2 x i8> %178, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %180 = shufflevector <2 x i64> %154, <2 x i64> %165, <2 x i32> <i32 0, i32 2>
  %181 = bitcast <2 x i64> %180 to <16 x i8>
  %182 = shufflevector <2 x i64> %154, <2 x i64> %165, <2 x i32> <i32 1, i32 3>
  %183 = bitcast <2 x i64> %182 to <16 x i8>
  %184 = shufflevector <16 x i8> %133, <16 x i8> %142, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %185 = shufflevector <2 x i64> %137, <2 x i64> %146, <2 x i32> <i32 1, i32 3>
  %186 = bitcast <2 x i64> %185 to <16 x i8>
  %187 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> zeroinitializer, <16 x i8> %181, <16 x i8> %184)
  %188 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %187, <16 x i8> %183, <16 x i8> %186)
  %189 = shufflevector <2 x i64> %156, <2 x i64> %167, <2 x i32> <i32 0, i32 2>
  %190 = bitcast <2 x i64> %189 to <16 x i8>
  %191 = shufflevector <2 x i64> %156, <2 x i64> %167, <2 x i32> <i32 1, i32 3>
  %192 = bitcast <2 x i64> %191 to <16 x i8>
  %193 = shufflevector <16 x i8> %134, <16 x i8> %143, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %194 = shufflevector <2 x i64> %138, <2 x i64> %147, <2 x i32> <i32 1, i32 3>
  %195 = bitcast <2 x i64> %194 to <16 x i8>
  %196 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %188, <16 x i8> %190, <16 x i8> %193)
  %197 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %196, <16 x i8> %192, <16 x i8> %195)
  %198 = sext <4 x i8> %179 to <4 x i32>
  %199 = mul <4 x i32> %197, %198
  %200 = add <4 x i32> %199, %131
  %201 = or disjoint i64 %172, 1
  %202 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !25, !noalias !12
  %204 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 0, i64 %201
  %205 = load i8, ptr %204, align 1, !tbaa !25, !noalias !12
  %206 = insertelement <2 x i8> poison, i8 %203, i64 0
  %207 = insertelement <2 x i8> %206, i8 %205, i64 1
  %208 = shufflevector <2 x i8> %207, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %209 = shufflevector <16 x i8> %157, <16 x i8> %168, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %210 = shufflevector <2 x i64> %158, <2 x i64> %169, <2 x i32> <i32 1, i32 3>
  %211 = bitcast <2 x i64> %210 to <16 x i8>
  %212 = shufflevector <16 x i8> %135, <16 x i8> %144, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %213 = shufflevector <2 x i64> %139, <2 x i64> %148, <2 x i32> <i32 1, i32 3>
  %214 = bitcast <2 x i64> %213 to <16 x i8>
  %215 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> zeroinitializer, <16 x i8> %209, <16 x i8> %212)
  %216 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %215, <16 x i8> %211, <16 x i8> %214)
  %217 = shufflevector <16 x i8> %159, <16 x i8> %170, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %218 = shufflevector <2 x i64> %160, <2 x i64> %171, <2 x i32> <i32 1, i32 3>
  %219 = bitcast <2 x i64> %218 to <16 x i8>
  %220 = shufflevector <16 x i8> %136, <16 x i8> %145, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %221 = shufflevector <2 x i64> %140, <2 x i64> %149, <2 x i32> <i32 1, i32 3>
  %222 = bitcast <2 x i64> %221 to <16 x i8>
  %223 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %216, <16 x i8> %217, <16 x i8> %220)
  %224 = tail call <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32> %223, <16 x i8> %219, <16 x i8> %222)
  %225 = sext <4 x i8> %208 to <4 x i32>
  %226 = mul <4 x i32> %224, %225
  %227 = add <4 x i32> %226, %200
  %228 = add nuw nsw i64 %126, 1
  %229 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %230 = getelementptr inbounds nuw i8, ptr %128, i64 32
  %231 = getelementptr inbounds nuw i8, ptr %129, i64 64
  %232 = getelementptr inbounds nuw i8, ptr %130, i64 64
  %233 = icmp eq i64 %228, 4
  br i1 %233, label %34, label %125, !llvm.loop !26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare { <16 x i8>, <16 x i8>, <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x4.v16i8.p0(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare { <16 x i8>, <16 x i8> } @llvm.aarch64.neon.ld1x2.v16i8.p0(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.aarch64.neon.smmla.v4i32.v16i8(<4 x i32>, <16 x i8>, <16 x i8>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.aarch64.neon.addp.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.aarch64.neon.saddv.i32.v4i32(<4 x i32>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.aarch64.neon.smull.v4i32(<4 x i16>, <4 x i16>) #3

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
!6 = distinct !{!6, !7, !"ggml_vec_dot_q4_K_q8_K: argument 0"}
!7 = distinct !{!7, !"ggml_vec_dot_q4_K_q8_K"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"ggml_vec_dot_q4_K_q8_K: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !7, !"ggml_vec_dot_q4_K_q8_K: argument 2"}
!12 = !{!6, !9, !11}
!13 = !{!6, !11}
!14 = !{!6, !9}
!15 = !{!16, !17, i64 2}
!16 = !{!"", !17, i64 0, !17, i64 2, !18, i64 4, !18, i64 16}
!17 = !{!"short", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !{!21, !22, i64 0}
!21 = !{!"", !22, i64 0, !18, i64 4, !18, i64 260}
!22 = !{!"float", !18, i64 0}
!23 = !{!16, !17, i64 0}
!24 = !{!9, !11}
!25 = !{!18, !18, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
