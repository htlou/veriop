; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/028c0fd/api_xxh32_len33/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/028c0fd/api_xxh32_len33/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH128_hash_t = type { i64, i64 }

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 702
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
  %22 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %21) #24
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %14
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %28) #24
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %15
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %35) #24
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %38 = load i32, ptr %37, align 1
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %16
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %42) #24
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
  %70 = phi ptr [ %58, %56 ], [ %66, %62 ]
  %71 = phi i32 [ %60, %56 ], [ %68, %62 ]
  %72 = load i32, ptr %70, align 1
  %73 = mul i32 %72, -1028477379
  %74 = add i32 %73, %71
  %75 = getelementptr inbounds nuw i8, ptr %70, i64 4
  %76 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 17)
  %77 = mul i32 %76, 668265263
  br label %78

78:                                               ; preds = %69, %56
  %79 = phi ptr [ %58, %56 ], [ %75, %69 ]
  %80 = phi i32 [ %60, %56 ], [ %77, %69 ]
  %81 = load i32, ptr %79, align 1
  %82 = mul i32 %81, -1028477379
  %83 = add i32 %82, %80
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
  %94 = phi ptr [ %58, %56 ], [ %90, %86 ]
  %95 = phi i32 [ %60, %56 ], [ %92, %86 ]
  %96 = load i32, ptr %94, align 1
  %97 = mul i32 %96, -1028477379
  %98 = add i32 %97, %95
  %99 = getelementptr inbounds nuw i8, ptr %94, i64 4
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 17)
  %101 = mul i32 %100, 668265263
  br label %102

102:                                              ; preds = %93, %56
  %103 = phi ptr [ %58, %56 ], [ %99, %93 ]
  %104 = phi i32 [ %60, %56 ], [ %101, %93 ]
  %105 = load i32, ptr %103, align 1
  %106 = mul i32 %105, -1028477379
  %107 = add i32 %106, %104
  %108 = getelementptr inbounds nuw i8, ptr %103, i64 4
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
  %125 = phi ptr [ %58, %56 ], [ %121, %117 ]
  %126 = phi i32 [ %60, %56 ], [ %123, %117 ]
  %127 = load i32, ptr %125, align 1
  %128 = mul i32 %127, -1028477379
  %129 = add i32 %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %125, i64 4
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 17)
  %132 = mul i32 %131, 668265263
  br label %133

133:                                              ; preds = %124, %56
  %134 = phi ptr [ %58, %56 ], [ %130, %124 ]
  %135 = phi i32 [ %60, %56 ], [ %132, %124 ]
  %136 = load i32, ptr %134, align 1
  %137 = mul i32 %136, -1028477379
  %138 = add i32 %137, %135
  %139 = getelementptr inbounds nuw i8, ptr %134, i64 4
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17)
  %141 = mul i32 %140, 668265263
  %142 = getelementptr inbounds nuw i8, ptr %134, i64 5
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
  %163 = phi ptr [ %58, %56 ], [ %159, %155 ]
  %164 = phi i32 [ %60, %56 ], [ %161, %155 ]
  %165 = load i32, ptr %163, align 1
  %166 = mul i32 %165, -1028477379
  %167 = add i32 %166, %164
  %168 = getelementptr inbounds nuw i8, ptr %163, i64 4
  %169 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 17)
  %170 = mul i32 %169, 668265263
  br label %171

171:                                              ; preds = %162, %56
  %172 = phi ptr [ %58, %56 ], [ %168, %162 ]
  %173 = phi i32 [ %60, %56 ], [ %170, %162 ]
  %174 = load i32, ptr %172, align 1
  %175 = mul i32 %174, -1028477379
  %176 = add i32 %175, %173
  %177 = getelementptr inbounds nuw i8, ptr %172, i64 4
  %178 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 17)
  %179 = mul i32 %178, 668265263
  br label %180

180:                                              ; preds = %171, %56
  %181 = phi ptr [ %58, %56 ], [ %177, %171 ]
  %182 = phi i32 [ %60, %56 ], [ %179, %171 ]
  %183 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %184 = load i8, ptr %181, align 1
  %185 = zext i8 %184 to i32
  %186 = mul i32 %185, 374761393
  %187 = add i32 %186, %182
  %188 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 11)
  %189 = mul i32 %188, -1640531535
  br label %190

190:                                              ; preds = %180, %56
  %191 = phi ptr [ %58, %56 ], [ %183, %180 ]
  %192 = phi i32 [ %60, %56 ], [ %189, %180 ]
  %193 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %194 = load i8, ptr %191, align 1
  %195 = zext i8 %194 to i32
  %196 = mul i32 %195, 374761393
  %197 = add i32 %196, %192
  %198 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 11)
  %199 = mul i32 %198, -1640531535
  br label %200

200:                                              ; preds = %190, %56
  %201 = phi ptr [ %58, %56 ], [ %193, %190 ]
  %202 = phi i32 [ %60, %56 ], [ %199, %190 ]
  %203 = load i8, ptr %201, align 1
  %204 = zext i8 %203 to i32
  %205 = mul i32 %204, 374761393
  %206 = add i32 %205, %202
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
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #25
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #26
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #7

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 {
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
  %41 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %40) #24
  store i32 %41, ptr %34, align 4
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 1
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %49) #24
  store i32 %50, ptr %43, align 4
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %51, align 1
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %53
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %58) #24
  store i32 %59, ptr %52, align 4
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %60, align 1
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %67) #24
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
  %97 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %96) #24
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %99 = load i32, ptr %98, align 1
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %89
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %103) #24
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %106 = load i32, ptr %105, align 1
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %90
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %110) #24
  %112 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %113 = load i32, ptr %112, align 1
  %114 = mul i32 %113, -2048144777
  %115 = add i32 %114, %91
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = mul i32 %116, -1640531535
  %118 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %117) #24
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
define dso_local i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #10 {
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
  %41 = phi ptr [ %29, %25 ], [ %37, %33 ]
  %42 = phi i32 [ %28, %25 ], [ %39, %33 ]
  %43 = load i32, ptr %41, align 1
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 4
  %47 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %48 = mul i32 %47, 668265263
  br label %49

49:                                               ; preds = %40, %25
  %50 = phi ptr [ %29, %25 ], [ %46, %40 ]
  %51 = phi i32 [ %28, %25 ], [ %48, %40 ]
  %52 = load i32, ptr %50, align 1
  %53 = mul i32 %52, -1028477379
  %54 = add i32 %53, %51
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
  %65 = phi ptr [ %29, %25 ], [ %61, %57 ]
  %66 = phi i32 [ %28, %25 ], [ %63, %57 ]
  %67 = load i32, ptr %65, align 1
  %68 = mul i32 %67, -1028477379
  %69 = add i32 %68, %66
  %70 = getelementptr inbounds nuw i8, ptr %65, i64 4
  %71 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 17)
  %72 = mul i32 %71, 668265263
  br label %73

73:                                               ; preds = %64, %25
  %74 = phi ptr [ %29, %25 ], [ %70, %64 ]
  %75 = phi i32 [ %28, %25 ], [ %72, %64 ]
  %76 = load i32, ptr %74, align 1
  %77 = mul i32 %76, -1028477379
  %78 = add i32 %77, %75
  %79 = getelementptr inbounds nuw i8, ptr %74, i64 4
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
  %96 = phi ptr [ %29, %25 ], [ %92, %88 ]
  %97 = phi i32 [ %28, %25 ], [ %94, %88 ]
  %98 = load i32, ptr %96, align 1
  %99 = mul i32 %98, -1028477379
  %100 = add i32 %99, %97
  %101 = getelementptr inbounds nuw i8, ptr %96, i64 4
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 17)
  %103 = mul i32 %102, 668265263
  br label %104

104:                                              ; preds = %95, %25
  %105 = phi ptr [ %29, %25 ], [ %101, %95 ]
  %106 = phi i32 [ %28, %25 ], [ %103, %95 ]
  %107 = load i32, ptr %105, align 1
  %108 = mul i32 %107, -1028477379
  %109 = add i32 %108, %106
  %110 = getelementptr inbounds nuw i8, ptr %105, i64 4
  %111 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 17)
  %112 = mul i32 %111, 668265263
  %113 = getelementptr inbounds nuw i8, ptr %105, i64 5
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
  %134 = phi ptr [ %29, %25 ], [ %130, %126 ]
  %135 = phi i32 [ %28, %25 ], [ %132, %126 ]
  %136 = load i32, ptr %134, align 1
  %137 = mul i32 %136, -1028477379
  %138 = add i32 %137, %135
  %139 = getelementptr inbounds nuw i8, ptr %134, i64 4
  %140 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 17)
  %141 = mul i32 %140, 668265263
  br label %142

142:                                              ; preds = %133, %25
  %143 = phi ptr [ %29, %25 ], [ %139, %133 ]
  %144 = phi i32 [ %28, %25 ], [ %141, %133 ]
  %145 = load i32, ptr %143, align 1
  %146 = mul i32 %145, -1028477379
  %147 = add i32 %146, %144
  %148 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 17)
  %150 = mul i32 %149, 668265263
  br label %151

151:                                              ; preds = %142, %25
  %152 = phi ptr [ %29, %25 ], [ %148, %142 ]
  %153 = phi i32 [ %28, %25 ], [ %150, %142 ]
  %154 = getelementptr inbounds nuw i8, ptr %152, i64 1
  %155 = load i8, ptr %152, align 1
  %156 = zext i8 %155 to i32
  %157 = mul i32 %156, 374761393
  %158 = add i32 %157, %153
  %159 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 11)
  %160 = mul i32 %159, -1640531535
  br label %161

161:                                              ; preds = %151, %25
  %162 = phi ptr [ %29, %25 ], [ %154, %151 ]
  %163 = phi i32 [ %28, %25 ], [ %160, %151 ]
  %164 = getelementptr inbounds nuw i8, ptr %162, i64 1
  %165 = load i8, ptr %162, align 1
  %166 = zext i8 %165 to i32
  %167 = mul i32 %166, 374761393
  %168 = add i32 %167, %163
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 11)
  %170 = mul i32 %169, -1640531535
  br label %171

171:                                              ; preds = %161, %25
  %172 = phi ptr [ %29, %25 ], [ %164, %161 ]
  %173 = phi i32 [ %28, %25 ], [ %170, %161 ]
  %174 = load i8, ptr %172, align 1
  %175 = zext i8 %174 to i32
  %176 = mul i32 %175, 374761393
  %177 = add i32 %176, %173
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 {
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
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #25
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #26
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
define dso_local range(i32 0, 2) i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
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
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #10 {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

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
define dso_local i64 @XXH3_64bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %77

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, -4734510112055689544
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, 2066345149520216444
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
  br label %211

27:                                               ; preds = %4
  %28 = icmp samesign ugt i64 %1, 3
  br i1 %28, label %29, label %51

29:                                               ; preds = %27
  %30 = load i32, ptr %0, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %32 = getelementptr inbounds i8, ptr %31, i64 -4
  %33 = load i32, ptr %32, align 1
  %34 = zext i32 %30 to i64
  %35 = zext i32 %33 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or disjoint i64 %36, %34
  %38 = xor i64 %37, -4734510112055689544
  %39 = lshr i64 %38, 51
  %40 = xor i64 %39, %38
  %41 = mul i64 %40, 2654435761
  %42 = add i64 %41, %1
  %43 = lshr i64 %42, 47
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, -4417276706812531889
  %46 = lshr i64 %45, 37
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, 1609587929392839161
  %49 = lshr i64 %48, 32
  %50 = xor i64 %49, %48
  br label %211

51:                                               ; preds = %27
  %52 = icmp eq i64 %1, 0
  br i1 %52, label %211, label %53

53:                                               ; preds = %51
  %54 = load i8, ptr %0, align 1
  %55 = lshr i64 %1, 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr i8, ptr %0, i64 %1
  %59 = getelementptr i8, ptr %58, i64 -1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %54 to i64
  %62 = zext i8 %57 to i64
  %63 = shl nuw nsw i64 %62, 8
  %64 = or disjoint i64 %63, %61
  %65 = zext i8 %60 to i64
  %66 = shl nuw nsw i64 %65, 16
  %67 = or disjoint i64 %64, %66
  %68 = shl nuw nsw i64 %1, 24
  %69 = or disjoint i64 %67, %68
  %70 = xor i64 %69, 963444408
  %71 = mul i64 %70, -7046029288634856825
  %72 = lshr i64 %71, 37
  %73 = xor i64 %72, %71
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  br label %211

77:                                               ; preds = %2
  %78 = icmp ult i64 %1, 129
  br i1 %78, label %79, label %205

79:                                               ; preds = %77
  %80 = mul i64 %1, -7046029288634856825
  %81 = icmp samesign ugt i64 %1, 32
  br i1 %81, label %82, label %172

82:                                               ; preds = %79
  %83 = icmp samesign ugt i64 %1, 64
  br i1 %83, label %84, label %143

84:                                               ; preds = %82
  %85 = icmp samesign ugt i64 %1, 96
  br i1 %85, label %86, label %114

86:                                               ; preds = %84
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %88, 4554437623014685352
  %92 = xor i64 %90, 2111919702937427193
  %93 = zext i64 %91 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %101 = getelementptr inbounds i8, ptr %100, i64 -64
  %102 = load i64, ptr %101, align 1
  %103 = getelementptr inbounds i8, ptr %100, i64 -56
  %104 = load i64, ptr %103, align 1
  %105 = xor i64 %102, 3556072174620004746
  %106 = xor i64 %104, 7238261902898274248
  %107 = zext i64 %105 to i128
  %108 = zext i64 %106 to i128
  %109 = mul nuw i128 %108, %107
  %110 = lshr i128 %109, 64
  %111 = xor i128 %110, %109
  %112 = trunc i128 %111 to i64
  %113 = add i64 %99, %112
  br label %114

114:                                              ; preds = %86, %84
  %115 = phi i64 [ %113, %86 ], [ %80, %84 ]
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %117 = load i64, ptr %116, align 1
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %119 = load i64, ptr %118, align 1
  %120 = xor i64 %117, -3818837453329782724
  %121 = xor i64 %119, -6688317018830679928
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
  %134 = xor i64 %131, 5690594596133299313
  %135 = xor i64 %133, -2833645246901970632
  %136 = zext i64 %134 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %128, %141
  br label %143

143:                                              ; preds = %114, %82
  %144 = phi i64 [ %142, %114 ], [ %80, %82 ]
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %146 = load i64, ptr %145, align 1
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %148 = load i64, ptr %147, align 1
  %149 = xor i64 %146, 8711581037947681227
  %150 = xor i64 %148, 2410270004345854594
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
  %163 = xor i64 %160, -8204357891075471176
  %164 = xor i64 %162, 5487137525590930912
  %165 = zext i64 %163 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %157, %170
  br label %172

172:                                              ; preds = %79, %143
  %173 = phi i64 [ %171, %143 ], [ %80, %79 ]
  %174 = load i64, ptr %0, align 1
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %176 = load i64, ptr %175, align 1
  %177 = xor i64 %174, -4734510112055689544
  %178 = xor i64 %176, 2066345149520216444
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
  %191 = xor i64 %188, -2623469361688619810
  %192 = xor i64 %190, 2262974939099578482
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
  br label %211

205:                                              ; preds = %77
  %206 = icmp ult i64 %1, 241
  br i1 %206, label %207, label %209

207:                                              ; preds = %205
  %208 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %211

209:                                              ; preds = %205
  %210 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %211

211:                                              ; preds = %53, %51, %29, %6, %209, %207, %172
  %212 = phi i64 [ %204, %172 ], [ %208, %207 ], [ %210, %209 ], [ %26, %6 ], [ %50, %29 ], [ %76, %53 ], [ 0, %51 ]
  ret i64 %212
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #15 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %26 = load i64, ptr %24, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = load i64, ptr %25, align 1
  %30 = add i64 %29, %3
  %31 = xor i64 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = sub i64 %33, %3
  %35 = xor i64 %34, %28
  %36 = zext i64 %31 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = add i64 %23, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %45 = load i64, ptr %43, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 1
  %48 = load i64, ptr %44, align 1
  %49 = add i64 %48, %3
  %50 = xor i64 %49, %45
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = sub i64 %52, %3
  %54 = xor i64 %53, %47
  %55 = zext i64 %50 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %42, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %64 = load i64, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %66 = load i64, ptr %65, align 1
  %67 = load i64, ptr %63, align 1
  %68 = add i64 %67, %3
  %69 = xor i64 %68, %64
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %71 = load i64, ptr %70, align 1
  %72 = sub i64 %71, %3
  %73 = xor i64 %72, %66
  %74 = zext i64 %69 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %61, %79
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %83 = load i64, ptr %81, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %85 = load i64, ptr %84, align 1
  %86 = load i64, ptr %82, align 1
  %87 = add i64 %86, %3
  %88 = xor i64 %87, %83
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %90 = load i64, ptr %89, align 1
  %91 = sub i64 %90, %3
  %92 = xor i64 %91, %85
  %93 = zext i64 %88 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %102 = load i64, ptr %100, align 1
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %104 = load i64, ptr %103, align 1
  %105 = load i64, ptr %101, align 1
  %106 = add i64 %105, %3
  %107 = xor i64 %106, %102
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = sub i64 %109, %3
  %111 = xor i64 %110, %104
  %112 = zext i64 %107 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %99, %117
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = add i64 %124, %3
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %128 = load i64, ptr %127, align 1
  %129 = sub i64 %128, %3
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %118, %136
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %140 = load i64, ptr %138, align 1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %142 = load i64, ptr %141, align 1
  %143 = load i64, ptr %139, align 1
  %144 = add i64 %143, %3
  %145 = xor i64 %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %147 = load i64, ptr %146, align 1
  %148 = sub i64 %147, %3
  %149 = xor i64 %148, %142
  %150 = zext i64 %145 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %137, %155
  %157 = lshr i32 %6, 4
  %158 = lshr i64 %156, 37
  %159 = xor i64 %158, %156
  %160 = mul i64 %159, 1609587929392839161
  %161 = lshr i64 %160, 32
  %162 = xor i64 %161, %160
  %163 = icmp eq i32 %157, 8
  br i1 %163, label %310, label %164

164:                                              ; preds = %4
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %166 = getelementptr i8, ptr %2, i64 3
  %167 = load i64, ptr %165, align 1
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %169 = load i64, ptr %168, align 1
  %170 = load i64, ptr %166, align 1
  %171 = add i64 %170, %3
  %172 = xor i64 %171, %167
  %173 = getelementptr i8, ptr %2, i64 11
  %174 = load i64, ptr %173, align 1
  %175 = sub i64 %174, %3
  %176 = xor i64 %175, %169
  %177 = zext i64 %172 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %162, %182
  %184 = icmp eq i32 %157, 9
  br i1 %184, label %310, label %185

185:                                              ; preds = %164
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %187 = getelementptr i8, ptr %2, i64 19
  %188 = load i64, ptr %186, align 1
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %190 = load i64, ptr %189, align 1
  %191 = load i64, ptr %187, align 1
  %192 = add i64 %191, %3
  %193 = xor i64 %192, %188
  %194 = getelementptr i8, ptr %2, i64 27
  %195 = load i64, ptr %194, align 1
  %196 = sub i64 %195, %3
  %197 = xor i64 %196, %190
  %198 = zext i64 %193 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %183, %203
  %205 = icmp eq i32 %157, 10
  br i1 %205, label %310, label %206

206:                                              ; preds = %185
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %208 = getelementptr i8, ptr %2, i64 35
  %209 = load i64, ptr %207, align 1
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %211 = load i64, ptr %210, align 1
  %212 = load i64, ptr %208, align 1
  %213 = add i64 %212, %3
  %214 = xor i64 %213, %209
  %215 = getelementptr i8, ptr %2, i64 43
  %216 = load i64, ptr %215, align 1
  %217 = sub i64 %216, %3
  %218 = xor i64 %217, %211
  %219 = zext i64 %214 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %204, %224
  %226 = icmp eq i32 %157, 11
  br i1 %226, label %310, label %227

227:                                              ; preds = %206
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %229 = getelementptr i8, ptr %2, i64 51
  %230 = load i64, ptr %228, align 1
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = add i64 %233, %3
  %235 = xor i64 %234, %230
  %236 = getelementptr i8, ptr %2, i64 59
  %237 = load i64, ptr %236, align 1
  %238 = sub i64 %237, %3
  %239 = xor i64 %238, %232
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %225, %245
  %247 = icmp eq i32 %157, 12
  br i1 %247, label %310, label %248

248:                                              ; preds = %227
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %250 = getelementptr i8, ptr %2, i64 67
  %251 = load i64, ptr %249, align 1
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %253 = load i64, ptr %252, align 1
  %254 = load i64, ptr %250, align 1
  %255 = add i64 %254, %3
  %256 = xor i64 %255, %251
  %257 = getelementptr i8, ptr %2, i64 75
  %258 = load i64, ptr %257, align 1
  %259 = sub i64 %258, %3
  %260 = xor i64 %259, %253
  %261 = zext i64 %256 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %246, %266
  %268 = icmp eq i32 %157, 13
  br i1 %268, label %310, label %269

269:                                              ; preds = %248
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %271 = getelementptr i8, ptr %2, i64 83
  %272 = load i64, ptr %270, align 1
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %274 = load i64, ptr %273, align 1
  %275 = load i64, ptr %271, align 1
  %276 = add i64 %275, %3
  %277 = xor i64 %276, %272
  %278 = getelementptr i8, ptr %2, i64 91
  %279 = load i64, ptr %278, align 1
  %280 = sub i64 %279, %3
  %281 = xor i64 %280, %274
  %282 = zext i64 %277 to i128
  %283 = zext i64 %281 to i128
  %284 = mul nuw i128 %283, %282
  %285 = lshr i128 %284, 64
  %286 = xor i128 %285, %284
  %287 = trunc i128 %286 to i64
  %288 = add i64 %267, %287
  %289 = icmp eq i32 %157, 14
  br i1 %289, label %310, label %290

290:                                              ; preds = %269
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %292 = getelementptr i8, ptr %2, i64 99
  %293 = load i64, ptr %291, align 1
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %295 = load i64, ptr %294, align 1
  %296 = load i64, ptr %292, align 1
  %297 = add i64 %296, %3
  %298 = xor i64 %297, %293
  %299 = getelementptr i8, ptr %2, i64 107
  %300 = load i64, ptr %299, align 1
  %301 = sub i64 %300, %3
  %302 = xor i64 %301, %295
  %303 = zext i64 %298 to i128
  %304 = zext i64 %302 to i128
  %305 = mul nuw i128 %304, %303
  %306 = lshr i128 %305, 64
  %307 = xor i128 %306, %305
  %308 = trunc i128 %307 to i64
  %309 = add i64 %288, %308
  br label %310

310:                                              ; preds = %164, %185, %206, %227, %248, %269, %290, %4
  %311 = phi i64 [ %162, %4 ], [ %183, %164 ], [ %204, %185 ], [ %225, %206 ], [ %246, %227 ], [ %267, %248 ], [ %288, %269 ], [ %309, %290 ]
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %313 = getelementptr inbounds i8, ptr %312, i64 -16
  %314 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %315 = load i64, ptr %313, align 1
  %316 = getelementptr inbounds i8, ptr %312, i64 -8
  %317 = load i64, ptr %316, align 1
  %318 = load i64, ptr %314, align 1
  %319 = add i64 %318, %3
  %320 = xor i64 %319, %315
  %321 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %322 = load i64, ptr %321, align 1
  %323 = sub i64 %322, %3
  %324 = xor i64 %323, %317
  %325 = zext i64 %320 to i128
  %326 = zext i64 %324 to i128
  %327 = mul nuw i128 %326, %325
  %328 = lshr i128 %327, 64
  %329 = xor i128 %328, %327
  %330 = trunc i128 %329 to i64
  %331 = add i64 %311, %330
  %332 = lshr i64 %331, 37
  %333 = xor i64 %332, %331
  %334 = mul i64 %333, 1609587929392839161
  %335 = lshr i64 %334, 32
  %336 = xor i64 %335, %334
  ret i64 %336
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1) unnamed_addr #16 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %68, label %5

5:                                                ; preds = %2, %45
  %6 = phi <4 x i64> [ %65, %45 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %7 = phi <4 x i64> [ %55, %45 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %8 = phi i64 [ %66, %45 ], [ 0, %2 ]
  %9 = shl i64 %8, 10
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  br label %11

11:                                               ; preds = %5, %11
  %12 = phi <4 x i64> [ %6, %5 ], [ %42, %11 ]
  %13 = phi <4 x i64> [ %7, %5 ], [ %29, %11 ]
  %14 = phi i64 [ 0, %5 ], [ %43, %11 ]
  %15 = shl nuw nsw i64 %14, 6
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 %15
  %17 = shl nuw nsw i64 %14, 3
  %18 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %17
  %19 = load <4 x i64>, ptr %16, align 1
  %20 = load <4 x i64>, ptr %18, align 8
  %21 = xor <4 x i64> %20, %19
  %22 = bitcast <4 x i64> %21 to <8 x i32>
  %23 = shufflevector <8 x i32> %22, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %24 = bitcast <8 x i32> %23 to <4 x i64>
  %25 = and <4 x i64> %21, splat (i64 4294967295)
  %26 = and <4 x i64> %24, splat (i64 4294967295)
  %27 = mul nuw <4 x i64> %26, %25
  %28 = add <4 x i64> %13, %19
  %29 = add <4 x i64> %28, %27
  %30 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %31 = load <4 x i64>, ptr %30, align 1
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %33 = load <4 x i64>, ptr %32, align 8
  %34 = xor <4 x i64> %33, %31
  %35 = bitcast <4 x i64> %34 to <8 x i32>
  %36 = shufflevector <8 x i32> %35, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %37 = bitcast <8 x i32> %36 to <4 x i64>
  %38 = and <4 x i64> %34, splat (i64 4294967295)
  %39 = and <4 x i64> %37, splat (i64 4294967295)
  %40 = mul nuw <4 x i64> %39, %38
  %41 = add <4 x i64> %12, %31
  %42 = add <4 x i64> %41, %40
  %43 = add nuw nsw i64 %14, 1
  %44 = icmp eq i64 %43, 16
  br i1 %44, label %45, label %11

45:                                               ; preds = %11
  %46 = lshr <4 x i64> %29, splat (i64 47)
  %47 = xor <4 x i64> %46, %29
  %48 = xor <4 x i64> %47, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %49 = bitcast <4 x i64> %48 to <8 x i32>
  %50 = shufflevector <8 x i32> %49, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %51 = bitcast <8 x i32> %50 to <4 x i64>
  %52 = and <4 x i64> %48, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %52, splat (i64 2654435761)
  %54 = mul <4 x i64> %51, splat (i64 -7046029290881679360)
  %55 = add <4 x i64> %54, %53
  %56 = lshr <4 x i64> %42, splat (i64 47)
  %57 = xor <4 x i64> %56, %42
  %58 = xor <4 x i64> %57, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %59 = bitcast <4 x i64> %58 to <8 x i32>
  %60 = shufflevector <8 x i32> %59, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %61 = bitcast <8 x i32> %60 to <4 x i64>
  %62 = and <4 x i64> %58, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, splat (i64 2654435761)
  %64 = mul <4 x i64> %61, splat (i64 -7046029290881679360)
  %65 = add <4 x i64> %64, %63
  %66 = add nuw nsw i64 %8, 1
  %67 = icmp eq i64 %66, %3
  br i1 %67, label %68, label %5

68:                                               ; preds = %45, %2
  %69 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %65, %45 ]
  %70 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %55, %45 ]
  %71 = and i64 %1, -1024
  %72 = lshr i64 %1, 6
  %73 = and i64 %72, 15
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %71
  %75 = icmp eq i64 %73, 0
  br i1 %75, label %110, label %76

76:                                               ; preds = %68, %76
  %77 = phi <4 x i64> [ %107, %76 ], [ %69, %68 ]
  %78 = phi <4 x i64> [ %94, %76 ], [ %70, %68 ]
  %79 = phi i64 [ %108, %76 ], [ 0, %68 ]
  %80 = shl i64 %79, 6
  %81 = getelementptr inbounds nuw i8, ptr %74, i64 %80
  %82 = shl i64 %79, 3
  %83 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %82
  %84 = load <4 x i64>, ptr %81, align 1
  %85 = load <4 x i64>, ptr %83, align 8
  %86 = xor <4 x i64> %85, %84
  %87 = bitcast <4 x i64> %86 to <8 x i32>
  %88 = shufflevector <8 x i32> %87, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %89 = bitcast <8 x i32> %88 to <4 x i64>
  %90 = and <4 x i64> %86, splat (i64 4294967295)
  %91 = and <4 x i64> %89, splat (i64 4294967295)
  %92 = mul nuw <4 x i64> %91, %90
  %93 = add <4 x i64> %78, %84
  %94 = add <4 x i64> %93, %92
  %95 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %96 = load <4 x i64>, ptr %95, align 1
  %97 = getelementptr inbounds nuw i8, ptr %83, i64 32
  %98 = load <4 x i64>, ptr %97, align 8
  %99 = xor <4 x i64> %98, %96
  %100 = bitcast <4 x i64> %99 to <8 x i32>
  %101 = shufflevector <8 x i32> %100, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %102 = bitcast <8 x i32> %101 to <4 x i64>
  %103 = and <4 x i64> %99, splat (i64 4294967295)
  %104 = and <4 x i64> %102, splat (i64 4294967295)
  %105 = mul nuw <4 x i64> %104, %103
  %106 = add <4 x i64> %77, %96
  %107 = add <4 x i64> %106, %105
  %108 = add nuw nsw i64 %79, 1
  %109 = icmp eq i64 %108, %73
  br i1 %109, label %110, label %76

110:                                              ; preds = %76, %68
  %111 = phi <4 x i64> [ %69, %68 ], [ %107, %76 ]
  %112 = phi <4 x i64> [ %70, %68 ], [ %94, %76 ]
  %113 = and i64 %1, 63
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %117 = getelementptr inbounds i8, ptr %116, i64 -64
  %118 = load <4 x i64>, ptr %117, align 1
  %119 = xor <4 x i64> %118, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %120 = bitcast <4 x i64> %119 to <8 x i32>
  %121 = shufflevector <8 x i32> %120, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %122 = bitcast <8 x i32> %121 to <4 x i64>
  %123 = and <4 x i64> %119, splat (i64 4294967295)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = add <4 x i64> %112, %118
  %127 = add <4 x i64> %126, %125
  %128 = getelementptr inbounds i8, ptr %116, i64 -32
  %129 = load <4 x i64>, ptr %128, align 1
  %130 = xor <4 x i64> %129, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %131 = bitcast <4 x i64> %130 to <8 x i32>
  %132 = shufflevector <8 x i32> %131, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %133 = bitcast <8 x i32> %132 to <4 x i64>
  %134 = and <4 x i64> %130, splat (i64 4294967295)
  %135 = and <4 x i64> %133, splat (i64 4294967295)
  %136 = mul nuw <4 x i64> %135, %134
  %137 = add <4 x i64> %111, %129
  %138 = add <4 x i64> %137, %136
  br label %139

139:                                              ; preds = %115, %110
  %140 = phi <4 x i64> [ %111, %110 ], [ %138, %115 ]
  %141 = phi <4 x i64> [ %112, %110 ], [ %127, %115 ]
  %142 = mul i64 %1, -7046029288634856825
  %143 = extractelement <4 x i64> %141, i64 0
  %144 = xor i64 %143, 7914194659941938988
  %145 = extractelement <4 x i64> %141, i64 1
  %146 = xor i64 %145, -6611157965513653271
  %147 = zext i64 %144 to i128
  %148 = zext i64 %146 to i128
  %149 = mul nuw i128 %148, %147
  %150 = lshr i128 %149, 64
  %151 = xor i128 %150, %149
  %152 = trunc i128 %151 to i64
  %153 = add i64 %142, %152
  %154 = extractelement <4 x i64> %141, i64 2
  %155 = xor i64 %154, -1839215637059881052
  %156 = extractelement <4 x i64> %141, i64 3
  %157 = xor i64 %156, -3433288310154277810
  %158 = zext i64 %155 to i128
  %159 = zext i64 %157 to i128
  %160 = mul nuw i128 %159, %158
  %161 = lshr i128 %160, 64
  %162 = xor i128 %161, %160
  %163 = trunc i128 %162 to i64
  %164 = add i64 %153, %163
  %165 = extractelement <4 x i64> %140, i64 0
  %166 = xor i64 %165, 5046485836271438973
  %167 = extractelement <4 x i64> %140, i64 1
  %168 = xor i64 %167, -8055285457383852172
  %169 = zext i64 %166 to i128
  %170 = zext i64 %168 to i128
  %171 = mul nuw i128 %170, %169
  %172 = lshr i128 %171, 64
  %173 = xor i128 %172, %171
  %174 = trunc i128 %173 to i64
  %175 = add i64 %164, %174
  %176 = extractelement <4 x i64> %140, i64 2
  %177 = xor i64 %176, 5920048007935066598
  %178 = extractelement <4 x i64> %140, i64 3
  %179 = xor i64 %178, 7336514198459093435
  %180 = zext i64 %177 to i128
  %181 = zext i64 %179 to i128
  %182 = mul nuw i128 %181, %180
  %183 = lshr i128 %182, 64
  %184 = xor i128 %183, %182
  %185 = trunc i128 %184 to i64
  %186 = add i64 %175, %185
  %187 = lshr i64 %186, 37
  %188 = xor i64 %187, %186
  %189 = mul i64 %188, 1609587929392839161
  %190 = lshr i64 %189, 32
  %191 = xor i64 %190, %189
  ret i64 %191
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits_withSecret(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #14 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %85

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %32

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 1
  %10 = load i64, ptr %2, align 1
  %11 = xor i64 %10, %9
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %14
  %18 = zext i64 %11 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %19, %18
  %21 = lshr i128 %20, 64
  %22 = xor i128 %21, %20
  %23 = trunc i128 %22 to i64
  %24 = add i64 %11, %1
  %25 = add i64 %24, %17
  %26 = add i64 %25, %23
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587929392839161
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  br label %250

32:                                               ; preds = %6
  %33 = icmp samesign ugt i64 %1, 3
  br i1 %33, label %34, label %57

34:                                               ; preds = %32
  %35 = load i32, ptr %0, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %37 = getelementptr inbounds i8, ptr %36, i64 -4
  %38 = load i32, ptr %37, align 1
  %39 = zext i32 %35 to i64
  %40 = zext i32 %38 to i64
  %41 = shl nuw i64 %40, 32
  %42 = or disjoint i64 %41, %39
  %43 = load i64, ptr %2, align 1
  %44 = xor i64 %42, %43
  %45 = lshr i64 %44, 51
  %46 = xor i64 %45, %44
  %47 = mul i64 %46, 2654435761
  %48 = add i64 %47, %1
  %49 = lshr i64 %48, 47
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, -4417276706812531889
  %52 = lshr i64 %51, 37
  %53 = xor i64 %52, %51
  %54 = mul i64 %53, 1609587929392839161
  %55 = lshr i64 %54, 32
  %56 = xor i64 %55, %54
  br label %250

57:                                               ; preds = %32
  %58 = icmp eq i64 %1, 0
  br i1 %58, label %250, label %59

59:                                               ; preds = %57
  %60 = load i8, ptr %0, align 1
  %61 = lshr i64 %1, 1
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %61
  %63 = load i8, ptr %62, align 1
  %64 = getelementptr i8, ptr %0, i64 %1
  %65 = getelementptr i8, ptr %64, i64 -1
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %60 to i64
  %68 = zext i8 %63 to i64
  %69 = shl nuw nsw i64 %68, 8
  %70 = or disjoint i64 %69, %67
  %71 = zext i8 %66 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = or disjoint i64 %70, %72
  %74 = shl nuw nsw i64 %1, 24
  %75 = or disjoint i64 %73, %74
  %76 = load i32, ptr %2, align 1
  %77 = zext i32 %76 to i64
  %78 = xor i64 %75, %77
  %79 = mul i64 %78, -7046029288634856825
  %80 = lshr i64 %79, 37
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, 1609587929392839161
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  br label %250

85:                                               ; preds = %4
  %86 = icmp ult i64 %1, 129
  br i1 %86, label %87, label %244

87:                                               ; preds = %85
  %88 = mul i64 %1, -7046029288634856825
  %89 = icmp samesign ugt i64 %1, 32
  br i1 %89, label %90, label %204

90:                                               ; preds = %87
  %91 = icmp samesign ugt i64 %1, 64
  br i1 %91, label %92, label %167

92:                                               ; preds = %90
  %93 = icmp samesign ugt i64 %1, 96
  br i1 %93, label %94, label %130

94:                                               ; preds = %92
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %97 = load i64, ptr %95, align 1
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %99 = load i64, ptr %98, align 1
  %100 = load i64, ptr %96, align 1
  %101 = xor i64 %100, %97
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %103 = load i64, ptr %102, align 1
  %104 = xor i64 %103, %99
  %105 = zext i64 %101 to i128
  %106 = zext i64 %104 to i128
  %107 = mul nuw i128 %106, %105
  %108 = lshr i128 %107, 64
  %109 = xor i128 %108, %107
  %110 = trunc i128 %109 to i64
  %111 = add i64 %88, %110
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %113 = getelementptr inbounds i8, ptr %112, i64 -64
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %115 = load i64, ptr %113, align 1
  %116 = getelementptr inbounds i8, ptr %112, i64 -56
  %117 = load i64, ptr %116, align 1
  %118 = load i64, ptr %114, align 1
  %119 = xor i64 %118, %115
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %117
  %123 = zext i64 %119 to i128
  %124 = zext i64 %122 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %111, %128
  br label %130

130:                                              ; preds = %94, %92
  %131 = phi i64 [ %129, %94 ], [ %88, %92 ]
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %134 = load i64, ptr %132, align 1
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %136 = load i64, ptr %135, align 1
  %137 = load i64, ptr %133, align 1
  %138 = xor i64 %137, %134
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %140 = load i64, ptr %139, align 1
  %141 = xor i64 %140, %136
  %142 = zext i64 %138 to i128
  %143 = zext i64 %141 to i128
  %144 = mul nuw i128 %143, %142
  %145 = lshr i128 %144, 64
  %146 = xor i128 %145, %144
  %147 = trunc i128 %146 to i64
  %148 = add i64 %131, %147
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %150 = getelementptr inbounds i8, ptr %149, i64 -48
  %151 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %152 = load i64, ptr %150, align 1
  %153 = getelementptr inbounds i8, ptr %149, i64 -40
  %154 = load i64, ptr %153, align 1
  %155 = load i64, ptr %151, align 1
  %156 = xor i64 %155, %152
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %158 = load i64, ptr %157, align 1
  %159 = xor i64 %158, %154
  %160 = zext i64 %156 to i128
  %161 = zext i64 %159 to i128
  %162 = mul nuw i128 %161, %160
  %163 = lshr i128 %162, 64
  %164 = xor i128 %163, %162
  %165 = trunc i128 %164 to i64
  %166 = add i64 %148, %165
  br label %167

167:                                              ; preds = %130, %90
  %168 = phi i64 [ %166, %130 ], [ %88, %90 ]
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %170 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %171 = load i64, ptr %169, align 1
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %173 = load i64, ptr %172, align 1
  %174 = load i64, ptr %170, align 1
  %175 = xor i64 %174, %171
  %176 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %177 = load i64, ptr %176, align 1
  %178 = xor i64 %177, %173
  %179 = zext i64 %175 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %168, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %187 = getelementptr inbounds i8, ptr %186, i64 -32
  %188 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %189 = load i64, ptr %187, align 1
  %190 = getelementptr inbounds i8, ptr %186, i64 -24
  %191 = load i64, ptr %190, align 1
  %192 = load i64, ptr %188, align 1
  %193 = xor i64 %192, %189
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %195 = load i64, ptr %194, align 1
  %196 = xor i64 %195, %191
  %197 = zext i64 %193 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %185, %202
  br label %204

204:                                              ; preds = %87, %167
  %205 = phi i64 [ %203, %167 ], [ %88, %87 ]
  %206 = load i64, ptr %0, align 1
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %208 = load i64, ptr %207, align 1
  %209 = load i64, ptr %2, align 1
  %210 = xor i64 %209, %206
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %212 = load i64, ptr %211, align 1
  %213 = xor i64 %212, %208
  %214 = zext i64 %210 to i128
  %215 = zext i64 %213 to i128
  %216 = mul nuw i128 %215, %214
  %217 = lshr i128 %216, 64
  %218 = xor i128 %217, %216
  %219 = trunc i128 %218 to i64
  %220 = add i64 %205, %219
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %222 = getelementptr inbounds i8, ptr %221, i64 -16
  %223 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %224 = load i64, ptr %222, align 1
  %225 = getelementptr inbounds i8, ptr %221, i64 -8
  %226 = load i64, ptr %225, align 1
  %227 = load i64, ptr %223, align 1
  %228 = xor i64 %227, %224
  %229 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %230 = load i64, ptr %229, align 1
  %231 = xor i64 %230, %226
  %232 = zext i64 %228 to i128
  %233 = zext i64 %231 to i128
  %234 = mul nuw i128 %233, %232
  %235 = lshr i128 %234, 64
  %236 = xor i128 %235, %234
  %237 = trunc i128 %236 to i64
  %238 = add i64 %220, %237
  %239 = lshr i64 %238, 37
  %240 = xor i64 %239, %238
  %241 = mul i64 %240, 1609587929392839161
  %242 = lshr i64 %241, 32
  %243 = xor i64 %242, %241
  br label %250

244:                                              ; preds = %85
  %245 = icmp ult i64 %1, 241
  br i1 %245, label %246, label %248

246:                                              ; preds = %244
  %247 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %250

248:                                              ; preds = %244
  %249 = tail call fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %250

250:                                              ; preds = %59, %57, %34, %8, %248, %246, %204
  %251 = phi i64 [ %243, %204 ], [ %247, %246 ], [ %249, %248 ], [ %31, %8 ], [ %56, %34 ], [ %84, %59 ], [ 0, %57 ]
  ret i64 %251
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #16 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = udiv i64 %1, %7
  %9 = urem i64 %1, %7
  %10 = icmp ugt i64 %7, %1
  br i1 %10, label %84, label %11

11:                                               ; preds = %4
  %12 = icmp ult i64 %5, 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %14 = getelementptr inbounds i8, ptr %13, i64 -64
  %15 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %16 = load <4 x i64>, ptr %14, align 1
  %17 = getelementptr inbounds i8, ptr %13, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1
  br label %19

19:                                               ; preds = %11, %59
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %11 ], [ %81, %59 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %11 ], [ %71, %59 ]
  %22 = phi i64 [ 0, %11 ], [ %82, %59 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  br i1 %12, label %59, label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %56, %25 ], [ %20, %19 ]
  %27 = phi <4 x i64> [ %43, %25 ], [ %21, %19 ]
  %28 = phi i64 [ %57, %25 ], [ 0, %19 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = shl i64 %28, 3
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = load <4 x i64>, ptr %30, align 1
  %34 = load <4 x i64>, ptr %32, align 1
  %35 = xor <4 x i64> %34, %33
  %36 = bitcast <4 x i64> %35 to <8 x i32>
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %38 = bitcast <8 x i32> %37 to <4 x i64>
  %39 = and <4 x i64> %35, splat (i64 4294967295)
  %40 = and <4 x i64> %38, splat (i64 4294967295)
  %41 = mul nuw <4 x i64> %40, %39
  %42 = add <4 x i64> %27, %33
  %43 = add <4 x i64> %42, %41
  %44 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %45 = load <4 x i64>, ptr %44, align 1
  %46 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %47 = load <4 x i64>, ptr %46, align 1
  %48 = xor <4 x i64> %47, %45
  %49 = bitcast <4 x i64> %48 to <8 x i32>
  %50 = shufflevector <8 x i32> %49, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %51 = bitcast <8 x i32> %50 to <4 x i64>
  %52 = and <4 x i64> %48, splat (i64 4294967295)
  %53 = and <4 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, %52
  %55 = add <4 x i64> %26, %45
  %56 = add <4 x i64> %55, %54
  %57 = add nuw nsw i64 %28, 1
  %58 = icmp eq i64 %57, %15
  br i1 %58, label %59, label %25

59:                                               ; preds = %25, %19
  %60 = phi <4 x i64> [ %20, %19 ], [ %56, %25 ]
  %61 = phi <4 x i64> [ %21, %19 ], [ %43, %25 ]
  %62 = lshr <4 x i64> %61, splat (i64 47)
  %63 = xor <4 x i64> %16, %62
  %64 = xor <4 x i64> %63, %61
  %65 = bitcast <4 x i64> %64 to <8 x i32>
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = and <4 x i64> %64, splat (i64 4294967295)
  %69 = mul nuw <4 x i64> %68, splat (i64 2654435761)
  %70 = mul <4 x i64> %67, splat (i64 -7046029290881679360)
  %71 = add <4 x i64> %70, %69
  %72 = lshr <4 x i64> %60, splat (i64 47)
  %73 = xor <4 x i64> %18, %72
  %74 = xor <4 x i64> %73, %60
  %75 = bitcast <4 x i64> %74 to <8 x i32>
  %76 = shufflevector <8 x i32> %75, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %77 = bitcast <8 x i32> %76 to <4 x i64>
  %78 = and <4 x i64> %74, splat (i64 4294967295)
  %79 = mul nuw <4 x i64> %78, splat (i64 2654435761)
  %80 = mul <4 x i64> %77, splat (i64 -7046029290881679360)
  %81 = add <4 x i64> %80, %79
  %82 = add nuw i64 %22, 1
  %83 = icmp ult i64 %82, %8
  br i1 %83, label %19, label %84

84:                                               ; preds = %59, %4
  %85 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %81, %59 ]
  %86 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %71, %59 ]
  %87 = mul i64 %8, %7
  %88 = lshr i64 %9, 6
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 %87
  %90 = icmp ult i64 %9, 64
  br i1 %90, label %125, label %91

91:                                               ; preds = %84, %91
  %92 = phi <4 x i64> [ %122, %91 ], [ %85, %84 ]
  %93 = phi <4 x i64> [ %109, %91 ], [ %86, %84 ]
  %94 = phi i64 [ %123, %91 ], [ 0, %84 ]
  %95 = shl i64 %94, 6
  %96 = getelementptr inbounds nuw i8, ptr %89, i64 %95
  %97 = shl i64 %94, 3
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 %97
  %99 = load <4 x i64>, ptr %96, align 1
  %100 = load <4 x i64>, ptr %98, align 1
  %101 = xor <4 x i64> %100, %99
  %102 = bitcast <4 x i64> %101 to <8 x i32>
  %103 = shufflevector <8 x i32> %102, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %104 = bitcast <8 x i32> %103 to <4 x i64>
  %105 = and <4 x i64> %101, splat (i64 4294967295)
  %106 = and <4 x i64> %104, splat (i64 4294967295)
  %107 = mul nuw <4 x i64> %106, %105
  %108 = add <4 x i64> %93, %99
  %109 = add <4 x i64> %108, %107
  %110 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %111 = load <4 x i64>, ptr %110, align 1
  %112 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %113 = load <4 x i64>, ptr %112, align 1
  %114 = xor <4 x i64> %113, %111
  %115 = bitcast <4 x i64> %114 to <8 x i32>
  %116 = shufflevector <8 x i32> %115, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %117 = bitcast <8 x i32> %116 to <4 x i64>
  %118 = and <4 x i64> %114, splat (i64 4294967295)
  %119 = and <4 x i64> %117, splat (i64 4294967295)
  %120 = mul nuw <4 x i64> %119, %118
  %121 = add <4 x i64> %92, %111
  %122 = add <4 x i64> %121, %120
  %123 = add nuw nsw i64 %94, 1
  %124 = icmp samesign ult i64 %123, %88
  br i1 %124, label %91, label %125

125:                                              ; preds = %91, %84
  %126 = phi <4 x i64> [ %85, %84 ], [ %122, %91 ]
  %127 = phi <4 x i64> [ %86, %84 ], [ %109, %91 ]
  %128 = and i64 %1, 63
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %159, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %132 = getelementptr inbounds i8, ptr %131, i64 -64
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %134 = getelementptr inbounds i8, ptr %133, i64 -71
  %135 = load <4 x i64>, ptr %132, align 1
  %136 = load <4 x i64>, ptr %134, align 1
  %137 = xor <4 x i64> %136, %135
  %138 = bitcast <4 x i64> %137 to <8 x i32>
  %139 = shufflevector <8 x i32> %138, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %140 = bitcast <8 x i32> %139 to <4 x i64>
  %141 = and <4 x i64> %137, splat (i64 4294967295)
  %142 = and <4 x i64> %140, splat (i64 4294967295)
  %143 = mul nuw <4 x i64> %142, %141
  %144 = add <4 x i64> %127, %135
  %145 = add <4 x i64> %144, %143
  %146 = getelementptr inbounds i8, ptr %131, i64 -32
  %147 = load <4 x i64>, ptr %146, align 1
  %148 = getelementptr inbounds i8, ptr %133, i64 -39
  %149 = load <4 x i64>, ptr %148, align 1
  %150 = xor <4 x i64> %149, %147
  %151 = bitcast <4 x i64> %150 to <8 x i32>
  %152 = shufflevector <8 x i32> %151, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %153 = bitcast <8 x i32> %152 to <4 x i64>
  %154 = and <4 x i64> %150, splat (i64 4294967295)
  %155 = and <4 x i64> %153, splat (i64 4294967295)
  %156 = mul nuw <4 x i64> %155, %154
  %157 = add <4 x i64> %126, %147
  %158 = add <4 x i64> %157, %156
  br label %159

159:                                              ; preds = %130, %125
  %160 = phi <4 x i64> [ %126, %125 ], [ %158, %130 ]
  %161 = phi <4 x i64> [ %127, %125 ], [ %145, %130 ]
  %162 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %163 = mul i64 %1, -7046029288634856825
  %164 = extractelement <4 x i64> %161, i64 0
  %165 = load i64, ptr %162, align 1
  %166 = xor i64 %165, %164
  %167 = extractelement <4 x i64> %161, i64 1
  %168 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %169 = load i64, ptr %168, align 1
  %170 = xor i64 %169, %167
  %171 = zext i64 %166 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = add i64 %163, %176
  %178 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %179 = extractelement <4 x i64> %161, i64 2
  %180 = load i64, ptr %178, align 1
  %181 = xor i64 %180, %179
  %182 = extractelement <4 x i64> %161, i64 3
  %183 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %184 = load i64, ptr %183, align 1
  %185 = xor i64 %184, %182
  %186 = zext i64 %181 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %177, %191
  %193 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %194 = extractelement <4 x i64> %160, i64 0
  %195 = load i64, ptr %193, align 1
  %196 = xor i64 %195, %194
  %197 = extractelement <4 x i64> %160, i64 1
  %198 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %199 = load i64, ptr %198, align 1
  %200 = xor i64 %199, %197
  %201 = zext i64 %196 to i128
  %202 = zext i64 %200 to i128
  %203 = mul nuw i128 %202, %201
  %204 = lshr i128 %203, 64
  %205 = xor i128 %204, %203
  %206 = trunc i128 %205 to i64
  %207 = add i64 %192, %206
  %208 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %209 = extractelement <4 x i64> %160, i64 2
  %210 = load i64, ptr %208, align 1
  %211 = xor i64 %210, %209
  %212 = extractelement <4 x i64> %160, i64 3
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = zext i64 %211 to i128
  %217 = zext i64 %215 to i128
  %218 = mul nuw i128 %217, %216
  %219 = lshr i128 %218, 64
  %220 = xor i128 %219, %218
  %221 = trunc i128 %220 to i64
  %222 = add i64 %207, %221
  %223 = lshr i64 %222, 37
  %224 = xor i64 %223, %222
  %225 = mul i64 %224, 1609587929392839161
  %226 = lshr i64 %225, 32
  %227 = xor i64 %226, %225
  ret i64 %227
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %82

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %30

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %2, -4734510112055689544
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 2066345149520216444, %2
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
  br label %232

30:                                               ; preds = %5
  %31 = icmp samesign ugt i64 %1, 3
  br i1 %31, label %32, label %55

32:                                               ; preds = %30
  %33 = load i32, ptr %0, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %35 = getelementptr inbounds i8, ptr %34, i64 -4
  %36 = load i32, ptr %35, align 1
  %37 = zext i32 %33 to i64
  %38 = zext i32 %36 to i64
  %39 = shl nuw i64 %38, 32
  %40 = or disjoint i64 %39, %37
  %41 = add i64 %2, -4734510112055689544
  %42 = xor i64 %40, %41
  %43 = lshr i64 %42, 51
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 2654435761
  %46 = add i64 %45, %1
  %47 = lshr i64 %46, 47
  %48 = xor i64 %47, %46
  %49 = mul i64 %48, -4417276706812531889
  %50 = lshr i64 %49, 37
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, 1609587929392839161
  %53 = lshr i64 %52, 32
  %54 = xor i64 %53, %52
  br label %232

55:                                               ; preds = %30
  %56 = icmp eq i64 %1, 0
  br i1 %56, label %232, label %57

57:                                               ; preds = %55
  %58 = load i8, ptr %0, align 1
  %59 = lshr i64 %1, 1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr i8, ptr %0, i64 %1
  %63 = getelementptr i8, ptr %62, i64 -1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %58 to i64
  %66 = zext i8 %61 to i64
  %67 = shl nuw nsw i64 %66, 8
  %68 = or disjoint i64 %67, %65
  %69 = zext i8 %64 to i64
  %70 = shl nuw nsw i64 %69, 16
  %71 = or disjoint i64 %68, %70
  %72 = shl nuw nsw i64 %1, 24
  %73 = or disjoint i64 %71, %72
  %74 = add i64 %2, 963444408
  %75 = xor i64 %73, %74
  %76 = mul i64 %75, -7046029288634856825
  %77 = lshr i64 %76, 37
  %78 = xor i64 %77, %76
  %79 = mul i64 %78, 1609587929392839161
  %80 = lshr i64 %79, 32
  %81 = xor i64 %80, %79
  br label %232

82:                                               ; preds = %3
  %83 = icmp ult i64 %1, 129
  br i1 %83, label %84, label %226

84:                                               ; preds = %82
  %85 = mul i64 %1, -7046029288634856825
  %86 = icmp samesign ugt i64 %1, 32
  br i1 %86, label %87, label %189

87:                                               ; preds = %84
  %88 = icmp samesign ugt i64 %1, 64
  br i1 %88, label %89, label %156

89:                                               ; preds = %87
  %90 = icmp samesign ugt i64 %1, 96
  br i1 %90, label %91, label %123

91:                                               ; preds = %89
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %95 = load i64, ptr %94, align 1
  %96 = add i64 %2, 4554437623014685352
  %97 = xor i64 %93, %96
  %98 = sub i64 2111919702937427193, %2
  %99 = xor i64 %95, %98
  %100 = zext i64 %97 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %85, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %108 = getelementptr inbounds i8, ptr %107, i64 -64
  %109 = load i64, ptr %108, align 1
  %110 = getelementptr inbounds i8, ptr %107, i64 -56
  %111 = load i64, ptr %110, align 1
  %112 = add i64 %2, 3556072174620004746
  %113 = xor i64 %109, %112
  %114 = sub i64 7238261902898274248, %2
  %115 = xor i64 %111, %114
  %116 = zext i64 %113 to i128
  %117 = zext i64 %115 to i128
  %118 = mul nuw i128 %117, %116
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %106, %121
  br label %123

123:                                              ; preds = %91, %89
  %124 = phi i64 [ %122, %91 ], [ %85, %89 ]
  %125 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %126 = load i64, ptr %125, align 1
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %128 = load i64, ptr %127, align 1
  %129 = add i64 %2, -3818837453329782724
  %130 = xor i64 %126, %129
  %131 = sub i64 -6688317018830679928, %2
  %132 = xor i64 %128, %131
  %133 = zext i64 %130 to i128
  %134 = zext i64 %132 to i128
  %135 = mul nuw i128 %134, %133
  %136 = lshr i128 %135, 64
  %137 = xor i128 %136, %135
  %138 = trunc i128 %137 to i64
  %139 = add i64 %124, %138
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %141 = getelementptr inbounds i8, ptr %140, i64 -48
  %142 = load i64, ptr %141, align 1
  %143 = getelementptr inbounds i8, ptr %140, i64 -40
  %144 = load i64, ptr %143, align 1
  %145 = add i64 %2, 5690594596133299313
  %146 = xor i64 %142, %145
  %147 = sub i64 -2833645246901970632, %2
  %148 = xor i64 %144, %147
  %149 = zext i64 %146 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = add i64 %139, %154
  br label %156

156:                                              ; preds = %123, %87
  %157 = phi i64 [ %155, %123 ], [ %85, %87 ]
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %159 = load i64, ptr %158, align 1
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %161 = load i64, ptr %160, align 1
  %162 = add i64 %2, 8711581037947681227
  %163 = xor i64 %159, %162
  %164 = sub i64 2410270004345854594, %2
  %165 = xor i64 %161, %164
  %166 = zext i64 %163 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %157, %171
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %174 = getelementptr inbounds i8, ptr %173, i64 -32
  %175 = load i64, ptr %174, align 1
  %176 = getelementptr inbounds i8, ptr %173, i64 -24
  %177 = load i64, ptr %176, align 1
  %178 = add i64 %2, -8204357891075471176
  %179 = xor i64 %175, %178
  %180 = sub i64 5487137525590930912, %2
  %181 = xor i64 %177, %180
  %182 = zext i64 %179 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %172, %187
  br label %189

189:                                              ; preds = %84, %156
  %190 = phi i64 [ %188, %156 ], [ %85, %84 ]
  %191 = load i64, ptr %0, align 1
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %193 = load i64, ptr %192, align 1
  %194 = add i64 %2, -4734510112055689544
  %195 = xor i64 %191, %194
  %196 = sub i64 2066345149520216444, %2
  %197 = xor i64 %193, %196
  %198 = zext i64 %195 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %190, %203
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %206 = getelementptr inbounds i8, ptr %205, i64 -16
  %207 = load i64, ptr %206, align 1
  %208 = getelementptr inbounds i8, ptr %205, i64 -8
  %209 = load i64, ptr %208, align 1
  %210 = add i64 %2, -2623469361688619810
  %211 = xor i64 %207, %210
  %212 = sub i64 2262974939099578482, %2
  %213 = xor i64 %209, %212
  %214 = zext i64 %211 to i128
  %215 = zext i64 %213 to i128
  %216 = mul nuw i128 %215, %214
  %217 = lshr i128 %216, 64
  %218 = xor i128 %217, %216
  %219 = trunc i128 %218 to i64
  %220 = add i64 %204, %219
  %221 = lshr i64 %220, 37
  %222 = xor i64 %221, %220
  %223 = mul i64 %222, 1609587929392839161
  %224 = lshr i64 %223, 32
  %225 = xor i64 %224, %223
  br label %232

226:                                              ; preds = %82
  %227 = icmp ult i64 %1, 241
  br i1 %227, label %228, label %230

228:                                              ; preds = %226
  %229 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %232

230:                                              ; preds = %226
  %231 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %232

232:                                              ; preds = %57, %55, %32, %7, %230, %228, %189
  %233 = phi i64 [ %225, %189 ], [ %229, %228 ], [ %231, %230 ], [ %29, %7 ], [ %54, %32 ], [ %81, %57 ], [ 0, %55 ]
  ret i64 %233
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, i64 noundef %2) unnamed_addr #16 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #26
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = add i64 %2, -4734510112055689544
  store i64 %7, ptr %4, align 8
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = sub i64 2066345149520216444, %2
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %11 = add i64 %2, -2623469361688619810
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %13 = sub i64 2262974939099578482, %2
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %15 = add i64 %2, 8711581037947681227
  store i64 %15, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %17 = sub i64 2410270004345854594, %2
  store i64 %17, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %19 = add i64 %2, -8204357891075471176
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %21 = sub i64 5487137525590930912, %2
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %23 = add i64 %2, -3818837453329782724
  store i64 %23, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %25 = sub i64 -6688317018830679928, %2
  store i64 %25, ptr %24, align 8
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %27 = add i64 %2, 5690594596133299313
  store i64 %27, ptr %26, align 8
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %29 = sub i64 -2833645246901970632, %2
  store i64 %29, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %31 = add i64 %2, 4554437623014685352
  store i64 %31, ptr %30, align 8
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %33 = sub i64 2111919702937427193, %2
  store i64 %33, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %35 = add i64 %2, 3556072174620004746
  store i64 %35, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %37 = sub i64 7238261902898274248, %2
  store i64 %37, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %39 = add i64 %2, -4329134394285701654
  store i64 %39, ptr %38, align 8
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %41 = sub i64 -1485321483350670907, %2
  store i64 %41, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %43 = add i64 %2, 5321830579834785047
  store i64 %43, ptr %42, align 8
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %45 = sub i64 -7032137544937171245, %2
  store i64 %45, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %47 = add i64 %2, -242834301215959509
  store i64 %47, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 168
  %49 = sub i64 -3588858202114426737, %2
  store i64 %49, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %51 = add i64 %2, 2883454493032893253
  store i64 %51, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 184
  %53 = sub i64 9097354517224871855, %2
  store i64 %53, ptr %52, align 8
  %54 = lshr i64 %1, 10
  %55 = icmp ult i64 %1, 1024
  br i1 %55, label %125, label %58

56:                                               ; preds = %3
  %57 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %269

58:                                               ; preds = %6
  %59 = load <4 x i64>, ptr %38, align 8
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %61 = load <4 x i64>, ptr %60, align 8
  br label %62

62:                                               ; preds = %58, %102
  %63 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %58 ], [ %122, %102 ]
  %64 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %58 ], [ %112, %102 ]
  %65 = phi i64 [ 0, %58 ], [ %123, %102 ]
  %66 = shl i64 %65, 10
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 %66
  br label %68

68:                                               ; preds = %62, %68
  %69 = phi <4 x i64> [ %63, %62 ], [ %99, %68 ]
  %70 = phi <4 x i64> [ %64, %62 ], [ %86, %68 ]
  %71 = phi i64 [ 0, %62 ], [ %100, %68 ]
  %72 = shl nuw nsw i64 %71, 6
  %73 = getelementptr inbounds nuw i8, ptr %67, i64 %72
  %74 = shl nuw nsw i64 %71, 3
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 %74
  %76 = load <4 x i64>, ptr %73, align 1
  %77 = load <4 x i64>, ptr %75, align 8
  %78 = xor <4 x i64> %77, %76
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = add <4 x i64> %70, %76
  %86 = add <4 x i64> %85, %84
  %87 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %88 = load <4 x i64>, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %90 = load <4 x i64>, ptr %89, align 8
  %91 = xor <4 x i64> %90, %88
  %92 = bitcast <4 x i64> %91 to <8 x i32>
  %93 = shufflevector <8 x i32> %92, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %94 = bitcast <8 x i32> %93 to <4 x i64>
  %95 = and <4 x i64> %91, splat (i64 4294967295)
  %96 = and <4 x i64> %94, splat (i64 4294967295)
  %97 = mul nuw <4 x i64> %96, %95
  %98 = add <4 x i64> %69, %88
  %99 = add <4 x i64> %98, %97
  %100 = add nuw nsw i64 %71, 1
  %101 = icmp eq i64 %100, 16
  br i1 %101, label %102, label %68

102:                                              ; preds = %68
  %103 = lshr <4 x i64> %86, splat (i64 47)
  %104 = xor <4 x i64> %59, %103
  %105 = xor <4 x i64> %104, %86
  %106 = bitcast <4 x i64> %105 to <8 x i32>
  %107 = shufflevector <8 x i32> %106, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %108 = bitcast <8 x i32> %107 to <4 x i64>
  %109 = and <4 x i64> %105, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, splat (i64 2654435761)
  %111 = mul <4 x i64> %108, splat (i64 -7046029290881679360)
  %112 = add <4 x i64> %111, %110
  %113 = lshr <4 x i64> %99, splat (i64 47)
  %114 = xor <4 x i64> %61, %113
  %115 = xor <4 x i64> %114, %99
  %116 = bitcast <4 x i64> %115 to <8 x i32>
  %117 = shufflevector <8 x i32> %116, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %118 = bitcast <8 x i32> %117 to <4 x i64>
  %119 = and <4 x i64> %115, splat (i64 4294967295)
  %120 = mul nuw <4 x i64> %119, splat (i64 2654435761)
  %121 = mul <4 x i64> %118, splat (i64 -7046029290881679360)
  %122 = add <4 x i64> %121, %120
  %123 = add nuw nsw i64 %65, 1
  %124 = icmp eq i64 %123, %54
  br i1 %124, label %125, label %62

125:                                              ; preds = %102, %6
  %126 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %122, %102 ]
  %127 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %112, %102 ]
  %128 = and i64 %1, -1024
  %129 = lshr i64 %1, 6
  %130 = and i64 %129, 15
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 %128
  %132 = icmp eq i64 %130, 0
  br i1 %132, label %167, label %133

133:                                              ; preds = %125, %133
  %134 = phi <4 x i64> [ %164, %133 ], [ %126, %125 ]
  %135 = phi <4 x i64> [ %151, %133 ], [ %127, %125 ]
  %136 = phi i64 [ %165, %133 ], [ 0, %125 ]
  %137 = shl i64 %136, 6
  %138 = getelementptr inbounds nuw i8, ptr %131, i64 %137
  %139 = shl i64 %136, 3
  %140 = getelementptr inbounds nuw i8, ptr %4, i64 %139
  %141 = load <4 x i64>, ptr %138, align 1
  %142 = load <4 x i64>, ptr %140, align 8
  %143 = xor <4 x i64> %142, %141
  %144 = bitcast <4 x i64> %143 to <8 x i32>
  %145 = shufflevector <8 x i32> %144, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %146 = bitcast <8 x i32> %145 to <4 x i64>
  %147 = and <4 x i64> %143, splat (i64 4294967295)
  %148 = and <4 x i64> %146, splat (i64 4294967295)
  %149 = mul nuw <4 x i64> %148, %147
  %150 = add <4 x i64> %135, %141
  %151 = add <4 x i64> %150, %149
  %152 = getelementptr inbounds nuw i8, ptr %138, i64 32
  %153 = load <4 x i64>, ptr %152, align 1
  %154 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %155 = load <4 x i64>, ptr %154, align 8
  %156 = xor <4 x i64> %155, %153
  %157 = bitcast <4 x i64> %156 to <8 x i32>
  %158 = shufflevector <8 x i32> %157, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %159 = bitcast <8 x i32> %158 to <4 x i64>
  %160 = and <4 x i64> %156, splat (i64 4294967295)
  %161 = and <4 x i64> %159, splat (i64 4294967295)
  %162 = mul nuw <4 x i64> %161, %160
  %163 = add <4 x i64> %134, %153
  %164 = add <4 x i64> %163, %162
  %165 = add nuw nsw i64 %136, 1
  %166 = icmp eq i64 %165, %130
  br i1 %166, label %167, label %133

167:                                              ; preds = %133, %125
  %168 = phi <4 x i64> [ %126, %125 ], [ %164, %133 ]
  %169 = phi <4 x i64> [ %127, %125 ], [ %151, %133 ]
  %170 = and i64 %1, 63
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %200, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %174 = getelementptr inbounds i8, ptr %173, i64 -64
  %175 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %176 = load <4 x i64>, ptr %174, align 1
  %177 = load <4 x i64>, ptr %175, align 1
  %178 = xor <4 x i64> %177, %176
  %179 = bitcast <4 x i64> %178 to <8 x i32>
  %180 = shufflevector <8 x i32> %179, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %181 = bitcast <8 x i32> %180 to <4 x i64>
  %182 = and <4 x i64> %178, splat (i64 4294967295)
  %183 = and <4 x i64> %181, splat (i64 4294967295)
  %184 = mul nuw <4 x i64> %183, %182
  %185 = add <4 x i64> %169, %176
  %186 = add <4 x i64> %185, %184
  %187 = getelementptr inbounds i8, ptr %173, i64 -32
  %188 = load <4 x i64>, ptr %187, align 1
  %189 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %190 = load <4 x i64>, ptr %189, align 1
  %191 = xor <4 x i64> %190, %188
  %192 = bitcast <4 x i64> %191 to <8 x i32>
  %193 = shufflevector <8 x i32> %192, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %194 = bitcast <8 x i32> %193 to <4 x i64>
  %195 = and <4 x i64> %191, splat (i64 4294967295)
  %196 = and <4 x i64> %194, splat (i64 4294967295)
  %197 = mul nuw <4 x i64> %196, %195
  %198 = add <4 x i64> %168, %188
  %199 = add <4 x i64> %198, %197
  br label %200

200:                                              ; preds = %172, %167
  %201 = phi <4 x i64> [ %168, %167 ], [ %199, %172 ]
  %202 = phi <4 x i64> [ %169, %167 ], [ %186, %172 ]
  %203 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %204 = mul i64 %1, -7046029288634856825
  %205 = extractelement <4 x i64> %202, i64 0
  %206 = load i64, ptr %203, align 1
  %207 = xor i64 %206, %205
  %208 = extractelement <4 x i64> %202, i64 1
  %209 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %210 = load i64, ptr %209, align 1
  %211 = xor i64 %210, %208
  %212 = zext i64 %207 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %204, %217
  %219 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %220 = extractelement <4 x i64> %202, i64 2
  %221 = load i64, ptr %219, align 1
  %222 = xor i64 %221, %220
  %223 = extractelement <4 x i64> %202, i64 3
  %224 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %225 = load i64, ptr %224, align 1
  %226 = xor i64 %225, %223
  %227 = zext i64 %222 to i128
  %228 = zext i64 %226 to i128
  %229 = mul nuw i128 %228, %227
  %230 = lshr i128 %229, 64
  %231 = xor i128 %230, %229
  %232 = trunc i128 %231 to i64
  %233 = add i64 %218, %232
  %234 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %235 = extractelement <4 x i64> %201, i64 0
  %236 = load i64, ptr %234, align 1
  %237 = xor i64 %236, %235
  %238 = extractelement <4 x i64> %201, i64 1
  %239 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %240 = load i64, ptr %239, align 1
  %241 = xor i64 %240, %238
  %242 = zext i64 %237 to i128
  %243 = zext i64 %241 to i128
  %244 = mul nuw i128 %243, %242
  %245 = lshr i128 %244, 64
  %246 = xor i128 %245, %244
  %247 = trunc i128 %246 to i64
  %248 = add i64 %233, %247
  %249 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %250 = extractelement <4 x i64> %201, i64 2
  %251 = load i64, ptr %249, align 1
  %252 = xor i64 %251, %250
  %253 = extractelement <4 x i64> %201, i64 3
  %254 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %253
  %257 = zext i64 %252 to i128
  %258 = zext i64 %256 to i128
  %259 = mul nuw i128 %258, %257
  %260 = lshr i128 %259, 64
  %261 = xor i128 %260, %259
  %262 = trunc i128 %261 to i64
  %263 = add i64 %248, %262
  %264 = lshr i64 %263, 37
  %265 = xor i64 %264, %263
  %266 = mul i64 %265, 1609587929392839161
  %267 = lshr i64 %266, 32
  %268 = xor i64 %267, %266
  br label %269

269:                                              ; preds = %200, %56
  %270 = phi i64 [ %57, %56 ], [ %268, %200 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #26
  ret i64 %270
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH3_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(576) ptr @malloc(i64 noundef 576) #25
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH3_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #26
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH3_copyState(ptr noundef writeonly initializes((0, 576)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %0, ptr noundef nonnull align 64 dereferenceable(576) %1, i64 576, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %6, align 16
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %8, align 32
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @kSecret, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 16, ptr %14, align 4
  br label %15

15:                                               ; preds = %1, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %1, ptr %14, align 16
  %15 = trunc i64 %2 to i32
  %16 = add i32 %15, -64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 %16, ptr %17, align 4
  %18 = lshr i32 %16, 3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %18, ptr %19, align 4
  %20 = icmp eq ptr %1, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = icmp ult i64 %2, 136
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %21, %5, %3
  %25 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 320, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %1, ptr %14, align 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 128, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 16, ptr %17, align 4
  %18 = add i64 %1, -4734510112055689544
  store i64 %18, ptr %5, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %20 = sub i64 2066345149520216444, %1
  store i64 %20, ptr %19, align 1
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %22 = add i64 %1, -2623469361688619810
  store i64 %22, ptr %21, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %24 = sub i64 2262974939099578482, %1
  store i64 %24, ptr %23, align 1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %26 = add i64 %1, 8711581037947681227
  store i64 %26, ptr %25, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %28 = sub i64 2410270004345854594, %1
  store i64 %28, ptr %27, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %30 = add i64 %1, -8204357891075471176
  store i64 %30, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %32 = sub i64 5487137525590930912, %1
  store i64 %32, ptr %31, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %34 = add i64 %1, -3818837453329782724
  store i64 %34, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %36 = sub i64 -6688317018830679928, %1
  store i64 %36, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %38 = add i64 %1, 5690594596133299313
  store i64 %38, ptr %37, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %40 = sub i64 -2833645246901970632, %1
  store i64 %40, ptr %39, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %42 = add i64 %1, 4554437623014685352
  store i64 %42, ptr %41, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %44 = sub i64 2111919702937427193, %1
  store i64 %44, ptr %43, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %46 = add i64 %1, 3556072174620004746
  store i64 %46, ptr %45, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %48 = sub i64 7238261902898274248, %1
  store i64 %48, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %50 = add i64 %1, -4329134394285701654
  store i64 %50, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %52 = sub i64 -1485321483350670907, %1
  store i64 %52, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %54 = add i64 %1, 5321830579834785047
  store i64 %54, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %56 = sub i64 -7032137544937171245, %1
  store i64 %56, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %58 = add i64 %1, -242834301215959509
  store i64 %58, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %60 = sub i64 -3588858202114426737, %1
  store i64 %60, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %62 = add i64 %1, 2883454493032893253
  store i64 %62, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %64 = sub i64 9097354517224871855, %1
  store i64 %64, ptr %63, align 1
  store ptr %5, ptr %15, align 16
  br label %65

65:                                               ; preds = %2, %4
  %66 = phi i32 [ 0, %4 ], [ 1, %2 ]
  ret i32 %66
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %525, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %8, %2
  store i64 %9, ptr %7, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %11 = load i32, ptr %10, align 64
  %12 = zext i32 %11 to i64
  %13 = add i64 %2, %12
  %14 = icmp ult i64 %13, 257
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %18 = trunc i64 %2 to i32
  %19 = load i32, ptr %10, align 64
  %20 = add i32 %19, %18
  br label %523

21:                                               ; preds = %5
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %266, label %23

23:                                               ; preds = %21
  %24 = sub i32 256, %11
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull readonly align 1 %1, i64 %25, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, ptr %29, align 4
  %38 = sub i32 %31, %37
  %39 = zext i32 %38 to i64
  %40 = icmp ugt i32 %38, 4
  %41 = shl i32 %37, 3
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %33, i64 %42
  br i1 %40, label %156, label %44

44:                                               ; preds = %23
  %45 = icmp eq i32 %31, %37
  %46 = load <4 x i64>, ptr %0, align 32
  br i1 %45, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %49 = load <4 x i64>, ptr %48, align 32
  br label %88

50:                                               ; preds = %44
  %51 = tail call i64 @llvm.umax.i64(i64 %39, i64 1)
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = load <4 x i64>, ptr %52, align 32
  br label %54

54:                                               ; preds = %50, %54
  %55 = phi <4 x i64> [ %85, %54 ], [ %53, %50 ]
  %56 = phi <4 x i64> [ %72, %54 ], [ %46, %50 ]
  %57 = phi i64 [ %86, %54 ], [ 0, %50 ]
  %58 = shl i64 %57, 6
  %59 = getelementptr inbounds nuw i8, ptr %26, i64 %58
  %60 = shl i64 %57, 3
  %61 = getelementptr inbounds nuw i8, ptr %43, i64 %60
  %62 = load <4 x i64>, ptr %59, align 1
  %63 = load <4 x i64>, ptr %61, align 1
  %64 = xor <4 x i64> %63, %62
  %65 = bitcast <4 x i64> %64 to <8 x i32>
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = and <4 x i64> %64, splat (i64 4294967295)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, %68
  %71 = add <4 x i64> %56, %62
  %72 = add <4 x i64> %71, %70
  store <4 x i64> %72, ptr %0, align 32
  %73 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %74 = load <4 x i64>, ptr %73, align 1
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %76 = load <4 x i64>, ptr %75, align 1
  %77 = xor <4 x i64> %76, %74
  %78 = bitcast <4 x i64> %77 to <8 x i32>
  %79 = shufflevector <8 x i32> %78, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %80 = bitcast <8 x i32> %79 to <4 x i64>
  %81 = and <4 x i64> %77, splat (i64 4294967295)
  %82 = and <4 x i64> %80, splat (i64 4294967295)
  %83 = mul nuw <4 x i64> %82, %81
  %84 = add <4 x i64> %55, %74
  %85 = add <4 x i64> %84, %83
  store <4 x i64> %85, ptr %52, align 32
  %86 = add nuw nsw i64 %57, 1
  %87 = icmp eq i64 %86, %51
  br i1 %87, label %88, label %54

88:                                               ; preds = %54, %47
  %89 = phi <4 x i64> [ %49, %47 ], [ %85, %54 ]
  %90 = phi <4 x i64> [ %46, %47 ], [ %72, %54 ]
  %91 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  %92 = lshr <4 x i64> %90, splat (i64 47)
  %93 = load <4 x i64>, ptr %91, align 1
  %94 = xor <4 x i64> %93, %92
  %95 = xor <4 x i64> %94, %90
  %96 = bitcast <4 x i64> %95 to <8 x i32>
  %97 = shufflevector <8 x i32> %96, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %98 = bitcast <8 x i32> %97 to <4 x i64>
  %99 = and <4 x i64> %95, splat (i64 4294967295)
  %100 = mul nuw <4 x i64> %99, splat (i64 2654435761)
  %101 = mul <4 x i64> %98, splat (i64 -7046029290881679360)
  %102 = add <4 x i64> %101, %100
  store <4 x i64> %102, ptr %0, align 32
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %104 = lshr <4 x i64> %89, splat (i64 47)
  %105 = getelementptr inbounds nuw i8, ptr %91, i64 32
  %106 = load <4 x i64>, ptr %105, align 1
  %107 = xor <4 x i64> %106, %104
  %108 = xor <4 x i64> %107, %89
  %109 = bitcast <4 x i64> %108 to <8 x i32>
  %110 = shufflevector <8 x i32> %109, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %111 = bitcast <8 x i32> %110 to <4 x i64>
  %112 = and <4 x i64> %108, splat (i64 4294967295)
  %113 = mul nuw <4 x i64> %112, splat (i64 2654435761)
  %114 = mul <4 x i64> %111, splat (i64 -7046029290881679360)
  %115 = add <4 x i64> %114, %113
  store <4 x i64> %115, ptr %103, align 32
  %116 = shl nuw nsw i64 %39, 6
  %117 = getelementptr inbounds nuw i8, ptr %26, i64 %116
  %118 = sub nsw i64 4, %39
  %119 = icmp eq i32 %38, 4
  br i1 %119, label %154, label %120

120:                                              ; preds = %88, %120
  %121 = phi <4 x i64> [ %151, %120 ], [ %115, %88 ]
  %122 = phi <4 x i64> [ %138, %120 ], [ %102, %88 ]
  %123 = phi i64 [ %152, %120 ], [ 0, %88 ]
  %124 = shl i64 %123, 6
  %125 = getelementptr inbounds nuw i8, ptr %117, i64 %124
  %126 = shl i64 %123, 3
  %127 = getelementptr inbounds nuw i8, ptr %33, i64 %126
  %128 = load <4 x i64>, ptr %125, align 1
  %129 = load <4 x i64>, ptr %127, align 1
  %130 = xor <4 x i64> %129, %128
  %131 = bitcast <4 x i64> %130 to <8 x i32>
  %132 = shufflevector <8 x i32> %131, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %133 = bitcast <8 x i32> %132 to <4 x i64>
  %134 = and <4 x i64> %130, splat (i64 4294967295)
  %135 = and <4 x i64> %133, splat (i64 4294967295)
  %136 = mul nuw <4 x i64> %135, %134
  %137 = add <4 x i64> %122, %128
  %138 = add <4 x i64> %137, %136
  store <4 x i64> %138, ptr %0, align 32
  %139 = getelementptr inbounds nuw i8, ptr %125, i64 32
  %140 = load <4 x i64>, ptr %139, align 1
  %141 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %142 = load <4 x i64>, ptr %141, align 1
  %143 = xor <4 x i64> %142, %140
  %144 = bitcast <4 x i64> %143 to <8 x i32>
  %145 = shufflevector <8 x i32> %144, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %146 = bitcast <8 x i32> %145 to <4 x i64>
  %147 = and <4 x i64> %143, splat (i64 4294967295)
  %148 = and <4 x i64> %146, splat (i64 4294967295)
  %149 = mul nuw <4 x i64> %148, %147
  %150 = add <4 x i64> %121, %140
  %151 = add <4 x i64> %150, %149
  store <4 x i64> %151, ptr %103, align 32
  %152 = add nuw i64 %123, 1
  %153 = icmp eq i64 %152, %118
  br i1 %153, label %154, label %120

154:                                              ; preds = %120, %88
  %155 = trunc nuw nsw i64 %118 to i32
  br label %264

156:                                              ; preds = %23
  %157 = load <4 x i64>, ptr %26, align 1
  %158 = load <4 x i64>, ptr %43, align 1
  %159 = xor <4 x i64> %158, %157
  %160 = bitcast <4 x i64> %159 to <8 x i32>
  %161 = shufflevector <8 x i32> %160, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %162 = bitcast <8 x i32> %161 to <4 x i64>
  %163 = and <4 x i64> %159, splat (i64 4294967295)
  %164 = and <4 x i64> %162, splat (i64 4294967295)
  %165 = mul nuw <4 x i64> %164, %163
  %166 = load <4 x i64>, ptr %0, align 32
  %167 = add <4 x i64> %166, %157
  %168 = add <4 x i64> %167, %165
  store <4 x i64> %168, ptr %0, align 32
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %170 = load <4 x i64>, ptr %169, align 1
  %171 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %172 = load <4 x i64>, ptr %171, align 1
  %173 = xor <4 x i64> %172, %170
  %174 = bitcast <4 x i64> %173 to <8 x i32>
  %175 = shufflevector <8 x i32> %174, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %176 = bitcast <8 x i32> %175 to <4 x i64>
  %177 = and <4 x i64> %173, splat (i64 4294967295)
  %178 = and <4 x i64> %176, splat (i64 4294967295)
  %179 = mul nuw <4 x i64> %178, %177
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %181 = load <4 x i64>, ptr %180, align 32
  %182 = add <4 x i64> %181, %170
  %183 = add <4 x i64> %182, %179
  store <4 x i64> %183, ptr %180, align 32
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %185 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %186 = load <4 x i64>, ptr %184, align 1
  %187 = load <4 x i64>, ptr %185, align 1
  %188 = xor <4 x i64> %187, %186
  %189 = bitcast <4 x i64> %188 to <8 x i32>
  %190 = shufflevector <8 x i32> %189, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %191 = bitcast <8 x i32> %190 to <4 x i64>
  %192 = and <4 x i64> %188, splat (i64 4294967295)
  %193 = and <4 x i64> %191, splat (i64 4294967295)
  %194 = mul nuw <4 x i64> %193, %192
  %195 = add <4 x i64> %168, %186
  %196 = add <4 x i64> %195, %194
  store <4 x i64> %196, ptr %0, align 32
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %198 = load <4 x i64>, ptr %197, align 1
  %199 = getelementptr inbounds nuw i8, ptr %43, i64 40
  %200 = load <4 x i64>, ptr %199, align 1
  %201 = xor <4 x i64> %200, %198
  %202 = bitcast <4 x i64> %201 to <8 x i32>
  %203 = shufflevector <8 x i32> %202, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %204 = bitcast <8 x i32> %203 to <4 x i64>
  %205 = and <4 x i64> %201, splat (i64 4294967295)
  %206 = and <4 x i64> %204, splat (i64 4294967295)
  %207 = mul nuw <4 x i64> %206, %205
  %208 = add <4 x i64> %183, %198
  %209 = add <4 x i64> %208, %207
  store <4 x i64> %209, ptr %180, align 32
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %211 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %212 = load <4 x i64>, ptr %210, align 1
  %213 = load <4 x i64>, ptr %211, align 1
  %214 = xor <4 x i64> %213, %212
  %215 = bitcast <4 x i64> %214 to <8 x i32>
  %216 = shufflevector <8 x i32> %215, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %217 = bitcast <8 x i32> %216 to <4 x i64>
  %218 = and <4 x i64> %214, splat (i64 4294967295)
  %219 = and <4 x i64> %217, splat (i64 4294967295)
  %220 = mul nuw <4 x i64> %219, %218
  %221 = add <4 x i64> %196, %212
  %222 = add <4 x i64> %221, %220
  store <4 x i64> %222, ptr %0, align 32
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %224 = load <4 x i64>, ptr %223, align 1
  %225 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %226 = load <4 x i64>, ptr %225, align 1
  %227 = xor <4 x i64> %226, %224
  %228 = bitcast <4 x i64> %227 to <8 x i32>
  %229 = shufflevector <8 x i32> %228, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %230 = bitcast <8 x i32> %229 to <4 x i64>
  %231 = and <4 x i64> %227, splat (i64 4294967295)
  %232 = and <4 x i64> %230, splat (i64 4294967295)
  %233 = mul nuw <4 x i64> %232, %231
  %234 = add <4 x i64> %209, %224
  %235 = add <4 x i64> %234, %233
  store <4 x i64> %235, ptr %180, align 32
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %237 = getelementptr inbounds nuw i8, ptr %43, i64 24
  %238 = load <4 x i64>, ptr %236, align 1
  %239 = load <4 x i64>, ptr %237, align 1
  %240 = xor <4 x i64> %239, %238
  %241 = bitcast <4 x i64> %240 to <8 x i32>
  %242 = shufflevector <8 x i32> %241, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %243 = bitcast <8 x i32> %242 to <4 x i64>
  %244 = and <4 x i64> %240, splat (i64 4294967295)
  %245 = and <4 x i64> %243, splat (i64 4294967295)
  %246 = mul nuw <4 x i64> %245, %244
  %247 = add <4 x i64> %222, %238
  %248 = add <4 x i64> %247, %246
  store <4 x i64> %248, ptr %0, align 32
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %250 = load <4 x i64>, ptr %249, align 1
  %251 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %252 = load <4 x i64>, ptr %251, align 1
  %253 = xor <4 x i64> %252, %250
  %254 = bitcast <4 x i64> %253 to <8 x i32>
  %255 = shufflevector <8 x i32> %254, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %256 = bitcast <8 x i32> %255 to <4 x i64>
  %257 = and <4 x i64> %253, splat (i64 4294967295)
  %258 = and <4 x i64> %256, splat (i64 4294967295)
  %259 = mul nuw <4 x i64> %258, %257
  %260 = add <4 x i64> %235, %250
  %261 = add <4 x i64> %260, %259
  store <4 x i64> %261, ptr %180, align 32
  %262 = load i32, ptr %29, align 4
  %263 = add i32 %262, 4
  br label %264

264:                                              ; preds = %154, %156
  %265 = phi i32 [ %263, %156 ], [ %155, %154 ]
  store i32 %265, ptr %29, align 4
  store i32 0, ptr %10, align 64
  br label %266

266:                                              ; preds = %264, %21
  %267 = phi ptr [ %28, %264 ], [ %1, %21 ]
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 256
  %269 = icmp ugt ptr %268, %6
  br i1 %269, label %514, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds i8, ptr %6, i64 -256
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %276 = load i32, ptr %272, align 4
  %277 = load i32, ptr %273, align 4
  %278 = load ptr, ptr %274, align 16
  %279 = load i32, ptr %275, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %282 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %283 = getelementptr inbounds nuw i8, ptr %278, i64 %280
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %285 = getelementptr inbounds nuw i8, ptr %283, i64 32
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %287

287:                                              ; preds = %510, %270
  %288 = phi i32 [ %276, %270 ], [ %511, %510 ]
  %289 = phi ptr [ %267, %270 ], [ %512, %510 ]
  %290 = sub i32 %277, %288
  %291 = zext i32 %290 to i64
  %292 = icmp ugt i32 %290, 4
  %293 = shl i32 %288, 3
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds nuw i8, ptr %278, i64 %294
  br i1 %292, label %403, label %296

296:                                              ; preds = %287
  %297 = icmp eq i32 %277, %288
  %298 = load <4 x i64>, ptr %0, align 32
  br i1 %297, label %299, label %301

299:                                              ; preds = %296
  %300 = load <4 x i64>, ptr %282, align 32
  br label %338

301:                                              ; preds = %296
  %302 = tail call i64 @llvm.umax.i64(i64 %291, i64 1)
  %303 = load <4 x i64>, ptr %281, align 32
  br label %304

304:                                              ; preds = %301, %304
  %305 = phi <4 x i64> [ %335, %304 ], [ %303, %301 ]
  %306 = phi <4 x i64> [ %322, %304 ], [ %298, %301 ]
  %307 = phi i64 [ %336, %304 ], [ 0, %301 ]
  %308 = shl i64 %307, 6
  %309 = getelementptr inbounds nuw i8, ptr %289, i64 %308
  %310 = shl i64 %307, 3
  %311 = getelementptr inbounds nuw i8, ptr %295, i64 %310
  %312 = load <4 x i64>, ptr %309, align 1
  %313 = load <4 x i64>, ptr %311, align 1
  %314 = xor <4 x i64> %313, %312
  %315 = bitcast <4 x i64> %314 to <8 x i32>
  %316 = shufflevector <8 x i32> %315, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %317 = bitcast <8 x i32> %316 to <4 x i64>
  %318 = and <4 x i64> %314, splat (i64 4294967295)
  %319 = and <4 x i64> %317, splat (i64 4294967295)
  %320 = mul nuw <4 x i64> %319, %318
  %321 = add <4 x i64> %306, %312
  %322 = add <4 x i64> %321, %320
  store <4 x i64> %322, ptr %0, align 32
  %323 = getelementptr inbounds nuw i8, ptr %309, i64 32
  %324 = load <4 x i64>, ptr %323, align 1
  %325 = getelementptr inbounds nuw i8, ptr %311, i64 32
  %326 = load <4 x i64>, ptr %325, align 1
  %327 = xor <4 x i64> %326, %324
  %328 = bitcast <4 x i64> %327 to <8 x i32>
  %329 = shufflevector <8 x i32> %328, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %330 = bitcast <8 x i32> %329 to <4 x i64>
  %331 = and <4 x i64> %327, splat (i64 4294967295)
  %332 = and <4 x i64> %330, splat (i64 4294967295)
  %333 = mul nuw <4 x i64> %332, %331
  %334 = add <4 x i64> %305, %324
  %335 = add <4 x i64> %334, %333
  store <4 x i64> %335, ptr %281, align 32
  %336 = add nuw nsw i64 %307, 1
  %337 = icmp eq i64 %336, %302
  br i1 %337, label %338, label %304

338:                                              ; preds = %304, %299
  %339 = phi <4 x i64> [ %300, %299 ], [ %335, %304 ]
  %340 = phi <4 x i64> [ %298, %299 ], [ %322, %304 ]
  %341 = lshr <4 x i64> %340, splat (i64 47)
  %342 = load <4 x i64>, ptr %283, align 1
  %343 = xor <4 x i64> %342, %341
  %344 = xor <4 x i64> %343, %340
  %345 = bitcast <4 x i64> %344 to <8 x i32>
  %346 = shufflevector <8 x i32> %345, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %347 = bitcast <8 x i32> %346 to <4 x i64>
  %348 = and <4 x i64> %344, splat (i64 4294967295)
  %349 = mul nuw <4 x i64> %348, splat (i64 2654435761)
  %350 = mul <4 x i64> %347, splat (i64 -7046029290881679360)
  %351 = add <4 x i64> %350, %349
  store <4 x i64> %351, ptr %0, align 32
  %352 = lshr <4 x i64> %339, splat (i64 47)
  %353 = load <4 x i64>, ptr %285, align 1
  %354 = xor <4 x i64> %353, %352
  %355 = xor <4 x i64> %354, %339
  %356 = bitcast <4 x i64> %355 to <8 x i32>
  %357 = shufflevector <8 x i32> %356, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %358 = bitcast <8 x i32> %357 to <4 x i64>
  %359 = and <4 x i64> %355, splat (i64 4294967295)
  %360 = mul nuw <4 x i64> %359, splat (i64 2654435761)
  %361 = mul <4 x i64> %358, splat (i64 -7046029290881679360)
  %362 = add <4 x i64> %361, %360
  store <4 x i64> %362, ptr %284, align 32
  %363 = shl nuw nsw i64 %291, 6
  %364 = getelementptr inbounds nuw i8, ptr %289, i64 %363
  %365 = sub nsw i64 4, %291
  %366 = icmp eq i32 %290, 4
  br i1 %366, label %401, label %367

367:                                              ; preds = %338, %367
  %368 = phi <4 x i64> [ %398, %367 ], [ %362, %338 ]
  %369 = phi <4 x i64> [ %385, %367 ], [ %351, %338 ]
  %370 = phi i64 [ %399, %367 ], [ 0, %338 ]
  %371 = shl i64 %370, 6
  %372 = getelementptr inbounds nuw i8, ptr %364, i64 %371
  %373 = shl i64 %370, 3
  %374 = getelementptr inbounds nuw i8, ptr %278, i64 %373
  %375 = load <4 x i64>, ptr %372, align 1
  %376 = load <4 x i64>, ptr %374, align 1
  %377 = xor <4 x i64> %376, %375
  %378 = bitcast <4 x i64> %377 to <8 x i32>
  %379 = shufflevector <8 x i32> %378, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %380 = bitcast <8 x i32> %379 to <4 x i64>
  %381 = and <4 x i64> %377, splat (i64 4294967295)
  %382 = and <4 x i64> %380, splat (i64 4294967295)
  %383 = mul nuw <4 x i64> %382, %381
  %384 = add <4 x i64> %369, %375
  %385 = add <4 x i64> %384, %383
  store <4 x i64> %385, ptr %0, align 32
  %386 = getelementptr inbounds nuw i8, ptr %372, i64 32
  %387 = load <4 x i64>, ptr %386, align 1
  %388 = getelementptr inbounds nuw i8, ptr %374, i64 32
  %389 = load <4 x i64>, ptr %388, align 1
  %390 = xor <4 x i64> %389, %387
  %391 = bitcast <4 x i64> %390 to <8 x i32>
  %392 = shufflevector <8 x i32> %391, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %393 = bitcast <8 x i32> %392 to <4 x i64>
  %394 = and <4 x i64> %390, splat (i64 4294967295)
  %395 = and <4 x i64> %393, splat (i64 4294967295)
  %396 = mul nuw <4 x i64> %395, %394
  %397 = add <4 x i64> %368, %387
  %398 = add <4 x i64> %397, %396
  store <4 x i64> %398, ptr %284, align 32
  %399 = add nuw i64 %370, 1
  %400 = icmp eq i64 %399, %365
  br i1 %400, label %401, label %367

401:                                              ; preds = %367, %338
  %402 = trunc nuw nsw i64 %365 to i32
  br label %510

403:                                              ; preds = %287
  %404 = load <4 x i64>, ptr %289, align 1
  %405 = load <4 x i64>, ptr %295, align 1
  %406 = xor <4 x i64> %405, %404
  %407 = bitcast <4 x i64> %406 to <8 x i32>
  %408 = shufflevector <8 x i32> %407, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %409 = bitcast <8 x i32> %408 to <4 x i64>
  %410 = and <4 x i64> %406, splat (i64 4294967295)
  %411 = and <4 x i64> %409, splat (i64 4294967295)
  %412 = mul nuw <4 x i64> %411, %410
  %413 = load <4 x i64>, ptr %0, align 32
  %414 = add <4 x i64> %413, %404
  %415 = add <4 x i64> %414, %412
  store <4 x i64> %415, ptr %0, align 32
  %416 = getelementptr inbounds nuw i8, ptr %289, i64 32
  %417 = load <4 x i64>, ptr %416, align 1
  %418 = getelementptr inbounds nuw i8, ptr %295, i64 32
  %419 = load <4 x i64>, ptr %418, align 1
  %420 = xor <4 x i64> %419, %417
  %421 = bitcast <4 x i64> %420 to <8 x i32>
  %422 = shufflevector <8 x i32> %421, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %423 = bitcast <8 x i32> %422 to <4 x i64>
  %424 = and <4 x i64> %420, splat (i64 4294967295)
  %425 = and <4 x i64> %423, splat (i64 4294967295)
  %426 = mul nuw <4 x i64> %425, %424
  %427 = load <4 x i64>, ptr %286, align 32
  %428 = add <4 x i64> %427, %417
  %429 = add <4 x i64> %428, %426
  store <4 x i64> %429, ptr %286, align 32
  %430 = getelementptr inbounds nuw i8, ptr %289, i64 64
  %431 = getelementptr inbounds nuw i8, ptr %295, i64 8
  %432 = load <4 x i64>, ptr %430, align 1
  %433 = load <4 x i64>, ptr %431, align 1
  %434 = xor <4 x i64> %433, %432
  %435 = bitcast <4 x i64> %434 to <8 x i32>
  %436 = shufflevector <8 x i32> %435, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %437 = bitcast <8 x i32> %436 to <4 x i64>
  %438 = and <4 x i64> %434, splat (i64 4294967295)
  %439 = and <4 x i64> %437, splat (i64 4294967295)
  %440 = mul nuw <4 x i64> %439, %438
  %441 = add <4 x i64> %415, %432
  %442 = add <4 x i64> %441, %440
  store <4 x i64> %442, ptr %0, align 32
  %443 = getelementptr inbounds nuw i8, ptr %289, i64 96
  %444 = load <4 x i64>, ptr %443, align 1
  %445 = getelementptr inbounds nuw i8, ptr %295, i64 40
  %446 = load <4 x i64>, ptr %445, align 1
  %447 = xor <4 x i64> %446, %444
  %448 = bitcast <4 x i64> %447 to <8 x i32>
  %449 = shufflevector <8 x i32> %448, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %450 = bitcast <8 x i32> %449 to <4 x i64>
  %451 = and <4 x i64> %447, splat (i64 4294967295)
  %452 = and <4 x i64> %450, splat (i64 4294967295)
  %453 = mul nuw <4 x i64> %452, %451
  %454 = add <4 x i64> %429, %444
  %455 = add <4 x i64> %454, %453
  store <4 x i64> %455, ptr %286, align 32
  %456 = getelementptr inbounds nuw i8, ptr %289, i64 128
  %457 = getelementptr inbounds nuw i8, ptr %295, i64 16
  %458 = load <4 x i64>, ptr %456, align 1
  %459 = load <4 x i64>, ptr %457, align 1
  %460 = xor <4 x i64> %459, %458
  %461 = bitcast <4 x i64> %460 to <8 x i32>
  %462 = shufflevector <8 x i32> %461, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %463 = bitcast <8 x i32> %462 to <4 x i64>
  %464 = and <4 x i64> %460, splat (i64 4294967295)
  %465 = and <4 x i64> %463, splat (i64 4294967295)
  %466 = mul nuw <4 x i64> %465, %464
  %467 = add <4 x i64> %442, %458
  %468 = add <4 x i64> %467, %466
  store <4 x i64> %468, ptr %0, align 32
  %469 = getelementptr inbounds nuw i8, ptr %289, i64 160
  %470 = load <4 x i64>, ptr %469, align 1
  %471 = getelementptr inbounds nuw i8, ptr %295, i64 48
  %472 = load <4 x i64>, ptr %471, align 1
  %473 = xor <4 x i64> %472, %470
  %474 = bitcast <4 x i64> %473 to <8 x i32>
  %475 = shufflevector <8 x i32> %474, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %476 = bitcast <8 x i32> %475 to <4 x i64>
  %477 = and <4 x i64> %473, splat (i64 4294967295)
  %478 = and <4 x i64> %476, splat (i64 4294967295)
  %479 = mul nuw <4 x i64> %478, %477
  %480 = add <4 x i64> %455, %470
  %481 = add <4 x i64> %480, %479
  store <4 x i64> %481, ptr %286, align 32
  %482 = getelementptr inbounds nuw i8, ptr %289, i64 192
  %483 = getelementptr inbounds nuw i8, ptr %295, i64 24
  %484 = load <4 x i64>, ptr %482, align 1
  %485 = load <4 x i64>, ptr %483, align 1
  %486 = xor <4 x i64> %485, %484
  %487 = bitcast <4 x i64> %486 to <8 x i32>
  %488 = shufflevector <8 x i32> %487, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %489 = bitcast <8 x i32> %488 to <4 x i64>
  %490 = and <4 x i64> %486, splat (i64 4294967295)
  %491 = and <4 x i64> %489, splat (i64 4294967295)
  %492 = mul nuw <4 x i64> %491, %490
  %493 = add <4 x i64> %468, %484
  %494 = add <4 x i64> %493, %492
  store <4 x i64> %494, ptr %0, align 32
  %495 = getelementptr inbounds nuw i8, ptr %289, i64 224
  %496 = load <4 x i64>, ptr %495, align 1
  %497 = getelementptr inbounds nuw i8, ptr %295, i64 56
  %498 = load <4 x i64>, ptr %497, align 1
  %499 = xor <4 x i64> %498, %496
  %500 = bitcast <4 x i64> %499 to <8 x i32>
  %501 = shufflevector <8 x i32> %500, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %502 = bitcast <8 x i32> %501 to <4 x i64>
  %503 = and <4 x i64> %499, splat (i64 4294967295)
  %504 = and <4 x i64> %502, splat (i64 4294967295)
  %505 = mul nuw <4 x i64> %504, %503
  %506 = add <4 x i64> %481, %496
  %507 = add <4 x i64> %506, %505
  store <4 x i64> %507, ptr %286, align 32
  %508 = load i32, ptr %272, align 4
  %509 = add i32 %508, 4
  br label %510

510:                                              ; preds = %401, %403
  %511 = phi i32 [ %509, %403 ], [ %402, %401 ]
  store i32 %511, ptr %272, align 4
  %512 = getelementptr inbounds nuw i8, ptr %289, i64 256
  %513 = icmp ugt ptr %512, %271
  br i1 %513, label %514, label %287

514:                                              ; preds = %510, %266
  %515 = phi ptr [ %267, %266 ], [ %512, %510 ]
  %516 = icmp ult ptr %515, %6
  br i1 %516, label %517, label %525

517:                                              ; preds = %514
  %518 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %519 = ptrtoint ptr %6 to i64
  %520 = ptrtoint ptr %515 to i64
  %521 = sub i64 %519, %520
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %518, ptr nonnull readonly align 1 %515, i64 %521, i1 false)
  %522 = trunc i64 %521 to i32
  br label %523

523:                                              ; preds = %517, %15
  %524 = phi i32 [ %20, %15 ], [ %522, %517 ]
  store i32 %524, ptr %10, align 64
  br label %525

525:                                              ; preds = %523, %3, %514
  %526 = phi i32 [ 1, %3 ], [ 0, %514 ], [ 0, %523 ]
  ret i32 %526
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @XXH3_64bits_digest(ptr noundef readonly %0) local_unnamed_addr #17 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %4 = load i64, ptr %3, align 8
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %318

6:                                                ; preds = %1
  %7 = load <4 x i64>, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %11 = load i32, ptr %10, align 64
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %13, label %204

13:                                               ; preds = %6
  %14 = lshr i32 %11, 6
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %22 = load ptr, ptr %21, align 16
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = sub i32 %19, %17
  %27 = zext i32 %26 to i64
  %28 = icmp ult i32 %14, %26
  %29 = shl i32 %17, 3
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %22, i64 %30
  br i1 %28, label %135, label %32

32:                                               ; preds = %13
  %33 = icmp eq i32 %19, %17
  br i1 %33, label %70, label %34

34:                                               ; preds = %32
  %35 = tail call i64 @llvm.umax.i64(i64 %27, i64 1)
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi <4 x i64> [ %9, %34 ], [ %67, %36 ]
  %38 = phi <4 x i64> [ %7, %34 ], [ %54, %36 ]
  %39 = phi i64 [ 0, %34 ], [ %68, %36 ]
  %40 = shl i64 %39, 6
  %41 = getelementptr inbounds nuw i8, ptr %20, i64 %40
  %42 = shl i64 %39, 3
  %43 = getelementptr inbounds nuw i8, ptr %31, i64 %42
  %44 = load <4 x i64>, ptr %41, align 1
  %45 = load <4 x i64>, ptr %43, align 1
  %46 = xor <4 x i64> %45, %44
  %47 = bitcast <4 x i64> %46 to <8 x i32>
  %48 = shufflevector <8 x i32> %47, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %49 = bitcast <8 x i32> %48 to <4 x i64>
  %50 = and <4 x i64> %46, splat (i64 4294967295)
  %51 = and <4 x i64> %49, splat (i64 4294967295)
  %52 = mul nuw <4 x i64> %51, %50
  %53 = add <4 x i64> %38, %44
  %54 = add <4 x i64> %53, %52
  %55 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %56 = load <4 x i64>, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %58 = load <4 x i64>, ptr %57, align 1
  %59 = xor <4 x i64> %58, %56
  %60 = bitcast <4 x i64> %59 to <8 x i32>
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %62 = bitcast <8 x i32> %61 to <4 x i64>
  %63 = and <4 x i64> %59, splat (i64 4294967295)
  %64 = and <4 x i64> %62, splat (i64 4294967295)
  %65 = mul nuw <4 x i64> %64, %63
  %66 = add <4 x i64> %37, %56
  %67 = add <4 x i64> %66, %65
  %68 = add nuw nsw i64 %39, 1
  %69 = icmp eq i64 %68, %35
  br i1 %69, label %70, label %36

70:                                               ; preds = %36, %32
  %71 = phi <4 x i64> [ %9, %32 ], [ %67, %36 ]
  %72 = phi <4 x i64> [ %7, %32 ], [ %54, %36 ]
  %73 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %74 = lshr <4 x i64> %72, splat (i64 47)
  %75 = load <4 x i64>, ptr %73, align 1
  %76 = xor <4 x i64> %75, %74
  %77 = xor <4 x i64> %76, %72
  %78 = bitcast <4 x i64> %77 to <8 x i32>
  %79 = shufflevector <8 x i32> %78, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %80 = bitcast <8 x i32> %79 to <4 x i64>
  %81 = and <4 x i64> %77, splat (i64 4294967295)
  %82 = mul nuw <4 x i64> %81, splat (i64 2654435761)
  %83 = mul <4 x i64> %80, splat (i64 -7046029290881679360)
  %84 = add <4 x i64> %83, %82
  %85 = lshr <4 x i64> %71, splat (i64 47)
  %86 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %87 = load <4 x i64>, ptr %86, align 1
  %88 = xor <4 x i64> %87, %85
  %89 = xor <4 x i64> %88, %71
  %90 = bitcast <4 x i64> %89 to <8 x i32>
  %91 = shufflevector <8 x i32> %90, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %92 = bitcast <8 x i32> %91 to <4 x i64>
  %93 = and <4 x i64> %89, splat (i64 4294967295)
  %94 = mul nuw <4 x i64> %93, splat (i64 2654435761)
  %95 = mul <4 x i64> %92, splat (i64 -7046029290881679360)
  %96 = add <4 x i64> %95, %94
  %97 = shl nuw nsw i64 %27, 6
  %98 = getelementptr inbounds nuw i8, ptr %20, i64 %97
  %99 = sub nsw i64 %15, %27
  %100 = icmp eq i32 %14, %26
  br i1 %100, label %169, label %101

101:                                              ; preds = %70, %101
  %102 = phi <4 x i64> [ %132, %101 ], [ %96, %70 ]
  %103 = phi <4 x i64> [ %119, %101 ], [ %84, %70 ]
  %104 = phi i64 [ %133, %101 ], [ 0, %70 ]
  %105 = shl i64 %104, 6
  %106 = getelementptr inbounds nuw i8, ptr %98, i64 %105
  %107 = shl i64 %104, 3
  %108 = getelementptr inbounds nuw i8, ptr %22, i64 %107
  %109 = load <4 x i64>, ptr %106, align 1
  %110 = load <4 x i64>, ptr %108, align 1
  %111 = xor <4 x i64> %110, %109
  %112 = bitcast <4 x i64> %111 to <8 x i32>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = and <4 x i64> %111, splat (i64 4294967295)
  %116 = and <4 x i64> %114, splat (i64 4294967295)
  %117 = mul nuw <4 x i64> %116, %115
  %118 = add <4 x i64> %103, %109
  %119 = add <4 x i64> %118, %117
  %120 = getelementptr inbounds nuw i8, ptr %106, i64 32
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %123 = load <4 x i64>, ptr %122, align 1
  %124 = xor <4 x i64> %123, %121
  %125 = bitcast <4 x i64> %124 to <8 x i32>
  %126 = shufflevector <8 x i32> %125, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %127 = bitcast <8 x i32> %126 to <4 x i64>
  %128 = and <4 x i64> %124, splat (i64 4294967295)
  %129 = and <4 x i64> %127, splat (i64 4294967295)
  %130 = mul nuw <4 x i64> %129, %128
  %131 = add <4 x i64> %102, %121
  %132 = add <4 x i64> %131, %130
  %133 = add nuw i64 %104, 1
  %134 = icmp eq i64 %133, %99
  br i1 %134, label %169, label %101

135:                                              ; preds = %13, %135
  %136 = phi <4 x i64> [ %166, %135 ], [ %9, %13 ]
  %137 = phi <4 x i64> [ %153, %135 ], [ %7, %13 ]
  %138 = phi i64 [ %167, %135 ], [ 0, %13 ]
  %139 = shl i64 %138, 6
  %140 = getelementptr inbounds nuw i8, ptr %20, i64 %139
  %141 = shl i64 %138, 3
  %142 = getelementptr inbounds nuw i8, ptr %31, i64 %141
  %143 = load <4 x i64>, ptr %140, align 1
  %144 = load <4 x i64>, ptr %142, align 1
  %145 = xor <4 x i64> %144, %143
  %146 = bitcast <4 x i64> %145 to <8 x i32>
  %147 = shufflevector <8 x i32> %146, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %148 = bitcast <8 x i32> %147 to <4 x i64>
  %149 = and <4 x i64> %145, splat (i64 4294967295)
  %150 = and <4 x i64> %148, splat (i64 4294967295)
  %151 = mul nuw <4 x i64> %150, %149
  %152 = add <4 x i64> %137, %143
  %153 = add <4 x i64> %152, %151
  %154 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %155 = load <4 x i64>, ptr %154, align 1
  %156 = getelementptr inbounds nuw i8, ptr %142, i64 32
  %157 = load <4 x i64>, ptr %156, align 1
  %158 = xor <4 x i64> %157, %155
  %159 = bitcast <4 x i64> %158 to <8 x i32>
  %160 = shufflevector <8 x i32> %159, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %161 = bitcast <8 x i32> %160 to <4 x i64>
  %162 = and <4 x i64> %158, splat (i64 4294967295)
  %163 = and <4 x i64> %161, splat (i64 4294967295)
  %164 = mul nuw <4 x i64> %163, %162
  %165 = add <4 x i64> %136, %155
  %166 = add <4 x i64> %165, %164
  %167 = add nuw nsw i64 %138, 1
  %168 = icmp eq i64 %167, %15
  br i1 %168, label %169, label %135

169:                                              ; preds = %101, %135, %70
  %170 = phi <4 x i64> [ %96, %70 ], [ %166, %135 ], [ %132, %101 ]
  %171 = phi <4 x i64> [ %84, %70 ], [ %153, %135 ], [ %119, %101 ]
  %172 = and i32 %11, 63
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %248, label %174

174:                                              ; preds = %169
  %175 = zext i32 %11 to i64
  %176 = getelementptr inbounds nuw i8, ptr %20, i64 %175
  %177 = getelementptr inbounds i8, ptr %176, i64 -64
  %178 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %179 = getelementptr inbounds i8, ptr %178, i64 -7
  %180 = load <4 x i64>, ptr %177, align 1
  %181 = load <4 x i64>, ptr %179, align 1
  %182 = xor <4 x i64> %181, %180
  %183 = bitcast <4 x i64> %182 to <8 x i32>
  %184 = shufflevector <8 x i32> %183, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %185 = bitcast <8 x i32> %184 to <4 x i64>
  %186 = and <4 x i64> %182, splat (i64 4294967295)
  %187 = and <4 x i64> %185, splat (i64 4294967295)
  %188 = mul nuw <4 x i64> %187, %186
  %189 = add <4 x i64> %171, %180
  %190 = add <4 x i64> %189, %188
  %191 = getelementptr inbounds i8, ptr %176, i64 -32
  %192 = load <4 x i64>, ptr %191, align 1
  %193 = getelementptr inbounds nuw i8, ptr %178, i64 25
  %194 = load <4 x i64>, ptr %193, align 1
  %195 = xor <4 x i64> %194, %192
  %196 = bitcast <4 x i64> %195 to <8 x i32>
  %197 = shufflevector <8 x i32> %196, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %198 = bitcast <8 x i32> %197 to <4 x i64>
  %199 = and <4 x i64> %195, splat (i64 4294967295)
  %200 = and <4 x i64> %198, splat (i64 4294967295)
  %201 = mul nuw <4 x i64> %200, %199
  %202 = add <4 x i64> %170, %192
  %203 = add <4 x i64> %202, %201
  br label %248

204:                                              ; preds = %6
  %205 = icmp eq i32 %11, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %204
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %208 = load ptr, ptr %207, align 16
  br label %248

209:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #26
  %210 = sub nuw nsw i32 64, %11
  %211 = zext nneg i32 %210 to i64
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %213 = sub nsw i64 0, %211
  %214 = getelementptr inbounds i8, ptr %10, i64 %213
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %214, i64 %211, i1 false)
  %215 = getelementptr inbounds nuw i8, ptr %2, i64 %211
  %216 = zext nneg i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %215, ptr nonnull align 64 %212, i64 %216, i1 false)
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %218 = load ptr, ptr %217, align 16
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %220 = load i32, ptr %219, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds nuw i8, ptr %218, i64 %221
  %223 = getelementptr inbounds i8, ptr %222, i64 -7
  %224 = load <4 x i64>, ptr %2, align 16
  %225 = load <4 x i64>, ptr %223, align 1
  %226 = xor <4 x i64> %225, %224
  %227 = bitcast <4 x i64> %226 to <8 x i32>
  %228 = shufflevector <8 x i32> %227, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %229 = bitcast <8 x i32> %228 to <4 x i64>
  %230 = and <4 x i64> %226, splat (i64 4294967295)
  %231 = and <4 x i64> %229, splat (i64 4294967295)
  %232 = mul nuw <4 x i64> %231, %230
  %233 = add <4 x i64> %7, %224
  %234 = add <4 x i64> %233, %232
  %235 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %236 = load <4 x i64>, ptr %235, align 16
  %237 = getelementptr inbounds nuw i8, ptr %222, i64 25
  %238 = load <4 x i64>, ptr %237, align 1
  %239 = xor <4 x i64> %238, %236
  %240 = bitcast <4 x i64> %239 to <8 x i32>
  %241 = shufflevector <8 x i32> %240, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %242 = bitcast <8 x i32> %241 to <4 x i64>
  %243 = and <4 x i64> %239, splat (i64 4294967295)
  %244 = and <4 x i64> %242, splat (i64 4294967295)
  %245 = mul nuw <4 x i64> %244, %243
  %246 = add <4 x i64> %9, %236
  %247 = add <4 x i64> %246, %245
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #26
  br label %248

248:                                              ; preds = %206, %174, %169, %209
  %249 = phi ptr [ %22, %169 ], [ %22, %174 ], [ %208, %206 ], [ %218, %209 ]
  %250 = phi <4 x i64> [ %170, %169 ], [ %203, %174 ], [ %9, %206 ], [ %247, %209 ]
  %251 = phi <4 x i64> [ %171, %169 ], [ %190, %174 ], [ %7, %206 ], [ %234, %209 ]
  %252 = getelementptr inbounds nuw i8, ptr %249, i64 11
  %253 = mul i64 %4, -7046029288634856825
  %254 = extractelement <4 x i64> %251, i64 0
  %255 = load i64, ptr %252, align 1
  %256 = xor i64 %255, %254
  %257 = extractelement <4 x i64> %251, i64 1
  %258 = getelementptr inbounds nuw i8, ptr %249, i64 19
  %259 = load i64, ptr %258, align 1
  %260 = xor i64 %259, %257
  %261 = zext i64 %256 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %253, %266
  %268 = getelementptr inbounds nuw i8, ptr %249, i64 27
  %269 = extractelement <4 x i64> %251, i64 2
  %270 = load i64, ptr %268, align 1
  %271 = xor i64 %270, %269
  %272 = extractelement <4 x i64> %251, i64 3
  %273 = getelementptr inbounds nuw i8, ptr %249, i64 35
  %274 = load i64, ptr %273, align 1
  %275 = xor i64 %274, %272
  %276 = zext i64 %271 to i128
  %277 = zext i64 %275 to i128
  %278 = mul nuw i128 %277, %276
  %279 = lshr i128 %278, 64
  %280 = xor i128 %279, %278
  %281 = trunc i128 %280 to i64
  %282 = add i64 %267, %281
  %283 = getelementptr inbounds nuw i8, ptr %249, i64 43
  %284 = extractelement <4 x i64> %250, i64 0
  %285 = load i64, ptr %283, align 1
  %286 = xor i64 %285, %284
  %287 = extractelement <4 x i64> %250, i64 1
  %288 = getelementptr inbounds nuw i8, ptr %249, i64 51
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %289, %287
  %291 = zext i64 %286 to i128
  %292 = zext i64 %290 to i128
  %293 = mul nuw i128 %292, %291
  %294 = lshr i128 %293, 64
  %295 = xor i128 %294, %293
  %296 = trunc i128 %295 to i64
  %297 = add i64 %282, %296
  %298 = getelementptr inbounds nuw i8, ptr %249, i64 59
  %299 = extractelement <4 x i64> %250, i64 2
  %300 = load i64, ptr %298, align 1
  %301 = xor i64 %300, %299
  %302 = extractelement <4 x i64> %250, i64 3
  %303 = getelementptr inbounds nuw i8, ptr %249, i64 67
  %304 = load i64, ptr %303, align 1
  %305 = xor i64 %304, %302
  %306 = zext i64 %301 to i128
  %307 = zext i64 %305 to i128
  %308 = mul nuw i128 %307, %306
  %309 = lshr i128 %308, 64
  %310 = xor i128 %309, %308
  %311 = trunc i128 %310 to i64
  %312 = add i64 %297, %311
  %313 = lshr i64 %312, 37
  %314 = xor i64 %313, %312
  %315 = mul i64 %314, 1609587929392839161
  %316 = lshr i64 %315, 32
  %317 = xor i64 %316, %315
  br label %792

318:                                              ; preds = %1
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %320 = load i64, ptr %319, align 32
  %321 = icmp eq i64 %320, 0
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %321, label %548, label %323

323:                                              ; preds = %318
  %324 = icmp samesign ult i64 %4, 17
  br i1 %324, label %325, label %402

325:                                              ; preds = %323
  %326 = icmp samesign ugt i64 %4, 8
  br i1 %326, label %327, label %350

327:                                              ; preds = %325
  %328 = load i64, ptr %322, align 1
  %329 = add i64 %320, -4734510112055689544
  %330 = xor i64 %328, %329
  %331 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %332 = getelementptr inbounds i8, ptr %331, i64 -8
  %333 = load i64, ptr %332, align 1
  %334 = sub i64 2066345149520216444, %320
  %335 = xor i64 %333, %334
  %336 = zext i64 %330 to i128
  %337 = zext i64 %335 to i128
  %338 = mul nuw i128 %337, %336
  %339 = lshr i128 %338, 64
  %340 = xor i128 %339, %338
  %341 = trunc i128 %340 to i64
  %342 = add i64 %330, %4
  %343 = add i64 %342, %335
  %344 = add i64 %343, %341
  %345 = lshr i64 %344, 37
  %346 = xor i64 %345, %344
  %347 = mul i64 %346, 1609587929392839161
  %348 = lshr i64 %347, 32
  %349 = xor i64 %348, %347
  br label %792

350:                                              ; preds = %325
  %351 = icmp samesign ugt i64 %4, 3
  br i1 %351, label %352, label %375

352:                                              ; preds = %350
  %353 = load i32, ptr %322, align 1
  %354 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %355 = getelementptr inbounds i8, ptr %354, i64 -4
  %356 = load i32, ptr %355, align 1
  %357 = zext i32 %353 to i64
  %358 = zext i32 %356 to i64
  %359 = shl nuw i64 %358, 32
  %360 = or disjoint i64 %359, %357
  %361 = add i64 %320, -4734510112055689544
  %362 = xor i64 %360, %361
  %363 = lshr i64 %362, 51
  %364 = xor i64 %363, %362
  %365 = mul i64 %364, 2654435761
  %366 = add i64 %365, %4
  %367 = lshr i64 %366, 47
  %368 = xor i64 %367, %366
  %369 = mul i64 %368, -4417276706812531889
  %370 = lshr i64 %369, 37
  %371 = xor i64 %370, %369
  %372 = mul i64 %371, 1609587929392839161
  %373 = lshr i64 %372, 32
  %374 = xor i64 %373, %372
  br label %792

375:                                              ; preds = %350
  %376 = icmp eq i64 %4, 0
  br i1 %376, label %792, label %377

377:                                              ; preds = %375
  %378 = load i8, ptr %322, align 1
  %379 = lshr i64 %4, 1
  %380 = getelementptr inbounds nuw i8, ptr %322, i64 %379
  %381 = load i8, ptr %380, align 1
  %382 = getelementptr i8, ptr %322, i64 %4
  %383 = getelementptr i8, ptr %382, i64 -1
  %384 = load i8, ptr %383, align 1
  %385 = zext i8 %378 to i64
  %386 = zext i8 %381 to i64
  %387 = shl nuw nsw i64 %386, 8
  %388 = zext i8 %384 to i64
  %389 = shl nuw nsw i64 %388, 16
  %390 = shl nuw nsw i64 %4, 24
  %391 = or disjoint i64 %390, %385
  %392 = or disjoint i64 %391, %387
  %393 = or disjoint i64 %392, %389
  %394 = add i64 %320, 963444408
  %395 = xor i64 %393, %394
  %396 = mul i64 %395, -7046029288634856825
  %397 = lshr i64 %396, 37
  %398 = xor i64 %397, %396
  %399 = mul i64 %398, 1609587929392839161
  %400 = lshr i64 %399, 32
  %401 = xor i64 %400, %399
  br label %792

402:                                              ; preds = %323
  %403 = icmp samesign ult i64 %4, 129
  br i1 %403, label %404, label %546

404:                                              ; preds = %402
  %405 = mul i64 %4, -7046029288634856825
  %406 = icmp samesign ugt i64 %4, 32
  br i1 %406, label %407, label %509

407:                                              ; preds = %404
  %408 = icmp samesign ugt i64 %4, 64
  br i1 %408, label %409, label %476

409:                                              ; preds = %407
  %410 = icmp samesign ugt i64 %4, 96
  br i1 %410, label %411, label %443

411:                                              ; preds = %409
  %412 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %413 = load i64, ptr %412, align 1
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %415 = load i64, ptr %414, align 1
  %416 = add i64 %320, 4554437623014685352
  %417 = xor i64 %413, %416
  %418 = sub i64 2111919702937427193, %320
  %419 = xor i64 %415, %418
  %420 = zext i64 %417 to i128
  %421 = zext i64 %419 to i128
  %422 = mul nuw i128 %421, %420
  %423 = lshr i128 %422, 64
  %424 = xor i128 %423, %422
  %425 = trunc i128 %424 to i64
  %426 = add i64 %405, %425
  %427 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %428 = getelementptr inbounds i8, ptr %427, i64 -64
  %429 = load i64, ptr %428, align 1
  %430 = getelementptr inbounds i8, ptr %427, i64 -56
  %431 = load i64, ptr %430, align 1
  %432 = add i64 %320, 3556072174620004746
  %433 = xor i64 %429, %432
  %434 = sub i64 7238261902898274248, %320
  %435 = xor i64 %431, %434
  %436 = zext i64 %433 to i128
  %437 = zext i64 %435 to i128
  %438 = mul nuw i128 %437, %436
  %439 = lshr i128 %438, 64
  %440 = xor i128 %439, %438
  %441 = trunc i128 %440 to i64
  %442 = add i64 %426, %441
  br label %443

443:                                              ; preds = %411, %409
  %444 = phi i64 [ %442, %411 ], [ %405, %409 ]
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %446 = load i64, ptr %445, align 1
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %448 = load i64, ptr %447, align 1
  %449 = add i64 %320, -3818837453329782724
  %450 = xor i64 %446, %449
  %451 = sub i64 -6688317018830679928, %320
  %452 = xor i64 %448, %451
  %453 = zext i64 %450 to i128
  %454 = zext i64 %452 to i128
  %455 = mul nuw i128 %454, %453
  %456 = lshr i128 %455, 64
  %457 = xor i128 %456, %455
  %458 = trunc i128 %457 to i64
  %459 = add i64 %444, %458
  %460 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %461 = getelementptr inbounds i8, ptr %460, i64 -48
  %462 = load i64, ptr %461, align 1
  %463 = getelementptr inbounds i8, ptr %460, i64 -40
  %464 = load i64, ptr %463, align 1
  %465 = add i64 %320, 5690594596133299313
  %466 = xor i64 %462, %465
  %467 = sub i64 -2833645246901970632, %320
  %468 = xor i64 %464, %467
  %469 = zext i64 %466 to i128
  %470 = zext i64 %468 to i128
  %471 = mul nuw i128 %470, %469
  %472 = lshr i128 %471, 64
  %473 = xor i128 %472, %471
  %474 = trunc i128 %473 to i64
  %475 = add i64 %459, %474
  br label %476

476:                                              ; preds = %443, %407
  %477 = phi i64 [ %475, %443 ], [ %405, %407 ]
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %479 = load i64, ptr %478, align 1
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %481 = load i64, ptr %480, align 1
  %482 = add i64 %320, 8711581037947681227
  %483 = xor i64 %479, %482
  %484 = sub i64 2410270004345854594, %320
  %485 = xor i64 %481, %484
  %486 = zext i64 %483 to i128
  %487 = zext i64 %485 to i128
  %488 = mul nuw i128 %487, %486
  %489 = lshr i128 %488, 64
  %490 = xor i128 %489, %488
  %491 = trunc i128 %490 to i64
  %492 = add i64 %477, %491
  %493 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %494 = getelementptr inbounds i8, ptr %493, i64 -32
  %495 = load i64, ptr %494, align 1
  %496 = getelementptr inbounds i8, ptr %493, i64 -24
  %497 = load i64, ptr %496, align 1
  %498 = add i64 %320, -8204357891075471176
  %499 = xor i64 %495, %498
  %500 = sub i64 5487137525590930912, %320
  %501 = xor i64 %497, %500
  %502 = zext i64 %499 to i128
  %503 = zext i64 %501 to i128
  %504 = mul nuw i128 %503, %502
  %505 = lshr i128 %504, 64
  %506 = xor i128 %505, %504
  %507 = trunc i128 %506 to i64
  %508 = add i64 %492, %507
  br label %509

509:                                              ; preds = %476, %404
  %510 = phi i64 [ %508, %476 ], [ %405, %404 ]
  %511 = load i64, ptr %322, align 1
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %513 = load i64, ptr %512, align 1
  %514 = add i64 %320, -4734510112055689544
  %515 = xor i64 %511, %514
  %516 = sub i64 2066345149520216444, %320
  %517 = xor i64 %513, %516
  %518 = zext i64 %515 to i128
  %519 = zext i64 %517 to i128
  %520 = mul nuw i128 %519, %518
  %521 = lshr i128 %520, 64
  %522 = xor i128 %521, %520
  %523 = trunc i128 %522 to i64
  %524 = add i64 %510, %523
  %525 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %526 = getelementptr inbounds i8, ptr %525, i64 -16
  %527 = load i64, ptr %526, align 1
  %528 = getelementptr inbounds i8, ptr %525, i64 -8
  %529 = load i64, ptr %528, align 1
  %530 = add i64 %320, -2623469361688619810
  %531 = xor i64 %527, %530
  %532 = sub i64 2262974939099578482, %320
  %533 = xor i64 %529, %532
  %534 = zext i64 %531 to i128
  %535 = zext i64 %533 to i128
  %536 = mul nuw i128 %535, %534
  %537 = lshr i128 %536, 64
  %538 = xor i128 %537, %536
  %539 = trunc i128 %538 to i64
  %540 = add i64 %524, %539
  %541 = lshr i64 %540, 37
  %542 = xor i64 %541, %540
  %543 = mul i64 %542, 1609587929392839161
  %544 = lshr i64 %543, 32
  %545 = xor i64 %544, %543
  br label %792

546:                                              ; preds = %402
  %547 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %322, i64 noundef %4, ptr noundef nonnull @kSecret, i64 noundef %320)
  br label %792

548:                                              ; preds = %318
  %549 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %550 = load ptr, ptr %549, align 16
  %551 = icmp samesign ult i64 %4, 17
  br i1 %551, label %552, label %631

552:                                              ; preds = %548
  %553 = icmp samesign ugt i64 %4, 8
  br i1 %553, label %554, label %578

554:                                              ; preds = %552
  %555 = load i64, ptr %322, align 1
  %556 = load i64, ptr %550, align 1
  %557 = xor i64 %556, %555
  %558 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %559 = getelementptr inbounds i8, ptr %558, i64 -8
  %560 = load i64, ptr %559, align 1
  %561 = getelementptr inbounds nuw i8, ptr %550, i64 8
  %562 = load i64, ptr %561, align 1
  %563 = xor i64 %562, %560
  %564 = zext i64 %557 to i128
  %565 = zext i64 %563 to i128
  %566 = mul nuw i128 %565, %564
  %567 = lshr i128 %566, 64
  %568 = xor i128 %567, %566
  %569 = trunc i128 %568 to i64
  %570 = add i64 %557, %4
  %571 = add i64 %570, %563
  %572 = add i64 %571, %569
  %573 = lshr i64 %572, 37
  %574 = xor i64 %573, %572
  %575 = mul i64 %574, 1609587929392839161
  %576 = lshr i64 %575, 32
  %577 = xor i64 %576, %575
  br label %792

578:                                              ; preds = %552
  %579 = icmp samesign ugt i64 %4, 3
  br i1 %579, label %580, label %603

580:                                              ; preds = %578
  %581 = load i32, ptr %322, align 1
  %582 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %583 = getelementptr inbounds i8, ptr %582, i64 -4
  %584 = load i32, ptr %583, align 1
  %585 = zext i32 %581 to i64
  %586 = zext i32 %584 to i64
  %587 = shl nuw i64 %586, 32
  %588 = or disjoint i64 %587, %585
  %589 = load i64, ptr %550, align 1
  %590 = xor i64 %588, %589
  %591 = lshr i64 %590, 51
  %592 = xor i64 %591, %590
  %593 = mul i64 %592, 2654435761
  %594 = add i64 %593, %4
  %595 = lshr i64 %594, 47
  %596 = xor i64 %595, %594
  %597 = mul i64 %596, -4417276706812531889
  %598 = lshr i64 %597, 37
  %599 = xor i64 %598, %597
  %600 = mul i64 %599, 1609587929392839161
  %601 = lshr i64 %600, 32
  %602 = xor i64 %601, %600
  br label %792

603:                                              ; preds = %578
  %604 = icmp eq i64 %4, 0
  br i1 %604, label %792, label %605

605:                                              ; preds = %603
  %606 = load i8, ptr %322, align 1
  %607 = lshr i64 %4, 1
  %608 = getelementptr inbounds nuw i8, ptr %322, i64 %607
  %609 = load i8, ptr %608, align 1
  %610 = getelementptr i8, ptr %322, i64 %4
  %611 = getelementptr i8, ptr %610, i64 -1
  %612 = load i8, ptr %611, align 1
  %613 = zext i8 %606 to i64
  %614 = zext i8 %609 to i64
  %615 = shl nuw nsw i64 %614, 8
  %616 = zext i8 %612 to i64
  %617 = shl nuw nsw i64 %616, 16
  %618 = shl nuw nsw i64 %4, 24
  %619 = or disjoint i64 %618, %613
  %620 = or disjoint i64 %619, %615
  %621 = or disjoint i64 %620, %617
  %622 = load i32, ptr %550, align 1
  %623 = zext i32 %622 to i64
  %624 = xor i64 %621, %623
  %625 = mul i64 %624, -7046029288634856825
  %626 = lshr i64 %625, 37
  %627 = xor i64 %626, %625
  %628 = mul i64 %627, 1609587929392839161
  %629 = lshr i64 %628, 32
  %630 = xor i64 %629, %628
  br label %792

631:                                              ; preds = %548
  %632 = icmp samesign ult i64 %4, 129
  br i1 %632, label %633, label %790

633:                                              ; preds = %631
  %634 = mul i64 %4, -7046029288634856825
  %635 = icmp samesign ugt i64 %4, 32
  br i1 %635, label %636, label %750

636:                                              ; preds = %633
  %637 = icmp samesign ugt i64 %4, 64
  br i1 %637, label %638, label %713

638:                                              ; preds = %636
  %639 = icmp samesign ugt i64 %4, 96
  br i1 %639, label %640, label %676

640:                                              ; preds = %638
  %641 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %642 = getelementptr inbounds nuw i8, ptr %550, i64 96
  %643 = load i64, ptr %641, align 1
  %644 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %645 = load i64, ptr %644, align 1
  %646 = load i64, ptr %642, align 1
  %647 = xor i64 %646, %643
  %648 = getelementptr inbounds nuw i8, ptr %550, i64 104
  %649 = load i64, ptr %648, align 1
  %650 = xor i64 %649, %645
  %651 = zext i64 %647 to i128
  %652 = zext i64 %650 to i128
  %653 = mul nuw i128 %652, %651
  %654 = lshr i128 %653, 64
  %655 = xor i128 %654, %653
  %656 = trunc i128 %655 to i64
  %657 = add i64 %634, %656
  %658 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %659 = getelementptr inbounds i8, ptr %658, i64 -64
  %660 = getelementptr inbounds nuw i8, ptr %550, i64 112
  %661 = load i64, ptr %659, align 1
  %662 = getelementptr inbounds i8, ptr %658, i64 -56
  %663 = load i64, ptr %662, align 1
  %664 = load i64, ptr %660, align 1
  %665 = xor i64 %664, %661
  %666 = getelementptr inbounds nuw i8, ptr %550, i64 120
  %667 = load i64, ptr %666, align 1
  %668 = xor i64 %667, %663
  %669 = zext i64 %665 to i128
  %670 = zext i64 %668 to i128
  %671 = mul nuw i128 %670, %669
  %672 = lshr i128 %671, 64
  %673 = xor i128 %672, %671
  %674 = trunc i128 %673 to i64
  %675 = add i64 %657, %674
  br label %676

676:                                              ; preds = %640, %638
  %677 = phi i64 [ %675, %640 ], [ %634, %638 ]
  %678 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %679 = getelementptr inbounds nuw i8, ptr %550, i64 64
  %680 = load i64, ptr %678, align 1
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %682 = load i64, ptr %681, align 1
  %683 = load i64, ptr %679, align 1
  %684 = xor i64 %683, %680
  %685 = getelementptr inbounds nuw i8, ptr %550, i64 72
  %686 = load i64, ptr %685, align 1
  %687 = xor i64 %686, %682
  %688 = zext i64 %684 to i128
  %689 = zext i64 %687 to i128
  %690 = mul nuw i128 %689, %688
  %691 = lshr i128 %690, 64
  %692 = xor i128 %691, %690
  %693 = trunc i128 %692 to i64
  %694 = add i64 %677, %693
  %695 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %696 = getelementptr inbounds i8, ptr %695, i64 -48
  %697 = getelementptr inbounds nuw i8, ptr %550, i64 80
  %698 = load i64, ptr %696, align 1
  %699 = getelementptr inbounds i8, ptr %695, i64 -40
  %700 = load i64, ptr %699, align 1
  %701 = load i64, ptr %697, align 1
  %702 = xor i64 %701, %698
  %703 = getelementptr inbounds nuw i8, ptr %550, i64 88
  %704 = load i64, ptr %703, align 1
  %705 = xor i64 %704, %700
  %706 = zext i64 %702 to i128
  %707 = zext i64 %705 to i128
  %708 = mul nuw i128 %707, %706
  %709 = lshr i128 %708, 64
  %710 = xor i128 %709, %708
  %711 = trunc i128 %710 to i64
  %712 = add i64 %694, %711
  br label %713

713:                                              ; preds = %676, %636
  %714 = phi i64 [ %712, %676 ], [ %634, %636 ]
  %715 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %716 = getelementptr inbounds nuw i8, ptr %550, i64 32
  %717 = load i64, ptr %715, align 1
  %718 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %719 = load i64, ptr %718, align 1
  %720 = load i64, ptr %716, align 1
  %721 = xor i64 %720, %717
  %722 = getelementptr inbounds nuw i8, ptr %550, i64 40
  %723 = load i64, ptr %722, align 1
  %724 = xor i64 %723, %719
  %725 = zext i64 %721 to i128
  %726 = zext i64 %724 to i128
  %727 = mul nuw i128 %726, %725
  %728 = lshr i128 %727, 64
  %729 = xor i128 %728, %727
  %730 = trunc i128 %729 to i64
  %731 = add i64 %714, %730
  %732 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %733 = getelementptr inbounds i8, ptr %732, i64 -32
  %734 = getelementptr inbounds nuw i8, ptr %550, i64 48
  %735 = load i64, ptr %733, align 1
  %736 = getelementptr inbounds i8, ptr %732, i64 -24
  %737 = load i64, ptr %736, align 1
  %738 = load i64, ptr %734, align 1
  %739 = xor i64 %738, %735
  %740 = getelementptr inbounds nuw i8, ptr %550, i64 56
  %741 = load i64, ptr %740, align 1
  %742 = xor i64 %741, %737
  %743 = zext i64 %739 to i128
  %744 = zext i64 %742 to i128
  %745 = mul nuw i128 %744, %743
  %746 = lshr i128 %745, 64
  %747 = xor i128 %746, %745
  %748 = trunc i128 %747 to i64
  %749 = add i64 %731, %748
  br label %750

750:                                              ; preds = %713, %633
  %751 = phi i64 [ %749, %713 ], [ %634, %633 ]
  %752 = load i64, ptr %322, align 1
  %753 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %754 = load i64, ptr %753, align 1
  %755 = load i64, ptr %550, align 1
  %756 = xor i64 %755, %752
  %757 = getelementptr inbounds nuw i8, ptr %550, i64 8
  %758 = load i64, ptr %757, align 1
  %759 = xor i64 %758, %754
  %760 = zext i64 %756 to i128
  %761 = zext i64 %759 to i128
  %762 = mul nuw i128 %761, %760
  %763 = lshr i128 %762, 64
  %764 = xor i128 %763, %762
  %765 = trunc i128 %764 to i64
  %766 = add i64 %751, %765
  %767 = getelementptr inbounds nuw i8, ptr %322, i64 %4
  %768 = getelementptr inbounds i8, ptr %767, i64 -16
  %769 = getelementptr inbounds nuw i8, ptr %550, i64 16
  %770 = load i64, ptr %768, align 1
  %771 = getelementptr inbounds i8, ptr %767, i64 -8
  %772 = load i64, ptr %771, align 1
  %773 = load i64, ptr %769, align 1
  %774 = xor i64 %773, %770
  %775 = getelementptr inbounds nuw i8, ptr %550, i64 24
  %776 = load i64, ptr %775, align 1
  %777 = xor i64 %776, %772
  %778 = zext i64 %774 to i128
  %779 = zext i64 %777 to i128
  %780 = mul nuw i128 %779, %778
  %781 = lshr i128 %780, 64
  %782 = xor i128 %781, %780
  %783 = trunc i128 %782 to i64
  %784 = add i64 %766, %783
  %785 = lshr i64 %784, 37
  %786 = xor i64 %785, %784
  %787 = mul i64 %786, 1609587929392839161
  %788 = lshr i64 %787, 32
  %789 = xor i64 %788, %787
  br label %792

790:                                              ; preds = %631
  %791 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %322, i64 noundef %4, ptr noundef readonly %550, i64 noundef 0)
  br label %792

792:                                              ; preds = %790, %750, %605, %603, %580, %554, %546, %509, %377, %375, %352, %327, %248
  %793 = phi i64 [ %317, %248 ], [ %545, %509 ], [ %547, %546 ], [ %349, %327 ], [ %374, %352 ], [ %401, %377 ], [ 0, %375 ], [ %789, %750 ], [ %791, %790 ], [ %577, %554 ], [ %602, %580 ], [ %630, %605 ], [ 0, %603 ]
  ret i64 %793
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %122

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %42

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -8
  %10 = load i64, ptr %9, align 1
  %11 = xor i64 %10, 2066345149520216444
  %12 = xor i64 %7, %11
  %13 = xor i64 %12, -4734510112055689544
  %14 = zext i64 %13 to i128
  %15 = mul nuw i128 %14, 11400714785074694791
  %16 = trunc i128 %15 to i64
  %17 = lshr i128 %15, 64
  %18 = trunc nuw i128 %17 to i64
  %19 = mul nuw nsw i64 %1, 374761393
  %20 = add i64 %19, %16
  %21 = mul i64 %11, -7046029288634856825
  %22 = add i64 %21, %18
  %23 = lshr i64 %22, 32
  %24 = xor i64 %23, %20
  %25 = zext i64 %24 to i128
  %26 = mul nuw i128 %25, 14029467366897019727
  %27 = trunc i128 %26 to i64
  %28 = lshr i128 %26, 64
  %29 = trunc nuw i128 %28 to i64
  %30 = mul i64 %22, -4417276706812531889
  %31 = add i64 %30, %29
  %32 = lshr i64 %27, 37
  %33 = xor i64 %32, %27
  %34 = mul i64 %33, 1609587929392839161
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  %37 = lshr i64 %31, 37
  %38 = xor i64 %37, %31
  %39 = mul i64 %38, 1609587929392839161
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  br label %117

42:                                               ; preds = %4
  %43 = icmp samesign ugt i64 %1, 3
  br i1 %43, label %44, label %80

44:                                               ; preds = %42
  %45 = load i32, ptr %0, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %47 = getelementptr inbounds i8, ptr %46, i64 -4
  %48 = load i32, ptr %47, align 1
  %49 = zext i32 %45 to i64
  %50 = zext i32 %48 to i64
  %51 = shl nuw i64 %50, 32
  %52 = or disjoint i64 %51, %49
  %53 = xor i64 %52, -4734510112055689544
  %54 = xor i64 %52, 8935565165804498204
  %55 = tail call i64 @llvm.bswap.i64(i64 %54)
  %56 = lshr i64 %53, 51
  %57 = xor i64 %56, %53
  %58 = mul i64 %57, 2654435761
  %59 = add i64 %58, %1
  %60 = lshr i64 %59, 47
  %61 = xor i64 %60, %59
  %62 = mul i64 %61, -4417276706812531889
  %63 = lshr i64 %55, 47
  %64 = xor i64 %63, %55
  %65 = mul i64 %64, -7046029288634856825
  %66 = sub i64 %65, %1
  %67 = lshr i64 %66, 43
  %68 = xor i64 %67, %66
  %69 = mul i64 %68, -8796714831421723037
  %70 = lshr i64 %62, 37
  %71 = xor i64 %70, %62
  %72 = mul i64 %71, 1609587929392839161
  %73 = lshr i64 %72, 32
  %74 = xor i64 %73, %72
  %75 = lshr i64 %69, 37
  %76 = xor i64 %75, %69
  %77 = mul i64 %76, 1609587929392839161
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  br label %117

80:                                               ; preds = %42
  %81 = icmp eq i64 %1, 0
  br i1 %81, label %117, label %82

82:                                               ; preds = %80
  %83 = load i8, ptr %0, align 1
  %84 = lshr i64 %1, 1
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 %84
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr i8, ptr %0, i64 %1
  %88 = getelementptr i8, ptr %87, i64 -1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %83 to i32
  %91 = zext i8 %86 to i32
  %92 = shl nuw nsw i32 %91, 8
  %93 = or disjoint i32 %92, %90
  %94 = zext i8 %89 to i32
  %95 = shl nuw nsw i32 %94, 16
  %96 = or disjoint i32 %93, %95
  %97 = trunc nuw nsw i64 %1 to i32
  %98 = shl nuw nsw i32 %97, 24
  %99 = or disjoint i32 %96, %98
  %100 = xor i32 %99, 963444408
  %101 = zext nneg i32 %100 to i64
  %102 = xor i32 %99, 597969854
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %104 = zext i32 %103 to i64
  %105 = mul i64 %101, -7046029288634856825
  %106 = mul i64 %104, 2870177450012600261
  %107 = lshr i64 %105, 37
  %108 = xor i64 %107, %105
  %109 = mul i64 %108, 1609587929392839161
  %110 = lshr i64 %109, 32
  %111 = xor i64 %110, %109
  %112 = lshr i64 %106, 37
  %113 = xor i64 %112, %106
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  br label %117

117:                                              ; preds = %6, %44, %80, %82
  %118 = phi i64 [ %41, %6 ], [ %79, %44 ], [ %116, %82 ], [ 0, %80 ]
  %119 = phi i64 [ %36, %6 ], [ %74, %44 ], [ %111, %82 ], [ 0, %80 ]
  %120 = insertvalue { i64, i64 } poison, i64 %119, 0
  %121 = insertvalue { i64, i64 } %120, i64 %118, 1
  br label %288

122:                                              ; preds = %2
  %123 = icmp ult i64 %1, 129
  br i1 %123, label %124, label %282

124:                                              ; preds = %122
  %125 = mul i64 %1, -7046029288634856825
  %126 = icmp samesign ugt i64 %1, 32
  br i1 %126, label %127, label %230

127:                                              ; preds = %124
  %128 = icmp samesign ugt i64 %1, 64
  br i1 %128, label %129, label %196

129:                                              ; preds = %127
  %130 = icmp samesign ugt i64 %1, 96
  br i1 %130, label %131, label %162

131:                                              ; preds = %129
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %134 = getelementptr inbounds i8, ptr %133, i64 -64
  %135 = load i64, ptr %132, align 1
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %137 = load i64, ptr %136, align 1
  %138 = xor i64 %135, 4554437623014685352
  %139 = xor i64 %137, 2111919702937427193
  %140 = zext i64 %138 to i128
  %141 = zext i64 %139 to i128
  %142 = mul nuw i128 %141, %140
  %143 = lshr i128 %142, 64
  %144 = xor i128 %143, %142
  %145 = trunc i128 %144 to i64
  %146 = add i64 %125, %145
  %147 = load i64, ptr %134, align 1
  %148 = getelementptr inbounds i8, ptr %133, i64 -56
  %149 = load i64, ptr %148, align 1
  %150 = add i64 %149, %147
  %151 = xor i64 %146, %150
  %152 = xor i64 %147, 3556072174620004746
  %153 = xor i64 %149, 7238261902898274248
  %154 = zext i64 %152 to i128
  %155 = zext i64 %153 to i128
  %156 = mul nuw i128 %155, %154
  %157 = lshr i128 %156, 64
  %158 = xor i128 %157, %156
  %159 = trunc i128 %158 to i64
  %160 = add i64 %137, %135
  %161 = xor i64 %160, %159
  br label %162

162:                                              ; preds = %131, %129
  %163 = phi i64 [ %151, %131 ], [ %125, %129 ]
  %164 = phi i64 [ %161, %131 ], [ 0, %129 ]
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %167 = getelementptr inbounds i8, ptr %166, i64 -48
  %168 = load i64, ptr %165, align 1
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %170 = load i64, ptr %169, align 1
  %171 = xor i64 %168, -3818837453329782724
  %172 = xor i64 %170, -6688317018830679928
  %173 = zext i64 %171 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %163, %178
  %180 = load i64, ptr %167, align 1
  %181 = getelementptr inbounds i8, ptr %166, i64 -40
  %182 = load i64, ptr %181, align 1
  %183 = add i64 %182, %180
  %184 = xor i64 %179, %183
  %185 = xor i64 %180, 5690594596133299313
  %186 = xor i64 %182, -2833645246901970632
  %187 = zext i64 %185 to i128
  %188 = zext i64 %186 to i128
  %189 = mul nuw i128 %188, %187
  %190 = lshr i128 %189, 64
  %191 = xor i128 %190, %189
  %192 = trunc i128 %191 to i64
  %193 = add i64 %164, %192
  %194 = add i64 %170, %168
  %195 = xor i64 %193, %194
  br label %196

196:                                              ; preds = %162, %127
  %197 = phi i64 [ %184, %162 ], [ %125, %127 ]
  %198 = phi i64 [ %195, %162 ], [ 0, %127 ]
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %201 = getelementptr inbounds i8, ptr %200, i64 -32
  %202 = load i64, ptr %199, align 1
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %204 = load i64, ptr %203, align 1
  %205 = xor i64 %202, 8711581037947681227
  %206 = xor i64 %204, 2410270004345854594
  %207 = zext i64 %205 to i128
  %208 = zext i64 %206 to i128
  %209 = mul nuw i128 %208, %207
  %210 = lshr i128 %209, 64
  %211 = xor i128 %210, %209
  %212 = trunc i128 %211 to i64
  %213 = add i64 %197, %212
  %214 = load i64, ptr %201, align 1
  %215 = getelementptr inbounds i8, ptr %200, i64 -24
  %216 = load i64, ptr %215, align 1
  %217 = add i64 %216, %214
  %218 = xor i64 %213, %217
  %219 = xor i64 %214, -8204357891075471176
  %220 = xor i64 %216, 5487137525590930912
  %221 = zext i64 %219 to i128
  %222 = zext i64 %220 to i128
  %223 = mul nuw i128 %222, %221
  %224 = lshr i128 %223, 64
  %225 = xor i128 %224, %223
  %226 = trunc i128 %225 to i64
  %227 = add i64 %198, %226
  %228 = add i64 %204, %202
  %229 = xor i64 %227, %228
  br label %230

230:                                              ; preds = %124, %196
  %231 = phi i64 [ %218, %196 ], [ %125, %124 ]
  %232 = phi i64 [ %229, %196 ], [ 0, %124 ]
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %234 = getelementptr inbounds i8, ptr %233, i64 -16
  %235 = load i64, ptr %0, align 1
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %237 = load i64, ptr %236, align 1
  %238 = xor i64 %235, -4734510112055689544
  %239 = xor i64 %237, 2066345149520216444
  %240 = zext i64 %238 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %231, %245
  %247 = load i64, ptr %234, align 1
  %248 = getelementptr inbounds i8, ptr %233, i64 -8
  %249 = load i64, ptr %248, align 1
  %250 = add i64 %249, %247
  %251 = xor i64 %246, %250
  %252 = xor i64 %247, -2623469361688619810
  %253 = xor i64 %249, 2262974939099578482
  %254 = zext i64 %252 to i128
  %255 = zext i64 %253 to i128
  %256 = mul nuw i128 %255, %254
  %257 = lshr i128 %256, 64
  %258 = xor i128 %257, %256
  %259 = trunc i128 %258 to i64
  %260 = add i64 %232, %259
  %261 = add i64 %237, %235
  %262 = xor i64 %260, %261
  %263 = add i64 %262, %251
  %264 = mul i64 %251, -7046029288634856825
  %265 = mul i64 %262, -8796714831421723037
  %266 = mul i64 %1, -4417276706812531889
  %267 = add i64 %264, %266
  %268 = add i64 %267, %265
  %269 = lshr i64 %263, 37
  %270 = xor i64 %269, %263
  %271 = mul i64 %270, 1609587929392839161
  %272 = lshr i64 %271, 32
  %273 = xor i64 %272, %271
  %274 = lshr i64 %268, 37
  %275 = xor i64 %274, %268
  %276 = mul i64 %275, 1609587929392839161
  %277 = lshr i64 %276, 32
  %278 = xor i64 %277, %276
  %279 = sub i64 0, %278
  %280 = insertvalue { i64, i64 } poison, i64 %273, 0
  %281 = insertvalue { i64, i64 } %280, i64 %279, 1
  br label %288

282:                                              ; preds = %122
  %283 = icmp ult i64 %1, 241
  br i1 %283, label %284, label %286

284:                                              ; preds = %282
  %285 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %288

286:                                              ; preds = %282
  %287 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %288

288:                                              ; preds = %286, %284, %230, %117
  %289 = phi { i64, i64 } [ %121, %117 ], [ %281, %230 ], [ %285, %284 ], [ %287, %286 ]
  ret { i64, i64 } %289
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #15 {
  %5 = trunc nuw nsw i64 %1 to i32
  %6 = mul i64 %1, -7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %0, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 1
  %11 = load i64, ptr %2, align 1
  %12 = add i64 %11, %3
  %13 = xor i64 %12, %8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %15 = load i64, ptr %14, align 1
  %16 = sub i64 %15, %3
  %17 = xor i64 %16, %10
  %18 = zext i64 %13 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %19, %18
  %21 = lshr i128 %20, 64
  %22 = xor i128 %21, %20
  %23 = trunc i128 %22 to i64
  %24 = add i64 %6, %23
  %25 = load i64, ptr %7, align 1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = load i64, ptr %26, align 1
  %28 = add i64 %27, %25
  %29 = xor i64 %24, %28
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %31 = load i64, ptr %30, align 1
  %32 = add i64 %31, %3
  %33 = xor i64 %32, %25
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %35 = load i64, ptr %34, align 1
  %36 = sub i64 %35, %3
  %37 = xor i64 %36, %27
  %38 = zext i64 %33 to i128
  %39 = zext i64 %37 to i128
  %40 = mul nuw i128 %39, %38
  %41 = lshr i128 %40, 64
  %42 = xor i128 %41, %40
  %43 = trunc i128 %42 to i64
  %44 = add i64 %10, %8
  %45 = xor i64 %44, %43
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %49 = load i64, ptr %46, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %51 = load i64, ptr %50, align 1
  %52 = load i64, ptr %48, align 1
  %53 = add i64 %52, %3
  %54 = xor i64 %53, %49
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %56 = load i64, ptr %55, align 1
  %57 = sub i64 %56, %3
  %58 = xor i64 %57, %51
  %59 = zext i64 %54 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %29, %64
  %66 = load i64, ptr %47, align 1
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %68 = load i64, ptr %67, align 1
  %69 = add i64 %68, %66
  %70 = xor i64 %65, %69
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %72 = load i64, ptr %71, align 1
  %73 = add i64 %72, %3
  %74 = xor i64 %73, %66
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %76 = load i64, ptr %75, align 1
  %77 = sub i64 %76, %3
  %78 = xor i64 %77, %68
  %79 = zext i64 %74 to i128
  %80 = zext i64 %78 to i128
  %81 = mul nuw i128 %80, %79
  %82 = lshr i128 %81, 64
  %83 = xor i128 %82, %81
  %84 = trunc i128 %83 to i64
  %85 = add i64 %45, %84
  %86 = add i64 %51, %49
  %87 = xor i64 %85, %86
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %91 = load i64, ptr %88, align 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %93 = load i64, ptr %92, align 1
  %94 = load i64, ptr %90, align 1
  %95 = add i64 %94, %3
  %96 = xor i64 %95, %91
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %98 = load i64, ptr %97, align 1
  %99 = sub i64 %98, %3
  %100 = xor i64 %99, %93
  %101 = zext i64 %96 to i128
  %102 = zext i64 %100 to i128
  %103 = mul nuw i128 %102, %101
  %104 = lshr i128 %103, 64
  %105 = xor i128 %104, %103
  %106 = trunc i128 %105 to i64
  %107 = add i64 %70, %106
  %108 = load i64, ptr %89, align 1
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %110 = load i64, ptr %109, align 1
  %111 = add i64 %110, %108
  %112 = xor i64 %107, %111
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %114 = load i64, ptr %113, align 1
  %115 = add i64 %114, %3
  %116 = xor i64 %115, %108
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %118 = load i64, ptr %117, align 1
  %119 = sub i64 %118, %3
  %120 = xor i64 %119, %110
  %121 = zext i64 %116 to i128
  %122 = zext i64 %120 to i128
  %123 = mul nuw i128 %122, %121
  %124 = lshr i128 %123, 64
  %125 = xor i128 %124, %123
  %126 = trunc i128 %125 to i64
  %127 = add i64 %87, %126
  %128 = add i64 %93, %91
  %129 = xor i64 %127, %128
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %132 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %133 = load i64, ptr %130, align 1
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %135 = load i64, ptr %134, align 1
  %136 = load i64, ptr %132, align 1
  %137 = add i64 %136, %3
  %138 = xor i64 %137, %133
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %140 = load i64, ptr %139, align 1
  %141 = sub i64 %140, %3
  %142 = xor i64 %141, %135
  %143 = zext i64 %138 to i128
  %144 = zext i64 %142 to i128
  %145 = mul nuw i128 %144, %143
  %146 = lshr i128 %145, 64
  %147 = xor i128 %146, %145
  %148 = trunc i128 %147 to i64
  %149 = add i64 %112, %148
  %150 = load i64, ptr %131, align 1
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %152 = load i64, ptr %151, align 1
  %153 = add i64 %152, %150
  %154 = xor i64 %149, %153
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %156 = load i64, ptr %155, align 1
  %157 = add i64 %156, %3
  %158 = xor i64 %157, %150
  %159 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %160 = load i64, ptr %159, align 1
  %161 = sub i64 %160, %3
  %162 = xor i64 %161, %152
  %163 = zext i64 %158 to i128
  %164 = zext i64 %162 to i128
  %165 = mul nuw i128 %164, %163
  %166 = lshr i128 %165, 64
  %167 = xor i128 %166, %165
  %168 = trunc i128 %167 to i64
  %169 = add i64 %129, %168
  %170 = add i64 %135, %133
  %171 = xor i64 %169, %170
  %172 = lshr i32 %5, 5
  %173 = lshr i64 %154, 37
  %174 = xor i64 %173, %154
  %175 = mul i64 %174, 1609587929392839161
  %176 = lshr i64 %175, 32
  %177 = xor i64 %176, %175
  %178 = lshr i64 %171, 37
  %179 = xor i64 %178, %171
  %180 = mul i64 %179, 1609587929392839161
  %181 = lshr i64 %180, 32
  %182 = xor i64 %181, %180
  %183 = icmp eq i32 %172, 4
  br i1 %183, label %315, label %184

184:                                              ; preds = %4
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %187 = getelementptr i8, ptr %2, i64 3
  %188 = load i64, ptr %185, align 1
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %190 = load i64, ptr %189, align 1
  %191 = load i64, ptr %187, align 1
  %192 = add i64 %191, %3
  %193 = xor i64 %192, %188
  %194 = getelementptr i8, ptr %2, i64 11
  %195 = load i64, ptr %194, align 1
  %196 = sub i64 %195, %3
  %197 = xor i64 %196, %190
  %198 = zext i64 %193 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %177, %203
  %205 = load i64, ptr %186, align 1
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %207 = load i64, ptr %206, align 1
  %208 = add i64 %207, %205
  %209 = xor i64 %204, %208
  %210 = getelementptr i8, ptr %2, i64 19
  %211 = load i64, ptr %210, align 1
  %212 = add i64 %211, %3
  %213 = xor i64 %212, %205
  %214 = getelementptr i8, ptr %2, i64 27
  %215 = load i64, ptr %214, align 1
  %216 = sub i64 %215, %3
  %217 = xor i64 %216, %207
  %218 = zext i64 %213 to i128
  %219 = zext i64 %217 to i128
  %220 = mul nuw i128 %219, %218
  %221 = lshr i128 %220, 64
  %222 = xor i128 %221, %220
  %223 = trunc i128 %222 to i64
  %224 = add i64 %182, %223
  %225 = add i64 %190, %188
  %226 = xor i64 %224, %225
  %227 = icmp eq i32 %172, 5
  br i1 %227, label %315, label %228

228:                                              ; preds = %184
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %231 = getelementptr i8, ptr %2, i64 35
  %232 = load i64, ptr %229, align 1
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %234 = load i64, ptr %233, align 1
  %235 = load i64, ptr %231, align 1
  %236 = add i64 %235, %3
  %237 = xor i64 %236, %232
  %238 = getelementptr i8, ptr %2, i64 43
  %239 = load i64, ptr %238, align 1
  %240 = sub i64 %239, %3
  %241 = xor i64 %240, %234
  %242 = zext i64 %237 to i128
  %243 = zext i64 %241 to i128
  %244 = mul nuw i128 %243, %242
  %245 = lshr i128 %244, 64
  %246 = xor i128 %245, %244
  %247 = trunc i128 %246 to i64
  %248 = add i64 %209, %247
  %249 = load i64, ptr %230, align 1
  %250 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %251 = load i64, ptr %250, align 1
  %252 = add i64 %251, %249
  %253 = xor i64 %248, %252
  %254 = getelementptr i8, ptr %2, i64 51
  %255 = load i64, ptr %254, align 1
  %256 = add i64 %255, %3
  %257 = xor i64 %256, %249
  %258 = getelementptr i8, ptr %2, i64 59
  %259 = load i64, ptr %258, align 1
  %260 = sub i64 %259, %3
  %261 = xor i64 %260, %251
  %262 = zext i64 %257 to i128
  %263 = zext i64 %261 to i128
  %264 = mul nuw i128 %263, %262
  %265 = lshr i128 %264, 64
  %266 = xor i128 %265, %264
  %267 = trunc i128 %266 to i64
  %268 = add i64 %226, %267
  %269 = add i64 %234, %232
  %270 = xor i64 %268, %269
  %271 = icmp eq i32 %172, 6
  br i1 %271, label %315, label %272

272:                                              ; preds = %228
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %275 = getelementptr i8, ptr %2, i64 67
  %276 = load i64, ptr %273, align 1
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %278 = load i64, ptr %277, align 1
  %279 = load i64, ptr %275, align 1
  %280 = add i64 %279, %3
  %281 = xor i64 %280, %276
  %282 = getelementptr i8, ptr %2, i64 75
  %283 = load i64, ptr %282, align 1
  %284 = sub i64 %283, %3
  %285 = xor i64 %284, %278
  %286 = zext i64 %281 to i128
  %287 = zext i64 %285 to i128
  %288 = mul nuw i128 %287, %286
  %289 = lshr i128 %288, 64
  %290 = xor i128 %289, %288
  %291 = trunc i128 %290 to i64
  %292 = add i64 %253, %291
  %293 = load i64, ptr %274, align 1
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %295 = load i64, ptr %294, align 1
  %296 = add i64 %295, %293
  %297 = xor i64 %292, %296
  %298 = getelementptr i8, ptr %2, i64 83
  %299 = load i64, ptr %298, align 1
  %300 = add i64 %299, %3
  %301 = xor i64 %300, %293
  %302 = getelementptr i8, ptr %2, i64 91
  %303 = load i64, ptr %302, align 1
  %304 = sub i64 %303, %3
  %305 = xor i64 %304, %295
  %306 = zext i64 %301 to i128
  %307 = zext i64 %305 to i128
  %308 = mul nuw i128 %307, %306
  %309 = lshr i128 %308, 64
  %310 = xor i128 %309, %308
  %311 = trunc i128 %310 to i64
  %312 = add i64 %270, %311
  %313 = add i64 %278, %276
  %314 = xor i64 %312, %313
  br label %315

315:                                              ; preds = %184, %228, %272, %4
  %316 = phi i64 [ %177, %4 ], [ %209, %184 ], [ %253, %228 ], [ %297, %272 ]
  %317 = phi i64 [ %182, %4 ], [ %226, %184 ], [ %270, %228 ], [ %314, %272 ]
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %319 = getelementptr inbounds i8, ptr %318, i64 -16
  %320 = getelementptr inbounds i8, ptr %318, i64 -32
  %321 = getelementptr inbounds nuw i8, ptr %2, i64 103
  %322 = load i64, ptr %319, align 1
  %323 = getelementptr inbounds i8, ptr %318, i64 -8
  %324 = load i64, ptr %323, align 1
  %325 = load i64, ptr %321, align 1
  %326 = sub i64 %325, %3
  %327 = xor i64 %326, %322
  %328 = getelementptr inbounds nuw i8, ptr %2, i64 111
  %329 = load i64, ptr %328, align 1
  %330 = add i64 %329, %3
  %331 = xor i64 %330, %324
  %332 = zext i64 %327 to i128
  %333 = zext i64 %331 to i128
  %334 = mul nuw i128 %333, %332
  %335 = lshr i128 %334, 64
  %336 = xor i128 %335, %334
  %337 = trunc i128 %336 to i64
  %338 = add i64 %316, %337
  %339 = load i64, ptr %320, align 1
  %340 = getelementptr inbounds i8, ptr %318, i64 -24
  %341 = load i64, ptr %340, align 1
  %342 = add i64 %341, %339
  %343 = xor i64 %338, %342
  %344 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %345 = load i64, ptr %344, align 1
  %346 = sub i64 %345, %3
  %347 = xor i64 %346, %339
  %348 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %349 = load i64, ptr %348, align 1
  %350 = add i64 %349, %3
  %351 = xor i64 %350, %341
  %352 = zext i64 %347 to i128
  %353 = zext i64 %351 to i128
  %354 = mul nuw i128 %353, %352
  %355 = lshr i128 %354, 64
  %356 = xor i128 %355, %354
  %357 = trunc i128 %356 to i64
  %358 = add i64 %317, %357
  %359 = add i64 %324, %322
  %360 = xor i64 %358, %359
  %361 = add i64 %360, %343
  %362 = mul i64 %343, -7046029288634856825
  %363 = mul i64 %360, -8796714831421723037
  %364 = sub i64 %1, %3
  %365 = mul i64 %364, -4417276706812531889
  %366 = add i64 %362, %365
  %367 = add i64 %366, %363
  %368 = lshr i64 %361, 37
  %369 = xor i64 %368, %361
  %370 = mul i64 %369, 1609587929392839161
  %371 = lshr i64 %370, 32
  %372 = xor i64 %371, %370
  %373 = lshr i64 %367, 37
  %374 = xor i64 %373, %367
  %375 = mul i64 %374, 1609587929392839161
  %376 = lshr i64 %375, 32
  %377 = xor i64 %376, %375
  %378 = sub i64 0, %377
  %379 = insertvalue { i64, i64 } poison, i64 %372, 0
  %380 = insertvalue { i64, i64 } %379, i64 %378, 1
  ret { i64, i64 } %380
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1) unnamed_addr #16 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %70, label %5

5:                                                ; preds = %2, %47
  %6 = phi <4 x i64> [ %67, %47 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %7 = phi <4 x i64> [ %57, %47 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %8 = phi i64 [ %68, %47 ], [ 0, %2 ]
  %9 = shl i64 %8, 10
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  br label %11

11:                                               ; preds = %5, %11
  %12 = phi <4 x i64> [ %6, %5 ], [ %44, %11 ]
  %13 = phi <4 x i64> [ %7, %5 ], [ %30, %11 ]
  %14 = phi i64 [ 0, %5 ], [ %45, %11 ]
  %15 = shl nuw nsw i64 %14, 6
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 %15
  %17 = shl nuw nsw i64 %14, 3
  %18 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %17
  %19 = load <4 x i64>, ptr %16, align 1
  %20 = load <4 x i64>, ptr %18, align 8
  %21 = xor <4 x i64> %20, %19
  %22 = bitcast <4 x i64> %21 to <8 x i32>
  %23 = shufflevector <8 x i32> %22, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %24 = bitcast <8 x i32> %23 to <4 x i64>
  %25 = and <4 x i64> %21, splat (i64 4294967295)
  %26 = and <4 x i64> %24, splat (i64 4294967295)
  %27 = mul nuw <4 x i64> %26, %25
  %28 = shufflevector <4 x i64> %19, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %29 = add <4 x i64> %13, %28
  %30 = add <4 x i64> %29, %27
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %32 = load <4 x i64>, ptr %31, align 1
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %34 = load <4 x i64>, ptr %33, align 8
  %35 = xor <4 x i64> %34, %32
  %36 = bitcast <4 x i64> %35 to <8 x i32>
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %38 = bitcast <8 x i32> %37 to <4 x i64>
  %39 = and <4 x i64> %35, splat (i64 4294967295)
  %40 = and <4 x i64> %38, splat (i64 4294967295)
  %41 = mul nuw <4 x i64> %40, %39
  %42 = shufflevector <4 x i64> %32, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %43 = add <4 x i64> %12, %42
  %44 = add <4 x i64> %43, %41
  %45 = add nuw nsw i64 %14, 1
  %46 = icmp eq i64 %45, 16
  br i1 %46, label %47, label %11

47:                                               ; preds = %11
  %48 = lshr <4 x i64> %30, splat (i64 47)
  %49 = xor <4 x i64> %48, %30
  %50 = xor <4 x i64> %49, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %51 = bitcast <4 x i64> %50 to <8 x i32>
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %53 = bitcast <8 x i32> %52 to <4 x i64>
  %54 = and <4 x i64> %50, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, splat (i64 2654435761)
  %56 = mul <4 x i64> %53, splat (i64 -7046029290881679360)
  %57 = add <4 x i64> %56, %55
  %58 = lshr <4 x i64> %44, splat (i64 47)
  %59 = xor <4 x i64> %58, %44
  %60 = xor <4 x i64> %59, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %61 = bitcast <4 x i64> %60 to <8 x i32>
  %62 = shufflevector <8 x i32> %61, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %63 = bitcast <8 x i32> %62 to <4 x i64>
  %64 = and <4 x i64> %60, splat (i64 4294967295)
  %65 = mul nuw <4 x i64> %64, splat (i64 2654435761)
  %66 = mul <4 x i64> %63, splat (i64 -7046029290881679360)
  %67 = add <4 x i64> %66, %65
  %68 = add nuw nsw i64 %8, 1
  %69 = icmp eq i64 %68, %3
  br i1 %69, label %70, label %5

70:                                               ; preds = %47, %2
  %71 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %67, %47 ]
  %72 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %57, %47 ]
  %73 = and i64 %1, -1024
  %74 = lshr i64 %1, 6
  %75 = and i64 %74, 15
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %73
  %77 = icmp eq i64 %75, 0
  br i1 %77, label %114, label %78

78:                                               ; preds = %70, %78
  %79 = phi <4 x i64> [ %111, %78 ], [ %71, %70 ]
  %80 = phi <4 x i64> [ %97, %78 ], [ %72, %70 ]
  %81 = phi i64 [ %112, %78 ], [ 0, %70 ]
  %82 = shl i64 %81, 6
  %83 = getelementptr inbounds nuw i8, ptr %76, i64 %82
  %84 = shl i64 %81, 3
  %85 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %84
  %86 = load <4 x i64>, ptr %83, align 1
  %87 = load <4 x i64>, ptr %85, align 8
  %88 = xor <4 x i64> %87, %86
  %89 = bitcast <4 x i64> %88 to <8 x i32>
  %90 = shufflevector <8 x i32> %89, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %91 = bitcast <8 x i32> %90 to <4 x i64>
  %92 = and <4 x i64> %88, splat (i64 4294967295)
  %93 = and <4 x i64> %91, splat (i64 4294967295)
  %94 = mul nuw <4 x i64> %93, %92
  %95 = shufflevector <4 x i64> %86, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %96 = add <4 x i64> %80, %95
  %97 = add <4 x i64> %96, %94
  %98 = getelementptr inbounds nuw i8, ptr %83, i64 32
  %99 = load <4 x i64>, ptr %98, align 1
  %100 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %101 = load <4 x i64>, ptr %100, align 8
  %102 = xor <4 x i64> %101, %99
  %103 = bitcast <4 x i64> %102 to <8 x i32>
  %104 = shufflevector <8 x i32> %103, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %105 = bitcast <8 x i32> %104 to <4 x i64>
  %106 = and <4 x i64> %102, splat (i64 4294967295)
  %107 = and <4 x i64> %105, splat (i64 4294967295)
  %108 = mul nuw <4 x i64> %107, %106
  %109 = shufflevector <4 x i64> %99, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %110 = add <4 x i64> %79, %109
  %111 = add <4 x i64> %110, %108
  %112 = add nuw nsw i64 %81, 1
  %113 = icmp eq i64 %112, %75
  br i1 %113, label %114, label %78

114:                                              ; preds = %78, %70
  %115 = phi <4 x i64> [ %71, %70 ], [ %111, %78 ]
  %116 = phi <4 x i64> [ %72, %70 ], [ %97, %78 ]
  %117 = and i64 %1, 63
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %145, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %121 = getelementptr inbounds i8, ptr %120, i64 -64
  %122 = load <4 x i64>, ptr %121, align 1
  %123 = xor <4 x i64> %122, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %124 = bitcast <4 x i64> %123 to <8 x i32>
  %125 = shufflevector <8 x i32> %124, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %126 = bitcast <8 x i32> %125 to <4 x i64>
  %127 = and <4 x i64> %123, splat (i64 4294967295)
  %128 = and <4 x i64> %126, splat (i64 4294967295)
  %129 = mul nuw <4 x i64> %128, %127
  %130 = shufflevector <4 x i64> %122, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %131 = add <4 x i64> %116, %130
  %132 = add <4 x i64> %131, %129
  %133 = getelementptr inbounds i8, ptr %120, i64 -32
  %134 = load <4 x i64>, ptr %133, align 1
  %135 = xor <4 x i64> %134, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %136 = bitcast <4 x i64> %135 to <8 x i32>
  %137 = shufflevector <8 x i32> %136, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %138 = bitcast <8 x i32> %137 to <4 x i64>
  %139 = and <4 x i64> %135, splat (i64 4294967295)
  %140 = and <4 x i64> %138, splat (i64 4294967295)
  %141 = mul nuw <4 x i64> %140, %139
  %142 = shufflevector <4 x i64> %134, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %143 = add <4 x i64> %115, %142
  %144 = add <4 x i64> %143, %141
  br label %145

145:                                              ; preds = %119, %114
  %146 = phi <4 x i64> [ %115, %114 ], [ %144, %119 ]
  %147 = phi <4 x i64> [ %116, %114 ], [ %132, %119 ]
  %148 = mul i64 %1, -7046029288634856825
  %149 = extractelement <4 x i64> %147, i64 0
  %150 = xor i64 %149, 7914194659941938988
  %151 = extractelement <4 x i64> %147, i64 1
  %152 = xor i64 %151, -6611157965513653271
  %153 = zext i64 %150 to i128
  %154 = zext i64 %152 to i128
  %155 = mul nuw i128 %154, %153
  %156 = lshr i128 %155, 64
  %157 = xor i128 %156, %155
  %158 = trunc i128 %157 to i64
  %159 = add i64 %148, %158
  %160 = extractelement <4 x i64> %147, i64 2
  %161 = xor i64 %160, -1839215637059881052
  %162 = extractelement <4 x i64> %147, i64 3
  %163 = xor i64 %162, -3433288310154277810
  %164 = zext i64 %161 to i128
  %165 = zext i64 %163 to i128
  %166 = mul nuw i128 %165, %164
  %167 = lshr i128 %166, 64
  %168 = xor i128 %167, %166
  %169 = trunc i128 %168 to i64
  %170 = add i64 %159, %169
  %171 = extractelement <4 x i64> %146, i64 0
  %172 = xor i64 %171, 5046485836271438973
  %173 = extractelement <4 x i64> %146, i64 1
  %174 = xor i64 %173, -8055285457383852172
  %175 = zext i64 %172 to i128
  %176 = zext i64 %174 to i128
  %177 = mul nuw i128 %176, %175
  %178 = lshr i128 %177, 64
  %179 = xor i128 %178, %177
  %180 = trunc i128 %179 to i64
  %181 = add i64 %170, %180
  %182 = extractelement <4 x i64> %146, i64 2
  %183 = xor i64 %182, 5920048007935066598
  %184 = extractelement <4 x i64> %146, i64 3
  %185 = xor i64 %184, 7336514198459093435
  %186 = zext i64 %183 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %181, %191
  %193 = lshr i64 %192, 37
  %194 = xor i64 %193, %192
  %195 = mul i64 %194, 1609587929392839161
  %196 = lshr i64 %195, 32
  %197 = xor i64 %196, %195
  %198 = mul i64 %1, -4417276706812531889
  %199 = xor i64 %198, -1
  %200 = xor i64 %149, -2753530472436770380
  %201 = xor i64 %151, 3784058077962335096
  %202 = zext i64 %200 to i128
  %203 = zext i64 %201 to i128
  %204 = mul nuw i128 %203, %202
  %205 = lshr i128 %204, 64
  %206 = xor i128 %205, %204
  %207 = trunc i128 %206 to i64
  %208 = add i64 %207, %199
  %209 = xor i64 %160, -360392965937173549
  %210 = xor i64 %162, -5237161843349560557
  %211 = zext i64 %209 to i128
  %212 = zext i64 %210 to i128
  %213 = mul nuw i128 %212, %211
  %214 = lshr i128 %213, 64
  %215 = xor i128 %214, %213
  %216 = trunc i128 %215 to i64
  %217 = add i64 %208, %216
  %218 = xor i64 %171, 2965150961192524528
  %219 = xor i64 %173, 9032178055121889492
  %220 = zext i64 %218 to i128
  %221 = zext i64 %219 to i128
  %222 = mul nuw i128 %221, %220
  %223 = lshr i128 %222, 64
  %224 = xor i128 %223, %222
  %225 = trunc i128 %224 to i64
  %226 = add i64 %217, %225
  %227 = xor i64 %182, 8850058120466833735
  %228 = xor i64 %184, -7669846995664752176
  %229 = zext i64 %227 to i128
  %230 = zext i64 %228 to i128
  %231 = mul nuw i128 %230, %229
  %232 = lshr i128 %231, 64
  %233 = xor i128 %232, %231
  %234 = trunc i128 %233 to i64
  %235 = add i64 %226, %234
  %236 = lshr i64 %235, 37
  %237 = xor i64 %236, %235
  %238 = mul i64 %237, 1609587929392839161
  %239 = lshr i64 %238, 32
  %240 = xor i64 %239, %238
  %241 = insertvalue { i64, i64 } poison, i64 %197, 0
  %242 = insertvalue { i64, i64 } %241, i64 %240, 1
  ret { i64, i64 } %242
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSecret(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #14 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %133

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %47

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 1
  %10 = load i64, ptr %2, align 1
  %11 = xor i64 %10, %9
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %14
  %18 = xor i64 %11, %17
  %19 = zext i64 %18 to i128
  %20 = mul nuw i128 %19, 11400714785074694791
  %21 = trunc i128 %20 to i64
  %22 = lshr i128 %20, 64
  %23 = trunc nuw i128 %22 to i64
  %24 = mul nuw nsw i64 %1, 374761393
  %25 = add i64 %24, %21
  %26 = mul i64 %17, -7046029288634856825
  %27 = add i64 %26, %23
  %28 = lshr i64 %27, 32
  %29 = xor i64 %28, %25
  %30 = zext i64 %29 to i128
  %31 = mul nuw i128 %30, 14029467366897019727
  %32 = trunc i128 %31 to i64
  %33 = lshr i128 %31, 64
  %34 = trunc nuw i128 %33 to i64
  %35 = mul i64 %27, -4417276706812531889
  %36 = add i64 %35, %34
  %37 = lshr i64 %32, 37
  %38 = xor i64 %37, %32
  %39 = mul i64 %38, 1609587929392839161
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  %42 = lshr i64 %36, 37
  %43 = xor i64 %42, %36
  %44 = mul i64 %43, 1609587929392839161
  %45 = lshr i64 %44, 32
  %46 = xor i64 %45, %44
  br label %128

47:                                               ; preds = %6
  %48 = icmp samesign ugt i64 %1, 3
  br i1 %48, label %49, label %88

49:                                               ; preds = %47
  %50 = load i32, ptr %0, align 1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %52 = getelementptr inbounds i8, ptr %51, i64 -4
  %53 = load i32, ptr %52, align 1
  %54 = zext i32 %50 to i64
  %55 = zext i32 %53 to i64
  %56 = shl nuw i64 %55, 32
  %57 = or disjoint i64 %56, %54
  %58 = tail call noundef i64 @llvm.bswap.i64(i64 %57)
  %59 = load i64, ptr %2, align 1
  %60 = xor i64 %57, %59
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %62 = load i64, ptr %61, align 1
  %63 = xor i64 %58, %62
  %64 = lshr i64 %60, 51
  %65 = xor i64 %64, %60
  %66 = mul i64 %65, 2654435761
  %67 = add i64 %66, %1
  %68 = lshr i64 %67, 47
  %69 = xor i64 %68, %67
  %70 = mul i64 %69, -4417276706812531889
  %71 = lshr i64 %63, 47
  %72 = xor i64 %71, %63
  %73 = mul i64 %72, -7046029288634856825
  %74 = sub i64 %73, %1
  %75 = lshr i64 %74, 43
  %76 = xor i64 %75, %74
  %77 = mul i64 %76, -8796714831421723037
  %78 = lshr i64 %70, 37
  %79 = xor i64 %78, %70
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  %83 = lshr i64 %77, 37
  %84 = xor i64 %83, %77
  %85 = mul i64 %84, 1609587929392839161
  %86 = lshr i64 %85, 32
  %87 = xor i64 %86, %85
  br label %128

88:                                               ; preds = %47
  %89 = icmp eq i64 %1, 0
  br i1 %89, label %128, label %90

90:                                               ; preds = %88
  %91 = load i8, ptr %0, align 1
  %92 = lshr i64 %1, 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 %1
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %91 to i32
  %99 = zext i8 %94 to i32
  %100 = shl nuw nsw i32 %99, 8
  %101 = or disjoint i32 %100, %98
  %102 = zext i8 %97 to i32
  %103 = shl nuw nsw i32 %102, 16
  %104 = or disjoint i32 %101, %103
  %105 = trunc nuw nsw i64 %1 to i32
  %106 = shl nuw nsw i32 %105, 24
  %107 = or disjoint i32 %104, %106
  %108 = tail call noundef i32 @llvm.bswap.i32(i32 %107)
  %109 = load i32, ptr %2, align 1
  %110 = xor i32 %107, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %113 = load i32, ptr %112, align 1
  %114 = xor i32 %108, %113
  %115 = zext i32 %114 to i64
  %116 = mul i64 %111, -7046029288634856825
  %117 = mul i64 %115, 2870177450012600261
  %118 = lshr i64 %116, 37
  %119 = xor i64 %118, %116
  %120 = mul i64 %119, 1609587929392839161
  %121 = lshr i64 %120, 32
  %122 = xor i64 %121, %120
  %123 = lshr i64 %117, 37
  %124 = xor i64 %123, %117
  %125 = mul i64 %124, 1609587929392839161
  %126 = lshr i64 %125, 32
  %127 = xor i64 %126, %125
  br label %128

128:                                              ; preds = %8, %49, %88, %90
  %129 = phi i64 [ %46, %8 ], [ %87, %49 ], [ %127, %90 ], [ 0, %88 ]
  %130 = phi i64 [ %41, %8 ], [ %82, %49 ], [ %122, %90 ], [ 0, %88 ]
  %131 = insertvalue { i64, i64 } poison, i64 %130, 0
  %132 = insertvalue { i64, i64 } %131, i64 %129, 1
  br label %330

133:                                              ; preds = %4
  %134 = icmp ult i64 %1, 129
  br i1 %134, label %135, label %324

135:                                              ; preds = %133
  %136 = mul i64 %1, -7046029288634856825
  %137 = icmp samesign ugt i64 %1, 32
  br i1 %137, label %138, label %265

138:                                              ; preds = %135
  %139 = icmp samesign ugt i64 %1, 64
  br i1 %139, label %140, label %223

140:                                              ; preds = %138
  %141 = icmp samesign ugt i64 %1, 96
  br i1 %141, label %142, label %181

142:                                              ; preds = %140
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %145 = getelementptr inbounds i8, ptr %144, i64 -64
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %147 = load i64, ptr %143, align 1
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %149 = load i64, ptr %148, align 1
  %150 = load i64, ptr %146, align 1
  %151 = xor i64 %150, %147
  %152 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %153 = load i64, ptr %152, align 1
  %154 = xor i64 %153, %149
  %155 = zext i64 %151 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %136, %160
  %162 = load i64, ptr %145, align 1
  %163 = getelementptr inbounds i8, ptr %144, i64 -56
  %164 = load i64, ptr %163, align 1
  %165 = add i64 %164, %162
  %166 = xor i64 %161, %165
  %167 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %168 = load i64, ptr %167, align 1
  %169 = xor i64 %168, %162
  %170 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %171 = load i64, ptr %170, align 1
  %172 = xor i64 %171, %164
  %173 = zext i64 %169 to i128
  %174 = zext i64 %172 to i128
  %175 = mul nuw i128 %174, %173
  %176 = lshr i128 %175, 64
  %177 = xor i128 %176, %175
  %178 = trunc i128 %177 to i64
  %179 = add i64 %149, %147
  %180 = xor i64 %179, %178
  br label %181

181:                                              ; preds = %142, %140
  %182 = phi i64 [ %166, %142 ], [ %136, %140 ]
  %183 = phi i64 [ %180, %142 ], [ 0, %140 ]
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %186 = getelementptr inbounds i8, ptr %185, i64 -48
  %187 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %188 = load i64, ptr %184, align 1
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %190 = load i64, ptr %189, align 1
  %191 = load i64, ptr %187, align 1
  %192 = xor i64 %191, %188
  %193 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %194 = load i64, ptr %193, align 1
  %195 = xor i64 %194, %190
  %196 = zext i64 %192 to i128
  %197 = zext i64 %195 to i128
  %198 = mul nuw i128 %197, %196
  %199 = lshr i128 %198, 64
  %200 = xor i128 %199, %198
  %201 = trunc i128 %200 to i64
  %202 = add i64 %182, %201
  %203 = load i64, ptr %186, align 1
  %204 = getelementptr inbounds i8, ptr %185, i64 -40
  %205 = load i64, ptr %204, align 1
  %206 = add i64 %205, %203
  %207 = xor i64 %202, %206
  %208 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %209 = load i64, ptr %208, align 1
  %210 = xor i64 %209, %203
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %212 = load i64, ptr %211, align 1
  %213 = xor i64 %212, %205
  %214 = zext i64 %210 to i128
  %215 = zext i64 %213 to i128
  %216 = mul nuw i128 %215, %214
  %217 = lshr i128 %216, 64
  %218 = xor i128 %217, %216
  %219 = trunc i128 %218 to i64
  %220 = add i64 %183, %219
  %221 = add i64 %190, %188
  %222 = xor i64 %220, %221
  br label %223

223:                                              ; preds = %181, %138
  %224 = phi i64 [ %207, %181 ], [ %136, %138 ]
  %225 = phi i64 [ %222, %181 ], [ 0, %138 ]
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %228 = getelementptr inbounds i8, ptr %227, i64 -32
  %229 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %230 = load i64, ptr %226, align 1
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = xor i64 %233, %230
  %235 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %236 = load i64, ptr %235, align 1
  %237 = xor i64 %236, %232
  %238 = zext i64 %234 to i128
  %239 = zext i64 %237 to i128
  %240 = mul nuw i128 %239, %238
  %241 = lshr i128 %240, 64
  %242 = xor i128 %241, %240
  %243 = trunc i128 %242 to i64
  %244 = add i64 %224, %243
  %245 = load i64, ptr %228, align 1
  %246 = getelementptr inbounds i8, ptr %227, i64 -24
  %247 = load i64, ptr %246, align 1
  %248 = add i64 %247, %245
  %249 = xor i64 %244, %248
  %250 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %251 = load i64, ptr %250, align 1
  %252 = xor i64 %251, %245
  %253 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %254 = load i64, ptr %253, align 1
  %255 = xor i64 %254, %247
  %256 = zext i64 %252 to i128
  %257 = zext i64 %255 to i128
  %258 = mul nuw i128 %257, %256
  %259 = lshr i128 %258, 64
  %260 = xor i128 %259, %258
  %261 = trunc i128 %260 to i64
  %262 = add i64 %225, %261
  %263 = add i64 %232, %230
  %264 = xor i64 %262, %263
  br label %265

265:                                              ; preds = %135, %223
  %266 = phi i64 [ %249, %223 ], [ %136, %135 ]
  %267 = phi i64 [ %264, %223 ], [ 0, %135 ]
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %269 = getelementptr inbounds i8, ptr %268, i64 -16
  %270 = load i64, ptr %0, align 1
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %272 = load i64, ptr %271, align 1
  %273 = load i64, ptr %2, align 1
  %274 = xor i64 %273, %270
  %275 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %276 = load i64, ptr %275, align 1
  %277 = xor i64 %276, %272
  %278 = zext i64 %274 to i128
  %279 = zext i64 %277 to i128
  %280 = mul nuw i128 %279, %278
  %281 = lshr i128 %280, 64
  %282 = xor i128 %281, %280
  %283 = trunc i128 %282 to i64
  %284 = add i64 %266, %283
  %285 = load i64, ptr %269, align 1
  %286 = getelementptr inbounds i8, ptr %268, i64 -8
  %287 = load i64, ptr %286, align 1
  %288 = add i64 %287, %285
  %289 = xor i64 %284, %288
  %290 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %291 = load i64, ptr %290, align 1
  %292 = xor i64 %291, %285
  %293 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %294 = load i64, ptr %293, align 1
  %295 = xor i64 %294, %287
  %296 = zext i64 %292 to i128
  %297 = zext i64 %295 to i128
  %298 = mul nuw i128 %297, %296
  %299 = lshr i128 %298, 64
  %300 = xor i128 %299, %298
  %301 = trunc i128 %300 to i64
  %302 = add i64 %267, %301
  %303 = add i64 %272, %270
  %304 = xor i64 %302, %303
  %305 = add i64 %304, %289
  %306 = mul i64 %289, -7046029288634856825
  %307 = mul i64 %304, -8796714831421723037
  %308 = mul i64 %1, -4417276706812531889
  %309 = add i64 %306, %308
  %310 = add i64 %309, %307
  %311 = lshr i64 %305, 37
  %312 = xor i64 %311, %305
  %313 = mul i64 %312, 1609587929392839161
  %314 = lshr i64 %313, 32
  %315 = xor i64 %314, %313
  %316 = lshr i64 %310, 37
  %317 = xor i64 %316, %310
  %318 = mul i64 %317, 1609587929392839161
  %319 = lshr i64 %318, 32
  %320 = xor i64 %319, %318
  %321 = sub i64 0, %320
  %322 = insertvalue { i64, i64 } poison, i64 %315, 0
  %323 = insertvalue { i64, i64 } %322, i64 %321, 1
  br label %330

324:                                              ; preds = %133
  %325 = icmp ult i64 %1, 241
  br i1 %325, label %326, label %328

326:                                              ; preds = %324
  %327 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %330

328:                                              ; preds = %324
  %329 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %330

330:                                              ; preds = %328, %326, %265, %128
  %331 = phi { i64, i64 } [ %132, %128 ], [ %323, %265 ], [ %327, %326 ], [ %329, %328 ]
  ret { i64, i64 } %331
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #16 {
  %5 = add i64 %3, -64
  %6 = lshr i64 %5, 3
  %7 = shl i64 %6, 6
  %8 = udiv i64 %1, %7
  %9 = urem i64 %1, %7
  %10 = icmp ugt i64 %7, %1
  br i1 %10, label %86, label %11

11:                                               ; preds = %4
  %12 = icmp ult i64 %5, 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %14 = getelementptr inbounds i8, ptr %13, i64 -64
  %15 = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %16 = load <4 x i64>, ptr %14, align 1
  %17 = getelementptr inbounds i8, ptr %13, i64 -32
  %18 = load <4 x i64>, ptr %17, align 1
  br label %19

19:                                               ; preds = %11, %61
  %20 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %11 ], [ %83, %61 ]
  %21 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %11 ], [ %73, %61 ]
  %22 = phi i64 [ 0, %11 ], [ %84, %61 ]
  %23 = mul i64 %22, %7
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  br i1 %12, label %61, label %25

25:                                               ; preds = %19, %25
  %26 = phi <4 x i64> [ %58, %25 ], [ %20, %19 ]
  %27 = phi <4 x i64> [ %44, %25 ], [ %21, %19 ]
  %28 = phi i64 [ %59, %25 ], [ 0, %19 ]
  %29 = shl i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 %29
  %31 = shl i64 %28, 3
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = load <4 x i64>, ptr %30, align 1
  %34 = load <4 x i64>, ptr %32, align 1
  %35 = xor <4 x i64> %34, %33
  %36 = bitcast <4 x i64> %35 to <8 x i32>
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %38 = bitcast <8 x i32> %37 to <4 x i64>
  %39 = and <4 x i64> %35, splat (i64 4294967295)
  %40 = and <4 x i64> %38, splat (i64 4294967295)
  %41 = mul nuw <4 x i64> %40, %39
  %42 = shufflevector <4 x i64> %33, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %43 = add <4 x i64> %27, %42
  %44 = add <4 x i64> %43, %41
  %45 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %46 = load <4 x i64>, ptr %45, align 1
  %47 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %48 = load <4 x i64>, ptr %47, align 1
  %49 = xor <4 x i64> %48, %46
  %50 = bitcast <4 x i64> %49 to <8 x i32>
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %52 = bitcast <8 x i32> %51 to <4 x i64>
  %53 = and <4 x i64> %49, splat (i64 4294967295)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, %53
  %56 = shufflevector <4 x i64> %46, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %57 = add <4 x i64> %26, %56
  %58 = add <4 x i64> %57, %55
  %59 = add nuw nsw i64 %28, 1
  %60 = icmp eq i64 %59, %15
  br i1 %60, label %61, label %25

61:                                               ; preds = %25, %19
  %62 = phi <4 x i64> [ %20, %19 ], [ %58, %25 ]
  %63 = phi <4 x i64> [ %21, %19 ], [ %44, %25 ]
  %64 = lshr <4 x i64> %63, splat (i64 47)
  %65 = xor <4 x i64> %16, %64
  %66 = xor <4 x i64> %65, %63
  %67 = bitcast <4 x i64> %66 to <8 x i32>
  %68 = shufflevector <8 x i32> %67, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %69 = bitcast <8 x i32> %68 to <4 x i64>
  %70 = and <4 x i64> %66, splat (i64 4294967295)
  %71 = mul nuw <4 x i64> %70, splat (i64 2654435761)
  %72 = mul <4 x i64> %69, splat (i64 -7046029290881679360)
  %73 = add <4 x i64> %72, %71
  %74 = lshr <4 x i64> %62, splat (i64 47)
  %75 = xor <4 x i64> %18, %74
  %76 = xor <4 x i64> %75, %62
  %77 = bitcast <4 x i64> %76 to <8 x i32>
  %78 = shufflevector <8 x i32> %77, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %79 = bitcast <8 x i32> %78 to <4 x i64>
  %80 = and <4 x i64> %76, splat (i64 4294967295)
  %81 = mul nuw <4 x i64> %80, splat (i64 2654435761)
  %82 = mul <4 x i64> %79, splat (i64 -7046029290881679360)
  %83 = add <4 x i64> %82, %81
  %84 = add nuw i64 %22, 1
  %85 = icmp ult i64 %84, %8
  br i1 %85, label %19, label %86

86:                                               ; preds = %61, %4
  %87 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %4 ], [ %83, %61 ]
  %88 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %4 ], [ %73, %61 ]
  %89 = mul i64 %8, %7
  %90 = lshr i64 %9, 6
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 %89
  %92 = icmp ult i64 %9, 64
  br i1 %92, label %129, label %93

93:                                               ; preds = %86, %93
  %94 = phi <4 x i64> [ %126, %93 ], [ %87, %86 ]
  %95 = phi <4 x i64> [ %112, %93 ], [ %88, %86 ]
  %96 = phi i64 [ %127, %93 ], [ 0, %86 ]
  %97 = shl i64 %96, 6
  %98 = getelementptr inbounds nuw i8, ptr %91, i64 %97
  %99 = shl i64 %96, 3
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 %99
  %101 = load <4 x i64>, ptr %98, align 1
  %102 = load <4 x i64>, ptr %100, align 1
  %103 = xor <4 x i64> %102, %101
  %104 = bitcast <4 x i64> %103 to <8 x i32>
  %105 = shufflevector <8 x i32> %104, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %106 = bitcast <8 x i32> %105 to <4 x i64>
  %107 = and <4 x i64> %103, splat (i64 4294967295)
  %108 = and <4 x i64> %106, splat (i64 4294967295)
  %109 = mul nuw <4 x i64> %108, %107
  %110 = shufflevector <4 x i64> %101, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %111 = add <4 x i64> %95, %110
  %112 = add <4 x i64> %111, %109
  %113 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %114 = load <4 x i64>, ptr %113, align 1
  %115 = getelementptr inbounds nuw i8, ptr %100, i64 32
  %116 = load <4 x i64>, ptr %115, align 1
  %117 = xor <4 x i64> %116, %114
  %118 = bitcast <4 x i64> %117 to <8 x i32>
  %119 = shufflevector <8 x i32> %118, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %120 = bitcast <8 x i32> %119 to <4 x i64>
  %121 = and <4 x i64> %117, splat (i64 4294967295)
  %122 = and <4 x i64> %120, splat (i64 4294967295)
  %123 = mul nuw <4 x i64> %122, %121
  %124 = shufflevector <4 x i64> %114, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %125 = add <4 x i64> %94, %124
  %126 = add <4 x i64> %125, %123
  %127 = add nuw nsw i64 %96, 1
  %128 = icmp samesign ult i64 %127, %90
  br i1 %128, label %93, label %129

129:                                              ; preds = %93, %86
  %130 = phi <4 x i64> [ %87, %86 ], [ %126, %93 ]
  %131 = phi <4 x i64> [ %88, %86 ], [ %112, %93 ]
  %132 = and i64 %1, 63
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %136 = getelementptr inbounds i8, ptr %135, i64 -67
  %137 = load i64, ptr %136, align 1
  %138 = getelementptr inbounds i8, ptr %135, i64 -59
  %139 = load i64, ptr %138, align 1
  %140 = getelementptr inbounds i8, ptr %135, i64 -51
  %141 = load i64, ptr %140, align 1
  br label %180

142:                                              ; preds = %129
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %144 = getelementptr inbounds i8, ptr %143, i64 -64
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %146 = getelementptr inbounds i8, ptr %145, i64 -71
  %147 = load <4 x i64>, ptr %144, align 1
  %148 = load <4 x i64>, ptr %146, align 1
  %149 = xor <4 x i64> %148, %147
  %150 = bitcast <4 x i64> %149 to <8 x i32>
  %151 = shufflevector <8 x i32> %150, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %152 = bitcast <8 x i32> %151 to <4 x i64>
  %153 = and <4 x i64> %149, splat (i64 4294967295)
  %154 = and <4 x i64> %152, splat (i64 4294967295)
  %155 = mul nuw <4 x i64> %154, %153
  %156 = shufflevector <4 x i64> %147, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %157 = add <4 x i64> %131, %156
  %158 = add <4 x i64> %157, %155
  %159 = getelementptr inbounds i8, ptr %143, i64 -32
  %160 = load <4 x i64>, ptr %159, align 1
  %161 = getelementptr inbounds i8, ptr %145, i64 -39
  %162 = load <4 x i64>, ptr %161, align 1
  %163 = xor <4 x i64> %162, %160
  %164 = bitcast <4 x i64> %163 to <8 x i32>
  %165 = shufflevector <8 x i32> %164, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %166 = bitcast <8 x i32> %165 to <4 x i64>
  %167 = and <4 x i64> %163, splat (i64 4294967295)
  %168 = and <4 x i64> %166, splat (i64 4294967295)
  %169 = mul nuw <4 x i64> %168, %167
  %170 = shufflevector <4 x i64> %160, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %171 = add <4 x i64> %130, %170
  %172 = add <4 x i64> %171, %169
  %173 = bitcast <4 x i64> %148 to i256
  %174 = lshr i256 %173, 32
  %175 = trunc i256 %174 to i64
  %176 = lshr i256 %173, 96
  %177 = trunc i256 %176 to i64
  %178 = lshr i256 %173, 160
  %179 = trunc i256 %178 to i64
  br label %180

180:                                              ; preds = %134, %142
  %181 = phi i64 [ %141, %134 ], [ %179, %142 ]
  %182 = phi i64 [ %139, %134 ], [ %177, %142 ]
  %183 = phi i64 [ %137, %134 ], [ %175, %142 ]
  %184 = phi <4 x i64> [ %130, %134 ], [ %172, %142 ]
  %185 = phi <4 x i64> [ %131, %134 ], [ %158, %142 ]
  %186 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %187 = mul i64 %1, -7046029288634856825
  %188 = extractelement <4 x i64> %185, i64 0
  %189 = load i64, ptr %186, align 1
  %190 = xor i64 %189, %188
  %191 = extractelement <4 x i64> %185, i64 1
  %192 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %193 = load i64, ptr %192, align 1
  %194 = xor i64 %193, %191
  %195 = zext i64 %190 to i128
  %196 = zext i64 %194 to i128
  %197 = mul nuw i128 %196, %195
  %198 = lshr i128 %197, 64
  %199 = xor i128 %198, %197
  %200 = trunc i128 %199 to i64
  %201 = add i64 %187, %200
  %202 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %203 = extractelement <4 x i64> %185, i64 2
  %204 = load i64, ptr %202, align 1
  %205 = xor i64 %204, %203
  %206 = extractelement <4 x i64> %185, i64 3
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = zext i64 %205 to i128
  %211 = zext i64 %209 to i128
  %212 = mul nuw i128 %211, %210
  %213 = lshr i128 %212, 64
  %214 = xor i128 %213, %212
  %215 = trunc i128 %214 to i64
  %216 = add i64 %201, %215
  %217 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %218 = extractelement <4 x i64> %184, i64 0
  %219 = load i64, ptr %217, align 1
  %220 = xor i64 %219, %218
  %221 = extractelement <4 x i64> %184, i64 1
  %222 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %223 = load i64, ptr %222, align 1
  %224 = xor i64 %223, %221
  %225 = zext i64 %220 to i128
  %226 = zext i64 %224 to i128
  %227 = mul nuw i128 %226, %225
  %228 = lshr i128 %227, 64
  %229 = xor i128 %228, %227
  %230 = trunc i128 %229 to i64
  %231 = add i64 %216, %230
  %232 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %233 = extractelement <4 x i64> %184, i64 2
  %234 = load i64, ptr %232, align 1
  %235 = xor i64 %234, %233
  %236 = extractelement <4 x i64> %184, i64 3
  %237 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %238 = load i64, ptr %237, align 1
  %239 = xor i64 %238, %236
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %231, %245
  %247 = lshr i64 %246, 37
  %248 = xor i64 %247, %246
  %249 = mul i64 %248, 1609587929392839161
  %250 = lshr i64 %249, 32
  %251 = xor i64 %250, %249
  %252 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %253 = getelementptr inbounds i8, ptr %252, i64 -75
  %254 = mul i64 %1, -4417276706812531889
  %255 = xor i64 %254, -1
  %256 = load i64, ptr %253, align 1
  %257 = xor i64 %256, %188
  %258 = xor i64 %183, %191
  %259 = zext i64 %257 to i128
  %260 = zext i64 %258 to i128
  %261 = mul nuw i128 %260, %259
  %262 = lshr i128 %261, 64
  %263 = xor i128 %262, %261
  %264 = trunc i128 %263 to i64
  %265 = add i64 %264, %255
  %266 = xor i64 %182, %203
  %267 = xor i64 %181, %206
  %268 = zext i64 %266 to i128
  %269 = zext i64 %267 to i128
  %270 = mul nuw i128 %269, %268
  %271 = lshr i128 %270, 64
  %272 = xor i128 %271, %270
  %273 = trunc i128 %272 to i64
  %274 = add i64 %265, %273
  %275 = getelementptr inbounds i8, ptr %252, i64 -43
  %276 = load i64, ptr %275, align 1
  %277 = xor i64 %276, %218
  %278 = getelementptr inbounds i8, ptr %252, i64 -35
  %279 = load i64, ptr %278, align 1
  %280 = xor i64 %279, %221
  %281 = zext i64 %277 to i128
  %282 = zext i64 %280 to i128
  %283 = mul nuw i128 %282, %281
  %284 = lshr i128 %283, 64
  %285 = xor i128 %284, %283
  %286 = trunc i128 %285 to i64
  %287 = add i64 %274, %286
  %288 = getelementptr inbounds i8, ptr %252, i64 -27
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %289, %233
  %291 = getelementptr inbounds i8, ptr %252, i64 -19
  %292 = load i64, ptr %291, align 1
  %293 = xor i64 %292, %236
  %294 = zext i64 %290 to i128
  %295 = zext i64 %293 to i128
  %296 = mul nuw i128 %295, %294
  %297 = lshr i128 %296, 64
  %298 = xor i128 %297, %296
  %299 = trunc i128 %298 to i64
  %300 = add i64 %287, %299
  %301 = lshr i64 %300, 37
  %302 = xor i64 %301, %300
  %303 = mul i64 %302, 1609587929392839161
  %304 = lshr i64 %303, 32
  %305 = xor i64 %304, %303
  %306 = insertvalue { i64, i64 } poison, i64 %251, 0
  %307 = insertvalue { i64, i64 } %306, i64 %305, 1
  ret { i64, i64 } %307
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %129

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %45

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %2, -4734510112055689544
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 2066345149520216444, %2
  %15 = xor i64 %13, %14
  %16 = xor i64 %10, %15
  %17 = zext i64 %16 to i128
  %18 = mul nuw i128 %17, 11400714785074694791
  %19 = trunc i128 %18 to i64
  %20 = lshr i128 %18, 64
  %21 = trunc nuw i128 %20 to i64
  %22 = mul nuw nsw i64 %1, 374761393
  %23 = add i64 %22, %19
  %24 = mul i64 %15, -7046029288634856825
  %25 = add i64 %24, %21
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %23
  %28 = zext i64 %27 to i128
  %29 = mul nuw i128 %28, 14029467366897019727
  %30 = trunc i128 %29 to i64
  %31 = lshr i128 %29, 64
  %32 = trunc nuw i128 %31 to i64
  %33 = mul i64 %25, -4417276706812531889
  %34 = add i64 %33, %32
  %35 = lshr i64 %30, 37
  %36 = xor i64 %35, %30
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  %40 = lshr i64 %34, 37
  %41 = xor i64 %40, %34
  %42 = mul i64 %41, 1609587929392839161
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  br label %124

45:                                               ; preds = %5
  %46 = icmp samesign ugt i64 %1, 3
  br i1 %46, label %47, label %85

47:                                               ; preds = %45
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %50 = getelementptr inbounds i8, ptr %49, i64 -4
  %51 = load i32, ptr %50, align 1
  %52 = zext i32 %48 to i64
  %53 = zext i32 %51 to i64
  %54 = shl nuw i64 %53, 32
  %55 = or disjoint i64 %54, %52
  %56 = tail call noundef i64 @llvm.bswap.i64(i64 %55)
  %57 = add i64 %2, -4734510112055689544
  %58 = xor i64 %55, %57
  %59 = sub i64 2066345149520216444, %2
  %60 = xor i64 %56, %59
  %61 = lshr i64 %58, 51
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, 2654435761
  %64 = add i64 %63, %1
  %65 = lshr i64 %64, 47
  %66 = xor i64 %65, %64
  %67 = mul i64 %66, -4417276706812531889
  %68 = lshr i64 %60, 47
  %69 = xor i64 %68, %60
  %70 = mul i64 %69, -7046029288634856825
  %71 = sub i64 %70, %1
  %72 = lshr i64 %71, 43
  %73 = xor i64 %72, %71
  %74 = mul i64 %73, -8796714831421723037
  %75 = lshr i64 %67, 37
  %76 = xor i64 %75, %67
  %77 = mul i64 %76, 1609587929392839161
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  %80 = lshr i64 %74, 37
  %81 = xor i64 %80, %74
  %82 = mul i64 %81, 1609587929392839161
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  br label %124

85:                                               ; preds = %45
  %86 = icmp eq i64 %1, 0
  br i1 %86, label %124, label %87

87:                                               ; preds = %85
  %88 = load i8, ptr %0, align 1
  %89 = lshr i64 %1, 1
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr i8, ptr %0, i64 %1
  %93 = getelementptr i8, ptr %92, i64 -1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %88 to i32
  %96 = zext i8 %91 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = or disjoint i32 %97, %95
  %99 = zext i8 %94 to i32
  %100 = shl nuw nsw i32 %99, 16
  %101 = or disjoint i32 %98, %100
  %102 = trunc nuw nsw i64 %1 to i32
  %103 = shl nuw nsw i32 %102, 24
  %104 = or disjoint i32 %101, %103
  %105 = tail call noundef i32 @llvm.bswap.i32(i32 %104)
  %106 = zext nneg i32 %104 to i64
  %107 = add i64 %2, 963444408
  %108 = xor i64 %107, %106
  %109 = zext i32 %105 to i64
  %110 = sub i64 3192628259, %2
  %111 = xor i64 %110, %109
  %112 = mul i64 %108, -7046029288634856825
  %113 = mul i64 %111, 2870177450012600261
  %114 = lshr i64 %112, 37
  %115 = xor i64 %114, %112
  %116 = mul i64 %115, 1609587929392839161
  %117 = lshr i64 %116, 32
  %118 = xor i64 %117, %116
  %119 = lshr i64 %113, 37
  %120 = xor i64 %119, %113
  %121 = mul i64 %120, 1609587929392839161
  %122 = lshr i64 %121, 32
  %123 = xor i64 %122, %121
  br label %124

124:                                              ; preds = %7, %47, %85, %87
  %125 = phi i64 [ %44, %7 ], [ %84, %47 ], [ %123, %87 ], [ 0, %85 ]
  %126 = phi i64 [ %39, %7 ], [ %79, %47 ], [ %118, %87 ], [ 0, %85 ]
  %127 = insertvalue { i64, i64 } poison, i64 %126, 0
  %128 = insertvalue { i64, i64 } %127, i64 %125, 1
  br label %312

129:                                              ; preds = %3
  %130 = icmp ult i64 %1, 129
  br i1 %130, label %131, label %306

131:                                              ; preds = %129
  %132 = mul i64 %1, -7046029288634856825
  %133 = icmp samesign ugt i64 %1, 32
  br i1 %133, label %134, label %249

134:                                              ; preds = %131
  %135 = icmp samesign ugt i64 %1, 64
  br i1 %135, label %136, label %211

136:                                              ; preds = %134
  %137 = icmp samesign ugt i64 %1, 96
  br i1 %137, label %138, label %173

138:                                              ; preds = %136
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %141 = getelementptr inbounds i8, ptr %140, i64 -64
  %142 = load i64, ptr %139, align 1
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %144 = load i64, ptr %143, align 1
  %145 = add i64 %2, 4554437623014685352
  %146 = xor i64 %142, %145
  %147 = sub i64 2111919702937427193, %2
  %148 = xor i64 %144, %147
  %149 = zext i64 %146 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = add i64 %132, %154
  %156 = load i64, ptr %141, align 1
  %157 = getelementptr inbounds i8, ptr %140, i64 -56
  %158 = load i64, ptr %157, align 1
  %159 = add i64 %158, %156
  %160 = xor i64 %155, %159
  %161 = add i64 %2, 3556072174620004746
  %162 = xor i64 %156, %161
  %163 = sub i64 7238261902898274248, %2
  %164 = xor i64 %158, %163
  %165 = zext i64 %162 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %144, %142
  %172 = xor i64 %171, %170
  br label %173

173:                                              ; preds = %138, %136
  %174 = phi i64 [ %160, %138 ], [ %132, %136 ]
  %175 = phi i64 [ %172, %138 ], [ 0, %136 ]
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %178 = getelementptr inbounds i8, ptr %177, i64 -48
  %179 = load i64, ptr %176, align 1
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %181 = load i64, ptr %180, align 1
  %182 = add i64 %2, -3818837453329782724
  %183 = xor i64 %179, %182
  %184 = sub i64 -6688317018830679928, %2
  %185 = xor i64 %181, %184
  %186 = zext i64 %183 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %174, %191
  %193 = load i64, ptr %178, align 1
  %194 = getelementptr inbounds i8, ptr %177, i64 -40
  %195 = load i64, ptr %194, align 1
  %196 = add i64 %195, %193
  %197 = xor i64 %192, %196
  %198 = add i64 %2, 5690594596133299313
  %199 = xor i64 %193, %198
  %200 = sub i64 -2833645246901970632, %2
  %201 = xor i64 %195, %200
  %202 = zext i64 %199 to i128
  %203 = zext i64 %201 to i128
  %204 = mul nuw i128 %203, %202
  %205 = lshr i128 %204, 64
  %206 = xor i128 %205, %204
  %207 = trunc i128 %206 to i64
  %208 = add i64 %175, %207
  %209 = add i64 %181, %179
  %210 = xor i64 %208, %209
  br label %211

211:                                              ; preds = %173, %134
  %212 = phi i64 [ %197, %173 ], [ %132, %134 ]
  %213 = phi i64 [ %210, %173 ], [ 0, %134 ]
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %216 = getelementptr inbounds i8, ptr %215, i64 -32
  %217 = load i64, ptr %214, align 1
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %219 = load i64, ptr %218, align 1
  %220 = add i64 %2, 8711581037947681227
  %221 = xor i64 %217, %220
  %222 = sub i64 2410270004345854594, %2
  %223 = xor i64 %219, %222
  %224 = zext i64 %221 to i128
  %225 = zext i64 %223 to i128
  %226 = mul nuw i128 %225, %224
  %227 = lshr i128 %226, 64
  %228 = xor i128 %227, %226
  %229 = trunc i128 %228 to i64
  %230 = add i64 %212, %229
  %231 = load i64, ptr %216, align 1
  %232 = getelementptr inbounds i8, ptr %215, i64 -24
  %233 = load i64, ptr %232, align 1
  %234 = add i64 %233, %231
  %235 = xor i64 %230, %234
  %236 = add i64 %2, -8204357891075471176
  %237 = xor i64 %231, %236
  %238 = sub i64 5487137525590930912, %2
  %239 = xor i64 %233, %238
  %240 = zext i64 %237 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %213, %245
  %247 = add i64 %219, %217
  %248 = xor i64 %246, %247
  br label %249

249:                                              ; preds = %131, %211
  %250 = phi i64 [ %235, %211 ], [ %132, %131 ]
  %251 = phi i64 [ %248, %211 ], [ 0, %131 ]
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %253 = getelementptr inbounds i8, ptr %252, i64 -16
  %254 = load i64, ptr %0, align 1
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %256 = load i64, ptr %255, align 1
  %257 = add i64 %2, -4734510112055689544
  %258 = xor i64 %254, %257
  %259 = sub i64 2066345149520216444, %2
  %260 = xor i64 %256, %259
  %261 = zext i64 %258 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %250, %266
  %268 = load i64, ptr %253, align 1
  %269 = getelementptr inbounds i8, ptr %252, i64 -8
  %270 = load i64, ptr %269, align 1
  %271 = add i64 %270, %268
  %272 = xor i64 %267, %271
  %273 = add i64 %2, -2623469361688619810
  %274 = xor i64 %268, %273
  %275 = sub i64 2262974939099578482, %2
  %276 = xor i64 %270, %275
  %277 = zext i64 %274 to i128
  %278 = zext i64 %276 to i128
  %279 = mul nuw i128 %278, %277
  %280 = lshr i128 %279, 64
  %281 = xor i128 %280, %279
  %282 = trunc i128 %281 to i64
  %283 = add i64 %251, %282
  %284 = add i64 %256, %254
  %285 = xor i64 %283, %284
  %286 = add i64 %285, %272
  %287 = mul i64 %272, -7046029288634856825
  %288 = mul i64 %285, -8796714831421723037
  %289 = sub i64 %1, %2
  %290 = mul i64 %289, -4417276706812531889
  %291 = add i64 %287, %290
  %292 = add i64 %291, %288
  %293 = lshr i64 %286, 37
  %294 = xor i64 %293, %286
  %295 = mul i64 %294, 1609587929392839161
  %296 = lshr i64 %295, 32
  %297 = xor i64 %296, %295
  %298 = lshr i64 %292, 37
  %299 = xor i64 %298, %292
  %300 = mul i64 %299, 1609587929392839161
  %301 = lshr i64 %300, 32
  %302 = xor i64 %301, %300
  %303 = sub i64 0, %302
  %304 = insertvalue { i64, i64 } poison, i64 %297, 0
  %305 = insertvalue { i64, i64 } %304, i64 %303, 1
  br label %312

306:                                              ; preds = %129
  %307 = icmp ult i64 %1, 241
  br i1 %307, label %308, label %310

308:                                              ; preds = %306
  %309 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %312

310:                                              ; preds = %306
  %311 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %312

312:                                              ; preds = %310, %308, %249, %124
  %313 = phi { i64, i64 } [ %128, %124 ], [ %305, %249 ], [ %309, %308 ], [ %311, %310 ]
  ret { i64, i64 } %313
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, i64 noundef %2) unnamed_addr #16 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #26
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = add i64 %2, -4734510112055689544
  store i64 %7, ptr %4, align 8
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = sub i64 2066345149520216444, %2
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %11 = add i64 %2, -2623469361688619810
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %13 = sub i64 2262974939099578482, %2
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %15 = add i64 %2, 8711581037947681227
  store i64 %15, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %17 = sub i64 2410270004345854594, %2
  store i64 %17, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %19 = add i64 %2, -8204357891075471176
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %21 = sub i64 5487137525590930912, %2
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %23 = add i64 %2, -3818837453329782724
  store i64 %23, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %25 = sub i64 -6688317018830679928, %2
  store i64 %25, ptr %24, align 8
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %27 = add i64 %2, 5690594596133299313
  store i64 %27, ptr %26, align 8
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %29 = sub i64 -2833645246901970632, %2
  store i64 %29, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %31 = add i64 %2, 4554437623014685352
  store i64 %31, ptr %30, align 8
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %33 = sub i64 2111919702937427193, %2
  store i64 %33, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %35 = add i64 %2, 3556072174620004746
  store i64 %35, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %37 = sub i64 7238261902898274248, %2
  store i64 %37, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %39 = add i64 %2, -4329134394285701654
  store i64 %39, ptr %38, align 8
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %41 = sub i64 -1485321483350670907, %2
  store i64 %41, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %43 = add i64 %2, 5321830579834785047
  store i64 %43, ptr %42, align 8
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %45 = sub i64 -7032137544937171245, %2
  store i64 %45, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %47 = add i64 %2, -242834301215959509
  store i64 %47, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 168
  %49 = sub i64 -3588858202114426737, %2
  store i64 %49, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %51 = add i64 %2, 2883454493032893253
  store i64 %51, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 184
  %53 = sub i64 9097354517224871855, %2
  store i64 %53, ptr %52, align 8
  %54 = lshr i64 %1, 10
  %55 = icmp ult i64 %1, 1024
  br i1 %55, label %127, label %58

56:                                               ; preds = %3
  %57 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %347

58:                                               ; preds = %6
  %59 = load <4 x i64>, ptr %38, align 8
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %61 = load <4 x i64>, ptr %60, align 8
  br label %62

62:                                               ; preds = %58, %104
  %63 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %58 ], [ %124, %104 ]
  %64 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %58 ], [ %114, %104 ]
  %65 = phi i64 [ 0, %58 ], [ %125, %104 ]
  %66 = shl i64 %65, 10
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 %66
  br label %68

68:                                               ; preds = %62, %68
  %69 = phi <4 x i64> [ %63, %62 ], [ %101, %68 ]
  %70 = phi <4 x i64> [ %64, %62 ], [ %87, %68 ]
  %71 = phi i64 [ 0, %62 ], [ %102, %68 ]
  %72 = shl nuw nsw i64 %71, 6
  %73 = getelementptr inbounds nuw i8, ptr %67, i64 %72
  %74 = shl nuw nsw i64 %71, 3
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 %74
  %76 = load <4 x i64>, ptr %73, align 1
  %77 = load <4 x i64>, ptr %75, align 8
  %78 = xor <4 x i64> %77, %76
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = shufflevector <4 x i64> %76, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %86 = add <4 x i64> %70, %85
  %87 = add <4 x i64> %86, %84
  %88 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %89 = load <4 x i64>, ptr %88, align 1
  %90 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %91 = load <4 x i64>, ptr %90, align 8
  %92 = xor <4 x i64> %91, %89
  %93 = bitcast <4 x i64> %92 to <8 x i32>
  %94 = shufflevector <8 x i32> %93, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %95 = bitcast <8 x i32> %94 to <4 x i64>
  %96 = and <4 x i64> %92, splat (i64 4294967295)
  %97 = and <4 x i64> %95, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, %96
  %99 = shufflevector <4 x i64> %89, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %100 = add <4 x i64> %69, %99
  %101 = add <4 x i64> %100, %98
  %102 = add nuw nsw i64 %71, 1
  %103 = icmp eq i64 %102, 16
  br i1 %103, label %104, label %68

104:                                              ; preds = %68
  %105 = lshr <4 x i64> %87, splat (i64 47)
  %106 = xor <4 x i64> %59, %105
  %107 = xor <4 x i64> %106, %87
  %108 = bitcast <4 x i64> %107 to <8 x i32>
  %109 = shufflevector <8 x i32> %108, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %110 = bitcast <8 x i32> %109 to <4 x i64>
  %111 = and <4 x i64> %107, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, splat (i64 2654435761)
  %113 = mul <4 x i64> %110, splat (i64 -7046029290881679360)
  %114 = add <4 x i64> %113, %112
  %115 = lshr <4 x i64> %101, splat (i64 47)
  %116 = xor <4 x i64> %61, %115
  %117 = xor <4 x i64> %116, %101
  %118 = bitcast <4 x i64> %117 to <8 x i32>
  %119 = shufflevector <8 x i32> %118, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %120 = bitcast <8 x i32> %119 to <4 x i64>
  %121 = and <4 x i64> %117, splat (i64 4294967295)
  %122 = mul nuw <4 x i64> %121, splat (i64 2654435761)
  %123 = mul <4 x i64> %120, splat (i64 -7046029290881679360)
  %124 = add <4 x i64> %123, %122
  %125 = add nuw nsw i64 %65, 1
  %126 = icmp eq i64 %125, %54
  br i1 %126, label %127, label %62

127:                                              ; preds = %104, %6
  %128 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %124, %104 ]
  %129 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %114, %104 ]
  %130 = and i64 %1, -1024
  %131 = lshr i64 %1, 6
  %132 = and i64 %131, 15
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 %130
  %134 = icmp eq i64 %132, 0
  br i1 %134, label %171, label %135

135:                                              ; preds = %127, %135
  %136 = phi <4 x i64> [ %168, %135 ], [ %128, %127 ]
  %137 = phi <4 x i64> [ %154, %135 ], [ %129, %127 ]
  %138 = phi i64 [ %169, %135 ], [ 0, %127 ]
  %139 = shl i64 %138, 6
  %140 = getelementptr inbounds nuw i8, ptr %133, i64 %139
  %141 = shl i64 %138, 3
  %142 = getelementptr inbounds nuw i8, ptr %4, i64 %141
  %143 = load <4 x i64>, ptr %140, align 1
  %144 = load <4 x i64>, ptr %142, align 8
  %145 = xor <4 x i64> %144, %143
  %146 = bitcast <4 x i64> %145 to <8 x i32>
  %147 = shufflevector <8 x i32> %146, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %148 = bitcast <8 x i32> %147 to <4 x i64>
  %149 = and <4 x i64> %145, splat (i64 4294967295)
  %150 = and <4 x i64> %148, splat (i64 4294967295)
  %151 = mul nuw <4 x i64> %150, %149
  %152 = shufflevector <4 x i64> %143, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %153 = add <4 x i64> %137, %152
  %154 = add <4 x i64> %153, %151
  %155 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %156 = load <4 x i64>, ptr %155, align 1
  %157 = getelementptr inbounds nuw i8, ptr %142, i64 32
  %158 = load <4 x i64>, ptr %157, align 8
  %159 = xor <4 x i64> %158, %156
  %160 = bitcast <4 x i64> %159 to <8 x i32>
  %161 = shufflevector <8 x i32> %160, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %162 = bitcast <8 x i32> %161 to <4 x i64>
  %163 = and <4 x i64> %159, splat (i64 4294967295)
  %164 = and <4 x i64> %162, splat (i64 4294967295)
  %165 = mul nuw <4 x i64> %164, %163
  %166 = shufflevector <4 x i64> %156, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %167 = add <4 x i64> %136, %166
  %168 = add <4 x i64> %167, %165
  %169 = add nuw nsw i64 %138, 1
  %170 = icmp eq i64 %169, %132
  br i1 %170, label %171, label %135

171:                                              ; preds = %135, %127
  %172 = phi <4 x i64> [ %128, %127 ], [ %168, %135 ]
  %173 = phi <4 x i64> [ %129, %127 ], [ %154, %135 ]
  %174 = and i64 %1, 63
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %171
  %177 = getelementptr inbounds nuw i8, ptr %4, i64 125
  %178 = load i64, ptr %177, align 1
  %179 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %180 = load i64, ptr %179, align 1
  %181 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %182 = load i64, ptr %181, align 1
  br label %220

183:                                              ; preds = %171
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %185 = getelementptr inbounds i8, ptr %184, i64 -64
  %186 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %187 = load <4 x i64>, ptr %185, align 1
  %188 = load <4 x i64>, ptr %186, align 1
  %189 = xor <4 x i64> %188, %187
  %190 = bitcast <4 x i64> %189 to <8 x i32>
  %191 = shufflevector <8 x i32> %190, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %192 = bitcast <8 x i32> %191 to <4 x i64>
  %193 = and <4 x i64> %189, splat (i64 4294967295)
  %194 = and <4 x i64> %192, splat (i64 4294967295)
  %195 = mul nuw <4 x i64> %194, %193
  %196 = shufflevector <4 x i64> %187, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %197 = add <4 x i64> %173, %196
  %198 = add <4 x i64> %197, %195
  %199 = getelementptr inbounds i8, ptr %184, i64 -32
  %200 = load <4 x i64>, ptr %199, align 1
  %201 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %202 = load <4 x i64>, ptr %201, align 1
  %203 = xor <4 x i64> %202, %200
  %204 = bitcast <4 x i64> %203 to <8 x i32>
  %205 = shufflevector <8 x i32> %204, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %206 = bitcast <8 x i32> %205 to <4 x i64>
  %207 = and <4 x i64> %203, splat (i64 4294967295)
  %208 = and <4 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <4 x i64> %208, %207
  %210 = shufflevector <4 x i64> %200, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %211 = add <4 x i64> %172, %210
  %212 = add <4 x i64> %211, %209
  %213 = bitcast <4 x i64> %188 to i256
  %214 = lshr i256 %213, 32
  %215 = trunc i256 %214 to i64
  %216 = lshr i256 %213, 96
  %217 = trunc i256 %216 to i64
  %218 = lshr i256 %213, 160
  %219 = trunc i256 %218 to i64
  br label %220

220:                                              ; preds = %176, %183
  %221 = phi i64 [ %182, %176 ], [ %219, %183 ]
  %222 = phi i64 [ %180, %176 ], [ %217, %183 ]
  %223 = phi i64 [ %178, %176 ], [ %215, %183 ]
  %224 = phi <4 x i64> [ %172, %176 ], [ %212, %183 ]
  %225 = phi <4 x i64> [ %173, %176 ], [ %198, %183 ]
  %226 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %227 = mul i64 %1, -7046029288634856825
  %228 = extractelement <4 x i64> %225, i64 0
  %229 = load i64, ptr %226, align 1
  %230 = xor i64 %229, %228
  %231 = extractelement <4 x i64> %225, i64 1
  %232 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %233 = load i64, ptr %232, align 1
  %234 = xor i64 %233, %231
  %235 = zext i64 %230 to i128
  %236 = zext i64 %234 to i128
  %237 = mul nuw i128 %236, %235
  %238 = lshr i128 %237, 64
  %239 = xor i128 %238, %237
  %240 = trunc i128 %239 to i64
  %241 = add i64 %227, %240
  %242 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %243 = extractelement <4 x i64> %225, i64 2
  %244 = load i64, ptr %242, align 1
  %245 = xor i64 %244, %243
  %246 = extractelement <4 x i64> %225, i64 3
  %247 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %248 = load i64, ptr %247, align 1
  %249 = xor i64 %248, %246
  %250 = zext i64 %245 to i128
  %251 = zext i64 %249 to i128
  %252 = mul nuw i128 %251, %250
  %253 = lshr i128 %252, 64
  %254 = xor i128 %253, %252
  %255 = trunc i128 %254 to i64
  %256 = add i64 %241, %255
  %257 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %258 = extractelement <4 x i64> %224, i64 0
  %259 = load i64, ptr %257, align 1
  %260 = xor i64 %259, %258
  %261 = extractelement <4 x i64> %224, i64 1
  %262 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %263 = load i64, ptr %262, align 1
  %264 = xor i64 %263, %261
  %265 = zext i64 %260 to i128
  %266 = zext i64 %264 to i128
  %267 = mul nuw i128 %266, %265
  %268 = lshr i128 %267, 64
  %269 = xor i128 %268, %267
  %270 = trunc i128 %269 to i64
  %271 = add i64 %256, %270
  %272 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %273 = extractelement <4 x i64> %224, i64 2
  %274 = load i64, ptr %272, align 1
  %275 = xor i64 %274, %273
  %276 = extractelement <4 x i64> %224, i64 3
  %277 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %276
  %280 = zext i64 %275 to i128
  %281 = zext i64 %279 to i128
  %282 = mul nuw i128 %281, %280
  %283 = lshr i128 %282, 64
  %284 = xor i128 %283, %282
  %285 = trunc i128 %284 to i64
  %286 = add i64 %271, %285
  %287 = lshr i64 %286, 37
  %288 = xor i64 %287, %286
  %289 = mul i64 %288, 1609587929392839161
  %290 = lshr i64 %289, 32
  %291 = xor i64 %290, %289
  %292 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %293 = mul i64 %1, -4417276706812531889
  %294 = xor i64 %293, -1
  %295 = load i64, ptr %292, align 1
  %296 = xor i64 %295, %228
  %297 = xor i64 %223, %231
  %298 = zext i64 %296 to i128
  %299 = zext i64 %297 to i128
  %300 = mul nuw i128 %299, %298
  %301 = lshr i128 %300, 64
  %302 = xor i128 %301, %300
  %303 = trunc i128 %302 to i64
  %304 = add i64 %303, %294
  %305 = xor i64 %222, %243
  %306 = xor i64 %221, %246
  %307 = zext i64 %305 to i128
  %308 = zext i64 %306 to i128
  %309 = mul nuw i128 %308, %307
  %310 = lshr i128 %309, 64
  %311 = xor i128 %310, %309
  %312 = trunc i128 %311 to i64
  %313 = add i64 %304, %312
  %314 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %315 = load i64, ptr %314, align 1
  %316 = xor i64 %315, %258
  %317 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %318 = load i64, ptr %317, align 1
  %319 = xor i64 %318, %261
  %320 = zext i64 %316 to i128
  %321 = zext i64 %319 to i128
  %322 = mul nuw i128 %321, %320
  %323 = lshr i128 %322, 64
  %324 = xor i128 %323, %322
  %325 = trunc i128 %324 to i64
  %326 = add i64 %313, %325
  %327 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %328 = load i64, ptr %327, align 1
  %329 = xor i64 %328, %273
  %330 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %331 = load i64, ptr %330, align 1
  %332 = xor i64 %331, %276
  %333 = zext i64 %329 to i128
  %334 = zext i64 %332 to i128
  %335 = mul nuw i128 %334, %333
  %336 = lshr i128 %335, 64
  %337 = xor i128 %336, %335
  %338 = trunc i128 %337 to i64
  %339 = add i64 %326, %338
  %340 = lshr i64 %339, 37
  %341 = xor i64 %340, %339
  %342 = mul i64 %341, 1609587929392839161
  %343 = lshr i64 %342, 32
  %344 = xor i64 %343, %342
  %345 = insertvalue { i64, i64 } poison, i64 %291, 0
  %346 = insertvalue { i64, i64 } %345, i64 %344, 1
  br label %347

347:                                              ; preds = %220, %56
  %348 = phi { i64, i64 } [ %57, %56 ], [ %346, %220 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #26
  ret { i64, i64 } %348
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %129

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %45

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %2, -4734510112055689544
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 2066345149520216444, %2
  %15 = xor i64 %13, %14
  %16 = xor i64 %10, %15
  %17 = zext i64 %16 to i128
  %18 = mul nuw i128 %17, 11400714785074694791
  %19 = trunc i128 %18 to i64
  %20 = lshr i128 %18, 64
  %21 = trunc nuw i128 %20 to i64
  %22 = mul nuw nsw i64 %1, 374761393
  %23 = add i64 %22, %19
  %24 = mul i64 %15, -7046029288634856825
  %25 = add i64 %24, %21
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %23
  %28 = zext i64 %27 to i128
  %29 = mul nuw i128 %28, 14029467366897019727
  %30 = trunc i128 %29 to i64
  %31 = lshr i128 %29, 64
  %32 = trunc nuw i128 %31 to i64
  %33 = mul i64 %25, -4417276706812531889
  %34 = add i64 %33, %32
  %35 = lshr i64 %30, 37
  %36 = xor i64 %35, %30
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  %40 = lshr i64 %34, 37
  %41 = xor i64 %40, %34
  %42 = mul i64 %41, 1609587929392839161
  %43 = lshr i64 %42, 32
  %44 = xor i64 %43, %42
  br label %124

45:                                               ; preds = %5
  %46 = icmp samesign ugt i64 %1, 3
  br i1 %46, label %47, label %85

47:                                               ; preds = %45
  %48 = load i32, ptr %0, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %50 = getelementptr inbounds i8, ptr %49, i64 -4
  %51 = load i32, ptr %50, align 1
  %52 = zext i32 %48 to i64
  %53 = zext i32 %51 to i64
  %54 = shl nuw i64 %53, 32
  %55 = or disjoint i64 %54, %52
  %56 = tail call noundef i64 @llvm.bswap.i64(i64 %55)
  %57 = add i64 %2, -4734510112055689544
  %58 = xor i64 %55, %57
  %59 = sub i64 2066345149520216444, %2
  %60 = xor i64 %56, %59
  %61 = lshr i64 %58, 51
  %62 = xor i64 %61, %58
  %63 = mul i64 %62, 2654435761
  %64 = add i64 %63, %1
  %65 = lshr i64 %64, 47
  %66 = xor i64 %65, %64
  %67 = mul i64 %66, -4417276706812531889
  %68 = lshr i64 %60, 47
  %69 = xor i64 %68, %60
  %70 = mul i64 %69, -7046029288634856825
  %71 = sub i64 %70, %1
  %72 = lshr i64 %71, 43
  %73 = xor i64 %72, %71
  %74 = mul i64 %73, -8796714831421723037
  %75 = lshr i64 %67, 37
  %76 = xor i64 %75, %67
  %77 = mul i64 %76, 1609587929392839161
  %78 = lshr i64 %77, 32
  %79 = xor i64 %78, %77
  %80 = lshr i64 %74, 37
  %81 = xor i64 %80, %74
  %82 = mul i64 %81, 1609587929392839161
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  br label %124

85:                                               ; preds = %45
  %86 = icmp eq i64 %1, 0
  br i1 %86, label %124, label %87

87:                                               ; preds = %85
  %88 = load i8, ptr %0, align 1
  %89 = lshr i64 %1, 1
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr i8, ptr %0, i64 %1
  %93 = getelementptr i8, ptr %92, i64 -1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %88 to i32
  %96 = zext i8 %91 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = or disjoint i32 %97, %95
  %99 = zext i8 %94 to i32
  %100 = shl nuw nsw i32 %99, 16
  %101 = or disjoint i32 %98, %100
  %102 = trunc nuw nsw i64 %1 to i32
  %103 = shl nuw nsw i32 %102, 24
  %104 = or disjoint i32 %101, %103
  %105 = tail call noundef i32 @llvm.bswap.i32(i32 %104)
  %106 = zext nneg i32 %104 to i64
  %107 = add i64 %2, 963444408
  %108 = xor i64 %107, %106
  %109 = zext i32 %105 to i64
  %110 = sub i64 3192628259, %2
  %111 = xor i64 %110, %109
  %112 = mul i64 %108, -7046029288634856825
  %113 = mul i64 %111, 2870177450012600261
  %114 = lshr i64 %112, 37
  %115 = xor i64 %114, %112
  %116 = mul i64 %115, 1609587929392839161
  %117 = lshr i64 %116, 32
  %118 = xor i64 %117, %116
  %119 = lshr i64 %113, 37
  %120 = xor i64 %119, %113
  %121 = mul i64 %120, 1609587929392839161
  %122 = lshr i64 %121, 32
  %123 = xor i64 %122, %121
  br label %124

124:                                              ; preds = %87, %85, %47, %7
  %125 = phi i64 [ %44, %7 ], [ %84, %47 ], [ %123, %87 ], [ 0, %85 ]
  %126 = phi i64 [ %39, %7 ], [ %79, %47 ], [ %118, %87 ], [ 0, %85 ]
  %127 = insertvalue { i64, i64 } poison, i64 %126, 0
  %128 = insertvalue { i64, i64 } %127, i64 %125, 1
  br label %312

129:                                              ; preds = %3
  %130 = icmp ult i64 %1, 129
  br i1 %130, label %131, label %306

131:                                              ; preds = %129
  %132 = mul i64 %1, -7046029288634856825
  %133 = icmp samesign ugt i64 %1, 32
  br i1 %133, label %134, label %249

134:                                              ; preds = %131
  %135 = icmp samesign ugt i64 %1, 64
  br i1 %135, label %136, label %211

136:                                              ; preds = %134
  %137 = icmp samesign ugt i64 %1, 96
  br i1 %137, label %138, label %173

138:                                              ; preds = %136
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %141 = getelementptr inbounds i8, ptr %140, i64 -64
  %142 = load i64, ptr %139, align 1
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %144 = load i64, ptr %143, align 1
  %145 = add i64 %2, 4554437623014685352
  %146 = xor i64 %142, %145
  %147 = sub i64 2111919702937427193, %2
  %148 = xor i64 %144, %147
  %149 = zext i64 %146 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = add i64 %132, %154
  %156 = load i64, ptr %141, align 1
  %157 = getelementptr inbounds i8, ptr %140, i64 -56
  %158 = load i64, ptr %157, align 1
  %159 = add i64 %158, %156
  %160 = xor i64 %155, %159
  %161 = add i64 %2, 3556072174620004746
  %162 = xor i64 %156, %161
  %163 = sub i64 7238261902898274248, %2
  %164 = xor i64 %158, %163
  %165 = zext i64 %162 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %144, %142
  %172 = xor i64 %171, %170
  br label %173

173:                                              ; preds = %138, %136
  %174 = phi i64 [ %160, %138 ], [ %132, %136 ]
  %175 = phi i64 [ %172, %138 ], [ 0, %136 ]
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %177 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %178 = getelementptr inbounds i8, ptr %177, i64 -48
  %179 = load i64, ptr %176, align 1
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %181 = load i64, ptr %180, align 1
  %182 = add i64 %2, -3818837453329782724
  %183 = xor i64 %179, %182
  %184 = sub i64 -6688317018830679928, %2
  %185 = xor i64 %181, %184
  %186 = zext i64 %183 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %174, %191
  %193 = load i64, ptr %178, align 1
  %194 = getelementptr inbounds i8, ptr %177, i64 -40
  %195 = load i64, ptr %194, align 1
  %196 = add i64 %195, %193
  %197 = xor i64 %192, %196
  %198 = add i64 %2, 5690594596133299313
  %199 = xor i64 %193, %198
  %200 = sub i64 -2833645246901970632, %2
  %201 = xor i64 %195, %200
  %202 = zext i64 %199 to i128
  %203 = zext i64 %201 to i128
  %204 = mul nuw i128 %203, %202
  %205 = lshr i128 %204, 64
  %206 = xor i128 %205, %204
  %207 = trunc i128 %206 to i64
  %208 = add i64 %175, %207
  %209 = add i64 %181, %179
  %210 = xor i64 %208, %209
  br label %211

211:                                              ; preds = %173, %134
  %212 = phi i64 [ %197, %173 ], [ %132, %134 ]
  %213 = phi i64 [ %210, %173 ], [ 0, %134 ]
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %216 = getelementptr inbounds i8, ptr %215, i64 -32
  %217 = load i64, ptr %214, align 1
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %219 = load i64, ptr %218, align 1
  %220 = add i64 %2, 8711581037947681227
  %221 = xor i64 %217, %220
  %222 = sub i64 2410270004345854594, %2
  %223 = xor i64 %219, %222
  %224 = zext i64 %221 to i128
  %225 = zext i64 %223 to i128
  %226 = mul nuw i128 %225, %224
  %227 = lshr i128 %226, 64
  %228 = xor i128 %227, %226
  %229 = trunc i128 %228 to i64
  %230 = add i64 %212, %229
  %231 = load i64, ptr %216, align 1
  %232 = getelementptr inbounds i8, ptr %215, i64 -24
  %233 = load i64, ptr %232, align 1
  %234 = add i64 %233, %231
  %235 = xor i64 %230, %234
  %236 = add i64 %2, -8204357891075471176
  %237 = xor i64 %231, %236
  %238 = sub i64 5487137525590930912, %2
  %239 = xor i64 %233, %238
  %240 = zext i64 %237 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %213, %245
  %247 = add i64 %219, %217
  %248 = xor i64 %246, %247
  br label %249

249:                                              ; preds = %211, %131
  %250 = phi i64 [ %235, %211 ], [ %132, %131 ]
  %251 = phi i64 [ %248, %211 ], [ 0, %131 ]
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %253 = getelementptr inbounds i8, ptr %252, i64 -16
  %254 = load i64, ptr %0, align 1
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %256 = load i64, ptr %255, align 1
  %257 = add i64 %2, -4734510112055689544
  %258 = xor i64 %254, %257
  %259 = sub i64 2066345149520216444, %2
  %260 = xor i64 %256, %259
  %261 = zext i64 %258 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %250, %266
  %268 = load i64, ptr %253, align 1
  %269 = getelementptr inbounds i8, ptr %252, i64 -8
  %270 = load i64, ptr %269, align 1
  %271 = add i64 %270, %268
  %272 = xor i64 %267, %271
  %273 = add i64 %2, -2623469361688619810
  %274 = xor i64 %268, %273
  %275 = sub i64 2262974939099578482, %2
  %276 = xor i64 %270, %275
  %277 = zext i64 %274 to i128
  %278 = zext i64 %276 to i128
  %279 = mul nuw i128 %278, %277
  %280 = lshr i128 %279, 64
  %281 = xor i128 %280, %279
  %282 = trunc i128 %281 to i64
  %283 = add i64 %251, %282
  %284 = add i64 %256, %254
  %285 = xor i64 %283, %284
  %286 = add i64 %285, %272
  %287 = mul i64 %272, -7046029288634856825
  %288 = mul i64 %285, -8796714831421723037
  %289 = sub i64 %1, %2
  %290 = mul i64 %289, -4417276706812531889
  %291 = add i64 %287, %290
  %292 = add i64 %291, %288
  %293 = lshr i64 %286, 37
  %294 = xor i64 %293, %286
  %295 = mul i64 %294, 1609587929392839161
  %296 = lshr i64 %295, 32
  %297 = xor i64 %296, %295
  %298 = lshr i64 %292, 37
  %299 = xor i64 %298, %292
  %300 = mul i64 %299, 1609587929392839161
  %301 = lshr i64 %300, 32
  %302 = xor i64 %301, %300
  %303 = sub i64 0, %302
  %304 = insertvalue { i64, i64 } poison, i64 %297, 0
  %305 = insertvalue { i64, i64 } %304, i64 %303, 1
  br label %312

306:                                              ; preds = %129
  %307 = icmp ult i64 %1, 241
  br i1 %307, label %308, label %310

308:                                              ; preds = %306
  %309 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %312

310:                                              ; preds = %306
  %311 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2)
  br label %312

312:                                              ; preds = %124, %249, %308, %310
  %313 = phi { i64, i64 } [ %128, %124 ], [ %305, %249 ], [ %309, %308 ], [ %311, %310 ]
  ret { i64, i64 } %313
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset(ptr noundef writeonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %6, align 16
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %8, align 32
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @kSecret, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 16, ptr %14, align 4
  br label %15

15:                                               ; preds = %1, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSecret(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %1, ptr %14, align 16
  %15 = trunc i64 %2 to i32
  %16 = add i32 %15, -64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 %16, ptr %17, align 4
  %18 = lshr i32 %16, 3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %18, ptr %19, align 4
  %20 = icmp eq ptr %1, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = icmp ult i64 %2, 136
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %21, %5, %3
  %25 = phi i32 [ 1, %3 ], [ 1, %5 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_reset_withSeed(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %6, i8 0, i64 320, i1 false)
  store i64 3266489917, ptr %0, align 64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %1, ptr %14, align 32
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 128, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 16, ptr %17, align 4
  %18 = add i64 %1, -4734510112055689544
  store i64 %18, ptr %5, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %20 = sub i64 2066345149520216444, %1
  store i64 %20, ptr %19, align 1
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %22 = add i64 %1, -2623469361688619810
  store i64 %22, ptr %21, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %24 = sub i64 2262974939099578482, %1
  store i64 %24, ptr %23, align 1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %26 = add i64 %1, 8711581037947681227
  store i64 %26, ptr %25, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %28 = sub i64 2410270004345854594, %1
  store i64 %28, ptr %27, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %30 = add i64 %1, -8204357891075471176
  store i64 %30, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %32 = sub i64 5487137525590930912, %1
  store i64 %32, ptr %31, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %34 = add i64 %1, -3818837453329782724
  store i64 %34, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %36 = sub i64 -6688317018830679928, %1
  store i64 %36, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %38 = add i64 %1, 5690594596133299313
  store i64 %38, ptr %37, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %40 = sub i64 -2833645246901970632, %1
  store i64 %40, ptr %39, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %42 = add i64 %1, 4554437623014685352
  store i64 %42, ptr %41, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %44 = sub i64 2111919702937427193, %1
  store i64 %44, ptr %43, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %46 = add i64 %1, 3556072174620004746
  store i64 %46, ptr %45, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %48 = sub i64 7238261902898274248, %1
  store i64 %48, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %50 = add i64 %1, -4329134394285701654
  store i64 %50, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %52 = sub i64 -1485321483350670907, %1
  store i64 %52, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %54 = add i64 %1, 5321830579834785047
  store i64 %54, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %56 = sub i64 -7032137544937171245, %1
  store i64 %56, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %58 = add i64 %1, -242834301215959509
  store i64 %58, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %60 = sub i64 -3588858202114426737, %1
  store i64 %60, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %62 = add i64 %1, 2883454493032893253
  store i64 %62, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %64 = sub i64 9097354517224871855, %1
  store i64 %64, ptr %63, align 1
  store ptr %5, ptr %15, align 16
  br label %65

65:                                               ; preds = %2, %4
  %66 = phi i32 [ 0, %4 ], [ 1, %2 ]
  ret i32 %66
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #17 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %549, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %8, %2
  store i64 %9, ptr %7, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %11 = load i32, ptr %10, align 64
  %12 = zext i32 %11 to i64
  %13 = add i64 %2, %12
  %14 = icmp ult i64 %13, 257
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %18 = trunc i64 %2 to i32
  %19 = load i32, ptr %10, align 64
  %20 = add i32 %19, %18
  br label %547

21:                                               ; preds = %5
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %278, label %23

23:                                               ; preds = %21
  %24 = sub i32 256, %11
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull readonly align 1 %1, i64 %25, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, ptr %29, align 4
  %38 = sub i32 %31, %37
  %39 = zext i32 %38 to i64
  %40 = icmp ugt i32 %38, 4
  %41 = shl i32 %37, 3
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %33, i64 %42
  br i1 %40, label %160, label %44

44:                                               ; preds = %23
  %45 = icmp eq i32 %31, %37
  %46 = load <4 x i64>, ptr %0, align 32
  br i1 %45, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %49 = load <4 x i64>, ptr %48, align 32
  br label %90

50:                                               ; preds = %44
  %51 = tail call i64 @llvm.umax.i64(i64 %39, i64 1)
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = load <4 x i64>, ptr %52, align 32
  br label %54

54:                                               ; preds = %50, %54
  %55 = phi <4 x i64> [ %87, %54 ], [ %53, %50 ]
  %56 = phi <4 x i64> [ %73, %54 ], [ %46, %50 ]
  %57 = phi i64 [ %88, %54 ], [ 0, %50 ]
  %58 = shl i64 %57, 6
  %59 = getelementptr inbounds nuw i8, ptr %26, i64 %58
  %60 = shl i64 %57, 3
  %61 = getelementptr inbounds nuw i8, ptr %43, i64 %60
  %62 = load <4 x i64>, ptr %59, align 1
  %63 = load <4 x i64>, ptr %61, align 1
  %64 = xor <4 x i64> %63, %62
  %65 = bitcast <4 x i64> %64 to <8 x i32>
  %66 = shufflevector <8 x i32> %65, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = and <4 x i64> %64, splat (i64 4294967295)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, %68
  %71 = shufflevector <4 x i64> %62, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %72 = add <4 x i64> %56, %71
  %73 = add <4 x i64> %72, %70
  store <4 x i64> %73, ptr %0, align 32
  %74 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %75 = load <4 x i64>, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %77 = load <4 x i64>, ptr %76, align 1
  %78 = xor <4 x i64> %77, %75
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = shufflevector <4 x i64> %75, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %86 = add <4 x i64> %55, %85
  %87 = add <4 x i64> %86, %84
  store <4 x i64> %87, ptr %52, align 32
  %88 = add nuw nsw i64 %57, 1
  %89 = icmp eq i64 %88, %51
  br i1 %89, label %90, label %54

90:                                               ; preds = %54, %47
  %91 = phi <4 x i64> [ %49, %47 ], [ %87, %54 ]
  %92 = phi <4 x i64> [ %46, %47 ], [ %73, %54 ]
  %93 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  %94 = lshr <4 x i64> %92, splat (i64 47)
  %95 = load <4 x i64>, ptr %93, align 1
  %96 = xor <4 x i64> %95, %94
  %97 = xor <4 x i64> %96, %92
  %98 = bitcast <4 x i64> %97 to <8 x i32>
  %99 = shufflevector <8 x i32> %98, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %100 = bitcast <8 x i32> %99 to <4 x i64>
  %101 = and <4 x i64> %97, splat (i64 4294967295)
  %102 = mul nuw <4 x i64> %101, splat (i64 2654435761)
  %103 = mul <4 x i64> %100, splat (i64 -7046029290881679360)
  %104 = add <4 x i64> %103, %102
  store <4 x i64> %104, ptr %0, align 32
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %106 = lshr <4 x i64> %91, splat (i64 47)
  %107 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %108 = load <4 x i64>, ptr %107, align 1
  %109 = xor <4 x i64> %108, %106
  %110 = xor <4 x i64> %109, %91
  %111 = bitcast <4 x i64> %110 to <8 x i32>
  %112 = shufflevector <8 x i32> %111, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %113 = bitcast <8 x i32> %112 to <4 x i64>
  %114 = and <4 x i64> %110, splat (i64 4294967295)
  %115 = mul nuw <4 x i64> %114, splat (i64 2654435761)
  %116 = mul <4 x i64> %113, splat (i64 -7046029290881679360)
  %117 = add <4 x i64> %116, %115
  store <4 x i64> %117, ptr %105, align 32
  %118 = shl nuw nsw i64 %39, 6
  %119 = getelementptr inbounds nuw i8, ptr %26, i64 %118
  %120 = sub nsw i64 4, %39
  %121 = icmp eq i32 %38, 4
  br i1 %121, label %158, label %122

122:                                              ; preds = %90, %122
  %123 = phi <4 x i64> [ %155, %122 ], [ %117, %90 ]
  %124 = phi <4 x i64> [ %141, %122 ], [ %104, %90 ]
  %125 = phi i64 [ %156, %122 ], [ 0, %90 ]
  %126 = shl i64 %125, 6
  %127 = getelementptr inbounds nuw i8, ptr %119, i64 %126
  %128 = shl i64 %125, 3
  %129 = getelementptr inbounds nuw i8, ptr %33, i64 %128
  %130 = load <4 x i64>, ptr %127, align 1
  %131 = load <4 x i64>, ptr %129, align 1
  %132 = xor <4 x i64> %131, %130
  %133 = bitcast <4 x i64> %132 to <8 x i32>
  %134 = shufflevector <8 x i32> %133, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %135 = bitcast <8 x i32> %134 to <4 x i64>
  %136 = and <4 x i64> %132, splat (i64 4294967295)
  %137 = and <4 x i64> %135, splat (i64 4294967295)
  %138 = mul nuw <4 x i64> %137, %136
  %139 = shufflevector <4 x i64> %130, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %140 = add <4 x i64> %124, %139
  %141 = add <4 x i64> %140, %138
  store <4 x i64> %141, ptr %0, align 32
  %142 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %145 = load <4 x i64>, ptr %144, align 1
  %146 = xor <4 x i64> %145, %143
  %147 = bitcast <4 x i64> %146 to <8 x i32>
  %148 = shufflevector <8 x i32> %147, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %149 = bitcast <8 x i32> %148 to <4 x i64>
  %150 = and <4 x i64> %146, splat (i64 4294967295)
  %151 = and <4 x i64> %149, splat (i64 4294967295)
  %152 = mul nuw <4 x i64> %151, %150
  %153 = shufflevector <4 x i64> %143, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %154 = add <4 x i64> %123, %153
  %155 = add <4 x i64> %154, %152
  store <4 x i64> %155, ptr %105, align 32
  %156 = add nuw i64 %125, 1
  %157 = icmp eq i64 %156, %120
  br i1 %157, label %158, label %122

158:                                              ; preds = %122, %90
  %159 = trunc nuw nsw i64 %120 to i32
  br label %276

160:                                              ; preds = %23
  %161 = load <4 x i64>, ptr %26, align 1
  %162 = load <4 x i64>, ptr %43, align 1
  %163 = xor <4 x i64> %162, %161
  %164 = bitcast <4 x i64> %163 to <8 x i32>
  %165 = shufflevector <8 x i32> %164, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %166 = bitcast <8 x i32> %165 to <4 x i64>
  %167 = and <4 x i64> %163, splat (i64 4294967295)
  %168 = and <4 x i64> %166, splat (i64 4294967295)
  %169 = mul nuw <4 x i64> %168, %167
  %170 = shufflevector <4 x i64> %161, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %171 = load <4 x i64>, ptr %0, align 32
  %172 = add <4 x i64> %171, %170
  %173 = add <4 x i64> %172, %169
  store <4 x i64> %173, ptr %0, align 32
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %175 = load <4 x i64>, ptr %174, align 1
  %176 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %177 = load <4 x i64>, ptr %176, align 1
  %178 = xor <4 x i64> %177, %175
  %179 = bitcast <4 x i64> %178 to <8 x i32>
  %180 = shufflevector <8 x i32> %179, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %181 = bitcast <8 x i32> %180 to <4 x i64>
  %182 = and <4 x i64> %178, splat (i64 4294967295)
  %183 = and <4 x i64> %181, splat (i64 4294967295)
  %184 = mul nuw <4 x i64> %183, %182
  %185 = shufflevector <4 x i64> %175, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %187 = load <4 x i64>, ptr %186, align 32
  %188 = add <4 x i64> %187, %185
  %189 = add <4 x i64> %188, %184
  store <4 x i64> %189, ptr %186, align 32
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %191 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %192 = load <4 x i64>, ptr %190, align 1
  %193 = load <4 x i64>, ptr %191, align 1
  %194 = xor <4 x i64> %193, %192
  %195 = bitcast <4 x i64> %194 to <8 x i32>
  %196 = shufflevector <8 x i32> %195, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %197 = bitcast <8 x i32> %196 to <4 x i64>
  %198 = and <4 x i64> %194, splat (i64 4294967295)
  %199 = and <4 x i64> %197, splat (i64 4294967295)
  %200 = mul nuw <4 x i64> %199, %198
  %201 = shufflevector <4 x i64> %192, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %202 = add <4 x i64> %173, %201
  %203 = add <4 x i64> %202, %200
  store <4 x i64> %203, ptr %0, align 32
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %205 = load <4 x i64>, ptr %204, align 1
  %206 = getelementptr inbounds nuw i8, ptr %43, i64 40
  %207 = load <4 x i64>, ptr %206, align 1
  %208 = xor <4 x i64> %207, %205
  %209 = bitcast <4 x i64> %208 to <8 x i32>
  %210 = shufflevector <8 x i32> %209, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %211 = bitcast <8 x i32> %210 to <4 x i64>
  %212 = and <4 x i64> %208, splat (i64 4294967295)
  %213 = and <4 x i64> %211, splat (i64 4294967295)
  %214 = mul nuw <4 x i64> %213, %212
  %215 = shufflevector <4 x i64> %205, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %216 = add <4 x i64> %189, %215
  %217 = add <4 x i64> %216, %214
  store <4 x i64> %217, ptr %186, align 32
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %219 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %220 = load <4 x i64>, ptr %218, align 1
  %221 = load <4 x i64>, ptr %219, align 1
  %222 = xor <4 x i64> %221, %220
  %223 = bitcast <4 x i64> %222 to <8 x i32>
  %224 = shufflevector <8 x i32> %223, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %225 = bitcast <8 x i32> %224 to <4 x i64>
  %226 = and <4 x i64> %222, splat (i64 4294967295)
  %227 = and <4 x i64> %225, splat (i64 4294967295)
  %228 = mul nuw <4 x i64> %227, %226
  %229 = shufflevector <4 x i64> %220, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %230 = add <4 x i64> %203, %229
  %231 = add <4 x i64> %230, %228
  store <4 x i64> %231, ptr %0, align 32
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %233 = load <4 x i64>, ptr %232, align 1
  %234 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %235 = load <4 x i64>, ptr %234, align 1
  %236 = xor <4 x i64> %235, %233
  %237 = bitcast <4 x i64> %236 to <8 x i32>
  %238 = shufflevector <8 x i32> %237, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %239 = bitcast <8 x i32> %238 to <4 x i64>
  %240 = and <4 x i64> %236, splat (i64 4294967295)
  %241 = and <4 x i64> %239, splat (i64 4294967295)
  %242 = mul nuw <4 x i64> %241, %240
  %243 = shufflevector <4 x i64> %233, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %244 = add <4 x i64> %217, %243
  %245 = add <4 x i64> %244, %242
  store <4 x i64> %245, ptr %186, align 32
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %247 = getelementptr inbounds nuw i8, ptr %43, i64 24
  %248 = load <4 x i64>, ptr %246, align 1
  %249 = load <4 x i64>, ptr %247, align 1
  %250 = xor <4 x i64> %249, %248
  %251 = bitcast <4 x i64> %250 to <8 x i32>
  %252 = shufflevector <8 x i32> %251, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %253 = bitcast <8 x i32> %252 to <4 x i64>
  %254 = and <4 x i64> %250, splat (i64 4294967295)
  %255 = and <4 x i64> %253, splat (i64 4294967295)
  %256 = mul nuw <4 x i64> %255, %254
  %257 = shufflevector <4 x i64> %248, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %258 = add <4 x i64> %231, %257
  %259 = add <4 x i64> %258, %256
  store <4 x i64> %259, ptr %0, align 32
  %260 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %261 = load <4 x i64>, ptr %260, align 1
  %262 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %263 = load <4 x i64>, ptr %262, align 1
  %264 = xor <4 x i64> %263, %261
  %265 = bitcast <4 x i64> %264 to <8 x i32>
  %266 = shufflevector <8 x i32> %265, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %267 = bitcast <8 x i32> %266 to <4 x i64>
  %268 = and <4 x i64> %264, splat (i64 4294967295)
  %269 = and <4 x i64> %267, splat (i64 4294967295)
  %270 = mul nuw <4 x i64> %269, %268
  %271 = shufflevector <4 x i64> %261, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %272 = add <4 x i64> %245, %271
  %273 = add <4 x i64> %272, %270
  store <4 x i64> %273, ptr %186, align 32
  %274 = load i32, ptr %29, align 4
  %275 = add i32 %274, 4
  br label %276

276:                                              ; preds = %158, %160
  %277 = phi i32 [ %275, %160 ], [ %159, %158 ]
  store i32 %277, ptr %29, align 4
  store i32 0, ptr %10, align 64
  br label %278

278:                                              ; preds = %276, %21
  %279 = phi ptr [ %28, %276 ], [ %1, %21 ]
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 256
  %281 = icmp ugt ptr %280, %6
  br i1 %281, label %538, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds i8, ptr %6, i64 -256
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %288 = load i32, ptr %284, align 4
  %289 = load i32, ptr %285, align 4
  %290 = load ptr, ptr %286, align 16
  %291 = load i32, ptr %287, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %295 = getelementptr inbounds nuw i8, ptr %290, i64 %292
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %297 = getelementptr inbounds nuw i8, ptr %295, i64 32
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %299

299:                                              ; preds = %534, %282
  %300 = phi i32 [ %288, %282 ], [ %535, %534 ]
  %301 = phi ptr [ %279, %282 ], [ %536, %534 ]
  %302 = sub i32 %289, %300
  %303 = zext i32 %302 to i64
  %304 = icmp ugt i32 %302, 4
  %305 = shl i32 %300, 3
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds nuw i8, ptr %290, i64 %306
  br i1 %304, label %419, label %308

308:                                              ; preds = %299
  %309 = icmp eq i32 %289, %300
  %310 = load <4 x i64>, ptr %0, align 32
  br i1 %309, label %311, label %313

311:                                              ; preds = %308
  %312 = load <4 x i64>, ptr %294, align 32
  br label %352

313:                                              ; preds = %308
  %314 = tail call i64 @llvm.umax.i64(i64 %303, i64 1)
  %315 = load <4 x i64>, ptr %293, align 32
  br label %316

316:                                              ; preds = %313, %316
  %317 = phi <4 x i64> [ %349, %316 ], [ %315, %313 ]
  %318 = phi <4 x i64> [ %335, %316 ], [ %310, %313 ]
  %319 = phi i64 [ %350, %316 ], [ 0, %313 ]
  %320 = shl i64 %319, 6
  %321 = getelementptr inbounds nuw i8, ptr %301, i64 %320
  %322 = shl i64 %319, 3
  %323 = getelementptr inbounds nuw i8, ptr %307, i64 %322
  %324 = load <4 x i64>, ptr %321, align 1
  %325 = load <4 x i64>, ptr %323, align 1
  %326 = xor <4 x i64> %325, %324
  %327 = bitcast <4 x i64> %326 to <8 x i32>
  %328 = shufflevector <8 x i32> %327, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %329 = bitcast <8 x i32> %328 to <4 x i64>
  %330 = and <4 x i64> %326, splat (i64 4294967295)
  %331 = and <4 x i64> %329, splat (i64 4294967295)
  %332 = mul nuw <4 x i64> %331, %330
  %333 = shufflevector <4 x i64> %324, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %334 = add <4 x i64> %318, %333
  %335 = add <4 x i64> %334, %332
  store <4 x i64> %335, ptr %0, align 32
  %336 = getelementptr inbounds nuw i8, ptr %321, i64 32
  %337 = load <4 x i64>, ptr %336, align 1
  %338 = getelementptr inbounds nuw i8, ptr %323, i64 32
  %339 = load <4 x i64>, ptr %338, align 1
  %340 = xor <4 x i64> %339, %337
  %341 = bitcast <4 x i64> %340 to <8 x i32>
  %342 = shufflevector <8 x i32> %341, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %343 = bitcast <8 x i32> %342 to <4 x i64>
  %344 = and <4 x i64> %340, splat (i64 4294967295)
  %345 = and <4 x i64> %343, splat (i64 4294967295)
  %346 = mul nuw <4 x i64> %345, %344
  %347 = shufflevector <4 x i64> %337, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %348 = add <4 x i64> %317, %347
  %349 = add <4 x i64> %348, %346
  store <4 x i64> %349, ptr %293, align 32
  %350 = add nuw nsw i64 %319, 1
  %351 = icmp eq i64 %350, %314
  br i1 %351, label %352, label %316

352:                                              ; preds = %316, %311
  %353 = phi <4 x i64> [ %312, %311 ], [ %349, %316 ]
  %354 = phi <4 x i64> [ %310, %311 ], [ %335, %316 ]
  %355 = lshr <4 x i64> %354, splat (i64 47)
  %356 = load <4 x i64>, ptr %295, align 1
  %357 = xor <4 x i64> %356, %355
  %358 = xor <4 x i64> %357, %354
  %359 = bitcast <4 x i64> %358 to <8 x i32>
  %360 = shufflevector <8 x i32> %359, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %361 = bitcast <8 x i32> %360 to <4 x i64>
  %362 = and <4 x i64> %358, splat (i64 4294967295)
  %363 = mul nuw <4 x i64> %362, splat (i64 2654435761)
  %364 = mul <4 x i64> %361, splat (i64 -7046029290881679360)
  %365 = add <4 x i64> %364, %363
  store <4 x i64> %365, ptr %0, align 32
  %366 = lshr <4 x i64> %353, splat (i64 47)
  %367 = load <4 x i64>, ptr %297, align 1
  %368 = xor <4 x i64> %367, %366
  %369 = xor <4 x i64> %368, %353
  %370 = bitcast <4 x i64> %369 to <8 x i32>
  %371 = shufflevector <8 x i32> %370, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %372 = bitcast <8 x i32> %371 to <4 x i64>
  %373 = and <4 x i64> %369, splat (i64 4294967295)
  %374 = mul nuw <4 x i64> %373, splat (i64 2654435761)
  %375 = mul <4 x i64> %372, splat (i64 -7046029290881679360)
  %376 = add <4 x i64> %375, %374
  store <4 x i64> %376, ptr %296, align 32
  %377 = shl nuw nsw i64 %303, 6
  %378 = getelementptr inbounds nuw i8, ptr %301, i64 %377
  %379 = sub nsw i64 4, %303
  %380 = icmp eq i32 %302, 4
  br i1 %380, label %417, label %381

381:                                              ; preds = %352, %381
  %382 = phi <4 x i64> [ %414, %381 ], [ %376, %352 ]
  %383 = phi <4 x i64> [ %400, %381 ], [ %365, %352 ]
  %384 = phi i64 [ %415, %381 ], [ 0, %352 ]
  %385 = shl i64 %384, 6
  %386 = getelementptr inbounds nuw i8, ptr %378, i64 %385
  %387 = shl i64 %384, 3
  %388 = getelementptr inbounds nuw i8, ptr %290, i64 %387
  %389 = load <4 x i64>, ptr %386, align 1
  %390 = load <4 x i64>, ptr %388, align 1
  %391 = xor <4 x i64> %390, %389
  %392 = bitcast <4 x i64> %391 to <8 x i32>
  %393 = shufflevector <8 x i32> %392, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %394 = bitcast <8 x i32> %393 to <4 x i64>
  %395 = and <4 x i64> %391, splat (i64 4294967295)
  %396 = and <4 x i64> %394, splat (i64 4294967295)
  %397 = mul nuw <4 x i64> %396, %395
  %398 = shufflevector <4 x i64> %389, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %399 = add <4 x i64> %383, %398
  %400 = add <4 x i64> %399, %397
  store <4 x i64> %400, ptr %0, align 32
  %401 = getelementptr inbounds nuw i8, ptr %386, i64 32
  %402 = load <4 x i64>, ptr %401, align 1
  %403 = getelementptr inbounds nuw i8, ptr %388, i64 32
  %404 = load <4 x i64>, ptr %403, align 1
  %405 = xor <4 x i64> %404, %402
  %406 = bitcast <4 x i64> %405 to <8 x i32>
  %407 = shufflevector <8 x i32> %406, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %408 = bitcast <8 x i32> %407 to <4 x i64>
  %409 = and <4 x i64> %405, splat (i64 4294967295)
  %410 = and <4 x i64> %408, splat (i64 4294967295)
  %411 = mul nuw <4 x i64> %410, %409
  %412 = shufflevector <4 x i64> %402, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %413 = add <4 x i64> %382, %412
  %414 = add <4 x i64> %413, %411
  store <4 x i64> %414, ptr %296, align 32
  %415 = add nuw i64 %384, 1
  %416 = icmp eq i64 %415, %379
  br i1 %416, label %417, label %381

417:                                              ; preds = %381, %352
  %418 = trunc nuw nsw i64 %379 to i32
  br label %534

419:                                              ; preds = %299
  %420 = load <4 x i64>, ptr %301, align 1
  %421 = load <4 x i64>, ptr %307, align 1
  %422 = xor <4 x i64> %421, %420
  %423 = bitcast <4 x i64> %422 to <8 x i32>
  %424 = shufflevector <8 x i32> %423, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %425 = bitcast <8 x i32> %424 to <4 x i64>
  %426 = and <4 x i64> %422, splat (i64 4294967295)
  %427 = and <4 x i64> %425, splat (i64 4294967295)
  %428 = mul nuw <4 x i64> %427, %426
  %429 = shufflevector <4 x i64> %420, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %430 = load <4 x i64>, ptr %0, align 32
  %431 = add <4 x i64> %430, %429
  %432 = add <4 x i64> %431, %428
  store <4 x i64> %432, ptr %0, align 32
  %433 = getelementptr inbounds nuw i8, ptr %301, i64 32
  %434 = load <4 x i64>, ptr %433, align 1
  %435 = getelementptr inbounds nuw i8, ptr %307, i64 32
  %436 = load <4 x i64>, ptr %435, align 1
  %437 = xor <4 x i64> %436, %434
  %438 = bitcast <4 x i64> %437 to <8 x i32>
  %439 = shufflevector <8 x i32> %438, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %440 = bitcast <8 x i32> %439 to <4 x i64>
  %441 = and <4 x i64> %437, splat (i64 4294967295)
  %442 = and <4 x i64> %440, splat (i64 4294967295)
  %443 = mul nuw <4 x i64> %442, %441
  %444 = shufflevector <4 x i64> %434, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %445 = load <4 x i64>, ptr %298, align 32
  %446 = add <4 x i64> %445, %444
  %447 = add <4 x i64> %446, %443
  store <4 x i64> %447, ptr %298, align 32
  %448 = getelementptr inbounds nuw i8, ptr %301, i64 64
  %449 = getelementptr inbounds nuw i8, ptr %307, i64 8
  %450 = load <4 x i64>, ptr %448, align 1
  %451 = load <4 x i64>, ptr %449, align 1
  %452 = xor <4 x i64> %451, %450
  %453 = bitcast <4 x i64> %452 to <8 x i32>
  %454 = shufflevector <8 x i32> %453, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %455 = bitcast <8 x i32> %454 to <4 x i64>
  %456 = and <4 x i64> %452, splat (i64 4294967295)
  %457 = and <4 x i64> %455, splat (i64 4294967295)
  %458 = mul nuw <4 x i64> %457, %456
  %459 = shufflevector <4 x i64> %450, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %460 = add <4 x i64> %432, %459
  %461 = add <4 x i64> %460, %458
  store <4 x i64> %461, ptr %0, align 32
  %462 = getelementptr inbounds nuw i8, ptr %301, i64 96
  %463 = load <4 x i64>, ptr %462, align 1
  %464 = getelementptr inbounds nuw i8, ptr %307, i64 40
  %465 = load <4 x i64>, ptr %464, align 1
  %466 = xor <4 x i64> %465, %463
  %467 = bitcast <4 x i64> %466 to <8 x i32>
  %468 = shufflevector <8 x i32> %467, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %469 = bitcast <8 x i32> %468 to <4 x i64>
  %470 = and <4 x i64> %466, splat (i64 4294967295)
  %471 = and <4 x i64> %469, splat (i64 4294967295)
  %472 = mul nuw <4 x i64> %471, %470
  %473 = shufflevector <4 x i64> %463, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %474 = add <4 x i64> %447, %473
  %475 = add <4 x i64> %474, %472
  store <4 x i64> %475, ptr %298, align 32
  %476 = getelementptr inbounds nuw i8, ptr %301, i64 128
  %477 = getelementptr inbounds nuw i8, ptr %307, i64 16
  %478 = load <4 x i64>, ptr %476, align 1
  %479 = load <4 x i64>, ptr %477, align 1
  %480 = xor <4 x i64> %479, %478
  %481 = bitcast <4 x i64> %480 to <8 x i32>
  %482 = shufflevector <8 x i32> %481, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %483 = bitcast <8 x i32> %482 to <4 x i64>
  %484 = and <4 x i64> %480, splat (i64 4294967295)
  %485 = and <4 x i64> %483, splat (i64 4294967295)
  %486 = mul nuw <4 x i64> %485, %484
  %487 = shufflevector <4 x i64> %478, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %488 = add <4 x i64> %461, %487
  %489 = add <4 x i64> %488, %486
  store <4 x i64> %489, ptr %0, align 32
  %490 = getelementptr inbounds nuw i8, ptr %301, i64 160
  %491 = load <4 x i64>, ptr %490, align 1
  %492 = getelementptr inbounds nuw i8, ptr %307, i64 48
  %493 = load <4 x i64>, ptr %492, align 1
  %494 = xor <4 x i64> %493, %491
  %495 = bitcast <4 x i64> %494 to <8 x i32>
  %496 = shufflevector <8 x i32> %495, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %497 = bitcast <8 x i32> %496 to <4 x i64>
  %498 = and <4 x i64> %494, splat (i64 4294967295)
  %499 = and <4 x i64> %497, splat (i64 4294967295)
  %500 = mul nuw <4 x i64> %499, %498
  %501 = shufflevector <4 x i64> %491, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %502 = add <4 x i64> %475, %501
  %503 = add <4 x i64> %502, %500
  store <4 x i64> %503, ptr %298, align 32
  %504 = getelementptr inbounds nuw i8, ptr %301, i64 192
  %505 = getelementptr inbounds nuw i8, ptr %307, i64 24
  %506 = load <4 x i64>, ptr %504, align 1
  %507 = load <4 x i64>, ptr %505, align 1
  %508 = xor <4 x i64> %507, %506
  %509 = bitcast <4 x i64> %508 to <8 x i32>
  %510 = shufflevector <8 x i32> %509, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %511 = bitcast <8 x i32> %510 to <4 x i64>
  %512 = and <4 x i64> %508, splat (i64 4294967295)
  %513 = and <4 x i64> %511, splat (i64 4294967295)
  %514 = mul nuw <4 x i64> %513, %512
  %515 = shufflevector <4 x i64> %506, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %516 = add <4 x i64> %489, %515
  %517 = add <4 x i64> %516, %514
  store <4 x i64> %517, ptr %0, align 32
  %518 = getelementptr inbounds nuw i8, ptr %301, i64 224
  %519 = load <4 x i64>, ptr %518, align 1
  %520 = getelementptr inbounds nuw i8, ptr %307, i64 56
  %521 = load <4 x i64>, ptr %520, align 1
  %522 = xor <4 x i64> %521, %519
  %523 = bitcast <4 x i64> %522 to <8 x i32>
  %524 = shufflevector <8 x i32> %523, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %525 = bitcast <8 x i32> %524 to <4 x i64>
  %526 = and <4 x i64> %522, splat (i64 4294967295)
  %527 = and <4 x i64> %525, splat (i64 4294967295)
  %528 = mul nuw <4 x i64> %527, %526
  %529 = shufflevector <4 x i64> %519, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %530 = add <4 x i64> %503, %529
  %531 = add <4 x i64> %530, %528
  store <4 x i64> %531, ptr %298, align 32
  %532 = load i32, ptr %284, align 4
  %533 = add i32 %532, 4
  br label %534

534:                                              ; preds = %417, %419
  %535 = phi i32 [ %533, %419 ], [ %418, %417 ]
  store i32 %535, ptr %284, align 4
  %536 = getelementptr inbounds nuw i8, ptr %301, i64 256
  %537 = icmp ugt ptr %536, %283
  br i1 %537, label %538, label %299

538:                                              ; preds = %534, %278
  %539 = phi ptr [ %279, %278 ], [ %536, %534 ]
  %540 = icmp ult ptr %539, %6
  br i1 %540, label %541, label %549

541:                                              ; preds = %538
  %542 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %543 = ptrtoint ptr %6 to i64
  %544 = ptrtoint ptr %539 to i64
  %545 = sub i64 %543, %544
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %542, ptr nonnull readonly align 1 %539, i64 %545, i1 false)
  %546 = trunc i64 %545 to i32
  br label %547

547:                                              ; preds = %541, %15
  %548 = phi i32 [ %20, %15 ], [ %546, %541 ]
  store i32 %548, ptr %10, align 64
  br label %549

549:                                              ; preds = %547, %3, %538
  %550 = phi i32 [ 1, %3 ], [ 0, %538 ], [ 0, %547 ]
  ret i32 %550
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local { i64, i64 } @XXH3_128bits_digest(ptr noundef readonly %0) local_unnamed_addr #17 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %4 = load i64, ptr %3, align 8
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %394

6:                                                ; preds = %1
  %7 = load <4 x i64>, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %11 = load i32, ptr %10, align 64
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %13, label %212

13:                                               ; preds = %6
  %14 = lshr i32 %11, 6
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %22 = load ptr, ptr %21, align 16
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = sub i32 %19, %17
  %27 = zext i32 %26 to i64
  %28 = icmp ult i32 %14, %26
  %29 = shl i32 %17, 3
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %22, i64 %30
  br i1 %28, label %139, label %32

32:                                               ; preds = %13
  %33 = icmp eq i32 %19, %17
  br i1 %33, label %72, label %34

34:                                               ; preds = %32
  %35 = tail call i64 @llvm.umax.i64(i64 %27, i64 1)
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi <4 x i64> [ %9, %34 ], [ %69, %36 ]
  %38 = phi <4 x i64> [ %7, %34 ], [ %55, %36 ]
  %39 = phi i64 [ 0, %34 ], [ %70, %36 ]
  %40 = shl i64 %39, 6
  %41 = getelementptr inbounds nuw i8, ptr %20, i64 %40
  %42 = shl i64 %39, 3
  %43 = getelementptr inbounds nuw i8, ptr %31, i64 %42
  %44 = load <4 x i64>, ptr %41, align 1
  %45 = load <4 x i64>, ptr %43, align 1
  %46 = xor <4 x i64> %45, %44
  %47 = bitcast <4 x i64> %46 to <8 x i32>
  %48 = shufflevector <8 x i32> %47, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %49 = bitcast <8 x i32> %48 to <4 x i64>
  %50 = and <4 x i64> %46, splat (i64 4294967295)
  %51 = and <4 x i64> %49, splat (i64 4294967295)
  %52 = mul nuw <4 x i64> %51, %50
  %53 = shufflevector <4 x i64> %44, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %54 = add <4 x i64> %38, %53
  %55 = add <4 x i64> %54, %52
  %56 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %57 = load <4 x i64>, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %59 = load <4 x i64>, ptr %58, align 1
  %60 = xor <4 x i64> %59, %57
  %61 = bitcast <4 x i64> %60 to <8 x i32>
  %62 = shufflevector <8 x i32> %61, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %63 = bitcast <8 x i32> %62 to <4 x i64>
  %64 = and <4 x i64> %60, splat (i64 4294967295)
  %65 = and <4 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, %64
  %67 = shufflevector <4 x i64> %57, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %68 = add <4 x i64> %37, %67
  %69 = add <4 x i64> %68, %66
  %70 = add nuw nsw i64 %39, 1
  %71 = icmp eq i64 %70, %35
  br i1 %71, label %72, label %36

72:                                               ; preds = %36, %32
  %73 = phi <4 x i64> [ %9, %32 ], [ %69, %36 ]
  %74 = phi <4 x i64> [ %7, %32 ], [ %55, %36 ]
  %75 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %76 = lshr <4 x i64> %74, splat (i64 47)
  %77 = load <4 x i64>, ptr %75, align 1
  %78 = xor <4 x i64> %77, %76
  %79 = xor <4 x i64> %78, %74
  %80 = bitcast <4 x i64> %79 to <8 x i32>
  %81 = shufflevector <8 x i32> %80, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %82 = bitcast <8 x i32> %81 to <4 x i64>
  %83 = and <4 x i64> %79, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, splat (i64 2654435761)
  %85 = mul <4 x i64> %82, splat (i64 -7046029290881679360)
  %86 = add <4 x i64> %85, %84
  %87 = lshr <4 x i64> %73, splat (i64 47)
  %88 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %89 = load <4 x i64>, ptr %88, align 1
  %90 = xor <4 x i64> %89, %87
  %91 = xor <4 x i64> %90, %73
  %92 = bitcast <4 x i64> %91 to <8 x i32>
  %93 = shufflevector <8 x i32> %92, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %94 = bitcast <8 x i32> %93 to <4 x i64>
  %95 = and <4 x i64> %91, splat (i64 4294967295)
  %96 = mul nuw <4 x i64> %95, splat (i64 2654435761)
  %97 = mul <4 x i64> %94, splat (i64 -7046029290881679360)
  %98 = add <4 x i64> %97, %96
  %99 = shl nuw nsw i64 %27, 6
  %100 = getelementptr inbounds nuw i8, ptr %20, i64 %99
  %101 = sub nsw i64 %15, %27
  %102 = icmp eq i32 %14, %26
  br i1 %102, label %175, label %103

103:                                              ; preds = %72, %103
  %104 = phi <4 x i64> [ %136, %103 ], [ %98, %72 ]
  %105 = phi <4 x i64> [ %122, %103 ], [ %86, %72 ]
  %106 = phi i64 [ %137, %103 ], [ 0, %72 ]
  %107 = shl i64 %106, 6
  %108 = getelementptr inbounds nuw i8, ptr %100, i64 %107
  %109 = shl i64 %106, 3
  %110 = getelementptr inbounds nuw i8, ptr %22, i64 %109
  %111 = load <4 x i64>, ptr %108, align 1
  %112 = load <4 x i64>, ptr %110, align 1
  %113 = xor <4 x i64> %112, %111
  %114 = bitcast <4 x i64> %113 to <8 x i32>
  %115 = shufflevector <8 x i32> %114, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %116 = bitcast <8 x i32> %115 to <4 x i64>
  %117 = and <4 x i64> %113, splat (i64 4294967295)
  %118 = and <4 x i64> %116, splat (i64 4294967295)
  %119 = mul nuw <4 x i64> %118, %117
  %120 = shufflevector <4 x i64> %111, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %121 = add <4 x i64> %105, %120
  %122 = add <4 x i64> %121, %119
  %123 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %124 = load <4 x i64>, ptr %123, align 1
  %125 = getelementptr inbounds nuw i8, ptr %110, i64 32
  %126 = load <4 x i64>, ptr %125, align 1
  %127 = xor <4 x i64> %126, %124
  %128 = bitcast <4 x i64> %127 to <8 x i32>
  %129 = shufflevector <8 x i32> %128, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %130 = bitcast <8 x i32> %129 to <4 x i64>
  %131 = and <4 x i64> %127, splat (i64 4294967295)
  %132 = and <4 x i64> %130, splat (i64 4294967295)
  %133 = mul nuw <4 x i64> %132, %131
  %134 = shufflevector <4 x i64> %124, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %135 = add <4 x i64> %104, %134
  %136 = add <4 x i64> %135, %133
  %137 = add nuw i64 %106, 1
  %138 = icmp eq i64 %137, %101
  br i1 %138, label %175, label %103

139:                                              ; preds = %13, %139
  %140 = phi <4 x i64> [ %172, %139 ], [ %9, %13 ]
  %141 = phi <4 x i64> [ %158, %139 ], [ %7, %13 ]
  %142 = phi i64 [ %173, %139 ], [ 0, %13 ]
  %143 = shl i64 %142, 6
  %144 = getelementptr inbounds nuw i8, ptr %20, i64 %143
  %145 = shl i64 %142, 3
  %146 = getelementptr inbounds nuw i8, ptr %31, i64 %145
  %147 = load <4 x i64>, ptr %144, align 1
  %148 = load <4 x i64>, ptr %146, align 1
  %149 = xor <4 x i64> %148, %147
  %150 = bitcast <4 x i64> %149 to <8 x i32>
  %151 = shufflevector <8 x i32> %150, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %152 = bitcast <8 x i32> %151 to <4 x i64>
  %153 = and <4 x i64> %149, splat (i64 4294967295)
  %154 = and <4 x i64> %152, splat (i64 4294967295)
  %155 = mul nuw <4 x i64> %154, %153
  %156 = shufflevector <4 x i64> %147, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %157 = add <4 x i64> %141, %156
  %158 = add <4 x i64> %157, %155
  %159 = getelementptr inbounds nuw i8, ptr %144, i64 32
  %160 = load <4 x i64>, ptr %159, align 1
  %161 = getelementptr inbounds nuw i8, ptr %146, i64 32
  %162 = load <4 x i64>, ptr %161, align 1
  %163 = xor <4 x i64> %162, %160
  %164 = bitcast <4 x i64> %163 to <8 x i32>
  %165 = shufflevector <8 x i32> %164, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %166 = bitcast <8 x i32> %165 to <4 x i64>
  %167 = and <4 x i64> %163, splat (i64 4294967295)
  %168 = and <4 x i64> %166, splat (i64 4294967295)
  %169 = mul nuw <4 x i64> %168, %167
  %170 = shufflevector <4 x i64> %160, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %171 = add <4 x i64> %140, %170
  %172 = add <4 x i64> %171, %169
  %173 = add nuw nsw i64 %142, 1
  %174 = icmp eq i64 %173, %15
  br i1 %174, label %175, label %139

175:                                              ; preds = %103, %139, %72
  %176 = phi <4 x i64> [ %98, %72 ], [ %172, %139 ], [ %136, %103 ]
  %177 = phi <4 x i64> [ %86, %72 ], [ %158, %139 ], [ %122, %103 ]
  %178 = and i32 %11, 63
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %261, label %180

180:                                              ; preds = %175
  %181 = zext i32 %11 to i64
  %182 = getelementptr inbounds nuw i8, ptr %20, i64 %181
  %183 = getelementptr inbounds i8, ptr %182, i64 -64
  %184 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %185 = getelementptr inbounds i8, ptr %184, i64 -7
  %186 = load <4 x i64>, ptr %183, align 1
  %187 = load <4 x i64>, ptr %185, align 1
  %188 = xor <4 x i64> %187, %186
  %189 = bitcast <4 x i64> %188 to <8 x i32>
  %190 = shufflevector <8 x i32> %189, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %191 = bitcast <8 x i32> %190 to <4 x i64>
  %192 = and <4 x i64> %188, splat (i64 4294967295)
  %193 = and <4 x i64> %191, splat (i64 4294967295)
  %194 = mul nuw <4 x i64> %193, %192
  %195 = shufflevector <4 x i64> %186, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %196 = add <4 x i64> %177, %195
  %197 = add <4 x i64> %196, %194
  %198 = getelementptr inbounds i8, ptr %182, i64 -32
  %199 = load <4 x i64>, ptr %198, align 1
  %200 = getelementptr inbounds nuw i8, ptr %184, i64 25
  %201 = load <4 x i64>, ptr %200, align 1
  %202 = xor <4 x i64> %201, %199
  %203 = bitcast <4 x i64> %202 to <8 x i32>
  %204 = shufflevector <8 x i32> %203, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %205 = bitcast <8 x i32> %204 to <4 x i64>
  %206 = and <4 x i64> %202, splat (i64 4294967295)
  %207 = and <4 x i64> %205, splat (i64 4294967295)
  %208 = mul nuw <4 x i64> %207, %206
  %209 = shufflevector <4 x i64> %199, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %210 = add <4 x i64> %176, %209
  %211 = add <4 x i64> %210, %208
  br label %261

212:                                              ; preds = %6
  %213 = icmp eq i32 %11, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %212
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %216 = load ptr, ptr %215, align 16
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %218 = load i32, ptr %217, align 4
  %219 = zext i32 %218 to i64
  br label %261

220:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #26
  %221 = sub nuw nsw i32 64, %11
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %224 = sub nsw i64 0, %222
  %225 = getelementptr inbounds i8, ptr %10, i64 %224
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %225, i64 %222, i1 false)
  %226 = getelementptr inbounds nuw i8, ptr %2, i64 %222
  %227 = zext nneg i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %226, ptr nonnull align 64 %223, i64 %227, i1 false)
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %229 = load ptr, ptr %228, align 16
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %231 = load i32, ptr %230, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds nuw i8, ptr %229, i64 %232
  %234 = getelementptr inbounds i8, ptr %233, i64 -7
  %235 = load <4 x i64>, ptr %2, align 16
  %236 = load <4 x i64>, ptr %234, align 1
  %237 = xor <4 x i64> %236, %235
  %238 = bitcast <4 x i64> %237 to <8 x i32>
  %239 = shufflevector <8 x i32> %238, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %240 = bitcast <8 x i32> %239 to <4 x i64>
  %241 = and <4 x i64> %237, splat (i64 4294967295)
  %242 = and <4 x i64> %240, splat (i64 4294967295)
  %243 = mul nuw <4 x i64> %242, %241
  %244 = shufflevector <4 x i64> %235, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %245 = add <4 x i64> %7, %244
  %246 = add <4 x i64> %245, %243
  %247 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %248 = load <4 x i64>, ptr %247, align 16
  %249 = getelementptr inbounds nuw i8, ptr %233, i64 25
  %250 = load <4 x i64>, ptr %249, align 1
  %251 = xor <4 x i64> %250, %248
  %252 = bitcast <4 x i64> %251 to <8 x i32>
  %253 = shufflevector <8 x i32> %252, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %254 = bitcast <8 x i32> %253 to <4 x i64>
  %255 = and <4 x i64> %251, splat (i64 4294967295)
  %256 = and <4 x i64> %254, splat (i64 4294967295)
  %257 = mul nuw <4 x i64> %256, %255
  %258 = shufflevector <4 x i64> %248, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %259 = add <4 x i64> %9, %258
  %260 = add <4 x i64> %259, %257
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #26
  br label %261

261:                                              ; preds = %214, %180, %175, %220
  %262 = phi i64 [ %219, %214 ], [ %25, %180 ], [ %25, %175 ], [ %232, %220 ]
  %263 = phi ptr [ %216, %214 ], [ %22, %180 ], [ %22, %175 ], [ %229, %220 ]
  %264 = phi <4 x i64> [ %9, %214 ], [ %211, %180 ], [ %176, %175 ], [ %260, %220 ]
  %265 = phi <4 x i64> [ %7, %214 ], [ %197, %180 ], [ %177, %175 ], [ %246, %220 ]
  %266 = getelementptr inbounds nuw i8, ptr %263, i64 11
  %267 = mul i64 %4, -7046029288634856825
  %268 = extractelement <4 x i64> %265, i64 0
  %269 = load i64, ptr %266, align 1
  %270 = xor i64 %269, %268
  %271 = extractelement <4 x i64> %265, i64 1
  %272 = getelementptr inbounds nuw i8, ptr %263, i64 19
  %273 = load i64, ptr %272, align 1
  %274 = xor i64 %273, %271
  %275 = zext i64 %270 to i128
  %276 = zext i64 %274 to i128
  %277 = mul nuw i128 %276, %275
  %278 = lshr i128 %277, 64
  %279 = xor i128 %278, %277
  %280 = trunc i128 %279 to i64
  %281 = add i64 %267, %280
  %282 = getelementptr inbounds nuw i8, ptr %263, i64 27
  %283 = extractelement <4 x i64> %265, i64 2
  %284 = load i64, ptr %282, align 1
  %285 = xor i64 %284, %283
  %286 = extractelement <4 x i64> %265, i64 3
  %287 = getelementptr inbounds nuw i8, ptr %263, i64 35
  %288 = load i64, ptr %287, align 1
  %289 = xor i64 %288, %286
  %290 = zext i64 %285 to i128
  %291 = zext i64 %289 to i128
  %292 = mul nuw i128 %291, %290
  %293 = lshr i128 %292, 64
  %294 = xor i128 %293, %292
  %295 = trunc i128 %294 to i64
  %296 = add i64 %281, %295
  %297 = getelementptr inbounds nuw i8, ptr %263, i64 43
  %298 = extractelement <4 x i64> %264, i64 0
  %299 = load i64, ptr %297, align 1
  %300 = xor i64 %299, %298
  %301 = extractelement <4 x i64> %264, i64 1
  %302 = getelementptr inbounds nuw i8, ptr %263, i64 51
  %303 = load i64, ptr %302, align 1
  %304 = xor i64 %303, %301
  %305 = zext i64 %300 to i128
  %306 = zext i64 %304 to i128
  %307 = mul nuw i128 %306, %305
  %308 = lshr i128 %307, 64
  %309 = xor i128 %308, %307
  %310 = trunc i128 %309 to i64
  %311 = add i64 %296, %310
  %312 = getelementptr inbounds nuw i8, ptr %263, i64 59
  %313 = extractelement <4 x i64> %264, i64 2
  %314 = load i64, ptr %312, align 1
  %315 = xor i64 %314, %313
  %316 = extractelement <4 x i64> %264, i64 3
  %317 = getelementptr inbounds nuw i8, ptr %263, i64 67
  %318 = load i64, ptr %317, align 1
  %319 = xor i64 %318, %316
  %320 = zext i64 %315 to i128
  %321 = zext i64 %319 to i128
  %322 = mul nuw i128 %321, %320
  %323 = lshr i128 %322, 64
  %324 = xor i128 %323, %322
  %325 = trunc i128 %324 to i64
  %326 = add i64 %311, %325
  %327 = lshr i64 %326, 37
  %328 = xor i64 %327, %326
  %329 = mul i64 %328, 1609587929392839161
  %330 = lshr i64 %329, 32
  %331 = xor i64 %330, %329
  %332 = getelementptr inbounds nuw i8, ptr %263, i64 %262
  %333 = getelementptr inbounds i8, ptr %332, i64 -11
  %334 = mul i64 %4, -4417276706812531889
  %335 = xor i64 %334, -1
  %336 = load i64, ptr %333, align 1
  %337 = xor i64 %336, %268
  %338 = getelementptr inbounds i8, ptr %332, i64 -3
  %339 = load i64, ptr %338, align 1
  %340 = xor i64 %339, %271
  %341 = zext i64 %337 to i128
  %342 = zext i64 %340 to i128
  %343 = mul nuw i128 %342, %341
  %344 = lshr i128 %343, 64
  %345 = xor i128 %344, %343
  %346 = trunc i128 %345 to i64
  %347 = add i64 %346, %335
  %348 = getelementptr inbounds nuw i8, ptr %332, i64 5
  %349 = load i64, ptr %348, align 1
  %350 = xor i64 %349, %283
  %351 = getelementptr inbounds nuw i8, ptr %332, i64 13
  %352 = load i64, ptr %351, align 1
  %353 = xor i64 %352, %286
  %354 = zext i64 %350 to i128
  %355 = zext i64 %353 to i128
  %356 = mul nuw i128 %355, %354
  %357 = lshr i128 %356, 64
  %358 = xor i128 %357, %356
  %359 = trunc i128 %358 to i64
  %360 = add i64 %347, %359
  %361 = getelementptr inbounds nuw i8, ptr %332, i64 21
  %362 = load i64, ptr %361, align 1
  %363 = xor i64 %362, %298
  %364 = getelementptr inbounds nuw i8, ptr %332, i64 29
  %365 = load i64, ptr %364, align 1
  %366 = xor i64 %365, %301
  %367 = zext i64 %363 to i128
  %368 = zext i64 %366 to i128
  %369 = mul nuw i128 %368, %367
  %370 = lshr i128 %369, 64
  %371 = xor i128 %370, %369
  %372 = trunc i128 %371 to i64
  %373 = add i64 %360, %372
  %374 = getelementptr inbounds nuw i8, ptr %332, i64 37
  %375 = load i64, ptr %374, align 1
  %376 = xor i64 %375, %313
  %377 = getelementptr inbounds nuw i8, ptr %332, i64 45
  %378 = load i64, ptr %377, align 1
  %379 = xor i64 %378, %316
  %380 = zext i64 %376 to i128
  %381 = zext i64 %379 to i128
  %382 = mul nuw i128 %381, %380
  %383 = lshr i128 %382, 64
  %384 = xor i128 %383, %382
  %385 = trunc i128 %384 to i64
  %386 = add i64 %373, %385
  %387 = lshr i64 %386, 37
  %388 = xor i64 %387, %386
  %389 = mul i64 %388, 1609587929392839161
  %390 = lshr i64 %389, 32
  %391 = xor i64 %390, %389
  %392 = insertvalue { i64, i64 } poison, i64 %331, 0
  %393 = insertvalue { i64, i64 } %392, i64 %391, 1
  br label %1028

394:                                              ; preds = %1
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %396 = load i64, ptr %395, align 32
  %397 = icmp eq i64 %396, 0
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %397, label %704, label %399

399:                                              ; preds = %394
  %400 = icmp samesign ult i64 %4, 17
  br i1 %400, label %401, label %525

401:                                              ; preds = %399
  %402 = icmp samesign ugt i64 %4, 8
  br i1 %402, label %403, label %441

403:                                              ; preds = %401
  %404 = load i64, ptr %398, align 1
  %405 = add i64 %396, -4734510112055689544
  %406 = xor i64 %404, %405
  %407 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %408 = getelementptr inbounds i8, ptr %407, i64 -8
  %409 = load i64, ptr %408, align 1
  %410 = sub i64 2066345149520216444, %396
  %411 = xor i64 %409, %410
  %412 = xor i64 %406, %411
  %413 = zext i64 %412 to i128
  %414 = mul nuw i128 %413, 11400714785074694791
  %415 = trunc i128 %414 to i64
  %416 = lshr i128 %414, 64
  %417 = trunc nuw i128 %416 to i64
  %418 = mul nuw nsw i64 %4, 374761393
  %419 = add i64 %418, %415
  %420 = mul i64 %411, -7046029288634856825
  %421 = add i64 %420, %417
  %422 = lshr i64 %421, 32
  %423 = xor i64 %422, %419
  %424 = zext i64 %423 to i128
  %425 = mul nuw i128 %424, 14029467366897019727
  %426 = trunc i128 %425 to i64
  %427 = lshr i128 %425, 64
  %428 = trunc nuw i128 %427 to i64
  %429 = mul i64 %421, -4417276706812531889
  %430 = add i64 %429, %428
  %431 = lshr i64 %426, 37
  %432 = xor i64 %431, %426
  %433 = mul i64 %432, 1609587929392839161
  %434 = lshr i64 %433, 32
  %435 = xor i64 %434, %433
  %436 = lshr i64 %430, 37
  %437 = xor i64 %436, %430
  %438 = mul i64 %437, 1609587929392839161
  %439 = lshr i64 %438, 32
  %440 = xor i64 %439, %438
  br label %520

441:                                              ; preds = %401
  %442 = icmp samesign ugt i64 %4, 3
  br i1 %442, label %443, label %481

443:                                              ; preds = %441
  %444 = load i32, ptr %398, align 1
  %445 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %446 = getelementptr inbounds i8, ptr %445, i64 -4
  %447 = load i32, ptr %446, align 1
  %448 = zext i32 %444 to i64
  %449 = zext i32 %447 to i64
  %450 = shl nuw i64 %449, 32
  %451 = or disjoint i64 %450, %448
  %452 = tail call noundef i64 @llvm.bswap.i64(i64 %451)
  %453 = add i64 %396, -4734510112055689544
  %454 = xor i64 %451, %453
  %455 = sub i64 2066345149520216444, %396
  %456 = xor i64 %452, %455
  %457 = lshr i64 %454, 51
  %458 = xor i64 %457, %454
  %459 = mul i64 %458, 2654435761
  %460 = add i64 %459, %4
  %461 = lshr i64 %460, 47
  %462 = xor i64 %461, %460
  %463 = mul i64 %462, -4417276706812531889
  %464 = lshr i64 %456, 47
  %465 = xor i64 %464, %456
  %466 = mul i64 %465, -7046029288634856825
  %467 = sub i64 %466, %4
  %468 = lshr i64 %467, 43
  %469 = xor i64 %468, %467
  %470 = mul i64 %469, -8796714831421723037
  %471 = lshr i64 %463, 37
  %472 = xor i64 %471, %463
  %473 = mul i64 %472, 1609587929392839161
  %474 = lshr i64 %473, 32
  %475 = xor i64 %474, %473
  %476 = lshr i64 %470, 37
  %477 = xor i64 %476, %470
  %478 = mul i64 %477, 1609587929392839161
  %479 = lshr i64 %478, 32
  %480 = xor i64 %479, %478
  br label %520

481:                                              ; preds = %441
  %482 = icmp eq i64 %4, 0
  br i1 %482, label %520, label %483

483:                                              ; preds = %481
  %484 = load i8, ptr %398, align 1
  %485 = lshr i64 %4, 1
  %486 = getelementptr inbounds nuw i8, ptr %398, i64 %485
  %487 = load i8, ptr %486, align 1
  %488 = getelementptr i8, ptr %398, i64 %4
  %489 = getelementptr i8, ptr %488, i64 -1
  %490 = load i8, ptr %489, align 1
  %491 = zext i8 %484 to i32
  %492 = zext i8 %487 to i32
  %493 = shl nuw nsw i32 %492, 8
  %494 = or disjoint i32 %493, %491
  %495 = zext i8 %490 to i32
  %496 = shl nuw nsw i32 %495, 16
  %497 = or disjoint i32 %494, %496
  %498 = trunc nuw nsw i64 %4 to i32
  %499 = shl nuw nsw i32 %498, 24
  %500 = or disjoint i32 %497, %499
  %501 = tail call noundef i32 @llvm.bswap.i32(i32 %500)
  %502 = zext nneg i32 %500 to i64
  %503 = add i64 %396, 963444408
  %504 = xor i64 %503, %502
  %505 = zext i32 %501 to i64
  %506 = sub i64 3192628259, %396
  %507 = xor i64 %506, %505
  %508 = mul i64 %504, -7046029288634856825
  %509 = mul i64 %507, 2870177450012600261
  %510 = lshr i64 %508, 37
  %511 = xor i64 %510, %508
  %512 = mul i64 %511, 1609587929392839161
  %513 = lshr i64 %512, 32
  %514 = xor i64 %513, %512
  %515 = lshr i64 %509, 37
  %516 = xor i64 %515, %509
  %517 = mul i64 %516, 1609587929392839161
  %518 = lshr i64 %517, 32
  %519 = xor i64 %518, %517
  br label %520

520:                                              ; preds = %483, %481, %443, %403
  %521 = phi i64 [ %440, %403 ], [ %480, %443 ], [ %519, %483 ], [ 0, %481 ]
  %522 = phi i64 [ %435, %403 ], [ %475, %443 ], [ %514, %483 ], [ 0, %481 ]
  %523 = insertvalue { i64, i64 } poison, i64 %522, 0
  %524 = insertvalue { i64, i64 } %523, i64 %521, 1
  br label %1028

525:                                              ; preds = %399
  %526 = icmp samesign ult i64 %4, 129
  br i1 %526, label %527, label %702

527:                                              ; preds = %525
  %528 = mul i64 %4, -7046029288634856825
  %529 = icmp samesign ugt i64 %4, 32
  br i1 %529, label %530, label %645

530:                                              ; preds = %527
  %531 = icmp samesign ugt i64 %4, 64
  br i1 %531, label %532, label %607

532:                                              ; preds = %530
  %533 = icmp samesign ugt i64 %4, 96
  br i1 %533, label %534, label %569

534:                                              ; preds = %532
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %536 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %537 = getelementptr inbounds i8, ptr %536, i64 -64
  %538 = load i64, ptr %535, align 1
  %539 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %540 = load i64, ptr %539, align 1
  %541 = add i64 %396, 4554437623014685352
  %542 = xor i64 %538, %541
  %543 = sub i64 2111919702937427193, %396
  %544 = xor i64 %540, %543
  %545 = zext i64 %542 to i128
  %546 = zext i64 %544 to i128
  %547 = mul nuw i128 %546, %545
  %548 = lshr i128 %547, 64
  %549 = xor i128 %548, %547
  %550 = trunc i128 %549 to i64
  %551 = add i64 %528, %550
  %552 = load i64, ptr %537, align 1
  %553 = getelementptr inbounds i8, ptr %536, i64 -56
  %554 = load i64, ptr %553, align 1
  %555 = add i64 %554, %552
  %556 = xor i64 %551, %555
  %557 = add i64 %396, 3556072174620004746
  %558 = xor i64 %552, %557
  %559 = sub i64 7238261902898274248, %396
  %560 = xor i64 %554, %559
  %561 = zext i64 %558 to i128
  %562 = zext i64 %560 to i128
  %563 = mul nuw i128 %562, %561
  %564 = lshr i128 %563, 64
  %565 = xor i128 %564, %563
  %566 = trunc i128 %565 to i64
  %567 = add i64 %540, %538
  %568 = xor i64 %567, %566
  br label %569

569:                                              ; preds = %534, %532
  %570 = phi i64 [ %556, %534 ], [ %528, %532 ]
  %571 = phi i64 [ %568, %534 ], [ 0, %532 ]
  %572 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %573 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %574 = getelementptr inbounds i8, ptr %573, i64 -48
  %575 = load i64, ptr %572, align 1
  %576 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %577 = load i64, ptr %576, align 1
  %578 = add i64 %396, -3818837453329782724
  %579 = xor i64 %575, %578
  %580 = sub i64 -6688317018830679928, %396
  %581 = xor i64 %577, %580
  %582 = zext i64 %579 to i128
  %583 = zext i64 %581 to i128
  %584 = mul nuw i128 %583, %582
  %585 = lshr i128 %584, 64
  %586 = xor i128 %585, %584
  %587 = trunc i128 %586 to i64
  %588 = add i64 %570, %587
  %589 = load i64, ptr %574, align 1
  %590 = getelementptr inbounds i8, ptr %573, i64 -40
  %591 = load i64, ptr %590, align 1
  %592 = add i64 %591, %589
  %593 = xor i64 %588, %592
  %594 = add i64 %396, 5690594596133299313
  %595 = xor i64 %589, %594
  %596 = sub i64 -2833645246901970632, %396
  %597 = xor i64 %591, %596
  %598 = zext i64 %595 to i128
  %599 = zext i64 %597 to i128
  %600 = mul nuw i128 %599, %598
  %601 = lshr i128 %600, 64
  %602 = xor i128 %601, %600
  %603 = trunc i128 %602 to i64
  %604 = add i64 %571, %603
  %605 = add i64 %577, %575
  %606 = xor i64 %604, %605
  br label %607

607:                                              ; preds = %569, %530
  %608 = phi i64 [ %593, %569 ], [ %528, %530 ]
  %609 = phi i64 [ %606, %569 ], [ 0, %530 ]
  %610 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %611 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %612 = getelementptr inbounds i8, ptr %611, i64 -32
  %613 = load i64, ptr %610, align 1
  %614 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %615 = load i64, ptr %614, align 1
  %616 = add i64 %396, 8711581037947681227
  %617 = xor i64 %613, %616
  %618 = sub i64 2410270004345854594, %396
  %619 = xor i64 %615, %618
  %620 = zext i64 %617 to i128
  %621 = zext i64 %619 to i128
  %622 = mul nuw i128 %621, %620
  %623 = lshr i128 %622, 64
  %624 = xor i128 %623, %622
  %625 = trunc i128 %624 to i64
  %626 = add i64 %608, %625
  %627 = load i64, ptr %612, align 1
  %628 = getelementptr inbounds i8, ptr %611, i64 -24
  %629 = load i64, ptr %628, align 1
  %630 = add i64 %629, %627
  %631 = xor i64 %626, %630
  %632 = add i64 %396, -8204357891075471176
  %633 = xor i64 %627, %632
  %634 = sub i64 5487137525590930912, %396
  %635 = xor i64 %629, %634
  %636 = zext i64 %633 to i128
  %637 = zext i64 %635 to i128
  %638 = mul nuw i128 %637, %636
  %639 = lshr i128 %638, 64
  %640 = xor i128 %639, %638
  %641 = trunc i128 %640 to i64
  %642 = add i64 %609, %641
  %643 = add i64 %615, %613
  %644 = xor i64 %642, %643
  br label %645

645:                                              ; preds = %607, %527
  %646 = phi i64 [ %631, %607 ], [ %528, %527 ]
  %647 = phi i64 [ %644, %607 ], [ 0, %527 ]
  %648 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %649 = getelementptr inbounds i8, ptr %648, i64 -16
  %650 = load i64, ptr %398, align 1
  %651 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %652 = load i64, ptr %651, align 1
  %653 = add i64 %396, -4734510112055689544
  %654 = xor i64 %650, %653
  %655 = sub i64 2066345149520216444, %396
  %656 = xor i64 %652, %655
  %657 = zext i64 %654 to i128
  %658 = zext i64 %656 to i128
  %659 = mul nuw i128 %658, %657
  %660 = lshr i128 %659, 64
  %661 = xor i128 %660, %659
  %662 = trunc i128 %661 to i64
  %663 = add i64 %646, %662
  %664 = load i64, ptr %649, align 1
  %665 = getelementptr inbounds i8, ptr %648, i64 -8
  %666 = load i64, ptr %665, align 1
  %667 = add i64 %666, %664
  %668 = xor i64 %663, %667
  %669 = add i64 %396, -2623469361688619810
  %670 = xor i64 %664, %669
  %671 = sub i64 2262974939099578482, %396
  %672 = xor i64 %666, %671
  %673 = zext i64 %670 to i128
  %674 = zext i64 %672 to i128
  %675 = mul nuw i128 %674, %673
  %676 = lshr i128 %675, 64
  %677 = xor i128 %676, %675
  %678 = trunc i128 %677 to i64
  %679 = add i64 %647, %678
  %680 = add i64 %652, %650
  %681 = xor i64 %679, %680
  %682 = add i64 %681, %668
  %683 = mul i64 %668, -7046029288634856825
  %684 = mul i64 %681, -8796714831421723037
  %685 = sub i64 %4, %396
  %686 = mul i64 %685, -4417276706812531889
  %687 = add i64 %683, %686
  %688 = add i64 %687, %684
  %689 = lshr i64 %682, 37
  %690 = xor i64 %689, %682
  %691 = mul i64 %690, 1609587929392839161
  %692 = lshr i64 %691, 32
  %693 = xor i64 %692, %691
  %694 = lshr i64 %688, 37
  %695 = xor i64 %694, %688
  %696 = mul i64 %695, 1609587929392839161
  %697 = lshr i64 %696, 32
  %698 = xor i64 %697, %696
  %699 = sub i64 0, %698
  %700 = insertvalue { i64, i64 } poison, i64 %693, 0
  %701 = insertvalue { i64, i64 } %700, i64 %699, 1
  br label %1028

702:                                              ; preds = %525
  %703 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef nonnull readonly %398, i64 noundef %4, ptr noundef nonnull @kSecret, i64 noundef %396)
  br label %1028

704:                                              ; preds = %394
  %705 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %706 = load ptr, ptr %705, align 16
  %707 = icmp samesign ult i64 %4, 17
  br i1 %707, label %708, label %835

708:                                              ; preds = %704
  %709 = icmp samesign ugt i64 %4, 8
  br i1 %709, label %710, label %749

710:                                              ; preds = %708
  %711 = load i64, ptr %398, align 1
  %712 = load i64, ptr %706, align 1
  %713 = xor i64 %712, %711
  %714 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %715 = getelementptr inbounds i8, ptr %714, i64 -8
  %716 = load i64, ptr %715, align 1
  %717 = getelementptr inbounds nuw i8, ptr %706, i64 8
  %718 = load i64, ptr %717, align 1
  %719 = xor i64 %718, %716
  %720 = xor i64 %713, %719
  %721 = zext i64 %720 to i128
  %722 = mul nuw i128 %721, 11400714785074694791
  %723 = trunc i128 %722 to i64
  %724 = lshr i128 %722, 64
  %725 = trunc nuw i128 %724 to i64
  %726 = mul nuw nsw i64 %4, 374761393
  %727 = add i64 %726, %723
  %728 = mul i64 %719, -7046029288634856825
  %729 = add i64 %728, %725
  %730 = lshr i64 %729, 32
  %731 = xor i64 %730, %727
  %732 = zext i64 %731 to i128
  %733 = mul nuw i128 %732, 14029467366897019727
  %734 = trunc i128 %733 to i64
  %735 = lshr i128 %733, 64
  %736 = trunc nuw i128 %735 to i64
  %737 = mul i64 %729, -4417276706812531889
  %738 = add i64 %737, %736
  %739 = lshr i64 %734, 37
  %740 = xor i64 %739, %734
  %741 = mul i64 %740, 1609587929392839161
  %742 = lshr i64 %741, 32
  %743 = xor i64 %742, %741
  %744 = lshr i64 %738, 37
  %745 = xor i64 %744, %738
  %746 = mul i64 %745, 1609587929392839161
  %747 = lshr i64 %746, 32
  %748 = xor i64 %747, %746
  br label %830

749:                                              ; preds = %708
  %750 = icmp samesign ugt i64 %4, 3
  br i1 %750, label %751, label %790

751:                                              ; preds = %749
  %752 = load i32, ptr %398, align 1
  %753 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %754 = getelementptr inbounds i8, ptr %753, i64 -4
  %755 = load i32, ptr %754, align 1
  %756 = zext i32 %752 to i64
  %757 = zext i32 %755 to i64
  %758 = shl nuw i64 %757, 32
  %759 = or disjoint i64 %758, %756
  %760 = tail call noundef i64 @llvm.bswap.i64(i64 %759)
  %761 = load i64, ptr %706, align 1
  %762 = xor i64 %759, %761
  %763 = getelementptr inbounds nuw i8, ptr %706, i64 8
  %764 = load i64, ptr %763, align 1
  %765 = xor i64 %760, %764
  %766 = lshr i64 %762, 51
  %767 = xor i64 %766, %762
  %768 = mul i64 %767, 2654435761
  %769 = add i64 %768, %4
  %770 = lshr i64 %769, 47
  %771 = xor i64 %770, %769
  %772 = mul i64 %771, -4417276706812531889
  %773 = lshr i64 %765, 47
  %774 = xor i64 %773, %765
  %775 = mul i64 %774, -7046029288634856825
  %776 = sub i64 %775, %4
  %777 = lshr i64 %776, 43
  %778 = xor i64 %777, %776
  %779 = mul i64 %778, -8796714831421723037
  %780 = lshr i64 %772, 37
  %781 = xor i64 %780, %772
  %782 = mul i64 %781, 1609587929392839161
  %783 = lshr i64 %782, 32
  %784 = xor i64 %783, %782
  %785 = lshr i64 %779, 37
  %786 = xor i64 %785, %779
  %787 = mul i64 %786, 1609587929392839161
  %788 = lshr i64 %787, 32
  %789 = xor i64 %788, %787
  br label %830

790:                                              ; preds = %749
  %791 = icmp eq i64 %4, 0
  br i1 %791, label %830, label %792

792:                                              ; preds = %790
  %793 = load i8, ptr %398, align 1
  %794 = lshr i64 %4, 1
  %795 = getelementptr inbounds nuw i8, ptr %398, i64 %794
  %796 = load i8, ptr %795, align 1
  %797 = getelementptr i8, ptr %398, i64 %4
  %798 = getelementptr i8, ptr %797, i64 -1
  %799 = load i8, ptr %798, align 1
  %800 = zext i8 %793 to i32
  %801 = zext i8 %796 to i32
  %802 = shl nuw nsw i32 %801, 8
  %803 = or disjoint i32 %802, %800
  %804 = zext i8 %799 to i32
  %805 = shl nuw nsw i32 %804, 16
  %806 = or disjoint i32 %803, %805
  %807 = trunc nuw nsw i64 %4 to i32
  %808 = shl nuw nsw i32 %807, 24
  %809 = or disjoint i32 %806, %808
  %810 = tail call noundef i32 @llvm.bswap.i32(i32 %809)
  %811 = load i32, ptr %706, align 1
  %812 = xor i32 %809, %811
  %813 = zext i32 %812 to i64
  %814 = getelementptr inbounds nuw i8, ptr %706, i64 4
  %815 = load i32, ptr %814, align 1
  %816 = xor i32 %810, %815
  %817 = zext i32 %816 to i64
  %818 = mul i64 %813, -7046029288634856825
  %819 = mul i64 %817, 2870177450012600261
  %820 = lshr i64 %818, 37
  %821 = xor i64 %820, %818
  %822 = mul i64 %821, 1609587929392839161
  %823 = lshr i64 %822, 32
  %824 = xor i64 %823, %822
  %825 = lshr i64 %819, 37
  %826 = xor i64 %825, %819
  %827 = mul i64 %826, 1609587929392839161
  %828 = lshr i64 %827, 32
  %829 = xor i64 %828, %827
  br label %830

830:                                              ; preds = %792, %790, %751, %710
  %831 = phi i64 [ %748, %710 ], [ %789, %751 ], [ %829, %792 ], [ 0, %790 ]
  %832 = phi i64 [ %743, %710 ], [ %784, %751 ], [ %824, %792 ], [ 0, %790 ]
  %833 = insertvalue { i64, i64 } poison, i64 %832, 0
  %834 = insertvalue { i64, i64 } %833, i64 %831, 1
  br label %1028

835:                                              ; preds = %704
  %836 = icmp samesign ult i64 %4, 129
  br i1 %836, label %837, label %1026

837:                                              ; preds = %835
  %838 = mul i64 %4, -7046029288634856825
  %839 = icmp samesign ugt i64 %4, 32
  br i1 %839, label %840, label %967

840:                                              ; preds = %837
  %841 = icmp samesign ugt i64 %4, 64
  br i1 %841, label %842, label %925

842:                                              ; preds = %840
  %843 = icmp samesign ugt i64 %4, 96
  br i1 %843, label %844, label %883

844:                                              ; preds = %842
  %845 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %846 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %847 = getelementptr inbounds i8, ptr %846, i64 -64
  %848 = getelementptr inbounds nuw i8, ptr %706, i64 96
  %849 = load i64, ptr %845, align 1
  %850 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %851 = load i64, ptr %850, align 1
  %852 = load i64, ptr %848, align 1
  %853 = xor i64 %852, %849
  %854 = getelementptr inbounds nuw i8, ptr %706, i64 104
  %855 = load i64, ptr %854, align 1
  %856 = xor i64 %855, %851
  %857 = zext i64 %853 to i128
  %858 = zext i64 %856 to i128
  %859 = mul nuw i128 %858, %857
  %860 = lshr i128 %859, 64
  %861 = xor i128 %860, %859
  %862 = trunc i128 %861 to i64
  %863 = add i64 %838, %862
  %864 = load i64, ptr %847, align 1
  %865 = getelementptr inbounds i8, ptr %846, i64 -56
  %866 = load i64, ptr %865, align 1
  %867 = add i64 %866, %864
  %868 = xor i64 %863, %867
  %869 = getelementptr inbounds nuw i8, ptr %706, i64 112
  %870 = load i64, ptr %869, align 1
  %871 = xor i64 %870, %864
  %872 = getelementptr inbounds nuw i8, ptr %706, i64 120
  %873 = load i64, ptr %872, align 1
  %874 = xor i64 %873, %866
  %875 = zext i64 %871 to i128
  %876 = zext i64 %874 to i128
  %877 = mul nuw i128 %876, %875
  %878 = lshr i128 %877, 64
  %879 = xor i128 %878, %877
  %880 = trunc i128 %879 to i64
  %881 = add i64 %851, %849
  %882 = xor i64 %881, %880
  br label %883

883:                                              ; preds = %844, %842
  %884 = phi i64 [ %868, %844 ], [ %838, %842 ]
  %885 = phi i64 [ %882, %844 ], [ 0, %842 ]
  %886 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %887 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %888 = getelementptr inbounds i8, ptr %887, i64 -48
  %889 = getelementptr inbounds nuw i8, ptr %706, i64 64
  %890 = load i64, ptr %886, align 1
  %891 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %892 = load i64, ptr %891, align 1
  %893 = load i64, ptr %889, align 1
  %894 = xor i64 %893, %890
  %895 = getelementptr inbounds nuw i8, ptr %706, i64 72
  %896 = load i64, ptr %895, align 1
  %897 = xor i64 %896, %892
  %898 = zext i64 %894 to i128
  %899 = zext i64 %897 to i128
  %900 = mul nuw i128 %899, %898
  %901 = lshr i128 %900, 64
  %902 = xor i128 %901, %900
  %903 = trunc i128 %902 to i64
  %904 = add i64 %884, %903
  %905 = load i64, ptr %888, align 1
  %906 = getelementptr inbounds i8, ptr %887, i64 -40
  %907 = load i64, ptr %906, align 1
  %908 = add i64 %907, %905
  %909 = xor i64 %904, %908
  %910 = getelementptr inbounds nuw i8, ptr %706, i64 80
  %911 = load i64, ptr %910, align 1
  %912 = xor i64 %911, %905
  %913 = getelementptr inbounds nuw i8, ptr %706, i64 88
  %914 = load i64, ptr %913, align 1
  %915 = xor i64 %914, %907
  %916 = zext i64 %912 to i128
  %917 = zext i64 %915 to i128
  %918 = mul nuw i128 %917, %916
  %919 = lshr i128 %918, 64
  %920 = xor i128 %919, %918
  %921 = trunc i128 %920 to i64
  %922 = add i64 %885, %921
  %923 = add i64 %892, %890
  %924 = xor i64 %922, %923
  br label %925

925:                                              ; preds = %883, %840
  %926 = phi i64 [ %909, %883 ], [ %838, %840 ]
  %927 = phi i64 [ %924, %883 ], [ 0, %840 ]
  %928 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %929 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %930 = getelementptr inbounds i8, ptr %929, i64 -32
  %931 = getelementptr inbounds nuw i8, ptr %706, i64 32
  %932 = load i64, ptr %928, align 1
  %933 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %934 = load i64, ptr %933, align 1
  %935 = load i64, ptr %931, align 1
  %936 = xor i64 %935, %932
  %937 = getelementptr inbounds nuw i8, ptr %706, i64 40
  %938 = load i64, ptr %937, align 1
  %939 = xor i64 %938, %934
  %940 = zext i64 %936 to i128
  %941 = zext i64 %939 to i128
  %942 = mul nuw i128 %941, %940
  %943 = lshr i128 %942, 64
  %944 = xor i128 %943, %942
  %945 = trunc i128 %944 to i64
  %946 = add i64 %926, %945
  %947 = load i64, ptr %930, align 1
  %948 = getelementptr inbounds i8, ptr %929, i64 -24
  %949 = load i64, ptr %948, align 1
  %950 = add i64 %949, %947
  %951 = xor i64 %946, %950
  %952 = getelementptr inbounds nuw i8, ptr %706, i64 48
  %953 = load i64, ptr %952, align 1
  %954 = xor i64 %953, %947
  %955 = getelementptr inbounds nuw i8, ptr %706, i64 56
  %956 = load i64, ptr %955, align 1
  %957 = xor i64 %956, %949
  %958 = zext i64 %954 to i128
  %959 = zext i64 %957 to i128
  %960 = mul nuw i128 %959, %958
  %961 = lshr i128 %960, 64
  %962 = xor i128 %961, %960
  %963 = trunc i128 %962 to i64
  %964 = add i64 %927, %963
  %965 = add i64 %934, %932
  %966 = xor i64 %964, %965
  br label %967

967:                                              ; preds = %925, %837
  %968 = phi i64 [ %951, %925 ], [ %838, %837 ]
  %969 = phi i64 [ %966, %925 ], [ 0, %837 ]
  %970 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %971 = getelementptr inbounds i8, ptr %970, i64 -16
  %972 = load i64, ptr %398, align 1
  %973 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %974 = load i64, ptr %973, align 1
  %975 = load i64, ptr %706, align 1
  %976 = xor i64 %975, %972
  %977 = getelementptr inbounds nuw i8, ptr %706, i64 8
  %978 = load i64, ptr %977, align 1
  %979 = xor i64 %978, %974
  %980 = zext i64 %976 to i128
  %981 = zext i64 %979 to i128
  %982 = mul nuw i128 %981, %980
  %983 = lshr i128 %982, 64
  %984 = xor i128 %983, %982
  %985 = trunc i128 %984 to i64
  %986 = add i64 %968, %985
  %987 = load i64, ptr %971, align 1
  %988 = getelementptr inbounds i8, ptr %970, i64 -8
  %989 = load i64, ptr %988, align 1
  %990 = add i64 %989, %987
  %991 = xor i64 %986, %990
  %992 = getelementptr inbounds nuw i8, ptr %706, i64 16
  %993 = load i64, ptr %992, align 1
  %994 = xor i64 %993, %987
  %995 = getelementptr inbounds nuw i8, ptr %706, i64 24
  %996 = load i64, ptr %995, align 1
  %997 = xor i64 %996, %989
  %998 = zext i64 %994 to i128
  %999 = zext i64 %997 to i128
  %1000 = mul nuw i128 %999, %998
  %1001 = lshr i128 %1000, 64
  %1002 = xor i128 %1001, %1000
  %1003 = trunc i128 %1002 to i64
  %1004 = add i64 %969, %1003
  %1005 = add i64 %974, %972
  %1006 = xor i64 %1004, %1005
  %1007 = add i64 %1006, %991
  %1008 = mul i64 %991, -7046029288634856825
  %1009 = mul i64 %1006, -8796714831421723037
  %1010 = mul i64 %4, -4417276706812531889
  %1011 = add i64 %1008, %1010
  %1012 = add i64 %1011, %1009
  %1013 = lshr i64 %1007, 37
  %1014 = xor i64 %1013, %1007
  %1015 = mul i64 %1014, 1609587929392839161
  %1016 = lshr i64 %1015, 32
  %1017 = xor i64 %1016, %1015
  %1018 = lshr i64 %1012, 37
  %1019 = xor i64 %1018, %1012
  %1020 = mul i64 %1019, 1609587929392839161
  %1021 = lshr i64 %1020, 32
  %1022 = xor i64 %1021, %1020
  %1023 = sub i64 0, %1022
  %1024 = insertvalue { i64, i64 } poison, i64 %1017, 0
  %1025 = insertvalue { i64, i64 } %1024, i64 %1023, 1
  br label %1028

1026:                                             ; preds = %835
  %1027 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef nonnull readonly %398, i64 noundef %4, ptr noundef readonly %706, i64 noundef 0)
  br label %1028

1028:                                             ; preds = %1026, %967, %830, %702, %645, %520, %261
  %1029 = phi { i64, i64 } [ %393, %261 ], [ %524, %520 ], [ %701, %645 ], [ %703, %702 ], [ %834, %830 ], [ %1025, %967 ], [ %1027, %1026 ]
  ret { i64, i64 } %1029
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @XXH128_isEqual(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #18 {
  %5 = alloca %struct.XXH128_hash_t, align 8
  %6 = alloca %struct.XXH128_hash_t, align 8
  store i64 %0, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %6, align 8
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %8, align 8
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef nonnull dereferenceable(16) %6, i64 16)
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @XXH128_cmp(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @llvm.ucmp.i32.i64(i64 %4, i64 %6)
  br label %14

10:                                               ; preds = %2
  %11 = load i64, ptr %1, align 8
  %12 = load i64, ptr %0, align 8
  %13 = tail call i32 @llvm.ucmp.i32.i64(i64 %12, i64 %11)
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %9, %8 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH128_canonicalFromHash(ptr noundef writeonly initializes((0, 16)) %0, i64 %1, i64 %2) local_unnamed_addr #6 {
  %4 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %5 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %0, align 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %6, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH128_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = tail call noundef i64 @llvm.bswap.i64(i64 %5)
  %7 = insertvalue { i64, i64 } poison, i64 %6, 0
  %8 = insertvalue { i64, i64 } %7, i64 %3, 1
  ret { i64, i64 } %8
}

; Function Attrs: nofree nounwind memory(argmem: read) uwtable
define dso_local i32 @target_oneshot(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #19 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %10) #24
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %17) #24
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %24) #24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %5
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %31) #24
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load i32, ptr %33, align 1
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %11
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %38) #24
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %41 = load i32, ptr %40, align 1
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %42, %18
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %45) #24
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %25
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %52) #24
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %32
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %59) #24
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %62 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 1)
  %63 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 7)
  %64 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 12)
  %65 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 18)
  %66 = load i8, ptr %61, align 1
  %67 = zext i8 %66 to i32
  %68 = mul i32 %67, 374761393
  %69 = add i32 %62, 33
  %70 = add i32 %69, %63
  %71 = add i32 %70, %64
  %72 = add i32 %71, %65
  %73 = add i32 %72, %68
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 11)
  %75 = mul i32 %74, -1640531535
  %76 = lshr i32 %75, 15
  %77 = xor i32 %76, %75
  %78 = mul i32 %77, -2048144777
  %79 = lshr i32 %78, 13
  %80 = xor i32 %79, %78
  %81 = mul i32 %80, -1028477379
  %82 = lshr i32 %81, 16
  %83 = xor i32 %82, %81
  ret i32 %83
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #22

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr, ptr, i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ucmp.i32.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #19 = { nofree nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind memory(none) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 302135}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
