; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local i64 @target_seed_200_50(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [8 x i64], align 32
  %5 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %5, i8 0, i64 576, i1 false)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
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
  br label %56

17:                                               ; preds = %2
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 552
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %1, %19
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 568
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %47, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %26, i32 0, i32 3, i32 1)
  %27 = sub i64 0, %1
  %28 = insertelement <4 x i64> poison, i64 %1, i64 0
  %29 = insertelement <4 x i64> %28, i64 %27, i64 1
  %30 = insertelement <4 x i64> %29, i64 %1, i64 2
  %31 = insertelement <4 x i64> %30, i64 %27, i64 3
  %32 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %26) #13
  %33 = ptrtoint ptr %32 to i64
  %34 = and i64 %33, 31
  %35 = icmp eq i64 %34, 0
  call void @llvm.assume(i1 %35)
  %36 = add <4 x i64> %31, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %36, ptr %32, align 32
  %37 = add <4 x i64> %31, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 32
  store <4 x i64> %37, ptr %38, align 32
  %39 = add <4 x i64> %31, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 64
  store <4 x i64> %39, ptr %40, align 32
  %41 = add <4 x i64> %31, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %42 = getelementptr inbounds nuw i8, ptr %32, i64 96
  store <4 x i64> %41, ptr %42, align 32
  %43 = add <4 x i64> %31, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %44 = getelementptr inbounds nuw i8, ptr %32, i64 128
  store <4 x i64> %43, ptr %44, align 32
  %45 = add <4 x i64> %31, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %46 = getelementptr inbounds nuw i8, ptr %32, i64 160
  store <4 x i64> %45, ptr %46, align 32
  br label %47

47:                                               ; preds = %17, %25
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %5, align 64
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -7046029288634856825, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -4417276706812531889, ptr %50, align 16
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1609587929392839161, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 -8796714831421723037, ptr %52, align 32
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 2246822519, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 2870177450012600261, ptr %54, align 16
  %55 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 2654435761, ptr %55, align 8
  store i64 %1, ptr %18, align 8
  br label %56

56:                                               ; preds = %7, %47
  %57 = phi i32 [ 0, %7 ], [ 1, %47 ]
  %58 = phi ptr [ @XXH3_kSecret, %7 ], [ null, %47 ]
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 516
  store i32 %57, ptr %59, align 4
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 568
  store ptr %58, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 544
  store i64 128, ptr %61, align 32
  %62 = getelementptr inbounds nuw i8, ptr %5, i64 536
  store i64 16, ptr %62, align 8
  call fastcc void @XXH_INLINE_XXH3_64bits_update(ptr noundef %5, ptr noundef %0, i64 noundef 200)
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 200
  call fastcc void @XXH_INLINE_XXH3_64bits_update(ptr noundef %5, ptr noundef nonnull %63, i64 noundef 50)
  %64 = getelementptr inbounds nuw i8, ptr %5, i64 568
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %68 = select i1 %66, ptr %67, ptr %65
  %69 = getelementptr inbounds nuw i8, ptr %5, i64 528
  %70 = load i64, ptr %69, align 16
  %71 = icmp ugt i64 %70, 240
  br i1 %71, label %72, label %251

72:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %4, ptr noundef nonnull readonly align 64 dereferenceable(64) %5, i64 64, i1 false)
  %73 = getelementptr inbounds nuw i8, ptr %5, i64 512
  %74 = load i32, ptr %73, align 64
  %75 = icmp ugt i32 %74, 63
  br i1 %75, label %76, label %185

76:                                               ; preds = %72
  %77 = add i32 %74, -1
  %78 = lshr i32 %77, 6
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw i8, ptr %5, i64 520
  %81 = load i64, ptr %80, align 8
  %82 = getelementptr inbounds nuw i8, ptr %5, i64 536
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds nuw i8, ptr %5, i64 256
  %85 = getelementptr inbounds nuw i8, ptr %5, i64 544
  %86 = load i64, ptr %85, align 32
  call void @llvm.experimental.noalias.scope.decl(metadata !6)
  call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %87 = shl i64 %81, 3
  %88 = getelementptr inbounds nuw i8, ptr %68, i64 %87
  %89 = sub i64 %83, %81
  %90 = icmp ugt i64 %89, %79
  br i1 %90, label %148, label %91

91:                                               ; preds = %76
  %92 = getelementptr inbounds nuw i8, ptr %68, i64 %86
  br label %93

93:                                               ; preds = %143, %91
  %94 = phi i64 [ %146, %143 ], [ %79, %91 ]
  %95 = phi ptr [ %145, %143 ], [ %84, %91 ]
  %96 = phi ptr [ %68, %143 ], [ %88, %91 ]
  %97 = phi i64 [ %83, %143 ], [ %89, %91 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %126, label %99

99:                                               ; preds = %93, %123
  %100 = phi i64 [ %124, %123 ], [ 0, %93 ]
  %101 = shl i64 %100, 6
  %102 = getelementptr inbounds nuw i8, ptr %95, i64 %101
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %103, i32 0, i32 3, i32 1), !noalias !20
  %104 = shl i64 %100, 3
  %105 = getelementptr inbounds nuw i8, ptr %96, i64 %104
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  br label %106

106:                                              ; preds = %106, %99
  %107 = phi i64 [ 0, %99 ], [ %121, %106 ]
  %108 = getelementptr inbounds nuw <4 x i64>, ptr %102, i64 %107
  %109 = load <4 x i64>, ptr %108, align 1, !alias.scope !29, !noalias !30
  %110 = getelementptr inbounds nuw <4 x i64>, ptr %105, i64 %107
  %111 = load <4 x i64>, ptr %110, align 1, !alias.scope !31, !noalias !32
  %112 = xor <4 x i64> %111, %109
  %113 = lshr <4 x i64> %112, splat (i64 32)
  %114 = and <4 x i64> %112, splat (i64 4294967295)
  %115 = mul nuw <4 x i64> %114, %113
  %116 = shufflevector <4 x i64> %109, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %117 = getelementptr inbounds nuw <4 x i64>, ptr %4, i64 %107
  %118 = load <4 x i64>, ptr %117, align 32, !alias.scope !33, !noalias !34
  %119 = add <4 x i64> %118, %116
  %120 = add <4 x i64> %119, %115
  store <4 x i64> %120, ptr %117, align 32, !alias.scope !33, !noalias !34
  %121 = add nuw nsw i64 %107, 1
  %122 = icmp eq i64 %107, 0
  br i1 %122, label %106, label %123

123:                                              ; preds = %106
  %124 = add nuw i64 %100, 1
  %125 = icmp eq i64 %124, %97
  br i1 %125, label %126, label %99

126:                                              ; preds = %123, %93
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  br label %127

127:                                              ; preds = %127, %126
  %128 = phi i64 [ 0, %126 ], [ %141, %127 ]
  %129 = getelementptr inbounds nuw <4 x i64>, ptr %4, i64 %128
  %130 = load <4 x i64>, ptr %129, align 32, !alias.scope !44, !noalias !45
  %131 = lshr <4 x i64> %130, splat (i64 47)
  %132 = getelementptr inbounds nuw <4 x i64>, ptr %92, i64 %128
  %133 = load <4 x i64>, ptr %132, align 1, !alias.scope !46, !noalias !47
  %134 = xor <4 x i64> %133, %131
  %135 = xor <4 x i64> %134, %130
  %136 = lshr <4 x i64> %135, splat (i64 32)
  %137 = and <4 x i64> %135, splat (i64 4294967295)
  %138 = mul nuw <4 x i64> %137, splat (i64 2654435761)
  %139 = mul <4 x i64> %136, splat (i64 -7046029290881679360)
  %140 = add <4 x i64> %138, %139
  store <4 x i64> %140, ptr %129, align 32, !alias.scope !44, !noalias !45
  %141 = add nuw nsw i64 %128, 1
  %142 = icmp eq i64 %128, 0
  br i1 %142, label %127, label %143

