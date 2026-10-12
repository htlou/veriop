; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api_xxh32_len3_reroll1/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api_xxh32_len3_reroll1/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kKey = internal unnamed_addr constant [48 x i32] [i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514, i32 941223750, i32 -1445024552, i32 -1459980737, i32 -476302273, i32 -102974521, i32 -955560163, i32 -1974345653, i32 -843818703, i32 -929071415, i32 -646417564, i32 -356143997, i32 886303683, i32 -981360385, i32 -99392533, i32 386784593, i32 -1208952247, i32 -753511130, i32 701786270, i32 722910808, i32 2101846524, i32 -1879525167, i32 2060464590, i32 1170946703, i32 -1793719256, i32 -1344799798, i32 -1152696194], align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 700
}

; Function Attrs: nofree nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %5, label %54

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %7 = getelementptr inbounds i8, ptr %6, i64 -15
  %8 = add i32 %2, 606290984
  %9 = add i32 %2, -2048144777
  %10 = add i32 %2, 1640531535
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %0, %5 ], [ %44, %11 ]
  %13 = phi i32 [ %8, %5 ], [ %22, %11 ]
  %14 = phi i32 [ %9, %5 ], [ %29, %11 ]
  %15 = phi i32 [ %2, %5 ], [ %36, %11 ]
  %16 = phi i32 [ %10, %5 ], [ %43, %11 ]
  %17 = load i32, ptr %12, align 1
  %18 = mul i32 %17, -2048144777
  %19 = add i32 %18, %13
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 13)
  %21 = mul i32 %20, -1640531535
  %22 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %21) #16
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %14
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %28) #16
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %15
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %35) #16
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %38 = load i32, ptr %37, align 1
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %16
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %42) #16
  %44 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %45 = icmp ult ptr %44, %7
  br i1 %45, label %11, label %46

46:                                               ; preds = %11
  %47 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 1)
  %48 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 7)
  %49 = add i32 %48, %47
  %50 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 12)
  %51 = add i32 %49, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 18)
  %53 = add i32 %51, %52
  br label %56

54:                                               ; preds = %3
  %55 = add i32 %2, 374761393
  br label %56

56:                                               ; preds = %46, %54
  %57 = phi i32 [ %53, %46 ], [ %55, %54 ]
  %58 = phi ptr [ %44, %46 ], [ %0, %54 ]
  %59 = trunc i64 %1 to i32
  %60 = add i32 %57, %59
  %61 = and i64 %1, 15
  %62 = icmp samesign ugt i64 %61, 3
  br i1 %62, label %63, label %92

63:                                               ; preds = %56
  %64 = add nsw i64 %61, -4
  %65 = lshr i64 %64, 2
  %66 = add nuw nsw i64 %65, 1
  %67 = and i64 %66, 7
  %68 = and i64 %64, 28
  %69 = icmp eq i64 %68, 28
  br i1 %69, label %84, label %70

70:                                               ; preds = %63, %70
  %71 = phi ptr [ %78, %70 ], [ %58, %63 ]
  %72 = phi i32 [ %80, %70 ], [ %60, %63 ]
  %73 = phi i64 [ %81, %70 ], [ %61, %63 ]
  %74 = phi i64 [ %82, %70 ], [ 0, %63 ]
  %75 = load i32, ptr %71, align 1
  %76 = mul i32 %75, -1028477379
  %77 = add i32 %76, %72
  %78 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %79 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 17)
  %80 = mul i32 %79, 668265263
  %81 = add nsw i64 %73, -4
  %82 = add i64 %74, 1
  %83 = icmp eq i64 %82, %67
  br i1 %83, label %84, label %70

84:                                               ; preds = %70, %63
  %85 = phi ptr [ %58, %63 ], [ %78, %70 ]
  %86 = phi i32 [ %60, %63 ], [ %80, %70 ]
  %87 = phi i64 [ %61, %63 ], [ %81, %70 ]
  %88 = phi ptr [ poison, %63 ], [ %78, %70 ]
  %89 = phi i32 [ poison, %63 ], [ %80, %70 ]
  %90 = phi i64 [ poison, %63 ], [ %81, %70 ]
  %91 = icmp ult i64 %64, 28
  br i1 %91, label %92, label %121

92:                                               ; preds = %84, %121, %56
  %93 = phi i64 [ %61, %56 ], [ %90, %84 ], [ %173, %121 ]
  %94 = phi i32 [ %60, %56 ], [ %89, %84 ], [ %172, %121 ]
  %95 = phi ptr [ %58, %56 ], [ %88, %84 ], [ %170, %121 ]
  %96 = icmp eq i64 %93, 0
  br i1 %96, label %237, label %97

97:                                               ; preds = %92
  %98 = and i64 %93, 7
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %97, %100
  %101 = phi ptr [ %105, %100 ], [ %95, %97 ]
  %102 = phi i32 [ %111, %100 ], [ %94, %97 ]
  %103 = phi i64 [ %112, %100 ], [ %93, %97 ]
  %104 = phi i64 [ %113, %100 ], [ 0, %97 ]
  %105 = getelementptr inbounds nuw i8, ptr %101, i64 1
  %106 = load i8, ptr %101, align 1
  %107 = zext i8 %106 to i32
  %108 = mul i32 %107, 374761393
  %109 = add i32 %108, %102
  %110 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 11)
  %111 = mul i32 %110, -1640531535
  %112 = add nsw i64 %103, -1
  %113 = add i64 %104, 1
  %114 = icmp eq i64 %113, %98
  br i1 %114, label %115, label %100

115:                                              ; preds = %100, %97
  %116 = phi i32 [ poison, %97 ], [ %111, %100 ]
  %117 = phi ptr [ %95, %97 ], [ %105, %100 ]
  %118 = phi i32 [ %94, %97 ], [ %111, %100 ]
  %119 = phi i64 [ %93, %97 ], [ %112, %100 ]
  %120 = icmp ult i64 %93, 8
  br i1 %120, label %237, label %175

121:                                              ; preds = %84, %121
  %122 = phi ptr [ %170, %121 ], [ %85, %84 ]
  %123 = phi i32 [ %172, %121 ], [ %86, %84 ]
  %124 = phi i64 [ %173, %121 ], [ %87, %84 ]
  %125 = load i32, ptr %122, align 1
  %126 = mul i32 %125, -1028477379
  %127 = add i32 %126, %123
  %128 = getelementptr inbounds nuw i8, ptr %122, i64 4
  %129 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 17)
  %130 = mul i32 %129, 668265263
  %131 = load i32, ptr %128, align 1
  %132 = mul i32 %131, -1028477379
  %133 = add i32 %132, %130
  %134 = getelementptr inbounds nuw i8, ptr %122, i64 8
  %135 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 17)
  %136 = mul i32 %135, 668265263
  %137 = load i32, ptr %134, align 1
  %138 = mul i32 %137, -1028477379
  %139 = add i32 %138, %136
  %140 = getelementptr inbounds nuw i8, ptr %122, i64 12
  %141 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 17)
  %142 = mul i32 %141, 668265263
  %143 = load i32, ptr %140, align 1
  %144 = mul i32 %143, -1028477379
  %145 = add i32 %144, %142
  %146 = getelementptr inbounds nuw i8, ptr %122, i64 16
  %147 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 17)
  %148 = mul i32 %147, 668265263
  %149 = load i32, ptr %146, align 1
  %150 = mul i32 %149, -1028477379
  %151 = add i32 %150, %148
  %152 = getelementptr inbounds nuw i8, ptr %122, i64 20
  %153 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 17)
  %154 = mul i32 %153, 668265263
  %155 = load i32, ptr %152, align 1
  %156 = mul i32 %155, -1028477379
  %157 = add i32 %156, %154
  %158 = getelementptr inbounds nuw i8, ptr %122, i64 24
  %159 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 17)
  %160 = mul i32 %159, 668265263
  %161 = load i32, ptr %158, align 1
  %162 = mul i32 %161, -1028477379
  %163 = add i32 %162, %160
  %164 = getelementptr inbounds nuw i8, ptr %122, i64 28
  %165 = tail call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 17)
  %166 = mul i32 %165, 668265263
  %167 = load i32, ptr %164, align 1
  %168 = mul i32 %167, -1028477379
  %169 = add i32 %168, %166
  %170 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %171 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 17)
  %172 = mul i32 %171, 668265263
  %173 = add nsw i64 %124, -32
  %174 = icmp ugt i64 %173, 3
  br i1 %174, label %121, label %92

175:                                              ; preds = %115, %175
  %176 = phi ptr [ %228, %175 ], [ %117, %115 ]
  %177 = phi i32 [ %234, %175 ], [ %118, %115 ]
  %178 = phi i64 [ %235, %175 ], [ %119, %115 ]
  %179 = getelementptr inbounds nuw i8, ptr %176, i64 1
  %180 = load i8, ptr %176, align 1
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 374761393
  %183 = add i32 %182, %177
  %184 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 11)
  %185 = mul i32 %184, -1640531535
  %186 = getelementptr inbounds nuw i8, ptr %176, i64 2
  %187 = load i8, ptr %179, align 1
  %188 = zext i8 %187 to i32
  %189 = mul i32 %188, 374761393
  %190 = add i32 %189, %185
  %191 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 11)
  %192 = mul i32 %191, -1640531535
  %193 = getelementptr inbounds nuw i8, ptr %176, i64 3
  %194 = load i8, ptr %186, align 1
  %195 = zext i8 %194 to i32
  %196 = mul i32 %195, 374761393
  %197 = add i32 %196, %192
  %198 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 11)
  %199 = mul i32 %198, -1640531535
  %200 = getelementptr inbounds nuw i8, ptr %176, i64 4
  %201 = load i8, ptr %193, align 1
  %202 = zext i8 %201 to i32
  %203 = mul i32 %202, 374761393
  %204 = add i32 %203, %199
  %205 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 11)
  %206 = mul i32 %205, -1640531535
  %207 = getelementptr inbounds nuw i8, ptr %176, i64 5
  %208 = load i8, ptr %200, align 1
  %209 = zext i8 %208 to i32
  %210 = mul i32 %209, 374761393
  %211 = add i32 %210, %206
  %212 = tail call i32 @llvm.fshl.i32(i32 %211, i32 %211, i32 11)
  %213 = mul i32 %212, -1640531535
  %214 = getelementptr inbounds nuw i8, ptr %176, i64 6
  %215 = load i8, ptr %207, align 1
  %216 = zext i8 %215 to i32
  %217 = mul i32 %216, 374761393
  %218 = add i32 %217, %213
  %219 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 11)
  %220 = mul i32 %219, -1640531535
  %221 = getelementptr inbounds nuw i8, ptr %176, i64 7
  %222 = load i8, ptr %214, align 1
  %223 = zext i8 %222 to i32
  %224 = mul i32 %223, 374761393
  %225 = add i32 %224, %220
  %226 = tail call i32 @llvm.fshl.i32(i32 %225, i32 %225, i32 11)
  %227 = mul i32 %226, -1640531535
  %228 = getelementptr inbounds nuw i8, ptr %176, i64 8
  %229 = load i8, ptr %221, align 1
  %230 = zext i8 %229 to i32
  %231 = mul i32 %230, 374761393
  %232 = add i32 %231, %227
  %233 = tail call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 11)
  %234 = mul i32 %233, -1640531535
  %235 = add nsw i64 %178, -8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %175

237:                                              ; preds = %115, %175, %92
  %238 = phi i32 [ %94, %92 ], [ %116, %115 ], [ %234, %175 ]
  %239 = lshr i32 %238, 15
  %240 = xor i32 %239, %238
  %241 = mul i32 %240, -2048144777
  %242 = lshr i32 %241, 13
  %243 = xor i32 %242, %241
  %244 = mul i32 %243, -1028477379
  %245 = lshr i32 %244, 16
  %246 = xor i32 %245, %244
  ret i32 %246
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #17
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH32_copyState(ptr noundef writeonly initializes((0, 48)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr noundef writeonly initializes((0, 44)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  store i64 0, ptr %0, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %5, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i64 20, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %133, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = trunc i64 %2 to i32
  %8 = load i32, ptr %0, align 4
  %9 = add i32 %8, %7
  store i32 %9, ptr %0, align 4
  %10 = icmp ugt i64 %2, 15
  %11 = icmp ugt i32 %9, 15
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %2, %19
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %25 = load i32, ptr %17, align 4
  %26 = add i32 %25, %7
  br label %131

27:                                               ; preds = %5
  %28 = icmp eq i32 %18, 0
  br i1 %28, label %73, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %19
  %32 = sub i32 16, %18
  %33 = zext i32 %32 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr nonnull readonly align 1 %1, i64 %33, i1 false)
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %30, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %35
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %40) #16
  store i32 %41, ptr %34, align 4
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 1
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %49) #16
  store i32 %50, ptr %43, align 4
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %51, align 1
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %53
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %58) #16
  store i32 %59, ptr %52, align 4
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %60, align 1
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %67) #16
  store i32 %68, ptr %61, align 4
  %69 = load i32, ptr %17, align 4
  %70 = sub i32 16, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 %71
  store i32 0, ptr %17, align 4
  br label %73

73:                                               ; preds = %29, %27
  %74 = phi ptr [ %72, %29 ], [ %1, %27 ]
  %75 = getelementptr inbounds i8, ptr %6, i64 -16
  %76 = icmp ugt ptr %74, %75
  br i1 %76, label %122, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %86, %77
  %87 = phi ptr [ %74, %77 ], [ %119, %86 ]
  %88 = phi i32 [ %79, %77 ], [ %97, %86 ]
  %89 = phi i32 [ %81, %77 ], [ %104, %86 ]
  %90 = phi i32 [ %83, %77 ], [ %111, %86 ]
  %91 = phi i32 [ %85, %77 ], [ %118, %86 ]
  %92 = load i32, ptr %87, align 1
  %93 = mul i32 %92, -2048144777
  %94 = add i32 %93, %88
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 13)
  %96 = mul i32 %95, -1640531535
  %97 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %96) #16
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %99 = load i32, ptr %98, align 1
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %89
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %103) #16
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %106 = load i32, ptr %105, align 1
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %90
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %110) #16
  %112 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %113 = load i32, ptr %112, align 1
  %114 = mul i32 %113, -2048144777
  %115 = add i32 %114, %91
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = mul i32 %116, -1640531535
  %118 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %117) #16
  %119 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %120 = icmp ugt ptr %119, %75
  br i1 %120, label %121, label %86

