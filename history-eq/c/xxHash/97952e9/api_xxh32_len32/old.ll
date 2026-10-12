; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/97952e9/api_xxh32_len32/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/97952e9/api_xxh32_len32/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kKey = internal unnamed_addr constant [48 x i32] [i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514, i32 941223750, i32 -1445024552, i32 -1459980737, i32 -476302273, i32 -102974521, i32 -955560163, i32 -1974345653, i32 -843818703, i32 -929071415, i32 -646417564, i32 -356143997, i32 886303683, i32 -981360385, i32 -99392533, i32 386784593, i32 -1208952247, i32 -753511130, i32 701786270, i32 722910808, i32 2101846524, i32 -1879525167, i32 2060464590, i32 1170946703, i32 -1793719256, i32 -1344799798, i32 -1152696194], align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 606
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %5, label %50

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %7 = getelementptr inbounds i8, ptr %6, i64 -15
  %8 = add i32 %2, 606290984
  %9 = add i32 %2, -2048144777
  %10 = add i32 %2, 1640531535
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %0, %5 ], [ %40, %11 ]
  %13 = phi i32 [ %8, %5 ], [ %21, %11 ]
  %14 = phi i32 [ %9, %5 ], [ %27, %11 ]
  %15 = phi i32 [ %2, %5 ], [ %33, %11 ]
  %16 = phi i32 [ %10, %5 ], [ %39, %11 ]
  %17 = load i32, ptr %12, align 1
  %18 = mul i32 %17, -2048144777
  %19 = add i32 %18, %13
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 13)
  %21 = mul i32 %20, -1640531535
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %23 = load i32, ptr %22, align 1
  %24 = mul i32 %23, -2048144777
  %25 = add i32 %24, %14
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %15
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %35 = load i32, ptr %34, align 1
  %36 = mul i32 %35, -2048144777
  %37 = add i32 %36, %16
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 13)
  %39 = mul i32 %38, -1640531535
  %40 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %41 = icmp ult ptr %40, %7
  br i1 %41, label %11, label %42

42:                                               ; preds = %11
  %43 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 1)
  %44 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 7)
  %45 = add i32 %44, %43
  %46 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 12)
  %47 = add i32 %45, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 18)
  %49 = add i32 %47, %48
  br label %52

50:                                               ; preds = %3
  %51 = add i32 %2, 374761393
  br label %52

52:                                               ; preds = %42, %50
  %53 = phi i32 [ %49, %42 ], [ %51, %50 ]
  %54 = phi ptr [ %40, %42 ], [ %0, %50 ]
  %55 = trunc i64 %1 to i32
  %56 = add i32 %53, %55
  %57 = and i64 %1, 15
  switch i64 %57, label %205 [
    i64 12, label %58
    i64 8, label %65
    i64 4, label %74
    i64 13, label %82
    i64 9, label %89
    i64 5, label %98
    i64 14, label %113
    i64 10, label %120
    i64 6, label %129
    i64 15, label %151
    i64 11, label %158
    i64 7, label %167
    i64 3, label %176
    i64 2, label %186
    i64 1, label %196
    i64 0, label %206
  ]

58:                                               ; preds = %52
  %59 = load i32, ptr %54, align 1
  %60 = mul i32 %59, -1028477379
  %61 = add i32 %60, %56
  %62 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 17)
  %64 = mul i32 %63, 668265263
  br label %65

65:                                               ; preds = %58, %52
  %66 = phi i32 [ %56, %52 ], [ %64, %58 ]
  %67 = phi ptr [ %54, %52 ], [ %62, %58 ]
  %68 = load i32, ptr %67, align 1
  %69 = mul i32 %68, -1028477379
  %70 = add i32 %69, %66
  %71 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 17)
  %73 = mul i32 %72, 668265263
  br label %74

74:                                               ; preds = %65, %52
  %75 = phi i32 [ %56, %52 ], [ %73, %65 ]
  %76 = phi ptr [ %54, %52 ], [ %71, %65 ]
  %77 = load i32, ptr %76, align 1
  %78 = mul i32 %77, -1028477379
  %79 = add i32 %78, %75
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 17)
  %81 = mul i32 %80, 668265263
  br label %206

82:                                               ; preds = %52
  %83 = load i32, ptr %54, align 1
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %56
  %86 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %88 = mul i32 %87, 668265263
  br label %89

89:                                               ; preds = %82, %52
  %90 = phi i32 [ %56, %52 ], [ %88, %82 ]
  %91 = phi ptr [ %54, %52 ], [ %86, %82 ]
  %92 = load i32, ptr %91, align 1
  %93 = mul i32 %92, -1028477379
  %94 = add i32 %93, %90
  %95 = getelementptr inbounds nuw i8, ptr %91, i64 4
  %96 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 17)
  %97 = mul i32 %96, 668265263
  br label %98

98:                                               ; preds = %89, %52
  %99 = phi i32 [ %56, %52 ], [ %97, %89 ]
  %100 = phi ptr [ %54, %52 ], [ %95, %89 ]
  %101 = load i32, ptr %100, align 1
  %102 = mul i32 %101, -1028477379
  %103 = add i32 %102, %99
  %104 = getelementptr inbounds nuw i8, ptr %100, i64 4
  %105 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 17)
  %106 = mul i32 %105, 668265263
  %107 = load i8, ptr %104, align 1
  %108 = zext i8 %107 to i32
  %109 = mul i32 %108, 374761393
  %110 = add i32 %106, %109
  %111 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 11)
  %112 = mul i32 %111, -1640531535
  br label %206

113:                                              ; preds = %52
  %114 = load i32, ptr %54, align 1
  %115 = mul i32 %114, -1028477379
  %116 = add i32 %115, %56
  %117 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %118 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 17)
  %119 = mul i32 %118, 668265263
  br label %120

120:                                              ; preds = %113, %52
  %121 = phi i32 [ %56, %52 ], [ %119, %113 ]
  %122 = phi ptr [ %54, %52 ], [ %117, %113 ]
  %123 = load i32, ptr %122, align 1
  %124 = mul i32 %123, -1028477379
  %125 = add i32 %124, %121
  %126 = getelementptr inbounds nuw i8, ptr %122, i64 4
  %127 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 17)
  %128 = mul i32 %127, 668265263
  br label %129

129:                                              ; preds = %120, %52
  %130 = phi i32 [ %56, %52 ], [ %128, %120 ]
  %131 = phi ptr [ %54, %52 ], [ %126, %120 ]
  %132 = load i32, ptr %131, align 1
  %133 = mul i32 %132, -1028477379
  %134 = add i32 %133, %130
  %135 = getelementptr inbounds nuw i8, ptr %131, i64 4
  %136 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 17)
  %137 = mul i32 %136, 668265263
  %138 = getelementptr inbounds nuw i8, ptr %131, i64 5
  %139 = load i8, ptr %135, align 1
  %140 = zext i8 %139 to i32
  %141 = mul i32 %140, 374761393
  %142 = add i32 %137, %141
  %143 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 11)
  %144 = mul i32 %143, -1640531535
  %145 = load i8, ptr %138, align 1
  %146 = zext i8 %145 to i32
  %147 = mul i32 %146, 374761393
  %148 = add i32 %144, %147
  %149 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 11)
  %150 = mul i32 %149, -1640531535
  br label %206

151:                                              ; preds = %52
  %152 = load i32, ptr %54, align 1
  %153 = mul i32 %152, -1028477379
  %154 = add i32 %153, %56
  %155 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %156 = tail call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 17)
  %157 = mul i32 %156, 668265263
  br label %158

158:                                              ; preds = %151, %52
  %159 = phi i32 [ %56, %52 ], [ %157, %151 ]
  %160 = phi ptr [ %54, %52 ], [ %155, %151 ]
  %161 = load i32, ptr %160, align 1
  %162 = mul i32 %161, -1028477379
  %163 = add i32 %162, %159
  %164 = getelementptr inbounds nuw i8, ptr %160, i64 4
  %165 = tail call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 17)
  %166 = mul i32 %165, 668265263
  br label %167

167:                                              ; preds = %158, %52
  %168 = phi i32 [ %56, %52 ], [ %166, %158 ]
  %169 = phi ptr [ %54, %52 ], [ %164, %158 ]
  %170 = load i32, ptr %169, align 1
  %171 = mul i32 %170, -1028477379
  %172 = add i32 %171, %168
  %173 = getelementptr inbounds nuw i8, ptr %169, i64 4
  %174 = tail call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 17)
  %175 = mul i32 %174, 668265263
  br label %176

176:                                              ; preds = %167, %52
  %177 = phi i32 [ %56, %52 ], [ %175, %167 ]
  %178 = phi ptr [ %54, %52 ], [ %173, %167 ]
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %180 = load i8, ptr %178, align 1
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 374761393
  %183 = add i32 %182, %177
  %184 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 11)
  %185 = mul i32 %184, -1640531535
  br label %186

186:                                              ; preds = %176, %52
  %187 = phi i32 [ %56, %52 ], [ %185, %176 ]
  %188 = phi ptr [ %54, %52 ], [ %179, %176 ]
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 1
  %190 = load i8, ptr %188, align 1
  %191 = zext i8 %190 to i32
  %192 = mul i32 %191, 374761393
  %193 = add i32 %192, %187
  %194 = tail call i32 @llvm.fshl.i32(i32 %193, i32 %193, i32 11)
  %195 = mul i32 %194, -1640531535
  br label %196

196:                                              ; preds = %186, %52
  %197 = phi i32 [ %56, %52 ], [ %195, %186 ]
  %198 = phi ptr [ %54, %52 ], [ %189, %186 ]
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i32
  %201 = mul i32 %200, 374761393
  %202 = add i32 %201, %197
  %203 = tail call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 11)
  %204 = mul i32 %203, -1640531535
  br label %206

205:                                              ; preds = %52
  unreachable

206:                                              ; preds = %52, %74, %98, %129, %196
  %207 = phi i32 [ %150, %129 ], [ %112, %98 ], [ %81, %74 ], [ %56, %52 ], [ %204, %196 ]
  %208 = lshr i32 %207, 15
  %209 = xor i32 %208, %207
  %210 = mul i32 %209, -2048144777
  %211 = lshr i32 %210, 13
  %212 = xor i32 %211, %210
  %213 = mul i32 %212, -1028477379
  %214 = lshr i32 %213, 16
  %215 = xor i32 %214, %213
  ret i32 %215
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #16
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %125, label %5

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
  br label %123

27:                                               ; preds = %5
  %28 = icmp eq i32 %18, 0
  br i1 %28, label %69, label %29

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
  store i32 %40, ptr %34, align 4
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %41, align 1
  %45 = mul i32 %44, -2048144777
  %46 = add i32 %45, %43
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 13)
  %48 = mul i32 %47, -1640531535
  store i32 %48, ptr %42, align 4
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %49, align 1
  %53 = mul i32 %52, -2048144777
  %54 = add i32 %53, %51
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13)
  %56 = mul i32 %55, -1640531535
  store i32 %56, ptr %50, align 4
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %57, align 1
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %59
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  store i32 %64, ptr %58, align 4
  %65 = load i32, ptr %17, align 4
  %66 = sub i32 16, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 %67
  store i32 0, ptr %17, align 4
  br label %69

69:                                               ; preds = %29, %27
  %70 = phi ptr [ %68, %29 ], [ %1, %27 ]
  %71 = getelementptr inbounds i8, ptr %6, i64 -16
  %72 = icmp ugt ptr %70, %71
  br i1 %72, label %114, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %82, %73
  %83 = phi ptr [ %70, %73 ], [ %111, %82 ]
  %84 = phi i32 [ %75, %73 ], [ %92, %82 ]
  %85 = phi i32 [ %77, %73 ], [ %98, %82 ]
  %86 = phi i32 [ %79, %73 ], [ %104, %82 ]
  %87 = phi i32 [ %81, %73 ], [ %110, %82 ]
  %88 = load i32, ptr %83, align 1
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %84
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  %93 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %94 = load i32, ptr %93, align 1
  %95 = mul i32 %94, -2048144777
  %96 = add i32 %95, %85
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 13)
  %98 = mul i32 %97, -1640531535
  %99 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %100 = load i32, ptr %99, align 1
  %101 = mul i32 %100, -2048144777
  %102 = add i32 %101, %86
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 13)
  %104 = mul i32 %103, -1640531535
  %105 = getelementptr inbounds nuw i8, ptr %83, i64 12
  %106 = load i32, ptr %105, align 1
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %87
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %112 = icmp ugt ptr %111, %71
  br i1 %112, label %113, label %82

113:                                              ; preds = %82
  store i32 %92, ptr %74, align 4
  store i32 %98, ptr %76, align 4
  store i32 %104, ptr %78, align 4
  store i32 %110, ptr %80, align 4
  br label %114

114:                                              ; preds = %113, %69
  %115 = phi ptr [ %111, %113 ], [ %70, %69 ]
  %116 = icmp ult ptr %115, %6
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %119 = ptrtoint ptr %6 to i64
  %120 = ptrtoint ptr %115 to i64
  %121 = sub i64 %119, %120
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %118, ptr nonnull readonly align 1 %115, i64 %121, i1 false)
  %122 = trunc i64 %121 to i32
  br label %123

123:                                              ; preds = %117, %22
  %124 = phi i32 [ %26, %22 ], [ %122, %117 ]
  store i32 %124, ptr %17, align 4
  br label %125

125:                                              ; preds = %123, %3, %114
  %126 = phi i32 [ 1, %3 ], [ 0, %114 ], [ 0, %123 ]
  ret i32 %126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

25:                                               ; preds = %5, %21
  %26 = phi i32 [ %20, %5 ], [ %24, %21 ]
  %27 = load i32, ptr %0, align 4
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 15
  switch i32 %32, label %180 [
    i32 12, label %33
    i32 8, label %40
    i32 4, label %49
    i32 13, label %57
    i32 9, label %64
    i32 5, label %73
    i32 14, label %88
    i32 10, label %95
    i32 6, label %104
    i32 15, label %126
    i32 11, label %133
    i32 7, label %142
    i32 3, label %151
    i32 2, label %161
    i32 1, label %171
    i32 0, label %181
  ]

33:                                               ; preds = %25
  %34 = load i32, ptr %29, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %28
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  br label %40

40:                                               ; preds = %33, %25
  %41 = phi i32 [ %28, %25 ], [ %39, %33 ]
  %42 = phi ptr [ %29, %25 ], [ %37, %33 ]
  %43 = load i32, ptr %42, align 1
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %41
  %46 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %47 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %48 = mul i32 %47, 668265263
  br label %49

49:                                               ; preds = %40, %25
  %50 = phi i32 [ %28, %25 ], [ %48, %40 ]
  %51 = phi ptr [ %29, %25 ], [ %46, %40 ]
  %52 = load i32, ptr %51, align 1
  %53 = mul i32 %52, -1028477379
  %54 = add i32 %53, %50
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 17)
  %56 = mul i32 %55, 668265263
  br label %181

57:                                               ; preds = %25
  %58 = load i32, ptr %29, align 1
  %59 = mul i32 %58, -1028477379
  %60 = add i32 %59, %28
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %63 = mul i32 %62, 668265263
  br label %64

64:                                               ; preds = %57, %25
  %65 = phi i32 [ %28, %25 ], [ %63, %57 ]
  %66 = phi ptr [ %29, %25 ], [ %61, %57 ]
  %67 = load i32, ptr %66, align 1
  %68 = mul i32 %67, -1028477379
  %69 = add i32 %68, %65
  %70 = getelementptr inbounds nuw i8, ptr %66, i64 4
  %71 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 17)
  %72 = mul i32 %71, 668265263
  br label %73

73:                                               ; preds = %64, %25
  %74 = phi i32 [ %28, %25 ], [ %72, %64 ]
  %75 = phi ptr [ %29, %25 ], [ %70, %64 ]
  %76 = load i32, ptr %75, align 1
  %77 = mul i32 %76, -1028477379
  %78 = add i32 %77, %74
  %79 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %80 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 17)
  %81 = mul i32 %80, 668265263
  %82 = load i8, ptr %79, align 1
  %83 = zext i8 %82 to i32
  %84 = mul i32 %83, 374761393
  %85 = add i32 %81, %84
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 11)
  %87 = mul i32 %86, -1640531535
  br label %181