143:                                              ; preds = %127
  %144 = shl i64 %97, 6
  %145 = getelementptr inbounds nuw i8, ptr %95, i64 %144
  %146 = sub i64 %94, %97
  %147 = icmp ult i64 %146, %83
  br i1 %147, label %148, label %93

148:                                              ; preds = %143, %76
  %149 = phi i64 [ %79, %76 ], [ %146, %143 ]
  %150 = phi ptr [ %84, %76 ], [ %145, %143 ]
  %151 = phi ptr [ %88, %76 ], [ %68, %143 ]
  %152 = icmp eq i64 %149, 0
  br i1 %152, label %181, label %153

153:                                              ; preds = %148
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  br label %154

154:                                              ; preds = %178, %153
  %155 = phi i64 [ 0, %153 ], [ %179, %178 ]
  %156 = shl i64 %155, 6
  %157 = getelementptr inbounds nuw i8, ptr %150, i64 %156
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %158, i32 0, i32 3, i32 1), !noalias !57
  %159 = shl i64 %155, 3
  %160 = getelementptr inbounds nuw i8, ptr %151, i64 %159
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  br label %161

161:                                              ; preds = %161, %154
  %162 = phi i64 [ 0, %154 ], [ %176, %161 ]
  %163 = getelementptr inbounds nuw <4 x i64>, ptr %157, i64 %162
  %164 = load <4 x i64>, ptr %163, align 1, !alias.scope !65, !noalias !66
  %165 = getelementptr inbounds nuw <4 x i64>, ptr %160, i64 %162
  %166 = load <4 x i64>, ptr %165, align 1, !alias.scope !67, !noalias !68
  %167 = xor <4 x i64> %166, %164
  %168 = lshr <4 x i64> %167, splat (i64 32)
  %169 = and <4 x i64> %167, splat (i64 4294967295)
  %170 = mul nuw <4 x i64> %169, %168
  %171 = shufflevector <4 x i64> %164, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %172 = getelementptr inbounds nuw <4 x i64>, ptr %4, i64 %162
  %173 = load <4 x i64>, ptr %172, align 32, !alias.scope !69, !noalias !70
  %174 = add <4 x i64> %173, %171
  %175 = add <4 x i64> %174, %170
  store <4 x i64> %175, ptr %172, align 32, !alias.scope !69, !noalias !70
  %176 = add nuw nsw i64 %162, 1
  %177 = icmp eq i64 %162, 0
  br i1 %177, label %161, label %178

178:                                              ; preds = %161
  %179 = add nuw i64 %155, 1
  %180 = icmp eq i64 %179, %149
  br i1 %180, label %181, label %154

181:                                              ; preds = %178, %148
  %182 = zext i32 %74 to i64
  %183 = getelementptr inbounds nuw i8, ptr %84, i64 %182
  %184 = getelementptr inbounds i8, ptr %183, i64 -64
  br label %194

185:                                              ; preds = %72
  %186 = sub nuw nsw i32 64, %74
  %187 = zext nneg i32 %186 to i64
  %188 = icmp ne i32 %74, 0
  call void @llvm.assume(i1 %188)
  %189 = getelementptr inbounds nuw i8, ptr %5, i64 256
  %190 = sub nsw i64 0, %187
  %191 = getelementptr inbounds i8, ptr %73, i64 %190
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull readonly align 1 %191, i64 %187, i1 false)
  %192 = getelementptr inbounds nuw i8, ptr %3, i64 %187
  %193 = zext nneg i32 %74 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %192, ptr nonnull readonly align 64 %189, i64 %193, i1 false)
  br label %194

194:                                              ; preds = %185, %181
  %195 = phi ptr [ %184, %181 ], [ %3, %185 ]
  %196 = getelementptr inbounds nuw i8, ptr %5, i64 544
  %197 = load i64, ptr %196, align 32
  %198 = getelementptr inbounds nuw i8, ptr %68, i64 %197
  %199 = getelementptr inbounds i8, ptr %198, i64 -7
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  br label %200

200:                                              ; preds = %200, %194
  %201 = phi i64 [ 0, %194 ], [ %215, %200 ]
  %202 = getelementptr inbounds nuw <4 x i64>, ptr %195, i64 %201
  %203 = load <4 x i64>, ptr %202, align 1, !alias.scope !74, !noalias !78
  %204 = getelementptr inbounds nuw <4 x i64>, ptr %199, i64 %201
  %205 = load <4 x i64>, ptr %204, align 1, !alias.scope !76, !noalias !79
  %206 = xor <4 x i64> %205, %203
  %207 = lshr <4 x i64> %206, splat (i64 32)
  %208 = and <4 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <4 x i64> %208, %207
  %210 = shufflevector <4 x i64> %203, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %211 = getelementptr inbounds nuw <4 x i64>, ptr %4, i64 %201
  %212 = load <4 x i64>, ptr %211, align 32, !alias.scope !71, !noalias !80
  %213 = add <4 x i64> %212, %210
  %214 = add <4 x i64> %213, %209
  store <4 x i64> %214, ptr %211, align 32, !alias.scope !71, !noalias !80
  %215 = add nuw nsw i64 %201, 1
  %216 = icmp eq i64 %201, 0
  br i1 %216, label %200, label %217

217:                                              ; preds = %200
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %218 = getelementptr inbounds nuw i8, ptr %5, i64 75
  %219 = getelementptr inbounds nuw i8, ptr %65, i64 11
  %220 = select i1 %66, ptr %218, ptr %219
  %221 = mul i64 %70, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  br label %222

222:                                              ; preds = %222, %217
  %223 = phi i64 [ 0, %217 ], [ %243, %222 ]
  %224 = phi i64 [ %221, %217 ], [ %242, %222 ]
  %225 = shl nuw nsw i64 %223, 4
  %226 = getelementptr inbounds nuw i8, ptr %4, i64 %225
  %227 = getelementptr inbounds nuw i8, ptr %220, i64 %225
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %228 = load i64, ptr %226, align 16, !alias.scope !96, !noalias !97
  %229 = load i64, ptr %227, align 1, !alias.scope !97, !noalias !96
  %230 = xor i64 %229, %228
  %231 = getelementptr inbounds nuw i8, ptr %226, i64 8
  %232 = load i64, ptr %231, align 8, !alias.scope !96, !noalias !97
  %233 = getelementptr inbounds nuw i8, ptr %227, i64 8
  %234 = load i64, ptr %233, align 1, !alias.scope !97, !noalias !96
  %235 = xor i64 %234, %232
  %236 = zext i64 %230 to i128
  %237 = zext i64 %235 to i128
  %238 = mul nuw i128 %237, %236
  %239 = lshr i128 %238, 64
  %240 = xor i128 %239, %238
  %241 = trunc i128 %240 to i64
  %242 = add i64 %224, %241
  %243 = add nuw nsw i64 %223, 1
  %244 = icmp eq i64 %243, 4
  br i1 %244, label %245, label %222

245:                                              ; preds = %222
  %246 = lshr i64 %242, 37
  %247 = xor i64 %246, %242
  %248 = mul i64 %247, 1609587791953885689
  %249 = lshr i64 %248, 32
  %250 = xor i64 %249, %248
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %265

