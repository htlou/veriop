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
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #12
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
  %24 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %18) #13
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
  call fastcc void @XXH_INLINE_XXH3_64bits_update(ptr noundef %4, ptr noundef %0, i64 noundef 200)
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 200
  call fastcc void @XXH_INLINE_XXH3_64bits_update(ptr noundef %4, ptr noundef nonnull %53, i64 noundef 50)
  %54 = load ptr, ptr %50, align 8
  %55 = icmp eq ptr %54, null
  %56 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %57 = select i1 %55, ptr %56, ptr %54
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 528
  %59 = load i64, ptr %58, align 16
  %60 = icmp ugt i64 %59, 240
  br i1 %60, label %61, label %312

61:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %62 = load <4 x i64>, ptr %4, align 64
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %64 = load <4 x i64>, ptr %63, align 32
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 512
  %66 = load i32, ptr %65, align 64
  %67 = icmp ugt i32 %66, 63
  br i1 %67, label %68, label %193

68:                                               ; preds = %61
  %69 = add i32 %66, -1
  %70 = lshr i32 %69, 6
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 520
  %73 = load i64, ptr %72, align 8
  %74 = load i64, ptr %52, align 8
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %76 = load i64, ptr %51, align 32
  call void @llvm.experimental.noalias.scope.decl(metadata !6)
  call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %77 = shl i64 %73, 3
  %78 = getelementptr inbounds nuw i8, ptr %57, i64 %77
  %79 = sub i64 %74, %73
  %80 = icmp ugt i64 %79, %71
  br i1 %80, label %148, label %81

81:                                               ; preds = %68
  %82 = getelementptr inbounds nuw i8, ptr %57, i64 %76
  %83 = load <4 x i64>, ptr %82, align 1, !alias.scope !11, !noalias !14
  %84 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %85 = load <4 x i64>, ptr %84, align 1, !alias.scope !11, !noalias !14
  br label %86

86:                                               ; preds = %125, %81
  %87 = phi <4 x i64> [ %143, %125 ], [ %64, %81 ]
  %88 = phi <4 x i64> [ %135, %125 ], [ %62, %81 ]
  %89 = phi i64 [ %146, %125 ], [ %71, %81 ]
  %90 = phi ptr [ %145, %125 ], [ %75, %81 ]
  %91 = phi ptr [ %57, %125 ], [ %78, %81 ]
  %92 = phi i64 [ %74, %125 ], [ %79, %81 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %86, %94
  %95 = phi <4 x i64> [ %122, %94 ], [ %87, %86 ]
  %96 = phi <4 x i64> [ %111, %94 ], [ %88, %86 ]
  %97 = phi i64 [ %123, %94 ], [ 0, %86 ]
  %98 = shl i64 %97, 6
  %99 = getelementptr inbounds nuw i8, ptr %90, i64 %98
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %100, i32 0, i32 3, i32 1), !noalias !23
  %101 = shl i64 %97, 3
  %102 = getelementptr inbounds nuw i8, ptr %91, i64 %101
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %103 = load <4 x i64>, ptr %99, align 1, !alias.scope !29, !noalias !30
  %104 = load <4 x i64>, ptr %102, align 1, !alias.scope !33, !noalias !34
  %105 = xor <4 x i64> %104, %103
  %106 = lshr <4 x i64> %105, splat (i64 32)
  %107 = and <4 x i64> %105, splat (i64 4294967295)
  %108 = mul nuw <4 x i64> %107, %106
  %109 = shufflevector <4 x i64> %103, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %110 = add <4 x i64> %96, %109
  %111 = add <4 x i64> %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %113 = load <4 x i64>, ptr %112, align 1, !alias.scope !29, !noalias !30
  %114 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %115 = load <4 x i64>, ptr %114, align 1, !alias.scope !33, !noalias !34
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
  %153 = phi ptr [ %78, %68 ], [ %57, %125 ]
  %154 = icmp eq i64 %151, 0
  br i1 %154, label %187, label %155

155:                                              ; preds = %148
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  br label %156

156:                                              ; preds = %156, %155
  %157 = phi <4 x i64> [ %149, %155 ], [ %184, %156 ]
  %158 = phi <4 x i64> [ %150, %155 ], [ %173, %156 ]
  %159 = phi i64 [ 0, %155 ], [ %185, %156 ]
  %160 = shl i64 %159, 6
  %161 = getelementptr inbounds nuw i8, ptr %152, i64 %160
  %162 = getelementptr inbounds nuw i8, ptr %161, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %162, i32 0, i32 3, i32 1), !noalias !43
  %163 = shl i64 %159, 3
  %164 = getelementptr inbounds nuw i8, ptr %153, i64 %163
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %165 = load <4 x i64>, ptr %161, align 1, !alias.scope !49, !noalias !50
  %166 = load <4 x i64>, ptr %164, align 1, !alias.scope !53, !noalias !54
  %167 = xor <4 x i64> %166, %165
  %168 = lshr <4 x i64> %167, splat (i64 32)
  %169 = and <4 x i64> %167, splat (i64 4294967295)
  %170 = mul nuw <4 x i64> %169, %168
  %171 = shufflevector <4 x i64> %165, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %172 = add <4 x i64> %158, %171
  %173 = add <4 x i64> %172, %170
  %174 = getelementptr inbounds nuw i8, ptr %161, i64 32
  %175 = load <4 x i64>, ptr %174, align 1, !alias.scope !49, !noalias !50
  %176 = getelementptr inbounds nuw i8, ptr %164, i64 32
  %177 = load <4 x i64>, ptr %176, align 1, !alias.scope !53, !noalias !54
  %178 = xor <4 x i64> %177, %175
  %179 = lshr <4 x i64> %178, splat (i64 32)
  %180 = and <4 x i64> %178, splat (i64 4294967295)
  %181 = mul nuw <4 x i64> %180, %179
  %182 = shufflevector <4 x i64> %175, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %183 = add <4 x i64> %157, %182
  %184 = add <4 x i64> %183, %181
  %185 = add nuw i64 %159, 1
  %186 = icmp eq i64 %185, %151
  br i1 %186, label %187, label %156

187:                                              ; preds = %156, %148
  %188 = phi <4 x i64> [ %149, %148 ], [ %184, %156 ]
  %189 = phi <4 x i64> [ %150, %148 ], [ %173, %156 ]
  %190 = zext i32 %66 to i64
  %191 = getelementptr inbounds nuw i8, ptr %75, i64 %190
  %192 = getelementptr inbounds i8, ptr %191, i64 -64
  br label %203

193:                                              ; preds = %61
  %194 = sub nuw nsw i32 64, %66
  %195 = zext nneg i32 %194 to i64
  %196 = icmp ne i32 %66, 0
  call void @llvm.assume(i1 %196)
  %197 = getelementptr inbounds nuw i8, ptr %4, i64 256
  %198 = sub nsw i64 0, %195
  %199 = getelementptr inbounds i8, ptr %65, i64 %198
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull readonly align 1 %199, i64 %195, i1 false)
  %200 = getelementptr inbounds nuw i8, ptr %3, i64 %195
  %201 = zext nneg i32 %66 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %200, ptr nonnull readonly align 64 %197, i64 %201, i1 false)
  %202 = load i64, ptr %51, align 32
  br label %203