88:                                               ; preds = %25
  %89 = load i32, ptr %29, align 1
  %90 = mul i32 %89, -1028477379
  %91 = add i32 %90, %28
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %93 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 17)
  %94 = mul i32 %93, 668265263
  br label %95

95:                                               ; preds = %88, %25
  %96 = phi i32 [ %28, %25 ], [ %94, %88 ]
  %97 = phi ptr [ %29, %25 ], [ %92, %88 ]
  %98 = load i32, ptr %97, align 1
  %99 = mul i32 %98, -1028477379
  %100 = add i32 %99, %96
  %101 = getelementptr inbounds nuw i8, ptr %97, i64 4
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 17)
  %103 = mul i32 %102, 668265263
  br label %104

104:                                              ; preds = %95, %25
  %105 = phi i32 [ %28, %25 ], [ %103, %95 ]
  %106 = phi ptr [ %29, %25 ], [ %101, %95 ]
  %107 = load i32, ptr %106, align 1
  %108 = mul i32 %107, -1028477379
  %109 = add i32 %108, %105
  %110 = getelementptr inbounds nuw i8, ptr %106, i64 4
  %111 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 17)
  %112 = mul i32 %111, 668265263
  %113 = getelementptr inbounds nuw i8, ptr %106, i64 5
  %114 = load i8, ptr %110, align 1
  %115 = zext i8 %114 to i32
  %116 = mul i32 %115, 374761393
  %117 = add i32 %112, %116
  %118 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 11)
  %119 = mul i32 %118, -1640531535
  %120 = load i8, ptr %113, align 1
  %121 = zext i8 %120 to i32
  %122 = mul i32 %121, 374761393
  %123 = add i32 %119, %122
  %124 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 11)
  %125 = mul i32 %124, -1640531535
  br label %181

126:                                              ; preds = %25
  %127 = load i32, ptr %29, align 1
  %128 = mul i32 %127, -1028477379
  %129 = add i32 %128, %28
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 17)
  %132 = mul i32 %131, 668265263
  br label %133

133:                                              ; preds = %126, %25
  %134 = phi i32 [ %28, %25 ], [ %132, %126 ]
  %135 = phi ptr [ %29, %25 ], [ %130, %126 ]
  %136 = load i32, ptr %135, align 1
  %137 = mul i32 %136, -1028477379
  %138 = add i32 %137, %134
  %139 = getelementptr inbounds nuw i8, ptr %135, i64 4
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17)
  %141 = mul i32 %140, 668265263
  br label %142

142:                                              ; preds = %133, %25
  %143 = phi i32 [ %28, %25 ], [ %141, %133 ]
  %144 = phi ptr [ %29, %25 ], [ %139, %133 ]
  %145 = load i32, ptr %144, align 1
  %146 = mul i32 %145, -1028477379
  %147 = add i32 %146, %143
  %148 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 17)
  %150 = mul i32 %149, 668265263
  br label %151

151:                                              ; preds = %142, %25
  %152 = phi i32 [ %28, %25 ], [ %150, %142 ]
  %153 = phi ptr [ %29, %25 ], [ %148, %142 ]
  %154 = getelementptr inbounds nuw i8, ptr %153, i64 1
  %155 = load i8, ptr %153, align 1
  %156 = zext i8 %155 to i32
  %157 = mul i32 %156, 374761393
  %158 = add i32 %157, %152
  %159 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 11)
  %160 = mul i32 %159, -1640531535
  br label %161

161:                                              ; preds = %151, %25
  %162 = phi i32 [ %28, %25 ], [ %160, %151 ]
  %163 = phi ptr [ %29, %25 ], [ %154, %151 ]
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 1
  %165 = load i8, ptr %163, align 1
  %166 = zext i8 %165 to i32
  %167 = mul i32 %166, 374761393
  %168 = add i32 %167, %162
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 11)
  %170 = mul i32 %169, -1640531535
  br label %171

171:                                              ; preds = %161, %25
  %172 = phi i32 [ %28, %25 ], [ %170, %161 ]
  %173 = phi ptr [ %29, %25 ], [ %164, %161 ]
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = mul i32 %175, 374761393
  %177 = add i32 %176, %172
  %178 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 11)
  %179 = mul i32 %178, -1640531535
  br label %181

180:                                              ; preds = %25
  unreachable

181:                                              ; preds = %25, %49, %73, %104, %171
  %182 = phi i32 [ %125, %104 ], [ %87, %73 ], [ %56, %49 ], [ %28, %25 ], [ %179, %171 ]
  %183 = lshr i32 %182, 15
  %184 = xor i32 %183, %182
  %185 = mul i32 %184, -2048144777
  %186 = lshr i32 %185, 13
  %187 = xor i32 %186, %185
  %188 = mul i32 %187, -1028477379
  %189 = lshr i32 %188, 16
  %190 = xor i32 %189, %188
  ret i32 %190
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH32_canonicalFromHash(ptr noundef writeonly initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @XXH32_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
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
  switch i64 %80, label %482 [
    i64 24, label %81
    i64 16, label %91
    i64 8, label %103
    i64 28, label %114
    i64 20, label %124
    i64 12, label %136
    i64 4, label %148
    i64 25, label %158
    i64 17, label %168
    i64 9, label %180
    i64 29, label %198
    i64 21, label %208
    i64 13, label %220
    i64 5, label %232
    i64 26, label %249
    i64 18, label %259
    i64 10, label %271
    i64 30, label %296
    i64 22, label %306
    i64 14, label %318
    i64 6, label %330
    i64 27, label %354
    i64 19, label %364
    i64 11, label %376
    i64 31, label %408
    i64 23, label %418
    i64 15, label %430
    i64 7, label %442
    i64 3, label %453
    i64 2, label %463
    i64 1, label %473
    i64 0, label %483
  ]

81:                                               ; preds = %76
  %82 = load i64, ptr %78, align 1
  %83 = mul i64 %82, -4417276706812531889
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 31)
  %85 = mul i64 %84, -7046029288634856825
  %86 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %87 = xor i64 %85, %79
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 27)
  %89 = mul i64 %88, -7046029288634856825
  %90 = add i64 %89, -8796714831421723037
  br label %91

91:                                               ; preds = %81, %76
  %92 = phi ptr [ %78, %76 ], [ %86, %81 ]
  %93 = phi i64 [ %79, %76 ], [ %90, %81 ]
  %94 = load i64, ptr %92, align 1
  %95 = mul i64 %94, -4417276706812531889
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 31)
  %97 = mul i64 %96, -7046029288634856825
  %98 = getelementptr inbounds nuw i8, ptr %92, i64 8
  %99 = xor i64 %97, %93
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 27)
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  br label %103

103:                                              ; preds = %91, %76
  %104 = phi ptr [ %78, %76 ], [ %98, %91 ]
  %105 = phi i64 [ %79, %76 ], [ %102, %91 ]
  %106 = load i64, ptr %104, align 1
  %107 = mul i64 %106, -4417276706812531889
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 31)
  %109 = mul i64 %108, -7046029288634856825
  %110 = xor i64 %109, %105
  %111 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 27)
  %112 = mul i64 %111, -7046029288634856825
  %113 = add i64 %112, -8796714831421723037
  br label %483

114:                                              ; preds = %76
  %115 = load i64, ptr %78, align 1
  %116 = mul i64 %115, -4417276706812531889
  %117 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 31)
  %118 = mul i64 %117, -7046029288634856825
  %119 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %120 = xor i64 %118, %79
  %121 = tail call i64 @llvm.fshl.i64(i64 %120, i64 %120, i64 27)
  %122 = mul i64 %121, -7046029288634856825
  %123 = add i64 %122, -8796714831421723037
  br label %124

124:                                              ; preds = %114, %76
  %125 = phi ptr [ %78, %76 ], [ %119, %114 ]
  %126 = phi i64 [ %79, %76 ], [ %123, %114 ]
  %127 = load i64, ptr %125, align 1
  %128 = mul i64 %127, -4417276706812531889
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 31)
  %130 = mul i64 %129, -7046029288634856825
  %131 = getelementptr inbounds nuw i8, ptr %125, i64 8
  %132 = xor i64 %130, %126
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 27)
  %134 = mul i64 %133, -7046029288634856825
  %135 = add i64 %134, -8796714831421723037
  br label %136

136:                                              ; preds = %124, %76
  %137 = phi ptr [ %78, %76 ], [ %131, %124 ]
  %138 = phi i64 [ %79, %76 ], [ %135, %124 ]
  %139 = load i64, ptr %137, align 1
  %140 = mul i64 %139, -4417276706812531889
  %141 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 31)
  %142 = mul i64 %141, -7046029288634856825
  %143 = getelementptr inbounds nuw i8, ptr %137, i64 8
  %144 = xor i64 %142, %138
  %145 = tail call i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 27)
  %146 = mul i64 %145, -7046029288634856825
  %147 = add i64 %146, -8796714831421723037
  br label %148

148:                                              ; preds = %136, %76
  %149 = phi ptr [ %78, %76 ], [ %143, %136 ]
  %150 = phi i64 [ %79, %76 ], [ %147, %136 ]
  %151 = load i32, ptr %149, align 1
  %152 = zext i32 %151 to i64
  %153 = mul i64 %152, -7046029288634856825
  %154 = xor i64 %153, %150
  %155 = tail call i64 @llvm.fshl.i64(i64 %154, i64 %154, i64 23)
  %156 = mul i64 %155, -4417276706812531889
  %157 = add i64 %156, 1609587929392839161
  br label %483

158:                                              ; preds = %76
  %159 = load i64, ptr %78, align 1
  %160 = mul i64 %159, -4417276706812531889
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 31)
  %162 = mul i64 %161, -7046029288634856825
  %163 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %164 = xor i64 %162, %79
  %165 = tail call i64 @llvm.fshl.i64(i64 %164, i64 %164, i64 27)
  %166 = mul i64 %165, -7046029288634856825
  %167 = add i64 %166, -8796714831421723037
  br label %168

168:                                              ; preds = %158, %76
  %169 = phi ptr [ %78, %76 ], [ %163, %158 ]
  %170 = phi i64 [ %79, %76 ], [ %167, %158 ]
  %171 = load i64, ptr %169, align 1
  %172 = mul i64 %171, -4417276706812531889
  %173 = tail call i64 @llvm.fshl.i64(i64 %172, i64 %172, i64 31)
  %174 = mul i64 %173, -7046029288634856825
  %175 = getelementptr inbounds nuw i8, ptr %169, i64 8
  %176 = xor i64 %174, %170
  %177 = tail call i64 @llvm.fshl.i64(i64 %176, i64 %176, i64 27)
  %178 = mul i64 %177, -7046029288634856825
  %179 = add i64 %178, -8796714831421723037
  br label %180

180:                                              ; preds = %168, %76
  %181 = phi ptr [ %78, %76 ], [ %175, %168 ]
  %182 = phi i64 [ %79, %76 ], [ %179, %168 ]
  %183 = load i64, ptr %181, align 1
  %184 = mul i64 %183, -4417276706812531889
  %185 = tail call i64 @llvm.fshl.i64(i64 %184, i64 %184, i64 31)
  %186 = mul i64 %185, -7046029288634856825
  %187 = getelementptr inbounds nuw i8, ptr %181, i64 8
  %188 = xor i64 %186, %182
  %189 = tail call i64 @llvm.fshl.i64(i64 %188, i64 %188, i64 27)
  %190 = mul i64 %189, -7046029288634856825
  %191 = add i64 %190, -8796714831421723037
  %192 = load i8, ptr %187, align 1
  %193 = zext i8 %192 to i64
  %194 = mul i64 %193, 2870177450012600261
  %195 = xor i64 %191, %194
  %196 = tail call i64 @llvm.fshl.i64(i64 %195, i64 %195, i64 11)
  %197 = mul i64 %196, -7046029288634856825
  br label %483

198:                                              ; preds = %76
  %199 = load i64, ptr %78, align 1
  %200 = mul i64 %199, -4417276706812531889
  %201 = tail call i64 @llvm.fshl.i64(i64 %200, i64 %200, i64 31)
  %202 = mul i64 %201, -7046029288634856825
  %203 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %204 = xor i64 %202, %79
  %205 = tail call i64 @llvm.fshl.i64(i64 %204, i64 %204, i64 27)
  %206 = mul i64 %205, -7046029288634856825
  %207 = add i64 %206, -8796714831421723037
  br label %208

208:                                              ; preds = %198, %76
  %209 = phi ptr [ %78, %76 ], [ %203, %198 ]
  %210 = phi i64 [ %79, %76 ], [ %207, %198 ]
  %211 = load i64, ptr %209, align 1
  %212 = mul i64 %211, -4417276706812531889
  %213 = tail call i64 @llvm.fshl.i64(i64 %212, i64 %212, i64 31)
  %214 = mul i64 %213, -7046029288634856825
  %215 = getelementptr inbounds nuw i8, ptr %209, i64 8
  %216 = xor i64 %214, %210
  %217 = tail call i64 @llvm.fshl.i64(i64 %216, i64 %216, i64 27)
  %218 = mul i64 %217, -7046029288634856825
  %219 = add i64 %218, -8796714831421723037
  br label %220

220:                                              ; preds = %208, %76
  %221 = phi ptr [ %78, %76 ], [ %215, %208 ]
  %222 = phi i64 [ %79, %76 ], [ %219, %208 ]
  %223 = load i64, ptr %221, align 1
  %224 = mul i64 %223, -4417276706812531889
  %225 = tail call i64 @llvm.fshl.i64(i64 %224, i64 %224, i64 31)
  %226 = mul i64 %225, -7046029288634856825
  %227 = getelementptr inbounds nuw i8, ptr %221, i64 8
  %228 = xor i64 %226, %222
  %229 = tail call i64 @llvm.fshl.i64(i64 %228, i64 %228, i64 27)
  %230 = mul i64 %229, -7046029288634856825
  %231 = add i64 %230, -8796714831421723037
  br label %232

232:                                              ; preds = %220, %76
  %233 = phi ptr [ %78, %76 ], [ %227, %220 ]
  %234 = phi i64 [ %79, %76 ], [ %231, %220 ]
  %235 = load i32, ptr %233, align 1
  %236 = zext i32 %235 to i64
  %237 = mul i64 %236, -7046029288634856825
  %238 = xor i64 %237, %234
  %239 = getelementptr inbounds nuw i8, ptr %233, i64 4
  %240 = tail call i64 @llvm.fshl.i64(i64 %238, i64 %238, i64 23)
  %241 = mul i64 %240, -4417276706812531889
  %242 = add i64 %241, 1609587929392839161
  %243 = load i8, ptr %239, align 1
  %244 = zext i8 %243 to i64
  %245 = mul i64 %244, 2870177450012600261
  %246 = xor i64 %242, %245
  %247 = tail call i64 @llvm.fshl.i64(i64 %246, i64 %246, i64 11)
  %248 = mul i64 %247, -7046029288634856825
  br label %483

249:                                              ; preds = %76
  %250 = load i64, ptr %78, align 1
  %251 = mul i64 %250, -4417276706812531889
  %252 = tail call i64 @llvm.fshl.i64(i64 %251, i64 %251, i64 31)
  %253 = mul i64 %252, -7046029288634856825
  %254 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %255 = xor i64 %253, %79
  %256 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 27)
  %257 = mul i64 %256, -7046029288634856825
  %258 = add i64 %257, -8796714831421723037
  br label %259

259:                                              ; preds = %249, %76
  %260 = phi ptr [ %78, %76 ], [ %254, %249 ]
  %261 = phi i64 [ %79, %76 ], [ %258, %249 ]
  %262 = load i64, ptr %260, align 1
  %263 = mul i64 %262, -4417276706812531889
  %264 = tail call i64 @llvm.fshl.i64(i64 %263, i64 %263, i64 31)
  %265 = mul i64 %264, -7046029288634856825
  %266 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %267 = xor i64 %265, %261
  %268 = tail call i64 @llvm.fshl.i64(i64 %267, i64 %267, i64 27)
  %269 = mul i64 %268, -7046029288634856825
  %270 = add i64 %269, -8796714831421723037
  br label %271