121:                                              ; preds = %86
  store i32 %97, ptr %78, align 4
  store i32 %104, ptr %80, align 4
  store i32 %111, ptr %82, align 4
  store i32 %118, ptr %84, align 4
  br label %122

122:                                              ; preds = %121, %73
  %123 = phi ptr [ %119, %121 ], [ %74, %73 ]
  %124 = icmp ult ptr %123, %6
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %127 = ptrtoint ptr %6 to i64
  %128 = ptrtoint ptr %123 to i64
  %129 = sub i64 %127, %128
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %126, ptr nonnull readonly align 1 %123, i64 %129, i1 false)
  %130 = trunc i64 %129 to i32
  br label %131

131:                                              ; preds = %125, %22
  %132 = phi i32 [ %26, %22 ], [ %130, %125 ]
  store i32 %132, ptr %17, align 4
  br label %133

133:                                              ; preds = %131, %122, %3
  %134 = phi i32 [ 1, %3 ], [ 0, %122 ], [ 0, %131 ]
  ret i32 %134
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 1)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 12)
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 18)
  %20 = add i32 %16, %19
  br label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 374761393
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ %20, %5 ], [ %24, %21 ]
  %27 = load i32, ptr %0, align 4
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 15
  %33 = zext nneg i32 %32 to i64
  %34 = icmp samesign ugt i32 %32, 3
  br i1 %34, label %35, label %64

35:                                               ; preds = %25
  %36 = add nsw i64 %33, -4
  %37 = lshr i64 %36, 2
  %38 = add nuw nsw i64 %37, 1
  %39 = and i64 %38, 7
  %40 = and i64 %36, 28
  %41 = icmp eq i64 %40, 28
  br i1 %41, label %56, label %42

42:                                               ; preds = %35, %42
  %43 = phi ptr [ %50, %42 ], [ %29, %35 ]
  %44 = phi i32 [ %52, %42 ], [ %28, %35 ]
  %45 = phi i64 [ %53, %42 ], [ %33, %35 ]
  %46 = phi i64 [ %54, %42 ], [ 0, %35 ]
  %47 = load i32, ptr %43, align 1
  %48 = mul i32 %47, -1028477379
  %49 = add i32 %48, %44
  %50 = getelementptr inbounds nuw i8, ptr %43, i64 4
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %52 = mul i32 %51, 668265263
  %53 = add nsw i64 %45, -4
  %54 = add i64 %46, 1
  %55 = icmp eq i64 %54, %39
  br i1 %55, label %56, label %42

56:                                               ; preds = %42, %35
  %57 = phi ptr [ %29, %35 ], [ %50, %42 ]
  %58 = phi i32 [ %28, %35 ], [ %52, %42 ]
  %59 = phi i64 [ %33, %35 ], [ %53, %42 ]
  %60 = phi ptr [ poison, %35 ], [ %50, %42 ]
  %61 = phi i32 [ poison, %35 ], [ %52, %42 ]
  %62 = phi i64 [ poison, %35 ], [ %53, %42 ]
  %63 = icmp ult i64 %36, 28
  br i1 %63, label %64, label %93

64:                                               ; preds = %56, %93, %25
  %65 = phi i64 [ %33, %25 ], [ %62, %56 ], [ %145, %93 ]
  %66 = phi i32 [ %28, %25 ], [ %61, %56 ], [ %144, %93 ]
  %67 = phi ptr [ %29, %25 ], [ %60, %56 ], [ %142, %93 ]
  %68 = icmp eq i64 %65, 0
  br i1 %68, label %209, label %69

69:                                               ; preds = %64
  %70 = and i64 %65, 7
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %69, %72
  %73 = phi ptr [ %77, %72 ], [ %67, %69 ]
  %74 = phi i32 [ %83, %72 ], [ %66, %69 ]
  %75 = phi i64 [ %84, %72 ], [ %65, %69 ]
  %76 = phi i64 [ %85, %72 ], [ 0, %69 ]
  %77 = getelementptr inbounds nuw i8, ptr %73, i64 1
  %78 = load i8, ptr %73, align 1
  %79 = zext i8 %78 to i32
  %80 = mul i32 %79, 374761393
  %81 = add i32 %80, %74
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 11)
  %83 = mul i32 %82, -1640531535
  %84 = add nsw i64 %75, -1
  %85 = add i64 %76, 1
  %86 = icmp eq i64 %85, %70
  br i1 %86, label %87, label %72

87:                                               ; preds = %72, %69
  %88 = phi i32 [ poison, %69 ], [ %83, %72 ]
  %89 = phi ptr [ %67, %69 ], [ %77, %72 ]
  %90 = phi i32 [ %66, %69 ], [ %83, %72 ]
  %91 = phi i64 [ %65, %69 ], [ %84, %72 ]
  %92 = icmp ult i64 %65, 8
  br i1 %92, label %209, label %147

93:                                               ; preds = %56, %93
  %94 = phi ptr [ %142, %93 ], [ %57, %56 ]
  %95 = phi i32 [ %144, %93 ], [ %58, %56 ]
  %96 = phi i64 [ %145, %93 ], [ %59, %56 ]
  %97 = load i32, ptr %94, align 1
  %98 = mul i32 %97, -1028477379
  %99 = add i32 %98, %95
  %100 = getelementptr inbounds nuw i8, ptr %94, i64 4
  %101 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 17)
  %102 = mul i32 %101, 668265263
  %103 = load i32, ptr %100, align 1
  %104 = mul i32 %103, -1028477379
  %105 = add i32 %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %94, i64 8
  %107 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 17)
  %108 = mul i32 %107, 668265263
  %109 = load i32, ptr %106, align 1
  %110 = mul i32 %109, -1028477379
  %111 = add i32 %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %94, i64 12
  %113 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 17)
  %114 = mul i32 %113, 668265263
  %115 = load i32, ptr %112, align 1
  %116 = mul i32 %115, -1028477379
  %117 = add i32 %116, %114
  %118 = getelementptr inbounds nuw i8, ptr %94, i64 16
  %119 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 17)
  %120 = mul i32 %119, 668265263
  %121 = load i32, ptr %118, align 1
  %122 = mul i32 %121, -1028477379
  %123 = add i32 %122, %120
  %124 = getelementptr inbounds nuw i8, ptr %94, i64 20
  %125 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 17)
  %126 = mul i32 %125, 668265263
  %127 = load i32, ptr %124, align 1
  %128 = mul i32 %127, -1028477379
  %129 = add i32 %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %94, i64 24
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 17)
  %132 = mul i32 %131, 668265263
  %133 = load i32, ptr %130, align 1
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %132
  %136 = getelementptr inbounds nuw i8, ptr %94, i64 28
  %137 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  %139 = load i32, ptr %136, align 1
  %140 = mul i32 %139, -1028477379
  %141 = add i32 %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %94, i64 32
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 17)
  %144 = mul i32 %143, 668265263
  %145 = add nsw i64 %96, -32
  %146 = icmp ugt i64 %145, 3
  br i1 %146, label %93, label %64

147:                                              ; preds = %87, %147
  %148 = phi ptr [ %200, %147 ], [ %89, %87 ]
  %149 = phi i32 [ %206, %147 ], [ %90, %87 ]
  %150 = phi i64 [ %207, %147 ], [ %91, %87 ]
  %151 = getelementptr inbounds nuw i8, ptr %148, i64 1
  %152 = load i8, ptr %148, align 1
  %153 = zext i8 %152 to i32
  %154 = mul i32 %153, 374761393
  %155 = add i32 %154, %149
  %156 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 11)
  %157 = mul i32 %156, -1640531535
  %158 = getelementptr inbounds nuw i8, ptr %148, i64 2
  %159 = load i8, ptr %151, align 1
  %160 = zext i8 %159 to i32
  %161 = mul i32 %160, 374761393
  %162 = add i32 %161, %157
  %163 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 11)
  %164 = mul i32 %163, -1640531535
  %165 = getelementptr inbounds nuw i8, ptr %148, i64 3
  %166 = load i8, ptr %158, align 1
  %167 = zext i8 %166 to i32
  %168 = mul i32 %167, 374761393
  %169 = add i32 %168, %164
  %170 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 11)
  %171 = mul i32 %170, -1640531535
  %172 = getelementptr inbounds nuw i8, ptr %148, i64 4
  %173 = load i8, ptr %165, align 1
  %174 = zext i8 %173 to i32
  %175 = mul i32 %174, 374761393
  %176 = add i32 %175, %171
  %177 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 11)
  %178 = mul i32 %177, -1640531535
  %179 = getelementptr inbounds nuw i8, ptr %148, i64 5
  %180 = load i8, ptr %172, align 1
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 374761393
  %183 = add i32 %182, %178
  %184 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 11)
  %185 = mul i32 %184, -1640531535
  %186 = getelementptr inbounds nuw i8, ptr %148, i64 6
  %187 = load i8, ptr %179, align 1
  %188 = zext i8 %187 to i32
  %189 = mul i32 %188, 374761393
  %190 = add i32 %189, %185
  %191 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 11)
  %192 = mul i32 %191, -1640531535
  %193 = getelementptr inbounds nuw i8, ptr %148, i64 7
  %194 = load i8, ptr %186, align 1
  %195 = zext i8 %194 to i32
  %196 = mul i32 %195, 374761393
  %197 = add i32 %196, %192
  %198 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 11)
  %199 = mul i32 %198, -1640531535
  %200 = getelementptr inbounds nuw i8, ptr %148, i64 8
  %201 = load i8, ptr %193, align 1
  %202 = zext i8 %201 to i32
  %203 = mul i32 %202, 374761393
  %204 = add i32 %203, %199
  %205 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 11)
  %206 = mul i32 %205, -1640531535
  %207 = add nsw i64 %150, -8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %147

209:                                              ; preds = %87, %147, %64
  %210 = phi i32 [ %66, %64 ], [ %88, %87 ], [ %206, %147 ]
  %211 = lshr i32 %210, 15
  %212 = xor i32 %211, %210
  %213 = mul i32 %212, -2048144777
  %214 = lshr i32 %213, 13
  %215 = xor i32 %214, %213
  %216 = mul i32 %215, -1028477379
  %217 = lshr i32 %216, 16
  %218 = xor i32 %217, %216
  ret i32 %218
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH32_canonicalFromHash(ptr noundef writeonly initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @XXH32_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = icmp ugt i64 %1, 31
  br i1 %4, label %5, label %74

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %7 = getelementptr inbounds i8, ptr %6, i64 -32
  %8 = add i64 %2, 6983438078262162902
  %9 = add i64 %2, -4417276706812531889
  %10 = add i64 %2, 7046029288634856825
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %0, %5 ], [ %40, %11 ]
  %13 = phi i64 [ %8, %5 ], [ %21, %11 ]
  %14 = phi i64 [ %9, %5 ], [ %27, %11 ]
  %15 = phi i64 [ %2, %5 ], [ %33, %11 ]
  %16 = phi i64 [ %10, %5 ], [ %39, %11 ]
  %17 = load i64, ptr %12, align 1
  %18 = mul i64 %17, -4417276706812531889
  %19 = add i64 %18, %13
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %23 = load i64, ptr %22, align 1
  %24 = mul i64 %23, -4417276706812531889
  %25 = add i64 %24, %14
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %29 = load i64, ptr %28, align 1
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %15
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %35 = load i64, ptr %34, align 1
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, %16
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %41 = icmp ugt ptr %40, %7
  br i1 %41, label %42, label %11

42:                                               ; preds = %11
  %43 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 1)
  %44 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 7)
  %45 = add i64 %44, %43
  %46 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 12)
  %47 = add i64 %45, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 18)
  %49 = add i64 %47, %48
  %50 = mul i64 %20, -2381459717836149591
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %49, %52
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %54, -8796714831421723037
  %56 = mul i64 %26, -2381459717836149591
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %55, %58
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %60, -8796714831421723037
  %62 = mul i64 %32, -2381459717836149591
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  %68 = mul i64 %38, -2381459717836149591
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = xor i64 %67, %70
  %72 = mul i64 %71, -7046029288634856825
  %73 = add i64 %72, -8796714831421723037
  br label %76

74:                                               ; preds = %3
  %75 = add i64 %2, 2870177450012600261
  br label %76

76:                                               ; preds = %42, %74
  %77 = phi i64 [ %73, %42 ], [ %75, %74 ]
  %78 = phi ptr [ %40, %42 ], [ %0, %74 ]
  %79 = add i64 %77, %1
  %80 = and i64 %1, 31
  %81 = icmp samesign ugt i64 %80, 7
  br i1 %81, label %82, label %156

82:                                               ; preds = %76
  %83 = add nsw i64 %80, -8
  %84 = lshr i64 %83, 3
  %85 = add nuw nsw i64 %84, 1
  %86 = and i64 %85, 3
  %87 = and i64 %83, 24
  %88 = icmp eq i64 %87, 24
  br i1 %88, label %106, label %89

89:                                               ; preds = %82, %89
  %90 = phi i64 [ %102, %89 ], [ %79, %82 ]
  %91 = phi ptr [ %98, %89 ], [ %78, %82 ]
  %92 = phi i64 [ %103, %89 ], [ %80, %82 ]
  %93 = phi i64 [ %104, %89 ], [ 0, %82 ]
  %94 = load i64, ptr %91, align 1
  %95 = mul i64 %94, -4417276706812531889
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 31)
  %97 = mul i64 %96, -7046029288634856825
  %98 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %99 = xor i64 %97, %90
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 27)
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  %103 = add nsw i64 %92, -8
  %104 = add i64 %93, 1
  %105 = icmp eq i64 %104, %86
  br i1 %105, label %106, label %89

