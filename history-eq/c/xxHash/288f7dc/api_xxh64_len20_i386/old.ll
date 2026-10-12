; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api_xxh64_len20_i386/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api_xxh64_len20_i386/wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct.XXH128_hash_t = type { i64, i64 }

@kKey = internal unnamed_addr constant [48 x i32] [i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514, i32 941223750, i32 -1445024552, i32 -1459980737, i32 -476302273, i32 -102974521, i32 -955560163, i32 -1974345653, i32 -843818703, i32 -929071415, i32 -646417564, i32 -356143997, i32 886303683, i32 -981360385, i32 -99392533, i32 386784593, i32 -1208952247, i32 -753511130, i32 701786270, i32 722910808, i32 2101846524, i32 -1879525167, i32 2060464590, i32 1170946703, i32 -1793719256, i32 -1344799798, i32 -1152696194], align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 700
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ugt i32 %1, 15
  br i1 %4, label %5, label %50

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %7 = getelementptr inbounds i8, ptr %6, i32 -15
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
  %22 = getelementptr inbounds nuw i8, ptr %12, i32 4
  %23 = load i32, ptr %22, align 1
  %24 = mul i32 %23, -2048144777
  %25 = add i32 %24, %14
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = getelementptr inbounds nuw i8, ptr %12, i32 8
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %15
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = getelementptr inbounds nuw i8, ptr %12, i32 12
  %35 = load i32, ptr %34, align 1
  %36 = mul i32 %35, -2048144777
  %37 = add i32 %36, %16
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 13)
  %39 = mul i32 %38, -1640531535
  %40 = getelementptr inbounds nuw i8, ptr %12, i32 16
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
  %55 = add i32 %53, %1
  %56 = and i32 %1, 15
  switch i32 %56, label %204 [
    i32 12, label %57
    i32 8, label %64
    i32 4, label %73
    i32 13, label %81
    i32 9, label %88
    i32 5, label %97
    i32 14, label %112
    i32 10, label %119
    i32 6, label %128
    i32 15, label %150
    i32 11, label %157
    i32 7, label %166
    i32 3, label %175
    i32 2, label %185
    i32 1, label %195
    i32 0, label %205
  ]

57:                                               ; preds = %52
  %58 = load i32, ptr %54, align 1
  %59 = mul i32 %58, -1028477379
  %60 = add i32 %59, %55
  %61 = getelementptr inbounds nuw i8, ptr %54, i32 4
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %63 = mul i32 %62, 668265263
  br label %64

64:                                               ; preds = %57, %52
  %65 = phi i32 [ %55, %52 ], [ %63, %57 ]
  %66 = phi ptr [ %54, %52 ], [ %61, %57 ]
  %67 = load i32, ptr %66, align 1
  %68 = mul i32 %67, -1028477379
  %69 = add i32 %68, %65
  %70 = getelementptr inbounds nuw i8, ptr %66, i32 4
  %71 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 17)
  %72 = mul i32 %71, 668265263
  br label %73

73:                                               ; preds = %64, %52
  %74 = phi i32 [ %55, %52 ], [ %72, %64 ]
  %75 = phi ptr [ %54, %52 ], [ %70, %64 ]
  %76 = load i32, ptr %75, align 1
  %77 = mul i32 %76, -1028477379
  %78 = add i32 %77, %74
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 17)
  %80 = mul i32 %79, 668265263
  br label %205

81:                                               ; preds = %52
  %82 = load i32, ptr %54, align 1
  %83 = mul i32 %82, -1028477379
  %84 = add i32 %83, %55
  %85 = getelementptr inbounds nuw i8, ptr %54, i32 4
  %86 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 17)
  %87 = mul i32 %86, 668265263
  br label %88

88:                                               ; preds = %81, %52
  %89 = phi i32 [ %55, %52 ], [ %87, %81 ]
  %90 = phi ptr [ %54, %52 ], [ %85, %81 ]
  %91 = load i32, ptr %90, align 1
  %92 = mul i32 %91, -1028477379
  %93 = add i32 %92, %89
  %94 = getelementptr inbounds nuw i8, ptr %90, i32 4
  %95 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 17)
  %96 = mul i32 %95, 668265263
  br label %97

97:                                               ; preds = %88, %52
  %98 = phi i32 [ %55, %52 ], [ %96, %88 ]
  %99 = phi ptr [ %54, %52 ], [ %94, %88 ]
  %100 = load i32, ptr %99, align 1
  %101 = mul i32 %100, -1028477379
  %102 = add i32 %101, %98
  %103 = getelementptr inbounds nuw i8, ptr %99, i32 4
  %104 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 17)
  %105 = mul i32 %104, 668265263
  %106 = load i8, ptr %103, align 1
  %107 = zext i8 %106 to i32
  %108 = mul i32 %107, 374761393
  %109 = add i32 %105, %108
  %110 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 11)
  %111 = mul i32 %110, -1640531535
  br label %205

112:                                              ; preds = %52
  %113 = load i32, ptr %54, align 1
  %114 = mul i32 %113, -1028477379
  %115 = add i32 %114, %55
  %116 = getelementptr inbounds nuw i8, ptr %54, i32 4
  %117 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 17)
  %118 = mul i32 %117, 668265263
  br label %119

119:                                              ; preds = %112, %52
  %120 = phi i32 [ %55, %52 ], [ %118, %112 ]
  %121 = phi ptr [ %54, %52 ], [ %116, %112 ]
  %122 = load i32, ptr %121, align 1
  %123 = mul i32 %122, -1028477379
  %124 = add i32 %123, %120
  %125 = getelementptr inbounds nuw i8, ptr %121, i32 4
  %126 = tail call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 17)
  %127 = mul i32 %126, 668265263
  br label %128

128:                                              ; preds = %119, %52
  %129 = phi i32 [ %55, %52 ], [ %127, %119 ]
  %130 = phi ptr [ %54, %52 ], [ %125, %119 ]
  %131 = load i32, ptr %130, align 1
  %132 = mul i32 %131, -1028477379
  %133 = add i32 %132, %129
  %134 = getelementptr inbounds nuw i8, ptr %130, i32 4
  %135 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 17)
  %136 = mul i32 %135, 668265263
  %137 = getelementptr inbounds nuw i8, ptr %130, i32 5
  %138 = load i8, ptr %134, align 1
  %139 = zext i8 %138 to i32
  %140 = mul i32 %139, 374761393
  %141 = add i32 %136, %140
  %142 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 11)
  %143 = mul i32 %142, -1640531535
  %144 = load i8, ptr %137, align 1
  %145 = zext i8 %144 to i32
  %146 = mul i32 %145, 374761393
  %147 = add i32 %143, %146
  %148 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 11)
  %149 = mul i32 %148, -1640531535
  br label %205

150:                                              ; preds = %52
  %151 = load i32, ptr %54, align 1
  %152 = mul i32 %151, -1028477379
  %153 = add i32 %152, %55
  %154 = getelementptr inbounds nuw i8, ptr %54, i32 4
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 17)
  %156 = mul i32 %155, 668265263
  br label %157

157:                                              ; preds = %150, %52
  %158 = phi i32 [ %55, %52 ], [ %156, %150 ]
  %159 = phi ptr [ %54, %52 ], [ %154, %150 ]
  %160 = load i32, ptr %159, align 1
  %161 = mul i32 %160, -1028477379
  %162 = add i32 %161, %158
  %163 = getelementptr inbounds nuw i8, ptr %159, i32 4
  %164 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 17)
  %165 = mul i32 %164, 668265263
  br label %166

166:                                              ; preds = %157, %52
  %167 = phi i32 [ %55, %52 ], [ %165, %157 ]
  %168 = phi ptr [ %54, %52 ], [ %163, %157 ]
  %169 = load i32, ptr %168, align 1
  %170 = mul i32 %169, -1028477379
  %171 = add i32 %170, %167
  %172 = getelementptr inbounds nuw i8, ptr %168, i32 4
  %173 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 17)
  %174 = mul i32 %173, 668265263
  br label %175

175:                                              ; preds = %166, %52
  %176 = phi i32 [ %55, %52 ], [ %174, %166 ]
  %177 = phi ptr [ %54, %52 ], [ %172, %166 ]
  %178 = getelementptr inbounds nuw i8, ptr %177, i32 1
  %179 = load i8, ptr %177, align 1
  %180 = zext i8 %179 to i32
  %181 = mul i32 %180, 374761393
  %182 = add i32 %181, %176
  %183 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 11)
  %184 = mul i32 %183, -1640531535
  br label %185

185:                                              ; preds = %175, %52
  %186 = phi i32 [ %55, %52 ], [ %184, %175 ]
  %187 = phi ptr [ %54, %52 ], [ %178, %175 ]
  %188 = getelementptr inbounds nuw i8, ptr %187, i32 1
  %189 = load i8, ptr %187, align 1
  %190 = zext i8 %189 to i32
  %191 = mul i32 %190, 374761393
  %192 = add i32 %191, %186
  %193 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 11)
  %194 = mul i32 %193, -1640531535
  br label %195

195:                                              ; preds = %185, %52
  %196 = phi i32 [ %55, %52 ], [ %194, %185 ]
  %197 = phi ptr [ %54, %52 ], [ %188, %185 ]
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = mul i32 %199, 374761393
  %201 = add i32 %200, %196
  %202 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 11)
  %203 = mul i32 %202, -1640531535
  br label %205

204:                                              ; preds = %52
  unreachable

205:                                              ; preds = %52, %73, %97, %128, %195
  %206 = phi i32 [ %149, %128 ], [ %111, %97 ], [ %80, %73 ], [ %55, %52 ], [ %203, %195 ]
  %207 = lshr i32 %206, 15
  %208 = xor i32 %207, %206
  %209 = mul i32 %208, -2048144777
  %210 = lshr i32 %209, 13
  %211 = xor i32 %210, %209
  %212 = mul i32 %211, -1028477379
  %213 = lshr i32 %212, 16
  %214 = xor i32 %213, %212
  ret i32 %214
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i32 noundef 48) #19
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH32_copyState(ptr noundef writeonly initializes((0, 48)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly, ptr noalias readonly, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr noundef writeonly initializes((0, 44)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  store i64 0, ptr %0, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i32 %3, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 12
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 20
  store i32 %5, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 24
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %119, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %7 = load i32, ptr %0, align 4
  %8 = add i32 %7, %2
  store i32 %8, ptr %0, align 4
  %9 = or i32 %8, %2
  %10 = icmp ugt i32 %9, 15
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %11
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %2
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %21 = getelementptr inbounds nuw i8, ptr %20, i32 %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %21, ptr nonnull readonly align 1 %1, i32 %2, i1 false)
  %22 = load i32, ptr %15, align 4
  %23 = add i32 %22, %2
  br label %117

24:                                               ; preds = %5
  %25 = icmp eq i32 %16, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %28 = getelementptr inbounds nuw i8, ptr %27, i32 %16
  %29 = sub i32 16, %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %28, ptr nonnull readonly align 1 %1, i32 %29, i1 false)
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %27, align 1
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %31
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  store i32 %36, ptr %30, align 4
  %37 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %38 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %37, align 1
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %39
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  store i32 %44, ptr %38, align 4
  %45 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %45, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %47
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  store i32 %52, ptr %46, align 4
  %53 = getelementptr inbounds nuw i8, ptr %0, i32 36
  %54 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %53, align 1
  %57 = mul i32 %56, -2048144777
  %58 = add i32 %57, %55
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = mul i32 %59, -1640531535
  store i32 %60, ptr %54, align 4
  %61 = load i32, ptr %15, align 4
  %62 = sub i32 16, %61
  %63 = getelementptr inbounds nuw i8, ptr %1, i32 %62
  store i32 0, ptr %15, align 4
  br label %64

64:                                               ; preds = %26, %24
  %65 = phi ptr [ %63, %26 ], [ %1, %24 ]
  %66 = getelementptr inbounds i8, ptr %6, i32 -16
  %67 = icmp ugt ptr %65, %66
  br i1 %67, label %109, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %77, %68
  %78 = phi ptr [ %65, %68 ], [ %106, %77 ]
  %79 = phi i32 [ %70, %68 ], [ %87, %77 ]
  %80 = phi i32 [ %72, %68 ], [ %93, %77 ]
  %81 = phi i32 [ %74, %68 ], [ %99, %77 ]
  %82 = phi i32 [ %76, %68 ], [ %105, %77 ]
  %83 = load i32, ptr %78, align 1
  %84 = mul i32 %83, -2048144777
  %85 = add i32 %84, %79
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 13)
  %87 = mul i32 %86, -1640531535
  %88 = getelementptr inbounds nuw i8, ptr %78, i32 4
  %89 = load i32, ptr %88, align 1
  %90 = mul i32 %89, -2048144777
  %91 = add i32 %90, %80
  %92 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 13)
  %93 = mul i32 %92, -1640531535
  %94 = getelementptr inbounds nuw i8, ptr %78, i32 8
  %95 = load i32, ptr %94, align 1
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %81
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -1640531535
  %100 = getelementptr inbounds nuw i8, ptr %78, i32 12
  %101 = load i32, ptr %100, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %82
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = getelementptr inbounds nuw i8, ptr %78, i32 16
  %107 = icmp ugt ptr %106, %66
  br i1 %107, label %108, label %77

108:                                              ; preds = %77
  store i32 %87, ptr %69, align 4
  store i32 %93, ptr %71, align 4
  store i32 %99, ptr %73, align 4
  store i32 %105, ptr %75, align 4
  br label %109

109:                                              ; preds = %108, %64
  %110 = phi ptr [ %106, %108 ], [ %65, %64 ]
  %111 = icmp ult ptr %110, %6
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %114 = ptrtoint ptr %6 to i32
  %115 = ptrtoint ptr %110 to i32
  %116 = sub i32 %114, %115
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %113, ptr nonnull readonly align 1 %110, i32 %116, i1 false)
  br label %117

117:                                              ; preds = %112, %19
  %118 = phi i32 [ %23, %19 ], [ %116, %112 ]
  store i32 %118, ptr %15, align 4
  br label %119

119:                                              ; preds = %117, %109, %3
  %120 = phi i32 [ 1, %3 ], [ 0, %109 ], [ 0, %117 ]
  ret i32 %120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 1)
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 7)
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 12)
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 18)
  %20 = add i32 %16, %19
  br label %25

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 374761393
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ %20, %5 ], [ %24, %21 ]
  %27 = load i32, ptr %0, align 4
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 40
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
  %37 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  br label %40

40:                                               ; preds = %33, %25
  %41 = phi i32 [ %28, %25 ], [ %39, %33 ]
  %42 = phi ptr [ %29, %25 ], [ %37, %33 ]
  %43 = load i32, ptr %42, align 1
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %41
  %46 = getelementptr inbounds nuw i8, ptr %42, i32 4
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
  %61 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %63 = mul i32 %62, 668265263
  br label %64

64:                                               ; preds = %57, %25
  %65 = phi i32 [ %28, %25 ], [ %63, %57 ]
  %66 = phi ptr [ %29, %25 ], [ %61, %57 ]
  %67 = load i32, ptr %66, align 1
  %68 = mul i32 %67, -1028477379
  %69 = add i32 %68, %65
  %70 = getelementptr inbounds nuw i8, ptr %66, i32 4
  %71 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 17)
  %72 = mul i32 %71, 668265263
  br label %73

73:                                               ; preds = %64, %25
  %74 = phi i32 [ %28, %25 ], [ %72, %64 ]
  %75 = phi ptr [ %29, %25 ], [ %70, %64 ]
  %76 = load i32, ptr %75, align 1
  %77 = mul i32 %76, -1028477379
  %78 = add i32 %77, %74
  %79 = getelementptr inbounds nuw i8, ptr %75, i32 4
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
  %92 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %93 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 17)
  %94 = mul i32 %93, 668265263
  br label %95

95:                                               ; preds = %88, %25
  %96 = phi i32 [ %28, %25 ], [ %94, %88 ]
  %97 = phi ptr [ %29, %25 ], [ %92, %88 ]
  %98 = load i32, ptr %97, align 1
  %99 = mul i32 %98, -1028477379
  %100 = add i32 %99, %96
  %101 = getelementptr inbounds nuw i8, ptr %97, i32 4
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 17)
  %103 = mul i32 %102, 668265263
  br label %104

104:                                              ; preds = %95, %25
  %105 = phi i32 [ %28, %25 ], [ %103, %95 ]
  %106 = phi ptr [ %29, %25 ], [ %101, %95 ]
  %107 = load i32, ptr %106, align 1
  %108 = mul i32 %107, -1028477379
  %109 = add i32 %108, %105
  %110 = getelementptr inbounds nuw i8, ptr %106, i32 4
  %111 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 17)
  %112 = mul i32 %111, 668265263
  %113 = getelementptr inbounds nuw i8, ptr %106, i32 5
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
  %130 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 17)
  %132 = mul i32 %131, 668265263
  br label %133

133:                                              ; preds = %126, %25
  %134 = phi i32 [ %28, %25 ], [ %132, %126 ]
  %135 = phi ptr [ %29, %25 ], [ %130, %126 ]
  %136 = load i32, ptr %135, align 1
  %137 = mul i32 %136, -1028477379
  %138 = add i32 %137, %134
  %139 = getelementptr inbounds nuw i8, ptr %135, i32 4
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17)
  %141 = mul i32 %140, 668265263
  br label %142

142:                                              ; preds = %133, %25
  %143 = phi i32 [ %28, %25 ], [ %141, %133 ]
  %144 = phi ptr [ %29, %25 ], [ %139, %133 ]
  %145 = load i32, ptr %144, align 1
  %146 = mul i32 %145, -1028477379
  %147 = add i32 %146, %143
  %148 = getelementptr inbounds nuw i8, ptr %144, i32 4
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 17)
  %150 = mul i32 %149, 668265263
  br label %151

151:                                              ; preds = %142, %25
  %152 = phi i32 [ %28, %25 ], [ %150, %142 ]
  %153 = phi ptr [ %29, %25 ], [ %148, %142 ]
  %154 = getelementptr inbounds nuw i8, ptr %153, i32 1
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
  %164 = getelementptr inbounds nuw i8, ptr %163, i32 1
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
define dso_local i64 @XXH64(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ugt i32 %1, 31
  br i1 %4, label %5, label %74

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %7 = getelementptr inbounds i8, ptr %6, i32 -32
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
  %22 = getelementptr inbounds nuw i8, ptr %12, i32 8
  %23 = load i64, ptr %22, align 1
  %24 = mul i64 %23, -4417276706812531889
  %25 = add i64 %24, %14
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %12, i32 16
  %29 = load i64, ptr %28, align 1
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %15
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = getelementptr inbounds nuw i8, ptr %12, i32 24
  %35 = load i64, ptr %34, align 1
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, %16
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = getelementptr inbounds nuw i8, ptr %12, i32 32
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
  %79 = zext i32 %1 to i64
  %80 = add i64 %77, %79
  %81 = and i32 %1, 31
  switch i32 %81, label %483 [
    i32 24, label %82
    i32 16, label %92
    i32 8, label %104
    i32 28, label %115
    i32 20, label %125
    i32 12, label %137
    i32 4, label %149
    i32 25, label %159
    i32 17, label %169
    i32 9, label %181
    i32 29, label %199
    i32 21, label %209
    i32 13, label %221
    i32 5, label %233
    i32 26, label %250
    i32 18, label %260
    i32 10, label %272
    i32 30, label %297
    i32 22, label %307
    i32 14, label %319
    i32 6, label %331
    i32 27, label %355
    i32 19, label %365
    i32 11, label %377
    i32 31, label %409
    i32 23, label %419
    i32 15, label %431
    i32 7, label %443
    i32 3, label %454
    i32 2, label %464
    i32 1, label %474
    i32 0, label %484
  ]

82:                                               ; preds = %76
  %83 = load i64, ptr %78, align 1
  %84 = mul i64 %83, -4417276706812531889
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 31)
  %86 = mul i64 %85, -7046029288634856825
  %87 = getelementptr inbounds nuw i8, ptr %78, i32 8
  %88 = xor i64 %86, %80
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 27)
  %90 = mul i64 %89, -7046029288634856825
  %91 = add i64 %90, -8796714831421723037
  br label %92

92:                                               ; preds = %82, %76
  %93 = phi ptr [ %78, %76 ], [ %87, %82 ]
  %94 = phi i64 [ %80, %76 ], [ %91, %82 ]
  %95 = load i64, ptr %93, align 1
  %96 = mul i64 %95, -4417276706812531889
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 31)
  %98 = mul i64 %97, -7046029288634856825
  %99 = getelementptr inbounds nuw i8, ptr %93, i32 8
  %100 = xor i64 %98, %94
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 27)
  %102 = mul i64 %101, -7046029288634856825
  %103 = add i64 %102, -8796714831421723037
  br label %104

104:                                              ; preds = %92, %76
  %105 = phi ptr [ %78, %76 ], [ %99, %92 ]
  %106 = phi i64 [ %80, %76 ], [ %103, %92 ]
  %107 = load i64, ptr %105, align 1
  %108 = mul i64 %107, -4417276706812531889
  %109 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 31)
  %110 = mul i64 %109, -7046029288634856825
  %111 = xor i64 %110, %106
  %112 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 27)
  %113 = mul i64 %112, -7046029288634856825
  %114 = add i64 %113, -8796714831421723037
  br label %484

115:                                              ; preds = %76
  %116 = load i64, ptr %78, align 1
  %117 = mul i64 %116, -4417276706812531889
  %118 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 31)
  %119 = mul i64 %118, -7046029288634856825
  %120 = getelementptr inbounds nuw i8, ptr %78, i32 8
  %121 = xor i64 %119, %80
  %122 = tail call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 27)
  %123 = mul i64 %122, -7046029288634856825
  %124 = add i64 %123, -8796714831421723037
  br label %125

125:                                              ; preds = %115, %76
  %126 = phi ptr [ %78, %76 ], [ %120, %115 ]
  %127 = phi i64 [ %80, %76 ], [ %124, %115 ]
  %128 = load i64, ptr %126, align 1
  %129 = mul i64 %128, -4417276706812531889
  %130 = tail call i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 31)
  %131 = mul i64 %130, -7046029288634856825
  %132 = getelementptr inbounds nuw i8, ptr %126, i32 8
  %133 = xor i64 %131, %127
  %134 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 27)
  %135 = mul i64 %134, -7046029288634856825
  %136 = add i64 %135, -8796714831421723037
  br label %137

137:                                              ; preds = %125, %76
  %138 = phi ptr [ %78, %76 ], [ %132, %125 ]
  %139 = phi i64 [ %80, %76 ], [ %136, %125 ]
  %140 = load i64, ptr %138, align 1
  %141 = mul i64 %140, -4417276706812531889
  %142 = tail call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 31)
  %143 = mul i64 %142, -7046029288634856825
  %144 = getelementptr inbounds nuw i8, ptr %138, i32 8
  %145 = xor i64 %143, %139
  %146 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 27)
  %147 = mul i64 %146, -7046029288634856825
  %148 = add i64 %147, -8796714831421723037
  br label %149

149:                                              ; preds = %137, %76
  %150 = phi ptr [ %78, %76 ], [ %144, %137 ]
  %151 = phi i64 [ %80, %76 ], [ %148, %137 ]
  %152 = load i32, ptr %150, align 1
  %153 = zext i32 %152 to i64
  %154 = mul i64 %153, -7046029288634856825
  %155 = xor i64 %154, %151
  %156 = tail call i64 @llvm.fshl.i64(i64 %155, i64 %155, i64 23)
  %157 = mul i64 %156, -4417276706812531889
  %158 = add i64 %157, 1609587929392839161
  br label %484

159:                                              ; preds = %76
  %160 = load i64, ptr %78, align 1
  %161 = mul i64 %160, -4417276706812531889
  %162 = tail call i64 @llvm.fshl.i64(i64 %161, i64 %161, i64 31)
  %163 = mul i64 %162, -7046029288634856825
  %164 = getelementptr inbounds nuw i8, ptr %78, i32 8
  %165 = xor i64 %163, %80
  %166 = tail call i64 @llvm.fshl.i64(i64 %165, i64 %165, i64 27)
  %167 = mul i64 %166, -7046029288634856825
  %168 = add i64 %167, -8796714831421723037
  br label %169

169:                                              ; preds = %159, %76
  %170 = phi ptr [ %78, %76 ], [ %164, %159 ]
  %171 = phi i64 [ %80, %76 ], [ %168, %159 ]
  %172 = load i64, ptr %170, align 1
  %173 = mul i64 %172, -4417276706812531889
  %174 = tail call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 31)
  %175 = mul i64 %174, -7046029288634856825
  %176 = getelementptr inbounds nuw i8, ptr %170, i32 8
  %177 = xor i64 %175, %171
  %178 = tail call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 27)
  %179 = mul i64 %178, -7046029288634856825
  %180 = add i64 %179, -8796714831421723037
  br label %181

181:                                              ; preds = %169, %76
  %182 = phi ptr [ %78, %76 ], [ %176, %169 ]
  %183 = phi i64 [ %80, %76 ], [ %180, %169 ]
  %184 = load i64, ptr %182, align 1
  %185 = mul i64 %184, -4417276706812531889
  %186 = tail call i64 @llvm.fshl.i64(i64 %185, i64 %185, i64 31)
  %187 = mul i64 %186, -7046029288634856825
  %188 = getelementptr inbounds nuw i8, ptr %182, i32 8
  %189 = xor i64 %187, %183
  %190 = tail call i64 @llvm.fshl.i64(i64 %189, i64 %189, i64 27)
  %191 = mul i64 %190, -7046029288634856825
  %192 = add i64 %191, -8796714831421723037
  %193 = load i8, ptr %188, align 1
  %194 = zext i8 %193 to i64
  %195 = mul i64 %194, 2870177450012600261
  %196 = xor i64 %192, %195
  %197 = tail call i64 @llvm.fshl.i64(i64 %196, i64 %196, i64 11)
  %198 = mul i64 %197, -7046029288634856825
  br label %484

199:                                              ; preds = %76
  %200 = load i64, ptr %78, align 1
  %201 = mul i64 %200, -4417276706812531889
  %202 = tail call i64 @llvm.fshl.i64(i64 %201, i64 %201, i64 31)
  %203 = mul i64 %202, -7046029288634856825
  %204 = getelementptr inbounds nuw i8, ptr %78, i32 8
  %205 = xor i64 %203, %80
  %206 = tail call i64 @llvm.fshl.i64(i64 %205, i64 %205, i64 27)
  %207 = mul i64 %206, -7046029288634856825
  %208 = add i64 %207, -8796714831421723037
  br label %209

209:                                              ; preds = %199, %76
  %210 = phi ptr [ %78, %76 ], [ %204, %199 ]
  %211 = phi i64 [ %80, %76 ], [ %208, %199 ]
  %212 = load i64, ptr %210, align 1
  %213 = mul i64 %212, -4417276706812531889
  %214 = tail call i64 @llvm.fshl.i64(i64 %213, i64 %213, i64 31)
  %215 = mul i64 %214, -7046029288634856825
  %216 = getelementptr inbounds nuw i8, ptr %210, i32 8
  %217 = xor i64 %215, %211
  %218 = tail call i64 @llvm.fshl.i64(i64 %217, i64 %217, i64 27)
  %219 = mul i64 %218, -7046029288634856825
  %220 = add i64 %219, -8796714831421723037
  br label %221

221:                                              ; preds = %209, %76
  %222 = phi ptr [ %78, %76 ], [ %216, %209 ]
  %223 = phi i64 [ %80, %76 ], [ %220, %209 ]
  %224 = load i64, ptr %222, align 1
  %225 = mul i64 %224, -4417276706812531889
  %226 = tail call i64 @llvm.fshl.i64(i64 %225, i64 %225, i64 31)
  %227 = mul i64 %226, -7046029288634856825
  %228 = getelementptr inbounds nuw i8, ptr %222, i32 8
  %229 = xor i64 %227, %223
  %230 = tail call i64 @llvm.fshl.i64(i64 %229, i64 %229, i64 27)
  %231 = mul i64 %230, -7046029288634856825
  %232 = add i64 %231, -8796714831421723037
  br label %233

233:                                              ; preds = %221, %76
  %234 = phi ptr [ %78, %76 ], [ %228, %221 ]
  %235 = phi i64 [ %80, %76 ], [ %232, %221 ]
  %236 = load i32, ptr %234, align 1
  %237 = zext i32 %236 to i64
  %238 = mul i64 %237, -7046029288634856825
  %239 = xor i64 %238, %235
  %240 = getelementptr inbounds nuw i8, ptr %234, i32 4
  %241 = tail call i64 @llvm.fshl.i64(i64 %239, i64 %239, i64 23)
  %242 = mul i64 %241, -4417276706812531889
  %243 = add i64 %242, 1609587929392839161
  %244 = load i8, ptr %240, align 1
  %245 = zext i8 %244 to i64
  %246 = mul i64 %245, 2870177450012600261
  %247 = xor i64 %243, %246
  %248 = tail call i64 @llvm.fshl.i64(i64 %247, i64 %247, i64 11)
  %249 = mul i64 %248, -7046029288634856825
  br label %484

250:                                              ; preds = %76
  %251 = load i64, ptr %78, align 1
  %252 = mul i64 %251, -4417276706812531889
  %253 = tail call i64 @llvm.fshl.i64(i64 %252, i64 %252, i64 31)
  %254 = mul i64 %253, -7046029288634856825
  %255 = getelementptr inbounds nuw i8, ptr %78, i32 8
  %256 = xor i64 %254, %80
  %257 = tail call i64 @llvm.fshl.i64(i64 %256, i64 %256, i64 27)
  %258 = mul i64 %257, -7046029288634856825
  %259 = add i64 %258, -8796714831421723037
  br label %260

260:                                              ; preds = %250, %76
  %261 = phi ptr [ %78, %76 ], [ %255, %250 ]
  %262 = phi i64 [ %80, %76 ], [ %259, %250 ]
  %263 = load i64, ptr %261, align 1
  %264 = mul i64 %263, -4417276706812531889
  %265 = tail call i64 @llvm.fshl.i64(i64 %264, i64 %264, i64 31)
  %266 = mul i64 %265, -7046029288634856825
  %267 = getelementptr inbounds nuw i8, ptr %261, i32 8
  %268 = xor i64 %266, %262
  %269 = tail call i64 @llvm.fshl.i64(i64 %268, i64 %268, i64 27)
  %270 = mul i64 %269, -7046029288634856825
  %271 = add i64 %270, -8796714831421723037
  br label %272

272:                                              ; preds = %260, %76
  %273 = phi ptr [ %78, %76 ], [ %267, %260 ]
  %274 = phi i64 [ %80, %76 ], [ %271, %260 ]
  %275 = load i64, ptr %273, align 1
  %276 = mul i64 %275, -4417276706812531889
  %277 = tail call i64 @llvm.fshl.i64(i64 %276, i64 %276, i64 31)
  %278 = mul i64 %277, -7046029288634856825
  %279 = getelementptr inbounds nuw i8, ptr %273, i32 8
  %280 = xor i64 %278, %274
  %281 = tail call i64 @llvm.fshl.i64(i64 %280, i64 %280, i64 27)
  %282 = mul i64 %281, -7046029288634856825
  %283 = add i64 %282, -8796714831421723037
  %284 = getelementptr inbounds nuw i8, ptr %273, i32 9
  %285 = load i8, ptr %279, align 1
  %286 = zext i8 %285 to i64
  %287 = mul i64 %286, 2870177450012600261
  %288 = xor i64 %283, %287
  %289 = tail call i64 @llvm.fshl.i64(i64 %288, i64 %288, i64 11)
  %290 = mul i64 %289, -7046029288634856825
  %291 = load i8, ptr %284, align 1
  %292 = zext i8 %291 to i64
  %293 = mul i64 %292, 2870177450012600261
  %294 = xor i64 %290, %293
  %295 = tail call i64 @llvm.fshl.i64(i64 %294, i64 %294, i64 11)
  %296 = mul i64 %295, -7046029288634856825
  br label %484

297:                                              ; preds = %76
  %298 = load i64, ptr %78, align 1
  %299 = mul i64 %298, -4417276706812531889
  %300 = tail call i64 @llvm.fshl.i64(i64 %299, i64 %299, i64 31)
  %301 = mul i64 %300, -7046029288634856825
  %302 = getelementptr inbounds nuw i8, ptr %78, i32 8
  %303 = xor i64 %301, %80
  %304 = tail call i64 @llvm.fshl.i64(i64 %303, i64 %303, i64 27)
  %305 = mul i64 %304, -7046029288634856825
  %306 = add i64 %305, -8796714831421723037
  br label %307

307:                                              ; preds = %297, %76
  %308 = phi ptr [ %78, %76 ], [ %302, %297 ]
  %309 = phi i64 [ %80, %76 ], [ %306, %297 ]
  %310 = load i64, ptr %308, align 1
  %311 = mul i64 %310, -4417276706812531889
  %312 = tail call i64 @llvm.fshl.i64(i64 %311, i64 %311, i64 31)
  %313 = mul i64 %312, -7046029288634856825
  %314 = getelementptr inbounds nuw i8, ptr %308, i32 8
  %315 = xor i64 %313, %309
  %316 = tail call i64 @llvm.fshl.i64(i64 %315, i64 %315, i64 27)
  %317 = mul i64 %316, -7046029288634856825
  %318 = add i64 %317, -8796714831421723037
  br label %319

319:                                              ; preds = %307, %76
  %320 = phi ptr [ %78, %76 ], [ %314, %307 ]
  %321 = phi i64 [ %80, %76 ], [ %318, %307 ]
  %322 = load i64, ptr %320, align 1
  %323 = mul i64 %322, -4417276706812531889
  %324 = tail call i64 @llvm.fshl.i64(i64 %323, i64 %323, i64 31)
  %325 = mul i64 %324, -7046029288634856825
  %326 = getelementptr inbounds nuw i8, ptr %320, i32 8
  %327 = xor i64 %325, %321
  %328 = tail call i64 @llvm.fshl.i64(i64 %327, i64 %327, i64 27)
  %329 = mul i64 %328, -7046029288634856825
  %330 = add i64 %329, -8796714831421723037
  br label %331

331:                                              ; preds = %319, %76
  %332 = phi ptr [ %78, %76 ], [ %326, %319 ]
  %333 = phi i64 [ %80, %76 ], [ %330, %319 ]
  %334 = load i32, ptr %332, align 1
  %335 = zext i32 %334 to i64
  %336 = mul i64 %335, -7046029288634856825
  %337 = xor i64 %336, %333
  %338 = getelementptr inbounds nuw i8, ptr %332, i32 4
  %339 = tail call i64 @llvm.fshl.i64(i64 %337, i64 %337, i64 23)
  %340 = mul i64 %339, -4417276706812531889
  %341 = add i64 %340, 1609587929392839161
  %342 = getelementptr inbounds nuw i8, ptr %332, i32 5
  %343 = load i8, ptr %338, align 1
  %344 = zext i8 %343 to i64
  %345 = mul i64 %344, 2870177450012600261
  %346 = xor i64 %341, %345
  %347 = tail call i64 @llvm.fshl.i64(i64 %346, i64 %346, i64 11)
  %348 = mul i64 %347, -7046029288634856825
  %349 = load i8, ptr %342, align 1
  %350 = zext i8 %349 to i64
  %351 = mul i64 %350, 2870177450012600261
  %352 = xor i64 %348, %351
  %353 = tail call i64 @llvm.fshl.i64(i64 %352, i64 %352, i64 11)
  %354 = mul i64 %353, -7046029288634856825
  br label %484

355:                                              ; preds = %76
  %356 = load i64, ptr %78, align 1
  %357 = mul i64 %356, -4417276706812531889
  %358 = tail call i64 @llvm.fshl.i64(i64 %357, i64 %357, i64 31)
  %359 = mul i64 %358, -7046029288634856825
  %360 = getelementptr inbounds nuw i8, ptr %78, i32 8
  %361 = xor i64 %359, %80
  %362 = tail call i64 @llvm.fshl.i64(i64 %361, i64 %361, i64 27)
  %363 = mul i64 %362, -7046029288634856825
  %364 = add i64 %363, -8796714831421723037
  br label %365

365:                                              ; preds = %355, %76
  %366 = phi ptr [ %78, %76 ], [ %360, %355 ]
  %367 = phi i64 [ %80, %76 ], [ %364, %355 ]
  %368 = load i64, ptr %366, align 1
  %369 = mul i64 %368, -4417276706812531889
  %370 = tail call i64 @llvm.fshl.i64(i64 %369, i64 %369, i64 31)
  %371 = mul i64 %370, -7046029288634856825
  %372 = getelementptr inbounds nuw i8, ptr %366, i32 8
  %373 = xor i64 %371, %367
  %374 = tail call i64 @llvm.fshl.i64(i64 %373, i64 %373, i64 27)
  %375 = mul i64 %374, -7046029288634856825
  %376 = add i64 %375, -8796714831421723037
  br label %377

377:                                              ; preds = %365, %76
  %378 = phi ptr [ %78, %76 ], [ %372, %365 ]
  %379 = phi i64 [ %80, %76 ], [ %376, %365 ]
  %380 = load i64, ptr %378, align 1
  %381 = mul i64 %380, -4417276706812531889
  %382 = tail call i64 @llvm.fshl.i64(i64 %381, i64 %381, i64 31)
  %383 = mul i64 %382, -7046029288634856825
  %384 = getelementptr inbounds nuw i8, ptr %378, i32 8
  %385 = xor i64 %383, %379
  %386 = tail call i64 @llvm.fshl.i64(i64 %385, i64 %385, i64 27)
  %387 = mul i64 %386, -7046029288634856825
  %388 = add i64 %387, -8796714831421723037
  %389 = getelementptr inbounds nuw i8, ptr %378, i32 9
  %390 = load i8, ptr %384, align 1
  %391 = zext i8 %390 to i64
  %392 = mul i64 %391, 2870177450012600261
  %393 = xor i64 %388, %392
  %394 = tail call i64 @llvm.fshl.i64(i64 %393, i64 %393, i64 11)
  %395 = mul i64 %394, -7046029288634856825
  %396 = getelementptr inbounds nuw i8, ptr %378, i32 10
  %397 = load i8, ptr %389, align 1
  %398 = zext i8 %397 to i64
  %399 = mul i64 %398, 2870177450012600261
  %400 = xor i64 %395, %399
  %401 = tail call i64 @llvm.fshl.i64(i64 %400, i64 %400, i64 11)
  %402 = mul i64 %401, -7046029288634856825
  %403 = load i8, ptr %396, align 1
  %404 = zext i8 %403 to i64
  %405 = mul i64 %404, 2870177450012600261
  %406 = xor i64 %402, %405
  %407 = tail call i64 @llvm.fshl.i64(i64 %406, i64 %406, i64 11)
  %408 = mul i64 %407, -7046029288634856825
  br label %484

409:                                              ; preds = %76
  %410 = load i64, ptr %78, align 1
  %411 = mul i64 %410, -4417276706812531889
  %412 = tail call i64 @llvm.fshl.i64(i64 %411, i64 %411, i64 31)
  %413 = mul i64 %412, -7046029288634856825
  %414 = getelementptr inbounds nuw i8, ptr %78, i32 8
  %415 = xor i64 %413, %80
  %416 = tail call i64 @llvm.fshl.i64(i64 %415, i64 %415, i64 27)
  %417 = mul i64 %416, -7046029288634856825
  %418 = add i64 %417, -8796714831421723037
  br label %419

419:                                              ; preds = %409, %76
  %420 = phi ptr [ %78, %76 ], [ %414, %409 ]
  %421 = phi i64 [ %80, %76 ], [ %418, %409 ]
  %422 = load i64, ptr %420, align 1
  %423 = mul i64 %422, -4417276706812531889
  %424 = tail call i64 @llvm.fshl.i64(i64 %423, i64 %423, i64 31)
  %425 = mul i64 %424, -7046029288634856825
  %426 = getelementptr inbounds nuw i8, ptr %420, i32 8
  %427 = xor i64 %425, %421
  %428 = tail call i64 @llvm.fshl.i64(i64 %427, i64 %427, i64 27)
  %429 = mul i64 %428, -7046029288634856825
  %430 = add i64 %429, -8796714831421723037
  br label %431

431:                                              ; preds = %419, %76
  %432 = phi ptr [ %78, %76 ], [ %426, %419 ]
  %433 = phi i64 [ %80, %76 ], [ %430, %419 ]
  %434 = load i64, ptr %432, align 1
  %435 = mul i64 %434, -4417276706812531889
  %436 = tail call i64 @llvm.fshl.i64(i64 %435, i64 %435, i64 31)
  %437 = mul i64 %436, -7046029288634856825
  %438 = getelementptr inbounds nuw i8, ptr %432, i32 8
  %439 = xor i64 %437, %433
  %440 = tail call i64 @llvm.fshl.i64(i64 %439, i64 %439, i64 27)
  %441 = mul i64 %440, -7046029288634856825
  %442 = add i64 %441, -8796714831421723037
  br label %443

443:                                              ; preds = %431, %76
  %444 = phi ptr [ %78, %76 ], [ %438, %431 ]
  %445 = phi i64 [ %80, %76 ], [ %442, %431 ]
  %446 = load i32, ptr %444, align 1
  %447 = zext i32 %446 to i64
  %448 = mul i64 %447, -7046029288634856825
  %449 = xor i64 %448, %445
  %450 = getelementptr inbounds nuw i8, ptr %444, i32 4
  %451 = tail call i64 @llvm.fshl.i64(i64 %449, i64 %449, i64 23)
  %452 = mul i64 %451, -4417276706812531889
  %453 = add i64 %452, 1609587929392839161
  br label %454

454:                                              ; preds = %443, %76
  %455 = phi ptr [ %78, %76 ], [ %450, %443 ]
  %456 = phi i64 [ %80, %76 ], [ %453, %443 ]
  %457 = getelementptr inbounds nuw i8, ptr %455, i32 1
  %458 = load i8, ptr %455, align 1
  %459 = zext i8 %458 to i64
  %460 = mul i64 %459, 2870177450012600261
  %461 = xor i64 %460, %456
  %462 = tail call i64 @llvm.fshl.i64(i64 %461, i64 %461, i64 11)
  %463 = mul i64 %462, -7046029288634856825
  br label %464

464:                                              ; preds = %454, %76
  %465 = phi ptr [ %78, %76 ], [ %457, %454 ]
  %466 = phi i64 [ %80, %76 ], [ %463, %454 ]
  %467 = getelementptr inbounds nuw i8, ptr %465, i32 1
  %468 = load i8, ptr %465, align 1
  %469 = zext i8 %468 to i64
  %470 = mul i64 %469, 2870177450012600261
  %471 = xor i64 %470, %466
  %472 = tail call i64 @llvm.fshl.i64(i64 %471, i64 %471, i64 11)
  %473 = mul i64 %472, -7046029288634856825
  br label %474

474:                                              ; preds = %464, %76
  %475 = phi ptr [ %78, %76 ], [ %467, %464 ]
  %476 = phi i64 [ %80, %76 ], [ %473, %464 ]
  %477 = load i8, ptr %475, align 1
  %478 = zext i8 %477 to i64
  %479 = mul i64 %478, 2870177450012600261
  %480 = xor i64 %479, %476
  %481 = tail call i64 @llvm.fshl.i64(i64 %480, i64 %480, i64 11)
  %482 = mul i64 %481, -7046029288634856825
  br label %484

483:                                              ; preds = %76
  unreachable

484:                                              ; preds = %76, %104, %149, %181, %233, %272, %331, %377, %474
  %485 = phi i64 [ %408, %377 ], [ %354, %331 ], [ %296, %272 ], [ %249, %233 ], [ %198, %181 ], [ %158, %149 ], [ %114, %104 ], [ %80, %76 ], [ %482, %474 ]
  %486 = lshr i64 %485, 33
  %487 = xor i64 %486, %485
  %488 = mul i64 %487, -4417276706812531889
  %489 = lshr i64 %488, 29
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, 1609587929392839161
  %492 = lshr i64 %491, 32
  %493 = xor i64 %492, %491
  ret i64 %493
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(84) ptr @malloc(i32 noundef 84) #19
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH64_copyState(ptr noundef writeonly initializes((0, 84)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %0, ptr noundef nonnull align 4 dereferenceable(84) %1, i32 84, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr noundef writeonly initializes((0, 76)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  store i64 0, ptr %0, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %3, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 %4, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 %5, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 40
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %10, i8 0, i32 36, i1 false)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %115, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %7 = zext i32 %2 to i64
  %8 = load i64, ptr %0, align 4
  %9 = add i64 %8, %7
  store i64 %9, ptr %0, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 72
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %2
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %16 = getelementptr inbounds nuw i8, ptr %15, i32 %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %16, ptr nonnull readonly align 1 %1, i32 %2, i1 false)
  %17 = load i32, ptr %10, align 4
  %18 = add i32 %17, %2
  br label %113

19:                                               ; preds = %5
  %20 = icmp eq i32 %11, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %23 = getelementptr inbounds nuw i8, ptr %22, i32 %11
  %24 = sub i32 32, %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %23, ptr nonnull readonly align 1 %1, i32 %24, i1 false)
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %26 = load i64, ptr %25, align 4
  %27 = load i64, ptr %22, align 1
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, %26
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  store i64 %31, ptr %25, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %33 = load i64, ptr %32, align 4
  %34 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %35 = load i64, ptr %34, align 1
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, %33
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  store i64 %39, ptr %32, align 4
  %40 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %41 = load i64, ptr %40, align 4
  %42 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %43 = load i64, ptr %42, align 1
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, %41
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  store i64 %47, ptr %40, align 4
  %48 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %49 = load i64, ptr %48, align 4
  %50 = getelementptr inbounds nuw i8, ptr %0, i32 64
  %51 = load i64, ptr %50, align 1
  %52 = mul i64 %51, -4417276706812531889
  %53 = add i64 %52, %49
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 31)
  %55 = mul i64 %54, -7046029288634856825
  store i64 %55, ptr %48, align 4
  %56 = load i32, ptr %10, align 4
  %57 = sub i32 32, %56
  %58 = getelementptr inbounds nuw i8, ptr %1, i32 %57
  store i32 0, ptr %10, align 4
  br label %59

59:                                               ; preds = %21, %19
  %60 = phi ptr [ %58, %21 ], [ %1, %19 ]
  %61 = getelementptr inbounds nuw i8, ptr %60, i32 32
  %62 = icmp ugt ptr %61, %6
  br i1 %62, label %105, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %6, i32 -32
  %65 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %66 = load i64, ptr %65, align 4
  %67 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %68 = load i64, ptr %67, align 4
  %69 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %70 = load i64, ptr %69, align 4
  %71 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %72 = load i64, ptr %71, align 4
  br label %73

73:                                               ; preds = %73, %63
  %74 = phi ptr [ %60, %63 ], [ %102, %73 ]
  %75 = phi i64 [ %66, %63 ], [ %83, %73 ]
  %76 = phi i64 [ %68, %63 ], [ %89, %73 ]
  %77 = phi i64 [ %70, %63 ], [ %95, %73 ]
  %78 = phi i64 [ %72, %63 ], [ %101, %73 ]
  %79 = load i64, ptr %74, align 1
  %80 = mul i64 %79, -4417276706812531889
  %81 = add i64 %80, %75
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 31)
  %83 = mul i64 %82, -7046029288634856825
  %84 = getelementptr inbounds nuw i8, ptr %74, i32 8
  %85 = load i64, ptr %84, align 1
  %86 = mul i64 %85, -4417276706812531889
  %87 = add i64 %86, %76
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = getelementptr inbounds nuw i8, ptr %74, i32 16
  %91 = load i64, ptr %90, align 1
  %92 = mul i64 %91, -4417276706812531889
  %93 = add i64 %92, %77
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = getelementptr inbounds nuw i8, ptr %74, i32 24
  %97 = load i64, ptr %96, align 1
  %98 = mul i64 %97, -4417276706812531889
  %99 = add i64 %98, %78
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 31)
  %101 = mul i64 %100, -7046029288634856825
  %102 = getelementptr inbounds nuw i8, ptr %74, i32 32
  %103 = icmp ugt ptr %102, %64
  br i1 %103, label %104, label %73

104:                                              ; preds = %73
  store i64 %83, ptr %65, align 4
  store i64 %89, ptr %67, align 4
  store i64 %95, ptr %69, align 4
  store i64 %101, ptr %71, align 4
  br label %105

105:                                              ; preds = %104, %59
  %106 = phi ptr [ %102, %104 ], [ %60, %59 ]
  %107 = icmp ult ptr %106, %6
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %110 = ptrtoint ptr %6 to i32
  %111 = ptrtoint ptr %106 to i32
  %112 = sub i32 %110, %111
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %109, ptr nonnull readonly align 1 %106, i32 %112, i1 false)
  br label %113

113:                                              ; preds = %108, %14
  %114 = phi i32 [ %18, %14 ], [ %112, %108 ]
  store i32 %114, ptr %10, align 4
  br label %115

115:                                              ; preds = %113, %105, %3
  %116 = phi i32 [ 1, %3 ], [ 0, %105 ], [ 0, %113 ]
  ret i32 %116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i64, ptr %0, align 4
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %12 = load i64, ptr %11, align 4
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
  %45 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %46 = load i64, ptr %45, align 4
  %47 = add i64 %46, 2870177450012600261
  br label %48

48:                                               ; preds = %44, %4
  %49 = phi i64 [ %43, %4 ], [ %47, %44 ]
  %50 = add i64 %49, %2
  %51 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %52 = trunc i64 %2 to i32
  %53 = and i32 %52, 31
  switch i32 %53, label %455 [
    i32 24, label %54
    i32 16, label %64
    i32 8, label %76
    i32 28, label %87
    i32 20, label %97
    i32 12, label %109
    i32 4, label %121
    i32 25, label %131
    i32 17, label %141
    i32 9, label %153
    i32 29, label %171
    i32 21, label %181
    i32 13, label %193
    i32 5, label %205
    i32 26, label %222
    i32 18, label %232
    i32 10, label %244
    i32 30, label %269
    i32 22, label %279
    i32 14, label %291
    i32 6, label %303
    i32 27, label %327
    i32 19, label %337
    i32 11, label %349
    i32 31, label %381
    i32 23, label %391
    i32 15, label %403
    i32 7, label %415
    i32 3, label %426
    i32 2, label %436
    i32 1, label %446
    i32 0, label %456
  ]

54:                                               ; preds = %48
  %55 = load i64, ptr %51, align 1
  %56 = mul i64 %55, -4417276706812531889
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %60 = xor i64 %58, %50
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 27)
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  br label %64

64:                                               ; preds = %54, %48
  %65 = phi ptr [ %51, %48 ], [ %59, %54 ]
  %66 = phi i64 [ %50, %48 ], [ %63, %54 ]
  %67 = load i64, ptr %65, align 1
  %68 = mul i64 %67, -4417276706812531889
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = getelementptr inbounds nuw i8, ptr %65, i32 8
  %72 = xor i64 %70, %66
  %73 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 27)
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %74, -8796714831421723037
  br label %76

76:                                               ; preds = %64, %48
  %77 = phi ptr [ %51, %48 ], [ %71, %64 ]
  %78 = phi i64 [ %50, %48 ], [ %75, %64 ]
  %79 = load i64, ptr %77, align 1
  %80 = mul i64 %79, -4417276706812531889
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %82, %78
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 27)
  %85 = mul i64 %84, -7046029288634856825
  %86 = add i64 %85, -8796714831421723037
  br label %456

87:                                               ; preds = %48
  %88 = load i64, ptr %51, align 1
  %89 = mul i64 %88, -4417276706812531889
  %90 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 31)
  %91 = mul i64 %90, -7046029288634856825
  %92 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %93 = xor i64 %91, %50
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 27)
  %95 = mul i64 %94, -7046029288634856825
  %96 = add i64 %95, -8796714831421723037
  br label %97

97:                                               ; preds = %87, %48
  %98 = phi ptr [ %51, %48 ], [ %92, %87 ]
  %99 = phi i64 [ %50, %48 ], [ %96, %87 ]
  %100 = load i64, ptr %98, align 1
  %101 = mul i64 %100, -4417276706812531889
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 31)
  %103 = mul i64 %102, -7046029288634856825
  %104 = getelementptr inbounds nuw i8, ptr %98, i32 8
  %105 = xor i64 %103, %99
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 27)
  %107 = mul i64 %106, -7046029288634856825
  %108 = add i64 %107, -8796714831421723037
  br label %109

109:                                              ; preds = %97, %48
  %110 = phi ptr [ %51, %48 ], [ %104, %97 ]
  %111 = phi i64 [ %50, %48 ], [ %108, %97 ]
  %112 = load i64, ptr %110, align 1
  %113 = mul i64 %112, -4417276706812531889
  %114 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 31)
  %115 = mul i64 %114, -7046029288634856825
  %116 = getelementptr inbounds nuw i8, ptr %110, i32 8
  %117 = xor i64 %115, %111
  %118 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 27)
  %119 = mul i64 %118, -7046029288634856825
  %120 = add i64 %119, -8796714831421723037
  br label %121

121:                                              ; preds = %109, %48
  %122 = phi ptr [ %51, %48 ], [ %116, %109 ]
  %123 = phi i64 [ %50, %48 ], [ %120, %109 ]
  %124 = load i32, ptr %122, align 1
  %125 = zext i32 %124 to i64
  %126 = mul i64 %125, -7046029288634856825
  %127 = xor i64 %126, %123
  %128 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 23)
  %129 = mul i64 %128, -4417276706812531889
  %130 = add i64 %129, 1609587929392839161
  br label %456

131:                                              ; preds = %48
  %132 = load i64, ptr %51, align 1
  %133 = mul i64 %132, -4417276706812531889
  %134 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 31)
  %135 = mul i64 %134, -7046029288634856825
  %136 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %137 = xor i64 %135, %50
  %138 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 27)
  %139 = mul i64 %138, -7046029288634856825
  %140 = add i64 %139, -8796714831421723037
  br label %141

141:                                              ; preds = %131, %48
  %142 = phi ptr [ %51, %48 ], [ %136, %131 ]
  %143 = phi i64 [ %50, %48 ], [ %140, %131 ]
  %144 = load i64, ptr %142, align 1
  %145 = mul i64 %144, -4417276706812531889
  %146 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 31)
  %147 = mul i64 %146, -7046029288634856825
  %148 = getelementptr inbounds nuw i8, ptr %142, i32 8
  %149 = xor i64 %147, %143
  %150 = tail call i64 @llvm.fshl.i64(i64 %149, i64 %149, i64 27)
  %151 = mul i64 %150, -7046029288634856825
  %152 = add i64 %151, -8796714831421723037
  br label %153

153:                                              ; preds = %141, %48
  %154 = phi ptr [ %51, %48 ], [ %148, %141 ]
  %155 = phi i64 [ %50, %48 ], [ %152, %141 ]
  %156 = load i64, ptr %154, align 1
  %157 = mul i64 %156, -4417276706812531889
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 31)
  %159 = mul i64 %158, -7046029288634856825
  %160 = getelementptr inbounds nuw i8, ptr %154, i32 8
  %161 = xor i64 %159, %155
  %162 = tail call i64 @llvm.fshl.i64(i64 %161, i64 %161, i64 27)
  %163 = mul i64 %162, -7046029288634856825
  %164 = add i64 %163, -8796714831421723037
  %165 = load i8, ptr %160, align 1
  %166 = zext i8 %165 to i64
  %167 = mul i64 %166, 2870177450012600261
  %168 = xor i64 %164, %167
  %169 = tail call i64 @llvm.fshl.i64(i64 %168, i64 %168, i64 11)
  %170 = mul i64 %169, -7046029288634856825
  br label %456

171:                                              ; preds = %48
  %172 = load i64, ptr %51, align 1
  %173 = mul i64 %172, -4417276706812531889
  %174 = tail call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 31)
  %175 = mul i64 %174, -7046029288634856825
  %176 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %177 = xor i64 %175, %50
  %178 = tail call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 27)
  %179 = mul i64 %178, -7046029288634856825
  %180 = add i64 %179, -8796714831421723037
  br label %181

181:                                              ; preds = %171, %48
  %182 = phi ptr [ %51, %48 ], [ %176, %171 ]
  %183 = phi i64 [ %50, %48 ], [ %180, %171 ]
  %184 = load i64, ptr %182, align 1
  %185 = mul i64 %184, -4417276706812531889
  %186 = tail call i64 @llvm.fshl.i64(i64 %185, i64 %185, i64 31)
  %187 = mul i64 %186, -7046029288634856825
  %188 = getelementptr inbounds nuw i8, ptr %182, i32 8
  %189 = xor i64 %187, %183
  %190 = tail call i64 @llvm.fshl.i64(i64 %189, i64 %189, i64 27)
  %191 = mul i64 %190, -7046029288634856825
  %192 = add i64 %191, -8796714831421723037
  br label %193

193:                                              ; preds = %181, %48
  %194 = phi ptr [ %51, %48 ], [ %188, %181 ]
  %195 = phi i64 [ %50, %48 ], [ %192, %181 ]
  %196 = load i64, ptr %194, align 1
  %197 = mul i64 %196, -4417276706812531889
  %198 = tail call i64 @llvm.fshl.i64(i64 %197, i64 %197, i64 31)
  %199 = mul i64 %198, -7046029288634856825
  %200 = getelementptr inbounds nuw i8, ptr %194, i32 8
  %201 = xor i64 %199, %195
  %202 = tail call i64 @llvm.fshl.i64(i64 %201, i64 %201, i64 27)
  %203 = mul i64 %202, -7046029288634856825
  %204 = add i64 %203, -8796714831421723037
  br label %205

205:                                              ; preds = %193, %48
  %206 = phi ptr [ %51, %48 ], [ %200, %193 ]
  %207 = phi i64 [ %50, %48 ], [ %204, %193 ]
  %208 = load i32, ptr %206, align 1
  %209 = zext i32 %208 to i64
  %210 = mul i64 %209, -7046029288634856825
  %211 = xor i64 %210, %207
  %212 = getelementptr inbounds nuw i8, ptr %206, i32 4
  %213 = tail call i64 @llvm.fshl.i64(i64 %211, i64 %211, i64 23)
  %214 = mul i64 %213, -4417276706812531889
  %215 = add i64 %214, 1609587929392839161
  %216 = load i8, ptr %212, align 1
  %217 = zext i8 %216 to i64
  %218 = mul i64 %217, 2870177450012600261
  %219 = xor i64 %215, %218
  %220 = tail call i64 @llvm.fshl.i64(i64 %219, i64 %219, i64 11)
  %221 = mul i64 %220, -7046029288634856825
  br label %456

222:                                              ; preds = %48
  %223 = load i64, ptr %51, align 1
  %224 = mul i64 %223, -4417276706812531889
  %225 = tail call i64 @llvm.fshl.i64(i64 %224, i64 %224, i64 31)
  %226 = mul i64 %225, -7046029288634856825
  %227 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %228 = xor i64 %226, %50
  %229 = tail call i64 @llvm.fshl.i64(i64 %228, i64 %228, i64 27)
  %230 = mul i64 %229, -7046029288634856825
  %231 = add i64 %230, -8796714831421723037
  br label %232

232:                                              ; preds = %222, %48
  %233 = phi ptr [ %51, %48 ], [ %227, %222 ]
  %234 = phi i64 [ %50, %48 ], [ %231, %222 ]
  %235 = load i64, ptr %233, align 1
  %236 = mul i64 %235, -4417276706812531889
  %237 = tail call i64 @llvm.fshl.i64(i64 %236, i64 %236, i64 31)
  %238 = mul i64 %237, -7046029288634856825
  %239 = getelementptr inbounds nuw i8, ptr %233, i32 8
  %240 = xor i64 %238, %234
  %241 = tail call i64 @llvm.fshl.i64(i64 %240, i64 %240, i64 27)
  %242 = mul i64 %241, -7046029288634856825
  %243 = add i64 %242, -8796714831421723037
  br label %244

244:                                              ; preds = %232, %48
  %245 = phi ptr [ %51, %48 ], [ %239, %232 ]
  %246 = phi i64 [ %50, %48 ], [ %243, %232 ]
  %247 = load i64, ptr %245, align 1
  %248 = mul i64 %247, -4417276706812531889
  %249 = tail call i64 @llvm.fshl.i64(i64 %248, i64 %248, i64 31)
  %250 = mul i64 %249, -7046029288634856825
  %251 = getelementptr inbounds nuw i8, ptr %245, i32 8
  %252 = xor i64 %250, %246
  %253 = tail call i64 @llvm.fshl.i64(i64 %252, i64 %252, i64 27)
  %254 = mul i64 %253, -7046029288634856825
  %255 = add i64 %254, -8796714831421723037
  %256 = getelementptr inbounds nuw i8, ptr %245, i32 9
  %257 = load i8, ptr %251, align 1
  %258 = zext i8 %257 to i64
  %259 = mul i64 %258, 2870177450012600261
  %260 = xor i64 %255, %259
  %261 = tail call i64 @llvm.fshl.i64(i64 %260, i64 %260, i64 11)
  %262 = mul i64 %261, -7046029288634856825
  %263 = load i8, ptr %256, align 1
  %264 = zext i8 %263 to i64
  %265 = mul i64 %264, 2870177450012600261
  %266 = xor i64 %262, %265
  %267 = tail call i64 @llvm.fshl.i64(i64 %266, i64 %266, i64 11)
  %268 = mul i64 %267, -7046029288634856825
  br label %456

269:                                              ; preds = %48
  %270 = load i64, ptr %51, align 1
  %271 = mul i64 %270, -4417276706812531889
  %272 = tail call i64 @llvm.fshl.i64(i64 %271, i64 %271, i64 31)
  %273 = mul i64 %272, -7046029288634856825
  %274 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %275 = xor i64 %273, %50
  %276 = tail call i64 @llvm.fshl.i64(i64 %275, i64 %275, i64 27)
  %277 = mul i64 %276, -7046029288634856825
  %278 = add i64 %277, -8796714831421723037
  br label %279

279:                                              ; preds = %269, %48
  %280 = phi ptr [ %51, %48 ], [ %274, %269 ]
  %281 = phi i64 [ %50, %48 ], [ %278, %269 ]
  %282 = load i64, ptr %280, align 1
  %283 = mul i64 %282, -4417276706812531889
  %284 = tail call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 31)
  %285 = mul i64 %284, -7046029288634856825
  %286 = getelementptr inbounds nuw i8, ptr %280, i32 8
  %287 = xor i64 %285, %281
  %288 = tail call i64 @llvm.fshl.i64(i64 %287, i64 %287, i64 27)
  %289 = mul i64 %288, -7046029288634856825
  %290 = add i64 %289, -8796714831421723037
  br label %291

291:                                              ; preds = %279, %48
  %292 = phi ptr [ %51, %48 ], [ %286, %279 ]
  %293 = phi i64 [ %50, %48 ], [ %290, %279 ]
  %294 = load i64, ptr %292, align 1
  %295 = mul i64 %294, -4417276706812531889
  %296 = tail call i64 @llvm.fshl.i64(i64 %295, i64 %295, i64 31)
  %297 = mul i64 %296, -7046029288634856825
  %298 = getelementptr inbounds nuw i8, ptr %292, i32 8
  %299 = xor i64 %297, %293
  %300 = tail call i64 @llvm.fshl.i64(i64 %299, i64 %299, i64 27)
  %301 = mul i64 %300, -7046029288634856825
  %302 = add i64 %301, -8796714831421723037
  br label %303

303:                                              ; preds = %291, %48
  %304 = phi ptr [ %51, %48 ], [ %298, %291 ]
  %305 = phi i64 [ %50, %48 ], [ %302, %291 ]
  %306 = load i32, ptr %304, align 1
  %307 = zext i32 %306 to i64
  %308 = mul i64 %307, -7046029288634856825
  %309 = xor i64 %308, %305
  %310 = getelementptr inbounds nuw i8, ptr %304, i32 4
  %311 = tail call i64 @llvm.fshl.i64(i64 %309, i64 %309, i64 23)
  %312 = mul i64 %311, -4417276706812531889
  %313 = add i64 %312, 1609587929392839161
  %314 = getelementptr inbounds nuw i8, ptr %304, i32 5
  %315 = load i8, ptr %310, align 1
  %316 = zext i8 %315 to i64
  %317 = mul i64 %316, 2870177450012600261
  %318 = xor i64 %313, %317
  %319 = tail call i64 @llvm.fshl.i64(i64 %318, i64 %318, i64 11)
  %320 = mul i64 %319, -7046029288634856825
  %321 = load i8, ptr %314, align 1
  %322 = zext i8 %321 to i64
  %323 = mul i64 %322, 2870177450012600261
  %324 = xor i64 %320, %323
  %325 = tail call i64 @llvm.fshl.i64(i64 %324, i64 %324, i64 11)
  %326 = mul i64 %325, -7046029288634856825
  br label %456

327:                                              ; preds = %48
  %328 = load i64, ptr %51, align 1
  %329 = mul i64 %328, -4417276706812531889
  %330 = tail call i64 @llvm.fshl.i64(i64 %329, i64 %329, i64 31)
  %331 = mul i64 %330, -7046029288634856825
  %332 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %333 = xor i64 %331, %50
  %334 = tail call i64 @llvm.fshl.i64(i64 %333, i64 %333, i64 27)
  %335 = mul i64 %334, -7046029288634856825
  %336 = add i64 %335, -8796714831421723037
  br label %337

337:                                              ; preds = %327, %48
  %338 = phi ptr [ %51, %48 ], [ %332, %327 ]
  %339 = phi i64 [ %50, %48 ], [ %336, %327 ]
  %340 = load i64, ptr %338, align 1
  %341 = mul i64 %340, -4417276706812531889
  %342 = tail call i64 @llvm.fshl.i64(i64 %341, i64 %341, i64 31)
  %343 = mul i64 %342, -7046029288634856825
  %344 = getelementptr inbounds nuw i8, ptr %338, i32 8
  %345 = xor i64 %343, %339
  %346 = tail call i64 @llvm.fshl.i64(i64 %345, i64 %345, i64 27)
  %347 = mul i64 %346, -7046029288634856825
  %348 = add i64 %347, -8796714831421723037
  br label %349

349:                                              ; preds = %337, %48
  %350 = phi ptr [ %51, %48 ], [ %344, %337 ]
  %351 = phi i64 [ %50, %48 ], [ %348, %337 ]
  %352 = load i64, ptr %350, align 1
  %353 = mul i64 %352, -4417276706812531889
  %354 = tail call i64 @llvm.fshl.i64(i64 %353, i64 %353, i64 31)
  %355 = mul i64 %354, -7046029288634856825
  %356 = getelementptr inbounds nuw i8, ptr %350, i32 8
  %357 = xor i64 %355, %351
  %358 = tail call i64 @llvm.fshl.i64(i64 %357, i64 %357, i64 27)
  %359 = mul i64 %358, -7046029288634856825
  %360 = add i64 %359, -8796714831421723037
  %361 = getelementptr inbounds nuw i8, ptr %350, i32 9
  %362 = load i8, ptr %356, align 1
  %363 = zext i8 %362 to i64
  %364 = mul i64 %363, 2870177450012600261
  %365 = xor i64 %360, %364
  %366 = tail call i64 @llvm.fshl.i64(i64 %365, i64 %365, i64 11)
  %367 = mul i64 %366, -7046029288634856825
  %368 = getelementptr inbounds nuw i8, ptr %350, i32 10
  %369 = load i8, ptr %361, align 1
  %370 = zext i8 %369 to i64
  %371 = mul i64 %370, 2870177450012600261
  %372 = xor i64 %367, %371
  %373 = tail call i64 @llvm.fshl.i64(i64 %372, i64 %372, i64 11)
  %374 = mul i64 %373, -7046029288634856825
  %375 = load i8, ptr %368, align 1
  %376 = zext i8 %375 to i64
  %377 = mul i64 %376, 2870177450012600261
  %378 = xor i64 %374, %377
  %379 = tail call i64 @llvm.fshl.i64(i64 %378, i64 %378, i64 11)
  %380 = mul i64 %379, -7046029288634856825
  br label %456

381:                                              ; preds = %48
  %382 = load i64, ptr %51, align 1
  %383 = mul i64 %382, -4417276706812531889
  %384 = tail call i64 @llvm.fshl.i64(i64 %383, i64 %383, i64 31)
  %385 = mul i64 %384, -7046029288634856825
  %386 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %387 = xor i64 %385, %50
  %388 = tail call i64 @llvm.fshl.i64(i64 %387, i64 %387, i64 27)
  %389 = mul i64 %388, -7046029288634856825
  %390 = add i64 %389, -8796714831421723037
  br label %391

391:                                              ; preds = %381, %48
  %392 = phi ptr [ %51, %48 ], [ %386, %381 ]
  %393 = phi i64 [ %50, %48 ], [ %390, %381 ]
  %394 = load i64, ptr %392, align 1
  %395 = mul i64 %394, -4417276706812531889
  %396 = tail call i64 @llvm.fshl.i64(i64 %395, i64 %395, i64 31)
  %397 = mul i64 %396, -7046029288634856825
  %398 = getelementptr inbounds nuw i8, ptr %392, i32 8
  %399 = xor i64 %397, %393
  %400 = tail call i64 @llvm.fshl.i64(i64 %399, i64 %399, i64 27)
  %401 = mul i64 %400, -7046029288634856825
  %402 = add i64 %401, -8796714831421723037
  br label %403

403:                                              ; preds = %391, %48
  %404 = phi ptr [ %51, %48 ], [ %398, %391 ]
  %405 = phi i64 [ %50, %48 ], [ %402, %391 ]
  %406 = load i64, ptr %404, align 1
  %407 = mul i64 %406, -4417276706812531889
  %408 = tail call i64 @llvm.fshl.i64(i64 %407, i64 %407, i64 31)
  %409 = mul i64 %408, -7046029288634856825
  %410 = getelementptr inbounds nuw i8, ptr %404, i32 8
  %411 = xor i64 %409, %405
  %412 = tail call i64 @llvm.fshl.i64(i64 %411, i64 %411, i64 27)
  %413 = mul i64 %412, -7046029288634856825
  %414 = add i64 %413, -8796714831421723037
  br label %415

415:                                              ; preds = %403, %48
  %416 = phi ptr [ %51, %48 ], [ %410, %403 ]
  %417 = phi i64 [ %50, %48 ], [ %414, %403 ]
  %418 = load i32, ptr %416, align 1
  %419 = zext i32 %418 to i64
  %420 = mul i64 %419, -7046029288634856825
  %421 = xor i64 %420, %417
  %422 = getelementptr inbounds nuw i8, ptr %416, i32 4
  %423 = tail call i64 @llvm.fshl.i64(i64 %421, i64 %421, i64 23)
  %424 = mul i64 %423, -4417276706812531889
  %425 = add i64 %424, 1609587929392839161
  br label %426

426:                                              ; preds = %415, %48
  %427 = phi ptr [ %51, %48 ], [ %422, %415 ]
  %428 = phi i64 [ %50, %48 ], [ %425, %415 ]
  %429 = getelementptr inbounds nuw i8, ptr %427, i32 1
  %430 = load i8, ptr %427, align 1
  %431 = zext i8 %430 to i64
  %432 = mul i64 %431, 2870177450012600261
  %433 = xor i64 %432, %428
  %434 = tail call i64 @llvm.fshl.i64(i64 %433, i64 %433, i64 11)
  %435 = mul i64 %434, -7046029288634856825
  br label %436

436:                                              ; preds = %426, %48
  %437 = phi ptr [ %51, %48 ], [ %429, %426 ]
  %438 = phi i64 [ %50, %48 ], [ %435, %426 ]
  %439 = getelementptr inbounds nuw i8, ptr %437, i32 1
  %440 = load i8, ptr %437, align 1
  %441 = zext i8 %440 to i64
  %442 = mul i64 %441, 2870177450012600261
  %443 = xor i64 %442, %438
  %444 = tail call i64 @llvm.fshl.i64(i64 %443, i64 %443, i64 11)
  %445 = mul i64 %444, -7046029288634856825
  br label %446

446:                                              ; preds = %436, %48
  %447 = phi ptr [ %51, %48 ], [ %439, %436 ]
  %448 = phi i64 [ %50, %48 ], [ %445, %436 ]
  %449 = load i8, ptr %447, align 1
  %450 = zext i8 %449 to i64
  %451 = mul i64 %450, 2870177450012600261
  %452 = xor i64 %451, %448
  %453 = tail call i64 @llvm.fshl.i64(i64 %452, i64 %452, i64 11)
  %454 = mul i64 %453, -7046029288634856825
  br label %456

455:                                              ; preds = %48
  unreachable

456:                                              ; preds = %48, %76, %121, %153, %205, %244, %303, %349, %446
  %457 = phi i64 [ %380, %349 ], [ %326, %303 ], [ %268, %244 ], [ %221, %205 ], [ %170, %153 ], [ %130, %121 ], [ %86, %76 ], [ %50, %48 ], [ %454, %446 ]
  %458 = lshr i64 %457, 33
  %459 = xor i64 %458, %457
  %460 = mul i64 %459, -4417276706812531889
  %461 = lshr i64 %460, 29
  %462 = xor i64 %461, %460
  %463 = mul i64 %462, 1609587929392839161
  %464 = lshr i64 %463, 32
  %465 = xor i64 %464, %463
  ret i64 %465
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
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  %4 = icmp ult i32 %1, 17
  br i1 %4, label %5, label %122

5:                                                ; preds = %3
  %6 = icmp samesign ugt i32 %1, 8
  br i1 %6, label %7, label %49

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %2, 2568260970027576377
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %12 = getelementptr inbounds i8, ptr %11, i32 -8
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 -639039334258736852, %2
  %15 = xor i64 %13, %14
  %16 = zext nneg i32 %1 to i64
  %17 = lshr i64 %10, 32
  %18 = lshr i64 %15, 32
  %19 = mul nuw i64 %18, %17
  %20 = and i64 %10, 4294967295
  %21 = mul nuw i64 %18, %20
  %22 = and i64 %15, 4294967295
  %23 = mul nuw i64 %22, %17
  %24 = mul nuw i64 %22, %20
  %25 = shl i64 %21, 32
  %26 = add i64 %25, %24
  %27 = icmp ult i64 %26, %24
  %28 = zext i1 %27 to i64
  %29 = add i64 %21, %23
  %30 = shl i64 %29, 32
  %31 = add i64 %30, %24
  %32 = icmp ult i64 %31, %26
  %33 = zext i1 %32 to i64
  %34 = lshr i64 %21, 32
  %35 = add nuw i64 %34, %19
  %36 = lshr i64 %23, 32
  %37 = add nuw i64 %35, %36
  %38 = add nuw i64 %37, %28
  %39 = add nuw i64 %38, %33
  %40 = xor i64 %39, %31
  %41 = add i64 %10, %16
  %42 = add i64 %41, %15
  %43 = add i64 %42, %40
  %44 = lshr i64 %43, 37
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, 1609587929392839161
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  br label %413

49:                                               ; preds = %5
  %50 = icmp samesign ugt i32 %1, 3
  br i1 %50, label %51, label %90

51:                                               ; preds = %49
  %52 = load i32, ptr %0, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %54 = getelementptr inbounds i8, ptr %53, i32 -4
  %55 = load i32, ptr %54, align 1
  %56 = zext i32 %52 to i64
  %57 = zext i32 %55 to i64
  %58 = shl nuw i64 %57, 32
  %59 = or disjoint i64 %58, %56
  %60 = add i64 %2, 2568260970027576377
  %61 = xor i64 %59, %60
  %62 = zext nneg i32 %1 to i64
  %63 = lshr i64 %61, 32
  %64 = mul nuw i64 %63, 2654435761
  %65 = and i64 %61, 4294967295
  %66 = mul nuw i64 %65, 2654435761
  %67 = mul nuw i64 %63, 2246822535
  %68 = mul nuw i64 %65, 2246822535
  %69 = mul i64 %65, -7046029288634856825
  %70 = icmp ult i64 %69, %68
  %71 = zext i1 %70 to i64
  %72 = add i64 %66, %67
  %73 = shl i64 %72, 32
  %74 = add i64 %73, %68
  %75 = icmp ult i64 %74, %69
  %76 = zext i1 %75 to i64
  %77 = lshr i64 %66, 32
  %78 = add nuw i64 %77, %64
  %79 = lshr i64 %67, 32
  %80 = add nuw i64 %78, %79
  %81 = add nuw i64 %80, %71
  %82 = add nuw i64 %81, %76
  %83 = xor i64 %82, %74
  %84 = add i64 %83, %62
  %85 = lshr i64 %84, 37
  %86 = xor i64 %85, %84
  %87 = mul i64 %86, 1609587929392839161
  %88 = lshr i64 %87, 32
  %89 = xor i64 %88, %87
  br label %413

90:                                               ; preds = %49
  %91 = icmp eq i32 %1, 0
  br i1 %91, label %413, label %92

92:                                               ; preds = %90
  %93 = load i8, ptr %0, align 1
  %94 = lshr i32 %1, 1
  %95 = getelementptr inbounds nuw i8, ptr %0, i32 %94
  %96 = load i8, ptr %95, align 1
  %97 = getelementptr i8, ptr %0, i32 %1
  %98 = getelementptr i8, ptr %97, i32 -1
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %93 to i32
  %101 = zext i8 %96 to i32
  %102 = shl nuw nsw i32 %101, 8
  %103 = or disjoint i32 %102, %100
  %104 = zext i8 %99 to i32
  %105 = shl nuw nsw i32 %104, 2
  %106 = trunc i64 %2 to i32
  %107 = add i32 %106, -1191285703
  %108 = add i32 %107, %103
  %109 = zext i32 %108 to i64
  %110 = lshr i64 %2, 32
  %111 = trunc nuw i64 %110 to i32
  %112 = add nuw nsw i32 %1, 597969854
  %113 = add i32 %112, %111
  %114 = add i32 %113, %105
  %115 = zext i32 %114 to i64
  %116 = mul nuw i64 %115, %109
  %117 = lshr i64 %116, 37
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %413

122:                                              ; preds = %3
  %123 = zext i32 %1 to i64
  %124 = mul i64 %123, -7046029288634856825
  %125 = icmp ugt i32 %1, 32
  br i1 %125, label %126, label %340

126:                                              ; preds = %122
  %127 = icmp ugt i32 %1, 64
  br i1 %127, label %128, label %271

128:                                              ; preds = %126
  %129 = icmp ugt i32 %1, 96
  br i1 %129, label %130, label %202

130:                                              ; preds = %128
  %131 = icmp ugt i32 %1, 128
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = tail call fastcc i64 @XXH3_hashLong_64b(ptr noundef %0, i32 noundef %1, i64 noundef %2)
  br label %413

134:                                              ; preds = %130
  %135 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %136 = load i64, ptr %135, align 1
  %137 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %138 = load i64, ptr %137, align 1
  %139 = add i64 %2, -2045702682710477249
  %140 = xor i64 %136, %139
  %141 = sub i64 -4104099645253436473, %2
  %142 = xor i64 %138, %141
  %143 = lshr i64 %140, 32
  %144 = lshr i64 %142, 32
  %145 = mul nuw i64 %144, %143
  %146 = and i64 %140, 4294967295
  %147 = mul nuw i64 %144, %146
  %148 = and i64 %142, 4294967295
  %149 = mul nuw i64 %148, %143
  %150 = mul nuw i64 %148, %146
  %151 = shl i64 %147, 32
  %152 = add i64 %151, %150
  %153 = icmp ult i64 %152, %150
  %154 = zext i1 %153 to i64
  %155 = add i64 %147, %149
  %156 = shl i64 %155, 32
  %157 = add i64 %156, %150
  %158 = icmp ult i64 %157, %152
  %159 = zext i1 %158 to i64
  %160 = lshr i64 %147, 32
  %161 = add nuw i64 %160, %145
  %162 = lshr i64 %149, 32
  %163 = add nuw i64 %161, %162
  %164 = add nuw i64 %163, %154
  %165 = add nuw i64 %164, %159
  %166 = xor i64 %165, %157
  %167 = add i64 %166, %124
  %168 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %169 = getelementptr inbounds i8, ptr %168, i32 -64
  %170 = load i64, ptr %169, align 1
  %171 = getelementptr inbounds i8, ptr %168, i32 -56
  %172 = load i64, ptr %171, align 1
  %173 = add i64 %2, -3624173730817515445
  %174 = xor i64 %170, %173
  %175 = sub i64 -2776342293574091063, %2
  %176 = xor i64 %172, %175
  %177 = lshr i64 %174, 32
  %178 = lshr i64 %176, 32
  %179 = mul nuw i64 %178, %177
  %180 = and i64 %174, 4294967295
  %181 = mul nuw i64 %178, %180
  %182 = and i64 %176, 4294967295
  %183 = mul nuw i64 %182, %177
  %184 = mul nuw i64 %182, %180
  %185 = shl i64 %181, 32
  %186 = add i64 %185, %184
  %187 = icmp ult i64 %186, %184
  %188 = zext i1 %187 to i64
  %189 = add i64 %181, %183
  %190 = shl i64 %189, 32
  %191 = add i64 %190, %184
  %192 = icmp ult i64 %191, %186
  %193 = zext i1 %192 to i64
  %194 = lshr i64 %181, 32
  %195 = add nuw i64 %194, %179
  %196 = lshr i64 %183, 32
  %197 = add nuw i64 %195, %196
  %198 = add nuw i64 %197, %188
  %199 = add nuw i64 %198, %193
  %200 = xor i64 %199, %191
  %201 = add i64 %167, %200
  br label %202

202:                                              ; preds = %134, %128
  %203 = phi i64 [ %201, %134 ], [ %124, %128 ]
  %204 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %205 = load i64, ptr %204, align 1
  %206 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %207 = load i64, ptr %206, align 1
  %208 = add i64 %2, -7943504444863786309
  %209 = xor i64 %205, %208
  %210 = sub i64 1968968742000944523, %2
  %211 = xor i64 %207, %210
  %212 = lshr i64 %209, 32
  %213 = lshr i64 %211, 32
  %214 = mul nuw i64 %213, %212
  %215 = and i64 %209, 4294967295
  %216 = mul nuw i64 %213, %215
  %217 = and i64 %211, 4294967295
  %218 = mul nuw i64 %217, %212
  %219 = mul nuw i64 %217, %215
  %220 = shl i64 %216, 32
  %221 = add i64 %220, %219
  %222 = icmp ult i64 %221, %219
  %223 = zext i1 %222 to i64
  %224 = add i64 %216, %218
  %225 = shl i64 %224, 32
  %226 = add i64 %225, %219
  %227 = icmp ult i64 %226, %221
  %228 = zext i1 %227 to i64
  %229 = lshr i64 %216, 32
  %230 = add nuw i64 %229, %214
  %231 = lshr i64 %218, 32
  %232 = add nuw i64 %230, %231
  %233 = add nuw i64 %232, %223
  %234 = add nuw i64 %233, %228
  %235 = xor i64 %234, %226
  %236 = add i64 %235, %203
  %237 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %238 = getelementptr inbounds i8, ptr %237, i32 -48
  %239 = load i64, ptr %238, align 1
  %240 = getelementptr inbounds i8, ptr %237, i32 -40
  %241 = load i64, ptr %240, align 1
  %242 = add i64 %2, -6769480549562824553
  %243 = xor i64 %239, %242
  %244 = sub i64 -6206333191815827642, %2
  %245 = xor i64 %241, %244
  %246 = lshr i64 %243, 32
  %247 = lshr i64 %245, 32
  %248 = mul nuw i64 %247, %246
  %249 = and i64 %243, 4294967295
  %250 = mul nuw i64 %247, %249
  %251 = and i64 %245, 4294967295
  %252 = mul nuw i64 %251, %246
  %253 = mul nuw i64 %251, %249
  %254 = shl i64 %250, 32
  %255 = add i64 %254, %253
  %256 = icmp ult i64 %255, %253
  %257 = zext i1 %256 to i64
  %258 = add i64 %250, %252
  %259 = shl i64 %258, 32
  %260 = add i64 %259, %253
  %261 = icmp ult i64 %260, %255
  %262 = zext i1 %261 to i64
  %263 = lshr i64 %250, 32
  %264 = add nuw i64 %263, %248
  %265 = lshr i64 %252, 32
  %266 = add nuw i64 %264, %265
  %267 = add nuw i64 %266, %257
  %268 = add nuw i64 %267, %262
  %269 = xor i64 %268, %260
  %270 = add i64 %236, %269
  br label %271

271:                                              ; preds = %202, %126
  %272 = phi i64 [ %270, %202 ], [ %124, %126 ]
  %273 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %274 = load i64, ptr %273, align 1
  %275 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %276 = load i64, ptr %275, align 1
  %277 = add i64 %2, -3692699387471206834
  %278 = xor i64 %274, %277
  %279 = sub i64 -3675093282664558467, %2
  %280 = xor i64 %276, %279
  %281 = lshr i64 %278, 32
  %282 = lshr i64 %280, 32
  %283 = mul nuw i64 %282, %281
  %284 = and i64 %278, 4294967295
  %285 = mul nuw i64 %282, %284
  %286 = and i64 %280, 4294967295
  %287 = mul nuw i64 %286, %281
  %288 = mul nuw i64 %286, %284
  %289 = shl i64 %285, 32
  %290 = add i64 %289, %288
  %291 = icmp ult i64 %290, %288
  %292 = zext i1 %291 to i64
  %293 = add i64 %285, %287
  %294 = shl i64 %293, 32
  %295 = add i64 %294, %288
  %296 = icmp ult i64 %295, %290
  %297 = zext i1 %296 to i64
  %298 = lshr i64 %285, 32
  %299 = add nuw i64 %298, %283
  %300 = lshr i64 %287, 32
  %301 = add nuw i64 %299, %300
  %302 = add nuw i64 %301, %292
  %303 = add nuw i64 %302, %297
  %304 = xor i64 %303, %295
  %305 = add i64 %304, %272
  %306 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %307 = getelementptr inbounds i8, ptr %306, i32 -32
  %308 = load i64, ptr %307, align 1
  %309 = getelementptr inbounds i8, ptr %306, i32 -24
  %310 = load i64, ptr %309, align 1
  %311 = add i64 %2, -629619327510231436
  %312 = xor i64 %308, %311
  %313 = sub i64 -9134946782546652954, %2
  %314 = xor i64 %310, %313
  %315 = lshr i64 %312, 32
  %316 = lshr i64 %314, 32
  %317 = mul nuw i64 %316, %315
  %318 = and i64 %312, 4294967295
  %319 = mul nuw i64 %316, %318
  %320 = and i64 %314, 4294967295
  %321 = mul nuw i64 %320, %315
  %322 = mul nuw i64 %320, %318
  %323 = shl i64 %319, 32
  %324 = add i64 %323, %322
  %325 = icmp ult i64 %324, %322
  %326 = zext i1 %325 to i64
  %327 = add i64 %319, %321
  %328 = shl i64 %327, 32
  %329 = add i64 %328, %322
  %330 = icmp ult i64 %329, %324
  %331 = zext i1 %330 to i64
  %332 = lshr i64 %319, 32
  %333 = add nuw i64 %332, %317
  %334 = lshr i64 %321, 32
  %335 = add nuw i64 %333, %334
  %336 = add nuw i64 %335, %326
  %337 = add nuw i64 %336, %331
  %338 = xor i64 %337, %329
  %339 = add i64 %305, %338
  br label %340

340:                                              ; preds = %271, %122
  %341 = phi i64 [ %339, %271 ], [ %124, %122 ]
  %342 = load i64, ptr %0, align 1
  %343 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %344 = load i64, ptr %343, align 1
  %345 = add i64 %2, 2568260970027576377
  %346 = xor i64 %342, %345
  %347 = sub i64 -639039334258736852, %2
  %348 = xor i64 %344, %347
  %349 = lshr i64 %346, 32
  %350 = lshr i64 %348, 32
  %351 = mul nuw i64 %350, %349
  %352 = and i64 %346, 4294967295
  %353 = mul nuw i64 %350, %352
  %354 = and i64 %348, 4294967295
  %355 = mul nuw i64 %354, %349
  %356 = mul nuw i64 %354, %352
  %357 = shl i64 %353, 32
  %358 = add i64 %357, %356
  %359 = icmp ult i64 %358, %356
  %360 = zext i1 %359 to i64
  %361 = add i64 %353, %355
  %362 = shl i64 %361, 32
  %363 = add i64 %362, %356
  %364 = icmp ult i64 %363, %358
  %365 = zext i1 %364 to i64
  %366 = lshr i64 %353, 32
  %367 = add nuw i64 %366, %351
  %368 = lshr i64 %355, 32
  %369 = add nuw i64 %367, %368
  %370 = add nuw i64 %369, %360
  %371 = add nuw i64 %370, %365
  %372 = xor i64 %371, %363
  %373 = add i64 %372, %341
  %374 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %375 = getelementptr inbounds i8, ptr %374, i32 -16
  %376 = load i64, ptr %375, align 1
  %377 = getelementptr inbounds i8, ptr %374, i32 -8
  %378 = load i64, ptr %377, align 1
  %379 = add i64 %2, -8966499887502561815
  %380 = xor i64 %376, %379
  %381 = sub i64 -5209706959179045724, %2
  %382 = xor i64 %378, %381
  %383 = lshr i64 %380, 32
  %384 = lshr i64 %382, 32
  %385 = mul nuw i64 %384, %383
  %386 = and i64 %380, 4294967295
  %387 = mul nuw i64 %384, %386
  %388 = and i64 %382, 4294967295
  %389 = mul nuw i64 %388, %383
  %390 = mul nuw i64 %388, %386
  %391 = shl i64 %387, 32
  %392 = add i64 %391, %390
  %393 = icmp ult i64 %392, %390
  %394 = zext i1 %393 to i64
  %395 = add i64 %387, %389
  %396 = shl i64 %395, 32
  %397 = add i64 %396, %390
  %398 = icmp ult i64 %397, %392
  %399 = zext i1 %398 to i64
  %400 = lshr i64 %387, 32
  %401 = add nuw i64 %400, %385
  %402 = lshr i64 %389, 32
  %403 = add nuw i64 %401, %402
  %404 = add nuw i64 %403, %394
  %405 = add nuw i64 %404, %399
  %406 = xor i64 %405, %397
  %407 = add i64 %373, %406
  %408 = lshr i64 %407, 37
  %409 = xor i64 %408, %407
  %410 = mul i64 %409, 1609587929392839161
  %411 = lshr i64 %410, 32
  %412 = xor i64 %411, %410
  br label %413

413:                                              ; preds = %92, %90, %51, %7, %132, %340
  %414 = phi i64 [ %133, %132 ], [ %412, %340 ], [ %48, %7 ], [ %89, %51 ], [ %121, %92 ], [ %2, %90 ]
  ret i64 %414
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b(ptr noundef readonly %0, i32 noundef range(i32 129, 0) %1, i64 noundef %2) unnamed_addr #11 {
  %4 = sub i64 0, %2
  %5 = lshr i32 %1, 10
  %6 = icmp ult i32 %1, 1024
  br i1 %6, label %1076, label %7

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %1073, %7 ], [ 0, %3 ]
  %9 = phi i64 [ %1069, %7 ], [ %4, %3 ]
  %10 = phi i64 [ %1065, %7 ], [ 2870177450012600261, %3 ]
  %11 = phi i64 [ %1061, %7 ], [ -8796714831421723037, %3 ]
  %12 = phi i64 [ %1057, %7 ], [ 1609587929392839161, %3 ]
  %13 = phi i64 [ %1053, %7 ], [ -4417276706812531889, %3 ]
  %14 = phi i64 [ %1049, %7 ], [ -7046029288634856825, %3 ]
  %15 = phi i64 [ %1045, %7 ], [ %2, %3 ]
  %16 = phi i32 [ %1074, %7 ], [ 0, %3 ]
  %17 = shl nuw i32 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %0, i32 %17
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, 2568260970027576377
  %21 = and i64 %20, 4294967295
  %22 = lshr i64 %20, 32
  %23 = mul nuw i64 %21, %22
  %24 = add i64 %19, %15
  %25 = add i64 %24, %23
  %26 = getelementptr inbounds nuw i8, ptr %18, i32 8
  %27 = load i64, ptr %26, align 1
  %28 = xor i64 %27, -639039334258736852
  %29 = and i64 %28, 4294967295
  %30 = lshr i64 %28, 32
  %31 = mul nuw i64 %29, %30
  %32 = add i64 %27, %14
  %33 = add i64 %32, %31
  %34 = getelementptr inbounds nuw i8, ptr %18, i32 16
  %35 = load i64, ptr %34, align 1
  %36 = xor i64 %35, -8966499887502561815
  %37 = and i64 %36, 4294967295
  %38 = lshr i64 %36, 32
  %39 = mul nuw i64 %37, %38
  %40 = add i64 %35, %13
  %41 = add i64 %40, %39
  %42 = getelementptr inbounds nuw i8, ptr %18, i32 24
  %43 = load i64, ptr %42, align 1
  %44 = xor i64 %43, -5209706959179045724
  %45 = and i64 %44, 4294967295
  %46 = lshr i64 %44, 32
  %47 = mul nuw i64 %45, %46
  %48 = add i64 %43, %12
  %49 = add i64 %48, %47
  %50 = getelementptr inbounds nuw i8, ptr %18, i32 32
  %51 = load i64, ptr %50, align 1
  %52 = xor i64 %51, -3692699387471206834
  %53 = and i64 %52, 4294967295
  %54 = lshr i64 %52, 32
  %55 = mul nuw i64 %53, %54
  %56 = add i64 %51, %11
  %57 = add i64 %56, %55
  %58 = getelementptr inbounds nuw i8, ptr %18, i32 40
  %59 = load i64, ptr %58, align 1
  %60 = xor i64 %59, -3675093282664558467
  %61 = and i64 %60, 4294967295
  %62 = lshr i64 %60, 32
  %63 = mul nuw i64 %61, %62
  %64 = add i64 %59, %10
  %65 = add i64 %64, %63
  %66 = getelementptr inbounds nuw i8, ptr %18, i32 48
  %67 = load i64, ptr %66, align 1
  %68 = xor i64 %67, -629619327510231436
  %69 = and i64 %68, 4294967295
  %70 = lshr i64 %68, 32
  %71 = mul nuw i64 %69, %70
  %72 = add i64 %67, %9
  %73 = add i64 %72, %71
  %74 = getelementptr inbounds nuw i8, ptr %18, i32 56
  %75 = load i64, ptr %74, align 1
  %76 = xor i64 %75, -9134946782546652954
  %77 = and i64 %76, 4294967295
  %78 = lshr i64 %76, 32
  %79 = mul nuw i64 %77, %78
  %80 = add i64 %75, %8
  %81 = add i64 %80, %79
  %82 = getelementptr inbounds nuw i8, ptr %18, i32 64
  %83 = load i64, ptr %82, align 1
  %84 = xor i64 %83, -639039334258736852
  %85 = and i64 %84, 4294967295
  %86 = lshr i64 %84, 32
  %87 = mul nuw i64 %85, %86
  %88 = add i64 %25, %83
  %89 = add i64 %88, %87
  %90 = getelementptr inbounds nuw i8, ptr %18, i32 72
  %91 = load i64, ptr %90, align 1
  %92 = xor i64 %91, -8966499887502561815
  %93 = and i64 %92, 4294967295
  %94 = lshr i64 %92, 32
  %95 = mul nuw i64 %93, %94
  %96 = add i64 %33, %91
  %97 = add i64 %96, %95
  %98 = getelementptr inbounds nuw i8, ptr %18, i32 80
  %99 = load i64, ptr %98, align 1
  %100 = xor i64 %99, -5209706959179045724
  %101 = and i64 %100, 4294967295
  %102 = lshr i64 %100, 32
  %103 = mul nuw i64 %101, %102
  %104 = add i64 %41, %99
  %105 = add i64 %104, %103
  %106 = getelementptr inbounds nuw i8, ptr %18, i32 88
  %107 = load i64, ptr %106, align 1
  %108 = xor i64 %107, -3692699387471206834
  %109 = and i64 %108, 4294967295
  %110 = lshr i64 %108, 32
  %111 = mul nuw i64 %109, %110
  %112 = add i64 %49, %107
  %113 = add i64 %112, %111
  %114 = getelementptr inbounds nuw i8, ptr %18, i32 96
  %115 = load i64, ptr %114, align 1
  %116 = xor i64 %115, -3675093282664558467
  %117 = and i64 %116, 4294967295
  %118 = lshr i64 %116, 32
  %119 = mul nuw i64 %117, %118
  %120 = add i64 %57, %115
  %121 = add i64 %120, %119
  %122 = getelementptr inbounds nuw i8, ptr %18, i32 104
  %123 = load i64, ptr %122, align 1
  %124 = xor i64 %123, -629619327510231436
  %125 = and i64 %124, 4294967295
  %126 = lshr i64 %124, 32
  %127 = mul nuw i64 %125, %126
  %128 = add i64 %65, %123
  %129 = add i64 %128, %127
  %130 = getelementptr inbounds nuw i8, ptr %18, i32 112
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %131, -9134946782546652954
  %133 = and i64 %132, 4294967295
  %134 = lshr i64 %132, 32
  %135 = mul nuw i64 %133, %134
  %136 = add i64 %73, %131
  %137 = add i64 %136, %135
  %138 = getelementptr inbounds nuw i8, ptr %18, i32 120
  %139 = load i64, ptr %138, align 1
  %140 = xor i64 %139, -7943504444863786309
  %141 = and i64 %140, 4294967295
  %142 = lshr i64 %140, 32
  %143 = mul nuw i64 %141, %142
  %144 = add i64 %81, %139
  %145 = add i64 %144, %143
  %146 = getelementptr inbounds nuw i8, ptr %18, i32 128
  %147 = load i64, ptr %146, align 1
  %148 = xor i64 %147, -8966499887502561815
  %149 = and i64 %148, 4294967295
  %150 = lshr i64 %148, 32
  %151 = mul nuw i64 %149, %150
  %152 = add i64 %89, %147
  %153 = add i64 %152, %151
  %154 = getelementptr inbounds nuw i8, ptr %18, i32 136
  %155 = load i64, ptr %154, align 1
  %156 = xor i64 %155, -5209706959179045724
  %157 = and i64 %156, 4294967295
  %158 = lshr i64 %156, 32
  %159 = mul nuw i64 %157, %158
  %160 = add i64 %97, %155
  %161 = add i64 %160, %159
  %162 = getelementptr inbounds nuw i8, ptr %18, i32 144
  %163 = load i64, ptr %162, align 1
  %164 = xor i64 %163, -3692699387471206834
  %165 = and i64 %164, 4294967295
  %166 = lshr i64 %164, 32
  %167 = mul nuw i64 %165, %166
  %168 = add i64 %105, %163
  %169 = add i64 %168, %167
  %170 = getelementptr inbounds nuw i8, ptr %18, i32 152
  %171 = load i64, ptr %170, align 1
  %172 = xor i64 %171, -3675093282664558467
  %173 = and i64 %172, 4294967295
  %174 = lshr i64 %172, 32
  %175 = mul nuw i64 %173, %174
  %176 = add i64 %113, %171
  %177 = add i64 %176, %175
  %178 = getelementptr inbounds nuw i8, ptr %18, i32 160
  %179 = load i64, ptr %178, align 1
  %180 = xor i64 %179, -629619327510231436
  %181 = and i64 %180, 4294967295
  %182 = lshr i64 %180, 32
  %183 = mul nuw i64 %181, %182
  %184 = add i64 %121, %179
  %185 = add i64 %184, %183
  %186 = getelementptr inbounds nuw i8, ptr %18, i32 168
  %187 = load i64, ptr %186, align 1
  %188 = xor i64 %187, -9134946782546652954
  %189 = and i64 %188, 4294967295
  %190 = lshr i64 %188, 32
  %191 = mul nuw i64 %189, %190
  %192 = add i64 %129, %187
  %193 = add i64 %192, %191
  %194 = getelementptr inbounds nuw i8, ptr %18, i32 176
  %195 = load i64, ptr %194, align 1
  %196 = xor i64 %195, -7943504444863786309
  %197 = and i64 %196, 4294967295
  %198 = lshr i64 %196, 32
  %199 = mul nuw i64 %197, %198
  %200 = add i64 %137, %195
  %201 = add i64 %200, %199
  %202 = getelementptr inbounds nuw i8, ptr %18, i32 184
  %203 = load i64, ptr %202, align 1
  %204 = xor i64 %203, 1968968742000944523
  %205 = and i64 %204, 4294967295
  %206 = lshr i64 %204, 32
  %207 = mul nuw i64 %205, %206
  %208 = add i64 %145, %203
  %209 = add i64 %208, %207
  %210 = getelementptr inbounds nuw i8, ptr %18, i32 192
  %211 = load i64, ptr %210, align 1
  %212 = xor i64 %211, -5209706959179045724
  %213 = and i64 %212, 4294967295
  %214 = lshr i64 %212, 32
  %215 = mul nuw i64 %213, %214
  %216 = add i64 %153, %211
  %217 = add i64 %216, %215
  %218 = getelementptr inbounds nuw i8, ptr %18, i32 200
  %219 = load i64, ptr %218, align 1
  %220 = xor i64 %219, -3692699387471206834
  %221 = and i64 %220, 4294967295
  %222 = lshr i64 %220, 32
  %223 = mul nuw i64 %221, %222
  %224 = add i64 %161, %219
  %225 = add i64 %224, %223
  %226 = getelementptr inbounds nuw i8, ptr %18, i32 208
  %227 = load i64, ptr %226, align 1
  %228 = xor i64 %227, -3675093282664558467
  %229 = and i64 %228, 4294967295
  %230 = lshr i64 %228, 32
  %231 = mul nuw i64 %229, %230
  %232 = add i64 %169, %227
  %233 = add i64 %232, %231
  %234 = getelementptr inbounds nuw i8, ptr %18, i32 216
  %235 = load i64, ptr %234, align 1
  %236 = xor i64 %235, -629619327510231436
  %237 = and i64 %236, 4294967295
  %238 = lshr i64 %236, 32
  %239 = mul nuw i64 %237, %238
  %240 = add i64 %177, %235
  %241 = add i64 %240, %239
  %242 = getelementptr inbounds nuw i8, ptr %18, i32 224
  %243 = load i64, ptr %242, align 1
  %244 = xor i64 %243, -9134946782546652954
  %245 = and i64 %244, 4294967295
  %246 = lshr i64 %244, 32
  %247 = mul nuw i64 %245, %246
  %248 = add i64 %185, %243
  %249 = add i64 %248, %247
  %250 = getelementptr inbounds nuw i8, ptr %18, i32 232
  %251 = load i64, ptr %250, align 1
  %252 = xor i64 %251, -7943504444863786309
  %253 = and i64 %252, 4294967295
  %254 = lshr i64 %252, 32
  %255 = mul nuw i64 %253, %254
  %256 = add i64 %193, %251
  %257 = add i64 %256, %255
  %258 = getelementptr inbounds nuw i8, ptr %18, i32 240
  %259 = load i64, ptr %258, align 1
  %260 = xor i64 %259, 1968968742000944523
  %261 = and i64 %260, 4294967295
  %262 = lshr i64 %260, 32
  %263 = mul nuw i64 %261, %262
  %264 = add i64 %201, %259
  %265 = add i64 %264, %263
  %266 = getelementptr inbounds nuw i8, ptr %18, i32 248
  %267 = load i64, ptr %266, align 1
  %268 = xor i64 %267, -6769480549562824553
  %269 = and i64 %268, 4294967295
  %270 = lshr i64 %268, 32
  %271 = mul nuw i64 %269, %270
  %272 = add i64 %209, %267
  %273 = add i64 %272, %271
  %274 = getelementptr inbounds nuw i8, ptr %18, i32 256
  %275 = load i64, ptr %274, align 1
  %276 = xor i64 %275, -3692699387471206834
  %277 = and i64 %276, 4294967295
  %278 = lshr i64 %276, 32
  %279 = mul nuw i64 %277, %278
  %280 = add i64 %217, %275
  %281 = add i64 %280, %279
  %282 = getelementptr inbounds nuw i8, ptr %18, i32 264
  %283 = load i64, ptr %282, align 1
  %284 = xor i64 %283, -3675093282664558467
  %285 = and i64 %284, 4294967295
  %286 = lshr i64 %284, 32
  %287 = mul nuw i64 %285, %286
  %288 = add i64 %225, %283
  %289 = add i64 %288, %287
  %290 = getelementptr inbounds nuw i8, ptr %18, i32 272
  %291 = load i64, ptr %290, align 1
  %292 = xor i64 %291, -629619327510231436
  %293 = and i64 %292, 4294967295
  %294 = lshr i64 %292, 32
  %295 = mul nuw i64 %293, %294
  %296 = add i64 %233, %291
  %297 = add i64 %296, %295
  %298 = getelementptr inbounds nuw i8, ptr %18, i32 280
  %299 = load i64, ptr %298, align 1
  %300 = xor i64 %299, -9134946782546652954
  %301 = and i64 %300, 4294967295
  %302 = lshr i64 %300, 32
  %303 = mul nuw i64 %301, %302
  %304 = add i64 %241, %299
  %305 = add i64 %304, %303
  %306 = getelementptr inbounds nuw i8, ptr %18, i32 288
  %307 = load i64, ptr %306, align 1
  %308 = xor i64 %307, -7943504444863786309
  %309 = and i64 %308, 4294967295
  %310 = lshr i64 %308, 32
  %311 = mul nuw i64 %309, %310
  %312 = add i64 %249, %307
  %313 = add i64 %312, %311
  %314 = getelementptr inbounds nuw i8, ptr %18, i32 296
  %315 = load i64, ptr %314, align 1
  %316 = xor i64 %315, 1968968742000944523
  %317 = and i64 %316, 4294967295
  %318 = lshr i64 %316, 32
  %319 = mul nuw i64 %317, %318
  %320 = add i64 %257, %315
  %321 = add i64 %320, %319
  %322 = getelementptr inbounds nuw i8, ptr %18, i32 304
  %323 = load i64, ptr %322, align 1
  %324 = xor i64 %323, -6769480549562824553
  %325 = and i64 %324, 4294967295
  %326 = lshr i64 %324, 32
  %327 = mul nuw i64 %325, %326
  %328 = add i64 %265, %323
  %329 = add i64 %328, %327
  %330 = getelementptr inbounds nuw i8, ptr %18, i32 312
  %331 = load i64, ptr %330, align 1
  %332 = xor i64 %331, -6206333191815827642
  %333 = and i64 %332, 4294967295
  %334 = lshr i64 %332, 32
  %335 = mul nuw i64 %333, %334
  %336 = add i64 %273, %331
  %337 = add i64 %336, %335
  %338 = getelementptr inbounds nuw i8, ptr %18, i32 320
  %339 = load i64, ptr %338, align 1
  %340 = xor i64 %339, -3675093282664558467
  %341 = and i64 %340, 4294967295
  %342 = lshr i64 %340, 32
  %343 = mul nuw i64 %341, %342
  %344 = add i64 %281, %339
  %345 = add i64 %344, %343
  %346 = getelementptr inbounds nuw i8, ptr %18, i32 328
  %347 = load i64, ptr %346, align 1
  %348 = xor i64 %347, -629619327510231436
  %349 = and i64 %348, 4294967295
  %350 = lshr i64 %348, 32
  %351 = mul nuw i64 %349, %350
  %352 = add i64 %289, %347
  %353 = add i64 %352, %351
  %354 = getelementptr inbounds nuw i8, ptr %18, i32 336
  %355 = load i64, ptr %354, align 1
  %356 = xor i64 %355, -9134946782546652954
  %357 = and i64 %356, 4294967295
  %358 = lshr i64 %356, 32
  %359 = mul nuw i64 %357, %358
  %360 = add i64 %297, %355
  %361 = add i64 %360, %359
  %362 = getelementptr inbounds nuw i8, ptr %18, i32 344
  %363 = load i64, ptr %362, align 1
  %364 = xor i64 %363, -7943504444863786309
  %365 = and i64 %364, 4294967295
  %366 = lshr i64 %364, 32
  %367 = mul nuw i64 %365, %366
  %368 = add i64 %305, %363
  %369 = add i64 %368, %367
  %370 = getelementptr inbounds nuw i8, ptr %18, i32 352
  %371 = load i64, ptr %370, align 1
  %372 = xor i64 %371, 1968968742000944523
  %373 = and i64 %372, 4294967295
  %374 = lshr i64 %372, 32
  %375 = mul nuw i64 %373, %374
  %376 = add i64 %313, %371
  %377 = add i64 %376, %375
  %378 = getelementptr inbounds nuw i8, ptr %18, i32 360
  %379 = load i64, ptr %378, align 1
  %380 = xor i64 %379, -6769480549562824553
  %381 = and i64 %380, 4294967295
  %382 = lshr i64 %380, 32
  %383 = mul nuw i64 %381, %382
  %384 = add i64 %321, %379
  %385 = add i64 %384, %383
  %386 = getelementptr inbounds nuw i8, ptr %18, i32 368
  %387 = load i64, ptr %386, align 1
  %388 = xor i64 %387, -6206333191815827642
  %389 = and i64 %388, 4294967295
  %390 = lshr i64 %388, 32
  %391 = mul nuw i64 %389, %390
  %392 = add i64 %329, %387
  %393 = add i64 %392, %391
  %394 = getelementptr inbounds nuw i8, ptr %18, i32 376
  %395 = load i64, ptr %394, align 1
  %396 = xor i64 %395, -2045702682710477249
  %397 = and i64 %396, 4294967295
  %398 = lshr i64 %396, 32
  %399 = mul nuw i64 %397, %398
  %400 = add i64 %337, %395
  %401 = add i64 %400, %399
  %402 = getelementptr inbounds nuw i8, ptr %18, i32 384
  %403 = load i64, ptr %402, align 1
  %404 = xor i64 %403, -629619327510231436
  %405 = and i64 %404, 4294967295
  %406 = lshr i64 %404, 32
  %407 = mul nuw i64 %405, %406
  %408 = add i64 %345, %403
  %409 = add i64 %408, %407
  %410 = getelementptr inbounds nuw i8, ptr %18, i32 392
  %411 = load i64, ptr %410, align 1
  %412 = xor i64 %411, -9134946782546652954
  %413 = and i64 %412, 4294967295
  %414 = lshr i64 %412, 32
  %415 = mul nuw i64 %413, %414
  %416 = add i64 %353, %411
  %417 = add i64 %416, %415
  %418 = getelementptr inbounds nuw i8, ptr %18, i32 400
  %419 = load i64, ptr %418, align 1
  %420 = xor i64 %419, -7943504444863786309
  %421 = and i64 %420, 4294967295
  %422 = lshr i64 %420, 32
  %423 = mul nuw i64 %421, %422
  %424 = add i64 %361, %419
  %425 = add i64 %424, %423
  %426 = getelementptr inbounds nuw i8, ptr %18, i32 408
  %427 = load i64, ptr %426, align 1
  %428 = xor i64 %427, 1968968742000944523
  %429 = and i64 %428, 4294967295
  %430 = lshr i64 %428, 32
  %431 = mul nuw i64 %429, %430
  %432 = add i64 %369, %427
  %433 = add i64 %432, %431
  %434 = getelementptr inbounds nuw i8, ptr %18, i32 416
  %435 = load i64, ptr %434, align 1
  %436 = xor i64 %435, -6769480549562824553
  %437 = and i64 %436, 4294967295
  %438 = lshr i64 %436, 32
  %439 = mul nuw i64 %437, %438
  %440 = add i64 %377, %435
  %441 = add i64 %440, %439
  %442 = getelementptr inbounds nuw i8, ptr %18, i32 424
  %443 = load i64, ptr %442, align 1
  %444 = xor i64 %443, -6206333191815827642
  %445 = and i64 %444, 4294967295
  %446 = lshr i64 %444, 32
  %447 = mul nuw i64 %445, %446
  %448 = add i64 %385, %443
  %449 = add i64 %448, %447
  %450 = getelementptr inbounds nuw i8, ptr %18, i32 432
  %451 = load i64, ptr %450, align 1
  %452 = xor i64 %451, -2045702682710477249
  %453 = and i64 %452, 4294967295
  %454 = lshr i64 %452, 32
  %455 = mul nuw i64 %453, %454
  %456 = add i64 %393, %451
  %457 = add i64 %456, %455
  %458 = getelementptr inbounds nuw i8, ptr %18, i32 440
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %459, -4104099645253436473
  %461 = and i64 %460, 4294967295
  %462 = lshr i64 %460, 32
  %463 = mul nuw i64 %461, %462
  %464 = add i64 %401, %459
  %465 = add i64 %464, %463
  %466 = getelementptr inbounds nuw i8, ptr %18, i32 448
  %467 = load i64, ptr %466, align 1
  %468 = xor i64 %467, -9134946782546652954
  %469 = and i64 %468, 4294967295
  %470 = lshr i64 %468, 32
  %471 = mul nuw i64 %469, %470
  %472 = add i64 %409, %467
  %473 = add i64 %472, %471
  %474 = getelementptr inbounds nuw i8, ptr %18, i32 456
  %475 = load i64, ptr %474, align 1
  %476 = xor i64 %475, -7943504444863786309
  %477 = and i64 %476, 4294967295
  %478 = lshr i64 %476, 32
  %479 = mul nuw i64 %477, %478
  %480 = add i64 %417, %475
  %481 = add i64 %480, %479
  %482 = getelementptr inbounds nuw i8, ptr %18, i32 464
  %483 = load i64, ptr %482, align 1
  %484 = xor i64 %483, 1968968742000944523
  %485 = and i64 %484, 4294967295
  %486 = lshr i64 %484, 32
  %487 = mul nuw i64 %485, %486
  %488 = add i64 %425, %483
  %489 = add i64 %488, %487
  %490 = getelementptr inbounds nuw i8, ptr %18, i32 472
  %491 = load i64, ptr %490, align 1
  %492 = xor i64 %491, -6769480549562824553
  %493 = and i64 %492, 4294967295
  %494 = lshr i64 %492, 32
  %495 = mul nuw i64 %493, %494
  %496 = add i64 %433, %491
  %497 = add i64 %496, %495
  %498 = getelementptr inbounds nuw i8, ptr %18, i32 480
  %499 = load i64, ptr %498, align 1
  %500 = xor i64 %499, -6206333191815827642
  %501 = and i64 %500, 4294967295
  %502 = lshr i64 %500, 32
  %503 = mul nuw i64 %501, %502
  %504 = add i64 %441, %499
  %505 = add i64 %504, %503
  %506 = getelementptr inbounds nuw i8, ptr %18, i32 488
  %507 = load i64, ptr %506, align 1
  %508 = xor i64 %507, -2045702682710477249
  %509 = and i64 %508, 4294967295
  %510 = lshr i64 %508, 32
  %511 = mul nuw i64 %509, %510
  %512 = add i64 %449, %507
  %513 = add i64 %512, %511
  %514 = getelementptr inbounds nuw i8, ptr %18, i32 496
  %515 = load i64, ptr %514, align 1
  %516 = xor i64 %515, -4104099645253436473
  %517 = and i64 %516, 4294967295
  %518 = lshr i64 %516, 32
  %519 = mul nuw i64 %517, %518
  %520 = add i64 %457, %515
  %521 = add i64 %520, %519
  %522 = getelementptr inbounds nuw i8, ptr %18, i32 504
  %523 = load i64, ptr %522, align 1
  %524 = xor i64 %523, -3624173730817515445
  %525 = and i64 %524, 4294967295
  %526 = lshr i64 %524, 32
  %527 = mul nuw i64 %525, %526
  %528 = add i64 %465, %523
  %529 = add i64 %528, %527
  %530 = getelementptr inbounds nuw i8, ptr %18, i32 512
  %531 = load i64, ptr %530, align 1
  %532 = xor i64 %531, -7943504444863786309
  %533 = and i64 %532, 4294967295
  %534 = lshr i64 %532, 32
  %535 = mul nuw i64 %533, %534
  %536 = add i64 %473, %531
  %537 = add i64 %536, %535
  %538 = getelementptr inbounds nuw i8, ptr %18, i32 520
  %539 = load i64, ptr %538, align 1
  %540 = xor i64 %539, 1968968742000944523
  %541 = and i64 %540, 4294967295
  %542 = lshr i64 %540, 32
  %543 = mul nuw i64 %541, %542
  %544 = add i64 %481, %539
  %545 = add i64 %544, %543
  %546 = getelementptr inbounds nuw i8, ptr %18, i32 528
  %547 = load i64, ptr %546, align 1
  %548 = xor i64 %547, -6769480549562824553
  %549 = and i64 %548, 4294967295
  %550 = lshr i64 %548, 32
  %551 = mul nuw i64 %549, %550
  %552 = add i64 %489, %547
  %553 = add i64 %552, %551
  %554 = getelementptr inbounds nuw i8, ptr %18, i32 536
  %555 = load i64, ptr %554, align 1
  %556 = xor i64 %555, -6206333191815827642
  %557 = and i64 %556, 4294967295
  %558 = lshr i64 %556, 32
  %559 = mul nuw i64 %557, %558
  %560 = add i64 %497, %555
  %561 = add i64 %560, %559
  %562 = getelementptr inbounds nuw i8, ptr %18, i32 544
  %563 = load i64, ptr %562, align 1
  %564 = xor i64 %563, -2045702682710477249
  %565 = and i64 %564, 4294967295
  %566 = lshr i64 %564, 32
  %567 = mul nuw i64 %565, %566
  %568 = add i64 %505, %563
  %569 = add i64 %568, %567
  %570 = getelementptr inbounds nuw i8, ptr %18, i32 552
  %571 = load i64, ptr %570, align 1
  %572 = xor i64 %571, -4104099645253436473
  %573 = and i64 %572, 4294967295
  %574 = lshr i64 %572, 32
  %575 = mul nuw i64 %573, %574
  %576 = add i64 %513, %571
  %577 = add i64 %576, %575
  %578 = getelementptr inbounds nuw i8, ptr %18, i32 560
  %579 = load i64, ptr %578, align 1
  %580 = xor i64 %579, -3624173730817515445
  %581 = and i64 %580, 4294967295
  %582 = lshr i64 %580, 32
  %583 = mul nuw i64 %581, %582
  %584 = add i64 %521, %579
  %585 = add i64 %584, %583
  %586 = getelementptr inbounds nuw i8, ptr %18, i32 568
  %587 = load i64, ptr %586, align 1
  %588 = xor i64 %587, -2776342293574091063
  %589 = and i64 %588, 4294967295
  %590 = lshr i64 %588, 32
  %591 = mul nuw i64 %589, %590
  %592 = add i64 %529, %587
  %593 = add i64 %592, %591
  %594 = getelementptr inbounds nuw i8, ptr %18, i32 576
  %595 = load i64, ptr %594, align 1
  %596 = xor i64 %595, 1968968742000944523
  %597 = and i64 %596, 4294967295
  %598 = lshr i64 %596, 32
  %599 = mul nuw i64 %597, %598
  %600 = add i64 %537, %595
  %601 = add i64 %600, %599
  %602 = getelementptr inbounds nuw i8, ptr %18, i32 584
  %603 = load i64, ptr %602, align 1
  %604 = xor i64 %603, -6769480549562824553
  %605 = and i64 %604, 4294967295
  %606 = lshr i64 %604, 32
  %607 = mul nuw i64 %605, %606
  %608 = add i64 %545, %603
  %609 = add i64 %608, %607
  %610 = getelementptr inbounds nuw i8, ptr %18, i32 592
  %611 = load i64, ptr %610, align 1
  %612 = xor i64 %611, -6206333191815827642
  %613 = and i64 %612, 4294967295
  %614 = lshr i64 %612, 32
  %615 = mul nuw i64 %613, %614
  %616 = add i64 %553, %611
  %617 = add i64 %616, %615
  %618 = getelementptr inbounds nuw i8, ptr %18, i32 600
  %619 = load i64, ptr %618, align 1
  %620 = xor i64 %619, -2045702682710477249
  %621 = and i64 %620, 4294967295
  %622 = lshr i64 %620, 32
  %623 = mul nuw i64 %621, %622
  %624 = add i64 %561, %619
  %625 = add i64 %624, %623
  %626 = getelementptr inbounds nuw i8, ptr %18, i32 608
  %627 = load i64, ptr %626, align 1
  %628 = xor i64 %627, -4104099645253436473
  %629 = and i64 %628, 4294967295
  %630 = lshr i64 %628, 32
  %631 = mul nuw i64 %629, %630
  %632 = add i64 %569, %627
  %633 = add i64 %632, %631
  %634 = getelementptr inbounds nuw i8, ptr %18, i32 616
  %635 = load i64, ptr %634, align 1
  %636 = xor i64 %635, -3624173730817515445
  %637 = and i64 %636, 4294967295
  %638 = lshr i64 %636, 32
  %639 = mul nuw i64 %637, %638
  %640 = add i64 %577, %635
  %641 = add i64 %640, %639
  %642 = getelementptr inbounds nuw i8, ptr %18, i32 624
  %643 = load i64, ptr %642, align 1
  %644 = xor i64 %643, -2776342293574091063
  %645 = and i64 %644, 4294967295
  %646 = lshr i64 %644, 32
  %647 = mul nuw i64 %645, %646
  %648 = add i64 %585, %643
  %649 = add i64 %648, %647
  %650 = getelementptr inbounds nuw i8, ptr %18, i32 632
  %651 = load i64, ptr %650, align 1
  %652 = xor i64 %651, 3806645336748174467
  %653 = and i64 %652, 4294967295
  %654 = lshr i64 %652, 32
  %655 = mul nuw i64 %653, %654
  %656 = add i64 %593, %651
  %657 = add i64 %656, %655
  %658 = getelementptr inbounds nuw i8, ptr %18, i32 640
  %659 = load i64, ptr %658, align 1
  %660 = xor i64 %659, -6769480549562824553
  %661 = and i64 %660, 4294967295
  %662 = lshr i64 %660, 32
  %663 = mul nuw i64 %661, %662
  %664 = add i64 %601, %659
  %665 = add i64 %664, %663
  %666 = getelementptr inbounds nuw i8, ptr %18, i32 648
  %667 = load i64, ptr %666, align 1
  %668 = xor i64 %667, -6206333191815827642
  %669 = and i64 %668, 4294967295
  %670 = lshr i64 %668, 32
  %671 = mul nuw i64 %669, %670
  %672 = add i64 %609, %667
  %673 = add i64 %672, %671
  %674 = getelementptr inbounds nuw i8, ptr %18, i32 656
  %675 = load i64, ptr %674, align 1
  %676 = xor i64 %675, -2045702682710477249
  %677 = and i64 %676, 4294967295
  %678 = lshr i64 %676, 32
  %679 = mul nuw i64 %677, %678
  %680 = add i64 %617, %675
  %681 = add i64 %680, %679
  %682 = getelementptr inbounds nuw i8, ptr %18, i32 664
  %683 = load i64, ptr %682, align 1
  %684 = xor i64 %683, -4104099645253436473
  %685 = and i64 %684, 4294967295
  %686 = lshr i64 %684, 32
  %687 = mul nuw i64 %685, %686
  %688 = add i64 %625, %683
  %689 = add i64 %688, %687
  %690 = getelementptr inbounds nuw i8, ptr %18, i32 672
  %691 = load i64, ptr %690, align 1
  %692 = xor i64 %691, -3624173730817515445
  %693 = and i64 %692, 4294967295
  %694 = lshr i64 %692, 32
  %695 = mul nuw i64 %693, %694
  %696 = add i64 %633, %691
  %697 = add i64 %696, %695
  %698 = getelementptr inbounds nuw i8, ptr %18, i32 680
  %699 = load i64, ptr %698, align 1
  %700 = xor i64 %699, -2776342293574091063
  %701 = and i64 %700, 4294967295
  %702 = lshr i64 %700, 32
  %703 = mul nuw i64 %701, %702
  %704 = add i64 %641, %699
  %705 = add i64 %704, %703
  %706 = getelementptr inbounds nuw i8, ptr %18, i32 688
  %707 = load i64, ptr %706, align 1
  %708 = xor i64 %707, 3806645336748174467
  %709 = and i64 %708, 4294967295
  %710 = lshr i64 %708, 32
  %711 = mul nuw i64 %709, %710
  %712 = add i64 %649, %707
  %713 = add i64 %712, %711
  %714 = getelementptr inbounds nuw i8, ptr %18, i32 696
  %715 = load i64, ptr %714, align 1
  %716 = xor i64 %715, -426887675387993857
  %717 = and i64 %716, 4294967295
  %718 = lshr i64 %716, 32
  %719 = mul nuw i64 %717, %718
  %720 = add i64 %657, %715
  %721 = add i64 %720, %719
  %722 = getelementptr inbounds nuw i8, ptr %18, i32 704
  %723 = load i64, ptr %722, align 1
  %724 = xor i64 %723, -6206333191815827642
  %725 = and i64 %724, 4294967295
  %726 = lshr i64 %724, 32
  %727 = mul nuw i64 %725, %726
  %728 = add i64 %665, %723
  %729 = add i64 %728, %727
  %730 = getelementptr inbounds nuw i8, ptr %18, i32 712
  %731 = load i64, ptr %730, align 1
  %732 = xor i64 %731, -2045702682710477249
  %733 = and i64 %732, 4294967295
  %734 = lshr i64 %732, 32
  %735 = mul nuw i64 %733, %734
  %736 = add i64 %673, %731
  %737 = add i64 %736, %735
  %738 = getelementptr inbounds nuw i8, ptr %18, i32 720
  %739 = load i64, ptr %738, align 1
  %740 = xor i64 %739, -4104099645253436473
  %741 = and i64 %740, 4294967295
  %742 = lshr i64 %740, 32
  %743 = mul nuw i64 %741, %742
  %744 = add i64 %681, %739
  %745 = add i64 %744, %743
  %746 = getelementptr inbounds nuw i8, ptr %18, i32 728
  %747 = load i64, ptr %746, align 1
  %748 = xor i64 %747, -3624173730817515445
  %749 = and i64 %748, 4294967295
  %750 = lshr i64 %748, 32
  %751 = mul nuw i64 %749, %750
  %752 = add i64 %689, %747
  %753 = add i64 %752, %751
  %754 = getelementptr inbounds nuw i8, ptr %18, i32 736
  %755 = load i64, ptr %754, align 1
  %756 = xor i64 %755, -2776342293574091063
  %757 = and i64 %756, 4294967295
  %758 = lshr i64 %756, 32
  %759 = mul nuw i64 %757, %758
  %760 = add i64 %697, %755
  %761 = add i64 %760, %759
  %762 = getelementptr inbounds nuw i8, ptr %18, i32 744
  %763 = load i64, ptr %762, align 1
  %764 = xor i64 %763, 3806645336748174467
  %765 = and i64 %764, 4294967295
  %766 = lshr i64 %764, 32
  %767 = mul nuw i64 %765, %766
  %768 = add i64 %705, %763
  %769 = add i64 %768, %767
  %770 = getelementptr inbounds nuw i8, ptr %18, i32 752
  %771 = load i64, ptr %770, align 1
  %772 = xor i64 %771, -426887675387993857
  %773 = and i64 %772, 4294967295
  %774 = lshr i64 %772, 32
  %775 = mul nuw i64 %773, %774
  %776 = add i64 %713, %771
  %777 = add i64 %776, %775
  %778 = getelementptr inbounds nuw i8, ptr %18, i32 760
  %779 = load i64, ptr %778, align 1
  %780 = xor i64 %779, -5192410362903929519
  %781 = and i64 %780, 4294967295
  %782 = lshr i64 %780, 32
  %783 = mul nuw i64 %781, %782
  %784 = add i64 %721, %779
  %785 = add i64 %784, %783
  %786 = getelementptr inbounds nuw i8, ptr %18, i32 768
  %787 = load i64, ptr %786, align 1
  %788 = xor i64 %787, -2045702682710477249
  %789 = and i64 %788, 4294967295
  %790 = lshr i64 %788, 32
  %791 = mul nuw i64 %789, %790
  %792 = add i64 %729, %787
  %793 = add i64 %792, %791
  %794 = getelementptr inbounds nuw i8, ptr %18, i32 776
  %795 = load i64, ptr %794, align 1
  %796 = xor i64 %795, -4104099645253436473
  %797 = and i64 %796, 4294967295
  %798 = lshr i64 %796, 32
  %799 = mul nuw i64 %797, %798
  %800 = add i64 %737, %795
  %801 = add i64 %800, %799
  %802 = getelementptr inbounds nuw i8, ptr %18, i32 784
  %803 = load i64, ptr %802, align 1
  %804 = xor i64 %803, -3624173730817515445
  %805 = and i64 %804, 4294967295
  %806 = lshr i64 %804, 32
  %807 = mul nuw i64 %805, %806
  %808 = add i64 %745, %803
  %809 = add i64 %808, %807
  %810 = getelementptr inbounds nuw i8, ptr %18, i32 792
  %811 = load i64, ptr %810, align 1
  %812 = xor i64 %811, -2776342293574091063
  %813 = and i64 %812, 4294967295
  %814 = lshr i64 %812, 32
  %815 = mul nuw i64 %813, %814
  %816 = add i64 %753, %811
  %817 = add i64 %816, %815
  %818 = getelementptr inbounds nuw i8, ptr %18, i32 800
  %819 = load i64, ptr %818, align 1
  %820 = xor i64 %819, 3806645336748174467
  %821 = and i64 %820, 4294967295
  %822 = lshr i64 %820, 32
  %823 = mul nuw i64 %821, %822
  %824 = add i64 %761, %819
  %825 = add i64 %824, %823
  %826 = getelementptr inbounds nuw i8, ptr %18, i32 808
  %827 = load i64, ptr %826, align 1
  %828 = xor i64 %827, -426887675387993857
  %829 = and i64 %828, 4294967295
  %830 = lshr i64 %828, 32
  %831 = mul nuw i64 %829, %830
  %832 = add i64 %769, %827
  %833 = add i64 %832, %831
  %834 = getelementptr inbounds nuw i8, ptr %18, i32 816
  %835 = load i64, ptr %834, align 1
  %836 = xor i64 %835, -5192410362903929519
  %837 = and i64 %836, 4294967295
  %838 = lshr i64 %836, 32
  %839 = mul nuw i64 %837, %838
  %840 = add i64 %777, %835
  %841 = add i64 %840, %839
  %842 = getelementptr inbounds nuw i8, ptr %18, i32 824
  %843 = load i64, ptr %842, align 1
  %844 = xor i64 %843, 3014149081973282086
  %845 = and i64 %844, 4294967295
  %846 = lshr i64 %844, 32
  %847 = mul nuw i64 %845, %846
  %848 = add i64 %785, %843
  %849 = add i64 %848, %847
  %850 = getelementptr inbounds nuw i8, ptr %18, i32 832
  %851 = load i64, ptr %850, align 1
  %852 = xor i64 %851, -4104099645253436473
  %853 = and i64 %852, 4294967295
  %854 = lshr i64 %852, 32
  %855 = mul nuw i64 %853, %854
  %856 = add i64 %793, %851
  %857 = add i64 %856, %855
  %858 = getelementptr inbounds nuw i8, ptr %18, i32 840
  %859 = load i64, ptr %858, align 1
  %860 = xor i64 %859, -3624173730817515445
  %861 = and i64 %860, 4294967295
  %862 = lshr i64 %860, 32
  %863 = mul nuw i64 %861, %862
  %864 = add i64 %801, %859
  %865 = add i64 %864, %863
  %866 = getelementptr inbounds nuw i8, ptr %18, i32 848
  %867 = load i64, ptr %866, align 1
  %868 = xor i64 %867, -2776342293574091063
  %869 = and i64 %868, 4294967295
  %870 = lshr i64 %868, 32
  %871 = mul nuw i64 %869, %870
  %872 = add i64 %809, %867
  %873 = add i64 %872, %871
  %874 = getelementptr inbounds nuw i8, ptr %18, i32 856
  %875 = load i64, ptr %874, align 1
  %876 = xor i64 %875, 3806645336748174467
  %877 = and i64 %876, 4294967295
  %878 = lshr i64 %876, 32
  %879 = mul nuw i64 %877, %878
  %880 = add i64 %817, %875
  %881 = add i64 %880, %879
  %882 = getelementptr inbounds nuw i8, ptr %18, i32 864
  %883 = load i64, ptr %882, align 1
  %884 = xor i64 %883, -426887675387993857
  %885 = and i64 %884, 4294967295
  %886 = lshr i64 %884, 32
  %887 = mul nuw i64 %885, %886
  %888 = add i64 %825, %883
  %889 = add i64 %888, %887
  %890 = getelementptr inbounds nuw i8, ptr %18, i32 872
  %891 = load i64, ptr %890, align 1
  %892 = xor i64 %891, -5192410362903929519
  %893 = and i64 %892, 4294967295
  %894 = lshr i64 %892, 32
  %895 = mul nuw i64 %893, %894
  %896 = add i64 %833, %891
  %897 = add i64 %896, %895
  %898 = getelementptr inbounds nuw i8, ptr %18, i32 880
  %899 = load i64, ptr %898, align 1
  %900 = xor i64 %899, 3014149081973282086
  %901 = and i64 %900, 4294967295
  %902 = lshr i64 %900, 32
  %903 = mul nuw i64 %901, %902
  %904 = add i64 %841, %899
  %905 = add i64 %904, %903
  %906 = getelementptr inbounds nuw i8, ptr %18, i32 888
  %907 = load i64, ptr %906, align 1
  %908 = xor i64 %907, 9027362082514189912
  %909 = and i64 %908, 4294967295
  %910 = lshr i64 %908, 32
  %911 = mul nuw i64 %909, %910
  %912 = add i64 %849, %907
  %913 = add i64 %912, %911
  %914 = getelementptr inbounds nuw i8, ptr %18, i32 896
  %915 = load i64, ptr %914, align 1
  %916 = xor i64 %915, -3624173730817515445
  %917 = and i64 %916, 4294967295
  %918 = lshr i64 %916, 32
  %919 = mul nuw i64 %917, %918
  %920 = add i64 %857, %915
  %921 = add i64 %920, %919
  %922 = getelementptr inbounds nuw i8, ptr %18, i32 904
  %923 = load i64, ptr %922, align 1
  %924 = xor i64 %923, -2776342293574091063
  %925 = and i64 %924, 4294967295
  %926 = lshr i64 %924, 32
  %927 = mul nuw i64 %925, %926
  %928 = add i64 %865, %923
  %929 = add i64 %928, %927
  %930 = getelementptr inbounds nuw i8, ptr %18, i32 912
  %931 = load i64, ptr %930, align 1
  %932 = xor i64 %931, 3806645336748174467
  %933 = and i64 %932, 4294967295
  %934 = lshr i64 %932, 32
  %935 = mul nuw i64 %933, %934
  %936 = add i64 %873, %931
  %937 = add i64 %936, %935
  %938 = getelementptr inbounds nuw i8, ptr %18, i32 920
  %939 = load i64, ptr %938, align 1
  %940 = xor i64 %939, -426887675387993857
  %941 = and i64 %940, 4294967295
  %942 = lshr i64 %940, 32
  %943 = mul nuw i64 %941, %942
  %944 = add i64 %881, %939
  %945 = add i64 %944, %943
  %946 = getelementptr inbounds nuw i8, ptr %18, i32 928
  %947 = load i64, ptr %946, align 1
  %948 = xor i64 %947, -5192410362903929519
  %949 = and i64 %948, 4294967295
  %950 = lshr i64 %948, 32
  %951 = mul nuw i64 %949, %950
  %952 = add i64 %889, %947
  %953 = add i64 %952, %951
  %954 = getelementptr inbounds nuw i8, ptr %18, i32 936
  %955 = load i64, ptr %954, align 1
  %956 = xor i64 %955, 3014149081973282086
  %957 = and i64 %956, 4294967295
  %958 = lshr i64 %956, 32
  %959 = mul nuw i64 %957, %958
  %960 = add i64 %897, %955
  %961 = add i64 %960, %959
  %962 = getelementptr inbounds nuw i8, ptr %18, i32 944
  %963 = load i64, ptr %962, align 1
  %964 = xor i64 %963, 9027362082514189912
  %965 = and i64 %964, 4294967295
  %966 = lshr i64 %964, 32
  %967 = mul nuw i64 %965, %966
  %968 = add i64 %905, %963
  %969 = add i64 %968, %967
  %970 = getelementptr inbounds nuw i8, ptr %18, i32 952
  %971 = load i64, ptr %970, align 1
  %972 = xor i64 %971, 8849628031031490769
  %973 = and i64 %972, 4294967295
  %974 = lshr i64 %972, 32
  %975 = mul nuw i64 %973, %974
  %976 = add i64 %913, %971
  %977 = add i64 %976, %975
  %978 = getelementptr inbounds nuw i8, ptr %18, i32 960
  %979 = load i64, ptr %978, align 1
  %980 = xor i64 %979, -2776342293574091063
  %981 = and i64 %980, 4294967295
  %982 = lshr i64 %980, 32
  %983 = mul nuw i64 %981, %982
  %984 = add i64 %921, %979
  %985 = add i64 %984, %983
  %986 = getelementptr inbounds nuw i8, ptr %18, i32 968
  %987 = load i64, ptr %986, align 1
  %988 = xor i64 %987, 3806645336748174467
  %989 = and i64 %988, 4294967295
  %990 = lshr i64 %988, 32
  %991 = mul nuw i64 %989, %990
  %992 = add i64 %929, %987
  %993 = add i64 %992, %991
  %994 = getelementptr inbounds nuw i8, ptr %18, i32 976
  %995 = load i64, ptr %994, align 1
  %996 = xor i64 %995, -426887675387993857
  %997 = and i64 %996, 4294967295
  %998 = lshr i64 %996, 32
  %999 = mul nuw i64 %997, %998
  %1000 = add i64 %937, %995
  %1001 = add i64 %1000, %999
  %1002 = getelementptr inbounds nuw i8, ptr %18, i32 984
  %1003 = load i64, ptr %1002, align 1
  %1004 = xor i64 %1003, -5192410362903929519
  %1005 = and i64 %1004, 4294967295
  %1006 = lshr i64 %1004, 32
  %1007 = mul nuw i64 %1005, %1006
  %1008 = add i64 %945, %1003
  %1009 = add i64 %1008, %1007
  %1010 = getelementptr inbounds nuw i8, ptr %18, i32 992
  %1011 = load i64, ptr %1010, align 1
  %1012 = xor i64 %1011, 3014149081973282086
  %1013 = and i64 %1012, 4294967295
  %1014 = lshr i64 %1012, 32
  %1015 = mul nuw i64 %1013, %1014
  %1016 = add i64 %953, %1011
  %1017 = add i64 %1016, %1015
  %1018 = getelementptr inbounds nuw i8, ptr %18, i32 1000
  %1019 = load i64, ptr %1018, align 1
  %1020 = xor i64 %1019, 9027362082514189912
  %1021 = and i64 %1020, 4294967295
  %1022 = lshr i64 %1020, 32
  %1023 = mul nuw i64 %1021, %1022
  %1024 = add i64 %961, %1019
  %1025 = add i64 %1024, %1023
  %1026 = getelementptr inbounds nuw i8, ptr %18, i32 1008
  %1027 = load i64, ptr %1026, align 1
  %1028 = xor i64 %1027, 8849628031031490769
  %1029 = and i64 %1028, 4294967295
  %1030 = lshr i64 %1028, 32
  %1031 = mul nuw i64 %1029, %1030
  %1032 = add i64 %969, %1027
  %1033 = add i64 %1032, %1031
  %1034 = getelementptr inbounds nuw i8, ptr %18, i32 1016
  %1035 = load i64, ptr %1034, align 1
  %1036 = xor i64 %1035, -7703965541554505073
  %1037 = and i64 %1036, 4294967295
  %1038 = lshr i64 %1036, 32
  %1039 = mul nuw i64 %1037, %1038
  %1040 = add i64 %977, %1035
  %1041 = add i64 %1040, %1039
  %1042 = lshr i64 %985, 47
  %1043 = xor i64 %985, %1042
  %1044 = xor i64 %1043, 3806645336748174467
  %1045 = mul i64 %1044, 2654435761
  %1046 = lshr i64 %993, 47
  %1047 = xor i64 %993, %1046
  %1048 = xor i64 %1047, -426887675387993857
  %1049 = mul i64 %1048, 2654435761
  %1050 = lshr i64 %1001, 47
  %1051 = xor i64 %1001, %1050
  %1052 = xor i64 %1051, -5192410362903929519
  %1053 = mul i64 %1052, 2654435761
  %1054 = lshr i64 %1009, 47
  %1055 = xor i64 %1009, %1054
  %1056 = xor i64 %1055, 3014149081973282086
  %1057 = mul i64 %1056, 2654435761
  %1058 = lshr i64 %1017, 47
  %1059 = xor i64 %1017, %1058
  %1060 = xor i64 %1059, 9027362082514189912
  %1061 = mul i64 %1060, 2654435761
  %1062 = lshr i64 %1025, 47
  %1063 = xor i64 %1025, %1062
  %1064 = xor i64 %1063, 8849628031031490769
  %1065 = mul i64 %1064, 2654435761
  %1066 = lshr i64 %1033, 47
  %1067 = xor i64 %1033, %1066
  %1068 = xor i64 %1067, -7703965541554505073
  %1069 = mul i64 %1068, 2654435761
  %1070 = lshr i64 %1041, 47
  %1071 = xor i64 %1041, %1070
  %1072 = xor i64 %1071, -4950792452503503926
  %1073 = mul i64 %1072, 2654435761
  %1074 = add nuw nsw i32 %16, 1
  %1075 = icmp eq i32 %1074, %5
  br i1 %1075, label %1076, label %7

1076:                                             ; preds = %7, %3
  %1077 = phi i64 [ 0, %3 ], [ %1073, %7 ]
  %1078 = phi i64 [ %4, %3 ], [ %1069, %7 ]
  %1079 = phi i64 [ 2870177450012600261, %3 ], [ %1065, %7 ]
  %1080 = phi i64 [ -8796714831421723037, %3 ], [ %1061, %7 ]
  %1081 = phi i64 [ 1609587929392839161, %3 ], [ %1057, %7 ]
  %1082 = phi i64 [ -4417276706812531889, %3 ], [ %1053, %7 ]
  %1083 = phi i64 [ -7046029288634856825, %3 ], [ %1049, %7 ]
  %1084 = phi i64 [ %2, %3 ], [ %1045, %7 ]
  %1085 = lshr i32 %1, 6
  %1086 = and i32 %1085, 15
  %1087 = and i32 %1, -1024
  %1088 = getelementptr inbounds nuw i8, ptr %0, i32 %1087
  %1089 = icmp eq i32 %1086, 0
  br i1 %1089, label %1183, label %1090

1090:                                             ; preds = %1076, %1090
  %1091 = phi i64 [ %1180, %1090 ], [ %1077, %1076 ]
  %1092 = phi i64 [ %1170, %1090 ], [ %1078, %1076 ]
  %1093 = phi i64 [ %1160, %1090 ], [ %1079, %1076 ]
  %1094 = phi i64 [ %1150, %1090 ], [ %1080, %1076 ]
  %1095 = phi i64 [ %1140, %1090 ], [ %1081, %1076 ]
  %1096 = phi i64 [ %1130, %1090 ], [ %1082, %1076 ]
  %1097 = phi i64 [ %1120, %1090 ], [ %1083, %1076 ]
  %1098 = phi i64 [ %1110, %1090 ], [ %1084, %1076 ]
  %1099 = phi i64 [ %1114, %1090 ], [ 2568260970027576377, %1076 ]
  %1100 = phi i32 [ %1181, %1090 ], [ 0, %1076 ]
  %1101 = phi ptr [ %1113, %1090 ], [ @kKey, %1076 ]
  %1102 = shl nuw nsw i32 %1100, 6
  %1103 = getelementptr inbounds nuw i8, ptr %1088, i32 %1102
  %1104 = load i64, ptr %1103, align 1
  %1105 = xor i64 %1104, %1099
  %1106 = and i64 %1105, 4294967295
  %1107 = lshr i64 %1105, 32
  %1108 = mul nuw i64 %1106, %1107
  %1109 = add i64 %1104, %1098
  %1110 = add i64 %1109, %1108
  %1111 = getelementptr inbounds nuw i8, ptr %1103, i32 8
  %1112 = load i64, ptr %1111, align 1
  %1113 = getelementptr inbounds nuw i8, ptr %1101, i32 8
  %1114 = load i64, ptr %1113, align 4
  %1115 = xor i64 %1114, %1112
  %1116 = and i64 %1115, 4294967295
  %1117 = lshr i64 %1115, 32
  %1118 = mul nuw i64 %1116, %1117
  %1119 = add i64 %1112, %1097
  %1120 = add i64 %1119, %1118
  %1121 = getelementptr inbounds nuw i8, ptr %1103, i32 16
  %1122 = load i64, ptr %1121, align 1
  %1123 = getelementptr inbounds nuw i8, ptr %1101, i32 16
  %1124 = load i64, ptr %1123, align 4
  %1125 = xor i64 %1124, %1122
  %1126 = and i64 %1125, 4294967295
  %1127 = lshr i64 %1125, 32
  %1128 = mul nuw i64 %1126, %1127
  %1129 = add i64 %1122, %1096
  %1130 = add i64 %1129, %1128
  %1131 = getelementptr inbounds nuw i8, ptr %1103, i32 24
  %1132 = load i64, ptr %1131, align 1
  %1133 = getelementptr inbounds nuw i8, ptr %1101, i32 24
  %1134 = load i64, ptr %1133, align 4
  %1135 = xor i64 %1134, %1132
  %1136 = and i64 %1135, 4294967295
  %1137 = lshr i64 %1135, 32
  %1138 = mul nuw i64 %1136, %1137
  %1139 = add i64 %1132, %1095
  %1140 = add i64 %1139, %1138
  %1141 = getelementptr inbounds nuw i8, ptr %1103, i32 32
  %1142 = load i64, ptr %1141, align 1
  %1143 = getelementptr inbounds nuw i8, ptr %1101, i32 32
  %1144 = load i64, ptr %1143, align 4
  %1145 = xor i64 %1144, %1142
  %1146 = and i64 %1145, 4294967295
  %1147 = lshr i64 %1145, 32
  %1148 = mul nuw i64 %1146, %1147
  %1149 = add i64 %1142, %1094
  %1150 = add i64 %1149, %1148
  %1151 = getelementptr inbounds nuw i8, ptr %1103, i32 40
  %1152 = load i64, ptr %1151, align 1
  %1153 = getelementptr inbounds nuw i8, ptr %1101, i32 40
  %1154 = load i64, ptr %1153, align 4
  %1155 = xor i64 %1154, %1152
  %1156 = and i64 %1155, 4294967295
  %1157 = lshr i64 %1155, 32
  %1158 = mul nuw i64 %1156, %1157
  %1159 = add i64 %1152, %1093
  %1160 = add i64 %1159, %1158
  %1161 = getelementptr inbounds nuw i8, ptr %1103, i32 48
  %1162 = load i64, ptr %1161, align 1
  %1163 = getelementptr inbounds nuw i8, ptr %1101, i32 48
  %1164 = load i64, ptr %1163, align 4
  %1165 = xor i64 %1164, %1162
  %1166 = and i64 %1165, 4294967295
  %1167 = lshr i64 %1165, 32
  %1168 = mul nuw i64 %1166, %1167
  %1169 = add i64 %1162, %1092
  %1170 = add i64 %1169, %1168
  %1171 = getelementptr inbounds nuw i8, ptr %1103, i32 56
  %1172 = load i64, ptr %1171, align 1
  %1173 = getelementptr inbounds nuw i8, ptr %1101, i32 56
  %1174 = load i64, ptr %1173, align 4
  %1175 = xor i64 %1174, %1172
  %1176 = and i64 %1175, 4294967295
  %1177 = lshr i64 %1175, 32
  %1178 = mul nuw i64 %1176, %1177
  %1179 = add i64 %1172, %1091
  %1180 = add i64 %1179, %1178
  %1181 = add nuw nsw i32 %1100, 1
  %1182 = icmp eq i32 %1181, %1086
  br i1 %1182, label %1183, label %1090

1183:                                             ; preds = %1090, %1076
  %1184 = phi i64 [ %1077, %1076 ], [ %1180, %1090 ]
  %1185 = phi i64 [ %1078, %1076 ], [ %1170, %1090 ]
  %1186 = phi i64 [ %1079, %1076 ], [ %1160, %1090 ]
  %1187 = phi i64 [ %1080, %1076 ], [ %1150, %1090 ]
  %1188 = phi i64 [ %1081, %1076 ], [ %1140, %1090 ]
  %1189 = phi i64 [ %1082, %1076 ], [ %1130, %1090 ]
  %1190 = phi i64 [ %1083, %1076 ], [ %1120, %1090 ]
  %1191 = phi i64 [ %1084, %1076 ], [ %1110, %1090 ]
  %1192 = and i32 %1, 63
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1277, label %1194

1194:                                             ; preds = %1183
  %1195 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %1196 = getelementptr inbounds i8, ptr %1195, i32 -64
  %1197 = shl nuw nsw i32 %1086, 3
  %1198 = getelementptr inbounds nuw i8, ptr @kKey, i32 %1197
  %1199 = load i64, ptr %1196, align 1
  %1200 = load i64, ptr %1198, align 8
  %1201 = xor i64 %1200, %1199
  %1202 = and i64 %1201, 4294967295
  %1203 = lshr i64 %1201, 32
  %1204 = mul nuw i64 %1202, %1203
  %1205 = add i64 %1199, %1191
  %1206 = add i64 %1205, %1204
  %1207 = getelementptr inbounds i8, ptr %1195, i32 -56
  %1208 = load i64, ptr %1207, align 1
  %1209 = getelementptr inbounds nuw i8, ptr %1198, i32 8
  %1210 = load i64, ptr %1209, align 8
  %1211 = xor i64 %1210, %1208
  %1212 = and i64 %1211, 4294967295
  %1213 = lshr i64 %1211, 32
  %1214 = mul nuw i64 %1212, %1213
  %1215 = add i64 %1208, %1190
  %1216 = add i64 %1215, %1214
  %1217 = getelementptr inbounds i8, ptr %1195, i32 -48
  %1218 = load i64, ptr %1217, align 1
  %1219 = getelementptr inbounds nuw i8, ptr %1198, i32 16
  %1220 = load i64, ptr %1219, align 8
  %1221 = xor i64 %1220, %1218
  %1222 = and i64 %1221, 4294967295
  %1223 = lshr i64 %1221, 32
  %1224 = mul nuw i64 %1222, %1223
  %1225 = add i64 %1218, %1189
  %1226 = add i64 %1225, %1224
  %1227 = getelementptr inbounds i8, ptr %1195, i32 -40
  %1228 = load i64, ptr %1227, align 1
  %1229 = getelementptr inbounds nuw i8, ptr %1198, i32 24
  %1230 = load i64, ptr %1229, align 8
  %1231 = xor i64 %1230, %1228
  %1232 = and i64 %1231, 4294967295
  %1233 = lshr i64 %1231, 32
  %1234 = mul nuw i64 %1232, %1233
  %1235 = add i64 %1228, %1188
  %1236 = add i64 %1235, %1234
  %1237 = getelementptr inbounds i8, ptr %1195, i32 -32
  %1238 = load i64, ptr %1237, align 1
  %1239 = getelementptr inbounds nuw i8, ptr %1198, i32 32
  %1240 = load i64, ptr %1239, align 8
  %1241 = xor i64 %1240, %1238
  %1242 = and i64 %1241, 4294967295
  %1243 = lshr i64 %1241, 32
  %1244 = mul nuw i64 %1242, %1243
  %1245 = add i64 %1238, %1187
  %1246 = add i64 %1245, %1244
  %1247 = getelementptr inbounds i8, ptr %1195, i32 -24
  %1248 = load i64, ptr %1247, align 1
  %1249 = getelementptr inbounds nuw i8, ptr %1198, i32 40
  %1250 = load i64, ptr %1249, align 8
  %1251 = xor i64 %1250, %1248
  %1252 = and i64 %1251, 4294967295
  %1253 = lshr i64 %1251, 32
  %1254 = mul nuw i64 %1252, %1253
  %1255 = add i64 %1248, %1186
  %1256 = add i64 %1255, %1254
  %1257 = getelementptr inbounds i8, ptr %1195, i32 -16
  %1258 = load i64, ptr %1257, align 1
  %1259 = getelementptr inbounds nuw i8, ptr %1198, i32 48
  %1260 = load i64, ptr %1259, align 8
  %1261 = xor i64 %1260, %1258
  %1262 = and i64 %1261, 4294967295
  %1263 = lshr i64 %1261, 32
  %1264 = mul nuw i64 %1262, %1263
  %1265 = add i64 %1258, %1185
  %1266 = add i64 %1265, %1264
  %1267 = getelementptr inbounds i8, ptr %1195, i32 -8
  %1268 = load i64, ptr %1267, align 1
  %1269 = getelementptr inbounds nuw i8, ptr %1198, i32 56
  %1270 = load i64, ptr %1269, align 8
  %1271 = xor i64 %1270, %1268
  %1272 = and i64 %1271, 4294967295
  %1273 = lshr i64 %1271, 32
  %1274 = mul nuw i64 %1272, %1273
  %1275 = add i64 %1268, %1184
  %1276 = add i64 %1275, %1274
  br label %1277

1277:                                             ; preds = %1183, %1194
  %1278 = phi i64 [ %1184, %1183 ], [ %1276, %1194 ]
  %1279 = phi i64 [ %1185, %1183 ], [ %1266, %1194 ]
  %1280 = phi i64 [ %1186, %1183 ], [ %1256, %1194 ]
  %1281 = phi i64 [ %1187, %1183 ], [ %1246, %1194 ]
  %1282 = phi i64 [ %1188, %1183 ], [ %1236, %1194 ]
  %1283 = phi i64 [ %1189, %1183 ], [ %1226, %1194 ]
  %1284 = phi i64 [ %1190, %1183 ], [ %1216, %1194 ]
  %1285 = phi i64 [ %1191, %1183 ], [ %1206, %1194 ]
  %1286 = lshr i64 %2, 32
  %1287 = trunc nuw i64 %1286 to i32
  %1288 = add i32 %1287, -533360410
  %1289 = zext i32 %1288 to i64
  %1290 = trunc i64 %2 to i32
  %1291 = sub i32 -2126895540, %1290
  %1292 = zext i32 %1291 to i64
  %1293 = shl nuw i64 %1292, 32
  %1294 = or disjoint i64 %1293, %1289
  %1295 = add i32 %1290, -1207417228
  %1296 = zext i32 %1295 to i64
  %1297 = sub i32 -146594674, %1287
  %1298 = zext i32 %1297 to i64
  %1299 = shl nuw i64 %1298, 32
  %1300 = or disjoint i64 %1299, %1296
  %1301 = add i32 %1287, -2107977603
  %1302 = zext i32 %1301 to i64
  %1303 = sub i32 -855674335, %1290
  %1304 = zext i32 %1303 to i64
  %1305 = shl nuw i64 %1304, 32
  %1306 = or disjoint i64 %1305, %1302
  %1307 = add i32 %1290, -881203634
  %1308 = zext i32 %1307 to i64
  %1309 = sub i32 -859773576, %1287
  %1310 = zext i32 %1309 to i64
  %1311 = shl nuw i64 %1310, 32
  %1312 = or disjoint i64 %1311, %1308
  %1313 = add i32 %1287, 1916839076
  %1314 = zext i32 %1313 to i64
  %1315 = sub i32 -1212979425, %1290
  %1316 = zext i32 %1315 to i64
  %1317 = shl nuw i64 %1316, 32
  %1318 = or disjoint i64 %1317, %1314
  %1319 = add i32 %1290, -556503575
  %1320 = zext i32 %1319 to i64
  %1321 = sub i32 -2087675941, %1287
  %1322 = zext i32 %1321 to i64
  %1323 = shl nuw i64 %1322, 32
  %1324 = or disjoint i64 %1323, %1320
  %1325 = add i32 %1287, 2080473388
  %1326 = zext i32 %1325 to i64
  %1327 = sub i32 -148787940, %1290
  %1328 = zext i32 %1327 to i64
  %1329 = shl nuw i64 %1328, 32
  %1330 = or disjoint i64 %1329, %1326
  %1331 = add i32 %1290, -1191285703
  %1332 = zext i32 %1331 to i64
  %1333 = sub i32 597969854, %1287
  %1334 = zext i32 %1333 to i64
  %1335 = shl nuw i64 %1334, 32
  %1336 = or disjoint i64 %1335, %1332
  %1337 = zext i32 %1 to i64
  %1338 = mul i64 %1337, -7046029288634856825
  %1339 = xor i64 %1336, %1285
  %1340 = xor i64 %1330, %1284
  %1341 = lshr i64 %1339, 32
  %1342 = lshr i64 %1340, 32
  %1343 = mul nuw i64 %1342, %1341
  %1344 = and i64 %1339, 4294967295
  %1345 = mul nuw i64 %1342, %1344
  %1346 = and i64 %1340, 4294967295
  %1347 = mul nuw i64 %1346, %1341
  %1348 = mul nuw i64 %1346, %1344
  %1349 = shl i64 %1345, 32
  %1350 = add i64 %1349, %1348
  %1351 = icmp ult i64 %1350, %1348
  %1352 = zext i1 %1351 to i64
  %1353 = add i64 %1345, %1347
  %1354 = shl i64 %1353, 32
  %1355 = add i64 %1354, %1348
  %1356 = icmp ult i64 %1355, %1350
  %1357 = zext i1 %1356 to i64
  %1358 = lshr i64 %1345, 32
  %1359 = add nuw i64 %1358, %1343
  %1360 = lshr i64 %1347, 32
  %1361 = add nuw i64 %1359, %1360
  %1362 = add nuw i64 %1361, %1352
  %1363 = add nuw i64 %1362, %1357
  %1364 = xor i64 %1363, %1355
  %1365 = add i64 %1364, %1338
  %1366 = xor i64 %1324, %1283
  %1367 = xor i64 %1318, %1282
  %1368 = lshr i64 %1366, 32
  %1369 = lshr i64 %1367, 32
  %1370 = mul nuw i64 %1369, %1368
  %1371 = and i64 %1366, 4294967295
  %1372 = mul nuw i64 %1369, %1371
  %1373 = and i64 %1367, 4294967295
  %1374 = mul nuw i64 %1373, %1368
  %1375 = mul nuw i64 %1373, %1371
  %1376 = shl i64 %1372, 32
  %1377 = add i64 %1376, %1375
  %1378 = icmp ult i64 %1377, %1375
  %1379 = zext i1 %1378 to i64
  %1380 = add i64 %1372, %1374
  %1381 = shl i64 %1380, 32
  %1382 = add i64 %1381, %1375
  %1383 = icmp ult i64 %1382, %1377
  %1384 = zext i1 %1383 to i64
  %1385 = lshr i64 %1372, 32
  %1386 = add nuw i64 %1385, %1370
  %1387 = lshr i64 %1374, 32
  %1388 = add nuw i64 %1386, %1387
  %1389 = add nuw i64 %1388, %1379
  %1390 = add nuw i64 %1389, %1384
  %1391 = xor i64 %1390, %1382
  %1392 = add i64 %1365, %1391
  %1393 = xor i64 %1312, %1281
  %1394 = xor i64 %1306, %1280
  %1395 = lshr i64 %1393, 32
  %1396 = lshr i64 %1394, 32
  %1397 = mul nuw i64 %1396, %1395
  %1398 = and i64 %1393, 4294967295
  %1399 = mul nuw i64 %1396, %1398
  %1400 = and i64 %1394, 4294967295
  %1401 = mul nuw i64 %1400, %1395
  %1402 = mul nuw i64 %1400, %1398
  %1403 = shl i64 %1399, 32
  %1404 = add i64 %1403, %1402
  %1405 = icmp ult i64 %1404, %1402
  %1406 = zext i1 %1405 to i64
  %1407 = add i64 %1399, %1401
  %1408 = shl i64 %1407, 32
  %1409 = add i64 %1408, %1402
  %1410 = icmp ult i64 %1409, %1404
  %1411 = zext i1 %1410 to i64
  %1412 = lshr i64 %1399, 32
  %1413 = add nuw i64 %1412, %1397
  %1414 = lshr i64 %1401, 32
  %1415 = add nuw i64 %1413, %1414
  %1416 = add nuw i64 %1415, %1406
  %1417 = add nuw i64 %1416, %1411
  %1418 = xor i64 %1417, %1409
  %1419 = add i64 %1392, %1418
  %1420 = xor i64 %1300, %1279
  %1421 = xor i64 %1294, %1278
  %1422 = lshr i64 %1420, 32
  %1423 = lshr i64 %1421, 32
  %1424 = mul nuw i64 %1423, %1422
  %1425 = and i64 %1420, 4294967295
  %1426 = mul nuw i64 %1423, %1425
  %1427 = and i64 %1421, 4294967295
  %1428 = mul nuw i64 %1427, %1422
  %1429 = mul nuw i64 %1427, %1425
  %1430 = shl i64 %1426, 32
  %1431 = add i64 %1430, %1429
  %1432 = icmp ult i64 %1431, %1429
  %1433 = zext i1 %1432 to i64
  %1434 = add i64 %1426, %1428
  %1435 = shl i64 %1434, 32
  %1436 = add i64 %1435, %1429
  %1437 = icmp ult i64 %1436, %1431
  %1438 = zext i1 %1437 to i64
  %1439 = lshr i64 %1426, 32
  %1440 = add nuw i64 %1439, %1424
  %1441 = lshr i64 %1428, 32
  %1442 = add nuw i64 %1440, %1441
  %1443 = add nuw i64 %1442, %1433
  %1444 = add nuw i64 %1443, %1438
  %1445 = xor i64 %1444, %1436
  %1446 = add i64 %1419, %1445
  %1447 = lshr i64 %1446, 37
  %1448 = xor i64 %1447, %1446
  %1449 = mul i64 %1448, 1609587929392839161
  %1450 = lshr i64 %1449, 32
  %1451 = xor i64 %1450, %1449
  ret i64 %1451
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp ult i32 %1, 17
  br i1 %3, label %4, label %110

4:                                                ; preds = %2
  %5 = icmp samesign ugt i32 %1, 8
  br i1 %5, label %6, label %46

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, 2568260970027576377
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %10 = getelementptr inbounds i8, ptr %9, i32 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, -639039334258736852
  %13 = zext nneg i32 %1 to i64
  %14 = lshr i64 %8, 32
  %15 = lshr i64 %12, 32
  %16 = mul nuw i64 %15, %14
  %17 = and i64 %8, 4294967295
  %18 = mul nuw i64 %15, %17
  %19 = and i64 %12, 4294967295
  %20 = mul nuw i64 %19, %14
  %21 = mul nuw i64 %19, %17
  %22 = shl i64 %18, 32
  %23 = add i64 %22, %21
  %24 = icmp ult i64 %23, %21
  %25 = zext i1 %24 to i64
  %26 = add i64 %18, %20
  %27 = shl i64 %26, 32
  %28 = add i64 %27, %21
  %29 = icmp ult i64 %28, %23
  %30 = zext i1 %29 to i64
  %31 = lshr i64 %18, 32
  %32 = add nuw i64 %31, %16
  %33 = lshr i64 %20, 32
  %34 = add nuw i64 %32, %33
  %35 = add nuw i64 %34, %25
  %36 = add nuw i64 %35, %30
  %37 = xor i64 %36, %28
  %38 = add i64 %8, %13
  %39 = add i64 %38, %12
  %40 = add i64 %39, %37
  %41 = lshr i64 %40, 37
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  br label %385

46:                                               ; preds = %4
  %47 = icmp samesign ugt i32 %1, 3
  br i1 %47, label %48, label %83

48:                                               ; preds = %46
  %49 = load i32, ptr %0, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %51 = getelementptr inbounds i8, ptr %50, i32 -4
  %52 = load i32, ptr %51, align 1
  %53 = xor i32 %52, 597969854
  %54 = zext i32 %53 to i64
  %55 = zext nneg i32 %1 to i64
  %56 = mul nuw i64 %54, 2654435761
  %57 = xor i32 %49, -1191285703
  %58 = zext i32 %57 to i64
  %59 = mul nuw i64 %58, 2654435761
  %60 = mul nuw i64 %54, 2246822535
  %61 = mul nuw i64 %58, 2246822535
  %62 = mul i64 %58, -7046029288634856825
  %63 = icmp ult i64 %62, %61
  %64 = zext i1 %63 to i64
  %65 = add i64 %60, %59
  %66 = shl i64 %65, 32
  %67 = add i64 %66, %61
  %68 = icmp ult i64 %67, %62
  %69 = zext i1 %68 to i64
  %70 = lshr i64 %59, 32
  %71 = add nuw i64 %70, %56
  %72 = lshr i64 %60, 32
  %73 = add nuw i64 %71, %72
  %74 = add nuw i64 %73, %64
  %75 = add nuw i64 %74, %69
  %76 = xor i64 %75, %67
  %77 = add i64 %76, %55
  %78 = lshr i64 %77, 37
  %79 = xor i64 %78, %77
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  br label %385

83:                                               ; preds = %46
  %84 = icmp eq i32 %1, 0
  br i1 %84, label %385, label %85

85:                                               ; preds = %83
  %86 = load i8, ptr %0, align 1
  %87 = lshr i32 %1, 1
  %88 = getelementptr inbounds nuw i8, ptr %0, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr i8, ptr %0, i32 %1
  %91 = getelementptr i8, ptr %90, i32 -1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %86 to i32
  %94 = zext i8 %89 to i32
  %95 = shl nuw nsw i32 %94, 8
  %96 = or disjoint i32 %95, %93
  %97 = zext i8 %92 to i32
  %98 = shl nuw nsw i32 %97, 2
  %99 = add nuw nsw i32 %96, -1191285703
  %100 = zext i32 %99 to i64
  %101 = add nuw nsw i32 %1, 597969854
  %102 = add nuw nsw i32 %101, %98
  %103 = zext nneg i32 %102 to i64
  %104 = mul nuw nsw i64 %103, %100
  %105 = lshr i64 %104, 37
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %385

110:                                              ; preds = %2
  %111 = zext i32 %1 to i64
  %112 = mul i64 %111, -7046029288634856825
  %113 = icmp ugt i32 %1, 32
  br i1 %113, label %114, label %316

114:                                              ; preds = %110
  %115 = icmp ugt i32 %1, 64
  br i1 %115, label %116, label %251

116:                                              ; preds = %114
  %117 = icmp ugt i32 %1, 96
  br i1 %117, label %118, label %186

118:                                              ; preds = %116
  %119 = icmp ugt i32 %1, 128
  br i1 %119, label %120, label %122

120:                                              ; preds = %118
  %121 = tail call fastcc i64 @XXH3_hashLong_64b(ptr noundef readonly %0, i32 noundef %1, i64 noundef 0)
  br label %385

122:                                              ; preds = %118
  %123 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, -2045702682710477249
  %128 = xor i64 %126, -4104099645253436473
  %129 = lshr i64 %127, 32
  %130 = lshr i64 %128, 32
  %131 = mul nuw i64 %130, %129
  %132 = and i64 %127, 4294967295
  %133 = mul nuw i64 %130, %132
  %134 = and i64 %128, 4294967295
  %135 = mul nuw i64 %134, %129
  %136 = mul nuw i64 %134, %132
  %137 = shl i64 %133, 32
  %138 = add i64 %137, %136
  %139 = icmp ult i64 %138, %136
  %140 = zext i1 %139 to i64
  %141 = add i64 %133, %135
  %142 = shl i64 %141, 32
  %143 = add i64 %142, %136
  %144 = icmp ult i64 %143, %138
  %145 = zext i1 %144 to i64
  %146 = lshr i64 %133, 32
  %147 = add nuw i64 %146, %131
  %148 = lshr i64 %135, 32
  %149 = add nuw i64 %147, %148
  %150 = add nuw i64 %149, %140
  %151 = add nuw i64 %150, %145
  %152 = xor i64 %151, %143
  %153 = add i64 %152, %112
  %154 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %155 = getelementptr inbounds i8, ptr %154, i32 -64
  %156 = load i64, ptr %155, align 1
  %157 = getelementptr inbounds i8, ptr %154, i32 -56
  %158 = load i64, ptr %157, align 1
  %159 = xor i64 %156, -3624173730817515445
  %160 = xor i64 %158, -2776342293574091063
  %161 = lshr i64 %159, 32
  %162 = lshr i64 %160, 32
  %163 = mul nuw i64 %162, %161
  %164 = and i64 %159, 4294967295
  %165 = mul nuw i64 %162, %164
  %166 = and i64 %160, 4294967295
  %167 = mul nuw i64 %166, %161
  %168 = mul nuw i64 %166, %164
  %169 = shl i64 %165, 32
  %170 = add i64 %169, %168
  %171 = icmp ult i64 %170, %168
  %172 = zext i1 %171 to i64
  %173 = add i64 %165, %167
  %174 = shl i64 %173, 32
  %175 = add i64 %174, %168
  %176 = icmp ult i64 %175, %170
  %177 = zext i1 %176 to i64
  %178 = lshr i64 %165, 32
  %179 = add nuw i64 %178, %163
  %180 = lshr i64 %167, 32
  %181 = add nuw i64 %179, %180
  %182 = add nuw i64 %181, %172
  %183 = add nuw i64 %182, %177
  %184 = xor i64 %183, %175
  %185 = add i64 %153, %184
  br label %186

186:                                              ; preds = %122, %116
  %187 = phi i64 [ %185, %122 ], [ %112, %116 ]
  %188 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %189 = load i64, ptr %188, align 1
  %190 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %191 = load i64, ptr %190, align 1
  %192 = xor i64 %189, -7943504444863786309
  %193 = xor i64 %191, 1968968742000944523
  %194 = lshr i64 %192, 32
  %195 = lshr i64 %193, 32
  %196 = mul nuw i64 %195, %194
  %197 = and i64 %192, 4294967295
  %198 = mul nuw i64 %195, %197
  %199 = and i64 %193, 4294967295
  %200 = mul nuw i64 %199, %194
  %201 = mul nuw i64 %199, %197
  %202 = shl i64 %198, 32
  %203 = add i64 %202, %201
  %204 = icmp ult i64 %203, %201
  %205 = zext i1 %204 to i64
  %206 = add i64 %198, %200
  %207 = shl i64 %206, 32
  %208 = add i64 %207, %201
  %209 = icmp ult i64 %208, %203
  %210 = zext i1 %209 to i64
  %211 = lshr i64 %198, 32
  %212 = add nuw i64 %211, %196
  %213 = lshr i64 %200, 32
  %214 = add nuw i64 %212, %213
  %215 = add nuw i64 %214, %205
  %216 = add nuw i64 %215, %210
  %217 = xor i64 %216, %208
  %218 = add i64 %217, %187
  %219 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %220 = getelementptr inbounds i8, ptr %219, i32 -48
  %221 = load i64, ptr %220, align 1
  %222 = getelementptr inbounds i8, ptr %219, i32 -40
  %223 = load i64, ptr %222, align 1
  %224 = xor i64 %221, -6769480549562824553
  %225 = xor i64 %223, -6206333191815827642
  %226 = lshr i64 %224, 32
  %227 = lshr i64 %225, 32
  %228 = mul nuw i64 %227, %226
  %229 = and i64 %224, 4294967295
  %230 = mul nuw i64 %227, %229
  %231 = and i64 %225, 4294967295
  %232 = mul nuw i64 %231, %226
  %233 = mul nuw i64 %231, %229
  %234 = shl i64 %230, 32
  %235 = add i64 %234, %233
  %236 = icmp ult i64 %235, %233
  %237 = zext i1 %236 to i64
  %238 = add i64 %230, %232
  %239 = shl i64 %238, 32
  %240 = add i64 %239, %233
  %241 = icmp ult i64 %240, %235
  %242 = zext i1 %241 to i64
  %243 = lshr i64 %230, 32
  %244 = add nuw i64 %243, %228
  %245 = lshr i64 %232, 32
  %246 = add nuw i64 %244, %245
  %247 = add nuw i64 %246, %237
  %248 = add nuw i64 %247, %242
  %249 = xor i64 %248, %240
  %250 = add i64 %218, %249
  br label %251

251:                                              ; preds = %186, %114
  %252 = phi i64 [ %250, %186 ], [ %112, %114 ]
  %253 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %254 = load i64, ptr %253, align 1
  %255 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %256 = load i64, ptr %255, align 1
  %257 = xor i64 %254, -3692699387471206834
  %258 = xor i64 %256, -3675093282664558467
  %259 = lshr i64 %257, 32
  %260 = lshr i64 %258, 32
  %261 = mul nuw i64 %260, %259
  %262 = and i64 %257, 4294967295
  %263 = mul nuw i64 %260, %262
  %264 = and i64 %258, 4294967295
  %265 = mul nuw i64 %264, %259
  %266 = mul nuw i64 %264, %262
  %267 = shl i64 %263, 32
  %268 = add i64 %267, %266
  %269 = icmp ult i64 %268, %266
  %270 = zext i1 %269 to i64
  %271 = add i64 %263, %265
  %272 = shl i64 %271, 32
  %273 = add i64 %272, %266
  %274 = icmp ult i64 %273, %268
  %275 = zext i1 %274 to i64
  %276 = lshr i64 %263, 32
  %277 = add nuw i64 %276, %261
  %278 = lshr i64 %265, 32
  %279 = add nuw i64 %277, %278
  %280 = add nuw i64 %279, %270
  %281 = add nuw i64 %280, %275
  %282 = xor i64 %281, %273
  %283 = add i64 %282, %252
  %284 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %285 = getelementptr inbounds i8, ptr %284, i32 -32
  %286 = load i64, ptr %285, align 1
  %287 = getelementptr inbounds i8, ptr %284, i32 -24
  %288 = load i64, ptr %287, align 1
  %289 = xor i64 %286, -629619327510231436
  %290 = xor i64 %288, -9134946782546652954
  %291 = lshr i64 %289, 32
  %292 = lshr i64 %290, 32
  %293 = mul nuw i64 %292, %291
  %294 = and i64 %289, 4294967295
  %295 = mul nuw i64 %292, %294
  %296 = and i64 %290, 4294967295
  %297 = mul nuw i64 %296, %291
  %298 = mul nuw i64 %296, %294
  %299 = shl i64 %295, 32
  %300 = add i64 %299, %298
  %301 = icmp ult i64 %300, %298
  %302 = zext i1 %301 to i64
  %303 = add i64 %295, %297
  %304 = shl i64 %303, 32
  %305 = add i64 %304, %298
  %306 = icmp ult i64 %305, %300
  %307 = zext i1 %306 to i64
  %308 = lshr i64 %295, 32
  %309 = add nuw i64 %308, %293
  %310 = lshr i64 %297, 32
  %311 = add nuw i64 %309, %310
  %312 = add nuw i64 %311, %302
  %313 = add nuw i64 %312, %307
  %314 = xor i64 %313, %305
  %315 = add i64 %283, %314
  br label %316

316:                                              ; preds = %251, %110
  %317 = phi i64 [ %315, %251 ], [ %112, %110 ]
  %318 = load i64, ptr %0, align 1
  %319 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %320 = load i64, ptr %319, align 1
  %321 = xor i64 %318, 2568260970027576377
  %322 = xor i64 %320, -639039334258736852
  %323 = lshr i64 %321, 32
  %324 = lshr i64 %322, 32
  %325 = mul nuw i64 %324, %323
  %326 = and i64 %321, 4294967295
  %327 = mul nuw i64 %324, %326
  %328 = and i64 %322, 4294967295
  %329 = mul nuw i64 %328, %323
  %330 = mul nuw i64 %328, %326
  %331 = shl i64 %327, 32
  %332 = add i64 %331, %330
  %333 = icmp ult i64 %332, %330
  %334 = zext i1 %333 to i64
  %335 = add i64 %327, %329
  %336 = shl i64 %335, 32
  %337 = add i64 %336, %330
  %338 = icmp ult i64 %337, %332
  %339 = zext i1 %338 to i64
  %340 = lshr i64 %327, 32
  %341 = add nuw i64 %340, %325
  %342 = lshr i64 %329, 32
  %343 = add nuw i64 %341, %342
  %344 = add nuw i64 %343, %334
  %345 = add nuw i64 %344, %339
  %346 = xor i64 %345, %337
  %347 = add i64 %346, %317
  %348 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %349 = getelementptr inbounds i8, ptr %348, i32 -16
  %350 = load i64, ptr %349, align 1
  %351 = getelementptr inbounds i8, ptr %348, i32 -8
  %352 = load i64, ptr %351, align 1
  %353 = xor i64 %350, -8966499887502561815
  %354 = xor i64 %352, -5209706959179045724
  %355 = lshr i64 %353, 32
  %356 = lshr i64 %354, 32
  %357 = mul nuw i64 %356, %355
  %358 = and i64 %353, 4294967295
  %359 = mul nuw i64 %356, %358
  %360 = and i64 %354, 4294967295
  %361 = mul nuw i64 %360, %355
  %362 = mul nuw i64 %360, %358
  %363 = shl i64 %359, 32
  %364 = add i64 %363, %362
  %365 = icmp ult i64 %364, %362
  %366 = zext i1 %365 to i64
  %367 = add i64 %359, %361
  %368 = shl i64 %367, 32
  %369 = add i64 %368, %362
  %370 = icmp ult i64 %369, %364
  %371 = zext i1 %370 to i64
  %372 = lshr i64 %359, 32
  %373 = add nuw i64 %372, %357
  %374 = lshr i64 %361, 32
  %375 = add nuw i64 %373, %374
  %376 = add nuw i64 %375, %366
  %377 = add nuw i64 %376, %371
  %378 = xor i64 %377, %369
  %379 = add i64 %347, %378
  %380 = lshr i64 %379, 37
  %381 = xor i64 %380, %379
  %382 = mul i64 %381, 1609587929392839161
  %383 = lshr i64 %382, 32
  %384 = xor i64 %383, %382
  br label %385

385:                                              ; preds = %6, %48, %83, %85, %120, %316
  %386 = phi i64 [ %121, %120 ], [ %384, %316 ], [ %45, %6 ], [ %82, %48 ], [ %109, %85 ], [ 0, %83 ]
  ret i64 %386
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @XXH3_128bits_withSeed(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 4 %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  %5 = icmp ult i32 %2, 17
  br i1 %5, label %6, label %166

6:                                                ; preds = %4
  %7 = icmp samesign ugt i32 %2, 8
  br i1 %7, label %8, label %83

8:                                                ; preds = %6
  %9 = zext nneg i32 %2 to i64
  %10 = add i64 %3, %9
  %11 = mul i64 %10, -7046029288634856825
  %12 = sub i64 %9, %3
  %13 = mul i64 %12, -4417276706812531889
  %14 = load i64, ptr %1, align 1
  %15 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %16 = getelementptr inbounds i8, ptr %15, i32 -8
  %17 = load i64, ptr %16, align 1
  %18 = add i64 %14, 2568260970027576377
  %19 = add i64 %17, -639039334258736852
  %20 = lshr i64 %18, 32
  %21 = lshr i64 %19, 32
  %22 = mul nuw i64 %21, %20
  %23 = and i64 %18, 4294967295
  %24 = mul nuw i64 %21, %23
  %25 = and i64 %19, 4294967295
  %26 = mul nuw i64 %25, %20
  %27 = mul nuw i64 %25, %23
  %28 = shl i64 %24, 32
  %29 = add i64 %28, %27
  %30 = icmp ult i64 %29, %27
  %31 = zext i1 %30 to i64
  %32 = add i64 %24, %26
  %33 = shl i64 %32, 32
  %34 = add i64 %33, %27
  %35 = icmp ult i64 %34, %29
  %36 = zext i1 %35 to i64
  %37 = lshr i64 %24, 32
  %38 = add nuw i64 %37, %22
  %39 = lshr i64 %26, 32
  %40 = add nuw i64 %38, %39
  %41 = add nuw i64 %40, %31
  %42 = add nuw i64 %41, %36
  %43 = xor i64 %42, %34
  %44 = add i64 %43, %11
  %45 = add i64 %14, -8966499887502561815
  %46 = add i64 %17, -5209706959179045724
  %47 = lshr i64 %45, 32
  %48 = lshr i64 %46, 32
  %49 = mul nuw i64 %48, %47
  %50 = and i64 %45, 4294967295
  %51 = mul nuw i64 %48, %50
  %52 = and i64 %46, 4294967295
  %53 = mul nuw i64 %52, %47
  %54 = mul nuw i64 %52, %50
  %55 = shl i64 %51, 32
  %56 = add i64 %55, %54
  %57 = icmp ult i64 %56, %54
  %58 = zext i1 %57 to i64
  %59 = add i64 %51, %53
  %60 = shl i64 %59, 32
  %61 = add i64 %60, %54
  %62 = icmp ult i64 %61, %56
  %63 = zext i1 %62 to i64
  %64 = lshr i64 %51, 32
  %65 = add nuw i64 %64, %49
  %66 = lshr i64 %53, 32
  %67 = add nuw i64 %65, %66
  %68 = add nuw i64 %67, %58
  %69 = add nuw i64 %68, %63
  %70 = xor i64 %69, %61
  %71 = add i64 %70, %13
  %72 = lshr i64 %44, 37
  %73 = xor i64 %72, %44
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  store i64 %76, ptr %0, align 4, !alias.scope !14
  %77 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %78 = lshr i64 %71, 37
  %79 = xor i64 %78, %71
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  store i64 %82, ptr %77, align 4, !alias.scope !14
  br label %473

83:                                               ; preds = %6
  %84 = icmp samesign ugt i32 %2, 3
  br i1 %84, label %85, label %122

85:                                               ; preds = %83
  %86 = load i32, ptr %1, align 1
  %87 = trunc i64 %3 to i32
  %88 = add i32 %87, -1191285703
  %89 = add i32 %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %91 = getelementptr inbounds i8, ptr %90, i32 -4
  %92 = load i32, ptr %91, align 1
  %93 = lshr i64 %3, 32
  %94 = trunc nuw i64 %93 to i32
  %95 = add i32 %94, 597969854
  %96 = add i32 %95, %92
  %97 = add i32 %89, %2
  %98 = zext i32 %97 to i64
  %99 = zext i32 %96 to i64
  %100 = shl nuw i64 %99, 32
  %101 = or disjoint i64 %100, %98
  %102 = zext i32 %89 to i64
  %103 = mul nuw i64 %99, %102
  %104 = add i64 %101, %103
  %105 = zext nneg i32 %2 to i64
  %106 = mul i64 %105, -7046029288634856825
  %107 = mul i64 %102, -4417276706812531889
  %108 = add i64 %107, %106
  %109 = mul i64 %99, 1609587929392839161
  %110 = add i64 %108, %109
  %111 = lshr i64 %104, 37
  %112 = xor i64 %111, %104
  %113 = mul i64 %112, 1609587929392839161
  %114 = lshr i64 %113, 32
  %115 = xor i64 %114, %113
  store i64 %115, ptr %0, align 4, !alias.scope !17
  %116 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %117 = lshr i64 %110, 37
  %118 = xor i64 %117, %110
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  store i64 %121, ptr %116, align 4, !alias.scope !17
  br label %473

122:                                              ; preds = %83
  %123 = icmp eq i32 %2, 0
  br i1 %123, label %163, label %124

124:                                              ; preds = %122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %125 = load i8, ptr %1, align 1, !noalias !20
  %126 = lshr i32 %2, 1
  %127 = getelementptr inbounds nuw i8, ptr %1, i32 %126
  %128 = load i8, ptr %127, align 1, !noalias !20
  %129 = getelementptr i8, ptr %1, i32 %2
  %130 = getelementptr i8, ptr %129, i32 -1
  %131 = load i8, ptr %130, align 1, !noalias !20
  %132 = zext i8 %125 to i32
  %133 = zext i8 %128 to i32
  %134 = shl nuw nsw i32 %133, 8
  %135 = or disjoint i32 %134, %132
  %136 = zext i8 %131 to i32
  %137 = shl nuw nsw i32 %136, 2
  %138 = or disjoint i32 %137, %2
  %139 = trunc i64 %3 to i32
  %140 = add i32 %139, -1191285703
  %141 = add i32 %140, %135
  %142 = zext i32 %141 to i64
  %143 = add nuw nsw i32 %138, 597969854
  %144 = zext nneg i32 %143 to i64
  %145 = mul nuw nsw i64 %144, %142
  %146 = add nuw nsw i32 %135, 2080473388
  %147 = zext nneg i32 %146 to i64
  %148 = sub i32 %138, %139
  %149 = add i32 %148, -148787940
  %150 = zext i32 %149 to i64
  %151 = mul nuw nsw i64 %150, %147
  %152 = lshr i64 %145, 37
  %153 = xor i64 %152, %145
  %154 = mul i64 %153, 1609587929392839161
  %155 = lshr i64 %154, 32
  %156 = xor i64 %155, %154
  store i64 %156, ptr %0, align 4, !alias.scope !20
  %157 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %158 = lshr i64 %151, 37
  %159 = xor i64 %158, %151
  %160 = mul i64 %159, 1609587929392839161
  %161 = lshr i64 %160, 32
  %162 = xor i64 %161, %160
  store i64 %162, ptr %157, align 4, !alias.scope !20
  br label %473

163:                                              ; preds = %122
  store i64 %3, ptr %0, align 4, !alias.scope !23
  %164 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %165 = sub i64 0, %3
  store i64 %165, ptr %164, align 4, !alias.scope !23
  br label %473

166:                                              ; preds = %4
  %167 = zext i32 %2 to i64
  %168 = add i64 %3, %167
  %169 = mul i64 %168, -7046029288634856825
  %170 = icmp ugt i32 %2, 32
  br i1 %170, label %171, label %385

171:                                              ; preds = %166
  %172 = icmp ugt i32 %2, 64
  br i1 %172, label %173, label %315

173:                                              ; preds = %171
  %174 = icmp ugt i32 %2, 96
  br i1 %174, label %175, label %245

175:                                              ; preds = %173
  %176 = icmp ugt i32 %2, 128
  br i1 %176, label %177, label %178

177:                                              ; preds = %175
  tail call fastcc void @XXH3_hashLong_128b(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1, i32 noundef %2, i64 noundef %3)
  br label %473

178:                                              ; preds = %175
  %179 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %180 = load i64, ptr %179, align 1
  %181 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %182 = load i64, ptr %181, align 1
  %183 = add i64 %3, -2045702682710477249
  %184 = xor i64 %180, %183
  %185 = sub i64 -4104099645253436473, %3
  %186 = xor i64 %182, %185
  %187 = lshr i64 %184, 32
  %188 = lshr i64 %186, 32
  %189 = mul nuw i64 %188, %187
  %190 = and i64 %184, 4294967295
  %191 = mul nuw i64 %188, %190
  %192 = and i64 %186, 4294967295
  %193 = mul nuw i64 %192, %187
  %194 = mul nuw i64 %192, %190
  %195 = shl i64 %191, 32
  %196 = add i64 %195, %194
  %197 = icmp ult i64 %196, %194
  %198 = zext i1 %197 to i64
  %199 = add i64 %191, %193
  %200 = shl i64 %199, 32
  %201 = add i64 %200, %194
  %202 = icmp ult i64 %201, %196
  %203 = zext i1 %202 to i64
  %204 = lshr i64 %191, 32
  %205 = add nuw i64 %204, %189
  %206 = lshr i64 %193, 32
  %207 = add nuw i64 %205, %206
  %208 = add nuw i64 %207, %198
  %209 = add nuw i64 %208, %203
  %210 = xor i64 %209, %201
  %211 = add i64 %210, %169
  %212 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %213 = getelementptr inbounds i8, ptr %212, i32 -64
  %214 = load i64, ptr %213, align 1
  %215 = getelementptr inbounds i8, ptr %212, i32 -56
  %216 = load i64, ptr %215, align 1
  %217 = add i64 %3, -3624173730817515445
  %218 = xor i64 %214, %217
  %219 = sub i64 -2776342293574091063, %3
  %220 = xor i64 %216, %219
  %221 = lshr i64 %218, 32
  %222 = lshr i64 %220, 32
  %223 = mul nuw i64 %222, %221
  %224 = and i64 %218, 4294967295
  %225 = mul nuw i64 %222, %224
  %226 = and i64 %220, 4294967295
  %227 = mul nuw i64 %226, %221
  %228 = mul nuw i64 %226, %224
  %229 = shl i64 %225, 32
  %230 = add i64 %229, %228
  %231 = icmp ult i64 %230, %228
  %232 = zext i1 %231 to i64
  %233 = add i64 %225, %227
  %234 = shl i64 %233, 32
  %235 = add i64 %234, %228
  %236 = icmp ult i64 %235, %230
  %237 = zext i1 %236 to i64
  %238 = lshr i64 %225, 32
  %239 = add nuw i64 %238, %223
  %240 = lshr i64 %227, 32
  %241 = add nuw i64 %239, %240
  %242 = add nuw i64 %241, %232
  %243 = add nuw i64 %242, %237
  %244 = xor i64 %243, %235
  br label %245

245:                                              ; preds = %178, %173
  %246 = phi i64 [ %244, %178 ], [ 0, %173 ]
  %247 = phi i64 [ %211, %178 ], [ %169, %173 ]
  %248 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %249 = load i64, ptr %248, align 1
  %250 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %251 = load i64, ptr %250, align 1
  %252 = add i64 %3, -7943504444863786309
  %253 = xor i64 %249, %252
  %254 = sub i64 1968968742000944523, %3
  %255 = xor i64 %251, %254
  %256 = lshr i64 %253, 32
  %257 = lshr i64 %255, 32
  %258 = mul nuw i64 %257, %256
  %259 = and i64 %253, 4294967295
  %260 = mul nuw i64 %257, %259
  %261 = and i64 %255, 4294967295
  %262 = mul nuw i64 %261, %256
  %263 = mul nuw i64 %261, %259
  %264 = shl i64 %260, 32
  %265 = add i64 %264, %263
  %266 = icmp ult i64 %265, %263
  %267 = zext i1 %266 to i64
  %268 = add i64 %260, %262
  %269 = shl i64 %268, 32
  %270 = add i64 %269, %263
  %271 = icmp ult i64 %270, %265
  %272 = zext i1 %271 to i64
  %273 = lshr i64 %260, 32
  %274 = add nuw i64 %273, %258
  %275 = lshr i64 %262, 32
  %276 = add nuw i64 %274, %275
  %277 = add nuw i64 %276, %267
  %278 = add nuw i64 %277, %272
  %279 = xor i64 %278, %270
  %280 = add i64 %279, %247
  %281 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %282 = getelementptr inbounds i8, ptr %281, i32 -48
  %283 = load i64, ptr %282, align 1
  %284 = getelementptr inbounds i8, ptr %281, i32 -40
  %285 = load i64, ptr %284, align 1
  %286 = add i64 %3, -6769480549562824553
  %287 = xor i64 %283, %286
  %288 = sub i64 -6206333191815827642, %3
  %289 = xor i64 %285, %288
  %290 = lshr i64 %287, 32
  %291 = lshr i64 %289, 32
  %292 = mul nuw i64 %291, %290
  %293 = and i64 %287, 4294967295
  %294 = mul nuw i64 %291, %293
  %295 = and i64 %289, 4294967295
  %296 = mul nuw i64 %295, %290
  %297 = mul nuw i64 %295, %293
  %298 = shl i64 %294, 32
  %299 = add i64 %298, %297
  %300 = icmp ult i64 %299, %297
  %301 = zext i1 %300 to i64
  %302 = add i64 %294, %296
  %303 = shl i64 %302, 32
  %304 = add i64 %303, %297
  %305 = icmp ult i64 %304, %299
  %306 = zext i1 %305 to i64
  %307 = lshr i64 %294, 32
  %308 = add nuw i64 %307, %292
  %309 = lshr i64 %296, 32
  %310 = add nuw i64 %308, %309
  %311 = add nuw i64 %310, %301
  %312 = add nuw i64 %311, %306
  %313 = xor i64 %312, %304
  %314 = add i64 %313, %246
  br label %315

315:                                              ; preds = %245, %171
  %316 = phi i64 [ %314, %245 ], [ 0, %171 ]
  %317 = phi i64 [ %280, %245 ], [ %169, %171 ]
  %318 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %319 = load i64, ptr %318, align 1
  %320 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %321 = load i64, ptr %320, align 1
  %322 = add i64 %3, -3692699387471206834
  %323 = xor i64 %319, %322
  %324 = sub i64 -3675093282664558467, %3
  %325 = xor i64 %321, %324
  %326 = lshr i64 %323, 32
  %327 = lshr i64 %325, 32
  %328 = mul nuw i64 %327, %326
  %329 = and i64 %323, 4294967295
  %330 = mul nuw i64 %327, %329
  %331 = and i64 %325, 4294967295
  %332 = mul nuw i64 %331, %326
  %333 = mul nuw i64 %331, %329
  %334 = shl i64 %330, 32
  %335 = add i64 %334, %333
  %336 = icmp ult i64 %335, %333
  %337 = zext i1 %336 to i64
  %338 = add i64 %330, %332
  %339 = shl i64 %338, 32
  %340 = add i64 %339, %333
  %341 = icmp ult i64 %340, %335
  %342 = zext i1 %341 to i64
  %343 = lshr i64 %330, 32
  %344 = add nuw i64 %343, %328
  %345 = lshr i64 %332, 32
  %346 = add nuw i64 %344, %345
  %347 = add nuw i64 %346, %337
  %348 = add nuw i64 %347, %342
  %349 = xor i64 %348, %340
  %350 = add i64 %349, %317
  %351 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %352 = getelementptr inbounds i8, ptr %351, i32 -32
  %353 = load i64, ptr %352, align 1
  %354 = getelementptr inbounds i8, ptr %351, i32 -24
  %355 = load i64, ptr %354, align 1
  %356 = add i64 %3, -629619327510231436
  %357 = xor i64 %353, %356
  %358 = sub i64 -9134946782546652954, %3
  %359 = xor i64 %355, %358
  %360 = lshr i64 %357, 32
  %361 = lshr i64 %359, 32
  %362 = mul nuw i64 %361, %360
  %363 = and i64 %357, 4294967295
  %364 = mul nuw i64 %361, %363
  %365 = and i64 %359, 4294967295
  %366 = mul nuw i64 %365, %360
  %367 = mul nuw i64 %365, %363
  %368 = shl i64 %364, 32
  %369 = add i64 %368, %367
  %370 = icmp ult i64 %369, %367
  %371 = zext i1 %370 to i64
  %372 = add i64 %364, %366
  %373 = shl i64 %372, 32
  %374 = add i64 %373, %367
  %375 = icmp ult i64 %374, %369
  %376 = zext i1 %375 to i64
  %377 = lshr i64 %364, 32
  %378 = add nuw i64 %377, %362
  %379 = lshr i64 %366, 32
  %380 = add nuw i64 %378, %379
  %381 = add nuw i64 %380, %371
  %382 = add nuw i64 %381, %376
  %383 = xor i64 %382, %374
  %384 = add i64 %383, %316
  br label %385

385:                                              ; preds = %315, %166
  %386 = phi i64 [ %384, %315 ], [ 0, %166 ]
  %387 = phi i64 [ %350, %315 ], [ %169, %166 ]
  %388 = load i64, ptr %1, align 1
  %389 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %390 = load i64, ptr %389, align 1
  %391 = add i64 %3, 2568260970027576377
  %392 = xor i64 %388, %391
  %393 = sub i64 -639039334258736852, %3
  %394 = xor i64 %390, %393
  %395 = lshr i64 %392, 32
  %396 = lshr i64 %394, 32
  %397 = mul nuw i64 %396, %395
  %398 = and i64 %392, 4294967295
  %399 = mul nuw i64 %396, %398
  %400 = and i64 %394, 4294967295
  %401 = mul nuw i64 %400, %395
  %402 = mul nuw i64 %400, %398
  %403 = shl i64 %399, 32
  %404 = add i64 %403, %402
  %405 = icmp ult i64 %404, %402
  %406 = zext i1 %405 to i64
  %407 = add i64 %399, %401
  %408 = shl i64 %407, 32
  %409 = add i64 %408, %402
  %410 = icmp ult i64 %409, %404
  %411 = zext i1 %410 to i64
  %412 = lshr i64 %399, 32
  %413 = add nuw i64 %412, %397
  %414 = lshr i64 %401, 32
  %415 = add nuw i64 %413, %414
  %416 = add nuw i64 %415, %406
  %417 = add nuw i64 %416, %411
  %418 = xor i64 %417, %409
  %419 = add i64 %418, %387
  %420 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %421 = getelementptr inbounds i8, ptr %420, i32 -16
  %422 = load i64, ptr %421, align 1
  %423 = getelementptr inbounds i8, ptr %420, i32 -8
  %424 = load i64, ptr %423, align 1
  %425 = add i64 %3, -8966499887502561815
  %426 = xor i64 %422, %425
  %427 = sub i64 -5209706959179045724, %3
  %428 = xor i64 %424, %427
  %429 = lshr i64 %426, 32
  %430 = lshr i64 %428, 32
  %431 = mul nuw i64 %430, %429
  %432 = and i64 %426, 4294967295
  %433 = mul nuw i64 %430, %432
  %434 = and i64 %428, 4294967295
  %435 = mul nuw i64 %434, %429
  %436 = mul nuw i64 %434, %432
  %437 = shl i64 %433, 32
  %438 = add i64 %437, %436
  %439 = icmp ult i64 %438, %436
  %440 = zext i1 %439 to i64
  %441 = add i64 %433, %435
  %442 = shl i64 %441, 32
  %443 = add i64 %442, %436
  %444 = icmp ult i64 %443, %438
  %445 = zext i1 %444 to i64
  %446 = lshr i64 %433, 32
  %447 = add nuw i64 %446, %431
  %448 = lshr i64 %435, 32
  %449 = add nuw i64 %447, %448
  %450 = add nuw i64 %449, %440
  %451 = add nuw i64 %450, %445
  %452 = xor i64 %451, %443
  %453 = add i64 %452, %386
  %454 = add i64 %453, %419
  %455 = mul i64 %419, 1609587929392839161
  %456 = mul i64 %453, -8796714831421723037
  %457 = sub i64 %167, %3
  %458 = mul i64 %457, -4417276706812531889
  %459 = add i64 %455, %458
  %460 = add i64 %459, %456
  %461 = lshr i64 %454, 37
  %462 = xor i64 %461, %454
  %463 = mul i64 %462, 1609587929392839161
  %464 = lshr i64 %463, 32
  %465 = xor i64 %464, %463
  store i64 %465, ptr %0, align 4
  %466 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %467 = lshr i64 %460, 37
  %468 = xor i64 %467, %460
  %469 = mul i64 %468, 1609587929392839161
  %470 = lshr i64 %469, 32
  %471 = xor i64 %470, %469
  %472 = sub i64 0, %471
  store i64 %472, ptr %466, align 4
  br label %473

473:                                              ; preds = %163, %124, %85, %8, %177, %385
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @XXH3_hashLong_128b(ptr dead_on_unwind noalias writable writeonly align 4 %0, ptr noundef readonly %1, i32 noundef range(i32 129, 0) %2, i64 noundef %3) unnamed_addr #13 {
  %5 = sub i64 0, %3
  %6 = lshr i32 %2, 10
  %7 = icmp ult i32 %2, 1024
  br i1 %7, label %1077, label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %1074, %8 ], [ 0, %4 ]
  %10 = phi i64 [ %1070, %8 ], [ %5, %4 ]
  %11 = phi i64 [ %1066, %8 ], [ 2870177450012600261, %4 ]
  %12 = phi i64 [ %1062, %8 ], [ -8796714831421723037, %4 ]
  %13 = phi i64 [ %1058, %8 ], [ 1609587929392839161, %4 ]
  %14 = phi i64 [ %1054, %8 ], [ -4417276706812531889, %4 ]
  %15 = phi i64 [ %1050, %8 ], [ -7046029288634856825, %4 ]
  %16 = phi i64 [ %1046, %8 ], [ %3, %4 ]
  %17 = phi i32 [ %1075, %8 ], [ 0, %4 ]
  %18 = shl nuw i32 %17, 10
  %19 = getelementptr inbounds nuw i8, ptr %1, i32 %18
  %20 = load i64, ptr %19, align 1
  %21 = xor i64 %20, 2568260970027576377
  %22 = and i64 %21, 4294967295
  %23 = lshr i64 %21, 32
  %24 = mul nuw i64 %22, %23
  %25 = add i64 %20, %16
  %26 = add i64 %25, %24
  %27 = getelementptr inbounds nuw i8, ptr %19, i32 8
  %28 = load i64, ptr %27, align 1
  %29 = xor i64 %28, -639039334258736852
  %30 = and i64 %29, 4294967295
  %31 = lshr i64 %29, 32
  %32 = mul nuw i64 %30, %31
  %33 = add i64 %28, %15
  %34 = add i64 %33, %32
  %35 = getelementptr inbounds nuw i8, ptr %19, i32 16
  %36 = load i64, ptr %35, align 1
  %37 = xor i64 %36, -8966499887502561815
  %38 = and i64 %37, 4294967295
  %39 = lshr i64 %37, 32
  %40 = mul nuw i64 %38, %39
  %41 = add i64 %36, %14
  %42 = add i64 %41, %40
  %43 = getelementptr inbounds nuw i8, ptr %19, i32 24
  %44 = load i64, ptr %43, align 1
  %45 = xor i64 %44, -5209706959179045724
  %46 = and i64 %45, 4294967295
  %47 = lshr i64 %45, 32
  %48 = mul nuw i64 %46, %47
  %49 = add i64 %44, %13
  %50 = add i64 %49, %48
  %51 = getelementptr inbounds nuw i8, ptr %19, i32 32
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, -3692699387471206834
  %54 = and i64 %53, 4294967295
  %55 = lshr i64 %53, 32
  %56 = mul nuw i64 %54, %55
  %57 = add i64 %52, %12
  %58 = add i64 %57, %56
  %59 = getelementptr inbounds nuw i8, ptr %19, i32 40
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, -3675093282664558467
  %62 = and i64 %61, 4294967295
  %63 = lshr i64 %61, 32
  %64 = mul nuw i64 %62, %63
  %65 = add i64 %60, %11
  %66 = add i64 %65, %64
  %67 = getelementptr inbounds nuw i8, ptr %19, i32 48
  %68 = load i64, ptr %67, align 1
  %69 = xor i64 %68, -629619327510231436
  %70 = and i64 %69, 4294967295
  %71 = lshr i64 %69, 32
  %72 = mul nuw i64 %70, %71
  %73 = add i64 %68, %10
  %74 = add i64 %73, %72
  %75 = getelementptr inbounds nuw i8, ptr %19, i32 56
  %76 = load i64, ptr %75, align 1
  %77 = xor i64 %76, -9134946782546652954
  %78 = and i64 %77, 4294967295
  %79 = lshr i64 %77, 32
  %80 = mul nuw i64 %78, %79
  %81 = add i64 %76, %9
  %82 = add i64 %81, %80
  %83 = getelementptr inbounds nuw i8, ptr %19, i32 64
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, -639039334258736852
  %86 = and i64 %85, 4294967295
  %87 = lshr i64 %85, 32
  %88 = mul nuw i64 %86, %87
  %89 = add i64 %26, %84
  %90 = add i64 %89, %88
  %91 = getelementptr inbounds nuw i8, ptr %19, i32 72
  %92 = load i64, ptr %91, align 1
  %93 = xor i64 %92, -8966499887502561815
  %94 = and i64 %93, 4294967295
  %95 = lshr i64 %93, 32
  %96 = mul nuw i64 %94, %95
  %97 = add i64 %34, %92
  %98 = add i64 %97, %96
  %99 = getelementptr inbounds nuw i8, ptr %19, i32 80
  %100 = load i64, ptr %99, align 1
  %101 = xor i64 %100, -5209706959179045724
  %102 = and i64 %101, 4294967295
  %103 = lshr i64 %101, 32
  %104 = mul nuw i64 %102, %103
  %105 = add i64 %42, %100
  %106 = add i64 %105, %104
  %107 = getelementptr inbounds nuw i8, ptr %19, i32 88
  %108 = load i64, ptr %107, align 1
  %109 = xor i64 %108, -3692699387471206834
  %110 = and i64 %109, 4294967295
  %111 = lshr i64 %109, 32
  %112 = mul nuw i64 %110, %111
  %113 = add i64 %50, %108
  %114 = add i64 %113, %112
  %115 = getelementptr inbounds nuw i8, ptr %19, i32 96
  %116 = load i64, ptr %115, align 1
  %117 = xor i64 %116, -3675093282664558467
  %118 = and i64 %117, 4294967295
  %119 = lshr i64 %117, 32
  %120 = mul nuw i64 %118, %119
  %121 = add i64 %58, %116
  %122 = add i64 %121, %120
  %123 = getelementptr inbounds nuw i8, ptr %19, i32 104
  %124 = load i64, ptr %123, align 1
  %125 = xor i64 %124, -629619327510231436
  %126 = and i64 %125, 4294967295
  %127 = lshr i64 %125, 32
  %128 = mul nuw i64 %126, %127
  %129 = add i64 %66, %124
  %130 = add i64 %129, %128
  %131 = getelementptr inbounds nuw i8, ptr %19, i32 112
  %132 = load i64, ptr %131, align 1
  %133 = xor i64 %132, -9134946782546652954
  %134 = and i64 %133, 4294967295
  %135 = lshr i64 %133, 32
  %136 = mul nuw i64 %134, %135
  %137 = add i64 %74, %132
  %138 = add i64 %137, %136
  %139 = getelementptr inbounds nuw i8, ptr %19, i32 120
  %140 = load i64, ptr %139, align 1
  %141 = xor i64 %140, -7943504444863786309
  %142 = and i64 %141, 4294967295
  %143 = lshr i64 %141, 32
  %144 = mul nuw i64 %142, %143
  %145 = add i64 %82, %140
  %146 = add i64 %145, %144
  %147 = getelementptr inbounds nuw i8, ptr %19, i32 128
  %148 = load i64, ptr %147, align 1
  %149 = xor i64 %148, -8966499887502561815
  %150 = and i64 %149, 4294967295
  %151 = lshr i64 %149, 32
  %152 = mul nuw i64 %150, %151
  %153 = add i64 %90, %148
  %154 = add i64 %153, %152
  %155 = getelementptr inbounds nuw i8, ptr %19, i32 136
  %156 = load i64, ptr %155, align 1
  %157 = xor i64 %156, -5209706959179045724
  %158 = and i64 %157, 4294967295
  %159 = lshr i64 %157, 32
  %160 = mul nuw i64 %158, %159
  %161 = add i64 %98, %156
  %162 = add i64 %161, %160
  %163 = getelementptr inbounds nuw i8, ptr %19, i32 144
  %164 = load i64, ptr %163, align 1
  %165 = xor i64 %164, -3692699387471206834
  %166 = and i64 %165, 4294967295
  %167 = lshr i64 %165, 32
  %168 = mul nuw i64 %166, %167
  %169 = add i64 %106, %164
  %170 = add i64 %169, %168
  %171 = getelementptr inbounds nuw i8, ptr %19, i32 152
  %172 = load i64, ptr %171, align 1
  %173 = xor i64 %172, -3675093282664558467
  %174 = and i64 %173, 4294967295
  %175 = lshr i64 %173, 32
  %176 = mul nuw i64 %174, %175
  %177 = add i64 %114, %172
  %178 = add i64 %177, %176
  %179 = getelementptr inbounds nuw i8, ptr %19, i32 160
  %180 = load i64, ptr %179, align 1
  %181 = xor i64 %180, -629619327510231436
  %182 = and i64 %181, 4294967295
  %183 = lshr i64 %181, 32
  %184 = mul nuw i64 %182, %183
  %185 = add i64 %122, %180
  %186 = add i64 %185, %184
  %187 = getelementptr inbounds nuw i8, ptr %19, i32 168
  %188 = load i64, ptr %187, align 1
  %189 = xor i64 %188, -9134946782546652954
  %190 = and i64 %189, 4294967295
  %191 = lshr i64 %189, 32
  %192 = mul nuw i64 %190, %191
  %193 = add i64 %130, %188
  %194 = add i64 %193, %192
  %195 = getelementptr inbounds nuw i8, ptr %19, i32 176
  %196 = load i64, ptr %195, align 1
  %197 = xor i64 %196, -7943504444863786309
  %198 = and i64 %197, 4294967295
  %199 = lshr i64 %197, 32
  %200 = mul nuw i64 %198, %199
  %201 = add i64 %138, %196
  %202 = add i64 %201, %200
  %203 = getelementptr inbounds nuw i8, ptr %19, i32 184
  %204 = load i64, ptr %203, align 1
  %205 = xor i64 %204, 1968968742000944523
  %206 = and i64 %205, 4294967295
  %207 = lshr i64 %205, 32
  %208 = mul nuw i64 %206, %207
  %209 = add i64 %146, %204
  %210 = add i64 %209, %208
  %211 = getelementptr inbounds nuw i8, ptr %19, i32 192
  %212 = load i64, ptr %211, align 1
  %213 = xor i64 %212, -5209706959179045724
  %214 = and i64 %213, 4294967295
  %215 = lshr i64 %213, 32
  %216 = mul nuw i64 %214, %215
  %217 = add i64 %154, %212
  %218 = add i64 %217, %216
  %219 = getelementptr inbounds nuw i8, ptr %19, i32 200
  %220 = load i64, ptr %219, align 1
  %221 = xor i64 %220, -3692699387471206834
  %222 = and i64 %221, 4294967295
  %223 = lshr i64 %221, 32
  %224 = mul nuw i64 %222, %223
  %225 = add i64 %162, %220
  %226 = add i64 %225, %224
  %227 = getelementptr inbounds nuw i8, ptr %19, i32 208
  %228 = load i64, ptr %227, align 1
  %229 = xor i64 %228, -3675093282664558467
  %230 = and i64 %229, 4294967295
  %231 = lshr i64 %229, 32
  %232 = mul nuw i64 %230, %231
  %233 = add i64 %170, %228
  %234 = add i64 %233, %232
  %235 = getelementptr inbounds nuw i8, ptr %19, i32 216
  %236 = load i64, ptr %235, align 1
  %237 = xor i64 %236, -629619327510231436
  %238 = and i64 %237, 4294967295
  %239 = lshr i64 %237, 32
  %240 = mul nuw i64 %238, %239
  %241 = add i64 %178, %236
  %242 = add i64 %241, %240
  %243 = getelementptr inbounds nuw i8, ptr %19, i32 224
  %244 = load i64, ptr %243, align 1
  %245 = xor i64 %244, -9134946782546652954
  %246 = and i64 %245, 4294967295
  %247 = lshr i64 %245, 32
  %248 = mul nuw i64 %246, %247
  %249 = add i64 %186, %244
  %250 = add i64 %249, %248
  %251 = getelementptr inbounds nuw i8, ptr %19, i32 232
  %252 = load i64, ptr %251, align 1
  %253 = xor i64 %252, -7943504444863786309
  %254 = and i64 %253, 4294967295
  %255 = lshr i64 %253, 32
  %256 = mul nuw i64 %254, %255
  %257 = add i64 %194, %252
  %258 = add i64 %257, %256
  %259 = getelementptr inbounds nuw i8, ptr %19, i32 240
  %260 = load i64, ptr %259, align 1
  %261 = xor i64 %260, 1968968742000944523
  %262 = and i64 %261, 4294967295
  %263 = lshr i64 %261, 32
  %264 = mul nuw i64 %262, %263
  %265 = add i64 %202, %260
  %266 = add i64 %265, %264
  %267 = getelementptr inbounds nuw i8, ptr %19, i32 248
  %268 = load i64, ptr %267, align 1
  %269 = xor i64 %268, -6769480549562824553
  %270 = and i64 %269, 4294967295
  %271 = lshr i64 %269, 32
  %272 = mul nuw i64 %270, %271
  %273 = add i64 %210, %268
  %274 = add i64 %273, %272
  %275 = getelementptr inbounds nuw i8, ptr %19, i32 256
  %276 = load i64, ptr %275, align 1
  %277 = xor i64 %276, -3692699387471206834
  %278 = and i64 %277, 4294967295
  %279 = lshr i64 %277, 32
  %280 = mul nuw i64 %278, %279
  %281 = add i64 %218, %276
  %282 = add i64 %281, %280
  %283 = getelementptr inbounds nuw i8, ptr %19, i32 264
  %284 = load i64, ptr %283, align 1
  %285 = xor i64 %284, -3675093282664558467
  %286 = and i64 %285, 4294967295
  %287 = lshr i64 %285, 32
  %288 = mul nuw i64 %286, %287
  %289 = add i64 %226, %284
  %290 = add i64 %289, %288
  %291 = getelementptr inbounds nuw i8, ptr %19, i32 272
  %292 = load i64, ptr %291, align 1
  %293 = xor i64 %292, -629619327510231436
  %294 = and i64 %293, 4294967295
  %295 = lshr i64 %293, 32
  %296 = mul nuw i64 %294, %295
  %297 = add i64 %234, %292
  %298 = add i64 %297, %296
  %299 = getelementptr inbounds nuw i8, ptr %19, i32 280
  %300 = load i64, ptr %299, align 1
  %301 = xor i64 %300, -9134946782546652954
  %302 = and i64 %301, 4294967295
  %303 = lshr i64 %301, 32
  %304 = mul nuw i64 %302, %303
  %305 = add i64 %242, %300
  %306 = add i64 %305, %304
  %307 = getelementptr inbounds nuw i8, ptr %19, i32 288
  %308 = load i64, ptr %307, align 1
  %309 = xor i64 %308, -7943504444863786309
  %310 = and i64 %309, 4294967295
  %311 = lshr i64 %309, 32
  %312 = mul nuw i64 %310, %311
  %313 = add i64 %250, %308
  %314 = add i64 %313, %312
  %315 = getelementptr inbounds nuw i8, ptr %19, i32 296
  %316 = load i64, ptr %315, align 1
  %317 = xor i64 %316, 1968968742000944523
  %318 = and i64 %317, 4294967295
  %319 = lshr i64 %317, 32
  %320 = mul nuw i64 %318, %319
  %321 = add i64 %258, %316
  %322 = add i64 %321, %320
  %323 = getelementptr inbounds nuw i8, ptr %19, i32 304
  %324 = load i64, ptr %323, align 1
  %325 = xor i64 %324, -6769480549562824553
  %326 = and i64 %325, 4294967295
  %327 = lshr i64 %325, 32
  %328 = mul nuw i64 %326, %327
  %329 = add i64 %266, %324
  %330 = add i64 %329, %328
  %331 = getelementptr inbounds nuw i8, ptr %19, i32 312
  %332 = load i64, ptr %331, align 1
  %333 = xor i64 %332, -6206333191815827642
  %334 = and i64 %333, 4294967295
  %335 = lshr i64 %333, 32
  %336 = mul nuw i64 %334, %335
  %337 = add i64 %274, %332
  %338 = add i64 %337, %336
  %339 = getelementptr inbounds nuw i8, ptr %19, i32 320
  %340 = load i64, ptr %339, align 1
  %341 = xor i64 %340, -3675093282664558467
  %342 = and i64 %341, 4294967295
  %343 = lshr i64 %341, 32
  %344 = mul nuw i64 %342, %343
  %345 = add i64 %282, %340
  %346 = add i64 %345, %344
  %347 = getelementptr inbounds nuw i8, ptr %19, i32 328
  %348 = load i64, ptr %347, align 1
  %349 = xor i64 %348, -629619327510231436
  %350 = and i64 %349, 4294967295
  %351 = lshr i64 %349, 32
  %352 = mul nuw i64 %350, %351
  %353 = add i64 %290, %348
  %354 = add i64 %353, %352
  %355 = getelementptr inbounds nuw i8, ptr %19, i32 336
  %356 = load i64, ptr %355, align 1
  %357 = xor i64 %356, -9134946782546652954
  %358 = and i64 %357, 4294967295
  %359 = lshr i64 %357, 32
  %360 = mul nuw i64 %358, %359
  %361 = add i64 %298, %356
  %362 = add i64 %361, %360
  %363 = getelementptr inbounds nuw i8, ptr %19, i32 344
  %364 = load i64, ptr %363, align 1
  %365 = xor i64 %364, -7943504444863786309
  %366 = and i64 %365, 4294967295
  %367 = lshr i64 %365, 32
  %368 = mul nuw i64 %366, %367
  %369 = add i64 %306, %364
  %370 = add i64 %369, %368
  %371 = getelementptr inbounds nuw i8, ptr %19, i32 352
  %372 = load i64, ptr %371, align 1
  %373 = xor i64 %372, 1968968742000944523
  %374 = and i64 %373, 4294967295
  %375 = lshr i64 %373, 32
  %376 = mul nuw i64 %374, %375
  %377 = add i64 %314, %372
  %378 = add i64 %377, %376
  %379 = getelementptr inbounds nuw i8, ptr %19, i32 360
  %380 = load i64, ptr %379, align 1
  %381 = xor i64 %380, -6769480549562824553
  %382 = and i64 %381, 4294967295
  %383 = lshr i64 %381, 32
  %384 = mul nuw i64 %382, %383
  %385 = add i64 %322, %380
  %386 = add i64 %385, %384
  %387 = getelementptr inbounds nuw i8, ptr %19, i32 368
  %388 = load i64, ptr %387, align 1
  %389 = xor i64 %388, -6206333191815827642
  %390 = and i64 %389, 4294967295
  %391 = lshr i64 %389, 32
  %392 = mul nuw i64 %390, %391
  %393 = add i64 %330, %388
  %394 = add i64 %393, %392
  %395 = getelementptr inbounds nuw i8, ptr %19, i32 376
  %396 = load i64, ptr %395, align 1
  %397 = xor i64 %396, -2045702682710477249
  %398 = and i64 %397, 4294967295
  %399 = lshr i64 %397, 32
  %400 = mul nuw i64 %398, %399
  %401 = add i64 %338, %396
  %402 = add i64 %401, %400
  %403 = getelementptr inbounds nuw i8, ptr %19, i32 384
  %404 = load i64, ptr %403, align 1
  %405 = xor i64 %404, -629619327510231436
  %406 = and i64 %405, 4294967295
  %407 = lshr i64 %405, 32
  %408 = mul nuw i64 %406, %407
  %409 = add i64 %346, %404
  %410 = add i64 %409, %408
  %411 = getelementptr inbounds nuw i8, ptr %19, i32 392
  %412 = load i64, ptr %411, align 1
  %413 = xor i64 %412, -9134946782546652954
  %414 = and i64 %413, 4294967295
  %415 = lshr i64 %413, 32
  %416 = mul nuw i64 %414, %415
  %417 = add i64 %354, %412
  %418 = add i64 %417, %416
  %419 = getelementptr inbounds nuw i8, ptr %19, i32 400
  %420 = load i64, ptr %419, align 1
  %421 = xor i64 %420, -7943504444863786309
  %422 = and i64 %421, 4294967295
  %423 = lshr i64 %421, 32
  %424 = mul nuw i64 %422, %423
  %425 = add i64 %362, %420
  %426 = add i64 %425, %424
  %427 = getelementptr inbounds nuw i8, ptr %19, i32 408
  %428 = load i64, ptr %427, align 1
  %429 = xor i64 %428, 1968968742000944523
  %430 = and i64 %429, 4294967295
  %431 = lshr i64 %429, 32
  %432 = mul nuw i64 %430, %431
  %433 = add i64 %370, %428
  %434 = add i64 %433, %432
  %435 = getelementptr inbounds nuw i8, ptr %19, i32 416
  %436 = load i64, ptr %435, align 1
  %437 = xor i64 %436, -6769480549562824553
  %438 = and i64 %437, 4294967295
  %439 = lshr i64 %437, 32
  %440 = mul nuw i64 %438, %439
  %441 = add i64 %378, %436
  %442 = add i64 %441, %440
  %443 = getelementptr inbounds nuw i8, ptr %19, i32 424
  %444 = load i64, ptr %443, align 1
  %445 = xor i64 %444, -6206333191815827642
  %446 = and i64 %445, 4294967295
  %447 = lshr i64 %445, 32
  %448 = mul nuw i64 %446, %447
  %449 = add i64 %386, %444
  %450 = add i64 %449, %448
  %451 = getelementptr inbounds nuw i8, ptr %19, i32 432
  %452 = load i64, ptr %451, align 1
  %453 = xor i64 %452, -2045702682710477249
  %454 = and i64 %453, 4294967295
  %455 = lshr i64 %453, 32
  %456 = mul nuw i64 %454, %455
  %457 = add i64 %394, %452
  %458 = add i64 %457, %456
  %459 = getelementptr inbounds nuw i8, ptr %19, i32 440
  %460 = load i64, ptr %459, align 1
  %461 = xor i64 %460, -4104099645253436473
  %462 = and i64 %461, 4294967295
  %463 = lshr i64 %461, 32
  %464 = mul nuw i64 %462, %463
  %465 = add i64 %402, %460
  %466 = add i64 %465, %464
  %467 = getelementptr inbounds nuw i8, ptr %19, i32 448
  %468 = load i64, ptr %467, align 1
  %469 = xor i64 %468, -9134946782546652954
  %470 = and i64 %469, 4294967295
  %471 = lshr i64 %469, 32
  %472 = mul nuw i64 %470, %471
  %473 = add i64 %410, %468
  %474 = add i64 %473, %472
  %475 = getelementptr inbounds nuw i8, ptr %19, i32 456
  %476 = load i64, ptr %475, align 1
  %477 = xor i64 %476, -7943504444863786309
  %478 = and i64 %477, 4294967295
  %479 = lshr i64 %477, 32
  %480 = mul nuw i64 %478, %479
  %481 = add i64 %418, %476
  %482 = add i64 %481, %480
  %483 = getelementptr inbounds nuw i8, ptr %19, i32 464
  %484 = load i64, ptr %483, align 1
  %485 = xor i64 %484, 1968968742000944523
  %486 = and i64 %485, 4294967295
  %487 = lshr i64 %485, 32
  %488 = mul nuw i64 %486, %487
  %489 = add i64 %426, %484
  %490 = add i64 %489, %488
  %491 = getelementptr inbounds nuw i8, ptr %19, i32 472
  %492 = load i64, ptr %491, align 1
  %493 = xor i64 %492, -6769480549562824553
  %494 = and i64 %493, 4294967295
  %495 = lshr i64 %493, 32
  %496 = mul nuw i64 %494, %495
  %497 = add i64 %434, %492
  %498 = add i64 %497, %496
  %499 = getelementptr inbounds nuw i8, ptr %19, i32 480
  %500 = load i64, ptr %499, align 1
  %501 = xor i64 %500, -6206333191815827642
  %502 = and i64 %501, 4294967295
  %503 = lshr i64 %501, 32
  %504 = mul nuw i64 %502, %503
  %505 = add i64 %442, %500
  %506 = add i64 %505, %504
  %507 = getelementptr inbounds nuw i8, ptr %19, i32 488
  %508 = load i64, ptr %507, align 1
  %509 = xor i64 %508, -2045702682710477249
  %510 = and i64 %509, 4294967295
  %511 = lshr i64 %509, 32
  %512 = mul nuw i64 %510, %511
  %513 = add i64 %450, %508
  %514 = add i64 %513, %512
  %515 = getelementptr inbounds nuw i8, ptr %19, i32 496
  %516 = load i64, ptr %515, align 1
  %517 = xor i64 %516, -4104099645253436473
  %518 = and i64 %517, 4294967295
  %519 = lshr i64 %517, 32
  %520 = mul nuw i64 %518, %519
  %521 = add i64 %458, %516
  %522 = add i64 %521, %520
  %523 = getelementptr inbounds nuw i8, ptr %19, i32 504
  %524 = load i64, ptr %523, align 1
  %525 = xor i64 %524, -3624173730817515445
  %526 = and i64 %525, 4294967295
  %527 = lshr i64 %525, 32
  %528 = mul nuw i64 %526, %527
  %529 = add i64 %466, %524
  %530 = add i64 %529, %528
  %531 = getelementptr inbounds nuw i8, ptr %19, i32 512
  %532 = load i64, ptr %531, align 1
  %533 = xor i64 %532, -7943504444863786309
  %534 = and i64 %533, 4294967295
  %535 = lshr i64 %533, 32
  %536 = mul nuw i64 %534, %535
  %537 = add i64 %474, %532
  %538 = add i64 %537, %536
  %539 = getelementptr inbounds nuw i8, ptr %19, i32 520
  %540 = load i64, ptr %539, align 1
  %541 = xor i64 %540, 1968968742000944523
  %542 = and i64 %541, 4294967295
  %543 = lshr i64 %541, 32
  %544 = mul nuw i64 %542, %543
  %545 = add i64 %482, %540
  %546 = add i64 %545, %544
  %547 = getelementptr inbounds nuw i8, ptr %19, i32 528
  %548 = load i64, ptr %547, align 1
  %549 = xor i64 %548, -6769480549562824553
  %550 = and i64 %549, 4294967295
  %551 = lshr i64 %549, 32
  %552 = mul nuw i64 %550, %551
  %553 = add i64 %490, %548
  %554 = add i64 %553, %552
  %555 = getelementptr inbounds nuw i8, ptr %19, i32 536
  %556 = load i64, ptr %555, align 1
  %557 = xor i64 %556, -6206333191815827642
  %558 = and i64 %557, 4294967295
  %559 = lshr i64 %557, 32
  %560 = mul nuw i64 %558, %559
  %561 = add i64 %498, %556
  %562 = add i64 %561, %560
  %563 = getelementptr inbounds nuw i8, ptr %19, i32 544
  %564 = load i64, ptr %563, align 1
  %565 = xor i64 %564, -2045702682710477249
  %566 = and i64 %565, 4294967295
  %567 = lshr i64 %565, 32
  %568 = mul nuw i64 %566, %567
  %569 = add i64 %506, %564
  %570 = add i64 %569, %568
  %571 = getelementptr inbounds nuw i8, ptr %19, i32 552
  %572 = load i64, ptr %571, align 1
  %573 = xor i64 %572, -4104099645253436473
  %574 = and i64 %573, 4294967295
  %575 = lshr i64 %573, 32
  %576 = mul nuw i64 %574, %575
  %577 = add i64 %514, %572
  %578 = add i64 %577, %576
  %579 = getelementptr inbounds nuw i8, ptr %19, i32 560
  %580 = load i64, ptr %579, align 1
  %581 = xor i64 %580, -3624173730817515445
  %582 = and i64 %581, 4294967295
  %583 = lshr i64 %581, 32
  %584 = mul nuw i64 %582, %583
  %585 = add i64 %522, %580
  %586 = add i64 %585, %584
  %587 = getelementptr inbounds nuw i8, ptr %19, i32 568
  %588 = load i64, ptr %587, align 1
  %589 = xor i64 %588, -2776342293574091063
  %590 = and i64 %589, 4294967295
  %591 = lshr i64 %589, 32
  %592 = mul nuw i64 %590, %591
  %593 = add i64 %530, %588
  %594 = add i64 %593, %592
  %595 = getelementptr inbounds nuw i8, ptr %19, i32 576
  %596 = load i64, ptr %595, align 1
  %597 = xor i64 %596, 1968968742000944523
  %598 = and i64 %597, 4294967295
  %599 = lshr i64 %597, 32
  %600 = mul nuw i64 %598, %599
  %601 = add i64 %538, %596
  %602 = add i64 %601, %600
  %603 = getelementptr inbounds nuw i8, ptr %19, i32 584
  %604 = load i64, ptr %603, align 1
  %605 = xor i64 %604, -6769480549562824553
  %606 = and i64 %605, 4294967295
  %607 = lshr i64 %605, 32
  %608 = mul nuw i64 %606, %607
  %609 = add i64 %546, %604
  %610 = add i64 %609, %608
  %611 = getelementptr inbounds nuw i8, ptr %19, i32 592
  %612 = load i64, ptr %611, align 1
  %613 = xor i64 %612, -6206333191815827642
  %614 = and i64 %613, 4294967295
  %615 = lshr i64 %613, 32
  %616 = mul nuw i64 %614, %615
  %617 = add i64 %554, %612
  %618 = add i64 %617, %616
  %619 = getelementptr inbounds nuw i8, ptr %19, i32 600
  %620 = load i64, ptr %619, align 1
  %621 = xor i64 %620, -2045702682710477249
  %622 = and i64 %621, 4294967295
  %623 = lshr i64 %621, 32
  %624 = mul nuw i64 %622, %623
  %625 = add i64 %562, %620
  %626 = add i64 %625, %624
  %627 = getelementptr inbounds nuw i8, ptr %19, i32 608
  %628 = load i64, ptr %627, align 1
  %629 = xor i64 %628, -4104099645253436473
  %630 = and i64 %629, 4294967295
  %631 = lshr i64 %629, 32
  %632 = mul nuw i64 %630, %631
  %633 = add i64 %570, %628
  %634 = add i64 %633, %632
  %635 = getelementptr inbounds nuw i8, ptr %19, i32 616
  %636 = load i64, ptr %635, align 1
  %637 = xor i64 %636, -3624173730817515445
  %638 = and i64 %637, 4294967295
  %639 = lshr i64 %637, 32
  %640 = mul nuw i64 %638, %639
  %641 = add i64 %578, %636
  %642 = add i64 %641, %640
  %643 = getelementptr inbounds nuw i8, ptr %19, i32 624
  %644 = load i64, ptr %643, align 1
  %645 = xor i64 %644, -2776342293574091063
  %646 = and i64 %645, 4294967295
  %647 = lshr i64 %645, 32
  %648 = mul nuw i64 %646, %647
  %649 = add i64 %586, %644
  %650 = add i64 %649, %648
  %651 = getelementptr inbounds nuw i8, ptr %19, i32 632
  %652 = load i64, ptr %651, align 1
  %653 = xor i64 %652, 3806645336748174467
  %654 = and i64 %653, 4294967295
  %655 = lshr i64 %653, 32
  %656 = mul nuw i64 %654, %655
  %657 = add i64 %594, %652
  %658 = add i64 %657, %656
  %659 = getelementptr inbounds nuw i8, ptr %19, i32 640
  %660 = load i64, ptr %659, align 1
  %661 = xor i64 %660, -6769480549562824553
  %662 = and i64 %661, 4294967295
  %663 = lshr i64 %661, 32
  %664 = mul nuw i64 %662, %663
  %665 = add i64 %602, %660
  %666 = add i64 %665, %664
  %667 = getelementptr inbounds nuw i8, ptr %19, i32 648
  %668 = load i64, ptr %667, align 1
  %669 = xor i64 %668, -6206333191815827642
  %670 = and i64 %669, 4294967295
  %671 = lshr i64 %669, 32
  %672 = mul nuw i64 %670, %671
  %673 = add i64 %610, %668
  %674 = add i64 %673, %672
  %675 = getelementptr inbounds nuw i8, ptr %19, i32 656
  %676 = load i64, ptr %675, align 1
  %677 = xor i64 %676, -2045702682710477249
  %678 = and i64 %677, 4294967295
  %679 = lshr i64 %677, 32
  %680 = mul nuw i64 %678, %679
  %681 = add i64 %618, %676
  %682 = add i64 %681, %680
  %683 = getelementptr inbounds nuw i8, ptr %19, i32 664
  %684 = load i64, ptr %683, align 1
  %685 = xor i64 %684, -4104099645253436473
  %686 = and i64 %685, 4294967295
  %687 = lshr i64 %685, 32
  %688 = mul nuw i64 %686, %687
  %689 = add i64 %626, %684
  %690 = add i64 %689, %688
  %691 = getelementptr inbounds nuw i8, ptr %19, i32 672
  %692 = load i64, ptr %691, align 1
  %693 = xor i64 %692, -3624173730817515445
  %694 = and i64 %693, 4294967295
  %695 = lshr i64 %693, 32
  %696 = mul nuw i64 %694, %695
  %697 = add i64 %634, %692
  %698 = add i64 %697, %696
  %699 = getelementptr inbounds nuw i8, ptr %19, i32 680
  %700 = load i64, ptr %699, align 1
  %701 = xor i64 %700, -2776342293574091063
  %702 = and i64 %701, 4294967295
  %703 = lshr i64 %701, 32
  %704 = mul nuw i64 %702, %703
  %705 = add i64 %642, %700
  %706 = add i64 %705, %704
  %707 = getelementptr inbounds nuw i8, ptr %19, i32 688
  %708 = load i64, ptr %707, align 1
  %709 = xor i64 %708, 3806645336748174467
  %710 = and i64 %709, 4294967295
  %711 = lshr i64 %709, 32
  %712 = mul nuw i64 %710, %711
  %713 = add i64 %650, %708
  %714 = add i64 %713, %712
  %715 = getelementptr inbounds nuw i8, ptr %19, i32 696
  %716 = load i64, ptr %715, align 1
  %717 = xor i64 %716, -426887675387993857
  %718 = and i64 %717, 4294967295
  %719 = lshr i64 %717, 32
  %720 = mul nuw i64 %718, %719
  %721 = add i64 %658, %716
  %722 = add i64 %721, %720
  %723 = getelementptr inbounds nuw i8, ptr %19, i32 704
  %724 = load i64, ptr %723, align 1
  %725 = xor i64 %724, -6206333191815827642
  %726 = and i64 %725, 4294967295
  %727 = lshr i64 %725, 32
  %728 = mul nuw i64 %726, %727
  %729 = add i64 %666, %724
  %730 = add i64 %729, %728
  %731 = getelementptr inbounds nuw i8, ptr %19, i32 712
  %732 = load i64, ptr %731, align 1
  %733 = xor i64 %732, -2045702682710477249
  %734 = and i64 %733, 4294967295
  %735 = lshr i64 %733, 32
  %736 = mul nuw i64 %734, %735
  %737 = add i64 %674, %732
  %738 = add i64 %737, %736
  %739 = getelementptr inbounds nuw i8, ptr %19, i32 720
  %740 = load i64, ptr %739, align 1
  %741 = xor i64 %740, -4104099645253436473
  %742 = and i64 %741, 4294967295
  %743 = lshr i64 %741, 32
  %744 = mul nuw i64 %742, %743
  %745 = add i64 %682, %740
  %746 = add i64 %745, %744
  %747 = getelementptr inbounds nuw i8, ptr %19, i32 728
  %748 = load i64, ptr %747, align 1
  %749 = xor i64 %748, -3624173730817515445
  %750 = and i64 %749, 4294967295
  %751 = lshr i64 %749, 32
  %752 = mul nuw i64 %750, %751
  %753 = add i64 %690, %748
  %754 = add i64 %753, %752
  %755 = getelementptr inbounds nuw i8, ptr %19, i32 736
  %756 = load i64, ptr %755, align 1
  %757 = xor i64 %756, -2776342293574091063
  %758 = and i64 %757, 4294967295
  %759 = lshr i64 %757, 32
  %760 = mul nuw i64 %758, %759
  %761 = add i64 %698, %756
  %762 = add i64 %761, %760
  %763 = getelementptr inbounds nuw i8, ptr %19, i32 744
  %764 = load i64, ptr %763, align 1
  %765 = xor i64 %764, 3806645336748174467
  %766 = and i64 %765, 4294967295
  %767 = lshr i64 %765, 32
  %768 = mul nuw i64 %766, %767
  %769 = add i64 %706, %764
  %770 = add i64 %769, %768
  %771 = getelementptr inbounds nuw i8, ptr %19, i32 752
  %772 = load i64, ptr %771, align 1
  %773 = xor i64 %772, -426887675387993857
  %774 = and i64 %773, 4294967295
  %775 = lshr i64 %773, 32
  %776 = mul nuw i64 %774, %775
  %777 = add i64 %714, %772
  %778 = add i64 %777, %776
  %779 = getelementptr inbounds nuw i8, ptr %19, i32 760
  %780 = load i64, ptr %779, align 1
  %781 = xor i64 %780, -5192410362903929519
  %782 = and i64 %781, 4294967295
  %783 = lshr i64 %781, 32
  %784 = mul nuw i64 %782, %783
  %785 = add i64 %722, %780
  %786 = add i64 %785, %784
  %787 = getelementptr inbounds nuw i8, ptr %19, i32 768
  %788 = load i64, ptr %787, align 1
  %789 = xor i64 %788, -2045702682710477249
  %790 = and i64 %789, 4294967295
  %791 = lshr i64 %789, 32
  %792 = mul nuw i64 %790, %791
  %793 = add i64 %730, %788
  %794 = add i64 %793, %792
  %795 = getelementptr inbounds nuw i8, ptr %19, i32 776
  %796 = load i64, ptr %795, align 1
  %797 = xor i64 %796, -4104099645253436473
  %798 = and i64 %797, 4294967295
  %799 = lshr i64 %797, 32
  %800 = mul nuw i64 %798, %799
  %801 = add i64 %738, %796
  %802 = add i64 %801, %800
  %803 = getelementptr inbounds nuw i8, ptr %19, i32 784
  %804 = load i64, ptr %803, align 1
  %805 = xor i64 %804, -3624173730817515445
  %806 = and i64 %805, 4294967295
  %807 = lshr i64 %805, 32
  %808 = mul nuw i64 %806, %807
  %809 = add i64 %746, %804
  %810 = add i64 %809, %808
  %811 = getelementptr inbounds nuw i8, ptr %19, i32 792
  %812 = load i64, ptr %811, align 1
  %813 = xor i64 %812, -2776342293574091063
  %814 = and i64 %813, 4294967295
  %815 = lshr i64 %813, 32
  %816 = mul nuw i64 %814, %815
  %817 = add i64 %754, %812
  %818 = add i64 %817, %816
  %819 = getelementptr inbounds nuw i8, ptr %19, i32 800
  %820 = load i64, ptr %819, align 1
  %821 = xor i64 %820, 3806645336748174467
  %822 = and i64 %821, 4294967295
  %823 = lshr i64 %821, 32
  %824 = mul nuw i64 %822, %823
  %825 = add i64 %762, %820
  %826 = add i64 %825, %824
  %827 = getelementptr inbounds nuw i8, ptr %19, i32 808
  %828 = load i64, ptr %827, align 1
  %829 = xor i64 %828, -426887675387993857
  %830 = and i64 %829, 4294967295
  %831 = lshr i64 %829, 32
  %832 = mul nuw i64 %830, %831
  %833 = add i64 %770, %828
  %834 = add i64 %833, %832
  %835 = getelementptr inbounds nuw i8, ptr %19, i32 816
  %836 = load i64, ptr %835, align 1
  %837 = xor i64 %836, -5192410362903929519
  %838 = and i64 %837, 4294967295
  %839 = lshr i64 %837, 32
  %840 = mul nuw i64 %838, %839
  %841 = add i64 %778, %836
  %842 = add i64 %841, %840
  %843 = getelementptr inbounds nuw i8, ptr %19, i32 824
  %844 = load i64, ptr %843, align 1
  %845 = xor i64 %844, 3014149081973282086
  %846 = and i64 %845, 4294967295
  %847 = lshr i64 %845, 32
  %848 = mul nuw i64 %846, %847
  %849 = add i64 %786, %844
  %850 = add i64 %849, %848
  %851 = getelementptr inbounds nuw i8, ptr %19, i32 832
  %852 = load i64, ptr %851, align 1
  %853 = xor i64 %852, -4104099645253436473
  %854 = and i64 %853, 4294967295
  %855 = lshr i64 %853, 32
  %856 = mul nuw i64 %854, %855
  %857 = add i64 %794, %852
  %858 = add i64 %857, %856
  %859 = getelementptr inbounds nuw i8, ptr %19, i32 840
  %860 = load i64, ptr %859, align 1
  %861 = xor i64 %860, -3624173730817515445
  %862 = and i64 %861, 4294967295
  %863 = lshr i64 %861, 32
  %864 = mul nuw i64 %862, %863
  %865 = add i64 %802, %860
  %866 = add i64 %865, %864
  %867 = getelementptr inbounds nuw i8, ptr %19, i32 848
  %868 = load i64, ptr %867, align 1
  %869 = xor i64 %868, -2776342293574091063
  %870 = and i64 %869, 4294967295
  %871 = lshr i64 %869, 32
  %872 = mul nuw i64 %870, %871
  %873 = add i64 %810, %868
  %874 = add i64 %873, %872
  %875 = getelementptr inbounds nuw i8, ptr %19, i32 856
  %876 = load i64, ptr %875, align 1
  %877 = xor i64 %876, 3806645336748174467
  %878 = and i64 %877, 4294967295
  %879 = lshr i64 %877, 32
  %880 = mul nuw i64 %878, %879
  %881 = add i64 %818, %876
  %882 = add i64 %881, %880
  %883 = getelementptr inbounds nuw i8, ptr %19, i32 864
  %884 = load i64, ptr %883, align 1
  %885 = xor i64 %884, -426887675387993857
  %886 = and i64 %885, 4294967295
  %887 = lshr i64 %885, 32
  %888 = mul nuw i64 %886, %887
  %889 = add i64 %826, %884
  %890 = add i64 %889, %888
  %891 = getelementptr inbounds nuw i8, ptr %19, i32 872
  %892 = load i64, ptr %891, align 1
  %893 = xor i64 %892, -5192410362903929519
  %894 = and i64 %893, 4294967295
  %895 = lshr i64 %893, 32
  %896 = mul nuw i64 %894, %895
  %897 = add i64 %834, %892
  %898 = add i64 %897, %896
  %899 = getelementptr inbounds nuw i8, ptr %19, i32 880
  %900 = load i64, ptr %899, align 1
  %901 = xor i64 %900, 3014149081973282086
  %902 = and i64 %901, 4294967295
  %903 = lshr i64 %901, 32
  %904 = mul nuw i64 %902, %903
  %905 = add i64 %842, %900
  %906 = add i64 %905, %904
  %907 = getelementptr inbounds nuw i8, ptr %19, i32 888
  %908 = load i64, ptr %907, align 1
  %909 = xor i64 %908, 9027362082514189912
  %910 = and i64 %909, 4294967295
  %911 = lshr i64 %909, 32
  %912 = mul nuw i64 %910, %911
  %913 = add i64 %850, %908
  %914 = add i64 %913, %912
  %915 = getelementptr inbounds nuw i8, ptr %19, i32 896
  %916 = load i64, ptr %915, align 1
  %917 = xor i64 %916, -3624173730817515445
  %918 = and i64 %917, 4294967295
  %919 = lshr i64 %917, 32
  %920 = mul nuw i64 %918, %919
  %921 = add i64 %858, %916
  %922 = add i64 %921, %920
  %923 = getelementptr inbounds nuw i8, ptr %19, i32 904
  %924 = load i64, ptr %923, align 1
  %925 = xor i64 %924, -2776342293574091063
  %926 = and i64 %925, 4294967295
  %927 = lshr i64 %925, 32
  %928 = mul nuw i64 %926, %927
  %929 = add i64 %866, %924
  %930 = add i64 %929, %928
  %931 = getelementptr inbounds nuw i8, ptr %19, i32 912
  %932 = load i64, ptr %931, align 1
  %933 = xor i64 %932, 3806645336748174467
  %934 = and i64 %933, 4294967295
  %935 = lshr i64 %933, 32
  %936 = mul nuw i64 %934, %935
  %937 = add i64 %874, %932
  %938 = add i64 %937, %936
  %939 = getelementptr inbounds nuw i8, ptr %19, i32 920
  %940 = load i64, ptr %939, align 1
  %941 = xor i64 %940, -426887675387993857
  %942 = and i64 %941, 4294967295
  %943 = lshr i64 %941, 32
  %944 = mul nuw i64 %942, %943
  %945 = add i64 %882, %940
  %946 = add i64 %945, %944
  %947 = getelementptr inbounds nuw i8, ptr %19, i32 928
  %948 = load i64, ptr %947, align 1
  %949 = xor i64 %948, -5192410362903929519
  %950 = and i64 %949, 4294967295
  %951 = lshr i64 %949, 32
  %952 = mul nuw i64 %950, %951
  %953 = add i64 %890, %948
  %954 = add i64 %953, %952
  %955 = getelementptr inbounds nuw i8, ptr %19, i32 936
  %956 = load i64, ptr %955, align 1
  %957 = xor i64 %956, 3014149081973282086
  %958 = and i64 %957, 4294967295
  %959 = lshr i64 %957, 32
  %960 = mul nuw i64 %958, %959
  %961 = add i64 %898, %956
  %962 = add i64 %961, %960
  %963 = getelementptr inbounds nuw i8, ptr %19, i32 944
  %964 = load i64, ptr %963, align 1
  %965 = xor i64 %964, 9027362082514189912
  %966 = and i64 %965, 4294967295
  %967 = lshr i64 %965, 32
  %968 = mul nuw i64 %966, %967
  %969 = add i64 %906, %964
  %970 = add i64 %969, %968
  %971 = getelementptr inbounds nuw i8, ptr %19, i32 952
  %972 = load i64, ptr %971, align 1
  %973 = xor i64 %972, 8849628031031490769
  %974 = and i64 %973, 4294967295
  %975 = lshr i64 %973, 32
  %976 = mul nuw i64 %974, %975
  %977 = add i64 %914, %972
  %978 = add i64 %977, %976
  %979 = getelementptr inbounds nuw i8, ptr %19, i32 960
  %980 = load i64, ptr %979, align 1
  %981 = xor i64 %980, -2776342293574091063
  %982 = and i64 %981, 4294967295
  %983 = lshr i64 %981, 32
  %984 = mul nuw i64 %982, %983
  %985 = add i64 %922, %980
  %986 = add i64 %985, %984
  %987 = getelementptr inbounds nuw i8, ptr %19, i32 968
  %988 = load i64, ptr %987, align 1
  %989 = xor i64 %988, 3806645336748174467
  %990 = and i64 %989, 4294967295
  %991 = lshr i64 %989, 32
  %992 = mul nuw i64 %990, %991
  %993 = add i64 %930, %988
  %994 = add i64 %993, %992
  %995 = getelementptr inbounds nuw i8, ptr %19, i32 976
  %996 = load i64, ptr %995, align 1
  %997 = xor i64 %996, -426887675387993857
  %998 = and i64 %997, 4294967295
  %999 = lshr i64 %997, 32
  %1000 = mul nuw i64 %998, %999
  %1001 = add i64 %938, %996
  %1002 = add i64 %1001, %1000
  %1003 = getelementptr inbounds nuw i8, ptr %19, i32 984
  %1004 = load i64, ptr %1003, align 1
  %1005 = xor i64 %1004, -5192410362903929519
  %1006 = and i64 %1005, 4294967295
  %1007 = lshr i64 %1005, 32
  %1008 = mul nuw i64 %1006, %1007
  %1009 = add i64 %946, %1004
  %1010 = add i64 %1009, %1008
  %1011 = getelementptr inbounds nuw i8, ptr %19, i32 992
  %1012 = load i64, ptr %1011, align 1
  %1013 = xor i64 %1012, 3014149081973282086
  %1014 = and i64 %1013, 4294967295
  %1015 = lshr i64 %1013, 32
  %1016 = mul nuw i64 %1014, %1015
  %1017 = add i64 %954, %1012
  %1018 = add i64 %1017, %1016
  %1019 = getelementptr inbounds nuw i8, ptr %19, i32 1000
  %1020 = load i64, ptr %1019, align 1
  %1021 = xor i64 %1020, 9027362082514189912
  %1022 = and i64 %1021, 4294967295
  %1023 = lshr i64 %1021, 32
  %1024 = mul nuw i64 %1022, %1023
  %1025 = add i64 %962, %1020
  %1026 = add i64 %1025, %1024
  %1027 = getelementptr inbounds nuw i8, ptr %19, i32 1008
  %1028 = load i64, ptr %1027, align 1
  %1029 = xor i64 %1028, 8849628031031490769
  %1030 = and i64 %1029, 4294967295
  %1031 = lshr i64 %1029, 32
  %1032 = mul nuw i64 %1030, %1031
  %1033 = add i64 %970, %1028
  %1034 = add i64 %1033, %1032
  %1035 = getelementptr inbounds nuw i8, ptr %19, i32 1016
  %1036 = load i64, ptr %1035, align 1
  %1037 = xor i64 %1036, -7703965541554505073
  %1038 = and i64 %1037, 4294967295
  %1039 = lshr i64 %1037, 32
  %1040 = mul nuw i64 %1038, %1039
  %1041 = add i64 %978, %1036
  %1042 = add i64 %1041, %1040
  %1043 = lshr i64 %986, 47
  %1044 = xor i64 %986, %1043
  %1045 = xor i64 %1044, 3806645336748174467
  %1046 = mul i64 %1045, 2654435761
  %1047 = lshr i64 %994, 47
  %1048 = xor i64 %994, %1047
  %1049 = xor i64 %1048, -426887675387993857
  %1050 = mul i64 %1049, 2654435761
  %1051 = lshr i64 %1002, 47
  %1052 = xor i64 %1002, %1051
  %1053 = xor i64 %1052, -5192410362903929519
  %1054 = mul i64 %1053, 2654435761
  %1055 = lshr i64 %1010, 47
  %1056 = xor i64 %1010, %1055
  %1057 = xor i64 %1056, 3014149081973282086
  %1058 = mul i64 %1057, 2654435761
  %1059 = lshr i64 %1018, 47
  %1060 = xor i64 %1018, %1059
  %1061 = xor i64 %1060, 9027362082514189912
  %1062 = mul i64 %1061, 2654435761
  %1063 = lshr i64 %1026, 47
  %1064 = xor i64 %1026, %1063
  %1065 = xor i64 %1064, 8849628031031490769
  %1066 = mul i64 %1065, 2654435761
  %1067 = lshr i64 %1034, 47
  %1068 = xor i64 %1034, %1067
  %1069 = xor i64 %1068, -7703965541554505073
  %1070 = mul i64 %1069, 2654435761
  %1071 = lshr i64 %1042, 47
  %1072 = xor i64 %1042, %1071
  %1073 = xor i64 %1072, -4950792452503503926
  %1074 = mul i64 %1073, 2654435761
  %1075 = add nuw nsw i32 %17, 1
  %1076 = icmp eq i32 %1075, %6
  br i1 %1076, label %1077, label %8

1077:                                             ; preds = %8, %4
  %1078 = phi i64 [ 0, %4 ], [ %1074, %8 ]
  %1079 = phi i64 [ %5, %4 ], [ %1070, %8 ]
  %1080 = phi i64 [ 2870177450012600261, %4 ], [ %1066, %8 ]
  %1081 = phi i64 [ -8796714831421723037, %4 ], [ %1062, %8 ]
  %1082 = phi i64 [ 1609587929392839161, %4 ], [ %1058, %8 ]
  %1083 = phi i64 [ -4417276706812531889, %4 ], [ %1054, %8 ]
  %1084 = phi i64 [ -7046029288634856825, %4 ], [ %1050, %8 ]
  %1085 = phi i64 [ %3, %4 ], [ %1046, %8 ]
  %1086 = lshr i32 %2, 6
  %1087 = and i32 %1086, 15
  %1088 = and i32 %2, -1024
  %1089 = getelementptr inbounds nuw i8, ptr %1, i32 %1088
  %1090 = icmp eq i32 %1087, 0
  br i1 %1090, label %1184, label %1091

1091:                                             ; preds = %1077, %1091
  %1092 = phi i64 [ %1181, %1091 ], [ %1078, %1077 ]
  %1093 = phi i64 [ %1171, %1091 ], [ %1079, %1077 ]
  %1094 = phi i64 [ %1161, %1091 ], [ %1080, %1077 ]
  %1095 = phi i64 [ %1151, %1091 ], [ %1081, %1077 ]
  %1096 = phi i64 [ %1141, %1091 ], [ %1082, %1077 ]
  %1097 = phi i64 [ %1131, %1091 ], [ %1083, %1077 ]
  %1098 = phi i64 [ %1121, %1091 ], [ %1084, %1077 ]
  %1099 = phi i64 [ %1111, %1091 ], [ %1085, %1077 ]
  %1100 = phi i64 [ %1115, %1091 ], [ 2568260970027576377, %1077 ]
  %1101 = phi i32 [ %1182, %1091 ], [ 0, %1077 ]
  %1102 = phi ptr [ %1114, %1091 ], [ @kKey, %1077 ]
  %1103 = shl nuw nsw i32 %1101, 6
  %1104 = getelementptr inbounds nuw i8, ptr %1089, i32 %1103
  %1105 = load i64, ptr %1104, align 1
  %1106 = xor i64 %1105, %1100
  %1107 = and i64 %1106, 4294967295
  %1108 = lshr i64 %1106, 32
  %1109 = mul nuw i64 %1107, %1108
  %1110 = add i64 %1105, %1099
  %1111 = add i64 %1110, %1109
  %1112 = getelementptr inbounds nuw i8, ptr %1104, i32 8
  %1113 = load i64, ptr %1112, align 1
  %1114 = getelementptr inbounds nuw i8, ptr %1102, i32 8
  %1115 = load i64, ptr %1114, align 4
  %1116 = xor i64 %1115, %1113
  %1117 = and i64 %1116, 4294967295
  %1118 = lshr i64 %1116, 32
  %1119 = mul nuw i64 %1117, %1118
  %1120 = add i64 %1113, %1098
  %1121 = add i64 %1120, %1119
  %1122 = getelementptr inbounds nuw i8, ptr %1104, i32 16
  %1123 = load i64, ptr %1122, align 1
  %1124 = getelementptr inbounds nuw i8, ptr %1102, i32 16
  %1125 = load i64, ptr %1124, align 4
  %1126 = xor i64 %1125, %1123
  %1127 = and i64 %1126, 4294967295
  %1128 = lshr i64 %1126, 32
  %1129 = mul nuw i64 %1127, %1128
  %1130 = add i64 %1123, %1097
  %1131 = add i64 %1130, %1129
  %1132 = getelementptr inbounds nuw i8, ptr %1104, i32 24
  %1133 = load i64, ptr %1132, align 1
  %1134 = getelementptr inbounds nuw i8, ptr %1102, i32 24
  %1135 = load i64, ptr %1134, align 4
  %1136 = xor i64 %1135, %1133
  %1137 = and i64 %1136, 4294967295
  %1138 = lshr i64 %1136, 32
  %1139 = mul nuw i64 %1137, %1138
  %1140 = add i64 %1133, %1096
  %1141 = add i64 %1140, %1139
  %1142 = getelementptr inbounds nuw i8, ptr %1104, i32 32
  %1143 = load i64, ptr %1142, align 1
  %1144 = getelementptr inbounds nuw i8, ptr %1102, i32 32
  %1145 = load i64, ptr %1144, align 4
  %1146 = xor i64 %1145, %1143
  %1147 = and i64 %1146, 4294967295
  %1148 = lshr i64 %1146, 32
  %1149 = mul nuw i64 %1147, %1148
  %1150 = add i64 %1143, %1095
  %1151 = add i64 %1150, %1149
  %1152 = getelementptr inbounds nuw i8, ptr %1104, i32 40
  %1153 = load i64, ptr %1152, align 1
  %1154 = getelementptr inbounds nuw i8, ptr %1102, i32 40
  %1155 = load i64, ptr %1154, align 4
  %1156 = xor i64 %1155, %1153
  %1157 = and i64 %1156, 4294967295
  %1158 = lshr i64 %1156, 32
  %1159 = mul nuw i64 %1157, %1158
  %1160 = add i64 %1153, %1094
  %1161 = add i64 %1160, %1159
  %1162 = getelementptr inbounds nuw i8, ptr %1104, i32 48
  %1163 = load i64, ptr %1162, align 1
  %1164 = getelementptr inbounds nuw i8, ptr %1102, i32 48
  %1165 = load i64, ptr %1164, align 4
  %1166 = xor i64 %1165, %1163
  %1167 = and i64 %1166, 4294967295
  %1168 = lshr i64 %1166, 32
  %1169 = mul nuw i64 %1167, %1168
  %1170 = add i64 %1163, %1093
  %1171 = add i64 %1170, %1169
  %1172 = getelementptr inbounds nuw i8, ptr %1104, i32 56
  %1173 = load i64, ptr %1172, align 1
  %1174 = getelementptr inbounds nuw i8, ptr %1102, i32 56
  %1175 = load i64, ptr %1174, align 4
  %1176 = xor i64 %1175, %1173
  %1177 = and i64 %1176, 4294967295
  %1178 = lshr i64 %1176, 32
  %1179 = mul nuw i64 %1177, %1178
  %1180 = add i64 %1173, %1092
  %1181 = add i64 %1180, %1179
  %1182 = add nuw nsw i32 %1101, 1
  %1183 = icmp eq i32 %1182, %1087
  br i1 %1183, label %1184, label %1091

1184:                                             ; preds = %1091, %1077
  %1185 = phi i64 [ %1078, %1077 ], [ %1181, %1091 ]
  %1186 = phi i64 [ %1079, %1077 ], [ %1171, %1091 ]
  %1187 = phi i64 [ %1080, %1077 ], [ %1161, %1091 ]
  %1188 = phi i64 [ %1081, %1077 ], [ %1151, %1091 ]
  %1189 = phi i64 [ %1082, %1077 ], [ %1141, %1091 ]
  %1190 = phi i64 [ %1083, %1077 ], [ %1131, %1091 ]
  %1191 = phi i64 [ %1084, %1077 ], [ %1121, %1091 ]
  %1192 = phi i64 [ %1085, %1077 ], [ %1111, %1091 ]
  %1193 = and i32 %2, 63
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1278, label %1195

1195:                                             ; preds = %1184
  %1196 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %1197 = getelementptr inbounds i8, ptr %1196, i32 -64
  %1198 = shl nuw nsw i32 %1087, 3
  %1199 = getelementptr inbounds nuw i8, ptr @kKey, i32 %1198
  %1200 = load i64, ptr %1197, align 1
  %1201 = load i64, ptr %1199, align 8
  %1202 = xor i64 %1201, %1200
  %1203 = and i64 %1202, 4294967295
  %1204 = lshr i64 %1202, 32
  %1205 = mul nuw i64 %1203, %1204
  %1206 = add i64 %1200, %1192
  %1207 = add i64 %1206, %1205
  %1208 = getelementptr inbounds i8, ptr %1196, i32 -56
  %1209 = load i64, ptr %1208, align 1
  %1210 = getelementptr inbounds nuw i8, ptr %1199, i32 8
  %1211 = load i64, ptr %1210, align 8
  %1212 = xor i64 %1211, %1209
  %1213 = and i64 %1212, 4294967295
  %1214 = lshr i64 %1212, 32
  %1215 = mul nuw i64 %1213, %1214
  %1216 = add i64 %1209, %1191
  %1217 = add i64 %1216, %1215
  %1218 = getelementptr inbounds i8, ptr %1196, i32 -48
  %1219 = load i64, ptr %1218, align 1
  %1220 = getelementptr inbounds nuw i8, ptr %1199, i32 16
  %1221 = load i64, ptr %1220, align 8
  %1222 = xor i64 %1221, %1219
  %1223 = and i64 %1222, 4294967295
  %1224 = lshr i64 %1222, 32
  %1225 = mul nuw i64 %1223, %1224
  %1226 = add i64 %1219, %1190
  %1227 = add i64 %1226, %1225
  %1228 = getelementptr inbounds i8, ptr %1196, i32 -40
  %1229 = load i64, ptr %1228, align 1
  %1230 = getelementptr inbounds nuw i8, ptr %1199, i32 24
  %1231 = load i64, ptr %1230, align 8
  %1232 = xor i64 %1231, %1229
  %1233 = and i64 %1232, 4294967295
  %1234 = lshr i64 %1232, 32
  %1235 = mul nuw i64 %1233, %1234
  %1236 = add i64 %1229, %1189
  %1237 = add i64 %1236, %1235
  %1238 = getelementptr inbounds i8, ptr %1196, i32 -32
  %1239 = load i64, ptr %1238, align 1
  %1240 = getelementptr inbounds nuw i8, ptr %1199, i32 32
  %1241 = load i64, ptr %1240, align 8
  %1242 = xor i64 %1241, %1239
  %1243 = and i64 %1242, 4294967295
  %1244 = lshr i64 %1242, 32
  %1245 = mul nuw i64 %1243, %1244
  %1246 = add i64 %1239, %1188
  %1247 = add i64 %1246, %1245
  %1248 = getelementptr inbounds i8, ptr %1196, i32 -24
  %1249 = load i64, ptr %1248, align 1
  %1250 = getelementptr inbounds nuw i8, ptr %1199, i32 40
  %1251 = load i64, ptr %1250, align 8
  %1252 = xor i64 %1251, %1249
  %1253 = and i64 %1252, 4294967295
  %1254 = lshr i64 %1252, 32
  %1255 = mul nuw i64 %1253, %1254
  %1256 = add i64 %1249, %1187
  %1257 = add i64 %1256, %1255
  %1258 = getelementptr inbounds i8, ptr %1196, i32 -16
  %1259 = load i64, ptr %1258, align 1
  %1260 = getelementptr inbounds nuw i8, ptr %1199, i32 48
  %1261 = load i64, ptr %1260, align 8
  %1262 = xor i64 %1261, %1259
  %1263 = and i64 %1262, 4294967295
  %1264 = lshr i64 %1262, 32
  %1265 = mul nuw i64 %1263, %1264
  %1266 = add i64 %1259, %1186
  %1267 = add i64 %1266, %1265
  %1268 = getelementptr inbounds i8, ptr %1196, i32 -8
  %1269 = load i64, ptr %1268, align 1
  %1270 = getelementptr inbounds nuw i8, ptr %1199, i32 56
  %1271 = load i64, ptr %1270, align 8
  %1272 = xor i64 %1271, %1269
  %1273 = and i64 %1272, 4294967295
  %1274 = lshr i64 %1272, 32
  %1275 = mul nuw i64 %1273, %1274
  %1276 = add i64 %1269, %1185
  %1277 = add i64 %1276, %1275
  br label %1278

1278:                                             ; preds = %1184, %1195
  %1279 = phi i64 [ %1185, %1184 ], [ %1277, %1195 ]
  %1280 = phi i64 [ %1186, %1184 ], [ %1267, %1195 ]
  %1281 = phi i64 [ %1187, %1184 ], [ %1257, %1195 ]
  %1282 = phi i64 [ %1188, %1184 ], [ %1247, %1195 ]
  %1283 = phi i64 [ %1189, %1184 ], [ %1237, %1195 ]
  %1284 = phi i64 [ %1190, %1184 ], [ %1227, %1195 ]
  %1285 = phi i64 [ %1191, %1184 ], [ %1217, %1195 ]
  %1286 = phi i64 [ %1192, %1184 ], [ %1207, %1195 ]
  %1287 = zext i32 %2 to i64
  %1288 = mul i64 %1287, -7046029288634856825
  %1289 = xor i64 %1286, 2568260970027576377
  %1290 = xor i64 %1285, -639039334258736852
  %1291 = lshr i64 %1289, 32
  %1292 = lshr i64 %1290, 32
  %1293 = mul nuw i64 %1291, %1292
  %1294 = and i64 %1289, 4294967295
  %1295 = mul nuw i64 %1294, %1292
  %1296 = and i64 %1290, 4294967295
  %1297 = mul nuw i64 %1291, %1296
  %1298 = mul nuw i64 %1294, %1296
  %1299 = shl i64 %1295, 32
  %1300 = add i64 %1299, %1298
  %1301 = icmp ult i64 %1300, %1298
  %1302 = zext i1 %1301 to i64
  %1303 = add i64 %1295, %1297
  %1304 = shl i64 %1303, 32
  %1305 = add i64 %1304, %1298
  %1306 = icmp ult i64 %1305, %1300
  %1307 = zext i1 %1306 to i64
  %1308 = lshr i64 %1295, 32
  %1309 = add nuw i64 %1308, %1293
  %1310 = lshr i64 %1297, 32
  %1311 = add nuw i64 %1309, %1310
  %1312 = add nuw i64 %1311, %1302
  %1313 = add nuw i64 %1312, %1307
  %1314 = xor i64 %1313, %1305
  %1315 = xor i64 %1284, -8966499887502561815
  %1316 = xor i64 %1283, -5209706959179045724
  %1317 = lshr i64 %1315, 32
  %1318 = lshr i64 %1316, 32
  %1319 = mul nuw i64 %1317, %1318
  %1320 = and i64 %1315, 4294967295
  %1321 = mul nuw i64 %1320, %1318
  %1322 = and i64 %1316, 4294967295
  %1323 = mul nuw i64 %1317, %1322
  %1324 = mul nuw i64 %1320, %1322
  %1325 = shl i64 %1321, 32
  %1326 = add i64 %1325, %1324
  %1327 = icmp ult i64 %1326, %1324
  %1328 = zext i1 %1327 to i64
  %1329 = add i64 %1321, %1323
  %1330 = shl i64 %1329, 32
  %1331 = add i64 %1330, %1324
  %1332 = icmp ult i64 %1331, %1326
  %1333 = zext i1 %1332 to i64
  %1334 = lshr i64 %1321, 32
  %1335 = add nuw i64 %1334, %1319
  %1336 = lshr i64 %1323, 32
  %1337 = add nuw i64 %1335, %1336
  %1338 = add nuw i64 %1337, %1328
  %1339 = add nuw i64 %1338, %1333
  %1340 = xor i64 %1339, %1331
  %1341 = xor i64 %1282, -3692699387471206834
  %1342 = xor i64 %1281, -3675093282664558467
  %1343 = lshr i64 %1341, 32
  %1344 = lshr i64 %1342, 32
  %1345 = mul nuw i64 %1343, %1344
  %1346 = and i64 %1341, 4294967295
  %1347 = mul nuw i64 %1346, %1344
  %1348 = and i64 %1342, 4294967295
  %1349 = mul nuw i64 %1343, %1348
  %1350 = mul nuw i64 %1346, %1348
  %1351 = shl i64 %1347, 32
  %1352 = add i64 %1351, %1350
  %1353 = icmp ult i64 %1352, %1350
  %1354 = zext i1 %1353 to i64
  %1355 = add i64 %1347, %1349
  %1356 = shl i64 %1355, 32
  %1357 = add i64 %1356, %1350
  %1358 = icmp ult i64 %1357, %1352
  %1359 = zext i1 %1358 to i64
  %1360 = lshr i64 %1347, 32
  %1361 = add nuw i64 %1360, %1345
  %1362 = lshr i64 %1349, 32
  %1363 = add nuw i64 %1361, %1362
  %1364 = add nuw i64 %1363, %1354
  %1365 = add nuw i64 %1364, %1359
  %1366 = xor i64 %1365, %1357
  %1367 = xor i64 %1280, -629619327510231436
  %1368 = xor i64 %1279, -9134946782546652954
  %1369 = lshr i64 %1367, 32
  %1370 = lshr i64 %1368, 32
  %1371 = mul nuw i64 %1369, %1370
  %1372 = and i64 %1367, 4294967295
  %1373 = mul nuw i64 %1372, %1370
  %1374 = and i64 %1368, 4294967295
  %1375 = mul nuw i64 %1369, %1374
  %1376 = mul nuw i64 %1372, %1374
  %1377 = shl i64 %1373, 32
  %1378 = add i64 %1377, %1376
  %1379 = icmp ult i64 %1378, %1376
  %1380 = zext i1 %1379 to i64
  %1381 = add i64 %1373, %1375
  %1382 = shl i64 %1381, 32
  %1383 = add i64 %1382, %1376
  %1384 = icmp ult i64 %1383, %1378
  %1385 = zext i1 %1384 to i64
  %1386 = lshr i64 %1373, 32
  %1387 = add nuw i64 %1386, %1371
  %1388 = lshr i64 %1375, 32
  %1389 = add nuw i64 %1387, %1388
  %1390 = add nuw i64 %1389, %1380
  %1391 = add nuw i64 %1390, %1385
  %1392 = xor i64 %1391, %1383
  %1393 = add i64 %1392, %1288
  %1394 = add i64 %1393, %1366
  %1395 = add i64 %1394, %1340
  %1396 = add i64 %1395, %1314
  %1397 = lshr i64 %1396, 37
  %1398 = xor i64 %1397, %1396
  %1399 = mul i64 %1398, 1609587929392839161
  %1400 = lshr i64 %1399, 32
  %1401 = xor i64 %1400, %1399
  %1402 = mul i64 %1287, -4417276706812531889
  %1403 = add i64 %1402, -4417276706812531889
  %1404 = xor i64 %1286, -7943504444863786309
  %1405 = xor i64 %1285, 1968968742000944523
  %1406 = lshr i64 %1404, 32
  %1407 = lshr i64 %1405, 32
  %1408 = mul nuw i64 %1406, %1407
  %1409 = and i64 %1404, 4294967295
  %1410 = mul nuw i64 %1409, %1407
  %1411 = and i64 %1405, 4294967295
  %1412 = mul nuw i64 %1406, %1411
  %1413 = mul nuw i64 %1409, %1411
  %1414 = shl i64 %1410, 32
  %1415 = add i64 %1414, %1413
  %1416 = icmp ult i64 %1415, %1413
  %1417 = zext i1 %1416 to i64
  %1418 = add i64 %1410, %1412
  %1419 = shl i64 %1418, 32
  %1420 = add i64 %1419, %1413
  %1421 = icmp ult i64 %1420, %1415
  %1422 = zext i1 %1421 to i64
  %1423 = lshr i64 %1410, 32
  %1424 = add nuw i64 %1423, %1408
  %1425 = lshr i64 %1412, 32
  %1426 = add nuw i64 %1424, %1425
  %1427 = add nuw i64 %1426, %1417
  %1428 = add nuw i64 %1427, %1422
  %1429 = xor i64 %1428, %1420
  %1430 = xor i64 %1284, -6769480549562824553
  %1431 = xor i64 %1283, -6206333191815827642
  %1432 = lshr i64 %1430, 32
  %1433 = lshr i64 %1431, 32
  %1434 = mul nuw i64 %1432, %1433
  %1435 = and i64 %1430, 4294967295
  %1436 = mul nuw i64 %1435, %1433
  %1437 = and i64 %1431, 4294967295
  %1438 = mul nuw i64 %1432, %1437
  %1439 = mul nuw i64 %1435, %1437
  %1440 = shl i64 %1436, 32
  %1441 = add i64 %1440, %1439
  %1442 = icmp ult i64 %1441, %1439
  %1443 = zext i1 %1442 to i64
  %1444 = add i64 %1436, %1438
  %1445 = shl i64 %1444, 32
  %1446 = add i64 %1445, %1439
  %1447 = icmp ult i64 %1446, %1441
  %1448 = zext i1 %1447 to i64
  %1449 = lshr i64 %1436, 32
  %1450 = add nuw i64 %1449, %1434
  %1451 = lshr i64 %1438, 32
  %1452 = add nuw i64 %1450, %1451
  %1453 = add nuw i64 %1452, %1443
  %1454 = add nuw i64 %1453, %1448
  %1455 = xor i64 %1454, %1446
  %1456 = xor i64 %1282, -2045702682710477249
  %1457 = xor i64 %1281, -4104099645253436473
  %1458 = lshr i64 %1456, 32
  %1459 = lshr i64 %1457, 32
  %1460 = mul nuw i64 %1458, %1459
  %1461 = and i64 %1456, 4294967295
  %1462 = mul nuw i64 %1461, %1459
  %1463 = and i64 %1457, 4294967295
  %1464 = mul nuw i64 %1458, %1463
  %1465 = mul nuw i64 %1461, %1463
  %1466 = shl i64 %1462, 32
  %1467 = add i64 %1466, %1465
  %1468 = icmp ult i64 %1467, %1465
  %1469 = zext i1 %1468 to i64
  %1470 = add i64 %1462, %1464
  %1471 = shl i64 %1470, 32
  %1472 = add i64 %1471, %1465
  %1473 = icmp ult i64 %1472, %1467
  %1474 = zext i1 %1473 to i64
  %1475 = lshr i64 %1462, 32
  %1476 = add nuw i64 %1475, %1460
  %1477 = lshr i64 %1464, 32
  %1478 = add nuw i64 %1476, %1477
  %1479 = add nuw i64 %1478, %1469
  %1480 = add nuw i64 %1479, %1474
  %1481 = xor i64 %1480, %1472
  %1482 = xor i64 %1280, -3624173730817515445
  %1483 = xor i64 %1279, -2776342293574091063
  %1484 = lshr i64 %1482, 32
  %1485 = lshr i64 %1483, 32
  %1486 = mul nuw i64 %1484, %1485
  %1487 = and i64 %1482, 4294967295
  %1488 = mul nuw i64 %1487, %1485
  %1489 = and i64 %1483, 4294967295
  %1490 = mul nuw i64 %1484, %1489
  %1491 = mul nuw i64 %1487, %1489
  %1492 = shl i64 %1488, 32
  %1493 = add i64 %1492, %1491
  %1494 = icmp ult i64 %1493, %1491
  %1495 = zext i1 %1494 to i64
  %1496 = add i64 %1488, %1490
  %1497 = shl i64 %1496, 32
  %1498 = add i64 %1497, %1491
  %1499 = icmp ult i64 %1498, %1493
  %1500 = zext i1 %1499 to i64
  %1501 = lshr i64 %1488, 32
  %1502 = add nuw i64 %1501, %1486
  %1503 = lshr i64 %1490, 32
  %1504 = add nuw i64 %1502, %1503
  %1505 = add nuw i64 %1504, %1495
  %1506 = add nuw i64 %1505, %1500
  %1507 = xor i64 %1506, %1498
  %1508 = add i64 %1403, %1507
  %1509 = add i64 %1508, %1481
  %1510 = add i64 %1509, %1455
  %1511 = add i64 %1510, %1429
  %1512 = lshr i64 %1511, 37
  %1513 = xor i64 %1512, %1511
  %1514 = mul i64 %1513, 1609587929392839161
  %1515 = lshr i64 %1514, 32
  %1516 = xor i64 %1515, %1514
  store i64 %1401, ptr %0, align 4
  %1517 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %1516, ptr %1517, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @XXH3_128bits(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 4 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %4 = icmp ult i32 %2, 17
  br i1 %4, label %5, label %153

5:                                                ; preds = %3
  %6 = icmp samesign ugt i32 %2, 8
  br i1 %6, label %7, label %80

7:                                                ; preds = %5
  %8 = zext nneg i32 %2 to i64
  %9 = mul i64 %8, -7046029288634856825
  %10 = mul i64 %8, -4417276706812531889
  %11 = load i64, ptr %1, align 1, !noalias !26
  %12 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %13 = getelementptr inbounds i8, ptr %12, i32 -8
  %14 = load i64, ptr %13, align 1, !noalias !26
  %15 = add i64 %11, 2568260970027576377
  %16 = add i64 %14, -639039334258736852
  %17 = lshr i64 %15, 32
  %18 = lshr i64 %16, 32
  %19 = mul nuw i64 %18, %17
  %20 = and i64 %15, 4294967295
  %21 = mul nuw i64 %18, %20
  %22 = and i64 %16, 4294967295
  %23 = mul nuw i64 %22, %17
  %24 = mul nuw i64 %22, %20
  %25 = shl i64 %21, 32
  %26 = add i64 %25, %24
  %27 = icmp ult i64 %26, %24
  %28 = zext i1 %27 to i64
  %29 = add i64 %21, %23
  %30 = shl i64 %29, 32
  %31 = add i64 %30, %24
  %32 = icmp ult i64 %31, %26
  %33 = zext i1 %32 to i64
  %34 = lshr i64 %21, 32
  %35 = add nuw i64 %34, %19
  %36 = lshr i64 %23, 32
  %37 = add nuw i64 %35, %36
  %38 = add nuw i64 %37, %28
  %39 = add nuw i64 %38, %33
  %40 = xor i64 %39, %31
  %41 = add i64 %40, %9
  %42 = add i64 %11, -8966499887502561815
  %43 = add i64 %14, -5209706959179045724
  %44 = lshr i64 %42, 32
  %45 = lshr i64 %43, 32
  %46 = mul nuw i64 %45, %44
  %47 = and i64 %42, 4294967295
  %48 = mul nuw i64 %45, %47
  %49 = and i64 %43, 4294967295
  %50 = mul nuw i64 %49, %44
  %51 = mul nuw i64 %49, %47
  %52 = shl i64 %48, 32
  %53 = add i64 %52, %51
  %54 = icmp ult i64 %53, %51
  %55 = zext i1 %54 to i64
  %56 = add i64 %48, %50
  %57 = shl i64 %56, 32
  %58 = add i64 %57, %51
  %59 = icmp ult i64 %58, %53
  %60 = zext i1 %59 to i64
  %61 = lshr i64 %48, 32
  %62 = add nuw i64 %61, %46
  %63 = lshr i64 %50, 32
  %64 = add nuw i64 %62, %63
  %65 = add nuw i64 %64, %55
  %66 = add nuw i64 %65, %60
  %67 = xor i64 %66, %58
  %68 = add i64 %67, %10
  %69 = lshr i64 %41, 37
  %70 = xor i64 %69, %41
  %71 = mul i64 %70, 1609587929392839161
  %72 = lshr i64 %71, 32
  %73 = xor i64 %72, %71
  store i64 %73, ptr %0, align 4, !alias.scope !29
  %74 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %75 = lshr i64 %68, 37
  %76 = xor i64 %75, %68
  %77 = mul i64 %76, 1609587929392839161
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  store i64 %79, ptr %74, align 4, !alias.scope !29
  br label %442

80:                                               ; preds = %5
  %81 = icmp samesign ugt i32 %2, 3
  br i1 %81, label %82, label %114

82:                                               ; preds = %80
  %83 = load i32, ptr %1, align 1, !noalias !26
  %84 = add i32 %83, -1191285703
  %85 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %86 = getelementptr inbounds i8, ptr %85, i32 -4
  %87 = load i32, ptr %86, align 1, !noalias !26
  %88 = add i32 %87, 597969854
  %89 = add i32 %84, %2
  %90 = zext i32 %89 to i64
  %91 = zext i32 %88 to i64
  %92 = shl nuw i64 %91, 32
  %93 = or disjoint i64 %92, %90
  %94 = zext i32 %84 to i64
  %95 = mul nuw i64 %91, %94
  %96 = add i64 %93, %95
  %97 = zext nneg i32 %2 to i64
  %98 = mul i64 %97, -7046029288634856825
  %99 = mul i64 %94, -4417276706812531889
  %100 = add i64 %99, %98
  %101 = mul i64 %91, 1609587929392839161
  %102 = add i64 %100, %101
  %103 = lshr i64 %96, 37
  %104 = xor i64 %103, %96
  %105 = mul i64 %104, 1609587929392839161
  %106 = lshr i64 %105, 32
  %107 = xor i64 %106, %105
  store i64 %107, ptr %0, align 4, !alias.scope !32
  %108 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %109 = lshr i64 %102, 37
  %110 = xor i64 %109, %102
  %111 = mul i64 %110, 1609587929392839161
  %112 = lshr i64 %111, 32
  %113 = xor i64 %112, %111
  store i64 %113, ptr %108, align 4, !alias.scope !32
  br label %442

114:                                              ; preds = %80
  %115 = icmp eq i32 %2, 0
  br i1 %115, label %152, label %116

116:                                              ; preds = %114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %117 = load i8, ptr %1, align 1, !noalias !38
  %118 = lshr i32 %2, 1
  %119 = getelementptr inbounds nuw i8, ptr %1, i32 %118
  %120 = load i8, ptr %119, align 1, !noalias !38
  %121 = getelementptr i8, ptr %1, i32 %2
  %122 = getelementptr i8, ptr %121, i32 -1
  %123 = load i8, ptr %122, align 1, !noalias !38
  %124 = zext i8 %117 to i32
  %125 = zext i8 %120 to i32
  %126 = shl nuw nsw i32 %125, 8
  %127 = or disjoint i32 %126, %124
  %128 = zext i8 %123 to i32
  %129 = shl nuw nsw i32 %128, 2
  %130 = or disjoint i32 %129, %2
  %131 = add nuw nsw i32 %127, -1191285703
  %132 = zext i32 %131 to i64
  %133 = add nuw nsw i32 %130, 597969854
  %134 = zext nneg i32 %133 to i64
  %135 = mul nuw nsw i64 %134, %132
  %136 = add nuw nsw i32 %127, 2080473388
  %137 = zext nneg i32 %136 to i64
  %138 = add nuw nsw i32 %130, -148787940
  %139 = zext i32 %138 to i64
  %140 = mul nuw nsw i64 %139, %137
  %141 = lshr i64 %135, 37
  %142 = xor i64 %141, %135
  %143 = mul i64 %142, 1609587929392839161
  %144 = lshr i64 %143, 32
  %145 = xor i64 %144, %143
  store i64 %145, ptr %0, align 4, !alias.scope !38
  %146 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %147 = lshr i64 %140, 37
  %148 = xor i64 %147, %140
  %149 = mul i64 %148, 1609587929392839161
  %150 = lshr i64 %149, 32
  %151 = xor i64 %150, %149
  store i64 %151, ptr %146, align 4, !alias.scope !38
  br label %442

152:                                              ; preds = %114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %442

153:                                              ; preds = %3
  %154 = zext i32 %2 to i64
  %155 = mul i64 %154, -7046029288634856825
  %156 = icmp ugt i32 %2, 32
  br i1 %156, label %157, label %359

157:                                              ; preds = %153
  %158 = icmp ugt i32 %2, 64
  br i1 %158, label %159, label %293

159:                                              ; preds = %157
  %160 = icmp ugt i32 %2, 96
  br i1 %160, label %161, label %227

161:                                              ; preds = %159
  %162 = icmp ugt i32 %2, 128
  br i1 %162, label %163, label %164

163:                                              ; preds = %161
  tail call fastcc void @XXH3_hashLong_128b(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1, i32 noundef %2, i64 noundef 0)
  br label %442

164:                                              ; preds = %161
  %165 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %166 = load i64, ptr %165, align 1, !noalias !26
  %167 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %168 = load i64, ptr %167, align 1, !noalias !26
  %169 = xor i64 %166, -2045702682710477249
  %170 = xor i64 %168, -4104099645253436473
  %171 = lshr i64 %169, 32
  %172 = lshr i64 %170, 32
  %173 = mul nuw i64 %172, %171
  %174 = and i64 %169, 4294967295
  %175 = mul nuw i64 %172, %174
  %176 = and i64 %170, 4294967295
  %177 = mul nuw i64 %176, %171
  %178 = mul nuw i64 %176, %174
  %179 = shl i64 %175, 32
  %180 = add i64 %179, %178
  %181 = icmp ult i64 %180, %178
  %182 = zext i1 %181 to i64
  %183 = add i64 %175, %177
  %184 = shl i64 %183, 32
  %185 = add i64 %184, %178
  %186 = icmp ult i64 %185, %180
  %187 = zext i1 %186 to i64
  %188 = lshr i64 %175, 32
  %189 = add nuw i64 %188, %173
  %190 = lshr i64 %177, 32
  %191 = add nuw i64 %189, %190
  %192 = add nuw i64 %191, %182
  %193 = add nuw i64 %192, %187
  %194 = xor i64 %193, %185
  %195 = add i64 %194, %155
  %196 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %197 = getelementptr inbounds i8, ptr %196, i32 -64
  %198 = load i64, ptr %197, align 1, !noalias !26
  %199 = getelementptr inbounds i8, ptr %196, i32 -56
  %200 = load i64, ptr %199, align 1, !noalias !26
  %201 = xor i64 %198, -3624173730817515445
  %202 = xor i64 %200, -2776342293574091063
  %203 = lshr i64 %201, 32
  %204 = lshr i64 %202, 32
  %205 = mul nuw i64 %204, %203
  %206 = and i64 %201, 4294967295
  %207 = mul nuw i64 %204, %206
  %208 = and i64 %202, 4294967295
  %209 = mul nuw i64 %208, %203
  %210 = mul nuw i64 %208, %206
  %211 = shl i64 %207, 32
  %212 = add i64 %211, %210
  %213 = icmp ult i64 %212, %210
  %214 = zext i1 %213 to i64
  %215 = add i64 %207, %209
  %216 = shl i64 %215, 32
  %217 = add i64 %216, %210
  %218 = icmp ult i64 %217, %212
  %219 = zext i1 %218 to i64
  %220 = lshr i64 %207, 32
  %221 = add nuw i64 %220, %205
  %222 = lshr i64 %209, 32
  %223 = add nuw i64 %221, %222
  %224 = add nuw i64 %223, %214
  %225 = add nuw i64 %224, %219
  %226 = xor i64 %225, %217
  br label %227

227:                                              ; preds = %164, %159
  %228 = phi i64 [ %226, %164 ], [ 0, %159 ]
  %229 = phi i64 [ %195, %164 ], [ %155, %159 ]
  %230 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %231 = load i64, ptr %230, align 1, !noalias !26
  %232 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %233 = load i64, ptr %232, align 1, !noalias !26
  %234 = xor i64 %231, -7943504444863786309
  %235 = xor i64 %233, 1968968742000944523
  %236 = lshr i64 %234, 32
  %237 = lshr i64 %235, 32
  %238 = mul nuw i64 %237, %236
  %239 = and i64 %234, 4294967295
  %240 = mul nuw i64 %237, %239
  %241 = and i64 %235, 4294967295
  %242 = mul nuw i64 %241, %236
  %243 = mul nuw i64 %241, %239
  %244 = shl i64 %240, 32
  %245 = add i64 %244, %243
  %246 = icmp ult i64 %245, %243
  %247 = zext i1 %246 to i64
  %248 = add i64 %240, %242
  %249 = shl i64 %248, 32
  %250 = add i64 %249, %243
  %251 = icmp ult i64 %250, %245
  %252 = zext i1 %251 to i64
  %253 = lshr i64 %240, 32
  %254 = add nuw i64 %253, %238
  %255 = lshr i64 %242, 32
  %256 = add nuw i64 %254, %255
  %257 = add nuw i64 %256, %247
  %258 = add nuw i64 %257, %252
  %259 = xor i64 %258, %250
  %260 = add i64 %259, %229
  %261 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %262 = getelementptr inbounds i8, ptr %261, i32 -48
  %263 = load i64, ptr %262, align 1, !noalias !26
  %264 = getelementptr inbounds i8, ptr %261, i32 -40
  %265 = load i64, ptr %264, align 1, !noalias !26
  %266 = xor i64 %263, -6769480549562824553
  %267 = xor i64 %265, -6206333191815827642
  %268 = lshr i64 %266, 32
  %269 = lshr i64 %267, 32
  %270 = mul nuw i64 %269, %268
  %271 = and i64 %266, 4294967295
  %272 = mul nuw i64 %269, %271
  %273 = and i64 %267, 4294967295
  %274 = mul nuw i64 %273, %268
  %275 = mul nuw i64 %273, %271
  %276 = shl i64 %272, 32
  %277 = add i64 %276, %275
  %278 = icmp ult i64 %277, %275
  %279 = zext i1 %278 to i64
  %280 = add i64 %272, %274
  %281 = shl i64 %280, 32
  %282 = add i64 %281, %275
  %283 = icmp ult i64 %282, %277
  %284 = zext i1 %283 to i64
  %285 = lshr i64 %272, 32
  %286 = add nuw i64 %285, %270
  %287 = lshr i64 %274, 32
  %288 = add nuw i64 %286, %287
  %289 = add nuw i64 %288, %279
  %290 = add nuw i64 %289, %284
  %291 = xor i64 %290, %282
  %292 = add i64 %291, %228
  br label %293

293:                                              ; preds = %227, %157
  %294 = phi i64 [ %292, %227 ], [ 0, %157 ]
  %295 = phi i64 [ %260, %227 ], [ %155, %157 ]
  %296 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %297 = load i64, ptr %296, align 1, !noalias !26
  %298 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %299 = load i64, ptr %298, align 1, !noalias !26
  %300 = xor i64 %297, -3692699387471206834
  %301 = xor i64 %299, -3675093282664558467
  %302 = lshr i64 %300, 32
  %303 = lshr i64 %301, 32
  %304 = mul nuw i64 %303, %302
  %305 = and i64 %300, 4294967295
  %306 = mul nuw i64 %303, %305
  %307 = and i64 %301, 4294967295
  %308 = mul nuw i64 %307, %302
  %309 = mul nuw i64 %307, %305
  %310 = shl i64 %306, 32
  %311 = add i64 %310, %309
  %312 = icmp ult i64 %311, %309
  %313 = zext i1 %312 to i64
  %314 = add i64 %306, %308
  %315 = shl i64 %314, 32
  %316 = add i64 %315, %309
  %317 = icmp ult i64 %316, %311
  %318 = zext i1 %317 to i64
  %319 = lshr i64 %306, 32
  %320 = add nuw i64 %319, %304
  %321 = lshr i64 %308, 32
  %322 = add nuw i64 %320, %321
  %323 = add nuw i64 %322, %313
  %324 = add nuw i64 %323, %318
  %325 = xor i64 %324, %316
  %326 = add i64 %325, %295
  %327 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %328 = getelementptr inbounds i8, ptr %327, i32 -32
  %329 = load i64, ptr %328, align 1, !noalias !26
  %330 = getelementptr inbounds i8, ptr %327, i32 -24
  %331 = load i64, ptr %330, align 1, !noalias !26
  %332 = xor i64 %329, -629619327510231436
  %333 = xor i64 %331, -9134946782546652954
  %334 = lshr i64 %332, 32
  %335 = lshr i64 %333, 32
  %336 = mul nuw i64 %335, %334
  %337 = and i64 %332, 4294967295
  %338 = mul nuw i64 %335, %337
  %339 = and i64 %333, 4294967295
  %340 = mul nuw i64 %339, %334
  %341 = mul nuw i64 %339, %337
  %342 = shl i64 %338, 32
  %343 = add i64 %342, %341
  %344 = icmp ult i64 %343, %341
  %345 = zext i1 %344 to i64
  %346 = add i64 %338, %340
  %347 = shl i64 %346, 32
  %348 = add i64 %347, %341
  %349 = icmp ult i64 %348, %343
  %350 = zext i1 %349 to i64
  %351 = lshr i64 %338, 32
  %352 = add nuw i64 %351, %336
  %353 = lshr i64 %340, 32
  %354 = add nuw i64 %352, %353
  %355 = add nuw i64 %354, %345
  %356 = add nuw i64 %355, %350
  %357 = xor i64 %356, %348
  %358 = add i64 %357, %294
  br label %359

359:                                              ; preds = %293, %153
  %360 = phi i64 [ %358, %293 ], [ 0, %153 ]
  %361 = phi i64 [ %326, %293 ], [ %155, %153 ]
  %362 = load i64, ptr %1, align 1, !noalias !26
  %363 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %364 = load i64, ptr %363, align 1, !noalias !26
  %365 = xor i64 %362, 2568260970027576377
  %366 = xor i64 %364, -639039334258736852
  %367 = lshr i64 %365, 32
  %368 = lshr i64 %366, 32
  %369 = mul nuw i64 %368, %367
  %370 = and i64 %365, 4294967295
  %371 = mul nuw i64 %368, %370
  %372 = and i64 %366, 4294967295
  %373 = mul nuw i64 %372, %367
  %374 = mul nuw i64 %372, %370
  %375 = shl i64 %371, 32
  %376 = add i64 %375, %374
  %377 = icmp ult i64 %376, %374
  %378 = zext i1 %377 to i64
  %379 = add i64 %371, %373
  %380 = shl i64 %379, 32
  %381 = add i64 %380, %374
  %382 = icmp ult i64 %381, %376
  %383 = zext i1 %382 to i64
  %384 = lshr i64 %371, 32
  %385 = add nuw i64 %384, %369
  %386 = lshr i64 %373, 32
  %387 = add nuw i64 %385, %386
  %388 = add nuw i64 %387, %378
  %389 = add nuw i64 %388, %383
  %390 = xor i64 %389, %381
  %391 = add i64 %390, %361
  %392 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %393 = getelementptr inbounds i8, ptr %392, i32 -16
  %394 = load i64, ptr %393, align 1, !noalias !26
  %395 = getelementptr inbounds i8, ptr %392, i32 -8
  %396 = load i64, ptr %395, align 1, !noalias !26
  %397 = xor i64 %394, -8966499887502561815
  %398 = xor i64 %396, -5209706959179045724
  %399 = lshr i64 %397, 32
  %400 = lshr i64 %398, 32
  %401 = mul nuw i64 %400, %399
  %402 = and i64 %397, 4294967295
  %403 = mul nuw i64 %400, %402
  %404 = and i64 %398, 4294967295
  %405 = mul nuw i64 %404, %399
  %406 = mul nuw i64 %404, %402
  %407 = shl i64 %403, 32
  %408 = add i64 %407, %406
  %409 = icmp ult i64 %408, %406
  %410 = zext i1 %409 to i64
  %411 = add i64 %403, %405
  %412 = shl i64 %411, 32
  %413 = add i64 %412, %406
  %414 = icmp ult i64 %413, %408
  %415 = zext i1 %414 to i64
  %416 = lshr i64 %403, 32
  %417 = add nuw i64 %416, %401
  %418 = lshr i64 %405, 32
  %419 = add nuw i64 %417, %418
  %420 = add nuw i64 %419, %410
  %421 = add nuw i64 %420, %415
  %422 = xor i64 %421, %413
  %423 = add i64 %422, %360
  %424 = add i64 %423, %391
  %425 = mul i64 %391, 1609587929392839161
  %426 = mul i64 %423, -8796714831421723037
  %427 = mul i64 %154, -4417276706812531889
  %428 = add i64 %425, %427
  %429 = add i64 %428, %426
  %430 = lshr i64 %424, 37
  %431 = xor i64 %430, %424
  %432 = mul i64 %431, 1609587929392839161
  %433 = lshr i64 %432, 32
  %434 = xor i64 %433, %432
  store i64 %434, ptr %0, align 4, !alias.scope !26
  %435 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %436 = lshr i64 %429, 37
  %437 = xor i64 %436, %429
  %438 = mul i64 %437, 1609587929392839161
  %439 = lshr i64 %438, 32
  %440 = xor i64 %439, %438
  %441 = sub i64 0, %440
  store i64 %441, ptr %435, align 4, !alias.scope !26
  br label %442

442:                                              ; preds = %7, %82, %116, %152, %163, %359
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @XXH128(ptr dead_on_unwind noalias writable writeonly sret(%struct.XXH128_hash_t) align 4 %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #12 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %5 = icmp ult i32 %2, 17
  br i1 %5, label %6, label %166

6:                                                ; preds = %4
  %7 = icmp samesign ugt i32 %2, 8
  br i1 %7, label %8, label %83

8:                                                ; preds = %6
  %9 = zext nneg i32 %2 to i64
  %10 = add i64 %3, %9
  %11 = mul i64 %10, -7046029288634856825
  %12 = sub i64 %9, %3
  %13 = mul i64 %12, -4417276706812531889
  %14 = load i64, ptr %1, align 1, !noalias !39
  %15 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %16 = getelementptr inbounds i8, ptr %15, i32 -8
  %17 = load i64, ptr %16, align 1, !noalias !39
  %18 = add i64 %14, 2568260970027576377
  %19 = add i64 %17, -639039334258736852
  %20 = lshr i64 %18, 32
  %21 = lshr i64 %19, 32
  %22 = mul nuw i64 %21, %20
  %23 = and i64 %18, 4294967295
  %24 = mul nuw i64 %21, %23
  %25 = and i64 %19, 4294967295
  %26 = mul nuw i64 %25, %20
  %27 = mul nuw i64 %25, %23
  %28 = shl i64 %24, 32
  %29 = add i64 %28, %27
  %30 = icmp ult i64 %29, %27
  %31 = zext i1 %30 to i64
  %32 = add i64 %24, %26
  %33 = shl i64 %32, 32
  %34 = add i64 %33, %27
  %35 = icmp ult i64 %34, %29
  %36 = zext i1 %35 to i64
  %37 = lshr i64 %24, 32
  %38 = add nuw i64 %37, %22
  %39 = lshr i64 %26, 32
  %40 = add nuw i64 %38, %39
  %41 = add nuw i64 %40, %31
  %42 = add nuw i64 %41, %36
  %43 = xor i64 %42, %34
  %44 = add i64 %43, %11
  %45 = add i64 %14, -8966499887502561815
  %46 = add i64 %17, -5209706959179045724
  %47 = lshr i64 %45, 32
  %48 = lshr i64 %46, 32
  %49 = mul nuw i64 %48, %47
  %50 = and i64 %45, 4294967295
  %51 = mul nuw i64 %48, %50
  %52 = and i64 %46, 4294967295
  %53 = mul nuw i64 %52, %47
  %54 = mul nuw i64 %52, %50
  %55 = shl i64 %51, 32
  %56 = add i64 %55, %54
  %57 = icmp ult i64 %56, %54
  %58 = zext i1 %57 to i64
  %59 = add i64 %51, %53
  %60 = shl i64 %59, 32
  %61 = add i64 %60, %54
  %62 = icmp ult i64 %61, %56
  %63 = zext i1 %62 to i64
  %64 = lshr i64 %51, 32
  %65 = add nuw i64 %64, %49
  %66 = lshr i64 %53, 32
  %67 = add nuw i64 %65, %66
  %68 = add nuw i64 %67, %58
  %69 = add nuw i64 %68, %63
  %70 = xor i64 %69, %61
  %71 = add i64 %70, %13
  %72 = lshr i64 %44, 37
  %73 = xor i64 %72, %44
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  store i64 %76, ptr %0, align 4, !alias.scope !42
  %77 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %78 = lshr i64 %71, 37
  %79 = xor i64 %78, %71
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  store i64 %82, ptr %77, align 4, !alias.scope !42
  br label %473

83:                                               ; preds = %6
  %84 = icmp samesign ugt i32 %2, 3
  br i1 %84, label %85, label %122

85:                                               ; preds = %83
  %86 = load i32, ptr %1, align 1, !noalias !39
  %87 = trunc i64 %3 to i32
  %88 = add i32 %87, -1191285703
  %89 = add i32 %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %91 = getelementptr inbounds i8, ptr %90, i32 -4
  %92 = load i32, ptr %91, align 1, !noalias !39
  %93 = lshr i64 %3, 32
  %94 = trunc nuw i64 %93 to i32
  %95 = add i32 %94, 597969854
  %96 = add i32 %95, %92
  %97 = add i32 %89, %2
  %98 = zext i32 %97 to i64
  %99 = zext i32 %96 to i64
  %100 = shl nuw i64 %99, 32
  %101 = or disjoint i64 %100, %98
  %102 = zext i32 %89 to i64
  %103 = mul nuw i64 %99, %102
  %104 = add i64 %101, %103
  %105 = zext nneg i32 %2 to i64
  %106 = mul i64 %105, -7046029288634856825
  %107 = mul i64 %102, -4417276706812531889
  %108 = add i64 %107, %106
  %109 = mul i64 %99, 1609587929392839161
  %110 = add i64 %108, %109
  %111 = lshr i64 %104, 37
  %112 = xor i64 %111, %104
  %113 = mul i64 %112, 1609587929392839161
  %114 = lshr i64 %113, 32
  %115 = xor i64 %114, %113
  store i64 %115, ptr %0, align 4, !alias.scope !45
  %116 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %117 = lshr i64 %110, 37
  %118 = xor i64 %117, %110
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  store i64 %121, ptr %116, align 4, !alias.scope !45
  br label %473

122:                                              ; preds = %83
  %123 = icmp eq i32 %2, 0
  br i1 %123, label %163, label %124

124:                                              ; preds = %122
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %125 = load i8, ptr %1, align 1, !noalias !51
  %126 = lshr i32 %2, 1
  %127 = getelementptr inbounds nuw i8, ptr %1, i32 %126
  %128 = load i8, ptr %127, align 1, !noalias !51
  %129 = getelementptr i8, ptr %1, i32 %2
  %130 = getelementptr i8, ptr %129, i32 -1
  %131 = load i8, ptr %130, align 1, !noalias !51
  %132 = zext i8 %125 to i32
  %133 = zext i8 %128 to i32
  %134 = shl nuw nsw i32 %133, 8
  %135 = or disjoint i32 %134, %132
  %136 = zext i8 %131 to i32
  %137 = shl nuw nsw i32 %136, 2
  %138 = or disjoint i32 %137, %2
  %139 = trunc i64 %3 to i32
  %140 = add i32 %139, -1191285703
  %141 = add i32 %140, %135
  %142 = zext i32 %141 to i64
  %143 = add nuw nsw i32 %138, 597969854
  %144 = zext nneg i32 %143 to i64
  %145 = mul nuw nsw i64 %144, %142
  %146 = add nuw nsw i32 %135, 2080473388
  %147 = zext nneg i32 %146 to i64
  %148 = sub i32 %138, %139
  %149 = add i32 %148, -148787940
  %150 = zext i32 %149 to i64
  %151 = mul nuw nsw i64 %150, %147
  %152 = lshr i64 %145, 37
  %153 = xor i64 %152, %145
  %154 = mul i64 %153, 1609587929392839161
  %155 = lshr i64 %154, 32
  %156 = xor i64 %155, %154
  store i64 %156, ptr %0, align 4, !alias.scope !51
  %157 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %158 = lshr i64 %151, 37
  %159 = xor i64 %158, %151
  %160 = mul i64 %159, 1609587929392839161
  %161 = lshr i64 %160, 32
  %162 = xor i64 %161, %160
  store i64 %162, ptr %157, align 4, !alias.scope !51
  br label %473

163:                                              ; preds = %122
  store i64 %3, ptr %0, align 4, !alias.scope !52
  %164 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %165 = sub i64 0, %3
  store i64 %165, ptr %164, align 4, !alias.scope !52
  br label %473

166:                                              ; preds = %4
  %167 = zext i32 %2 to i64
  %168 = add i64 %3, %167
  %169 = mul i64 %168, -7046029288634856825
  %170 = icmp ugt i32 %2, 32
  br i1 %170, label %171, label %385

171:                                              ; preds = %166
  %172 = icmp ugt i32 %2, 64
  br i1 %172, label %173, label %315

173:                                              ; preds = %171
  %174 = icmp ugt i32 %2, 96
  br i1 %174, label %175, label %245

175:                                              ; preds = %173
  %176 = icmp ugt i32 %2, 128
  br i1 %176, label %177, label %178

177:                                              ; preds = %175
  tail call fastcc void @XXH3_hashLong_128b(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1, i32 noundef %2, i64 noundef %3)
  br label %473

178:                                              ; preds = %175
  %179 = getelementptr inbounds nuw i8, ptr %1, i32 48
  %180 = load i64, ptr %179, align 1, !noalias !39
  %181 = getelementptr inbounds nuw i8, ptr %1, i32 56
  %182 = load i64, ptr %181, align 1, !noalias !39
  %183 = add i64 %3, -2045702682710477249
  %184 = xor i64 %180, %183
  %185 = sub i64 -4104099645253436473, %3
  %186 = xor i64 %182, %185
  %187 = lshr i64 %184, 32
  %188 = lshr i64 %186, 32
  %189 = mul nuw i64 %188, %187
  %190 = and i64 %184, 4294967295
  %191 = mul nuw i64 %188, %190
  %192 = and i64 %186, 4294967295
  %193 = mul nuw i64 %192, %187
  %194 = mul nuw i64 %192, %190
  %195 = shl i64 %191, 32
  %196 = add i64 %195, %194
  %197 = icmp ult i64 %196, %194
  %198 = zext i1 %197 to i64
  %199 = add i64 %191, %193
  %200 = shl i64 %199, 32
  %201 = add i64 %200, %194
  %202 = icmp ult i64 %201, %196
  %203 = zext i1 %202 to i64
  %204 = lshr i64 %191, 32
  %205 = add nuw i64 %204, %189
  %206 = lshr i64 %193, 32
  %207 = add nuw i64 %205, %206
  %208 = add nuw i64 %207, %198
  %209 = add nuw i64 %208, %203
  %210 = xor i64 %209, %201
  %211 = add i64 %210, %169
  %212 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %213 = getelementptr inbounds i8, ptr %212, i32 -64
  %214 = load i64, ptr %213, align 1, !noalias !39
  %215 = getelementptr inbounds i8, ptr %212, i32 -56
  %216 = load i64, ptr %215, align 1, !noalias !39
  %217 = add i64 %3, -3624173730817515445
  %218 = xor i64 %214, %217
  %219 = sub i64 -2776342293574091063, %3
  %220 = xor i64 %216, %219
  %221 = lshr i64 %218, 32
  %222 = lshr i64 %220, 32
  %223 = mul nuw i64 %222, %221
  %224 = and i64 %218, 4294967295
  %225 = mul nuw i64 %222, %224
  %226 = and i64 %220, 4294967295
  %227 = mul nuw i64 %226, %221
  %228 = mul nuw i64 %226, %224
  %229 = shl i64 %225, 32
  %230 = add i64 %229, %228
  %231 = icmp ult i64 %230, %228
  %232 = zext i1 %231 to i64
  %233 = add i64 %225, %227
  %234 = shl i64 %233, 32
  %235 = add i64 %234, %228
  %236 = icmp ult i64 %235, %230
  %237 = zext i1 %236 to i64
  %238 = lshr i64 %225, 32
  %239 = add nuw i64 %238, %223
  %240 = lshr i64 %227, 32
  %241 = add nuw i64 %239, %240
  %242 = add nuw i64 %241, %232
  %243 = add nuw i64 %242, %237
  %244 = xor i64 %243, %235
  br label %245

245:                                              ; preds = %178, %173
  %246 = phi i64 [ %244, %178 ], [ 0, %173 ]
  %247 = phi i64 [ %211, %178 ], [ %169, %173 ]
  %248 = getelementptr inbounds nuw i8, ptr %1, i32 32
  %249 = load i64, ptr %248, align 1, !noalias !39
  %250 = getelementptr inbounds nuw i8, ptr %1, i32 40
  %251 = load i64, ptr %250, align 1, !noalias !39
  %252 = add i64 %3, -7943504444863786309
  %253 = xor i64 %249, %252
  %254 = sub i64 1968968742000944523, %3
  %255 = xor i64 %251, %254
  %256 = lshr i64 %253, 32
  %257 = lshr i64 %255, 32
  %258 = mul nuw i64 %257, %256
  %259 = and i64 %253, 4294967295
  %260 = mul nuw i64 %257, %259
  %261 = and i64 %255, 4294967295
  %262 = mul nuw i64 %261, %256
  %263 = mul nuw i64 %261, %259
  %264 = shl i64 %260, 32
  %265 = add i64 %264, %263
  %266 = icmp ult i64 %265, %263
  %267 = zext i1 %266 to i64
  %268 = add i64 %260, %262
  %269 = shl i64 %268, 32
  %270 = add i64 %269, %263
  %271 = icmp ult i64 %270, %265
  %272 = zext i1 %271 to i64
  %273 = lshr i64 %260, 32
  %274 = add nuw i64 %273, %258
  %275 = lshr i64 %262, 32
  %276 = add nuw i64 %274, %275
  %277 = add nuw i64 %276, %267
  %278 = add nuw i64 %277, %272
  %279 = xor i64 %278, %270
  %280 = add i64 %279, %247
  %281 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %282 = getelementptr inbounds i8, ptr %281, i32 -48
  %283 = load i64, ptr %282, align 1, !noalias !39
  %284 = getelementptr inbounds i8, ptr %281, i32 -40
  %285 = load i64, ptr %284, align 1, !noalias !39
  %286 = add i64 %3, -6769480549562824553
  %287 = xor i64 %283, %286
  %288 = sub i64 -6206333191815827642, %3
  %289 = xor i64 %285, %288
  %290 = lshr i64 %287, 32
  %291 = lshr i64 %289, 32
  %292 = mul nuw i64 %291, %290
  %293 = and i64 %287, 4294967295
  %294 = mul nuw i64 %291, %293
  %295 = and i64 %289, 4294967295
  %296 = mul nuw i64 %295, %290
  %297 = mul nuw i64 %295, %293
  %298 = shl i64 %294, 32
  %299 = add i64 %298, %297
  %300 = icmp ult i64 %299, %297
  %301 = zext i1 %300 to i64
  %302 = add i64 %294, %296
  %303 = shl i64 %302, 32
  %304 = add i64 %303, %297
  %305 = icmp ult i64 %304, %299
  %306 = zext i1 %305 to i64
  %307 = lshr i64 %294, 32
  %308 = add nuw i64 %307, %292
  %309 = lshr i64 %296, 32
  %310 = add nuw i64 %308, %309
  %311 = add nuw i64 %310, %301
  %312 = add nuw i64 %311, %306
  %313 = xor i64 %312, %304
  %314 = add i64 %313, %246
  br label %315

315:                                              ; preds = %245, %171
  %316 = phi i64 [ %314, %245 ], [ 0, %171 ]
  %317 = phi i64 [ %280, %245 ], [ %169, %171 ]
  %318 = getelementptr inbounds nuw i8, ptr %1, i32 16
  %319 = load i64, ptr %318, align 1, !noalias !39
  %320 = getelementptr inbounds nuw i8, ptr %1, i32 24
  %321 = load i64, ptr %320, align 1, !noalias !39
  %322 = add i64 %3, -3692699387471206834
  %323 = xor i64 %319, %322
  %324 = sub i64 -3675093282664558467, %3
  %325 = xor i64 %321, %324
  %326 = lshr i64 %323, 32
  %327 = lshr i64 %325, 32
  %328 = mul nuw i64 %327, %326
  %329 = and i64 %323, 4294967295
  %330 = mul nuw i64 %327, %329
  %331 = and i64 %325, 4294967295
  %332 = mul nuw i64 %331, %326
  %333 = mul nuw i64 %331, %329
  %334 = shl i64 %330, 32
  %335 = add i64 %334, %333
  %336 = icmp ult i64 %335, %333
  %337 = zext i1 %336 to i64
  %338 = add i64 %330, %332
  %339 = shl i64 %338, 32
  %340 = add i64 %339, %333
  %341 = icmp ult i64 %340, %335
  %342 = zext i1 %341 to i64
  %343 = lshr i64 %330, 32
  %344 = add nuw i64 %343, %328
  %345 = lshr i64 %332, 32
  %346 = add nuw i64 %344, %345
  %347 = add nuw i64 %346, %337
  %348 = add nuw i64 %347, %342
  %349 = xor i64 %348, %340
  %350 = add i64 %349, %317
  %351 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %352 = getelementptr inbounds i8, ptr %351, i32 -32
  %353 = load i64, ptr %352, align 1, !noalias !39
  %354 = getelementptr inbounds i8, ptr %351, i32 -24
  %355 = load i64, ptr %354, align 1, !noalias !39
  %356 = add i64 %3, -629619327510231436
  %357 = xor i64 %353, %356
  %358 = sub i64 -9134946782546652954, %3
  %359 = xor i64 %355, %358
  %360 = lshr i64 %357, 32
  %361 = lshr i64 %359, 32
  %362 = mul nuw i64 %361, %360
  %363 = and i64 %357, 4294967295
  %364 = mul nuw i64 %361, %363
  %365 = and i64 %359, 4294967295
  %366 = mul nuw i64 %365, %360
  %367 = mul nuw i64 %365, %363
  %368 = shl i64 %364, 32
  %369 = add i64 %368, %367
  %370 = icmp ult i64 %369, %367
  %371 = zext i1 %370 to i64
  %372 = add i64 %364, %366
  %373 = shl i64 %372, 32
  %374 = add i64 %373, %367
  %375 = icmp ult i64 %374, %369
  %376 = zext i1 %375 to i64
  %377 = lshr i64 %364, 32
  %378 = add nuw i64 %377, %362
  %379 = lshr i64 %366, 32
  %380 = add nuw i64 %378, %379
  %381 = add nuw i64 %380, %371
  %382 = add nuw i64 %381, %376
  %383 = xor i64 %382, %374
  %384 = add i64 %383, %316
  br label %385

385:                                              ; preds = %315, %166
  %386 = phi i64 [ %384, %315 ], [ 0, %166 ]
  %387 = phi i64 [ %350, %315 ], [ %169, %166 ]
  %388 = load i64, ptr %1, align 1, !noalias !39
  %389 = getelementptr inbounds nuw i8, ptr %1, i32 8
  %390 = load i64, ptr %389, align 1, !noalias !39
  %391 = add i64 %3, 2568260970027576377
  %392 = xor i64 %388, %391
  %393 = sub i64 -639039334258736852, %3
  %394 = xor i64 %390, %393
  %395 = lshr i64 %392, 32
  %396 = lshr i64 %394, 32
  %397 = mul nuw i64 %396, %395
  %398 = and i64 %392, 4294967295
  %399 = mul nuw i64 %396, %398
  %400 = and i64 %394, 4294967295
  %401 = mul nuw i64 %400, %395
  %402 = mul nuw i64 %400, %398
  %403 = shl i64 %399, 32
  %404 = add i64 %403, %402
  %405 = icmp ult i64 %404, %402
  %406 = zext i1 %405 to i64
  %407 = add i64 %399, %401
  %408 = shl i64 %407, 32
  %409 = add i64 %408, %402
  %410 = icmp ult i64 %409, %404
  %411 = zext i1 %410 to i64
  %412 = lshr i64 %399, 32
  %413 = add nuw i64 %412, %397
  %414 = lshr i64 %401, 32
  %415 = add nuw i64 %413, %414
  %416 = add nuw i64 %415, %406
  %417 = add nuw i64 %416, %411
  %418 = xor i64 %417, %409
  %419 = add i64 %418, %387
  %420 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %421 = getelementptr inbounds i8, ptr %420, i32 -16
  %422 = load i64, ptr %421, align 1, !noalias !39
  %423 = getelementptr inbounds i8, ptr %420, i32 -8
  %424 = load i64, ptr %423, align 1, !noalias !39
  %425 = add i64 %3, -8966499887502561815
  %426 = xor i64 %422, %425
  %427 = sub i64 -5209706959179045724, %3
  %428 = xor i64 %424, %427
  %429 = lshr i64 %426, 32
  %430 = lshr i64 %428, 32
  %431 = mul nuw i64 %430, %429
  %432 = and i64 %426, 4294967295
  %433 = mul nuw i64 %430, %432
  %434 = and i64 %428, 4294967295
  %435 = mul nuw i64 %434, %429
  %436 = mul nuw i64 %434, %432
  %437 = shl i64 %433, 32
  %438 = add i64 %437, %436
  %439 = icmp ult i64 %438, %436
  %440 = zext i1 %439 to i64
  %441 = add i64 %433, %435
  %442 = shl i64 %441, 32
  %443 = add i64 %442, %436
  %444 = icmp ult i64 %443, %438
  %445 = zext i1 %444 to i64
  %446 = lshr i64 %433, 32
  %447 = add nuw i64 %446, %431
  %448 = lshr i64 %435, 32
  %449 = add nuw i64 %447, %448
  %450 = add nuw i64 %449, %440
  %451 = add nuw i64 %450, %445
  %452 = xor i64 %451, %443
  %453 = add i64 %452, %386
  %454 = add i64 %453, %419
  %455 = mul i64 %419, 1609587929392839161
  %456 = mul i64 %453, -8796714831421723037
  %457 = sub i64 %167, %3
  %458 = mul i64 %457, -4417276706812531889
  %459 = add i64 %455, %458
  %460 = add i64 %459, %456
  %461 = lshr i64 %454, 37
  %462 = xor i64 %461, %454
  %463 = mul i64 %462, 1609587929392839161
  %464 = lshr i64 %463, 32
  %465 = xor i64 %464, %463
  store i64 %465, ptr %0, align 4, !alias.scope !39
  %466 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %467 = lshr i64 %460, 37
  %468 = xor i64 %467, %460
  %469 = mul i64 %468, 1609587929392839161
  %470 = lshr i64 %469, 32
  %471 = xor i64 %470, %469
  %472 = sub i64 0, %471
  store i64 %472, ptr %466, align 4, !alias.scope !39
  br label %473

473:                                              ; preds = %8, %85, %124, %163, %177, %385
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_oneshot(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = add i64 %1, 2870177450012600281
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i64, ptr %8, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i32, ptr %17, align 1
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %21, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 23)
  %27 = mul i64 %26, -4417276706812531889
  %28 = add i64 %27, 1609587929392839161
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

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #11 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #13 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7, !13}
!13 = !{!"llvm.loop.unroll.enable"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_len_9to16_128b: argument 0"}
!16 = distinct !{!16, !"XXH3_len_9to16_128b"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_len_4to8_128b: argument 0"}
!19 = distinct !{!19, !"XXH3_len_4to8_128b"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_len_1to3_128b: argument 0"}
!22 = distinct !{!22, !"XXH3_len_1to3_128b"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_len_0to16_128b: argument 0"}
!25 = distinct !{!25, !"XXH3_len_0to16_128b"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_128bits_withSeed: argument 0"}
!28 = distinct !{!28, !"XXH3_128bits_withSeed"}
!29 = !{!30, !27}
!30 = distinct !{!30, !31, !"XXH3_len_9to16_128b: argument 0"}
!31 = distinct !{!31, !"XXH3_len_9to16_128b"}
!32 = !{!33, !27}
!33 = distinct !{!33, !34, !"XXH3_len_4to8_128b: argument 0"}
!34 = distinct !{!34, !"XXH3_len_4to8_128b"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"XXH3_len_1to3_128b: argument 0"}
!37 = distinct !{!37, !"XXH3_len_1to3_128b"}
!38 = !{!36, !27}
!39 = !{!40}
!40 = distinct !{!40, !41, !"XXH3_128bits_withSeed: argument 0"}
!41 = distinct !{!41, !"XXH3_128bits_withSeed"}
!42 = !{!43, !40}
!43 = distinct !{!43, !44, !"XXH3_len_9to16_128b: argument 0"}
!44 = distinct !{!44, !"XXH3_len_9to16_128b"}
!45 = !{!46, !40}
!46 = distinct !{!46, !47, !"XXH3_len_4to8_128b: argument 0"}
!47 = distinct !{!47, !"XXH3_len_4to8_128b"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"XXH3_len_1to3_128b: argument 0"}
!50 = distinct !{!50, !"XXH3_len_1to3_128b"}
!51 = !{!49, !40}
!52 = !{!53, !40}
!53 = distinct !{!53, !54, !"XXH3_len_0to16_128b: argument 0"}
!54 = distinct !{!54, !"XXH3_len_0to16_128b"}
