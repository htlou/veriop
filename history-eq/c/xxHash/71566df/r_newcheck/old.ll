; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/71566df/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/71566df/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64_len300(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i64 noundef 300, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192)
  ret i64 %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_128_len300(ptr noundef writeonly initializes((0, 16)) %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noundef readonly %1, i64 noundef 300, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192) #7
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  store i64 %4, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64sec_len300(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %26) #7
  store i64 %1, ptr %26, align 16
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %2, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 %3, ptr %28, align 16
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i64 %4, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %26, i64 32
  store i64 %5, ptr %30, align 16
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 40
  store i64 %6, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %26, i64 48
  store i64 %7, ptr %32, align 16
  %33 = getelementptr inbounds nuw i8, ptr %26, i64 56
  store i64 %8, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %26, i64 64
  store i64 %9, ptr %34, align 16
  %35 = getelementptr inbounds nuw i8, ptr %26, i64 72
  store i64 %10, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %26, i64 80
  store i64 %11, ptr %36, align 16
  %37 = getelementptr inbounds nuw i8, ptr %26, i64 88
  store i64 %12, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %26, i64 96
  store i64 %13, ptr %38, align 16
  %39 = getelementptr inbounds nuw i8, ptr %26, i64 104
  store i64 %14, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %26, i64 112
  store i64 %15, ptr %40, align 16
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 120
  store i64 %16, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 128
  store i64 %17, ptr %42, align 16
  %43 = getelementptr inbounds nuw i8, ptr %26, i64 136
  store i64 %18, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %26, i64 144
  store i64 %19, ptr %44, align 16
  %45 = getelementptr inbounds nuw i8, ptr %26, i64 152
  store i64 %20, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %26, i64 160
  store i64 %21, ptr %46, align 16
  %47 = getelementptr inbounds nuw i8, ptr %26, i64 168
  store i64 %22, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %26, i64 176
  store i64 %23, ptr %48, align 16
  %49 = getelementptr inbounds nuw i8, ptr %26, i64 184
  store i64 %24, ptr %49, align 8
  %50 = call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i64 noundef 300, ptr noundef nonnull readonly %26, i64 noundef 192)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %26) #7
  ret i64 %50
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_128sec_len300(ptr noundef writeonly initializes((0, 16)) %0, ptr noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25) local_unnamed_addr #1 {
  %27 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef readonly %1, i64 noundef 300) #7
  %28 = extractvalue { i64, i64 } %27, 0
  %29 = extractvalue { i64, i64 } %27, 1
  store i64 %28, ptr %0, align 8
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %29, ptr %30, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noalias noundef readonly %0, i64 noundef %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #3 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = udiv i64 %1, %7
  %9 = urem i64 %1, %7
  %10 = icmp ugt i64 %7, %1
  br i1 %10, label %85, label %11

11:                                               ; preds = %4
  %12 = icmp ult i64 %5, 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %14 = getelementptr inbounds i8, ptr %13, i64 -64
  %15 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %16 = load <4 x i64>, ptr %14, align 1
  %17 = getelementptr inbounds i8, ptr %13, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1
  br label %19

19:                                               ; preds = %11, %60
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %11 ], [ %82, %60 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %11 ], [ %72, %60 ]
  %22 = phi i64 [ 0, %11 ], [ %83, %60 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  br i1 %12, label %60, label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %57, %25 ], [ %20, %19 ]
  %27 = phi <4 x i64> [ %44, %25 ], [ %21, %19 ]
  %28 = phi i64 [ %58, %25 ], [ 0, %19 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1)
  %32 = shl nuw i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load <4 x i64>, ptr %30, align 1
  %35 = load <4 x i64>, ptr %33, align 1
  %36 = xor <4 x i64> %35, %34
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %36, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = add <4 x i64> %27, %34
  %44 = add <4 x i64> %43, %42
  %45 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %46 = load <4 x i64>, ptr %45, align 1
  %47 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %48 = load <4 x i64>, ptr %47, align 1
  %49 = xor <4 x i64> %48, %46
  %50 = bitcast <4 x i64> %49 to <8 x i32>
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %52 = bitcast <8 x i32> %51 to <4 x i64>
  %53 = and <4 x i64> %49, splat (i64 4294967295)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, %53
  %56 = add <4 x i64> %26, %46
  %57 = add <4 x i64> %56, %55
  %58 = add nuw nsw i64 %28, 1
  %59 = icmp eq i64 %58, %15
  br i1 %59, label %60, label %25