251:                                              ; preds = %56
  %252 = getelementptr inbounds nuw i8, ptr %5, i64 516
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 0
  %255 = getelementptr inbounds nuw i8, ptr %5, i64 256
  br i1 %254, label %260, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds nuw i8, ptr %5, i64 552
  %258 = load i64, ptr %257, align 8
  %259 = call fastcc i64 @XXH3_64bits_internal(ptr noundef nonnull readonly %255, i64 noundef range(i64 0, 241) %70, i64 noundef %258, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  br label %265

260:                                              ; preds = %251
  %261 = getelementptr inbounds nuw i8, ptr %5, i64 544
  %262 = load i64, ptr %261, align 32
  %263 = add i64 %262, 64
  %264 = call fastcc i64 @XXH3_64bits_internal(ptr noundef nonnull readonly %255, i64 noundef range(i64 0, 241) %70, i64 noundef 0, ptr noundef nonnull %68, i64 noundef %263)
  br label %265

265:                                              ; preds = %245, %256, %260
  %266 = phi i64 [ %250, %245 ], [ %259, %256 ], [ %264, %260 ]
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %5) #12
  ret i64 %266
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH_INLINE_XXH3_64bits_update(ptr noundef nonnull %0, ptr noundef %1, i64 noundef range(i64 50, 201) %2) unnamed_addr #3 {
  %4 = alloca [8 x i64], align 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %5 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %5)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %7 = load i64, ptr %6, align 16, !alias.scope !99, !noalias !102
  %8 = add i64 %7, %2
  store i64 %8, ptr %6, align 16, !alias.scope !99, !noalias !102
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %10 = load i32, ptr %9, align 64, !alias.scope !99, !noalias !102
  %11 = icmp ult i32 %10, 257
  tail call void @llvm.assume(i1 %11)
  %12 = sub nuw nsw i32 256, %10
  %13 = zext nneg i32 %12 to i64
  %14 = icmp samesign ugt i64 %2, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %17 = zext nneg i32 %10 to i64
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 range(i64 50, 201) %2, i1 false), !alias.scope !104
  %19 = trunc nuw nsw i64 %2 to i32
  %20 = load i32, ptr %9, align 64, !alias.scope !99, !noalias !102
  %21 = add i32 %20, %19
  store i32 %21, ptr %9, align 64, !alias.scope !99, !noalias !102
  br label %272

22:                                               ; preds = %3
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %25 = load ptr, ptr %24, align 8, !alias.scope !99, !noalias !102
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %28 = select i1 %26, ptr %27, ptr %25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12, !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %4, ptr noundef nonnull align 64 dereferenceable(64) %0, i64 64, i1 false), !noalias !102
  %29 = icmp eq i32 %10, 0
  br i1 %29, label %140, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %32 = zext nneg i32 %10 to i64
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull align 1 %1, i64 %13, i1 false), !alias.scope !104
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 %13
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %37 = load i64, ptr %36, align 8, !alias.scope !99, !noalias !102
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %39 = load i64, ptr %38, align 32, !alias.scope !99, !noalias !102
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %40 = load i64, ptr %35, align 8, !alias.scope !114, !noalias !115
  %41 = shl i64 %40, 3
  %42 = getelementptr inbounds nuw i8, ptr %28, i64 %41
  %43 = sub i64 %37, %40
  %44 = icmp ugt i64 %43, 4
  br i1 %44, label %103, label %45

45:                                               ; preds = %30
  %46 = getelementptr inbounds nuw i8, ptr %28, i64 %39
  br label %47

47:                                               ; preds = %97, %45
  %48 = phi i64 [ %100, %97 ], [ 4, %45 ]
  %49 = phi ptr [ %99, %97 ], [ %31, %45 ]
  %50 = phi ptr [ %28, %97 ], [ %42, %45 ]
  %51 = phi i64 [ %37, %97 ], [ %43, %45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %47, %77
  %54 = phi i64 [ %78, %77 ], [ 0, %47 ]
  %55 = shl i64 %54, 6
  %56 = getelementptr inbounds nuw i8, ptr %49, i64 %55
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %57, i32 0, i32 3, i32 1), !noalias !123
  %58 = shl i64 %54, 3
  %59 = getelementptr inbounds nuw i8, ptr %50, i64 %58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  br label %60

60:                                               ; preds = %60, %53
  %61 = phi i64 [ 0, %53 ], [ %75, %60 ]
  %62 = getelementptr inbounds nuw <4 x i64>, ptr %56, i64 %61
  %63 = load <4 x i64>, ptr %62, align 1, !alias.scope !131, !noalias !132
  %64 = getelementptr inbounds nuw <4 x i64>, ptr %59, i64 %61
  %65 = load <4 x i64>, ptr %64, align 1, !alias.scope !133, !noalias !134
  %66 = xor <4 x i64> %65, %63
  %67 = lshr <4 x i64> %66, splat (i64 32)
  %68 = and <4 x i64> %66, splat (i64 4294967295)
  %69 = mul nuw <4 x i64> %68, %67
  %70 = shufflevector <4 x i64> %63, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %71 = getelementptr inbounds nuw <4 x i64>, ptr %4, i64 %61
  %72 = load <4 x i64>, ptr %71, align 32, !alias.scope !135, !noalias !136
  %73 = add <4 x i64> %72, %70
  %74 = add <4 x i64> %73, %69
  store <4 x i64> %74, ptr %71, align 32, !alias.scope !135, !noalias !136
  %75 = add nuw nsw i64 %61, 1
  %76 = icmp eq i64 %61, 0
  br i1 %76, label %60, label %77

77:                                               ; preds = %60
  %78 = add nuw i64 %54, 1
  %79 = icmp eq i64 %78, %51
  br i1 %79, label %80, label %53

80:                                               ; preds = %77, %47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  br label %81

81:                                               ; preds = %81, %80
  %82 = phi i64 [ 0, %80 ], [ %95, %81 ]
  %83 = getelementptr inbounds nuw <4 x i64>, ptr %4, i64 %82
  %84 = load <4 x i64>, ptr %83, align 32, !alias.scope !142, !noalias !143
  %85 = lshr <4 x i64> %84, splat (i64 47)
  %86 = getelementptr inbounds nuw <4 x i64>, ptr %46, i64 %82
  %87 = load <4 x i64>, ptr %86, align 1, !alias.scope !144, !noalias !145
  %88 = xor <4 x i64> %87, %85
  %89 = xor <4 x i64> %88, %84
  %90 = lshr <4 x i64> %89, splat (i64 32)
  %91 = and <4 x i64> %89, splat (i64 4294967295)
  %92 = mul nuw <4 x i64> %91, splat (i64 2654435761)
  %93 = mul <4 x i64> %90, splat (i64 -7046029290881679360)
  %94 = add <4 x i64> %92, %93
  store <4 x i64> %94, ptr %83, align 32, !alias.scope !142, !noalias !143
  %95 = add nuw nsw i64 %82, 1
  %96 = icmp eq i64 %82, 0
  br i1 %96, label %81, label %97

97:                                               ; preds = %81
  %98 = shl i64 %51, 6
  %99 = getelementptr inbounds nuw i8, ptr %49, i64 %98
  %100 = sub i64 %48, %51
  %101 = icmp ult i64 %100, %37
  br i1 %101, label %102, label %47

102:                                              ; preds = %97
  store i64 0, ptr %35, align 8, !alias.scope !114, !noalias !115
  br label %103