203:                                              ; preds = %193, %187
  %204 = phi i64 [ %76, %187 ], [ %202, %193 ]
  %205 = phi <4 x i64> [ %188, %187 ], [ %64, %193 ]
  %206 = phi <4 x i64> [ %189, %187 ], [ %62, %193 ]
  %207 = phi ptr [ %192, %187 ], [ %3, %193 ]
  %208 = getelementptr inbounds nuw i8, ptr %57, i64 %204
  %209 = getelementptr inbounds i8, ptr %208, i64 -7
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %210 = load <4 x i64>, ptr %207, align 1, !alias.scope !55, !noalias !60
  %211 = load <4 x i64>, ptr %209, align 1, !alias.scope !58, !noalias !62
  %212 = xor <4 x i64> %211, %210
  %213 = lshr <4 x i64> %212, splat (i64 32)
  %214 = and <4 x i64> %212, splat (i64 4294967295)
  %215 = mul nuw <4 x i64> %214, %213
  %216 = shufflevector <4 x i64> %210, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %217 = add <4 x i64> %206, %216
  %218 = add <4 x i64> %217, %215
  %219 = getelementptr inbounds nuw i8, ptr %207, i64 32
  %220 = load <4 x i64>, ptr %219, align 1, !alias.scope !55, !noalias !60
  %221 = getelementptr inbounds nuw i8, ptr %208, i64 25
  %222 = load <4 x i64>, ptr %221, align 1, !alias.scope !58, !noalias !62
  %223 = xor <4 x i64> %222, %220
  %224 = lshr <4 x i64> %223, splat (i64 32)
  %225 = and <4 x i64> %223, splat (i64 4294967295)
  %226 = mul nuw <4 x i64> %225, %224
  %227 = shufflevector <4 x i64> %220, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %228 = add <4 x i64> %205, %227
  %229 = add <4 x i64> %228, %226
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  %230 = getelementptr inbounds nuw i8, ptr %4, i64 75
  %231 = getelementptr inbounds nuw i8, ptr %54, i64 11
  %232 = select i1 %55, ptr %230, ptr %231
  %233 = mul i64 %59, -7046029288634856825
  %234 = extractelement <4 x i64> %218, i64 0
  %235 = load i64, ptr %232, align 1, !alias.scope !63, !noalias !70
  %236 = xor i64 %234, %235
  %237 = extractelement <4 x i64> %218, i64 1
  %238 = getelementptr inbounds nuw i8, ptr %4, i64 83
  %239 = getelementptr inbounds nuw i8, ptr %54, i64 19
  %240 = select i1 %55, ptr %238, ptr %239
  %241 = load i64, ptr %240, align 1, !alias.scope !63, !noalias !70
  %242 = xor i64 %241, %237
  %243 = zext i64 %236 to i128
  %244 = zext i64 %242 to i128
  %245 = mul nuw i128 %244, %243
  %246 = lshr i128 %245, 64
  %247 = xor i128 %246, %245
  %248 = trunc i128 %247 to i64
  %249 = add i64 %233, %248
  %250 = getelementptr inbounds nuw i8, ptr %4, i64 91
  %251 = getelementptr inbounds nuw i8, ptr %54, i64 27
  %252 = select i1 %55, ptr %250, ptr %251
  %253 = extractelement <4 x i64> %218, i64 2
  %254 = load i64, ptr %252, align 1, !alias.scope !74, !noalias !76
  %255 = xor i64 %254, %253
  %256 = extractelement <4 x i64> %218, i64 3
  %257 = getelementptr inbounds nuw i8, ptr %4, i64 99
  %258 = getelementptr inbounds nuw i8, ptr %54, i64 35
  %259 = select i1 %55, ptr %257, ptr %258
  %260 = load i64, ptr %259, align 1, !alias.scope !74, !noalias !76
  %261 = xor i64 %260, %256
  %262 = zext i64 %255 to i128
  %263 = zext i64 %261 to i128
  %264 = mul nuw i128 %263, %262
  %265 = lshr i128 %264, 64
  %266 = xor i128 %265, %264
  %267 = trunc i128 %266 to i64
  %268 = add i64 %249, %267
  %269 = getelementptr inbounds nuw i8, ptr %4, i64 107
  %270 = getelementptr inbounds nuw i8, ptr %54, i64 43
  %271 = select i1 %55, ptr %269, ptr %270
  %272 = extractelement <4 x i64> %229, i64 0
  %273 = load i64, ptr %271, align 1, !alias.scope !78, !noalias !80
  %274 = xor i64 %273, %272
  %275 = extractelement <4 x i64> %229, i64 1
  %276 = getelementptr inbounds nuw i8, ptr %4, i64 115
  %277 = getelementptr inbounds nuw i8, ptr %54, i64 51
  %278 = select i1 %55, ptr %276, ptr %277
  %279 = load i64, ptr %278, align 1, !alias.scope !78, !noalias !80
  %280 = xor i64 %279, %275
  %281 = zext i64 %274 to i128
  %282 = zext i64 %280 to i128
  %283 = mul nuw i128 %282, %281
  %284 = lshr i128 %283, 64
  %285 = xor i128 %284, %283
  %286 = trunc i128 %285 to i64
  %287 = add i64 %268, %286
  %288 = getelementptr inbounds nuw i8, ptr %4, i64 123
  %289 = getelementptr inbounds nuw i8, ptr %54, i64 59
  %290 = select i1 %55, ptr %288, ptr %289
  %291 = extractelement <4 x i64> %229, i64 2
  %292 = load i64, ptr %290, align 1, !alias.scope !82, !noalias !84
  %293 = xor i64 %292, %291
  %294 = extractelement <4 x i64> %229, i64 3
  %295 = getelementptr inbounds nuw i8, ptr %4, i64 131
  %296 = getelementptr inbounds nuw i8, ptr %54, i64 67
  %297 = select i1 %55, ptr %295, ptr %296
  %298 = load i64, ptr %297, align 1, !alias.scope !82, !noalias !84
  %299 = xor i64 %298, %294
  %300 = zext i64 %293 to i128
  %301 = zext i64 %299 to i128
  %302 = mul nuw i128 %301, %300
  %303 = lshr i128 %302, 64
  %304 = xor i128 %303, %302
  %305 = trunc i128 %304 to i64
  %306 = add i64 %287, %305
  %307 = lshr i64 %306, 37
  %308 = xor i64 %307, %306
  %309 = mul i64 %308, 1609587791953885689
  %310 = lshr i64 %309, 32
  %311 = xor i64 %310, %309
  br label %325

312:                                              ; preds = %48
  %313 = getelementptr inbounds nuw i8, ptr %4, i64 516
  %314 = load i32, ptr %313, align 4
  %315 = icmp eq i32 %314, 0
  %316 = getelementptr inbounds nuw i8, ptr %4, i64 256
  br i1 %315, label %321, label %317

317:                                              ; preds = %312
  %318 = getelementptr inbounds nuw i8, ptr %4, i64 552
  %319 = load i64, ptr %318, align 8
  %320 = call fastcc i64 @XXH3_64bits_internal(ptr noundef nonnull readonly %316, i64 noundef range(i64 0, 241) %59, i64 noundef %319, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  br label %325

321:                                              ; preds = %312
  %322 = load i64, ptr %51, align 32
  %323 = add i64 %322, 64
  %324 = call fastcc i64 @XXH3_64bits_internal(ptr noundef nonnull readonly %316, i64 noundef range(i64 0, 241) %59, i64 noundef 0, ptr noundef nonnull %57, i64 noundef %323)
  br label %325

325:                                              ; preds = %203, %317, %321
  %326 = phi i64 [ %311, %203 ], [ %320, %317 ], [ %324, %321 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #12
  ret i64 %326
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH_INLINE_XXH3_64bits_update(ptr noundef nonnull %0, ptr noundef %1, i64 noundef range(i64 50, 201) %2) unnamed_addr #3 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %4 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %7 = load ptr, ptr %6, align 8, !alias.scope !86, !noalias !89
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %10 = select i1 %8, ptr %9, ptr %7
  %11 = load <4 x i64>, ptr %0, align 64, !alias.scope !86, !noalias !89
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <4 x i64>, ptr %12, align 32, !alias.scope !86, !noalias !89
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %15 = load i64, ptr %14, align 16, !alias.scope !86, !noalias !89
  %16 = add i64 %15, %2
  store i64 %16, ptr %14, align 16, !alias.scope !86, !noalias !89
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %18 = load i32, ptr %17, align 64, !alias.scope !86, !noalias !89
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 range(i64 50, 201) %2, i1 false), !alias.scope !91
  %27 = trunc nuw nsw i64 %2 to i32
  %28 = load i32, ptr %17, align 64, !alias.scope !86, !noalias !89
  %29 = add i32 %28, %27
  store i32 %29, ptr %17, align 64, !alias.scope !86, !noalias !89
  br label %312

30:                                               ; preds = %3
  %31 = icmp eq i32 %18, 0
  br i1 %31, label %159, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %34 = zext nneg i32 %18 to i64
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr nonnull align 1 %1, i64 %21, i1 false), !alias.scope !91
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 %21
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %39 = load i64, ptr %38, align 8, !alias.scope !86, !noalias !89
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %41 = load i64, ptr %40, align 32, !alias.scope !86, !noalias !89
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %42 = load i64, ptr %37, align 8, !alias.scope !99, !noalias !100
  %43 = shl i64 %42, 3
  %44 = getelementptr inbounds nuw i8, ptr %10, i64 %43
  %45 = sub i64 %39, %42
  %46 = icmp ugt i64 %45, 4
  br i1 %46, label %116, label %47

47:                                               ; preds = %32
  %48 = getelementptr inbounds nuw i8, ptr %10, i64 %41
  %49 = load <4 x i64>, ptr %48, align 1, !alias.scope !102, !noalias !105
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 32
  %51 = load <4 x i64>, ptr %50, align 1, !alias.scope !102, !noalias !105
  br label %52