60:                                               ; preds = %25, %19
  %61 = phi <4 x i64> [ %20, %19 ], [ %57, %25 ]
  %62 = phi <4 x i64> [ %21, %19 ], [ %44, %25 ]
  %63 = lshr <4 x i64> %62, splat (i64 47)
  %64 = xor <4 x i64> %16, %63
  %65 = xor <4 x i64> %64, %62
  %66 = bitcast <4 x i64> %65 to <8 x i32>
  %67 = shufflevector <8 x i32> %66, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %68 = bitcast <8 x i32> %67 to <4 x i64>
  %69 = and <4 x i64> %65, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, splat (i64 2654435761)
  %71 = mul <4 x i64> %68, splat (i64 -7046029290881679360)
  %72 = add <4 x i64> %71, %70
  %73 = lshr <4 x i64> %61, splat (i64 47)
  %74 = xor <4 x i64> %18, %73
  %75 = xor <4 x i64> %74, %61
  %76 = bitcast <4 x i64> %75 to <8 x i32>
  %77 = shufflevector <8 x i32> %76, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %78 = bitcast <8 x i32> %77 to <4 x i64>
  %79 = and <4 x i64> %75, splat (i64 4294967295)
  %80 = mul nuw <4 x i64> %79, splat (i64 2654435761)
  %81 = mul <4 x i64> %78, splat (i64 -7046029290881679360)
  %82 = add <4 x i64> %81, %80
  %83 = add nuw i64 %22, 1
  %84 = icmp ult i64 %83, %8
  br i1 %84, label %19, label %85

85:                                               ; preds = %60, %4
  %86 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %82, %60 ]
  %87 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %72, %60 ]
  %88 = mul i64 %8, %7
  %89 = lshr i64 %9, 6
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 %88
  %91 = icmp ult i64 %9, 64
  br i1 %91, label %127, label %92

92:                                               ; preds = %85, %92
  %93 = phi <4 x i64> [ %124, %92 ], [ %86, %85 ]
  %94 = phi <4 x i64> [ %111, %92 ], [ %87, %85 ]
  %95 = phi i64 [ %125, %92 ], [ 0, %85 ]
  %96 = shl i64 %95, 6
  %97 = getelementptr inbounds nuw i8, ptr %90, i64 %96
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %98, i32 0, i32 3, i32 1)
  %99 = shl nuw i64 %95, 3
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %99
  %101 = load <4 x i64>, ptr %97, align 1
  %102 = load <4 x i64>, ptr %100, align 1
  %103 = xor <4 x i64> %102, %101
  %104 = bitcast <4 x i64> %103 to <8 x i32>
  %105 = shufflevector <8 x i32> %104, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %106 = bitcast <8 x i32> %105 to <4 x i64>
  %107 = and <4 x i64> %103, splat (i64 4294967295)
  %108 = and <4 x i64> %106, splat (i64 4294967295)
  %109 = mul nuw <4 x i64> %108, %107
  %110 = add <4 x i64> %94, %101
  %111 = add <4 x i64> %110, %109
  %112 = getelementptr inbounds nuw i8, ptr %97, i64 32
  %113 = load <4 x i64>, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %100, i64 32
  %115 = load <4 x i64>, ptr %114, align 1
  %116 = xor <4 x i64> %115, %113
  %117 = bitcast <4 x i64> %116 to <8 x i32>
  %118 = shufflevector <8 x i32> %117, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %119 = bitcast <8 x i32> %118 to <4 x i64>
  %120 = and <4 x i64> %116, splat (i64 4294967295)
  %121 = and <4 x i64> %119, splat (i64 4294967295)
  %122 = mul nuw <4 x i64> %121, %120
  %123 = add <4 x i64> %93, %113
  %124 = add <4 x i64> %123, %122
  %125 = add nuw nsw i64 %95, 1
  %126 = icmp samesign ult i64 %125, %89
  br i1 %126, label %92, label %127

127:                                              ; preds = %92, %85
  %128 = phi <4 x i64> [ %86, %85 ], [ %124, %92 ]
  %129 = phi <4 x i64> [ %87, %85 ], [ %111, %92 ]
  %130 = and i64 %1, 63
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %161, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %134 = getelementptr inbounds i8, ptr %133, i64 -64
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %136 = getelementptr inbounds i8, ptr %135, i64 -71
  %137 = load <4 x i64>, ptr %134, align 1
  %138 = load <4 x i64>, ptr %136, align 1
  %139 = xor <4 x i64> %138, %137
  %140 = bitcast <4 x i64> %139 to <8 x i32>
  %141 = shufflevector <8 x i32> %140, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %142 = bitcast <8 x i32> %141 to <4 x i64>
  %143 = and <4 x i64> %139, splat (i64 4294967295)
  %144 = and <4 x i64> %142, splat (i64 4294967295)
  %145 = mul nuw <4 x i64> %144, %143
  %146 = add <4 x i64> %129, %137
  %147 = add <4 x i64> %146, %145
  %148 = getelementptr inbounds i8, ptr %133, i64 -32
  %149 = load <4 x i64>, ptr %148, align 1
  %150 = getelementptr inbounds i8, ptr %135, i64 -39
  %151 = load <4 x i64>, ptr %150, align 1
  %152 = xor <4 x i64> %151, %149
  %153 = bitcast <4 x i64> %152 to <8 x i32>
  %154 = shufflevector <8 x i32> %153, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %155 = bitcast <8 x i32> %154 to <4 x i64>
  %156 = and <4 x i64> %152, splat (i64 4294967295)
  %157 = and <4 x i64> %155, splat (i64 4294967295)
  %158 = mul nuw <4 x i64> %157, %156
  %159 = add <4 x i64> %128, %149
  %160 = add <4 x i64> %159, %158
  br label %161