271:                                              ; preds = %259, %76
  %272 = phi ptr [ %78, %76 ], [ %266, %259 ]
  %273 = phi i64 [ %79, %76 ], [ %270, %259 ]
  %274 = load i64, ptr %272, align 1
  %275 = mul i64 %274, -4417276706812531889
  %276 = tail call i64 @llvm.fshl.i64(i64 %275, i64 %275, i64 31)
  %277 = mul i64 %276, -7046029288634856825
  %278 = getelementptr inbounds nuw i8, ptr %272, i64 8
  %279 = xor i64 %277, %273
  %280 = tail call i64 @llvm.fshl.i64(i64 %279, i64 %279, i64 27)
  %281 = mul i64 %280, -7046029288634856825
  %282 = add i64 %281, -8796714831421723037
  %283 = getelementptr inbounds nuw i8, ptr %272, i64 9
  %284 = load i8, ptr %278, align 1
  %285 = zext i8 %284 to i64
  %286 = mul i64 %285, 2870177450012600261
  %287 = xor i64 %282, %286
  %288 = tail call i64 @llvm.fshl.i64(i64 %287, i64 %287, i64 11)
  %289 = mul i64 %288, -7046029288634856825
  %290 = load i8, ptr %283, align 1
  %291 = zext i8 %290 to i64
  %292 = mul i64 %291, 2870177450012600261
  %293 = xor i64 %289, %292
  %294 = tail call i64 @llvm.fshl.i64(i64 %293, i64 %293, i64 11)
  %295 = mul i64 %294, -7046029288634856825
  br label %483

296:                                              ; preds = %76
  %297 = load i64, ptr %78, align 1
  %298 = mul i64 %297, -4417276706812531889
  %299 = tail call i64 @llvm.fshl.i64(i64 %298, i64 %298, i64 31)
  %300 = mul i64 %299, -7046029288634856825
  %301 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %302 = xor i64 %300, %79
  %303 = tail call i64 @llvm.fshl.i64(i64 %302, i64 %302, i64 27)
  %304 = mul i64 %303, -7046029288634856825
  %305 = add i64 %304, -8796714831421723037
  br label %306

306:                                              ; preds = %296, %76
  %307 = phi ptr [ %78, %76 ], [ %301, %296 ]
  %308 = phi i64 [ %79, %76 ], [ %305, %296 ]
  %309 = load i64, ptr %307, align 1
  %310 = mul i64 %309, -4417276706812531889
  %311 = tail call i64 @llvm.fshl.i64(i64 %310, i64 %310, i64 31)
  %312 = mul i64 %311, -7046029288634856825
  %313 = getelementptr inbounds nuw i8, ptr %307, i64 8
  %314 = xor i64 %312, %308
  %315 = tail call i64 @llvm.fshl.i64(i64 %314, i64 %314, i64 27)
  %316 = mul i64 %315, -7046029288634856825
  %317 = add i64 %316, -8796714831421723037
  br label %318

318:                                              ; preds = %306, %76
  %319 = phi ptr [ %78, %76 ], [ %313, %306 ]
  %320 = phi i64 [ %79, %76 ], [ %317, %306 ]
  %321 = load i64, ptr %319, align 1
  %322 = mul i64 %321, -4417276706812531889
  %323 = tail call i64 @llvm.fshl.i64(i64 %322, i64 %322, i64 31)
  %324 = mul i64 %323, -7046029288634856825
  %325 = getelementptr inbounds nuw i8, ptr %319, i64 8
  %326 = xor i64 %324, %320
  %327 = tail call i64 @llvm.fshl.i64(i64 %326, i64 %326, i64 27)
  %328 = mul i64 %327, -7046029288634856825
  %329 = add i64 %328, -8796714831421723037
  br label %330

330:                                              ; preds = %318, %76
  %331 = phi ptr [ %78, %76 ], [ %325, %318 ]
  %332 = phi i64 [ %79, %76 ], [ %329, %318 ]
  %333 = load i32, ptr %331, align 1
  %334 = zext i32 %333 to i64
  %335 = mul i64 %334, -7046029288634856825
  %336 = xor i64 %335, %332
  %337 = getelementptr inbounds nuw i8, ptr %331, i64 4
  %338 = tail call i64 @llvm.fshl.i64(i64 %336, i64 %336, i64 23)
  %339 = mul i64 %338, -4417276706812531889
  %340 = add i64 %339, 1609587929392839161
  %341 = getelementptr inbounds nuw i8, ptr %331, i64 5
  %342 = load i8, ptr %337, align 1
  %343 = zext i8 %342 to i64
  %344 = mul i64 %343, 2870177450012600261
  %345 = xor i64 %340, %344
  %346 = tail call i64 @llvm.fshl.i64(i64 %345, i64 %345, i64 11)
  %347 = mul i64 %346, -7046029288634856825
  %348 = load i8, ptr %341, align 1
  %349 = zext i8 %348 to i64
  %350 = mul i64 %349, 2870177450012600261
  %351 = xor i64 %347, %350
  %352 = tail call i64 @llvm.fshl.i64(i64 %351, i64 %351, i64 11)
  %353 = mul i64 %352, -7046029288634856825
  br label %483

354:                                              ; preds = %76
  %355 = load i64, ptr %78, align 1
  %356 = mul i64 %355, -4417276706812531889
  %357 = tail call i64 @llvm.fshl.i64(i64 %356, i64 %356, i64 31)
  %358 = mul i64 %357, -7046029288634856825
  %359 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %360 = xor i64 %358, %79
  %361 = tail call i64 @llvm.fshl.i64(i64 %360, i64 %360, i64 27)
  %362 = mul i64 %361, -7046029288634856825
  %363 = add i64 %362, -8796714831421723037
  br label %364

364:                                              ; preds = %354, %76
  %365 = phi ptr [ %78, %76 ], [ %359, %354 ]
  %366 = phi i64 [ %79, %76 ], [ %363, %354 ]
  %367 = load i64, ptr %365, align 1
  %368 = mul i64 %367, -4417276706812531889
  %369 = tail call i64 @llvm.fshl.i64(i64 %368, i64 %368, i64 31)
  %370 = mul i64 %369, -7046029288634856825
  %371 = getelementptr inbounds nuw i8, ptr %365, i64 8
  %372 = xor i64 %370, %366
  %373 = tail call i64 @llvm.fshl.i64(i64 %372, i64 %372, i64 27)
  %374 = mul i64 %373, -7046029288634856825
  %375 = add i64 %374, -8796714831421723037
  br label %376

376:                                              ; preds = %364, %76
  %377 = phi ptr [ %78, %76 ], [ %371, %364 ]
  %378 = phi i64 [ %79, %76 ], [ %375, %364 ]
  %379 = load i64, ptr %377, align 1
  %380 = mul i64 %379, -4417276706812531889
  %381 = tail call i64 @llvm.fshl.i64(i64 %380, i64 %380, i64 31)
  %382 = mul i64 %381, -7046029288634856825
  %383 = getelementptr inbounds nuw i8, ptr %377, i64 8
  %384 = xor i64 %382, %378
  %385 = tail call i64 @llvm.fshl.i64(i64 %384, i64 %384, i64 27)
  %386 = mul i64 %385, -7046029288634856825
  %387 = add i64 %386, -8796714831421723037
  %388 = getelementptr inbounds nuw i8, ptr %377, i64 9
  %389 = load i8, ptr %383, align 1
  %390 = zext i8 %389 to i64
  %391 = mul i64 %390, 2870177450012600261
  %392 = xor i64 %387, %391
  %393 = tail call i64 @llvm.fshl.i64(i64 %392, i64 %392, i64 11)
  %394 = mul i64 %393, -7046029288634856825
  %395 = getelementptr inbounds nuw i8, ptr %377, i64 10
  %396 = load i8, ptr %388, align 1
  %397 = zext i8 %396 to i64
  %398 = mul i64 %397, 2870177450012600261
  %399 = xor i64 %394, %398
  %400 = tail call i64 @llvm.fshl.i64(i64 %399, i64 %399, i64 11)
  %401 = mul i64 %400, -7046029288634856825
  %402 = load i8, ptr %395, align 1
  %403 = zext i8 %402 to i64
  %404 = mul i64 %403, 2870177450012600261
  %405 = xor i64 %401, %404
  %406 = tail call i64 @llvm.fshl.i64(i64 %405, i64 %405, i64 11)
  %407 = mul i64 %406, -7046029288634856825
  br label %483

408:                                              ; preds = %76
  %409 = load i64, ptr %78, align 1
  %410 = mul i64 %409, -4417276706812531889
  %411 = tail call i64 @llvm.fshl.i64(i64 %410, i64 %410, i64 31)
  %412 = mul i64 %411, -7046029288634856825
  %413 = getelementptr inbounds nuw i8, ptr %78, i64 8
  %414 = xor i64 %412, %79
  %415 = tail call i64 @llvm.fshl.i64(i64 %414, i64 %414, i64 27)
  %416 = mul i64 %415, -7046029288634856825
  %417 = add i64 %416, -8796714831421723037
  br label %418

418:                                              ; preds = %408, %76
  %419 = phi ptr [ %78, %76 ], [ %413, %408 ]
  %420 = phi i64 [ %79, %76 ], [ %417, %408 ]
  %421 = load i64, ptr %419, align 1
  %422 = mul i64 %421, -4417276706812531889
  %423 = tail call i64 @llvm.fshl.i64(i64 %422, i64 %422, i64 31)
  %424 = mul i64 %423, -7046029288634856825
  %425 = getelementptr inbounds nuw i8, ptr %419, i64 8
  %426 = xor i64 %424, %420
  %427 = tail call i64 @llvm.fshl.i64(i64 %426, i64 %426, i64 27)
  %428 = mul i64 %427, -7046029288634856825
  %429 = add i64 %428, -8796714831421723037
  br label %430

430:                                              ; preds = %418, %76
  %431 = phi ptr [ %78, %76 ], [ %425, %418 ]
  %432 = phi i64 [ %79, %76 ], [ %429, %418 ]
  %433 = load i64, ptr %431, align 1
  %434 = mul i64 %433, -4417276706812531889
  %435 = tail call i64 @llvm.fshl.i64(i64 %434, i64 %434, i64 31)
  %436 = mul i64 %435, -7046029288634856825
  %437 = getelementptr inbounds nuw i8, ptr %431, i64 8
  %438 = xor i64 %436, %432
  %439 = tail call i64 @llvm.fshl.i64(i64 %438, i64 %438, i64 27)
  %440 = mul i64 %439, -7046029288634856825
  %441 = add i64 %440, -8796714831421723037
  br label %442

442:                                              ; preds = %430, %76
  %443 = phi ptr [ %78, %76 ], [ %437, %430 ]
  %444 = phi i64 [ %79, %76 ], [ %441, %430 ]
  %445 = load i32, ptr %443, align 1
  %446 = zext i32 %445 to i64
  %447 = mul i64 %446, -7046029288634856825
  %448 = xor i64 %447, %444
  %449 = getelementptr inbounds nuw i8, ptr %443, i64 4
  %450 = tail call i64 @llvm.fshl.i64(i64 %448, i64 %448, i64 23)
  %451 = mul i64 %450, -4417276706812531889
  %452 = add i64 %451, 1609587929392839161
  br label %453

453:                                              ; preds = %442, %76
  %454 = phi ptr [ %78, %76 ], [ %449, %442 ]
  %455 = phi i64 [ %79, %76 ], [ %452, %442 ]
  %456 = getelementptr inbounds nuw i8, ptr %454, i64 1
  %457 = load i8, ptr %454, align 1
  %458 = zext i8 %457 to i64
  %459 = mul i64 %458, 2870177450012600261
  %460 = xor i64 %459, %455
  %461 = tail call i64 @llvm.fshl.i64(i64 %460, i64 %460, i64 11)
  %462 = mul i64 %461, -7046029288634856825
  br label %463

463:                                              ; preds = %453, %76
  %464 = phi ptr [ %78, %76 ], [ %456, %453 ]
  %465 = phi i64 [ %79, %76 ], [ %462, %453 ]
  %466 = getelementptr inbounds nuw i8, ptr %464, i64 1
  %467 = load i8, ptr %464, align 1
  %468 = zext i8 %467 to i64
  %469 = mul i64 %468, 2870177450012600261
  %470 = xor i64 %469, %465
  %471 = tail call i64 @llvm.fshl.i64(i64 %470, i64 %470, i64 11)
  %472 = mul i64 %471, -7046029288634856825
  br label %473

473:                                              ; preds = %463, %76
  %474 = phi ptr [ %78, %76 ], [ %466, %463 ]
  %475 = phi i64 [ %79, %76 ], [ %472, %463 ]
  %476 = load i8, ptr %474, align 1
  %477 = zext i8 %476 to i64
  %478 = mul i64 %477, 2870177450012600261
  %479 = xor i64 %478, %475
  %480 = tail call i64 @llvm.fshl.i64(i64 %479, i64 %479, i64 11)
  %481 = mul i64 %480, -7046029288634856825
  br label %483

482:                                              ; preds = %76
  unreachable

483:                                              ; preds = %76, %103, %148, %180, %232, %271, %330, %376, %473
  %484 = phi i64 [ %407, %376 ], [ %353, %330 ], [ %295, %271 ], [ %248, %232 ], [ %197, %180 ], [ %157, %148 ], [ %113, %103 ], [ %79, %76 ], [ %481, %473 ]
  %485 = lshr i64 %484, 33
  %486 = xor i64 %485, %484
  %487 = mul i64 %486, -4417276706812531889
  %488 = lshr i64 %487, 29
  %489 = xor i64 %488, %487
  %490 = mul i64 %489, 1609587929392839161
  %491 = lshr i64 %490, 32
  %492 = xor i64 %491, %490
  ret i64 %492
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #15
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #16
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
define dso_local range(i32 0, 2) i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
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

119:                                              ; preds = %117, %3, %108
  %120 = phi i32 [ 1, %3 ], [ 0, %108 ], [ 0, %117 ]
  ret i32 %120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

48:                                               ; preds = %4, %44
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = and i64 %2, 31
  switch i64 %52, label %454 [
    i64 24, label %53
    i64 16, label %63
    i64 8, label %75
    i64 28, label %86
    i64 20, label %96
    i64 12, label %108
    i64 4, label %120
    i64 25, label %130
    i64 17, label %140
    i64 9, label %152
    i64 29, label %170
    i64 21, label %180
    i64 13, label %192
    i64 5, label %204
    i64 26, label %221
    i64 18, label %231
    i64 10, label %243
    i64 30, label %268
    i64 22, label %278
    i64 14, label %290
    i64 6, label %302
    i64 27, label %326
    i64 19, label %336
    i64 11, label %348
    i64 31, label %380
    i64 23, label %390
    i64 15, label %402
    i64 7, label %414
    i64 3, label %425
    i64 2, label %435
    i64 1, label %445
    i64 0, label %455
  ]

53:                                               ; preds = %48
  %54 = load i64, ptr %51, align 1
  %55 = mul i64 %54, -4417276706812531889
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %59 = xor i64 %57, %50
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 27)
  %61 = mul i64 %60, -7046029288634856825
  %62 = add i64 %61, -8796714831421723037
  br label %63

63:                                               ; preds = %53, %48
  %64 = phi ptr [ %51, %48 ], [ %58, %53 ]
  %65 = phi i64 [ %50, %48 ], [ %62, %53 ]
  %66 = load i64, ptr %64, align 1
  %67 = mul i64 %66, -4417276706812531889
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = xor i64 %69, %65
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 27)
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  br label %75

75:                                               ; preds = %63, %48
  %76 = phi ptr [ %51, %48 ], [ %70, %63 ]
  %77 = phi i64 [ %50, %48 ], [ %74, %63 ]
  %78 = load i64, ptr %76, align 1
  %79 = mul i64 %78, -4417276706812531889
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 31)
  %81 = mul i64 %80, -7046029288634856825
  %82 = xor i64 %81, %77
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 27)
  %84 = mul i64 %83, -7046029288634856825
  %85 = add i64 %84, -8796714831421723037
  br label %455

86:                                               ; preds = %48
  %87 = load i64, ptr %51, align 1
  %88 = mul i64 %87, -4417276706812531889
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 31)
  %90 = mul i64 %89, -7046029288634856825
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %92 = xor i64 %90, %50
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 27)
  %94 = mul i64 %93, -7046029288634856825
  %95 = add i64 %94, -8796714831421723037
  br label %96