52:                                               ; preds = %91, %47
  %53 = phi <4 x i64> [ %109, %91 ], [ %13, %47 ]
  %54 = phi <4 x i64> [ %101, %91 ], [ %11, %47 ]
  %55 = phi i64 [ %112, %91 ], [ 4, %47 ]
  %56 = phi ptr [ %111, %91 ], [ %33, %47 ]
  %57 = phi ptr [ %10, %91 ], [ %44, %47 ]
  %58 = phi i64 [ %39, %91 ], [ %45, %47 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %91, label %60

60:                                               ; preds = %52, %60
  %61 = phi <4 x i64> [ %88, %60 ], [ %53, %52 ]
  %62 = phi <4 x i64> [ %77, %60 ], [ %54, %52 ]
  %63 = phi i64 [ %89, %60 ], [ 0, %52 ]
  %64 = shl i64 %63, 6
  %65 = getelementptr inbounds nuw i8, ptr %56, i64 %64
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %66, i32 0, i32 3, i32 1), !noalias !112
  %67 = shl i64 %63, 3
  %68 = getelementptr inbounds nuw i8, ptr %57, i64 %67
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %69 = load <4 x i64>, ptr %65, align 1, !alias.scope !118, !noalias !119
  %70 = load <4 x i64>, ptr %68, align 1, !alias.scope !122, !noalias !123
  %71 = xor <4 x i64> %70, %69
  %72 = lshr <4 x i64> %71, splat (i64 32)
  %73 = and <4 x i64> %71, splat (i64 4294967295)
  %74 = mul nuw <4 x i64> %73, %72
  %75 = shufflevector <4 x i64> %69, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %76 = add <4 x i64> %62, %75
  %77 = add <4 x i64> %76, %74
  %78 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %79 = load <4 x i64>, ptr %78, align 1, !alias.scope !118, !noalias !119
  %80 = getelementptr inbounds nuw i8, ptr %68, i64 32
  %81 = load <4 x i64>, ptr %80, align 1, !alias.scope !122, !noalias !123
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
  store i64 0, ptr %37, align 8, !alias.scope !99, !noalias !100
  %115 = icmp eq i64 %112, 0
  br i1 %115, label %156, label %116

116:                                              ; preds = %114, %32
  %117 = phi <4 x i64> [ %13, %32 ], [ %109, %114 ]
  %118 = phi <4 x i64> [ %11, %32 ], [ %101, %114 ]
  %119 = phi ptr [ %44, %32 ], [ %10, %114 ]
  %120 = phi ptr [ %33, %32 ], [ %111, %114 ]
  %121 = phi i64 [ 4, %32 ], [ %112, %114 ]
  %122 = phi i64 [ %42, %32 ], [ 0, %114 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  br label %123

123:                                              ; preds = %123, %116
  %124 = phi <4 x i64> [ %117, %116 ], [ %151, %123 ]
  %125 = phi <4 x i64> [ %118, %116 ], [ %140, %123 ]
  %126 = phi i64 [ 0, %116 ], [ %152, %123 ]
  %127 = shl i64 %126, 6
  %128 = getelementptr inbounds nuw i8, ptr %120, i64 %127
  %129 = getelementptr inbounds nuw i8, ptr %128, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %129, i32 0, i32 3, i32 1), !noalias !129
  %130 = shl i64 %126, 3
  %131 = getelementptr inbounds nuw i8, ptr %119, i64 %130
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %132 = load <4 x i64>, ptr %128, align 1, !alias.scope !135, !noalias !136
  %133 = load <4 x i64>, ptr %131, align 1, !alias.scope !139, !noalias !140
  %134 = xor <4 x i64> %133, %132
  %135 = lshr <4 x i64> %134, splat (i64 32)
  %136 = and <4 x i64> %134, splat (i64 4294967295)
  %137 = mul nuw <4 x i64> %136, %135
  %138 = shufflevector <4 x i64> %132, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %139 = add <4 x i64> %125, %138
  %140 = add <4 x i64> %139, %137
  %141 = getelementptr inbounds nuw i8, ptr %128, i64 32
  %142 = load <4 x i64>, ptr %141, align 1, !alias.scope !135, !noalias !136
  %143 = getelementptr inbounds nuw i8, ptr %131, i64 32
  %144 = load <4 x i64>, ptr %143, align 1, !alias.scope !139, !noalias !140
  %145 = xor <4 x i64> %144, %142
  %146 = lshr <4 x i64> %145, splat (i64 32)
  %147 = and <4 x i64> %145, splat (i64 4294967295)
  %148 = mul nuw <4 x i64> %147, %146
  %149 = shufflevector <4 x i64> %142, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %150 = add <4 x i64> %124, %149
  %151 = add <4 x i64> %150, %148
  %152 = add nuw i64 %126, 1
  %153 = icmp eq i64 %152, %121
  br i1 %153, label %154, label %123

154:                                              ; preds = %123
  %155 = add i64 %122, %121
  store i64 %155, ptr %37, align 8, !alias.scope !99, !noalias !100
  br label %156

156:                                              ; preds = %154, %114
  %157 = phi <4 x i64> [ %151, %154 ], [ %109, %114 ]
  %158 = phi <4 x i64> [ %140, %154 ], [ %101, %114 ]
  store i32 0, ptr %17, align 64, !alias.scope !86, !noalias !89
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
  br i1 %167, label %168, label %303

168:                                              ; preds = %159
  %169 = getelementptr inbounds i8, ptr %5, i64 -1
  %170 = ptrtoint ptr %169 to i64
  %171 = sub i64 %170, %165
  %172 = lshr i64 %171, 6
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %175 = load i64, ptr %174, align 8, !alias.scope !86, !noalias !89
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %177 = load i64, ptr %176, align 32, !alias.scope !86, !noalias !89
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %178 = load i64, ptr %173, align 8, !alias.scope !148, !noalias !149
  %179 = shl i64 %178, 3
  %180 = getelementptr inbounds nuw i8, ptr %10, i64 %179
  %181 = sub i64 %175, %178
  %182 = icmp ult i64 %172, %181
  br i1 %182, label %251, label %183

183:                                              ; preds = %168
  %184 = getelementptr inbounds nuw i8, ptr %10, i64 %177
  %185 = load <4 x i64>, ptr %184, align 1, !alias.scope !151, !noalias !154
  %186 = getelementptr inbounds nuw i8, ptr %184, i64 32
  %187 = load <4 x i64>, ptr %186, align 1, !alias.scope !151, !noalias !154
  br label %188

188:                                              ; preds = %227, %183
  %189 = phi <4 x i64> [ %245, %227 ], [ %160, %183 ]
  %190 = phi <4 x i64> [ %237, %227 ], [ %161, %183 ]
  %191 = phi i64 [ %248, %227 ], [ %172, %183 ]
  %192 = phi ptr [ %247, %227 ], [ %162, %183 ]
  %193 = phi ptr [ %10, %227 ], [ %180, %183 ]
  %194 = phi i64 [ %175, %227 ], [ %181, %183 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %227, label %196

196:                                              ; preds = %188, %196
  %197 = phi <4 x i64> [ %224, %196 ], [ %189, %188 ]
  %198 = phi <4 x i64> [ %213, %196 ], [ %190, %188 ]
  %199 = phi i64 [ %225, %196 ], [ 0, %188 ]
  %200 = shl i64 %199, 6
  %201 = getelementptr inbounds nuw i8, ptr %192, i64 %200
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %202, i32 0, i32 3, i32 1), !noalias !161
  %203 = shl i64 %199, 3
  %204 = getelementptr inbounds nuw i8, ptr %193, i64 %203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %205 = load <4 x i64>, ptr %201, align 1, !alias.scope !167, !noalias !168
  %206 = load <4 x i64>, ptr %204, align 1, !alias.scope !171, !noalias !172
  %207 = xor <4 x i64> %206, %205
  %208 = lshr <4 x i64> %207, splat (i64 32)
  %209 = and <4 x i64> %207, splat (i64 4294967295)
  %210 = mul nuw <4 x i64> %209, %208
  %211 = shufflevector <4 x i64> %205, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %212 = add <4 x i64> %198, %211
  %213 = add <4 x i64> %212, %210
  %214 = getelementptr inbounds nuw i8, ptr %201, i64 32
  %215 = load <4 x i64>, ptr %214, align 1, !alias.scope !167, !noalias !168
  %216 = getelementptr inbounds nuw i8, ptr %204, i64 32
  %217 = load <4 x i64>, ptr %216, align 1, !alias.scope !171, !noalias !172
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
  store i64 0, ptr %173, align 8, !alias.scope !148, !noalias !149
  br label %251

251:                                              ; preds = %250, %168
  %252 = phi <4 x i64> [ %160, %168 ], [ %245, %250 ]
  %253 = phi <4 x i64> [ %161, %168 ], [ %237, %250 ]
  %254 = phi i64 [ %178, %168 ], [ 0, %250 ]
  %255 = phi i64 [ %172, %168 ], [ %248, %250 ]
  %256 = phi ptr [ %162, %168 ], [ %247, %250 ]
  %257 = phi ptr [ %180, %168 ], [ %10, %250 ]
  %258 = icmp eq i64 %255, 0
  br i1 %258, label %295, label %259