161:                                              ; preds = %132, %127
  %162 = phi <4 x i64> [ %128, %127 ], [ %160, %132 ]
  %163 = phi <4 x i64> [ %129, %127 ], [ %147, %132 ]
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %165 = mul i64 %1, -7046029288634856825
  %166 = extractelement <4 x i64> %163, i64 0
  %167 = load i64, ptr %164, align 1
  %168 = xor i64 %167, %166
  %169 = extractelement <4 x i64> %163, i64 1
  %170 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %171 = load i64, ptr %170, align 1
  %172 = xor i64 %171, %169
  %173 = zext i64 %168 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %165, %178
  %180 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %181 = extractelement <4 x i64> %163, i64 2
  %182 = load i64, ptr %180, align 1
  %183 = xor i64 %182, %181
  %184 = extractelement <4 x i64> %163, i64 3
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %186 = load i64, ptr %185, align 1
  %187 = xor i64 %186, %184
  %188 = zext i64 %183 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %179, %193
  %195 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %196 = extractelement <4 x i64> %162, i64 0
  %197 = load i64, ptr %195, align 1
  %198 = xor i64 %197, %196
  %199 = extractelement <4 x i64> %162, i64 1
  %200 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %201 = load i64, ptr %200, align 1
  %202 = xor i64 %201, %199
  %203 = zext i64 %198 to i128
  %204 = zext i64 %202 to i128
  %205 = mul nuw i128 %204, %203
  %206 = lshr i128 %205, 64
  %207 = xor i128 %206, %205
  %208 = trunc i128 %207 to i64
  %209 = add i64 %194, %208
  %210 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %211 = extractelement <4 x i64> %162, i64 2
  %212 = load i64, ptr %210, align 1
  %213 = xor i64 %212, %211
  %214 = extractelement <4 x i64> %162, i64 3
  %215 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %216 = load i64, ptr %215, align 1
  %217 = xor i64 %216, %214
  %218 = zext i64 %213 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %209, %223
  %225 = lshr i64 %224, 37
  %226 = xor i64 %225, %224
  %227 = mul i64 %226, 1609587791953885689
  %228 = lshr i64 %227, 32
  %229 = xor i64 %228, %227
  ret i64 %229
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noalias noundef readonly %0, i64 noundef %1, ptr noalias noundef readonly %2, i64 noundef %3) unnamed_addr #3 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = udiv i64 %1, %7
  %9 = urem i64 %1, %7
  %10 = icmp ugt i64 %7, %1
  br i1 %10, label %87, label %11

11:                                               ; preds = %4
  %12 = icmp ult i64 %5, 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %14 = getelementptr inbounds i8, ptr %13, i64 -64
  %15 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %16 = load <4 x i64>, ptr %14, align 1
  %17 = getelementptr inbounds i8, ptr %13, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1
  br label %19

19:                                               ; preds = %11, %62
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %11 ], [ %84, %62 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %11 ], [ %74, %62 ]
  %22 = phi i64 [ 0, %11 ], [ %85, %62 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  br i1 %12, label %62, label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %59, %25 ], [ %20, %19 ]
  %27 = phi <4 x i64> [ %45, %25 ], [ %21, %19 ]
  %28 = phi i64 [ %60, %25 ], [ 0, %19 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1)
  %32 = shl nuw i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 %32
  %34 = load <4 x i64>, ptr %30, align 1
  %35 = load <4 x i64>, ptr %33, align 1
  %36 = xor <4 x i64> %35, %34
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %36, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %27, %43
  %45 = add <4 x i64> %44, %42
  %46 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %47 = load <4 x i64>, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %49 = load <4 x i64>, ptr %48, align 1
  %50 = xor <4 x i64> %49, %47
  %51 = bitcast <4 x i64> %50 to <8 x i32>
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %53 = bitcast <8 x i32> %52 to <4 x i64>
  %54 = and <4 x i64> %50, splat (i64 4294967295)
  %55 = and <4 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <4 x i64> %55, %54
  %57 = shufflevector <4 x i64> %47, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %58 = add <4 x i64> %26, %57
  %59 = add <4 x i64> %58, %56
  %60 = add nuw nsw i64 %28, 1
  %61 = icmp eq i64 %60, %15
  br i1 %61, label %62, label %25

62:                                               ; preds = %25, %19
  %63 = phi <4 x i64> [ %20, %19 ], [ %59, %25 ]
  %64 = phi <4 x i64> [ %21, %19 ], [ %45, %25 ]
  %65 = lshr <4 x i64> %64, splat (i64 47)
  %66 = xor <4 x i64> %16, %65
  %67 = xor <4 x i64> %66, %64
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, splat (i64 2654435761)
  %73 = mul <4 x i64> %70, splat (i64 -7046029290881679360)
  %74 = add <4 x i64> %73, %72
  %75 = lshr <4 x i64> %63, splat (i64 47)
  %76 = xor <4 x i64> %18, %75
  %77 = xor <4 x i64> %76, %63
  %78 = bitcast <4 x i64> %77 to <8 x i32>
  %79 = shufflevector <8 x i32> %78, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %80 = bitcast <8 x i32> %79 to <4 x i64>
  %81 = and <4 x i64> %77, splat (i64 4294967295)
  %82 = mul nuw <4 x i64> %81, splat (i64 2654435761)
  %83 = mul <4 x i64> %80, splat (i64 -7046029290881679360)
  %84 = add <4 x i64> %83, %82
  %85 = add nuw i64 %22, 1
  %86 = icmp ult i64 %85, %8
  br i1 %86, label %19, label %87