106:                                              ; preds = %89, %82
  %107 = phi i64 [ %79, %82 ], [ %102, %89 ]
  %108 = phi ptr [ %78, %82 ], [ %98, %89 ]
  %109 = phi i64 [ %80, %82 ], [ %103, %89 ]
  %110 = phi ptr [ poison, %82 ], [ %98, %89 ]
  %111 = phi i64 [ poison, %82 ], [ %102, %89 ]
  %112 = phi i64 [ poison, %82 ], [ %103, %89 ]
  %113 = icmp ult i64 %83, 24
  br i1 %113, label %156, label %114

114:                                              ; preds = %106, %114
  %115 = phi i64 [ %153, %114 ], [ %107, %106 ]
  %116 = phi ptr [ %149, %114 ], [ %108, %106 ]
  %117 = phi i64 [ %154, %114 ], [ %109, %106 ]
  %118 = load i64, ptr %116, align 1
  %119 = mul i64 %118, -4417276706812531889
  %120 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 31)
  %121 = mul i64 %120, -7046029288634856825
  %122 = getelementptr inbounds nuw i8, ptr %116, i64 8
  %123 = xor i64 %121, %115
  %124 = tail call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 27)
  %125 = mul i64 %124, -7046029288634856825
  %126 = add i64 %125, -8796714831421723037
  %127 = load i64, ptr %122, align 1
  %128 = mul i64 %127, -4417276706812531889
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 31)
  %130 = mul i64 %129, -7046029288634856825
  %131 = getelementptr inbounds nuw i8, ptr %116, i64 16
  %132 = xor i64 %130, %126
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 27)
  %134 = mul i64 %133, -7046029288634856825
  %135 = add i64 %134, -8796714831421723037
  %136 = load i64, ptr %131, align 1
  %137 = mul i64 %136, -4417276706812531889
  %138 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 31)
  %139 = mul i64 %138, -7046029288634856825
  %140 = getelementptr inbounds nuw i8, ptr %116, i64 24
  %141 = xor i64 %139, %135
  %142 = tail call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 27)
  %143 = mul i64 %142, -7046029288634856825
  %144 = add i64 %143, -8796714831421723037
  %145 = load i64, ptr %140, align 1
  %146 = mul i64 %145, -4417276706812531889
  %147 = tail call i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 31)
  %148 = mul i64 %147, -7046029288634856825
  %149 = getelementptr inbounds nuw i8, ptr %116, i64 32
  %150 = xor i64 %148, %144
  %151 = tail call i64 @llvm.fshl.i64(i64 %150, i64 %150, i64 27)
  %152 = mul i64 %151, -7046029288634856825
  %153 = add i64 %152, -8796714831421723037
  %154 = add nsw i64 %117, -32
  %155 = icmp ugt i64 %154, 7
  br i1 %155, label %114, label %156

156:                                              ; preds = %106, %114, %76
  %157 = phi i64 [ %80, %76 ], [ %112, %106 ], [ %154, %114 ]
  %158 = phi ptr [ %78, %76 ], [ %110, %106 ], [ %149, %114 ]
  %159 = phi i64 [ %79, %76 ], [ %111, %106 ], [ %153, %114 ]
  %160 = icmp samesign ugt i64 %157, 4
  br i1 %160, label %161, label %171

161:                                              ; preds = %156
  %162 = load i32, ptr %158, align 1
  %163 = zext i32 %162 to i64
  %164 = mul i64 %163, -7046029288634856825
  %165 = xor i64 %164, %159
  %166 = getelementptr inbounds nuw i8, ptr %158, i64 4
  %167 = tail call i64 @llvm.fshl.i64(i64 %165, i64 %165, i64 23)
  %168 = mul i64 %167, -4417276706812531889
  %169 = add i64 %168, 1609587929392839161
  %170 = add nsw i64 %157, -4
  br label %173

171:                                              ; preds = %156
  %172 = icmp eq i64 %157, 0
  br i1 %172, label %263, label %173

173:                                              ; preds = %171, %161
  %174 = phi i64 [ %159, %171 ], [ %169, %161 ]
  %175 = phi ptr [ %158, %171 ], [ %166, %161 ]
  %176 = phi i64 [ %157, %171 ], [ %170, %161 ]
  %177 = add nsw i64 %176, -1
  %178 = and i64 %176, 7
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %195, label %180

180:                                              ; preds = %173, %180
  %181 = phi i64 [ %191, %180 ], [ %174, %173 ]
  %182 = phi ptr [ %185, %180 ], [ %175, %173 ]
  %183 = phi i64 [ %192, %180 ], [ %176, %173 ]
  %184 = phi i64 [ %193, %180 ], [ 0, %173 ]
  %185 = getelementptr inbounds nuw i8, ptr %182, i64 1
  %186 = load i8, ptr %182, align 1
  %187 = zext i8 %186 to i64
  %188 = mul i64 %187, 2870177450012600261
  %189 = xor i64 %188, %181
  %190 = tail call i64 @llvm.fshl.i64(i64 %189, i64 %189, i64 11)
  %191 = mul i64 %190, -7046029288634856825
  %192 = add nsw i64 %183, -1
  %193 = add i64 %184, 1
  %194 = icmp eq i64 %193, %178
  br i1 %194, label %195, label %180

195:                                              ; preds = %180, %173
  %196 = phi i64 [ poison, %173 ], [ %191, %180 ]
  %197 = phi i64 [ %174, %173 ], [ %191, %180 ]
  %198 = phi ptr [ %175, %173 ], [ %185, %180 ]
  %199 = phi i64 [ %176, %173 ], [ %192, %180 ]
  %200 = icmp ult i64 %177, 7
  br i1 %200, label %263, label %201

201:                                              ; preds = %195, %201
  %202 = phi i64 [ %260, %201 ], [ %197, %195 ]
  %203 = phi ptr [ %254, %201 ], [ %198, %195 ]
  %204 = phi i64 [ %261, %201 ], [ %199, %195 ]
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 1
  %206 = load i8, ptr %203, align 1
  %207 = zext i8 %206 to i64
  %208 = mul i64 %207, 2870177450012600261
  %209 = xor i64 %208, %202
  %210 = tail call i64 @llvm.fshl.i64(i64 %209, i64 %209, i64 11)
  %211 = mul i64 %210, -7046029288634856825
  %212 = getelementptr inbounds nuw i8, ptr %203, i64 2
  %213 = load i8, ptr %205, align 1
  %214 = zext i8 %213 to i64
  %215 = mul i64 %214, 2870177450012600261
  %216 = xor i64 %215, %211
  %217 = tail call i64 @llvm.fshl.i64(i64 %216, i64 %216, i64 11)
  %218 = mul i64 %217, -7046029288634856825
  %219 = getelementptr inbounds nuw i8, ptr %203, i64 3
  %220 = load i8, ptr %212, align 1
  %221 = zext i8 %220 to i64
  %222 = mul i64 %221, 2870177450012600261
  %223 = xor i64 %222, %218
  %224 = tail call i64 @llvm.fshl.i64(i64 %223, i64 %223, i64 11)
  %225 = mul i64 %224, -7046029288634856825
  %226 = getelementptr inbounds nuw i8, ptr %203, i64 4
  %227 = load i8, ptr %219, align 1
  %228 = zext i8 %227 to i64
  %229 = mul i64 %228, 2870177450012600261
  %230 = xor i64 %229, %225
  %231 = tail call i64 @llvm.fshl.i64(i64 %230, i64 %230, i64 11)
  %232 = mul i64 %231, -7046029288634856825
  %233 = getelementptr inbounds nuw i8, ptr %203, i64 5
  %234 = load i8, ptr %226, align 1
  %235 = zext i8 %234 to i64
  %236 = mul i64 %235, 2870177450012600261
  %237 = xor i64 %236, %232
  %238 = tail call i64 @llvm.fshl.i64(i64 %237, i64 %237, i64 11)
  %239 = mul i64 %238, -7046029288634856825
  %240 = getelementptr inbounds nuw i8, ptr %203, i64 6
  %241 = load i8, ptr %233, align 1
  %242 = zext i8 %241 to i64
  %243 = mul i64 %242, 2870177450012600261
  %244 = xor i64 %243, %239
  %245 = tail call i64 @llvm.fshl.i64(i64 %244, i64 %244, i64 11)
  %246 = mul i64 %245, -7046029288634856825
  %247 = getelementptr inbounds nuw i8, ptr %203, i64 7
  %248 = load i8, ptr %240, align 1
  %249 = zext i8 %248 to i64
  %250 = mul i64 %249, 2870177450012600261
  %251 = xor i64 %250, %246
  %252 = tail call i64 @llvm.fshl.i64(i64 %251, i64 %251, i64 11)
  %253 = mul i64 %252, -7046029288634856825
  %254 = getelementptr inbounds nuw i8, ptr %203, i64 8
  %255 = load i8, ptr %247, align 1
  %256 = zext i8 %255 to i64
  %257 = mul i64 %256, 2870177450012600261
  %258 = xor i64 %257, %253
  %259 = tail call i64 @llvm.fshl.i64(i64 %258, i64 %258, i64 11)
  %260 = mul i64 %259, -7046029288634856825
  %261 = add nsw i64 %204, -8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %201

263:                                              ; preds = %195, %201, %171
  %264 = phi i64 [ %159, %171 ], [ %196, %195 ], [ %260, %201 ]
  %265 = lshr i64 %264, 33
  %266 = xor i64 %265, %264
  %267 = mul i64 %266, -4417276706812531889
  %268 = lshr i64 %267, 29
  %269 = xor i64 %268, %267
  %270 = mul i64 %269, 1609587929392839161
  %271 = lshr i64 %270, 32
  %272 = xor i64 %271, %270
  ret i64 %272
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #17
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH64_copyState(ptr noundef writeonly initializes((0, 88)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr noundef writeonly initializes((0, 80)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  store i64 0, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %5, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %119, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = load i64, ptr %0, align 8
  %8 = add i64 %7, %2
  store i64 %8, ptr %0, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load i32, ptr %9, align 8
  %11 = zext i32 %10 to i64
  %12 = add i64 %2, %11
  %13 = icmp ult i64 %12, 32
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %17 = trunc i64 %2 to i32
  %18 = load i32, ptr %9, align 8
  %19 = add i32 %18, %17
  br label %117

20:                                               ; preds = %5
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 %11
  %25 = sub i32 32, %10
  %26 = zext i32 %25 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %24, ptr nonnull readonly align 1 %1, i64 %26, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 8
  %29 = load i64, ptr %23, align 1
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %28
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  store i64 %33, ptr %27, align 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %37 = load i64, ptr %36, align 1
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %35
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  store i64 %41, ptr %34, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %45 = load i64, ptr %44, align 1
  %46 = mul i64 %45, -4417276706812531889
  %47 = add i64 %46, %43
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 31)
  %49 = mul i64 %48, -7046029288634856825
  store i64 %49, ptr %42, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %53 = load i64, ptr %52, align 1
  %54 = mul i64 %53, -4417276706812531889
  %55 = add i64 %54, %51
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  store i64 %57, ptr %50, align 8
  %58 = load i32, ptr %9, align 8
  %59 = sub i32 32, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 %60
  store i32 0, ptr %9, align 8
  br label %62

62:                                               ; preds = %22, %20
  %63 = phi ptr [ %61, %22 ], [ %1, %20 ]
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %65 = icmp ugt ptr %64, %6
  br i1 %65, label %108, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %6, i64 -32
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %75 = load i64, ptr %74, align 8
  br label %76

76:                                               ; preds = %76, %66
  %77 = phi ptr [ %63, %66 ], [ %105, %76 ]
  %78 = phi i64 [ %69, %66 ], [ %86, %76 ]
  %79 = phi i64 [ %71, %66 ], [ %92, %76 ]
  %80 = phi i64 [ %73, %66 ], [ %98, %76 ]
  %81 = phi i64 [ %75, %66 ], [ %104, %76 ]
  %82 = load i64, ptr %77, align 1
  %83 = mul i64 %82, -4417276706812531889
  %84 = add i64 %83, %78
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 31)
  %86 = mul i64 %85, -7046029288634856825
  %87 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = mul i64 %88, -4417276706812531889
  %90 = add i64 %89, %79
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 31)
  %92 = mul i64 %91, -7046029288634856825
  %93 = getelementptr inbounds nuw i8, ptr %77, i64 16
  %94 = load i64, ptr %93, align 1
  %95 = mul i64 %94, -4417276706812531889
  %96 = add i64 %95, %80
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 31)
  %98 = mul i64 %97, -7046029288634856825
  %99 = getelementptr inbounds nuw i8, ptr %77, i64 24
  %100 = load i64, ptr %99, align 1
  %101 = mul i64 %100, -4417276706812531889
  %102 = add i64 %101, %81
  %103 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %102, i64 31)
  %104 = mul i64 %103, -7046029288634856825
  %105 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %106 = icmp ugt ptr %105, %67
  br i1 %106, label %107, label %76

107:                                              ; preds = %76
  store i64 %86, ptr %68, align 8
  store i64 %92, ptr %70, align 8
  store i64 %98, ptr %72, align 8
  store i64 %104, ptr %74, align 8
  br label %108

108:                                              ; preds = %107, %62
  %109 = phi ptr [ %105, %107 ], [ %63, %62 ]
  %110 = icmp ult ptr %109, %6
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %113 = ptrtoint ptr %6 to i64
  %114 = ptrtoint ptr %109 to i64
  %115 = sub i64 %113, %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %112, ptr nonnull readonly align 1 %109, i64 %115, i1 false)
  %116 = trunc i64 %115 to i32
  br label %117

117:                                              ; preds = %111, %14
  %118 = phi i32 [ %19, %14 ], [ %116, %111 ]
  store i32 %118, ptr %9, align 8
  br label %119

119:                                              ; preds = %117, %108, %3
  %120 = phi i32 [ 1, %3 ], [ 0, %108 ], [ 0, %117 ]
  ret i32 %120
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i64, ptr %0, align 8
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load i64, ptr %11, align 8
  %13 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %14 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 7)
  %15 = add i64 %14, %13
  %16 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 12)
  %17 = add i64 %15, %16
  %18 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 18)
  %19 = add i64 %17, %18
  %20 = mul i64 %6, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = xor i64 %19, %22
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = mul i64 %8, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %25, %28
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = mul i64 %10, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %31, %34
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = mul i64 %12, -4417276706812531889
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %37, %40
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  br label %48