103:                                              ; preds = %102, %30
  %104 = phi i64 [ %100, %102 ], [ 4, %30 ]
  %105 = phi ptr [ %99, %102 ], [ %31, %30 ]
  %106 = phi ptr [ %28, %102 ], [ %42, %30 ]
  %107 = icmp eq i64 %104, 0
  br i1 %107, label %139, label %108

108:                                              ; preds = %103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  br label %109

109:                                              ; preds = %133, %108
  %110 = phi i64 [ 0, %108 ], [ %134, %133 ]
  %111 = shl i64 %110, 6
  %112 = getelementptr inbounds nuw i8, ptr %105, i64 %111
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %113, i32 0, i32 3, i32 1), !noalias !153
  %114 = shl i64 %110, 3
  %115 = getelementptr inbounds nuw i8, ptr %106, i64 %114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  br label %116

116:                                              ; preds = %116, %109
  %117 = phi i64 [ 0, %109 ], [ %131, %116 ]
  %118 = getelementptr inbounds nuw <4 x i64>, ptr %112, i64 %117
  %119 = load <4 x i64>, ptr %118, align 1, !alias.scope !161, !noalias !162
  %120 = getelementptr inbounds nuw <4 x i64>, ptr %115, i64 %117
  %121 = load <4 x i64>, ptr %120, align 1, !alias.scope !163, !noalias !164
  %122 = xor <4 x i64> %121, %119
  %123 = lshr <4 x i64> %122, splat (i64 32)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = shufflevector <4 x i64> %119, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %127 = getelementptr inbounds nuw <4 x i64>, ptr %4, i64 %117
  %128 = load <4 x i64>, ptr %127, align 32, !alias.scope !165, !noalias !166
  %129 = add <4 x i64> %128, %126
  %130 = add <4 x i64> %129, %125
  store <4 x i64> %130, ptr %127, align 32, !alias.scope !165, !noalias !166
  %131 = add nuw nsw i64 %117, 1
  %132 = icmp eq i64 %117, 0
  br i1 %132, label %116, label %133

133:                                              ; preds = %116
  %134 = add nuw i64 %110, 1
  %135 = icmp eq i64 %134, %104
  br i1 %135, label %136, label %109

136:                                              ; preds = %133
  %137 = load i64, ptr %35, align 8, !alias.scope !114, !noalias !115
  %138 = add i64 %137, %104
  store i64 %138, ptr %35, align 8, !alias.scope !114, !noalias !115
  br label %139

139:                                              ; preds = %136, %103
  store i32 0, ptr %9, align 64, !alias.scope !99, !noalias !102
  br label %140

140:                                              ; preds = %139, %22
  %141 = phi ptr [ %34, %139 ], [ %1, %22 ]
  %142 = icmp ult ptr %141, %23
  tail call void @llvm.assume(i1 %142)
  %143 = ptrtoint ptr %23 to i64
  %144 = ptrtoint ptr %141 to i64
  %145 = sub i64 %143, %144
  %146 = icmp sgt i64 %145, 256
  br i1 %146, label %147, label %262

147:                                              ; preds = %140
  %148 = getelementptr inbounds i8, ptr %23, i64 -1
  %149 = ptrtoint ptr %148 to i64
  %150 = sub i64 %149, %144
  %151 = lshr i64 %150, 6
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %154 = load i64, ptr %153, align 8, !alias.scope !99, !noalias !102
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %156 = load i64, ptr %155, align 32, !alias.scope !99, !noalias !102
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %157 = load i64, ptr %152, align 8, !alias.scope !176, !noalias !177
  %158 = shl i64 %157, 3
  %159 = getelementptr inbounds nuw i8, ptr %28, i64 %158
  %160 = sub i64 %154, %157
  %161 = icmp ult i64 %151, %160
  br i1 %161, label %220, label %162

162:                                              ; preds = %147
  %163 = getelementptr inbounds nuw i8, ptr %28, i64 %156
  br label %164

164:                                              ; preds = %214, %162
  %165 = phi i64 [ %217, %214 ], [ %151, %162 ]
  %166 = phi ptr [ %216, %214 ], [ %141, %162 ]
  %167 = phi ptr [ %28, %214 ], [ %159, %162 ]
  %168 = phi i64 [ %154, %214 ], [ %160, %162 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %197, label %170

170:                                              ; preds = %164, %194
  %171 = phi i64 [ %195, %194 ], [ 0, %164 ]
  %172 = shl i64 %171, 6
  %173 = getelementptr inbounds nuw i8, ptr %166, i64 %172
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %174, i32 0, i32 3, i32 1), !noalias !185
  %175 = shl i64 %171, 3
  %176 = getelementptr inbounds nuw i8, ptr %167, i64 %175
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  br label %177

177:                                              ; preds = %177, %170
  %178 = phi i64 [ 0, %170 ], [ %192, %177 ]
  %179 = getelementptr inbounds nuw <4 x i64>, ptr %173, i64 %178
  %180 = load <4 x i64>, ptr %179, align 1, !alias.scope !193, !noalias !194
  %181 = getelementptr inbounds nuw <4 x i64>, ptr %176, i64 %178
  %182 = load <4 x i64>, ptr %181, align 1, !alias.scope !195, !noalias !196
  %183 = xor <4 x i64> %182, %180
  %184 = lshr <4 x i64> %183, splat (i64 32)
  %185 = and <4 x i64> %183, splat (i64 4294967295)
  %186 = mul nuw <4 x i64> %185, %184
  %187 = shufflevector <4 x i64> %180, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %188 = getelementptr inbounds nuw <4 x i64>, ptr %4, i64 %178
  %189 = load <4 x i64>, ptr %188, align 32, !alias.scope !197, !noalias !198
  %190 = add <4 x i64> %189, %187
  %191 = add <4 x i64> %190, %186
  store <4 x i64> %191, ptr %188, align 32, !alias.scope !197, !noalias !198
  %192 = add nuw nsw i64 %178, 1
  %193 = icmp eq i64 %178, 0
  br i1 %193, label %177, label %194

194:                                              ; preds = %177
  %195 = add nuw i64 %171, 1
  %196 = icmp eq i64 %195, %168
  br i1 %196, label %197, label %170

197:                                              ; preds = %194, %164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  br label %198

198:                                              ; preds = %198, %197
  %199 = phi i64 [ 0, %197 ], [ %212, %198 ]
  %200 = getelementptr inbounds nuw <4 x i64>, ptr %4, i64 %199
  %201 = load <4 x i64>, ptr %200, align 32, !alias.scope !204, !noalias !205
  %202 = lshr <4 x i64> %201, splat (i64 47)
  %203 = getelementptr inbounds nuw <4 x i64>, ptr %163, i64 %199
  %204 = load <4 x i64>, ptr %203, align 1, !alias.scope !206, !noalias !207
  %205 = xor <4 x i64> %204, %202
  %206 = xor <4 x i64> %205, %201
  %207 = lshr <4 x i64> %206, splat (i64 32)
  %208 = and <4 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <4 x i64> %208, splat (i64 2654435761)
  %210 = mul <4 x i64> %207, splat (i64 -7046029290881679360)
  %211 = add <4 x i64> %209, %210
  store <4 x i64> %211, ptr %200, align 32, !alias.scope !204, !noalias !205
  %212 = add nuw nsw i64 %199, 1
  %213 = icmp eq i64 %199, 0
  br i1 %213, label %198, label %214

214:                                              ; preds = %198
  %215 = shl i64 %168, 6
  %216 = getelementptr inbounds nuw i8, ptr %166, i64 %215
  %217 = sub i64 %165, %168
  %218 = icmp ult i64 %217, %154
  br i1 %218, label %219, label %164

