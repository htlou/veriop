; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api_xxh64_len20_reroll1/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api_xxh64_len20_reroll1/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kKey = internal unnamed_addr constant [48 x i32] [i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514, i32 941223750, i32 -1445024552, i32 -1459980737, i32 -476302273, i32 -102974521, i32 -955560163, i32 -1974345653, i32 -843818703, i32 -929071415, i32 -646417564, i32 -356143997, i32 886303683, i32 -981360385, i32 -99392533, i32 386784593, i32 -1208952247, i32 -753511130, i32 701786270, i32 722910808, i32 2101846524, i32 -1879525167, i32 2060464590, i32 1170946703, i32 -1793719256, i32 -1344799798, i32 -1152696194], align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 700
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
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
  %22 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %21) #17
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %14
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %28) #17
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %15
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %35) #17
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %38 = load i32, ptr %37, align 1
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %16
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %42) #17
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
  switch i64 %61, label %209 [
    i64 12, label %62
    i64 8, label %69
    i64 4, label %78
    i64 13, label %86
    i64 9, label %93
    i64 5, label %102
    i64 14, label %117
    i64 10, label %124
    i64 6, label %133
    i64 15, label %155
    i64 11, label %162
    i64 7, label %171
    i64 3, label %180
    i64 2, label %190
    i64 1, label %200
    i64 0, label %210
  ]

62:                                               ; preds = %56
  %63 = load i32, ptr %58, align 1
  %64 = mul i32 %63, -1028477379
  %65 = add i32 %64, %60
  %66 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %67 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 17)
  %68 = mul i32 %67, 668265263
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi i32 [ %60, %56 ], [ %68, %62 ]
  %71 = phi ptr [ %58, %56 ], [ %66, %62 ]
  %72 = load i32, ptr %71, align 1
  %73 = mul i32 %72, -1028477379
  %74 = add i32 %73, %70
  %75 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %76 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 17)
  %77 = mul i32 %76, 668265263
  br label %78

78:                                               ; preds = %69, %56
  %79 = phi i32 [ %60, %56 ], [ %77, %69 ]
  %80 = phi ptr [ %58, %56 ], [ %75, %69 ]
  %81 = load i32, ptr %80, align 1
  %82 = mul i32 %81, -1028477379
  %83 = add i32 %82, %79
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 17)
  %85 = mul i32 %84, 668265263
  br label %210

86:                                               ; preds = %56
  %87 = load i32, ptr %58, align 1
  %88 = mul i32 %87, -1028477379
  %89 = add i32 %88, %60
  %90 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %91 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 17)
  %92 = mul i32 %91, 668265263
  br label %93

93:                                               ; preds = %86, %56
  %94 = phi i32 [ %60, %56 ], [ %92, %86 ]
  %95 = phi ptr [ %58, %56 ], [ %90, %86 ]
  %96 = load i32, ptr %95, align 1
  %97 = mul i32 %96, -1028477379
  %98 = add i32 %97, %94
  %99 = getelementptr inbounds nuw i8, ptr %95, i64 4
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 17)
  %101 = mul i32 %100, 668265263
  br label %102

102:                                              ; preds = %93, %56
  %103 = phi i32 [ %60, %56 ], [ %101, %93 ]
  %104 = phi ptr [ %58, %56 ], [ %99, %93 ]
  %105 = load i32, ptr %104, align 1
  %106 = mul i32 %105, -1028477379
  %107 = add i32 %106, %103
  %108 = getelementptr inbounds nuw i8, ptr %104, i64 4
  %109 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 17)
  %110 = mul i32 %109, 668265263
  %111 = load i8, ptr %108, align 1
  %112 = zext i8 %111 to i32
  %113 = mul i32 %112, 374761393
  %114 = add i32 %110, %113
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 11)
  %116 = mul i32 %115, -1640531535
  br label %210

117:                                              ; preds = %56
  %118 = load i32, ptr %58, align 1
  %119 = mul i32 %118, -1028477379
  %120 = add i32 %119, %60
  %121 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %122 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 17)
  %123 = mul i32 %122, 668265263
  br label %124

124:                                              ; preds = %117, %56
  %125 = phi i32 [ %60, %56 ], [ %123, %117 ]
  %126 = phi ptr [ %58, %56 ], [ %121, %117 ]
  %127 = load i32, ptr %126, align 1
  %128 = mul i32 %127, -1028477379
  %129 = add i32 %128, %125
  %130 = getelementptr inbounds nuw i8, ptr %126, i64 4
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 17)
  %132 = mul i32 %131, 668265263
  br label %133

133:                                              ; preds = %124, %56
  %134 = phi i32 [ %60, %56 ], [ %132, %124 ]
  %135 = phi ptr [ %58, %56 ], [ %130, %124 ]
  %136 = load i32, ptr %135, align 1
  %137 = mul i32 %136, -1028477379
  %138 = add i32 %137, %134
  %139 = getelementptr inbounds nuw i8, ptr %135, i64 4
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17)
  %141 = mul i32 %140, 668265263
  %142 = getelementptr inbounds nuw i8, ptr %135, i64 5
  %143 = load i8, ptr %139, align 1
  %144 = zext i8 %143 to i32
  %145 = mul i32 %144, 374761393
  %146 = add i32 %141, %145
  %147 = tail call i32 @llvm.fshl.i32(i32 %146, i32 %146, i32 11)
  %148 = mul i32 %147, -1640531535
  %149 = load i8, ptr %142, align 1
  %150 = zext i8 %149 to i32
  %151 = mul i32 %150, 374761393
  %152 = add i32 %148, %151
  %153 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 11)
  %154 = mul i32 %153, -1640531535
  br label %210

155:                                              ; preds = %56
  %156 = load i32, ptr %58, align 1
  %157 = mul i32 %156, -1028477379
  %158 = add i32 %157, %60
  %159 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %160 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 17)
  %161 = mul i32 %160, 668265263
  br label %162

162:                                              ; preds = %155, %56
  %163 = phi i32 [ %60, %56 ], [ %161, %155 ]
  %164 = phi ptr [ %58, %56 ], [ %159, %155 ]
  %165 = load i32, ptr %164, align 1
  %166 = mul i32 %165, -1028477379
  %167 = add i32 %166, %163
  %168 = getelementptr inbounds nuw i8, ptr %164, i64 4
  %169 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 17)
  %170 = mul i32 %169, 668265263
  br label %171

171:                                              ; preds = %162, %56
  %172 = phi i32 [ %60, %56 ], [ %170, %162 ]
  %173 = phi ptr [ %58, %56 ], [ %168, %162 ]
  %174 = load i32, ptr %173, align 1
  %175 = mul i32 %174, -1028477379
  %176 = add i32 %175, %172
  %177 = getelementptr inbounds nuw i8, ptr %173, i64 4
  %178 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 17)
  %179 = mul i32 %178, 668265263
  br label %180

180:                                              ; preds = %171, %56
  %181 = phi i32 [ %60, %56 ], [ %179, %171 ]
  %182 = phi ptr [ %58, %56 ], [ %177, %171 ]
  %183 = getelementptr inbounds nuw i8, ptr %182, i64 1
  %184 = load i8, ptr %182, align 1
  %185 = zext i8 %184 to i32
  %186 = mul i32 %185, 374761393
  %187 = add i32 %186, %181
  %188 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 11)
  %189 = mul i32 %188, -1640531535
  br label %190

190:                                              ; preds = %180, %56
  %191 = phi i32 [ %60, %56 ], [ %189, %180 ]
  %192 = phi ptr [ %58, %56 ], [ %183, %180 ]
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 1
  %194 = load i8, ptr %192, align 1
  %195 = zext i8 %194 to i32
  %196 = mul i32 %195, 374761393
  %197 = add i32 %196, %191
  %198 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 11)
  %199 = mul i32 %198, -1640531535
  br label %200

200:                                              ; preds = %190, %56
  %201 = phi i32 [ %60, %56 ], [ %199, %190 ]
  %202 = phi ptr [ %58, %56 ], [ %193, %190 ]
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  %205 = mul i32 %204, 374761393
  %206 = add i32 %205, %201
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 11)
  %208 = mul i32 %207, -1640531535
  br label %210

209:                                              ; preds = %56
  unreachable

210:                                              ; preds = %56, %78, %102, %133, %200
  %211 = phi i32 [ %154, %133 ], [ %116, %102 ], [ %85, %78 ], [ %60, %56 ], [ %208, %200 ]
  %212 = lshr i32 %211, 15
  %213 = xor i32 %212, %211
  %214 = mul i32 %213, -2048144777
  %215 = lshr i32 %214, 13
  %216 = xor i32 %215, %214
  %217 = mul i32 %216, -1028477379
  %218 = lshr i32 %217, 16
  %219 = xor i32 %218, %217
  ret i32 %219
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #18
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #19
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
  %41 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %40) #17
  store i32 %41, ptr %34, align 4
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 1
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %49) #17
  store i32 %50, ptr %43, align 4
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %51, align 1
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %53
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %58) #17
  store i32 %59, ptr %52, align 4
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %60, align 1
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %67) #17
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
  %97 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %96) #17
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %99 = load i32, ptr %98, align 1
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %89
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %103) #17
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %106 = load i32, ptr %105, align 1
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %90
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %110) #17
  %112 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %113 = load i32, ptr %112, align 1
  %114 = mul i32 %113, -2048144777
  %115 = add i32 %114, %91
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = mul i32 %116, -1640531535
  %118 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %117) #17
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

25:                                               ; preds = %21, %5
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
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #10 {
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
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #18
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #19
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

48:                                               ; preds = %44, %4
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
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
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
  br label %230

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
  br label %230

54:                                               ; preds = %30
  %55 = icmp eq i64 %1, 0
  br i1 %55, label %230, label %56

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
  br label %230

84:                                               ; preds = %3
  %85 = mul i64 %1, -7046029288634856825
  %86 = icmp ugt i64 %1, 32
  br i1 %86, label %87, label %193

87:                                               ; preds = %84
  %88 = icmp ugt i64 %1, 64
  br i1 %88, label %89, label %160

89:                                               ; preds = %87
  %90 = icmp ugt i64 %1, 96
  br i1 %90, label %91, label %127