44:                                               ; preds = %1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = and i64 %2, 31
  %53 = icmp samesign ugt i64 %52, 7
  br i1 %53, label %54, label %128

54:                                               ; preds = %48
  %55 = add nsw i64 %52, -8
  %56 = lshr i64 %55, 3
  %57 = add nuw nsw i64 %56, 1
  %58 = and i64 %57, 3
  %59 = and i64 %55, 24
  %60 = icmp eq i64 %59, 24
  br i1 %60, label %78, label %61

61:                                               ; preds = %54, %61
  %62 = phi i64 [ %74, %61 ], [ %50, %54 ]
  %63 = phi ptr [ %70, %61 ], [ %51, %54 ]
  %64 = phi i64 [ %75, %61 ], [ %52, %54 ]
  %65 = phi i64 [ %76, %61 ], [ 0, %54 ]
  %66 = load i64, ptr %63, align 1
  %67 = mul i64 %66, -4417276706812531889
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %71 = xor i64 %69, %62
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 27)
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  %75 = add nsw i64 %64, -8
  %76 = add i64 %65, 1
  %77 = icmp eq i64 %76, %58
  br i1 %77, label %78, label %61

78:                                               ; preds = %61, %54
  %79 = phi i64 [ %50, %54 ], [ %74, %61 ]
  %80 = phi ptr [ %51, %54 ], [ %70, %61 ]
  %81 = phi i64 [ %52, %54 ], [ %75, %61 ]
  %82 = phi ptr [ poison, %54 ], [ %70, %61 ]
  %83 = phi i64 [ poison, %54 ], [ %74, %61 ]
  %84 = phi i64 [ poison, %54 ], [ %75, %61 ]
  %85 = icmp ult i64 %55, 24
  br i1 %85, label %128, label %86

86:                                               ; preds = %78, %86
  %87 = phi i64 [ %125, %86 ], [ %79, %78 ]
  %88 = phi ptr [ %121, %86 ], [ %80, %78 ]
  %89 = phi i64 [ %126, %86 ], [ %81, %78 ]
  %90 = load i64, ptr %88, align 1
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %95 = xor i64 %93, %87
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 27)
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  %99 = load i64, ptr %94, align 1
  %100 = mul i64 %99, -4417276706812531889
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 31)
  %102 = mul i64 %101, -7046029288634856825
  %103 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %104 = xor i64 %102, %98
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 27)
  %106 = mul i64 %105, -7046029288634856825
  %107 = add i64 %106, -8796714831421723037
  %108 = load i64, ptr %103, align 1
  %109 = mul i64 %108, -4417276706812531889
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %113 = xor i64 %111, %107
  %114 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 27)
  %115 = mul i64 %114, -7046029288634856825
  %116 = add i64 %115, -8796714831421723037
  %117 = load i64, ptr %112, align 1
  %118 = mul i64 %117, -4417276706812531889
  %119 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 31)
  %120 = mul i64 %119, -7046029288634856825
  %121 = getelementptr inbounds nuw i8, ptr %88, i64 32
  %122 = xor i64 %120, %116
  %123 = tail call i64 @llvm.fshl.i64(i64 %122, i64 %122, i64 27)
  %124 = mul i64 %123, -7046029288634856825
  %125 = add i64 %124, -8796714831421723037
  %126 = add nsw i64 %89, -32
  %127 = icmp ugt i64 %126, 7
  br i1 %127, label %86, label %128

128:                                              ; preds = %78, %86, %48
  %129 = phi i64 [ %52, %48 ], [ %84, %78 ], [ %126, %86 ]
  %130 = phi ptr [ %51, %48 ], [ %82, %78 ], [ %121, %86 ]
  %131 = phi i64 [ %50, %48 ], [ %83, %78 ], [ %125, %86 ]
  %132 = icmp samesign ugt i64 %129, 4
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i32, ptr %130, align 1
  %135 = zext i32 %134 to i64
  %136 = mul i64 %135, -7046029288634856825
  %137 = xor i64 %136, %131
  %138 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %139 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 23)
  %140 = mul i64 %139, -4417276706812531889
  %141 = add i64 %140, 1609587929392839161
  %142 = add nsw i64 %129, -4
  br label %145

143:                                              ; preds = %128
  %144 = icmp eq i64 %129, 0
  br i1 %144, label %235, label %145

145:                                              ; preds = %143, %133
  %146 = phi i64 [ %131, %143 ], [ %141, %133 ]
  %147 = phi ptr [ %130, %143 ], [ %138, %133 ]
  %148 = phi i64 [ %129, %143 ], [ %142, %133 ]
  %149 = add nsw i64 %148, -1
  %150 = and i64 %148, 7
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %145, %152
  %153 = phi i64 [ %163, %152 ], [ %146, %145 ]
  %154 = phi ptr [ %157, %152 ], [ %147, %145 ]
  %155 = phi i64 [ %164, %152 ], [ %148, %145 ]
  %156 = phi i64 [ %165, %152 ], [ 0, %145 ]
  %157 = getelementptr inbounds nuw i8, ptr %154, i64 1
  %158 = load i8, ptr %154, align 1
  %159 = zext i8 %158 to i64
  %160 = mul i64 %159, 2870177450012600261
  %161 = xor i64 %160, %153
  %162 = tail call i64 @llvm.fshl.i64(i64 %161, i64 %161, i64 11)
  %163 = mul i64 %162, -7046029288634856825
  %164 = add nsw i64 %155, -1
  %165 = add i64 %156, 1
  %166 = icmp eq i64 %165, %150
  br i1 %166, label %167, label %152

167:                                              ; preds = %152, %145
  %168 = phi i64 [ poison, %145 ], [ %163, %152 ]
  %169 = phi i64 [ %146, %145 ], [ %163, %152 ]
  %170 = phi ptr [ %147, %145 ], [ %157, %152 ]
  %171 = phi i64 [ %148, %145 ], [ %164, %152 ]
  %172 = icmp ult i64 %149, 7
  br i1 %172, label %235, label %173

173:                                              ; preds = %167, %173
  %174 = phi i64 [ %232, %173 ], [ %169, %167 ]
  %175 = phi ptr [ %226, %173 ], [ %170, %167 ]
  %176 = phi i64 [ %233, %173 ], [ %171, %167 ]
  %177 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %178 = load i8, ptr %175, align 1
  %179 = zext i8 %178 to i64
  %180 = mul i64 %179, 2870177450012600261
  %181 = xor i64 %180, %174
  %182 = tail call i64 @llvm.fshl.i64(i64 %181, i64 %181, i64 11)
  %183 = mul i64 %182, -7046029288634856825
  %184 = getelementptr inbounds nuw i8, ptr %175, i64 2
  %185 = load i8, ptr %177, align 1
  %186 = zext i8 %185 to i64
  %187 = mul i64 %186, 2870177450012600261
  %188 = xor i64 %187, %183
  %189 = tail call i64 @llvm.fshl.i64(i64 %188, i64 %188, i64 11)
  %190 = mul i64 %189, -7046029288634856825
  %191 = getelementptr inbounds nuw i8, ptr %175, i64 3
  %192 = load i8, ptr %184, align 1
  %193 = zext i8 %192 to i64
  %194 = mul i64 %193, 2870177450012600261
  %195 = xor i64 %194, %190
  %196 = tail call i64 @llvm.fshl.i64(i64 %195, i64 %195, i64 11)
  %197 = mul i64 %196, -7046029288634856825
  %198 = getelementptr inbounds nuw i8, ptr %175, i64 4
  %199 = load i8, ptr %191, align 1
  %200 = zext i8 %199 to i64
  %201 = mul i64 %200, 2870177450012600261
  %202 = xor i64 %201, %197
  %203 = tail call i64 @llvm.fshl.i64(i64 %202, i64 %202, i64 11)
  %204 = mul i64 %203, -7046029288634856825
  %205 = getelementptr inbounds nuw i8, ptr %175, i64 5
  %206 = load i8, ptr %198, align 1
  %207 = zext i8 %206 to i64
  %208 = mul i64 %207, 2870177450012600261
  %209 = xor i64 %208, %204
  %210 = tail call i64 @llvm.fshl.i64(i64 %209, i64 %209, i64 11)
  %211 = mul i64 %210, -7046029288634856825
  %212 = getelementptr inbounds nuw i8, ptr %175, i64 6
  %213 = load i8, ptr %205, align 1
  %214 = zext i8 %213 to i64
  %215 = mul i64 %214, 2870177450012600261
  %216 = xor i64 %215, %211
  %217 = tail call i64 @llvm.fshl.i64(i64 %216, i64 %216, i64 11)
  %218 = mul i64 %217, -7046029288634856825
  %219 = getelementptr inbounds nuw i8, ptr %175, i64 7
  %220 = load i8, ptr %212, align 1
  %221 = zext i8 %220 to i64
  %222 = mul i64 %221, 2870177450012600261
  %223 = xor i64 %222, %218
  %224 = tail call i64 @llvm.fshl.i64(i64 %223, i64 %223, i64 11)
  %225 = mul i64 %224, -7046029288634856825
  %226 = getelementptr inbounds nuw i8, ptr %175, i64 8
  %227 = load i8, ptr %219, align 1
  %228 = zext i8 %227 to i64
  %229 = mul i64 %228, 2870177450012600261
  %230 = xor i64 %229, %225
  %231 = tail call i64 @llvm.fshl.i64(i64 %230, i64 %230, i64 11)
  %232 = mul i64 %231, -7046029288634856825
  %233 = add nsw i64 %176, -8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %173