219:                                              ; preds = %214
  store i64 0, ptr %152, align 8, !alias.scope !176, !noalias !177
  br label %220

220:                                              ; preds = %219, %147
  %221 = phi i64 [ %217, %219 ], [ %151, %147 ]
  %222 = phi ptr [ %216, %219 ], [ %141, %147 ]
  %223 = phi ptr [ %28, %219 ], [ %159, %147 ]
  %224 = icmp eq i64 %221, 0
  br i1 %224, label %258, label %225

225:                                              ; preds = %220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  br label %226

226:                                              ; preds = %250, %225
  %227 = phi i64 [ 0, %225 ], [ %251, %250 ]
  %228 = shl i64 %227, 6
  %229 = getelementptr inbounds nuw i8, ptr %222, i64 %228
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %230, i32 0, i32 3, i32 1), !noalias !215
  %231 = shl i64 %227, 3
  %232 = getelementptr inbounds nuw i8, ptr %223, i64 %231
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  br label %233

233:                                              ; preds = %233, %226
  %234 = phi i64 [ 0, %226 ], [ %248, %233 ]
  %235 = getelementptr inbounds nuw <4 x i64>, ptr %229, i64 %234
  %236 = load <4 x i64>, ptr %235, align 1, !alias.scope !223, !noalias !224
  %237 = getelementptr inbounds nuw <4 x i64>, ptr %232, i64 %234
  %238 = load <4 x i64>, ptr %237, align 1, !alias.scope !225, !noalias !226
  %239 = xor <4 x i64> %238, %236
  %240 = lshr <4 x i64> %239, splat (i64 32)
  %241 = and <4 x i64> %239, splat (i64 4294967295)
  %242 = mul nuw <4 x i64> %241, %240
  %243 = shufflevector <4 x i64> %236, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %244 = getelementptr inbounds nuw <4 x i64>, ptr %4, i64 %234
  %245 = load <4 x i64>, ptr %244, align 32, !alias.scope !227, !noalias !228
  %246 = add <4 x i64> %245, %243
  %247 = add <4 x i64> %246, %242
  store <4 x i64> %247, ptr %244, align 32, !alias.scope !227, !noalias !228
  %248 = add nuw nsw i64 %234, 1
  %249 = icmp eq i64 %234, 0
  br i1 %249, label %233, label %250

250:                                              ; preds = %233
  %251 = add nuw i64 %227, 1
  %252 = icmp eq i64 %251, %221
  br i1 %252, label %253, label %226

253:                                              ; preds = %250
  %254 = shl i64 %221, 6
  %255 = getelementptr inbounds nuw i8, ptr %222, i64 %254
  %256 = load i64, ptr %152, align 8, !alias.scope !176, !noalias !177
  %257 = add i64 %256, %221
  store i64 %257, ptr %152, align 8, !alias.scope !176, !noalias !177
  br label %258

258:                                              ; preds = %253, %220
  %259 = phi ptr [ %255, %253 ], [ %222, %220 ]
  %260 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %261 = getelementptr inbounds i8, ptr %259, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %260, ptr noundef nonnull align 1 dereferenceable(64) %261, i64 64, i1 false), !alias.scope !104
  br label %262

262:                                              ; preds = %258, %140
  %263 = phi ptr [ %259, %258 ], [ %141, %140 ]
  %264 = icmp ult ptr %263, %23
  tail call void @llvm.assume(i1 %264)
  %265 = ptrtoint ptr %263 to i64
  %266 = sub i64 %143, %265
  %267 = icmp slt i64 %266, 257
  tail call void @llvm.assume(i1 %267)
  %268 = load i32, ptr %9, align 64, !alias.scope !99, !noalias !102
  %269 = icmp eq i32 %268, 0
  tail call void @llvm.assume(i1 %269)
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %270, ptr align 1 %263, i64 %266, i1 false), !alias.scope !104
  %271 = trunc i64 %266 to i32
  store i32 %271, ptr %9, align 64, !alias.scope !99, !noalias !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %0, ptr noundef nonnull align 32 dereferenceable(64) %4, i64 64, i1 false), !noalias !102
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12, !noalias !104
  br label %272

272:                                              ; preds = %15, %262
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
  br i1 %9, label %10, label %45, !prof !229

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
  br label %336

45:                                               ; preds = %8
  %46 = icmp samesign ugt i64 %1, 3
  br i1 %46, label %47, label %49, !prof !229

47:                                               ; preds = %45
  %48 = tail call fastcc i64 @XXH3_len_4to8_64b(ptr noundef nonnull readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %3, i64 noundef %2) #14
  br label %336

49:                                               ; preds = %45
  %50 = icmp eq i64 %1, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %49
  %52 = tail call fastcc i64 @XXH3_len_1to3_64b(ptr noundef nonnull readonly %0, i64 noundef range(i64 0, 17) %1, ptr noundef readonly %3, i64 noundef %2) #14
  br label %336

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
  br label %336

68:                                               ; preds = %5
  %69 = icmp samesign ult i64 %1, 129
  %70 = mul i64 %1, -7046029288634856825
  br i1 %69, label %71, label %243

71:                                               ; preds = %68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %80 = load i64, ptr %78, align 1, !alias.scope !240, !noalias !241
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %82 = load i64, ptr %81, align 1, !alias.scope !240, !noalias !241
  %83 = load i64, ptr %79, align 1, !alias.scope !241, !noalias !240
  %84 = add i64 %83, %2
  %85 = xor i64 %84, %80
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %87 = load i64, ptr %86, align 1, !alias.scope !241, !noalias !240
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %100 = load i64, ptr %98, align 1, !alias.scope !247, !noalias !248
  %101 = getelementptr inbounds i8, ptr %97, i64 -56
  %102 = load i64, ptr %101, align 1, !alias.scope !247, !noalias !248
  %103 = load i64, ptr %99, align 1, !alias.scope !248, !noalias !247
  %104 = add i64 %103, %2
  %105 = xor i64 %104, %100
  %106 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %107 = load i64, ptr %106, align 1, !alias.scope !248, !noalias !247
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %121 = load i64, ptr %119, align 1, !alias.scope !254, !noalias !255
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %123 = load i64, ptr %122, align 1, !alias.scope !254, !noalias !255
  %124 = load i64, ptr %120, align 1, !alias.scope !255, !noalias !254
  %125 = add i64 %124, %2
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %128 = load i64, ptr %127, align 1, !alias.scope !255, !noalias !254
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %141 = load i64, ptr %139, align 1, !alias.scope !261, !noalias !262
  %142 = getelementptr inbounds i8, ptr %138, i64 -40
  %143 = load i64, ptr %142, align 1, !alias.scope !261, !noalias !262
  %144 = load i64, ptr %140, align 1, !alias.scope !262, !noalias !261
  %145 = add i64 %144, %2
  %146 = xor i64 %145, %141
  %147 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %148 = load i64, ptr %147, align 1, !alias.scope !262, !noalias !261
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %162 = load i64, ptr %160, align 1, !alias.scope !268, !noalias !269
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %164 = load i64, ptr %163, align 1, !alias.scope !268, !noalias !269
  %165 = load i64, ptr %161, align 1, !alias.scope !269, !noalias !268
  %166 = add i64 %165, %2
  %167 = xor i64 %166, %162
  %168 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %169 = load i64, ptr %168, align 1, !alias.scope !269, !noalias !268
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %182 = load i64, ptr %180, align 1, !alias.scope !275, !noalias !276
  %183 = getelementptr inbounds i8, ptr %179, i64 -24
  %184 = load i64, ptr %183, align 1, !alias.scope !275, !noalias !276
  %185 = load i64, ptr %181, align 1, !alias.scope !276, !noalias !275
  %186 = add i64 %185, %2
  %187 = xor i64 %186, %182
  %188 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %189 = load i64, ptr %188, align 1, !alias.scope !276, !noalias !275
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %201 = load i64, ptr %0, align 1, !alias.scope !282, !noalias !283
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %203 = load i64, ptr %202, align 1, !alias.scope !282, !noalias !283
  %204 = load i64, ptr %3, align 1, !alias.scope !283, !noalias !282
  %205 = add i64 %204, %2
  %206 = xor i64 %205, %201
  %207 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %208 = load i64, ptr %207, align 1, !alias.scope !283, !noalias !282
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %221 = load i64, ptr %219, align 1, !alias.scope !289, !noalias !290
  %222 = getelementptr inbounds i8, ptr %218, i64 -8
  %223 = load i64, ptr %222, align 1, !alias.scope !289, !noalias !290
  %224 = load i64, ptr %220, align 1, !alias.scope !290, !noalias !289
  %225 = add i64 %224, %2
  %226 = xor i64 %225, %221
  %227 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %228 = load i64, ptr %227, align 1, !alias.scope !290, !noalias !289
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
  br label %336