259:                                              ; preds = %251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  br label %260

260:                                              ; preds = %260, %259
  %261 = phi <4 x i64> [ %252, %259 ], [ %288, %260 ]
  %262 = phi <4 x i64> [ %253, %259 ], [ %277, %260 ]
  %263 = phi i64 [ 0, %259 ], [ %289, %260 ]
  %264 = shl i64 %263, 6
  %265 = getelementptr inbounds nuw i8, ptr %256, i64 %264
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %266, i32 0, i32 3, i32 1), !noalias !178
  %267 = shl i64 %263, 3
  %268 = getelementptr inbounds nuw i8, ptr %257, i64 %267
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %269 = load <4 x i64>, ptr %265, align 1, !alias.scope !184, !noalias !185
  %270 = load <4 x i64>, ptr %268, align 1, !alias.scope !188, !noalias !189
  %271 = xor <4 x i64> %270, %269
  %272 = lshr <4 x i64> %271, splat (i64 32)
  %273 = and <4 x i64> %271, splat (i64 4294967295)
  %274 = mul nuw <4 x i64> %273, %272
  %275 = shufflevector <4 x i64> %269, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %276 = add <4 x i64> %262, %275
  %277 = add <4 x i64> %276, %274
  %278 = getelementptr inbounds nuw i8, ptr %265, i64 32
  %279 = load <4 x i64>, ptr %278, align 1, !alias.scope !184, !noalias !185
  %280 = getelementptr inbounds nuw i8, ptr %268, i64 32
  %281 = load <4 x i64>, ptr %280, align 1, !alias.scope !188, !noalias !189
  %282 = xor <4 x i64> %281, %279
  %283 = lshr <4 x i64> %282, splat (i64 32)
  %284 = and <4 x i64> %282, splat (i64 4294967295)
  %285 = mul nuw <4 x i64> %284, %283
  %286 = shufflevector <4 x i64> %279, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %287 = add <4 x i64> %261, %286
  %288 = add <4 x i64> %287, %285
  %289 = add nuw i64 %263, 1
  %290 = icmp eq i64 %289, %255
  br i1 %290, label %291, label %260

291:                                              ; preds = %260
  %292 = shl i64 %255, 6
  %293 = getelementptr inbounds nuw i8, ptr %256, i64 %292
  %294 = add i64 %255, %254
  store i64 %294, ptr %173, align 8, !alias.scope !148, !noalias !149
  br label %295

295:                                              ; preds = %291, %251
  %296 = phi <4 x i64> [ %252, %251 ], [ %288, %291 ]
  %297 = phi <4 x i64> [ %253, %251 ], [ %277, %291 ]
  %298 = phi ptr [ %256, %251 ], [ %293, %291 ]
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %300 = getelementptr inbounds i8, ptr %298, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %299, ptr noundef nonnull align 1 dereferenceable(64) %300, i64 64, i1 false), !alias.scope !91
  %301 = ptrtoint ptr %298 to i64
  %302 = sub i64 %164, %301
  br label %303

303:                                              ; preds = %295, %159
  %304 = phi i64 [ %302, %295 ], [ %166, %159 ]
  %305 = phi <4 x i64> [ %296, %295 ], [ %160, %159 ]
  %306 = phi <4 x i64> [ %297, %295 ], [ %161, %159 ]
  %307 = phi ptr [ %298, %295 ], [ %162, %159 ]
  %308 = icmp ult ptr %307, %5
  tail call void @llvm.assume(i1 %308)
  %309 = icmp slt i64 %304, 257
  tail call void @llvm.assume(i1 %309)
  %310 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %310, ptr align 1 %307, i64 %304, i1 false), !alias.scope !91
  %311 = trunc i64 %304 to i32
  store i32 %311, ptr %17, align 64, !alias.scope !86, !noalias !89
  store <4 x i64> %306, ptr %0, align 64, !alias.scope !86, !noalias !89
  store <4 x i64> %305, ptr %12, align 32, !alias.scope !86, !noalias !89
  br label %312

312:                                              ; preds = %23, %303
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #6

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef nonnull readonly %0, i64 noundef range(i64 0, 241) %1, i64 noundef %2, ptr noalias noundef readonly %3, i64 noundef %4) unnamed_addr #7 {
  %6 = icmp ugt i64 %4, 135
  tail call void @llvm.assume(i1 %6)
  %7 = icmp samesign ult i64 %1, 17
  br i1 %7, label %8, label %68

8:                                                ; preds = %5
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %45, !prof !190

10:                                               ; preds = %8
  %11 = icmp ne ptr %3, null
  tail call void @llvm.assume(i1 %11)
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %13 = load i64, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %15 = load i64, ptr %14, align 1
  %16 = xor i64 %15, %13
  %17 = add i64 %16, %2
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %21 = load i64, ptr %20, align 1
  %22 = xor i64 %21, %19
  %23 = sub i64 %22, %2
  %24 = load i64, ptr %0, align 1
  %25 = xor i64 %24, %17
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %27 = getelementptr inbounds i8, ptr %26, i64 -8
  %28 = load i64, ptr %27, align 1
  %29 = xor i64 %28, %23
  %30 = tail call noundef i64 @llvm.bswap.i64(i64 %25)
  %31 = add i64 %30, %1
  %32 = add i64 %31, %29
  %33 = zext i64 %25 to i128
  %34 = zext i64 %29 to i128
  %35 = mul nuw i128 %34, %33
  %36 = lshr i128 %35, 64
  %37 = xor i128 %36, %35
  %38 = trunc i128 %37 to i64
  %39 = add i64 %32, %38
  %40 = lshr i64 %39, 37
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, 1609587791953885689
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  br label %460

45:                                               ; preds = %8
  %46 = icmp samesign ugt i64 %1, 3
  br i1 %46, label %47, label %49, !prof !190

47:                                               ; preds = %45
  %48 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef nonnull readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %3, i64 noundef %2) #14
  br label %460

49:                                               ; preds = %45
  %50 = icmp eq i64 %1, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %49
  %52 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef nonnull readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %3, i64 noundef %2) #14
  br label %460

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %55 = load i64, ptr %54, align 1
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %57 = load i64, ptr %56, align 1
  %58 = xor i64 %55, %57
  %59 = xor i64 %58, %2
  %60 = lshr i64 %59, 33
  %61 = xor i64 %60, %59
  %62 = mul i64 %61, -4417276706812531889
  %63 = lshr i64 %62, 29
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, 1609587929392839161
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  br label %460

68:                                               ; preds = %5
  %69 = icmp samesign ult i64 %1, 129
  %70 = mul i64 %1, -7046029288634856825
  br i1 %69, label %71, label %243

71:                                               ; preds = %68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %72 = icmp samesign ugt i64 %1, 32
  br i1 %72, label %73, label %199

73:                                               ; preds = %71
  %74 = icmp samesign ugt i64 %1, 64
  br i1 %74, label %75, label %158

75:                                               ; preds = %73
  %76 = icmp samesign ugt i64 %1, 96
  br i1 %76, label %77, label %117

77:                                               ; preds = %75
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %80 = load i64, ptr %78, align 1, !alias.scope !201, !noalias !202
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %82 = load i64, ptr %81, align 1, !alias.scope !201, !noalias !202
  %83 = load i64, ptr %79, align 1, !alias.scope !202, !noalias !201
  %84 = add i64 %83, %2
  %85 = xor i64 %84, %80
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %87 = load i64, ptr %86, align 1, !alias.scope !202, !noalias !201
  %88 = sub i64 %87, %2
  %89 = xor i64 %88, %82
  %90 = zext i64 %85 to i128
  %91 = zext i64 %89 to i128
  %92 = mul nuw i128 %91, %90
  %93 = lshr i128 %92, 64
  %94 = xor i128 %93, %92
  %95 = trunc i128 %94 to i64
  %96 = add i64 %70, %95
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %98 = getelementptr inbounds i8, ptr %97, i64 -64
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %100 = load i64, ptr %98, align 1, !alias.scope !208, !noalias !209
  %101 = getelementptr inbounds i8, ptr %97, i64 -56
  %102 = load i64, ptr %101, align 1, !alias.scope !208, !noalias !209
  %103 = load i64, ptr %99, align 1, !alias.scope !209, !noalias !208
  %104 = add i64 %103, %2
  %105 = xor i64 %104, %100
  %106 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %107 = load i64, ptr %106, align 1, !alias.scope !209, !noalias !208
  %108 = sub i64 %107, %2
  %109 = xor i64 %108, %102
  %110 = zext i64 %105 to i128
  %111 = zext i64 %109 to i128
  %112 = mul nuw i128 %111, %110
  %113 = lshr i128 %112, 64
  %114 = xor i128 %113, %112
  %115 = trunc i128 %114 to i64
  %116 = add i64 %96, %115
  br label %117