87:                                               ; preds = %62, %4
  %88 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %84, %62 ]
  %89 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %74, %62 ]
  %90 = mul i64 %8, %7
  %91 = lshr i64 %9, 6
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  %93 = icmp ult i64 %9, 64
  br i1 %93, label %131, label %94

94:                                               ; preds = %87, %94
  %95 = phi <4 x i64> [ %128, %94 ], [ %88, %87 ]
  %96 = phi <4 x i64> [ %114, %94 ], [ %89, %87 ]
  %97 = phi i64 [ %129, %94 ], [ 0, %87 ]
  %98 = shl i64 %97, 6
  %99 = getelementptr inbounds nuw i8, ptr %92, i64 %98
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %100, i32 0, i32 3, i32 1)
  %101 = shl nuw i64 %97, 3
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  %103 = load <4 x i64>, ptr %99, align 1
  %104 = load <4 x i64>, ptr %102, align 1
  %105 = xor <4 x i64> %104, %103
  %106 = bitcast <4 x i64> %105 to <8 x i32>
  %107 = shufflevector <8 x i32> %106, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %108 = bitcast <8 x i32> %107 to <4 x i64>
  %109 = and <4 x i64> %105, splat (i64 4294967295)
  %110 = and <4 x i64> %108, splat (i64 4294967295)
  %111 = mul nuw <4 x i64> %110, %109
  %112 = shufflevector <4 x i64> %103, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %113 = add <4 x i64> %96, %112
  %114 = add <4 x i64> %113, %111
  %115 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %116 = load <4 x i64>, ptr %115, align 1
  %117 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %118 = load <4 x i64>, ptr %117, align 1
  %119 = xor <4 x i64> %118, %116
  %120 = bitcast <4 x i64> %119 to <8 x i32>
  %121 = shufflevector <8 x i32> %120, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %122 = bitcast <8 x i32> %121 to <4 x i64>
  %123 = and <4 x i64> %119, splat (i64 4294967295)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = shufflevector <4 x i64> %116, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %127 = add <4 x i64> %95, %126
  %128 = add <4 x i64> %127, %125
  %129 = add nuw nsw i64 %97, 1
  %130 = icmp samesign ult i64 %129, %91
  br i1 %130, label %94, label %131

131:                                              ; preds = %94, %87
  %132 = phi <4 x i64> [ %88, %87 ], [ %128, %94 ]
  %133 = phi <4 x i64> [ %89, %87 ], [ %114, %94 ]
  %134 = and i64 %1, 63
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %138 = getelementptr inbounds i8, ptr %137, i64 -67
  %139 = load i64, ptr %138, align 1
  %140 = getelementptr inbounds i8, ptr %137, i64 -59
  %141 = load i64, ptr %140, align 1
  %142 = getelementptr inbounds i8, ptr %137, i64 -51
  %143 = load i64, ptr %142, align 1
  br label %182

144:                                              ; preds = %131
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %146 = getelementptr inbounds i8, ptr %145, i64 -64
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %148 = getelementptr inbounds i8, ptr %147, i64 -71
  %149 = load <4 x i64>, ptr %146, align 1
  %150 = load <4 x i64>, ptr %148, align 1
  %151 = xor <4 x i64> %150, %149
  %152 = bitcast <4 x i64> %151 to <8 x i32>
  %153 = shufflevector <8 x i32> %152, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %154 = bitcast <8 x i32> %153 to <4 x i64>
  %155 = and <4 x i64> %151, splat (i64 4294967295)
  %156 = and <4 x i64> %154, splat (i64 4294967295)
  %157 = mul nuw <4 x i64> %156, %155
  %158 = shufflevector <4 x i64> %149, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %159 = add <4 x i64> %133, %158
  %160 = add <4 x i64> %159, %157
  %161 = getelementptr inbounds i8, ptr %145, i64 -32
  %162 = load <4 x i64>, ptr %161, align 1
  %163 = getelementptr inbounds i8, ptr %147, i64 -39
  %164 = load <4 x i64>, ptr %163, align 1
  %165 = xor <4 x i64> %164, %162
  %166 = bitcast <4 x i64> %165 to <8 x i32>
  %167 = shufflevector <8 x i32> %166, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %168 = bitcast <8 x i32> %167 to <4 x i64>
  %169 = and <4 x i64> %165, splat (i64 4294967295)
  %170 = and <4 x i64> %168, splat (i64 4294967295)
  %171 = mul nuw <4 x i64> %170, %169
  %172 = shufflevector <4 x i64> %162, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %173 = add <4 x i64> %132, %172
  %174 = add <4 x i64> %173, %171
  %175 = bitcast <4 x i64> %150 to i256
  %176 = lshr i256 %175, 32
  %177 = trunc i256 %176 to i64
  %178 = lshr i256 %175, 96
  %179 = trunc i256 %178 to i64
  %180 = lshr i256 %175, 160
  %181 = trunc i256 %180 to i64
  br label %182