243:                                              ; preds = %68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  br label %244

244:                                              ; preds = %244, %243
  %245 = phi i64 [ 0, %243 ], [ %267, %244 ]
  %246 = phi i64 [ %70, %243 ], [ %266, %244 ]
  %247 = shl nuw nsw i64 %245, 4
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 %247
  %249 = getelementptr inbounds nuw i8, ptr %3, i64 %247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %250 = load i64, ptr %248, align 1, !alias.scope !301, !noalias !302
  %251 = getelementptr inbounds nuw i8, ptr %248, i64 8
  %252 = load i64, ptr %251, align 1, !alias.scope !301, !noalias !302
  %253 = load i64, ptr %249, align 1, !alias.scope !302, !noalias !301
  %254 = add i64 %253, %2
  %255 = xor i64 %254, %250
  %256 = getelementptr inbounds nuw i8, ptr %249, i64 8
  %257 = load i64, ptr %256, align 1, !alias.scope !302, !noalias !301
  %258 = sub i64 %257, %2
  %259 = xor i64 %258, %252
  %260 = zext i64 %255 to i128
  %261 = zext i64 %259 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %246, %265
  %267 = add nuw nsw i64 %245, 1
  %268 = icmp eq i64 %267, 8
  br i1 %268, label %269, label %244

269:                                              ; preds = %244
  %270 = trunc nuw nsw i64 %1 to i32
  %271 = lshr i32 %270, 4
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %273 = getelementptr inbounds i8, ptr %272, i64 -16
  %274 = getelementptr inbounds nuw i8, ptr %3, i64 119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %275 = load i64, ptr %273, align 1, !alias.scope !309, !noalias !310
  %276 = getelementptr inbounds i8, ptr %272, i64 -8
  %277 = load i64, ptr %276, align 1, !alias.scope !309, !noalias !310
  %278 = load i64, ptr %274, align 1, !alias.scope !310, !noalias !309
  %279 = add i64 %278, %2
  %280 = xor i64 %279, %275
  %281 = getelementptr inbounds nuw i8, ptr %3, i64 127
  %282 = load i64, ptr %281, align 1, !alias.scope !310, !noalias !309
  %283 = sub i64 %282, %2
  %284 = xor i64 %283, %277
  %285 = zext i64 %280 to i128
  %286 = zext i64 %284 to i128
  %287 = mul nuw i128 %286, %285
  %288 = lshr i128 %287, 64
  %289 = xor i128 %288, %287
  %290 = trunc i128 %289 to i64
  %291 = lshr i64 %266, 37
  %292 = xor i64 %291, %266
  %293 = mul i64 %292, 1609587791953885689
  %294 = lshr i64 %293, 32
  %295 = xor i64 %294, %293
  %296 = icmp eq i32 %271, 8
  br i1 %296, label %327, label %297

297:                                              ; preds = %269
  %298 = zext nneg i32 %271 to i64
  br label %299

299:                                              ; preds = %299, %297
  %300 = phi i64 [ 8, %297 ], [ %325, %299 ]
  %301 = phi i64 [ %295, %297 ], [ %303, %299 ]
  %302 = phi i64 [ %290, %297 ], [ %324, %299 ]
  %303 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %301) #13
  %304 = shl nuw nsw i64 %300, 4
  %305 = getelementptr inbounds nuw i8, ptr %0, i64 %304
  %306 = getelementptr i8, ptr %3, i64 %304
  %307 = getelementptr i8, ptr %306, i64 -125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %308 = load i64, ptr %305, align 1, !alias.scope !317, !noalias !318
  %309 = getelementptr inbounds nuw i8, ptr %305, i64 8
  %310 = load i64, ptr %309, align 1, !alias.scope !317, !noalias !318
  %311 = load i64, ptr %307, align 1, !alias.scope !318, !noalias !317
  %312 = add i64 %311, %2
  %313 = xor i64 %312, %308
  %314 = getelementptr i8, ptr %306, i64 -117
  %315 = load i64, ptr %314, align 1, !alias.scope !318, !noalias !317
  %316 = sub i64 %315, %2
  %317 = xor i64 %316, %310
  %318 = zext i64 %313 to i128
  %319 = zext i64 %317 to i128
  %320 = mul nuw i128 %319, %318
  %321 = lshr i128 %320, 64
  %322 = xor i128 %321, %320
  %323 = trunc i128 %322 to i64
  %324 = add i64 %302, %323
  %325 = add nuw nsw i64 %300, 1
  %326 = icmp eq i64 %325, %298
  br i1 %326, label %327, label %299

327:                                              ; preds = %299, %269
  %328 = phi i64 [ %290, %269 ], [ %324, %299 ]
  %329 = phi i64 [ %295, %269 ], [ %303, %299 ]
  %330 = add i64 %329, %328
  %331 = lshr i64 %330, 37
  %332 = xor i64 %331, %330
  %333 = mul i64 %332, 1609587791953885689
  %334 = lshr i64 %333, 32
  %335 = xor i64 %334, %333
  br label %336