117:                                              ; preds = %77, %75
  %118 = phi i64 [ %116, %77 ], [ %70, %75 ]
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %121 = load i64, ptr %119, align 1, !alias.scope !215, !noalias !216
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %123 = load i64, ptr %122, align 1, !alias.scope !215, !noalias !216
  %124 = load i64, ptr %120, align 1, !alias.scope !216, !noalias !215
  %125 = add i64 %124, %2
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %128 = load i64, ptr %127, align 1, !alias.scope !216, !noalias !215
  %129 = sub i64 %128, %2
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %118, %136
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %139 = getelementptr inbounds i8, ptr %138, i64 -48
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %141 = load i64, ptr %139, align 1, !alias.scope !222, !noalias !223
  %142 = getelementptr inbounds i8, ptr %138, i64 -40
  %143 = load i64, ptr %142, align 1, !alias.scope !222, !noalias !223
  %144 = load i64, ptr %140, align 1, !alias.scope !223, !noalias !222
  %145 = add i64 %144, %2
  %146 = xor i64 %145, %141
  %147 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %148 = load i64, ptr %147, align 1, !alias.scope !223, !noalias !222
  %149 = sub i64 %148, %2
  %150 = xor i64 %149, %143
  %151 = zext i64 %146 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %137, %156
  br label %158

158:                                              ; preds = %117, %73
  %159 = phi i64 [ %157, %117 ], [ %70, %73 ]
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %161 = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %162 = load i64, ptr %160, align 1, !alias.scope !229, !noalias !230
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %164 = load i64, ptr %163, align 1, !alias.scope !229, !noalias !230
  %165 = load i64, ptr %161, align 1, !alias.scope !230, !noalias !229
  %166 = add i64 %165, %2
  %167 = xor i64 %166, %162
  %168 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %169 = load i64, ptr %168, align 1, !alias.scope !230, !noalias !229
  %170 = sub i64 %169, %2
  %171 = xor i64 %170, %164
  %172 = zext i64 %167 to i128
  %173 = zext i64 %171 to i128
  %174 = mul nuw i128 %173, %172
  %175 = lshr i128 %174, 64
  %176 = xor i128 %175, %174
  %177 = trunc i128 %176 to i64
  %178 = add i64 %159, %177
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %180 = getelementptr inbounds i8, ptr %179, i64 -32
  %181 = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %182 = load i64, ptr %180, align 1, !alias.scope !236, !noalias !237
  %183 = getelementptr inbounds i8, ptr %179, i64 -24
  %184 = load i64, ptr %183, align 1, !alias.scope !236, !noalias !237
  %185 = load i64, ptr %181, align 1, !alias.scope !237, !noalias !236
  %186 = add i64 %185, %2
  %187 = xor i64 %186, %182
  %188 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %189 = load i64, ptr %188, align 1, !alias.scope !237, !noalias !236
  %190 = sub i64 %189, %2
  %191 = xor i64 %190, %184
  %192 = zext i64 %187 to i128
  %193 = zext i64 %191 to i128
  %194 = mul nuw i128 %193, %192
  %195 = lshr i128 %194, 64
  %196 = xor i128 %195, %194
  %197 = trunc i128 %196 to i64
  %198 = add i64 %178, %197
  br label %199