182:                                              ; preds = %136, %144
  %183 = phi i64 [ %143, %136 ], [ %181, %144 ]
  %184 = phi i64 [ %141, %136 ], [ %179, %144 ]
  %185 = phi i64 [ %139, %136 ], [ %177, %144 ]
  %186 = phi <4 x i64> [ %132, %136 ], [ %174, %144 ]
  %187 = phi <4 x i64> [ %133, %136 ], [ %160, %144 ]
  %188 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %189 = mul i64 %1, -7046029288634856825
  %190 = extractelement <4 x i64> %187, i64 0
  %191 = load i64, ptr %188, align 1
  %192 = xor i64 %191, %190
  %193 = extractelement <4 x i64> %187, i64 1
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %195 = load i64, ptr %194, align 1
  %196 = xor i64 %195, %193
  %197 = zext i64 %192 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %189, %202
  %204 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %205 = extractelement <4 x i64> %187, i64 2
  %206 = load i64, ptr %204, align 1
  %207 = xor i64 %206, %205
  %208 = extractelement <4 x i64> %187, i64 3
  %209 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %210 = load i64, ptr %209, align 1
  %211 = xor i64 %210, %208
  %212 = zext i64 %207 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %203, %217
  %219 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %220 = extractelement <4 x i64> %186, i64 0
  %221 = load i64, ptr %219, align 1
  %222 = xor i64 %221, %220
  %223 = extractelement <4 x i64> %186, i64 1
  %224 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %225 = load i64, ptr %224, align 1
  %226 = xor i64 %225, %223
  %227 = zext i64 %222 to i128
  %228 = zext i64 %226 to i128
  %229 = mul nuw i128 %228, %227
  %230 = lshr i128 %229, 64
  %231 = xor i128 %230, %229
  %232 = trunc i128 %231 to i64
  %233 = add i64 %218, %232
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %235 = extractelement <4 x i64> %186, i64 2
  %236 = load i64, ptr %234, align 1
  %237 = xor i64 %236, %235
  %238 = extractelement <4 x i64> %186, i64 3
  %239 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %240 = load i64, ptr %239, align 1
  %241 = xor i64 %240, %238
  %242 = zext i64 %237 to i128
  %243 = zext i64 %241 to i128
  %244 = mul nuw i128 %243, %242
  %245 = lshr i128 %244, 64
  %246 = xor i128 %245, %244
  %247 = trunc i128 %246 to i64
  %248 = add i64 %233, %247
  %249 = lshr i64 %248, 37
  %250 = xor i64 %249, %248
  %251 = mul i64 %250, 1609587791953885689
  %252 = lshr i64 %251, 32
  %253 = xor i64 %252, %251
  %254 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %255 = getelementptr inbounds i8, ptr %254, i64 -75
  %256 = mul i64 %1, -4417276706812531889
  %257 = xor i64 %256, -1
  %258 = load i64, ptr %255, align 1
  %259 = xor i64 %258, %190
  %260 = xor i64 %185, %193
  %261 = zext i64 %259 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %266, %257
  %268 = xor i64 %184, %205
  %269 = xor i64 %183, %208
  %270 = zext i64 %268 to i128
  %271 = zext i64 %269 to i128
  %272 = mul nuw i128 %271, %270
  %273 = lshr i128 %272, 64
  %274 = xor i128 %273, %272
  %275 = trunc i128 %274 to i64
  %276 = add i64 %267, %275
  %277 = getelementptr inbounds i8, ptr %254, i64 -43
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %220
  %280 = getelementptr inbounds i8, ptr %254, i64 -35
  %281 = load i64, ptr %280, align 1
  %282 = xor i64 %281, %223
  %283 = zext i64 %279 to i128
  %284 = zext i64 %282 to i128
  %285 = mul nuw i128 %284, %283
  %286 = lshr i128 %285, 64
  %287 = xor i128 %286, %285
  %288 = trunc i128 %287 to i64
  %289 = add i64 %276, %288
  %290 = getelementptr inbounds i8, ptr %254, i64 -27
  %291 = load i64, ptr %290, align 1
  %292 = xor i64 %291, %235
  %293 = getelementptr inbounds i8, ptr %254, i64 -19
  %294 = load i64, ptr %293, align 1
  %295 = xor i64 %294, %238
  %296 = zext i64 %292 to i128
  %297 = zext i64 %295 to i128
  %298 = mul nuw i128 %297, %296
  %299 = lshr i128 %298, 64
  %300 = xor i128 %299, %298
  %301 = trunc i128 %300 to i64
  %302 = add i64 %289, %301
  %303 = lshr i64 %302, 37
  %304 = xor i64 %303, %302
  %305 = mul i64 %304, 1609587791953885689
  %306 = lshr i64 %305, 32
  %307 = xor i64 %306, %305
  %308 = insertvalue { i64, i64 } poison, i64 %253, 0
  %309 = insertvalue { i64, i64 } %308, i64 %307, 1
  ret { i64, i64 } %309
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noalias noundef readonly %0, i64 noundef %1) unnamed_addr #3 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %71, label %5