96:                                               ; preds = %86, %48
  %97 = phi ptr [ %51, %48 ], [ %91, %86 ]
  %98 = phi i64 [ %50, %48 ], [ %95, %86 ]
  %99 = load i64, ptr %97, align 1
  %100 = mul i64 %99, -4417276706812531889
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 31)
  %102 = mul i64 %101, -7046029288634856825
  %103 = getelementptr inbounds nuw i8, ptr %97, i64 8
  %104 = xor i64 %102, %98
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 27)
  %106 = mul i64 %105, -7046029288634856825
  %107 = add i64 %106, -8796714831421723037
  br label %108

108:                                              ; preds = %96, %48
  %109 = phi ptr [ %51, %48 ], [ %103, %96 ]
  %110 = phi i64 [ %50, %48 ], [ %107, %96 ]
  %111 = load i64, ptr %109, align 1
  %112 = mul i64 %111, -4417276706812531889
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 31)
  %114 = mul i64 %113, -7046029288634856825
  %115 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %116 = xor i64 %114, %110
  %117 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 27)
  %118 = mul i64 %117, -7046029288634856825
  %119 = add i64 %118, -8796714831421723037
  br label %120

120:                                              ; preds = %108, %48
  %121 = phi ptr [ %51, %48 ], [ %115, %108 ]
  %122 = phi i64 [ %50, %48 ], [ %119, %108 ]
  %123 = load i32, ptr %121, align 1
  %124 = zext i32 %123 to i64
  %125 = mul i64 %124, -7046029288634856825
  %126 = xor i64 %125, %122
  %127 = tail call i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 23)
  %128 = mul i64 %127, -4417276706812531889
  %129 = add i64 %128, 1609587929392839161
  br label %455

130:                                              ; preds = %48
  %131 = load i64, ptr %51, align 1
  %132 = mul i64 %131, -4417276706812531889
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 31)
  %134 = mul i64 %133, -7046029288634856825
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %136 = xor i64 %134, %50
  %137 = tail call i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 27)
  %138 = mul i64 %137, -7046029288634856825
  %139 = add i64 %138, -8796714831421723037
  br label %140

140:                                              ; preds = %130, %48
  %141 = phi ptr [ %51, %48 ], [ %135, %130 ]
  %142 = phi i64 [ %50, %48 ], [ %139, %130 ]
  %143 = load i64, ptr %141, align 1
  %144 = mul i64 %143, -4417276706812531889
  %145 = tail call i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 31)
  %146 = mul i64 %145, -7046029288634856825
  %147 = getelementptr inbounds nuw i8, ptr %141, i64 8
  %148 = xor i64 %146, %142
  %149 = tail call i64 @llvm.fshl.i64(i64 %148, i64 %148, i64 27)
  %150 = mul i64 %149, -7046029288634856825
  %151 = add i64 %150, -8796714831421723037
  br label %152

152:                                              ; preds = %140, %48
  %153 = phi ptr [ %51, %48 ], [ %147, %140 ]
  %154 = phi i64 [ %50, %48 ], [ %151, %140 ]
  %155 = load i64, ptr %153, align 1
  %156 = mul i64 %155, -4417276706812531889
  %157 = tail call i64 @llvm.fshl.i64(i64 %156, i64 %156, i64 31)
  %158 = mul i64 %157, -7046029288634856825
  %159 = getelementptr inbounds nuw i8, ptr %153, i64 8
  %160 = xor i64 %158, %154
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 27)
  %162 = mul i64 %161, -7046029288634856825
  %163 = add i64 %162, -8796714831421723037
  %164 = load i8, ptr %159, align 1
  %165 = zext i8 %164 to i64
  %166 = mul i64 %165, 2870177450012600261
  %167 = xor i64 %163, %166
  %168 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 11)
  %169 = mul i64 %168, -7046029288634856825
  br label %455

170:                                              ; preds = %48
  %171 = load i64, ptr %51, align 1
  %172 = mul i64 %171, -4417276706812531889
  %173 = tail call i64 @llvm.fshl.i64(i64 %172, i64 %172, i64 31)
  %174 = mul i64 %173, -7046029288634856825
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %176 = xor i64 %174, %50
  %177 = tail call i64 @llvm.fshl.i64(i64 %176, i64 %176, i64 27)
  %178 = mul i64 %177, -7046029288634856825
  %179 = add i64 %178, -8796714831421723037
  br label %180

180:                                              ; preds = %170, %48
  %181 = phi ptr [ %51, %48 ], [ %175, %170 ]
  %182 = phi i64 [ %50, %48 ], [ %179, %170 ]
  %183 = load i64, ptr %181, align 1
  %184 = mul i64 %183, -4417276706812531889
  %185 = tail call i64 @llvm.fshl.i64(i64 %184, i64 %184, i64 31)
  %186 = mul i64 %185, -7046029288634856825
  %187 = getelementptr inbounds nuw i8, ptr %181, i64 8
  %188 = xor i64 %186, %182
  %189 = tail call i64 @llvm.fshl.i64(i64 %188, i64 %188, i64 27)
  %190 = mul i64 %189, -7046029288634856825
  %191 = add i64 %190, -8796714831421723037
  br label %192

192:                                              ; preds = %180, %48
  %193 = phi ptr [ %51, %48 ], [ %187, %180 ]
  %194 = phi i64 [ %50, %48 ], [ %191, %180 ]
  %195 = load i64, ptr %193, align 1
  %196 = mul i64 %195, -4417276706812531889
  %197 = tail call i64 @llvm.fshl.i64(i64 %196, i64 %196, i64 31)
  %198 = mul i64 %197, -7046029288634856825
  %199 = getelementptr inbounds nuw i8, ptr %193, i64 8
  %200 = xor i64 %198, %194
  %201 = tail call i64 @llvm.fshl.i64(i64 %200, i64 %200, i64 27)
  %202 = mul i64 %201, -7046029288634856825
  %203 = add i64 %202, -8796714831421723037
  br label %204

204:                                              ; preds = %192, %48
  %205 = phi ptr [ %51, %48 ], [ %199, %192 ]
  %206 = phi i64 [ %50, %48 ], [ %203, %192 ]
  %207 = load i32, ptr %205, align 1
  %208 = zext i32 %207 to i64
  %209 = mul i64 %208, -7046029288634856825
  %210 = xor i64 %209, %206
  %211 = getelementptr inbounds nuw i8, ptr %205, i64 4
  %212 = tail call i64 @llvm.fshl.i64(i64 %210, i64 %210, i64 23)
  %213 = mul i64 %212, -4417276706812531889
  %214 = add i64 %213, 1609587929392839161
  %215 = load i8, ptr %211, align 1
  %216 = zext i8 %215 to i64
  %217 = mul i64 %216, 2870177450012600261
  %218 = xor i64 %214, %217
  %219 = tail call i64 @llvm.fshl.i64(i64 %218, i64 %218, i64 11)
  %220 = mul i64 %219, -7046029288634856825
  br label %455

221:                                              ; preds = %48
  %222 = load i64, ptr %51, align 1
  %223 = mul i64 %222, -4417276706812531889
  %224 = tail call i64 @llvm.fshl.i64(i64 %223, i64 %223, i64 31)
  %225 = mul i64 %224, -7046029288634856825
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %227 = xor i64 %225, %50
  %228 = tail call i64 @llvm.fshl.i64(i64 %227, i64 %227, i64 27)
  %229 = mul i64 %228, -7046029288634856825
  %230 = add i64 %229, -8796714831421723037
  br label %231

231:                                              ; preds = %221, %48
  %232 = phi ptr [ %51, %48 ], [ %226, %221 ]
  %233 = phi i64 [ %50, %48 ], [ %230, %221 ]
  %234 = load i64, ptr %232, align 1
  %235 = mul i64 %234, -4417276706812531889
  %236 = tail call i64 @llvm.fshl.i64(i64 %235, i64 %235, i64 31)
  %237 = mul i64 %236, -7046029288634856825
  %238 = getelementptr inbounds nuw i8, ptr %232, i64 8
  %239 = xor i64 %237, %233
  %240 = tail call i64 @llvm.fshl.i64(i64 %239, i64 %239, i64 27)
  %241 = mul i64 %240, -7046029288634856825
  %242 = add i64 %241, -8796714831421723037
  br label %243

243:                                              ; preds = %231, %48
  %244 = phi ptr [ %51, %48 ], [ %238, %231 ]
  %245 = phi i64 [ %50, %48 ], [ %242, %231 ]
  %246 = load i64, ptr %244, align 1
  %247 = mul i64 %246, -4417276706812531889
  %248 = tail call i64 @llvm.fshl.i64(i64 %247, i64 %247, i64 31)
  %249 = mul i64 %248, -7046029288634856825
  %250 = getelementptr inbounds nuw i8, ptr %244, i64 8
  %251 = xor i64 %249, %245
  %252 = tail call i64 @llvm.fshl.i64(i64 %251, i64 %251, i64 27)
  %253 = mul i64 %252, -7046029288634856825
  %254 = add i64 %253, -8796714831421723037
  %255 = getelementptr inbounds nuw i8, ptr %244, i64 9
  %256 = load i8, ptr %250, align 1
  %257 = zext i8 %256 to i64
  %258 = mul i64 %257, 2870177450012600261
  %259 = xor i64 %254, %258
  %260 = tail call i64 @llvm.fshl.i64(i64 %259, i64 %259, i64 11)
  %261 = mul i64 %260, -7046029288634856825
  %262 = load i8, ptr %255, align 1
  %263 = zext i8 %262 to i64
  %264 = mul i64 %263, 2870177450012600261
  %265 = xor i64 %261, %264
  %266 = tail call i64 @llvm.fshl.i64(i64 %265, i64 %265, i64 11)
  %267 = mul i64 %266, -7046029288634856825
  br label %455

268:                                              ; preds = %48
  %269 = load i64, ptr %51, align 1
  %270 = mul i64 %269, -4417276706812531889
  %271 = tail call i64 @llvm.fshl.i64(i64 %270, i64 %270, i64 31)
  %272 = mul i64 %271, -7046029288634856825
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %274 = xor i64 %272, %50
  %275 = tail call i64 @llvm.fshl.i64(i64 %274, i64 %274, i64 27)
  %276 = mul i64 %275, -7046029288634856825
  %277 = add i64 %276, -8796714831421723037
  br label %278

278:                                              ; preds = %268, %48
  %279 = phi ptr [ %51, %48 ], [ %273, %268 ]
  %280 = phi i64 [ %50, %48 ], [ %277, %268 ]
  %281 = load i64, ptr %279, align 1
  %282 = mul i64 %281, -4417276706812531889
  %283 = tail call i64 @llvm.fshl.i64(i64 %282, i64 %282, i64 31)
  %284 = mul i64 %283, -7046029288634856825
  %285 = getelementptr inbounds nuw i8, ptr %279, i64 8
  %286 = xor i64 %284, %280
  %287 = tail call i64 @llvm.fshl.i64(i64 %286, i64 %286, i64 27)
  %288 = mul i64 %287, -7046029288634856825
  %289 = add i64 %288, -8796714831421723037
  br label %290

290:                                              ; preds = %278, %48
  %291 = phi ptr [ %51, %48 ], [ %285, %278 ]
  %292 = phi i64 [ %50, %48 ], [ %289, %278 ]
  %293 = load i64, ptr %291, align 1
  %294 = mul i64 %293, -4417276706812531889
  %295 = tail call i64 @llvm.fshl.i64(i64 %294, i64 %294, i64 31)
  %296 = mul i64 %295, -7046029288634856825
  %297 = getelementptr inbounds nuw i8, ptr %291, i64 8
  %298 = xor i64 %296, %292
  %299 = tail call i64 @llvm.fshl.i64(i64 %298, i64 %298, i64 27)
  %300 = mul i64 %299, -7046029288634856825
  %301 = add i64 %300, -8796714831421723037
  br label %302

302:                                              ; preds = %290, %48
  %303 = phi ptr [ %51, %48 ], [ %297, %290 ]
  %304 = phi i64 [ %50, %48 ], [ %301, %290 ]
  %305 = load i32, ptr %303, align 1
  %306 = zext i32 %305 to i64
  %307 = mul i64 %306, -7046029288634856825
  %308 = xor i64 %307, %304
  %309 = getelementptr inbounds nuw i8, ptr %303, i64 4
  %310 = tail call i64 @llvm.fshl.i64(i64 %308, i64 %308, i64 23)
  %311 = mul i64 %310, -4417276706812531889
  %312 = add i64 %311, 1609587929392839161
  %313 = getelementptr inbounds nuw i8, ptr %303, i64 5
  %314 = load i8, ptr %309, align 1
  %315 = zext i8 %314 to i64
  %316 = mul i64 %315, 2870177450012600261
  %317 = xor i64 %312, %316
  %318 = tail call i64 @llvm.fshl.i64(i64 %317, i64 %317, i64 11)
  %319 = mul i64 %318, -7046029288634856825
  %320 = load i8, ptr %313, align 1
  %321 = zext i8 %320 to i64
  %322 = mul i64 %321, 2870177450012600261
  %323 = xor i64 %319, %322
  %324 = tail call i64 @llvm.fshl.i64(i64 %323, i64 %323, i64 11)
  %325 = mul i64 %324, -7046029288634856825
  br label %455

326:                                              ; preds = %48
  %327 = load i64, ptr %51, align 1
  %328 = mul i64 %327, -4417276706812531889
  %329 = tail call i64 @llvm.fshl.i64(i64 %328, i64 %328, i64 31)
  %330 = mul i64 %329, -7046029288634856825
  %331 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %332 = xor i64 %330, %50
  %333 = tail call i64 @llvm.fshl.i64(i64 %332, i64 %332, i64 27)
  %334 = mul i64 %333, -7046029288634856825
  %335 = add i64 %334, -8796714831421723037
  br label %336

336:                                              ; preds = %326, %48
  %337 = phi ptr [ %51, %48 ], [ %331, %326 ]
  %338 = phi i64 [ %50, %48 ], [ %335, %326 ]
  %339 = load i64, ptr %337, align 1
  %340 = mul i64 %339, -4417276706812531889
  %341 = tail call i64 @llvm.fshl.i64(i64 %340, i64 %340, i64 31)
  %342 = mul i64 %341, -7046029288634856825
  %343 = getelementptr inbounds nuw i8, ptr %337, i64 8
  %344 = xor i64 %342, %338
  %345 = tail call i64 @llvm.fshl.i64(i64 %344, i64 %344, i64 27)
  %346 = mul i64 %345, -7046029288634856825
  %347 = add i64 %346, -8796714831421723037
  br label %348

348:                                              ; preds = %336, %48
  %349 = phi ptr [ %51, %48 ], [ %343, %336 ]
  %350 = phi i64 [ %50, %48 ], [ %347, %336 ]
  %351 = load i64, ptr %349, align 1
  %352 = mul i64 %351, -4417276706812531889
  %353 = tail call i64 @llvm.fshl.i64(i64 %352, i64 %352, i64 31)
  %354 = mul i64 %353, -7046029288634856825
  %355 = getelementptr inbounds nuw i8, ptr %349, i64 8
  %356 = xor i64 %354, %350
  %357 = tail call i64 @llvm.fshl.i64(i64 %356, i64 %356, i64 27)
  %358 = mul i64 %357, -7046029288634856825
  %359 = add i64 %358, -8796714831421723037
  %360 = getelementptr inbounds nuw i8, ptr %349, i64 9
  %361 = load i8, ptr %355, align 1
  %362 = zext i8 %361 to i64
  %363 = mul i64 %362, 2870177450012600261
  %364 = xor i64 %359, %363
  %365 = tail call i64 @llvm.fshl.i64(i64 %364, i64 %364, i64 11)
  %366 = mul i64 %365, -7046029288634856825
  %367 = getelementptr inbounds nuw i8, ptr %349, i64 10
  %368 = load i8, ptr %360, align 1
  %369 = zext i8 %368 to i64
  %370 = mul i64 %369, 2870177450012600261
  %371 = xor i64 %366, %370
  %372 = tail call i64 @llvm.fshl.i64(i64 %371, i64 %371, i64 11)
  %373 = mul i64 %372, -7046029288634856825
  %374 = load i8, ptr %367, align 1
  %375 = zext i8 %374 to i64
  %376 = mul i64 %375, 2870177450012600261
  %377 = xor i64 %373, %376
  %378 = tail call i64 @llvm.fshl.i64(i64 %377, i64 %377, i64 11)
  %379 = mul i64 %378, -7046029288634856825
  br label %455