199:                                              ; preds = %71, %158
  %200 = phi i64 [ %198, %158 ], [ %70, %71 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %201 = load i64, ptr %0, align 1, !alias.scope !243, !noalias !244
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %203 = load i64, ptr %202, align 1, !alias.scope !243, !noalias !244
  %204 = load i64, ptr %3, align 1, !alias.scope !244, !noalias !243
  %205 = add i64 %204, %2
  %206 = xor i64 %205, %201
  %207 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %208 = load i64, ptr %207, align 1, !alias.scope !244, !noalias !243
  %209 = sub i64 %208, %2
  %210 = xor i64 %209, %203
  %211 = zext i64 %206 to i128
  %212 = zext i64 %210 to i128
  %213 = mul nuw i128 %212, %211
  %214 = lshr i128 %213, 64
  %215 = xor i128 %214, %213
  %216 = trunc i128 %215 to i64
  %217 = add i64 %200, %216
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %219 = getelementptr inbounds i8, ptr %218, i64 -16
  %220 = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %221 = load i64, ptr %219, align 1, !alias.scope !250, !noalias !251
  %222 = getelementptr inbounds i8, ptr %218, i64 -8
  %223 = load i64, ptr %222, align 1, !alias.scope !250, !noalias !251
  %224 = load i64, ptr %220, align 1, !alias.scope !251, !noalias !250
  %225 = add i64 %224, %2
  %226 = xor i64 %225, %221
  %227 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %228 = load i64, ptr %227, align 1, !alias.scope !251, !noalias !250
  %229 = sub i64 %228, %2
  %230 = xor i64 %229, %223
  %231 = zext i64 %226 to i128
  %232 = zext i64 %230 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = add i64 %217, %236
  %238 = lshr i64 %237, 37
  %239 = xor i64 %238, %237
  %240 = mul i64 %239, 1609587791953885689
  %241 = lshr i64 %240, 32
  %242 = xor i64 %241, %240
  br label %460

243:                                              ; preds = %68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %244 = trunc nuw nsw i64 %1 to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %245 = load i64, ptr %0, align 1, !alias.scope !262, !noalias !263
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %247 = load i64, ptr %246, align 1, !alias.scope !262, !noalias !263
  %248 = load i64, ptr %3, align 1, !alias.scope !263, !noalias !262
  %249 = add i64 %248, %2
  %250 = xor i64 %249, %245
  %251 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %252 = load i64, ptr %251, align 1, !alias.scope !263, !noalias !262
  %253 = sub i64 %252, %2
  %254 = xor i64 %253, %247
  %255 = zext i64 %250 to i128
  %256 = zext i64 %254 to i128
  %257 = mul nuw i128 %256, %255
  %258 = lshr i128 %257, 64
  %259 = xor i128 %258, %257
  %260 = trunc i128 %259 to i64
  %261 = add i64 %70, %260
  %262 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %263 = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %264 = load i64, ptr %262, align 1, !alias.scope !268, !noalias !269
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %266 = load i64, ptr %265, align 1, !alias.scope !268, !noalias !269
  %267 = load i64, ptr %263, align 1, !alias.scope !269, !noalias !268
  %268 = add i64 %267, %2
  %269 = xor i64 %268, %264
  %270 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %271 = load i64, ptr %270, align 1, !alias.scope !269, !noalias !268
  %272 = sub i64 %271, %2
  %273 = xor i64 %272, %266
  %274 = zext i64 %269 to i128
  %275 = zext i64 %273 to i128
  %276 = mul nuw i128 %275, %274
  %277 = lshr i128 %276, 64
  %278 = xor i128 %277, %276
  %279 = trunc i128 %278 to i64
  %280 = add i64 %261, %279
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %282 = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %283 = load i64, ptr %281, align 1, !alias.scope !274, !noalias !275
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %285 = load i64, ptr %284, align 1, !alias.scope !274, !noalias !275
  %286 = load i64, ptr %282, align 1, !alias.scope !275, !noalias !274
  %287 = add i64 %286, %2
  %288 = xor i64 %287, %283
  %289 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %290 = load i64, ptr %289, align 1, !alias.scope !275, !noalias !274
  %291 = sub i64 %290, %2
  %292 = xor i64 %291, %285
  %293 = zext i64 %288 to i128
  %294 = zext i64 %292 to i128
  %295 = mul nuw i128 %294, %293
  %296 = lshr i128 %295, 64
  %297 = xor i128 %296, %295
  %298 = trunc i128 %297 to i64
  %299 = add i64 %280, %298
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %301 = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %302 = load i64, ptr %300, align 1, !alias.scope !280, !noalias !281
  %303 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %304 = load i64, ptr %303, align 1, !alias.scope !280, !noalias !281
  %305 = load i64, ptr %301, align 1, !alias.scope !281, !noalias !280
  %306 = add i64 %305, %2
  %307 = xor i64 %306, %302
  %308 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %309 = load i64, ptr %308, align 1, !alias.scope !281, !noalias !280
  %310 = sub i64 %309, %2
  %311 = xor i64 %310, %304
  %312 = zext i64 %307 to i128
  %313 = zext i64 %311 to i128
  %314 = mul nuw i128 %313, %312
  %315 = lshr i128 %314, 64
  %316 = xor i128 %315, %314
  %317 = trunc i128 %316 to i64
  %318 = add i64 %299, %317
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %320 = getelementptr inbounds nuw i8, ptr %3, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %321 = load i64, ptr %319, align 1, !alias.scope !286, !noalias !287
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %323 = load i64, ptr %322, align 1, !alias.scope !286, !noalias !287
  %324 = load i64, ptr %320, align 1, !alias.scope !287, !noalias !286
  %325 = add i64 %324, %2
  %326 = xor i64 %325, %321
  %327 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %328 = load i64, ptr %327, align 1, !alias.scope !287, !noalias !286
  %329 = sub i64 %328, %2
  %330 = xor i64 %329, %323
  %331 = zext i64 %326 to i128
  %332 = zext i64 %330 to i128
  %333 = mul nuw i128 %332, %331
  %334 = lshr i128 %333, 64
  %335 = xor i128 %334, %333
  %336 = trunc i128 %335 to i64
  %337 = add i64 %318, %336
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %339 = getelementptr inbounds nuw i8, ptr %3, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %340 = load i64, ptr %338, align 1, !alias.scope !292, !noalias !293
  %341 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %342 = load i64, ptr %341, align 1, !alias.scope !292, !noalias !293
  %343 = load i64, ptr %339, align 1, !alias.scope !293, !noalias !292
  %344 = add i64 %343, %2
  %345 = xor i64 %344, %340
  %346 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %347 = load i64, ptr %346, align 1, !alias.scope !293, !noalias !292
  %348 = sub i64 %347, %2
  %349 = xor i64 %348, %342
  %350 = zext i64 %345 to i128
  %351 = zext i64 %349 to i128
  %352 = mul nuw i128 %351, %350
  %353 = lshr i128 %352, 64
  %354 = xor i128 %353, %352
  %355 = trunc i128 %354 to i64
  %356 = add i64 %337, %355
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %358 = getelementptr inbounds nuw i8, ptr %3, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %359 = load i64, ptr %357, align 1, !alias.scope !298, !noalias !299
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %361 = load i64, ptr %360, align 1, !alias.scope !298, !noalias !299
  %362 = load i64, ptr %358, align 1, !alias.scope !299, !noalias !298
  %363 = add i64 %362, %2
  %364 = xor i64 %363, %359
  %365 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %366 = load i64, ptr %365, align 1, !alias.scope !299, !noalias !298
  %367 = sub i64 %366, %2
  %368 = xor i64 %367, %361
  %369 = zext i64 %364 to i128
  %370 = zext i64 %368 to i128
  %371 = mul nuw i128 %370, %369
  %372 = lshr i128 %371, 64
  %373 = xor i128 %372, %371
  %374 = trunc i128 %373 to i64
  %375 = add i64 %356, %374
  %376 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %377 = getelementptr inbounds nuw i8, ptr %3, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %378 = load i64, ptr %376, align 1, !alias.scope !304, !noalias !305
  %379 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %380 = load i64, ptr %379, align 1, !alias.scope !304, !noalias !305
  %381 = load i64, ptr %377, align 1, !alias.scope !305, !noalias !304
  %382 = add i64 %381, %2
  %383 = xor i64 %382, %378
  %384 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %385 = load i64, ptr %384, align 1, !alias.scope !305, !noalias !304
  %386 = sub i64 %385, %2
  %387 = xor i64 %386, %380
  %388 = zext i64 %383 to i128
  %389 = zext i64 %387 to i128
  %390 = mul nuw i128 %389, %388
  %391 = lshr i128 %390, 64
  %392 = xor i128 %391, %390
  %393 = trunc i128 %392 to i64
  %394 = add i64 %375, %393
  %395 = lshr i32 %244, 4
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %397 = getelementptr inbounds i8, ptr %396, i64 -16
  %398 = getelementptr inbounds nuw i8, ptr %3, i64 119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %399 = load i64, ptr %397, align 1, !alias.scope !311, !noalias !312
  %400 = getelementptr inbounds i8, ptr %396, i64 -8
  %401 = load i64, ptr %400, align 1, !alias.scope !311, !noalias !312
  %402 = load i64, ptr %398, align 1, !alias.scope !312, !noalias !311
  %403 = add i64 %402, %2
  %404 = xor i64 %403, %399
  %405 = getelementptr inbounds nuw i8, ptr %3, i64 127
  %406 = load i64, ptr %405, align 1, !alias.scope !312, !noalias !311
  %407 = sub i64 %406, %2
  %408 = xor i64 %407, %401
  %409 = zext i64 %404 to i128
  %410 = zext i64 %408 to i128
  %411 = mul nuw i128 %410, %409
  %412 = lshr i128 %411, 64
  %413 = xor i128 %412, %411
  %414 = trunc i128 %413 to i64
  %415 = lshr i64 %394, 37
  %416 = xor i64 %415, %394
  %417 = mul i64 %416, 1609587791953885689
  %418 = lshr i64 %417, 32
  %419 = xor i64 %418, %417
  %420 = icmp eq i32 %395, 8
  br i1 %420, label %451, label %421

421:                                              ; preds = %243
  %422 = zext nneg i32 %395 to i64
  br label %423

423:                                              ; preds = %423, %421
  %424 = phi i64 [ 8, %421 ], [ %449, %423 ]
  %425 = phi i64 [ %419, %421 ], [ %427, %423 ]
  %426 = phi i64 [ %414, %421 ], [ %448, %423 ]
  %427 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %425) #13
  %428 = shl nuw nsw i64 %424, 4
  %429 = getelementptr inbounds nuw i8, ptr %0, i64 %428
  %430 = getelementptr i8, ptr %3, i64 %428
  %431 = getelementptr i8, ptr %430, i64 -125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %432 = load i64, ptr %429, align 1, !alias.scope !319, !noalias !320
  %433 = getelementptr inbounds nuw i8, ptr %429, i64 8
  %434 = load i64, ptr %433, align 1, !alias.scope !319, !noalias !320
  %435 = load i64, ptr %431, align 1, !alias.scope !320, !noalias !319
  %436 = add i64 %435, %2
  %437 = xor i64 %436, %432
  %438 = getelementptr i8, ptr %430, i64 -117
  %439 = load i64, ptr %438, align 1, !alias.scope !320, !noalias !319
  %440 = sub i64 %439, %2
  %441 = xor i64 %440, %434
  %442 = zext i64 %437 to i128
  %443 = zext i64 %441 to i128
  %444 = mul nuw i128 %443, %442
  %445 = lshr i128 %444, 64
  %446 = xor i128 %445, %444
  %447 = trunc i128 %446 to i64
  %448 = add i64 %426, %447
  %449 = add nuw nsw i64 %424, 1
  %450 = icmp eq i64 %449, %422
  br i1 %450, label %451, label %423

451:                                              ; preds = %423, %243
  %452 = phi i64 [ %414, %243 ], [ %448, %423 ]
  %453 = phi i64 [ %419, %243 ], [ %427, %423 ]
  %454 = add i64 %453, %452
  %455 = lshr i64 %454, 37
  %456 = xor i64 %455, %454
  %457 = mul i64 %456, 1609587791953885689
  %458 = lshr i64 %457, 32
  %459 = xor i64 %458, %457
  br label %460