91:                                               ; preds = %89
  %92 = icmp ugt i64 %1, 128
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = tail call fastcc i64 @XXH3_hashLong_64b(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %230

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %99 = load i64, ptr %98, align 1
  %100 = add i64 %2, -2045702682710477249
  %101 = xor i64 %97, %100
  %102 = sub i64 -4104099645253436473, %2
  %103 = xor i64 %99, %102
  %104 = zext i64 %101 to i128
  %105 = zext i64 %103 to i128
  %106 = mul nuw i128 %105, %104
  %107 = lshr i128 %106, 64
  %108 = xor i128 %107, %106
  %109 = trunc i128 %108 to i64
  %110 = add i64 %85, %109
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %112 = getelementptr inbounds i8, ptr %111, i64 -64
  %113 = load i64, ptr %112, align 1
  %114 = getelementptr inbounds i8, ptr %111, i64 -56
  %115 = load i64, ptr %114, align 1
  %116 = add i64 %2, -3624173730817515445
  %117 = xor i64 %113, %116
  %118 = sub i64 -2776342293574091063, %2
  %119 = xor i64 %115, %118
  %120 = zext i64 %117 to i128
  %121 = zext i64 %119 to i128
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %110, %125
  br label %127

127:                                              ; preds = %95, %89
  %128 = phi i64 [ %126, %95 ], [ %85, %89 ]
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %130 = load i64, ptr %129, align 1
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %132 = load i64, ptr %131, align 1
  %133 = add i64 %2, -7943504444863786309
  %134 = xor i64 %130, %133
  %135 = sub i64 1968968742000944523, %2
  %136 = xor i64 %132, %135
  %137 = zext i64 %134 to i128
  %138 = zext i64 %136 to i128
  %139 = mul nuw i128 %138, %137
  %140 = lshr i128 %139, 64
  %141 = xor i128 %140, %139
  %142 = trunc i128 %141 to i64
  %143 = add i64 %128, %142
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %145 = getelementptr inbounds i8, ptr %144, i64 -48
  %146 = load i64, ptr %145, align 1
  %147 = getelementptr inbounds i8, ptr %144, i64 -40
  %148 = load i64, ptr %147, align 1
  %149 = add i64 %2, -6769480549562824553
  %150 = xor i64 %146, %149
  %151 = sub i64 -6206333191815827642, %2
  %152 = xor i64 %148, %151
  %153 = zext i64 %150 to i128
  %154 = zext i64 %152 to i128
  %155 = mul nuw i128 %154, %153
  %156 = lshr i128 %155, 64
  %157 = xor i128 %156, %155
  %158 = trunc i128 %157 to i64
  %159 = add i64 %143, %158
  br label %160

160:                                              ; preds = %127, %87
  %161 = phi i64 [ %159, %127 ], [ %85, %87 ]
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %163 = load i64, ptr %162, align 1
  %164 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %165 = load i64, ptr %164, align 1
  %166 = add i64 %2, -3692699387471206834
  %167 = xor i64 %163, %166
  %168 = sub i64 -3675093282664558467, %2
  %169 = xor i64 %165, %168
  %170 = zext i64 %167 to i128
  %171 = zext i64 %169 to i128
  %172 = mul nuw i128 %171, %170
  %173 = lshr i128 %172, 64
  %174 = xor i128 %173, %172
  %175 = trunc i128 %174 to i64
  %176 = add i64 %161, %175
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %178 = getelementptr inbounds i8, ptr %177, i64 -32
  %179 = load i64, ptr %178, align 1
  %180 = getelementptr inbounds i8, ptr %177, i64 -24
  %181 = load i64, ptr %180, align 1
  %182 = add i64 %2, -629619327510231436
  %183 = xor i64 %179, %182
  %184 = sub i64 -9134946782546652954, %2
  %185 = xor i64 %181, %184
  %186 = zext i64 %183 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %176, %191
  br label %193

193:                                              ; preds = %160, %84
  %194 = phi i64 [ %192, %160 ], [ %85, %84 ]
  %195 = load i64, ptr %0, align 1
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %197 = load i64, ptr %196, align 1
  %198 = add i64 %2, 2568260970027576377
  %199 = xor i64 %195, %198
  %200 = sub i64 -639039334258736852, %2
  %201 = xor i64 %197, %200
  %202 = zext i64 %199 to i128
  %203 = zext i64 %201 to i128
  %204 = mul nuw i128 %203, %202
  %205 = lshr i128 %204, 64
  %206 = xor i128 %205, %204
  %207 = trunc i128 %206 to i64
  %208 = add i64 %194, %207
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %210 = getelementptr inbounds i8, ptr %209, i64 -16
  %211 = load i64, ptr %210, align 1
  %212 = getelementptr inbounds i8, ptr %209, i64 -8
  %213 = load i64, ptr %212, align 1
  %214 = add i64 %2, -8966499887502561815
  %215 = xor i64 %211, %214
  %216 = sub i64 -5209706959179045724, %2
  %217 = xor i64 %213, %216
  %218 = zext i64 %215 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %208, %223
  %225 = lshr i64 %224, 37
  %226 = xor i64 %225, %224
  %227 = mul i64 %226, 1609587929392839161
  %228 = lshr i64 %227, 32
  %229 = xor i64 %228, %227
  br label %230

230:                                              ; preds = %56, %54, %32, %7, %93, %193
  %231 = phi i64 [ %94, %93 ], [ %229, %193 ], [ %29, %7 ], [ %53, %32 ], [ %83, %56 ], [ %2, %54 ]
  ret i64 %231
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b(ptr noundef readonly %0, i64 noundef range(i64 129, 0) %1, i64 noundef %2) unnamed_addr #13 {
  %4 = sub i64 0, %2
  %5 = insertelement <4 x i64> <i64 poison, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, i64 %2, i64 0
  %6 = insertelement <4 x i64> <i64 -8796714831421723037, i64 2870177450012600261, i64 poison, i64 0>, i64 %4, i64 2
  %7 = lshr i64 %1, 10
  %8 = icmp ult i64 %1, 1024
  br i1 %8, label %388, label %9

9:                                                ; preds = %3, %9
  %10 = phi <4 x i64> [ %385, %9 ], [ %6, %3 ]
  %11 = phi <4 x i64> [ %375, %9 ], [ %5, %3 ]
  %12 = phi i64 [ %386, %9 ], [ 0, %3 ]
  %13 = shl nuw i64 %12, 10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  %15 = load <4 x i64>, ptr %14, align 1
  %16 = xor <4 x i64> %15, <i64 2568260970027576377, i64 -639039334258736852, i64 -8966499887502561815, i64 -5209706959179045724>
  %17 = bitcast <4 x i64> %16 to <8 x i32>
  %18 = shufflevector <8 x i32> %17, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %19 = bitcast <8 x i32> %18 to <4 x i64>
  %20 = and <4 x i64> %16, splat (i64 4294967295)
  %21 = and <4 x i64> %19, splat (i64 4294967295)
  %22 = mul nuw <4 x i64> %21, %20
  %23 = add <4 x i64> %15, %11
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %25 = load <4 x i64>, ptr %24, align 1
  %26 = xor <4 x i64> %25, <i64 -3692699387471206834, i64 -3675093282664558467, i64 -629619327510231436, i64 -9134946782546652954>
  %27 = bitcast <4 x i64> %26 to <8 x i32>
  %28 = shufflevector <8 x i32> %27, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %29 = bitcast <8 x i32> %28 to <4 x i64>
  %30 = and <4 x i64> %26, splat (i64 4294967295)
  %31 = and <4 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <4 x i64> %31, %30
  %33 = add <4 x i64> %25, %10
  %34 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %35 = load <4 x i64>, ptr %34, align 1
  %36 = xor <4 x i64> %35, <i64 -639039334258736852, i64 -8966499887502561815, i64 -5209706959179045724, i64 -3692699387471206834>
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %36, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = getelementptr inbounds nuw i8, ptr %14, i64 96
  %44 = load <4 x i64>, ptr %43, align 1
  %45 = xor <4 x i64> %44, <i64 -3675093282664558467, i64 -629619327510231436, i64 -9134946782546652954, i64 -7943504444863786309>
  %46 = bitcast <4 x i64> %45 to <8 x i32>
  %47 = shufflevector <8 x i32> %46, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %48 = bitcast <8 x i32> %47 to <4 x i64>
  %49 = and <4 x i64> %45, splat (i64 4294967295)
  %50 = and <4 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <4 x i64> %50, %49
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 128
  %53 = load <4 x i64>, ptr %52, align 1
  %54 = xor <4 x i64> %53, <i64 -8966499887502561815, i64 -5209706959179045724, i64 -3692699387471206834, i64 -3675093282664558467>
  %55 = bitcast <4 x i64> %54 to <8 x i32>
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = and <4 x i64> %54, splat (i64 4294967295)
  %59 = and <4 x i64> %57, splat (i64 4294967295)
  %60 = mul nuw <4 x i64> %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %14, i64 160
  %62 = load <4 x i64>, ptr %61, align 1
  %63 = xor <4 x i64> %62, <i64 -629619327510231436, i64 -9134946782546652954, i64 -7943504444863786309, i64 1968968742000944523>
  %64 = bitcast <4 x i64> %63 to <8 x i32>
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %66 = bitcast <8 x i32> %65 to <4 x i64>
  %67 = and <4 x i64> %63, splat (i64 4294967295)
  %68 = and <4 x i64> %66, splat (i64 4294967295)
  %69 = mul nuw <4 x i64> %68, %67
  %70 = getelementptr inbounds nuw i8, ptr %14, i64 192
  %71 = load <4 x i64>, ptr %70, align 1
  %72 = xor <4 x i64> %71, <i64 -5209706959179045724, i64 -3692699387471206834, i64 -3675093282664558467, i64 -629619327510231436>
  %73 = bitcast <4 x i64> %72 to <8 x i32>
  %74 = shufflevector <8 x i32> %73, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  %76 = and <4 x i64> %72, splat (i64 4294967295)
  %77 = and <4 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <4 x i64> %77, %76
  %79 = getelementptr inbounds nuw i8, ptr %14, i64 224
  %80 = load <4 x i64>, ptr %79, align 1
  %81 = xor <4 x i64> %80, <i64 -9134946782546652954, i64 -7943504444863786309, i64 1968968742000944523, i64 -6769480549562824553>
  %82 = bitcast <4 x i64> %81 to <8 x i32>
  %83 = shufflevector <8 x i32> %82, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %84 = bitcast <8 x i32> %83 to <4 x i64>
  %85 = and <4 x i64> %81, splat (i64 4294967295)
  %86 = and <4 x i64> %84, splat (i64 4294967295)
  %87 = mul nuw <4 x i64> %86, %85
  %88 = getelementptr inbounds nuw i8, ptr %14, i64 256
  %89 = load <4 x i64>, ptr %88, align 1
  %90 = xor <4 x i64> %89, <i64 -3692699387471206834, i64 -3675093282664558467, i64 -629619327510231436, i64 -9134946782546652954>
  %91 = bitcast <4 x i64> %90 to <8 x i32>
  %92 = shufflevector <8 x i32> %91, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %93 = bitcast <8 x i32> %92 to <4 x i64>
  %94 = and <4 x i64> %90, splat (i64 4294967295)
  %95 = and <4 x i64> %93, splat (i64 4294967295)
  %96 = mul nuw <4 x i64> %95, %94
  %97 = getelementptr inbounds nuw i8, ptr %14, i64 288
  %98 = load <4 x i64>, ptr %97, align 1
  %99 = xor <4 x i64> %98, <i64 -7943504444863786309, i64 1968968742000944523, i64 -6769480549562824553, i64 -6206333191815827642>
  %100 = bitcast <4 x i64> %99 to <8 x i32>
  %101 = shufflevector <8 x i32> %100, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %102 = bitcast <8 x i32> %101 to <4 x i64>
  %103 = and <4 x i64> %99, splat (i64 4294967295)
  %104 = and <4 x i64> %102, splat (i64 4294967295)
  %105 = mul nuw <4 x i64> %104, %103
  %106 = getelementptr inbounds nuw i8, ptr %14, i64 320
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = xor <4 x i64> %107, <i64 -3675093282664558467, i64 -629619327510231436, i64 -9134946782546652954, i64 -7943504444863786309>
  %109 = bitcast <4 x i64> %108 to <8 x i32>
  %110 = shufflevector <8 x i32> %109, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %111 = bitcast <8 x i32> %110 to <4 x i64>
  %112 = and <4 x i64> %108, splat (i64 4294967295)
  %113 = and <4 x i64> %111, splat (i64 4294967295)
  %114 = mul nuw <4 x i64> %113, %112
  %115 = getelementptr inbounds nuw i8, ptr %14, i64 352
  %116 = load <4 x i64>, ptr %115, align 1
  %117 = xor <4 x i64> %116, <i64 1968968742000944523, i64 -6769480549562824553, i64 -6206333191815827642, i64 -2045702682710477249>
  %118 = bitcast <4 x i64> %117 to <8 x i32>
  %119 = shufflevector <8 x i32> %118, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %120 = bitcast <8 x i32> %119 to <4 x i64>
  %121 = and <4 x i64> %117, splat (i64 4294967295)
  %122 = and <4 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <4 x i64> %122, %121
  %124 = getelementptr inbounds nuw i8, ptr %14, i64 384
  %125 = load <4 x i64>, ptr %124, align 1
  %126 = xor <4 x i64> %125, <i64 -629619327510231436, i64 -9134946782546652954, i64 -7943504444863786309, i64 1968968742000944523>
  %127 = bitcast <4 x i64> %126 to <8 x i32>
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %129 = bitcast <8 x i32> %128 to <4 x i64>
  %130 = and <4 x i64> %126, splat (i64 4294967295)
  %131 = and <4 x i64> %129, splat (i64 4294967295)
  %132 = mul nuw <4 x i64> %131, %130
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 416
  %134 = load <4 x i64>, ptr %133, align 1
  %135 = xor <4 x i64> %134, <i64 -6769480549562824553, i64 -6206333191815827642, i64 -2045702682710477249, i64 -4104099645253436473>
  %136 = bitcast <4 x i64> %135 to <8 x i32>
  %137 = shufflevector <8 x i32> %136, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %138 = bitcast <8 x i32> %137 to <4 x i64>
  %139 = and <4 x i64> %135, splat (i64 4294967295)
  %140 = and <4 x i64> %138, splat (i64 4294967295)
  %141 = mul nuw <4 x i64> %140, %139
  %142 = getelementptr inbounds nuw i8, ptr %14, i64 448
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = xor <4 x i64> %143, <i64 -9134946782546652954, i64 -7943504444863786309, i64 1968968742000944523, i64 -6769480549562824553>
  %145 = bitcast <4 x i64> %144 to <8 x i32>
  %146 = shufflevector <8 x i32> %145, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %147 = bitcast <8 x i32> %146 to <4 x i64>
  %148 = and <4 x i64> %144, splat (i64 4294967295)
  %149 = and <4 x i64> %147, splat (i64 4294967295)
  %150 = mul nuw <4 x i64> %149, %148
  %151 = getelementptr inbounds nuw i8, ptr %14, i64 480
  %152 = load <4 x i64>, ptr %151, align 1
  %153 = xor <4 x i64> %152, <i64 -6206333191815827642, i64 -2045702682710477249, i64 -4104099645253436473, i64 -3624173730817515445>
  %154 = bitcast <4 x i64> %153 to <8 x i32>
  %155 = shufflevector <8 x i32> %154, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %156 = bitcast <8 x i32> %155 to <4 x i64>
  %157 = and <4 x i64> %153, splat (i64 4294967295)
  %158 = and <4 x i64> %156, splat (i64 4294967295)
  %159 = mul nuw <4 x i64> %158, %157
  %160 = getelementptr inbounds nuw i8, ptr %14, i64 512
  %161 = load <4 x i64>, ptr %160, align 1
  %162 = xor <4 x i64> %161, <i64 -7943504444863786309, i64 1968968742000944523, i64 -6769480549562824553, i64 -6206333191815827642>
  %163 = bitcast <4 x i64> %162 to <8 x i32>
  %164 = shufflevector <8 x i32> %163, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %165 = bitcast <8 x i32> %164 to <4 x i64>
  %166 = and <4 x i64> %162, splat (i64 4294967295)
  %167 = and <4 x i64> %165, splat (i64 4294967295)
  %168 = mul nuw <4 x i64> %167, %166
  %169 = getelementptr inbounds nuw i8, ptr %14, i64 544
  %170 = load <4 x i64>, ptr %169, align 1
  %171 = xor <4 x i64> %170, <i64 -2045702682710477249, i64 -4104099645253436473, i64 -3624173730817515445, i64 -2776342293574091063>
  %172 = bitcast <4 x i64> %171 to <8 x i32>
  %173 = shufflevector <8 x i32> %172, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %174 = bitcast <8 x i32> %173 to <4 x i64>
  %175 = and <4 x i64> %171, splat (i64 4294967295)
  %176 = and <4 x i64> %174, splat (i64 4294967295)
  %177 = mul nuw <4 x i64> %176, %175
  %178 = getelementptr inbounds nuw i8, ptr %14, i64 576
  %179 = load <4 x i64>, ptr %178, align 1
  %180 = xor <4 x i64> %179, <i64 1968968742000944523, i64 -6769480549562824553, i64 -6206333191815827642, i64 -2045702682710477249>
  %181 = bitcast <4 x i64> %180 to <8 x i32>
  %182 = shufflevector <8 x i32> %181, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %183 = bitcast <8 x i32> %182 to <4 x i64>
  %184 = and <4 x i64> %180, splat (i64 4294967295)
  %185 = and <4 x i64> %183, splat (i64 4294967295)
  %186 = mul nuw <4 x i64> %185, %184
  %187 = getelementptr inbounds nuw i8, ptr %14, i64 608
  %188 = load <4 x i64>, ptr %187, align 1
  %189 = xor <4 x i64> %188, <i64 -4104099645253436473, i64 -3624173730817515445, i64 -2776342293574091063, i64 3806645336748174467>
  %190 = bitcast <4 x i64> %189 to <8 x i32>
  %191 = shufflevector <8 x i32> %190, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %192 = bitcast <8 x i32> %191 to <4 x i64>
  %193 = and <4 x i64> %189, splat (i64 4294967295)
  %194 = and <4 x i64> %192, splat (i64 4294967295)
  %195 = mul nuw <4 x i64> %194, %193
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 640
  %197 = load <4 x i64>, ptr %196, align 1
  %198 = xor <4 x i64> %197, <i64 -6769480549562824553, i64 -6206333191815827642, i64 -2045702682710477249, i64 -4104099645253436473>
  %199 = bitcast <4 x i64> %198 to <8 x i32>
  %200 = shufflevector <8 x i32> %199, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %201 = bitcast <8 x i32> %200 to <4 x i64>
  %202 = and <4 x i64> %198, splat (i64 4294967295)
  %203 = and <4 x i64> %201, splat (i64 4294967295)
  %204 = mul nuw <4 x i64> %203, %202
  %205 = getelementptr inbounds nuw i8, ptr %14, i64 672
  %206 = load <4 x i64>, ptr %205, align 1
  %207 = xor <4 x i64> %206, <i64 -3624173730817515445, i64 -2776342293574091063, i64 3806645336748174467, i64 -426887675387993857>
  %208 = bitcast <4 x i64> %207 to <8 x i32>
  %209 = shufflevector <8 x i32> %208, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %210 = bitcast <8 x i32> %209 to <4 x i64>
  %211 = and <4 x i64> %207, splat (i64 4294967295)
  %212 = and <4 x i64> %210, splat (i64 4294967295)
  %213 = mul nuw <4 x i64> %212, %211
  %214 = getelementptr inbounds nuw i8, ptr %14, i64 704
  %215 = load <4 x i64>, ptr %214, align 1
  %216 = xor <4 x i64> %215, <i64 -6206333191815827642, i64 -2045702682710477249, i64 -4104099645253436473, i64 -3624173730817515445>
  %217 = bitcast <4 x i64> %216 to <8 x i32>
  %218 = shufflevector <8 x i32> %217, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %219 = bitcast <8 x i32> %218 to <4 x i64>
  %220 = and <4 x i64> %216, splat (i64 4294967295)
  %221 = and <4 x i64> %219, splat (i64 4294967295)
  %222 = mul nuw <4 x i64> %221, %220
  %223 = getelementptr inbounds nuw i8, ptr %14, i64 736
  %224 = load <4 x i64>, ptr %223, align 1
  %225 = xor <4 x i64> %224, <i64 -2776342293574091063, i64 3806645336748174467, i64 -426887675387993857, i64 -5192410362903929519>
  %226 = bitcast <4 x i64> %225 to <8 x i32>
  %227 = shufflevector <8 x i32> %226, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %228 = bitcast <8 x i32> %227 to <4 x i64>
  %229 = and <4 x i64> %225, splat (i64 4294967295)
  %230 = and <4 x i64> %228, splat (i64 4294967295)
  %231 = mul nuw <4 x i64> %230, %229
  %232 = getelementptr inbounds nuw i8, ptr %14, i64 768
  %233 = load <4 x i64>, ptr %232, align 1
  %234 = xor <4 x i64> %233, <i64 -2045702682710477249, i64 -4104099645253436473, i64 -3624173730817515445, i64 -2776342293574091063>
  %235 = bitcast <4 x i64> %234 to <8 x i32>
  %236 = shufflevector <8 x i32> %235, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %237 = bitcast <8 x i32> %236 to <4 x i64>
  %238 = and <4 x i64> %234, splat (i64 4294967295)
  %239 = and <4 x i64> %237, splat (i64 4294967295)
  %240 = mul nuw <4 x i64> %239, %238
  %241 = getelementptr inbounds nuw i8, ptr %14, i64 800
  %242 = load <4 x i64>, ptr %241, align 1
  %243 = xor <4 x i64> %242, <i64 3806645336748174467, i64 -426887675387993857, i64 -5192410362903929519, i64 3014149081973282086>
  %244 = bitcast <4 x i64> %243 to <8 x i32>
  %245 = shufflevector <8 x i32> %244, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %246 = bitcast <8 x i32> %245 to <4 x i64>
  %247 = and <4 x i64> %243, splat (i64 4294967295)
  %248 = and <4 x i64> %246, splat (i64 4294967295)
  %249 = mul nuw <4 x i64> %248, %247
  %250 = getelementptr inbounds nuw i8, ptr %14, i64 832
  %251 = load <4 x i64>, ptr %250, align 1
  %252 = xor <4 x i64> %251, <i64 -4104099645253436473, i64 -3624173730817515445, i64 -2776342293574091063, i64 3806645336748174467>
  %253 = bitcast <4 x i64> %252 to <8 x i32>
  %254 = shufflevector <8 x i32> %253, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %255 = bitcast <8 x i32> %254 to <4 x i64>
  %256 = and <4 x i64> %252, splat (i64 4294967295)
  %257 = and <4 x i64> %255, splat (i64 4294967295)
  %258 = mul nuw <4 x i64> %257, %256
  %259 = getelementptr inbounds nuw i8, ptr %14, i64 864
  %260 = load <4 x i64>, ptr %259, align 1
  %261 = xor <4 x i64> %260, <i64 -426887675387993857, i64 -5192410362903929519, i64 3014149081973282086, i64 9027362082514189912>
  %262 = bitcast <4 x i64> %261 to <8 x i32>
  %263 = shufflevector <8 x i32> %262, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %264 = bitcast <8 x i32> %263 to <4 x i64>
  %265 = and <4 x i64> %261, splat (i64 4294967295)
  %266 = and <4 x i64> %264, splat (i64 4294967295)
  %267 = mul nuw <4 x i64> %266, %265
  %268 = getelementptr inbounds nuw i8, ptr %14, i64 896
  %269 = load <4 x i64>, ptr %268, align 1
  %270 = xor <4 x i64> %269, <i64 -3624173730817515445, i64 -2776342293574091063, i64 3806645336748174467, i64 -426887675387993857>
  %271 = bitcast <4 x i64> %270 to <8 x i32>
  %272 = shufflevector <8 x i32> %271, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %273 = bitcast <8 x i32> %272 to <4 x i64>
  %274 = and <4 x i64> %270, splat (i64 4294967295)
  %275 = and <4 x i64> %273, splat (i64 4294967295)
  %276 = mul nuw <4 x i64> %275, %274
  %277 = getelementptr inbounds nuw i8, ptr %14, i64 928
  %278 = load <4 x i64>, ptr %277, align 1
  %279 = xor <4 x i64> %278, <i64 -5192410362903929519, i64 3014149081973282086, i64 9027362082514189912, i64 8849628031031490769>
  %280 = bitcast <4 x i64> %279 to <8 x i32>
  %281 = shufflevector <8 x i32> %280, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %282 = bitcast <8 x i32> %281 to <4 x i64>
  %283 = and <4 x i64> %279, splat (i64 4294967295)
  %284 = and <4 x i64> %282, splat (i64 4294967295)
  %285 = mul nuw <4 x i64> %284, %283
  %286 = getelementptr inbounds nuw i8, ptr %14, i64 960
  %287 = load <4 x i64>, ptr %286, align 1
  %288 = xor <4 x i64> %287, <i64 -2776342293574091063, i64 3806645336748174467, i64 -426887675387993857, i64 -5192410362903929519>
  %289 = bitcast <4 x i64> %288 to <8 x i32>
  %290 = shufflevector <8 x i32> %289, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %291 = bitcast <8 x i32> %290 to <4 x i64>
  %292 = and <4 x i64> %288, splat (i64 4294967295)
  %293 = and <4 x i64> %291, splat (i64 4294967295)
  %294 = mul nuw <4 x i64> %293, %292
  %295 = add <4 x i64> %23, %35
  %296 = add <4 x i64> %295, %53
  %297 = add <4 x i64> %296, %22
  %298 = add <4 x i64> %297, %71
  %299 = add <4 x i64> %298, %42
  %300 = add <4 x i64> %299, %89
  %301 = add <4 x i64> %300, %60
  %302 = add <4 x i64> %301, %107
  %303 = add <4 x i64> %302, %78
  %304 = add <4 x i64> %303, %125
  %305 = add <4 x i64> %304, %96
  %306 = add <4 x i64> %305, %143
  %307 = add <4 x i64> %306, %114
  %308 = add <4 x i64> %307, %161
  %309 = add <4 x i64> %308, %132
  %310 = add <4 x i64> %309, %179
  %311 = add <4 x i64> %310, %150
  %312 = add <4 x i64> %311, %197
  %313 = add <4 x i64> %312, %168
  %314 = add <4 x i64> %313, %215
  %315 = add <4 x i64> %314, %186
  %316 = add <4 x i64> %315, %233
  %317 = add <4 x i64> %316, %204
  %318 = add <4 x i64> %317, %251
  %319 = add <4 x i64> %318, %222
  %320 = add <4 x i64> %319, %269
  %321 = add <4 x i64> %320, %240
  %322 = add <4 x i64> %321, %287
  %323 = add <4 x i64> %322, %258
  %324 = add <4 x i64> %323, %276
  %325 = add <4 x i64> %324, %294
  %326 = getelementptr inbounds nuw i8, ptr %14, i64 992
  %327 = load <4 x i64>, ptr %326, align 1
  %328 = xor <4 x i64> %327, <i64 3014149081973282086, i64 9027362082514189912, i64 8849628031031490769, i64 -7703965541554505073>
  %329 = bitcast <4 x i64> %328 to <8 x i32>
  %330 = shufflevector <8 x i32> %329, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %331 = bitcast <8 x i32> %330 to <4 x i64>
  %332 = and <4 x i64> %328, splat (i64 4294967295)
  %333 = and <4 x i64> %331, splat (i64 4294967295)
  %334 = mul nuw <4 x i64> %333, %332
  %335 = add <4 x i64> %33, %44
  %336 = add <4 x i64> %335, %62
  %337 = add <4 x i64> %336, %32
  %338 = add <4 x i64> %337, %80
  %339 = add <4 x i64> %338, %51
  %340 = add <4 x i64> %339, %98
  %341 = add <4 x i64> %340, %69
  %342 = add <4 x i64> %341, %116
  %343 = add <4 x i64> %342, %87
  %344 = add <4 x i64> %343, %134
  %345 = add <4 x i64> %344, %105
  %346 = add <4 x i64> %345, %152
  %347 = add <4 x i64> %346, %123
  %348 = add <4 x i64> %347, %170
  %349 = add <4 x i64> %348, %141
  %350 = add <4 x i64> %349, %188
  %351 = add <4 x i64> %350, %159
  %352 = add <4 x i64> %351, %206
  %353 = add <4 x i64> %352, %177
  %354 = add <4 x i64> %353, %224
  %355 = add <4 x i64> %354, %195
  %356 = add <4 x i64> %355, %242
  %357 = add <4 x i64> %356, %213
  %358 = add <4 x i64> %357, %260
  %359 = add <4 x i64> %358, %231
  %360 = add <4 x i64> %359, %278
  %361 = add <4 x i64> %360, %249
  %362 = add <4 x i64> %361, %327
  %363 = add <4 x i64> %362, %267
  %364 = add <4 x i64> %363, %285
  %365 = add <4 x i64> %364, %334
  %366 = lshr <4 x i64> %325, splat (i64 47)
  %367 = xor <4 x i64> %325, %366
  %368 = xor <4 x i64> %367, <i64 3806645336748174467, i64 -426887675387993857, i64 -5192410362903929519, i64 3014149081973282086>
  %369 = and <4 x i64> %368, splat (i64 4294967295)
  %370 = mul nuw <4 x i64> %369, splat (i64 2654435761)
  %371 = bitcast <4 x i64> %368 to <8 x i32>
  %372 = shufflevector <8 x i32> %371, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %373 = bitcast <8 x i32> %372 to <4 x i64>
  %374 = mul <4 x i64> %373, splat (i64 -7046029290881679360)
  %375 = add <4 x i64> %374, %370
  %376 = lshr <4 x i64> %365, splat (i64 47)
  %377 = xor <4 x i64> %365, %376
  %378 = xor <4 x i64> %377, <i64 9027362082514189912, i64 8849628031031490769, i64 -7703965541554505073, i64 -4950792452503503926>
  %379 = and <4 x i64> %378, splat (i64 4294967295)
  %380 = mul nuw <4 x i64> %379, splat (i64 2654435761)
  %381 = bitcast <4 x i64> %378 to <8 x i32>
  %382 = shufflevector <8 x i32> %381, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %383 = bitcast <8 x i32> %382 to <4 x i64>
  %384 = mul <4 x i64> %383, splat (i64 -7046029290881679360)
  %385 = add <4 x i64> %384, %380
  %386 = add nuw nsw i64 %12, 1
  %387 = icmp eq i64 %386, %7
  br i1 %387, label %388, label %9

388:                                              ; preds = %9, %3
  %389 = phi <4 x i64> [ %6, %3 ], [ %385, %9 ]
  %390 = phi <4 x i64> [ %5, %3 ], [ %375, %9 ]
  %391 = lshr i64 %1, 6
  %392 = and i64 %391, 15
  %393 = and i64 %1, -1024
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 %393
  %395 = icmp eq i64 %392, 0
  br i1 %395, label %430, label %396

396:                                              ; preds = %388, %396
  %397 = phi <4 x i64> [ %426, %396 ], [ %389, %388 ]
  %398 = phi <4 x i64> [ %413, %396 ], [ %390, %388 ]
  %399 = phi i64 [ %428, %396 ], [ 0, %388 ]
  %400 = phi ptr [ %427, %396 ], [ @kKey, %388 ]
  %401 = shl nuw nsw i64 %399, 6
  %402 = getelementptr inbounds nuw i8, ptr %394, i64 %401
  %403 = load <4 x i64>, ptr %402, align 1
  %404 = load <4 x i64>, ptr %400, align 1
  %405 = xor <4 x i64> %404, %403
  %406 = bitcast <4 x i64> %405 to <8 x i32>
  %407 = shufflevector <8 x i32> %406, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %408 = bitcast <8 x i32> %407 to <4 x i64>
  %409 = and <4 x i64> %405, splat (i64 4294967295)
  %410 = and <4 x i64> %408, splat (i64 4294967295)
  %411 = mul nuw <4 x i64> %410, %409
  %412 = add <4 x i64> %403, %398
  %413 = add <4 x i64> %412, %411
  %414 = getelementptr inbounds nuw i8, ptr %402, i64 32
  %415 = load <4 x i64>, ptr %414, align 1
  %416 = getelementptr inbounds nuw i8, ptr %400, i64 32
  %417 = load <4 x i64>, ptr %416, align 1
  %418 = xor <4 x i64> %417, %415
  %419 = bitcast <4 x i64> %418 to <8 x i32>
  %420 = shufflevector <8 x i32> %419, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %421 = bitcast <8 x i32> %420 to <4 x i64>
  %422 = and <4 x i64> %418, splat (i64 4294967295)
  %423 = and <4 x i64> %421, splat (i64 4294967295)
  %424 = mul nuw <4 x i64> %423, %422
  %425 = add <4 x i64> %415, %397
  %426 = add <4 x i64> %425, %424
  %427 = getelementptr inbounds nuw i8, ptr %400, i64 8
  %428 = add nuw nsw i64 %399, 1
  %429 = icmp eq i64 %428, %392
  br i1 %429, label %430, label %396

430:                                              ; preds = %396, %388
  %431 = phi <4 x i64> [ %389, %388 ], [ %426, %396 ]
  %432 = phi <4 x i64> [ %390, %388 ], [ %413, %396 ]
  %433 = and i64 %1, 63
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %464, label %435

435:                                              ; preds = %430
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %437 = getelementptr inbounds i8, ptr %436, i64 -64
  %438 = shl nuw nsw i64 %392, 3
  %439 = getelementptr inbounds nuw i8, ptr @kKey, i64 %438
  %440 = load <4 x i64>, ptr %437, align 1
  %441 = load <4 x i64>, ptr %439, align 8
  %442 = xor <4 x i64> %441, %440
  %443 = bitcast <4 x i64> %442 to <8 x i32>
  %444 = shufflevector <8 x i32> %443, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %445 = bitcast <8 x i32> %444 to <4 x i64>
  %446 = and <4 x i64> %442, splat (i64 4294967295)
  %447 = and <4 x i64> %445, splat (i64 4294967295)
  %448 = mul nuw <4 x i64> %447, %446
  %449 = add <4 x i64> %440, %432
  %450 = add <4 x i64> %449, %448
  %451 = getelementptr inbounds i8, ptr %436, i64 -32
  %452 = load <4 x i64>, ptr %451, align 1
  %453 = getelementptr inbounds nuw i8, ptr %439, i64 32
  %454 = load <4 x i64>, ptr %453, align 8
  %455 = xor <4 x i64> %454, %452
  %456 = bitcast <4 x i64> %455 to <8 x i32>
  %457 = shufflevector <8 x i32> %456, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %458 = bitcast <8 x i32> %457 to <4 x i64>
  %459 = and <4 x i64> %455, splat (i64 4294967295)
  %460 = and <4 x i64> %458, splat (i64 4294967295)
  %461 = mul nuw <4 x i64> %460, %459
  %462 = add <4 x i64> %452, %431
  %463 = add <4 x i64> %462, %461
  br label %464

464:                                              ; preds = %430, %435
  %465 = phi <4 x i64> [ %431, %430 ], [ %463, %435 ]
  %466 = phi <4 x i64> [ %432, %430 ], [ %450, %435 ]
  %467 = lshr i64 %2, 32
  %468 = add nuw nsw i64 %467, 3761606886
  %469 = and i64 %468, 4294967295
  %470 = shl i64 %2, 32
  %471 = sub i64 -9134946786308259840, %470
  %472 = or disjoint i64 %469, %471
  %473 = add i64 %2, 3087550068
  %474 = and i64 %473, 4294967295
  %475 = and i64 %2, -4294967296
  %476 = sub i64 -629619330597781504, %475
  %477 = or disjoint i64 %474, %476
  %478 = add nuw nsw i64 %467, 2186989693
  %479 = and i64 %478, 4294967295
  %480 = shl i64 %2, 32
  %481 = sub i64 -3675093284851548160, %480
  %482 = or disjoint i64 %479, %481
  %483 = add i64 %2, 3413763662
  %484 = and i64 %483, 4294967295
  %485 = and i64 %2, -4294967296
  %486 = sub i64 -3692699390884970496, %485
  %487 = or disjoint i64 %484, %486
  %488 = add nuw nsw i64 %467, 1916839076
  %489 = and i64 %488, 4294967295
  %490 = shl i64 %2, 32
  %491 = sub i64 -5209706961095884800, %490
  %492 = or disjoint i64 %489, %491
  %493 = add i64 %2, 3738463721
  %494 = and i64 %493, 4294967295
  %495 = and i64 %2, -4294967296
  %496 = sub i64 -8966499891241025536, %495
  %497 = or disjoint i64 %494, %496
  %498 = add nuw nsw i64 %467, 2080473388
  %499 = and i64 %498, 4294967295
  %500 = shl i64 %2, 32
  %501 = sub i64 -639039336339210240, %500
  %502 = or disjoint i64 %499, %501
  %503 = add i64 %2, 3103681593
  %504 = and i64 %503, 4294967295
  %505 = and i64 %2, -4294967296
  %506 = sub i64 2568260966923894784, %505
  %507 = or disjoint i64 %504, %506
  %508 = mul i64 %1, -7046029288634856825
  %509 = extractelement <4 x i64> %466, i64 0
  %510 = xor i64 %507, %509
  %511 = extractelement <4 x i64> %466, i64 1
  %512 = xor i64 %502, %511
  %513 = zext i64 %510 to i128
  %514 = zext i64 %512 to i128
  %515 = mul nuw i128 %514, %513
  %516 = lshr i128 %515, 64
  %517 = xor i128 %516, %515
  %518 = trunc i128 %517 to i64
  %519 = add i64 %508, %518
  %520 = extractelement <4 x i64> %466, i64 2
  %521 = xor i64 %497, %520
  %522 = extractelement <4 x i64> %466, i64 3
  %523 = xor i64 %492, %522
  %524 = zext i64 %521 to i128
  %525 = zext i64 %523 to i128
  %526 = mul nuw i128 %525, %524
  %527 = lshr i128 %526, 64
  %528 = xor i128 %527, %526
  %529 = trunc i128 %528 to i64
  %530 = add i64 %519, %529
  %531 = extractelement <4 x i64> %465, i64 0
  %532 = xor i64 %487, %531
  %533 = extractelement <4 x i64> %465, i64 1
  %534 = xor i64 %482, %533
  %535 = zext i64 %532 to i128
  %536 = zext i64 %534 to i128
  %537 = mul nuw i128 %536, %535
  %538 = lshr i128 %537, 64
  %539 = xor i128 %538, %537
  %540 = trunc i128 %539 to i64
  %541 = add i64 %530, %540
  %542 = extractelement <4 x i64> %465, i64 2
  %543 = xor i64 %477, %542
  %544 = extractelement <4 x i64> %465, i64 3
  %545 = xor i64 %472, %544
  %546 = zext i64 %543 to i128
  %547 = zext i64 %545 to i128
  %548 = mul nuw i128 %547, %546
  %549 = lshr i128 %548, 64
  %550 = xor i128 %549, %548
  %551 = trunc i128 %550 to i64
  %552 = add i64 %541, %551
  %553 = lshr i64 %552, 37
  %554 = xor i64 %553, %552
  %555 = mul i64 %554, 1609587929392839161
  %556 = lshr i64 %555, 32
  %557 = xor i64 %556, %555
  ret i64 %557
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
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
  br label %205

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
  br label %205

50:                                               ; preds = %27
  %51 = icmp eq i64 %1, 0
  br i1 %51, label %205, label %52

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
  br label %205

75:                                               ; preds = %2
  %76 = mul i64 %1, -7046029288634856825
  %77 = icmp ugt i64 %1, 32
  br i1 %77, label %78, label %172

78:                                               ; preds = %75
  %79 = icmp ugt i64 %1, 64
  br i1 %79, label %80, label %143

80:                                               ; preds = %78
  %81 = icmp ugt i64 %1, 96
  br i1 %81, label %82, label %114

82:                                               ; preds = %80
  %83 = icmp ugt i64 %1, 128
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  %85 = tail call fastcc i64 @XXH3_hashLong_64b(ptr noundef readonly %0, i64 noundef %1, i64 noundef 0)
  br label %205

86:                                               ; preds = %82
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %88, -2045702682710477249
  %92 = xor i64 %90, -4104099645253436473
  %93 = zext i64 %91 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %76, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %101 = getelementptr inbounds i8, ptr %100, i64 -64
  %102 = load i64, ptr %101, align 1
  %103 = getelementptr inbounds i8, ptr %100, i64 -56
  %104 = load i64, ptr %103, align 1
  %105 = xor i64 %102, -3624173730817515445
  %106 = xor i64 %104, -2776342293574091063
  %107 = zext i64 %105 to i128
  %108 = zext i64 %106 to i128
  %109 = mul nuw i128 %108, %107
  %110 = lshr i128 %109, 64
  %111 = xor i128 %110, %109
  %112 = trunc i128 %111 to i64
  %113 = add i64 %99, %112
  br label %114

114:                                              ; preds = %86, %80
  %115 = phi i64 [ %113, %86 ], [ %76, %80 ]
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %117 = load i64, ptr %116, align 1
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %119 = load i64, ptr %118, align 1
  %120 = xor i64 %117, -7943504444863786309
  %121 = xor i64 %119, 1968968742000944523
  %122 = zext i64 %120 to i128
  %123 = zext i64 %121 to i128
  %124 = mul nuw i128 %123, %122
  %125 = lshr i128 %124, 64
  %126 = xor i128 %125, %124
  %127 = trunc i128 %126 to i64
  %128 = add i64 %115, %127
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %130 = getelementptr inbounds i8, ptr %129, i64 -48
  %131 = load i64, ptr %130, align 1
  %132 = getelementptr inbounds i8, ptr %129, i64 -40
  %133 = load i64, ptr %132, align 1
  %134 = xor i64 %131, -6769480549562824553
  %135 = xor i64 %133, -6206333191815827642
  %136 = zext i64 %134 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %128, %141
  br label %143

143:                                              ; preds = %114, %78
  %144 = phi i64 [ %142, %114 ], [ %76, %78 ]
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %146 = load i64, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %148 = load i64, ptr %147, align 1
  %149 = xor i64 %146, -3692699387471206834
  %150 = xor i64 %148, -3675093282664558467
  %151 = zext i64 %149 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %144, %156
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -32
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds i8, ptr %158, i64 -24
  %162 = load i64, ptr %161, align 1
  %163 = xor i64 %160, -629619327510231436
  %164 = xor i64 %162, -9134946782546652954
  %165 = zext i64 %163 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %157, %170
  br label %172

172:                                              ; preds = %143, %75
  %173 = phi i64 [ %171, %143 ], [ %76, %75 ]
  %174 = load i64, ptr %0, align 1
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %176 = load i64, ptr %175, align 1
  %177 = xor i64 %174, 2568260970027576377
  %178 = xor i64 %176, -639039334258736852
  %179 = zext i64 %177 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %173, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %187 = getelementptr inbounds i8, ptr %186, i64 -16
  %188 = load i64, ptr %187, align 1
  %189 = getelementptr inbounds i8, ptr %186, i64 -8
  %190 = load i64, ptr %189, align 1
  %191 = xor i64 %188, -8966499887502561815
  %192 = xor i64 %190, -5209706959179045724
  %193 = zext i64 %191 to i128
  %194 = zext i64 %192 to i128
  %195 = mul nuw i128 %194, %193
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %185, %198
  %200 = lshr i64 %199, 37
  %201 = xor i64 %200, %199
  %202 = mul i64 %201, 1609587929392839161
  %203 = lshr i64 %202, 32
  %204 = xor i64 %203, %202
  br label %205

205:                                              ; preds = %6, %29, %50, %52, %84, %172
  %206 = phi i64 [ %85, %84 ], [ %204, %172 ], [ %26, %6 ], [ %49, %29 ], [ %74, %52 ], [ 0, %50 ]
  ret i64 %206
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
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
  br label %294

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
  br label %294

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
  br label %294

126:                                              ; preds = %83
  %127 = sub i64 0, %2
  %128 = insertvalue { i64, i64 } poison, i64 %2, 0
  %129 = insertvalue { i64, i64 } %128, i64 %127, 1
  br label %294

130:                                              ; preds = %3
  %131 = add i64 %2, %1
  %132 = mul i64 %131, -7046029288634856825
  %133 = icmp ugt i64 %1, 32
  br i1 %133, label %134, label %241

134:                                              ; preds = %130
  %135 = icmp ugt i64 %1, 64
  br i1 %135, label %136, label %207

136:                                              ; preds = %134
  %137 = icmp ugt i64 %1, 96
  br i1 %137, label %138, label %173

138:                                              ; preds = %136
  %139 = icmp ugt i64 %1, 128
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %294

142:                                              ; preds = %138
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %144 = load i64, ptr %143, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %146 = load i64, ptr %145, align 1
  %147 = add i64 %2, -2045702682710477249
  %148 = xor i64 %144, %147
  %149 = sub i64 -4104099645253436473, %2
  %150 = xor i64 %146, %149
  %151 = zext i64 %148 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %132, %156
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -64
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds i8, ptr %158, i64 -56
  %162 = load i64, ptr %161, align 1
  %163 = add i64 %2, -3624173730817515445
  %164 = xor i64 %160, %163
  %165 = sub i64 -2776342293574091063, %2
  %166 = xor i64 %162, %165
  %167 = zext i64 %164 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  br label %173

173:                                              ; preds = %142, %136
  %174 = phi i64 [ %172, %142 ], [ 0, %136 ]
  %175 = phi i64 [ %157, %142 ], [ %132, %136 ]
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %177 = load i64, ptr %176, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %179 = load i64, ptr %178, align 1
  %180 = add i64 %2, -7943504444863786309
  %181 = xor i64 %177, %180
  %182 = sub i64 1968968742000944523, %2
  %183 = xor i64 %179, %182
  %184 = zext i64 %181 to i128
  %185 = zext i64 %183 to i128
  %186 = mul nuw i128 %185, %184
  %187 = lshr i128 %186, 64
  %188 = xor i128 %187, %186
  %189 = trunc i128 %188 to i64
  %190 = add i64 %175, %189
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %192 = getelementptr inbounds i8, ptr %191, i64 -48
  %193 = load i64, ptr %192, align 1
  %194 = getelementptr inbounds i8, ptr %191, i64 -40
  %195 = load i64, ptr %194, align 1
  %196 = add i64 %2, -6769480549562824553
  %197 = xor i64 %193, %196
  %198 = sub i64 -6206333191815827642, %2
  %199 = xor i64 %195, %198
  %200 = zext i64 %197 to i128
  %201 = zext i64 %199 to i128
  %202 = mul nuw i128 %201, %200
  %203 = lshr i128 %202, 64
  %204 = xor i128 %203, %202
  %205 = trunc i128 %204 to i64
  %206 = add i64 %174, %205
  br label %207

207:                                              ; preds = %173, %134
  %208 = phi i64 [ %206, %173 ], [ 0, %134 ]
  %209 = phi i64 [ %190, %173 ], [ %132, %134 ]
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %211 = load i64, ptr %210, align 1
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %213 = load i64, ptr %212, align 1
  %214 = add i64 %2, -3692699387471206834
  %215 = xor i64 %211, %214
  %216 = sub i64 -3675093282664558467, %2
  %217 = xor i64 %213, %216
  %218 = zext i64 %215 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %209, %223
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %226 = getelementptr inbounds i8, ptr %225, i64 -32
  %227 = load i64, ptr %226, align 1
  %228 = getelementptr inbounds i8, ptr %225, i64 -24
  %229 = load i64, ptr %228, align 1
  %230 = add i64 %2, -629619327510231436
  %231 = xor i64 %227, %230
  %232 = sub i64 -9134946782546652954, %2
  %233 = xor i64 %229, %232
  %234 = zext i64 %231 to i128
  %235 = zext i64 %233 to i128
  %236 = mul nuw i128 %235, %234
  %237 = lshr i128 %236, 64
  %238 = xor i128 %237, %236
  %239 = trunc i128 %238 to i64
  %240 = add i64 %208, %239
  br label %241

241:                                              ; preds = %207, %130
  %242 = phi i64 [ %240, %207 ], [ 0, %130 ]
  %243 = phi i64 [ %224, %207 ], [ %132, %130 ]
  %244 = load i64, ptr %0, align 1
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %246 = load i64, ptr %245, align 1
  %247 = add i64 %2, 2568260970027576377
  %248 = xor i64 %244, %247
  %249 = sub i64 -639039334258736852, %2
  %250 = xor i64 %246, %249
  %251 = zext i64 %248 to i128
  %252 = zext i64 %250 to i128
  %253 = mul nuw i128 %252, %251
  %254 = lshr i128 %253, 64
  %255 = xor i128 %254, %253
  %256 = trunc i128 %255 to i64
  %257 = add i64 %243, %256
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %259 = getelementptr inbounds i8, ptr %258, i64 -16
  %260 = load i64, ptr %259, align 1
  %261 = getelementptr inbounds i8, ptr %258, i64 -8
  %262 = load i64, ptr %261, align 1
  %263 = add i64 %2, -8966499887502561815
  %264 = xor i64 %260, %263
  %265 = sub i64 -5209706959179045724, %2
  %266 = xor i64 %262, %265
  %267 = zext i64 %264 to i128
  %268 = zext i64 %266 to i128
  %269 = mul nuw i128 %268, %267
  %270 = lshr i128 %269, 64
  %271 = xor i128 %270, %269
  %272 = trunc i128 %271 to i64
  %273 = add i64 %242, %272
  %274 = add i64 %273, %257
  %275 = mul i64 %257, 1609587929392839161
  %276 = mul i64 %273, -8796714831421723037
  %277 = sub i64 %1, %2
  %278 = mul i64 %277, -4417276706812531889
  %279 = add i64 %275, %278
  %280 = add i64 %279, %276
  %281 = lshr i64 %274, 37
  %282 = xor i64 %281, %274
  %283 = mul i64 %282, 1609587929392839161
  %284 = lshr i64 %283, 32
  %285 = xor i64 %284, %283
  %286 = lshr i64 %280, 37
  %287 = xor i64 %286, %280
  %288 = mul i64 %287, 1609587929392839161
  %289 = lshr i64 %288, 32
  %290 = xor i64 %289, %288
  %291 = sub i64 0, %290
  %292 = insertvalue { i64, i64 } poison, i64 %285, 0
  %293 = insertvalue { i64, i64 } %292, i64 %291, 1
  br label %294

294:                                              ; preds = %126, %85, %48, %7, %140, %241
  %295 = phi { i64, i64 } [ %141, %140 ], [ %293, %241 ], [ %45, %7 ], [ %82, %48 ], [ %125, %85 ], [ %129, %126 ]
  ret { i64, i64 } %295
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b(ptr noundef readonly %0, i64 noundef range(i64 129, 0) %1, i64 noundef %2) unnamed_addr #13 {
  %4 = insertelement <4 x i64> <i64 poison, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, i64 %2, i64 0
  %5 = sub i64 0, %2
  %6 = insertelement <4 x i64> <i64 -8796714831421723037, i64 2870177450012600261, i64 poison, i64 0>, i64 %5, i64 2
  %7 = lshr i64 %1, 10
  %8 = icmp ult i64 %1, 1024
  br i1 %8, label %388, label %9

9:                                                ; preds = %3, %9
  %10 = phi <4 x i64> [ %385, %9 ], [ %6, %3 ]
  %11 = phi <4 x i64> [ %375, %9 ], [ %4, %3 ]
  %12 = phi i64 [ %386, %9 ], [ 0, %3 ]
  %13 = shl nuw i64 %12, 10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  %15 = load <4 x i64>, ptr %14, align 1
  %16 = xor <4 x i64> %15, <i64 2568260970027576377, i64 -639039334258736852, i64 -8966499887502561815, i64 -5209706959179045724>
  %17 = bitcast <4 x i64> %16 to <8 x i32>
  %18 = shufflevector <8 x i32> %17, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %19 = bitcast <8 x i32> %18 to <4 x i64>
  %20 = and <4 x i64> %16, splat (i64 4294967295)
  %21 = and <4 x i64> %19, splat (i64 4294967295)
  %22 = mul nuw <4 x i64> %21, %20
  %23 = add <4 x i64> %15, %11
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %25 = load <4 x i64>, ptr %24, align 1
  %26 = xor <4 x i64> %25, <i64 -3692699387471206834, i64 -3675093282664558467, i64 -629619327510231436, i64 -9134946782546652954>
  %27 = bitcast <4 x i64> %26 to <8 x i32>
  %28 = shufflevector <8 x i32> %27, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %29 = bitcast <8 x i32> %28 to <4 x i64>
  %30 = and <4 x i64> %26, splat (i64 4294967295)
  %31 = and <4 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <4 x i64> %31, %30
  %33 = add <4 x i64> %25, %10
  %34 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %35 = load <4 x i64>, ptr %34, align 1
  %36 = xor <4 x i64> %35, <i64 -639039334258736852, i64 -8966499887502561815, i64 -5209706959179045724, i64 -3692699387471206834>
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %36, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = getelementptr inbounds nuw i8, ptr %14, i64 96
  %44 = load <4 x i64>, ptr %43, align 1
  %45 = xor <4 x i64> %44, <i64 -3675093282664558467, i64 -629619327510231436, i64 -9134946782546652954, i64 -7943504444863786309>
  %46 = bitcast <4 x i64> %45 to <8 x i32>
  %47 = shufflevector <8 x i32> %46, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %48 = bitcast <8 x i32> %47 to <4 x i64>
  %49 = and <4 x i64> %45, splat (i64 4294967295)
  %50 = and <4 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <4 x i64> %50, %49
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 128
  %53 = load <4 x i64>, ptr %52, align 1
  %54 = xor <4 x i64> %53, <i64 -8966499887502561815, i64 -5209706959179045724, i64 -3692699387471206834, i64 -3675093282664558467>
  %55 = bitcast <4 x i64> %54 to <8 x i32>
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = and <4 x i64> %54, splat (i64 4294967295)
  %59 = and <4 x i64> %57, splat (i64 4294967295)
  %60 = mul nuw <4 x i64> %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %14, i64 160
  %62 = load <4 x i64>, ptr %61, align 1
  %63 = xor <4 x i64> %62, <i64 -629619327510231436, i64 -9134946782546652954, i64 -7943504444863786309, i64 1968968742000944523>
  %64 = bitcast <4 x i64> %63 to <8 x i32>
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %66 = bitcast <8 x i32> %65 to <4 x i64>
  %67 = and <4 x i64> %63, splat (i64 4294967295)
  %68 = and <4 x i64> %66, splat (i64 4294967295)
  %69 = mul nuw <4 x i64> %68, %67
  %70 = getelementptr inbounds nuw i8, ptr %14, i64 192
  %71 = load <4 x i64>, ptr %70, align 1
  %72 = xor <4 x i64> %71, <i64 -5209706959179045724, i64 -3692699387471206834, i64 -3675093282664558467, i64 -629619327510231436>
  %73 = bitcast <4 x i64> %72 to <8 x i32>
  %74 = shufflevector <8 x i32> %73, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  %76 = and <4 x i64> %72, splat (i64 4294967295)
  %77 = and <4 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <4 x i64> %77, %76
  %79 = getelementptr inbounds nuw i8, ptr %14, i64 224
  %80 = load <4 x i64>, ptr %79, align 1
  %81 = xor <4 x i64> %80, <i64 -9134946782546652954, i64 -7943504444863786309, i64 1968968742000944523, i64 -6769480549562824553>
  %82 = bitcast <4 x i64> %81 to <8 x i32>
  %83 = shufflevector <8 x i32> %82, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %84 = bitcast <8 x i32> %83 to <4 x i64>
  %85 = and <4 x i64> %81, splat (i64 4294967295)
  %86 = and <4 x i64> %84, splat (i64 4294967295)
  %87 = mul nuw <4 x i64> %86, %85
  %88 = getelementptr inbounds nuw i8, ptr %14, i64 256
  %89 = load <4 x i64>, ptr %88, align 1
  %90 = xor <4 x i64> %89, <i64 -3692699387471206834, i64 -3675093282664558467, i64 -629619327510231436, i64 -9134946782546652954>
  %91 = bitcast <4 x i64> %90 to <8 x i32>
  %92 = shufflevector <8 x i32> %91, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %93 = bitcast <8 x i32> %92 to <4 x i64>
  %94 = and <4 x i64> %90, splat (i64 4294967295)
  %95 = and <4 x i64> %93, splat (i64 4294967295)
  %96 = mul nuw <4 x i64> %95, %94
  %97 = getelementptr inbounds nuw i8, ptr %14, i64 288
  %98 = load <4 x i64>, ptr %97, align 1
  %99 = xor <4 x i64> %98, <i64 -7943504444863786309, i64 1968968742000944523, i64 -6769480549562824553, i64 -6206333191815827642>
  %100 = bitcast <4 x i64> %99 to <8 x i32>
  %101 = shufflevector <8 x i32> %100, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %102 = bitcast <8 x i32> %101 to <4 x i64>
  %103 = and <4 x i64> %99, splat (i64 4294967295)
  %104 = and <4 x i64> %102, splat (i64 4294967295)
  %105 = mul nuw <4 x i64> %104, %103
  %106 = getelementptr inbounds nuw i8, ptr %14, i64 320
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = xor <4 x i64> %107, <i64 -3675093282664558467, i64 -629619327510231436, i64 -9134946782546652954, i64 -7943504444863786309>
  %109 = bitcast <4 x i64> %108 to <8 x i32>
  %110 = shufflevector <8 x i32> %109, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %111 = bitcast <8 x i32> %110 to <4 x i64>
  %112 = and <4 x i64> %108, splat (i64 4294967295)
  %113 = and <4 x i64> %111, splat (i64 4294967295)
  %114 = mul nuw <4 x i64> %113, %112
  %115 = getelementptr inbounds nuw i8, ptr %14, i64 352
  %116 = load <4 x i64>, ptr %115, align 1
  %117 = xor <4 x i64> %116, <i64 1968968742000944523, i64 -6769480549562824553, i64 -6206333191815827642, i64 -2045702682710477249>
  %118 = bitcast <4 x i64> %117 to <8 x i32>
  %119 = shufflevector <8 x i32> %118, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %120 = bitcast <8 x i32> %119 to <4 x i64>
  %121 = and <4 x i64> %117, splat (i64 4294967295)
  %122 = and <4 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <4 x i64> %122, %121
  %124 = getelementptr inbounds nuw i8, ptr %14, i64 384
  %125 = load <4 x i64>, ptr %124, align 1
  %126 = xor <4 x i64> %125, <i64 -629619327510231436, i64 -9134946782546652954, i64 -7943504444863786309, i64 1968968742000944523>
  %127 = bitcast <4 x i64> %126 to <8 x i32>
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %129 = bitcast <8 x i32> %128 to <4 x i64>
  %130 = and <4 x i64> %126, splat (i64 4294967295)
  %131 = and <4 x i64> %129, splat (i64 4294967295)
  %132 = mul nuw <4 x i64> %131, %130
  %133 = getelementptr inbounds nuw i8, ptr %14, i64 416
  %134 = load <4 x i64>, ptr %133, align 1
  %135 = xor <4 x i64> %134, <i64 -6769480549562824553, i64 -6206333191815827642, i64 -2045702682710477249, i64 -4104099645253436473>
  %136 = bitcast <4 x i64> %135 to <8 x i32>
  %137 = shufflevector <8 x i32> %136, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %138 = bitcast <8 x i32> %137 to <4 x i64>
  %139 = and <4 x i64> %135, splat (i64 4294967295)
  %140 = and <4 x i64> %138, splat (i64 4294967295)
  %141 = mul nuw <4 x i64> %140, %139
  %142 = getelementptr inbounds nuw i8, ptr %14, i64 448
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = xor <4 x i64> %143, <i64 -9134946782546652954, i64 -7943504444863786309, i64 1968968742000944523, i64 -6769480549562824553>
  %145 = bitcast <4 x i64> %144 to <8 x i32>
  %146 = shufflevector <8 x i32> %145, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %147 = bitcast <8 x i32> %146 to <4 x i64>
  %148 = and <4 x i64> %144, splat (i64 4294967295)
  %149 = and <4 x i64> %147, splat (i64 4294967295)
  %150 = mul nuw <4 x i64> %149, %148
  %151 = getelementptr inbounds nuw i8, ptr %14, i64 480
  %152 = load <4 x i64>, ptr %151, align 1
  %153 = xor <4 x i64> %152, <i64 -6206333191815827642, i64 -2045702682710477249, i64 -4104099645253436473, i64 -3624173730817515445>
  %154 = bitcast <4 x i64> %153 to <8 x i32>
  %155 = shufflevector <8 x i32> %154, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %156 = bitcast <8 x i32> %155 to <4 x i64>
  %157 = and <4 x i64> %153, splat (i64 4294967295)
  %158 = and <4 x i64> %156, splat (i64 4294967295)
  %159 = mul nuw <4 x i64> %158, %157
  %160 = getelementptr inbounds nuw i8, ptr %14, i64 512
  %161 = load <4 x i64>, ptr %160, align 1
  %162 = xor <4 x i64> %161, <i64 -7943504444863786309, i64 1968968742000944523, i64 -6769480549562824553, i64 -6206333191815827642>
  %163 = bitcast <4 x i64> %162 to <8 x i32>
  %164 = shufflevector <8 x i32> %163, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %165 = bitcast <8 x i32> %164 to <4 x i64>
  %166 = and <4 x i64> %162, splat (i64 4294967295)
  %167 = and <4 x i64> %165, splat (i64 4294967295)
  %168 = mul nuw <4 x i64> %167, %166
  %169 = getelementptr inbounds nuw i8, ptr %14, i64 544
  %170 = load <4 x i64>, ptr %169, align 1
  %171 = xor <4 x i64> %170, <i64 -2045702682710477249, i64 -4104099645253436473, i64 -3624173730817515445, i64 -2776342293574091063>
  %172 = bitcast <4 x i64> %171 to <8 x i32>
  %173 = shufflevector <8 x i32> %172, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %174 = bitcast <8 x i32> %173 to <4 x i64>
  %175 = and <4 x i64> %171, splat (i64 4294967295)
  %176 = and <4 x i64> %174, splat (i64 4294967295)
  %177 = mul nuw <4 x i64> %176, %175
  %178 = getelementptr inbounds nuw i8, ptr %14, i64 576
  %179 = load <4 x i64>, ptr %178, align 1
  %180 = xor <4 x i64> %179, <i64 1968968742000944523, i64 -6769480549562824553, i64 -6206333191815827642, i64 -2045702682710477249>
  %181 = bitcast <4 x i64> %180 to <8 x i32>
  %182 = shufflevector <8 x i32> %181, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %183 = bitcast <8 x i32> %182 to <4 x i64>
  %184 = and <4 x i64> %180, splat (i64 4294967295)
  %185 = and <4 x i64> %183, splat (i64 4294967295)
  %186 = mul nuw <4 x i64> %185, %184
  %187 = getelementptr inbounds nuw i8, ptr %14, i64 608
  %188 = load <4 x i64>, ptr %187, align 1
  %189 = xor <4 x i64> %188, <i64 -4104099645253436473, i64 -3624173730817515445, i64 -2776342293574091063, i64 3806645336748174467>
  %190 = bitcast <4 x i64> %189 to <8 x i32>
  %191 = shufflevector <8 x i32> %190, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %192 = bitcast <8 x i32> %191 to <4 x i64>
  %193 = and <4 x i64> %189, splat (i64 4294967295)
  %194 = and <4 x i64> %192, splat (i64 4294967295)
  %195 = mul nuw <4 x i64> %194, %193
  %196 = getelementptr inbounds nuw i8, ptr %14, i64 640
  %197 = load <4 x i64>, ptr %196, align 1
  %198 = xor <4 x i64> %197, <i64 -6769480549562824553, i64 -6206333191815827642, i64 -2045702682710477249, i64 -4104099645253436473>
  %199 = bitcast <4 x i64> %198 to <8 x i32>
  %200 = shufflevector <8 x i32> %199, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %201 = bitcast <8 x i32> %200 to <4 x i64>
  %202 = and <4 x i64> %198, splat (i64 4294967295)
  %203 = and <4 x i64> %201, splat (i64 4294967295)
  %204 = mul nuw <4 x i64> %203, %202
  %205 = getelementptr inbounds nuw i8, ptr %14, i64 672
  %206 = load <4 x i64>, ptr %205, align 1
  %207 = xor <4 x i64> %206, <i64 -3624173730817515445, i64 -2776342293574091063, i64 3806645336748174467, i64 -426887675387993857>
  %208 = bitcast <4 x i64> %207 to <8 x i32>
  %209 = shufflevector <8 x i32> %208, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %210 = bitcast <8 x i32> %209 to <4 x i64>
  %211 = and <4 x i64> %207, splat (i64 4294967295)
  %212 = and <4 x i64> %210, splat (i64 4294967295)
  %213 = mul nuw <4 x i64> %212, %211
  %214 = getelementptr inbounds nuw i8, ptr %14, i64 704
  %215 = load <4 x i64>, ptr %214, align 1
  %216 = xor <4 x i64> %215, <i64 -6206333191815827642, i64 -2045702682710477249, i64 -4104099645253436473, i64 -3624173730817515445>
  %217 = bitcast <4 x i64> %216 to <8 x i32>
  %218 = shufflevector <8 x i32> %217, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %219 = bitcast <8 x i32> %218 to <4 x i64>
  %220 = and <4 x i64> %216, splat (i64 4294967295)
  %221 = and <4 x i64> %219, splat (i64 4294967295)
  %222 = mul nuw <4 x i64> %221, %220
  %223 = getelementptr inbounds nuw i8, ptr %14, i64 736
  %224 = load <4 x i64>, ptr %223, align 1
  %225 = xor <4 x i64> %224, <i64 -2776342293574091063, i64 3806645336748174467, i64 -426887675387993857, i64 -5192410362903929519>
  %226 = bitcast <4 x i64> %225 to <8 x i32>
  %227 = shufflevector <8 x i32> %226, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %228 = bitcast <8 x i32> %227 to <4 x i64>
  %229 = and <4 x i64> %225, splat (i64 4294967295)
  %230 = and <4 x i64> %228, splat (i64 4294967295)
  %231 = mul nuw <4 x i64> %230, %229
  %232 = getelementptr inbounds nuw i8, ptr %14, i64 768
  %233 = load <4 x i64>, ptr %232, align 1
  %234 = xor <4 x i64> %233, <i64 -2045702682710477249, i64 -4104099645253436473, i64 -3624173730817515445, i64 -2776342293574091063>
  %235 = bitcast <4 x i64> %234 to <8 x i32>
  %236 = shufflevector <8 x i32> %235, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %237 = bitcast <8 x i32> %236 to <4 x i64>
  %238 = and <4 x i64> %234, splat (i64 4294967295)
  %239 = and <4 x i64> %237, splat (i64 4294967295)
  %240 = mul nuw <4 x i64> %239, %238
  %241 = getelementptr inbounds nuw i8, ptr %14, i64 800
  %242 = load <4 x i64>, ptr %241, align 1
  %243 = xor <4 x i64> %242, <i64 3806645336748174467, i64 -426887675387993857, i64 -5192410362903929519, i64 3014149081973282086>
  %244 = bitcast <4 x i64> %243 to <8 x i32>
  %245 = shufflevector <8 x i32> %244, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %246 = bitcast <8 x i32> %245 to <4 x i64>
  %247 = and <4 x i64> %243, splat (i64 4294967295)
  %248 = and <4 x i64> %246, splat (i64 4294967295)
  %249 = mul nuw <4 x i64> %248, %247
  %250 = getelementptr inbounds nuw i8, ptr %14, i64 832
  %251 = load <4 x i64>, ptr %250, align 1
  %252 = xor <4 x i64> %251, <i64 -4104099645253436473, i64 -3624173730817515445, i64 -2776342293574091063, i64 3806645336748174467>
  %253 = bitcast <4 x i64> %252 to <8 x i32>
  %254 = shufflevector <8 x i32> %253, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %255 = bitcast <8 x i32> %254 to <4 x i64>
  %256 = and <4 x i64> %252, splat (i64 4294967295)
  %257 = and <4 x i64> %255, splat (i64 4294967295)
  %258 = mul nuw <4 x i64> %257, %256
  %259 = getelementptr inbounds nuw i8, ptr %14, i64 864
  %260 = load <4 x i64>, ptr %259, align 1
  %261 = xor <4 x i64> %260, <i64 -426887675387993857, i64 -5192410362903929519, i64 3014149081973282086, i64 9027362082514189912>
  %262 = bitcast <4 x i64> %261 to <8 x i32>
  %263 = shufflevector <8 x i32> %262, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %264 = bitcast <8 x i32> %263 to <4 x i64>
  %265 = and <4 x i64> %261, splat (i64 4294967295)
  %266 = and <4 x i64> %264, splat (i64 4294967295)
  %267 = mul nuw <4 x i64> %266, %265
  %268 = getelementptr inbounds nuw i8, ptr %14, i64 896
  %269 = load <4 x i64>, ptr %268, align 1
  %270 = xor <4 x i64> %269, <i64 -3624173730817515445, i64 -2776342293574091063, i64 3806645336748174467, i64 -426887675387993857>
  %271 = bitcast <4 x i64> %270 to <8 x i32>
  %272 = shufflevector <8 x i32> %271, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %273 = bitcast <8 x i32> %272 to <4 x i64>
  %274 = and <4 x i64> %270, splat (i64 4294967295)
  %275 = and <4 x i64> %273, splat (i64 4294967295)
  %276 = mul nuw <4 x i64> %275, %274
  %277 = getelementptr inbounds nuw i8, ptr %14, i64 928
  %278 = load <4 x i64>, ptr %277, align 1
  %279 = xor <4 x i64> %278, <i64 -5192410362903929519, i64 3014149081973282086, i64 9027362082514189912, i64 8849628031031490769>
  %280 = bitcast <4 x i64> %279 to <8 x i32>
  %281 = shufflevector <8 x i32> %280, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %282 = bitcast <8 x i32> %281 to <4 x i64>
  %283 = and <4 x i64> %279, splat (i64 4294967295)
  %284 = and <4 x i64> %282, splat (i64 4294967295)
  %285 = mul nuw <4 x i64> %284, %283
  %286 = getelementptr inbounds nuw i8, ptr %14, i64 960
  %287 = load <4 x i64>, ptr %286, align 1
  %288 = xor <4 x i64> %287, <i64 -2776342293574091063, i64 3806645336748174467, i64 -426887675387993857, i64 -5192410362903929519>
  %289 = bitcast <4 x i64> %288 to <8 x i32>
  %290 = shufflevector <8 x i32> %289, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %291 = bitcast <8 x i32> %290 to <4 x i64>
  %292 = and <4 x i64> %288, splat (i64 4294967295)
  %293 = and <4 x i64> %291, splat (i64 4294967295)
  %294 = mul nuw <4 x i64> %293, %292
  %295 = add <4 x i64> %23, %35
  %296 = add <4 x i64> %295, %53
  %297 = add <4 x i64> %296, %22
  %298 = add <4 x i64> %297, %71
  %299 = add <4 x i64> %298, %42
  %300 = add <4 x i64> %299, %89
  %301 = add <4 x i64> %300, %60
  %302 = add <4 x i64> %301, %107
  %303 = add <4 x i64> %302, %78
  %304 = add <4 x i64> %303, %125
  %305 = add <4 x i64> %304, %96
  %306 = add <4 x i64> %305, %143
  %307 = add <4 x i64> %306, %114
  %308 = add <4 x i64> %307, %161
  %309 = add <4 x i64> %308, %132
  %310 = add <4 x i64> %309, %179
  %311 = add <4 x i64> %310, %150
  %312 = add <4 x i64> %311, %197
  %313 = add <4 x i64> %312, %168
  %314 = add <4 x i64> %313, %215
  %315 = add <4 x i64> %314, %186
  %316 = add <4 x i64> %315, %233
  %317 = add <4 x i64> %316, %204
  %318 = add <4 x i64> %317, %251
  %319 = add <4 x i64> %318, %222
  %320 = add <4 x i64> %319, %269
  %321 = add <4 x i64> %320, %240
  %322 = add <4 x i64> %321, %287
  %323 = add <4 x i64> %322, %258
  %324 = add <4 x i64> %323, %276
  %325 = add <4 x i64> %324, %294
  %326 = getelementptr inbounds nuw i8, ptr %14, i64 992
  %327 = load <4 x i64>, ptr %326, align 1
  %328 = xor <4 x i64> %327, <i64 3014149081973282086, i64 9027362082514189912, i64 8849628031031490769, i64 -7703965541554505073>
  %329 = bitcast <4 x i64> %328 to <8 x i32>
  %330 = shufflevector <8 x i32> %329, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %331 = bitcast <8 x i32> %330 to <4 x i64>
  %332 = and <4 x i64> %328, splat (i64 4294967295)
  %333 = and <4 x i64> %331, splat (i64 4294967295)
  %334 = mul nuw <4 x i64> %333, %332
  %335 = add <4 x i64> %33, %44
  %336 = add <4 x i64> %335, %62
  %337 = add <4 x i64> %336, %32
  %338 = add <4 x i64> %337, %80
  %339 = add <4 x i64> %338, %51
  %340 = add <4 x i64> %339, %98
  %341 = add <4 x i64> %340, %69
  %342 = add <4 x i64> %341, %116
  %343 = add <4 x i64> %342, %87
  %344 = add <4 x i64> %343, %134
  %345 = add <4 x i64> %344, %105
  %346 = add <4 x i64> %345, %152
  %347 = add <4 x i64> %346, %123
  %348 = add <4 x i64> %347, %170
  %349 = add <4 x i64> %348, %141
  %350 = add <4 x i64> %349, %188
  %351 = add <4 x i64> %350, %159
  %352 = add <4 x i64> %351, %206
  %353 = add <4 x i64> %352, %177
  %354 = add <4 x i64> %353, %224
  %355 = add <4 x i64> %354, %195
  %356 = add <4 x i64> %355, %242
  %357 = add <4 x i64> %356, %213
  %358 = add <4 x i64> %357, %260
  %359 = add <4 x i64> %358, %231
  %360 = add <4 x i64> %359, %278
  %361 = add <4 x i64> %360, %249
  %362 = add <4 x i64> %361, %327
  %363 = add <4 x i64> %362, %267
  %364 = add <4 x i64> %363, %285
  %365 = add <4 x i64> %364, %334
  %366 = lshr <4 x i64> %325, splat (i64 47)
  %367 = xor <4 x i64> %325, %366
  %368 = xor <4 x i64> %367, <i64 3806645336748174467, i64 -426887675387993857, i64 -5192410362903929519, i64 3014149081973282086>
  %369 = and <4 x i64> %368, splat (i64 4294967295)
  %370 = mul nuw <4 x i64> %369, splat (i64 2654435761)
  %371 = bitcast <4 x i64> %368 to <8 x i32>
  %372 = shufflevector <8 x i32> %371, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %373 = bitcast <8 x i32> %372 to <4 x i64>
  %374 = mul <4 x i64> %373, splat (i64 -7046029290881679360)
  %375 = add <4 x i64> %374, %370
  %376 = lshr <4 x i64> %365, splat (i64 47)
  %377 = xor <4 x i64> %365, %376
  %378 = xor <4 x i64> %377, <i64 9027362082514189912, i64 8849628031031490769, i64 -7703965541554505073, i64 -4950792452503503926>
  %379 = and <4 x i64> %378, splat (i64 4294967295)
  %380 = mul nuw <4 x i64> %379, splat (i64 2654435761)
  %381 = bitcast <4 x i64> %378 to <8 x i32>
  %382 = shufflevector <8 x i32> %381, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %383 = bitcast <8 x i32> %382 to <4 x i64>
  %384 = mul <4 x i64> %383, splat (i64 -7046029290881679360)
  %385 = add <4 x i64> %384, %380
  %386 = add nuw nsw i64 %12, 1
  %387 = icmp eq i64 %386, %7
  br i1 %387, label %388, label %9

388:                                              ; preds = %9, %3
  %389 = phi <4 x i64> [ %6, %3 ], [ %385, %9 ]
  %390 = phi <4 x i64> [ %4, %3 ], [ %375, %9 ]
  %391 = lshr i64 %1, 6
  %392 = and i64 %391, 15
  %393 = and i64 %1, -1024
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 %393
  %395 = icmp eq i64 %392, 0
  br i1 %395, label %430, label %396

396:                                              ; preds = %388, %396
  %397 = phi <4 x i64> [ %426, %396 ], [ %389, %388 ]
  %398 = phi <4 x i64> [ %413, %396 ], [ %390, %388 ]
  %399 = phi i64 [ %428, %396 ], [ 0, %388 ]
  %400 = phi ptr [ %427, %396 ], [ @kKey, %388 ]
  %401 = shl nuw nsw i64 %399, 6
  %402 = getelementptr inbounds nuw i8, ptr %394, i64 %401
  %403 = load <4 x i64>, ptr %402, align 1
  %404 = load <4 x i64>, ptr %400, align 1
  %405 = xor <4 x i64> %404, %403
  %406 = bitcast <4 x i64> %405 to <8 x i32>
  %407 = shufflevector <8 x i32> %406, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %408 = bitcast <8 x i32> %407 to <4 x i64>
  %409 = and <4 x i64> %405, splat (i64 4294967295)
  %410 = and <4 x i64> %408, splat (i64 4294967295)
  %411 = mul nuw <4 x i64> %410, %409
  %412 = add <4 x i64> %403, %398
  %413 = add <4 x i64> %412, %411
  %414 = getelementptr inbounds nuw i8, ptr %402, i64 32
  %415 = load <4 x i64>, ptr %414, align 1
  %416 = getelementptr inbounds nuw i8, ptr %400, i64 32
  %417 = load <4 x i64>, ptr %416, align 1
  %418 = xor <4 x i64> %417, %415
  %419 = bitcast <4 x i64> %418 to <8 x i32>
  %420 = shufflevector <8 x i32> %419, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %421 = bitcast <8 x i32> %420 to <4 x i64>
  %422 = and <4 x i64> %418, splat (i64 4294967295)
  %423 = and <4 x i64> %421, splat (i64 4294967295)
  %424 = mul nuw <4 x i64> %423, %422
  %425 = add <4 x i64> %415, %397
  %426 = add <4 x i64> %425, %424
  %427 = getelementptr inbounds nuw i8, ptr %400, i64 8
  %428 = add nuw nsw i64 %399, 1
  %429 = icmp eq i64 %428, %392
  br i1 %429, label %430, label %396

430:                                              ; preds = %396, %388
  %431 = phi <4 x i64> [ %389, %388 ], [ %426, %396 ]
  %432 = phi <4 x i64> [ %390, %388 ], [ %413, %396 ]
  %433 = and i64 %1, 63
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %464, label %435

435:                                              ; preds = %430
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %437 = getelementptr inbounds i8, ptr %436, i64 -64
  %438 = shl nuw nsw i64 %392, 3
  %439 = getelementptr inbounds nuw i8, ptr @kKey, i64 %438
  %440 = load <4 x i64>, ptr %437, align 1
  %441 = load <4 x i64>, ptr %439, align 8
  %442 = xor <4 x i64> %441, %440
  %443 = bitcast <4 x i64> %442 to <8 x i32>
  %444 = shufflevector <8 x i32> %443, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %445 = bitcast <8 x i32> %444 to <4 x i64>
  %446 = and <4 x i64> %442, splat (i64 4294967295)
  %447 = and <4 x i64> %445, splat (i64 4294967295)
  %448 = mul nuw <4 x i64> %447, %446
  %449 = add <4 x i64> %440, %432
  %450 = add <4 x i64> %449, %448
  %451 = getelementptr inbounds i8, ptr %436, i64 -32
  %452 = load <4 x i64>, ptr %451, align 1
  %453 = getelementptr inbounds nuw i8, ptr %439, i64 32
  %454 = load <4 x i64>, ptr %453, align 8
  %455 = xor <4 x i64> %454, %452
  %456 = bitcast <4 x i64> %455 to <8 x i32>
  %457 = shufflevector <8 x i32> %456, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %458 = bitcast <8 x i32> %457 to <4 x i64>
  %459 = and <4 x i64> %455, splat (i64 4294967295)
  %460 = and <4 x i64> %458, splat (i64 4294967295)
  %461 = mul nuw <4 x i64> %460, %459
  %462 = add <4 x i64> %452, %431
  %463 = add <4 x i64> %462, %461
  br label %464

464:                                              ; preds = %430, %435
  %465 = phi <4 x i64> [ %431, %430 ], [ %463, %435 ]
  %466 = phi <4 x i64> [ %432, %430 ], [ %450, %435 ]
  %467 = mul i64 %1, -7046029288634856825
  %468 = extractelement <4 x i64> %466, i64 0
  %469 = xor i64 %468, 2568260970027576377
  %470 = extractelement <4 x i64> %466, i64 1
  %471 = xor i64 %470, -639039334258736852
  %472 = zext i64 %469 to i128
  %473 = zext i64 %471 to i128
  %474 = mul nuw i128 %473, %472
  %475 = lshr i128 %474, 64
  %476 = xor i128 %475, %474
  %477 = trunc i128 %476 to i64
  %478 = extractelement <4 x i64> %466, i64 2
  %479 = xor i64 %478, -8966499887502561815
  %480 = extractelement <4 x i64> %466, i64 3
  %481 = xor i64 %480, -5209706959179045724
  %482 = zext i64 %479 to i128
  %483 = zext i64 %481 to i128
  %484 = mul nuw i128 %483, %482
  %485 = lshr i128 %484, 64
  %486 = xor i128 %485, %484
  %487 = trunc i128 %486 to i64
  %488 = extractelement <4 x i64> %465, i64 0
  %489 = xor i64 %488, -3692699387471206834
  %490 = extractelement <4 x i64> %465, i64 1
  %491 = xor i64 %490, -3675093282664558467
  %492 = zext i64 %489 to i128
  %493 = zext i64 %491 to i128
  %494 = mul nuw i128 %493, %492
  %495 = lshr i128 %494, 64
  %496 = xor i128 %495, %494
  %497 = trunc i128 %496 to i64
  %498 = extractelement <4 x i64> %465, i64 2
  %499 = xor i64 %498, -629619327510231436
  %500 = extractelement <4 x i64> %465, i64 3
  %501 = xor i64 %500, -9134946782546652954
  %502 = zext i64 %499 to i128
  %503 = zext i64 %501 to i128
  %504 = mul nuw i128 %503, %502
  %505 = lshr i128 %504, 64
  %506 = xor i128 %505, %504
  %507 = trunc i128 %506 to i64
  %508 = add i64 %467, %497
  %509 = add i64 %508, %507
  %510 = add i64 %509, %477
  %511 = add i64 %510, %487
  %512 = lshr i64 %511, 37
  %513 = xor i64 %512, %511
  %514 = mul i64 %513, 1609587929392839161
  %515 = lshr i64 %514, 32
  %516 = xor i64 %515, %514
  %517 = mul i64 %1, -4417276706812531889
  %518 = add i64 %517, -4417276706812531889
  %519 = xor i64 %468, -7943504444863786309
  %520 = xor i64 %470, 1968968742000944523
  %521 = zext i64 %519 to i128
  %522 = zext i64 %520 to i128
  %523 = mul nuw i128 %522, %521
  %524 = lshr i128 %523, 64
  %525 = xor i128 %524, %523
  %526 = trunc i128 %525 to i64
  %527 = xor i64 %478, -6769480549562824553
  %528 = xor i64 %480, -6206333191815827642
  %529 = zext i64 %527 to i128
  %530 = zext i64 %528 to i128
  %531 = mul nuw i128 %530, %529
  %532 = lshr i128 %531, 64
  %533 = xor i128 %532, %531
  %534 = trunc i128 %533 to i64
  %535 = xor i64 %488, -2045702682710477249
  %536 = xor i64 %490, -4104099645253436473
  %537 = zext i64 %535 to i128
  %538 = zext i64 %536 to i128
  %539 = mul nuw i128 %538, %537
  %540 = lshr i128 %539, 64
  %541 = xor i128 %540, %539
  %542 = trunc i128 %541 to i64
  %543 = xor i64 %498, -3624173730817515445
  %544 = xor i64 %500, -2776342293574091063
  %545 = zext i64 %543 to i128
  %546 = zext i64 %544 to i128
  %547 = mul nuw i128 %546, %545
  %548 = lshr i128 %547, 64
  %549 = xor i128 %548, %547
  %550 = trunc i128 %549 to i64
  %551 = add i64 %518, %542
  %552 = add i64 %551, %550
  %553 = add i64 %552, %526
  %554 = add i64 %553, %534
  %555 = lshr i64 %554, 37
  %556 = xor i64 %555, %554
  %557 = mul i64 %556, 1609587929392839161
  %558 = lshr i64 %557, 32
  %559 = xor i64 %558, %557
  %560 = insertvalue { i64, i64 } poison, i64 %516, 0
  %561 = insertvalue { i64, i64 } %560, i64 %559, 1
  ret { i64, i64 } %561
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 {
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
  br label %261

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
  br label %261

75:                                               ; preds = %43
  %76 = icmp eq i64 %1, 0
  br i1 %76, label %261, label %77

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
  br label %261

115:                                              ; preds = %2
  %116 = mul i64 %1, -7046029288634856825
  %117 = icmp ugt i64 %1, 32
  br i1 %117, label %118, label %213

118:                                              ; preds = %115
  %119 = icmp ugt i64 %1, 64
  br i1 %119, label %120, label %183

120:                                              ; preds = %118
  %121 = icmp ugt i64 %1, 96
  br i1 %121, label %122, label %153

122:                                              ; preds = %120
  %123 = icmp ugt i64 %1, 128
  br i1 %123, label %124, label %126

124:                                              ; preds = %122
  %125 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b(ptr noundef readonly %0, i64 noundef %1, i64 noundef 0)
  br label %261

126:                                              ; preds = %122
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %130 = load i64, ptr %129, align 1
  %131 = xor i64 %128, -2045702682710477249
  %132 = xor i64 %130, -4104099645253436473
  %133 = zext i64 %131 to i128
  %134 = zext i64 %132 to i128
  %135 = mul nuw i128 %134, %133
  %136 = lshr i128 %135, 64
  %137 = xor i128 %136, %135
  %138 = trunc i128 %137 to i64
  %139 = add i64 %116, %138
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %141 = getelementptr inbounds i8, ptr %140, i64 -64
  %142 = load i64, ptr %141, align 1
  %143 = getelementptr inbounds i8, ptr %140, i64 -56
  %144 = load i64, ptr %143, align 1
  %145 = xor i64 %142, -3624173730817515445
  %146 = xor i64 %144, -2776342293574091063
  %147 = zext i64 %145 to i128
  %148 = zext i64 %146 to i128
  %149 = mul nuw i128 %148, %147
  %150 = lshr i128 %149, 64
  %151 = xor i128 %150, %149
  %152 = trunc i128 %151 to i64
  br label %153

153:                                              ; preds = %126, %120
  %154 = phi i64 [ %152, %126 ], [ 0, %120 ]
  %155 = phi i64 [ %139, %126 ], [ %116, %120 ]
  %156 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %157 = load i64, ptr %156, align 1
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %159 = load i64, ptr %158, align 1
  %160 = xor i64 %157, -7943504444863786309
  %161 = xor i64 %159, 1968968742000944523
  %162 = zext i64 %160 to i128
  %163 = zext i64 %161 to i128
  %164 = mul nuw i128 %163, %162
  %165 = lshr i128 %164, 64
  %166 = xor i128 %165, %164
  %167 = trunc i128 %166 to i64
  %168 = add i64 %155, %167
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %170 = getelementptr inbounds i8, ptr %169, i64 -48
  %171 = load i64, ptr %170, align 1
  %172 = getelementptr inbounds i8, ptr %169, i64 -40
  %173 = load i64, ptr %172, align 1
  %174 = xor i64 %171, -6769480549562824553
  %175 = xor i64 %173, -6206333191815827642
  %176 = zext i64 %174 to i128
  %177 = zext i64 %175 to i128
  %178 = mul nuw i128 %177, %176
  %179 = lshr i128 %178, 64
  %180 = xor i128 %179, %178
  %181 = trunc i128 %180 to i64
  %182 = add i64 %154, %181
  br label %183

183:                                              ; preds = %153, %118
  %184 = phi i64 [ %182, %153 ], [ 0, %118 ]
  %185 = phi i64 [ %168, %153 ], [ %116, %118 ]
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %187 = load i64, ptr %186, align 1
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %189 = load i64, ptr %188, align 1
  %190 = xor i64 %187, -3692699387471206834
  %191 = xor i64 %189, -3675093282664558467
  %192 = zext i64 %190 to i128
  %193 = zext i64 %191 to i128
  %194 = mul nuw i128 %193, %192
  %195 = lshr i128 %194, 64
  %196 = xor i128 %195, %194
  %197 = trunc i128 %196 to i64
  %198 = add i64 %185, %197
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %200 = getelementptr inbounds i8, ptr %199, i64 -32
  %201 = load i64, ptr %200, align 1
  %202 = getelementptr inbounds i8, ptr %199, i64 -24
  %203 = load i64, ptr %202, align 1
  %204 = xor i64 %201, -629619327510231436
  %205 = xor i64 %203, -9134946782546652954
  %206 = zext i64 %204 to i128
  %207 = zext i64 %205 to i128
  %208 = mul nuw i128 %207, %206
  %209 = lshr i128 %208, 64
  %210 = xor i128 %209, %208
  %211 = trunc i128 %210 to i64
  %212 = add i64 %184, %211
  br label %213

213:                                              ; preds = %183, %115
  %214 = phi i64 [ %212, %183 ], [ 0, %115 ]
  %215 = phi i64 [ %198, %183 ], [ %116, %115 ]
  %216 = load i64, ptr %0, align 1
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %218 = load i64, ptr %217, align 1
  %219 = xor i64 %216, 2568260970027576377
  %220 = xor i64 %218, -639039334258736852
  %221 = zext i64 %219 to i128
  %222 = zext i64 %220 to i128
  %223 = mul nuw i128 %222, %221
  %224 = lshr i128 %223, 64
  %225 = xor i128 %224, %223
  %226 = trunc i128 %225 to i64
  %227 = add i64 %215, %226
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %229 = getelementptr inbounds i8, ptr %228, i64 -16
  %230 = load i64, ptr %229, align 1
  %231 = getelementptr inbounds i8, ptr %228, i64 -8
  %232 = load i64, ptr %231, align 1
  %233 = xor i64 %230, -8966499887502561815
  %234 = xor i64 %232, -5209706959179045724
  %235 = zext i64 %233 to i128
  %236 = zext i64 %234 to i128
  %237 = mul nuw i128 %236, %235
  %238 = lshr i128 %237, 64
  %239 = xor i128 %238, %237
  %240 = trunc i128 %239 to i64
  %241 = add i64 %214, %240
  %242 = add i64 %241, %227
  %243 = mul i64 %227, 1609587929392839161
  %244 = mul i64 %241, -8796714831421723037
  %245 = mul i64 %1, -4417276706812531889
  %246 = add i64 %243, %245
  %247 = add i64 %246, %244
  %248 = lshr i64 %242, 37
  %249 = xor i64 %248, %242
  %250 = mul i64 %249, 1609587929392839161
  %251 = lshr i64 %250, 32
  %252 = xor i64 %251, %250
  %253 = lshr i64 %247, 37
  %254 = xor i64 %253, %247
  %255 = mul i64 %254, 1609587929392839161
  %256 = lshr i64 %255, 32
  %257 = xor i64 %256, %255
  %258 = sub i64 0, %257
  %259 = insertvalue { i64, i64 } poison, i64 %252, 0
  %260 = insertvalue { i64, i64 } %259, i64 %258, 1
  br label %261

261:                                              ; preds = %75, %6, %45, %77, %124, %213
  %262 = phi { i64, i64 } [ %125, %124 ], [ %260, %213 ], [ %42, %6 ], [ %74, %45 ], [ %114, %77 ], [ zeroinitializer, %75 ]
  ret { i64, i64 } %262
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
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
  br label %294

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
  br label %294

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
  br label %294

126:                                              ; preds = %83
  %127 = sub i64 0, %2
  %128 = insertvalue { i64, i64 } poison, i64 %2, 0
  %129 = insertvalue { i64, i64 } %128, i64 %127, 1
  br label %294

130:                                              ; preds = %3
  %131 = add i64 %2, %1
  %132 = mul i64 %131, -7046029288634856825
  %133 = icmp ugt i64 %1, 32
  br i1 %133, label %134, label %241

134:                                              ; preds = %130
  %135 = icmp ugt i64 %1, 64
  br i1 %135, label %136, label %207

136:                                              ; preds = %134
  %137 = icmp ugt i64 %1, 96
  br i1 %137, label %138, label %173

138:                                              ; preds = %136
  %139 = icmp ugt i64 %1, 128
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2)
  br label %294

142:                                              ; preds = %138
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %144 = load i64, ptr %143, align 1
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %146 = load i64, ptr %145, align 1
  %147 = add i64 %2, -2045702682710477249
  %148 = xor i64 %144, %147
  %149 = sub i64 -4104099645253436473, %2
  %150 = xor i64 %146, %149
  %151 = zext i64 %148 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %132, %156
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -64
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds i8, ptr %158, i64 -56
  %162 = load i64, ptr %161, align 1
  %163 = add i64 %2, -3624173730817515445
  %164 = xor i64 %160, %163
  %165 = sub i64 -2776342293574091063, %2
  %166 = xor i64 %162, %165
  %167 = zext i64 %164 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  br label %173

173:                                              ; preds = %142, %136
  %174 = phi i64 [ %172, %142 ], [ 0, %136 ]
  %175 = phi i64 [ %157, %142 ], [ %132, %136 ]
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %177 = load i64, ptr %176, align 1
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %179 = load i64, ptr %178, align 1
  %180 = add i64 %2, -7943504444863786309
  %181 = xor i64 %177, %180
  %182 = sub i64 1968968742000944523, %2
  %183 = xor i64 %179, %182
  %184 = zext i64 %181 to i128
  %185 = zext i64 %183 to i128
  %186 = mul nuw i128 %185, %184
  %187 = lshr i128 %186, 64
  %188 = xor i128 %187, %186
  %189 = trunc i128 %188 to i64
  %190 = add i64 %175, %189
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %192 = getelementptr inbounds i8, ptr %191, i64 -48
  %193 = load i64, ptr %192, align 1
  %194 = getelementptr inbounds i8, ptr %191, i64 -40
  %195 = load i64, ptr %194, align 1
  %196 = add i64 %2, -6769480549562824553
  %197 = xor i64 %193, %196
  %198 = sub i64 -6206333191815827642, %2
  %199 = xor i64 %195, %198
  %200 = zext i64 %197 to i128
  %201 = zext i64 %199 to i128
  %202 = mul nuw i128 %201, %200
  %203 = lshr i128 %202, 64
  %204 = xor i128 %203, %202
  %205 = trunc i128 %204 to i64
  %206 = add i64 %174, %205
  br label %207

207:                                              ; preds = %173, %134
  %208 = phi i64 [ %206, %173 ], [ 0, %134 ]
  %209 = phi i64 [ %190, %173 ], [ %132, %134 ]
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %211 = load i64, ptr %210, align 1
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %213 = load i64, ptr %212, align 1
  %214 = add i64 %2, -3692699387471206834
  %215 = xor i64 %211, %214
  %216 = sub i64 -3675093282664558467, %2
  %217 = xor i64 %213, %216
  %218 = zext i64 %215 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %209, %223
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %226 = getelementptr inbounds i8, ptr %225, i64 -32
  %227 = load i64, ptr %226, align 1
  %228 = getelementptr inbounds i8, ptr %225, i64 -24
  %229 = load i64, ptr %228, align 1
  %230 = add i64 %2, -629619327510231436
  %231 = xor i64 %227, %230
  %232 = sub i64 -9134946782546652954, %2
  %233 = xor i64 %229, %232
  %234 = zext i64 %231 to i128
  %235 = zext i64 %233 to i128
  %236 = mul nuw i128 %235, %234
  %237 = lshr i128 %236, 64
  %238 = xor i128 %237, %236
  %239 = trunc i128 %238 to i64
  %240 = add i64 %208, %239
  br label %241

241:                                              ; preds = %207, %130
  %242 = phi i64 [ %240, %207 ], [ 0, %130 ]
  %243 = phi i64 [ %224, %207 ], [ %132, %130 ]
  %244 = load i64, ptr %0, align 1
  %245 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %246 = load i64, ptr %245, align 1
  %247 = add i64 %2, 2568260970027576377
  %248 = xor i64 %244, %247
  %249 = sub i64 -639039334258736852, %2
  %250 = xor i64 %246, %249
  %251 = zext i64 %248 to i128
  %252 = zext i64 %250 to i128
  %253 = mul nuw i128 %252, %251
  %254 = lshr i128 %253, 64
  %255 = xor i128 %254, %253
  %256 = trunc i128 %255 to i64
  %257 = add i64 %243, %256
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %259 = getelementptr inbounds i8, ptr %258, i64 -16
  %260 = load i64, ptr %259, align 1
  %261 = getelementptr inbounds i8, ptr %258, i64 -8
  %262 = load i64, ptr %261, align 1
  %263 = add i64 %2, -8966499887502561815
  %264 = xor i64 %260, %263
  %265 = sub i64 -5209706959179045724, %2
  %266 = xor i64 %262, %265
  %267 = zext i64 %264 to i128
  %268 = zext i64 %266 to i128
  %269 = mul nuw i128 %268, %267
  %270 = lshr i128 %269, 64
  %271 = xor i128 %270, %269
  %272 = trunc i128 %271 to i64
  %273 = add i64 %242, %272
  %274 = add i64 %273, %257
  %275 = mul i64 %257, 1609587929392839161
  %276 = mul i64 %273, -8796714831421723037
  %277 = sub i64 %1, %2
  %278 = mul i64 %277, -4417276706812531889
  %279 = add i64 %275, %278
  %280 = add i64 %279, %276
  %281 = lshr i64 %274, 37
  %282 = xor i64 %281, %274
  %283 = mul i64 %282, 1609587929392839161
  %284 = lshr i64 %283, 32
  %285 = xor i64 %284, %283
  %286 = lshr i64 %280, 37
  %287 = xor i64 %286, %280
  %288 = mul i64 %287, 1609587929392839161
  %289 = lshr i64 %288, 32
  %290 = xor i64 %289, %288
  %291 = sub i64 0, %290
  %292 = insertvalue { i64, i64 } poison, i64 %285, 0
  %293 = insertvalue { i64, i64 } %292, i64 %291, 1
  br label %294

294:                                              ; preds = %7, %48, %85, %126, %140, %241
  %295 = phi { i64, i64 } [ %141, %140 ], [ %293, %241 ], [ %45, %7 ], [ %82, %48 ], [ %125, %85 ], [ %129, %126 ]
  ret { i64, i64 } %295
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_oneshot(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = add i64 %1, 2870177450012600281
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i64, ptr %8, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
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
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind memory(none) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 301571}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7, !13}
!13 = !{!"llvm.loop.unroll.enable"}