380:                                              ; preds = %48
  %381 = load i64, ptr %51, align 1
  %382 = mul i64 %381, -4417276706812531889
  %383 = tail call i64 @llvm.fshl.i64(i64 %382, i64 %382, i64 31)
  %384 = mul i64 %383, -7046029288634856825
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %386 = xor i64 %384, %50
  %387 = tail call i64 @llvm.fshl.i64(i64 %386, i64 %386, i64 27)
  %388 = mul i64 %387, -7046029288634856825
  %389 = add i64 %388, -8796714831421723037
  br label %390

390:                                              ; preds = %380, %48
  %391 = phi ptr [ %51, %48 ], [ %385, %380 ]
  %392 = phi i64 [ %50, %48 ], [ %389, %380 ]
  %393 = load i64, ptr %391, align 1
  %394 = mul i64 %393, -4417276706812531889
  %395 = tail call i64 @llvm.fshl.i64(i64 %394, i64 %394, i64 31)
  %396 = mul i64 %395, -7046029288634856825
  %397 = getelementptr inbounds nuw i8, ptr %391, i64 8
  %398 = xor i64 %396, %392
  %399 = tail call i64 @llvm.fshl.i64(i64 %398, i64 %398, i64 27)
  %400 = mul i64 %399, -7046029288634856825
  %401 = add i64 %400, -8796714831421723037
  br label %402

402:                                              ; preds = %390, %48
  %403 = phi ptr [ %51, %48 ], [ %397, %390 ]
  %404 = phi i64 [ %50, %48 ], [ %401, %390 ]
  %405 = load i64, ptr %403, align 1
  %406 = mul i64 %405, -4417276706812531889
  %407 = tail call i64 @llvm.fshl.i64(i64 %406, i64 %406, i64 31)
  %408 = mul i64 %407, -7046029288634856825
  %409 = getelementptr inbounds nuw i8, ptr %403, i64 8
  %410 = xor i64 %408, %404
  %411 = tail call i64 @llvm.fshl.i64(i64 %410, i64 %410, i64 27)
  %412 = mul i64 %411, -7046029288634856825
  %413 = add i64 %412, -8796714831421723037
  br label %414

414:                                              ; preds = %402, %48
  %415 = phi ptr [ %51, %48 ], [ %409, %402 ]
  %416 = phi i64 [ %50, %48 ], [ %413, %402 ]
  %417 = load i32, ptr %415, align 1
  %418 = zext i32 %417 to i64
  %419 = mul i64 %418, -7046029288634856825
  %420 = xor i64 %419, %416
  %421 = getelementptr inbounds nuw i8, ptr %415, i64 4
  %422 = tail call i64 @llvm.fshl.i64(i64 %420, i64 %420, i64 23)
  %423 = mul i64 %422, -4417276706812531889
  %424 = add i64 %423, 1609587929392839161
  br label %425

425:                                              ; preds = %414, %48
  %426 = phi ptr [ %51, %48 ], [ %421, %414 ]
  %427 = phi i64 [ %50, %48 ], [ %424, %414 ]
  %428 = getelementptr inbounds nuw i8, ptr %426, i64 1
  %429 = load i8, ptr %426, align 1
  %430 = zext i8 %429 to i64
  %431 = mul i64 %430, 2870177450012600261
  %432 = xor i64 %431, %427
  %433 = tail call i64 @llvm.fshl.i64(i64 %432, i64 %432, i64 11)
  %434 = mul i64 %433, -7046029288634856825
  br label %435

435:                                              ; preds = %425, %48
  %436 = phi ptr [ %51, %48 ], [ %428, %425 ]
  %437 = phi i64 [ %50, %48 ], [ %434, %425 ]
  %438 = getelementptr inbounds nuw i8, ptr %436, i64 1
  %439 = load i8, ptr %436, align 1
  %440 = zext i8 %439 to i64
  %441 = mul i64 %440, 2870177450012600261
  %442 = xor i64 %441, %437
  %443 = tail call i64 @llvm.fshl.i64(i64 %442, i64 %442, i64 11)
  %444 = mul i64 %443, -7046029288634856825
  br label %445

445:                                              ; preds = %435, %48
  %446 = phi ptr [ %51, %48 ], [ %438, %435 ]
  %447 = phi i64 [ %50, %48 ], [ %444, %435 ]
  %448 = load i8, ptr %446, align 1
  %449 = zext i8 %448 to i64
  %450 = mul i64 %449, 2870177450012600261
  %451 = xor i64 %450, %447
  %452 = tail call i64 @llvm.fshl.i64(i64 %451, i64 %451, i64 11)
  %453 = mul i64 %452, -7046029288634856825
  br label %455

454:                                              ; preds = %48
  unreachable