5:                                                ; preds = %2, %48
  %6 = phi <4 x i64> [ %68, %48 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %7 = phi <4 x i64> [ %58, %48 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %8 = phi i64 [ %69, %48 ], [ 0, %2 ]
  %9 = shl i64 %8, 10
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  br label %11

11:                                               ; preds = %5, %11
  %12 = phi <4 x i64> [ %6, %5 ], [ %45, %11 ]
  %13 = phi <4 x i64> [ %7, %5 ], [ %31, %11 ]
  %14 = phi i64 [ 0, %5 ], [ %46, %11 ]
  %15 = shl nuw nsw i64 %14, 6
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 0, i32 3, i32 1)
  %18 = shl nuw nsw i64 %14, 3
  %19 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %18
  %20 = load <4 x i64>, ptr %16, align 1
  %21 = load <4 x i64>, ptr %19, align 8
  %22 = xor <4 x i64> %21, %20
  %23 = bitcast <4 x i64> %22 to <8 x i32>
  %24 = shufflevector <8 x i32> %23, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %25 = bitcast <8 x i32> %24 to <4 x i64>
  %26 = and <4 x i64> %22, splat (i64 4294967295)
  %27 = and <4 x i64> %25, splat (i64 4294967295)
  %28 = mul nuw <4 x i64> %27, %26
  %29 = shufflevector <4 x i64> %20, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %30 = add <4 x i64> %13, %29
  %31 = add <4 x i64> %30, %28
  %32 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %33 = load <4 x i64>, ptr %32, align 1
  %34 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %35 = load <4 x i64>, ptr %34, align 8
  %36 = xor <4 x i64> %35, %33
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %36, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = shufflevector <4 x i64> %33, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %12, %43
  %45 = add <4 x i64> %44, %42
  %46 = add nuw nsw i64 %14, 1
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %11

48:                                               ; preds = %11
  %49 = lshr <4 x i64> %31, splat (i64 47)
  %50 = xor <4 x i64> %49, %31
  %51 = xor <4 x i64> %50, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %52 = bitcast <4 x i64> %51 to <8 x i32>
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  %55 = and <4 x i64> %51, splat (i64 4294967295)
  %56 = mul nuw <4 x i64> %55, splat (i64 2654435761)
  %57 = mul <4 x i64> %54, splat (i64 -7046029290881679360)
  %58 = add <4 x i64> %57, %56
  %59 = lshr <4 x i64> %45, splat (i64 47)
  %60 = xor <4 x i64> %59, %45
  %61 = xor <4 x i64> %60, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %62 = bitcast <4 x i64> %61 to <8 x i32>
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %64 = bitcast <8 x i32> %63 to <4 x i64>
  %65 = and <4 x i64> %61, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, splat (i64 2654435761)
  %67 = mul <4 x i64> %64, splat (i64 -7046029290881679360)
  %68 = add <4 x i64> %67, %66
  %69 = add nuw nsw i64 %8, 1
  %70 = icmp eq i64 %69, %3
  br i1 %70, label %71, label %5

71:                                               ; preds = %48, %2
  %72 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %68, %48 ]
  %73 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %58, %48 ]
  %74 = and i64 %1, -1024
  %75 = lshr i64 %1, 6
  %76 = and i64 %75, 15
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 %74
  %78 = icmp eq i64 %76, 0
  br i1 %78, label %116, label %79

79:                                               ; preds = %71, %79
  %80 = phi <4 x i64> [ %113, %79 ], [ %72, %71 ]
  %81 = phi <4 x i64> [ %99, %79 ], [ %73, %71 ]
  %82 = phi i64 [ %114, %79 ], [ 0, %71 ]
  %83 = shl i64 %82, 6
  %84 = getelementptr inbounds nuw i8, ptr %77, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %85, i32 0, i32 3, i32 1)
  %86 = shl nuw i64 %82, 3
  %87 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %86
  %88 = load <4 x i64>, ptr %84, align 1
  %89 = load <4 x i64>, ptr %87, align 8
  %90 = xor <4 x i64> %89, %88
  %91 = bitcast <4 x i64> %90 to <8 x i32>
  %92 = shufflevector <8 x i32> %91, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %93 = bitcast <8 x i32> %92 to <4 x i64>
  %94 = and <4 x i64> %90, splat (i64 4294967295)
  %95 = and <4 x i64> %93, splat (i64 4294967295)
  %96 = mul nuw <4 x i64> %95, %94
  %97 = shufflevector <4 x i64> %88, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %98 = add <4 x i64> %81, %97
  %99 = add <4 x i64> %98, %96
  %100 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %101 = load <4 x i64>, ptr %100, align 1
  %102 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %103 = load <4 x i64>, ptr %102, align 8
  %104 = xor <4 x i64> %103, %101
  %105 = bitcast <4 x i64> %104 to <8 x i32>
  %106 = shufflevector <8 x i32> %105, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %107 = bitcast <8 x i32> %106 to <4 x i64>
  %108 = and <4 x i64> %104, splat (i64 4294967295)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = shufflevector <4 x i64> %101, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %112 = add <4 x i64> %80, %111
  %113 = add <4 x i64> %112, %110
  %114 = add nuw nsw i64 %82, 1
  %115 = icmp eq i64 %114, %76
  br i1 %115, label %116, label %79