235:                                              ; preds = %167, %173, %143
  %236 = phi i64 [ %131, %143 ], [ %168, %167 ], [ %232, %173 ]
  %237 = lshr i64 %236, 33
  %238 = xor i64 %237, %236
  %239 = mul i64 %238, -4417276706812531889
  %240 = lshr i64 %239, 29
  %241 = xor i64 %240, %239
  %242 = mul i64 %241, 1609587929392839161
  %243 = lshr i64 %242, 32
  %244 = xor i64 %243, %242
  ret i64 %244
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH64_canonicalFromHash(ptr noundef writeonly initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @XXH64_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %84

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %30

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %2, 2568260970027576377
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 -639039334258736852, %2
  %15 = xor i64 %13, %14
  %16 = zext i64 %10 to i128
  %17 = zext i64 %15 to i128
  %18 = mul nuw i128 %17, %16
  %19 = lshr i128 %18, 64
  %20 = xor i128 %19, %18
  %21 = trunc i128 %20 to i64
  %22 = add i64 %10, %1
  %23 = add i64 %22, %15
  %24 = add i64 %23, %21
  %25 = lshr i64 %24, 37
  %26 = xor i64 %25, %24
  %27 = mul i64 %26, 1609587929392839161
  %28 = lshr i64 %27, 32
  %29 = xor i64 %28, %27
  br label %146

30:                                               ; preds = %5
  %31 = icmp samesign ugt i64 %1, 3
  br i1 %31, label %32, label %54

32:                                               ; preds = %30
  %33 = load i32, ptr %0, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %35 = getelementptr inbounds i8, ptr %34, i64 -4
  %36 = load i32, ptr %35, align 1
  %37 = zext i32 %33 to i64
  %38 = zext i32 %36 to i64
  %39 = shl nuw i64 %38, 32
  %40 = or disjoint i64 %39, %37
  %41 = add i64 %2, 2568260970027576377
  %42 = xor i64 %40, %41
  %43 = zext i64 %42 to i128
  %44 = mul nuw i128 %43, 11400714785074694791
  %45 = lshr i128 %44, 64
  %46 = xor i128 %45, %44
  %47 = trunc i128 %46 to i64
  %48 = add i64 %1, %47
  %49 = lshr i64 %48, 37
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, 1609587929392839161
  %52 = lshr i64 %51, 32
  %53 = xor i64 %52, %51
  br label %146

54:                                               ; preds = %30
  %55 = icmp eq i64 %1, 0
  br i1 %55, label %146, label %56

56:                                               ; preds = %54
  %57 = load i8, ptr %0, align 1
  %58 = lshr i64 %1, 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr i8, ptr %0, i64 %1
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %57 to i64
  %65 = zext i8 %60 to i64
  %66 = shl nuw nsw i64 %65, 8
  %67 = or disjoint i64 %66, %64
  %68 = zext i8 %63 to i64
  %69 = shl nuw nsw i64 %68, 2
  %70 = add i64 %2, 3103681593
  %71 = add i64 %70, %67
  %72 = and i64 %71, 4294967295
  %73 = lshr i64 %2, 32
  %74 = add nuw nsw i64 %1, 597969854
  %75 = add nuw nsw i64 %74, %73
  %76 = add nuw nsw i64 %75, %69
  %77 = and i64 %76, 4294967295
  %78 = mul nuw i64 %77, %72
  %79 = lshr i64 %78, 37
  %80 = xor i64 %79, %78
  %81 = mul i64 %80, 1609587929392839161
  %82 = lshr i64 %81, 32
  %83 = xor i64 %82, %81
  br label %146

84:                                               ; preds = %3
  %85 = icmp ugt i64 %1, 128
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = tail call fastcc i64 @XXH3_hashLong_64b(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %146

88:                                               ; preds = %84
  %89 = mul i64 %1, -7046029288634856825
  %90 = and i64 %1, 127
  %91 = add nsw i64 %90, -1
  %92 = lshr i64 %91, 5
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %94

94:                                               ; preds = %94, %88
  %95 = phi i64 [ %89, %88 ], [ %137, %94 ]
  %96 = phi i64 [ %92, %88 ], [ %138, %94 ]
  %97 = shl i64 %96, 4
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %97
  %99 = shl i64 %96, 5
  %100 = getelementptr inbounds nuw i8, ptr @kKey, i64 %99
  %101 = load i64, ptr %98, align 1
  %102 = getelementptr inbounds nuw i8, ptr %98, i64 8
  %103 = load i64, ptr %102, align 1
  %104 = load i64, ptr %100, align 32
  %105 = add i64 %104, %2
  %106 = xor i64 %105, %101
  %107 = getelementptr inbounds nuw i8, ptr %100, i64 8
  %108 = load i64, ptr %107, align 8
  %109 = sub i64 %108, %2
  %110 = xor i64 %109, %103
  %111 = zext i64 %106 to i128
  %112 = zext i64 %110 to i128
  %113 = mul nuw i128 %112, %111
  %114 = lshr i128 %113, 64
  %115 = xor i128 %114, %113
  %116 = trunc i128 %115 to i64
  %117 = add i64 %95, %116
  %118 = sub nuw nsw i64 -16, %97
  %119 = getelementptr inbounds i8, ptr %93, i64 %118
  %120 = getelementptr inbounds nuw i8, ptr %100, i64 16
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %119, i64 8
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 16
  %125 = add i64 %124, %2
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %100, i64 24
  %128 = load i64, ptr %127, align 8
  %129 = sub i64 %128, %2
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %117, %136
  %138 = add nsw i64 %96, -1
  %139 = icmp eq i64 %96, 0
  br i1 %139, label %140, label %94

140:                                              ; preds = %94
  %141 = lshr i64 %137, 37
  %142 = xor i64 %141, %137
  %143 = mul i64 %142, 1609587929392839161
  %144 = lshr i64 %143, 32
  %145 = xor i64 %144, %143
  br label %146

146:                                              ; preds = %56, %54, %32, %7, %140, %86
  %147 = phi i64 [ %87, %86 ], [ %145, %140 ], [ %29, %7 ], [ %53, %32 ], [ %83, %56 ], [ %2, %54 ]
  ret i64 %147
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b(ptr noundef readonly %0, i64 noundef range(i64 129, 0) %1, i64 noundef %2) unnamed_addr #12 {
  %4 = sub i64 0, %2
  %5 = insertelement <4 x i64> <i64 poison, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, i64 %2, i64 0
  %6 = insertelement <4 x i64> <i64 -8796714831421723037, i64 2870177450012600261, i64 poison, i64 0>, i64 %4, i64 2
  %7 = lshr i64 %1, 10
  %8 = icmp ult i64 %1, 1024
  br i1 %8, label %72, label %9

9:                                                ; preds = %3, %49
  %10 = phi <4 x i64> [ %69, %49 ], [ %6, %3 ]
  %11 = phi <4 x i64> [ %59, %49 ], [ %5, %3 ]
  %12 = phi i64 [ %70, %49 ], [ 0, %3 ]
  %13 = shl nuw i64 %12, 10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi <4 x i64> [ %45, %15 ], [ %10, %9 ]
  %17 = phi <4 x i64> [ %32, %15 ], [ %11, %9 ]
  %18 = phi i64 [ %47, %15 ], [ 0, %9 ]
  %19 = phi ptr [ %46, %15 ], [ @kKey, %9 ]
  %20 = shl nuw nsw i64 %18, 6
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 %20
  %22 = load <4 x i64>, ptr %21, align 1
  %23 = load <4 x i64>, ptr %19, align 1
  %24 = xor <4 x i64> %23, %22
  %25 = bitcast <4 x i64> %24 to <8 x i32>
  %26 = shufflevector <8 x i32> %25, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = and <4 x i64> %24, splat (i64 4294967295)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = add <4 x i64> %22, %17
  %32 = add <4 x i64> %31, %30
  %33 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %34 = load <4 x i64>, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %36 = load <4 x i64>, ptr %35, align 1
  %37 = xor <4 x i64> %36, %34
  %38 = bitcast <4 x i64> %37 to <8 x i32>
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = and <4 x i64> %37, splat (i64 4294967295)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = add <4 x i64> %34, %16
  %45 = add <4 x i64> %44, %43
  %46 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %47 = add nuw nsw i64 %18, 1
  %48 = icmp eq i64 %47, 16
  br i1 %48, label %49, label %15

49:                                               ; preds = %15
  %50 = lshr <4 x i64> %32, splat (i64 47)
  %51 = xor <4 x i64> %32, %50
  %52 = xor <4 x i64> %51, <i64 3806645336748174467, i64 -426887675387993857, i64 -5192410362903929519, i64 3014149081973282086>
  %53 = and <4 x i64> %52, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, splat (i64 2654435761)
  %55 = bitcast <4 x i64> %52 to <8 x i32>
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = mul <4 x i64> %57, splat (i64 -7046029290881679360)
  %59 = add <4 x i64> %58, %54
  %60 = lshr <4 x i64> %45, splat (i64 47)
  %61 = xor <4 x i64> %45, %60
  %62 = xor <4 x i64> %61, <i64 9027362082514189912, i64 8849628031031490769, i64 -7703965541554505073, i64 -4950792452503503926>
  %63 = and <4 x i64> %62, splat (i64 4294967295)
  %64 = mul nuw <4 x i64> %63, splat (i64 2654435761)
  %65 = bitcast <4 x i64> %62 to <8 x i32>
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = mul <4 x i64> %67, splat (i64 -7046029290881679360)
  %69 = add <4 x i64> %68, %64
  %70 = add nuw nsw i64 %12, 1
  %71 = icmp eq i64 %70, %7
  br i1 %71, label %72, label %9

72:                                               ; preds = %49, %3
  %73 = phi <4 x i64> [ %6, %3 ], [ %69, %49 ]
  %74 = phi <4 x i64> [ %5, %3 ], [ %59, %49 ]
  %75 = lshr i64 %1, 6
  %76 = and i64 %75, 15
  %77 = and i64 %1, -1024
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  %79 = icmp eq i64 %76, 0
  br i1 %79, label %114, label %80

80:                                               ; preds = %72, %80
  %81 = phi <4 x i64> [ %110, %80 ], [ %73, %72 ]
  %82 = phi <4 x i64> [ %97, %80 ], [ %74, %72 ]
  %83 = phi i64 [ %112, %80 ], [ 0, %72 ]
  %84 = phi ptr [ %111, %80 ], [ @kKey, %72 ]
  %85 = shl nuw nsw i64 %83, 6
  %86 = getelementptr inbounds nuw i8, ptr %78, i64 %85
  %87 = load <4 x i64>, ptr %86, align 1
  %88 = load <4 x i64>, ptr %84, align 1
  %89 = xor <4 x i64> %88, %87
  %90 = bitcast <4 x i64> %89 to <8 x i32>
  %91 = shufflevector <8 x i32> %90, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %92 = bitcast <8 x i32> %91 to <4 x i64>
  %93 = and <4 x i64> %89, splat (i64 4294967295)
  %94 = and <4 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, %93
  %96 = add <4 x i64> %87, %82
  %97 = add <4 x i64> %96, %95
  %98 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %99 = load <4 x i64>, ptr %98, align 1
  %100 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %101 = load <4 x i64>, ptr %100, align 1
  %102 = xor <4 x i64> %101, %99
  %103 = bitcast <4 x i64> %102 to <8 x i32>
  %104 = shufflevector <8 x i32> %103, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %105 = bitcast <8 x i32> %104 to <4 x i64>
  %106 = and <4 x i64> %102, splat (i64 4294967295)
  %107 = and <4 x i64> %105, splat (i64 4294967295)
  %108 = mul nuw <4 x i64> %107, %106
  %109 = add <4 x i64> %99, %81
  %110 = add <4 x i64> %109, %108
  %111 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %112 = add nuw nsw i64 %83, 1
  %113 = icmp eq i64 %112, %76
  br i1 %113, label %114, label %80

114:                                              ; preds = %80, %72
  %115 = phi <4 x i64> [ %73, %72 ], [ %110, %80 ]
  %116 = phi <4 x i64> [ %74, %72 ], [ %97, %80 ]
  %117 = and i64 %1, 63
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %148, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %121 = getelementptr inbounds i8, ptr %120, i64 -64
  %122 = shl nuw nsw i64 %76, 3
  %123 = getelementptr inbounds nuw i8, ptr @kKey, i64 %122
  %124 = load <4 x i64>, ptr %121, align 1
  %125 = load <4 x i64>, ptr %123, align 8
  %126 = xor <4 x i64> %125, %124
  %127 = bitcast <4 x i64> %126 to <8 x i32>
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %129 = bitcast <8 x i32> %128 to <4 x i64>
  %130 = and <4 x i64> %126, splat (i64 4294967295)
  %131 = and <4 x i64> %129, splat (i64 4294967295)
  %132 = mul nuw <4 x i64> %131, %130
  %133 = add <4 x i64> %124, %116
  %134 = add <4 x i64> %133, %132
  %135 = getelementptr inbounds i8, ptr %120, i64 -32
  %136 = load <4 x i64>, ptr %135, align 1
  %137 = getelementptr inbounds nuw i8, ptr %123, i64 32
  %138 = load <4 x i64>, ptr %137, align 8
  %139 = xor <4 x i64> %138, %136
  %140 = bitcast <4 x i64> %139 to <8 x i32>
  %141 = shufflevector <8 x i32> %140, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %142 = bitcast <8 x i32> %141 to <4 x i64>
  %143 = and <4 x i64> %139, splat (i64 4294967295)
  %144 = and <4 x i64> %142, splat (i64 4294967295)
  %145 = mul nuw <4 x i64> %144, %143
  %146 = add <4 x i64> %136, %115
  %147 = add <4 x i64> %146, %145
  br label %148

148:                                              ; preds = %114, %119
  %149 = phi <4 x i64> [ %115, %114 ], [ %147, %119 ]
  %150 = phi <4 x i64> [ %116, %114 ], [ %134, %119 ]
  %151 = lshr i64 %2, 32
  %152 = add nuw nsw i64 %151, 3761606886
  %153 = and i64 %152, 4294967295
  %154 = shl i64 %2, 32
  %155 = sub i64 -9134946786308259840, %154
  %156 = or disjoint i64 %153, %155
  %157 = add i64 %2, 3087550068
  %158 = and i64 %157, 4294967295
  %159 = and i64 %2, -4294967296
  %160 = sub i64 -629619330597781504, %159
  %161 = or disjoint i64 %158, %160
  %162 = add nuw nsw i64 %151, 2186989693
  %163 = and i64 %162, 4294967295
  %164 = shl i64 %2, 32
  %165 = sub i64 -3675093284851548160, %164
  %166 = or disjoint i64 %163, %165
  %167 = add i64 %2, 3413763662
  %168 = and i64 %167, 4294967295
  %169 = and i64 %2, -4294967296
  %170 = sub i64 -3692699390884970496, %169
  %171 = or disjoint i64 %168, %170
  %172 = add nuw nsw i64 %151, 1916839076
  %173 = and i64 %172, 4294967295
  %174 = shl i64 %2, 32
  %175 = sub i64 -5209706961095884800, %174
  %176 = or disjoint i64 %173, %175
  %177 = add i64 %2, 3738463721
  %178 = and i64 %177, 4294967295
  %179 = and i64 %2, -4294967296
  %180 = sub i64 -8966499891241025536, %179
  %181 = or disjoint i64 %178, %180
  %182 = add nuw nsw i64 %151, 2080473388
  %183 = and i64 %182, 4294967295
  %184 = shl i64 %2, 32
  %185 = sub i64 -639039336339210240, %184
  %186 = or disjoint i64 %183, %185
  %187 = add i64 %2, 3103681593
  %188 = and i64 %187, 4294967295
  %189 = and i64 %2, -4294967296
  %190 = sub i64 2568260966923894784, %189
  %191 = or disjoint i64 %188, %190
  %192 = mul i64 %1, -7046029288634856825
  %193 = extractelement <4 x i64> %150, i64 0
  %194 = xor i64 %191, %193
  %195 = extractelement <4 x i64> %150, i64 1
  %196 = xor i64 %186, %195
  %197 = zext i64 %194 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %192, %202
  %204 = extractelement <4 x i64> %150, i64 2
  %205 = xor i64 %181, %204
  %206 = extractelement <4 x i64> %150, i64 3
  %207 = xor i64 %176, %206
  %208 = zext i64 %205 to i128
  %209 = zext i64 %207 to i128
  %210 = mul nuw i128 %209, %208
  %211 = lshr i128 %210, 64
  %212 = xor i128 %211, %210
  %213 = trunc i128 %212 to i64
  %214 = add i64 %203, %213
  %215 = extractelement <4 x i64> %149, i64 0
  %216 = xor i64 %171, %215
  %217 = extractelement <4 x i64> %149, i64 1
  %218 = xor i64 %166, %217
  %219 = zext i64 %216 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %214, %224
  %226 = extractelement <4 x i64> %149, i64 2
  %227 = xor i64 %161, %226
  %228 = extractelement <4 x i64> %149, i64 3
  %229 = xor i64 %156, %228
  %230 = zext i64 %227 to i128
  %231 = zext i64 %229 to i128
  %232 = mul nuw i128 %231, %230
  %233 = lshr i128 %232, 64
  %234 = xor i128 %233, %232
  %235 = trunc i128 %234 to i64
  %236 = add i64 %225, %235
  %237 = lshr i64 %236, 37
  %238 = xor i64 %237, %236
  %239 = mul i64 %238, 1609587929392839161
  %240 = lshr i64 %239, 32
  %241 = xor i64 %240, %239
  ret i64 %241
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %75

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, 2568260970027576377
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, -639039334258736852
  %13 = zext i64 %8 to i128
  %14 = zext i64 %12 to i128
  %15 = mul nuw i128 %14, %13
  %16 = lshr i128 %15, 64
  %17 = xor i128 %16, %15
  %18 = trunc i128 %17 to i64
  %19 = add i64 %8, %1
  %20 = add i64 %19, %12
  %21 = add i64 %20, %18
  %22 = lshr i64 %21, 37
  %23 = xor i64 %22, %21
  %24 = mul i64 %23, 1609587929392839161
  %25 = lshr i64 %24, 32
  %26 = xor i64 %25, %24
  br label %133

27:                                               ; preds = %4
  %28 = icmp samesign ugt i64 %1, 3
  br i1 %28, label %29, label %50

29:                                               ; preds = %27
  %30 = load i32, ptr %0, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %32 = getelementptr inbounds i8, ptr %31, i64 -4
  %33 = load i32, ptr %32, align 1
  %34 = zext i32 %30 to i64
  %35 = zext i32 %33 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or disjoint i64 %36, %34
  %38 = xor i64 %37, 2568260970027576377
  %39 = zext i64 %38 to i128
  %40 = mul nuw i128 %39, 11400714785074694791
  %41 = lshr i128 %40, 64
  %42 = xor i128 %41, %40
  %43 = trunc i128 %42 to i64
  %44 = add i64 %1, %43
  %45 = lshr i64 %44, 37
  %46 = xor i64 %45, %44
  %47 = mul i64 %46, 1609587929392839161
  %48 = lshr i64 %47, 32
  %49 = xor i64 %48, %47
  br label %133

50:                                               ; preds = %27
  %51 = icmp eq i64 %1, 0
  br i1 %51, label %133, label %52

52:                                               ; preds = %50
  %53 = load i8, ptr %0, align 1
  %54 = lshr i64 %1, 1
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 %54
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr i8, ptr %0, i64 %1
  %58 = getelementptr i8, ptr %57, i64 -1
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %53 to i64
  %61 = zext i8 %56 to i64
  %62 = shl nuw nsw i64 %61, 8
  %63 = or disjoint i64 %62, %60
  %64 = zext i8 %59 to i64
  %65 = shl nuw nsw i64 %64, 2
  %66 = add nuw nsw i64 %63, 3103681593
  %67 = add nuw nsw i64 %1, 597969854
  %68 = add nuw nsw i64 %67, %65
  %69 = mul nuw nsw i64 %68, %66
  %70 = lshr i64 %69, 37
  %71 = xor i64 %70, %69
  %72 = mul i64 %71, 1609587929392839161
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  br label %133

75:                                               ; preds = %2
  %76 = icmp ugt i64 %1, 128
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = tail call fastcc i64 @XXH3_hashLong_64b(ptr noundef readonly %0, i64 noundef %1, i64 noundef 0)
  br label %133

79:                                               ; preds = %75
  %80 = mul i64 %1, -7046029288634856825
  %81 = and i64 %1, 127
  %82 = add nsw i64 %81, -1
  %83 = lshr i64 %82, 5
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %85

85:                                               ; preds = %85, %79
  %86 = phi i64 [ %80, %79 ], [ %124, %85 ]
  %87 = phi i64 [ %83, %79 ], [ %125, %85 ]
  %88 = shl i64 %87, 4
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 %88
  %90 = shl i64 %87, 5
  %91 = getelementptr inbounds nuw i8, ptr @kKey, i64 %90
  %92 = load i64, ptr %89, align 1
  %93 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %94 = load i64, ptr %93, align 1
  %95 = load i64, ptr %91, align 32
  %96 = xor i64 %95, %92
  %97 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %98 = load i64, ptr %97, align 8
  %99 = xor i64 %98, %94
  %100 = zext i64 %96 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %86, %105
  %107 = sub nuw nsw i64 -16, %88
  %108 = getelementptr inbounds i8, ptr %84, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %110 = load i64, ptr %108, align 1
  %111 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %112 = load i64, ptr %111, align 1
  %113 = load i64, ptr %109, align 16
  %114 = xor i64 %113, %110
  %115 = getelementptr inbounds nuw i8, ptr %91, i64 24
  %116 = load i64, ptr %115, align 8
  %117 = xor i64 %116, %112
  %118 = zext i64 %114 to i128
  %119 = zext i64 %117 to i128
  %120 = mul nuw i128 %119, %118
  %121 = lshr i128 %120, 64
  %122 = xor i128 %121, %120
  %123 = trunc i128 %122 to i64
  %124 = add i64 %106, %123
  %125 = add nsw i64 %87, -1
  %126 = icmp eq i64 %87, 0
  br i1 %126, label %127, label %85

127:                                              ; preds = %85
  %128 = lshr i64 %124, 37
  %129 = xor i64 %128, %124
  %130 = mul i64 %129, 1609587929392839161
  %131 = lshr i64 %130, 32
  %132 = xor i64 %131, %130
  br label %133

133:                                              ; preds = %6, %29, %50, %52, %77, %127
  %134 = phi i64 [ %78, %77 ], [ %132, %127 ], [ %26, %6 ], [ %49, %29 ], [ %74, %52 ], [ 0, %50 ]
  ret i64 %134
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %130

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %46

7:                                                ; preds = %5
  %8 = add i64 %2, %1
  %9 = mul i64 %8, -7046029288634856825
  %10 = sub i64 %1, %2
  %11 = mul i64 %10, -4417276706812531889
  %12 = load i64, ptr %0, align 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = load i64, ptr %14, align 1
  %16 = add i64 %12, 2568260970027576377
  %17 = add i64 %15, -639039334258736852
  %18 = zext i64 %16 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %19, %18
  %21 = lshr i128 %20, 64
  %22 = xor i128 %21, %20
  %23 = trunc i128 %22 to i64
  %24 = add i64 %9, %23
  %25 = add i64 %12, -8966499887502561815
  %26 = add i64 %15, -5209706959179045724
  %27 = zext i64 %25 to i128
  %28 = zext i64 %26 to i128
  %29 = mul nuw i128 %28, %27
  %30 = lshr i128 %29, 64
  %31 = xor i128 %30, %29
  %32 = trunc i128 %31 to i64
  %33 = add i64 %11, %32
  %34 = lshr i64 %24, 37
  %35 = xor i64 %34, %24
  %36 = mul i64 %35, 1609587929392839161
  %37 = lshr i64 %36, 32
  %38 = xor i64 %37, %36
  %39 = lshr i64 %33, 37
  %40 = xor i64 %39, %33
  %41 = mul i64 %40, 1609587929392839161
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  %44 = insertvalue { i64, i64 } poison, i64 %38, 0
  %45 = insertvalue { i64, i64 } %44, i64 %43, 1
  br label %209

46:                                               ; preds = %5
  %47 = icmp samesign ugt i64 %1, 3
  br i1 %47, label %48, label %83

48:                                               ; preds = %46
  %49 = load i32, ptr %0, align 1
  %50 = trunc i64 %2 to i32
  %51 = add i32 %50, -1191285703
  %52 = add i32 %51, %49
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = lshr i64 %2, 32
  %57 = trunc nuw i64 %56 to i32
  %58 = add i32 %57, 597969854
  %59 = add i32 %58, %55
  %60 = zext i32 %52 to i64
  %61 = zext i32 %59 to i64
  %62 = or disjoint i64 %60, 4294967296
  %63 = mul i64 %62, %61
  %64 = add nuw nsw i64 %1, %60
  %65 = add i64 %64, %63
  %66 = mul i64 %1, -7046029288634856825
  %67 = mul i64 %60, -4417276706812531889
  %68 = add i64 %67, %66
  %69 = mul i64 %61, 1609587929392839161
  %70 = add i64 %68, %69
  %71 = lshr i64 %65, 37
  %72 = xor i64 %71, %65
  %73 = mul i64 %72, 1609587929392839161
  %74 = lshr i64 %73, 32
  %75 = xor i64 %74, %73
  %76 = lshr i64 %70, 37
  %77 = xor i64 %76, %70
  %78 = mul i64 %77, 1609587929392839161
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  %81 = insertvalue { i64, i64 } poison, i64 %75, 0
  %82 = insertvalue { i64, i64 } %81, i64 %80, 1
  br label %209

83:                                               ; preds = %46
  %84 = icmp eq i64 %1, 0
  br i1 %84, label %126, label %85

85:                                               ; preds = %83
  %86 = load i8, ptr %0, align 1
  %87 = lshr i64 %1, 1
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr i8, ptr %0, i64 %1
  %91 = getelementptr i8, ptr %90, i64 -1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %86 to i32
  %94 = zext i8 %89 to i32
  %95 = shl nuw nsw i32 %94, 8
  %96 = or disjoint i32 %95, %93
  %97 = trunc nuw nsw i64 %1 to i32
  %98 = zext i8 %92 to i32
  %99 = shl nuw nsw i32 %98, 2
  %100 = or disjoint i32 %99, %97
  %101 = trunc i64 %2 to i32
  %102 = add i32 %101, -1191285703
  %103 = add i32 %102, %96
  %104 = zext i32 %103 to i64
  %105 = add nuw nsw i32 %100, 597969854
  %106 = zext nneg i32 %105 to i64
  %107 = mul nuw nsw i64 %106, %104
  %108 = add nuw nsw i32 %96, 2080473388
  %109 = zext nneg i32 %108 to i64
  %110 = sub i32 %100, %101
  %111 = add i32 %110, -148787940
  %112 = zext i32 %111 to i64
  %113 = mul nuw nsw i64 %112, %109
  %114 = lshr i64 %107, 37
  %115 = xor i64 %114, %107
  %116 = mul i64 %115, 1609587929392839161
  %117 = lshr i64 %116, 32
  %118 = xor i64 %117, %116
  %119 = lshr i64 %113, 37
  %120 = xor i64 %119, %113
  %121 = mul i64 %120, 1609587929392839161
  %122 = lshr i64 %121, 32
  %123 = xor i64 %122, %121
  %124 = insertvalue { i64, i64 } poison, i64 %118, 0
  %125 = insertvalue { i64, i64 } %124, i64 %123, 1
  br label %209

126:                                              ; preds = %83
  %127 = sub i64 0, %2
  %128 = insertvalue { i64, i64 } poison, i64 %2, 0
  %129 = insertvalue { i64, i64 } %128, i64 %127, 1
  br label %209

130:                                              ; preds = %3
  %131 = icmp ugt i64 %1, 128
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %209

134:                                              ; preds = %130
  %135 = add i64 %2, %1
  %136 = mul i64 %135, -7046029288634856825
  %137 = and i64 %1, 127
  %138 = add nsw i64 %137, -1
  %139 = lshr i64 %138, 5
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %141

141:                                              ; preds = %141, %134
  %142 = phi i64 [ 0, %134 ], [ %185, %141 ]
  %143 = phi i64 [ %136, %134 ], [ %165, %141 ]
  %144 = phi i64 [ %139, %134 ], [ %186, %141 ]
  %145 = shl i64 %144, 4
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 %145
  %147 = shl i64 %144, 5
  %148 = getelementptr inbounds nuw i8, ptr @kKey, i64 %147
  %149 = load i64, ptr %146, align 1
  %150 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %151 = load i64, ptr %150, align 1
  %152 = load i64, ptr %148, align 32
  %153 = add i64 %152, %2
  %154 = xor i64 %153, %149
  %155 = getelementptr inbounds nuw i8, ptr %148, i64 8
  %156 = load i64, ptr %155, align 8
  %157 = sub i64 %156, %2
  %158 = xor i64 %157, %151
  %159 = zext i64 %154 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %143, %164
  %166 = sub nuw nsw i64 -16, %145
  %167 = getelementptr inbounds i8, ptr %140, i64 %166
  %168 = getelementptr inbounds nuw i8, ptr %148, i64 16
  %169 = load i64, ptr %167, align 1
  %170 = getelementptr inbounds nuw i8, ptr %167, i64 8
  %171 = load i64, ptr %170, align 1
  %172 = load i64, ptr %168, align 16
  %173 = add i64 %172, %2
  %174 = xor i64 %173, %169
  %175 = getelementptr inbounds nuw i8, ptr %148, i64 24
  %176 = load i64, ptr %175, align 8
  %177 = sub i64 %176, %2
  %178 = xor i64 %177, %171
  %179 = zext i64 %174 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %142, %184
  %186 = add nsw i64 %144, -1
  %187 = icmp eq i64 %144, 0
  br i1 %187, label %188, label %141

188:                                              ; preds = %141
  %189 = add i64 %185, %165
  %190 = mul i64 %165, 1609587929392839161
  %191 = mul i64 %185, -8796714831421723037
  %192 = sub i64 %1, %2
  %193 = mul i64 %192, -4417276706812531889
  %194 = add i64 %190, %193
  %195 = add i64 %194, %191
  %196 = lshr i64 %189, 37
  %197 = xor i64 %196, %189
  %198 = mul i64 %197, 1609587929392839161
  %199 = lshr i64 %198, 32
  %200 = xor i64 %199, %198
  %201 = lshr i64 %195, 37
  %202 = xor i64 %201, %195
  %203 = mul i64 %202, 1609587929392839161
  %204 = lshr i64 %203, 32
  %205 = xor i64 %204, %203
  %206 = sub i64 0, %205
  %207 = insertvalue { i64, i64 } poison, i64 %200, 0
  %208 = insertvalue { i64, i64 } %207, i64 %206, 1
  br label %209

209:                                              ; preds = %126, %85, %48, %7, %188, %132
  %210 = phi { i64, i64 } [ %133, %132 ], [ %208, %188 ], [ %45, %7 ], [ %82, %48 ], [ %125, %85 ], [ %129, %126 ]
  ret { i64, i64 } %210
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b(ptr noundef readonly %0, i64 noundef range(i64 129, 0) %1, i64 noundef %2) unnamed_addr #12 {
  %4 = insertelement <4 x i64> <i64 poison, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, i64 %2, i64 0
  %5 = sub i64 0, %2
  %6 = insertelement <4 x i64> <i64 -8796714831421723037, i64 2870177450012600261, i64 poison, i64 0>, i64 %5, i64 2
  %7 = lshr i64 %1, 10
  %8 = icmp ult i64 %1, 1024
  br i1 %8, label %72, label %9

9:                                                ; preds = %3, %49
  %10 = phi <4 x i64> [ %69, %49 ], [ %6, %3 ]
  %11 = phi <4 x i64> [ %59, %49 ], [ %4, %3 ]
  %12 = phi i64 [ %70, %49 ], [ 0, %3 ]
  %13 = shl nuw i64 %12, 10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi <4 x i64> [ %45, %15 ], [ %10, %9 ]
  %17 = phi <4 x i64> [ %32, %15 ], [ %11, %9 ]
  %18 = phi i64 [ %47, %15 ], [ 0, %9 ]
  %19 = phi ptr [ %46, %15 ], [ @kKey, %9 ]
  %20 = shl nuw nsw i64 %18, 6
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 %20
  %22 = load <4 x i64>, ptr %21, align 1
  %23 = load <4 x i64>, ptr %19, align 1
  %24 = xor <4 x i64> %23, %22
  %25 = bitcast <4 x i64> %24 to <8 x i32>
  %26 = shufflevector <8 x i32> %25, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = and <4 x i64> %24, splat (i64 4294967295)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = add <4 x i64> %22, %17
  %32 = add <4 x i64> %31, %30
  %33 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %34 = load <4 x i64>, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %36 = load <4 x i64>, ptr %35, align 1
  %37 = xor <4 x i64> %36, %34
  %38 = bitcast <4 x i64> %37 to <8 x i32>
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = and <4 x i64> %37, splat (i64 4294967295)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = add <4 x i64> %34, %16
  %45 = add <4 x i64> %44, %43
  %46 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %47 = add nuw nsw i64 %18, 1
  %48 = icmp eq i64 %47, 16
  br i1 %48, label %49, label %15

49:                                               ; preds = %15
  %50 = lshr <4 x i64> %32, splat (i64 47)
  %51 = xor <4 x i64> %32, %50
  %52 = xor <4 x i64> %51, <i64 3806645336748174467, i64 -426887675387993857, i64 -5192410362903929519, i64 3014149081973282086>
  %53 = and <4 x i64> %52, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, splat (i64 2654435761)
  %55 = bitcast <4 x i64> %52 to <8 x i32>
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = mul <4 x i64> %57, splat (i64 -7046029290881679360)
  %59 = add <4 x i64> %58, %54
  %60 = lshr <4 x i64> %45, splat (i64 47)
  %61 = xor <4 x i64> %45, %60
  %62 = xor <4 x i64> %61, <i64 9027362082514189912, i64 8849628031031490769, i64 -7703965541554505073, i64 -4950792452503503926>
  %63 = and <4 x i64> %62, splat (i64 4294967295)
  %64 = mul nuw <4 x i64> %63, splat (i64 2654435761)
  %65 = bitcast <4 x i64> %62 to <8 x i32>
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = mul <4 x i64> %67, splat (i64 -7046029290881679360)
  %69 = add <4 x i64> %68, %64
  %70 = add nuw nsw i64 %12, 1
  %71 = icmp eq i64 %70, %7
  br i1 %71, label %72, label %9

72:                                               ; preds = %49, %3
  %73 = phi <4 x i64> [ %6, %3 ], [ %69, %49 ]
  %74 = phi <4 x i64> [ %4, %3 ], [ %59, %49 ]
  %75 = lshr i64 %1, 6
  %76 = and i64 %75, 15
  %77 = and i64 %1, -1024
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  %79 = icmp eq i64 %76, 0
  br i1 %79, label %114, label %80

80:                                               ; preds = %72, %80
  %81 = phi <4 x i64> [ %110, %80 ], [ %73, %72 ]
  %82 = phi <4 x i64> [ %97, %80 ], [ %74, %72 ]
  %83 = phi i64 [ %112, %80 ], [ 0, %72 ]
  %84 = phi ptr [ %111, %80 ], [ @kKey, %72 ]
  %85 = shl nuw nsw i64 %83, 6
  %86 = getelementptr inbounds nuw i8, ptr %78, i64 %85
  %87 = load <4 x i64>, ptr %86, align 1
  %88 = load <4 x i64>, ptr %84, align 1
  %89 = xor <4 x i64> %88, %87
  %90 = bitcast <4 x i64> %89 to <8 x i32>
  %91 = shufflevector <8 x i32> %90, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %92 = bitcast <8 x i32> %91 to <4 x i64>
  %93 = and <4 x i64> %89, splat (i64 4294967295)
  %94 = and <4 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, %93
  %96 = add <4 x i64> %87, %82
  %97 = add <4 x i64> %96, %95
  %98 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %99 = load <4 x i64>, ptr %98, align 1
  %100 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %101 = load <4 x i64>, ptr %100, align 1
  %102 = xor <4 x i64> %101, %99
  %103 = bitcast <4 x i64> %102 to <8 x i32>
  %104 = shufflevector <8 x i32> %103, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %105 = bitcast <8 x i32> %104 to <4 x i64>
  %106 = and <4 x i64> %102, splat (i64 4294967295)
  %107 = and <4 x i64> %105, splat (i64 4294967295)
  %108 = mul nuw <4 x i64> %107, %106
  %109 = add <4 x i64> %99, %81
  %110 = add <4 x i64> %109, %108
  %111 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %112 = add nuw nsw i64 %83, 1
  %113 = icmp eq i64 %112, %76
  br i1 %113, label %114, label %80

114:                                              ; preds = %80, %72
  %115 = phi <4 x i64> [ %73, %72 ], [ %110, %80 ]
  %116 = phi <4 x i64> [ %74, %72 ], [ %97, %80 ]
  %117 = and i64 %1, 63
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %148, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %121 = getelementptr inbounds i8, ptr %120, i64 -64
  %122 = shl nuw nsw i64 %76, 3
  %123 = getelementptr inbounds nuw i8, ptr @kKey, i64 %122
  %124 = load <4 x i64>, ptr %121, align 1
  %125 = load <4 x i64>, ptr %123, align 8
  %126 = xor <4 x i64> %125, %124
  %127 = bitcast <4 x i64> %126 to <8 x i32>
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %129 = bitcast <8 x i32> %128 to <4 x i64>
  %130 = and <4 x i64> %126, splat (i64 4294967295)
  %131 = and <4 x i64> %129, splat (i64 4294967295)
  %132 = mul nuw <4 x i64> %131, %130
  %133 = add <4 x i64> %124, %116
  %134 = add <4 x i64> %133, %132
  %135 = getelementptr inbounds i8, ptr %120, i64 -32
  %136 = load <4 x i64>, ptr %135, align 1
  %137 = getelementptr inbounds nuw i8, ptr %123, i64 32
  %138 = load <4 x i64>, ptr %137, align 8
  %139 = xor <4 x i64> %138, %136
  %140 = bitcast <4 x i64> %139 to <8 x i32>
  %141 = shufflevector <8 x i32> %140, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %142 = bitcast <8 x i32> %141 to <4 x i64>
  %143 = and <4 x i64> %139, splat (i64 4294967295)
  %144 = and <4 x i64> %142, splat (i64 4294967295)
  %145 = mul nuw <4 x i64> %144, %143
  %146 = add <4 x i64> %136, %115
  %147 = add <4 x i64> %146, %145
  br label %148

148:                                              ; preds = %114, %119
  %149 = phi <4 x i64> [ %115, %114 ], [ %147, %119 ]
  %150 = phi <4 x i64> [ %116, %114 ], [ %134, %119 ]
  %151 = mul i64 %1, -7046029288634856825
  %152 = extractelement <4 x i64> %150, i64 0
  %153 = xor i64 %152, 2568260970027576377
  %154 = extractelement <4 x i64> %150, i64 1
  %155 = xor i64 %154, -639039334258736852
  %156 = zext i64 %153 to i128
  %157 = zext i64 %155 to i128
  %158 = mul nuw i128 %157, %156
  %159 = lshr i128 %158, 64
  %160 = xor i128 %159, %158
  %161 = trunc i128 %160 to i64
  %162 = extractelement <4 x i64> %150, i64 2
  %163 = xor i64 %162, -8966499887502561815
  %164 = extractelement <4 x i64> %150, i64 3
  %165 = xor i64 %164, -5209706959179045724
  %166 = zext i64 %163 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = extractelement <4 x i64> %149, i64 0
  %173 = xor i64 %172, -3692699387471206834
  %174 = extractelement <4 x i64> %149, i64 1
  %175 = xor i64 %174, -3675093282664558467
  %176 = zext i64 %173 to i128
  %177 = zext i64 %175 to i128
  %178 = mul nuw i128 %177, %176
  %179 = lshr i128 %178, 64
  %180 = xor i128 %179, %178
  %181 = trunc i128 %180 to i64
  %182 = extractelement <4 x i64> %149, i64 2
  %183 = xor i64 %182, -629619327510231436
  %184 = extractelement <4 x i64> %149, i64 3
  %185 = xor i64 %184, -9134946782546652954
  %186 = zext i64 %183 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %151, %181
  %193 = add i64 %192, %191
  %194 = add i64 %193, %161
  %195 = add i64 %194, %171
  %196 = lshr i64 %195, 37
  %197 = xor i64 %196, %195
  %198 = mul i64 %197, 1609587929392839161
  %199 = lshr i64 %198, 32
  %200 = xor i64 %199, %198
  %201 = mul i64 %1, -4417276706812531889
  %202 = add i64 %201, -4417276706812531889
  %203 = xor i64 %152, -7943504444863786309
  %204 = xor i64 %154, 1968968742000944523
  %205 = zext i64 %203 to i128
  %206 = zext i64 %204 to i128
  %207 = mul nuw i128 %206, %205
  %208 = lshr i128 %207, 64
  %209 = xor i128 %208, %207
  %210 = trunc i128 %209 to i64
  %211 = xor i64 %162, -6769480549562824553
  %212 = xor i64 %164, -6206333191815827642
  %213 = zext i64 %211 to i128
  %214 = zext i64 %212 to i128
  %215 = mul nuw i128 %214, %213
  %216 = lshr i128 %215, 64
  %217 = xor i128 %216, %215
  %218 = trunc i128 %217 to i64
  %219 = xor i64 %172, -2045702682710477249
  %220 = xor i64 %174, -4104099645253436473
  %221 = zext i64 %219 to i128
  %222 = zext i64 %220 to i128
  %223 = mul nuw i128 %222, %221
  %224 = lshr i128 %223, 64
  %225 = xor i128 %224, %223
  %226 = trunc i128 %225 to i64
  %227 = xor i64 %182, -3624173730817515445
  %228 = xor i64 %184, -2776342293574091063
  %229 = zext i64 %227 to i128
  %230 = zext i64 %228 to i128
  %231 = mul nuw i128 %230, %229
  %232 = lshr i128 %231, 64
  %233 = xor i128 %232, %231
  %234 = trunc i128 %233 to i64
  %235 = add i64 %202, %226
  %236 = add i64 %235, %234
  %237 = add i64 %236, %210
  %238 = add i64 %237, %218
  %239 = lshr i64 %238, 37
  %240 = xor i64 %239, %238
  %241 = mul i64 %240, 1609587929392839161
  %242 = lshr i64 %241, 32
  %243 = xor i64 %242, %241
  %244 = insertvalue { i64, i64 } poison, i64 %200, 0
  %245 = insertvalue { i64, i64 } %244, i64 %243, 1
  ret { i64, i64 } %245
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %115

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %43

6:                                                ; preds = %4
  %7 = mul i64 %1, -7046029288634856825
  %8 = mul i64 %1, -4417276706812531889
  %9 = load i64, ptr %0, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = load i64, ptr %11, align 1
  %13 = add i64 %9, 2568260970027576377
  %14 = add i64 %12, -639039334258736852
  %15 = zext i64 %13 to i128
  %16 = zext i64 %14 to i128
  %17 = mul nuw i128 %16, %15
  %18 = lshr i128 %17, 64
  %19 = xor i128 %18, %17
  %20 = trunc i128 %19 to i64
  %21 = add i64 %7, %20
  %22 = add i64 %9, -8966499887502561815
  %23 = add i64 %12, -5209706959179045724
  %24 = zext i64 %22 to i128
  %25 = zext i64 %23 to i128
  %26 = mul nuw i128 %25, %24
  %27 = lshr i128 %26, 64
  %28 = xor i128 %27, %26
  %29 = trunc i128 %28 to i64
  %30 = add i64 %8, %29
  %31 = lshr i64 %21, 37
  %32 = xor i64 %31, %21
  %33 = mul i64 %32, 1609587929392839161
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  %36 = lshr i64 %30, 37
  %37 = xor i64 %36, %30
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  %41 = insertvalue { i64, i64 } poison, i64 %35, 0
  %42 = insertvalue { i64, i64 } %41, i64 %40, 1
  br label %188

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %75

45:                                               ; preds = %43
  %46 = load i32, ptr %0, align 1
  %47 = add i32 %46, -1191285703
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %49 = getelementptr inbounds i8, ptr %48, i64 -4
  %50 = load i32, ptr %49, align 1
  %51 = add i32 %50, 597969854
  %52 = zext i32 %47 to i64
  %53 = zext i32 %51 to i64
  %54 = or disjoint i64 %52, 4294967296
  %55 = mul i64 %54, %53
  %56 = add nuw nsw i64 %1, %52
  %57 = add i64 %56, %55
  %58 = mul i64 %1, -7046029288634856825
  %59 = mul i64 %52, -4417276706812531889
  %60 = add i64 %59, %58
  %61 = mul i64 %53, 1609587929392839161
  %62 = add i64 %60, %61
  %63 = lshr i64 %57, 37
  %64 = xor i64 %63, %57
  %65 = mul i64 %64, 1609587929392839161
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  %68 = lshr i64 %62, 37
  %69 = xor i64 %68, %62
  %70 = mul i64 %69, 1609587929392839161
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  %73 = insertvalue { i64, i64 } poison, i64 %67, 0
  %74 = insertvalue { i64, i64 } %73, i64 %72, 1
  br label %188

75:                                               ; preds = %43
  %76 = icmp eq i64 %1, 0
  br i1 %76, label %188, label %77

77:                                               ; preds = %75
  %78 = load i8, ptr %0, align 1
  %79 = lshr i64 %1, 1
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 %79
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr i8, ptr %0, i64 %1
  %83 = getelementptr i8, ptr %82, i64 -1
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %78 to i32
  %86 = zext i8 %81 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = or disjoint i32 %87, %85
  %89 = trunc nuw nsw i64 %1 to i32
  %90 = zext i8 %84 to i32
  %91 = shl nuw nsw i32 %90, 2
  %92 = or disjoint i32 %91, %89
  %93 = add nuw nsw i32 %88, -1191285703
  %94 = zext i32 %93 to i64
  %95 = add nuw nsw i32 %92, 597969854
  %96 = zext nneg i32 %95 to i64
  %97 = mul nuw nsw i64 %96, %94
  %98 = add nuw nsw i32 %88, 2080473388
  %99 = zext nneg i32 %98 to i64
  %100 = add nuw nsw i32 %92, -148787940
  %101 = zext i32 %100 to i64
  %102 = mul nuw nsw i64 %101, %99
  %103 = lshr i64 %97, 37
  %104 = xor i64 %103, %97
  %105 = mul i64 %104, 1609587929392839161
  %106 = lshr i64 %105, 32
  %107 = xor i64 %106, %105
  %108 = lshr i64 %102, 37
  %109 = xor i64 %108, %102
  %110 = mul i64 %109, 1609587929392839161
  %111 = lshr i64 %110, 32
  %112 = xor i64 %111, %110
  %113 = insertvalue { i64, i64 } poison, i64 %107, 0
  %114 = insertvalue { i64, i64 } %113, i64 %112, 1
  br label %188

115:                                              ; preds = %2
  %116 = icmp ugt i64 %1, 128
  br i1 %116, label %117, label %119

117:                                              ; preds = %115
  %118 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b(ptr noundef readonly %0, i64 noundef %1, i64 noundef 0)
  br label %188

119:                                              ; preds = %115
  %120 = mul i64 %1, -7046029288634856825
  %121 = and i64 %1, 127
  %122 = add nsw i64 %121, -1
  %123 = lshr i64 %122, 5
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %125

125:                                              ; preds = %125, %119
  %126 = phi i64 [ 0, %119 ], [ %165, %125 ]
  %127 = phi i64 [ %120, %119 ], [ %147, %125 ]
  %128 = phi i64 [ %123, %119 ], [ %166, %125 ]
  %129 = shl i64 %128, 4
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 %129
  %131 = shl i64 %128, 5
  %132 = getelementptr inbounds nuw i8, ptr @kKey, i64 %131
  %133 = load i64, ptr %130, align 1
  %134 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %135 = load i64, ptr %134, align 1
  %136 = load i64, ptr %132, align 32
  %137 = xor i64 %136, %133
  %138 = getelementptr inbounds nuw i8, ptr %132, i64 8
  %139 = load i64, ptr %138, align 8
  %140 = xor i64 %139, %135
  %141 = zext i64 %137 to i128
  %142 = zext i64 %140 to i128
  %143 = mul nuw i128 %142, %141
  %144 = lshr i128 %143, 64
  %145 = xor i128 %144, %143
  %146 = trunc i128 %145 to i64
  %147 = add i64 %127, %146
  %148 = sub nuw nsw i64 -16, %129
  %149 = getelementptr inbounds i8, ptr %124, i64 %148
  %150 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %151 = load i64, ptr %149, align 1
  %152 = getelementptr inbounds nuw i8, ptr %149, i64 8
  %153 = load i64, ptr %152, align 1
  %154 = load i64, ptr %150, align 16
  %155 = xor i64 %154, %151
  %156 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %157 = load i64, ptr %156, align 8
  %158 = xor i64 %157, %153
  %159 = zext i64 %155 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %126, %164
  %166 = add nsw i64 %128, -1
  %167 = icmp eq i64 %128, 0
  br i1 %167, label %168, label %125

168:                                              ; preds = %125
  %169 = add i64 %165, %147
  %170 = mul i64 %147, 1609587929392839161
  %171 = mul i64 %165, -8796714831421723037
  %172 = mul i64 %1, -4417276706812531889
  %173 = add i64 %170, %172
  %174 = add i64 %173, %171
  %175 = lshr i64 %169, 37
  %176 = xor i64 %175, %169
  %177 = mul i64 %176, 1609587929392839161
  %178 = lshr i64 %177, 32
  %179 = xor i64 %178, %177
  %180 = lshr i64 %174, 37
  %181 = xor i64 %180, %174
  %182 = mul i64 %181, 1609587929392839161
  %183 = lshr i64 %182, 32
  %184 = xor i64 %183, %182
  %185 = sub i64 0, %184
  %186 = insertvalue { i64, i64 } poison, i64 %179, 0
  %187 = insertvalue { i64, i64 } %186, i64 %185, 1
  br label %188

188:                                              ; preds = %75, %6, %45, %77, %117, %168
  %189 = phi { i64, i64 } [ %118, %117 ], [ %187, %168 ], [ %42, %6 ], [ %74, %45 ], [ %114, %77 ], [ zeroinitializer, %75 ]
  ret { i64, i64 } %189
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %130

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %46

7:                                                ; preds = %5
  %8 = add i64 %2, %1
  %9 = mul i64 %8, -7046029288634856825
  %10 = sub i64 %1, %2
  %11 = mul i64 %10, -4417276706812531889
  %12 = load i64, ptr %0, align 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = load i64, ptr %14, align 1
  %16 = add i64 %12, 2568260970027576377
  %17 = add i64 %15, -639039334258736852
  %18 = zext i64 %16 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %19, %18
  %21 = lshr i128 %20, 64
  %22 = xor i128 %21, %20
  %23 = trunc i128 %22 to i64
  %24 = add i64 %9, %23
  %25 = add i64 %12, -8966499887502561815
  %26 = add i64 %15, -5209706959179045724
  %27 = zext i64 %25 to i128
  %28 = zext i64 %26 to i128
  %29 = mul nuw i128 %28, %27
  %30 = lshr i128 %29, 64
  %31 = xor i128 %30, %29
  %32 = trunc i128 %31 to i64
  %33 = add i64 %11, %32
  %34 = lshr i64 %24, 37
  %35 = xor i64 %34, %24
  %36 = mul i64 %35, 1609587929392839161
  %37 = lshr i64 %36, 32
  %38 = xor i64 %37, %36
  %39 = lshr i64 %33, 37
  %40 = xor i64 %39, %33
  %41 = mul i64 %40, 1609587929392839161
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  %44 = insertvalue { i64, i64 } poison, i64 %38, 0
  %45 = insertvalue { i64, i64 } %44, i64 %43, 1
  br label %209

46:                                               ; preds = %5
  %47 = icmp samesign ugt i64 %1, 3
  br i1 %47, label %48, label %83

48:                                               ; preds = %46
  %49 = load i32, ptr %0, align 1
  %50 = trunc i64 %2 to i32
  %51 = add i32 %50, -1191285703
  %52 = add i32 %51, %49
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %54 = getelementptr inbounds i8, ptr %53, i64 -4
  %55 = load i32, ptr %54, align 1
  %56 = lshr i64 %2, 32
  %57 = trunc nuw i64 %56 to i32
  %58 = add i32 %57, 597969854
  %59 = add i32 %58, %55
  %60 = zext i32 %52 to i64
  %61 = zext i32 %59 to i64
  %62 = or disjoint i64 %60, 4294967296
  %63 = mul i64 %62, %61
  %64 = add nuw nsw i64 %1, %60
  %65 = add i64 %64, %63
  %66 = mul i64 %1, -7046029288634856825
  %67 = mul i64 %60, -4417276706812531889
  %68 = add i64 %67, %66
  %69 = mul i64 %61, 1609587929392839161
  %70 = add i64 %68, %69
  %71 = lshr i64 %65, 37
  %72 = xor i64 %71, %65
  %73 = mul i64 %72, 1609587929392839161
  %74 = lshr i64 %73, 32
  %75 = xor i64 %74, %73
  %76 = lshr i64 %70, 37
  %77 = xor i64 %76, %70
  %78 = mul i64 %77, 1609587929392839161
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  %81 = insertvalue { i64, i64 } poison, i64 %75, 0
  %82 = insertvalue { i64, i64 } %81, i64 %80, 1
  br label %209

83:                                               ; preds = %46
  %84 = icmp eq i64 %1, 0
  br i1 %84, label %126, label %85

85:                                               ; preds = %83
  %86 = load i8, ptr %0, align 1
  %87 = lshr i64 %1, 1
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr i8, ptr %0, i64 %1
  %91 = getelementptr i8, ptr %90, i64 -1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %86 to i32
  %94 = zext i8 %89 to i32
  %95 = shl nuw nsw i32 %94, 8
  %96 = or disjoint i32 %95, %93
  %97 = trunc nuw nsw i64 %1 to i32
  %98 = zext i8 %92 to i32
  %99 = shl nuw nsw i32 %98, 2
  %100 = or disjoint i32 %99, %97
  %101 = trunc i64 %2 to i32
  %102 = add i32 %101, -1191285703
  %103 = add i32 %102, %96
  %104 = zext i32 %103 to i64
  %105 = add nuw nsw i32 %100, 597969854
  %106 = zext nneg i32 %105 to i64
  %107 = mul nuw nsw i64 %106, %104
  %108 = add nuw nsw i32 %96, 2080473388
  %109 = zext nneg i32 %108 to i64
  %110 = sub i32 %100, %101
  %111 = add i32 %110, -148787940
  %112 = zext i32 %111 to i64
  %113 = mul nuw nsw i64 %112, %109
  %114 = lshr i64 %107, 37
  %115 = xor i64 %114, %107
  %116 = mul i64 %115, 1609587929392839161
  %117 = lshr i64 %116, 32
  %118 = xor i64 %117, %116
  %119 = lshr i64 %113, 37
  %120 = xor i64 %119, %113
  %121 = mul i64 %120, 1609587929392839161
  %122 = lshr i64 %121, 32
  %123 = xor i64 %122, %121
  %124 = insertvalue { i64, i64 } poison, i64 %118, 0
  %125 = insertvalue { i64, i64 } %124, i64 %123, 1
  br label %209

126:                                              ; preds = %83
  %127 = sub i64 0, %2
  %128 = insertvalue { i64, i64 } poison, i64 %2, 0
  %129 = insertvalue { i64, i64 } %128, i64 %127, 1
  br label %209

130:                                              ; preds = %3
  %131 = icmp ugt i64 %1, 128
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2)
  br label %209

134:                                              ; preds = %130
  %135 = add i64 %2, %1
  %136 = mul i64 %135, -7046029288634856825
  %137 = and i64 %1, 127
  %138 = add nsw i64 %137, -1
  %139 = lshr i64 %138, 5
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %141

141:                                              ; preds = %141, %134
  %142 = phi i64 [ 0, %134 ], [ %185, %141 ]
  %143 = phi i64 [ %136, %134 ], [ %165, %141 ]
  %144 = phi i64 [ %139, %134 ], [ %186, %141 ]
  %145 = shl i64 %144, 4
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 %145
  %147 = shl i64 %144, 5
  %148 = getelementptr inbounds nuw i8, ptr @kKey, i64 %147
  %149 = load i64, ptr %146, align 1
  %150 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %151 = load i64, ptr %150, align 1
  %152 = load i64, ptr %148, align 32
  %153 = add i64 %152, %2
  %154 = xor i64 %153, %149
  %155 = getelementptr inbounds nuw i8, ptr %148, i64 8
  %156 = load i64, ptr %155, align 8
  %157 = sub i64 %156, %2
  %158 = xor i64 %157, %151
  %159 = zext i64 %154 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %143, %164
  %166 = sub nuw nsw i64 -16, %145
  %167 = getelementptr inbounds i8, ptr %140, i64 %166
  %168 = getelementptr inbounds nuw i8, ptr %148, i64 16
  %169 = load i64, ptr %167, align 1
  %170 = getelementptr inbounds nuw i8, ptr %167, i64 8
  %171 = load i64, ptr %170, align 1
  %172 = load i64, ptr %168, align 16
  %173 = add i64 %172, %2
  %174 = xor i64 %173, %169
  %175 = getelementptr inbounds nuw i8, ptr %148, i64 24
  %176 = load i64, ptr %175, align 8
  %177 = sub i64 %176, %2
  %178 = xor i64 %177, %171
  %179 = zext i64 %174 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %142, %184
  %186 = add nsw i64 %144, -1
  %187 = icmp eq i64 %144, 0
  br i1 %187, label %188, label %141

188:                                              ; preds = %141
  %189 = add i64 %185, %165
  %190 = mul i64 %165, 1609587929392839161
  %191 = mul i64 %185, -8796714831421723037
  %192 = sub i64 %1, %2
  %193 = mul i64 %192, -4417276706812531889
  %194 = add i64 %190, %193
  %195 = add i64 %194, %191
  %196 = lshr i64 %189, 37
  %197 = xor i64 %196, %189
  %198 = mul i64 %197, 1609587929392839161
  %199 = lshr i64 %198, 32
  %200 = xor i64 %199, %198
  %201 = lshr i64 %195, 37
  %202 = xor i64 %201, %195
  %203 = mul i64 %202, 1609587929392839161
  %204 = lshr i64 %203, 32
  %205 = xor i64 %204, %203
  %206 = sub i64 0, %205
  %207 = insertvalue { i64, i64 } poison, i64 %200, 0
  %208 = insertvalue { i64, i64 } %207, i64 %206, 1
  br label %209

209:                                              ; preds = %7, %48, %85, %126, %132, %188
  %210 = phi { i64, i64 } [ %133, %132 ], [ %208, %188 ], [ %45, %7 ], [ %82, %48 ], [ %125, %85 ], [ %129, %126 ]
  ret { i64, i64 } %210
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_oneshot(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = add i32 %1, 374761396
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i32
  %7 = mul i32 %6, 374761393
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 11)
  %10 = mul i32 %9, -1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %12 = load i8, ptr %4, align 1
  %13 = zext i8 %12 to i32
  %14 = mul i32 %13, 374761393
  %15 = add i32 %14, %10
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 11)
  %17 = mul i32 %16, -1640531535
  %18 = load i8, ptr %11, align 1
  %19 = zext i8 %18 to i32
  %20 = mul i32 %19, 374761393
  %21 = add i32 %20, %17
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 11)
  %23 = mul i32 %22, -1640531535
  %24 = lshr i32 %23, 15
  %25 = xor i32 %24, %23
  %26 = mul i32 %25, -2048144777
  %27 = lshr i32 %26, 13
  %28 = xor i32 %27, %26
  %29 = mul i32 %28, -1028477379
  %30 = lshr i32 %29, 16
  %31 = xor i32 %30, %29
  ret i32 %31
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind memory(none) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 301701}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