455:                                              ; preds = %48, %75, %120, %152, %204, %243, %302, %348, %445
  %456 = phi i64 [ %379, %348 ], [ %325, %302 ], [ %267, %243 ], [ %220, %204 ], [ %169, %152 ], [ %129, %120 ], [ %85, %75 ], [ %50, %48 ], [ %453, %445 ]
  %457 = lshr i64 %456, 33
  %458 = xor i64 %457, %456
  %459 = mul i64 %458, -4417276706812531889
  %460 = lshr i64 %459, 29
  %461 = xor i64 %460, %459
  %462 = mul i64 %461, 1609587929392839161
  %463 = lshr i64 %462, 32
  %464 = xor i64 %463, %462
  ret i64 %464
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH64_canonicalFromHash(ptr noundef writeonly initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @XXH64_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64b_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %89

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %42

7:                                                ; preds = %5
  %8 = add i64 %2, %1
  %9 = mul i64 %8, -7046029288634856825
  %10 = load i64, ptr %0, align 1
  %11 = add i64 %10, 2568260970027576377
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = add i64 %14, -639039334258736852
  %16 = lshr i64 %11, 32
  %17 = lshr i64 %15, 32
  %18 = and i64 %11, 4294967295
  %19 = and i64 %15, 4294967295
  %20 = mul nuw i64 %19, %18
  %21 = lshr i64 %20, 32
  %22 = mul nuw i64 %19, %16
  %23 = add nuw i64 %21, %22
  %24 = lshr i64 %23, 32
  %25 = mul nuw i64 %17, %18
  %26 = and i64 %23, 4294967295
  %27 = add nuw i64 %26, %25
  %28 = lshr i64 %27, 32
  %29 = mul nuw i64 %17, %16
  %30 = and i64 %20, 4294967295
  %31 = shl i64 %27, 32
  %32 = add i64 %29, %9
  %33 = add i64 %32, %30
  %34 = add i64 %33, %24
  %35 = add i64 %34, %28
  %36 = add i64 %35, %31
  %37 = lshr i64 %36, 29
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, 1609587929392839161
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  br label %328

42:                                               ; preds = %5
  %43 = icmp samesign ugt i64 %1, 3
  br i1 %43, label %44, label %62

44:                                               ; preds = %42
  %45 = add i64 %2, %1
  %46 = mul i64 %45, -7046029288634856825
  %47 = load i32, ptr %0, align 1
  %48 = add i32 %47, -1191285703
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %51 = getelementptr inbounds i8, ptr %50, i64 -4
  %52 = load i32, ptr %51, align 1
  %53 = add i32 %52, 597969854
  %54 = zext i32 %53 to i64
  %55 = mul nuw i64 %54, %49
  %56 = add i64 %55, %46
  %57 = lshr i64 %56, 29
  %58 = xor i64 %57, %56
  %59 = mul i64 %58, 1609587929392839161
  %60 = lshr i64 %59, 32
  %61 = xor i64 %60, %59
  br label %328

62:                                               ; preds = %42
  %63 = icmp eq i64 %1, 0
  br i1 %63, label %328, label %64

64:                                               ; preds = %62
  %65 = load i8, ptr %0, align 1
  %66 = lshr i64 %1, 1
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 %66
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr i8, ptr %0, i64 %1
  %70 = getelementptr i8, ptr %69, i64 -1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %65 to i64
  %73 = zext i8 %68 to i64
  %74 = shl nuw nsw i64 %73, 8
  %75 = or disjoint i64 %74, %72
  %76 = zext i8 %71 to i64
  %77 = shl nuw nsw i64 %76, 2
  %78 = add i64 %2, 3103681593
  %79 = add i64 %78, %75
  %80 = and i64 %79, 4294967295
  %81 = add nuw nsw i64 %1, 597969854
  %82 = add nuw nsw i64 %81, %77
  %83 = mul nuw nsw i64 %80, %82
  %84 = lshr i64 %83, 29
  %85 = xor i64 %84, %83
  %86 = mul i64 %85, 1609587929392839161
  %87 = lshr i64 %86, 32
  %88 = xor i64 %87, %86
  br label %328

89:                                               ; preds = %3
  %90 = add i64 %2, %1
  %91 = mul i64 %90, -7046029288634856825
  %92 = icmp ugt i64 %1, 32
  br i1 %92, label %93, label %268

93:                                               ; preds = %89
  %94 = icmp ugt i64 %1, 64
  br i1 %94, label %95, label %212

95:                                               ; preds = %93
  %96 = icmp ugt i64 %1, 96
  br i1 %96, label %97, label %156

97:                                               ; preds = %95
  %98 = icmp ugt i64 %1, 128
  br i1 %98, label %99, label %101

99:                                               ; preds = %97
  %100 = tail call fastcc i64 @XXH3_hashLong(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %328

101:                                              ; preds = %97
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %103 = load i64, ptr %102, align 1
  %104 = xor i64 %103, -2045702682710477249
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %106 = load i64, ptr %105, align 1
  %107 = xor i64 %106, -4104099645253436473
  %108 = lshr i64 %104, 32
  %109 = lshr i64 %107, 32
  %110 = and i64 %104, 4294967295
  %111 = and i64 %107, 4294967295
  %112 = mul nuw i64 %111, %110
  %113 = lshr i64 %112, 32
  %114 = mul nuw i64 %111, %108
  %115 = add nuw i64 %113, %114
  %116 = lshr i64 %115, 32
  %117 = mul nuw i64 %109, %110
  %118 = and i64 %115, 4294967295
  %119 = add nuw i64 %118, %117
  %120 = lshr i64 %119, 32
  %121 = mul nuw i64 %109, %108
  %122 = and i64 %112, 4294967295
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %124 = getelementptr inbounds i8, ptr %123, i64 -64
  %125 = load i64, ptr %124, align 1
  %126 = xor i64 %125, -3624173730817515445
  %127 = getelementptr inbounds i8, ptr %123, i64 -56
  %128 = load i64, ptr %127, align 1
  %129 = xor i64 %128, -2776342293574091063
  %130 = lshr i64 %126, 32
  %131 = lshr i64 %129, 32
  %132 = and i64 %126, 4294967295
  %133 = and i64 %129, 4294967295
  %134 = mul nuw i64 %133, %132
  %135 = lshr i64 %134, 32
  %136 = mul nuw i64 %133, %130
  %137 = add nuw i64 %135, %136
  %138 = lshr i64 %137, 32
  %139 = mul nuw i64 %131, %132
  %140 = and i64 %137, 4294967295
  %141 = add nuw i64 %140, %139
  %142 = lshr i64 %141, 32
  %143 = mul nuw i64 %131, %130
  %144 = and i64 %134, 4294967295
  %145 = add i64 %141, %119
  %146 = shl i64 %145, 32
  %147 = add i64 %121, %91
  %148 = add i64 %147, %122
  %149 = add i64 %148, %143
  %150 = add i64 %149, %116
  %151 = add i64 %150, %144
  %152 = add i64 %151, %120
  %153 = add i64 %152, %138
  %154 = add i64 %153, %142
  %155 = add i64 %154, %146
  br label %156

156:                                              ; preds = %101, %95
  %157 = phi i64 [ %155, %101 ], [ %91, %95 ]
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %159 = load i64, ptr %158, align 1
  %160 = xor i64 %159, -7943504444863786309
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %162 = load i64, ptr %161, align 1
  %163 = xor i64 %162, 1968968742000944523
  %164 = lshr i64 %160, 32
  %165 = lshr i64 %163, 32
  %166 = and i64 %160, 4294967295
  %167 = and i64 %163, 4294967295
  %168 = mul nuw i64 %167, %166
  %169 = lshr i64 %168, 32
  %170 = mul nuw i64 %167, %164
  %171 = add nuw i64 %169, %170
  %172 = lshr i64 %171, 32
  %173 = mul nuw i64 %165, %166
  %174 = and i64 %171, 4294967295
  %175 = add nuw i64 %174, %173
  %176 = lshr i64 %175, 32
  %177 = mul nuw i64 %165, %164
  %178 = and i64 %168, 4294967295
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %180 = getelementptr inbounds i8, ptr %179, i64 -48
  %181 = load i64, ptr %180, align 1
  %182 = xor i64 %181, -6769480549562824553
  %183 = getelementptr inbounds i8, ptr %179, i64 -40
  %184 = load i64, ptr %183, align 1
  %185 = xor i64 %184, -6206333191815827642
  %186 = lshr i64 %182, 32
  %187 = lshr i64 %185, 32
  %188 = and i64 %182, 4294967295
  %189 = and i64 %185, 4294967295
  %190 = mul nuw i64 %189, %188
  %191 = lshr i64 %190, 32
  %192 = mul nuw i64 %189, %186
  %193 = add nuw i64 %191, %192
  %194 = lshr i64 %193, 32
  %195 = mul nuw i64 %187, %188
  %196 = and i64 %193, 4294967295
  %197 = add nuw i64 %196, %195
  %198 = lshr i64 %197, 32
  %199 = mul nuw i64 %187, %186
  %200 = and i64 %190, 4294967295
  %201 = add i64 %197, %175
  %202 = shl i64 %201, 32
  %203 = add i64 %177, %157
  %204 = add i64 %203, %178
  %205 = add i64 %204, %199
  %206 = add i64 %205, %172
  %207 = add i64 %206, %200
  %208 = add i64 %207, %176
  %209 = add i64 %208, %194
  %210 = add i64 %209, %198
  %211 = add i64 %210, %202
  br label %212

212:                                              ; preds = %156, %93
  %213 = phi i64 [ %211, %156 ], [ %91, %93 ]
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %215 = load i64, ptr %214, align 1
  %216 = xor i64 %215, -3692699387471206834
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %218 = load i64, ptr %217, align 1
  %219 = xor i64 %218, -3675093282664558467
  %220 = lshr i64 %216, 32
  %221 = lshr i64 %219, 32
  %222 = and i64 %216, 4294967295
  %223 = and i64 %219, 4294967295
  %224 = mul nuw i64 %223, %222
  %225 = lshr i64 %224, 32
  %226 = mul nuw i64 %223, %220
  %227 = add nuw i64 %225, %226
  %228 = lshr i64 %227, 32
  %229 = mul nuw i64 %221, %222
  %230 = and i64 %227, 4294967295
  %231 = add nuw i64 %230, %229
  %232 = lshr i64 %231, 32
  %233 = mul nuw i64 %221, %220
  %234 = and i64 %224, 4294967295
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %236 = getelementptr inbounds i8, ptr %235, i64 -32
  %237 = load i64, ptr %236, align 1
  %238 = xor i64 %237, -629619327510231436
  %239 = getelementptr inbounds i8, ptr %235, i64 -24
  %240 = load i64, ptr %239, align 1
  %241 = xor i64 %240, -9134946782546652954
  %242 = lshr i64 %238, 32
  %243 = lshr i64 %241, 32
  %244 = and i64 %238, 4294967295
  %245 = and i64 %241, 4294967295
  %246 = mul nuw i64 %245, %244
  %247 = lshr i64 %246, 32
  %248 = mul nuw i64 %245, %242
  %249 = add nuw i64 %247, %248
  %250 = lshr i64 %249, 32
  %251 = mul nuw i64 %243, %244
  %252 = and i64 %249, 4294967295
  %253 = add nuw i64 %252, %251
  %254 = lshr i64 %253, 32
  %255 = mul nuw i64 %243, %242
  %256 = and i64 %246, 4294967295
  %257 = add i64 %253, %231
  %258 = shl i64 %257, 32
  %259 = add i64 %233, %213
  %260 = add i64 %259, %234
  %261 = add i64 %260, %255
  %262 = add i64 %261, %228
  %263 = add i64 %262, %256
  %264 = add i64 %263, %232
  %265 = add i64 %264, %250
  %266 = add i64 %265, %254
  %267 = add i64 %266, %258
  br label %268

268:                                              ; preds = %212, %89
  %269 = phi i64 [ %267, %212 ], [ %91, %89 ]
  %270 = load i64, ptr %0, align 1
  %271 = xor i64 %270, 2568260970027576377
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %273 = load i64, ptr %272, align 1
  %274 = xor i64 %273, -639039334258736852
  %275 = lshr i64 %271, 32
  %276 = lshr i64 %274, 32
  %277 = and i64 %271, 4294967295
  %278 = and i64 %274, 4294967295
  %279 = mul nuw i64 %278, %277
  %280 = lshr i64 %279, 32
  %281 = mul nuw i64 %278, %275
  %282 = add nuw i64 %280, %281
  %283 = lshr i64 %282, 32
  %284 = mul nuw i64 %276, %277
  %285 = and i64 %282, 4294967295
  %286 = add nuw i64 %285, %284
  %287 = lshr i64 %286, 32
  %288 = mul nuw i64 %276, %275
  %289 = and i64 %279, 4294967295
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %291 = getelementptr inbounds i8, ptr %290, i64 -16
  %292 = load i64, ptr %291, align 1
  %293 = xor i64 %292, -8966499887502561815
  %294 = getelementptr inbounds i8, ptr %290, i64 -8
  %295 = load i64, ptr %294, align 1
  %296 = xor i64 %295, -5209706959179045724
  %297 = lshr i64 %293, 32
  %298 = lshr i64 %296, 32
  %299 = and i64 %293, 4294967295
  %300 = and i64 %296, 4294967295
  %301 = mul nuw i64 %300, %299
  %302 = lshr i64 %301, 32
  %303 = mul nuw i64 %300, %297
  %304 = add nuw i64 %302, %303
  %305 = lshr i64 %304, 32
  %306 = mul nuw i64 %298, %299
  %307 = and i64 %304, 4294967295
  %308 = add nuw i64 %307, %306
  %309 = lshr i64 %308, 32
  %310 = mul nuw i64 %298, %297
  %311 = and i64 %301, 4294967295
  %312 = add i64 %308, %286
  %313 = shl i64 %312, 32
  %314 = add i64 %288, %269
  %315 = add i64 %314, %289
  %316 = add i64 %315, %310
  %317 = add i64 %316, %283
  %318 = add i64 %317, %311
  %319 = add i64 %318, %287
  %320 = add i64 %319, %305
  %321 = add i64 %320, %309
  %322 = add i64 %321, %313
  %323 = lshr i64 %322, 29
  %324 = xor i64 %323, %322
  %325 = mul i64 %324, 1609587929392839161
  %326 = lshr i64 %325, 32
  %327 = xor i64 %326, %325
  br label %328

328:                                              ; preds = %64, %62, %44, %7, %99, %268
  %329 = phi i64 [ %100, %99 ], [ %327, %268 ], [ %41, %7 ], [ %61, %44 ], [ %88, %64 ], [ %2, %62 ]
  ret i64 %329
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong(ptr noundef readonly %0, i64 noundef range(i64 129, 0) %1, i64 noundef %2) unnamed_addr #11 {
  %4 = insertelement <4 x i64> <i64 poison, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, i64 %2, i64 0
  %5 = sub i64 0, %2
  %6 = insertelement <4 x i64> <i64 -8796714831421723037, i64 2870177450012600261, i64 poison, i64 0>, i64 %5, i64 2
  %7 = lshr i64 %1, 10
  %8 = icmp ult i64 %1, 1024
  br i1 %8, label %72, label %9

9:                                                ; preds = %3, %47
  %10 = phi i64 [ %70, %47 ], [ 0, %3 ]
  %11 = phi <4 x i64> [ %58, %47 ], [ %4, %3 ]
  %12 = phi <4 x i64> [ %69, %47 ], [ %6, %3 ]
  %13 = shl nuw i64 %10, 10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi <4 x i64> [ %43, %15 ], [ %12, %9 ]
  %17 = phi <4 x i64> [ %31, %15 ], [ %11, %9 ]
  %18 = phi i64 [ %45, %15 ], [ 0, %9 ]
  %19 = phi ptr [ %44, %15 ], [ @kKey, %9 ]
  %20 = shl nuw nsw i64 %18, 6
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 %20
  %22 = load <8 x i32>, ptr %21, align 1
  %23 = load <8 x i32>, ptr %19, align 1
  %24 = add <8 x i32> %23, %22
  %25 = bitcast <8 x i32> %24 to <4 x i64>
  %26 = shufflevector <8 x i32> %24, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = and <4 x i64> %25, splat (i64 4294967295)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = add <4 x i64> %30, %17
  %32 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %33 = load <8 x i32>, ptr %32, align 1
  %34 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %35 = load <8 x i32>, ptr %34, align 1
  %36 = add <8 x i32> %35, %33
  %37 = bitcast <8 x i32> %36 to <4 x i64>
  %38 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %37, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = add <4 x i64> %42, %16
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %45 = add nuw nsw i64 %18, 1
  %46 = icmp eq i64 %45, 16
  br i1 %46, label %47, label %15

47:                                               ; preds = %15
  %48 = lshr <4 x i64> %31, splat (i64 47)
  %49 = xor <4 x i64> %31, %48
  %50 = xor <4 x i64> %49, splat (i64 2870177450012600261)
  %51 = and <4 x i64> %50, splat (i64 4294967295)
  %52 = mul nuw <4 x i64> %51, <i64 3938823299, i64 3313606911, i64 386784593, i64 3541456166>
  %53 = bitcast <4 x i64> %50 to <8 x i32>
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %55 = bitcast <8 x i32> %54 to <4 x i64>
  %56 = and <4 x i64> %55, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, <i64 886303683, i64 4195574763, i64 3086015049, i64 701786270>
  %58 = xor <4 x i64> %57, %52
  %59 = lshr <4 x i64> %43, splat (i64 47)
  %60 = xor <4 x i64> %43, %59
  %61 = xor <4 x i64> %60, splat (i64 2870177450012600261)
  %62 = and <4 x i64> %61, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, <i64 722910808, i64 2415442129, i64 1170946703, i64 2950167498>
  %64 = bitcast <4 x i64> %61 to <8 x i32>
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %66 = bitcast <8 x i32> %65 to <4 x i64>
  %67 = and <4 x i64> %66, splat (i64 4294967295)
  %68 = mul nuw <4 x i64> %67, <i64 2101846524, i64 2060464590, i64 2501248040, i64 3142271102>
  %69 = xor <4 x i64> %68, %63
  %70 = add nuw nsw i64 %10, 1
  %71 = icmp eq i64 %70, %7
  br i1 %71, label %72, label %9

72:                                               ; preds = %47, %3
  %73 = phi <4 x i64> [ %6, %3 ], [ %69, %47 ]
  %74 = phi <4 x i64> [ %4, %3 ], [ %58, %47 ]
  %75 = lshr i64 %1, 6
  %76 = and i64 %75, 15
  %77 = and i64 %1, -1024
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  %79 = icmp eq i64 %76, 0
  br i1 %79, label %112, label %80

80:                                               ; preds = %72, %80
  %81 = phi <4 x i64> [ %108, %80 ], [ %73, %72 ]
  %82 = phi <4 x i64> [ %96, %80 ], [ %74, %72 ]
  %83 = phi i64 [ %110, %80 ], [ 0, %72 ]
  %84 = phi ptr [ %109, %80 ], [ @kKey, %72 ]
  %85 = shl nuw nsw i64 %83, 6
  %86 = getelementptr inbounds nuw i8, ptr %78, i64 %85
  %87 = load <8 x i32>, ptr %86, align 1
  %88 = load <8 x i32>, ptr %84, align 1
  %89 = add <8 x i32> %88, %87
  %90 = bitcast <8 x i32> %89 to <4 x i64>
  %91 = shufflevector <8 x i32> %89, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %92 = bitcast <8 x i32> %91 to <4 x i64>
  %93 = and <4 x i64> %90, splat (i64 4294967295)
  %94 = and <4 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, %93
  %96 = add <4 x i64> %95, %82
  %97 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %98 = load <8 x i32>, ptr %97, align 1
  %99 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %100 = load <8 x i32>, ptr %99, align 1
  %101 = add <8 x i32> %100, %98
  %102 = bitcast <8 x i32> %101 to <4 x i64>
  %103 = shufflevector <8 x i32> %101, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %104 = bitcast <8 x i32> %103 to <4 x i64>
  %105 = and <4 x i64> %102, splat (i64 4294967295)
  %106 = and <4 x i64> %104, splat (i64 4294967295)
  %107 = mul nuw <4 x i64> %106, %105
  %108 = add <4 x i64> %107, %81
  %109 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %110 = add nuw nsw i64 %83, 1
  %111 = icmp eq i64 %110, %76
  br i1 %111, label %112, label %80

112:                                              ; preds = %80, %72
  %113 = phi <4 x i64> [ %73, %72 ], [ %108, %80 ]
  %114 = phi <4 x i64> [ %74, %72 ], [ %96, %80 ]
  %115 = and i64 %1, 63
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %144, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %119 = getelementptr inbounds i8, ptr %118, i64 -64
  %120 = shl nuw nsw i64 %76, 3
  %121 = getelementptr inbounds nuw i8, ptr @kKey, i64 %120
  %122 = load <8 x i32>, ptr %119, align 1
  %123 = load <8 x i32>, ptr %121, align 8
  %124 = add <8 x i32> %123, %122
  %125 = bitcast <8 x i32> %124 to <4 x i64>
  %126 = shufflevector <8 x i32> %124, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %127 = bitcast <8 x i32> %126 to <4 x i64>
  %128 = and <4 x i64> %125, splat (i64 4294967295)
  %129 = and <4 x i64> %127, splat (i64 4294967295)
  %130 = mul nuw <4 x i64> %129, %128
  %131 = add <4 x i64> %130, %114
  %132 = getelementptr inbounds i8, ptr %118, i64 -32
  %133 = load <8 x i32>, ptr %132, align 1
  %134 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %135 = load <8 x i32>, ptr %134, align 8
  %136 = add <8 x i32> %135, %133
  %137 = bitcast <8 x i32> %136 to <4 x i64>
  %138 = shufflevector <8 x i32> %136, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %139 = bitcast <8 x i32> %138 to <4 x i64>
  %140 = and <4 x i64> %137, splat (i64 4294967295)
  %141 = and <4 x i64> %139, splat (i64 4294967295)
  %142 = mul nuw <4 x i64> %141, %140
  %143 = add <4 x i64> %142, %113
  br label %144

144:                                              ; preds = %117, %112
  %145 = phi <4 x i64> [ %113, %112 ], [ %143, %117 ]
  %146 = phi <4 x i64> [ %114, %112 ], [ %131, %117 ]
  %147 = mul i64 %1, -7046029288634856825
  %148 = extractelement <4 x i64> %146, i64 0
  %149 = xor i64 %148, 2568260970027576377
  %150 = extractelement <4 x i64> %146, i64 1
  %151 = xor i64 %150, -639039334258736852
  %152 = lshr i64 %149, 32
  %153 = lshr i64 %151, 32
  %154 = and i64 %149, 4294967295
  %155 = and i64 %151, 4294967295
  %156 = mul nuw i64 %155, %154
  %157 = lshr i64 %156, 32
  %158 = mul nuw i64 %155, %152
  %159 = add nuw i64 %157, %158
  %160 = lshr i64 %159, 32
  %161 = mul nuw i64 %153, %154
  %162 = and i64 %159, 4294967295
  %163 = add nuw i64 %162, %161
  %164 = lshr i64 %163, 32
  %165 = mul nuw i64 %153, %152
  %166 = and i64 %156, 4294967295
  %167 = extractelement <4 x i64> %146, i64 2
  %168 = xor i64 %167, -8966499887502561815
  %169 = extractelement <4 x i64> %146, i64 3
  %170 = xor i64 %169, -5209706959179045724
  %171 = lshr i64 %168, 32
  %172 = lshr i64 %170, 32
  %173 = and i64 %168, 4294967295
  %174 = and i64 %170, 4294967295
  %175 = mul nuw i64 %174, %173
  %176 = lshr i64 %175, 32
  %177 = mul nuw i64 %174, %171
  %178 = add nuw i64 %176, %177
  %179 = lshr i64 %178, 32
  %180 = mul nuw i64 %172, %173
  %181 = and i64 %178, 4294967295
  %182 = add nuw i64 %181, %180
  %183 = lshr i64 %182, 32
  %184 = mul nuw i64 %172, %171
  %185 = and i64 %175, 4294967295
  %186 = extractelement <4 x i64> %145, i64 0
  %187 = xor i64 %186, -3692699387471206834
  %188 = extractelement <4 x i64> %145, i64 1
  %189 = xor i64 %188, -3675093282664558467
  %190 = lshr i64 %187, 32
  %191 = lshr i64 %189, 32
  %192 = and i64 %187, 4294967295
  %193 = and i64 %189, 4294967295
  %194 = mul nuw i64 %193, %192
  %195 = lshr i64 %194, 32
  %196 = mul nuw i64 %193, %190
  %197 = add nuw i64 %195, %196
  %198 = lshr i64 %197, 32
  %199 = mul nuw i64 %191, %192
  %200 = and i64 %197, 4294967295
  %201 = add nuw i64 %200, %199
  %202 = lshr i64 %201, 32
  %203 = mul nuw i64 %191, %190
  %204 = and i64 %194, 4294967295
  %205 = extractelement <4 x i64> %145, i64 2
  %206 = xor i64 %205, -629619327510231436
  %207 = extractelement <4 x i64> %145, i64 3
  %208 = xor i64 %207, -9134946782546652954
  %209 = lshr i64 %206, 32
  %210 = lshr i64 %208, 32
  %211 = and i64 %206, 4294967295
  %212 = and i64 %208, 4294967295
  %213 = mul nuw i64 %212, %211
  %214 = lshr i64 %213, 32
  %215 = mul nuw i64 %212, %209
  %216 = add nuw i64 %214, %215
  %217 = lshr i64 %216, 32
  %218 = mul nuw i64 %210, %211
  %219 = and i64 %216, 4294967295
  %220 = add nuw i64 %219, %218
  %221 = lshr i64 %220, 32
  %222 = mul nuw i64 %210, %209
  %223 = and i64 %213, 4294967295
  %224 = add i64 %182, %163
  %225 = add i64 %224, %201
  %226 = add i64 %225, %220
  %227 = shl i64 %226, 32
  %228 = add i64 %165, %147
  %229 = add i64 %228, %166
  %230 = add i64 %229, %184
  %231 = add i64 %230, %160
  %232 = add i64 %231, %185
  %233 = add i64 %232, %203
  %234 = add i64 %233, %164
  %235 = add i64 %234, %179
  %236 = add i64 %235, %204
  %237 = add i64 %236, %222
  %238 = add i64 %237, %183
  %239 = add i64 %238, %198
  %240 = add i64 %239, %223
  %241 = add i64 %240, %202
  %242 = add i64 %241, %217
  %243 = add i64 %242, %221
  %244 = add i64 %243, %227
  %245 = lshr i64 %244, 29
  %246 = xor i64 %245, %244
  %247 = mul i64 %246, 1609587929392839161
  %248 = lshr i64 %247, 32
  %249 = xor i64 %248, %247
  ret i64 %249
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64b(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %84

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %40

6:                                                ; preds = %4
  %7 = mul i64 %1, -7046029288634856825
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %8, 2568260970027576377
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = load i64, ptr %11, align 1
  %13 = add i64 %12, -639039334258736852
  %14 = lshr i64 %9, 32
  %15 = lshr i64 %13, 32
  %16 = and i64 %9, 4294967295
  %17 = and i64 %13, 4294967295
  %18 = mul nuw i64 %17, %16
  %19 = lshr i64 %18, 32
  %20 = mul nuw i64 %17, %14
  %21 = add nuw i64 %19, %20
  %22 = lshr i64 %21, 32
  %23 = mul nuw i64 %15, %16
  %24 = and i64 %21, 4294967295
  %25 = add nuw i64 %24, %23
  %26 = lshr i64 %25, 32
  %27 = mul nuw i64 %15, %14
  %28 = and i64 %18, 4294967295
  %29 = shl i64 %25, 32
  %30 = add i64 %27, %7
  %31 = add i64 %30, %28
  %32 = add i64 %31, %22
  %33 = add i64 %32, %26
  %34 = add i64 %33, %29
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %322

40:                                               ; preds = %4
  %41 = icmp samesign ugt i64 %1, 3
  br i1 %41, label %42, label %59

42:                                               ; preds = %40
  %43 = mul i64 %1, -7046029288634856825
  %44 = load i32, ptr %0, align 1
  %45 = add i32 %44, -1191285703
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %48 = getelementptr inbounds i8, ptr %47, i64 -4
  %49 = load i32, ptr %48, align 1
  %50 = add i32 %49, 597969854
  %51 = zext i32 %50 to i64
  %52 = mul nuw i64 %51, %46
  %53 = add i64 %52, %43
  %54 = lshr i64 %53, 29
  %55 = xor i64 %54, %53
  %56 = mul i64 %55, 1609587929392839161
  %57 = lshr i64 %56, 32
  %58 = xor i64 %57, %56
  br label %322

59:                                               ; preds = %40
  %60 = icmp eq i64 %1, 0
  br i1 %60, label %322, label %61

61:                                               ; preds = %59
  %62 = load i8, ptr %0, align 1
  %63 = lshr i64 %1, 1
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 %63
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr i8, ptr %0, i64 %1
  %67 = getelementptr i8, ptr %66, i64 -1
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %62 to i64
  %70 = zext i8 %65 to i64
  %71 = shl nuw nsw i64 %70, 8
  %72 = or disjoint i64 %71, %69
  %73 = zext i8 %68 to i64
  %74 = shl nuw nsw i64 %73, 2
  %75 = add nuw nsw i64 %72, 3103681593
  %76 = add nuw nsw i64 %1, 597969854
  %77 = add nuw nsw i64 %76, %74
  %78 = mul nuw nsw i64 %75, %77
  %79 = lshr i64 %78, 29
  %80 = xor i64 %79, %78
  %81 = mul i64 %80, 1609587929392839161
  %82 = lshr i64 %81, 32
  %83 = xor i64 %82, %81
  br label %322

84:                                               ; preds = %2
  %85 = mul i64 %1, -7046029288634856825
  %86 = icmp ugt i64 %1, 32
  br i1 %86, label %87, label %262

87:                                               ; preds = %84
  %88 = icmp ugt i64 %1, 64
  br i1 %88, label %89, label %206

89:                                               ; preds = %87
  %90 = icmp ugt i64 %1, 96
  br i1 %90, label %91, label %150

91:                                               ; preds = %89
  %92 = icmp ugt i64 %1, 128
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = tail call fastcc i64 @XXH3_hashLong(ptr noundef readonly %0, i64 noundef %1, i64 noundef 0)
  br label %322

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %97 = load i64, ptr %96, align 1
  %98 = xor i64 %97, -2045702682710477249
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %100 = load i64, ptr %99, align 1
  %101 = xor i64 %100, -4104099645253436473
  %102 = lshr i64 %98, 32
  %103 = lshr i64 %101, 32
  %104 = and i64 %98, 4294967295
  %105 = and i64 %101, 4294967295
  %106 = mul nuw i64 %105, %104
  %107 = lshr i64 %106, 32
  %108 = mul nuw i64 %105, %102
  %109 = add nuw i64 %107, %108
  %110 = lshr i64 %109, 32
  %111 = mul nuw i64 %103, %104
  %112 = and i64 %109, 4294967295
  %113 = add nuw i64 %112, %111
  %114 = lshr i64 %113, 32
  %115 = mul nuw i64 %103, %102
  %116 = and i64 %106, 4294967295
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %118 = getelementptr inbounds i8, ptr %117, i64 -64
  %119 = load i64, ptr %118, align 1
  %120 = xor i64 %119, -3624173730817515445
  %121 = getelementptr inbounds i8, ptr %117, i64 -56
  %122 = load i64, ptr %121, align 1
  %123 = xor i64 %122, -2776342293574091063
  %124 = lshr i64 %120, 32
  %125 = lshr i64 %123, 32
  %126 = and i64 %120, 4294967295
  %127 = and i64 %123, 4294967295
  %128 = mul nuw i64 %127, %126
  %129 = lshr i64 %128, 32
  %130 = mul nuw i64 %127, %124
  %131 = add nuw i64 %129, %130
  %132 = lshr i64 %131, 32
  %133 = mul nuw i64 %125, %126
  %134 = and i64 %131, 4294967295
  %135 = add nuw i64 %134, %133
  %136 = lshr i64 %135, 32
  %137 = mul nuw i64 %125, %124
  %138 = and i64 %128, 4294967295
  %139 = add i64 %135, %113
  %140 = shl i64 %139, 32
  %141 = add i64 %115, %85
  %142 = add i64 %141, %116
  %143 = add i64 %142, %137
  %144 = add i64 %143, %110
  %145 = add i64 %144, %138
  %146 = add i64 %145, %114
  %147 = add i64 %146, %132
  %148 = add i64 %147, %136
  %149 = add i64 %148, %140
  br label %150

150:                                              ; preds = %95, %89
  %151 = phi i64 [ %149, %95 ], [ %85, %89 ]
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %153 = load i64, ptr %152, align 1
  %154 = xor i64 %153, -7943504444863786309
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %156 = load i64, ptr %155, align 1
  %157 = xor i64 %156, 1968968742000944523
  %158 = lshr i64 %154, 32
  %159 = lshr i64 %157, 32
  %160 = and i64 %154, 4294967295
  %161 = and i64 %157, 4294967295
  %162 = mul nuw i64 %161, %160
  %163 = lshr i64 %162, 32
  %164 = mul nuw i64 %161, %158
  %165 = add nuw i64 %163, %164
  %166 = lshr i64 %165, 32
  %167 = mul nuw i64 %159, %160
  %168 = and i64 %165, 4294967295
  %169 = add nuw i64 %168, %167
  %170 = lshr i64 %169, 32
  %171 = mul nuw i64 %159, %158
  %172 = and i64 %162, 4294967295
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %174 = getelementptr inbounds i8, ptr %173, i64 -48
  %175 = load i64, ptr %174, align 1
  %176 = xor i64 %175, -6769480549562824553
  %177 = getelementptr inbounds i8, ptr %173, i64 -40
  %178 = load i64, ptr %177, align 1
  %179 = xor i64 %178, -6206333191815827642
  %180 = lshr i64 %176, 32
  %181 = lshr i64 %179, 32
  %182 = and i64 %176, 4294967295
  %183 = and i64 %179, 4294967295
  %184 = mul nuw i64 %183, %182
  %185 = lshr i64 %184, 32
  %186 = mul nuw i64 %183, %180
  %187 = add nuw i64 %185, %186
  %188 = lshr i64 %187, 32
  %189 = mul nuw i64 %181, %182
  %190 = and i64 %187, 4294967295
  %191 = add nuw i64 %190, %189
  %192 = lshr i64 %191, 32
  %193 = mul nuw i64 %181, %180
  %194 = and i64 %184, 4294967295
  %195 = add i64 %191, %169
  %196 = shl i64 %195, 32
  %197 = add i64 %171, %151
  %198 = add i64 %197, %172
  %199 = add i64 %198, %193
  %200 = add i64 %199, %166
  %201 = add i64 %200, %194
  %202 = add i64 %201, %170
  %203 = add i64 %202, %188
  %204 = add i64 %203, %192
  %205 = add i64 %204, %196
  br label %206

206:                                              ; preds = %150, %87
  %207 = phi i64 [ %205, %150 ], [ %85, %87 ]
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %209 = load i64, ptr %208, align 1
  %210 = xor i64 %209, -3692699387471206834
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %212 = load i64, ptr %211, align 1
  %213 = xor i64 %212, -3675093282664558467
  %214 = lshr i64 %210, 32
  %215 = lshr i64 %213, 32
  %216 = and i64 %210, 4294967295
  %217 = and i64 %213, 4294967295
  %218 = mul nuw i64 %217, %216
  %219 = lshr i64 %218, 32
  %220 = mul nuw i64 %217, %214
  %221 = add nuw i64 %219, %220
  %222 = lshr i64 %221, 32
  %223 = mul nuw i64 %215, %216
  %224 = and i64 %221, 4294967295
  %225 = add nuw i64 %224, %223
  %226 = lshr i64 %225, 32
  %227 = mul nuw i64 %215, %214
  %228 = and i64 %218, 4294967295
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %230 = getelementptr inbounds i8, ptr %229, i64 -32
  %231 = load i64, ptr %230, align 1
  %232 = xor i64 %231, -629619327510231436
  %233 = getelementptr inbounds i8, ptr %229, i64 -24
  %234 = load i64, ptr %233, align 1
  %235 = xor i64 %234, -9134946782546652954
  %236 = lshr i64 %232, 32
  %237 = lshr i64 %235, 32
  %238 = and i64 %232, 4294967295
  %239 = and i64 %235, 4294967295
  %240 = mul nuw i64 %239, %238
  %241 = lshr i64 %240, 32
  %242 = mul nuw i64 %239, %236
  %243 = add nuw i64 %241, %242
  %244 = lshr i64 %243, 32
  %245 = mul nuw i64 %237, %238
  %246 = and i64 %243, 4294967295
  %247 = add nuw i64 %246, %245
  %248 = lshr i64 %247, 32
  %249 = mul nuw i64 %237, %236
  %250 = and i64 %240, 4294967295
  %251 = add i64 %247, %225
  %252 = shl i64 %251, 32
  %253 = add i64 %227, %207
  %254 = add i64 %253, %228
  %255 = add i64 %254, %249
  %256 = add i64 %255, %222
  %257 = add i64 %256, %250
  %258 = add i64 %257, %226
  %259 = add i64 %258, %244
  %260 = add i64 %259, %248
  %261 = add i64 %260, %252
  br label %262

262:                                              ; preds = %206, %84
  %263 = phi i64 [ %261, %206 ], [ %85, %84 ]
  %264 = load i64, ptr %0, align 1
  %265 = xor i64 %264, 2568260970027576377
  %266 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %267 = load i64, ptr %266, align 1
  %268 = xor i64 %267, -639039334258736852
  %269 = lshr i64 %265, 32
  %270 = lshr i64 %268, 32
  %271 = and i64 %265, 4294967295
  %272 = and i64 %268, 4294967295
  %273 = mul nuw i64 %272, %271
  %274 = lshr i64 %273, 32
  %275 = mul nuw i64 %272, %269
  %276 = add nuw i64 %274, %275
  %277 = lshr i64 %276, 32
  %278 = mul nuw i64 %270, %271
  %279 = and i64 %276, 4294967295
  %280 = add nuw i64 %279, %278
  %281 = lshr i64 %280, 32
  %282 = mul nuw i64 %270, %269
  %283 = and i64 %273, 4294967295
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %285 = getelementptr inbounds i8, ptr %284, i64 -16
  %286 = load i64, ptr %285, align 1
  %287 = xor i64 %286, -8966499887502561815
  %288 = getelementptr inbounds i8, ptr %284, i64 -8
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %289, -5209706959179045724
  %291 = lshr i64 %287, 32
  %292 = lshr i64 %290, 32
  %293 = and i64 %287, 4294967295
  %294 = and i64 %290, 4294967295
  %295 = mul nuw i64 %294, %293
  %296 = lshr i64 %295, 32
  %297 = mul nuw i64 %294, %291
  %298 = add nuw i64 %296, %297
  %299 = lshr i64 %298, 32
  %300 = mul nuw i64 %292, %293
  %301 = and i64 %298, 4294967295
  %302 = add nuw i64 %301, %300
  %303 = lshr i64 %302, 32
  %304 = mul nuw i64 %292, %291
  %305 = and i64 %295, 4294967295
  %306 = add i64 %302, %280
  %307 = shl i64 %306, 32
  %308 = add i64 %282, %263
  %309 = add i64 %308, %283
  %310 = add i64 %309, %304
  %311 = add i64 %310, %277
  %312 = add i64 %311, %305
  %313 = add i64 %312, %281
  %314 = add i64 %313, %299
  %315 = add i64 %314, %303
  %316 = add i64 %315, %307
  %317 = lshr i64 %316, 29
  %318 = xor i64 %317, %316
  %319 = mul i64 %318, 1609587929392839161
  %320 = lshr i64 %319, 32
  %321 = xor i64 %320, %319
  br label %322

322:                                              ; preds = %6, %42, %59, %61, %93, %262
  %323 = phi i64 [ %94, %93 ], [ %321, %262 ], [ %39, %6 ], [ %58, %42 ], [ %83, %61 ], [ 0, %59 ]
  ret i64 %323
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH3_128b_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = sub i64 0, %2
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %150

6:                                                ; preds = %3
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %73

8:                                                ; preds = %6
  %9 = add i64 %2, %1
  %10 = mul i64 %9, -7046029288634856825
  %11 = sub i64 %1, %2
  %12 = mul i64 %11, -4417276706812531889
  %13 = load i64, ptr %0, align 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %14, i64 -8
  %16 = load i64, ptr %15, align 1
  %17 = add i64 %13, 2568260970027576377
  %18 = add i64 %16, -639039334258736852
  %19 = lshr i64 %17, 32
  %20 = lshr i64 %18, 32
  %21 = and i64 %17, 4294967295
  %22 = and i64 %18, 4294967295
  %23 = mul nuw i64 %22, %21
  %24 = lshr i64 %23, 32
  %25 = mul nuw i64 %22, %19
  %26 = add nuw i64 %24, %25
  %27 = lshr i64 %26, 32
  %28 = mul nuw i64 %20, %21
  %29 = and i64 %26, 4294967295
  %30 = add nuw i64 %29, %28
  %31 = lshr i64 %30, 32
  %32 = mul nuw i64 %20, %19
  %33 = and i64 %23, 4294967295
  %34 = shl i64 %30, 32
  %35 = add i64 %32, %10
  %36 = add i64 %35, %33
  %37 = add i64 %36, %27
  %38 = add i64 %37, %31
  %39 = add i64 %38, %34
  %40 = add i64 %13, -8966499887502561815
  %41 = add i64 %16, -5209706959179045724
  %42 = lshr i64 %40, 32
  %43 = lshr i64 %41, 32
  %44 = and i64 %40, 4294967295
  %45 = and i64 %41, 4294967295
  %46 = mul nuw i64 %45, %44
  %47 = lshr i64 %46, 32
  %48 = mul nuw i64 %45, %42
  %49 = add nuw i64 %47, %48
  %50 = lshr i64 %49, 32
  %51 = mul nuw i64 %43, %44
  %52 = and i64 %49, 4294967295
  %53 = add nuw i64 %52, %51
  %54 = lshr i64 %53, 32
  %55 = mul nuw i64 %43, %42
  %56 = and i64 %46, 4294967295
  %57 = shl i64 %53, 32
  %58 = add i64 %55, %12
  %59 = add i64 %58, %56
  %60 = add i64 %59, %50
  %61 = add i64 %60, %54
  %62 = add i64 %61, %57
  %63 = lshr i64 %39, 29
  %64 = xor i64 %63, %39
  %65 = mul i64 %64, 1609587929392839161
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  %68 = lshr i64 %62, 29
  %69 = xor i64 %68, %62
  %70 = mul i64 %69, 1609587929392839161
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  br label %150

73:                                               ; preds = %6
  %74 = icmp samesign ugt i64 %1, 3
  br i1 %74, label %75, label %110

75:                                               ; preds = %73
  %76 = add i64 %2, %1
  %77 = mul i64 %76, -7046029288634856825
  %78 = sub i64 %1, %2
  %79 = mul i64 %78, -4417276706812531889
  %80 = load i32, ptr %0, align 1
  %81 = add i32 %80, -1191285703
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %84 = getelementptr inbounds i8, ptr %83, i64 -4
  %85 = load i32, ptr %84, align 1
  %86 = add i32 %85, 597969854
  %87 = zext i32 %86 to i64
  %88 = add nuw nsw i64 %82, 3103681593
  %89 = and i64 %88, 4294967295
  %90 = add nuw nsw i64 %87, 597969854
  %91 = and i64 %90, 4294967295
  %92 = mul nuw i64 %91, %89
  %93 = add i64 %92, %77
  %94 = add nuw nsw i64 %82, 2080473388
  %95 = and i64 %94, 4294967295
  %96 = add nuw nsw i64 %87, 4146179356
  %97 = and i64 %96, 4294967295
  %98 = mul nuw i64 %97, %95
  %99 = add i64 %98, %79
  %100 = lshr i64 %93, 29
  %101 = xor i64 %100, %93
  %102 = mul i64 %101, 1609587929392839161
  %103 = lshr i64 %102, 32
  %104 = xor i64 %103, %102
  %105 = lshr i64 %99, 29
  %106 = xor i64 %105, %99
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %150

110:                                              ; preds = %73
  %111 = icmp eq i64 %1, 0
  br i1 %111, label %150, label %112

112:                                              ; preds = %110
  %113 = load i8, ptr %0, align 1
  %114 = lshr i64 %1, 1
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 %114
  %116 = load i8, ptr %115, align 1
  %117 = getelementptr i8, ptr %0, i64 %1
  %118 = getelementptr i8, ptr %117, i64 -1
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %113 to i64
  %121 = zext i8 %116 to i64
  %122 = shl nuw nsw i64 %121, 8
  %123 = or disjoint i64 %122, %120
  %124 = trunc nuw nsw i64 %1 to i32
  %125 = zext i8 %119 to i32
  %126 = shl nuw nsw i32 %125, 2
  %127 = or disjoint i32 %126, %124
  %128 = add i64 %2, 3103681593
  %129 = add i64 %128, %123
  %130 = and i64 %129, 4294967295
  %131 = add nuw nsw i32 %127, 597969854
  %132 = zext nneg i32 %131 to i64
  %133 = mul nuw nsw i64 %130, %132
  %134 = sub i64 %123, %2
  %135 = add i64 %134, 2080473388
  %136 = and i64 %135, 4294967295
  %137 = add nuw nsw i32 %127, -148787940
  %138 = zext i32 %137 to i64
  %139 = mul nuw i64 %136, %138
  %140 = lshr i64 %133, 29
  %141 = xor i64 %140, %133
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  %145 = lshr i64 %139, 29
  %146 = xor i64 %145, %139
  %147 = mul i64 %146, 1609587929392839161
  %148 = lshr i64 %147, 32
  %149 = xor i64 %148, %147
  br label %150

150:                                              ; preds = %110, %112, %75, %8, %3
  %151 = phi i64 [ 0, %3 ], [ %67, %8 ], [ %104, %75 ], [ %144, %112 ], [ %2, %110 ]
  %152 = phi i64 [ 0, %3 ], [ %72, %8 ], [ %109, %75 ], [ %149, %112 ], [ %4, %110 ]
  %153 = insertvalue { i64, i64 } poison, i64 %151, 0
  %154 = insertvalue { i64, i64 } %153, i64 %152, 1
  ret { i64, i64 } %154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH3_128b(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %140

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %69

6:                                                ; preds = %4
  %7 = mul i64 %1, -7046029288634856825
  %8 = mul i64 %1, -4417276706812531889
  %9 = load i64, ptr %0, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = load i64, ptr %11, align 1
  %13 = add i64 %9, 2568260970027576377
  %14 = add i64 %12, -639039334258736852
  %15 = lshr i64 %13, 32
  %16 = lshr i64 %14, 32
  %17 = and i64 %13, 4294967295
  %18 = and i64 %14, 4294967295
  %19 = mul nuw i64 %18, %17
  %20 = lshr i64 %19, 32
  %21 = mul nuw i64 %18, %15
  %22 = add nuw i64 %20, %21
  %23 = lshr i64 %22, 32
  %24 = mul nuw i64 %16, %17
  %25 = and i64 %22, 4294967295
  %26 = add nuw i64 %25, %24
  %27 = lshr i64 %26, 32
  %28 = mul nuw i64 %16, %15
  %29 = and i64 %19, 4294967295
  %30 = shl i64 %26, 32
  %31 = add i64 %28, %7
  %32 = add i64 %31, %29
  %33 = add i64 %32, %23
  %34 = add i64 %33, %27
  %35 = add i64 %34, %30
  %36 = add i64 %9, -8966499887502561815
  %37 = add i64 %12, -5209706959179045724
  %38 = lshr i64 %36, 32
  %39 = lshr i64 %37, 32
  %40 = and i64 %36, 4294967295
  %41 = and i64 %37, 4294967295
  %42 = mul nuw i64 %41, %40
  %43 = lshr i64 %42, 32
  %44 = mul nuw i64 %41, %38
  %45 = add nuw i64 %43, %44
  %46 = lshr i64 %45, 32
  %47 = mul nuw i64 %39, %40
  %48 = and i64 %45, 4294967295
  %49 = add nuw i64 %48, %47
  %50 = lshr i64 %49, 32
  %51 = mul nuw i64 %39, %38
  %52 = and i64 %42, 4294967295
  %53 = shl i64 %49, 32
  %54 = add i64 %51, %8
  %55 = add i64 %54, %52
  %56 = add i64 %55, %46
  %57 = add i64 %56, %50
  %58 = add i64 %57, %53
  %59 = lshr i64 %35, 29
  %60 = xor i64 %59, %35
  %61 = mul i64 %60, 1609587929392839161
  %62 = lshr i64 %61, 32
  %63 = xor i64 %62, %61
  %64 = lshr i64 %58, 29
  %65 = xor i64 %64, %58
  %66 = mul i64 %65, 1609587929392839161
  %67 = lshr i64 %66, 32
  %68 = xor i64 %67, %66
  br label %140

69:                                               ; preds = %4
  %70 = icmp samesign ugt i64 %1, 3
  br i1 %70, label %71, label %104

71:                                               ; preds = %69
  %72 = mul i64 %1, -7046029288634856825
  %73 = mul i64 %1, -4417276706812531889
  %74 = load i32, ptr %0, align 1
  %75 = add i32 %74, -1191285703
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %78 = getelementptr inbounds i8, ptr %77, i64 -4
  %79 = load i32, ptr %78, align 1
  %80 = add i32 %79, 597969854
  %81 = zext i32 %80 to i64
  %82 = add nuw nsw i64 %76, 3103681593
  %83 = and i64 %82, 4294967295
  %84 = add nuw nsw i64 %81, 597969854
  %85 = and i64 %84, 4294967295
  %86 = mul nuw i64 %85, %83
  %87 = add i64 %86, %72
  %88 = add nuw nsw i64 %76, 2080473388
  %89 = and i64 %88, 4294967295
  %90 = add nuw nsw i64 %81, 4146179356
  %91 = and i64 %90, 4294967295
  %92 = mul nuw i64 %91, %89
  %93 = add i64 %92, %73
  %94 = lshr i64 %87, 29
  %95 = xor i64 %94, %87
  %96 = mul i64 %95, 1609587929392839161
  %97 = lshr i64 %96, 32
  %98 = xor i64 %97, %96
  %99 = lshr i64 %93, 29
  %100 = xor i64 %99, %93
  %101 = mul i64 %100, 1609587929392839161
  %102 = lshr i64 %101, 32
  %103 = xor i64 %102, %101
  br label %140

104:                                              ; preds = %69
  %105 = icmp eq i64 %1, 0
  br i1 %105, label %140, label %106

106:                                              ; preds = %104
  %107 = load i8, ptr %0, align 1
  %108 = lshr i64 %1, 1
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 %108
  %110 = load i8, ptr %109, align 1
  %111 = getelementptr i8, ptr %0, i64 %1
  %112 = getelementptr i8, ptr %111, i64 -1
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %107 to i64
  %115 = zext i8 %110 to i64
  %116 = shl nuw nsw i64 %115, 8
  %117 = or disjoint i64 %116, %114
  %118 = trunc nuw nsw i64 %1 to i32
  %119 = zext i8 %113 to i32
  %120 = shl nuw nsw i32 %119, 2
  %121 = or disjoint i32 %120, %118
  %122 = add nuw nsw i64 %117, 3103681593
  %123 = add nuw nsw i32 %121, 597969854
  %124 = zext nneg i32 %123 to i64
  %125 = mul nuw nsw i64 %122, %124
  %126 = add nuw nsw i64 %117, 2080473388
  %127 = add nuw nsw i32 %121, -148787940
  %128 = zext i32 %127 to i64
  %129 = mul nuw nsw i64 %126, %128
  %130 = lshr i64 %125, 29
  %131 = xor i64 %130, %125
  %132 = mul i64 %131, 1609587929392839161
  %133 = lshr i64 %132, 32
  %134 = xor i64 %133, %132
  %135 = lshr i64 %129, 29
  %136 = xor i64 %135, %129
  %137 = mul i64 %136, 1609587929392839161
  %138 = lshr i64 %137, 32
  %139 = xor i64 %138, %137
  br label %140

140:                                              ; preds = %2, %6, %71, %104, %106
  %141 = phi i64 [ 0, %2 ], [ %63, %6 ], [ %98, %71 ], [ %134, %106 ], [ 0, %104 ]
  %142 = phi i64 [ 0, %2 ], [ %68, %6 ], [ %103, %71 ], [ %139, %106 ], [ 0, %104 ]
  %143 = insertvalue { i64, i64 } poison, i64 %141, 0
  %144 = insertvalue { i64, i64 } %143, i64 %142, 1
  ret { i64, i64 } %144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
  %4 = sub i64 0, %2
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %150

6:                                                ; preds = %3
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %73

8:                                                ; preds = %6
  %9 = add i64 %2, %1
  %10 = mul i64 %9, -7046029288634856825
  %11 = sub i64 %1, %2
  %12 = mul i64 %11, -4417276706812531889
  %13 = load i64, ptr %0, align 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %14, i64 -8
  %16 = load i64, ptr %15, align 1
  %17 = add i64 %13, 2568260970027576377
  %18 = add i64 %16, -639039334258736852
  %19 = lshr i64 %17, 32
  %20 = lshr i64 %18, 32
  %21 = and i64 %17, 4294967295
  %22 = and i64 %18, 4294967295
  %23 = mul nuw i64 %22, %21
  %24 = lshr i64 %23, 32
  %25 = mul nuw i64 %22, %19
  %26 = add nuw i64 %24, %25
  %27 = lshr i64 %26, 32
  %28 = mul nuw i64 %20, %21
  %29 = and i64 %26, 4294967295
  %30 = add nuw i64 %29, %28
  %31 = lshr i64 %30, 32
  %32 = mul nuw i64 %20, %19
  %33 = and i64 %23, 4294967295
  %34 = shl i64 %30, 32
  %35 = add i64 %32, %10
  %36 = add i64 %35, %33
  %37 = add i64 %36, %27
  %38 = add i64 %37, %31
  %39 = add i64 %38, %34
  %40 = add i64 %13, -8966499887502561815
  %41 = add i64 %16, -5209706959179045724
  %42 = lshr i64 %40, 32
  %43 = lshr i64 %41, 32
  %44 = and i64 %40, 4294967295
  %45 = and i64 %41, 4294967295
  %46 = mul nuw i64 %45, %44
  %47 = lshr i64 %46, 32
  %48 = mul nuw i64 %45, %42
  %49 = add nuw i64 %47, %48
  %50 = lshr i64 %49, 32
  %51 = mul nuw i64 %43, %44
  %52 = and i64 %49, 4294967295
  %53 = add nuw i64 %52, %51
  %54 = lshr i64 %53, 32
  %55 = mul nuw i64 %43, %42
  %56 = and i64 %46, 4294967295
  %57 = shl i64 %53, 32
  %58 = add i64 %55, %12
  %59 = add i64 %58, %56
  %60 = add i64 %59, %50
  %61 = add i64 %60, %54
  %62 = add i64 %61, %57
  %63 = lshr i64 %39, 29
  %64 = xor i64 %63, %39
  %65 = mul i64 %64, 1609587929392839161
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  %68 = lshr i64 %62, 29
  %69 = xor i64 %68, %62
  %70 = mul i64 %69, 1609587929392839161
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  br label %150

73:                                               ; preds = %6
  %74 = icmp samesign ugt i64 %1, 3
  br i1 %74, label %75, label %110

75:                                               ; preds = %73
  %76 = add i64 %2, %1
  %77 = mul i64 %76, -7046029288634856825
  %78 = sub i64 %1, %2
  %79 = mul i64 %78, -4417276706812531889
  %80 = load i32, ptr %0, align 1
  %81 = add i32 %80, -1191285703
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %84 = getelementptr inbounds i8, ptr %83, i64 -4
  %85 = load i32, ptr %84, align 1
  %86 = add i32 %85, 597969854
  %87 = zext i32 %86 to i64
  %88 = add nuw nsw i64 %82, 3103681593
  %89 = and i64 %88, 4294967295
  %90 = add nuw nsw i64 %87, 597969854
  %91 = and i64 %90, 4294967295
  %92 = mul nuw i64 %91, %89
  %93 = add i64 %92, %77
  %94 = add nuw nsw i64 %82, 2080473388
  %95 = and i64 %94, 4294967295
  %96 = add nuw nsw i64 %87, 4146179356
  %97 = and i64 %96, 4294967295
  %98 = mul nuw i64 %97, %95
  %99 = add i64 %98, %79
  %100 = lshr i64 %93, 29
  %101 = xor i64 %100, %93
  %102 = mul i64 %101, 1609587929392839161
  %103 = lshr i64 %102, 32
  %104 = xor i64 %103, %102
  %105 = lshr i64 %99, 29
  %106 = xor i64 %105, %99
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %150

110:                                              ; preds = %73
  %111 = icmp eq i64 %1, 0
  br i1 %111, label %150, label %112

112:                                              ; preds = %110
  %113 = load i8, ptr %0, align 1
  %114 = lshr i64 %1, 1
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 %114
  %116 = load i8, ptr %115, align 1
  %117 = getelementptr i8, ptr %0, i64 %1
  %118 = getelementptr i8, ptr %117, i64 -1
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %113 to i64
  %121 = zext i8 %116 to i64
  %122 = shl nuw nsw i64 %121, 8
  %123 = or disjoint i64 %122, %120
  %124 = trunc nuw nsw i64 %1 to i32
  %125 = zext i8 %119 to i32
  %126 = shl nuw nsw i32 %125, 2
  %127 = or disjoint i32 %126, %124
  %128 = add i64 %2, 3103681593
  %129 = add i64 %128, %123
  %130 = and i64 %129, 4294967295
  %131 = add nuw nsw i32 %127, 597969854
  %132 = zext nneg i32 %131 to i64
  %133 = mul nuw nsw i64 %130, %132
  %134 = sub i64 %123, %2
  %135 = add i64 %134, 2080473388
  %136 = and i64 %135, 4294967295
  %137 = add nuw nsw i32 %127, -148787940
  %138 = zext i32 %137 to i64
  %139 = mul nuw i64 %136, %138
  %140 = lshr i64 %133, 29
  %141 = xor i64 %140, %133
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  %145 = lshr i64 %139, 29
  %146 = xor i64 %145, %139
  %147 = mul i64 %146, 1609587929392839161
  %148 = lshr i64 %147, 32
  %149 = xor i64 %148, %147
  br label %150

150:                                              ; preds = %3, %8, %75, %110, %112
  %151 = phi i64 [ 0, %3 ], [ %67, %8 ], [ %104, %75 ], [ %144, %112 ], [ %2, %110 ]
  %152 = phi i64 [ 0, %3 ], [ %72, %8 ], [ %109, %75 ], [ %149, %112 ], [ %4, %110 ]
  %153 = insertvalue { i64, i64 } poison, i64 %151, 0
  %154 = insertvalue { i64, i64 } %153, i64 %152, 1
  ret { i64, i64 } %154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_oneshot(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 1
  %13 = mul i32 %12, -2048144777
  %14 = add i32 %13, %4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 13)
  %16 = mul i32 %15, -1640531535
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load i32, ptr %17, align 1
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %1
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %5
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %10
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %16
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = load i32, ptr %41, align 1
  %43 = mul i32 %42, -2048144777
  %44 = add i32 %43, %22
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %28
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 1)
  %54 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 7)
  %55 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 12)
  %56 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 18)
  %57 = add i32 %53, 32
  %58 = add i32 %57, %54
  %59 = add i32 %58, %55
  %60 = add i32 %59, %56
  %61 = lshr i32 %60, 15
  %62 = xor i32 %61, %60
  %63 = mul i32 %62, -2048144777
  %64 = lshr i32 %63, 13
  %65 = xor i32 %64, %63
  %66 = mul i32 %65, -1028477379
  %67 = lshr i32 %66, 16
  %68 = xor i32 %67, %66
  ret i32 %68
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