336:                                              ; preds = %53, %51, %47, %10, %327, %199
  %337 = phi i64 [ %242, %199 ], [ %335, %327 ], [ %44, %10 ], [ %48, %47 ], [ %52, %51 ], [ %67, %53 ]
  ret i64 %337
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
!5 = !{i64 2152149657}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_consumeStripes: argument 0"}
!8 = distinct !{!8, !"XXH3_consumeStripes"}
!9 = !{!10}
!10 = distinct !{!10, !8, !"XXH3_consumeStripes: argument 2"}
!11 = !{!12}
!12 = distinct !{!12, !8, !"XXH3_consumeStripes: argument 3"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"XXH3_accumulate_avx2: argument 0"}
!15 = distinct !{!15, !"XXH3_accumulate_avx2"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"XXH3_accumulate_avx2: argument 1"}
!18 = !{!19}
!19 = distinct !{!19, !15, !"XXH3_accumulate_avx2: argument 2"}
!20 = !{!19, !21, !12}
!21 = distinct !{!21, !8, !"XXH3_consumeStripes: argument 1"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"XXH3_accumulate_512_avx2: argument 0"}
!24 = distinct !{!24, !"XXH3_accumulate_512_avx2"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"XXH3_accumulate_512_avx2: argument 1"}
!27 = !{!28}
!28 = distinct !{!28, !24, !"XXH3_accumulate_512_avx2: argument 2"}
!29 = !{!26, !17, !10}
!30 = !{!23, !28, !14, !19, !7, !21, !12}
!31 = !{!28, !19, !12}
!32 = !{!23, !26, !14, !17, !7, !21, !10}
!33 = !{!23, !14, !7}
!34 = !{!26, !28, !17, !19, !21, !10, !12}
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !36, !37}
!39 = !{!40}
!40 = distinct !{!40, !41, !"XXH3_scrambleAcc_avx2: argument 0"}
!41 = distinct !{!41, !"XXH3_scrambleAcc_avx2"}
!42 = !{!43}
!43 = distinct !{!43, !41, !"XXH3_scrambleAcc_avx2: argument 1"}
!44 = !{!40, !7}
!45 = !{!43, !21, !10, !12}
!46 = !{!43, !12}
!47 = !{!40, !7, !21, !10}
!48 = distinct !{!48, !36, !37}
!49 = distinct !{!49, !36, !37}
!50 = !{!51}
!51 = distinct !{!51, !52, !"XXH3_accumulate_avx2: argument 0"}
!52 = distinct !{!52, !"XXH3_accumulate_avx2"}
!53 = !{!54}
!54 = distinct !{!54, !52, !"XXH3_accumulate_avx2: argument 1"}
!55 = !{!56}
!56 = distinct !{!56, !52, !"XXH3_accumulate_avx2: argument 2"}
!57 = !{!56, !21, !12}
!58 = !{!59}
!59 = distinct !{!59, !60, !"XXH3_accumulate_512_avx2: argument 0"}
!60 = distinct !{!60, !"XXH3_accumulate_512_avx2"}
!61 = !{!62}
!62 = distinct !{!62, !60, !"XXH3_accumulate_512_avx2: argument 1"}
!63 = !{!64}
!64 = distinct !{!64, !60, !"XXH3_accumulate_512_avx2: argument 2"}
!65 = !{!62, !54, !10}
!66 = !{!59, !64, !51, !56, !7, !21, !12}
!67 = !{!64, !56, !12}
!68 = !{!59, !62, !51, !54, !7, !21, !10}
!69 = !{!59, !51, !7}
!70 = !{!62, !64, !54, !56, !21, !10, !12}
!71 = !{!72}
!72 = distinct !{!72, !73, !"XXH3_accumulate_512_avx2: argument 0"}
!73 = distinct !{!73, !"XXH3_accumulate_512_avx2"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"XXH3_accumulate_512_avx2: argument 1"}
!76 = !{!77}
!77 = distinct !{!77, !73, !"XXH3_accumulate_512_avx2: argument 2"}
!78 = !{!72, !77}
!79 = !{!72, !75}
!80 = !{!75, !77}
!81 = !{!82}
!82 = distinct !{!82, !83, !"XXH3_finalizeLong_64b: argument 0"}
!83 = distinct !{!83, !"XXH3_finalizeLong_64b"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"XXH3_finalizeLong_64b: argument 1"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_mergeAccs: argument 0"}
!88 = distinct !{!88, !"XXH3_mergeAccs"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"XXH3_mergeAccs: argument 1"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"XXH3_mix2Accs: argument 0"}
!93 = distinct !{!93, !"XXH3_mix2Accs"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"XXH3_mix2Accs: argument 1"}
!96 = !{!92, !87, !82}
!97 = !{!95, !90, !85}
!98 = distinct !{!98, !36, !37}
!99 = !{!100}
!100 = distinct !{!100, !101, !"XXH3_update: argument 0"}
!101 = distinct !{!101, !"XXH3_update"}
!102 = !{!103}
!103 = distinct !{!103, !101, !"XXH3_update: argument 1"}
!104 = !{!100, !103}
!105 = !{!106}
!106 = distinct !{!106, !107, !"XXH3_consumeStripes: argument 0"}
!107 = distinct !{!107, !"XXH3_consumeStripes"}
!108 = !{!109}
!109 = distinct !{!109, !107, !"XXH3_consumeStripes: argument 1"}
!110 = !{!111}
!111 = distinct !{!111, !107, !"XXH3_consumeStripes: argument 2"}
!112 = !{!113}
!113 = distinct !{!113, !107, !"XXH3_consumeStripes: argument 3"}
!114 = !{!109, !100}
!115 = !{!106, !111, !113, !103}
!116 = !{!117}
!117 = distinct !{!117, !118, !"XXH3_accumulate_avx2: argument 0"}
!118 = distinct !{!118, !"XXH3_accumulate_avx2"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"XXH3_accumulate_avx2: argument 1"}
!121 = !{!122}
!122 = distinct !{!122, !118, !"XXH3_accumulate_avx2: argument 2"}
!123 = !{!122, !109, !113}
!124 = !{!125}
!125 = distinct !{!125, !126, !"XXH3_accumulate_512_avx2: argument 0"}
!126 = distinct !{!126, !"XXH3_accumulate_512_avx2"}
!127 = !{!128}
!128 = distinct !{!128, !126, !"XXH3_accumulate_512_avx2: argument 1"}
!129 = !{!130}
!130 = distinct !{!130, !126, !"XXH3_accumulate_512_avx2: argument 2"}
!131 = !{!128, !120, !111, !100}
!132 = !{!125, !130, !117, !122, !106, !109, !113, !103}
!133 = !{!130, !122, !113}
!134 = !{!125, !128, !117, !120, !106, !109, !111}
!135 = !{!125, !117, !106}
!136 = !{!128, !130, !120, !122, !109, !111, !113, !100, !103}
!137 = !{!138}
!138 = distinct !{!138, !139, !"XXH3_scrambleAcc_avx2: argument 0"}
!139 = distinct !{!139, !"XXH3_scrambleAcc_avx2"}
!140 = !{!141}
!141 = distinct !{!141, !139, !"XXH3_scrambleAcc_avx2: argument 1"}
!142 = !{!138, !106}
!143 = !{!141, !109, !111, !113, !100, !103}
!144 = !{!141, !113}
!145 = !{!138, !106, !109, !111}
!146 = !{!147}
!147 = distinct !{!147, !148, !"XXH3_accumulate_avx2: argument 0"}
!148 = distinct !{!148, !"XXH3_accumulate_avx2"}
!149 = !{!150}
!150 = distinct !{!150, !148, !"XXH3_accumulate_avx2: argument 1"}
!151 = !{!152}
!152 = distinct !{!152, !148, !"XXH3_accumulate_avx2: argument 2"}
!153 = !{!152, !109, !113}
!154 = !{!155}
!155 = distinct !{!155, !156, !"XXH3_accumulate_512_avx2: argument 0"}
!156 = distinct !{!156, !"XXH3_accumulate_512_avx2"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"XXH3_accumulate_512_avx2: argument 1"}
!159 = !{!160}
!160 = distinct !{!160, !156, !"XXH3_accumulate_512_avx2: argument 2"}
!161 = !{!158, !150, !111, !100}
!162 = !{!155, !160, !147, !152, !106, !109, !113, !103}
!163 = !{!160, !152, !113}
!164 = !{!155, !158, !147, !150, !106, !109, !111}
!165 = !{!155, !147, !106}
!166 = !{!158, !160, !150, !152, !109, !111, !113, !100, !103}
!167 = !{!168}
!168 = distinct !{!168, !169, !"XXH3_consumeStripes: argument 0"}
!169 = distinct !{!169, !"XXH3_consumeStripes"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"XXH3_consumeStripes: argument 1"}
!172 = !{!173}
!173 = distinct !{!173, !169, !"XXH3_consumeStripes: argument 2"}
!174 = !{!175}
!175 = distinct !{!175, !169, !"XXH3_consumeStripes: argument 3"}
!176 = !{!171, !100}
!177 = !{!168, !173, !175, !103}
!178 = !{!179}
!179 = distinct !{!179, !180, !"XXH3_accumulate_avx2: argument 0"}
!180 = distinct !{!180, !"XXH3_accumulate_avx2"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"XXH3_accumulate_avx2: argument 1"}
!183 = !{!184}
!184 = distinct !{!184, !180, !"XXH3_accumulate_avx2: argument 2"}
!185 = !{!184, !171, !175, !100}
!186 = !{!187}
!187 = distinct !{!187, !188, !"XXH3_accumulate_512_avx2: argument 0"}
!188 = distinct !{!188, !"XXH3_accumulate_512_avx2"}
!189 = !{!190}
!190 = distinct !{!190, !188, !"XXH3_accumulate_512_avx2: argument 1"}
!191 = !{!192}
!192 = distinct !{!192, !188, !"XXH3_accumulate_512_avx2: argument 2"}
!193 = !{!190, !182, !173, !103}
!194 = !{!187, !192, !179, !184, !168, !171, !175, !100}
!195 = !{!192, !184, !175}
!196 = !{!187, !190, !179, !182, !168, !171, !173}
!197 = !{!187, !179, !168}
!198 = !{!190, !192, !182, !184, !171, !173, !175, !100, !103}
!199 = !{!200}
!200 = distinct !{!200, !201, !"XXH3_scrambleAcc_avx2: argument 0"}
!201 = distinct !{!201, !"XXH3_scrambleAcc_avx2"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"XXH3_scrambleAcc_avx2: argument 1"}
!204 = !{!200, !168}
!205 = !{!203, !171, !173, !175, !100, !103}
!206 = !{!203, !175}
!207 = !{!200, !168, !171, !173}
!208 = !{!209}
!209 = distinct !{!209, !210, !"XXH3_accumulate_avx2: argument 0"}
!210 = distinct !{!210, !"XXH3_accumulate_avx2"}
!211 = !{!212}
!212 = distinct !{!212, !210, !"XXH3_accumulate_avx2: argument 1"}
!213 = !{!214}
!214 = distinct !{!214, !210, !"XXH3_accumulate_avx2: argument 2"}
!215 = !{!214, !171, !175, !100}
!216 = !{!217}
!217 = distinct !{!217, !218, !"XXH3_accumulate_512_avx2: argument 0"}
!218 = distinct !{!218, !"XXH3_accumulate_512_avx2"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"XXH3_accumulate_512_avx2: argument 1"}
!221 = !{!222}
!222 = distinct !{!222, !218, !"XXH3_accumulate_512_avx2: argument 2"}
!223 = !{!220, !212, !173, !103}
!224 = !{!217, !222, !209, !214, !168, !171, !175, !100}
!225 = !{!222, !214, !175}
!226 = !{!217, !220, !209, !212, !168, !171, !173}
!227 = !{!217, !209, !168}
!228 = !{!220, !222, !212, !214, !171, !173, !175, !100, !103}
!229 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!230 = !{!231}
!231 = distinct !{!231, !232, !"XXH3_len_17to128_64b: argument 0"}
!232 = distinct !{!232, !"XXH3_len_17to128_64b"}
!233 = !{!234}
!234 = distinct !{!234, !232, !"XXH3_len_17to128_64b: argument 1"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"XXH3_mix16B: argument 0"}
!237 = distinct !{!237, !"XXH3_mix16B"}
!238 = !{!239}
!239 = distinct !{!239, !237, !"XXH3_mix16B: argument 1"}
!240 = !{!236, !231}
!241 = !{!239, !234}
!242 = !{!243}
!243 = distinct !{!243, !244, !"XXH3_mix16B: argument 0"}
!244 = distinct !{!244, !"XXH3_mix16B"}
!245 = !{!246}
!246 = distinct !{!246, !244, !"XXH3_mix16B: argument 1"}
!247 = !{!243, !231}
!248 = !{!246, !234}
!249 = !{!250}
!250 = distinct !{!250, !251, !"XXH3_mix16B: argument 0"}
!251 = distinct !{!251, !"XXH3_mix16B"}
!252 = !{!253}
!253 = distinct !{!253, !251, !"XXH3_mix16B: argument 1"}
!254 = !{!250, !231}
!255 = !{!253, !234}
!256 = !{!257}
!257 = distinct !{!257, !258, !"XXH3_mix16B: argument 0"}
!258 = distinct !{!258, !"XXH3_mix16B"}
!259 = !{!260}
!260 = distinct !{!260, !258, !"XXH3_mix16B: argument 1"}
!261 = !{!257, !231}
!262 = !{!260, !234}
!263 = !{!264}
!264 = distinct !{!264, !265, !"XXH3_mix16B: argument 0"}
!265 = distinct !{!265, !"XXH3_mix16B"}
!266 = !{!267}
!267 = distinct !{!267, !265, !"XXH3_mix16B: argument 1"}
!268 = !{!264, !231}
!269 = !{!267, !234}
!270 = !{!271}
!271 = distinct !{!271, !272, !"XXH3_mix16B: argument 0"}
!272 = distinct !{!272, !"XXH3_mix16B"}
!273 = !{!274}
!274 = distinct !{!274, !272, !"XXH3_mix16B: argument 1"}
!275 = !{!271, !231}
!276 = !{!274, !234}
!277 = !{!278}
!278 = distinct !{!278, !279, !"XXH3_mix16B: argument 0"}
!279 = distinct !{!279, !"XXH3_mix16B"}
!280 = !{!281}
!281 = distinct !{!281, !279, !"XXH3_mix16B: argument 1"}
!282 = !{!278, !231}
!283 = !{!281, !234}
!284 = !{!285}
!285 = distinct !{!285, !286, !"XXH3_mix16B: argument 0"}
!286 = distinct !{!286, !"XXH3_mix16B"}
!287 = !{!288}
!288 = distinct !{!288, !286, !"XXH3_mix16B: argument 1"}
!289 = !{!285, !231}
!290 = !{!288, !234}
!291 = !{!292}
!292 = distinct !{!292, !293, !"XXH3_len_129to240_64b: argument 0"}
!293 = distinct !{!293, !"XXH3_len_129to240_64b"}
!294 = !{!295}
!295 = distinct !{!295, !293, !"XXH3_len_129to240_64b: argument 1"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"XXH3_mix16B: argument 0"}
!298 = distinct !{!298, !"XXH3_mix16B"}
!299 = !{!300}
!300 = distinct !{!300, !298, !"XXH3_mix16B: argument 1"}
!301 = !{!297, !292}
!302 = !{!300, !295}
!303 = distinct !{!303, !36, !37}
!304 = !{!305}
!305 = distinct !{!305, !306, !"XXH3_mix16B: argument 0"}
!306 = distinct !{!306, !"XXH3_mix16B"}
!307 = !{!308}
!308 = distinct !{!308, !306, !"XXH3_mix16B: argument 1"}
!309 = !{!305, !292}
!310 = !{!308, !295}
!311 = !{i64 2152147202}
!312 = !{!313}
!313 = distinct !{!313, !314, !"XXH3_mix16B: argument 0"}
!314 = distinct !{!314, !"XXH3_mix16B"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"XXH3_mix16B: argument 1"}
!317 = !{!313, !292}
!318 = !{!316, !295}
!319 = distinct !{!319, !36, !37}