460:                                              ; preds = %53, %51, %47, %10, %451, %199
  %461 = phi i64 [ %242, %199 ], [ %459, %451 ], [ %44, %10 ], [ %48, %47 ], [ %52, %51 ], [ %67, %53 ]
  ret i64 %461
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_4to8_64b(ptr noundef nonnull readonly %0, i64 noundef range(i64 4, 9) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #8 {
  %5 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %5)
  %6 = trunc i64 %3 to i32
  %7 = tail call noundef i32 @llvm.bswap.i32(i32 %6)
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = xor i64 %9, %3
  %11 = load i32, ptr %0, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -4
  %14 = load i32, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = sub i64 %19, %10
  %21 = zext i32 %14 to i64
  %22 = zext i32 %11 to i64
  %23 = shl nuw i64 %22, 32
  %24 = or disjoint i64 %23, %21
  %25 = xor i64 %20, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 49)
  %27 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 24)
  %28 = xor i64 %26, %27
  %29 = xor i64 %28, %25
  %30 = mul i64 %29, -6939452855193903323
  %31 = lshr i64 %30, 35
  %32 = add nuw nsw i64 %31, %1
  %33 = xor i64 %32, %30
  %34 = mul i64 %33, -6939452855193903323
  %35 = lshr i64 %34, 28
  %36 = xor i64 %35, %34
  ret i64 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_1to3_64b(ptr noundef nonnull readonly %0, i64 noundef range(i64 1, 4) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #8 {
  %5 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %5)
  %6 = load i8, ptr %0, align 1
  %7 = lshr i64 %1, 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i64 %1
  %11 = getelementptr i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %6 to i64
  %14 = shl nuw nsw i64 %13, 16
  %15 = zext i8 %9 to i64
  %16 = shl nuw nsw i64 %15, 24
  %17 = or disjoint i64 %16, %14
  %18 = zext i8 %12 to i64
  %19 = or disjoint i64 %17, %18
  %20 = shl nuw nsw i64 %1, 8
  %21 = or disjoint i64 %19, %20
  %22 = load i32, ptr %2, align 1
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %24 = load i32, ptr %23, align 1
  %25 = xor i32 %24, %22
  %26 = zext i32 %25 to i64
  %27 = add i64 %3, %26
  %28 = xor i64 %27, %21
  %29 = lshr i64 %28, 33
  %30 = xor i64 %29, %28
  %31 = mul i64 %30, -4417276706812531889
  %32 = lshr i64 %31, 29
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, 1609587929392839161
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  ret i64 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(none) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2152149688}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_consumeStripes: argument 2"}
!8 = distinct !{!8, !"XXH3_consumeStripes"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"XXH3_consumeStripes: argument 3"}
!11 = !{!12, !10}
!12 = distinct !{!12, !13, !"XXH3_scrambleAcc_avx2: argument 1"}
!13 = distinct !{!13, !"XXH3_scrambleAcc_avx2"}
!14 = !{!15, !16, !17, !7}
!15 = distinct !{!15, !13, !"XXH3_scrambleAcc_avx2: argument 0"}
!16 = distinct !{!16, !8, !"XXH3_consumeStripes: argument 0"}
!17 = distinct !{!17, !8, !"XXH3_consumeStripes: argument 1"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_accumulate_avx2: argument 1"}
!20 = distinct !{!20, !"XXH3_accumulate_avx2"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"XXH3_accumulate_avx2: argument 2"}
!23 = !{!22, !17, !10}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_accumulate_512_avx2: argument 1"}
!26 = distinct !{!26, !"XXH3_accumulate_512_avx2"}
!27 = !{!28}
!28 = distinct !{!28, !26, !"XXH3_accumulate_512_avx2: argument 2"}
!29 = !{!25, !19, !7}
!30 = !{!31, !28, !32, !22, !16, !17, !10}
!31 = distinct !{!31, !26, !"XXH3_accumulate_512_avx2: argument 0"}
!32 = distinct !{!32, !20, !"XXH3_accumulate_avx2: argument 0"}
!33 = !{!28, !22, !10}
!34 = !{!31, !25, !32, !19, !16, !17, !7}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = !{!39}
!39 = distinct !{!39, !40, !"XXH3_accumulate_avx2: argument 1"}
!40 = distinct !{!40, !"XXH3_accumulate_avx2"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"XXH3_accumulate_avx2: argument 2"}
!43 = !{!42, !17, !10}
!44 = !{!45}
!45 = distinct !{!45, !46, !"XXH3_accumulate_512_avx2: argument 1"}
!46 = distinct !{!46, !"XXH3_accumulate_512_avx2"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"XXH3_accumulate_512_avx2: argument 2"}
!49 = !{!45, !39, !7}
!50 = !{!51, !48, !52, !42, !16, !17, !10}
!51 = distinct !{!51, !46, !"XXH3_accumulate_512_avx2: argument 0"}
!52 = distinct !{!52, !40, !"XXH3_accumulate_avx2: argument 0"}
!53 = !{!48, !42, !10}
!54 = !{!51, !45, !52, !39, !16, !17, !7}
!55 = !{!56}
!56 = distinct !{!56, !57, !"XXH3_accumulate_512_avx2: argument 1"}
!57 = distinct !{!57, !"XXH3_accumulate_512_avx2"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"XXH3_accumulate_512_avx2: argument 2"}
!60 = !{!61, !59}
!61 = distinct !{!61, !57, !"XXH3_accumulate_512_avx2: argument 0"}
!62 = !{!61, !56}
!63 = !{!64, !66, !68}
!64 = distinct !{!64, !65, !"XXH3_mix2Accs: argument 1"}
!65 = distinct !{!65, !"XXH3_mix2Accs"}
!66 = distinct !{!66, !67, !"XXH3_mergeAccs: argument 1"}
!67 = distinct !{!67, !"XXH3_mergeAccs"}
!68 = distinct !{!68, !69, !"XXH3_finalizeLong_64b: argument 1"}
!69 = distinct !{!69, !"XXH3_finalizeLong_64b"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !65, !"XXH3_mix2Accs: argument 0"}
!72 = distinct !{!72, !67, !"XXH3_mergeAccs: argument 0"}
!73 = distinct !{!73, !69, !"XXH3_finalizeLong_64b: argument 0"}
!74 = !{!75, !66, !68}
!75 = distinct !{!75, !65, !"XXH3_mix2Accs: argument 1:It1"}
!76 = !{!77, !72, !73}
!77 = distinct !{!77, !65, !"XXH3_mix2Accs: argument 0:It1"}
!78 = !{!79, !66, !68}
!79 = distinct !{!79, !65, !"XXH3_mix2Accs: argument 1:It2"}
!80 = !{!81, !72, !73}
!81 = distinct !{!81, !65, !"XXH3_mix2Accs: argument 0:It2"}
!82 = !{!83, !66, !68}
!83 = distinct !{!83, !65, !"XXH3_mix2Accs: argument 1:It3"}
!84 = !{!85, !72, !73}
!85 = distinct !{!85, !65, !"XXH3_mix2Accs: argument 0:It3"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_update: argument 0"}
!88 = distinct !{!88, !"XXH3_update"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"XXH3_update: argument 1"}
!91 = !{!87, !90}
!92 = !{!93}
!93 = distinct !{!93, !94, !"XXH3_consumeStripes: argument 1"}
!94 = distinct !{!94, !"XXH3_consumeStripes"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"XXH3_consumeStripes: argument 2"}
!97 = !{!98}
!98 = distinct !{!98, !94, !"XXH3_consumeStripes: argument 3"}
!99 = !{!93, !87}
!100 = !{!101, !96, !98, !90}
!101 = distinct !{!101, !94, !"XXH3_consumeStripes: argument 0"}
!102 = !{!103, !98}
!103 = distinct !{!103, !104, !"XXH3_scrambleAcc_avx2: argument 1"}
!104 = distinct !{!104, !"XXH3_scrambleAcc_avx2"}
!105 = !{!106, !101, !93, !96}
!106 = distinct !{!106, !104, !"XXH3_scrambleAcc_avx2: argument 0"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"XXH3_accumulate_avx2: argument 1"}
!109 = distinct !{!109, !"XXH3_accumulate_avx2"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"XXH3_accumulate_avx2: argument 2"}
!112 = !{!111, !93, !98}
!113 = !{!114}
!114 = distinct !{!114, !115, !"XXH3_accumulate_512_avx2: argument 1"}
!115 = distinct !{!115, !"XXH3_accumulate_512_avx2"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"XXH3_accumulate_512_avx2: argument 2"}
!118 = !{!114, !108, !96, !87}
!119 = !{!120, !117, !121, !111, !101, !93, !98, !90}
!120 = distinct !{!120, !115, !"XXH3_accumulate_512_avx2: argument 0"}
!121 = distinct !{!121, !109, !"XXH3_accumulate_avx2: argument 0"}
!122 = !{!117, !111, !98}
!123 = !{!120, !114, !121, !108, !101, !93, !96}
!124 = !{!125}
!125 = distinct !{!125, !126, !"XXH3_accumulate_avx2: argument 1"}
!126 = distinct !{!126, !"XXH3_accumulate_avx2"}
!127 = !{!128}
!128 = distinct !{!128, !126, !"XXH3_accumulate_avx2: argument 2"}
!129 = !{!128, !93, !98}
!130 = !{!131}
!131 = distinct !{!131, !132, !"XXH3_accumulate_512_avx2: argument 1"}
!132 = distinct !{!132, !"XXH3_accumulate_512_avx2"}
!133 = !{!134}
!134 = distinct !{!134, !132, !"XXH3_accumulate_512_avx2: argument 2"}
!135 = !{!131, !125, !96, !87}
!136 = !{!137, !134, !138, !128, !101, !93, !98, !90}
!137 = distinct !{!137, !132, !"XXH3_accumulate_512_avx2: argument 0"}
!138 = distinct !{!138, !126, !"XXH3_accumulate_avx2: argument 0"}
!139 = !{!134, !128, !98}
!140 = !{!137, !131, !138, !125, !101, !93, !96}
!141 = !{!142}
!142 = distinct !{!142, !143, !"XXH3_consumeStripes: argument 1"}
!143 = distinct !{!143, !"XXH3_consumeStripes"}
!144 = !{!145}
!145 = distinct !{!145, !143, !"XXH3_consumeStripes: argument 2"}
!146 = !{!147}
!147 = distinct !{!147, !143, !"XXH3_consumeStripes: argument 3"}
!148 = !{!142, !87}
!149 = !{!150, !145, !147, !90}
!150 = distinct !{!150, !143, !"XXH3_consumeStripes: argument 0"}
!151 = !{!152, !147}
!152 = distinct !{!152, !153, !"XXH3_scrambleAcc_avx2: argument 1"}
!153 = distinct !{!153, !"XXH3_scrambleAcc_avx2"}
!154 = !{!155, !150, !142, !145}
!155 = distinct !{!155, !153, !"XXH3_scrambleAcc_avx2: argument 0"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"XXH3_accumulate_avx2: argument 1"}
!158 = distinct !{!158, !"XXH3_accumulate_avx2"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"XXH3_accumulate_avx2: argument 2"}
!161 = !{!160, !142, !147, !87}
!162 = !{!163}
!163 = distinct !{!163, !164, !"XXH3_accumulate_512_avx2: argument 1"}
!164 = distinct !{!164, !"XXH3_accumulate_512_avx2"}
!165 = !{!166}
!166 = distinct !{!166, !164, !"XXH3_accumulate_512_avx2: argument 2"}
!167 = !{!163, !157, !145, !90}
!168 = !{!169, !166, !170, !160, !150, !142, !147, !87}
!169 = distinct !{!169, !164, !"XXH3_accumulate_512_avx2: argument 0"}
!170 = distinct !{!170, !158, !"XXH3_accumulate_avx2: argument 0"}
!171 = !{!166, !160, !147}
!172 = !{!169, !163, !170, !157, !150, !142, !145}
!173 = !{!174}
!174 = distinct !{!174, !175, !"XXH3_accumulate_avx2: argument 1"}
!175 = distinct !{!175, !"XXH3_accumulate_avx2"}
!176 = !{!177}
!177 = distinct !{!177, !175, !"XXH3_accumulate_avx2: argument 2"}
!178 = !{!177, !142, !147, !87}
!179 = !{!180}
!180 = distinct !{!180, !181, !"XXH3_accumulate_512_avx2: argument 1"}
!181 = distinct !{!181, !"XXH3_accumulate_512_avx2"}
!182 = !{!183}
!183 = distinct !{!183, !181, !"XXH3_accumulate_512_avx2: argument 2"}
!184 = !{!180, !174, !145, !90}
!185 = !{!186, !183, !187, !177, !150, !142, !147, !87}
!186 = distinct !{!186, !181, !"XXH3_accumulate_512_avx2: argument 0"}
!187 = distinct !{!187, !175, !"XXH3_accumulate_avx2: argument 0"}
!188 = !{!183, !177, !147}
!189 = !{!186, !180, !187, !174, !150, !142, !145}
!190 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!191 = !{!192}
!192 = distinct !{!192, !193, !"XXH3_len_17to128_64b: argument 0"}
!193 = distinct !{!193, !"XXH3_len_17to128_64b"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"XXH3_len_17to128_64b: argument 1"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"XXH3_mix16B: argument 0"}
!198 = distinct !{!198, !"XXH3_mix16B"}
!199 = !{!200}
!200 = distinct !{!200, !198, !"XXH3_mix16B: argument 1"}
!201 = !{!197, !192}
!202 = !{!200, !195}
!203 = !{!204}
!204 = distinct !{!204, !205, !"XXH3_mix16B: argument 0"}
!205 = distinct !{!205, !"XXH3_mix16B"}
!206 = !{!207}
!207 = distinct !{!207, !205, !"XXH3_mix16B: argument 1"}
!208 = !{!204, !192}
!209 = !{!207, !195}
!210 = !{!211}
!211 = distinct !{!211, !212, !"XXH3_mix16B: argument 0"}
!212 = distinct !{!212, !"XXH3_mix16B"}
!213 = !{!214}
!214 = distinct !{!214, !212, !"XXH3_mix16B: argument 1"}
!215 = !{!211, !192}
!216 = !{!214, !195}
!217 = !{!218}
!218 = distinct !{!218, !219, !"XXH3_mix16B: argument 0"}
!219 = distinct !{!219, !"XXH3_mix16B"}
!220 = !{!221}
!221 = distinct !{!221, !219, !"XXH3_mix16B: argument 1"}
!222 = !{!218, !192}
!223 = !{!221, !195}
!224 = !{!225}
!225 = distinct !{!225, !226, !"XXH3_mix16B: argument 0"}
!226 = distinct !{!226, !"XXH3_mix16B"}
!227 = !{!228}
!228 = distinct !{!228, !226, !"XXH3_mix16B: argument 1"}
!229 = !{!225, !192}
!230 = !{!228, !195}
!231 = !{!232}
!232 = distinct !{!232, !233, !"XXH3_mix16B: argument 0"}
!233 = distinct !{!233, !"XXH3_mix16B"}
!234 = !{!235}
!235 = distinct !{!235, !233, !"XXH3_mix16B: argument 1"}
!236 = !{!232, !192}
!237 = !{!235, !195}
!238 = !{!239}
!239 = distinct !{!239, !240, !"XXH3_mix16B: argument 0"}
!240 = distinct !{!240, !"XXH3_mix16B"}
!241 = !{!242}
!242 = distinct !{!242, !240, !"XXH3_mix16B: argument 1"}
!243 = !{!239, !192}
!244 = !{!242, !195}
!245 = !{!246}
!246 = distinct !{!246, !247, !"XXH3_mix16B: argument 0"}
!247 = distinct !{!247, !"XXH3_mix16B"}
!248 = !{!249}
!249 = distinct !{!249, !247, !"XXH3_mix16B: argument 1"}
!250 = !{!246, !192}
!251 = !{!249, !195}
!252 = !{!253}
!253 = distinct !{!253, !254, !"XXH3_len_129to240_64b: argument 0"}
!254 = distinct !{!254, !"XXH3_len_129to240_64b"}
!255 = !{!256}
!256 = distinct !{!256, !254, !"XXH3_len_129to240_64b: argument 1"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"XXH3_mix16B: argument 0"}
!259 = distinct !{!259, !"XXH3_mix16B"}
!260 = !{!261}
!261 = distinct !{!261, !259, !"XXH3_mix16B: argument 1"}
!262 = !{!258, !253}
!263 = !{!261, !256}
!264 = !{!265}
!265 = distinct !{!265, !259, !"XXH3_mix16B: argument 0:It1"}
!266 = !{!267}
!267 = distinct !{!267, !259, !"XXH3_mix16B: argument 1:It1"}
!268 = !{!265, !253}
!269 = !{!267, !256}
!270 = !{!271}
!271 = distinct !{!271, !259, !"XXH3_mix16B: argument 0:It2"}
!272 = !{!273}
!273 = distinct !{!273, !259, !"XXH3_mix16B: argument 1:It2"}
!274 = !{!271, !253}
!275 = !{!273, !256}
!276 = !{!277}
!277 = distinct !{!277, !259, !"XXH3_mix16B: argument 0:It3"}
!278 = !{!279}
!279 = distinct !{!279, !259, !"XXH3_mix16B: argument 1:It3"}
!280 = !{!277, !253}
!281 = !{!279, !256}
!282 = !{!283}
!283 = distinct !{!283, !259, !"XXH3_mix16B: argument 0:It4"}
!284 = !{!285}
!285 = distinct !{!285, !259, !"XXH3_mix16B: argument 1:It4"}
!286 = !{!283, !253}
!287 = !{!285, !256}
!288 = !{!289}
!289 = distinct !{!289, !259, !"XXH3_mix16B: argument 0:It5"}
!290 = !{!291}
!291 = distinct !{!291, !259, !"XXH3_mix16B: argument 1:It5"}
!292 = !{!289, !253}
!293 = !{!291, !256}
!294 = !{!295}
!295 = distinct !{!295, !259, !"XXH3_mix16B: argument 0:It6"}
!296 = !{!297}
!297 = distinct !{!297, !259, !"XXH3_mix16B: argument 1:It6"}
!298 = !{!295, !253}
!299 = !{!297, !256}
!300 = !{!301}
!301 = distinct !{!301, !259, !"XXH3_mix16B: argument 0:It7"}
!302 = !{!303}
!303 = distinct !{!303, !259, !"XXH3_mix16B: argument 1:It7"}
!304 = !{!301, !253}
!305 = !{!303, !256}
!306 = !{!307}
!307 = distinct !{!307, !308, !"XXH3_mix16B: argument 0"}
!308 = distinct !{!308, !"XXH3_mix16B"}
!309 = !{!310}
!310 = distinct !{!310, !308, !"XXH3_mix16B: argument 1"}
!311 = !{!307, !253}
!312 = !{!310, !256}
!313 = !{i64 2152147233}
!314 = !{!315}
!315 = distinct !{!315, !316, !"XXH3_mix16B: argument 0"}
!316 = distinct !{!316, !"XXH3_mix16B"}
!317 = !{!318}
!318 = distinct !{!318, !316, !"XXH3_mix16B: argument 1"}
!319 = !{!315, !253}
!320 = !{!318, !256}
!321 = distinct !{!321, !36}