116:                                              ; preds = %79, %71
  %117 = phi <4 x i64> [ %72, %71 ], [ %113, %79 ]
  %118 = phi <4 x i64> [ %73, %71 ], [ %99, %79 ]
  %119 = and i64 %1, 63
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %147, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %123 = getelementptr inbounds i8, ptr %122, i64 -64
  %124 = load <4 x i64>, ptr %123, align 1
  %125 = xor <4 x i64> %124, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %126 = bitcast <4 x i64> %125 to <8 x i32>
  %127 = shufflevector <8 x i32> %126, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %128 = bitcast <8 x i32> %127 to <4 x i64>
  %129 = and <4 x i64> %125, splat (i64 4294967295)
  %130 = and <4 x i64> %128, splat (i64 4294967295)
  %131 = mul nuw <4 x i64> %130, %129
  %132 = shufflevector <4 x i64> %124, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %133 = add <4 x i64> %118, %132
  %134 = add <4 x i64> %133, %131
  %135 = getelementptr inbounds i8, ptr %122, i64 -32
  %136 = load <4 x i64>, ptr %135, align 1
  %137 = xor <4 x i64> %136, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %138 = bitcast <4 x i64> %137 to <8 x i32>
  %139 = shufflevector <8 x i32> %138, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %140 = bitcast <8 x i32> %139 to <4 x i64>
  %141 = and <4 x i64> %137, splat (i64 4294967295)
  %142 = and <4 x i64> %140, splat (i64 4294967295)
  %143 = mul nuw <4 x i64> %142, %141
  %144 = shufflevector <4 x i64> %136, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %145 = add <4 x i64> %117, %144
  %146 = add <4 x i64> %145, %143
  br label %147

147:                                              ; preds = %121, %116
  %148 = phi <4 x i64> [ %117, %116 ], [ %146, %121 ]
  %149 = phi <4 x i64> [ %118, %116 ], [ %134, %121 ]
  %150 = mul i64 %1, -7046029288634856825
  %151 = extractelement <4 x i64> %149, i64 0
  %152 = xor i64 %151, 7914194659941938988
  %153 = extractelement <4 x i64> %149, i64 1
  %154 = xor i64 %153, -6611157965513653271
  %155 = zext i64 %152 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %150, %160
  %162 = extractelement <4 x i64> %149, i64 2
  %163 = xor i64 %162, -1839215637059881052
  %164 = extractelement <4 x i64> %149, i64 3
  %165 = xor i64 %164, -3433288310154277810
  %166 = zext i64 %163 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %161, %171
  %173 = extractelement <4 x i64> %148, i64 0
  %174 = xor i64 %173, 5046485836271438973
  %175 = extractelement <4 x i64> %148, i64 1
  %176 = xor i64 %175, -8055285457383852172
  %177 = zext i64 %174 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %172, %182
  %184 = extractelement <4 x i64> %148, i64 2
  %185 = xor i64 %184, 5920048007935066598
  %186 = extractelement <4 x i64> %148, i64 3
  %187 = xor i64 %186, 7336514198459093435
  %188 = zext i64 %185 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %183, %193
  %195 = lshr i64 %194, 37
  %196 = xor i64 %195, %194
  %197 = mul i64 %196, 1609587791953885689
  %198 = lshr i64 %197, 32
  %199 = xor i64 %198, %197
  %200 = mul i64 %1, -4417276706812531889
  %201 = xor i64 %200, -1
  %202 = xor i64 %151, -2753530472436770380
  %203 = xor i64 %153, 3784058077962335096
  %204 = zext i64 %202 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %209, %201
  %211 = xor i64 %162, -360392965937173549
  %212 = xor i64 %164, -5237161843349560557
  %213 = zext i64 %211 to i128
  %214 = zext i64 %212 to i128
  %215 = mul nuw i128 %214, %213
  %216 = lshr i128 %215, 64
  %217 = xor i128 %216, %215
  %218 = trunc i128 %217 to i64
  %219 = add i64 %210, %218
  %220 = xor i64 %173, 2965150961192524528
  %221 = xor i64 %175, 9032178055121889492
  %222 = zext i64 %220 to i128
  %223 = zext i64 %221 to i128
  %224 = mul nuw i128 %223, %222
  %225 = lshr i128 %224, 64
  %226 = xor i128 %225, %224
  %227 = trunc i128 %226 to i64
  %228 = add i64 %219, %227
  %229 = xor i64 %184, 8850058120466833735
  %230 = xor i64 %186, -7669846995664752176
  %231 = zext i64 %229 to i128
  %232 = zext i64 %230 to i128
  %233 = mul nuw i128 %232, %231
  %234 = lshr i128 %233, 64
  %235 = xor i128 %234, %233
  %236 = trunc i128 %235 to i64
  %237 = add i64 %228, %236
  %238 = lshr i64 %237, 37
  %239 = xor i64 %238, %237
  %240 = mul i64 %239, 1609587791953885689
  %241 = lshr i64 %240, 32
  %242 = xor i64 %241, %240
  %243 = insertvalue { i64, i64 } poison, i64 %199, 0
  %244 = insertvalue { i64, i64 } %243, i64 %242, 1
  ret { i64, i64 } %244
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_scrambleAcc_avx2: argument 0"}
!7 = distinct !{!7, !"XXH3_scrambleAcc_avx2"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_accumulate: argument 0"}
!10 = distinct !{!10, !"XXH3_accumulate"}
!11 = !{!12, !9}
!12 = distinct !{!12, !13, !"XXH3_accumulate_512_avx2: argument 0"}
!13 = distinct !{!13, !"XXH3_accumulate_512_avx2"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_accumulate: argument 0"}
!19 = distinct !{!19, !"XXH3_accumulate"}
!20 = !{!21, !18}
!21 = distinct !{!21, !22, !"XXH3_accumulate_512_avx2: argument 0"}
!22 = distinct !{!22, !"XXH3_accumulate_512_avx2"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_accumulate_512_avx2: argument 0"}
!25 = distinct !{!25, !"XXH3_accumulate_512_avx2"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_mergeAccs: argument 1"}
!28 = distinct !{!28, !"XXH3_mergeAccs"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"XXH3_mergeAccs: argument 0"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"XXH3_hashLong_128b_internal: argument 0"}
!33 = distinct !{!33, !"XXH3_hashLong_128b_internal"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"XXH3_hashLong_128b_internal: argument 1"}
!36 = !{!37, !32}
!37 = distinct !{!37, !38, !"XXH3_scrambleAcc_avx2: argument 0"}
!38 = distinct !{!38, !"XXH3_scrambleAcc_avx2"}
!39 = !{!40, !35}
!40 = distinct !{!40, !41, !"XXH3_accumulate: argument 0"}
!41 = distinct !{!41, !"XXH3_accumulate"}
!42 = !{!43, !40, !35}
!43 = distinct !{!43, !44, !"XXH3_accumulate_512_avx2: argument 0"}
!44 = distinct !{!44, !"XXH3_accumulate_512_avx2"}
!45 = !{!43, !40, !32}
!46 = !{!47, !35}
!47 = distinct !{!47, !48, !"XXH3_accumulate: argument 0"}
!48 = distinct !{!48, !"XXH3_accumulate"}
!49 = !{!50, !47, !35}
!50 = distinct !{!50, !51, !"XXH3_accumulate_512_avx2: argument 0"}
!51 = distinct !{!51, !"XXH3_accumulate_512_avx2"}
!52 = !{!50, !47, !32}
!53 = !{!54}
!54 = distinct !{!54, !55, !"XXH3_mergeAccs: argument 1"}
!55 = distinct !{!55, !"XXH3_mergeAccs"}
!56 = !{!57, !32}
!57 = distinct !{!57, !55, !"XXH3_mergeAccs: argument 0"}
!58 = !{!59, !35}
!59 = distinct !{!59, !60, !"XXH3_accumulate_512_avx2: argument 0"}
!60 = distinct !{!60, !"XXH3_accumulate_512_avx2"}
!61 = !{!59, !32}
!62 = !{!63}
!63 = distinct !{!63, !64, !"XXH3_mergeAccs: argument 1"}
!64 = distinct !{!64, !"XXH3_mergeAccs"}
!65 = !{!66, !32}
!66 = distinct !{!66, !64, !"XXH3_mergeAccs: argument 0"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"XXH3_hashLong_128b_internal: argument 0"}
!69 = distinct !{!69, !"XXH3_hashLong_128b_internal"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"XXH3_hashLong_128b_internal: argument 1"}
!72 = !{!73, !71}
!73 = distinct !{!73, !74, !"XXH3_accumulate: argument 0"}
!74 = distinct !{!74, !"XXH3_accumulate"}
!75 = !{!76, !73, !71}
!76 = distinct !{!76, !77, !"XXH3_accumulate_512_avx2: argument 0"}
!77 = distinct !{!77, !"XXH3_accumulate_512_avx2"}
!78 = !{!76, !73, !68}
!79 = !{!80, !71}
!80 = distinct !{!80, !81, !"XXH3_accumulate: argument 0"}
!81 = distinct !{!81, !"XXH3_accumulate"}
!82 = !{!83, !80, !71}
!83 = distinct !{!83, !84, !"XXH3_accumulate_512_avx2: argument 0"}
!84 = distinct !{!84, !"XXH3_accumulate_512_avx2"}
!85 = !{!83, !80, !68}
!86 = !{!87, !71}
!87 = distinct !{!87, !88, !"XXH3_accumulate_512_avx2: argument 0"}
!88 = distinct !{!88, !"XXH3_accumulate_512_avx2"}
