; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/19cd4ff/wrap_double_sl.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/19cd4ff/wrap_double_sl.c"
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
  %22 = freeze i32 %21
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %14
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = freeze i32 %28
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %15
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = freeze i32 %35
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %38 = load i32, ptr %37, align 1
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %16
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = freeze i32 %42
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

56:                                               ; preds = %54, %46
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
  %41 = freeze i32 %40
  store i32 %41, ptr %34, align 4
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 1
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = freeze i32 %49
  store i32 %50, ptr %43, align 4
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %51, align 1
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %53
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = freeze i32 %58
  store i32 %59, ptr %52, align 4
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %60, align 1
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
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
  %97 = freeze i32 %96
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %99 = load i32, ptr %98, align 1
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %89
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = freeze i32 %103
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %106 = load i32, ptr %105, align 1
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %90
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = freeze i32 %110
  %112 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %113 = load i32, ptr %112, align 1
  %114 = mul i32 %113, -2048144777
  %115 = add i32 %114, %91
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = mul i32 %116, -1640531535
  %118 = freeze i32 %117
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

76:                                               ; preds = %74, %42
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
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
  br label %610

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
  br label %610

51:                                               ; preds = %27
  %52 = icmp eq i64 %1, 0
  br i1 %52, label %610, label %53

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
  br label %610

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
  %89 = getelementptr i8, ptr %0, i64 56
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
  %103 = getelementptr i8, ptr %100, i64 -56
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
  %118 = getelementptr i8, ptr %0, i64 40
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
  %132 = getelementptr i8, ptr %129, i64 -40
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
  %147 = getelementptr i8, ptr %0, i64 24
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
  %161 = getelementptr i8, ptr %158, i64 -24
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
  %175 = getelementptr i8, ptr %0, i64 8
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
  %189 = getelementptr i8, ptr %186, i64 -8
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
  br label %610

205:                                              ; preds = %77
  %206 = icmp ult i64 %1, 241
  br i1 %206, label %207, label %420

207:                                              ; preds = %205
  %208 = mul i64 %1, -7046029288634856825
  %209 = trunc nuw nsw i64 %1 to i32
  %210 = load i64, ptr %0, align 1
  %211 = getelementptr i8, ptr %0, i64 8
  %212 = load i64, ptr %211, align 1
  %213 = xor i64 %210, -4734510112055689544
  %214 = xor i64 %212, 2066345149520216444
  %215 = zext i64 %213 to i128
  %216 = zext i64 %214 to i128
  %217 = mul nuw i128 %216, %215
  %218 = lshr i128 %217, 64
  %219 = xor i128 %218, %217
  %220 = trunc i128 %219 to i64
  %221 = add i64 %208, %220
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %223 = load i64, ptr %222, align 1
  %224 = getelementptr i8, ptr %0, i64 24
  %225 = load i64, ptr %224, align 1
  %226 = xor i64 %223, -2623469361688619810
  %227 = xor i64 %225, 2262974939099578482
  %228 = zext i64 %226 to i128
  %229 = zext i64 %227 to i128
  %230 = mul nuw i128 %229, %228
  %231 = lshr i128 %230, 64
  %232 = xor i128 %231, %230
  %233 = trunc i128 %232 to i64
  %234 = add i64 %221, %233
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %236 = load i64, ptr %235, align 1
  %237 = getelementptr i8, ptr %0, i64 40
  %238 = load i64, ptr %237, align 1
  %239 = xor i64 %236, 8711581037947681227
  %240 = xor i64 %238, 2410270004345854594
  %241 = zext i64 %239 to i128
  %242 = zext i64 %240 to i128
  %243 = mul nuw i128 %242, %241
  %244 = lshr i128 %243, 64
  %245 = xor i128 %244, %243
  %246 = trunc i128 %245 to i64
  %247 = add i64 %234, %246
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %249 = load i64, ptr %248, align 1
  %250 = getelementptr i8, ptr %0, i64 56
  %251 = load i64, ptr %250, align 1
  %252 = xor i64 %249, -8204357891075471176
  %253 = xor i64 %251, 5487137525590930912
  %254 = zext i64 %252 to i128
  %255 = zext i64 %253 to i128
  %256 = mul nuw i128 %255, %254
  %257 = lshr i128 %256, 64
  %258 = xor i128 %257, %256
  %259 = trunc i128 %258 to i64
  %260 = add i64 %247, %259
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %262 = load i64, ptr %261, align 1
  %263 = getelementptr i8, ptr %0, i64 72
  %264 = load i64, ptr %263, align 1
  %265 = xor i64 %262, -3818837453329782724
  %266 = xor i64 %264, -6688317018830679928
  %267 = zext i64 %265 to i128
  %268 = zext i64 %266 to i128
  %269 = mul nuw i128 %268, %267
  %270 = lshr i128 %269, 64
  %271 = xor i128 %270, %269
  %272 = trunc i128 %271 to i64
  %273 = add i64 %260, %272
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %275 = load i64, ptr %274, align 1
  %276 = getelementptr i8, ptr %0, i64 88
  %277 = load i64, ptr %276, align 1
  %278 = xor i64 %275, 5690594596133299313
  %279 = xor i64 %277, -2833645246901970632
  %280 = zext i64 %278 to i128
  %281 = zext i64 %279 to i128
  %282 = mul nuw i128 %281, %280
  %283 = lshr i128 %282, 64
  %284 = xor i128 %283, %282
  %285 = trunc i128 %284 to i64
  %286 = add i64 %273, %285
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %288 = load i64, ptr %287, align 1
  %289 = getelementptr i8, ptr %0, i64 104
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %288, 4554437623014685352
  %292 = xor i64 %290, 2111919702937427193
  %293 = zext i64 %291 to i128
  %294 = zext i64 %292 to i128
  %295 = mul nuw i128 %294, %293
  %296 = lshr i128 %295, 64
  %297 = xor i128 %296, %295
  %298 = trunc i128 %297 to i64
  %299 = add i64 %286, %298
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %301 = load i64, ptr %300, align 1
  %302 = getelementptr i8, ptr %0, i64 120
  %303 = load i64, ptr %302, align 1
  %304 = xor i64 %301, 3556072174620004746
  %305 = xor i64 %303, 7238261902898274248
  %306 = zext i64 %304 to i128
  %307 = zext i64 %305 to i128
  %308 = mul nuw i128 %307, %306
  %309 = lshr i128 %308, 64
  %310 = xor i128 %309, %308
  %311 = trunc i128 %310 to i64
  %312 = add i64 %299, %311
  %313 = lshr i32 %209, 4
  %314 = lshr i64 %312, 37
  %315 = xor i64 %314, %312
  %316 = mul i64 %315, 1609587929392839161
  %317 = lshr i64 %316, 32
  %318 = xor i64 %317, %316
  %319 = icmp eq i32 %313, 8
  br i1 %319, label %399, label %320

320:                                              ; preds = %207
  %321 = zext nneg i32 %313 to i64
  %322 = and i64 %321, 1
  %323 = icmp eq i32 %313, 9
  br i1 %323, label %375, label %324

324:                                              ; preds = %320
  %325 = and i64 %321, 14
  %326 = add nsw i64 %325, -10
  br label %327

327:                                              ; preds = %327, %324
  %328 = phi i64 [ 8, %324 ], [ %370, %327 ]
  %329 = phi i64 [ %318, %324 ], [ %369, %327 ]
  %330 = phi i64 [ 0, %324 ], [ %371, %327 ]
  %331 = shl nsw i64 %328, 4
  %332 = getelementptr inbounds nuw i8, ptr %0, i64 %331
  %333 = getelementptr i8, ptr @kSecret, i64 %331
  %334 = getelementptr i8, ptr %333, i64 -125
  %335 = load i64, ptr %332, align 1
  %336 = getelementptr i8, ptr %332, i64 8
  %337 = load i64, ptr %336, align 1
  %338 = load i64, ptr %334, align 1
  %339 = getelementptr i8, ptr %333, i64 -117
  %340 = load i64, ptr %339, align 1
  %341 = xor i64 %338, %335
  %342 = xor i64 %340, %337
  %343 = zext i64 %341 to i128
  %344 = zext i64 %342 to i128
  %345 = mul nuw i128 %344, %343
  %346 = lshr i128 %345, 64
  %347 = xor i128 %346, %345
  %348 = trunc i128 %347 to i64
  %349 = add i64 %329, %348
  %350 = shl i64 %328, 4
  %351 = or disjoint i64 %350, 16
  %352 = getelementptr inbounds nuw i8, ptr %0, i64 %351
  %353 = getelementptr i8, ptr @kSecret, i64 %351
  %354 = getelementptr i8, ptr %353, i64 -125
  %355 = load i64, ptr %352, align 1
  %356 = getelementptr i8, ptr %352, i64 8
  %357 = load i64, ptr %356, align 1
  %358 = load i64, ptr %354, align 1
  %359 = getelementptr i8, ptr %353, i64 -117
  %360 = load i64, ptr %359, align 1
  %361 = xor i64 %358, %355
  %362 = xor i64 %360, %357
  %363 = zext i64 %361 to i128
  %364 = zext i64 %362 to i128
  %365 = mul nuw i128 %364, %363
  %366 = lshr i128 %365, 64
  %367 = xor i128 %366, %365
  %368 = trunc i128 %367 to i64
  %369 = add i64 %349, %368
  %370 = add nuw nsw i64 %328, 2
  %371 = add i64 %330, 2
  %372 = icmp eq i64 %330, %326
  br i1 %372, label %373, label %327

373:                                              ; preds = %327
  %374 = shl nsw i64 %370, 4
  br label %375

375:                                              ; preds = %373, %320
  %376 = phi i64 [ poison, %320 ], [ %369, %373 ]
  %377 = phi i64 [ 128, %320 ], [ %374, %373 ]
  %378 = phi i64 [ %318, %320 ], [ %369, %373 ]
  %379 = icmp eq i64 %322, 0
  br i1 %379, label %399, label %380

380:                                              ; preds = %375
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 %377
  %382 = getelementptr i8, ptr @kSecret, i64 %377
  %383 = getelementptr i8, ptr %382, i64 -125
  %384 = load i64, ptr %381, align 1
  %385 = getelementptr i8, ptr %381, i64 8
  %386 = load i64, ptr %385, align 1
  %387 = load i64, ptr %383, align 1
  %388 = getelementptr i8, ptr %382, i64 -117
  %389 = load i64, ptr %388, align 1
  %390 = xor i64 %387, %384
  %391 = xor i64 %389, %386
  %392 = zext i64 %390 to i128
  %393 = zext i64 %391 to i128
  %394 = mul nuw i128 %393, %392
  %395 = lshr i128 %394, 64
  %396 = xor i128 %395, %394
  %397 = trunc i128 %396 to i64
  %398 = add i64 %378, %397
  br label %399

399:                                              ; preds = %380, %375, %207
  %400 = phi i64 [ %318, %207 ], [ %376, %375 ], [ %398, %380 ]
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %402 = getelementptr inbounds i8, ptr %401, i64 -16
  %403 = load i64, ptr %402, align 1
  %404 = getelementptr i8, ptr %401, i64 -8
  %405 = load i64, ptr %404, align 1
  %406 = xor i64 %403, 8320639771003045937
  %407 = xor i64 %405, -1453760514566526364
  %408 = zext i64 %406 to i128
  %409 = zext i64 %407 to i128
  %410 = mul nuw i128 %409, %408
  %411 = lshr i128 %410, 64
  %412 = xor i128 %411, %410
  %413 = trunc i128 %412 to i64
  %414 = add i64 %400, %413
  %415 = lshr i64 %414, 37
  %416 = xor i64 %415, %414
  %417 = mul i64 %416, 1609587929392839161
  %418 = lshr i64 %417, 32
  %419 = xor i64 %418, %417
  br label %610

420:                                              ; preds = %205
  %421 = lshr i64 %1, 10
  %422 = icmp ult i64 %1, 1024
  br i1 %422, label %486, label %423

423:                                              ; preds = %420, %463
  %424 = phi <4 x i64> [ %483, %463 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %420 ]
  %425 = phi <4 x i64> [ %473, %463 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %420 ]
  %426 = phi i64 [ %484, %463 ], [ 0, %420 ]
  %427 = shl i64 %426, 10
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 %427
  br label %429

429:                                              ; preds = %429, %423
  %430 = phi <4 x i64> [ %460, %429 ], [ %424, %423 ]
  %431 = phi <4 x i64> [ %447, %429 ], [ %425, %423 ]
  %432 = phi i64 [ %461, %429 ], [ 0, %423 ]
  %433 = shl i64 %432, 6
  %434 = getelementptr inbounds nuw i8, ptr %428, i64 %433
  %435 = shl i64 %432, 3
  %436 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %435
  %437 = load <4 x i64>, ptr %434, align 1
  %438 = load <4 x i64>, ptr %436, align 8
  %439 = xor <4 x i64> %438, %437
  %440 = bitcast <4 x i64> %439 to <8 x i32>
  %441 = shufflevector <8 x i32> %440, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %442 = bitcast <8 x i32> %441 to <4 x i64>
  %443 = and <4 x i64> %439, splat (i64 4294967295)
  %444 = and <4 x i64> %442, splat (i64 4294967295)
  %445 = mul nuw <4 x i64> %444, %443
  %446 = add <4 x i64> %437, %431
  %447 = add <4 x i64> %446, %445
  %448 = getelementptr inbounds nuw i8, ptr %434, i64 32
  %449 = load <4 x i64>, ptr %448, align 1
  %450 = getelementptr inbounds nuw i8, ptr %436, i64 32
  %451 = load <4 x i64>, ptr %450, align 8
  %452 = xor <4 x i64> %451, %449
  %453 = bitcast <4 x i64> %452 to <8 x i32>
  %454 = shufflevector <8 x i32> %453, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %455 = bitcast <8 x i32> %454 to <4 x i64>
  %456 = and <4 x i64> %452, splat (i64 4294967295)
  %457 = and <4 x i64> %455, splat (i64 4294967295)
  %458 = mul nuw <4 x i64> %457, %456
  %459 = add <4 x i64> %449, %430
  %460 = add <4 x i64> %459, %458
  %461 = add nuw nsw i64 %432, 1
  %462 = icmp eq i64 %461, 16
  br i1 %462, label %463, label %429

463:                                              ; preds = %429
  %464 = lshr <4 x i64> %447, splat (i64 47)
  %465 = xor <4 x i64> %447, %464
  %466 = xor <4 x i64> %465, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %467 = bitcast <4 x i64> %466 to <8 x i32>
  %468 = shufflevector <8 x i32> %467, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %469 = bitcast <8 x i32> %468 to <4 x i64>
  %470 = and <4 x i64> %466, splat (i64 4294967295)
  %471 = mul nuw <4 x i64> %470, splat (i64 2654435761)
  %472 = mul <4 x i64> %469, splat (i64 -7046029290881679360)
  %473 = add <4 x i64> %472, %471
  %474 = lshr <4 x i64> %460, splat (i64 47)
  %475 = xor <4 x i64> %460, %474
  %476 = xor <4 x i64> %475, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %477 = bitcast <4 x i64> %476 to <8 x i32>
  %478 = shufflevector <8 x i32> %477, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %479 = bitcast <8 x i32> %478 to <4 x i64>
  %480 = and <4 x i64> %476, splat (i64 4294967295)
  %481 = mul nuw <4 x i64> %480, splat (i64 2654435761)
  %482 = mul <4 x i64> %479, splat (i64 -7046029290881679360)
  %483 = add <4 x i64> %482, %481
  %484 = add nuw nsw i64 %426, 1
  %485 = icmp eq i64 %484, %421
  br i1 %485, label %486, label %423

486:                                              ; preds = %463, %420
  %487 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %420 ], [ %483, %463 ]
  %488 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %420 ], [ %473, %463 ]
  %489 = and i64 %1, -1024
  %490 = and i64 %1, 1023
  %491 = lshr i64 %490, 6
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 %489
  %493 = icmp samesign ult i64 %490, 64
  br i1 %493, label %528, label %494

494:                                              ; preds = %486, %494
  %495 = phi <4 x i64> [ %525, %494 ], [ %487, %486 ]
  %496 = phi <4 x i64> [ %512, %494 ], [ %488, %486 ]
  %497 = phi i64 [ %526, %494 ], [ 0, %486 ]
  %498 = shl i64 %497, 6
  %499 = getelementptr inbounds nuw i8, ptr %492, i64 %498
  %500 = shl i64 %497, 3
  %501 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %500
  %502 = load <4 x i64>, ptr %499, align 1
  %503 = load <4 x i64>, ptr %501, align 8
  %504 = xor <4 x i64> %503, %502
  %505 = bitcast <4 x i64> %504 to <8 x i32>
  %506 = shufflevector <8 x i32> %505, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %507 = bitcast <8 x i32> %506 to <4 x i64>
  %508 = and <4 x i64> %504, splat (i64 4294967295)
  %509 = and <4 x i64> %507, splat (i64 4294967295)
  %510 = mul nuw <4 x i64> %509, %508
  %511 = add <4 x i64> %502, %496
  %512 = add <4 x i64> %511, %510
  %513 = getelementptr inbounds nuw i8, ptr %499, i64 32
  %514 = load <4 x i64>, ptr %513, align 1
  %515 = getelementptr inbounds nuw i8, ptr %501, i64 32
  %516 = load <4 x i64>, ptr %515, align 8
  %517 = xor <4 x i64> %516, %514
  %518 = bitcast <4 x i64> %517 to <8 x i32>
  %519 = shufflevector <8 x i32> %518, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %520 = bitcast <8 x i32> %519 to <4 x i64>
  %521 = and <4 x i64> %517, splat (i64 4294967295)
  %522 = and <4 x i64> %520, splat (i64 4294967295)
  %523 = mul nuw <4 x i64> %522, %521
  %524 = add <4 x i64> %514, %495
  %525 = add <4 x i64> %524, %523
  %526 = add nuw nsw i64 %497, 1
  %527 = icmp eq i64 %526, %491
  br i1 %527, label %528, label %494

528:                                              ; preds = %494, %486
  %529 = phi <4 x i64> [ %487, %486 ], [ %525, %494 ]
  %530 = phi <4 x i64> [ %488, %486 ], [ %512, %494 ]
  %531 = and i64 %1, 63
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %557, label %533

533:                                              ; preds = %528
  %534 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %535 = getelementptr inbounds i8, ptr %534, i64 -64
  %536 = load <4 x i64>, ptr %535, align 1
  %537 = xor <4 x i64> %536, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %538 = bitcast <4 x i64> %537 to <8 x i32>
  %539 = shufflevector <8 x i32> %538, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %540 = bitcast <8 x i32> %539 to <4 x i64>
  %541 = and <4 x i64> %537, splat (i64 4294967295)
  %542 = and <4 x i64> %540, splat (i64 4294967295)
  %543 = mul nuw <4 x i64> %542, %541
  %544 = add <4 x i64> %536, %530
  %545 = add <4 x i64> %544, %543
  %546 = getelementptr inbounds i8, ptr %534, i64 -32
  %547 = load <4 x i64>, ptr %546, align 1
  %548 = xor <4 x i64> %547, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %549 = bitcast <4 x i64> %548 to <8 x i32>
  %550 = shufflevector <8 x i32> %549, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %551 = bitcast <8 x i32> %550 to <4 x i64>
  %552 = and <4 x i64> %548, splat (i64 4294967295)
  %553 = and <4 x i64> %551, splat (i64 4294967295)
  %554 = mul nuw <4 x i64> %553, %552
  %555 = add <4 x i64> %547, %529
  %556 = add <4 x i64> %555, %554
  br label %557

557:                                              ; preds = %528, %533
  %558 = phi <4 x i64> [ %529, %528 ], [ %556, %533 ]
  %559 = phi <4 x i64> [ %530, %528 ], [ %545, %533 ]
  %560 = mul i64 %1, -7046029288634856825
  %561 = extractelement <4 x i64> %559, i64 0
  %562 = extractelement <4 x i64> %559, i64 1
  %563 = xor i64 %561, 7914194659941938988
  %564 = xor i64 %562, -6611157965513653271
  %565 = zext i64 %563 to i128
  %566 = zext i64 %564 to i128
  %567 = mul nuw i128 %566, %565
  %568 = lshr i128 %567, 64
  %569 = xor i128 %568, %567
  %570 = trunc i128 %569 to i64
  %571 = extractelement <4 x i64> %559, i64 2
  %572 = extractelement <4 x i64> %559, i64 3
  %573 = xor i64 %571, -1839215637059881052
  %574 = xor i64 %572, -3433288310154277810
  %575 = zext i64 %573 to i128
  %576 = zext i64 %574 to i128
  %577 = mul nuw i128 %576, %575
  %578 = lshr i128 %577, 64
  %579 = xor i128 %578, %577
  %580 = trunc i128 %579 to i64
  %581 = extractelement <4 x i64> %558, i64 0
  %582 = extractelement <4 x i64> %558, i64 1
  %583 = xor i64 %581, 5046485836271438973
  %584 = xor i64 %582, -8055285457383852172
  %585 = zext i64 %583 to i128
  %586 = zext i64 %584 to i128
  %587 = mul nuw i128 %586, %585
  %588 = lshr i128 %587, 64
  %589 = xor i128 %588, %587
  %590 = trunc i128 %589 to i64
  %591 = extractelement <4 x i64> %558, i64 2
  %592 = extractelement <4 x i64> %558, i64 3
  %593 = xor i64 %591, 5920048007935066598
  %594 = xor i64 %592, 7336514198459093435
  %595 = zext i64 %593 to i128
  %596 = zext i64 %594 to i128
  %597 = mul nuw i128 %596, %595
  %598 = lshr i128 %597, 64
  %599 = xor i128 %598, %597
  %600 = trunc i128 %599 to i64
  %601 = add i64 %560, %590
  %602 = add i64 %601, %600
  %603 = add i64 %602, %570
  %604 = add i64 %603, %580
  %605 = lshr i64 %604, 37
  %606 = xor i64 %605, %604
  %607 = mul i64 %606, 1609587929392839161
  %608 = lshr i64 %607, 32
  %609 = xor i64 %608, %607
  br label %610

610:                                              ; preds = %53, %51, %29, %6, %557, %399, %172
  %611 = phi i64 [ %204, %172 ], [ %419, %399 ], [ %609, %557 ], [ %26, %6 ], [ %50, %29 ], [ %76, %53 ], [ 0, %51 ]
  ret i64 %611
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @XXH3_64bits_withSecret(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #14 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %85

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %32

8:                                                ; preds = %6
  %9 = load i64, ptr %2, align 1
  %10 = getelementptr i8, ptr %2, i64 8
  %11 = load i64, ptr %10, align 1
  %12 = load i64, ptr %0, align 1
  %13 = xor i64 %12, %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %14, i64 -8
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %11
  %18 = zext i64 %13 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %19, %18
  %21 = lshr i128 %20, 64
  %22 = xor i128 %21, %20
  %23 = trunc i128 %22 to i64
  %24 = add i64 %13, %1
  %25 = add i64 %24, %17
  %26 = add i64 %25, %23
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587929392839161
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  br label %717

32:                                               ; preds = %6
  %33 = icmp samesign ugt i64 %1, 3
  br i1 %33, label %34, label %57

34:                                               ; preds = %32
  %35 = load i64, ptr %2, align 1
  %36 = load i32, ptr %0, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %38 = getelementptr inbounds i8, ptr %37, i64 -4
  %39 = load i32, ptr %38, align 1
  %40 = zext i32 %36 to i64
  %41 = zext i32 %39 to i64
  %42 = shl nuw i64 %41, 32
  %43 = or disjoint i64 %42, %40
  %44 = xor i64 %43, %35
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
  br label %717

57:                                               ; preds = %32
  %58 = icmp eq i64 %1, 0
  br i1 %58, label %717, label %59

59:                                               ; preds = %57
  %60 = load i32, ptr %2, align 1
  %61 = load i8, ptr %0, align 1
  %62 = lshr i64 %1, 1
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 %62
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr i8, ptr %0, i64 %1
  %66 = getelementptr i8, ptr %65, i64 -1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %61 to i64
  %69 = zext i8 %64 to i64
  %70 = shl nuw nsw i64 %69, 8
  %71 = or disjoint i64 %70, %68
  %72 = zext i8 %67 to i64
  %73 = shl nuw nsw i64 %72, 16
  %74 = or disjoint i64 %71, %73
  %75 = shl nuw nsw i64 %1, 24
  %76 = or disjoint i64 %74, %75
  %77 = zext i32 %60 to i64
  %78 = xor i64 %76, %77
  %79 = mul i64 %78, -7046029288634856825
  %80 = lshr i64 %79, 37
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, 1609587929392839161
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  br label %717

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
  %98 = getelementptr i8, ptr %0, i64 56
  %99 = load i64, ptr %98, align 1
  %100 = load i64, ptr %96, align 1
  %101 = getelementptr i8, ptr %2, i64 104
  %102 = load i64, ptr %101, align 1
  %103 = xor i64 %100, %97
  %104 = xor i64 %102, %99
  %105 = zext i64 %103 to i128
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
  %116 = getelementptr i8, ptr %112, i64 -56
  %117 = load i64, ptr %116, align 1
  %118 = load i64, ptr %114, align 1
  %119 = getelementptr i8, ptr %2, i64 120
  %120 = load i64, ptr %119, align 1
  %121 = xor i64 %118, %115
  %122 = xor i64 %120, %117
  %123 = zext i64 %121 to i128
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
  %135 = getelementptr i8, ptr %0, i64 40
  %136 = load i64, ptr %135, align 1
  %137 = load i64, ptr %133, align 1
  %138 = getelementptr i8, ptr %2, i64 72
  %139 = load i64, ptr %138, align 1
  %140 = xor i64 %137, %134
  %141 = xor i64 %139, %136
  %142 = zext i64 %140 to i128
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
  %153 = getelementptr i8, ptr %149, i64 -40
  %154 = load i64, ptr %153, align 1
  %155 = load i64, ptr %151, align 1
  %156 = getelementptr i8, ptr %2, i64 88
  %157 = load i64, ptr %156, align 1
  %158 = xor i64 %155, %152
  %159 = xor i64 %157, %154
  %160 = zext i64 %158 to i128
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
  %172 = getelementptr i8, ptr %0, i64 24
  %173 = load i64, ptr %172, align 1
  %174 = load i64, ptr %170, align 1
  %175 = getelementptr i8, ptr %2, i64 40
  %176 = load i64, ptr %175, align 1
  %177 = xor i64 %174, %171
  %178 = xor i64 %176, %173
  %179 = zext i64 %177 to i128
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
  %190 = getelementptr i8, ptr %186, i64 -24
  %191 = load i64, ptr %190, align 1
  %192 = load i64, ptr %188, align 1
  %193 = getelementptr i8, ptr %2, i64 56
  %194 = load i64, ptr %193, align 1
  %195 = xor i64 %192, %189
  %196 = xor i64 %194, %191
  %197 = zext i64 %195 to i128
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
  %207 = getelementptr i8, ptr %0, i64 8
  %208 = load i64, ptr %207, align 1
  %209 = load i64, ptr %2, align 1
  %210 = getelementptr i8, ptr %2, i64 8
  %211 = load i64, ptr %210, align 1
  %212 = xor i64 %209, %206
  %213 = xor i64 %211, %208
  %214 = zext i64 %212 to i128
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
  %225 = getelementptr i8, ptr %221, i64 -8
  %226 = load i64, ptr %225, align 1
  %227 = load i64, ptr %223, align 1
  %228 = getelementptr i8, ptr %2, i64 24
  %229 = load i64, ptr %228, align 1
  %230 = xor i64 %227, %224
  %231 = xor i64 %229, %226
  %232 = zext i64 %230 to i128
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
  br label %717

244:                                              ; preds = %85
  %245 = icmp ult i64 %1, 241
  br i1 %245, label %246, label %494

246:                                              ; preds = %244
  %247 = mul i64 %1, -7046029288634856825
  %248 = trunc nuw nsw i64 %1 to i32
  %249 = load i64, ptr %0, align 1
  %250 = getelementptr i8, ptr %0, i64 8
  %251 = load i64, ptr %250, align 1
  %252 = load i64, ptr %2, align 1
  %253 = getelementptr i8, ptr %2, i64 8
  %254 = load i64, ptr %253, align 1
  %255 = xor i64 %252, %249
  %256 = xor i64 %254, %251
  %257 = zext i64 %255 to i128
  %258 = zext i64 %256 to i128
  %259 = mul nuw i128 %258, %257
  %260 = lshr i128 %259, 64
  %261 = xor i128 %260, %259
  %262 = trunc i128 %261 to i64
  %263 = add i64 %247, %262
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %265 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %266 = load i64, ptr %264, align 1
  %267 = getelementptr i8, ptr %0, i64 24
  %268 = load i64, ptr %267, align 1
  %269 = load i64, ptr %265, align 1
  %270 = getelementptr i8, ptr %2, i64 24
  %271 = load i64, ptr %270, align 1
  %272 = xor i64 %269, %266
  %273 = xor i64 %271, %268
  %274 = zext i64 %272 to i128
  %275 = zext i64 %273 to i128
  %276 = mul nuw i128 %275, %274
  %277 = lshr i128 %276, 64
  %278 = xor i128 %277, %276
  %279 = trunc i128 %278 to i64
  %280 = add i64 %263, %279
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %282 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %283 = load i64, ptr %281, align 1
  %284 = getelementptr i8, ptr %0, i64 40
  %285 = load i64, ptr %284, align 1
  %286 = load i64, ptr %282, align 1
  %287 = getelementptr i8, ptr %2, i64 40
  %288 = load i64, ptr %287, align 1
  %289 = xor i64 %286, %283
  %290 = xor i64 %288, %285
  %291 = zext i64 %289 to i128
  %292 = zext i64 %290 to i128
  %293 = mul nuw i128 %292, %291
  %294 = lshr i128 %293, 64
  %295 = xor i128 %294, %293
  %296 = trunc i128 %295 to i64
  %297 = add i64 %280, %296
  %298 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %299 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %300 = load i64, ptr %298, align 1
  %301 = getelementptr i8, ptr %0, i64 56
  %302 = load i64, ptr %301, align 1
  %303 = load i64, ptr %299, align 1
  %304 = getelementptr i8, ptr %2, i64 56
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %303, %300
  %307 = xor i64 %305, %302
  %308 = zext i64 %306 to i128
  %309 = zext i64 %307 to i128
  %310 = mul nuw i128 %309, %308
  %311 = lshr i128 %310, 64
  %312 = xor i128 %311, %310
  %313 = trunc i128 %312 to i64
  %314 = add i64 %297, %313
  %315 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %317 = load i64, ptr %315, align 1
  %318 = getelementptr i8, ptr %0, i64 72
  %319 = load i64, ptr %318, align 1
  %320 = load i64, ptr %316, align 1
  %321 = getelementptr i8, ptr %2, i64 72
  %322 = load i64, ptr %321, align 1
  %323 = xor i64 %320, %317
  %324 = xor i64 %322, %319
  %325 = zext i64 %323 to i128
  %326 = zext i64 %324 to i128
  %327 = mul nuw i128 %326, %325
  %328 = lshr i128 %327, 64
  %329 = xor i128 %328, %327
  %330 = trunc i128 %329 to i64
  %331 = add i64 %314, %330
  %332 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %333 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %334 = load i64, ptr %332, align 1
  %335 = getelementptr i8, ptr %0, i64 88
  %336 = load i64, ptr %335, align 1
  %337 = load i64, ptr %333, align 1
  %338 = getelementptr i8, ptr %2, i64 88
  %339 = load i64, ptr %338, align 1
  %340 = xor i64 %337, %334
  %341 = xor i64 %339, %336
  %342 = zext i64 %340 to i128
  %343 = zext i64 %341 to i128
  %344 = mul nuw i128 %343, %342
  %345 = lshr i128 %344, 64
  %346 = xor i128 %345, %344
  %347 = trunc i128 %346 to i64
  %348 = add i64 %331, %347
  %349 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %350 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %351 = load i64, ptr %349, align 1
  %352 = getelementptr i8, ptr %0, i64 104
  %353 = load i64, ptr %352, align 1
  %354 = load i64, ptr %350, align 1
  %355 = getelementptr i8, ptr %2, i64 104
  %356 = load i64, ptr %355, align 1
  %357 = xor i64 %354, %351
  %358 = xor i64 %356, %353
  %359 = zext i64 %357 to i128
  %360 = zext i64 %358 to i128
  %361 = mul nuw i128 %360, %359
  %362 = lshr i128 %361, 64
  %363 = xor i128 %362, %361
  %364 = trunc i128 %363 to i64
  %365 = add i64 %348, %364
  %366 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %367 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %368 = load i64, ptr %366, align 1
  %369 = getelementptr i8, ptr %0, i64 120
  %370 = load i64, ptr %369, align 1
  %371 = load i64, ptr %367, align 1
  %372 = getelementptr i8, ptr %2, i64 120
  %373 = load i64, ptr %372, align 1
  %374 = xor i64 %371, %368
  %375 = xor i64 %373, %370
  %376 = zext i64 %374 to i128
  %377 = zext i64 %375 to i128
  %378 = mul nuw i128 %377, %376
  %379 = lshr i128 %378, 64
  %380 = xor i128 %379, %378
  %381 = trunc i128 %380 to i64
  %382 = add i64 %365, %381
  %383 = lshr i32 %248, 4
  %384 = lshr i64 %382, 37
  %385 = xor i64 %384, %382
  %386 = mul i64 %385, 1609587929392839161
  %387 = lshr i64 %386, 32
  %388 = xor i64 %387, %386
  %389 = icmp eq i32 %383, 8
  br i1 %389, label %469, label %390

390:                                              ; preds = %246
  %391 = zext nneg i32 %383 to i64
  %392 = and i64 %391, 1
  %393 = icmp eq i32 %383, 9
  br i1 %393, label %445, label %394

394:                                              ; preds = %390
  %395 = and i64 %391, 14
  %396 = add nsw i64 %395, -10
  br label %397

397:                                              ; preds = %397, %394
  %398 = phi i64 [ 8, %394 ], [ %440, %397 ]
  %399 = phi i64 [ %388, %394 ], [ %439, %397 ]
  %400 = phi i64 [ 0, %394 ], [ %441, %397 ]
  %401 = shl nsw i64 %398, 4
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 %401
  %403 = getelementptr i8, ptr %2, i64 %401
  %404 = getelementptr i8, ptr %403, i64 -125
  %405 = load i64, ptr %402, align 1
  %406 = getelementptr i8, ptr %402, i64 8
  %407 = load i64, ptr %406, align 1
  %408 = load i64, ptr %404, align 1
  %409 = getelementptr i8, ptr %403, i64 -117
  %410 = load i64, ptr %409, align 1
  %411 = xor i64 %408, %405
  %412 = xor i64 %410, %407
  %413 = zext i64 %411 to i128
  %414 = zext i64 %412 to i128
  %415 = mul nuw i128 %414, %413
  %416 = lshr i128 %415, 64
  %417 = xor i128 %416, %415
  %418 = trunc i128 %417 to i64
  %419 = add i64 %399, %418
  %420 = shl i64 %398, 4
  %421 = or disjoint i64 %420, 16
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 %421
  %423 = getelementptr i8, ptr %2, i64 %421
  %424 = getelementptr i8, ptr %423, i64 -125
  %425 = load i64, ptr %422, align 1
  %426 = getelementptr i8, ptr %422, i64 8
  %427 = load i64, ptr %426, align 1
  %428 = load i64, ptr %424, align 1
  %429 = getelementptr i8, ptr %423, i64 -117
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %428, %425
  %432 = xor i64 %430, %427
  %433 = zext i64 %431 to i128
  %434 = zext i64 %432 to i128
  %435 = mul nuw i128 %434, %433
  %436 = lshr i128 %435, 64
  %437 = xor i128 %436, %435
  %438 = trunc i128 %437 to i64
  %439 = add i64 %419, %438
  %440 = add nuw nsw i64 %398, 2
  %441 = add i64 %400, 2
  %442 = icmp eq i64 %400, %396
  br i1 %442, label %443, label %397

443:                                              ; preds = %397
  %444 = shl nsw i64 %440, 4
  br label %445

445:                                              ; preds = %443, %390
  %446 = phi i64 [ poison, %390 ], [ %439, %443 ]
  %447 = phi i64 [ 128, %390 ], [ %444, %443 ]
  %448 = phi i64 [ %388, %390 ], [ %439, %443 ]
  %449 = icmp eq i64 %392, 0
  br i1 %449, label %469, label %450

450:                                              ; preds = %445
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 %447
  %452 = getelementptr i8, ptr %2, i64 %447
  %453 = getelementptr i8, ptr %452, i64 -125
  %454 = load i64, ptr %451, align 1
  %455 = getelementptr i8, ptr %451, i64 8
  %456 = load i64, ptr %455, align 1
  %457 = load i64, ptr %453, align 1
  %458 = getelementptr i8, ptr %452, i64 -117
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %457, %454
  %461 = xor i64 %459, %456
  %462 = zext i64 %460 to i128
  %463 = zext i64 %461 to i128
  %464 = mul nuw i128 %463, %462
  %465 = lshr i128 %464, 64
  %466 = xor i128 %465, %464
  %467 = trunc i128 %466 to i64
  %468 = add i64 %448, %467
  br label %469

469:                                              ; preds = %450, %445, %246
  %470 = phi i64 [ %388, %246 ], [ %446, %445 ], [ %468, %450 ]
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %472 = getelementptr inbounds i8, ptr %471, i64 -16
  %473 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %474 = load i64, ptr %472, align 1
  %475 = getelementptr i8, ptr %471, i64 -8
  %476 = load i64, ptr %475, align 1
  %477 = load i64, ptr %473, align 1
  %478 = getelementptr i8, ptr %2, i64 127
  %479 = load i64, ptr %478, align 1
  %480 = xor i64 %477, %474
  %481 = xor i64 %479, %476
  %482 = zext i64 %480 to i128
  %483 = zext i64 %481 to i128
  %484 = mul nuw i128 %483, %482
  %485 = lshr i128 %484, 64
  %486 = xor i128 %485, %484
  %487 = trunc i128 %486 to i64
  %488 = add i64 %470, %487
  %489 = lshr i64 %488, 37
  %490 = xor i64 %489, %488
  %491 = mul i64 %490, 1609587929392839161
  %492 = lshr i64 %491, 32
  %493 = xor i64 %492, %491
  br label %717

494:                                              ; preds = %244
  %495 = add i64 %3, -64
  %496 = lshr i64 %495, 3
  %497 = shl i64 %496, 6
  %498 = udiv i64 %1, %497
  %499 = urem i64 %1, %497
  %500 = icmp ugt i64 %497, %1
  br i1 %500, label %573, label %501

501:                                              ; preds = %494
  %502 = icmp ult i64 %495, 8
  %503 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %504 = getelementptr inbounds i8, ptr %503, i64 -64
  %505 = load <4 x i64>, ptr %504, align 1
  %506 = getelementptr inbounds i8, ptr %503, i64 -32
  %507 = load <4 x i64>, ptr %506, align 1
  br label %508

508:                                              ; preds = %548, %501
  %509 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %501 ], [ %570, %548 ]
  %510 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %501 ], [ %560, %548 ]
  %511 = phi i64 [ 0, %501 ], [ %571, %548 ]
  %512 = mul i64 %511, %497
  %513 = getelementptr inbounds nuw i8, ptr %0, i64 %512
  br i1 %502, label %548, label %514

514:                                              ; preds = %508, %514
  %515 = phi <4 x i64> [ %545, %514 ], [ %509, %508 ]
  %516 = phi <4 x i64> [ %532, %514 ], [ %510, %508 ]
  %517 = phi i64 [ %546, %514 ], [ 0, %508 ]
  %518 = shl i64 %517, 6
  %519 = getelementptr inbounds nuw i8, ptr %513, i64 %518
  %520 = shl i64 %517, 3
  %521 = getelementptr inbounds nuw i8, ptr %2, i64 %520
  %522 = load <4 x i64>, ptr %519, align 1
  %523 = load <4 x i64>, ptr %521, align 1
  %524 = xor <4 x i64> %523, %522
  %525 = bitcast <4 x i64> %524 to <8 x i32>
  %526 = shufflevector <8 x i32> %525, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %527 = bitcast <8 x i32> %526 to <4 x i64>
  %528 = and <4 x i64> %524, splat (i64 4294967295)
  %529 = and <4 x i64> %527, splat (i64 4294967295)
  %530 = mul nuw <4 x i64> %529, %528
  %531 = add <4 x i64> %522, %516
  %532 = add <4 x i64> %531, %530
  %533 = getelementptr inbounds nuw i8, ptr %519, i64 32
  %534 = load <4 x i64>, ptr %533, align 1
  %535 = getelementptr inbounds nuw i8, ptr %521, i64 32
  %536 = load <4 x i64>, ptr %535, align 1
  %537 = xor <4 x i64> %536, %534
  %538 = bitcast <4 x i64> %537 to <8 x i32>
  %539 = shufflevector <8 x i32> %538, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %540 = bitcast <8 x i32> %539 to <4 x i64>
  %541 = and <4 x i64> %537, splat (i64 4294967295)
  %542 = and <4 x i64> %540, splat (i64 4294967295)
  %543 = mul nuw <4 x i64> %542, %541
  %544 = add <4 x i64> %534, %515
  %545 = add <4 x i64> %544, %543
  %546 = add nuw i64 %517, 1
  %547 = icmp eq i64 %546, %496
  br i1 %547, label %548, label %514

548:                                              ; preds = %514, %508
  %549 = phi <4 x i64> [ %509, %508 ], [ %545, %514 ]
  %550 = phi <4 x i64> [ %510, %508 ], [ %532, %514 ]
  %551 = lshr <4 x i64> %550, splat (i64 47)
  %552 = xor <4 x i64> %505, %551
  %553 = xor <4 x i64> %552, %550
  %554 = bitcast <4 x i64> %553 to <8 x i32>
  %555 = shufflevector <8 x i32> %554, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %556 = bitcast <8 x i32> %555 to <4 x i64>
  %557 = and <4 x i64> %553, splat (i64 4294967295)
  %558 = mul nuw <4 x i64> %557, splat (i64 2654435761)
  %559 = mul <4 x i64> %556, splat (i64 -7046029290881679360)
  %560 = add <4 x i64> %559, %558
  %561 = lshr <4 x i64> %549, splat (i64 47)
  %562 = xor <4 x i64> %507, %561
  %563 = xor <4 x i64> %562, %549
  %564 = bitcast <4 x i64> %563 to <8 x i32>
  %565 = shufflevector <8 x i32> %564, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %566 = bitcast <8 x i32> %565 to <4 x i64>
  %567 = and <4 x i64> %563, splat (i64 4294967295)
  %568 = mul nuw <4 x i64> %567, splat (i64 2654435761)
  %569 = mul <4 x i64> %566, splat (i64 -7046029290881679360)
  %570 = add <4 x i64> %569, %568
  %571 = add nuw i64 %511, 1
  %572 = icmp ult i64 %571, %498
  br i1 %572, label %508, label %573

573:                                              ; preds = %548, %494
  %574 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %494 ], [ %570, %548 ]
  %575 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %494 ], [ %560, %548 ]
  %576 = mul i64 %498, %497
  %577 = lshr i64 %499, 6
  %578 = getelementptr inbounds nuw i8, ptr %0, i64 %576
  %579 = icmp ult i64 %499, 64
  br i1 %579, label %614, label %580

580:                                              ; preds = %573, %580
  %581 = phi <4 x i64> [ %611, %580 ], [ %574, %573 ]
  %582 = phi <4 x i64> [ %598, %580 ], [ %575, %573 ]
  %583 = phi i64 [ %612, %580 ], [ 0, %573 ]
  %584 = shl i64 %583, 6
  %585 = getelementptr inbounds nuw i8, ptr %578, i64 %584
  %586 = shl i64 %583, 3
  %587 = getelementptr inbounds nuw i8, ptr %2, i64 %586
  %588 = load <4 x i64>, ptr %585, align 1
  %589 = load <4 x i64>, ptr %587, align 1
  %590 = xor <4 x i64> %589, %588
  %591 = bitcast <4 x i64> %590 to <8 x i32>
  %592 = shufflevector <8 x i32> %591, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %593 = bitcast <8 x i32> %592 to <4 x i64>
  %594 = and <4 x i64> %590, splat (i64 4294967295)
  %595 = and <4 x i64> %593, splat (i64 4294967295)
  %596 = mul nuw <4 x i64> %595, %594
  %597 = add <4 x i64> %588, %582
  %598 = add <4 x i64> %597, %596
  %599 = getelementptr inbounds nuw i8, ptr %585, i64 32
  %600 = load <4 x i64>, ptr %599, align 1
  %601 = getelementptr inbounds nuw i8, ptr %587, i64 32
  %602 = load <4 x i64>, ptr %601, align 1
  %603 = xor <4 x i64> %602, %600
  %604 = bitcast <4 x i64> %603 to <8 x i32>
  %605 = shufflevector <8 x i32> %604, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %606 = bitcast <8 x i32> %605 to <4 x i64>
  %607 = and <4 x i64> %603, splat (i64 4294967295)
  %608 = and <4 x i64> %606, splat (i64 4294967295)
  %609 = mul nuw <4 x i64> %608, %607
  %610 = add <4 x i64> %600, %581
  %611 = add <4 x i64> %610, %609
  %612 = add nuw i64 %583, 1
  %613 = icmp eq i64 %612, %577
  br i1 %613, label %614, label %580

614:                                              ; preds = %580, %573
  %615 = phi <4 x i64> [ %574, %573 ], [ %611, %580 ]
  %616 = phi <4 x i64> [ %575, %573 ], [ %598, %580 ]
  %617 = and i64 %1, 63
  %618 = icmp eq i64 %617, 0
  br i1 %618, label %648, label %619

619:                                              ; preds = %614
  %620 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %621 = getelementptr inbounds i8, ptr %620, i64 -64
  %622 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %623 = getelementptr inbounds i8, ptr %622, i64 -71
  %624 = load <4 x i64>, ptr %621, align 1
  %625 = load <4 x i64>, ptr %623, align 1
  %626 = xor <4 x i64> %625, %624
  %627 = bitcast <4 x i64> %626 to <8 x i32>
  %628 = shufflevector <8 x i32> %627, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %629 = bitcast <8 x i32> %628 to <4 x i64>
  %630 = and <4 x i64> %626, splat (i64 4294967295)
  %631 = and <4 x i64> %629, splat (i64 4294967295)
  %632 = mul nuw <4 x i64> %631, %630
  %633 = add <4 x i64> %624, %616
  %634 = add <4 x i64> %633, %632
  %635 = getelementptr inbounds i8, ptr %620, i64 -32
  %636 = load <4 x i64>, ptr %635, align 1
  %637 = getelementptr inbounds i8, ptr %622, i64 -39
  %638 = load <4 x i64>, ptr %637, align 1
  %639 = xor <4 x i64> %638, %636
  %640 = bitcast <4 x i64> %639 to <8 x i32>
  %641 = shufflevector <8 x i32> %640, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %642 = bitcast <8 x i32> %641 to <4 x i64>
  %643 = and <4 x i64> %639, splat (i64 4294967295)
  %644 = and <4 x i64> %642, splat (i64 4294967295)
  %645 = mul nuw <4 x i64> %644, %643
  %646 = add <4 x i64> %636, %615
  %647 = add <4 x i64> %646, %645
  br label %648

648:                                              ; preds = %614, %619
  %649 = phi <4 x i64> [ %615, %614 ], [ %647, %619 ]
  %650 = phi <4 x i64> [ %616, %614 ], [ %634, %619 ]
  %651 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %652 = mul i64 %1, -7046029288634856825
  %653 = extractelement <4 x i64> %650, i64 0
  %654 = extractelement <4 x i64> %650, i64 1
  %655 = load i64, ptr %651, align 1
  %656 = getelementptr i8, ptr %2, i64 19
  %657 = load i64, ptr %656, align 1
  %658 = xor i64 %655, %653
  %659 = xor i64 %657, %654
  %660 = zext i64 %658 to i128
  %661 = zext i64 %659 to i128
  %662 = mul nuw i128 %661, %660
  %663 = lshr i128 %662, 64
  %664 = xor i128 %663, %662
  %665 = trunc i128 %664 to i64
  %666 = add i64 %652, %665
  %667 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %668 = extractelement <4 x i64> %650, i64 2
  %669 = extractelement <4 x i64> %650, i64 3
  %670 = load i64, ptr %667, align 1
  %671 = getelementptr i8, ptr %2, i64 35
  %672 = load i64, ptr %671, align 1
  %673 = xor i64 %670, %668
  %674 = xor i64 %672, %669
  %675 = zext i64 %673 to i128
  %676 = zext i64 %674 to i128
  %677 = mul nuw i128 %676, %675
  %678 = lshr i128 %677, 64
  %679 = xor i128 %678, %677
  %680 = trunc i128 %679 to i64
  %681 = add i64 %666, %680
  %682 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %683 = extractelement <4 x i64> %649, i64 0
  %684 = extractelement <4 x i64> %649, i64 1
  %685 = load i64, ptr %682, align 1
  %686 = getelementptr i8, ptr %2, i64 51
  %687 = load i64, ptr %686, align 1
  %688 = xor i64 %685, %683
  %689 = xor i64 %687, %684
  %690 = zext i64 %688 to i128
  %691 = zext i64 %689 to i128
  %692 = mul nuw i128 %691, %690
  %693 = lshr i128 %692, 64
  %694 = xor i128 %693, %692
  %695 = trunc i128 %694 to i64
  %696 = add i64 %681, %695
  %697 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %698 = extractelement <4 x i64> %649, i64 2
  %699 = extractelement <4 x i64> %649, i64 3
  %700 = load i64, ptr %697, align 1
  %701 = getelementptr i8, ptr %2, i64 67
  %702 = load i64, ptr %701, align 1
  %703 = xor i64 %700, %698
  %704 = xor i64 %702, %699
  %705 = zext i64 %703 to i128
  %706 = zext i64 %704 to i128
  %707 = mul nuw i128 %706, %705
  %708 = lshr i128 %707, 64
  %709 = xor i128 %708, %707
  %710 = trunc i128 %709 to i64
  %711 = add i64 %696, %710
  %712 = lshr i64 %711, 37
  %713 = xor i64 %712, %711
  %714 = mul i64 %713, 1609587929392839161
  %715 = lshr i64 %714, 32
  %716 = xor i64 %715, %714
  br label %717

717:                                              ; preds = %59, %57, %34, %8, %648, %469, %204
  %718 = phi i64 [ %243, %204 ], [ %493, %469 ], [ %716, %648 ], [ %31, %8 ], [ %56, %34 ], [ %84, %59 ], [ 0, %57 ]
  ret i64 %718
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = alloca [192 x i8], align 8
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %83

6:                                                ; preds = %3
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %31

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 1
  %10 = add i64 %2, -4734510112055689544
  %11 = xor i64 %9, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 2066345149520216444, %2
  %16 = xor i64 %14, %15
  %17 = zext i64 %11 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %11, %1
  %24 = add i64 %23, %16
  %25 = add i64 %24, %22
  %26 = lshr i64 %25, 37
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, 1609587929392839161
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  br label %915

31:                                               ; preds = %6
  %32 = icmp samesign ugt i64 %1, 3
  br i1 %32, label %33, label %56

33:                                               ; preds = %31
  %34 = load i32, ptr %0, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %36 = getelementptr inbounds i8, ptr %35, i64 -4
  %37 = load i32, ptr %36, align 1
  %38 = zext i32 %34 to i64
  %39 = zext i32 %37 to i64
  %40 = shl nuw i64 %39, 32
  %41 = or disjoint i64 %40, %38
  %42 = add i64 %2, -4734510112055689544
  %43 = xor i64 %41, %42
  %44 = lshr i64 %43, 51
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, 2654435761
  %47 = add i64 %46, %1
  %48 = lshr i64 %47, 47
  %49 = xor i64 %48, %47
  %50 = mul i64 %49, -4417276706812531889
  %51 = lshr i64 %50, 37
  %52 = xor i64 %51, %50
  %53 = mul i64 %52, 1609587929392839161
  %54 = lshr i64 %53, 32
  %55 = xor i64 %54, %53
  br label %915

56:                                               ; preds = %31
  %57 = icmp eq i64 %1, 0
  br i1 %57, label %915, label %58

58:                                               ; preds = %56
  %59 = load i8, ptr %0, align 1
  %60 = lshr i64 %1, 1
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 %60
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr i8, ptr %0, i64 %1
  %64 = getelementptr i8, ptr %63, i64 -1
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %59 to i64
  %67 = zext i8 %62 to i64
  %68 = shl nuw nsw i64 %67, 8
  %69 = or disjoint i64 %68, %66
  %70 = zext i8 %65 to i64
  %71 = shl nuw nsw i64 %70, 16
  %72 = or disjoint i64 %69, %71
  %73 = shl nuw nsw i64 %1, 24
  %74 = or disjoint i64 %72, %73
  %75 = add i64 %2, 963444408
  %76 = xor i64 %74, %75
  %77 = mul i64 %76, -7046029288634856825
  %78 = lshr i64 %77, 37
  %79 = xor i64 %78, %77
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  br label %915

83:                                               ; preds = %3
  %84 = icmp ult i64 %1, 129
  br i1 %84, label %85, label %227

85:                                               ; preds = %83
  %86 = mul i64 %1, -7046029288634856825
  %87 = icmp samesign ugt i64 %1, 32
  br i1 %87, label %88, label %190

88:                                               ; preds = %85
  %89 = icmp samesign ugt i64 %1, 64
  br i1 %89, label %90, label %157

90:                                               ; preds = %88
  %91 = icmp samesign ugt i64 %1, 96
  br i1 %91, label %92, label %124

92:                                               ; preds = %90
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %94 = load i64, ptr %93, align 1
  %95 = getelementptr i8, ptr %0, i64 56
  %96 = load i64, ptr %95, align 1
  %97 = add i64 %2, 4554437623014685352
  %98 = xor i64 %94, %97
  %99 = sub i64 2111919702937427193, %2
  %100 = xor i64 %96, %99
  %101 = zext i64 %98 to i128
  %102 = zext i64 %100 to i128
  %103 = mul nuw i128 %102, %101
  %104 = lshr i128 %103, 64
  %105 = xor i128 %104, %103
  %106 = trunc i128 %105 to i64
  %107 = add i64 %86, %106
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %109 = getelementptr inbounds i8, ptr %108, i64 -64
  %110 = load i64, ptr %109, align 1
  %111 = getelementptr i8, ptr %108, i64 -56
  %112 = load i64, ptr %111, align 1
  %113 = add i64 %2, 3556072174620004746
  %114 = xor i64 %110, %113
  %115 = sub i64 7238261902898274248, %2
  %116 = xor i64 %112, %115
  %117 = zext i64 %114 to i128
  %118 = zext i64 %116 to i128
  %119 = mul nuw i128 %118, %117
  %120 = lshr i128 %119, 64
  %121 = xor i128 %120, %119
  %122 = trunc i128 %121 to i64
  %123 = add i64 %107, %122
  br label %124

124:                                              ; preds = %92, %90
  %125 = phi i64 [ %123, %92 ], [ %86, %90 ]
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %127 = load i64, ptr %126, align 1
  %128 = getelementptr i8, ptr %0, i64 40
  %129 = load i64, ptr %128, align 1
  %130 = add i64 %2, -3818837453329782724
  %131 = xor i64 %127, %130
  %132 = sub i64 -6688317018830679928, %2
  %133 = xor i64 %129, %132
  %134 = zext i64 %131 to i128
  %135 = zext i64 %133 to i128
  %136 = mul nuw i128 %135, %134
  %137 = lshr i128 %136, 64
  %138 = xor i128 %137, %136
  %139 = trunc i128 %138 to i64
  %140 = add i64 %125, %139
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %142 = getelementptr inbounds i8, ptr %141, i64 -48
  %143 = load i64, ptr %142, align 1
  %144 = getelementptr i8, ptr %141, i64 -40
  %145 = load i64, ptr %144, align 1
  %146 = add i64 %2, 5690594596133299313
  %147 = xor i64 %143, %146
  %148 = sub i64 -2833645246901970632, %2
  %149 = xor i64 %145, %148
  %150 = zext i64 %147 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %140, %155
  br label %157

157:                                              ; preds = %124, %88
  %158 = phi i64 [ %156, %124 ], [ %86, %88 ]
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr i8, ptr %0, i64 24
  %162 = load i64, ptr %161, align 1
  %163 = add i64 %2, 8711581037947681227
  %164 = xor i64 %160, %163
  %165 = sub i64 2410270004345854594, %2
  %166 = xor i64 %162, %165
  %167 = zext i64 %164 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  %173 = add i64 %158, %172
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %175 = getelementptr inbounds i8, ptr %174, i64 -32
  %176 = load i64, ptr %175, align 1
  %177 = getelementptr i8, ptr %174, i64 -24
  %178 = load i64, ptr %177, align 1
  %179 = add i64 %2, -8204357891075471176
  %180 = xor i64 %176, %179
  %181 = sub i64 5487137525590930912, %2
  %182 = xor i64 %178, %181
  %183 = zext i64 %180 to i128
  %184 = zext i64 %182 to i128
  %185 = mul nuw i128 %184, %183
  %186 = lshr i128 %185, 64
  %187 = xor i128 %186, %185
  %188 = trunc i128 %187 to i64
  %189 = add i64 %173, %188
  br label %190

190:                                              ; preds = %85, %157
  %191 = phi i64 [ %189, %157 ], [ %86, %85 ]
  %192 = load i64, ptr %0, align 1
  %193 = getelementptr i8, ptr %0, i64 8
  %194 = load i64, ptr %193, align 1
  %195 = add i64 %2, -4734510112055689544
  %196 = xor i64 %192, %195
  %197 = sub i64 2066345149520216444, %2
  %198 = xor i64 %194, %197
  %199 = zext i64 %196 to i128
  %200 = zext i64 %198 to i128
  %201 = mul nuw i128 %200, %199
  %202 = lshr i128 %201, 64
  %203 = xor i128 %202, %201
  %204 = trunc i128 %203 to i64
  %205 = add i64 %191, %204
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %207 = getelementptr inbounds i8, ptr %206, i64 -16
  %208 = load i64, ptr %207, align 1
  %209 = getelementptr i8, ptr %206, i64 -8
  %210 = load i64, ptr %209, align 1
  %211 = add i64 %2, -2623469361688619810
  %212 = xor i64 %208, %211
  %213 = sub i64 2262974939099578482, %2
  %214 = xor i64 %210, %213
  %215 = zext i64 %212 to i128
  %216 = zext i64 %214 to i128
  %217 = mul nuw i128 %216, %215
  %218 = lshr i128 %217, 64
  %219 = xor i128 %218, %217
  %220 = trunc i128 %219 to i64
  %221 = add i64 %205, %220
  %222 = lshr i64 %221, 37
  %223 = xor i64 %222, %221
  %224 = mul i64 %223, 1609587929392839161
  %225 = lshr i64 %224, 32
  %226 = xor i64 %225, %224
  br label %915

227:                                              ; preds = %83
  %228 = icmp ult i64 %1, 241
  br i1 %228, label %229, label %466

229:                                              ; preds = %227
  %230 = mul i64 %1, -7046029288634856825
  %231 = trunc nuw nsw i64 %1 to i32
  %232 = load i64, ptr %0, align 1
  %233 = getelementptr i8, ptr %0, i64 8
  %234 = load i64, ptr %233, align 1
  %235 = add i64 %2, -4734510112055689544
  %236 = xor i64 %232, %235
  %237 = sub i64 2066345149520216444, %2
  %238 = xor i64 %234, %237
  %239 = zext i64 %236 to i128
  %240 = zext i64 %238 to i128
  %241 = mul nuw i128 %240, %239
  %242 = lshr i128 %241, 64
  %243 = xor i128 %242, %241
  %244 = trunc i128 %243 to i64
  %245 = add i64 %230, %244
  %246 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %247 = load i64, ptr %246, align 1
  %248 = getelementptr i8, ptr %0, i64 24
  %249 = load i64, ptr %248, align 1
  %250 = add i64 %2, -2623469361688619810
  %251 = xor i64 %247, %250
  %252 = sub i64 2262974939099578482, %2
  %253 = xor i64 %249, %252
  %254 = zext i64 %251 to i128
  %255 = zext i64 %253 to i128
  %256 = mul nuw i128 %255, %254
  %257 = lshr i128 %256, 64
  %258 = xor i128 %257, %256
  %259 = trunc i128 %258 to i64
  %260 = add i64 %245, %259
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %262 = load i64, ptr %261, align 1
  %263 = getelementptr i8, ptr %0, i64 40
  %264 = load i64, ptr %263, align 1
  %265 = add i64 %2, 8711581037947681227
  %266 = xor i64 %262, %265
  %267 = sub i64 2410270004345854594, %2
  %268 = xor i64 %264, %267
  %269 = zext i64 %266 to i128
  %270 = zext i64 %268 to i128
  %271 = mul nuw i128 %270, %269
  %272 = lshr i128 %271, 64
  %273 = xor i128 %272, %271
  %274 = trunc i128 %273 to i64
  %275 = add i64 %260, %274
  %276 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %277 = load i64, ptr %276, align 1
  %278 = getelementptr i8, ptr %0, i64 56
  %279 = load i64, ptr %278, align 1
  %280 = add i64 %2, -8204357891075471176
  %281 = xor i64 %277, %280
  %282 = sub i64 5487137525590930912, %2
  %283 = xor i64 %279, %282
  %284 = zext i64 %281 to i128
  %285 = zext i64 %283 to i128
  %286 = mul nuw i128 %285, %284
  %287 = lshr i128 %286, 64
  %288 = xor i128 %287, %286
  %289 = trunc i128 %288 to i64
  %290 = add i64 %275, %289
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %292 = load i64, ptr %291, align 1
  %293 = getelementptr i8, ptr %0, i64 72
  %294 = load i64, ptr %293, align 1
  %295 = add i64 %2, -3818837453329782724
  %296 = xor i64 %292, %295
  %297 = sub i64 -6688317018830679928, %2
  %298 = xor i64 %294, %297
  %299 = zext i64 %296 to i128
  %300 = zext i64 %298 to i128
  %301 = mul nuw i128 %300, %299
  %302 = lshr i128 %301, 64
  %303 = xor i128 %302, %301
  %304 = trunc i128 %303 to i64
  %305 = add i64 %290, %304
  %306 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %307 = load i64, ptr %306, align 1
  %308 = getelementptr i8, ptr %0, i64 88
  %309 = load i64, ptr %308, align 1
  %310 = add i64 %2, 5690594596133299313
  %311 = xor i64 %307, %310
  %312 = sub i64 -2833645246901970632, %2
  %313 = xor i64 %309, %312
  %314 = zext i64 %311 to i128
  %315 = zext i64 %313 to i128
  %316 = mul nuw i128 %315, %314
  %317 = lshr i128 %316, 64
  %318 = xor i128 %317, %316
  %319 = trunc i128 %318 to i64
  %320 = add i64 %305, %319
  %321 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %322 = load i64, ptr %321, align 1
  %323 = getelementptr i8, ptr %0, i64 104
  %324 = load i64, ptr %323, align 1
  %325 = add i64 %2, 4554437623014685352
  %326 = xor i64 %322, %325
  %327 = sub i64 2111919702937427193, %2
  %328 = xor i64 %324, %327
  %329 = zext i64 %326 to i128
  %330 = zext i64 %328 to i128
  %331 = mul nuw i128 %330, %329
  %332 = lshr i128 %331, 64
  %333 = xor i128 %332, %331
  %334 = trunc i128 %333 to i64
  %335 = add i64 %320, %334
  %336 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %337 = load i64, ptr %336, align 1
  %338 = getelementptr i8, ptr %0, i64 120
  %339 = load i64, ptr %338, align 1
  %340 = add i64 %2, 3556072174620004746
  %341 = xor i64 %337, %340
  %342 = sub i64 7238261902898274248, %2
  %343 = xor i64 %339, %342
  %344 = zext i64 %341 to i128
  %345 = zext i64 %343 to i128
  %346 = mul nuw i128 %345, %344
  %347 = lshr i128 %346, 64
  %348 = xor i128 %347, %346
  %349 = trunc i128 %348 to i64
  %350 = add i64 %335, %349
  %351 = lshr i32 %231, 4
  %352 = lshr i64 %350, 37
  %353 = xor i64 %352, %350
  %354 = mul i64 %353, 1609587929392839161
  %355 = lshr i64 %354, 32
  %356 = xor i64 %355, %354
  %357 = icmp eq i32 %351, 8
  br i1 %357, label %443, label %358

358:                                              ; preds = %229
  %359 = zext nneg i32 %351 to i64
  %360 = and i64 %359, 1
  %361 = icmp eq i32 %351, 9
  br i1 %361, label %417, label %362

362:                                              ; preds = %358
  %363 = and i64 %359, 14
  %364 = add nsw i64 %363, -10
  br label %365

365:                                              ; preds = %365, %362
  %366 = phi i64 [ 8, %362 ], [ %412, %365 ]
  %367 = phi i64 [ %356, %362 ], [ %411, %365 ]
  %368 = phi i64 [ 0, %362 ], [ %413, %365 ]
  %369 = shl nsw i64 %366, 4
  %370 = getelementptr inbounds nuw i8, ptr %0, i64 %369
  %371 = getelementptr i8, ptr @kSecret, i64 %369
  %372 = getelementptr i8, ptr %371, i64 -125
  %373 = load i64, ptr %370, align 1
  %374 = getelementptr i8, ptr %370, i64 8
  %375 = load i64, ptr %374, align 1
  %376 = load i64, ptr %372, align 1
  %377 = getelementptr i8, ptr %371, i64 -117
  %378 = load i64, ptr %377, align 1
  %379 = add i64 %376, %2
  %380 = xor i64 %379, %373
  %381 = sub i64 %378, %2
  %382 = xor i64 %381, %375
  %383 = zext i64 %380 to i128
  %384 = zext i64 %382 to i128
  %385 = mul nuw i128 %384, %383
  %386 = lshr i128 %385, 64
  %387 = xor i128 %386, %385
  %388 = trunc i128 %387 to i64
  %389 = add i64 %367, %388
  %390 = shl i64 %366, 4
  %391 = or disjoint i64 %390, 16
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 %391
  %393 = getelementptr i8, ptr @kSecret, i64 %391
  %394 = getelementptr i8, ptr %393, i64 -125
  %395 = load i64, ptr %392, align 1
  %396 = getelementptr i8, ptr %392, i64 8
  %397 = load i64, ptr %396, align 1
  %398 = load i64, ptr %394, align 1
  %399 = getelementptr i8, ptr %393, i64 -117
  %400 = load i64, ptr %399, align 1
  %401 = add i64 %398, %2
  %402 = xor i64 %401, %395
  %403 = sub i64 %400, %2
  %404 = xor i64 %403, %397
  %405 = zext i64 %402 to i128
  %406 = zext i64 %404 to i128
  %407 = mul nuw i128 %406, %405
  %408 = lshr i128 %407, 64
  %409 = xor i128 %408, %407
  %410 = trunc i128 %409 to i64
  %411 = add i64 %389, %410
  %412 = add nuw nsw i64 %366, 2
  %413 = add i64 %368, 2
  %414 = icmp eq i64 %368, %364
  br i1 %414, label %415, label %365

415:                                              ; preds = %365
  %416 = shl nsw i64 %412, 4
  br label %417

417:                                              ; preds = %415, %358
  %418 = phi i64 [ poison, %358 ], [ %411, %415 ]
  %419 = phi i64 [ 128, %358 ], [ %416, %415 ]
  %420 = phi i64 [ %356, %358 ], [ %411, %415 ]
  %421 = icmp eq i64 %360, 0
  br i1 %421, label %443, label %422

422:                                              ; preds = %417
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 %419
  %424 = getelementptr i8, ptr @kSecret, i64 %419
  %425 = getelementptr i8, ptr %424, i64 -125
  %426 = load i64, ptr %423, align 1
  %427 = getelementptr i8, ptr %423, i64 8
  %428 = load i64, ptr %427, align 1
  %429 = load i64, ptr %425, align 1
  %430 = getelementptr i8, ptr %424, i64 -117
  %431 = load i64, ptr %430, align 1
  %432 = add i64 %429, %2
  %433 = xor i64 %432, %426
  %434 = sub i64 %431, %2
  %435 = xor i64 %434, %428
  %436 = zext i64 %433 to i128
  %437 = zext i64 %435 to i128
  %438 = mul nuw i128 %437, %436
  %439 = lshr i128 %438, 64
  %440 = xor i128 %439, %438
  %441 = trunc i128 %440 to i64
  %442 = add i64 %420, %441
  br label %443

443:                                              ; preds = %422, %417, %229
  %444 = phi i64 [ %356, %229 ], [ %418, %417 ], [ %442, %422 ]
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %446 = getelementptr inbounds i8, ptr %445, i64 -16
  %447 = load i64, ptr %446, align 1
  %448 = getelementptr i8, ptr %445, i64 -8
  %449 = load i64, ptr %448, align 1
  %450 = add i64 %2, 8320639771003045937
  %451 = xor i64 %447, %450
  %452 = sub i64 -1453760514566526364, %2
  %453 = xor i64 %449, %452
  %454 = zext i64 %451 to i128
  %455 = zext i64 %453 to i128
  %456 = mul nuw i128 %455, %454
  %457 = lshr i128 %456, 64
  %458 = xor i128 %457, %456
  %459 = trunc i128 %458 to i64
  %460 = add i64 %444, %459
  %461 = lshr i64 %460, 37
  %462 = xor i64 %461, %460
  %463 = mul i64 %462, 1609587929392839161
  %464 = lshr i64 %463, 32
  %465 = xor i64 %464, %463
  br label %915

466:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #26
  %467 = icmp eq i64 %2, 0
  br i1 %467, label %468, label %653

468:                                              ; preds = %466
  %469 = lshr i64 %1, 10
  %470 = icmp ult i64 %1, 1024
  br i1 %470, label %534, label %471

471:                                              ; preds = %468, %511
  %472 = phi <4 x i64> [ %531, %511 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %468 ]
  %473 = phi <4 x i64> [ %521, %511 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %468 ]
  %474 = phi i64 [ %532, %511 ], [ 0, %468 ]
  %475 = shl i64 %474, 10
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 %475
  br label %477

477:                                              ; preds = %477, %471
  %478 = phi <4 x i64> [ %508, %477 ], [ %472, %471 ]
  %479 = phi <4 x i64> [ %495, %477 ], [ %473, %471 ]
  %480 = phi i64 [ %509, %477 ], [ 0, %471 ]
  %481 = shl i64 %480, 6
  %482 = getelementptr inbounds nuw i8, ptr %476, i64 %481
  %483 = shl i64 %480, 3
  %484 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %483
  %485 = load <4 x i64>, ptr %482, align 1
  %486 = load <4 x i64>, ptr %484, align 8
  %487 = xor <4 x i64> %486, %485
  %488 = bitcast <4 x i64> %487 to <8 x i32>
  %489 = shufflevector <8 x i32> %488, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %490 = bitcast <8 x i32> %489 to <4 x i64>
  %491 = and <4 x i64> %487, splat (i64 4294967295)
  %492 = and <4 x i64> %490, splat (i64 4294967295)
  %493 = mul nuw <4 x i64> %492, %491
  %494 = add <4 x i64> %485, %479
  %495 = add <4 x i64> %494, %493
  %496 = getelementptr inbounds nuw i8, ptr %482, i64 32
  %497 = load <4 x i64>, ptr %496, align 1
  %498 = getelementptr inbounds nuw i8, ptr %484, i64 32
  %499 = load <4 x i64>, ptr %498, align 8
  %500 = xor <4 x i64> %499, %497
  %501 = bitcast <4 x i64> %500 to <8 x i32>
  %502 = shufflevector <8 x i32> %501, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %503 = bitcast <8 x i32> %502 to <4 x i64>
  %504 = and <4 x i64> %500, splat (i64 4294967295)
  %505 = and <4 x i64> %503, splat (i64 4294967295)
  %506 = mul nuw <4 x i64> %505, %504
  %507 = add <4 x i64> %497, %478
  %508 = add <4 x i64> %507, %506
  %509 = add nuw nsw i64 %480, 1
  %510 = icmp eq i64 %509, 16
  br i1 %510, label %511, label %477

511:                                              ; preds = %477
  %512 = lshr <4 x i64> %495, splat (i64 47)
  %513 = xor <4 x i64> %495, %512
  %514 = xor <4 x i64> %513, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %515 = bitcast <4 x i64> %514 to <8 x i32>
  %516 = shufflevector <8 x i32> %515, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %517 = bitcast <8 x i32> %516 to <4 x i64>
  %518 = and <4 x i64> %514, splat (i64 4294967295)
  %519 = mul nuw <4 x i64> %518, splat (i64 2654435761)
  %520 = mul <4 x i64> %517, splat (i64 -7046029290881679360)
  %521 = add <4 x i64> %520, %519
  %522 = lshr <4 x i64> %508, splat (i64 47)
  %523 = xor <4 x i64> %508, %522
  %524 = xor <4 x i64> %523, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %525 = bitcast <4 x i64> %524 to <8 x i32>
  %526 = shufflevector <8 x i32> %525, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %527 = bitcast <8 x i32> %526 to <4 x i64>
  %528 = and <4 x i64> %524, splat (i64 4294967295)
  %529 = mul nuw <4 x i64> %528, splat (i64 2654435761)
  %530 = mul <4 x i64> %527, splat (i64 -7046029290881679360)
  %531 = add <4 x i64> %530, %529
  %532 = add nuw nsw i64 %474, 1
  %533 = icmp eq i64 %532, %469
  br i1 %533, label %534, label %471

534:                                              ; preds = %511, %468
  %535 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %468 ], [ %531, %511 ]
  %536 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %468 ], [ %521, %511 ]
  %537 = and i64 %1, -1024
  %538 = and i64 %1, 1023
  %539 = lshr i64 %538, 6
  %540 = getelementptr inbounds nuw i8, ptr %0, i64 %537
  %541 = icmp samesign ult i64 %538, 64
  br i1 %541, label %576, label %542

542:                                              ; preds = %534, %542
  %543 = phi <4 x i64> [ %573, %542 ], [ %535, %534 ]
  %544 = phi <4 x i64> [ %560, %542 ], [ %536, %534 ]
  %545 = phi i64 [ %574, %542 ], [ 0, %534 ]
  %546 = shl i64 %545, 6
  %547 = getelementptr inbounds nuw i8, ptr %540, i64 %546
  %548 = shl i64 %545, 3
  %549 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %548
  %550 = load <4 x i64>, ptr %547, align 1
  %551 = load <4 x i64>, ptr %549, align 8
  %552 = xor <4 x i64> %551, %550
  %553 = bitcast <4 x i64> %552 to <8 x i32>
  %554 = shufflevector <8 x i32> %553, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %555 = bitcast <8 x i32> %554 to <4 x i64>
  %556 = and <4 x i64> %552, splat (i64 4294967295)
  %557 = and <4 x i64> %555, splat (i64 4294967295)
  %558 = mul nuw <4 x i64> %557, %556
  %559 = add <4 x i64> %550, %544
  %560 = add <4 x i64> %559, %558
  %561 = getelementptr inbounds nuw i8, ptr %547, i64 32
  %562 = load <4 x i64>, ptr %561, align 1
  %563 = getelementptr inbounds nuw i8, ptr %549, i64 32
  %564 = load <4 x i64>, ptr %563, align 8
  %565 = xor <4 x i64> %564, %562
  %566 = bitcast <4 x i64> %565 to <8 x i32>
  %567 = shufflevector <8 x i32> %566, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %568 = bitcast <8 x i32> %567 to <4 x i64>
  %569 = and <4 x i64> %565, splat (i64 4294967295)
  %570 = and <4 x i64> %568, splat (i64 4294967295)
  %571 = mul nuw <4 x i64> %570, %569
  %572 = add <4 x i64> %562, %543
  %573 = add <4 x i64> %572, %571
  %574 = add nuw nsw i64 %545, 1
  %575 = icmp eq i64 %574, %539
  br i1 %575, label %576, label %542

576:                                              ; preds = %542, %534
  %577 = phi <4 x i64> [ %535, %534 ], [ %573, %542 ]
  %578 = phi <4 x i64> [ %536, %534 ], [ %560, %542 ]
  %579 = and i64 %1, 63
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %605, label %581

581:                                              ; preds = %576
  %582 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %583 = getelementptr inbounds i8, ptr %582, i64 -64
  %584 = load <4 x i64>, ptr %583, align 1
  %585 = xor <4 x i64> %584, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %586 = bitcast <4 x i64> %585 to <8 x i32>
  %587 = shufflevector <8 x i32> %586, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %588 = bitcast <8 x i32> %587 to <4 x i64>
  %589 = and <4 x i64> %585, splat (i64 4294967295)
  %590 = and <4 x i64> %588, splat (i64 4294967295)
  %591 = mul nuw <4 x i64> %590, %589
  %592 = add <4 x i64> %584, %578
  %593 = add <4 x i64> %592, %591
  %594 = getelementptr inbounds i8, ptr %582, i64 -32
  %595 = load <4 x i64>, ptr %594, align 1
  %596 = xor <4 x i64> %595, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %597 = bitcast <4 x i64> %596 to <8 x i32>
  %598 = shufflevector <8 x i32> %597, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %599 = bitcast <8 x i32> %598 to <4 x i64>
  %600 = and <4 x i64> %596, splat (i64 4294967295)
  %601 = and <4 x i64> %599, splat (i64 4294967295)
  %602 = mul nuw <4 x i64> %601, %600
  %603 = add <4 x i64> %595, %577
  %604 = add <4 x i64> %603, %602
  br label %605

605:                                              ; preds = %581, %576
  %606 = phi <4 x i64> [ %577, %576 ], [ %604, %581 ]
  %607 = phi <4 x i64> [ %578, %576 ], [ %593, %581 ]
  %608 = mul i64 %1, -7046029288634856825
  %609 = extractelement <4 x i64> %607, i64 0
  %610 = extractelement <4 x i64> %607, i64 1
  %611 = xor i64 %609, 7914194659941938988
  %612 = xor i64 %610, -6611157965513653271
  %613 = zext i64 %611 to i128
  %614 = zext i64 %612 to i128
  %615 = mul nuw i128 %614, %613
  %616 = lshr i128 %615, 64
  %617 = xor i128 %616, %615
  %618 = trunc i128 %617 to i64
  %619 = extractelement <4 x i64> %607, i64 2
  %620 = extractelement <4 x i64> %607, i64 3
  %621 = xor i64 %619, -1839215637059881052
  %622 = xor i64 %620, -3433288310154277810
  %623 = zext i64 %621 to i128
  %624 = zext i64 %622 to i128
  %625 = mul nuw i128 %624, %623
  %626 = lshr i128 %625, 64
  %627 = xor i128 %626, %625
  %628 = trunc i128 %627 to i64
  %629 = extractelement <4 x i64> %606, i64 0
  %630 = extractelement <4 x i64> %606, i64 1
  %631 = xor i64 %629, 5046485836271438973
  %632 = xor i64 %630, -8055285457383852172
  %633 = zext i64 %631 to i128
  %634 = zext i64 %632 to i128
  %635 = mul nuw i128 %634, %633
  %636 = lshr i128 %635, 64
  %637 = xor i128 %636, %635
  %638 = trunc i128 %637 to i64
  %639 = extractelement <4 x i64> %606, i64 2
  %640 = extractelement <4 x i64> %606, i64 3
  %641 = xor i64 %639, 5920048007935066598
  %642 = xor i64 %640, 7336514198459093435
  %643 = zext i64 %641 to i128
  %644 = zext i64 %642 to i128
  %645 = mul nuw i128 %644, %643
  %646 = lshr i128 %645, 64
  %647 = xor i128 %646, %645
  %648 = trunc i128 %647 to i64
  %649 = add i64 %608, %638
  %650 = add i64 %649, %648
  %651 = add i64 %650, %618
  %652 = add i64 %651, %628
  br label %908

653:                                              ; preds = %466
  %654 = add i64 %2, -4734510112055689544
  store i64 %654, ptr %4, align 8
  %655 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %656 = sub i64 2066345149520216444, %2
  store i64 %656, ptr %655, align 8
  %657 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %658 = add i64 %2, -2623469361688619810
  store i64 %658, ptr %657, align 8
  %659 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %660 = sub i64 2262974939099578482, %2
  store i64 %660, ptr %659, align 8
  %661 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %662 = add i64 %2, 8711581037947681227
  store i64 %662, ptr %661, align 8
  %663 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %664 = sub i64 2410270004345854594, %2
  store i64 %664, ptr %663, align 8
  %665 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %666 = add i64 %2, -8204357891075471176
  store i64 %666, ptr %665, align 8
  %667 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %668 = sub i64 5487137525590930912, %2
  store i64 %668, ptr %667, align 8
  %669 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %670 = add i64 %2, -3818837453329782724
  store i64 %670, ptr %669, align 8
  %671 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %672 = sub i64 -6688317018830679928, %2
  store i64 %672, ptr %671, align 8
  %673 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %674 = add i64 %2, 5690594596133299313
  store i64 %674, ptr %673, align 8
  %675 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %676 = sub i64 -2833645246901970632, %2
  store i64 %676, ptr %675, align 8
  %677 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %678 = add i64 %2, 4554437623014685352
  store i64 %678, ptr %677, align 8
  %679 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %680 = sub i64 2111919702937427193, %2
  store i64 %680, ptr %679, align 8
  %681 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %682 = add i64 %2, 3556072174620004746
  store i64 %682, ptr %681, align 8
  %683 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %684 = sub i64 7238261902898274248, %2
  store i64 %684, ptr %683, align 8
  %685 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %686 = add i64 %2, -4329134394285701654
  store i64 %686, ptr %685, align 8
  %687 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %688 = sub i64 -1485321483350670907, %2
  store i64 %688, ptr %687, align 8
  %689 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %690 = add i64 %2, 5321830579834785047
  store i64 %690, ptr %689, align 8
  %691 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %692 = sub i64 -7032137544937171245, %2
  store i64 %692, ptr %691, align 8
  %693 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %694 = add i64 %2, -242834301215959509
  store i64 %694, ptr %693, align 8
  %695 = getelementptr inbounds nuw i8, ptr %4, i64 168
  %696 = sub i64 -3588858202114426737, %2
  store i64 %696, ptr %695, align 8
  %697 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %698 = add i64 %2, 2883454493032893253
  store i64 %698, ptr %697, align 8
  %699 = getelementptr inbounds nuw i8, ptr %4, i64 184
  %700 = sub i64 9097354517224871855, %2
  store i64 %700, ptr %699, align 8
  %701 = lshr i64 %1, 10
  %702 = icmp ult i64 %1, 1024
  br i1 %702, label %769, label %703

703:                                              ; preds = %653
  %704 = load <4 x i64>, ptr %685, align 8
  %705 = load <4 x i64>, ptr %693, align 8
  br label %706

706:                                              ; preds = %746, %703
  %707 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %703 ], [ %766, %746 ]
  %708 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %703 ], [ %756, %746 ]
  %709 = phi i64 [ 0, %703 ], [ %767, %746 ]
  %710 = shl i64 %709, 10
  %711 = getelementptr inbounds nuw i8, ptr %0, i64 %710
  br label %712

712:                                              ; preds = %712, %706
  %713 = phi <4 x i64> [ %743, %712 ], [ %707, %706 ]
  %714 = phi <4 x i64> [ %730, %712 ], [ %708, %706 ]
  %715 = phi i64 [ %744, %712 ], [ 0, %706 ]
  %716 = shl i64 %715, 6
  %717 = getelementptr inbounds nuw i8, ptr %711, i64 %716
  %718 = shl i64 %715, 3
  %719 = getelementptr inbounds nuw i8, ptr %4, i64 %718
  %720 = load <4 x i64>, ptr %717, align 1
  %721 = load <4 x i64>, ptr %719, align 8
  %722 = xor <4 x i64> %721, %720
  %723 = bitcast <4 x i64> %722 to <8 x i32>
  %724 = shufflevector <8 x i32> %723, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %725 = bitcast <8 x i32> %724 to <4 x i64>
  %726 = and <4 x i64> %722, splat (i64 4294967295)
  %727 = and <4 x i64> %725, splat (i64 4294967295)
  %728 = mul nuw <4 x i64> %727, %726
  %729 = add <4 x i64> %720, %714
  %730 = add <4 x i64> %729, %728
  %731 = getelementptr inbounds nuw i8, ptr %717, i64 32
  %732 = load <4 x i64>, ptr %731, align 1
  %733 = getelementptr inbounds nuw i8, ptr %719, i64 32
  %734 = load <4 x i64>, ptr %733, align 8
  %735 = xor <4 x i64> %734, %732
  %736 = bitcast <4 x i64> %735 to <8 x i32>
  %737 = shufflevector <8 x i32> %736, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %738 = bitcast <8 x i32> %737 to <4 x i64>
  %739 = and <4 x i64> %735, splat (i64 4294967295)
  %740 = and <4 x i64> %738, splat (i64 4294967295)
  %741 = mul nuw <4 x i64> %740, %739
  %742 = add <4 x i64> %732, %713
  %743 = add <4 x i64> %742, %741
  %744 = add nuw nsw i64 %715, 1
  %745 = icmp eq i64 %744, 16
  br i1 %745, label %746, label %712

746:                                              ; preds = %712
  %747 = lshr <4 x i64> %730, splat (i64 47)
  %748 = xor <4 x i64> %704, %747
  %749 = xor <4 x i64> %748, %730
  %750 = bitcast <4 x i64> %749 to <8 x i32>
  %751 = shufflevector <8 x i32> %750, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %752 = bitcast <8 x i32> %751 to <4 x i64>
  %753 = and <4 x i64> %749, splat (i64 4294967295)
  %754 = mul nuw <4 x i64> %753, splat (i64 2654435761)
  %755 = mul <4 x i64> %752, splat (i64 -7046029290881679360)
  %756 = add <4 x i64> %755, %754
  %757 = lshr <4 x i64> %743, splat (i64 47)
  %758 = xor <4 x i64> %705, %757
  %759 = xor <4 x i64> %758, %743
  %760 = bitcast <4 x i64> %759 to <8 x i32>
  %761 = shufflevector <8 x i32> %760, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %762 = bitcast <8 x i32> %761 to <4 x i64>
  %763 = and <4 x i64> %759, splat (i64 4294967295)
  %764 = mul nuw <4 x i64> %763, splat (i64 2654435761)
  %765 = mul <4 x i64> %762, splat (i64 -7046029290881679360)
  %766 = add <4 x i64> %765, %764
  %767 = add nuw nsw i64 %709, 1
  %768 = icmp eq i64 %767, %701
  br i1 %768, label %769, label %706

769:                                              ; preds = %746, %653
  %770 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %653 ], [ %766, %746 ]
  %771 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %653 ], [ %756, %746 ]
  %772 = and i64 %1, -1024
  %773 = and i64 %1, 1023
  %774 = lshr i64 %773, 6
  %775 = getelementptr inbounds nuw i8, ptr %0, i64 %772
  %776 = icmp samesign ult i64 %773, 64
  br i1 %776, label %811, label %777

777:                                              ; preds = %769, %777
  %778 = phi <4 x i64> [ %808, %777 ], [ %770, %769 ]
  %779 = phi <4 x i64> [ %795, %777 ], [ %771, %769 ]
  %780 = phi i64 [ %809, %777 ], [ 0, %769 ]
  %781 = shl i64 %780, 6
  %782 = getelementptr inbounds nuw i8, ptr %775, i64 %781
  %783 = shl i64 %780, 3
  %784 = getelementptr inbounds nuw i8, ptr %4, i64 %783
  %785 = load <4 x i64>, ptr %782, align 1
  %786 = load <4 x i64>, ptr %784, align 8
  %787 = xor <4 x i64> %786, %785
  %788 = bitcast <4 x i64> %787 to <8 x i32>
  %789 = shufflevector <8 x i32> %788, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %790 = bitcast <8 x i32> %789 to <4 x i64>
  %791 = and <4 x i64> %787, splat (i64 4294967295)
  %792 = and <4 x i64> %790, splat (i64 4294967295)
  %793 = mul nuw <4 x i64> %792, %791
  %794 = add <4 x i64> %785, %779
  %795 = add <4 x i64> %794, %793
  %796 = getelementptr inbounds nuw i8, ptr %782, i64 32
  %797 = load <4 x i64>, ptr %796, align 1
  %798 = getelementptr inbounds nuw i8, ptr %784, i64 32
  %799 = load <4 x i64>, ptr %798, align 8
  %800 = xor <4 x i64> %799, %797
  %801 = bitcast <4 x i64> %800 to <8 x i32>
  %802 = shufflevector <8 x i32> %801, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %803 = bitcast <8 x i32> %802 to <4 x i64>
  %804 = and <4 x i64> %800, splat (i64 4294967295)
  %805 = and <4 x i64> %803, splat (i64 4294967295)
  %806 = mul nuw <4 x i64> %805, %804
  %807 = add <4 x i64> %797, %778
  %808 = add <4 x i64> %807, %806
  %809 = add nuw nsw i64 %780, 1
  %810 = icmp eq i64 %809, %774
  br i1 %810, label %811, label %777

811:                                              ; preds = %777, %769
  %812 = phi <4 x i64> [ %770, %769 ], [ %808, %777 ]
  %813 = phi <4 x i64> [ %771, %769 ], [ %795, %777 ]
  %814 = and i64 %1, 63
  %815 = icmp eq i64 %814, 0
  br i1 %815, label %844, label %816

816:                                              ; preds = %811
  %817 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %818 = getelementptr inbounds i8, ptr %817, i64 -64
  %819 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %820 = load <4 x i64>, ptr %818, align 1
  %821 = load <4 x i64>, ptr %819, align 1
  %822 = xor <4 x i64> %821, %820
  %823 = bitcast <4 x i64> %822 to <8 x i32>
  %824 = shufflevector <8 x i32> %823, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %825 = bitcast <8 x i32> %824 to <4 x i64>
  %826 = and <4 x i64> %822, splat (i64 4294967295)
  %827 = and <4 x i64> %825, splat (i64 4294967295)
  %828 = mul nuw <4 x i64> %827, %826
  %829 = add <4 x i64> %820, %813
  %830 = add <4 x i64> %829, %828
  %831 = getelementptr inbounds i8, ptr %817, i64 -32
  %832 = load <4 x i64>, ptr %831, align 1
  %833 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %834 = load <4 x i64>, ptr %833, align 1
  %835 = xor <4 x i64> %834, %832
  %836 = bitcast <4 x i64> %835 to <8 x i32>
  %837 = shufflevector <8 x i32> %836, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %838 = bitcast <8 x i32> %837 to <4 x i64>
  %839 = and <4 x i64> %835, splat (i64 4294967295)
  %840 = and <4 x i64> %838, splat (i64 4294967295)
  %841 = mul nuw <4 x i64> %840, %839
  %842 = add <4 x i64> %832, %812
  %843 = add <4 x i64> %842, %841
  br label %844

844:                                              ; preds = %816, %811
  %845 = phi <4 x i64> [ %812, %811 ], [ %843, %816 ]
  %846 = phi <4 x i64> [ %813, %811 ], [ %830, %816 ]
  %847 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %848 = mul i64 %1, -7046029288634856825
  %849 = extractelement <4 x i64> %846, i64 0
  %850 = extractelement <4 x i64> %846, i64 1
  %851 = load i64, ptr %847, align 1
  %852 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %853 = load i64, ptr %852, align 1
  %854 = xor i64 %851, %849
  %855 = xor i64 %853, %850
  %856 = zext i64 %854 to i128
  %857 = zext i64 %855 to i128
  %858 = mul nuw i128 %857, %856
  %859 = lshr i128 %858, 64
  %860 = xor i128 %859, %858
  %861 = trunc i128 %860 to i64
  %862 = add i64 %848, %861
  %863 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %864 = extractelement <4 x i64> %846, i64 2
  %865 = extractelement <4 x i64> %846, i64 3
  %866 = load i64, ptr %863, align 1
  %867 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %868 = load i64, ptr %867, align 1
  %869 = xor i64 %866, %864
  %870 = xor i64 %868, %865
  %871 = zext i64 %869 to i128
  %872 = zext i64 %870 to i128
  %873 = mul nuw i128 %872, %871
  %874 = lshr i128 %873, 64
  %875 = xor i128 %874, %873
  %876 = trunc i128 %875 to i64
  %877 = add i64 %862, %876
  %878 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %879 = extractelement <4 x i64> %845, i64 0
  %880 = extractelement <4 x i64> %845, i64 1
  %881 = load i64, ptr %878, align 1
  %882 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %883 = load i64, ptr %882, align 1
  %884 = xor i64 %881, %879
  %885 = xor i64 %883, %880
  %886 = zext i64 %884 to i128
  %887 = zext i64 %885 to i128
  %888 = mul nuw i128 %887, %886
  %889 = lshr i128 %888, 64
  %890 = xor i128 %889, %888
  %891 = trunc i128 %890 to i64
  %892 = add i64 %877, %891
  %893 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %894 = extractelement <4 x i64> %845, i64 2
  %895 = extractelement <4 x i64> %845, i64 3
  %896 = load i64, ptr %893, align 1
  %897 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %898 = load i64, ptr %897, align 1
  %899 = xor i64 %896, %894
  %900 = xor i64 %898, %895
  %901 = zext i64 %899 to i128
  %902 = zext i64 %900 to i128
  %903 = mul nuw i128 %902, %901
  %904 = lshr i128 %903, 64
  %905 = xor i128 %904, %903
  %906 = trunc i128 %905 to i64
  %907 = add i64 %892, %906
  br label %908

908:                                              ; preds = %605, %844
  %909 = phi i64 [ %907, %844 ], [ %652, %605 ]
  %910 = lshr i64 %909, 37
  %911 = xor i64 %910, %909
  %912 = mul i64 %911, 1609587929392839161
  %913 = lshr i64 %912, 32
  %914 = xor i64 %913, %912
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #26
  br label %915

915:                                              ; preds = %58, %56, %33, %8, %908, %443, %190
  %916 = phi i64 [ %226, %190 ], [ %465, %443 ], [ %914, %908 ], [ %30, %8 ], [ %55, %33 ], [ %82, %58 ], [ 0, %56 ]
  ret i64 %916
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %515, label %5

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
  br label %513

21:                                               ; preds = %5
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %262, label %23

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
  br i1 %40, label %153, label %44

44:                                               ; preds = %23
  %45 = icmp eq i32 %31, %37
  %46 = load <4 x i64>, ptr %0, align 32
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %48 = load <4 x i64>, ptr %47, align 32
  br i1 %45, label %84, label %49

49:                                               ; preds = %44, %49
  %50 = phi <4 x i64> [ %80, %49 ], [ %48, %44 ]
  %51 = phi <4 x i64> [ %67, %49 ], [ %46, %44 ]
  %52 = phi i64 [ %81, %49 ], [ 0, %44 ]
  %53 = shl i64 %52, 6
  %54 = getelementptr inbounds nuw i8, ptr %26, i64 %53
  %55 = shl i64 %52, 3
  %56 = getelementptr inbounds nuw i8, ptr %43, i64 %55
  %57 = load <4 x i64>, ptr %54, align 1
  %58 = load <4 x i64>, ptr %56, align 1
  %59 = xor <4 x i64> %58, %57
  %60 = bitcast <4 x i64> %59 to <8 x i32>
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %62 = bitcast <8 x i32> %61 to <4 x i64>
  %63 = and <4 x i64> %59, splat (i64 4294967295)
  %64 = and <4 x i64> %62, splat (i64 4294967295)
  %65 = mul nuw <4 x i64> %64, %63
  %66 = add <4 x i64> %57, %51
  %67 = add <4 x i64> %66, %65
  %68 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %69 = load <4 x i64>, ptr %68, align 1
  %70 = getelementptr inbounds nuw i8, ptr %56, i64 32
  %71 = load <4 x i64>, ptr %70, align 1
  %72 = xor <4 x i64> %71, %69
  %73 = bitcast <4 x i64> %72 to <8 x i32>
  %74 = shufflevector <8 x i32> %73, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  %76 = and <4 x i64> %72, splat (i64 4294967295)
  %77 = and <4 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <4 x i64> %77, %76
  %79 = add <4 x i64> %69, %50
  %80 = add <4 x i64> %79, %78
  %81 = add nuw i64 %52, 1
  %82 = icmp eq i64 %81, %39
  br i1 %82, label %83, label %49

83:                                               ; preds = %49
  store <4 x i64> %67, ptr %0, align 32
  store <4 x i64> %80, ptr %47, align 32
  br label %84

84:                                               ; preds = %44, %83
  %85 = phi <4 x i64> [ %80, %83 ], [ %48, %44 ]
  %86 = phi <4 x i64> [ %67, %83 ], [ %46, %44 ]
  %87 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  %88 = lshr <4 x i64> %86, splat (i64 47)
  %89 = load <4 x i64>, ptr %87, align 1
  %90 = xor <4 x i64> %88, %89
  %91 = xor <4 x i64> %90, %86
  %92 = bitcast <4 x i64> %91 to <8 x i32>
  %93 = shufflevector <8 x i32> %92, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %94 = bitcast <8 x i32> %93 to <4 x i64>
  %95 = and <4 x i64> %91, splat (i64 4294967295)
  %96 = mul nuw <4 x i64> %95, splat (i64 2654435761)
  %97 = mul <4 x i64> %94, splat (i64 -7046029290881679360)
  %98 = add <4 x i64> %97, %96
  store <4 x i64> %98, ptr %0, align 32
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %100 = lshr <4 x i64> %85, splat (i64 47)
  %101 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %102 = load <4 x i64>, ptr %101, align 1
  %103 = xor <4 x i64> %100, %102
  %104 = xor <4 x i64> %103, %85
  %105 = bitcast <4 x i64> %104 to <8 x i32>
  %106 = shufflevector <8 x i32> %105, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %107 = bitcast <8 x i32> %106 to <4 x i64>
  %108 = and <4 x i64> %104, splat (i64 4294967295)
  %109 = mul nuw <4 x i64> %108, splat (i64 2654435761)
  %110 = mul <4 x i64> %107, splat (i64 -7046029290881679360)
  %111 = add <4 x i64> %110, %109
  store <4 x i64> %111, ptr %99, align 32
  %112 = shl nuw nsw i64 %39, 6
  %113 = getelementptr inbounds nuw i8, ptr %26, i64 %112
  %114 = sub nuw nsw i64 4, %39
  %115 = icmp eq i32 %38, 4
  br i1 %115, label %151, label %116

116:                                              ; preds = %84, %116
  %117 = phi <4 x i64> [ %147, %116 ], [ %111, %84 ]
  %118 = phi <4 x i64> [ %134, %116 ], [ %98, %84 ]
  %119 = phi i64 [ %148, %116 ], [ 0, %84 ]
  %120 = shl i64 %119, 6
  %121 = getelementptr inbounds nuw i8, ptr %113, i64 %120
  %122 = shl i64 %119, 3
  %123 = getelementptr inbounds nuw i8, ptr %33, i64 %122
  %124 = load <4 x i64>, ptr %121, align 1
  %125 = load <4 x i64>, ptr %123, align 1
  %126 = xor <4 x i64> %125, %124
  %127 = bitcast <4 x i64> %126 to <8 x i32>
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %129 = bitcast <8 x i32> %128 to <4 x i64>
  %130 = and <4 x i64> %126, splat (i64 4294967295)
  %131 = and <4 x i64> %129, splat (i64 4294967295)
  %132 = mul nuw <4 x i64> %131, %130
  %133 = add <4 x i64> %124, %118
  %134 = add <4 x i64> %133, %132
  %135 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %136 = load <4 x i64>, ptr %135, align 1
  %137 = getelementptr inbounds nuw i8, ptr %123, i64 32
  %138 = load <4 x i64>, ptr %137, align 1
  %139 = xor <4 x i64> %138, %136
  %140 = bitcast <4 x i64> %139 to <8 x i32>
  %141 = shufflevector <8 x i32> %140, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %142 = bitcast <8 x i32> %141 to <4 x i64>
  %143 = and <4 x i64> %139, splat (i64 4294967295)
  %144 = and <4 x i64> %142, splat (i64 4294967295)
  %145 = mul nuw <4 x i64> %144, %143
  %146 = add <4 x i64> %136, %117
  %147 = add <4 x i64> %146, %145
  %148 = add nuw i64 %119, 1
  %149 = icmp eq i64 %148, %114
  br i1 %149, label %150, label %116

150:                                              ; preds = %116
  store <4 x i64> %134, ptr %0, align 32
  store <4 x i64> %147, ptr %99, align 32
  br label %151

151:                                              ; preds = %150, %84
  %152 = trunc nuw nsw i64 %114 to i32
  br label %260

153:                                              ; preds = %23
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %155 = load <4 x i64>, ptr %0, align 32
  %156 = load <4 x i64>, ptr %154, align 32
  %157 = load <4 x i64>, ptr %26, align 1
  %158 = load <4 x i64>, ptr %43, align 1
  %159 = xor <4 x i64> %158, %157
  %160 = bitcast <4 x i64> %159 to <8 x i32>
  %161 = shufflevector <8 x i32> %160, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %162 = bitcast <8 x i32> %161 to <4 x i64>
  %163 = and <4 x i64> %159, splat (i64 4294967295)
  %164 = and <4 x i64> %162, splat (i64 4294967295)
  %165 = mul nuw <4 x i64> %164, %163
  %166 = add <4 x i64> %157, %155
  %167 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %168 = load <4 x i64>, ptr %167, align 1
  %169 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %170 = load <4 x i64>, ptr %169, align 1
  %171 = xor <4 x i64> %170, %168
  %172 = bitcast <4 x i64> %171 to <8 x i32>
  %173 = shufflevector <8 x i32> %172, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %174 = bitcast <8 x i32> %173 to <4 x i64>
  %175 = and <4 x i64> %171, splat (i64 4294967295)
  %176 = and <4 x i64> %174, splat (i64 4294967295)
  %177 = mul nuw <4 x i64> %176, %175
  %178 = add <4 x i64> %168, %156
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %180 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %181 = load <4 x i64>, ptr %179, align 1
  %182 = load <4 x i64>, ptr %180, align 1
  %183 = xor <4 x i64> %182, %181
  %184 = bitcast <4 x i64> %183 to <8 x i32>
  %185 = shufflevector <8 x i32> %184, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %186 = bitcast <8 x i32> %185 to <4 x i64>
  %187 = and <4 x i64> %183, splat (i64 4294967295)
  %188 = and <4 x i64> %186, splat (i64 4294967295)
  %189 = mul nuw <4 x i64> %188, %187
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %191 = load <4 x i64>, ptr %190, align 1
  %192 = getelementptr inbounds nuw i8, ptr %43, i64 40
  %193 = load <4 x i64>, ptr %192, align 1
  %194 = xor <4 x i64> %193, %191
  %195 = bitcast <4 x i64> %194 to <8 x i32>
  %196 = shufflevector <8 x i32> %195, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %197 = bitcast <8 x i32> %196 to <4 x i64>
  %198 = and <4 x i64> %194, splat (i64 4294967295)
  %199 = and <4 x i64> %197, splat (i64 4294967295)
  %200 = mul nuw <4 x i64> %199, %198
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %202 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %203 = load <4 x i64>, ptr %201, align 1
  %204 = load <4 x i64>, ptr %202, align 1
  %205 = xor <4 x i64> %204, %203
  %206 = bitcast <4 x i64> %205 to <8 x i32>
  %207 = shufflevector <8 x i32> %206, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %208 = bitcast <8 x i32> %207 to <4 x i64>
  %209 = and <4 x i64> %205, splat (i64 4294967295)
  %210 = and <4 x i64> %208, splat (i64 4294967295)
  %211 = mul nuw <4 x i64> %210, %209
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %213 = load <4 x i64>, ptr %212, align 1
  %214 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %215 = load <4 x i64>, ptr %214, align 1
  %216 = xor <4 x i64> %215, %213
  %217 = bitcast <4 x i64> %216 to <8 x i32>
  %218 = shufflevector <8 x i32> %217, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %219 = bitcast <8 x i32> %218 to <4 x i64>
  %220 = and <4 x i64> %216, splat (i64 4294967295)
  %221 = and <4 x i64> %219, splat (i64 4294967295)
  %222 = mul nuw <4 x i64> %221, %220
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %224 = getelementptr inbounds nuw i8, ptr %43, i64 24
  %225 = load <4 x i64>, ptr %223, align 1
  %226 = load <4 x i64>, ptr %224, align 1
  %227 = xor <4 x i64> %226, %225
  %228 = bitcast <4 x i64> %227 to <8 x i32>
  %229 = shufflevector <8 x i32> %228, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %230 = bitcast <8 x i32> %229 to <4 x i64>
  %231 = and <4 x i64> %227, splat (i64 4294967295)
  %232 = and <4 x i64> %230, splat (i64 4294967295)
  %233 = mul nuw <4 x i64> %232, %231
  %234 = add <4 x i64> %166, %181
  %235 = add <4 x i64> %234, %165
  %236 = add <4 x i64> %235, %203
  %237 = add <4 x i64> %236, %189
  %238 = add <4 x i64> %237, %225
  %239 = add <4 x i64> %238, %211
  %240 = add <4 x i64> %239, %233
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %242 = load <4 x i64>, ptr %241, align 1
  %243 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %244 = load <4 x i64>, ptr %243, align 1
  %245 = xor <4 x i64> %244, %242
  %246 = bitcast <4 x i64> %245 to <8 x i32>
  %247 = shufflevector <8 x i32> %246, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %248 = bitcast <8 x i32> %247 to <4 x i64>
  %249 = and <4 x i64> %245, splat (i64 4294967295)
  %250 = and <4 x i64> %248, splat (i64 4294967295)
  %251 = mul nuw <4 x i64> %250, %249
  %252 = add <4 x i64> %178, %191
  %253 = add <4 x i64> %252, %177
  %254 = add <4 x i64> %253, %213
  %255 = add <4 x i64> %254, %200
  %256 = add <4 x i64> %255, %242
  %257 = add <4 x i64> %256, %222
  %258 = add <4 x i64> %257, %251
  store <4 x i64> %240, ptr %0, align 32
  store <4 x i64> %258, ptr %154, align 32
  %259 = add i32 %37, 4
  br label %260

260:                                              ; preds = %153, %151
  %261 = phi i32 [ %259, %153 ], [ %152, %151 ]
  store i32 %261, ptr %29, align 4
  store i32 0, ptr %10, align 64
  br label %262

262:                                              ; preds = %260, %21
  %263 = phi ptr [ %28, %260 ], [ %1, %21 ]
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 256
  %265 = icmp ugt ptr %264, %6
  br i1 %265, label %504, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds i8, ptr %6, i64 -256
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %272 = load ptr, ptr %271, align 16
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %274 = load i32, ptr %273, align 4
  %275 = zext i32 %274 to i64
  %276 = load i32, ptr %268, align 4
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %278 = getelementptr inbounds nuw i8, ptr %272, i64 %275
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 32
  br label %280

280:                                              ; preds = %500, %266
  %281 = phi i32 [ %276, %266 ], [ %501, %500 ]
  %282 = phi ptr [ %263, %266 ], [ %502, %500 ]
  %283 = sub i32 %270, %281
  %284 = zext i32 %283 to i64
  %285 = icmp ugt i32 %283, 4
  %286 = shl i32 %281, 3
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds nuw i8, ptr %272, i64 %287
  br i1 %285, label %394, label %289

289:                                              ; preds = %280
  %290 = icmp eq i32 %270, %281
  %291 = load <4 x i64>, ptr %0, align 32
  %292 = load <4 x i64>, ptr %277, align 32
  br i1 %290, label %328, label %293

293:                                              ; preds = %289, %293
  %294 = phi <4 x i64> [ %324, %293 ], [ %292, %289 ]
  %295 = phi <4 x i64> [ %311, %293 ], [ %291, %289 ]
  %296 = phi i64 [ %325, %293 ], [ 0, %289 ]
  %297 = shl i64 %296, 6
  %298 = getelementptr inbounds nuw i8, ptr %282, i64 %297
  %299 = shl i64 %296, 3
  %300 = getelementptr inbounds nuw i8, ptr %288, i64 %299
  %301 = load <4 x i64>, ptr %298, align 1
  %302 = load <4 x i64>, ptr %300, align 1
  %303 = xor <4 x i64> %302, %301
  %304 = bitcast <4 x i64> %303 to <8 x i32>
  %305 = shufflevector <8 x i32> %304, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %306 = bitcast <8 x i32> %305 to <4 x i64>
  %307 = and <4 x i64> %303, splat (i64 4294967295)
  %308 = and <4 x i64> %306, splat (i64 4294967295)
  %309 = mul nuw <4 x i64> %308, %307
  %310 = add <4 x i64> %301, %295
  %311 = add <4 x i64> %310, %309
  %312 = getelementptr inbounds nuw i8, ptr %298, i64 32
  %313 = load <4 x i64>, ptr %312, align 1
  %314 = getelementptr inbounds nuw i8, ptr %300, i64 32
  %315 = load <4 x i64>, ptr %314, align 1
  %316 = xor <4 x i64> %315, %313
  %317 = bitcast <4 x i64> %316 to <8 x i32>
  %318 = shufflevector <8 x i32> %317, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %319 = bitcast <8 x i32> %318 to <4 x i64>
  %320 = and <4 x i64> %316, splat (i64 4294967295)
  %321 = and <4 x i64> %319, splat (i64 4294967295)
  %322 = mul nuw <4 x i64> %321, %320
  %323 = add <4 x i64> %313, %294
  %324 = add <4 x i64> %323, %322
  %325 = add nuw i64 %296, 1
  %326 = icmp eq i64 %325, %284
  br i1 %326, label %327, label %293

327:                                              ; preds = %293
  store <4 x i64> %311, ptr %0, align 32
  store <4 x i64> %324, ptr %277, align 32
  br label %328

328:                                              ; preds = %327, %289
  %329 = phi <4 x i64> [ %324, %327 ], [ %292, %289 ]
  %330 = phi <4 x i64> [ %311, %327 ], [ %291, %289 ]
  %331 = lshr <4 x i64> %330, splat (i64 47)
  %332 = load <4 x i64>, ptr %278, align 1
  %333 = xor <4 x i64> %331, %332
  %334 = xor <4 x i64> %333, %330
  %335 = bitcast <4 x i64> %334 to <8 x i32>
  %336 = shufflevector <8 x i32> %335, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %337 = bitcast <8 x i32> %336 to <4 x i64>
  %338 = and <4 x i64> %334, splat (i64 4294967295)
  %339 = mul nuw <4 x i64> %338, splat (i64 2654435761)
  %340 = mul <4 x i64> %337, splat (i64 -7046029290881679360)
  %341 = add <4 x i64> %340, %339
  store <4 x i64> %341, ptr %0, align 32
  %342 = lshr <4 x i64> %329, splat (i64 47)
  %343 = load <4 x i64>, ptr %279, align 1
  %344 = xor <4 x i64> %342, %343
  %345 = xor <4 x i64> %344, %329
  %346 = bitcast <4 x i64> %345 to <8 x i32>
  %347 = shufflevector <8 x i32> %346, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %348 = bitcast <8 x i32> %347 to <4 x i64>
  %349 = and <4 x i64> %345, splat (i64 4294967295)
  %350 = mul nuw <4 x i64> %349, splat (i64 2654435761)
  %351 = mul <4 x i64> %348, splat (i64 -7046029290881679360)
  %352 = add <4 x i64> %351, %350
  store <4 x i64> %352, ptr %277, align 32
  %353 = shl nuw nsw i64 %284, 6
  %354 = getelementptr inbounds nuw i8, ptr %282, i64 %353
  %355 = sub nuw nsw i64 4, %284
  %356 = icmp eq i32 %283, 4
  br i1 %356, label %392, label %357

357:                                              ; preds = %328, %357
  %358 = phi <4 x i64> [ %388, %357 ], [ %352, %328 ]
  %359 = phi <4 x i64> [ %375, %357 ], [ %341, %328 ]
  %360 = phi i64 [ %389, %357 ], [ 0, %328 ]
  %361 = shl i64 %360, 6
  %362 = getelementptr inbounds nuw i8, ptr %354, i64 %361
  %363 = shl i64 %360, 3
  %364 = getelementptr inbounds nuw i8, ptr %272, i64 %363
  %365 = load <4 x i64>, ptr %362, align 1
  %366 = load <4 x i64>, ptr %364, align 1
  %367 = xor <4 x i64> %366, %365
  %368 = bitcast <4 x i64> %367 to <8 x i32>
  %369 = shufflevector <8 x i32> %368, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %370 = bitcast <8 x i32> %369 to <4 x i64>
  %371 = and <4 x i64> %367, splat (i64 4294967295)
  %372 = and <4 x i64> %370, splat (i64 4294967295)
  %373 = mul nuw <4 x i64> %372, %371
  %374 = add <4 x i64> %365, %359
  %375 = add <4 x i64> %374, %373
  %376 = getelementptr inbounds nuw i8, ptr %362, i64 32
  %377 = load <4 x i64>, ptr %376, align 1
  %378 = getelementptr inbounds nuw i8, ptr %364, i64 32
  %379 = load <4 x i64>, ptr %378, align 1
  %380 = xor <4 x i64> %379, %377
  %381 = bitcast <4 x i64> %380 to <8 x i32>
  %382 = shufflevector <8 x i32> %381, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %383 = bitcast <8 x i32> %382 to <4 x i64>
  %384 = and <4 x i64> %380, splat (i64 4294967295)
  %385 = and <4 x i64> %383, splat (i64 4294967295)
  %386 = mul nuw <4 x i64> %385, %384
  %387 = add <4 x i64> %377, %358
  %388 = add <4 x i64> %387, %386
  %389 = add nuw i64 %360, 1
  %390 = icmp eq i64 %389, %355
  br i1 %390, label %391, label %357

391:                                              ; preds = %357
  store <4 x i64> %375, ptr %0, align 32
  store <4 x i64> %388, ptr %277, align 32
  br label %392

392:                                              ; preds = %391, %328
  %393 = trunc nuw nsw i64 %355 to i32
  br label %500

394:                                              ; preds = %280
  %395 = load <4 x i64>, ptr %0, align 32
  %396 = load <4 x i64>, ptr %277, align 32
  %397 = load <4 x i64>, ptr %282, align 1
  %398 = load <4 x i64>, ptr %288, align 1
  %399 = xor <4 x i64> %398, %397
  %400 = bitcast <4 x i64> %399 to <8 x i32>
  %401 = shufflevector <8 x i32> %400, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %402 = bitcast <8 x i32> %401 to <4 x i64>
  %403 = and <4 x i64> %399, splat (i64 4294967295)
  %404 = and <4 x i64> %402, splat (i64 4294967295)
  %405 = mul nuw <4 x i64> %404, %403
  %406 = add <4 x i64> %397, %395
  %407 = getelementptr inbounds nuw i8, ptr %282, i64 32
  %408 = load <4 x i64>, ptr %407, align 1
  %409 = getelementptr inbounds nuw i8, ptr %288, i64 32
  %410 = load <4 x i64>, ptr %409, align 1
  %411 = xor <4 x i64> %410, %408
  %412 = bitcast <4 x i64> %411 to <8 x i32>
  %413 = shufflevector <8 x i32> %412, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %414 = bitcast <8 x i32> %413 to <4 x i64>
  %415 = and <4 x i64> %411, splat (i64 4294967295)
  %416 = and <4 x i64> %414, splat (i64 4294967295)
  %417 = mul nuw <4 x i64> %416, %415
  %418 = add <4 x i64> %408, %396
  %419 = getelementptr inbounds nuw i8, ptr %282, i64 64
  %420 = getelementptr inbounds nuw i8, ptr %288, i64 8
  %421 = load <4 x i64>, ptr %419, align 1
  %422 = load <4 x i64>, ptr %420, align 1
  %423 = xor <4 x i64> %422, %421
  %424 = bitcast <4 x i64> %423 to <8 x i32>
  %425 = shufflevector <8 x i32> %424, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %426 = bitcast <8 x i32> %425 to <4 x i64>
  %427 = and <4 x i64> %423, splat (i64 4294967295)
  %428 = and <4 x i64> %426, splat (i64 4294967295)
  %429 = mul nuw <4 x i64> %428, %427
  %430 = getelementptr inbounds nuw i8, ptr %282, i64 96
  %431 = load <4 x i64>, ptr %430, align 1
  %432 = getelementptr inbounds nuw i8, ptr %288, i64 40
  %433 = load <4 x i64>, ptr %432, align 1
  %434 = xor <4 x i64> %433, %431
  %435 = bitcast <4 x i64> %434 to <8 x i32>
  %436 = shufflevector <8 x i32> %435, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %437 = bitcast <8 x i32> %436 to <4 x i64>
  %438 = and <4 x i64> %434, splat (i64 4294967295)
  %439 = and <4 x i64> %437, splat (i64 4294967295)
  %440 = mul nuw <4 x i64> %439, %438
  %441 = getelementptr inbounds nuw i8, ptr %282, i64 128
  %442 = getelementptr inbounds nuw i8, ptr %288, i64 16
  %443 = load <4 x i64>, ptr %441, align 1
  %444 = load <4 x i64>, ptr %442, align 1
  %445 = xor <4 x i64> %444, %443
  %446 = bitcast <4 x i64> %445 to <8 x i32>
  %447 = shufflevector <8 x i32> %446, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %448 = bitcast <8 x i32> %447 to <4 x i64>
  %449 = and <4 x i64> %445, splat (i64 4294967295)
  %450 = and <4 x i64> %448, splat (i64 4294967295)
  %451 = mul nuw <4 x i64> %450, %449
  %452 = getelementptr inbounds nuw i8, ptr %282, i64 160
  %453 = load <4 x i64>, ptr %452, align 1
  %454 = getelementptr inbounds nuw i8, ptr %288, i64 48
  %455 = load <4 x i64>, ptr %454, align 1
  %456 = xor <4 x i64> %455, %453
  %457 = bitcast <4 x i64> %456 to <8 x i32>
  %458 = shufflevector <8 x i32> %457, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %459 = bitcast <8 x i32> %458 to <4 x i64>
  %460 = and <4 x i64> %456, splat (i64 4294967295)
  %461 = and <4 x i64> %459, splat (i64 4294967295)
  %462 = mul nuw <4 x i64> %461, %460
  %463 = getelementptr inbounds nuw i8, ptr %282, i64 192
  %464 = getelementptr inbounds nuw i8, ptr %288, i64 24
  %465 = load <4 x i64>, ptr %463, align 1
  %466 = load <4 x i64>, ptr %464, align 1
  %467 = xor <4 x i64> %466, %465
  %468 = bitcast <4 x i64> %467 to <8 x i32>
  %469 = shufflevector <8 x i32> %468, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %470 = bitcast <8 x i32> %469 to <4 x i64>
  %471 = and <4 x i64> %467, splat (i64 4294967295)
  %472 = and <4 x i64> %470, splat (i64 4294967295)
  %473 = mul nuw <4 x i64> %472, %471
  %474 = add <4 x i64> %406, %421
  %475 = add <4 x i64> %474, %405
  %476 = add <4 x i64> %475, %443
  %477 = add <4 x i64> %476, %429
  %478 = add <4 x i64> %477, %465
  %479 = add <4 x i64> %478, %451
  %480 = add <4 x i64> %479, %473
  %481 = getelementptr inbounds nuw i8, ptr %282, i64 224
  %482 = load <4 x i64>, ptr %481, align 1
  %483 = getelementptr inbounds nuw i8, ptr %288, i64 56
  %484 = load <4 x i64>, ptr %483, align 1
  %485 = xor <4 x i64> %484, %482
  %486 = bitcast <4 x i64> %485 to <8 x i32>
  %487 = shufflevector <8 x i32> %486, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %488 = bitcast <8 x i32> %487 to <4 x i64>
  %489 = and <4 x i64> %485, splat (i64 4294967295)
  %490 = and <4 x i64> %488, splat (i64 4294967295)
  %491 = mul nuw <4 x i64> %490, %489
  %492 = add <4 x i64> %418, %431
  %493 = add <4 x i64> %492, %417
  %494 = add <4 x i64> %493, %453
  %495 = add <4 x i64> %494, %440
  %496 = add <4 x i64> %495, %482
  %497 = add <4 x i64> %496, %462
  %498 = add <4 x i64> %497, %491
  store <4 x i64> %480, ptr %0, align 32
  store <4 x i64> %498, ptr %277, align 32
  %499 = add i32 %281, 4
  br label %500

500:                                              ; preds = %394, %392
  %501 = phi i32 [ %499, %394 ], [ %393, %392 ]
  store i32 %501, ptr %268, align 4
  %502 = getelementptr inbounds nuw i8, ptr %282, i64 256
  %503 = icmp ugt ptr %502, %267
  br i1 %503, label %504, label %280

504:                                              ; preds = %500, %262
  %505 = phi ptr [ %263, %262 ], [ %502, %500 ]
  %506 = icmp ult ptr %505, %6
  br i1 %506, label %507, label %515

507:                                              ; preds = %504
  %508 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %509 = ptrtoint ptr %6 to i64
  %510 = ptrtoint ptr %505 to i64
  %511 = sub i64 %509, %510
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %508, ptr nonnull readonly align 1 %505, i64 %511, i1 false)
  %512 = trunc i64 %511 to i32
  br label %513

513:                                              ; preds = %507, %15
  %514 = phi i32 [ %20, %15 ], [ %512, %507 ]
  store i32 %514, ptr %10, align 64
  br label %515

515:                                              ; preds = %3, %504, %513
  %516 = phi i32 [ 1, %3 ], [ 0, %504 ], [ 0, %513 ]
  ret i32 %516
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @XXH3_64bits_digest(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %4 = load i64, ptr %3, align 8
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %317

6:                                                ; preds = %1
  %7 = load <4 x i64>, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %11 = load i32, ptr %10, align 64
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %13, label %203

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
  br i1 %28, label %133, label %32

32:                                               ; preds = %13
  %33 = icmp eq i32 %19, %17
  br i1 %33, label %68, label %34

34:                                               ; preds = %32, %34
  %35 = phi <4 x i64> [ %65, %34 ], [ %9, %32 ]
  %36 = phi <4 x i64> [ %52, %34 ], [ %7, %32 ]
  %37 = phi i64 [ %66, %34 ], [ 0, %32 ]
  %38 = shl i64 %37, 6
  %39 = getelementptr inbounds nuw i8, ptr %20, i64 %38
  %40 = shl i64 %37, 3
  %41 = getelementptr inbounds nuw i8, ptr %31, i64 %40
  %42 = load <4 x i64>, ptr %39, align 1
  %43 = load <4 x i64>, ptr %41, align 1
  %44 = xor <4 x i64> %43, %42
  %45 = bitcast <4 x i64> %44 to <8 x i32>
  %46 = shufflevector <8 x i32> %45, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %47 = bitcast <8 x i32> %46 to <4 x i64>
  %48 = and <4 x i64> %44, splat (i64 4294967295)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, %48
  %51 = add <4 x i64> %42, %36
  %52 = add <4 x i64> %51, %50
  %53 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %54 = load <4 x i64>, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %56 = load <4 x i64>, ptr %55, align 1
  %57 = xor <4 x i64> %56, %54
  %58 = bitcast <4 x i64> %57 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %57, splat (i64 4294967295)
  %62 = and <4 x i64> %60, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, %61
  %64 = add <4 x i64> %54, %35
  %65 = add <4 x i64> %64, %63
  %66 = add nuw i64 %37, 1
  %67 = icmp eq i64 %66, %27
  br i1 %67, label %68, label %34

68:                                               ; preds = %34, %32
  %69 = phi <4 x i64> [ %9, %32 ], [ %65, %34 ]
  %70 = phi <4 x i64> [ %7, %32 ], [ %52, %34 ]
  %71 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %72 = lshr <4 x i64> %70, splat (i64 47)
  %73 = load <4 x i64>, ptr %71, align 1
  %74 = xor <4 x i64> %73, %72
  %75 = xor <4 x i64> %74, %70
  %76 = bitcast <4 x i64> %75 to <8 x i32>
  %77 = shufflevector <8 x i32> %76, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %78 = bitcast <8 x i32> %77 to <4 x i64>
  %79 = and <4 x i64> %75, splat (i64 4294967295)
  %80 = mul nuw <4 x i64> %79, splat (i64 2654435761)
  %81 = mul <4 x i64> %78, splat (i64 -7046029290881679360)
  %82 = add <4 x i64> %81, %80
  %83 = lshr <4 x i64> %69, splat (i64 47)
  %84 = getelementptr inbounds nuw i8, ptr %71, i64 32
  %85 = load <4 x i64>, ptr %84, align 1
  %86 = xor <4 x i64> %83, %85
  %87 = xor <4 x i64> %86, %69
  %88 = bitcast <4 x i64> %87 to <8 x i32>
  %89 = shufflevector <8 x i32> %88, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %90 = bitcast <8 x i32> %89 to <4 x i64>
  %91 = and <4 x i64> %87, splat (i64 4294967295)
  %92 = mul nuw <4 x i64> %91, splat (i64 2654435761)
  %93 = mul <4 x i64> %90, splat (i64 -7046029290881679360)
  %94 = add <4 x i64> %93, %92
  %95 = shl nuw nsw i64 %27, 6
  %96 = getelementptr inbounds nuw i8, ptr %20, i64 %95
  %97 = sub nuw nsw i64 %15, %27
  %98 = icmp eq i32 %14, %26
  br i1 %98, label %168, label %99

99:                                               ; preds = %68, %99
  %100 = phi <4 x i64> [ %130, %99 ], [ %94, %68 ]
  %101 = phi <4 x i64> [ %117, %99 ], [ %82, %68 ]
  %102 = phi i64 [ %131, %99 ], [ 0, %68 ]
  %103 = shl i64 %102, 6
  %104 = getelementptr inbounds nuw i8, ptr %96, i64 %103
  %105 = shl i64 %102, 3
  %106 = getelementptr inbounds nuw i8, ptr %22, i64 %105
  %107 = load <4 x i64>, ptr %104, align 1
  %108 = load <4 x i64>, ptr %106, align 1
  %109 = xor <4 x i64> %108, %107
  %110 = bitcast <4 x i64> %109 to <8 x i32>
  %111 = shufflevector <8 x i32> %110, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %112 = bitcast <8 x i32> %111 to <4 x i64>
  %113 = and <4 x i64> %109, splat (i64 4294967295)
  %114 = and <4 x i64> %112, splat (i64 4294967295)
  %115 = mul nuw <4 x i64> %114, %113
  %116 = add <4 x i64> %107, %101
  %117 = add <4 x i64> %116, %115
  %118 = getelementptr inbounds nuw i8, ptr %104, i64 32
  %119 = load <4 x i64>, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %106, i64 32
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = xor <4 x i64> %121, %119
  %123 = bitcast <4 x i64> %122 to <8 x i32>
  %124 = shufflevector <8 x i32> %123, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %125 = bitcast <8 x i32> %124 to <4 x i64>
  %126 = and <4 x i64> %122, splat (i64 4294967295)
  %127 = and <4 x i64> %125, splat (i64 4294967295)
  %128 = mul nuw <4 x i64> %127, %126
  %129 = add <4 x i64> %119, %100
  %130 = add <4 x i64> %129, %128
  %131 = add nuw i64 %102, 1
  %132 = icmp eq i64 %131, %97
  br i1 %132, label %168, label %99

133:                                              ; preds = %13
  br label %134

134:                                              ; preds = %134, %133
  %135 = phi <4 x i64> [ %165, %134 ], [ %9, %133 ]
  %136 = phi <4 x i64> [ %152, %134 ], [ %7, %133 ]
  %137 = phi i64 [ %166, %134 ], [ 0, %133 ]
  %138 = shl i64 %137, 6
  %139 = getelementptr inbounds nuw i8, ptr %20, i64 %138
  %140 = shl i64 %137, 3
  %141 = getelementptr inbounds nuw i8, ptr %31, i64 %140
  %142 = load <4 x i64>, ptr %139, align 1
  %143 = load <4 x i64>, ptr %141, align 1
  %144 = xor <4 x i64> %143, %142
  %145 = bitcast <4 x i64> %144 to <8 x i32>
  %146 = shufflevector <8 x i32> %145, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %147 = bitcast <8 x i32> %146 to <4 x i64>
  %148 = and <4 x i64> %144, splat (i64 4294967295)
  %149 = and <4 x i64> %147, splat (i64 4294967295)
  %150 = mul nuw <4 x i64> %149, %148
  %151 = add <4 x i64> %142, %136
  %152 = add <4 x i64> %151, %150
  %153 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %154 = load <4 x i64>, ptr %153, align 1
  %155 = getelementptr inbounds nuw i8, ptr %141, i64 32
  %156 = load <4 x i64>, ptr %155, align 1
  %157 = xor <4 x i64> %156, %154
  %158 = bitcast <4 x i64> %157 to <8 x i32>
  %159 = shufflevector <8 x i32> %158, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %160 = bitcast <8 x i32> %159 to <4 x i64>
  %161 = and <4 x i64> %157, splat (i64 4294967295)
  %162 = and <4 x i64> %160, splat (i64 4294967295)
  %163 = mul nuw <4 x i64> %162, %161
  %164 = add <4 x i64> %154, %135
  %165 = add <4 x i64> %164, %163
  %166 = add nuw nsw i64 %137, 1
  %167 = icmp eq i64 %166, %15
  br i1 %167, label %168, label %134

168:                                              ; preds = %99, %134, %68
  %169 = phi <4 x i64> [ %94, %68 ], [ %165, %134 ], [ %130, %99 ]
  %170 = phi <4 x i64> [ %82, %68 ], [ %152, %134 ], [ %117, %99 ]
  %171 = and i32 %11, 63
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %247, label %173

173:                                              ; preds = %168
  %174 = zext i32 %11 to i64
  %175 = getelementptr inbounds nuw i8, ptr %20, i64 %174
  %176 = getelementptr inbounds i8, ptr %175, i64 -64
  %177 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %178 = getelementptr inbounds i8, ptr %177, i64 -7
  %179 = load <4 x i64>, ptr %176, align 1
  %180 = load <4 x i64>, ptr %178, align 1
  %181 = xor <4 x i64> %180, %179
  %182 = bitcast <4 x i64> %181 to <8 x i32>
  %183 = shufflevector <8 x i32> %182, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %184 = bitcast <8 x i32> %183 to <4 x i64>
  %185 = and <4 x i64> %181, splat (i64 4294967295)
  %186 = and <4 x i64> %184, splat (i64 4294967295)
  %187 = mul nuw <4 x i64> %186, %185
  %188 = add <4 x i64> %179, %170
  %189 = add <4 x i64> %188, %187
  %190 = getelementptr inbounds i8, ptr %175, i64 -32
  %191 = load <4 x i64>, ptr %190, align 1
  %192 = getelementptr inbounds nuw i8, ptr %177, i64 25
  %193 = load <4 x i64>, ptr %192, align 1
  %194 = xor <4 x i64> %193, %191
  %195 = bitcast <4 x i64> %194 to <8 x i32>
  %196 = shufflevector <8 x i32> %195, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %197 = bitcast <8 x i32> %196 to <4 x i64>
  %198 = and <4 x i64> %194, splat (i64 4294967295)
  %199 = and <4 x i64> %197, splat (i64 4294967295)
  %200 = mul nuw <4 x i64> %199, %198
  %201 = add <4 x i64> %191, %169
  %202 = add <4 x i64> %201, %200
  br label %247

203:                                              ; preds = %6
  %204 = icmp eq i32 %11, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %207 = load ptr, ptr %206, align 16
  br label %247

208:                                              ; preds = %203
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #26
  %209 = sub nuw nsw i32 64, %11
  %210 = zext nneg i32 %209 to i64
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %212 = sub nsw i64 0, %210
  %213 = getelementptr inbounds i8, ptr %10, i64 %212
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull readonly align 1 %213, i64 %210, i1 false)
  %214 = getelementptr inbounds nuw i8, ptr %2, i64 %210
  %215 = zext nneg i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %214, ptr nonnull readonly align 64 %211, i64 %215, i1 false)
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %217 = load ptr, ptr %216, align 16
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %219 = load i32, ptr %218, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds nuw i8, ptr %217, i64 %220
  %222 = getelementptr inbounds i8, ptr %221, i64 -7
  %223 = load <4 x i64>, ptr %2, align 16
  %224 = load <4 x i64>, ptr %222, align 1
  %225 = xor <4 x i64> %224, %223
  %226 = bitcast <4 x i64> %225 to <8 x i32>
  %227 = shufflevector <8 x i32> %226, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %228 = bitcast <8 x i32> %227 to <4 x i64>
  %229 = and <4 x i64> %225, splat (i64 4294967295)
  %230 = and <4 x i64> %228, splat (i64 4294967295)
  %231 = mul nuw <4 x i64> %230, %229
  %232 = add <4 x i64> %223, %7
  %233 = add <4 x i64> %232, %231
  %234 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %235 = load <4 x i64>, ptr %234, align 16
  %236 = getelementptr inbounds nuw i8, ptr %221, i64 25
  %237 = load <4 x i64>, ptr %236, align 1
  %238 = xor <4 x i64> %237, %235
  %239 = bitcast <4 x i64> %238 to <8 x i32>
  %240 = shufflevector <8 x i32> %239, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %241 = bitcast <8 x i32> %240 to <4 x i64>
  %242 = and <4 x i64> %238, splat (i64 4294967295)
  %243 = and <4 x i64> %241, splat (i64 4294967295)
  %244 = mul nuw <4 x i64> %243, %242
  %245 = add <4 x i64> %235, %9
  %246 = add <4 x i64> %245, %244
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #26
  br label %247

247:                                              ; preds = %205, %168, %173, %208
  %248 = phi ptr [ %22, %168 ], [ %22, %173 ], [ %207, %205 ], [ %217, %208 ]
  %249 = phi <4 x i64> [ %169, %168 ], [ %202, %173 ], [ %9, %205 ], [ %246, %208 ]
  %250 = phi <4 x i64> [ %170, %168 ], [ %189, %173 ], [ %7, %205 ], [ %233, %208 ]
  %251 = getelementptr inbounds nuw i8, ptr %248, i64 11
  %252 = mul i64 %4, -7046029288634856825
  %253 = extractelement <4 x i64> %250, i64 0
  %254 = extractelement <4 x i64> %250, i64 1
  %255 = load i64, ptr %251, align 1
  %256 = getelementptr i8, ptr %248, i64 19
  %257 = load i64, ptr %256, align 1
  %258 = xor i64 %255, %253
  %259 = xor i64 %257, %254
  %260 = zext i64 %258 to i128
  %261 = zext i64 %259 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %252, %265
  %267 = getelementptr inbounds nuw i8, ptr %248, i64 27
  %268 = extractelement <4 x i64> %250, i64 2
  %269 = extractelement <4 x i64> %250, i64 3
  %270 = load i64, ptr %267, align 1
  %271 = getelementptr i8, ptr %248, i64 35
  %272 = load i64, ptr %271, align 1
  %273 = xor i64 %270, %268
  %274 = xor i64 %272, %269
  %275 = zext i64 %273 to i128
  %276 = zext i64 %274 to i128
  %277 = mul nuw i128 %276, %275
  %278 = lshr i128 %277, 64
  %279 = xor i128 %278, %277
  %280 = trunc i128 %279 to i64
  %281 = add i64 %266, %280
  %282 = getelementptr inbounds nuw i8, ptr %248, i64 43
  %283 = extractelement <4 x i64> %249, i64 0
  %284 = extractelement <4 x i64> %249, i64 1
  %285 = load i64, ptr %282, align 1
  %286 = getelementptr i8, ptr %248, i64 51
  %287 = load i64, ptr %286, align 1
  %288 = xor i64 %285, %283
  %289 = xor i64 %287, %284
  %290 = zext i64 %288 to i128
  %291 = zext i64 %289 to i128
  %292 = mul nuw i128 %291, %290
  %293 = lshr i128 %292, 64
  %294 = xor i128 %293, %292
  %295 = trunc i128 %294 to i64
  %296 = add i64 %281, %295
  %297 = getelementptr inbounds nuw i8, ptr %248, i64 59
  %298 = extractelement <4 x i64> %249, i64 2
  %299 = extractelement <4 x i64> %249, i64 3
  %300 = load i64, ptr %297, align 1
  %301 = getelementptr i8, ptr %248, i64 67
  %302 = load i64, ptr %301, align 1
  %303 = xor i64 %300, %298
  %304 = xor i64 %302, %299
  %305 = zext i64 %303 to i128
  %306 = zext i64 %304 to i128
  %307 = mul nuw i128 %306, %305
  %308 = lshr i128 %307, 64
  %309 = xor i128 %308, %307
  %310 = trunc i128 %309 to i64
  %311 = add i64 %296, %310
  %312 = lshr i64 %311, 37
  %313 = xor i64 %312, %311
  %314 = mul i64 %313, 1609587929392839161
  %315 = lshr i64 %314, 32
  %316 = xor i64 %315, %314
  br label %1271

317:                                              ; preds = %1
  %318 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %319 = load i64, ptr %318, align 32
  %320 = icmp eq i64 %319, 0
  %321 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %320, label %782, label %322

322:                                              ; preds = %317
  %323 = icmp samesign ult i64 %4, 17
  br i1 %323, label %324, label %401

324:                                              ; preds = %322
  %325 = icmp samesign ugt i64 %4, 8
  br i1 %325, label %326, label %349

326:                                              ; preds = %324
  %327 = load i64, ptr %321, align 1
  %328 = add i64 %319, -4734510112055689544
  %329 = xor i64 %327, %328
  %330 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %331 = getelementptr inbounds i8, ptr %330, i64 -8
  %332 = load i64, ptr %331, align 1
  %333 = sub i64 2066345149520216444, %319
  %334 = xor i64 %332, %333
  %335 = zext i64 %329 to i128
  %336 = zext i64 %334 to i128
  %337 = mul nuw i128 %336, %335
  %338 = lshr i128 %337, 64
  %339 = xor i128 %338, %337
  %340 = trunc i128 %339 to i64
  %341 = add i64 %329, %4
  %342 = add i64 %341, %334
  %343 = add i64 %342, %340
  %344 = lshr i64 %343, 37
  %345 = xor i64 %344, %343
  %346 = mul i64 %345, 1609587929392839161
  %347 = lshr i64 %346, 32
  %348 = xor i64 %347, %346
  br label %1271

349:                                              ; preds = %324
  %350 = icmp samesign ugt i64 %4, 3
  br i1 %350, label %351, label %374

351:                                              ; preds = %349
  %352 = load i32, ptr %321, align 1
  %353 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %354 = getelementptr inbounds i8, ptr %353, i64 -4
  %355 = load i32, ptr %354, align 1
  %356 = zext i32 %352 to i64
  %357 = zext i32 %355 to i64
  %358 = shl nuw i64 %357, 32
  %359 = or disjoint i64 %358, %356
  %360 = add i64 %319, -4734510112055689544
  %361 = xor i64 %359, %360
  %362 = lshr i64 %361, 51
  %363 = xor i64 %362, %361
  %364 = mul i64 %363, 2654435761
  %365 = add i64 %364, %4
  %366 = lshr i64 %365, 47
  %367 = xor i64 %366, %365
  %368 = mul i64 %367, -4417276706812531889
  %369 = lshr i64 %368, 37
  %370 = xor i64 %369, %368
  %371 = mul i64 %370, 1609587929392839161
  %372 = lshr i64 %371, 32
  %373 = xor i64 %372, %371
  br label %1271

374:                                              ; preds = %349
  %375 = icmp eq i64 %4, 0
  br i1 %375, label %1271, label %376

376:                                              ; preds = %374
  %377 = load i8, ptr %321, align 1
  %378 = lshr i64 %4, 1
  %379 = getelementptr inbounds nuw i8, ptr %321, i64 %378
  %380 = load i8, ptr %379, align 1
  %381 = getelementptr i8, ptr %321, i64 %4
  %382 = getelementptr i8, ptr %381, i64 -1
  %383 = load i8, ptr %382, align 1
  %384 = zext i8 %377 to i64
  %385 = zext i8 %380 to i64
  %386 = shl nuw nsw i64 %385, 8
  %387 = zext i8 %383 to i64
  %388 = shl nuw nsw i64 %387, 16
  %389 = shl nuw nsw i64 %4, 24
  %390 = or disjoint i64 %389, %384
  %391 = or disjoint i64 %390, %386
  %392 = or disjoint i64 %391, %388
  %393 = add i64 %319, 963444408
  %394 = xor i64 %392, %393
  %395 = mul i64 %394, -7046029288634856825
  %396 = lshr i64 %395, 37
  %397 = xor i64 %396, %395
  %398 = mul i64 %397, 1609587929392839161
  %399 = lshr i64 %398, 32
  %400 = xor i64 %399, %398
  br label %1271

401:                                              ; preds = %322
  %402 = icmp samesign ult i64 %4, 129
  br i1 %402, label %403, label %545

403:                                              ; preds = %401
  %404 = mul i64 %4, -7046029288634856825
  %405 = icmp samesign ugt i64 %4, 32
  br i1 %405, label %406, label %508

406:                                              ; preds = %403
  %407 = icmp samesign ugt i64 %4, 64
  br i1 %407, label %408, label %475

408:                                              ; preds = %406
  %409 = icmp samesign ugt i64 %4, 96
  br i1 %409, label %410, label %442

410:                                              ; preds = %408
  %411 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %412 = load i64, ptr %411, align 1
  %413 = getelementptr i8, ptr %0, i64 312
  %414 = load i64, ptr %413, align 1
  %415 = add i64 %319, 4554437623014685352
  %416 = xor i64 %412, %415
  %417 = sub i64 2111919702937427193, %319
  %418 = xor i64 %414, %417
  %419 = zext i64 %416 to i128
  %420 = zext i64 %418 to i128
  %421 = mul nuw i128 %420, %419
  %422 = lshr i128 %421, 64
  %423 = xor i128 %422, %421
  %424 = trunc i128 %423 to i64
  %425 = add i64 %404, %424
  %426 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %427 = getelementptr inbounds i8, ptr %426, i64 -64
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr i8, ptr %426, i64 -56
  %430 = load i64, ptr %429, align 1
  %431 = add i64 %319, 3556072174620004746
  %432 = xor i64 %428, %431
  %433 = sub i64 7238261902898274248, %319
  %434 = xor i64 %430, %433
  %435 = zext i64 %432 to i128
  %436 = zext i64 %434 to i128
  %437 = mul nuw i128 %436, %435
  %438 = lshr i128 %437, 64
  %439 = xor i128 %438, %437
  %440 = trunc i128 %439 to i64
  %441 = add i64 %425, %440
  br label %442

442:                                              ; preds = %410, %408
  %443 = phi i64 [ %441, %410 ], [ %404, %408 ]
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %445 = load i64, ptr %444, align 1
  %446 = getelementptr i8, ptr %0, i64 296
  %447 = load i64, ptr %446, align 1
  %448 = add i64 %319, -3818837453329782724
  %449 = xor i64 %445, %448
  %450 = sub i64 -6688317018830679928, %319
  %451 = xor i64 %447, %450
  %452 = zext i64 %449 to i128
  %453 = zext i64 %451 to i128
  %454 = mul nuw i128 %453, %452
  %455 = lshr i128 %454, 64
  %456 = xor i128 %455, %454
  %457 = trunc i128 %456 to i64
  %458 = add i64 %443, %457
  %459 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %460 = getelementptr inbounds i8, ptr %459, i64 -48
  %461 = load i64, ptr %460, align 1
  %462 = getelementptr i8, ptr %459, i64 -40
  %463 = load i64, ptr %462, align 1
  %464 = add i64 %319, 5690594596133299313
  %465 = xor i64 %461, %464
  %466 = sub i64 -2833645246901970632, %319
  %467 = xor i64 %463, %466
  %468 = zext i64 %465 to i128
  %469 = zext i64 %467 to i128
  %470 = mul nuw i128 %469, %468
  %471 = lshr i128 %470, 64
  %472 = xor i128 %471, %470
  %473 = trunc i128 %472 to i64
  %474 = add i64 %458, %473
  br label %475

475:                                              ; preds = %442, %406
  %476 = phi i64 [ %474, %442 ], [ %404, %406 ]
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %478 = load i64, ptr %477, align 1
  %479 = getelementptr i8, ptr %0, i64 280
  %480 = load i64, ptr %479, align 1
  %481 = add i64 %319, 8711581037947681227
  %482 = xor i64 %478, %481
  %483 = sub i64 2410270004345854594, %319
  %484 = xor i64 %480, %483
  %485 = zext i64 %482 to i128
  %486 = zext i64 %484 to i128
  %487 = mul nuw i128 %486, %485
  %488 = lshr i128 %487, 64
  %489 = xor i128 %488, %487
  %490 = trunc i128 %489 to i64
  %491 = add i64 %476, %490
  %492 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %493 = getelementptr inbounds i8, ptr %492, i64 -32
  %494 = load i64, ptr %493, align 1
  %495 = getelementptr i8, ptr %492, i64 -24
  %496 = load i64, ptr %495, align 1
  %497 = add i64 %319, -8204357891075471176
  %498 = xor i64 %494, %497
  %499 = sub i64 5487137525590930912, %319
  %500 = xor i64 %496, %499
  %501 = zext i64 %498 to i128
  %502 = zext i64 %500 to i128
  %503 = mul nuw i128 %502, %501
  %504 = lshr i128 %503, 64
  %505 = xor i128 %504, %503
  %506 = trunc i128 %505 to i64
  %507 = add i64 %491, %506
  br label %508

508:                                              ; preds = %475, %403
  %509 = phi i64 [ %507, %475 ], [ %404, %403 ]
  %510 = load i64, ptr %321, align 1
  %511 = getelementptr i8, ptr %0, i64 264
  %512 = load i64, ptr %511, align 1
  %513 = add i64 %319, -4734510112055689544
  %514 = xor i64 %510, %513
  %515 = sub i64 2066345149520216444, %319
  %516 = xor i64 %512, %515
  %517 = zext i64 %514 to i128
  %518 = zext i64 %516 to i128
  %519 = mul nuw i128 %518, %517
  %520 = lshr i128 %519, 64
  %521 = xor i128 %520, %519
  %522 = trunc i128 %521 to i64
  %523 = add i64 %509, %522
  %524 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %525 = getelementptr inbounds i8, ptr %524, i64 -16
  %526 = load i64, ptr %525, align 1
  %527 = getelementptr i8, ptr %524, i64 -8
  %528 = load i64, ptr %527, align 1
  %529 = add i64 %319, -2623469361688619810
  %530 = xor i64 %526, %529
  %531 = sub i64 2262974939099578482, %319
  %532 = xor i64 %528, %531
  %533 = zext i64 %530 to i128
  %534 = zext i64 %532 to i128
  %535 = mul nuw i128 %534, %533
  %536 = lshr i128 %535, 64
  %537 = xor i128 %536, %535
  %538 = trunc i128 %537 to i64
  %539 = add i64 %523, %538
  %540 = lshr i64 %539, 37
  %541 = xor i64 %540, %539
  %542 = mul i64 %541, 1609587929392839161
  %543 = lshr i64 %542, 32
  %544 = xor i64 %543, %542
  br label %1271

545:                                              ; preds = %401
  %546 = mul i64 %4, -7046029288634856825
  %547 = trunc nuw nsw i64 %4 to i32
  %548 = load i64, ptr %321, align 1
  %549 = getelementptr i8, ptr %0, i64 264
  %550 = load i64, ptr %549, align 1
  %551 = add i64 %319, -4734510112055689544
  %552 = xor i64 %548, %551
  %553 = sub i64 2066345149520216444, %319
  %554 = xor i64 %550, %553
  %555 = zext i64 %552 to i128
  %556 = zext i64 %554 to i128
  %557 = mul nuw i128 %556, %555
  %558 = lshr i128 %557, 64
  %559 = xor i128 %558, %557
  %560 = trunc i128 %559 to i64
  %561 = add i64 %546, %560
  %562 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %563 = load i64, ptr %562, align 1
  %564 = getelementptr i8, ptr %0, i64 280
  %565 = load i64, ptr %564, align 1
  %566 = add i64 %319, -2623469361688619810
  %567 = xor i64 %563, %566
  %568 = sub i64 2262974939099578482, %319
  %569 = xor i64 %565, %568
  %570 = zext i64 %567 to i128
  %571 = zext i64 %569 to i128
  %572 = mul nuw i128 %571, %570
  %573 = lshr i128 %572, 64
  %574 = xor i128 %573, %572
  %575 = trunc i128 %574 to i64
  %576 = add i64 %561, %575
  %577 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %578 = load i64, ptr %577, align 1
  %579 = getelementptr i8, ptr %0, i64 296
  %580 = load i64, ptr %579, align 1
  %581 = add i64 %319, 8711581037947681227
  %582 = xor i64 %578, %581
  %583 = sub i64 2410270004345854594, %319
  %584 = xor i64 %580, %583
  %585 = zext i64 %582 to i128
  %586 = zext i64 %584 to i128
  %587 = mul nuw i128 %586, %585
  %588 = lshr i128 %587, 64
  %589 = xor i128 %588, %587
  %590 = trunc i128 %589 to i64
  %591 = add i64 %576, %590
  %592 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %593 = load i64, ptr %592, align 1
  %594 = getelementptr i8, ptr %0, i64 312
  %595 = load i64, ptr %594, align 1
  %596 = add i64 %319, -8204357891075471176
  %597 = xor i64 %593, %596
  %598 = sub i64 5487137525590930912, %319
  %599 = xor i64 %595, %598
  %600 = zext i64 %597 to i128
  %601 = zext i64 %599 to i128
  %602 = mul nuw i128 %601, %600
  %603 = lshr i128 %602, 64
  %604 = xor i128 %603, %602
  %605 = trunc i128 %604 to i64
  %606 = add i64 %591, %605
  %607 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %608 = load i64, ptr %607, align 1
  %609 = getelementptr i8, ptr %0, i64 328
  %610 = load i64, ptr %609, align 1
  %611 = add i64 %319, -3818837453329782724
  %612 = xor i64 %608, %611
  %613 = sub i64 -6688317018830679928, %319
  %614 = xor i64 %610, %613
  %615 = zext i64 %612 to i128
  %616 = zext i64 %614 to i128
  %617 = mul nuw i128 %616, %615
  %618 = lshr i128 %617, 64
  %619 = xor i128 %618, %617
  %620 = trunc i128 %619 to i64
  %621 = add i64 %606, %620
  %622 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %623 = load i64, ptr %622, align 1
  %624 = getelementptr i8, ptr %0, i64 344
  %625 = load i64, ptr %624, align 1
  %626 = add i64 %319, 5690594596133299313
  %627 = xor i64 %623, %626
  %628 = sub i64 -2833645246901970632, %319
  %629 = xor i64 %625, %628
  %630 = zext i64 %627 to i128
  %631 = zext i64 %629 to i128
  %632 = mul nuw i128 %631, %630
  %633 = lshr i128 %632, 64
  %634 = xor i128 %633, %632
  %635 = trunc i128 %634 to i64
  %636 = add i64 %621, %635
  %637 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %638 = load i64, ptr %637, align 1
  %639 = getelementptr i8, ptr %0, i64 360
  %640 = load i64, ptr %639, align 1
  %641 = add i64 %319, 4554437623014685352
  %642 = xor i64 %638, %641
  %643 = sub i64 2111919702937427193, %319
  %644 = xor i64 %640, %643
  %645 = zext i64 %642 to i128
  %646 = zext i64 %644 to i128
  %647 = mul nuw i128 %646, %645
  %648 = lshr i128 %647, 64
  %649 = xor i128 %648, %647
  %650 = trunc i128 %649 to i64
  %651 = add i64 %636, %650
  %652 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %653 = load i64, ptr %652, align 1
  %654 = getelementptr i8, ptr %0, i64 376
  %655 = load i64, ptr %654, align 1
  %656 = add i64 %319, 3556072174620004746
  %657 = xor i64 %653, %656
  %658 = sub i64 7238261902898274248, %319
  %659 = xor i64 %655, %658
  %660 = zext i64 %657 to i128
  %661 = zext i64 %659 to i128
  %662 = mul nuw i128 %661, %660
  %663 = lshr i128 %662, 64
  %664 = xor i128 %663, %662
  %665 = trunc i128 %664 to i64
  %666 = add i64 %651, %665
  %667 = lshr i32 %547, 4
  %668 = lshr i64 %666, 37
  %669 = xor i64 %668, %666
  %670 = mul i64 %669, 1609587929392839161
  %671 = lshr i64 %670, 32
  %672 = xor i64 %671, %670
  %673 = icmp eq i32 %667, 8
  br i1 %673, label %759, label %674

674:                                              ; preds = %545
  %675 = zext nneg i32 %667 to i64
  %676 = and i64 %675, 1
  %677 = icmp eq i32 %667, 9
  br i1 %677, label %733, label %678

678:                                              ; preds = %674
  %679 = and i64 %675, 14
  %680 = add nsw i64 %679, -10
  br label %681

681:                                              ; preds = %681, %678
  %682 = phi i64 [ 8, %678 ], [ %728, %681 ]
  %683 = phi i64 [ %672, %678 ], [ %727, %681 ]
  %684 = phi i64 [ 0, %678 ], [ %729, %681 ]
  %685 = shl nsw i64 %682, 4
  %686 = getelementptr inbounds nuw i8, ptr %321, i64 %685
  %687 = getelementptr i8, ptr @kSecret, i64 %685
  %688 = getelementptr i8, ptr %687, i64 -125
  %689 = load i64, ptr %686, align 1
  %690 = getelementptr i8, ptr %686, i64 8
  %691 = load i64, ptr %690, align 1
  %692 = load i64, ptr %688, align 1
  %693 = getelementptr i8, ptr %687, i64 -117
  %694 = load i64, ptr %693, align 1
  %695 = add i64 %692, %319
  %696 = xor i64 %695, %689
  %697 = sub i64 %694, %319
  %698 = xor i64 %697, %691
  %699 = zext i64 %696 to i128
  %700 = zext i64 %698 to i128
  %701 = mul nuw i128 %700, %699
  %702 = lshr i128 %701, 64
  %703 = xor i128 %702, %701
  %704 = trunc i128 %703 to i64
  %705 = add i64 %683, %704
  %706 = shl i64 %682, 4
  %707 = or disjoint i64 %706, 16
  %708 = getelementptr inbounds nuw i8, ptr %321, i64 %707
  %709 = getelementptr i8, ptr @kSecret, i64 %707
  %710 = getelementptr i8, ptr %709, i64 -125
  %711 = load i64, ptr %708, align 1
  %712 = getelementptr i8, ptr %708, i64 8
  %713 = load i64, ptr %712, align 1
  %714 = load i64, ptr %710, align 1
  %715 = getelementptr i8, ptr %709, i64 -117
  %716 = load i64, ptr %715, align 1
  %717 = add i64 %714, %319
  %718 = xor i64 %717, %711
  %719 = sub i64 %716, %319
  %720 = xor i64 %719, %713
  %721 = zext i64 %718 to i128
  %722 = zext i64 %720 to i128
  %723 = mul nuw i128 %722, %721
  %724 = lshr i128 %723, 64
  %725 = xor i128 %724, %723
  %726 = trunc i128 %725 to i64
  %727 = add i64 %705, %726
  %728 = add nuw nsw i64 %682, 2
  %729 = add i64 %684, 2
  %730 = icmp eq i64 %684, %680
  br i1 %730, label %731, label %681

731:                                              ; preds = %681
  %732 = shl nsw i64 %728, 4
  br label %733

733:                                              ; preds = %731, %674
  %734 = phi i64 [ poison, %674 ], [ %727, %731 ]
  %735 = phi i64 [ 128, %674 ], [ %732, %731 ]
  %736 = phi i64 [ %672, %674 ], [ %727, %731 ]
  %737 = icmp eq i64 %676, 0
  br i1 %737, label %759, label %738

738:                                              ; preds = %733
  %739 = getelementptr inbounds nuw i8, ptr %321, i64 %735
  %740 = getelementptr i8, ptr @kSecret, i64 %735
  %741 = getelementptr i8, ptr %740, i64 -125
  %742 = load i64, ptr %739, align 1
  %743 = getelementptr i8, ptr %739, i64 8
  %744 = load i64, ptr %743, align 1
  %745 = load i64, ptr %741, align 1
  %746 = getelementptr i8, ptr %740, i64 -117
  %747 = load i64, ptr %746, align 1
  %748 = add i64 %745, %319
  %749 = xor i64 %748, %742
  %750 = sub i64 %747, %319
  %751 = xor i64 %750, %744
  %752 = zext i64 %749 to i128
  %753 = zext i64 %751 to i128
  %754 = mul nuw i128 %753, %752
  %755 = lshr i128 %754, 64
  %756 = xor i128 %755, %754
  %757 = trunc i128 %756 to i64
  %758 = add i64 %736, %757
  br label %759

759:                                              ; preds = %738, %733, %545
  %760 = phi i64 [ %672, %545 ], [ %734, %733 ], [ %758, %738 ]
  %761 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %762 = getelementptr inbounds i8, ptr %761, i64 -16
  %763 = load i64, ptr %762, align 1
  %764 = getelementptr i8, ptr %761, i64 -8
  %765 = load i64, ptr %764, align 1
  %766 = add i64 %319, 8320639771003045937
  %767 = xor i64 %763, %766
  %768 = sub i64 -1453760514566526364, %319
  %769 = xor i64 %765, %768
  %770 = zext i64 %767 to i128
  %771 = zext i64 %769 to i128
  %772 = mul nuw i128 %771, %770
  %773 = lshr i128 %772, 64
  %774 = xor i128 %773, %772
  %775 = trunc i128 %774 to i64
  %776 = add i64 %760, %775
  %777 = lshr i64 %776, 37
  %778 = xor i64 %777, %776
  %779 = mul i64 %778, 1609587929392839161
  %780 = lshr i64 %779, 32
  %781 = xor i64 %780, %779
  br label %1271

782:                                              ; preds = %317
  %783 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %784 = load ptr, ptr %783, align 16
  %785 = icmp samesign ult i64 %4, 17
  br i1 %785, label %786, label %865

786:                                              ; preds = %782
  %787 = icmp samesign ugt i64 %4, 8
  br i1 %787, label %788, label %812

788:                                              ; preds = %786
  %789 = load i64, ptr %784, align 1
  %790 = getelementptr i8, ptr %784, i64 8
  %791 = load i64, ptr %790, align 1
  %792 = load i64, ptr %321, align 1
  %793 = xor i64 %792, %789
  %794 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %795 = getelementptr inbounds i8, ptr %794, i64 -8
  %796 = load i64, ptr %795, align 1
  %797 = xor i64 %796, %791
  %798 = zext i64 %793 to i128
  %799 = zext i64 %797 to i128
  %800 = mul nuw i128 %799, %798
  %801 = lshr i128 %800, 64
  %802 = xor i128 %801, %800
  %803 = trunc i128 %802 to i64
  %804 = add i64 %793, %4
  %805 = add i64 %804, %797
  %806 = add i64 %805, %803
  %807 = lshr i64 %806, 37
  %808 = xor i64 %807, %806
  %809 = mul i64 %808, 1609587929392839161
  %810 = lshr i64 %809, 32
  %811 = xor i64 %810, %809
  br label %1271

812:                                              ; preds = %786
  %813 = icmp samesign ugt i64 %4, 3
  br i1 %813, label %814, label %837

814:                                              ; preds = %812
  %815 = load i64, ptr %784, align 1
  %816 = load i32, ptr %321, align 1
  %817 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %818 = getelementptr inbounds i8, ptr %817, i64 -4
  %819 = load i32, ptr %818, align 1
  %820 = zext i32 %816 to i64
  %821 = zext i32 %819 to i64
  %822 = shl nuw i64 %821, 32
  %823 = or disjoint i64 %822, %820
  %824 = xor i64 %823, %815
  %825 = lshr i64 %824, 51
  %826 = xor i64 %825, %824
  %827 = mul i64 %826, 2654435761
  %828 = add i64 %827, %4
  %829 = lshr i64 %828, 47
  %830 = xor i64 %829, %828
  %831 = mul i64 %830, -4417276706812531889
  %832 = lshr i64 %831, 37
  %833 = xor i64 %832, %831
  %834 = mul i64 %833, 1609587929392839161
  %835 = lshr i64 %834, 32
  %836 = xor i64 %835, %834
  br label %1271

837:                                              ; preds = %812
  %838 = icmp eq i64 %4, 0
  br i1 %838, label %1271, label %839

839:                                              ; preds = %837
  %840 = load i32, ptr %784, align 1
  %841 = load i8, ptr %321, align 1
  %842 = lshr i64 %4, 1
  %843 = getelementptr inbounds nuw i8, ptr %321, i64 %842
  %844 = load i8, ptr %843, align 1
  %845 = getelementptr i8, ptr %321, i64 %4
  %846 = getelementptr i8, ptr %845, i64 -1
  %847 = load i8, ptr %846, align 1
  %848 = zext i8 %841 to i64
  %849 = zext i8 %844 to i64
  %850 = shl nuw nsw i64 %849, 8
  %851 = zext i8 %847 to i64
  %852 = shl nuw nsw i64 %851, 16
  %853 = shl nuw nsw i64 %4, 24
  %854 = or disjoint i64 %853, %848
  %855 = or disjoint i64 %854, %850
  %856 = or disjoint i64 %855, %852
  %857 = zext i32 %840 to i64
  %858 = xor i64 %856, %857
  %859 = mul i64 %858, -7046029288634856825
  %860 = lshr i64 %859, 37
  %861 = xor i64 %860, %859
  %862 = mul i64 %861, 1609587929392839161
  %863 = lshr i64 %862, 32
  %864 = xor i64 %863, %862
  br label %1271

865:                                              ; preds = %782
  %866 = icmp samesign ult i64 %4, 129
  %867 = mul i64 %4, -7046029288634856825
  br i1 %866, label %868, label %1024

868:                                              ; preds = %865
  %869 = icmp samesign ugt i64 %4, 32
  br i1 %869, label %870, label %984

870:                                              ; preds = %868
  %871 = icmp samesign ugt i64 %4, 64
  br i1 %871, label %872, label %947

872:                                              ; preds = %870
  %873 = icmp samesign ugt i64 %4, 96
  br i1 %873, label %874, label %910

874:                                              ; preds = %872
  %875 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %876 = getelementptr inbounds nuw i8, ptr %784, i64 96
  %877 = load i64, ptr %875, align 1
  %878 = getelementptr i8, ptr %0, i64 312
  %879 = load i64, ptr %878, align 1
  %880 = load i64, ptr %876, align 1
  %881 = getelementptr i8, ptr %784, i64 104
  %882 = load i64, ptr %881, align 1
  %883 = xor i64 %880, %877
  %884 = xor i64 %882, %879
  %885 = zext i64 %883 to i128
  %886 = zext i64 %884 to i128
  %887 = mul nuw i128 %886, %885
  %888 = lshr i128 %887, 64
  %889 = xor i128 %888, %887
  %890 = trunc i128 %889 to i64
  %891 = add i64 %867, %890
  %892 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %893 = getelementptr inbounds i8, ptr %892, i64 -64
  %894 = getelementptr inbounds nuw i8, ptr %784, i64 112
  %895 = load i64, ptr %893, align 1
  %896 = getelementptr i8, ptr %892, i64 -56
  %897 = load i64, ptr %896, align 1
  %898 = load i64, ptr %894, align 1
  %899 = getelementptr i8, ptr %784, i64 120
  %900 = load i64, ptr %899, align 1
  %901 = xor i64 %898, %895
  %902 = xor i64 %900, %897
  %903 = zext i64 %901 to i128
  %904 = zext i64 %902 to i128
  %905 = mul nuw i128 %904, %903
  %906 = lshr i128 %905, 64
  %907 = xor i128 %906, %905
  %908 = trunc i128 %907 to i64
  %909 = add i64 %891, %908
  br label %910

910:                                              ; preds = %874, %872
  %911 = phi i64 [ %909, %874 ], [ %867, %872 ]
  %912 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %913 = getelementptr inbounds nuw i8, ptr %784, i64 64
  %914 = load i64, ptr %912, align 1
  %915 = getelementptr i8, ptr %0, i64 296
  %916 = load i64, ptr %915, align 1
  %917 = load i64, ptr %913, align 1
  %918 = getelementptr i8, ptr %784, i64 72
  %919 = load i64, ptr %918, align 1
  %920 = xor i64 %917, %914
  %921 = xor i64 %919, %916
  %922 = zext i64 %920 to i128
  %923 = zext i64 %921 to i128
  %924 = mul nuw i128 %923, %922
  %925 = lshr i128 %924, 64
  %926 = xor i128 %925, %924
  %927 = trunc i128 %926 to i64
  %928 = add i64 %911, %927
  %929 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %930 = getelementptr inbounds i8, ptr %929, i64 -48
  %931 = getelementptr inbounds nuw i8, ptr %784, i64 80
  %932 = load i64, ptr %930, align 1
  %933 = getelementptr i8, ptr %929, i64 -40
  %934 = load i64, ptr %933, align 1
  %935 = load i64, ptr %931, align 1
  %936 = getelementptr i8, ptr %784, i64 88
  %937 = load i64, ptr %936, align 1
  %938 = xor i64 %935, %932
  %939 = xor i64 %937, %934
  %940 = zext i64 %938 to i128
  %941 = zext i64 %939 to i128
  %942 = mul nuw i128 %941, %940
  %943 = lshr i128 %942, 64
  %944 = xor i128 %943, %942
  %945 = trunc i128 %944 to i64
  %946 = add i64 %928, %945
  br label %947

947:                                              ; preds = %910, %870
  %948 = phi i64 [ %946, %910 ], [ %867, %870 ]
  %949 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %950 = getelementptr inbounds nuw i8, ptr %784, i64 32
  %951 = load i64, ptr %949, align 1
  %952 = getelementptr i8, ptr %0, i64 280
  %953 = load i64, ptr %952, align 1
  %954 = load i64, ptr %950, align 1
  %955 = getelementptr i8, ptr %784, i64 40
  %956 = load i64, ptr %955, align 1
  %957 = xor i64 %954, %951
  %958 = xor i64 %956, %953
  %959 = zext i64 %957 to i128
  %960 = zext i64 %958 to i128
  %961 = mul nuw i128 %960, %959
  %962 = lshr i128 %961, 64
  %963 = xor i128 %962, %961
  %964 = trunc i128 %963 to i64
  %965 = add i64 %948, %964
  %966 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %967 = getelementptr inbounds i8, ptr %966, i64 -32
  %968 = getelementptr inbounds nuw i8, ptr %784, i64 48
  %969 = load i64, ptr %967, align 1
  %970 = getelementptr i8, ptr %966, i64 -24
  %971 = load i64, ptr %970, align 1
  %972 = load i64, ptr %968, align 1
  %973 = getelementptr i8, ptr %784, i64 56
  %974 = load i64, ptr %973, align 1
  %975 = xor i64 %972, %969
  %976 = xor i64 %974, %971
  %977 = zext i64 %975 to i128
  %978 = zext i64 %976 to i128
  %979 = mul nuw i128 %978, %977
  %980 = lshr i128 %979, 64
  %981 = xor i128 %980, %979
  %982 = trunc i128 %981 to i64
  %983 = add i64 %965, %982
  br label %984

984:                                              ; preds = %947, %868
  %985 = phi i64 [ %983, %947 ], [ %867, %868 ]
  %986 = load i64, ptr %321, align 1
  %987 = getelementptr i8, ptr %0, i64 264
  %988 = load i64, ptr %987, align 1
  %989 = load i64, ptr %784, align 1
  %990 = getelementptr i8, ptr %784, i64 8
  %991 = load i64, ptr %990, align 1
  %992 = xor i64 %989, %986
  %993 = xor i64 %991, %988
  %994 = zext i64 %992 to i128
  %995 = zext i64 %993 to i128
  %996 = mul nuw i128 %995, %994
  %997 = lshr i128 %996, 64
  %998 = xor i128 %997, %996
  %999 = trunc i128 %998 to i64
  %1000 = add i64 %985, %999
  %1001 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %1002 = getelementptr inbounds i8, ptr %1001, i64 -16
  %1003 = getelementptr inbounds nuw i8, ptr %784, i64 16
  %1004 = load i64, ptr %1002, align 1
  %1005 = getelementptr i8, ptr %1001, i64 -8
  %1006 = load i64, ptr %1005, align 1
  %1007 = load i64, ptr %1003, align 1
  %1008 = getelementptr i8, ptr %784, i64 24
  %1009 = load i64, ptr %1008, align 1
  %1010 = xor i64 %1007, %1004
  %1011 = xor i64 %1009, %1006
  %1012 = zext i64 %1010 to i128
  %1013 = zext i64 %1011 to i128
  %1014 = mul nuw i128 %1013, %1012
  %1015 = lshr i128 %1014, 64
  %1016 = xor i128 %1015, %1014
  %1017 = trunc i128 %1016 to i64
  %1018 = add i64 %1000, %1017
  %1019 = lshr i64 %1018, 37
  %1020 = xor i64 %1019, %1018
  %1021 = mul i64 %1020, 1609587929392839161
  %1022 = lshr i64 %1021, 32
  %1023 = xor i64 %1022, %1021
  br label %1271

1024:                                             ; preds = %865
  %1025 = trunc nuw nsw i64 %4 to i32
  %1026 = load i64, ptr %321, align 1
  %1027 = getelementptr i8, ptr %0, i64 264
  %1028 = load i64, ptr %1027, align 1
  %1029 = load i64, ptr %784, align 1
  %1030 = getelementptr i8, ptr %784, i64 8
  %1031 = load i64, ptr %1030, align 1
  %1032 = xor i64 %1029, %1026
  %1033 = xor i64 %1031, %1028
  %1034 = zext i64 %1032 to i128
  %1035 = zext i64 %1033 to i128
  %1036 = mul nuw i128 %1035, %1034
  %1037 = lshr i128 %1036, 64
  %1038 = xor i128 %1037, %1036
  %1039 = trunc i128 %1038 to i64
  %1040 = add i64 %867, %1039
  %1041 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %1042 = getelementptr inbounds nuw i8, ptr %784, i64 16
  %1043 = load i64, ptr %1041, align 1
  %1044 = getelementptr i8, ptr %0, i64 280
  %1045 = load i64, ptr %1044, align 1
  %1046 = load i64, ptr %1042, align 1
  %1047 = getelementptr i8, ptr %784, i64 24
  %1048 = load i64, ptr %1047, align 1
  %1049 = xor i64 %1046, %1043
  %1050 = xor i64 %1048, %1045
  %1051 = zext i64 %1049 to i128
  %1052 = zext i64 %1050 to i128
  %1053 = mul nuw i128 %1052, %1051
  %1054 = lshr i128 %1053, 64
  %1055 = xor i128 %1054, %1053
  %1056 = trunc i128 %1055 to i64
  %1057 = add i64 %1040, %1056
  %1058 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %1059 = getelementptr inbounds nuw i8, ptr %784, i64 32
  %1060 = load i64, ptr %1058, align 1
  %1061 = getelementptr i8, ptr %0, i64 296
  %1062 = load i64, ptr %1061, align 1
  %1063 = load i64, ptr %1059, align 1
  %1064 = getelementptr i8, ptr %784, i64 40
  %1065 = load i64, ptr %1064, align 1
  %1066 = xor i64 %1063, %1060
  %1067 = xor i64 %1065, %1062
  %1068 = zext i64 %1066 to i128
  %1069 = zext i64 %1067 to i128
  %1070 = mul nuw i128 %1069, %1068
  %1071 = lshr i128 %1070, 64
  %1072 = xor i128 %1071, %1070
  %1073 = trunc i128 %1072 to i64
  %1074 = add i64 %1057, %1073
  %1075 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %1076 = getelementptr inbounds nuw i8, ptr %784, i64 48
  %1077 = load i64, ptr %1075, align 1
  %1078 = getelementptr i8, ptr %0, i64 312
  %1079 = load i64, ptr %1078, align 1
  %1080 = load i64, ptr %1076, align 1
  %1081 = getelementptr i8, ptr %784, i64 56
  %1082 = load i64, ptr %1081, align 1
  %1083 = xor i64 %1080, %1077
  %1084 = xor i64 %1082, %1079
  %1085 = zext i64 %1083 to i128
  %1086 = zext i64 %1084 to i128
  %1087 = mul nuw i128 %1086, %1085
  %1088 = lshr i128 %1087, 64
  %1089 = xor i128 %1088, %1087
  %1090 = trunc i128 %1089 to i64
  %1091 = add i64 %1074, %1090
  %1092 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %1093 = getelementptr inbounds nuw i8, ptr %784, i64 64
  %1094 = load i64, ptr %1092, align 1
  %1095 = getelementptr i8, ptr %0, i64 328
  %1096 = load i64, ptr %1095, align 1
  %1097 = load i64, ptr %1093, align 1
  %1098 = getelementptr i8, ptr %784, i64 72
  %1099 = load i64, ptr %1098, align 1
  %1100 = xor i64 %1097, %1094
  %1101 = xor i64 %1099, %1096
  %1102 = zext i64 %1100 to i128
  %1103 = zext i64 %1101 to i128
  %1104 = mul nuw i128 %1103, %1102
  %1105 = lshr i128 %1104, 64
  %1106 = xor i128 %1105, %1104
  %1107 = trunc i128 %1106 to i64
  %1108 = add i64 %1091, %1107
  %1109 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %1110 = getelementptr inbounds nuw i8, ptr %784, i64 80
  %1111 = load i64, ptr %1109, align 1
  %1112 = getelementptr i8, ptr %0, i64 344
  %1113 = load i64, ptr %1112, align 1
  %1114 = load i64, ptr %1110, align 1
  %1115 = getelementptr i8, ptr %784, i64 88
  %1116 = load i64, ptr %1115, align 1
  %1117 = xor i64 %1114, %1111
  %1118 = xor i64 %1116, %1113
  %1119 = zext i64 %1117 to i128
  %1120 = zext i64 %1118 to i128
  %1121 = mul nuw i128 %1120, %1119
  %1122 = lshr i128 %1121, 64
  %1123 = xor i128 %1122, %1121
  %1124 = trunc i128 %1123 to i64
  %1125 = add i64 %1108, %1124
  %1126 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %1127 = getelementptr inbounds nuw i8, ptr %784, i64 96
  %1128 = load i64, ptr %1126, align 1
  %1129 = getelementptr i8, ptr %0, i64 360
  %1130 = load i64, ptr %1129, align 1
  %1131 = load i64, ptr %1127, align 1
  %1132 = getelementptr i8, ptr %784, i64 104
  %1133 = load i64, ptr %1132, align 1
  %1134 = xor i64 %1131, %1128
  %1135 = xor i64 %1133, %1130
  %1136 = zext i64 %1134 to i128
  %1137 = zext i64 %1135 to i128
  %1138 = mul nuw i128 %1137, %1136
  %1139 = lshr i128 %1138, 64
  %1140 = xor i128 %1139, %1138
  %1141 = trunc i128 %1140 to i64
  %1142 = add i64 %1125, %1141
  %1143 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %1144 = getelementptr inbounds nuw i8, ptr %784, i64 112
  %1145 = load i64, ptr %1143, align 1
  %1146 = getelementptr i8, ptr %0, i64 376
  %1147 = load i64, ptr %1146, align 1
  %1148 = load i64, ptr %1144, align 1
  %1149 = getelementptr i8, ptr %784, i64 120
  %1150 = load i64, ptr %1149, align 1
  %1151 = xor i64 %1148, %1145
  %1152 = xor i64 %1150, %1147
  %1153 = zext i64 %1151 to i128
  %1154 = zext i64 %1152 to i128
  %1155 = mul nuw i128 %1154, %1153
  %1156 = lshr i128 %1155, 64
  %1157 = xor i128 %1156, %1155
  %1158 = trunc i128 %1157 to i64
  %1159 = add i64 %1142, %1158
  %1160 = lshr i32 %1025, 4
  %1161 = lshr i64 %1159, 37
  %1162 = xor i64 %1161, %1159
  %1163 = mul i64 %1162, 1609587929392839161
  %1164 = lshr i64 %1163, 32
  %1165 = xor i64 %1164, %1163
  %1166 = icmp eq i32 %1160, 8
  br i1 %1166, label %1246, label %1167

1167:                                             ; preds = %1024
  %1168 = zext nneg i32 %1160 to i64
  %1169 = and i64 %1168, 1
  %1170 = icmp eq i32 %1160, 9
  br i1 %1170, label %1222, label %1171

1171:                                             ; preds = %1167
  %1172 = and i64 %1168, 14
  %1173 = add nsw i64 %1172, -10
  br label %1174

1174:                                             ; preds = %1174, %1171
  %1175 = phi i64 [ 8, %1171 ], [ %1217, %1174 ]
  %1176 = phi i64 [ %1165, %1171 ], [ %1216, %1174 ]
  %1177 = phi i64 [ 0, %1171 ], [ %1218, %1174 ]
  %1178 = shl nsw i64 %1175, 4
  %1179 = getelementptr inbounds nuw i8, ptr %321, i64 %1178
  %1180 = getelementptr i8, ptr %784, i64 %1178
  %1181 = getelementptr i8, ptr %1180, i64 -125
  %1182 = load i64, ptr %1179, align 1
  %1183 = getelementptr i8, ptr %1179, i64 8
  %1184 = load i64, ptr %1183, align 1
  %1185 = load i64, ptr %1181, align 1
  %1186 = getelementptr i8, ptr %1180, i64 -117
  %1187 = load i64, ptr %1186, align 1
  %1188 = xor i64 %1185, %1182
  %1189 = xor i64 %1187, %1184
  %1190 = zext i64 %1188 to i128
  %1191 = zext i64 %1189 to i128
  %1192 = mul nuw i128 %1191, %1190
  %1193 = lshr i128 %1192, 64
  %1194 = xor i128 %1193, %1192
  %1195 = trunc i128 %1194 to i64
  %1196 = add i64 %1176, %1195
  %1197 = shl i64 %1175, 4
  %1198 = or disjoint i64 %1197, 16
  %1199 = getelementptr inbounds nuw i8, ptr %321, i64 %1198
  %1200 = getelementptr i8, ptr %784, i64 %1198
  %1201 = getelementptr i8, ptr %1200, i64 -125
  %1202 = load i64, ptr %1199, align 1
  %1203 = getelementptr i8, ptr %1199, i64 8
  %1204 = load i64, ptr %1203, align 1
  %1205 = load i64, ptr %1201, align 1
  %1206 = getelementptr i8, ptr %1200, i64 -117
  %1207 = load i64, ptr %1206, align 1
  %1208 = xor i64 %1205, %1202
  %1209 = xor i64 %1207, %1204
  %1210 = zext i64 %1208 to i128
  %1211 = zext i64 %1209 to i128
  %1212 = mul nuw i128 %1211, %1210
  %1213 = lshr i128 %1212, 64
  %1214 = xor i128 %1213, %1212
  %1215 = trunc i128 %1214 to i64
  %1216 = add i64 %1196, %1215
  %1217 = add nuw nsw i64 %1175, 2
  %1218 = add i64 %1177, 2
  %1219 = icmp eq i64 %1177, %1173
  br i1 %1219, label %1220, label %1174

1220:                                             ; preds = %1174
  %1221 = shl nsw i64 %1217, 4
  br label %1222

1222:                                             ; preds = %1220, %1167
  %1223 = phi i64 [ poison, %1167 ], [ %1216, %1220 ]
  %1224 = phi i64 [ 128, %1167 ], [ %1221, %1220 ]
  %1225 = phi i64 [ %1165, %1167 ], [ %1216, %1220 ]
  %1226 = icmp eq i64 %1169, 0
  br i1 %1226, label %1246, label %1227

1227:                                             ; preds = %1222
  %1228 = getelementptr inbounds nuw i8, ptr %321, i64 %1224
  %1229 = getelementptr i8, ptr %784, i64 %1224
  %1230 = getelementptr i8, ptr %1229, i64 -125
  %1231 = load i64, ptr %1228, align 1
  %1232 = getelementptr i8, ptr %1228, i64 8
  %1233 = load i64, ptr %1232, align 1
  %1234 = load i64, ptr %1230, align 1
  %1235 = getelementptr i8, ptr %1229, i64 -117
  %1236 = load i64, ptr %1235, align 1
  %1237 = xor i64 %1234, %1231
  %1238 = xor i64 %1236, %1233
  %1239 = zext i64 %1237 to i128
  %1240 = zext i64 %1238 to i128
  %1241 = mul nuw i128 %1240, %1239
  %1242 = lshr i128 %1241, 64
  %1243 = xor i128 %1242, %1241
  %1244 = trunc i128 %1243 to i64
  %1245 = add i64 %1225, %1244
  br label %1246

1246:                                             ; preds = %1227, %1222, %1024
  %1247 = phi i64 [ %1165, %1024 ], [ %1223, %1222 ], [ %1245, %1227 ]
  %1248 = getelementptr inbounds nuw i8, ptr %321, i64 %4
  %1249 = getelementptr inbounds i8, ptr %1248, i64 -16
  %1250 = getelementptr inbounds nuw i8, ptr %784, i64 119
  %1251 = load i64, ptr %1249, align 1
  %1252 = getelementptr i8, ptr %1248, i64 -8
  %1253 = load i64, ptr %1252, align 1
  %1254 = load i64, ptr %1250, align 1
  %1255 = getelementptr i8, ptr %784, i64 127
  %1256 = load i64, ptr %1255, align 1
  %1257 = xor i64 %1254, %1251
  %1258 = xor i64 %1256, %1253
  %1259 = zext i64 %1257 to i128
  %1260 = zext i64 %1258 to i128
  %1261 = mul nuw i128 %1260, %1259
  %1262 = lshr i128 %1261, 64
  %1263 = xor i128 %1262, %1261
  %1264 = trunc i128 %1263 to i64
  %1265 = add i64 %1247, %1264
  %1266 = lshr i64 %1265, 37
  %1267 = xor i64 %1266, %1265
  %1268 = mul i64 %1267, 1609587929392839161
  %1269 = lshr i64 %1268, 32
  %1270 = xor i64 %1269, %1268
  br label %1271

1271:                                             ; preds = %1246, %984, %839, %837, %814, %788, %759, %508, %376, %374, %351, %326, %247
  %1272 = phi i64 [ %316, %247 ], [ %544, %508 ], [ %781, %759 ], [ %348, %326 ], [ %373, %351 ], [ %400, %376 ], [ 0, %374 ], [ %1023, %984 ], [ %1270, %1246 ], [ %811, %788 ], [ %836, %814 ], [ %864, %839 ], [ 0, %837 ]
  ret i64 %1272
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %117

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
  br label %748

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
  br label %748

80:                                               ; preds = %42
  %81 = icmp eq i64 %1, 0
  br i1 %81, label %748, label %82

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
  br label %748

117:                                              ; preds = %2
  %118 = icmp ult i64 %1, 129
  br i1 %118, label %119, label %275

119:                                              ; preds = %117
  %120 = mul i64 %1, -7046029288634856825
  %121 = icmp samesign ugt i64 %1, 32
  br i1 %121, label %122, label %225

122:                                              ; preds = %119
  %123 = icmp samesign ugt i64 %1, 64
  br i1 %123, label %124, label %191

124:                                              ; preds = %122
  %125 = icmp samesign ugt i64 %1, 96
  br i1 %125, label %126, label %157

126:                                              ; preds = %124
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %129 = getelementptr inbounds i8, ptr %128, i64 -64
  %130 = load i64, ptr %127, align 1
  %131 = getelementptr i8, ptr %0, i64 56
  %132 = load i64, ptr %131, align 1
  %133 = load i64, ptr %129, align 1
  %134 = getelementptr i8, ptr %128, i64 -56
  %135 = load i64, ptr %134, align 1
  %136 = xor i64 %130, 4554437623014685352
  %137 = xor i64 %132, 2111919702937427193
  %138 = zext i64 %136 to i128
  %139 = zext i64 %137 to i128
  %140 = mul nuw i128 %139, %138
  %141 = lshr i128 %140, 64
  %142 = xor i128 %141, %140
  %143 = trunc i128 %142 to i64
  %144 = add i64 %120, %143
  %145 = add i64 %135, %133
  %146 = xor i64 %144, %145
  %147 = xor i64 %133, 3556072174620004746
  %148 = xor i64 %135, 7238261902898274248
  %149 = zext i64 %147 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = add i64 %132, %130
  %156 = xor i64 %155, %154
  br label %157

157:                                              ; preds = %126, %124
  %158 = phi i64 [ %146, %126 ], [ %120, %124 ]
  %159 = phi i64 [ %156, %126 ], [ 0, %124 ]
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %162 = getelementptr inbounds i8, ptr %161, i64 -48
  %163 = load i64, ptr %160, align 1
  %164 = getelementptr i8, ptr %0, i64 40
  %165 = load i64, ptr %164, align 1
  %166 = load i64, ptr %162, align 1
  %167 = getelementptr i8, ptr %161, i64 -40
  %168 = load i64, ptr %167, align 1
  %169 = xor i64 %163, -3818837453329782724
  %170 = xor i64 %165, -6688317018830679928
  %171 = zext i64 %169 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = add i64 %158, %176
  %178 = add i64 %168, %166
  %179 = xor i64 %177, %178
  %180 = xor i64 %166, 5690594596133299313
  %181 = xor i64 %168, -2833645246901970632
  %182 = zext i64 %180 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %159, %187
  %189 = add i64 %165, %163
  %190 = xor i64 %188, %189
  br label %191

191:                                              ; preds = %157, %122
  %192 = phi i64 [ %179, %157 ], [ %120, %122 ]
  %193 = phi i64 [ %190, %157 ], [ 0, %122 ]
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %196 = getelementptr inbounds i8, ptr %195, i64 -32
  %197 = load i64, ptr %194, align 1
  %198 = getelementptr i8, ptr %0, i64 24
  %199 = load i64, ptr %198, align 1
  %200 = load i64, ptr %196, align 1
  %201 = getelementptr i8, ptr %195, i64 -24
  %202 = load i64, ptr %201, align 1
  %203 = xor i64 %197, 8711581037947681227
  %204 = xor i64 %199, 2410270004345854594
  %205 = zext i64 %203 to i128
  %206 = zext i64 %204 to i128
  %207 = mul nuw i128 %206, %205
  %208 = lshr i128 %207, 64
  %209 = xor i128 %208, %207
  %210 = trunc i128 %209 to i64
  %211 = add i64 %192, %210
  %212 = add i64 %202, %200
  %213 = xor i64 %211, %212
  %214 = xor i64 %200, -8204357891075471176
  %215 = xor i64 %202, 5487137525590930912
  %216 = zext i64 %214 to i128
  %217 = zext i64 %215 to i128
  %218 = mul nuw i128 %217, %216
  %219 = lshr i128 %218, 64
  %220 = xor i128 %219, %218
  %221 = trunc i128 %220 to i64
  %222 = add i64 %193, %221
  %223 = add i64 %199, %197
  %224 = xor i64 %222, %223
  br label %225

225:                                              ; preds = %119, %191
  %226 = phi i64 [ %213, %191 ], [ %120, %119 ]
  %227 = phi i64 [ %224, %191 ], [ 0, %119 ]
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %229 = getelementptr inbounds i8, ptr %228, i64 -16
  %230 = load i64, ptr %0, align 1
  %231 = getelementptr i8, ptr %0, i64 8
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = getelementptr i8, ptr %228, i64 -8
  %235 = load i64, ptr %234, align 1
  %236 = xor i64 %230, -4734510112055689544
  %237 = xor i64 %232, 2066345149520216444
  %238 = zext i64 %236 to i128
  %239 = zext i64 %237 to i128
  %240 = mul nuw i128 %239, %238
  %241 = lshr i128 %240, 64
  %242 = xor i128 %241, %240
  %243 = trunc i128 %242 to i64
  %244 = add i64 %226, %243
  %245 = add i64 %235, %233
  %246 = xor i64 %244, %245
  %247 = xor i64 %233, -2623469361688619810
  %248 = xor i64 %235, 2262974939099578482
  %249 = zext i64 %247 to i128
  %250 = zext i64 %248 to i128
  %251 = mul nuw i128 %250, %249
  %252 = lshr i128 %251, 64
  %253 = xor i128 %252, %251
  %254 = trunc i128 %253 to i64
  %255 = add i64 %227, %254
  %256 = add i64 %232, %230
  %257 = xor i64 %255, %256
  %258 = add i64 %257, %246
  %259 = mul i64 %246, -7046029288634856825
  %260 = mul i64 %257, -8796714831421723037
  %261 = mul i64 %1, -4417276706812531889
  %262 = add i64 %259, %261
  %263 = add i64 %262, %260
  %264 = lshr i64 %258, 37
  %265 = xor i64 %264, %258
  %266 = mul i64 %265, 1609587929392839161
  %267 = lshr i64 %266, 32
  %268 = xor i64 %267, %266
  %269 = lshr i64 %263, 37
  %270 = xor i64 %269, %263
  %271 = mul i64 %270, 1609587929392839161
  %272 = lshr i64 %271, 32
  %273 = xor i64 %272, %271
  %274 = sub i64 0, %273
  br label %748

275:                                              ; preds = %117
  %276 = icmp ult i64 %1, 241
  br i1 %276, label %277, label %509

277:                                              ; preds = %275
  %278 = trunc nuw nsw i64 %1 to i32
  %279 = mul i64 %1, -7046029288634856825
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %281 = load i64, ptr %0, align 1
  %282 = getelementptr i8, ptr %0, i64 8
  %283 = load i64, ptr %282, align 1
  %284 = load i64, ptr %280, align 1
  %285 = getelementptr i8, ptr %0, i64 24
  %286 = load i64, ptr %285, align 1
  %287 = xor i64 %281, -4734510112055689544
  %288 = xor i64 %283, 2066345149520216444
  %289 = zext i64 %287 to i128
  %290 = zext i64 %288 to i128
  %291 = mul nuw i128 %290, %289
  %292 = lshr i128 %291, 64
  %293 = xor i128 %292, %291
  %294 = trunc i128 %293 to i64
  %295 = add i64 %279, %294
  %296 = add i64 %286, %284
  %297 = xor i64 %295, %296
  %298 = xor i64 %284, -2623469361688619810
  %299 = xor i64 %286, 2262974939099578482
  %300 = zext i64 %298 to i128
  %301 = zext i64 %299 to i128
  %302 = mul nuw i128 %301, %300
  %303 = lshr i128 %302, 64
  %304 = xor i128 %303, %302
  %305 = trunc i128 %304 to i64
  %306 = add i64 %283, %281
  %307 = xor i64 %306, %305
  %308 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %309 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %310 = load i64, ptr %308, align 1
  %311 = getelementptr i8, ptr %0, i64 40
  %312 = load i64, ptr %311, align 1
  %313 = load i64, ptr %309, align 1
  %314 = getelementptr i8, ptr %0, i64 56
  %315 = load i64, ptr %314, align 1
  %316 = xor i64 %310, 8711581037947681227
  %317 = xor i64 %312, 2410270004345854594
  %318 = zext i64 %316 to i128
  %319 = zext i64 %317 to i128
  %320 = mul nuw i128 %319, %318
  %321 = lshr i128 %320, 64
  %322 = xor i128 %321, %320
  %323 = trunc i128 %322 to i64
  %324 = add i64 %297, %323
  %325 = add i64 %315, %313
  %326 = xor i64 %324, %325
  %327 = xor i64 %313, -8204357891075471176
  %328 = xor i64 %315, 5487137525590930912
  %329 = zext i64 %327 to i128
  %330 = zext i64 %328 to i128
  %331 = mul nuw i128 %330, %329
  %332 = lshr i128 %331, 64
  %333 = xor i128 %332, %331
  %334 = trunc i128 %333 to i64
  %335 = add i64 %307, %334
  %336 = add i64 %312, %310
  %337 = xor i64 %335, %336
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %339 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %340 = load i64, ptr %338, align 1
  %341 = getelementptr i8, ptr %0, i64 72
  %342 = load i64, ptr %341, align 1
  %343 = load i64, ptr %339, align 1
  %344 = getelementptr i8, ptr %0, i64 88
  %345 = load i64, ptr %344, align 1
  %346 = xor i64 %340, -3818837453329782724
  %347 = xor i64 %342, -6688317018830679928
  %348 = zext i64 %346 to i128
  %349 = zext i64 %347 to i128
  %350 = mul nuw i128 %349, %348
  %351 = lshr i128 %350, 64
  %352 = xor i128 %351, %350
  %353 = trunc i128 %352 to i64
  %354 = add i64 %326, %353
  %355 = add i64 %345, %343
  %356 = xor i64 %354, %355
  %357 = xor i64 %343, 5690594596133299313
  %358 = xor i64 %345, -2833645246901970632
  %359 = zext i64 %357 to i128
  %360 = zext i64 %358 to i128
  %361 = mul nuw i128 %360, %359
  %362 = lshr i128 %361, 64
  %363 = xor i128 %362, %361
  %364 = trunc i128 %363 to i64
  %365 = add i64 %337, %364
  %366 = add i64 %342, %340
  %367 = xor i64 %365, %366
  %368 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %370 = load i64, ptr %368, align 1
  %371 = getelementptr i8, ptr %0, i64 104
  %372 = load i64, ptr %371, align 1
  %373 = load i64, ptr %369, align 1
  %374 = getelementptr i8, ptr %0, i64 120
  %375 = load i64, ptr %374, align 1
  %376 = xor i64 %370, 4554437623014685352
  %377 = xor i64 %372, 2111919702937427193
  %378 = zext i64 %376 to i128
  %379 = zext i64 %377 to i128
  %380 = mul nuw i128 %379, %378
  %381 = lshr i128 %380, 64
  %382 = xor i128 %381, %380
  %383 = trunc i128 %382 to i64
  %384 = add i64 %356, %383
  %385 = add i64 %375, %373
  %386 = xor i64 %384, %385
  %387 = xor i64 %373, 3556072174620004746
  %388 = xor i64 %375, 7238261902898274248
  %389 = zext i64 %387 to i128
  %390 = zext i64 %388 to i128
  %391 = mul nuw i128 %390, %389
  %392 = lshr i128 %391, 64
  %393 = xor i128 %392, %391
  %394 = trunc i128 %393 to i64
  %395 = add i64 %367, %394
  %396 = add i64 %372, %370
  %397 = xor i64 %395, %396
  %398 = lshr i32 %278, 5
  %399 = lshr i64 %386, 37
  %400 = xor i64 %399, %386
  %401 = mul i64 %400, 1609587929392839161
  %402 = lshr i64 %401, 32
  %403 = xor i64 %402, %401
  %404 = lshr i64 %397, 37
  %405 = xor i64 %404, %397
  %406 = mul i64 %405, 1609587929392839161
  %407 = lshr i64 %406, 32
  %408 = xor i64 %407, %406
  %409 = icmp eq i32 %398, 4
  br i1 %409, label %458, label %410

410:                                              ; preds = %277
  %411 = zext nneg i32 %398 to i64
  br label %412

412:                                              ; preds = %412, %410
  %413 = phi i64 [ 4, %410 ], [ %456, %412 ]
  %414 = phi i64 [ %408, %410 ], [ %455, %412 ]
  %415 = phi i64 [ %403, %410 ], [ %440, %412 ]
  %416 = shl nsw i64 %413, 5
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 %416
  %418 = getelementptr inbounds nuw i8, ptr %417, i64 16
  %419 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @kSecret, i64 3), i64 %416
  %420 = getelementptr i8, ptr %419, i64 -128
  %421 = load i64, ptr %417, align 1
  %422 = getelementptr i8, ptr %417, i64 8
  %423 = load i64, ptr %422, align 1
  %424 = load i64, ptr %418, align 1
  %425 = getelementptr i8, ptr %417, i64 24
  %426 = load i64, ptr %425, align 1
  %427 = load i64, ptr %420, align 1
  %428 = getelementptr i8, ptr %419, i64 -120
  %429 = load i64, ptr %428, align 1
  %430 = xor i64 %427, %421
  %431 = xor i64 %429, %423
  %432 = zext i64 %430 to i128
  %433 = zext i64 %431 to i128
  %434 = mul nuw i128 %433, %432
  %435 = lshr i128 %434, 64
  %436 = xor i128 %435, %434
  %437 = trunc i128 %436 to i64
  %438 = add i64 %415, %437
  %439 = add i64 %426, %424
  %440 = xor i64 %438, %439
  %441 = getelementptr i8, ptr %419, i64 -112
  %442 = load i64, ptr %441, align 1
  %443 = getelementptr i8, ptr %419, i64 -104
  %444 = load i64, ptr %443, align 1
  %445 = xor i64 %442, %424
  %446 = xor i64 %444, %426
  %447 = zext i64 %445 to i128
  %448 = zext i64 %446 to i128
  %449 = mul nuw i128 %448, %447
  %450 = lshr i128 %449, 64
  %451 = xor i128 %450, %449
  %452 = trunc i128 %451 to i64
  %453 = add i64 %414, %452
  %454 = add i64 %423, %421
  %455 = xor i64 %453, %454
  %456 = add nuw nsw i64 %413, 1
  %457 = icmp eq i64 %456, %411
  br i1 %457, label %458, label %412

458:                                              ; preds = %412, %277
  %459 = phi i64 [ %403, %277 ], [ %440, %412 ]
  %460 = phi i64 [ %408, %277 ], [ %455, %412 ]
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %462 = getelementptr inbounds i8, ptr %461, i64 -16
  %463 = getelementptr inbounds i8, ptr %461, i64 -32
  %464 = load i64, ptr %462, align 1
  %465 = getelementptr i8, ptr %461, i64 -8
  %466 = load i64, ptr %465, align 1
  %467 = load i64, ptr %463, align 1
  %468 = getelementptr i8, ptr %461, i64 -24
  %469 = load i64, ptr %468, align 1
  %470 = xor i64 %464, 5695865814404364607
  %471 = xor i64 %466, 6464017090953185821
  %472 = zext i64 %470 to i128
  %473 = zext i64 %471 to i128
  %474 = mul nuw i128 %473, %472
  %475 = lshr i128 %474, 64
  %476 = xor i128 %475, %474
  %477 = trunc i128 %476 to i64
  %478 = add i64 %459, %477
  %479 = add i64 %469, %467
  %480 = xor i64 %478, %479
  %481 = xor i64 %467, 8320639771003045937
  %482 = xor i64 %469, -1453760514566526364
  %483 = zext i64 %481 to i128
  %484 = zext i64 %482 to i128
  %485 = mul nuw i128 %484, %483
  %486 = lshr i128 %485, 64
  %487 = xor i128 %486, %485
  %488 = trunc i128 %487 to i64
  %489 = add i64 %460, %488
  %490 = add i64 %466, %464
  %491 = xor i64 %489, %490
  %492 = add i64 %491, %480
  %493 = mul i64 %480, -7046029288634856825
  %494 = mul i64 %491, -8796714831421723037
  %495 = mul i64 %1, -4417276706812531889
  %496 = add i64 %493, %495
  %497 = add i64 %496, %494
  %498 = lshr i64 %492, 37
  %499 = xor i64 %498, %492
  %500 = mul i64 %499, 1609587929392839161
  %501 = lshr i64 %500, 32
  %502 = xor i64 %501, %500
  %503 = lshr i64 %497, 37
  %504 = xor i64 %503, %497
  %505 = mul i64 %504, 1609587929392839161
  %506 = lshr i64 %505, 32
  %507 = xor i64 %506, %505
  %508 = sub i64 0, %507
  br label %748

509:                                              ; preds = %275
  %510 = lshr i64 %1, 10
  %511 = icmp ult i64 %1, 1024
  br i1 %511, label %577, label %512

512:                                              ; preds = %509, %554
  %513 = phi <4 x i64> [ %574, %554 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %509 ]
  %514 = phi <4 x i64> [ %564, %554 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %509 ]
  %515 = phi i64 [ %575, %554 ], [ 0, %509 ]
  %516 = shl i64 %515, 10
  %517 = getelementptr inbounds nuw i8, ptr %0, i64 %516
  br label %518

518:                                              ; preds = %518, %512
  %519 = phi <4 x i64> [ %551, %518 ], [ %513, %512 ]
  %520 = phi <4 x i64> [ %537, %518 ], [ %514, %512 ]
  %521 = phi i64 [ %552, %518 ], [ 0, %512 ]
  %522 = shl i64 %521, 6
  %523 = getelementptr inbounds nuw i8, ptr %517, i64 %522
  %524 = shl i64 %521, 3
  %525 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %524
  %526 = load <4 x i64>, ptr %523, align 1
  %527 = load <4 x i64>, ptr %525, align 8
  %528 = xor <4 x i64> %527, %526
  %529 = bitcast <4 x i64> %528 to <8 x i32>
  %530 = shufflevector <8 x i32> %529, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %531 = bitcast <8 x i32> %530 to <4 x i64>
  %532 = and <4 x i64> %528, splat (i64 4294967295)
  %533 = and <4 x i64> %531, splat (i64 4294967295)
  %534 = mul nuw <4 x i64> %533, %532
  %535 = shufflevector <4 x i64> %526, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %536 = add <4 x i64> %520, %535
  %537 = add <4 x i64> %536, %534
  %538 = getelementptr inbounds nuw i8, ptr %523, i64 32
  %539 = load <4 x i64>, ptr %538, align 1
  %540 = getelementptr inbounds nuw i8, ptr %525, i64 32
  %541 = load <4 x i64>, ptr %540, align 8
  %542 = xor <4 x i64> %541, %539
  %543 = bitcast <4 x i64> %542 to <8 x i32>
  %544 = shufflevector <8 x i32> %543, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %545 = bitcast <8 x i32> %544 to <4 x i64>
  %546 = and <4 x i64> %542, splat (i64 4294967295)
  %547 = and <4 x i64> %545, splat (i64 4294967295)
  %548 = mul nuw <4 x i64> %547, %546
  %549 = shufflevector <4 x i64> %539, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %550 = add <4 x i64> %519, %549
  %551 = add <4 x i64> %550, %548
  %552 = add nuw nsw i64 %521, 1
  %553 = icmp eq i64 %552, 16
  br i1 %553, label %554, label %518

554:                                              ; preds = %518
  %555 = lshr <4 x i64> %537, splat (i64 47)
  %556 = xor <4 x i64> %537, %555
  %557 = xor <4 x i64> %556, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %558 = bitcast <4 x i64> %557 to <8 x i32>
  %559 = shufflevector <8 x i32> %558, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %560 = bitcast <8 x i32> %559 to <4 x i64>
  %561 = and <4 x i64> %557, splat (i64 4294967295)
  %562 = mul nuw <4 x i64> %561, splat (i64 2654435761)
  %563 = mul <4 x i64> %560, splat (i64 -7046029290881679360)
  %564 = add <4 x i64> %563, %562
  %565 = lshr <4 x i64> %551, splat (i64 47)
  %566 = xor <4 x i64> %551, %565
  %567 = xor <4 x i64> %566, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %568 = bitcast <4 x i64> %567 to <8 x i32>
  %569 = shufflevector <8 x i32> %568, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %570 = bitcast <8 x i32> %569 to <4 x i64>
  %571 = and <4 x i64> %567, splat (i64 4294967295)
  %572 = mul nuw <4 x i64> %571, splat (i64 2654435761)
  %573 = mul <4 x i64> %570, splat (i64 -7046029290881679360)
  %574 = add <4 x i64> %573, %572
  %575 = add nuw nsw i64 %515, 1
  %576 = icmp eq i64 %575, %510
  br i1 %576, label %577, label %512

577:                                              ; preds = %554, %509
  %578 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %509 ], [ %574, %554 ]
  %579 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %509 ], [ %564, %554 ]
  %580 = and i64 %1, -1024
  %581 = and i64 %1, 1023
  %582 = lshr i64 %581, 6
  %583 = getelementptr inbounds nuw i8, ptr %0, i64 %580
  %584 = icmp samesign ult i64 %581, 64
  br i1 %584, label %621, label %585

585:                                              ; preds = %577, %585
  %586 = phi <4 x i64> [ %618, %585 ], [ %578, %577 ]
  %587 = phi <4 x i64> [ %604, %585 ], [ %579, %577 ]
  %588 = phi i64 [ %619, %585 ], [ 0, %577 ]
  %589 = shl i64 %588, 6
  %590 = getelementptr inbounds nuw i8, ptr %583, i64 %589
  %591 = shl i64 %588, 3
  %592 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %591
  %593 = load <4 x i64>, ptr %590, align 1
  %594 = load <4 x i64>, ptr %592, align 8
  %595 = xor <4 x i64> %594, %593
  %596 = bitcast <4 x i64> %595 to <8 x i32>
  %597 = shufflevector <8 x i32> %596, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %598 = bitcast <8 x i32> %597 to <4 x i64>
  %599 = and <4 x i64> %595, splat (i64 4294967295)
  %600 = and <4 x i64> %598, splat (i64 4294967295)
  %601 = mul nuw <4 x i64> %600, %599
  %602 = shufflevector <4 x i64> %593, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %603 = add <4 x i64> %587, %602
  %604 = add <4 x i64> %603, %601
  %605 = getelementptr inbounds nuw i8, ptr %590, i64 32
  %606 = load <4 x i64>, ptr %605, align 1
  %607 = getelementptr inbounds nuw i8, ptr %592, i64 32
  %608 = load <4 x i64>, ptr %607, align 8
  %609 = xor <4 x i64> %608, %606
  %610 = bitcast <4 x i64> %609 to <8 x i32>
  %611 = shufflevector <8 x i32> %610, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %612 = bitcast <8 x i32> %611 to <4 x i64>
  %613 = and <4 x i64> %609, splat (i64 4294967295)
  %614 = and <4 x i64> %612, splat (i64 4294967295)
  %615 = mul nuw <4 x i64> %614, %613
  %616 = shufflevector <4 x i64> %606, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %617 = add <4 x i64> %586, %616
  %618 = add <4 x i64> %617, %615
  %619 = add nuw nsw i64 %588, 1
  %620 = icmp eq i64 %619, %582
  br i1 %620, label %621, label %585

621:                                              ; preds = %585, %577
  %622 = phi <4 x i64> [ %578, %577 ], [ %618, %585 ]
  %623 = phi <4 x i64> [ %579, %577 ], [ %604, %585 ]
  %624 = and i64 %1, 63
  %625 = icmp eq i64 %624, 0
  br i1 %625, label %652, label %626

626:                                              ; preds = %621
  %627 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %628 = getelementptr inbounds i8, ptr %627, i64 -64
  %629 = load <4 x i64>, ptr %628, align 1
  %630 = xor <4 x i64> %629, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %631 = bitcast <4 x i64> %630 to <8 x i32>
  %632 = shufflevector <8 x i32> %631, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %633 = bitcast <8 x i32> %632 to <4 x i64>
  %634 = and <4 x i64> %630, splat (i64 4294967295)
  %635 = and <4 x i64> %633, splat (i64 4294967295)
  %636 = mul nuw <4 x i64> %635, %634
  %637 = shufflevector <4 x i64> %629, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %638 = add <4 x i64> %623, %637
  %639 = add <4 x i64> %638, %636
  %640 = getelementptr inbounds i8, ptr %627, i64 -32
  %641 = load <4 x i64>, ptr %640, align 1
  %642 = xor <4 x i64> %641, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %643 = bitcast <4 x i64> %642 to <8 x i32>
  %644 = shufflevector <8 x i32> %643, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %645 = bitcast <8 x i32> %644 to <4 x i64>
  %646 = and <4 x i64> %642, splat (i64 4294967295)
  %647 = and <4 x i64> %645, splat (i64 4294967295)
  %648 = mul nuw <4 x i64> %647, %646
  %649 = shufflevector <4 x i64> %641, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %650 = add <4 x i64> %622, %649
  %651 = add <4 x i64> %650, %648
  br label %652

652:                                              ; preds = %621, %626
  %653 = phi <4 x i64> [ %651, %626 ], [ %622, %621 ]
  %654 = phi <4 x i64> [ %639, %626 ], [ %623, %621 ]
  %655 = mul i64 %1, -7046029288634856825
  %656 = extractelement <4 x i64> %654, i64 0
  %657 = extractelement <4 x i64> %654, i64 1
  %658 = xor i64 %656, 7914194659941938988
  %659 = xor i64 %657, -6611157965513653271
  %660 = zext i64 %658 to i128
  %661 = zext i64 %659 to i128
  %662 = mul nuw i128 %661, %660
  %663 = lshr i128 %662, 64
  %664 = xor i128 %663, %662
  %665 = trunc i128 %664 to i64
  %666 = extractelement <4 x i64> %654, i64 2
  %667 = extractelement <4 x i64> %654, i64 3
  %668 = xor i64 %666, -1839215637059881052
  %669 = xor i64 %667, -3433288310154277810
  %670 = zext i64 %668 to i128
  %671 = zext i64 %669 to i128
  %672 = mul nuw i128 %671, %670
  %673 = lshr i128 %672, 64
  %674 = xor i128 %673, %672
  %675 = trunc i128 %674 to i64
  %676 = extractelement <4 x i64> %653, i64 0
  %677 = extractelement <4 x i64> %653, i64 1
  %678 = xor i64 %676, 5046485836271438973
  %679 = xor i64 %677, -8055285457383852172
  %680 = zext i64 %678 to i128
  %681 = zext i64 %679 to i128
  %682 = mul nuw i128 %681, %680
  %683 = lshr i128 %682, 64
  %684 = xor i128 %683, %682
  %685 = trunc i128 %684 to i64
  %686 = extractelement <4 x i64> %653, i64 2
  %687 = extractelement <4 x i64> %653, i64 3
  %688 = xor i64 %686, 5920048007935066598
  %689 = xor i64 %687, 7336514198459093435
  %690 = zext i64 %688 to i128
  %691 = zext i64 %689 to i128
  %692 = mul nuw i128 %691, %690
  %693 = lshr i128 %692, 64
  %694 = xor i128 %693, %692
  %695 = trunc i128 %694 to i64
  %696 = add i64 %655, %685
  %697 = add i64 %696, %695
  %698 = add i64 %697, %665
  %699 = add i64 %698, %675
  %700 = lshr i64 %699, 37
  %701 = xor i64 %700, %699
  %702 = mul i64 %701, 1609587929392839161
  %703 = lshr i64 %702, 32
  %704 = xor i64 %703, %702
  %705 = mul i64 %1, -4417276706812531889
  %706 = xor i64 %705, -1
  %707 = xor i64 %656, -2753530472436770380
  %708 = xor i64 %657, 3784058077962335096
  %709 = zext i64 %707 to i128
  %710 = zext i64 %708 to i128
  %711 = mul nuw i128 %710, %709
  %712 = lshr i128 %711, 64
  %713 = xor i128 %712, %711
  %714 = trunc i128 %713 to i64
  %715 = xor i64 %666, -360392965937173549
  %716 = xor i64 %667, -5237161843349560557
  %717 = zext i64 %715 to i128
  %718 = zext i64 %716 to i128
  %719 = mul nuw i128 %718, %717
  %720 = lshr i128 %719, 64
  %721 = xor i128 %720, %719
  %722 = trunc i128 %721 to i64
  %723 = xor i64 %676, 2965150961192524528
  %724 = xor i64 %677, 9032178055121889492
  %725 = zext i64 %723 to i128
  %726 = zext i64 %724 to i128
  %727 = mul nuw i128 %726, %725
  %728 = lshr i128 %727, 64
  %729 = xor i128 %728, %727
  %730 = trunc i128 %729 to i64
  %731 = xor i64 %686, 8850058120466833735
  %732 = xor i64 %687, -7669846995664752176
  %733 = zext i64 %731 to i128
  %734 = zext i64 %732 to i128
  %735 = mul nuw i128 %734, %733
  %736 = lshr i128 %735, 64
  %737 = xor i128 %736, %735
  %738 = trunc i128 %737 to i64
  %739 = add i64 %730, %706
  %740 = add i64 %739, %738
  %741 = add i64 %740, %714
  %742 = add i64 %741, %722
  %743 = lshr i64 %742, 37
  %744 = xor i64 %743, %742
  %745 = mul i64 %744, 1609587929392839161
  %746 = lshr i64 %745, 32
  %747 = xor i64 %746, %745
  br label %748

748:                                              ; preds = %82, %80, %44, %6, %652, %458, %225
  %749 = phi i64 [ %268, %225 ], [ %502, %458 ], [ %704, %652 ], [ %36, %6 ], [ %74, %44 ], [ %111, %82 ], [ 0, %80 ]
  %750 = phi i64 [ %274, %225 ], [ %508, %458 ], [ %747, %652 ], [ %41, %6 ], [ %79, %44 ], [ %116, %82 ], [ 0, %80 ]
  %751 = insertvalue { i64, i64 } poison, i64 %749, 0
  %752 = insertvalue { i64, i64 } %751, i64 %750, 1
  ret { i64, i64 } %752
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSecret(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #14 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %128

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %47

8:                                                ; preds = %6
  %9 = load i64, ptr %2, align 1
  %10 = getelementptr i8, ptr %2, i64 8
  %11 = load i64, ptr %10, align 1
  %12 = load i64, ptr %0, align 1
  %13 = xor i64 %12, %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %14, i64 -8
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %11
  %18 = xor i64 %13, %17
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
  br label %896

47:                                               ; preds = %6
  %48 = icmp samesign ugt i64 %1, 3
  br i1 %48, label %49, label %88

49:                                               ; preds = %47
  %50 = load i64, ptr %2, align 1
  %51 = getelementptr i8, ptr %2, i64 8
  %52 = load i64, ptr %51, align 1
  %53 = load i32, ptr %0, align 1
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = zext i32 %53 to i64
  %58 = zext i32 %56 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %57
  %61 = tail call noundef i64 @llvm.bswap.i64(i64 %60)
  %62 = xor i64 %60, %50
  %63 = xor i64 %61, %52
  %64 = lshr i64 %62, 51
  %65 = xor i64 %64, %62
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
  br label %896

88:                                               ; preds = %47
  %89 = icmp eq i64 %1, 0
  br i1 %89, label %896, label %90

90:                                               ; preds = %88
  %91 = load i32, ptr %2, align 1
  %92 = getelementptr i8, ptr %2, i64 4
  %93 = load i32, ptr %92, align 1
  %94 = load i8, ptr %0, align 1
  %95 = lshr i64 %1, 1
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 %95
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr i8, ptr %0, i64 %1
  %99 = getelementptr i8, ptr %98, i64 -1
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %94 to i32
  %102 = zext i8 %97 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = or disjoint i32 %103, %101
  %105 = zext i8 %100 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = or disjoint i32 %104, %106
  %108 = trunc nuw nsw i64 %1 to i32
  %109 = shl nuw nsw i32 %108, 24
  %110 = or disjoint i32 %107, %109
  %111 = tail call noundef i32 @llvm.bswap.i32(i32 %110)
  %112 = xor i32 %110, %91
  %113 = zext i32 %112 to i64
  %114 = xor i32 %111, %93
  %115 = zext i32 %114 to i64
  %116 = mul i64 %113, -7046029288634856825
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
  br label %896

128:                                              ; preds = %4
  %129 = icmp ult i64 %1, 129
  br i1 %129, label %130, label %317

130:                                              ; preds = %128
  %131 = mul i64 %1, -7046029288634856825
  %132 = icmp samesign ugt i64 %1, 32
  br i1 %132, label %133, label %260

133:                                              ; preds = %130
  %134 = icmp samesign ugt i64 %1, 64
  br i1 %134, label %135, label %218

135:                                              ; preds = %133
  %136 = icmp samesign ugt i64 %1, 96
  br i1 %136, label %137, label %176

137:                                              ; preds = %135
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %140 = getelementptr inbounds i8, ptr %139, i64 -64
  %141 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %142 = load i64, ptr %138, align 1
  %143 = getelementptr i8, ptr %0, i64 56
  %144 = load i64, ptr %143, align 1
  %145 = load i64, ptr %140, align 1
  %146 = getelementptr i8, ptr %139, i64 -56
  %147 = load i64, ptr %146, align 1
  %148 = load i64, ptr %141, align 1
  %149 = getelementptr i8, ptr %2, i64 104
  %150 = load i64, ptr %149, align 1
  %151 = xor i64 %148, %142
  %152 = xor i64 %150, %144
  %153 = zext i64 %151 to i128
  %154 = zext i64 %152 to i128
  %155 = mul nuw i128 %154, %153
  %156 = lshr i128 %155, 64
  %157 = xor i128 %156, %155
  %158 = trunc i128 %157 to i64
  %159 = add i64 %131, %158
  %160 = add i64 %147, %145
  %161 = xor i64 %159, %160
  %162 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %163 = load i64, ptr %162, align 1
  %164 = getelementptr i8, ptr %2, i64 120
  %165 = load i64, ptr %164, align 1
  %166 = xor i64 %163, %145
  %167 = xor i64 %165, %147
  %168 = zext i64 %166 to i128
  %169 = zext i64 %167 to i128
  %170 = mul nuw i128 %169, %168
  %171 = lshr i128 %170, 64
  %172 = xor i128 %171, %170
  %173 = trunc i128 %172 to i64
  %174 = add i64 %144, %142
  %175 = xor i64 %174, %173
  br label %176

176:                                              ; preds = %137, %135
  %177 = phi i64 [ %161, %137 ], [ %131, %135 ]
  %178 = phi i64 [ %175, %137 ], [ 0, %135 ]
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %181 = getelementptr inbounds i8, ptr %180, i64 -48
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %183 = load i64, ptr %179, align 1
  %184 = getelementptr i8, ptr %0, i64 40
  %185 = load i64, ptr %184, align 1
  %186 = load i64, ptr %181, align 1
  %187 = getelementptr i8, ptr %180, i64 -40
  %188 = load i64, ptr %187, align 1
  %189 = load i64, ptr %182, align 1
  %190 = getelementptr i8, ptr %2, i64 72
  %191 = load i64, ptr %190, align 1
  %192 = xor i64 %189, %183
  %193 = xor i64 %191, %185
  %194 = zext i64 %192 to i128
  %195 = zext i64 %193 to i128
  %196 = mul nuw i128 %195, %194
  %197 = lshr i128 %196, 64
  %198 = xor i128 %197, %196
  %199 = trunc i128 %198 to i64
  %200 = add i64 %177, %199
  %201 = add i64 %188, %186
  %202 = xor i64 %200, %201
  %203 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %204 = load i64, ptr %203, align 1
  %205 = getelementptr i8, ptr %2, i64 88
  %206 = load i64, ptr %205, align 1
  %207 = xor i64 %204, %186
  %208 = xor i64 %206, %188
  %209 = zext i64 %207 to i128
  %210 = zext i64 %208 to i128
  %211 = mul nuw i128 %210, %209
  %212 = lshr i128 %211, 64
  %213 = xor i128 %212, %211
  %214 = trunc i128 %213 to i64
  %215 = add i64 %178, %214
  %216 = add i64 %185, %183
  %217 = xor i64 %215, %216
  br label %218

218:                                              ; preds = %176, %133
  %219 = phi i64 [ %202, %176 ], [ %131, %133 ]
  %220 = phi i64 [ %217, %176 ], [ 0, %133 ]
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %223 = getelementptr inbounds i8, ptr %222, i64 -32
  %224 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %225 = load i64, ptr %221, align 1
  %226 = getelementptr i8, ptr %0, i64 24
  %227 = load i64, ptr %226, align 1
  %228 = load i64, ptr %223, align 1
  %229 = getelementptr i8, ptr %222, i64 -24
  %230 = load i64, ptr %229, align 1
  %231 = load i64, ptr %224, align 1
  %232 = getelementptr i8, ptr %2, i64 40
  %233 = load i64, ptr %232, align 1
  %234 = xor i64 %231, %225
  %235 = xor i64 %233, %227
  %236 = zext i64 %234 to i128
  %237 = zext i64 %235 to i128
  %238 = mul nuw i128 %237, %236
  %239 = lshr i128 %238, 64
  %240 = xor i128 %239, %238
  %241 = trunc i128 %240 to i64
  %242 = add i64 %219, %241
  %243 = add i64 %230, %228
  %244 = xor i64 %242, %243
  %245 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %246 = load i64, ptr %245, align 1
  %247 = getelementptr i8, ptr %2, i64 56
  %248 = load i64, ptr %247, align 1
  %249 = xor i64 %246, %228
  %250 = xor i64 %248, %230
  %251 = zext i64 %249 to i128
  %252 = zext i64 %250 to i128
  %253 = mul nuw i128 %252, %251
  %254 = lshr i128 %253, 64
  %255 = xor i128 %254, %253
  %256 = trunc i128 %255 to i64
  %257 = add i64 %220, %256
  %258 = add i64 %227, %225
  %259 = xor i64 %257, %258
  br label %260

260:                                              ; preds = %130, %218
  %261 = phi i64 [ %244, %218 ], [ %131, %130 ]
  %262 = phi i64 [ %259, %218 ], [ 0, %130 ]
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %264 = getelementptr inbounds i8, ptr %263, i64 -16
  %265 = load i64, ptr %0, align 1
  %266 = getelementptr i8, ptr %0, i64 8
  %267 = load i64, ptr %266, align 1
  %268 = load i64, ptr %264, align 1
  %269 = getelementptr i8, ptr %263, i64 -8
  %270 = load i64, ptr %269, align 1
  %271 = load i64, ptr %2, align 1
  %272 = getelementptr i8, ptr %2, i64 8
  %273 = load i64, ptr %272, align 1
  %274 = xor i64 %271, %265
  %275 = xor i64 %273, %267
  %276 = zext i64 %274 to i128
  %277 = zext i64 %275 to i128
  %278 = mul nuw i128 %277, %276
  %279 = lshr i128 %278, 64
  %280 = xor i128 %279, %278
  %281 = trunc i128 %280 to i64
  %282 = add i64 %261, %281
  %283 = add i64 %270, %268
  %284 = xor i64 %282, %283
  %285 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %286 = load i64, ptr %285, align 1
  %287 = getelementptr i8, ptr %2, i64 24
  %288 = load i64, ptr %287, align 1
  %289 = xor i64 %286, %268
  %290 = xor i64 %288, %270
  %291 = zext i64 %289 to i128
  %292 = zext i64 %290 to i128
  %293 = mul nuw i128 %292, %291
  %294 = lshr i128 %293, 64
  %295 = xor i128 %294, %293
  %296 = trunc i128 %295 to i64
  %297 = add i64 %262, %296
  %298 = add i64 %267, %265
  %299 = xor i64 %297, %298
  %300 = add i64 %299, %284
  %301 = mul i64 %284, -7046029288634856825
  %302 = mul i64 %299, -8796714831421723037
  %303 = mul i64 %1, -4417276706812531889
  %304 = add i64 %301, %303
  %305 = add i64 %304, %302
  %306 = lshr i64 %300, 37
  %307 = xor i64 %306, %300
  %308 = mul i64 %307, 1609587929392839161
  %309 = lshr i64 %308, 32
  %310 = xor i64 %309, %308
  %311 = lshr i64 %305, 37
  %312 = xor i64 %311, %305
  %313 = mul i64 %312, 1609587929392839161
  %314 = lshr i64 %313, 32
  %315 = xor i64 %314, %313
  %316 = sub i64 0, %315
  br label %896

317:                                              ; preds = %128
  %318 = icmp ult i64 %1, 241
  br i1 %318, label %319, label %591

319:                                              ; preds = %317
  %320 = trunc nuw nsw i64 %1 to i32
  %321 = mul i64 %1, -7046029288634856825
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %323 = load i64, ptr %0, align 1
  %324 = getelementptr i8, ptr %0, i64 8
  %325 = load i64, ptr %324, align 1
  %326 = load i64, ptr %322, align 1
  %327 = getelementptr i8, ptr %0, i64 24
  %328 = load i64, ptr %327, align 1
  %329 = load i64, ptr %2, align 1
  %330 = getelementptr i8, ptr %2, i64 8
  %331 = load i64, ptr %330, align 1
  %332 = xor i64 %329, %323
  %333 = xor i64 %331, %325
  %334 = zext i64 %332 to i128
  %335 = zext i64 %333 to i128
  %336 = mul nuw i128 %335, %334
  %337 = lshr i128 %336, 64
  %338 = xor i128 %337, %336
  %339 = trunc i128 %338 to i64
  %340 = add i64 %321, %339
  %341 = add i64 %328, %326
  %342 = xor i64 %340, %341
  %343 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %344 = load i64, ptr %343, align 1
  %345 = getelementptr i8, ptr %2, i64 24
  %346 = load i64, ptr %345, align 1
  %347 = xor i64 %344, %326
  %348 = xor i64 %346, %328
  %349 = zext i64 %347 to i128
  %350 = zext i64 %348 to i128
  %351 = mul nuw i128 %350, %349
  %352 = lshr i128 %351, 64
  %353 = xor i128 %352, %351
  %354 = trunc i128 %353 to i64
  %355 = add i64 %325, %323
  %356 = xor i64 %355, %354
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %359 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %360 = load i64, ptr %357, align 1
  %361 = getelementptr i8, ptr %0, i64 40
  %362 = load i64, ptr %361, align 1
  %363 = load i64, ptr %358, align 1
  %364 = getelementptr i8, ptr %0, i64 56
  %365 = load i64, ptr %364, align 1
  %366 = load i64, ptr %359, align 1
  %367 = getelementptr i8, ptr %2, i64 40
  %368 = load i64, ptr %367, align 1
  %369 = xor i64 %366, %360
  %370 = xor i64 %368, %362
  %371 = zext i64 %369 to i128
  %372 = zext i64 %370 to i128
  %373 = mul nuw i128 %372, %371
  %374 = lshr i128 %373, 64
  %375 = xor i128 %374, %373
  %376 = trunc i128 %375 to i64
  %377 = add i64 %342, %376
  %378 = add i64 %365, %363
  %379 = xor i64 %377, %378
  %380 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %381 = load i64, ptr %380, align 1
  %382 = getelementptr i8, ptr %2, i64 56
  %383 = load i64, ptr %382, align 1
  %384 = xor i64 %381, %363
  %385 = xor i64 %383, %365
  %386 = zext i64 %384 to i128
  %387 = zext i64 %385 to i128
  %388 = mul nuw i128 %387, %386
  %389 = lshr i128 %388, 64
  %390 = xor i128 %389, %388
  %391 = trunc i128 %390 to i64
  %392 = add i64 %356, %391
  %393 = add i64 %362, %360
  %394 = xor i64 %392, %393
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %397 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %398 = load i64, ptr %395, align 1
  %399 = getelementptr i8, ptr %0, i64 72
  %400 = load i64, ptr %399, align 1
  %401 = load i64, ptr %396, align 1
  %402 = getelementptr i8, ptr %0, i64 88
  %403 = load i64, ptr %402, align 1
  %404 = load i64, ptr %397, align 1
  %405 = getelementptr i8, ptr %2, i64 72
  %406 = load i64, ptr %405, align 1
  %407 = xor i64 %404, %398
  %408 = xor i64 %406, %400
  %409 = zext i64 %407 to i128
  %410 = zext i64 %408 to i128
  %411 = mul nuw i128 %410, %409
  %412 = lshr i128 %411, 64
  %413 = xor i128 %412, %411
  %414 = trunc i128 %413 to i64
  %415 = add i64 %379, %414
  %416 = add i64 %403, %401
  %417 = xor i64 %415, %416
  %418 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %419 = load i64, ptr %418, align 1
  %420 = getelementptr i8, ptr %2, i64 88
  %421 = load i64, ptr %420, align 1
  %422 = xor i64 %419, %401
  %423 = xor i64 %421, %403
  %424 = zext i64 %422 to i128
  %425 = zext i64 %423 to i128
  %426 = mul nuw i128 %425, %424
  %427 = lshr i128 %426, 64
  %428 = xor i128 %427, %426
  %429 = trunc i128 %428 to i64
  %430 = add i64 %394, %429
  %431 = add i64 %400, %398
  %432 = xor i64 %430, %431
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %435 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %436 = load i64, ptr %433, align 1
  %437 = getelementptr i8, ptr %0, i64 104
  %438 = load i64, ptr %437, align 1
  %439 = load i64, ptr %434, align 1
  %440 = getelementptr i8, ptr %0, i64 120
  %441 = load i64, ptr %440, align 1
  %442 = load i64, ptr %435, align 1
  %443 = getelementptr i8, ptr %2, i64 104
  %444 = load i64, ptr %443, align 1
  %445 = xor i64 %442, %436
  %446 = xor i64 %444, %438
  %447 = zext i64 %445 to i128
  %448 = zext i64 %446 to i128
  %449 = mul nuw i128 %448, %447
  %450 = lshr i128 %449, 64
  %451 = xor i128 %450, %449
  %452 = trunc i128 %451 to i64
  %453 = add i64 %417, %452
  %454 = add i64 %441, %439
  %455 = xor i64 %453, %454
  %456 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %457 = load i64, ptr %456, align 1
  %458 = getelementptr i8, ptr %2, i64 120
  %459 = load i64, ptr %458, align 1
  %460 = xor i64 %457, %439
  %461 = xor i64 %459, %441
  %462 = zext i64 %460 to i128
  %463 = zext i64 %461 to i128
  %464 = mul nuw i128 %463, %462
  %465 = lshr i128 %464, 64
  %466 = xor i128 %465, %464
  %467 = trunc i128 %466 to i64
  %468 = add i64 %432, %467
  %469 = add i64 %438, %436
  %470 = xor i64 %468, %469
  %471 = lshr i32 %320, 5
  %472 = lshr i64 %455, 37
  %473 = xor i64 %472, %455
  %474 = mul i64 %473, 1609587929392839161
  %475 = lshr i64 %474, 32
  %476 = xor i64 %475, %474
  %477 = lshr i64 %470, 37
  %478 = xor i64 %477, %470
  %479 = mul i64 %478, 1609587929392839161
  %480 = lshr i64 %479, 32
  %481 = xor i64 %480, %479
  %482 = icmp eq i32 %471, 4
  br i1 %482, label %532, label %483

483:                                              ; preds = %319
  %484 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %485 = zext nneg i32 %471 to i64
  br label %486

486:                                              ; preds = %486, %483
  %487 = phi i64 [ 4, %483 ], [ %530, %486 ]
  %488 = phi i64 [ %481, %483 ], [ %529, %486 ]
  %489 = phi i64 [ %476, %483 ], [ %514, %486 ]
  %490 = shl nsw i64 %487, 5
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 %490
  %492 = getelementptr inbounds nuw i8, ptr %491, i64 16
  %493 = getelementptr i8, ptr %484, i64 %490
  %494 = getelementptr i8, ptr %493, i64 -128
  %495 = load i64, ptr %491, align 1
  %496 = getelementptr i8, ptr %491, i64 8
  %497 = load i64, ptr %496, align 1
  %498 = load i64, ptr %492, align 1
  %499 = getelementptr i8, ptr %491, i64 24
  %500 = load i64, ptr %499, align 1
  %501 = load i64, ptr %494, align 1
  %502 = getelementptr i8, ptr %493, i64 -120
  %503 = load i64, ptr %502, align 1
  %504 = xor i64 %501, %495
  %505 = xor i64 %503, %497
  %506 = zext i64 %504 to i128
  %507 = zext i64 %505 to i128
  %508 = mul nuw i128 %507, %506
  %509 = lshr i128 %508, 64
  %510 = xor i128 %509, %508
  %511 = trunc i128 %510 to i64
  %512 = add i64 %489, %511
  %513 = add i64 %500, %498
  %514 = xor i64 %512, %513
  %515 = getelementptr i8, ptr %493, i64 -112
  %516 = load i64, ptr %515, align 1
  %517 = getelementptr i8, ptr %493, i64 -104
  %518 = load i64, ptr %517, align 1
  %519 = xor i64 %516, %498
  %520 = xor i64 %518, %500
  %521 = zext i64 %519 to i128
  %522 = zext i64 %520 to i128
  %523 = mul nuw i128 %522, %521
  %524 = lshr i128 %523, 64
  %525 = xor i128 %524, %523
  %526 = trunc i128 %525 to i64
  %527 = add i64 %488, %526
  %528 = add i64 %497, %495
  %529 = xor i64 %527, %528
  %530 = add nuw nsw i64 %487, 1
  %531 = icmp eq i64 %530, %485
  br i1 %531, label %532, label %486

532:                                              ; preds = %486, %319
  %533 = phi i64 [ %476, %319 ], [ %514, %486 ]
  %534 = phi i64 [ %481, %319 ], [ %529, %486 ]
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %536 = getelementptr inbounds i8, ptr %535, i64 -16
  %537 = getelementptr inbounds i8, ptr %535, i64 -32
  %538 = getelementptr inbounds nuw i8, ptr %2, i64 103
  %539 = load i64, ptr %536, align 1
  %540 = getelementptr i8, ptr %535, i64 -8
  %541 = load i64, ptr %540, align 1
  %542 = load i64, ptr %537, align 1
  %543 = getelementptr i8, ptr %535, i64 -24
  %544 = load i64, ptr %543, align 1
  %545 = load i64, ptr %538, align 1
  %546 = getelementptr i8, ptr %2, i64 111
  %547 = load i64, ptr %546, align 1
  %548 = xor i64 %545, %539
  %549 = xor i64 %547, %541
  %550 = zext i64 %548 to i128
  %551 = zext i64 %549 to i128
  %552 = mul nuw i128 %551, %550
  %553 = lshr i128 %552, 64
  %554 = xor i128 %553, %552
  %555 = trunc i128 %554 to i64
  %556 = add i64 %533, %555
  %557 = add i64 %544, %542
  %558 = xor i64 %556, %557
  %559 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %560 = load i64, ptr %559, align 1
  %561 = getelementptr i8, ptr %2, i64 127
  %562 = load i64, ptr %561, align 1
  %563 = xor i64 %560, %542
  %564 = xor i64 %562, %544
  %565 = zext i64 %563 to i128
  %566 = zext i64 %564 to i128
  %567 = mul nuw i128 %566, %565
  %568 = lshr i128 %567, 64
  %569 = xor i128 %568, %567
  %570 = trunc i128 %569 to i64
  %571 = add i64 %534, %570
  %572 = add i64 %541, %539
  %573 = xor i64 %571, %572
  %574 = add i64 %573, %558
  %575 = mul i64 %558, -7046029288634856825
  %576 = mul i64 %573, -8796714831421723037
  %577 = mul i64 %1, -4417276706812531889
  %578 = add i64 %575, %577
  %579 = add i64 %578, %576
  %580 = lshr i64 %574, 37
  %581 = xor i64 %580, %574
  %582 = mul i64 %581, 1609587929392839161
  %583 = lshr i64 %582, 32
  %584 = xor i64 %583, %582
  %585 = lshr i64 %579, 37
  %586 = xor i64 %585, %579
  %587 = mul i64 %586, 1609587929392839161
  %588 = lshr i64 %587, 32
  %589 = xor i64 %588, %587
  %590 = sub i64 0, %589
  br label %896

591:                                              ; preds = %317
  %592 = add i64 %3, -64
  %593 = lshr i64 %592, 3
  %594 = shl i64 %593, 6
  %595 = udiv i64 %1, %594
  %596 = urem i64 %1, %594
  %597 = icmp ugt i64 %594, %1
  br i1 %597, label %672, label %598

598:                                              ; preds = %591
  %599 = icmp ult i64 %592, 8
  %600 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %601 = getelementptr inbounds i8, ptr %600, i64 -64
  %602 = load <4 x i64>, ptr %601, align 1
  %603 = getelementptr inbounds i8, ptr %600, i64 -32
  %604 = load <4 x i64>, ptr %603, align 1
  br label %605

605:                                              ; preds = %647, %598
  %606 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %598 ], [ %669, %647 ]
  %607 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %598 ], [ %659, %647 ]
  %608 = phi i64 [ 0, %598 ], [ %670, %647 ]
  %609 = mul i64 %608, %594
  %610 = getelementptr inbounds nuw i8, ptr %0, i64 %609
  br i1 %599, label %647, label %611

611:                                              ; preds = %605, %611
  %612 = phi <4 x i64> [ %644, %611 ], [ %606, %605 ]
  %613 = phi <4 x i64> [ %630, %611 ], [ %607, %605 ]
  %614 = phi i64 [ %645, %611 ], [ 0, %605 ]
  %615 = shl i64 %614, 6
  %616 = getelementptr inbounds nuw i8, ptr %610, i64 %615
  %617 = shl i64 %614, 3
  %618 = getelementptr inbounds nuw i8, ptr %2, i64 %617
  %619 = load <4 x i64>, ptr %616, align 1
  %620 = load <4 x i64>, ptr %618, align 1
  %621 = xor <4 x i64> %620, %619
  %622 = bitcast <4 x i64> %621 to <8 x i32>
  %623 = shufflevector <8 x i32> %622, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %624 = bitcast <8 x i32> %623 to <4 x i64>
  %625 = and <4 x i64> %621, splat (i64 4294967295)
  %626 = and <4 x i64> %624, splat (i64 4294967295)
  %627 = mul nuw <4 x i64> %626, %625
  %628 = shufflevector <4 x i64> %619, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %629 = add <4 x i64> %613, %628
  %630 = add <4 x i64> %629, %627
  %631 = getelementptr inbounds nuw i8, ptr %616, i64 32
  %632 = load <4 x i64>, ptr %631, align 1
  %633 = getelementptr inbounds nuw i8, ptr %618, i64 32
  %634 = load <4 x i64>, ptr %633, align 1
  %635 = xor <4 x i64> %634, %632
  %636 = bitcast <4 x i64> %635 to <8 x i32>
  %637 = shufflevector <8 x i32> %636, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %638 = bitcast <8 x i32> %637 to <4 x i64>
  %639 = and <4 x i64> %635, splat (i64 4294967295)
  %640 = and <4 x i64> %638, splat (i64 4294967295)
  %641 = mul nuw <4 x i64> %640, %639
  %642 = shufflevector <4 x i64> %632, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %643 = add <4 x i64> %612, %642
  %644 = add <4 x i64> %643, %641
  %645 = add nuw i64 %614, 1
  %646 = icmp eq i64 %645, %593
  br i1 %646, label %647, label %611

647:                                              ; preds = %611, %605
  %648 = phi <4 x i64> [ %606, %605 ], [ %644, %611 ]
  %649 = phi <4 x i64> [ %607, %605 ], [ %630, %611 ]
  %650 = lshr <4 x i64> %649, splat (i64 47)
  %651 = xor <4 x i64> %602, %650
  %652 = xor <4 x i64> %651, %649
  %653 = bitcast <4 x i64> %652 to <8 x i32>
  %654 = shufflevector <8 x i32> %653, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %655 = bitcast <8 x i32> %654 to <4 x i64>
  %656 = and <4 x i64> %652, splat (i64 4294967295)
  %657 = mul nuw <4 x i64> %656, splat (i64 2654435761)
  %658 = mul <4 x i64> %655, splat (i64 -7046029290881679360)
  %659 = add <4 x i64> %658, %657
  %660 = lshr <4 x i64> %648, splat (i64 47)
  %661 = xor <4 x i64> %604, %660
  %662 = xor <4 x i64> %661, %648
  %663 = bitcast <4 x i64> %662 to <8 x i32>
  %664 = shufflevector <8 x i32> %663, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %665 = bitcast <8 x i32> %664 to <4 x i64>
  %666 = and <4 x i64> %662, splat (i64 4294967295)
  %667 = mul nuw <4 x i64> %666, splat (i64 2654435761)
  %668 = mul <4 x i64> %665, splat (i64 -7046029290881679360)
  %669 = add <4 x i64> %668, %667
  %670 = add nuw i64 %608, 1
  %671 = icmp ult i64 %670, %595
  br i1 %671, label %605, label %672

672:                                              ; preds = %647, %591
  %673 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %591 ], [ %669, %647 ]
  %674 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %591 ], [ %659, %647 ]
  %675 = mul i64 %595, %594
  %676 = lshr i64 %596, 6
  %677 = getelementptr inbounds nuw i8, ptr %0, i64 %675
  %678 = icmp ult i64 %596, 64
  br i1 %678, label %715, label %679

679:                                              ; preds = %672, %679
  %680 = phi <4 x i64> [ %712, %679 ], [ %673, %672 ]
  %681 = phi <4 x i64> [ %698, %679 ], [ %674, %672 ]
  %682 = phi i64 [ %713, %679 ], [ 0, %672 ]
  %683 = shl i64 %682, 6
  %684 = getelementptr inbounds nuw i8, ptr %677, i64 %683
  %685 = shl i64 %682, 3
  %686 = getelementptr inbounds nuw i8, ptr %2, i64 %685
  %687 = load <4 x i64>, ptr %684, align 1
  %688 = load <4 x i64>, ptr %686, align 1
  %689 = xor <4 x i64> %688, %687
  %690 = bitcast <4 x i64> %689 to <8 x i32>
  %691 = shufflevector <8 x i32> %690, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %692 = bitcast <8 x i32> %691 to <4 x i64>
  %693 = and <4 x i64> %689, splat (i64 4294967295)
  %694 = and <4 x i64> %692, splat (i64 4294967295)
  %695 = mul nuw <4 x i64> %694, %693
  %696 = shufflevector <4 x i64> %687, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %697 = add <4 x i64> %681, %696
  %698 = add <4 x i64> %697, %695
  %699 = getelementptr inbounds nuw i8, ptr %684, i64 32
  %700 = load <4 x i64>, ptr %699, align 1
  %701 = getelementptr inbounds nuw i8, ptr %686, i64 32
  %702 = load <4 x i64>, ptr %701, align 1
  %703 = xor <4 x i64> %702, %700
  %704 = bitcast <4 x i64> %703 to <8 x i32>
  %705 = shufflevector <8 x i32> %704, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %706 = bitcast <8 x i32> %705 to <4 x i64>
  %707 = and <4 x i64> %703, splat (i64 4294967295)
  %708 = and <4 x i64> %706, splat (i64 4294967295)
  %709 = mul nuw <4 x i64> %708, %707
  %710 = shufflevector <4 x i64> %700, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %711 = add <4 x i64> %680, %710
  %712 = add <4 x i64> %711, %709
  %713 = add nuw i64 %682, 1
  %714 = icmp eq i64 %713, %676
  br i1 %714, label %715, label %679

715:                                              ; preds = %679, %672
  %716 = phi <4 x i64> [ %673, %672 ], [ %712, %679 ]
  %717 = phi <4 x i64> [ %674, %672 ], [ %698, %679 ]
  %718 = and i64 %1, 63
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %730

720:                                              ; preds = %715
  %721 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %722 = getelementptr i8, ptr %721, i64 -67
  %723 = load i64, ptr %722, align 1
  %724 = getelementptr inbounds i8, ptr %721, i64 -59
  %725 = load i64, ptr %724, align 1
  %726 = getelementptr i8, ptr %721, i64 -51
  %727 = load i64, ptr %726, align 1
  %728 = getelementptr i8, ptr %721, i64 -35
  %729 = load i64, ptr %728, align 1
  br label %771

730:                                              ; preds = %715
  %731 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %732 = getelementptr inbounds i8, ptr %731, i64 -64
  %733 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %734 = getelementptr inbounds i8, ptr %733, i64 -71
  %735 = load <4 x i64>, ptr %732, align 1
  %736 = load <4 x i64>, ptr %734, align 1
  %737 = xor <4 x i64> %736, %735
  %738 = bitcast <4 x i64> %737 to <8 x i32>
  %739 = shufflevector <8 x i32> %738, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %740 = bitcast <8 x i32> %739 to <4 x i64>
  %741 = and <4 x i64> %737, splat (i64 4294967295)
  %742 = and <4 x i64> %740, splat (i64 4294967295)
  %743 = mul nuw <4 x i64> %742, %741
  %744 = shufflevector <4 x i64> %735, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %745 = add <4 x i64> %717, %744
  %746 = add <4 x i64> %745, %743
  %747 = getelementptr inbounds i8, ptr %731, i64 -32
  %748 = load <4 x i64>, ptr %747, align 1
  %749 = getelementptr inbounds i8, ptr %733, i64 -39
  %750 = load <4 x i64>, ptr %749, align 1
  %751 = xor <4 x i64> %750, %748
  %752 = bitcast <4 x i64> %751 to <8 x i32>
  %753 = shufflevector <8 x i32> %752, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %754 = bitcast <8 x i32> %753 to <4 x i64>
  %755 = and <4 x i64> %751, splat (i64 4294967295)
  %756 = and <4 x i64> %754, splat (i64 4294967295)
  %757 = mul nuw <4 x i64> %756, %755
  %758 = shufflevector <4 x i64> %748, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %759 = add <4 x i64> %716, %758
  %760 = add <4 x i64> %759, %757
  %761 = bitcast <4 x i64> %736 to i256
  %762 = lshr i256 %761, 32
  %763 = trunc i256 %762 to i64
  %764 = lshr i256 %761, 96
  %765 = trunc i256 %764 to i64
  %766 = lshr i256 %761, 160
  %767 = trunc i256 %766 to i64
  %768 = bitcast <4 x i64> %750 to i256
  %769 = lshr i256 %768, 32
  %770 = trunc i256 %769 to i64
  br label %771

771:                                              ; preds = %720, %730
  %772 = phi i64 [ %729, %720 ], [ %770, %730 ]
  %773 = phi i64 [ %727, %720 ], [ %767, %730 ]
  %774 = phi i64 [ %725, %720 ], [ %765, %730 ]
  %775 = phi i64 [ %723, %720 ], [ %763, %730 ]
  %776 = phi <4 x i64> [ %716, %720 ], [ %760, %730 ]
  %777 = phi <4 x i64> [ %717, %720 ], [ %746, %730 ]
  %778 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %779 = mul i64 %1, -7046029288634856825
  %780 = extractelement <4 x i64> %777, i64 0
  %781 = extractelement <4 x i64> %777, i64 1
  %782 = load i64, ptr %778, align 1
  %783 = getelementptr i8, ptr %2, i64 19
  %784 = load i64, ptr %783, align 1
  %785 = xor i64 %782, %780
  %786 = xor i64 %784, %781
  %787 = zext i64 %785 to i128
  %788 = zext i64 %786 to i128
  %789 = mul nuw i128 %788, %787
  %790 = lshr i128 %789, 64
  %791 = xor i128 %790, %789
  %792 = trunc i128 %791 to i64
  %793 = add i64 %779, %792
  %794 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %795 = extractelement <4 x i64> %777, i64 2
  %796 = extractelement <4 x i64> %777, i64 3
  %797 = load i64, ptr %794, align 1
  %798 = getelementptr i8, ptr %2, i64 35
  %799 = load i64, ptr %798, align 1
  %800 = xor i64 %797, %795
  %801 = xor i64 %799, %796
  %802 = zext i64 %800 to i128
  %803 = zext i64 %801 to i128
  %804 = mul nuw i128 %803, %802
  %805 = lshr i128 %804, 64
  %806 = xor i128 %805, %804
  %807 = trunc i128 %806 to i64
  %808 = add i64 %793, %807
  %809 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %810 = extractelement <4 x i64> %776, i64 0
  %811 = extractelement <4 x i64> %776, i64 1
  %812 = load i64, ptr %809, align 1
  %813 = getelementptr i8, ptr %2, i64 51
  %814 = load i64, ptr %813, align 1
  %815 = xor i64 %812, %810
  %816 = xor i64 %814, %811
  %817 = zext i64 %815 to i128
  %818 = zext i64 %816 to i128
  %819 = mul nuw i128 %818, %817
  %820 = lshr i128 %819, 64
  %821 = xor i128 %820, %819
  %822 = trunc i128 %821 to i64
  %823 = add i64 %808, %822
  %824 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %825 = extractelement <4 x i64> %776, i64 2
  %826 = extractelement <4 x i64> %776, i64 3
  %827 = load i64, ptr %824, align 1
  %828 = getelementptr i8, ptr %2, i64 67
  %829 = load i64, ptr %828, align 1
  %830 = xor i64 %827, %825
  %831 = xor i64 %829, %826
  %832 = zext i64 %830 to i128
  %833 = zext i64 %831 to i128
  %834 = mul nuw i128 %833, %832
  %835 = lshr i128 %834, 64
  %836 = xor i128 %835, %834
  %837 = trunc i128 %836 to i64
  %838 = add i64 %823, %837
  %839 = lshr i64 %838, 37
  %840 = xor i64 %839, %838
  %841 = mul i64 %840, 1609587929392839161
  %842 = lshr i64 %841, 32
  %843 = xor i64 %842, %841
  %844 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %845 = getelementptr inbounds i8, ptr %844, i64 -75
  %846 = mul i64 %1, -4417276706812531889
  %847 = xor i64 %846, -1
  %848 = load i64, ptr %845, align 1
  %849 = xor i64 %848, %780
  %850 = xor i64 %781, %775
  %851 = zext i64 %849 to i128
  %852 = zext i64 %850 to i128
  %853 = mul nuw i128 %851, %852
  %854 = lshr i128 %853, 64
  %855 = xor i128 %854, %853
  %856 = trunc i128 %855 to i64
  %857 = xor i64 %795, %774
  %858 = xor i64 %796, %773
  %859 = zext i64 %857 to i128
  %860 = zext i64 %858 to i128
  %861 = mul nuw i128 %860, %859
  %862 = lshr i128 %861, 64
  %863 = xor i128 %862, %861
  %864 = trunc i128 %863 to i64
  %865 = getelementptr inbounds i8, ptr %844, i64 -43
  %866 = load i64, ptr %865, align 1
  %867 = xor i64 %866, %810
  %868 = xor i64 %811, %772
  %869 = zext i64 %867 to i128
  %870 = zext i64 %868 to i128
  %871 = mul nuw i128 %869, %870
  %872 = lshr i128 %871, 64
  %873 = xor i128 %872, %871
  %874 = trunc i128 %873 to i64
  %875 = getelementptr inbounds i8, ptr %844, i64 -27
  %876 = load i64, ptr %875, align 1
  %877 = getelementptr i8, ptr %844, i64 -19
  %878 = load i64, ptr %877, align 1
  %879 = xor i64 %876, %825
  %880 = xor i64 %878, %826
  %881 = zext i64 %879 to i128
  %882 = zext i64 %880 to i128
  %883 = mul nuw i128 %882, %881
  %884 = lshr i128 %883, 64
  %885 = xor i128 %884, %883
  %886 = trunc i128 %885 to i64
  %887 = add i64 %864, %847
  %888 = add i64 %887, %856
  %889 = add i64 %888, %874
  %890 = add i64 %889, %886
  %891 = lshr i64 %890, 37
  %892 = xor i64 %891, %890
  %893 = mul i64 %892, 1609587929392839161
  %894 = lshr i64 %893, 32
  %895 = xor i64 %894, %893
  br label %896

896:                                              ; preds = %90, %88, %49, %8, %771, %532, %260
  %897 = phi i64 [ %310, %260 ], [ %584, %532 ], [ %843, %771 ], [ %41, %8 ], [ %82, %49 ], [ %122, %90 ], [ 0, %88 ]
  %898 = phi i64 [ %316, %260 ], [ %590, %532 ], [ %895, %771 ], [ %46, %8 ], [ %87, %49 ], [ %127, %90 ], [ 0, %88 ]
  %899 = insertvalue { i64, i64 } poison, i64 %897, 0
  %900 = insertvalue { i64, i64 } %899, i64 %898, 1
  ret { i64, i64 } %900
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = alloca [192 x i8], align 8
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %125

6:                                                ; preds = %3
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %46

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 1
  %10 = add i64 %2, -4734510112055689544
  %11 = xor i64 %9, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 2066345149520216444, %2
  %16 = xor i64 %14, %15
  %17 = xor i64 %11, %16
  %18 = zext i64 %17 to i128
  %19 = mul nuw i128 %18, 11400714785074694791
  %20 = trunc i128 %19 to i64
  %21 = lshr i128 %19, 64
  %22 = trunc nuw i128 %21 to i64
  %23 = mul nuw nsw i64 %1, 374761393
  %24 = add i64 %23, %20
  %25 = mul i64 %16, -7046029288634856825
  %26 = add i64 %25, %22
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %24
  %29 = zext i64 %28 to i128
  %30 = mul nuw i128 %29, 14029467366897019727
  %31 = trunc i128 %30 to i64
  %32 = lshr i128 %30, 64
  %33 = trunc nuw i128 %32 to i64
  %34 = mul i64 %26, -4417276706812531889
  %35 = add i64 %34, %33
  %36 = lshr i64 %31, 37
  %37 = xor i64 %36, %31
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  %41 = lshr i64 %35, 37
  %42 = xor i64 %41, %35
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  br label %1138

46:                                               ; preds = %6
  %47 = icmp samesign ugt i64 %1, 3
  br i1 %47, label %48, label %86

48:                                               ; preds = %46
  %49 = load i32, ptr %0, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %51 = getelementptr inbounds i8, ptr %50, i64 -4
  %52 = load i32, ptr %51, align 1
  %53 = zext i32 %49 to i64
  %54 = zext i32 %52 to i64
  %55 = shl nuw i64 %54, 32
  %56 = or disjoint i64 %55, %53
  %57 = tail call noundef i64 @llvm.bswap.i64(i64 %56)
  %58 = add i64 %2, -4734510112055689544
  %59 = xor i64 %56, %58
  %60 = sub i64 2066345149520216444, %2
  %61 = xor i64 %57, %60
  %62 = lshr i64 %59, 51
  %63 = xor i64 %62, %59
  %64 = mul i64 %63, 2654435761
  %65 = add i64 %64, %1
  %66 = lshr i64 %65, 47
  %67 = xor i64 %66, %65
  %68 = mul i64 %67, -4417276706812531889
  %69 = lshr i64 %61, 47
  %70 = xor i64 %69, %61
  %71 = mul i64 %70, -7046029288634856825
  %72 = sub i64 %71, %1
  %73 = lshr i64 %72, 43
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, -8796714831421723037
  %76 = lshr i64 %68, 37
  %77 = xor i64 %76, %68
  %78 = mul i64 %77, 1609587929392839161
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  %81 = lshr i64 %75, 37
  %82 = xor i64 %81, %75
  %83 = mul i64 %82, 1609587929392839161
  %84 = lshr i64 %83, 32
  %85 = xor i64 %84, %83
  br label %1138

86:                                               ; preds = %46
  %87 = icmp eq i64 %1, 0
  br i1 %87, label %1138, label %88

88:                                               ; preds = %86
  %89 = load i8, ptr %0, align 1
  %90 = lshr i64 %1, 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr i8, ptr %0, i64 %1
  %94 = getelementptr i8, ptr %93, i64 -1
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %89 to i32
  %97 = zext i8 %92 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = or disjoint i32 %98, %96
  %100 = zext i8 %95 to i32
  %101 = shl nuw nsw i32 %100, 16
  %102 = or disjoint i32 %99, %101
  %103 = trunc nuw nsw i64 %1 to i32
  %104 = shl nuw nsw i32 %103, 24
  %105 = or disjoint i32 %102, %104
  %106 = tail call noundef i32 @llvm.bswap.i32(i32 %105)
  %107 = zext nneg i32 %105 to i64
  %108 = add i64 %2, 963444408
  %109 = xor i64 %108, %107
  %110 = zext i32 %106 to i64
  %111 = sub i64 3192628259, %2
  %112 = xor i64 %111, %110
  %113 = mul i64 %109, -7046029288634856825
  %114 = mul i64 %112, 2870177450012600261
  %115 = lshr i64 %113, 37
  %116 = xor i64 %115, %113
  %117 = mul i64 %116, 1609587929392839161
  %118 = lshr i64 %117, 32
  %119 = xor i64 %118, %117
  %120 = lshr i64 %114, 37
  %121 = xor i64 %120, %114
  %122 = mul i64 %121, 1609587929392839161
  %123 = lshr i64 %122, 32
  %124 = xor i64 %123, %122
  br label %1138

125:                                              ; preds = %3
  %126 = icmp ult i64 %1, 129
  br i1 %126, label %127, label %300

127:                                              ; preds = %125
  %128 = mul i64 %1, -7046029288634856825
  %129 = icmp samesign ugt i64 %1, 32
  br i1 %129, label %130, label %245

130:                                              ; preds = %127
  %131 = icmp samesign ugt i64 %1, 64
  br i1 %131, label %132, label %207

132:                                              ; preds = %130
  %133 = icmp samesign ugt i64 %1, 96
  br i1 %133, label %134, label %169

134:                                              ; preds = %132
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %137 = getelementptr inbounds i8, ptr %136, i64 -64
  %138 = load i64, ptr %135, align 1
  %139 = getelementptr i8, ptr %0, i64 56
  %140 = load i64, ptr %139, align 1
  %141 = load i64, ptr %137, align 1
  %142 = getelementptr i8, ptr %136, i64 -56
  %143 = load i64, ptr %142, align 1
  %144 = add i64 %2, 4554437623014685352
  %145 = xor i64 %138, %144
  %146 = sub i64 2111919702937427193, %2
  %147 = xor i64 %140, %146
  %148 = zext i64 %145 to i128
  %149 = zext i64 %147 to i128
  %150 = mul nuw i128 %149, %148
  %151 = lshr i128 %150, 64
  %152 = xor i128 %151, %150
  %153 = trunc i128 %152 to i64
  %154 = add i64 %128, %153
  %155 = add i64 %143, %141
  %156 = xor i64 %154, %155
  %157 = add i64 %2, 3556072174620004746
  %158 = xor i64 %141, %157
  %159 = sub i64 7238261902898274248, %2
  %160 = xor i64 %143, %159
  %161 = zext i64 %158 to i128
  %162 = zext i64 %160 to i128
  %163 = mul nuw i128 %162, %161
  %164 = lshr i128 %163, 64
  %165 = xor i128 %164, %163
  %166 = trunc i128 %165 to i64
  %167 = add i64 %140, %138
  %168 = xor i64 %167, %166
  br label %169

169:                                              ; preds = %134, %132
  %170 = phi i64 [ %156, %134 ], [ %128, %132 ]
  %171 = phi i64 [ %168, %134 ], [ 0, %132 ]
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %174 = getelementptr inbounds i8, ptr %173, i64 -48
  %175 = load i64, ptr %172, align 1
  %176 = getelementptr i8, ptr %0, i64 40
  %177 = load i64, ptr %176, align 1
  %178 = load i64, ptr %174, align 1
  %179 = getelementptr i8, ptr %173, i64 -40
  %180 = load i64, ptr %179, align 1
  %181 = add i64 %2, -3818837453329782724
  %182 = xor i64 %175, %181
  %183 = sub i64 -6688317018830679928, %2
  %184 = xor i64 %177, %183
  %185 = zext i64 %182 to i128
  %186 = zext i64 %184 to i128
  %187 = mul nuw i128 %186, %185
  %188 = lshr i128 %187, 64
  %189 = xor i128 %188, %187
  %190 = trunc i128 %189 to i64
  %191 = add i64 %170, %190
  %192 = add i64 %180, %178
  %193 = xor i64 %191, %192
  %194 = add i64 %2, 5690594596133299313
  %195 = xor i64 %178, %194
  %196 = sub i64 -2833645246901970632, %2
  %197 = xor i64 %180, %196
  %198 = zext i64 %195 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %171, %203
  %205 = add i64 %177, %175
  %206 = xor i64 %204, %205
  br label %207

207:                                              ; preds = %169, %130
  %208 = phi i64 [ %193, %169 ], [ %128, %130 ]
  %209 = phi i64 [ %206, %169 ], [ 0, %130 ]
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %212 = getelementptr inbounds i8, ptr %211, i64 -32
  %213 = load i64, ptr %210, align 1
  %214 = getelementptr i8, ptr %0, i64 24
  %215 = load i64, ptr %214, align 1
  %216 = load i64, ptr %212, align 1
  %217 = getelementptr i8, ptr %211, i64 -24
  %218 = load i64, ptr %217, align 1
  %219 = add i64 %2, 8711581037947681227
  %220 = xor i64 %213, %219
  %221 = sub i64 2410270004345854594, %2
  %222 = xor i64 %215, %221
  %223 = zext i64 %220 to i128
  %224 = zext i64 %222 to i128
  %225 = mul nuw i128 %224, %223
  %226 = lshr i128 %225, 64
  %227 = xor i128 %226, %225
  %228 = trunc i128 %227 to i64
  %229 = add i64 %208, %228
  %230 = add i64 %218, %216
  %231 = xor i64 %229, %230
  %232 = add i64 %2, -8204357891075471176
  %233 = xor i64 %216, %232
  %234 = sub i64 5487137525590930912, %2
  %235 = xor i64 %218, %234
  %236 = zext i64 %233 to i128
  %237 = zext i64 %235 to i128
  %238 = mul nuw i128 %237, %236
  %239 = lshr i128 %238, 64
  %240 = xor i128 %239, %238
  %241 = trunc i128 %240 to i64
  %242 = add i64 %209, %241
  %243 = add i64 %215, %213
  %244 = xor i64 %242, %243
  br label %245

245:                                              ; preds = %127, %207
  %246 = phi i64 [ %231, %207 ], [ %128, %127 ]
  %247 = phi i64 [ %244, %207 ], [ 0, %127 ]
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %249 = getelementptr inbounds i8, ptr %248, i64 -16
  %250 = load i64, ptr %0, align 1
  %251 = getelementptr i8, ptr %0, i64 8
  %252 = load i64, ptr %251, align 1
  %253 = load i64, ptr %249, align 1
  %254 = getelementptr i8, ptr %248, i64 -8
  %255 = load i64, ptr %254, align 1
  %256 = add i64 %2, -4734510112055689544
  %257 = xor i64 %250, %256
  %258 = sub i64 2066345149520216444, %2
  %259 = xor i64 %252, %258
  %260 = zext i64 %257 to i128
  %261 = zext i64 %259 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %246, %265
  %267 = add i64 %255, %253
  %268 = xor i64 %266, %267
  %269 = add i64 %2, -2623469361688619810
  %270 = xor i64 %253, %269
  %271 = sub i64 2262974939099578482, %2
  %272 = xor i64 %255, %271
  %273 = zext i64 %270 to i128
  %274 = zext i64 %272 to i128
  %275 = mul nuw i128 %274, %273
  %276 = lshr i128 %275, 64
  %277 = xor i128 %276, %275
  %278 = trunc i128 %277 to i64
  %279 = add i64 %247, %278
  %280 = add i64 %252, %250
  %281 = xor i64 %279, %280
  %282 = add i64 %281, %268
  %283 = mul i64 %268, -7046029288634856825
  %284 = mul i64 %281, -8796714831421723037
  %285 = sub i64 %1, %2
  %286 = mul i64 %285, -4417276706812531889
  %287 = add i64 %283, %286
  %288 = add i64 %287, %284
  %289 = lshr i64 %282, 37
  %290 = xor i64 %289, %282
  %291 = mul i64 %290, 1609587929392839161
  %292 = lshr i64 %291, 32
  %293 = xor i64 %292, %291
  %294 = lshr i64 %288, 37
  %295 = xor i64 %294, %288
  %296 = mul i64 %295, 1609587929392839161
  %297 = lshr i64 %296, 32
  %298 = xor i64 %297, %296
  %299 = sub i64 0, %298
  br label %1138

300:                                              ; preds = %125
  %301 = icmp ult i64 %1, 241
  br i1 %301, label %302, label %559

302:                                              ; preds = %300
  %303 = trunc nuw nsw i64 %1 to i32
  %304 = mul i64 %1, -7046029288634856825
  %305 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %306 = load i64, ptr %0, align 1
  %307 = getelementptr i8, ptr %0, i64 8
  %308 = load i64, ptr %307, align 1
  %309 = load i64, ptr %305, align 1
  %310 = getelementptr i8, ptr %0, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = add i64 %2, -4734510112055689544
  %313 = xor i64 %306, %312
  %314 = sub i64 2066345149520216444, %2
  %315 = xor i64 %308, %314
  %316 = zext i64 %313 to i128
  %317 = zext i64 %315 to i128
  %318 = mul nuw i128 %317, %316
  %319 = lshr i128 %318, 64
  %320 = xor i128 %319, %318
  %321 = trunc i128 %320 to i64
  %322 = add i64 %304, %321
  %323 = add i64 %311, %309
  %324 = xor i64 %322, %323
  %325 = add i64 %2, -2623469361688619810
  %326 = xor i64 %309, %325
  %327 = sub i64 2262974939099578482, %2
  %328 = xor i64 %311, %327
  %329 = zext i64 %326 to i128
  %330 = zext i64 %328 to i128
  %331 = mul nuw i128 %330, %329
  %332 = lshr i128 %331, 64
  %333 = xor i128 %332, %331
  %334 = trunc i128 %333 to i64
  %335 = add i64 %308, %306
  %336 = xor i64 %335, %334
  %337 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %339 = load i64, ptr %337, align 1
  %340 = getelementptr i8, ptr %0, i64 40
  %341 = load i64, ptr %340, align 1
  %342 = load i64, ptr %338, align 1
  %343 = getelementptr i8, ptr %0, i64 56
  %344 = load i64, ptr %343, align 1
  %345 = add i64 %2, 8711581037947681227
  %346 = xor i64 %339, %345
  %347 = sub i64 2410270004345854594, %2
  %348 = xor i64 %341, %347
  %349 = zext i64 %346 to i128
  %350 = zext i64 %348 to i128
  %351 = mul nuw i128 %350, %349
  %352 = lshr i128 %351, 64
  %353 = xor i128 %352, %351
  %354 = trunc i128 %353 to i64
  %355 = add i64 %324, %354
  %356 = add i64 %344, %342
  %357 = xor i64 %355, %356
  %358 = add i64 %2, -8204357891075471176
  %359 = xor i64 %342, %358
  %360 = sub i64 5487137525590930912, %2
  %361 = xor i64 %344, %360
  %362 = zext i64 %359 to i128
  %363 = zext i64 %361 to i128
  %364 = mul nuw i128 %363, %362
  %365 = lshr i128 %364, 64
  %366 = xor i128 %365, %364
  %367 = trunc i128 %366 to i64
  %368 = add i64 %336, %367
  %369 = add i64 %341, %339
  %370 = xor i64 %368, %369
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %373 = load i64, ptr %371, align 1
  %374 = getelementptr i8, ptr %0, i64 72
  %375 = load i64, ptr %374, align 1
  %376 = load i64, ptr %372, align 1
  %377 = getelementptr i8, ptr %0, i64 88
  %378 = load i64, ptr %377, align 1
  %379 = add i64 %2, -3818837453329782724
  %380 = xor i64 %373, %379
  %381 = sub i64 -6688317018830679928, %2
  %382 = xor i64 %375, %381
  %383 = zext i64 %380 to i128
  %384 = zext i64 %382 to i128
  %385 = mul nuw i128 %384, %383
  %386 = lshr i128 %385, 64
  %387 = xor i128 %386, %385
  %388 = trunc i128 %387 to i64
  %389 = add i64 %357, %388
  %390 = add i64 %378, %376
  %391 = xor i64 %389, %390
  %392 = add i64 %2, 5690594596133299313
  %393 = xor i64 %376, %392
  %394 = sub i64 -2833645246901970632, %2
  %395 = xor i64 %378, %394
  %396 = zext i64 %393 to i128
  %397 = zext i64 %395 to i128
  %398 = mul nuw i128 %397, %396
  %399 = lshr i128 %398, 64
  %400 = xor i128 %399, %398
  %401 = trunc i128 %400 to i64
  %402 = add i64 %370, %401
  %403 = add i64 %375, %373
  %404 = xor i64 %402, %403
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %407 = load i64, ptr %405, align 1
  %408 = getelementptr i8, ptr %0, i64 104
  %409 = load i64, ptr %408, align 1
  %410 = load i64, ptr %406, align 1
  %411 = getelementptr i8, ptr %0, i64 120
  %412 = load i64, ptr %411, align 1
  %413 = add i64 %2, 4554437623014685352
  %414 = xor i64 %407, %413
  %415 = sub i64 2111919702937427193, %2
  %416 = xor i64 %409, %415
  %417 = zext i64 %414 to i128
  %418 = zext i64 %416 to i128
  %419 = mul nuw i128 %418, %417
  %420 = lshr i128 %419, 64
  %421 = xor i128 %420, %419
  %422 = trunc i128 %421 to i64
  %423 = add i64 %391, %422
  %424 = add i64 %412, %410
  %425 = xor i64 %423, %424
  %426 = add i64 %2, 3556072174620004746
  %427 = xor i64 %410, %426
  %428 = sub i64 7238261902898274248, %2
  %429 = xor i64 %412, %428
  %430 = zext i64 %427 to i128
  %431 = zext i64 %429 to i128
  %432 = mul nuw i128 %431, %430
  %433 = lshr i128 %432, 64
  %434 = xor i128 %433, %432
  %435 = trunc i128 %434 to i64
  %436 = add i64 %404, %435
  %437 = add i64 %409, %407
  %438 = xor i64 %436, %437
  %439 = lshr i32 %303, 5
  %440 = lshr i64 %425, 37
  %441 = xor i64 %440, %425
  %442 = mul i64 %441, 1609587929392839161
  %443 = lshr i64 %442, 32
  %444 = xor i64 %443, %442
  %445 = lshr i64 %438, 37
  %446 = xor i64 %445, %438
  %447 = mul i64 %446, 1609587929392839161
  %448 = lshr i64 %447, 32
  %449 = xor i64 %448, %447
  %450 = icmp eq i32 %439, 4
  br i1 %450, label %503, label %451

451:                                              ; preds = %302
  %452 = zext nneg i32 %439 to i64
  br label %453

453:                                              ; preds = %453, %451
  %454 = phi i64 [ 4, %451 ], [ %501, %453 ]
  %455 = phi i64 [ %449, %451 ], [ %500, %453 ]
  %456 = phi i64 [ %444, %451 ], [ %483, %453 ]
  %457 = shl nsw i64 %454, 5
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 %457
  %459 = getelementptr inbounds nuw i8, ptr %458, i64 16
  %460 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @kSecret, i64 3), i64 %457
  %461 = getelementptr i8, ptr %460, i64 -128
  %462 = load i64, ptr %458, align 1
  %463 = getelementptr i8, ptr %458, i64 8
  %464 = load i64, ptr %463, align 1
  %465 = load i64, ptr %459, align 1
  %466 = getelementptr i8, ptr %458, i64 24
  %467 = load i64, ptr %466, align 1
  %468 = load i64, ptr %461, align 1
  %469 = getelementptr i8, ptr %460, i64 -120
  %470 = load i64, ptr %469, align 1
  %471 = add i64 %468, %2
  %472 = xor i64 %471, %462
  %473 = sub i64 %470, %2
  %474 = xor i64 %473, %464
  %475 = zext i64 %472 to i128
  %476 = zext i64 %474 to i128
  %477 = mul nuw i128 %476, %475
  %478 = lshr i128 %477, 64
  %479 = xor i128 %478, %477
  %480 = trunc i128 %479 to i64
  %481 = add i64 %456, %480
  %482 = add i64 %467, %465
  %483 = xor i64 %481, %482
  %484 = getelementptr i8, ptr %460, i64 -112
  %485 = load i64, ptr %484, align 1
  %486 = getelementptr i8, ptr %460, i64 -104
  %487 = load i64, ptr %486, align 1
  %488 = add i64 %485, %2
  %489 = xor i64 %488, %465
  %490 = sub i64 %487, %2
  %491 = xor i64 %490, %467
  %492 = zext i64 %489 to i128
  %493 = zext i64 %491 to i128
  %494 = mul nuw i128 %493, %492
  %495 = lshr i128 %494, 64
  %496 = xor i128 %495, %494
  %497 = trunc i128 %496 to i64
  %498 = add i64 %455, %497
  %499 = add i64 %464, %462
  %500 = xor i64 %498, %499
  %501 = add nuw nsw i64 %454, 1
  %502 = icmp eq i64 %501, %452
  br i1 %502, label %503, label %453

503:                                              ; preds = %453, %302
  %504 = phi i64 [ %444, %302 ], [ %483, %453 ]
  %505 = phi i64 [ %449, %302 ], [ %500, %453 ]
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %507 = getelementptr inbounds i8, ptr %506, i64 -16
  %508 = getelementptr inbounds i8, ptr %506, i64 -32
  %509 = load i64, ptr %507, align 1
  %510 = getelementptr i8, ptr %506, i64 -8
  %511 = load i64, ptr %510, align 1
  %512 = load i64, ptr %508, align 1
  %513 = getelementptr i8, ptr %506, i64 -24
  %514 = load i64, ptr %513, align 1
  %515 = sub i64 5695865814404364607, %2
  %516 = xor i64 %509, %515
  %517 = add i64 %2, 6464017090953185821
  %518 = xor i64 %511, %517
  %519 = zext i64 %516 to i128
  %520 = zext i64 %518 to i128
  %521 = mul nuw i128 %520, %519
  %522 = lshr i128 %521, 64
  %523 = xor i128 %522, %521
  %524 = trunc i128 %523 to i64
  %525 = add i64 %504, %524
  %526 = add i64 %514, %512
  %527 = xor i64 %525, %526
  %528 = sub i64 8320639771003045937, %2
  %529 = xor i64 %512, %528
  %530 = add i64 %2, -1453760514566526364
  %531 = xor i64 %514, %530
  %532 = zext i64 %529 to i128
  %533 = zext i64 %531 to i128
  %534 = mul nuw i128 %533, %532
  %535 = lshr i128 %534, 64
  %536 = xor i128 %535, %534
  %537 = trunc i128 %536 to i64
  %538 = add i64 %505, %537
  %539 = add i64 %511, %509
  %540 = xor i64 %538, %539
  %541 = add i64 %540, %527
  %542 = mul i64 %527, -7046029288634856825
  %543 = mul i64 %540, -8796714831421723037
  %544 = sub i64 %1, %2
  %545 = mul i64 %544, -4417276706812531889
  %546 = add i64 %542, %545
  %547 = add i64 %546, %543
  %548 = lshr i64 %541, 37
  %549 = xor i64 %548, %541
  %550 = mul i64 %549, 1609587929392839161
  %551 = lshr i64 %550, 32
  %552 = xor i64 %551, %550
  %553 = lshr i64 %547, 37
  %554 = xor i64 %553, %547
  %555 = mul i64 %554, 1609587929392839161
  %556 = lshr i64 %555, 32
  %557 = xor i64 %556, %555
  %558 = sub i64 0, %557
  br label %1138

559:                                              ; preds = %300
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #26
  %560 = icmp eq i64 %2, 0
  br i1 %560, label %561, label %795

561:                                              ; preds = %559
  %562 = lshr i64 %1, 10
  %563 = icmp ult i64 %1, 1024
  br i1 %563, label %629, label %564

564:                                              ; preds = %561, %606
  %565 = phi <4 x i64> [ %626, %606 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %561 ]
  %566 = phi <4 x i64> [ %616, %606 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %561 ]
  %567 = phi i64 [ %627, %606 ], [ 0, %561 ]
  %568 = shl i64 %567, 10
  %569 = getelementptr inbounds nuw i8, ptr %0, i64 %568
  br label %570

570:                                              ; preds = %570, %564
  %571 = phi <4 x i64> [ %603, %570 ], [ %565, %564 ]
  %572 = phi <4 x i64> [ %589, %570 ], [ %566, %564 ]
  %573 = phi i64 [ %604, %570 ], [ 0, %564 ]
  %574 = shl i64 %573, 6
  %575 = getelementptr inbounds nuw i8, ptr %569, i64 %574
  %576 = shl i64 %573, 3
  %577 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %576
  %578 = load <4 x i64>, ptr %575, align 1
  %579 = load <4 x i64>, ptr %577, align 8
  %580 = xor <4 x i64> %579, %578
  %581 = bitcast <4 x i64> %580 to <8 x i32>
  %582 = shufflevector <8 x i32> %581, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %583 = bitcast <8 x i32> %582 to <4 x i64>
  %584 = and <4 x i64> %580, splat (i64 4294967295)
  %585 = and <4 x i64> %583, splat (i64 4294967295)
  %586 = mul nuw <4 x i64> %585, %584
  %587 = shufflevector <4 x i64> %578, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %588 = add <4 x i64> %572, %587
  %589 = add <4 x i64> %588, %586
  %590 = getelementptr inbounds nuw i8, ptr %575, i64 32
  %591 = load <4 x i64>, ptr %590, align 1
  %592 = getelementptr inbounds nuw i8, ptr %577, i64 32
  %593 = load <4 x i64>, ptr %592, align 8
  %594 = xor <4 x i64> %593, %591
  %595 = bitcast <4 x i64> %594 to <8 x i32>
  %596 = shufflevector <8 x i32> %595, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %597 = bitcast <8 x i32> %596 to <4 x i64>
  %598 = and <4 x i64> %594, splat (i64 4294967295)
  %599 = and <4 x i64> %597, splat (i64 4294967295)
  %600 = mul nuw <4 x i64> %599, %598
  %601 = shufflevector <4 x i64> %591, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %602 = add <4 x i64> %571, %601
  %603 = add <4 x i64> %602, %600
  %604 = add nuw nsw i64 %573, 1
  %605 = icmp eq i64 %604, 16
  br i1 %605, label %606, label %570

606:                                              ; preds = %570
  %607 = lshr <4 x i64> %589, splat (i64 47)
  %608 = xor <4 x i64> %589, %607
  %609 = xor <4 x i64> %608, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %610 = bitcast <4 x i64> %609 to <8 x i32>
  %611 = shufflevector <8 x i32> %610, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %612 = bitcast <8 x i32> %611 to <4 x i64>
  %613 = and <4 x i64> %609, splat (i64 4294967295)
  %614 = mul nuw <4 x i64> %613, splat (i64 2654435761)
  %615 = mul <4 x i64> %612, splat (i64 -7046029290881679360)
  %616 = add <4 x i64> %615, %614
  %617 = lshr <4 x i64> %603, splat (i64 47)
  %618 = xor <4 x i64> %603, %617
  %619 = xor <4 x i64> %618, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %620 = bitcast <4 x i64> %619 to <8 x i32>
  %621 = shufflevector <8 x i32> %620, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %622 = bitcast <8 x i32> %621 to <4 x i64>
  %623 = and <4 x i64> %619, splat (i64 4294967295)
  %624 = mul nuw <4 x i64> %623, splat (i64 2654435761)
  %625 = mul <4 x i64> %622, splat (i64 -7046029290881679360)
  %626 = add <4 x i64> %625, %624
  %627 = add nuw nsw i64 %567, 1
  %628 = icmp eq i64 %627, %562
  br i1 %628, label %629, label %564

629:                                              ; preds = %606, %561
  %630 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %561 ], [ %626, %606 ]
  %631 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %561 ], [ %616, %606 ]
  %632 = and i64 %1, -1024
  %633 = and i64 %1, 1023
  %634 = lshr i64 %633, 6
  %635 = getelementptr inbounds nuw i8, ptr %0, i64 %632
  %636 = icmp samesign ult i64 %633, 64
  br i1 %636, label %673, label %637

637:                                              ; preds = %629, %637
  %638 = phi <4 x i64> [ %670, %637 ], [ %630, %629 ]
  %639 = phi <4 x i64> [ %656, %637 ], [ %631, %629 ]
  %640 = phi i64 [ %671, %637 ], [ 0, %629 ]
  %641 = shl i64 %640, 6
  %642 = getelementptr inbounds nuw i8, ptr %635, i64 %641
  %643 = shl i64 %640, 3
  %644 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %643
  %645 = load <4 x i64>, ptr %642, align 1
  %646 = load <4 x i64>, ptr %644, align 8
  %647 = xor <4 x i64> %646, %645
  %648 = bitcast <4 x i64> %647 to <8 x i32>
  %649 = shufflevector <8 x i32> %648, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %650 = bitcast <8 x i32> %649 to <4 x i64>
  %651 = and <4 x i64> %647, splat (i64 4294967295)
  %652 = and <4 x i64> %650, splat (i64 4294967295)
  %653 = mul nuw <4 x i64> %652, %651
  %654 = shufflevector <4 x i64> %645, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %655 = add <4 x i64> %639, %654
  %656 = add <4 x i64> %655, %653
  %657 = getelementptr inbounds nuw i8, ptr %642, i64 32
  %658 = load <4 x i64>, ptr %657, align 1
  %659 = getelementptr inbounds nuw i8, ptr %644, i64 32
  %660 = load <4 x i64>, ptr %659, align 8
  %661 = xor <4 x i64> %660, %658
  %662 = bitcast <4 x i64> %661 to <8 x i32>
  %663 = shufflevector <8 x i32> %662, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %664 = bitcast <8 x i32> %663 to <4 x i64>
  %665 = and <4 x i64> %661, splat (i64 4294967295)
  %666 = and <4 x i64> %664, splat (i64 4294967295)
  %667 = mul nuw <4 x i64> %666, %665
  %668 = shufflevector <4 x i64> %658, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %669 = add <4 x i64> %638, %668
  %670 = add <4 x i64> %669, %667
  %671 = add nuw nsw i64 %640, 1
  %672 = icmp eq i64 %671, %634
  br i1 %672, label %673, label %637

673:                                              ; preds = %637, %629
  %674 = phi <4 x i64> [ %630, %629 ], [ %670, %637 ]
  %675 = phi <4 x i64> [ %631, %629 ], [ %656, %637 ]
  %676 = and i64 %1, 63
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %704, label %678

678:                                              ; preds = %673
  %679 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %680 = getelementptr inbounds i8, ptr %679, i64 -64
  %681 = load <4 x i64>, ptr %680, align 1
  %682 = xor <4 x i64> %681, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %683 = bitcast <4 x i64> %682 to <8 x i32>
  %684 = shufflevector <8 x i32> %683, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %685 = bitcast <8 x i32> %684 to <4 x i64>
  %686 = and <4 x i64> %682, splat (i64 4294967295)
  %687 = and <4 x i64> %685, splat (i64 4294967295)
  %688 = mul nuw <4 x i64> %687, %686
  %689 = shufflevector <4 x i64> %681, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %690 = add <4 x i64> %675, %689
  %691 = add <4 x i64> %690, %688
  %692 = getelementptr inbounds i8, ptr %679, i64 -32
  %693 = load <4 x i64>, ptr %692, align 1
  %694 = xor <4 x i64> %693, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %695 = bitcast <4 x i64> %694 to <8 x i32>
  %696 = shufflevector <8 x i32> %695, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %697 = bitcast <8 x i32> %696 to <4 x i64>
  %698 = and <4 x i64> %694, splat (i64 4294967295)
  %699 = and <4 x i64> %697, splat (i64 4294967295)
  %700 = mul nuw <4 x i64> %699, %698
  %701 = shufflevector <4 x i64> %693, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %702 = add <4 x i64> %674, %701
  %703 = add <4 x i64> %702, %700
  br label %704

704:                                              ; preds = %678, %673
  %705 = phi <4 x i64> [ %703, %678 ], [ %674, %673 ]
  %706 = phi <4 x i64> [ %691, %678 ], [ %675, %673 ]
  %707 = mul i64 %1, -7046029288634856825
  %708 = extractelement <4 x i64> %706, i64 0
  %709 = extractelement <4 x i64> %706, i64 1
  %710 = xor i64 %708, 7914194659941938988
  %711 = xor i64 %709, -6611157965513653271
  %712 = zext i64 %710 to i128
  %713 = zext i64 %711 to i128
  %714 = mul nuw i128 %713, %712
  %715 = lshr i128 %714, 64
  %716 = xor i128 %715, %714
  %717 = trunc i128 %716 to i64
  %718 = extractelement <4 x i64> %706, i64 2
  %719 = extractelement <4 x i64> %706, i64 3
  %720 = xor i64 %718, -1839215637059881052
  %721 = xor i64 %719, -3433288310154277810
  %722 = zext i64 %720 to i128
  %723 = zext i64 %721 to i128
  %724 = mul nuw i128 %723, %722
  %725 = lshr i128 %724, 64
  %726 = xor i128 %725, %724
  %727 = trunc i128 %726 to i64
  %728 = extractelement <4 x i64> %705, i64 0
  %729 = extractelement <4 x i64> %705, i64 1
  %730 = xor i64 %728, 5046485836271438973
  %731 = xor i64 %729, -8055285457383852172
  %732 = zext i64 %730 to i128
  %733 = zext i64 %731 to i128
  %734 = mul nuw i128 %733, %732
  %735 = lshr i128 %734, 64
  %736 = xor i128 %735, %734
  %737 = trunc i128 %736 to i64
  %738 = extractelement <4 x i64> %705, i64 2
  %739 = extractelement <4 x i64> %705, i64 3
  %740 = xor i64 %738, 5920048007935066598
  %741 = xor i64 %739, 7336514198459093435
  %742 = zext i64 %740 to i128
  %743 = zext i64 %741 to i128
  %744 = mul nuw i128 %743, %742
  %745 = lshr i128 %744, 64
  %746 = xor i128 %745, %744
  %747 = trunc i128 %746 to i64
  %748 = add i64 %707, %737
  %749 = add i64 %748, %747
  %750 = add i64 %749, %717
  %751 = add i64 %750, %727
  %752 = lshr i64 %751, 37
  %753 = xor i64 %752, %751
  %754 = mul i64 %753, 1609587929392839161
  %755 = lshr i64 %754, 32
  %756 = xor i64 %755, %754
  %757 = mul i64 %1, -4417276706812531889
  %758 = xor i64 %757, -1
  %759 = xor i64 %708, -2753530472436770380
  %760 = xor i64 %709, 3784058077962335096
  %761 = zext i64 %759 to i128
  %762 = zext i64 %760 to i128
  %763 = mul nuw i128 %762, %761
  %764 = lshr i128 %763, 64
  %765 = xor i128 %764, %763
  %766 = trunc i128 %765 to i64
  %767 = xor i64 %718, -360392965937173549
  %768 = xor i64 %719, -5237161843349560557
  %769 = zext i64 %767 to i128
  %770 = zext i64 %768 to i128
  %771 = mul nuw i128 %770, %769
  %772 = lshr i128 %771, 64
  %773 = xor i128 %772, %771
  %774 = trunc i128 %773 to i64
  %775 = xor i64 %728, 2965150961192524528
  %776 = xor i64 %729, 9032178055121889492
  %777 = zext i64 %775 to i128
  %778 = zext i64 %776 to i128
  %779 = mul nuw i128 %778, %777
  %780 = lshr i128 %779, 64
  %781 = xor i128 %780, %779
  %782 = trunc i128 %781 to i64
  %783 = xor i64 %738, 8850058120466833735
  %784 = xor i64 %739, -7669846995664752176
  %785 = zext i64 %783 to i128
  %786 = zext i64 %784 to i128
  %787 = mul nuw i128 %786, %785
  %788 = lshr i128 %787, 64
  %789 = xor i128 %788, %787
  %790 = trunc i128 %789 to i64
  %791 = add i64 %782, %758
  %792 = add i64 %791, %790
  %793 = add i64 %792, %766
  %794 = add i64 %793, %774
  br label %1130

795:                                              ; preds = %559
  %796 = add i64 %2, -4734510112055689544
  store i64 %796, ptr %4, align 8
  %797 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %798 = sub i64 2066345149520216444, %2
  store i64 %798, ptr %797, align 8
  %799 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %800 = add i64 %2, -2623469361688619810
  store i64 %800, ptr %799, align 8
  %801 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %802 = sub i64 2262974939099578482, %2
  store i64 %802, ptr %801, align 8
  %803 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %804 = add i64 %2, 8711581037947681227
  store i64 %804, ptr %803, align 8
  %805 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %806 = sub i64 2410270004345854594, %2
  store i64 %806, ptr %805, align 8
  %807 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %808 = add i64 %2, -8204357891075471176
  store i64 %808, ptr %807, align 8
  %809 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %810 = sub i64 5487137525590930912, %2
  store i64 %810, ptr %809, align 8
  %811 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %812 = add i64 %2, -3818837453329782724
  store i64 %812, ptr %811, align 8
  %813 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %814 = sub i64 -6688317018830679928, %2
  store i64 %814, ptr %813, align 8
  %815 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %816 = add i64 %2, 5690594596133299313
  store i64 %816, ptr %815, align 8
  %817 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %818 = sub i64 -2833645246901970632, %2
  store i64 %818, ptr %817, align 8
  %819 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %820 = add i64 %2, 4554437623014685352
  store i64 %820, ptr %819, align 8
  %821 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %822 = sub i64 2111919702937427193, %2
  store i64 %822, ptr %821, align 8
  %823 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %824 = add i64 %2, 3556072174620004746
  store i64 %824, ptr %823, align 8
  %825 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %826 = sub i64 7238261902898274248, %2
  store i64 %826, ptr %825, align 8
  %827 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %828 = add i64 %2, -4329134394285701654
  store i64 %828, ptr %827, align 8
  %829 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %830 = sub i64 -1485321483350670907, %2
  store i64 %830, ptr %829, align 8
  %831 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %832 = add i64 %2, 5321830579834785047
  store i64 %832, ptr %831, align 8
  %833 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %834 = sub i64 -7032137544937171245, %2
  store i64 %834, ptr %833, align 8
  %835 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %836 = add i64 %2, -242834301215959509
  store i64 %836, ptr %835, align 8
  %837 = getelementptr inbounds nuw i8, ptr %4, i64 168
  %838 = sub i64 -3588858202114426737, %2
  store i64 %838, ptr %837, align 8
  %839 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %840 = add i64 %2, 2883454493032893253
  store i64 %840, ptr %839, align 8
  %841 = getelementptr inbounds nuw i8, ptr %4, i64 184
  %842 = sub i64 9097354517224871855, %2
  store i64 %842, ptr %841, align 8
  %843 = lshr i64 %1, 10
  %844 = icmp ult i64 %1, 1024
  br i1 %844, label %913, label %845

845:                                              ; preds = %795
  %846 = load <4 x i64>, ptr %827, align 8
  %847 = load <4 x i64>, ptr %835, align 8
  br label %848

848:                                              ; preds = %890, %845
  %849 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %845 ], [ %910, %890 ]
  %850 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %845 ], [ %900, %890 ]
  %851 = phi i64 [ 0, %845 ], [ %911, %890 ]
  %852 = shl i64 %851, 10
  %853 = getelementptr inbounds nuw i8, ptr %0, i64 %852
  br label %854

854:                                              ; preds = %854, %848
  %855 = phi <4 x i64> [ %887, %854 ], [ %849, %848 ]
  %856 = phi <4 x i64> [ %873, %854 ], [ %850, %848 ]
  %857 = phi i64 [ %888, %854 ], [ 0, %848 ]
  %858 = shl i64 %857, 6
  %859 = getelementptr inbounds nuw i8, ptr %853, i64 %858
  %860 = shl i64 %857, 3
  %861 = getelementptr inbounds nuw i8, ptr %4, i64 %860
  %862 = load <4 x i64>, ptr %859, align 1
  %863 = load <4 x i64>, ptr %861, align 8
  %864 = xor <4 x i64> %863, %862
  %865 = bitcast <4 x i64> %864 to <8 x i32>
  %866 = shufflevector <8 x i32> %865, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %867 = bitcast <8 x i32> %866 to <4 x i64>
  %868 = and <4 x i64> %864, splat (i64 4294967295)
  %869 = and <4 x i64> %867, splat (i64 4294967295)
  %870 = mul nuw <4 x i64> %869, %868
  %871 = shufflevector <4 x i64> %862, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %872 = add <4 x i64> %856, %871
  %873 = add <4 x i64> %872, %870
  %874 = getelementptr inbounds nuw i8, ptr %859, i64 32
  %875 = load <4 x i64>, ptr %874, align 1
  %876 = getelementptr inbounds nuw i8, ptr %861, i64 32
  %877 = load <4 x i64>, ptr %876, align 8
  %878 = xor <4 x i64> %877, %875
  %879 = bitcast <4 x i64> %878 to <8 x i32>
  %880 = shufflevector <8 x i32> %879, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %881 = bitcast <8 x i32> %880 to <4 x i64>
  %882 = and <4 x i64> %878, splat (i64 4294967295)
  %883 = and <4 x i64> %881, splat (i64 4294967295)
  %884 = mul nuw <4 x i64> %883, %882
  %885 = shufflevector <4 x i64> %875, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %886 = add <4 x i64> %855, %885
  %887 = add <4 x i64> %886, %884
  %888 = add nuw nsw i64 %857, 1
  %889 = icmp eq i64 %888, 16
  br i1 %889, label %890, label %854

890:                                              ; preds = %854
  %891 = lshr <4 x i64> %873, splat (i64 47)
  %892 = xor <4 x i64> %846, %891
  %893 = xor <4 x i64> %892, %873
  %894 = bitcast <4 x i64> %893 to <8 x i32>
  %895 = shufflevector <8 x i32> %894, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %896 = bitcast <8 x i32> %895 to <4 x i64>
  %897 = and <4 x i64> %893, splat (i64 4294967295)
  %898 = mul nuw <4 x i64> %897, splat (i64 2654435761)
  %899 = mul <4 x i64> %896, splat (i64 -7046029290881679360)
  %900 = add <4 x i64> %899, %898
  %901 = lshr <4 x i64> %887, splat (i64 47)
  %902 = xor <4 x i64> %847, %901
  %903 = xor <4 x i64> %902, %887
  %904 = bitcast <4 x i64> %903 to <8 x i32>
  %905 = shufflevector <8 x i32> %904, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %906 = bitcast <8 x i32> %905 to <4 x i64>
  %907 = and <4 x i64> %903, splat (i64 4294967295)
  %908 = mul nuw <4 x i64> %907, splat (i64 2654435761)
  %909 = mul <4 x i64> %906, splat (i64 -7046029290881679360)
  %910 = add <4 x i64> %909, %908
  %911 = add nuw nsw i64 %851, 1
  %912 = icmp eq i64 %911, %843
  br i1 %912, label %913, label %848

913:                                              ; preds = %890, %795
  %914 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %795 ], [ %910, %890 ]
  %915 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %795 ], [ %900, %890 ]
  %916 = and i64 %1, -1024
  %917 = and i64 %1, 1023
  %918 = lshr i64 %917, 6
  %919 = getelementptr inbounds nuw i8, ptr %0, i64 %916
  %920 = icmp samesign ult i64 %917, 64
  br i1 %920, label %957, label %921

921:                                              ; preds = %913, %921
  %922 = phi <4 x i64> [ %954, %921 ], [ %914, %913 ]
  %923 = phi <4 x i64> [ %940, %921 ], [ %915, %913 ]
  %924 = phi i64 [ %955, %921 ], [ 0, %913 ]
  %925 = shl i64 %924, 6
  %926 = getelementptr inbounds nuw i8, ptr %919, i64 %925
  %927 = shl i64 %924, 3
  %928 = getelementptr inbounds nuw i8, ptr %4, i64 %927
  %929 = load <4 x i64>, ptr %926, align 1
  %930 = load <4 x i64>, ptr %928, align 8
  %931 = xor <4 x i64> %930, %929
  %932 = bitcast <4 x i64> %931 to <8 x i32>
  %933 = shufflevector <8 x i32> %932, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %934 = bitcast <8 x i32> %933 to <4 x i64>
  %935 = and <4 x i64> %931, splat (i64 4294967295)
  %936 = and <4 x i64> %934, splat (i64 4294967295)
  %937 = mul nuw <4 x i64> %936, %935
  %938 = shufflevector <4 x i64> %929, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %939 = add <4 x i64> %923, %938
  %940 = add <4 x i64> %939, %937
  %941 = getelementptr inbounds nuw i8, ptr %926, i64 32
  %942 = load <4 x i64>, ptr %941, align 1
  %943 = getelementptr inbounds nuw i8, ptr %928, i64 32
  %944 = load <4 x i64>, ptr %943, align 8
  %945 = xor <4 x i64> %944, %942
  %946 = bitcast <4 x i64> %945 to <8 x i32>
  %947 = shufflevector <8 x i32> %946, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %948 = bitcast <8 x i32> %947 to <4 x i64>
  %949 = and <4 x i64> %945, splat (i64 4294967295)
  %950 = and <4 x i64> %948, splat (i64 4294967295)
  %951 = mul nuw <4 x i64> %950, %949
  %952 = shufflevector <4 x i64> %942, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %953 = add <4 x i64> %922, %952
  %954 = add <4 x i64> %953, %951
  %955 = add nuw nsw i64 %924, 1
  %956 = icmp eq i64 %955, %918
  br i1 %956, label %957, label %921

957:                                              ; preds = %921, %913
  %958 = phi <4 x i64> [ %914, %913 ], [ %954, %921 ]
  %959 = phi <4 x i64> [ %915, %913 ], [ %940, %921 ]
  %960 = and i64 %1, 63
  %961 = icmp eq i64 %960, 0
  br i1 %961, label %962, label %971

962:                                              ; preds = %957
  %963 = getelementptr inbounds nuw i8, ptr %4, i64 125
  %964 = load i64, ptr %963, align 1
  %965 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %966 = load i64, ptr %965, align 1
  %967 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %968 = load i64, ptr %967, align 1
  %969 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %970 = load i64, ptr %969, align 1
  br label %1011

971:                                              ; preds = %957
  %972 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %973 = getelementptr inbounds i8, ptr %972, i64 -64
  %974 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %975 = load <4 x i64>, ptr %973, align 1
  %976 = load <4 x i64>, ptr %974, align 1
  %977 = xor <4 x i64> %976, %975
  %978 = bitcast <4 x i64> %977 to <8 x i32>
  %979 = shufflevector <8 x i32> %978, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %980 = bitcast <8 x i32> %979 to <4 x i64>
  %981 = and <4 x i64> %977, splat (i64 4294967295)
  %982 = and <4 x i64> %980, splat (i64 4294967295)
  %983 = mul nuw <4 x i64> %982, %981
  %984 = shufflevector <4 x i64> %975, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %985 = add <4 x i64> %959, %984
  %986 = add <4 x i64> %985, %983
  %987 = getelementptr inbounds i8, ptr %972, i64 -32
  %988 = load <4 x i64>, ptr %987, align 1
  %989 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %990 = load <4 x i64>, ptr %989, align 1
  %991 = xor <4 x i64> %990, %988
  %992 = bitcast <4 x i64> %991 to <8 x i32>
  %993 = shufflevector <8 x i32> %992, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %994 = bitcast <8 x i32> %993 to <4 x i64>
  %995 = and <4 x i64> %991, splat (i64 4294967295)
  %996 = and <4 x i64> %994, splat (i64 4294967295)
  %997 = mul nuw <4 x i64> %996, %995
  %998 = shufflevector <4 x i64> %988, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %999 = add <4 x i64> %958, %998
  %1000 = add <4 x i64> %999, %997
  %1001 = bitcast <4 x i64> %976 to i256
  %1002 = lshr i256 %1001, 32
  %1003 = trunc i256 %1002 to i64
  %1004 = lshr i256 %1001, 96
  %1005 = trunc i256 %1004 to i64
  %1006 = lshr i256 %1001, 160
  %1007 = trunc i256 %1006 to i64
  %1008 = bitcast <4 x i64> %990 to i256
  %1009 = lshr i256 %1008, 32
  %1010 = trunc i256 %1009 to i64
  br label %1011

1011:                                             ; preds = %971, %962
  %1012 = phi i64 [ %970, %962 ], [ %1010, %971 ]
  %1013 = phi i64 [ %968, %962 ], [ %1007, %971 ]
  %1014 = phi i64 [ %966, %962 ], [ %1005, %971 ]
  %1015 = phi i64 [ %964, %962 ], [ %1003, %971 ]
  %1016 = phi <4 x i64> [ %958, %962 ], [ %1000, %971 ]
  %1017 = phi <4 x i64> [ %959, %962 ], [ %986, %971 ]
  %1018 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %1019 = mul i64 %1, -7046029288634856825
  %1020 = extractelement <4 x i64> %1017, i64 0
  %1021 = extractelement <4 x i64> %1017, i64 1
  %1022 = load i64, ptr %1018, align 1
  %1023 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %1024 = load i64, ptr %1023, align 1
  %1025 = xor i64 %1022, %1020
  %1026 = xor i64 %1024, %1021
  %1027 = zext i64 %1025 to i128
  %1028 = zext i64 %1026 to i128
  %1029 = mul nuw i128 %1028, %1027
  %1030 = lshr i128 %1029, 64
  %1031 = xor i128 %1030, %1029
  %1032 = trunc i128 %1031 to i64
  %1033 = add i64 %1019, %1032
  %1034 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %1035 = extractelement <4 x i64> %1017, i64 2
  %1036 = extractelement <4 x i64> %1017, i64 3
  %1037 = load i64, ptr %1034, align 1
  %1038 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %1039 = load i64, ptr %1038, align 1
  %1040 = xor i64 %1037, %1035
  %1041 = xor i64 %1039, %1036
  %1042 = zext i64 %1040 to i128
  %1043 = zext i64 %1041 to i128
  %1044 = mul nuw i128 %1043, %1042
  %1045 = lshr i128 %1044, 64
  %1046 = xor i128 %1045, %1044
  %1047 = trunc i128 %1046 to i64
  %1048 = add i64 %1033, %1047
  %1049 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %1050 = extractelement <4 x i64> %1016, i64 0
  %1051 = extractelement <4 x i64> %1016, i64 1
  %1052 = load i64, ptr %1049, align 1
  %1053 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %1054 = load i64, ptr %1053, align 1
  %1055 = xor i64 %1052, %1050
  %1056 = xor i64 %1054, %1051
  %1057 = zext i64 %1055 to i128
  %1058 = zext i64 %1056 to i128
  %1059 = mul nuw i128 %1058, %1057
  %1060 = lshr i128 %1059, 64
  %1061 = xor i128 %1060, %1059
  %1062 = trunc i128 %1061 to i64
  %1063 = add i64 %1048, %1062
  %1064 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %1065 = extractelement <4 x i64> %1016, i64 2
  %1066 = extractelement <4 x i64> %1016, i64 3
  %1067 = load i64, ptr %1064, align 1
  %1068 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %1069 = load i64, ptr %1068, align 1
  %1070 = xor i64 %1067, %1065
  %1071 = xor i64 %1069, %1066
  %1072 = zext i64 %1070 to i128
  %1073 = zext i64 %1071 to i128
  %1074 = mul nuw i128 %1073, %1072
  %1075 = lshr i128 %1074, 64
  %1076 = xor i128 %1075, %1074
  %1077 = trunc i128 %1076 to i64
  %1078 = add i64 %1063, %1077
  %1079 = lshr i64 %1078, 37
  %1080 = xor i64 %1079, %1078
  %1081 = mul i64 %1080, 1609587929392839161
  %1082 = lshr i64 %1081, 32
  %1083 = xor i64 %1082, %1081
  %1084 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %1085 = mul i64 %1, -4417276706812531889
  %1086 = xor i64 %1085, -1
  %1087 = load i64, ptr %1084, align 1
  %1088 = xor i64 %1087, %1020
  %1089 = xor i64 %1021, %1015
  %1090 = zext i64 %1088 to i128
  %1091 = zext i64 %1089 to i128
  %1092 = mul nuw i128 %1090, %1091
  %1093 = lshr i128 %1092, 64
  %1094 = xor i128 %1093, %1092
  %1095 = trunc i128 %1094 to i64
  %1096 = xor i64 %1035, %1014
  %1097 = xor i64 %1036, %1013
  %1098 = zext i64 %1096 to i128
  %1099 = zext i64 %1097 to i128
  %1100 = mul nuw i128 %1099, %1098
  %1101 = lshr i128 %1100, 64
  %1102 = xor i128 %1101, %1100
  %1103 = trunc i128 %1102 to i64
  %1104 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %1105 = load i64, ptr %1104, align 1
  %1106 = xor i64 %1105, %1050
  %1107 = xor i64 %1051, %1012
  %1108 = zext i64 %1106 to i128
  %1109 = zext i64 %1107 to i128
  %1110 = mul nuw i128 %1108, %1109
  %1111 = lshr i128 %1110, 64
  %1112 = xor i128 %1111, %1110
  %1113 = trunc i128 %1112 to i64
  %1114 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %1115 = load i64, ptr %1114, align 1
  %1116 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %1117 = load i64, ptr %1116, align 1
  %1118 = xor i64 %1115, %1065
  %1119 = xor i64 %1117, %1066
  %1120 = zext i64 %1118 to i128
  %1121 = zext i64 %1119 to i128
  %1122 = mul nuw i128 %1121, %1120
  %1123 = lshr i128 %1122, 64
  %1124 = xor i128 %1123, %1122
  %1125 = trunc i128 %1124 to i64
  %1126 = add i64 %1103, %1086
  %1127 = add i64 %1126, %1095
  %1128 = add i64 %1127, %1113
  %1129 = add i64 %1128, %1125
  br label %1130

1130:                                             ; preds = %704, %1011
  %1131 = phi i64 [ %1129, %1011 ], [ %794, %704 ]
  %1132 = phi i64 [ %1083, %1011 ], [ %756, %704 ]
  %1133 = lshr i64 %1131, 37
  %1134 = xor i64 %1133, %1131
  %1135 = mul i64 %1134, 1609587929392839161
  %1136 = lshr i64 %1135, 32
  %1137 = xor i64 %1136, %1135
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #26
  br label %1138

1138:                                             ; preds = %88, %86, %48, %8, %1130, %503, %245
  %1139 = phi i64 [ %293, %245 ], [ %552, %503 ], [ %1132, %1130 ], [ %40, %8 ], [ %80, %48 ], [ %119, %88 ], [ 0, %86 ]
  %1140 = phi i64 [ %299, %245 ], [ %558, %503 ], [ %1137, %1130 ], [ %45, %8 ], [ %85, %48 ], [ %124, %88 ], [ 0, %86 ]
  %1141 = insertvalue { i64, i64 } poison, i64 %1139, 0
  %1142 = insertvalue { i64, i64 } %1141, i64 %1140, 1
  ret { i64, i64 } %1142
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = alloca [192 x i8], align 8
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %125

6:                                                ; preds = %3
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %46

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 1
  %10 = add i64 %2, -4734510112055689544
  %11 = xor i64 %9, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 2066345149520216444, %2
  %16 = xor i64 %14, %15
  %17 = xor i64 %11, %16
  %18 = zext i64 %17 to i128
  %19 = mul nuw i128 %18, 11400714785074694791
  %20 = trunc i128 %19 to i64
  %21 = lshr i128 %19, 64
  %22 = trunc nuw i128 %21 to i64
  %23 = mul nuw nsw i64 %1, 374761393
  %24 = add i64 %23, %20
  %25 = mul i64 %16, -7046029288634856825
  %26 = add i64 %25, %22
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %24
  %29 = zext i64 %28 to i128
  %30 = mul nuw i128 %29, 14029467366897019727
  %31 = trunc i128 %30 to i64
  %32 = lshr i128 %30, 64
  %33 = trunc nuw i128 %32 to i64
  %34 = mul i64 %26, -4417276706812531889
  %35 = add i64 %34, %33
  %36 = lshr i64 %31, 37
  %37 = xor i64 %36, %31
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  %41 = lshr i64 %35, 37
  %42 = xor i64 %41, %35
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  br label %1138

46:                                               ; preds = %6
  %47 = icmp samesign ugt i64 %1, 3
  br i1 %47, label %48, label %86

48:                                               ; preds = %46
  %49 = load i32, ptr %0, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %51 = getelementptr inbounds i8, ptr %50, i64 -4
  %52 = load i32, ptr %51, align 1
  %53 = zext i32 %49 to i64
  %54 = zext i32 %52 to i64
  %55 = shl nuw i64 %54, 32
  %56 = or disjoint i64 %55, %53
  %57 = tail call noundef i64 @llvm.bswap.i64(i64 %56)
  %58 = add i64 %2, -4734510112055689544
  %59 = xor i64 %56, %58
  %60 = sub i64 2066345149520216444, %2
  %61 = xor i64 %57, %60
  %62 = lshr i64 %59, 51
  %63 = xor i64 %62, %59
  %64 = mul i64 %63, 2654435761
  %65 = add i64 %64, %1
  %66 = lshr i64 %65, 47
  %67 = xor i64 %66, %65
  %68 = mul i64 %67, -4417276706812531889
  %69 = lshr i64 %61, 47
  %70 = xor i64 %69, %61
  %71 = mul i64 %70, -7046029288634856825
  %72 = sub i64 %71, %1
  %73 = lshr i64 %72, 43
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, -8796714831421723037
  %76 = lshr i64 %68, 37
  %77 = xor i64 %76, %68
  %78 = mul i64 %77, 1609587929392839161
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  %81 = lshr i64 %75, 37
  %82 = xor i64 %81, %75
  %83 = mul i64 %82, 1609587929392839161
  %84 = lshr i64 %83, 32
  %85 = xor i64 %84, %83
  br label %1138

86:                                               ; preds = %46
  %87 = icmp eq i64 %1, 0
  br i1 %87, label %1138, label %88

88:                                               ; preds = %86
  %89 = load i8, ptr %0, align 1
  %90 = lshr i64 %1, 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr i8, ptr %0, i64 %1
  %94 = getelementptr i8, ptr %93, i64 -1
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %89 to i32
  %97 = zext i8 %92 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = or disjoint i32 %98, %96
  %100 = zext i8 %95 to i32
  %101 = shl nuw nsw i32 %100, 16
  %102 = or disjoint i32 %99, %101
  %103 = trunc nuw nsw i64 %1 to i32
  %104 = shl nuw nsw i32 %103, 24
  %105 = or disjoint i32 %102, %104
  %106 = tail call noundef i32 @llvm.bswap.i32(i32 %105)
  %107 = zext nneg i32 %105 to i64
  %108 = add i64 %2, 963444408
  %109 = xor i64 %108, %107
  %110 = zext i32 %106 to i64
  %111 = sub i64 3192628259, %2
  %112 = xor i64 %111, %110
  %113 = mul i64 %109, -7046029288634856825
  %114 = mul i64 %112, 2870177450012600261
  %115 = lshr i64 %113, 37
  %116 = xor i64 %115, %113
  %117 = mul i64 %116, 1609587929392839161
  %118 = lshr i64 %117, 32
  %119 = xor i64 %118, %117
  %120 = lshr i64 %114, 37
  %121 = xor i64 %120, %114
  %122 = mul i64 %121, 1609587929392839161
  %123 = lshr i64 %122, 32
  %124 = xor i64 %123, %122
  br label %1138

125:                                              ; preds = %3
  %126 = icmp ult i64 %1, 129
  br i1 %126, label %127, label %300

127:                                              ; preds = %125
  %128 = mul i64 %1, -7046029288634856825
  %129 = icmp samesign ugt i64 %1, 32
  br i1 %129, label %130, label %245

130:                                              ; preds = %127
  %131 = icmp samesign ugt i64 %1, 64
  br i1 %131, label %132, label %207

132:                                              ; preds = %130
  %133 = icmp samesign ugt i64 %1, 96
  br i1 %133, label %134, label %169

134:                                              ; preds = %132
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %137 = getelementptr inbounds i8, ptr %136, i64 -64
  %138 = load i64, ptr %135, align 1
  %139 = getelementptr i8, ptr %0, i64 56
  %140 = load i64, ptr %139, align 1
  %141 = load i64, ptr %137, align 1
  %142 = getelementptr i8, ptr %136, i64 -56
  %143 = load i64, ptr %142, align 1
  %144 = add i64 %2, 4554437623014685352
  %145 = xor i64 %138, %144
  %146 = sub i64 2111919702937427193, %2
  %147 = xor i64 %140, %146
  %148 = zext i64 %145 to i128
  %149 = zext i64 %147 to i128
  %150 = mul nuw i128 %149, %148
  %151 = lshr i128 %150, 64
  %152 = xor i128 %151, %150
  %153 = trunc i128 %152 to i64
  %154 = add i64 %128, %153
  %155 = add i64 %143, %141
  %156 = xor i64 %154, %155
  %157 = add i64 %2, 3556072174620004746
  %158 = xor i64 %141, %157
  %159 = sub i64 7238261902898274248, %2
  %160 = xor i64 %143, %159
  %161 = zext i64 %158 to i128
  %162 = zext i64 %160 to i128
  %163 = mul nuw i128 %162, %161
  %164 = lshr i128 %163, 64
  %165 = xor i128 %164, %163
  %166 = trunc i128 %165 to i64
  %167 = add i64 %140, %138
  %168 = xor i64 %167, %166
  br label %169

169:                                              ; preds = %134, %132
  %170 = phi i64 [ %156, %134 ], [ %128, %132 ]
  %171 = phi i64 [ %168, %134 ], [ 0, %132 ]
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %174 = getelementptr inbounds i8, ptr %173, i64 -48
  %175 = load i64, ptr %172, align 1
  %176 = getelementptr i8, ptr %0, i64 40
  %177 = load i64, ptr %176, align 1
  %178 = load i64, ptr %174, align 1
  %179 = getelementptr i8, ptr %173, i64 -40
  %180 = load i64, ptr %179, align 1
  %181 = add i64 %2, -3818837453329782724
  %182 = xor i64 %175, %181
  %183 = sub i64 -6688317018830679928, %2
  %184 = xor i64 %177, %183
  %185 = zext i64 %182 to i128
  %186 = zext i64 %184 to i128
  %187 = mul nuw i128 %186, %185
  %188 = lshr i128 %187, 64
  %189 = xor i128 %188, %187
  %190 = trunc i128 %189 to i64
  %191 = add i64 %170, %190
  %192 = add i64 %180, %178
  %193 = xor i64 %191, %192
  %194 = add i64 %2, 5690594596133299313
  %195 = xor i64 %178, %194
  %196 = sub i64 -2833645246901970632, %2
  %197 = xor i64 %180, %196
  %198 = zext i64 %195 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %171, %203
  %205 = add i64 %177, %175
  %206 = xor i64 %204, %205
  br label %207

207:                                              ; preds = %169, %130
  %208 = phi i64 [ %193, %169 ], [ %128, %130 ]
  %209 = phi i64 [ %206, %169 ], [ 0, %130 ]
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %212 = getelementptr inbounds i8, ptr %211, i64 -32
  %213 = load i64, ptr %210, align 1
  %214 = getelementptr i8, ptr %0, i64 24
  %215 = load i64, ptr %214, align 1
  %216 = load i64, ptr %212, align 1
  %217 = getelementptr i8, ptr %211, i64 -24
  %218 = load i64, ptr %217, align 1
  %219 = add i64 %2, 8711581037947681227
  %220 = xor i64 %213, %219
  %221 = sub i64 2410270004345854594, %2
  %222 = xor i64 %215, %221
  %223 = zext i64 %220 to i128
  %224 = zext i64 %222 to i128
  %225 = mul nuw i128 %224, %223
  %226 = lshr i128 %225, 64
  %227 = xor i128 %226, %225
  %228 = trunc i128 %227 to i64
  %229 = add i64 %208, %228
  %230 = add i64 %218, %216
  %231 = xor i64 %229, %230
  %232 = add i64 %2, -8204357891075471176
  %233 = xor i64 %216, %232
  %234 = sub i64 5487137525590930912, %2
  %235 = xor i64 %218, %234
  %236 = zext i64 %233 to i128
  %237 = zext i64 %235 to i128
  %238 = mul nuw i128 %237, %236
  %239 = lshr i128 %238, 64
  %240 = xor i128 %239, %238
  %241 = trunc i128 %240 to i64
  %242 = add i64 %209, %241
  %243 = add i64 %215, %213
  %244 = xor i64 %242, %243
  br label %245

245:                                              ; preds = %207, %127
  %246 = phi i64 [ %231, %207 ], [ %128, %127 ]
  %247 = phi i64 [ %244, %207 ], [ 0, %127 ]
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %249 = getelementptr inbounds i8, ptr %248, i64 -16
  %250 = load i64, ptr %0, align 1
  %251 = getelementptr i8, ptr %0, i64 8
  %252 = load i64, ptr %251, align 1
  %253 = load i64, ptr %249, align 1
  %254 = getelementptr i8, ptr %248, i64 -8
  %255 = load i64, ptr %254, align 1
  %256 = add i64 %2, -4734510112055689544
  %257 = xor i64 %250, %256
  %258 = sub i64 2066345149520216444, %2
  %259 = xor i64 %252, %258
  %260 = zext i64 %257 to i128
  %261 = zext i64 %259 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %246, %265
  %267 = add i64 %255, %253
  %268 = xor i64 %266, %267
  %269 = add i64 %2, -2623469361688619810
  %270 = xor i64 %253, %269
  %271 = sub i64 2262974939099578482, %2
  %272 = xor i64 %255, %271
  %273 = zext i64 %270 to i128
  %274 = zext i64 %272 to i128
  %275 = mul nuw i128 %274, %273
  %276 = lshr i128 %275, 64
  %277 = xor i128 %276, %275
  %278 = trunc i128 %277 to i64
  %279 = add i64 %247, %278
  %280 = add i64 %252, %250
  %281 = xor i64 %279, %280
  %282 = add i64 %281, %268
  %283 = mul i64 %268, -7046029288634856825
  %284 = mul i64 %281, -8796714831421723037
  %285 = sub i64 %1, %2
  %286 = mul i64 %285, -4417276706812531889
  %287 = add i64 %283, %286
  %288 = add i64 %287, %284
  %289 = lshr i64 %282, 37
  %290 = xor i64 %289, %282
  %291 = mul i64 %290, 1609587929392839161
  %292 = lshr i64 %291, 32
  %293 = xor i64 %292, %291
  %294 = lshr i64 %288, 37
  %295 = xor i64 %294, %288
  %296 = mul i64 %295, 1609587929392839161
  %297 = lshr i64 %296, 32
  %298 = xor i64 %297, %296
  %299 = sub i64 0, %298
  br label %1138

300:                                              ; preds = %125
  %301 = icmp ult i64 %1, 241
  br i1 %301, label %302, label %559

302:                                              ; preds = %300
  %303 = trunc nuw nsw i64 %1 to i32
  %304 = mul i64 %1, -7046029288634856825
  %305 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %306 = load i64, ptr %0, align 1
  %307 = getelementptr i8, ptr %0, i64 8
  %308 = load i64, ptr %307, align 1
  %309 = load i64, ptr %305, align 1
  %310 = getelementptr i8, ptr %0, i64 24
  %311 = load i64, ptr %310, align 1
  %312 = add i64 %2, -4734510112055689544
  %313 = xor i64 %306, %312
  %314 = sub i64 2066345149520216444, %2
  %315 = xor i64 %308, %314
  %316 = zext i64 %313 to i128
  %317 = zext i64 %315 to i128
  %318 = mul nuw i128 %317, %316
  %319 = lshr i128 %318, 64
  %320 = xor i128 %319, %318
  %321 = trunc i128 %320 to i64
  %322 = add i64 %304, %321
  %323 = add i64 %311, %309
  %324 = xor i64 %322, %323
  %325 = add i64 %2, -2623469361688619810
  %326 = xor i64 %309, %325
  %327 = sub i64 2262974939099578482, %2
  %328 = xor i64 %311, %327
  %329 = zext i64 %326 to i128
  %330 = zext i64 %328 to i128
  %331 = mul nuw i128 %330, %329
  %332 = lshr i128 %331, 64
  %333 = xor i128 %332, %331
  %334 = trunc i128 %333 to i64
  %335 = add i64 %308, %306
  %336 = xor i64 %335, %334
  %337 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %338 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %339 = load i64, ptr %337, align 1
  %340 = getelementptr i8, ptr %0, i64 40
  %341 = load i64, ptr %340, align 1
  %342 = load i64, ptr %338, align 1
  %343 = getelementptr i8, ptr %0, i64 56
  %344 = load i64, ptr %343, align 1
  %345 = add i64 %2, 8711581037947681227
  %346 = xor i64 %339, %345
  %347 = sub i64 2410270004345854594, %2
  %348 = xor i64 %341, %347
  %349 = zext i64 %346 to i128
  %350 = zext i64 %348 to i128
  %351 = mul nuw i128 %350, %349
  %352 = lshr i128 %351, 64
  %353 = xor i128 %352, %351
  %354 = trunc i128 %353 to i64
  %355 = add i64 %324, %354
  %356 = add i64 %344, %342
  %357 = xor i64 %355, %356
  %358 = add i64 %2, -8204357891075471176
  %359 = xor i64 %342, %358
  %360 = sub i64 5487137525590930912, %2
  %361 = xor i64 %344, %360
  %362 = zext i64 %359 to i128
  %363 = zext i64 %361 to i128
  %364 = mul nuw i128 %363, %362
  %365 = lshr i128 %364, 64
  %366 = xor i128 %365, %364
  %367 = trunc i128 %366 to i64
  %368 = add i64 %336, %367
  %369 = add i64 %341, %339
  %370 = xor i64 %368, %369
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %372 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %373 = load i64, ptr %371, align 1
  %374 = getelementptr i8, ptr %0, i64 72
  %375 = load i64, ptr %374, align 1
  %376 = load i64, ptr %372, align 1
  %377 = getelementptr i8, ptr %0, i64 88
  %378 = load i64, ptr %377, align 1
  %379 = add i64 %2, -3818837453329782724
  %380 = xor i64 %373, %379
  %381 = sub i64 -6688317018830679928, %2
  %382 = xor i64 %375, %381
  %383 = zext i64 %380 to i128
  %384 = zext i64 %382 to i128
  %385 = mul nuw i128 %384, %383
  %386 = lshr i128 %385, 64
  %387 = xor i128 %386, %385
  %388 = trunc i128 %387 to i64
  %389 = add i64 %357, %388
  %390 = add i64 %378, %376
  %391 = xor i64 %389, %390
  %392 = add i64 %2, 5690594596133299313
  %393 = xor i64 %376, %392
  %394 = sub i64 -2833645246901970632, %2
  %395 = xor i64 %378, %394
  %396 = zext i64 %393 to i128
  %397 = zext i64 %395 to i128
  %398 = mul nuw i128 %397, %396
  %399 = lshr i128 %398, 64
  %400 = xor i128 %399, %398
  %401 = trunc i128 %400 to i64
  %402 = add i64 %370, %401
  %403 = add i64 %375, %373
  %404 = xor i64 %402, %403
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %407 = load i64, ptr %405, align 1
  %408 = getelementptr i8, ptr %0, i64 104
  %409 = load i64, ptr %408, align 1
  %410 = load i64, ptr %406, align 1
  %411 = getelementptr i8, ptr %0, i64 120
  %412 = load i64, ptr %411, align 1
  %413 = add i64 %2, 4554437623014685352
  %414 = xor i64 %407, %413
  %415 = sub i64 2111919702937427193, %2
  %416 = xor i64 %409, %415
  %417 = zext i64 %414 to i128
  %418 = zext i64 %416 to i128
  %419 = mul nuw i128 %418, %417
  %420 = lshr i128 %419, 64
  %421 = xor i128 %420, %419
  %422 = trunc i128 %421 to i64
  %423 = add i64 %391, %422
  %424 = add i64 %412, %410
  %425 = xor i64 %423, %424
  %426 = add i64 %2, 3556072174620004746
  %427 = xor i64 %410, %426
  %428 = sub i64 7238261902898274248, %2
  %429 = xor i64 %412, %428
  %430 = zext i64 %427 to i128
  %431 = zext i64 %429 to i128
  %432 = mul nuw i128 %431, %430
  %433 = lshr i128 %432, 64
  %434 = xor i128 %433, %432
  %435 = trunc i128 %434 to i64
  %436 = add i64 %404, %435
  %437 = add i64 %409, %407
  %438 = xor i64 %436, %437
  %439 = lshr i32 %303, 5
  %440 = lshr i64 %425, 37
  %441 = xor i64 %440, %425
  %442 = mul i64 %441, 1609587929392839161
  %443 = lshr i64 %442, 32
  %444 = xor i64 %443, %442
  %445 = lshr i64 %438, 37
  %446 = xor i64 %445, %438
  %447 = mul i64 %446, 1609587929392839161
  %448 = lshr i64 %447, 32
  %449 = xor i64 %448, %447
  %450 = icmp eq i32 %439, 4
  br i1 %450, label %503, label %451

451:                                              ; preds = %302
  %452 = zext nneg i32 %439 to i64
  br label %453

453:                                              ; preds = %453, %451
  %454 = phi i64 [ 4, %451 ], [ %501, %453 ]
  %455 = phi i64 [ %449, %451 ], [ %500, %453 ]
  %456 = phi i64 [ %444, %451 ], [ %483, %453 ]
  %457 = shl nsw i64 %454, 5
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 %457
  %459 = getelementptr inbounds nuw i8, ptr %458, i64 16
  %460 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @kSecret, i64 3), i64 %457
  %461 = getelementptr i8, ptr %460, i64 -128
  %462 = load i64, ptr %458, align 1
  %463 = getelementptr i8, ptr %458, i64 8
  %464 = load i64, ptr %463, align 1
  %465 = load i64, ptr %459, align 1
  %466 = getelementptr i8, ptr %458, i64 24
  %467 = load i64, ptr %466, align 1
  %468 = load i64, ptr %461, align 1
  %469 = getelementptr i8, ptr %460, i64 -120
  %470 = load i64, ptr %469, align 1
  %471 = add i64 %468, %2
  %472 = xor i64 %471, %462
  %473 = sub i64 %470, %2
  %474 = xor i64 %473, %464
  %475 = zext i64 %472 to i128
  %476 = zext i64 %474 to i128
  %477 = mul nuw i128 %476, %475
  %478 = lshr i128 %477, 64
  %479 = xor i128 %478, %477
  %480 = trunc i128 %479 to i64
  %481 = add i64 %456, %480
  %482 = add i64 %467, %465
  %483 = xor i64 %481, %482
  %484 = getelementptr i8, ptr %460, i64 -112
  %485 = load i64, ptr %484, align 1
  %486 = getelementptr i8, ptr %460, i64 -104
  %487 = load i64, ptr %486, align 1
  %488 = add i64 %485, %2
  %489 = xor i64 %488, %465
  %490 = sub i64 %487, %2
  %491 = xor i64 %490, %467
  %492 = zext i64 %489 to i128
  %493 = zext i64 %491 to i128
  %494 = mul nuw i128 %493, %492
  %495 = lshr i128 %494, 64
  %496 = xor i128 %495, %494
  %497 = trunc i128 %496 to i64
  %498 = add i64 %455, %497
  %499 = add i64 %464, %462
  %500 = xor i64 %498, %499
  %501 = add nuw nsw i64 %454, 1
  %502 = icmp eq i64 %501, %452
  br i1 %502, label %503, label %453

503:                                              ; preds = %453, %302
  %504 = phi i64 [ %444, %302 ], [ %483, %453 ]
  %505 = phi i64 [ %449, %302 ], [ %500, %453 ]
  %506 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %507 = getelementptr inbounds i8, ptr %506, i64 -16
  %508 = getelementptr inbounds i8, ptr %506, i64 -32
  %509 = load i64, ptr %507, align 1
  %510 = getelementptr i8, ptr %506, i64 -8
  %511 = load i64, ptr %510, align 1
  %512 = load i64, ptr %508, align 1
  %513 = getelementptr i8, ptr %506, i64 -24
  %514 = load i64, ptr %513, align 1
  %515 = sub i64 5695865814404364607, %2
  %516 = xor i64 %509, %515
  %517 = add i64 %2, 6464017090953185821
  %518 = xor i64 %511, %517
  %519 = zext i64 %516 to i128
  %520 = zext i64 %518 to i128
  %521 = mul nuw i128 %520, %519
  %522 = lshr i128 %521, 64
  %523 = xor i128 %522, %521
  %524 = trunc i128 %523 to i64
  %525 = add i64 %504, %524
  %526 = add i64 %514, %512
  %527 = xor i64 %525, %526
  %528 = sub i64 8320639771003045937, %2
  %529 = xor i64 %512, %528
  %530 = add i64 %2, -1453760514566526364
  %531 = xor i64 %514, %530
  %532 = zext i64 %529 to i128
  %533 = zext i64 %531 to i128
  %534 = mul nuw i128 %533, %532
  %535 = lshr i128 %534, 64
  %536 = xor i128 %535, %534
  %537 = trunc i128 %536 to i64
  %538 = add i64 %505, %537
  %539 = add i64 %511, %509
  %540 = xor i64 %538, %539
  %541 = add i64 %540, %527
  %542 = mul i64 %527, -7046029288634856825
  %543 = mul i64 %540, -8796714831421723037
  %544 = sub i64 %1, %2
  %545 = mul i64 %544, -4417276706812531889
  %546 = add i64 %542, %545
  %547 = add i64 %546, %543
  %548 = lshr i64 %541, 37
  %549 = xor i64 %548, %541
  %550 = mul i64 %549, 1609587929392839161
  %551 = lshr i64 %550, 32
  %552 = xor i64 %551, %550
  %553 = lshr i64 %547, 37
  %554 = xor i64 %553, %547
  %555 = mul i64 %554, 1609587929392839161
  %556 = lshr i64 %555, 32
  %557 = xor i64 %556, %555
  %558 = sub i64 0, %557
  br label %1138

559:                                              ; preds = %300
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #26
  %560 = icmp eq i64 %2, 0
  br i1 %560, label %561, label %795

561:                                              ; preds = %559
  %562 = lshr i64 %1, 10
  %563 = icmp ult i64 %1, 1024
  br i1 %563, label %629, label %564

564:                                              ; preds = %561, %606
  %565 = phi <4 x i64> [ %626, %606 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %561 ]
  %566 = phi <4 x i64> [ %616, %606 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %561 ]
  %567 = phi i64 [ %627, %606 ], [ 0, %561 ]
  %568 = shl i64 %567, 10
  %569 = getelementptr inbounds nuw i8, ptr %0, i64 %568
  br label %570

570:                                              ; preds = %570, %564
  %571 = phi <4 x i64> [ %603, %570 ], [ %565, %564 ]
  %572 = phi <4 x i64> [ %589, %570 ], [ %566, %564 ]
  %573 = phi i64 [ %604, %570 ], [ 0, %564 ]
  %574 = shl i64 %573, 6
  %575 = getelementptr inbounds nuw i8, ptr %569, i64 %574
  %576 = shl i64 %573, 3
  %577 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %576
  %578 = load <4 x i64>, ptr %575, align 1
  %579 = load <4 x i64>, ptr %577, align 8
  %580 = xor <4 x i64> %579, %578
  %581 = bitcast <4 x i64> %580 to <8 x i32>
  %582 = shufflevector <8 x i32> %581, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %583 = bitcast <8 x i32> %582 to <4 x i64>
  %584 = and <4 x i64> %580, splat (i64 4294967295)
  %585 = and <4 x i64> %583, splat (i64 4294967295)
  %586 = mul nuw <4 x i64> %585, %584
  %587 = shufflevector <4 x i64> %578, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %588 = add <4 x i64> %572, %587
  %589 = add <4 x i64> %588, %586
  %590 = getelementptr inbounds nuw i8, ptr %575, i64 32
  %591 = load <4 x i64>, ptr %590, align 1
  %592 = getelementptr inbounds nuw i8, ptr %577, i64 32
  %593 = load <4 x i64>, ptr %592, align 8
  %594 = xor <4 x i64> %593, %591
  %595 = bitcast <4 x i64> %594 to <8 x i32>
  %596 = shufflevector <8 x i32> %595, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %597 = bitcast <8 x i32> %596 to <4 x i64>
  %598 = and <4 x i64> %594, splat (i64 4294967295)
  %599 = and <4 x i64> %597, splat (i64 4294967295)
  %600 = mul nuw <4 x i64> %599, %598
  %601 = shufflevector <4 x i64> %591, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %602 = add <4 x i64> %571, %601
  %603 = add <4 x i64> %602, %600
  %604 = add nuw nsw i64 %573, 1
  %605 = icmp eq i64 %604, 16
  br i1 %605, label %606, label %570

606:                                              ; preds = %570
  %607 = lshr <4 x i64> %589, splat (i64 47)
  %608 = xor <4 x i64> %589, %607
  %609 = xor <4 x i64> %608, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %610 = bitcast <4 x i64> %609 to <8 x i32>
  %611 = shufflevector <8 x i32> %610, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %612 = bitcast <8 x i32> %611 to <4 x i64>
  %613 = and <4 x i64> %609, splat (i64 4294967295)
  %614 = mul nuw <4 x i64> %613, splat (i64 2654435761)
  %615 = mul <4 x i64> %612, splat (i64 -7046029290881679360)
  %616 = add <4 x i64> %615, %614
  %617 = lshr <4 x i64> %603, splat (i64 47)
  %618 = xor <4 x i64> %603, %617
  %619 = xor <4 x i64> %618, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %620 = bitcast <4 x i64> %619 to <8 x i32>
  %621 = shufflevector <8 x i32> %620, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %622 = bitcast <8 x i32> %621 to <4 x i64>
  %623 = and <4 x i64> %619, splat (i64 4294967295)
  %624 = mul nuw <4 x i64> %623, splat (i64 2654435761)
  %625 = mul <4 x i64> %622, splat (i64 -7046029290881679360)
  %626 = add <4 x i64> %625, %624
  %627 = add nuw nsw i64 %567, 1
  %628 = icmp eq i64 %627, %562
  br i1 %628, label %629, label %564

629:                                              ; preds = %606, %561
  %630 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %561 ], [ %626, %606 ]
  %631 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %561 ], [ %616, %606 ]
  %632 = and i64 %1, -1024
  %633 = and i64 %1, 1023
  %634 = lshr i64 %633, 6
  %635 = getelementptr inbounds nuw i8, ptr %0, i64 %632
  %636 = icmp samesign ult i64 %633, 64
  br i1 %636, label %673, label %637

637:                                              ; preds = %629, %637
  %638 = phi <4 x i64> [ %670, %637 ], [ %630, %629 ]
  %639 = phi <4 x i64> [ %656, %637 ], [ %631, %629 ]
  %640 = phi i64 [ %671, %637 ], [ 0, %629 ]
  %641 = shl i64 %640, 6
  %642 = getelementptr inbounds nuw i8, ptr %635, i64 %641
  %643 = shl i64 %640, 3
  %644 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %643
  %645 = load <4 x i64>, ptr %642, align 1
  %646 = load <4 x i64>, ptr %644, align 8
  %647 = xor <4 x i64> %646, %645
  %648 = bitcast <4 x i64> %647 to <8 x i32>
  %649 = shufflevector <8 x i32> %648, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %650 = bitcast <8 x i32> %649 to <4 x i64>
  %651 = and <4 x i64> %647, splat (i64 4294967295)
  %652 = and <4 x i64> %650, splat (i64 4294967295)
  %653 = mul nuw <4 x i64> %652, %651
  %654 = shufflevector <4 x i64> %645, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %655 = add <4 x i64> %639, %654
  %656 = add <4 x i64> %655, %653
  %657 = getelementptr inbounds nuw i8, ptr %642, i64 32
  %658 = load <4 x i64>, ptr %657, align 1
  %659 = getelementptr inbounds nuw i8, ptr %644, i64 32
  %660 = load <4 x i64>, ptr %659, align 8
  %661 = xor <4 x i64> %660, %658
  %662 = bitcast <4 x i64> %661 to <8 x i32>
  %663 = shufflevector <8 x i32> %662, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %664 = bitcast <8 x i32> %663 to <4 x i64>
  %665 = and <4 x i64> %661, splat (i64 4294967295)
  %666 = and <4 x i64> %664, splat (i64 4294967295)
  %667 = mul nuw <4 x i64> %666, %665
  %668 = shufflevector <4 x i64> %658, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %669 = add <4 x i64> %638, %668
  %670 = add <4 x i64> %669, %667
  %671 = add nuw nsw i64 %640, 1
  %672 = icmp eq i64 %671, %634
  br i1 %672, label %673, label %637

673:                                              ; preds = %637, %629
  %674 = phi <4 x i64> [ %630, %629 ], [ %670, %637 ]
  %675 = phi <4 x i64> [ %631, %629 ], [ %656, %637 ]
  %676 = and i64 %1, 63
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %704, label %678

678:                                              ; preds = %673
  %679 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %680 = getelementptr inbounds i8, ptr %679, i64 -64
  %681 = load <4 x i64>, ptr %680, align 1
  %682 = xor <4 x i64> %681, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %683 = bitcast <4 x i64> %682 to <8 x i32>
  %684 = shufflevector <8 x i32> %683, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %685 = bitcast <8 x i32> %684 to <4 x i64>
  %686 = and <4 x i64> %682, splat (i64 4294967295)
  %687 = and <4 x i64> %685, splat (i64 4294967295)
  %688 = mul nuw <4 x i64> %687, %686
  %689 = shufflevector <4 x i64> %681, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %690 = add <4 x i64> %675, %689
  %691 = add <4 x i64> %690, %688
  %692 = getelementptr inbounds i8, ptr %679, i64 -32
  %693 = load <4 x i64>, ptr %692, align 1
  %694 = xor <4 x i64> %693, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %695 = bitcast <4 x i64> %694 to <8 x i32>
  %696 = shufflevector <8 x i32> %695, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %697 = bitcast <8 x i32> %696 to <4 x i64>
  %698 = and <4 x i64> %694, splat (i64 4294967295)
  %699 = and <4 x i64> %697, splat (i64 4294967295)
  %700 = mul nuw <4 x i64> %699, %698
  %701 = shufflevector <4 x i64> %693, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %702 = add <4 x i64> %674, %701
  %703 = add <4 x i64> %702, %700
  br label %704

704:                                              ; preds = %678, %673
  %705 = phi <4 x i64> [ %703, %678 ], [ %674, %673 ]
  %706 = phi <4 x i64> [ %691, %678 ], [ %675, %673 ]
  %707 = mul i64 %1, -7046029288634856825
  %708 = extractelement <4 x i64> %706, i64 0
  %709 = extractelement <4 x i64> %706, i64 1
  %710 = xor i64 %708, 7914194659941938988
  %711 = xor i64 %709, -6611157965513653271
  %712 = zext i64 %710 to i128
  %713 = zext i64 %711 to i128
  %714 = mul nuw i128 %713, %712
  %715 = lshr i128 %714, 64
  %716 = xor i128 %715, %714
  %717 = trunc i128 %716 to i64
  %718 = extractelement <4 x i64> %706, i64 2
  %719 = extractelement <4 x i64> %706, i64 3
  %720 = xor i64 %718, -1839215637059881052
  %721 = xor i64 %719, -3433288310154277810
  %722 = zext i64 %720 to i128
  %723 = zext i64 %721 to i128
  %724 = mul nuw i128 %723, %722
  %725 = lshr i128 %724, 64
  %726 = xor i128 %725, %724
  %727 = trunc i128 %726 to i64
  %728 = extractelement <4 x i64> %705, i64 0
  %729 = extractelement <4 x i64> %705, i64 1
  %730 = xor i64 %728, 5046485836271438973
  %731 = xor i64 %729, -8055285457383852172
  %732 = zext i64 %730 to i128
  %733 = zext i64 %731 to i128
  %734 = mul nuw i128 %733, %732
  %735 = lshr i128 %734, 64
  %736 = xor i128 %735, %734
  %737 = trunc i128 %736 to i64
  %738 = extractelement <4 x i64> %705, i64 2
  %739 = extractelement <4 x i64> %705, i64 3
  %740 = xor i64 %738, 5920048007935066598
  %741 = xor i64 %739, 7336514198459093435
  %742 = zext i64 %740 to i128
  %743 = zext i64 %741 to i128
  %744 = mul nuw i128 %743, %742
  %745 = lshr i128 %744, 64
  %746 = xor i128 %745, %744
  %747 = trunc i128 %746 to i64
  %748 = add i64 %707, %737
  %749 = add i64 %748, %747
  %750 = add i64 %749, %717
  %751 = add i64 %750, %727
  %752 = lshr i64 %751, 37
  %753 = xor i64 %752, %751
  %754 = mul i64 %753, 1609587929392839161
  %755 = lshr i64 %754, 32
  %756 = xor i64 %755, %754
  %757 = mul i64 %1, -4417276706812531889
  %758 = xor i64 %757, -1
  %759 = xor i64 %708, -2753530472436770380
  %760 = xor i64 %709, 3784058077962335096
  %761 = zext i64 %759 to i128
  %762 = zext i64 %760 to i128
  %763 = mul nuw i128 %762, %761
  %764 = lshr i128 %763, 64
  %765 = xor i128 %764, %763
  %766 = trunc i128 %765 to i64
  %767 = xor i64 %718, -360392965937173549
  %768 = xor i64 %719, -5237161843349560557
  %769 = zext i64 %767 to i128
  %770 = zext i64 %768 to i128
  %771 = mul nuw i128 %770, %769
  %772 = lshr i128 %771, 64
  %773 = xor i128 %772, %771
  %774 = trunc i128 %773 to i64
  %775 = xor i64 %728, 2965150961192524528
  %776 = xor i64 %729, 9032178055121889492
  %777 = zext i64 %775 to i128
  %778 = zext i64 %776 to i128
  %779 = mul nuw i128 %778, %777
  %780 = lshr i128 %779, 64
  %781 = xor i128 %780, %779
  %782 = trunc i128 %781 to i64
  %783 = xor i64 %738, 8850058120466833735
  %784 = xor i64 %739, -7669846995664752176
  %785 = zext i64 %783 to i128
  %786 = zext i64 %784 to i128
  %787 = mul nuw i128 %786, %785
  %788 = lshr i128 %787, 64
  %789 = xor i128 %788, %787
  %790 = trunc i128 %789 to i64
  %791 = add i64 %782, %758
  %792 = add i64 %791, %790
  %793 = add i64 %792, %766
  %794 = add i64 %793, %774
  br label %1130

795:                                              ; preds = %559
  %796 = add i64 %2, -4734510112055689544
  store i64 %796, ptr %4, align 8
  %797 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %798 = sub i64 2066345149520216444, %2
  store i64 %798, ptr %797, align 8
  %799 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %800 = add i64 %2, -2623469361688619810
  store i64 %800, ptr %799, align 8
  %801 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %802 = sub i64 2262974939099578482, %2
  store i64 %802, ptr %801, align 8
  %803 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %804 = add i64 %2, 8711581037947681227
  store i64 %804, ptr %803, align 8
  %805 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %806 = sub i64 2410270004345854594, %2
  store i64 %806, ptr %805, align 8
  %807 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %808 = add i64 %2, -8204357891075471176
  store i64 %808, ptr %807, align 8
  %809 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %810 = sub i64 5487137525590930912, %2
  store i64 %810, ptr %809, align 8
  %811 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %812 = add i64 %2, -3818837453329782724
  store i64 %812, ptr %811, align 8
  %813 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %814 = sub i64 -6688317018830679928, %2
  store i64 %814, ptr %813, align 8
  %815 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %816 = add i64 %2, 5690594596133299313
  store i64 %816, ptr %815, align 8
  %817 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %818 = sub i64 -2833645246901970632, %2
  store i64 %818, ptr %817, align 8
  %819 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %820 = add i64 %2, 4554437623014685352
  store i64 %820, ptr %819, align 8
  %821 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %822 = sub i64 2111919702937427193, %2
  store i64 %822, ptr %821, align 8
  %823 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %824 = add i64 %2, 3556072174620004746
  store i64 %824, ptr %823, align 8
  %825 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %826 = sub i64 7238261902898274248, %2
  store i64 %826, ptr %825, align 8
  %827 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %828 = add i64 %2, -4329134394285701654
  store i64 %828, ptr %827, align 8
  %829 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %830 = sub i64 -1485321483350670907, %2
  store i64 %830, ptr %829, align 8
  %831 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %832 = add i64 %2, 5321830579834785047
  store i64 %832, ptr %831, align 8
  %833 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %834 = sub i64 -7032137544937171245, %2
  store i64 %834, ptr %833, align 8
  %835 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %836 = add i64 %2, -242834301215959509
  store i64 %836, ptr %835, align 8
  %837 = getelementptr inbounds nuw i8, ptr %4, i64 168
  %838 = sub i64 -3588858202114426737, %2
  store i64 %838, ptr %837, align 8
  %839 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %840 = add i64 %2, 2883454493032893253
  store i64 %840, ptr %839, align 8
  %841 = getelementptr inbounds nuw i8, ptr %4, i64 184
  %842 = sub i64 9097354517224871855, %2
  store i64 %842, ptr %841, align 8
  %843 = lshr i64 %1, 10
  %844 = icmp ult i64 %1, 1024
  br i1 %844, label %913, label %845

845:                                              ; preds = %795
  %846 = load <4 x i64>, ptr %827, align 8
  %847 = load <4 x i64>, ptr %835, align 8
  br label %848

848:                                              ; preds = %890, %845
  %849 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %845 ], [ %910, %890 ]
  %850 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %845 ], [ %900, %890 ]
  %851 = phi i64 [ 0, %845 ], [ %911, %890 ]
  %852 = shl i64 %851, 10
  %853 = getelementptr inbounds nuw i8, ptr %0, i64 %852
  br label %854

854:                                              ; preds = %854, %848
  %855 = phi <4 x i64> [ %887, %854 ], [ %849, %848 ]
  %856 = phi <4 x i64> [ %873, %854 ], [ %850, %848 ]
  %857 = phi i64 [ %888, %854 ], [ 0, %848 ]
  %858 = shl i64 %857, 6
  %859 = getelementptr inbounds nuw i8, ptr %853, i64 %858
  %860 = shl i64 %857, 3
  %861 = getelementptr inbounds nuw i8, ptr %4, i64 %860
  %862 = load <4 x i64>, ptr %859, align 1
  %863 = load <4 x i64>, ptr %861, align 8
  %864 = xor <4 x i64> %863, %862
  %865 = bitcast <4 x i64> %864 to <8 x i32>
  %866 = shufflevector <8 x i32> %865, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %867 = bitcast <8 x i32> %866 to <4 x i64>
  %868 = and <4 x i64> %864, splat (i64 4294967295)
  %869 = and <4 x i64> %867, splat (i64 4294967295)
  %870 = mul nuw <4 x i64> %869, %868
  %871 = shufflevector <4 x i64> %862, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %872 = add <4 x i64> %856, %871
  %873 = add <4 x i64> %872, %870
  %874 = getelementptr inbounds nuw i8, ptr %859, i64 32
  %875 = load <4 x i64>, ptr %874, align 1
  %876 = getelementptr inbounds nuw i8, ptr %861, i64 32
  %877 = load <4 x i64>, ptr %876, align 8
  %878 = xor <4 x i64> %877, %875
  %879 = bitcast <4 x i64> %878 to <8 x i32>
  %880 = shufflevector <8 x i32> %879, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %881 = bitcast <8 x i32> %880 to <4 x i64>
  %882 = and <4 x i64> %878, splat (i64 4294967295)
  %883 = and <4 x i64> %881, splat (i64 4294967295)
  %884 = mul nuw <4 x i64> %883, %882
  %885 = shufflevector <4 x i64> %875, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %886 = add <4 x i64> %855, %885
  %887 = add <4 x i64> %886, %884
  %888 = add nuw nsw i64 %857, 1
  %889 = icmp eq i64 %888, 16
  br i1 %889, label %890, label %854

890:                                              ; preds = %854
  %891 = lshr <4 x i64> %873, splat (i64 47)
  %892 = xor <4 x i64> %846, %891
  %893 = xor <4 x i64> %892, %873
  %894 = bitcast <4 x i64> %893 to <8 x i32>
  %895 = shufflevector <8 x i32> %894, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %896 = bitcast <8 x i32> %895 to <4 x i64>
  %897 = and <4 x i64> %893, splat (i64 4294967295)
  %898 = mul nuw <4 x i64> %897, splat (i64 2654435761)
  %899 = mul <4 x i64> %896, splat (i64 -7046029290881679360)
  %900 = add <4 x i64> %899, %898
  %901 = lshr <4 x i64> %887, splat (i64 47)
  %902 = xor <4 x i64> %847, %901
  %903 = xor <4 x i64> %902, %887
  %904 = bitcast <4 x i64> %903 to <8 x i32>
  %905 = shufflevector <8 x i32> %904, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %906 = bitcast <8 x i32> %905 to <4 x i64>
  %907 = and <4 x i64> %903, splat (i64 4294967295)
  %908 = mul nuw <4 x i64> %907, splat (i64 2654435761)
  %909 = mul <4 x i64> %906, splat (i64 -7046029290881679360)
  %910 = add <4 x i64> %909, %908
  %911 = add nuw nsw i64 %851, 1
  %912 = icmp eq i64 %911, %843
  br i1 %912, label %913, label %848

913:                                              ; preds = %890, %795
  %914 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %795 ], [ %910, %890 ]
  %915 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %795 ], [ %900, %890 ]
  %916 = and i64 %1, -1024
  %917 = and i64 %1, 1023
  %918 = lshr i64 %917, 6
  %919 = getelementptr inbounds nuw i8, ptr %0, i64 %916
  %920 = icmp samesign ult i64 %917, 64
  br i1 %920, label %957, label %921

921:                                              ; preds = %913, %921
  %922 = phi <4 x i64> [ %954, %921 ], [ %914, %913 ]
  %923 = phi <4 x i64> [ %940, %921 ], [ %915, %913 ]
  %924 = phi i64 [ %955, %921 ], [ 0, %913 ]
  %925 = shl i64 %924, 6
  %926 = getelementptr inbounds nuw i8, ptr %919, i64 %925
  %927 = shl i64 %924, 3
  %928 = getelementptr inbounds nuw i8, ptr %4, i64 %927
  %929 = load <4 x i64>, ptr %926, align 1
  %930 = load <4 x i64>, ptr %928, align 8
  %931 = xor <4 x i64> %930, %929
  %932 = bitcast <4 x i64> %931 to <8 x i32>
  %933 = shufflevector <8 x i32> %932, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %934 = bitcast <8 x i32> %933 to <4 x i64>
  %935 = and <4 x i64> %931, splat (i64 4294967295)
  %936 = and <4 x i64> %934, splat (i64 4294967295)
  %937 = mul nuw <4 x i64> %936, %935
  %938 = shufflevector <4 x i64> %929, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %939 = add <4 x i64> %923, %938
  %940 = add <4 x i64> %939, %937
  %941 = getelementptr inbounds nuw i8, ptr %926, i64 32
  %942 = load <4 x i64>, ptr %941, align 1
  %943 = getelementptr inbounds nuw i8, ptr %928, i64 32
  %944 = load <4 x i64>, ptr %943, align 8
  %945 = xor <4 x i64> %944, %942
  %946 = bitcast <4 x i64> %945 to <8 x i32>
  %947 = shufflevector <8 x i32> %946, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %948 = bitcast <8 x i32> %947 to <4 x i64>
  %949 = and <4 x i64> %945, splat (i64 4294967295)
  %950 = and <4 x i64> %948, splat (i64 4294967295)
  %951 = mul nuw <4 x i64> %950, %949
  %952 = shufflevector <4 x i64> %942, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %953 = add <4 x i64> %922, %952
  %954 = add <4 x i64> %953, %951
  %955 = add nuw nsw i64 %924, 1
  %956 = icmp eq i64 %955, %918
  br i1 %956, label %957, label %921

957:                                              ; preds = %921, %913
  %958 = phi <4 x i64> [ %914, %913 ], [ %954, %921 ]
  %959 = phi <4 x i64> [ %915, %913 ], [ %940, %921 ]
  %960 = and i64 %1, 63
  %961 = icmp eq i64 %960, 0
  br i1 %961, label %962, label %971

962:                                              ; preds = %957
  %963 = getelementptr inbounds nuw i8, ptr %4, i64 125
  %964 = load i64, ptr %963, align 1
  %965 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %966 = load i64, ptr %965, align 1
  %967 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %968 = load i64, ptr %967, align 1
  %969 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %970 = load i64, ptr %969, align 1
  br label %1011

971:                                              ; preds = %957
  %972 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %973 = getelementptr inbounds i8, ptr %972, i64 -64
  %974 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %975 = load <4 x i64>, ptr %973, align 1
  %976 = load <4 x i64>, ptr %974, align 1
  %977 = xor <4 x i64> %976, %975
  %978 = bitcast <4 x i64> %977 to <8 x i32>
  %979 = shufflevector <8 x i32> %978, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %980 = bitcast <8 x i32> %979 to <4 x i64>
  %981 = and <4 x i64> %977, splat (i64 4294967295)
  %982 = and <4 x i64> %980, splat (i64 4294967295)
  %983 = mul nuw <4 x i64> %982, %981
  %984 = shufflevector <4 x i64> %975, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %985 = add <4 x i64> %959, %984
  %986 = add <4 x i64> %985, %983
  %987 = getelementptr inbounds i8, ptr %972, i64 -32
  %988 = load <4 x i64>, ptr %987, align 1
  %989 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %990 = load <4 x i64>, ptr %989, align 1
  %991 = xor <4 x i64> %990, %988
  %992 = bitcast <4 x i64> %991 to <8 x i32>
  %993 = shufflevector <8 x i32> %992, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %994 = bitcast <8 x i32> %993 to <4 x i64>
  %995 = and <4 x i64> %991, splat (i64 4294967295)
  %996 = and <4 x i64> %994, splat (i64 4294967295)
  %997 = mul nuw <4 x i64> %996, %995
  %998 = shufflevector <4 x i64> %988, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %999 = add <4 x i64> %958, %998
  %1000 = add <4 x i64> %999, %997
  %1001 = bitcast <4 x i64> %976 to i256
  %1002 = lshr i256 %1001, 32
  %1003 = trunc i256 %1002 to i64
  %1004 = lshr i256 %1001, 96
  %1005 = trunc i256 %1004 to i64
  %1006 = lshr i256 %1001, 160
  %1007 = trunc i256 %1006 to i64
  %1008 = bitcast <4 x i64> %990 to i256
  %1009 = lshr i256 %1008, 32
  %1010 = trunc i256 %1009 to i64
  br label %1011

1011:                                             ; preds = %971, %962
  %1012 = phi i64 [ %970, %962 ], [ %1010, %971 ]
  %1013 = phi i64 [ %968, %962 ], [ %1007, %971 ]
  %1014 = phi i64 [ %966, %962 ], [ %1005, %971 ]
  %1015 = phi i64 [ %964, %962 ], [ %1003, %971 ]
  %1016 = phi <4 x i64> [ %958, %962 ], [ %1000, %971 ]
  %1017 = phi <4 x i64> [ %959, %962 ], [ %986, %971 ]
  %1018 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %1019 = mul i64 %1, -7046029288634856825
  %1020 = extractelement <4 x i64> %1017, i64 0
  %1021 = extractelement <4 x i64> %1017, i64 1
  %1022 = load i64, ptr %1018, align 1
  %1023 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %1024 = load i64, ptr %1023, align 1
  %1025 = xor i64 %1022, %1020
  %1026 = xor i64 %1024, %1021
  %1027 = zext i64 %1025 to i128
  %1028 = zext i64 %1026 to i128
  %1029 = mul nuw i128 %1028, %1027
  %1030 = lshr i128 %1029, 64
  %1031 = xor i128 %1030, %1029
  %1032 = trunc i128 %1031 to i64
  %1033 = add i64 %1019, %1032
  %1034 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %1035 = extractelement <4 x i64> %1017, i64 2
  %1036 = extractelement <4 x i64> %1017, i64 3
  %1037 = load i64, ptr %1034, align 1
  %1038 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %1039 = load i64, ptr %1038, align 1
  %1040 = xor i64 %1037, %1035
  %1041 = xor i64 %1039, %1036
  %1042 = zext i64 %1040 to i128
  %1043 = zext i64 %1041 to i128
  %1044 = mul nuw i128 %1043, %1042
  %1045 = lshr i128 %1044, 64
  %1046 = xor i128 %1045, %1044
  %1047 = trunc i128 %1046 to i64
  %1048 = add i64 %1033, %1047
  %1049 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %1050 = extractelement <4 x i64> %1016, i64 0
  %1051 = extractelement <4 x i64> %1016, i64 1
  %1052 = load i64, ptr %1049, align 1
  %1053 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %1054 = load i64, ptr %1053, align 1
  %1055 = xor i64 %1052, %1050
  %1056 = xor i64 %1054, %1051
  %1057 = zext i64 %1055 to i128
  %1058 = zext i64 %1056 to i128
  %1059 = mul nuw i128 %1058, %1057
  %1060 = lshr i128 %1059, 64
  %1061 = xor i128 %1060, %1059
  %1062 = trunc i128 %1061 to i64
  %1063 = add i64 %1048, %1062
  %1064 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %1065 = extractelement <4 x i64> %1016, i64 2
  %1066 = extractelement <4 x i64> %1016, i64 3
  %1067 = load i64, ptr %1064, align 1
  %1068 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %1069 = load i64, ptr %1068, align 1
  %1070 = xor i64 %1067, %1065
  %1071 = xor i64 %1069, %1066
  %1072 = zext i64 %1070 to i128
  %1073 = zext i64 %1071 to i128
  %1074 = mul nuw i128 %1073, %1072
  %1075 = lshr i128 %1074, 64
  %1076 = xor i128 %1075, %1074
  %1077 = trunc i128 %1076 to i64
  %1078 = add i64 %1063, %1077
  %1079 = lshr i64 %1078, 37
  %1080 = xor i64 %1079, %1078
  %1081 = mul i64 %1080, 1609587929392839161
  %1082 = lshr i64 %1081, 32
  %1083 = xor i64 %1082, %1081
  %1084 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %1085 = mul i64 %1, -4417276706812531889
  %1086 = xor i64 %1085, -1
  %1087 = load i64, ptr %1084, align 1
  %1088 = xor i64 %1087, %1020
  %1089 = xor i64 %1021, %1015
  %1090 = zext i64 %1088 to i128
  %1091 = zext i64 %1089 to i128
  %1092 = mul nuw i128 %1090, %1091
  %1093 = lshr i128 %1092, 64
  %1094 = xor i128 %1093, %1092
  %1095 = trunc i128 %1094 to i64
  %1096 = xor i64 %1035, %1014
  %1097 = xor i64 %1036, %1013
  %1098 = zext i64 %1096 to i128
  %1099 = zext i64 %1097 to i128
  %1100 = mul nuw i128 %1099, %1098
  %1101 = lshr i128 %1100, 64
  %1102 = xor i128 %1101, %1100
  %1103 = trunc i128 %1102 to i64
  %1104 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %1105 = load i64, ptr %1104, align 1
  %1106 = xor i64 %1105, %1050
  %1107 = xor i64 %1051, %1012
  %1108 = zext i64 %1106 to i128
  %1109 = zext i64 %1107 to i128
  %1110 = mul nuw i128 %1108, %1109
  %1111 = lshr i128 %1110, 64
  %1112 = xor i128 %1111, %1110
  %1113 = trunc i128 %1112 to i64
  %1114 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %1115 = load i64, ptr %1114, align 1
  %1116 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %1117 = load i64, ptr %1116, align 1
  %1118 = xor i64 %1115, %1065
  %1119 = xor i64 %1117, %1066
  %1120 = zext i64 %1118 to i128
  %1121 = zext i64 %1119 to i128
  %1122 = mul nuw i128 %1121, %1120
  %1123 = lshr i128 %1122, 64
  %1124 = xor i128 %1123, %1122
  %1125 = trunc i128 %1124 to i64
  %1126 = add i64 %1103, %1086
  %1127 = add i64 %1126, %1095
  %1128 = add i64 %1127, %1113
  %1129 = add i64 %1128, %1125
  br label %1130

1130:                                             ; preds = %1011, %704
  %1131 = phi i64 [ %1129, %1011 ], [ %794, %704 ]
  %1132 = phi i64 [ %1083, %1011 ], [ %756, %704 ]
  %1133 = lshr i64 %1131, 37
  %1134 = xor i64 %1133, %1131
  %1135 = mul i64 %1134, 1609587929392839161
  %1136 = lshr i64 %1135, 32
  %1137 = xor i64 %1136, %1135
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #26
  br label %1138

1138:                                             ; preds = %8, %48, %86, %88, %245, %503, %1130
  %1139 = phi i64 [ %293, %245 ], [ %552, %503 ], [ %1132, %1130 ], [ %40, %8 ], [ %80, %48 ], [ %119, %88 ], [ 0, %86 ]
  %1140 = phi i64 [ %299, %245 ], [ %558, %503 ], [ %1137, %1130 ], [ %45, %8 ], [ %85, %48 ], [ %124, %88 ], [ 0, %86 ]
  %1141 = insertvalue { i64, i64 } poison, i64 %1139, 0
  %1142 = insertvalue { i64, i64 } %1141, i64 %1140, 1
  ret { i64, i64 } %1142
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #15 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %539, label %5

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
  br label %537

21:                                               ; preds = %5
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %274, label %23

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
  br i1 %40, label %157, label %44

44:                                               ; preds = %23
  %45 = icmp eq i32 %31, %37
  %46 = load <4 x i64>, ptr %0, align 32
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %48 = load <4 x i64>, ptr %47, align 32
  br i1 %45, label %86, label %49

49:                                               ; preds = %44, %49
  %50 = phi <4 x i64> [ %82, %49 ], [ %48, %44 ]
  %51 = phi <4 x i64> [ %68, %49 ], [ %46, %44 ]
  %52 = phi i64 [ %83, %49 ], [ 0, %44 ]
  %53 = shl i64 %52, 6
  %54 = getelementptr inbounds nuw i8, ptr %26, i64 %53
  %55 = shl i64 %52, 3
  %56 = getelementptr inbounds nuw i8, ptr %43, i64 %55
  %57 = load <4 x i64>, ptr %54, align 1
  %58 = load <4 x i64>, ptr %56, align 1
  %59 = xor <4 x i64> %58, %57
  %60 = bitcast <4 x i64> %59 to <8 x i32>
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %62 = bitcast <8 x i32> %61 to <4 x i64>
  %63 = and <4 x i64> %59, splat (i64 4294967295)
  %64 = and <4 x i64> %62, splat (i64 4294967295)
  %65 = mul nuw <4 x i64> %64, %63
  %66 = shufflevector <4 x i64> %57, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %67 = add <4 x i64> %51, %66
  %68 = add <4 x i64> %67, %65
  %69 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %70 = load <4 x i64>, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %56, i64 32
  %72 = load <4 x i64>, ptr %71, align 1
  %73 = xor <4 x i64> %72, %70
  %74 = bitcast <4 x i64> %73 to <8 x i32>
  %75 = shufflevector <8 x i32> %74, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %76 = bitcast <8 x i32> %75 to <4 x i64>
  %77 = and <4 x i64> %73, splat (i64 4294967295)
  %78 = and <4 x i64> %76, splat (i64 4294967295)
  %79 = mul nuw <4 x i64> %78, %77
  %80 = shufflevector <4 x i64> %70, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %81 = add <4 x i64> %50, %80
  %82 = add <4 x i64> %81, %79
  %83 = add nuw i64 %52, 1
  %84 = icmp eq i64 %83, %39
  br i1 %84, label %85, label %49

85:                                               ; preds = %49
  store <4 x i64> %68, ptr %0, align 32
  store <4 x i64> %82, ptr %47, align 32
  br label %86

86:                                               ; preds = %44, %85
  %87 = phi <4 x i64> [ %82, %85 ], [ %48, %44 ]
  %88 = phi <4 x i64> [ %68, %85 ], [ %46, %44 ]
  %89 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  %90 = lshr <4 x i64> %88, splat (i64 47)
  %91 = load <4 x i64>, ptr %89, align 1
  %92 = xor <4 x i64> %90, %91
  %93 = xor <4 x i64> %92, %88
  %94 = bitcast <4 x i64> %93 to <8 x i32>
  %95 = shufflevector <8 x i32> %94, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %96 = bitcast <8 x i32> %95 to <4 x i64>
  %97 = and <4 x i64> %93, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, splat (i64 2654435761)
  %99 = mul <4 x i64> %96, splat (i64 -7046029290881679360)
  %100 = add <4 x i64> %99, %98
  store <4 x i64> %100, ptr %0, align 32
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %102 = lshr <4 x i64> %87, splat (i64 47)
  %103 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %104 = load <4 x i64>, ptr %103, align 1
  %105 = xor <4 x i64> %102, %104
  %106 = xor <4 x i64> %105, %87
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = mul nuw <4 x i64> %110, splat (i64 2654435761)
  %112 = mul <4 x i64> %109, splat (i64 -7046029290881679360)
  %113 = add <4 x i64> %112, %111
  store <4 x i64> %113, ptr %101, align 32
  %114 = shl nuw nsw i64 %39, 6
  %115 = getelementptr inbounds nuw i8, ptr %26, i64 %114
  %116 = sub nuw nsw i64 4, %39
  %117 = icmp eq i32 %38, 4
  br i1 %117, label %155, label %118

118:                                              ; preds = %86, %118
  %119 = phi <4 x i64> [ %151, %118 ], [ %113, %86 ]
  %120 = phi <4 x i64> [ %137, %118 ], [ %100, %86 ]
  %121 = phi i64 [ %152, %118 ], [ 0, %86 ]
  %122 = shl i64 %121, 6
  %123 = getelementptr inbounds nuw i8, ptr %115, i64 %122
  %124 = shl i64 %121, 3
  %125 = getelementptr inbounds nuw i8, ptr %33, i64 %124
  %126 = load <4 x i64>, ptr %123, align 1
  %127 = load <4 x i64>, ptr %125, align 1
  %128 = xor <4 x i64> %127, %126
  %129 = bitcast <4 x i64> %128 to <8 x i32>
  %130 = shufflevector <8 x i32> %129, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %131 = bitcast <8 x i32> %130 to <4 x i64>
  %132 = and <4 x i64> %128, splat (i64 4294967295)
  %133 = and <4 x i64> %131, splat (i64 4294967295)
  %134 = mul nuw <4 x i64> %133, %132
  %135 = shufflevector <4 x i64> %126, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %136 = add <4 x i64> %120, %135
  %137 = add <4 x i64> %136, %134
  %138 = getelementptr inbounds nuw i8, ptr %123, i64 32
  %139 = load <4 x i64>, ptr %138, align 1
  %140 = getelementptr inbounds nuw i8, ptr %125, i64 32
  %141 = load <4 x i64>, ptr %140, align 1
  %142 = xor <4 x i64> %141, %139
  %143 = bitcast <4 x i64> %142 to <8 x i32>
  %144 = shufflevector <8 x i32> %143, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %145 = bitcast <8 x i32> %144 to <4 x i64>
  %146 = and <4 x i64> %142, splat (i64 4294967295)
  %147 = and <4 x i64> %145, splat (i64 4294967295)
  %148 = mul nuw <4 x i64> %147, %146
  %149 = shufflevector <4 x i64> %139, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %150 = add <4 x i64> %119, %149
  %151 = add <4 x i64> %150, %148
  %152 = add nuw i64 %121, 1
  %153 = icmp eq i64 %152, %116
  br i1 %153, label %154, label %118

154:                                              ; preds = %118
  store <4 x i64> %137, ptr %0, align 32
  store <4 x i64> %151, ptr %101, align 32
  br label %155

155:                                              ; preds = %154, %86
  %156 = trunc nuw nsw i64 %116 to i32
  br label %272

157:                                              ; preds = %23
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %159 = load <4 x i64>, ptr %0, align 32
  %160 = load <4 x i64>, ptr %158, align 32
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
  %171 = add <4 x i64> %159, %170
  %172 = add <4 x i64> %171, %169
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %174 = load <4 x i64>, ptr %173, align 1
  %175 = getelementptr inbounds nuw i8, ptr %43, i64 32
  %176 = load <4 x i64>, ptr %175, align 1
  %177 = xor <4 x i64> %176, %174
  %178 = bitcast <4 x i64> %177 to <8 x i32>
  %179 = shufflevector <8 x i32> %178, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %180 = bitcast <8 x i32> %179 to <4 x i64>
  %181 = and <4 x i64> %177, splat (i64 4294967295)
  %182 = and <4 x i64> %180, splat (i64 4294967295)
  %183 = mul nuw <4 x i64> %182, %181
  %184 = shufflevector <4 x i64> %174, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %185 = add <4 x i64> %160, %184
  %186 = add <4 x i64> %185, %183
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %188 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %189 = load <4 x i64>, ptr %187, align 1
  %190 = load <4 x i64>, ptr %188, align 1
  %191 = xor <4 x i64> %190, %189
  %192 = bitcast <4 x i64> %191 to <8 x i32>
  %193 = shufflevector <8 x i32> %192, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %194 = bitcast <8 x i32> %193 to <4 x i64>
  %195 = and <4 x i64> %191, splat (i64 4294967295)
  %196 = and <4 x i64> %194, splat (i64 4294967295)
  %197 = mul nuw <4 x i64> %196, %195
  %198 = shufflevector <4 x i64> %189, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %199 = add <4 x i64> %172, %198
  %200 = add <4 x i64> %199, %197
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %202 = load <4 x i64>, ptr %201, align 1
  %203 = getelementptr inbounds nuw i8, ptr %43, i64 40
  %204 = load <4 x i64>, ptr %203, align 1
  %205 = xor <4 x i64> %204, %202
  %206 = bitcast <4 x i64> %205 to <8 x i32>
  %207 = shufflevector <8 x i32> %206, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %208 = bitcast <8 x i32> %207 to <4 x i64>
  %209 = and <4 x i64> %205, splat (i64 4294967295)
  %210 = and <4 x i64> %208, splat (i64 4294967295)
  %211 = mul nuw <4 x i64> %210, %209
  %212 = shufflevector <4 x i64> %202, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %213 = add <4 x i64> %186, %212
  %214 = add <4 x i64> %213, %211
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %216 = getelementptr inbounds nuw i8, ptr %43, i64 16
  %217 = load <4 x i64>, ptr %215, align 1
  %218 = load <4 x i64>, ptr %216, align 1
  %219 = xor <4 x i64> %218, %217
  %220 = bitcast <4 x i64> %219 to <8 x i32>
  %221 = shufflevector <8 x i32> %220, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %222 = bitcast <8 x i32> %221 to <4 x i64>
  %223 = and <4 x i64> %219, splat (i64 4294967295)
  %224 = and <4 x i64> %222, splat (i64 4294967295)
  %225 = mul nuw <4 x i64> %224, %223
  %226 = shufflevector <4 x i64> %217, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %227 = add <4 x i64> %200, %226
  %228 = add <4 x i64> %227, %225
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %230 = load <4 x i64>, ptr %229, align 1
  %231 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %232 = load <4 x i64>, ptr %231, align 1
  %233 = xor <4 x i64> %232, %230
  %234 = bitcast <4 x i64> %233 to <8 x i32>
  %235 = shufflevector <8 x i32> %234, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %236 = bitcast <8 x i32> %235 to <4 x i64>
  %237 = and <4 x i64> %233, splat (i64 4294967295)
  %238 = and <4 x i64> %236, splat (i64 4294967295)
  %239 = mul nuw <4 x i64> %238, %237
  %240 = shufflevector <4 x i64> %230, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %241 = add <4 x i64> %214, %240
  %242 = add <4 x i64> %241, %239
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %244 = getelementptr inbounds nuw i8, ptr %43, i64 24
  %245 = load <4 x i64>, ptr %243, align 1
  %246 = load <4 x i64>, ptr %244, align 1
  %247 = xor <4 x i64> %246, %245
  %248 = bitcast <4 x i64> %247 to <8 x i32>
  %249 = shufflevector <8 x i32> %248, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %250 = bitcast <8 x i32> %249 to <4 x i64>
  %251 = and <4 x i64> %247, splat (i64 4294967295)
  %252 = and <4 x i64> %250, splat (i64 4294967295)
  %253 = mul nuw <4 x i64> %252, %251
  %254 = shufflevector <4 x i64> %245, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %255 = add <4 x i64> %228, %254
  %256 = add <4 x i64> %255, %253
  %257 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %258 = load <4 x i64>, ptr %257, align 1
  %259 = getelementptr inbounds nuw i8, ptr %43, i64 56
  %260 = load <4 x i64>, ptr %259, align 1
  %261 = xor <4 x i64> %260, %258
  %262 = bitcast <4 x i64> %261 to <8 x i32>
  %263 = shufflevector <8 x i32> %262, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %264 = bitcast <8 x i32> %263 to <4 x i64>
  %265 = and <4 x i64> %261, splat (i64 4294967295)
  %266 = and <4 x i64> %264, splat (i64 4294967295)
  %267 = mul nuw <4 x i64> %266, %265
  %268 = shufflevector <4 x i64> %258, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %269 = add <4 x i64> %242, %268
  %270 = add <4 x i64> %269, %267
  store <4 x i64> %256, ptr %0, align 32
  store <4 x i64> %270, ptr %158, align 32
  %271 = add i32 %37, 4
  br label %272

272:                                              ; preds = %157, %155
  %273 = phi i32 [ %271, %157 ], [ %156, %155 ]
  store i32 %273, ptr %29, align 4
  store i32 0, ptr %10, align 64
  br label %274

274:                                              ; preds = %272, %21
  %275 = phi ptr [ %28, %272 ], [ %1, %21 ]
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 256
  %277 = icmp ugt ptr %276, %6
  br i1 %277, label %528, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds i8, ptr %6, i64 -256
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %284 = load ptr, ptr %283, align 16
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %286 = load i32, ptr %285, align 4
  %287 = zext i32 %286 to i64
  %288 = load i32, ptr %280, align 4
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %290 = getelementptr inbounds nuw i8, ptr %284, i64 %287
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 32
  br label %292

292:                                              ; preds = %524, %278
  %293 = phi i32 [ %288, %278 ], [ %525, %524 ]
  %294 = phi ptr [ %275, %278 ], [ %526, %524 ]
  %295 = sub i32 %282, %293
  %296 = zext i32 %295 to i64
  %297 = icmp ugt i32 %295, 4
  %298 = shl i32 %293, 3
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds nuw i8, ptr %284, i64 %299
  br i1 %297, label %410, label %301

301:                                              ; preds = %292
  %302 = icmp eq i32 %282, %293
  %303 = load <4 x i64>, ptr %0, align 32
  %304 = load <4 x i64>, ptr %289, align 32
  br i1 %302, label %342, label %305

305:                                              ; preds = %301, %305
  %306 = phi <4 x i64> [ %338, %305 ], [ %304, %301 ]
  %307 = phi <4 x i64> [ %324, %305 ], [ %303, %301 ]
  %308 = phi i64 [ %339, %305 ], [ 0, %301 ]
  %309 = shl i64 %308, 6
  %310 = getelementptr inbounds nuw i8, ptr %294, i64 %309
  %311 = shl i64 %308, 3
  %312 = getelementptr inbounds nuw i8, ptr %300, i64 %311
  %313 = load <4 x i64>, ptr %310, align 1
  %314 = load <4 x i64>, ptr %312, align 1
  %315 = xor <4 x i64> %314, %313
  %316 = bitcast <4 x i64> %315 to <8 x i32>
  %317 = shufflevector <8 x i32> %316, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %318 = bitcast <8 x i32> %317 to <4 x i64>
  %319 = and <4 x i64> %315, splat (i64 4294967295)
  %320 = and <4 x i64> %318, splat (i64 4294967295)
  %321 = mul nuw <4 x i64> %320, %319
  %322 = shufflevector <4 x i64> %313, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %323 = add <4 x i64> %307, %322
  %324 = add <4 x i64> %323, %321
  %325 = getelementptr inbounds nuw i8, ptr %310, i64 32
  %326 = load <4 x i64>, ptr %325, align 1
  %327 = getelementptr inbounds nuw i8, ptr %312, i64 32
  %328 = load <4 x i64>, ptr %327, align 1
  %329 = xor <4 x i64> %328, %326
  %330 = bitcast <4 x i64> %329 to <8 x i32>
  %331 = shufflevector <8 x i32> %330, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %332 = bitcast <8 x i32> %331 to <4 x i64>
  %333 = and <4 x i64> %329, splat (i64 4294967295)
  %334 = and <4 x i64> %332, splat (i64 4294967295)
  %335 = mul nuw <4 x i64> %334, %333
  %336 = shufflevector <4 x i64> %326, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %337 = add <4 x i64> %306, %336
  %338 = add <4 x i64> %337, %335
  %339 = add nuw i64 %308, 1
  %340 = icmp eq i64 %339, %296
  br i1 %340, label %341, label %305

341:                                              ; preds = %305
  store <4 x i64> %324, ptr %0, align 32
  store <4 x i64> %338, ptr %289, align 32
  br label %342

342:                                              ; preds = %341, %301
  %343 = phi <4 x i64> [ %338, %341 ], [ %304, %301 ]
  %344 = phi <4 x i64> [ %324, %341 ], [ %303, %301 ]
  %345 = lshr <4 x i64> %344, splat (i64 47)
  %346 = load <4 x i64>, ptr %290, align 1
  %347 = xor <4 x i64> %345, %346
  %348 = xor <4 x i64> %347, %344
  %349 = bitcast <4 x i64> %348 to <8 x i32>
  %350 = shufflevector <8 x i32> %349, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %351 = bitcast <8 x i32> %350 to <4 x i64>
  %352 = and <4 x i64> %348, splat (i64 4294967295)
  %353 = mul nuw <4 x i64> %352, splat (i64 2654435761)
  %354 = mul <4 x i64> %351, splat (i64 -7046029290881679360)
  %355 = add <4 x i64> %354, %353
  store <4 x i64> %355, ptr %0, align 32
  %356 = lshr <4 x i64> %343, splat (i64 47)
  %357 = load <4 x i64>, ptr %291, align 1
  %358 = xor <4 x i64> %356, %357
  %359 = xor <4 x i64> %358, %343
  %360 = bitcast <4 x i64> %359 to <8 x i32>
  %361 = shufflevector <8 x i32> %360, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %362 = bitcast <8 x i32> %361 to <4 x i64>
  %363 = and <4 x i64> %359, splat (i64 4294967295)
  %364 = mul nuw <4 x i64> %363, splat (i64 2654435761)
  %365 = mul <4 x i64> %362, splat (i64 -7046029290881679360)
  %366 = add <4 x i64> %365, %364
  store <4 x i64> %366, ptr %289, align 32
  %367 = shl nuw nsw i64 %296, 6
  %368 = getelementptr inbounds nuw i8, ptr %294, i64 %367
  %369 = sub nuw nsw i64 4, %296
  %370 = icmp eq i32 %295, 4
  br i1 %370, label %408, label %371

371:                                              ; preds = %342, %371
  %372 = phi <4 x i64> [ %404, %371 ], [ %366, %342 ]
  %373 = phi <4 x i64> [ %390, %371 ], [ %355, %342 ]
  %374 = phi i64 [ %405, %371 ], [ 0, %342 ]
  %375 = shl i64 %374, 6
  %376 = getelementptr inbounds nuw i8, ptr %368, i64 %375
  %377 = shl i64 %374, 3
  %378 = getelementptr inbounds nuw i8, ptr %284, i64 %377
  %379 = load <4 x i64>, ptr %376, align 1
  %380 = load <4 x i64>, ptr %378, align 1
  %381 = xor <4 x i64> %380, %379
  %382 = bitcast <4 x i64> %381 to <8 x i32>
  %383 = shufflevector <8 x i32> %382, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %384 = bitcast <8 x i32> %383 to <4 x i64>
  %385 = and <4 x i64> %381, splat (i64 4294967295)
  %386 = and <4 x i64> %384, splat (i64 4294967295)
  %387 = mul nuw <4 x i64> %386, %385
  %388 = shufflevector <4 x i64> %379, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %389 = add <4 x i64> %373, %388
  %390 = add <4 x i64> %389, %387
  %391 = getelementptr inbounds nuw i8, ptr %376, i64 32
  %392 = load <4 x i64>, ptr %391, align 1
  %393 = getelementptr inbounds nuw i8, ptr %378, i64 32
  %394 = load <4 x i64>, ptr %393, align 1
  %395 = xor <4 x i64> %394, %392
  %396 = bitcast <4 x i64> %395 to <8 x i32>
  %397 = shufflevector <8 x i32> %396, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %398 = bitcast <8 x i32> %397 to <4 x i64>
  %399 = and <4 x i64> %395, splat (i64 4294967295)
  %400 = and <4 x i64> %398, splat (i64 4294967295)
  %401 = mul nuw <4 x i64> %400, %399
  %402 = shufflevector <4 x i64> %392, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %403 = add <4 x i64> %372, %402
  %404 = add <4 x i64> %403, %401
  %405 = add nuw i64 %374, 1
  %406 = icmp eq i64 %405, %369
  br i1 %406, label %407, label %371

407:                                              ; preds = %371
  store <4 x i64> %390, ptr %0, align 32
  store <4 x i64> %404, ptr %289, align 32
  br label %408

408:                                              ; preds = %407, %342
  %409 = trunc nuw nsw i64 %369 to i32
  br label %524

410:                                              ; preds = %292
  %411 = load <4 x i64>, ptr %0, align 32
  %412 = load <4 x i64>, ptr %289, align 32
  %413 = load <4 x i64>, ptr %294, align 1
  %414 = load <4 x i64>, ptr %300, align 1
  %415 = xor <4 x i64> %414, %413
  %416 = bitcast <4 x i64> %415 to <8 x i32>
  %417 = shufflevector <8 x i32> %416, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %418 = bitcast <8 x i32> %417 to <4 x i64>
  %419 = and <4 x i64> %415, splat (i64 4294967295)
  %420 = and <4 x i64> %418, splat (i64 4294967295)
  %421 = mul nuw <4 x i64> %420, %419
  %422 = shufflevector <4 x i64> %413, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %423 = add <4 x i64> %411, %422
  %424 = add <4 x i64> %423, %421
  %425 = getelementptr inbounds nuw i8, ptr %294, i64 32
  %426 = load <4 x i64>, ptr %425, align 1
  %427 = getelementptr inbounds nuw i8, ptr %300, i64 32
  %428 = load <4 x i64>, ptr %427, align 1
  %429 = xor <4 x i64> %428, %426
  %430 = bitcast <4 x i64> %429 to <8 x i32>
  %431 = shufflevector <8 x i32> %430, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %432 = bitcast <8 x i32> %431 to <4 x i64>
  %433 = and <4 x i64> %429, splat (i64 4294967295)
  %434 = and <4 x i64> %432, splat (i64 4294967295)
  %435 = mul nuw <4 x i64> %434, %433
  %436 = shufflevector <4 x i64> %426, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %437 = add <4 x i64> %412, %436
  %438 = add <4 x i64> %437, %435
  %439 = getelementptr inbounds nuw i8, ptr %294, i64 64
  %440 = getelementptr inbounds nuw i8, ptr %300, i64 8
  %441 = load <4 x i64>, ptr %439, align 1
  %442 = load <4 x i64>, ptr %440, align 1
  %443 = xor <4 x i64> %442, %441
  %444 = bitcast <4 x i64> %443 to <8 x i32>
  %445 = shufflevector <8 x i32> %444, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %446 = bitcast <8 x i32> %445 to <4 x i64>
  %447 = and <4 x i64> %443, splat (i64 4294967295)
  %448 = and <4 x i64> %446, splat (i64 4294967295)
  %449 = mul nuw <4 x i64> %448, %447
  %450 = shufflevector <4 x i64> %441, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %451 = add <4 x i64> %424, %450
  %452 = add <4 x i64> %451, %449
  %453 = getelementptr inbounds nuw i8, ptr %294, i64 96
  %454 = load <4 x i64>, ptr %453, align 1
  %455 = getelementptr inbounds nuw i8, ptr %300, i64 40
  %456 = load <4 x i64>, ptr %455, align 1
  %457 = xor <4 x i64> %456, %454
  %458 = bitcast <4 x i64> %457 to <8 x i32>
  %459 = shufflevector <8 x i32> %458, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %460 = bitcast <8 x i32> %459 to <4 x i64>
  %461 = and <4 x i64> %457, splat (i64 4294967295)
  %462 = and <4 x i64> %460, splat (i64 4294967295)
  %463 = mul nuw <4 x i64> %462, %461
  %464 = shufflevector <4 x i64> %454, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %465 = add <4 x i64> %438, %464
  %466 = add <4 x i64> %465, %463
  %467 = getelementptr inbounds nuw i8, ptr %294, i64 128
  %468 = getelementptr inbounds nuw i8, ptr %300, i64 16
  %469 = load <4 x i64>, ptr %467, align 1
  %470 = load <4 x i64>, ptr %468, align 1
  %471 = xor <4 x i64> %470, %469
  %472 = bitcast <4 x i64> %471 to <8 x i32>
  %473 = shufflevector <8 x i32> %472, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %474 = bitcast <8 x i32> %473 to <4 x i64>
  %475 = and <4 x i64> %471, splat (i64 4294967295)
  %476 = and <4 x i64> %474, splat (i64 4294967295)
  %477 = mul nuw <4 x i64> %476, %475
  %478 = shufflevector <4 x i64> %469, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %479 = add <4 x i64> %452, %478
  %480 = add <4 x i64> %479, %477
  %481 = getelementptr inbounds nuw i8, ptr %294, i64 160
  %482 = load <4 x i64>, ptr %481, align 1
  %483 = getelementptr inbounds nuw i8, ptr %300, i64 48
  %484 = load <4 x i64>, ptr %483, align 1
  %485 = xor <4 x i64> %484, %482
  %486 = bitcast <4 x i64> %485 to <8 x i32>
  %487 = shufflevector <8 x i32> %486, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %488 = bitcast <8 x i32> %487 to <4 x i64>
  %489 = and <4 x i64> %485, splat (i64 4294967295)
  %490 = and <4 x i64> %488, splat (i64 4294967295)
  %491 = mul nuw <4 x i64> %490, %489
  %492 = shufflevector <4 x i64> %482, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %493 = add <4 x i64> %466, %492
  %494 = add <4 x i64> %493, %491
  %495 = getelementptr inbounds nuw i8, ptr %294, i64 192
  %496 = getelementptr inbounds nuw i8, ptr %300, i64 24
  %497 = load <4 x i64>, ptr %495, align 1
  %498 = load <4 x i64>, ptr %496, align 1
  %499 = xor <4 x i64> %498, %497
  %500 = bitcast <4 x i64> %499 to <8 x i32>
  %501 = shufflevector <8 x i32> %500, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %502 = bitcast <8 x i32> %501 to <4 x i64>
  %503 = and <4 x i64> %499, splat (i64 4294967295)
  %504 = and <4 x i64> %502, splat (i64 4294967295)
  %505 = mul nuw <4 x i64> %504, %503
  %506 = shufflevector <4 x i64> %497, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %507 = add <4 x i64> %480, %506
  %508 = add <4 x i64> %507, %505
  %509 = getelementptr inbounds nuw i8, ptr %294, i64 224
  %510 = load <4 x i64>, ptr %509, align 1
  %511 = getelementptr inbounds nuw i8, ptr %300, i64 56
  %512 = load <4 x i64>, ptr %511, align 1
  %513 = xor <4 x i64> %512, %510
  %514 = bitcast <4 x i64> %513 to <8 x i32>
  %515 = shufflevector <8 x i32> %514, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %516 = bitcast <8 x i32> %515 to <4 x i64>
  %517 = and <4 x i64> %513, splat (i64 4294967295)
  %518 = and <4 x i64> %516, splat (i64 4294967295)
  %519 = mul nuw <4 x i64> %518, %517
  %520 = shufflevector <4 x i64> %510, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %521 = add <4 x i64> %494, %520
  %522 = add <4 x i64> %521, %519
  store <4 x i64> %508, ptr %0, align 32
  store <4 x i64> %522, ptr %289, align 32
  %523 = add i32 %293, 4
  br label %524

524:                                              ; preds = %410, %408
  %525 = phi i32 [ %523, %410 ], [ %409, %408 ]
  store i32 %525, ptr %280, align 4
  %526 = getelementptr inbounds nuw i8, ptr %294, i64 256
  %527 = icmp ugt ptr %526, %279
  br i1 %527, label %528, label %292

528:                                              ; preds = %524, %274
  %529 = phi ptr [ %275, %274 ], [ %526, %524 ]
  %530 = icmp ult ptr %529, %6
  br i1 %530, label %531, label %539

531:                                              ; preds = %528
  %532 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %533 = ptrtoint ptr %6 to i64
  %534 = ptrtoint ptr %529 to i64
  %535 = sub i64 %533, %534
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %532, ptr nonnull readonly align 1 %529, i64 %535, i1 false)
  %536 = trunc i64 %535 to i32
  br label %537

537:                                              ; preds = %531, %15
  %538 = phi i32 [ %20, %15 ], [ %536, %531 ]
  store i32 %538, ptr %10, align 64
  br label %539

539:                                              ; preds = %3, %528, %537
  %540 = phi i32 [ 1, %3 ], [ 0, %528 ], [ 0, %537 ]
  ret i32 %540
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local { i64, i64 } @XXH3_128bits_digest(ptr noundef readonly %0) local_unnamed_addr #15 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %4 = load i64, ptr %3, align 8
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %391

6:                                                ; preds = %1
  %7 = load <4 x i64>, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %11 = load i32, ptr %10, align 64
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %13, label %211

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
  br i1 %28, label %137, label %32

32:                                               ; preds = %13
  %33 = icmp eq i32 %19, %17
  br i1 %33, label %70, label %34

34:                                               ; preds = %32, %34
  %35 = phi <4 x i64> [ %67, %34 ], [ %9, %32 ]
  %36 = phi <4 x i64> [ %53, %34 ], [ %7, %32 ]
  %37 = phi i64 [ %68, %34 ], [ 0, %32 ]
  %38 = shl i64 %37, 6
  %39 = getelementptr inbounds nuw i8, ptr %20, i64 %38
  %40 = shl i64 %37, 3
  %41 = getelementptr inbounds nuw i8, ptr %31, i64 %40
  %42 = load <4 x i64>, ptr %39, align 1
  %43 = load <4 x i64>, ptr %41, align 1
  %44 = xor <4 x i64> %43, %42
  %45 = bitcast <4 x i64> %44 to <8 x i32>
  %46 = shufflevector <8 x i32> %45, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %47 = bitcast <8 x i32> %46 to <4 x i64>
  %48 = and <4 x i64> %44, splat (i64 4294967295)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, %48
  %51 = shufflevector <4 x i64> %42, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %52 = add <4 x i64> %36, %51
  %53 = add <4 x i64> %52, %50
  %54 = getelementptr inbounds nuw i8, ptr %39, i64 32
  %55 = load <4 x i64>, ptr %54, align 1
  %56 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %57 = load <4 x i64>, ptr %56, align 1
  %58 = xor <4 x i64> %57, %55
  %59 = bitcast <4 x i64> %58 to <8 x i32>
  %60 = shufflevector <8 x i32> %59, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %61 = bitcast <8 x i32> %60 to <4 x i64>
  %62 = and <4 x i64> %58, splat (i64 4294967295)
  %63 = and <4 x i64> %61, splat (i64 4294967295)
  %64 = mul nuw <4 x i64> %63, %62
  %65 = shufflevector <4 x i64> %55, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %66 = add <4 x i64> %35, %65
  %67 = add <4 x i64> %66, %64
  %68 = add nuw i64 %37, 1
  %69 = icmp eq i64 %68, %27
  br i1 %69, label %70, label %34

70:                                               ; preds = %34, %32
  %71 = phi <4 x i64> [ %9, %32 ], [ %67, %34 ]
  %72 = phi <4 x i64> [ %7, %32 ], [ %53, %34 ]
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
  %88 = xor <4 x i64> %85, %87
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
  %99 = sub nuw nsw i64 %15, %27
  %100 = icmp eq i32 %14, %26
  br i1 %100, label %174, label %101

101:                                              ; preds = %70, %101
  %102 = phi <4 x i64> [ %134, %101 ], [ %96, %70 ]
  %103 = phi <4 x i64> [ %120, %101 ], [ %84, %70 ]
  %104 = phi i64 [ %135, %101 ], [ 0, %70 ]
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
  %118 = shufflevector <4 x i64> %109, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %119 = add <4 x i64> %103, %118
  %120 = add <4 x i64> %119, %117
  %121 = getelementptr inbounds nuw i8, ptr %106, i64 32
  %122 = load <4 x i64>, ptr %121, align 1
  %123 = getelementptr inbounds nuw i8, ptr %108, i64 32
  %124 = load <4 x i64>, ptr %123, align 1
  %125 = xor <4 x i64> %124, %122
  %126 = bitcast <4 x i64> %125 to <8 x i32>
  %127 = shufflevector <8 x i32> %126, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %128 = bitcast <8 x i32> %127 to <4 x i64>
  %129 = and <4 x i64> %125, splat (i64 4294967295)
  %130 = and <4 x i64> %128, splat (i64 4294967295)
  %131 = mul nuw <4 x i64> %130, %129
  %132 = shufflevector <4 x i64> %122, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %133 = add <4 x i64> %102, %132
  %134 = add <4 x i64> %133, %131
  %135 = add nuw i64 %104, 1
  %136 = icmp eq i64 %135, %99
  br i1 %136, label %174, label %101

137:                                              ; preds = %13
  br label %138

138:                                              ; preds = %138, %137
  %139 = phi <4 x i64> [ %171, %138 ], [ %9, %137 ]
  %140 = phi <4 x i64> [ %157, %138 ], [ %7, %137 ]
  %141 = phi i64 [ %172, %138 ], [ 0, %137 ]
  %142 = shl i64 %141, 6
  %143 = getelementptr inbounds nuw i8, ptr %20, i64 %142
  %144 = shl i64 %141, 3
  %145 = getelementptr inbounds nuw i8, ptr %31, i64 %144
  %146 = load <4 x i64>, ptr %143, align 1
  %147 = load <4 x i64>, ptr %145, align 1
  %148 = xor <4 x i64> %147, %146
  %149 = bitcast <4 x i64> %148 to <8 x i32>
  %150 = shufflevector <8 x i32> %149, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %151 = bitcast <8 x i32> %150 to <4 x i64>
  %152 = and <4 x i64> %148, splat (i64 4294967295)
  %153 = and <4 x i64> %151, splat (i64 4294967295)
  %154 = mul nuw <4 x i64> %153, %152
  %155 = shufflevector <4 x i64> %146, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %156 = add <4 x i64> %140, %155
  %157 = add <4 x i64> %156, %154
  %158 = getelementptr inbounds nuw i8, ptr %143, i64 32
  %159 = load <4 x i64>, ptr %158, align 1
  %160 = getelementptr inbounds nuw i8, ptr %145, i64 32
  %161 = load <4 x i64>, ptr %160, align 1
  %162 = xor <4 x i64> %161, %159
  %163 = bitcast <4 x i64> %162 to <8 x i32>
  %164 = shufflevector <8 x i32> %163, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %165 = bitcast <8 x i32> %164 to <4 x i64>
  %166 = and <4 x i64> %162, splat (i64 4294967295)
  %167 = and <4 x i64> %165, splat (i64 4294967295)
  %168 = mul nuw <4 x i64> %167, %166
  %169 = shufflevector <4 x i64> %159, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %170 = add <4 x i64> %139, %169
  %171 = add <4 x i64> %170, %168
  %172 = add nuw nsw i64 %141, 1
  %173 = icmp eq i64 %172, %15
  br i1 %173, label %174, label %138

174:                                              ; preds = %101, %138, %70
  %175 = phi <4 x i64> [ %96, %70 ], [ %171, %138 ], [ %134, %101 ]
  %176 = phi <4 x i64> [ %84, %70 ], [ %157, %138 ], [ %120, %101 ]
  %177 = and i32 %11, 63
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %260, label %179

179:                                              ; preds = %174
  %180 = zext i32 %11 to i64
  %181 = getelementptr inbounds nuw i8, ptr %20, i64 %180
  %182 = getelementptr inbounds i8, ptr %181, i64 -64
  %183 = getelementptr inbounds nuw i8, ptr %22, i64 %25
  %184 = getelementptr inbounds i8, ptr %183, i64 -7
  %185 = load <4 x i64>, ptr %182, align 1
  %186 = load <4 x i64>, ptr %184, align 1
  %187 = xor <4 x i64> %186, %185
  %188 = bitcast <4 x i64> %187 to <8 x i32>
  %189 = shufflevector <8 x i32> %188, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %190 = bitcast <8 x i32> %189 to <4 x i64>
  %191 = and <4 x i64> %187, splat (i64 4294967295)
  %192 = and <4 x i64> %190, splat (i64 4294967295)
  %193 = mul nuw <4 x i64> %192, %191
  %194 = shufflevector <4 x i64> %185, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %195 = add <4 x i64> %176, %194
  %196 = add <4 x i64> %195, %193
  %197 = getelementptr inbounds i8, ptr %181, i64 -32
  %198 = load <4 x i64>, ptr %197, align 1
  %199 = getelementptr inbounds nuw i8, ptr %183, i64 25
  %200 = load <4 x i64>, ptr %199, align 1
  %201 = xor <4 x i64> %200, %198
  %202 = bitcast <4 x i64> %201 to <8 x i32>
  %203 = shufflevector <8 x i32> %202, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %204 = bitcast <8 x i32> %203 to <4 x i64>
  %205 = and <4 x i64> %201, splat (i64 4294967295)
  %206 = and <4 x i64> %204, splat (i64 4294967295)
  %207 = mul nuw <4 x i64> %206, %205
  %208 = shufflevector <4 x i64> %198, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %209 = add <4 x i64> %175, %208
  %210 = add <4 x i64> %209, %207
  br label %260

211:                                              ; preds = %6
  %212 = icmp eq i32 %11, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %211
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %215 = load ptr, ptr %214, align 16
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %217 = load i32, ptr %216, align 4
  %218 = zext i32 %217 to i64
  br label %260

219:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #26
  %220 = sub nuw nsw i32 64, %11
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %223 = sub nsw i64 0, %221
  %224 = getelementptr inbounds i8, ptr %10, i64 %223
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull readonly align 1 %224, i64 %221, i1 false)
  %225 = getelementptr inbounds nuw i8, ptr %2, i64 %221
  %226 = zext nneg i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %225, ptr nonnull readonly align 64 %222, i64 %226, i1 false)
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %228 = load ptr, ptr %227, align 16
  %229 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %230 = load i32, ptr %229, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds nuw i8, ptr %228, i64 %231
  %233 = getelementptr inbounds i8, ptr %232, i64 -7
  %234 = load <4 x i64>, ptr %2, align 16
  %235 = load <4 x i64>, ptr %233, align 1
  %236 = xor <4 x i64> %235, %234
  %237 = bitcast <4 x i64> %236 to <8 x i32>
  %238 = shufflevector <8 x i32> %237, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %239 = bitcast <8 x i32> %238 to <4 x i64>
  %240 = and <4 x i64> %236, splat (i64 4294967295)
  %241 = and <4 x i64> %239, splat (i64 4294967295)
  %242 = mul nuw <4 x i64> %241, %240
  %243 = shufflevector <4 x i64> %234, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %244 = add <4 x i64> %7, %243
  %245 = add <4 x i64> %244, %242
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %247 = load <4 x i64>, ptr %246, align 16
  %248 = getelementptr inbounds nuw i8, ptr %232, i64 25
  %249 = load <4 x i64>, ptr %248, align 1
  %250 = xor <4 x i64> %249, %247
  %251 = bitcast <4 x i64> %250 to <8 x i32>
  %252 = shufflevector <8 x i32> %251, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %253 = bitcast <8 x i32> %252 to <4 x i64>
  %254 = and <4 x i64> %250, splat (i64 4294967295)
  %255 = and <4 x i64> %253, splat (i64 4294967295)
  %256 = mul nuw <4 x i64> %255, %254
  %257 = shufflevector <4 x i64> %247, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %258 = add <4 x i64> %9, %257
  %259 = add <4 x i64> %258, %256
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #26
  br label %260

260:                                              ; preds = %213, %174, %179, %219
  %261 = phi i64 [ %218, %213 ], [ %25, %174 ], [ %25, %179 ], [ %231, %219 ]
  %262 = phi ptr [ %215, %213 ], [ %22, %174 ], [ %22, %179 ], [ %228, %219 ]
  %263 = phi <4 x i64> [ %9, %213 ], [ %175, %174 ], [ %210, %179 ], [ %259, %219 ]
  %264 = phi <4 x i64> [ %7, %213 ], [ %176, %174 ], [ %196, %179 ], [ %245, %219 ]
  %265 = getelementptr inbounds nuw i8, ptr %262, i64 11
  %266 = mul i64 %4, -7046029288634856825
  %267 = extractelement <4 x i64> %264, i64 0
  %268 = extractelement <4 x i64> %264, i64 1
  %269 = load i64, ptr %265, align 1
  %270 = getelementptr i8, ptr %262, i64 19
  %271 = load i64, ptr %270, align 1
  %272 = xor i64 %269, %267
  %273 = xor i64 %271, %268
  %274 = zext i64 %272 to i128
  %275 = zext i64 %273 to i128
  %276 = mul nuw i128 %275, %274
  %277 = lshr i128 %276, 64
  %278 = xor i128 %277, %276
  %279 = trunc i128 %278 to i64
  %280 = add i64 %266, %279
  %281 = getelementptr inbounds nuw i8, ptr %262, i64 27
  %282 = extractelement <4 x i64> %264, i64 2
  %283 = extractelement <4 x i64> %264, i64 3
  %284 = load i64, ptr %281, align 1
  %285 = getelementptr i8, ptr %262, i64 35
  %286 = load i64, ptr %285, align 1
  %287 = xor i64 %284, %282
  %288 = xor i64 %286, %283
  %289 = zext i64 %287 to i128
  %290 = zext i64 %288 to i128
  %291 = mul nuw i128 %290, %289
  %292 = lshr i128 %291, 64
  %293 = xor i128 %292, %291
  %294 = trunc i128 %293 to i64
  %295 = add i64 %280, %294
  %296 = getelementptr inbounds nuw i8, ptr %262, i64 43
  %297 = extractelement <4 x i64> %263, i64 0
  %298 = extractelement <4 x i64> %263, i64 1
  %299 = load i64, ptr %296, align 1
  %300 = getelementptr i8, ptr %262, i64 51
  %301 = load i64, ptr %300, align 1
  %302 = xor i64 %299, %297
  %303 = xor i64 %301, %298
  %304 = zext i64 %302 to i128
  %305 = zext i64 %303 to i128
  %306 = mul nuw i128 %305, %304
  %307 = lshr i128 %306, 64
  %308 = xor i128 %307, %306
  %309 = trunc i128 %308 to i64
  %310 = add i64 %295, %309
  %311 = getelementptr inbounds nuw i8, ptr %262, i64 59
  %312 = extractelement <4 x i64> %263, i64 2
  %313 = extractelement <4 x i64> %263, i64 3
  %314 = load i64, ptr %311, align 1
  %315 = getelementptr i8, ptr %262, i64 67
  %316 = load i64, ptr %315, align 1
  %317 = xor i64 %314, %312
  %318 = xor i64 %316, %313
  %319 = zext i64 %317 to i128
  %320 = zext i64 %318 to i128
  %321 = mul nuw i128 %320, %319
  %322 = lshr i128 %321, 64
  %323 = xor i128 %322, %321
  %324 = trunc i128 %323 to i64
  %325 = add i64 %310, %324
  %326 = lshr i64 %325, 37
  %327 = xor i64 %326, %325
  %328 = mul i64 %327, 1609587929392839161
  %329 = lshr i64 %328, 32
  %330 = xor i64 %329, %328
  %331 = getelementptr inbounds nuw i8, ptr %262, i64 %261
  %332 = getelementptr inbounds i8, ptr %331, i64 -11
  %333 = mul i64 %4, -4417276706812531889
  %334 = xor i64 %333, -1
  %335 = load i64, ptr %332, align 1
  %336 = getelementptr i8, ptr %331, i64 -3
  %337 = load i64, ptr %336, align 1
  %338 = xor i64 %335, %267
  %339 = xor i64 %337, %268
  %340 = zext i64 %338 to i128
  %341 = zext i64 %339 to i128
  %342 = mul nuw i128 %341, %340
  %343 = lshr i128 %342, 64
  %344 = xor i128 %343, %342
  %345 = trunc i128 %344 to i64
  %346 = add i64 %345, %334
  %347 = getelementptr inbounds nuw i8, ptr %331, i64 5
  %348 = load i64, ptr %347, align 1
  %349 = getelementptr i8, ptr %331, i64 13
  %350 = load i64, ptr %349, align 1
  %351 = xor i64 %348, %282
  %352 = xor i64 %350, %283
  %353 = zext i64 %351 to i128
  %354 = zext i64 %352 to i128
  %355 = mul nuw i128 %354, %353
  %356 = lshr i128 %355, 64
  %357 = xor i128 %356, %355
  %358 = trunc i128 %357 to i64
  %359 = add i64 %346, %358
  %360 = getelementptr inbounds nuw i8, ptr %331, i64 21
  %361 = load i64, ptr %360, align 1
  %362 = getelementptr i8, ptr %331, i64 29
  %363 = load i64, ptr %362, align 1
  %364 = xor i64 %361, %297
  %365 = xor i64 %363, %298
  %366 = zext i64 %364 to i128
  %367 = zext i64 %365 to i128
  %368 = mul nuw i128 %367, %366
  %369 = lshr i128 %368, 64
  %370 = xor i128 %369, %368
  %371 = trunc i128 %370 to i64
  %372 = add i64 %359, %371
  %373 = getelementptr inbounds nuw i8, ptr %331, i64 37
  %374 = load i64, ptr %373, align 1
  %375 = getelementptr i8, ptr %331, i64 45
  %376 = load i64, ptr %375, align 1
  %377 = xor i64 %374, %312
  %378 = xor i64 %376, %313
  %379 = zext i64 %377 to i128
  %380 = zext i64 %378 to i128
  %381 = mul nuw i128 %380, %379
  %382 = lshr i128 %381, 64
  %383 = xor i128 %382, %381
  %384 = trunc i128 %383 to i64
  %385 = add i64 %372, %384
  %386 = lshr i64 %385, 37
  %387 = xor i64 %386, %385
  %388 = mul i64 %387, 1609587929392839161
  %389 = lshr i64 %388, 32
  %390 = xor i64 %389, %388
  br label %1536

391:                                              ; preds = %1
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %393 = load i64, ptr %392, align 32
  %394 = icmp eq i64 %393, 0
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %394, label %949, label %396

396:                                              ; preds = %391
  %397 = icmp samesign ult i64 %4, 17
  br i1 %397, label %398, label %517

398:                                              ; preds = %396
  %399 = icmp samesign ugt i64 %4, 8
  br i1 %399, label %400, label %438

400:                                              ; preds = %398
  %401 = load i64, ptr %395, align 1
  %402 = add i64 %393, -4734510112055689544
  %403 = xor i64 %401, %402
  %404 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %405 = getelementptr inbounds i8, ptr %404, i64 -8
  %406 = load i64, ptr %405, align 1
  %407 = sub i64 2066345149520216444, %393
  %408 = xor i64 %406, %407
  %409 = xor i64 %403, %408
  %410 = zext i64 %409 to i128
  %411 = mul nuw i128 %410, 11400714785074694791
  %412 = trunc i128 %411 to i64
  %413 = lshr i128 %411, 64
  %414 = trunc nuw i128 %413 to i64
  %415 = mul nuw nsw i64 %4, 374761393
  %416 = add i64 %415, %412
  %417 = mul i64 %408, -7046029288634856825
  %418 = add i64 %417, %414
  %419 = lshr i64 %418, 32
  %420 = xor i64 %419, %416
  %421 = zext i64 %420 to i128
  %422 = mul nuw i128 %421, 14029467366897019727
  %423 = trunc i128 %422 to i64
  %424 = lshr i128 %422, 64
  %425 = trunc nuw i128 %424 to i64
  %426 = mul i64 %418, -4417276706812531889
  %427 = add i64 %426, %425
  %428 = lshr i64 %423, 37
  %429 = xor i64 %428, %423
  %430 = mul i64 %429, 1609587929392839161
  %431 = lshr i64 %430, 32
  %432 = xor i64 %431, %430
  %433 = lshr i64 %427, 37
  %434 = xor i64 %433, %427
  %435 = mul i64 %434, 1609587929392839161
  %436 = lshr i64 %435, 32
  %437 = xor i64 %436, %435
  br label %1536

438:                                              ; preds = %398
  %439 = icmp samesign ugt i64 %4, 3
  br i1 %439, label %440, label %478

440:                                              ; preds = %438
  %441 = load i32, ptr %395, align 1
  %442 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %443 = getelementptr inbounds i8, ptr %442, i64 -4
  %444 = load i32, ptr %443, align 1
  %445 = zext i32 %441 to i64
  %446 = zext i32 %444 to i64
  %447 = shl nuw i64 %446, 32
  %448 = or disjoint i64 %447, %445
  %449 = tail call noundef i64 @llvm.bswap.i64(i64 %448)
  %450 = add i64 %393, -4734510112055689544
  %451 = xor i64 %448, %450
  %452 = sub i64 2066345149520216444, %393
  %453 = xor i64 %449, %452
  %454 = lshr i64 %451, 51
  %455 = xor i64 %454, %451
  %456 = mul i64 %455, 2654435761
  %457 = add i64 %456, %4
  %458 = lshr i64 %457, 47
  %459 = xor i64 %458, %457
  %460 = mul i64 %459, -4417276706812531889
  %461 = lshr i64 %453, 47
  %462 = xor i64 %461, %453
  %463 = mul i64 %462, -7046029288634856825
  %464 = sub i64 %463, %4
  %465 = lshr i64 %464, 43
  %466 = xor i64 %465, %464
  %467 = mul i64 %466, -8796714831421723037
  %468 = lshr i64 %460, 37
  %469 = xor i64 %468, %460
  %470 = mul i64 %469, 1609587929392839161
  %471 = lshr i64 %470, 32
  %472 = xor i64 %471, %470
  %473 = lshr i64 %467, 37
  %474 = xor i64 %473, %467
  %475 = mul i64 %474, 1609587929392839161
  %476 = lshr i64 %475, 32
  %477 = xor i64 %476, %475
  br label %1536

478:                                              ; preds = %438
  %479 = icmp eq i64 %4, 0
  br i1 %479, label %1536, label %480

480:                                              ; preds = %478
  %481 = load i8, ptr %395, align 1
  %482 = lshr i64 %4, 1
  %483 = getelementptr inbounds nuw i8, ptr %395, i64 %482
  %484 = load i8, ptr %483, align 1
  %485 = getelementptr i8, ptr %395, i64 %4
  %486 = getelementptr i8, ptr %485, i64 -1
  %487 = load i8, ptr %486, align 1
  %488 = zext i8 %481 to i32
  %489 = zext i8 %484 to i32
  %490 = shl nuw nsw i32 %489, 8
  %491 = or disjoint i32 %490, %488
  %492 = zext i8 %487 to i32
  %493 = shl nuw nsw i32 %492, 16
  %494 = or disjoint i32 %491, %493
  %495 = trunc nuw nsw i64 %4 to i32
  %496 = shl nuw nsw i32 %495, 24
  %497 = or disjoint i32 %494, %496
  %498 = tail call noundef i32 @llvm.bswap.i32(i32 %497)
  %499 = zext nneg i32 %497 to i64
  %500 = add i64 %393, 963444408
  %501 = xor i64 %500, %499
  %502 = zext i32 %498 to i64
  %503 = sub i64 3192628259, %393
  %504 = xor i64 %503, %502
  %505 = mul i64 %501, -7046029288634856825
  %506 = mul i64 %504, 2870177450012600261
  %507 = lshr i64 %505, 37
  %508 = xor i64 %507, %505
  %509 = mul i64 %508, 1609587929392839161
  %510 = lshr i64 %509, 32
  %511 = xor i64 %510, %509
  %512 = lshr i64 %506, 37
  %513 = xor i64 %512, %506
  %514 = mul i64 %513, 1609587929392839161
  %515 = lshr i64 %514, 32
  %516 = xor i64 %515, %514
  br label %1536

517:                                              ; preds = %396
  %518 = icmp samesign ult i64 %4, 129
  br i1 %518, label %519, label %692

519:                                              ; preds = %517
  %520 = mul i64 %4, -7046029288634856825
  %521 = icmp samesign ugt i64 %4, 32
  br i1 %521, label %522, label %637

522:                                              ; preds = %519
  %523 = icmp samesign ugt i64 %4, 64
  br i1 %523, label %524, label %599

524:                                              ; preds = %522
  %525 = icmp samesign ugt i64 %4, 96
  br i1 %525, label %526, label %561

526:                                              ; preds = %524
  %527 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %528 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %529 = getelementptr inbounds i8, ptr %528, i64 -64
  %530 = load i64, ptr %527, align 1
  %531 = getelementptr i8, ptr %0, i64 312
  %532 = load i64, ptr %531, align 1
  %533 = load i64, ptr %529, align 1
  %534 = getelementptr i8, ptr %528, i64 -56
  %535 = load i64, ptr %534, align 1
  %536 = add i64 %393, 4554437623014685352
  %537 = xor i64 %530, %536
  %538 = sub i64 2111919702937427193, %393
  %539 = xor i64 %532, %538
  %540 = zext i64 %537 to i128
  %541 = zext i64 %539 to i128
  %542 = mul nuw i128 %541, %540
  %543 = lshr i128 %542, 64
  %544 = xor i128 %543, %542
  %545 = trunc i128 %544 to i64
  %546 = add i64 %520, %545
  %547 = add i64 %535, %533
  %548 = xor i64 %546, %547
  %549 = add i64 %393, 3556072174620004746
  %550 = xor i64 %533, %549
  %551 = sub i64 7238261902898274248, %393
  %552 = xor i64 %535, %551
  %553 = zext i64 %550 to i128
  %554 = zext i64 %552 to i128
  %555 = mul nuw i128 %554, %553
  %556 = lshr i128 %555, 64
  %557 = xor i128 %556, %555
  %558 = trunc i128 %557 to i64
  %559 = add i64 %532, %530
  %560 = xor i64 %559, %558
  br label %561

561:                                              ; preds = %526, %524
  %562 = phi i64 [ %548, %526 ], [ %520, %524 ]
  %563 = phi i64 [ %560, %526 ], [ 0, %524 ]
  %564 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %565 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %566 = getelementptr inbounds i8, ptr %565, i64 -48
  %567 = load i64, ptr %564, align 1
  %568 = getelementptr i8, ptr %0, i64 296
  %569 = load i64, ptr %568, align 1
  %570 = load i64, ptr %566, align 1
  %571 = getelementptr i8, ptr %565, i64 -40
  %572 = load i64, ptr %571, align 1
  %573 = add i64 %393, -3818837453329782724
  %574 = xor i64 %567, %573
  %575 = sub i64 -6688317018830679928, %393
  %576 = xor i64 %569, %575
  %577 = zext i64 %574 to i128
  %578 = zext i64 %576 to i128
  %579 = mul nuw i128 %578, %577
  %580 = lshr i128 %579, 64
  %581 = xor i128 %580, %579
  %582 = trunc i128 %581 to i64
  %583 = add i64 %562, %582
  %584 = add i64 %572, %570
  %585 = xor i64 %583, %584
  %586 = add i64 %393, 5690594596133299313
  %587 = xor i64 %570, %586
  %588 = sub i64 -2833645246901970632, %393
  %589 = xor i64 %572, %588
  %590 = zext i64 %587 to i128
  %591 = zext i64 %589 to i128
  %592 = mul nuw i128 %591, %590
  %593 = lshr i128 %592, 64
  %594 = xor i128 %593, %592
  %595 = trunc i128 %594 to i64
  %596 = add i64 %563, %595
  %597 = add i64 %569, %567
  %598 = xor i64 %596, %597
  br label %599

599:                                              ; preds = %561, %522
  %600 = phi i64 [ %585, %561 ], [ %520, %522 ]
  %601 = phi i64 [ %598, %561 ], [ 0, %522 ]
  %602 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %603 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %604 = getelementptr inbounds i8, ptr %603, i64 -32
  %605 = load i64, ptr %602, align 1
  %606 = getelementptr i8, ptr %0, i64 280
  %607 = load i64, ptr %606, align 1
  %608 = load i64, ptr %604, align 1
  %609 = getelementptr i8, ptr %603, i64 -24
  %610 = load i64, ptr %609, align 1
  %611 = add i64 %393, 8711581037947681227
  %612 = xor i64 %605, %611
  %613 = sub i64 2410270004345854594, %393
  %614 = xor i64 %607, %613
  %615 = zext i64 %612 to i128
  %616 = zext i64 %614 to i128
  %617 = mul nuw i128 %616, %615
  %618 = lshr i128 %617, 64
  %619 = xor i128 %618, %617
  %620 = trunc i128 %619 to i64
  %621 = add i64 %600, %620
  %622 = add i64 %610, %608
  %623 = xor i64 %621, %622
  %624 = add i64 %393, -8204357891075471176
  %625 = xor i64 %608, %624
  %626 = sub i64 5487137525590930912, %393
  %627 = xor i64 %610, %626
  %628 = zext i64 %625 to i128
  %629 = zext i64 %627 to i128
  %630 = mul nuw i128 %629, %628
  %631 = lshr i128 %630, 64
  %632 = xor i128 %631, %630
  %633 = trunc i128 %632 to i64
  %634 = add i64 %601, %633
  %635 = add i64 %607, %605
  %636 = xor i64 %634, %635
  br label %637

637:                                              ; preds = %599, %519
  %638 = phi i64 [ %623, %599 ], [ %520, %519 ]
  %639 = phi i64 [ %636, %599 ], [ 0, %519 ]
  %640 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %641 = getelementptr inbounds i8, ptr %640, i64 -16
  %642 = load i64, ptr %395, align 1
  %643 = getelementptr i8, ptr %0, i64 264
  %644 = load i64, ptr %643, align 1
  %645 = load i64, ptr %641, align 1
  %646 = getelementptr i8, ptr %640, i64 -8
  %647 = load i64, ptr %646, align 1
  %648 = add i64 %393, -4734510112055689544
  %649 = xor i64 %642, %648
  %650 = sub i64 2066345149520216444, %393
  %651 = xor i64 %644, %650
  %652 = zext i64 %649 to i128
  %653 = zext i64 %651 to i128
  %654 = mul nuw i128 %653, %652
  %655 = lshr i128 %654, 64
  %656 = xor i128 %655, %654
  %657 = trunc i128 %656 to i64
  %658 = add i64 %638, %657
  %659 = add i64 %647, %645
  %660 = xor i64 %658, %659
  %661 = add i64 %393, -2623469361688619810
  %662 = xor i64 %645, %661
  %663 = sub i64 2262974939099578482, %393
  %664 = xor i64 %647, %663
  %665 = zext i64 %662 to i128
  %666 = zext i64 %664 to i128
  %667 = mul nuw i128 %666, %665
  %668 = lshr i128 %667, 64
  %669 = xor i128 %668, %667
  %670 = trunc i128 %669 to i64
  %671 = add i64 %639, %670
  %672 = add i64 %644, %642
  %673 = xor i64 %671, %672
  %674 = add i64 %673, %660
  %675 = mul i64 %660, -7046029288634856825
  %676 = mul i64 %673, -8796714831421723037
  %677 = sub i64 %4, %393
  %678 = mul i64 %677, -4417276706812531889
  %679 = add i64 %675, %678
  %680 = add i64 %679, %676
  %681 = lshr i64 %674, 37
  %682 = xor i64 %681, %674
  %683 = mul i64 %682, 1609587929392839161
  %684 = lshr i64 %683, 32
  %685 = xor i64 %684, %683
  %686 = lshr i64 %680, 37
  %687 = xor i64 %686, %680
  %688 = mul i64 %687, 1609587929392839161
  %689 = lshr i64 %688, 32
  %690 = xor i64 %689, %688
  %691 = sub i64 0, %690
  br label %1536

692:                                              ; preds = %517
  %693 = trunc nuw nsw i64 %4 to i32
  %694 = mul i64 %4, -7046029288634856825
  %695 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %696 = load i64, ptr %395, align 1
  %697 = getelementptr i8, ptr %0, i64 264
  %698 = load i64, ptr %697, align 1
  %699 = load i64, ptr %695, align 1
  %700 = getelementptr i8, ptr %0, i64 280
  %701 = load i64, ptr %700, align 1
  %702 = add i64 %393, -4734510112055689544
  %703 = xor i64 %696, %702
  %704 = sub i64 2066345149520216444, %393
  %705 = xor i64 %698, %704
  %706 = zext i64 %703 to i128
  %707 = zext i64 %705 to i128
  %708 = mul nuw i128 %707, %706
  %709 = lshr i128 %708, 64
  %710 = xor i128 %709, %708
  %711 = trunc i128 %710 to i64
  %712 = add i64 %694, %711
  %713 = add i64 %701, %699
  %714 = xor i64 %712, %713
  %715 = add i64 %393, -2623469361688619810
  %716 = xor i64 %699, %715
  %717 = sub i64 2262974939099578482, %393
  %718 = xor i64 %701, %717
  %719 = zext i64 %716 to i128
  %720 = zext i64 %718 to i128
  %721 = mul nuw i128 %720, %719
  %722 = lshr i128 %721, 64
  %723 = xor i128 %722, %721
  %724 = trunc i128 %723 to i64
  %725 = add i64 %698, %696
  %726 = xor i64 %725, %724
  %727 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %728 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %729 = load i64, ptr %727, align 1
  %730 = getelementptr i8, ptr %0, i64 296
  %731 = load i64, ptr %730, align 1
  %732 = load i64, ptr %728, align 1
  %733 = getelementptr i8, ptr %0, i64 312
  %734 = load i64, ptr %733, align 1
  %735 = add i64 %393, 8711581037947681227
  %736 = xor i64 %729, %735
  %737 = sub i64 2410270004345854594, %393
  %738 = xor i64 %731, %737
  %739 = zext i64 %736 to i128
  %740 = zext i64 %738 to i128
  %741 = mul nuw i128 %740, %739
  %742 = lshr i128 %741, 64
  %743 = xor i128 %742, %741
  %744 = trunc i128 %743 to i64
  %745 = add i64 %714, %744
  %746 = add i64 %734, %732
  %747 = xor i64 %745, %746
  %748 = add i64 %393, -8204357891075471176
  %749 = xor i64 %732, %748
  %750 = sub i64 5487137525590930912, %393
  %751 = xor i64 %734, %750
  %752 = zext i64 %749 to i128
  %753 = zext i64 %751 to i128
  %754 = mul nuw i128 %753, %752
  %755 = lshr i128 %754, 64
  %756 = xor i128 %755, %754
  %757 = trunc i128 %756 to i64
  %758 = add i64 %726, %757
  %759 = add i64 %731, %729
  %760 = xor i64 %758, %759
  %761 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %762 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %763 = load i64, ptr %761, align 1
  %764 = getelementptr i8, ptr %0, i64 328
  %765 = load i64, ptr %764, align 1
  %766 = load i64, ptr %762, align 1
  %767 = getelementptr i8, ptr %0, i64 344
  %768 = load i64, ptr %767, align 1
  %769 = add i64 %393, -3818837453329782724
  %770 = xor i64 %763, %769
  %771 = sub i64 -6688317018830679928, %393
  %772 = xor i64 %765, %771
  %773 = zext i64 %770 to i128
  %774 = zext i64 %772 to i128
  %775 = mul nuw i128 %774, %773
  %776 = lshr i128 %775, 64
  %777 = xor i128 %776, %775
  %778 = trunc i128 %777 to i64
  %779 = add i64 %747, %778
  %780 = add i64 %768, %766
  %781 = xor i64 %779, %780
  %782 = add i64 %393, 5690594596133299313
  %783 = xor i64 %766, %782
  %784 = sub i64 -2833645246901970632, %393
  %785 = xor i64 %768, %784
  %786 = zext i64 %783 to i128
  %787 = zext i64 %785 to i128
  %788 = mul nuw i128 %787, %786
  %789 = lshr i128 %788, 64
  %790 = xor i128 %789, %788
  %791 = trunc i128 %790 to i64
  %792 = add i64 %760, %791
  %793 = add i64 %765, %763
  %794 = xor i64 %792, %793
  %795 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %796 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %797 = load i64, ptr %795, align 1
  %798 = getelementptr i8, ptr %0, i64 360
  %799 = load i64, ptr %798, align 1
  %800 = load i64, ptr %796, align 1
  %801 = getelementptr i8, ptr %0, i64 376
  %802 = load i64, ptr %801, align 1
  %803 = add i64 %393, 4554437623014685352
  %804 = xor i64 %797, %803
  %805 = sub i64 2111919702937427193, %393
  %806 = xor i64 %799, %805
  %807 = zext i64 %804 to i128
  %808 = zext i64 %806 to i128
  %809 = mul nuw i128 %808, %807
  %810 = lshr i128 %809, 64
  %811 = xor i128 %810, %809
  %812 = trunc i128 %811 to i64
  %813 = add i64 %781, %812
  %814 = add i64 %802, %800
  %815 = xor i64 %813, %814
  %816 = add i64 %393, 3556072174620004746
  %817 = xor i64 %800, %816
  %818 = sub i64 7238261902898274248, %393
  %819 = xor i64 %802, %818
  %820 = zext i64 %817 to i128
  %821 = zext i64 %819 to i128
  %822 = mul nuw i128 %821, %820
  %823 = lshr i128 %822, 64
  %824 = xor i128 %823, %822
  %825 = trunc i128 %824 to i64
  %826 = add i64 %794, %825
  %827 = add i64 %799, %797
  %828 = xor i64 %826, %827
  %829 = lshr i32 %693, 5
  %830 = lshr i64 %815, 37
  %831 = xor i64 %830, %815
  %832 = mul i64 %831, 1609587929392839161
  %833 = lshr i64 %832, 32
  %834 = xor i64 %833, %832
  %835 = lshr i64 %828, 37
  %836 = xor i64 %835, %828
  %837 = mul i64 %836, 1609587929392839161
  %838 = lshr i64 %837, 32
  %839 = xor i64 %838, %837
  %840 = icmp eq i32 %829, 4
  br i1 %840, label %893, label %841

841:                                              ; preds = %692
  %842 = zext nneg i32 %829 to i64
  br label %843

843:                                              ; preds = %843, %841
  %844 = phi i64 [ 4, %841 ], [ %891, %843 ]
  %845 = phi i64 [ %839, %841 ], [ %890, %843 ]
  %846 = phi i64 [ %834, %841 ], [ %873, %843 ]
  %847 = shl nsw i64 %844, 5
  %848 = getelementptr inbounds nuw i8, ptr %395, i64 %847
  %849 = getelementptr inbounds nuw i8, ptr %848, i64 16
  %850 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @kSecret, i64 3), i64 %847
  %851 = getelementptr i8, ptr %850, i64 -128
  %852 = load i64, ptr %848, align 1
  %853 = getelementptr i8, ptr %848, i64 8
  %854 = load i64, ptr %853, align 1
  %855 = load i64, ptr %849, align 1
  %856 = getelementptr i8, ptr %848, i64 24
  %857 = load i64, ptr %856, align 1
  %858 = load i64, ptr %851, align 1
  %859 = getelementptr i8, ptr %850, i64 -120
  %860 = load i64, ptr %859, align 1
  %861 = add i64 %858, %393
  %862 = xor i64 %861, %852
  %863 = sub i64 %860, %393
  %864 = xor i64 %863, %854
  %865 = zext i64 %862 to i128
  %866 = zext i64 %864 to i128
  %867 = mul nuw i128 %866, %865
  %868 = lshr i128 %867, 64
  %869 = xor i128 %868, %867
  %870 = trunc i128 %869 to i64
  %871 = add i64 %846, %870
  %872 = add i64 %857, %855
  %873 = xor i64 %871, %872
  %874 = getelementptr i8, ptr %850, i64 -112
  %875 = load i64, ptr %874, align 1
  %876 = getelementptr i8, ptr %850, i64 -104
  %877 = load i64, ptr %876, align 1
  %878 = add i64 %875, %393
  %879 = xor i64 %878, %855
  %880 = sub i64 %877, %393
  %881 = xor i64 %880, %857
  %882 = zext i64 %879 to i128
  %883 = zext i64 %881 to i128
  %884 = mul nuw i128 %883, %882
  %885 = lshr i128 %884, 64
  %886 = xor i128 %885, %884
  %887 = trunc i128 %886 to i64
  %888 = add i64 %845, %887
  %889 = add i64 %854, %852
  %890 = xor i64 %888, %889
  %891 = add nuw nsw i64 %844, 1
  %892 = icmp eq i64 %891, %842
  br i1 %892, label %893, label %843

893:                                              ; preds = %843, %692
  %894 = phi i64 [ %834, %692 ], [ %873, %843 ]
  %895 = phi i64 [ %839, %692 ], [ %890, %843 ]
  %896 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %897 = getelementptr inbounds i8, ptr %896, i64 -16
  %898 = getelementptr inbounds i8, ptr %896, i64 -32
  %899 = load i64, ptr %897, align 1
  %900 = getelementptr i8, ptr %896, i64 -8
  %901 = load i64, ptr %900, align 1
  %902 = load i64, ptr %898, align 1
  %903 = getelementptr i8, ptr %896, i64 -24
  %904 = load i64, ptr %903, align 1
  %905 = sub i64 5695865814404364607, %393
  %906 = xor i64 %899, %905
  %907 = add i64 %393, 6464017090953185821
  %908 = xor i64 %901, %907
  %909 = zext i64 %906 to i128
  %910 = zext i64 %908 to i128
  %911 = mul nuw i128 %910, %909
  %912 = lshr i128 %911, 64
  %913 = xor i128 %912, %911
  %914 = trunc i128 %913 to i64
  %915 = add i64 %894, %914
  %916 = add i64 %904, %902
  %917 = xor i64 %915, %916
  %918 = sub i64 8320639771003045937, %393
  %919 = xor i64 %902, %918
  %920 = add i64 %393, -1453760514566526364
  %921 = xor i64 %904, %920
  %922 = zext i64 %919 to i128
  %923 = zext i64 %921 to i128
  %924 = mul nuw i128 %923, %922
  %925 = lshr i128 %924, 64
  %926 = xor i128 %925, %924
  %927 = trunc i128 %926 to i64
  %928 = add i64 %895, %927
  %929 = add i64 %901, %899
  %930 = xor i64 %928, %929
  %931 = add i64 %930, %917
  %932 = mul i64 %917, -7046029288634856825
  %933 = mul i64 %930, -8796714831421723037
  %934 = sub i64 %4, %393
  %935 = mul i64 %934, -4417276706812531889
  %936 = add i64 %932, %935
  %937 = add i64 %936, %933
  %938 = lshr i64 %931, 37
  %939 = xor i64 %938, %931
  %940 = mul i64 %939, 1609587929392839161
  %941 = lshr i64 %940, 32
  %942 = xor i64 %941, %940
  %943 = lshr i64 %937, 37
  %944 = xor i64 %943, %937
  %945 = mul i64 %944, 1609587929392839161
  %946 = lshr i64 %945, 32
  %947 = xor i64 %946, %945
  %948 = sub i64 0, %947
  br label %1536

949:                                              ; preds = %391
  %950 = getelementptr inbounds nuw i8, ptr %0, i64 560
  %951 = load ptr, ptr %950, align 16
  %952 = icmp samesign ult i64 %4, 17
  br i1 %952, label %953, label %1075

953:                                              ; preds = %949
  %954 = icmp samesign ugt i64 %4, 8
  br i1 %954, label %955, label %994

955:                                              ; preds = %953
  %956 = load i64, ptr %951, align 1
  %957 = getelementptr i8, ptr %951, i64 8
  %958 = load i64, ptr %957, align 1
  %959 = load i64, ptr %395, align 1
  %960 = xor i64 %959, %956
  %961 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %962 = getelementptr inbounds i8, ptr %961, i64 -8
  %963 = load i64, ptr %962, align 1
  %964 = xor i64 %963, %958
  %965 = xor i64 %960, %964
  %966 = zext i64 %965 to i128
  %967 = mul nuw i128 %966, 11400714785074694791
  %968 = trunc i128 %967 to i64
  %969 = lshr i128 %967, 64
  %970 = trunc nuw i128 %969 to i64
  %971 = mul nuw nsw i64 %4, 374761393
  %972 = add i64 %971, %968
  %973 = mul i64 %964, -7046029288634856825
  %974 = add i64 %973, %970
  %975 = lshr i64 %974, 32
  %976 = xor i64 %975, %972
  %977 = zext i64 %976 to i128
  %978 = mul nuw i128 %977, 14029467366897019727
  %979 = trunc i128 %978 to i64
  %980 = lshr i128 %978, 64
  %981 = trunc nuw i128 %980 to i64
  %982 = mul i64 %974, -4417276706812531889
  %983 = add i64 %982, %981
  %984 = lshr i64 %979, 37
  %985 = xor i64 %984, %979
  %986 = mul i64 %985, 1609587929392839161
  %987 = lshr i64 %986, 32
  %988 = xor i64 %987, %986
  %989 = lshr i64 %983, 37
  %990 = xor i64 %989, %983
  %991 = mul i64 %990, 1609587929392839161
  %992 = lshr i64 %991, 32
  %993 = xor i64 %992, %991
  br label %1536

994:                                              ; preds = %953
  %995 = icmp samesign ugt i64 %4, 3
  br i1 %995, label %996, label %1035

996:                                              ; preds = %994
  %997 = load i64, ptr %951, align 1
  %998 = getelementptr i8, ptr %951, i64 8
  %999 = load i64, ptr %998, align 1
  %1000 = load i32, ptr %395, align 1
  %1001 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %1002 = getelementptr inbounds i8, ptr %1001, i64 -4
  %1003 = load i32, ptr %1002, align 1
  %1004 = zext i32 %1000 to i64
  %1005 = zext i32 %1003 to i64
  %1006 = shl nuw i64 %1005, 32
  %1007 = or disjoint i64 %1006, %1004
  %1008 = tail call noundef i64 @llvm.bswap.i64(i64 %1007)
  %1009 = xor i64 %1007, %997
  %1010 = xor i64 %1008, %999
  %1011 = lshr i64 %1009, 51
  %1012 = xor i64 %1011, %1009
  %1013 = mul i64 %1012, 2654435761
  %1014 = add i64 %1013, %4
  %1015 = lshr i64 %1014, 47
  %1016 = xor i64 %1015, %1014
  %1017 = mul i64 %1016, -4417276706812531889
  %1018 = lshr i64 %1010, 47
  %1019 = xor i64 %1018, %1010
  %1020 = mul i64 %1019, -7046029288634856825
  %1021 = sub i64 %1020, %4
  %1022 = lshr i64 %1021, 43
  %1023 = xor i64 %1022, %1021
  %1024 = mul i64 %1023, -8796714831421723037
  %1025 = lshr i64 %1017, 37
  %1026 = xor i64 %1025, %1017
  %1027 = mul i64 %1026, 1609587929392839161
  %1028 = lshr i64 %1027, 32
  %1029 = xor i64 %1028, %1027
  %1030 = lshr i64 %1024, 37
  %1031 = xor i64 %1030, %1024
  %1032 = mul i64 %1031, 1609587929392839161
  %1033 = lshr i64 %1032, 32
  %1034 = xor i64 %1033, %1032
  br label %1536

1035:                                             ; preds = %994
  %1036 = icmp eq i64 %4, 0
  br i1 %1036, label %1536, label %1037

1037:                                             ; preds = %1035
  %1038 = load i32, ptr %951, align 1
  %1039 = getelementptr i8, ptr %951, i64 4
  %1040 = load i32, ptr %1039, align 1
  %1041 = load i8, ptr %395, align 1
  %1042 = lshr i64 %4, 1
  %1043 = getelementptr inbounds nuw i8, ptr %395, i64 %1042
  %1044 = load i8, ptr %1043, align 1
  %1045 = getelementptr i8, ptr %395, i64 %4
  %1046 = getelementptr i8, ptr %1045, i64 -1
  %1047 = load i8, ptr %1046, align 1
  %1048 = zext i8 %1041 to i32
  %1049 = zext i8 %1044 to i32
  %1050 = shl nuw nsw i32 %1049, 8
  %1051 = or disjoint i32 %1050, %1048
  %1052 = zext i8 %1047 to i32
  %1053 = shl nuw nsw i32 %1052, 16
  %1054 = or disjoint i32 %1051, %1053
  %1055 = trunc nuw nsw i64 %4 to i32
  %1056 = shl nuw nsw i32 %1055, 24
  %1057 = or disjoint i32 %1054, %1056
  %1058 = tail call noundef i32 @llvm.bswap.i32(i32 %1057)
  %1059 = xor i32 %1057, %1038
  %1060 = zext i32 %1059 to i64
  %1061 = xor i32 %1058, %1040
  %1062 = zext i32 %1061 to i64
  %1063 = mul i64 %1060, -7046029288634856825
  %1064 = mul i64 %1062, 2870177450012600261
  %1065 = lshr i64 %1063, 37
  %1066 = xor i64 %1065, %1063
  %1067 = mul i64 %1066, 1609587929392839161
  %1068 = lshr i64 %1067, 32
  %1069 = xor i64 %1068, %1067
  %1070 = lshr i64 %1064, 37
  %1071 = xor i64 %1070, %1064
  %1072 = mul i64 %1071, 1609587929392839161
  %1073 = lshr i64 %1072, 32
  %1074 = xor i64 %1073, %1072
  br label %1536

1075:                                             ; preds = %949
  %1076 = icmp samesign ult i64 %4, 129
  br i1 %1076, label %1077, label %1264

1077:                                             ; preds = %1075
  %1078 = mul i64 %4, -7046029288634856825
  %1079 = icmp samesign ugt i64 %4, 32
  br i1 %1079, label %1080, label %1207

1080:                                             ; preds = %1077
  %1081 = icmp samesign ugt i64 %4, 64
  br i1 %1081, label %1082, label %1165

1082:                                             ; preds = %1080
  %1083 = icmp samesign ugt i64 %4, 96
  br i1 %1083, label %1084, label %1123

1084:                                             ; preds = %1082
  %1085 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %1086 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %1087 = getelementptr inbounds i8, ptr %1086, i64 -64
  %1088 = getelementptr inbounds nuw i8, ptr %951, i64 96
  %1089 = load i64, ptr %1085, align 1
  %1090 = getelementptr i8, ptr %0, i64 312
  %1091 = load i64, ptr %1090, align 1
  %1092 = load i64, ptr %1087, align 1
  %1093 = getelementptr i8, ptr %1086, i64 -56
  %1094 = load i64, ptr %1093, align 1
  %1095 = load i64, ptr %1088, align 1
  %1096 = getelementptr i8, ptr %951, i64 104
  %1097 = load i64, ptr %1096, align 1
  %1098 = xor i64 %1095, %1089
  %1099 = xor i64 %1097, %1091
  %1100 = zext i64 %1098 to i128
  %1101 = zext i64 %1099 to i128
  %1102 = mul nuw i128 %1101, %1100
  %1103 = lshr i128 %1102, 64
  %1104 = xor i128 %1103, %1102
  %1105 = trunc i128 %1104 to i64
  %1106 = add i64 %1078, %1105
  %1107 = add i64 %1094, %1092
  %1108 = xor i64 %1106, %1107
  %1109 = getelementptr inbounds nuw i8, ptr %951, i64 112
  %1110 = load i64, ptr %1109, align 1
  %1111 = getelementptr i8, ptr %951, i64 120
  %1112 = load i64, ptr %1111, align 1
  %1113 = xor i64 %1110, %1092
  %1114 = xor i64 %1112, %1094
  %1115 = zext i64 %1113 to i128
  %1116 = zext i64 %1114 to i128
  %1117 = mul nuw i128 %1116, %1115
  %1118 = lshr i128 %1117, 64
  %1119 = xor i128 %1118, %1117
  %1120 = trunc i128 %1119 to i64
  %1121 = add i64 %1091, %1089
  %1122 = xor i64 %1121, %1120
  br label %1123

1123:                                             ; preds = %1084, %1082
  %1124 = phi i64 [ %1108, %1084 ], [ %1078, %1082 ]
  %1125 = phi i64 [ %1122, %1084 ], [ 0, %1082 ]
  %1126 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %1127 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %1128 = getelementptr inbounds i8, ptr %1127, i64 -48
  %1129 = getelementptr inbounds nuw i8, ptr %951, i64 64
  %1130 = load i64, ptr %1126, align 1
  %1131 = getelementptr i8, ptr %0, i64 296
  %1132 = load i64, ptr %1131, align 1
  %1133 = load i64, ptr %1128, align 1
  %1134 = getelementptr i8, ptr %1127, i64 -40
  %1135 = load i64, ptr %1134, align 1
  %1136 = load i64, ptr %1129, align 1
  %1137 = getelementptr i8, ptr %951, i64 72
  %1138 = load i64, ptr %1137, align 1
  %1139 = xor i64 %1136, %1130
  %1140 = xor i64 %1138, %1132
  %1141 = zext i64 %1139 to i128
  %1142 = zext i64 %1140 to i128
  %1143 = mul nuw i128 %1142, %1141
  %1144 = lshr i128 %1143, 64
  %1145 = xor i128 %1144, %1143
  %1146 = trunc i128 %1145 to i64
  %1147 = add i64 %1124, %1146
  %1148 = add i64 %1135, %1133
  %1149 = xor i64 %1147, %1148
  %1150 = getelementptr inbounds nuw i8, ptr %951, i64 80
  %1151 = load i64, ptr %1150, align 1
  %1152 = getelementptr i8, ptr %951, i64 88
  %1153 = load i64, ptr %1152, align 1
  %1154 = xor i64 %1151, %1133
  %1155 = xor i64 %1153, %1135
  %1156 = zext i64 %1154 to i128
  %1157 = zext i64 %1155 to i128
  %1158 = mul nuw i128 %1157, %1156
  %1159 = lshr i128 %1158, 64
  %1160 = xor i128 %1159, %1158
  %1161 = trunc i128 %1160 to i64
  %1162 = add i64 %1125, %1161
  %1163 = add i64 %1132, %1130
  %1164 = xor i64 %1162, %1163
  br label %1165

1165:                                             ; preds = %1123, %1080
  %1166 = phi i64 [ %1149, %1123 ], [ %1078, %1080 ]
  %1167 = phi i64 [ %1164, %1123 ], [ 0, %1080 ]
  %1168 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %1169 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %1170 = getelementptr inbounds i8, ptr %1169, i64 -32
  %1171 = getelementptr inbounds nuw i8, ptr %951, i64 32
  %1172 = load i64, ptr %1168, align 1
  %1173 = getelementptr i8, ptr %0, i64 280
  %1174 = load i64, ptr %1173, align 1
  %1175 = load i64, ptr %1170, align 1
  %1176 = getelementptr i8, ptr %1169, i64 -24
  %1177 = load i64, ptr %1176, align 1
  %1178 = load i64, ptr %1171, align 1
  %1179 = getelementptr i8, ptr %951, i64 40
  %1180 = load i64, ptr %1179, align 1
  %1181 = xor i64 %1178, %1172
  %1182 = xor i64 %1180, %1174
  %1183 = zext i64 %1181 to i128
  %1184 = zext i64 %1182 to i128
  %1185 = mul nuw i128 %1184, %1183
  %1186 = lshr i128 %1185, 64
  %1187 = xor i128 %1186, %1185
  %1188 = trunc i128 %1187 to i64
  %1189 = add i64 %1166, %1188
  %1190 = add i64 %1177, %1175
  %1191 = xor i64 %1189, %1190
  %1192 = getelementptr inbounds nuw i8, ptr %951, i64 48
  %1193 = load i64, ptr %1192, align 1
  %1194 = getelementptr i8, ptr %951, i64 56
  %1195 = load i64, ptr %1194, align 1
  %1196 = xor i64 %1193, %1175
  %1197 = xor i64 %1195, %1177
  %1198 = zext i64 %1196 to i128
  %1199 = zext i64 %1197 to i128
  %1200 = mul nuw i128 %1199, %1198
  %1201 = lshr i128 %1200, 64
  %1202 = xor i128 %1201, %1200
  %1203 = trunc i128 %1202 to i64
  %1204 = add i64 %1167, %1203
  %1205 = add i64 %1174, %1172
  %1206 = xor i64 %1204, %1205
  br label %1207

1207:                                             ; preds = %1165, %1077
  %1208 = phi i64 [ %1191, %1165 ], [ %1078, %1077 ]
  %1209 = phi i64 [ %1206, %1165 ], [ 0, %1077 ]
  %1210 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %1211 = getelementptr inbounds i8, ptr %1210, i64 -16
  %1212 = load i64, ptr %395, align 1
  %1213 = getelementptr i8, ptr %0, i64 264
  %1214 = load i64, ptr %1213, align 1
  %1215 = load i64, ptr %1211, align 1
  %1216 = getelementptr i8, ptr %1210, i64 -8
  %1217 = load i64, ptr %1216, align 1
  %1218 = load i64, ptr %951, align 1
  %1219 = getelementptr i8, ptr %951, i64 8
  %1220 = load i64, ptr %1219, align 1
  %1221 = xor i64 %1218, %1212
  %1222 = xor i64 %1220, %1214
  %1223 = zext i64 %1221 to i128
  %1224 = zext i64 %1222 to i128
  %1225 = mul nuw i128 %1224, %1223
  %1226 = lshr i128 %1225, 64
  %1227 = xor i128 %1226, %1225
  %1228 = trunc i128 %1227 to i64
  %1229 = add i64 %1208, %1228
  %1230 = add i64 %1217, %1215
  %1231 = xor i64 %1229, %1230
  %1232 = getelementptr inbounds nuw i8, ptr %951, i64 16
  %1233 = load i64, ptr %1232, align 1
  %1234 = getelementptr i8, ptr %951, i64 24
  %1235 = load i64, ptr %1234, align 1
  %1236 = xor i64 %1233, %1215
  %1237 = xor i64 %1235, %1217
  %1238 = zext i64 %1236 to i128
  %1239 = zext i64 %1237 to i128
  %1240 = mul nuw i128 %1239, %1238
  %1241 = lshr i128 %1240, 64
  %1242 = xor i128 %1241, %1240
  %1243 = trunc i128 %1242 to i64
  %1244 = add i64 %1209, %1243
  %1245 = add i64 %1214, %1212
  %1246 = xor i64 %1244, %1245
  %1247 = add i64 %1246, %1231
  %1248 = mul i64 %1231, -7046029288634856825
  %1249 = mul i64 %1246, -8796714831421723037
  %1250 = mul i64 %4, -4417276706812531889
  %1251 = add i64 %1248, %1250
  %1252 = add i64 %1251, %1249
  %1253 = lshr i64 %1247, 37
  %1254 = xor i64 %1253, %1247
  %1255 = mul i64 %1254, 1609587929392839161
  %1256 = lshr i64 %1255, 32
  %1257 = xor i64 %1256, %1255
  %1258 = lshr i64 %1252, 37
  %1259 = xor i64 %1258, %1252
  %1260 = mul i64 %1259, 1609587929392839161
  %1261 = lshr i64 %1260, 32
  %1262 = xor i64 %1261, %1260
  %1263 = sub i64 0, %1262
  br label %1536

1264:                                             ; preds = %1075
  %1265 = trunc nuw nsw i64 %4 to i32
  %1266 = mul i64 %4, -7046029288634856825
  %1267 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %1268 = load i64, ptr %395, align 1
  %1269 = getelementptr i8, ptr %0, i64 264
  %1270 = load i64, ptr %1269, align 1
  %1271 = load i64, ptr %1267, align 1
  %1272 = getelementptr i8, ptr %0, i64 280
  %1273 = load i64, ptr %1272, align 1
  %1274 = load i64, ptr %951, align 1
  %1275 = getelementptr i8, ptr %951, i64 8
  %1276 = load i64, ptr %1275, align 1
  %1277 = xor i64 %1274, %1268
  %1278 = xor i64 %1276, %1270
  %1279 = zext i64 %1277 to i128
  %1280 = zext i64 %1278 to i128
  %1281 = mul nuw i128 %1280, %1279
  %1282 = lshr i128 %1281, 64
  %1283 = xor i128 %1282, %1281
  %1284 = trunc i128 %1283 to i64
  %1285 = add i64 %1266, %1284
  %1286 = add i64 %1273, %1271
  %1287 = xor i64 %1285, %1286
  %1288 = getelementptr inbounds nuw i8, ptr %951, i64 16
  %1289 = load i64, ptr %1288, align 1
  %1290 = getelementptr i8, ptr %951, i64 24
  %1291 = load i64, ptr %1290, align 1
  %1292 = xor i64 %1289, %1271
  %1293 = xor i64 %1291, %1273
  %1294 = zext i64 %1292 to i128
  %1295 = zext i64 %1293 to i128
  %1296 = mul nuw i128 %1295, %1294
  %1297 = lshr i128 %1296, 64
  %1298 = xor i128 %1297, %1296
  %1299 = trunc i128 %1298 to i64
  %1300 = add i64 %1270, %1268
  %1301 = xor i64 %1300, %1299
  %1302 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %1303 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %1304 = getelementptr inbounds nuw i8, ptr %951, i64 32
  %1305 = load i64, ptr %1302, align 1
  %1306 = getelementptr i8, ptr %0, i64 296
  %1307 = load i64, ptr %1306, align 1
  %1308 = load i64, ptr %1303, align 1
  %1309 = getelementptr i8, ptr %0, i64 312
  %1310 = load i64, ptr %1309, align 1
  %1311 = load i64, ptr %1304, align 1
  %1312 = getelementptr i8, ptr %951, i64 40
  %1313 = load i64, ptr %1312, align 1
  %1314 = xor i64 %1311, %1305
  %1315 = xor i64 %1313, %1307
  %1316 = zext i64 %1314 to i128
  %1317 = zext i64 %1315 to i128
  %1318 = mul nuw i128 %1317, %1316
  %1319 = lshr i128 %1318, 64
  %1320 = xor i128 %1319, %1318
  %1321 = trunc i128 %1320 to i64
  %1322 = add i64 %1287, %1321
  %1323 = add i64 %1310, %1308
  %1324 = xor i64 %1322, %1323
  %1325 = getelementptr inbounds nuw i8, ptr %951, i64 48
  %1326 = load i64, ptr %1325, align 1
  %1327 = getelementptr i8, ptr %951, i64 56
  %1328 = load i64, ptr %1327, align 1
  %1329 = xor i64 %1326, %1308
  %1330 = xor i64 %1328, %1310
  %1331 = zext i64 %1329 to i128
  %1332 = zext i64 %1330 to i128
  %1333 = mul nuw i128 %1332, %1331
  %1334 = lshr i128 %1333, 64
  %1335 = xor i128 %1334, %1333
  %1336 = trunc i128 %1335 to i64
  %1337 = add i64 %1301, %1336
  %1338 = add i64 %1307, %1305
  %1339 = xor i64 %1337, %1338
  %1340 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %1341 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %1342 = getelementptr inbounds nuw i8, ptr %951, i64 64
  %1343 = load i64, ptr %1340, align 1
  %1344 = getelementptr i8, ptr %0, i64 328
  %1345 = load i64, ptr %1344, align 1
  %1346 = load i64, ptr %1341, align 1
  %1347 = getelementptr i8, ptr %0, i64 344
  %1348 = load i64, ptr %1347, align 1
  %1349 = load i64, ptr %1342, align 1
  %1350 = getelementptr i8, ptr %951, i64 72
  %1351 = load i64, ptr %1350, align 1
  %1352 = xor i64 %1349, %1343
  %1353 = xor i64 %1351, %1345
  %1354 = zext i64 %1352 to i128
  %1355 = zext i64 %1353 to i128
  %1356 = mul nuw i128 %1355, %1354
  %1357 = lshr i128 %1356, 64
  %1358 = xor i128 %1357, %1356
  %1359 = trunc i128 %1358 to i64
  %1360 = add i64 %1324, %1359
  %1361 = add i64 %1348, %1346
  %1362 = xor i64 %1360, %1361
  %1363 = getelementptr inbounds nuw i8, ptr %951, i64 80
  %1364 = load i64, ptr %1363, align 1
  %1365 = getelementptr i8, ptr %951, i64 88
  %1366 = load i64, ptr %1365, align 1
  %1367 = xor i64 %1364, %1346
  %1368 = xor i64 %1366, %1348
  %1369 = zext i64 %1367 to i128
  %1370 = zext i64 %1368 to i128
  %1371 = mul nuw i128 %1370, %1369
  %1372 = lshr i128 %1371, 64
  %1373 = xor i128 %1372, %1371
  %1374 = trunc i128 %1373 to i64
  %1375 = add i64 %1339, %1374
  %1376 = add i64 %1345, %1343
  %1377 = xor i64 %1375, %1376
  %1378 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %1379 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %1380 = getelementptr inbounds nuw i8, ptr %951, i64 96
  %1381 = load i64, ptr %1378, align 1
  %1382 = getelementptr i8, ptr %0, i64 360
  %1383 = load i64, ptr %1382, align 1
  %1384 = load i64, ptr %1379, align 1
  %1385 = getelementptr i8, ptr %0, i64 376
  %1386 = load i64, ptr %1385, align 1
  %1387 = load i64, ptr %1380, align 1
  %1388 = getelementptr i8, ptr %951, i64 104
  %1389 = load i64, ptr %1388, align 1
  %1390 = xor i64 %1387, %1381
  %1391 = xor i64 %1389, %1383
  %1392 = zext i64 %1390 to i128
  %1393 = zext i64 %1391 to i128
  %1394 = mul nuw i128 %1393, %1392
  %1395 = lshr i128 %1394, 64
  %1396 = xor i128 %1395, %1394
  %1397 = trunc i128 %1396 to i64
  %1398 = add i64 %1362, %1397
  %1399 = add i64 %1386, %1384
  %1400 = xor i64 %1398, %1399
  %1401 = getelementptr inbounds nuw i8, ptr %951, i64 112
  %1402 = load i64, ptr %1401, align 1
  %1403 = getelementptr i8, ptr %951, i64 120
  %1404 = load i64, ptr %1403, align 1
  %1405 = xor i64 %1402, %1384
  %1406 = xor i64 %1404, %1386
  %1407 = zext i64 %1405 to i128
  %1408 = zext i64 %1406 to i128
  %1409 = mul nuw i128 %1408, %1407
  %1410 = lshr i128 %1409, 64
  %1411 = xor i128 %1410, %1409
  %1412 = trunc i128 %1411 to i64
  %1413 = add i64 %1377, %1412
  %1414 = add i64 %1383, %1381
  %1415 = xor i64 %1413, %1414
  %1416 = lshr i32 %1265, 5
  %1417 = lshr i64 %1400, 37
  %1418 = xor i64 %1417, %1400
  %1419 = mul i64 %1418, 1609587929392839161
  %1420 = lshr i64 %1419, 32
  %1421 = xor i64 %1420, %1419
  %1422 = lshr i64 %1415, 37
  %1423 = xor i64 %1422, %1415
  %1424 = mul i64 %1423, 1609587929392839161
  %1425 = lshr i64 %1424, 32
  %1426 = xor i64 %1425, %1424
  %1427 = icmp eq i32 %1416, 4
  br i1 %1427, label %1477, label %1428

1428:                                             ; preds = %1264
  %1429 = getelementptr inbounds nuw i8, ptr %951, i64 3
  %1430 = zext nneg i32 %1416 to i64
  br label %1431

1431:                                             ; preds = %1431, %1428
  %1432 = phi i64 [ 4, %1428 ], [ %1475, %1431 ]
  %1433 = phi i64 [ %1426, %1428 ], [ %1474, %1431 ]
  %1434 = phi i64 [ %1421, %1428 ], [ %1459, %1431 ]
  %1435 = shl nsw i64 %1432, 5
  %1436 = getelementptr inbounds nuw i8, ptr %395, i64 %1435
  %1437 = getelementptr inbounds nuw i8, ptr %1436, i64 16
  %1438 = getelementptr i8, ptr %1429, i64 %1435
  %1439 = getelementptr i8, ptr %1438, i64 -128
  %1440 = load i64, ptr %1436, align 1
  %1441 = getelementptr i8, ptr %1436, i64 8
  %1442 = load i64, ptr %1441, align 1
  %1443 = load i64, ptr %1437, align 1
  %1444 = getelementptr i8, ptr %1436, i64 24
  %1445 = load i64, ptr %1444, align 1
  %1446 = load i64, ptr %1439, align 1
  %1447 = getelementptr i8, ptr %1438, i64 -120
  %1448 = load i64, ptr %1447, align 1
  %1449 = xor i64 %1446, %1440
  %1450 = xor i64 %1448, %1442
  %1451 = zext i64 %1449 to i128
  %1452 = zext i64 %1450 to i128
  %1453 = mul nuw i128 %1452, %1451
  %1454 = lshr i128 %1453, 64
  %1455 = xor i128 %1454, %1453
  %1456 = trunc i128 %1455 to i64
  %1457 = add i64 %1434, %1456
  %1458 = add i64 %1445, %1443
  %1459 = xor i64 %1457, %1458
  %1460 = getelementptr i8, ptr %1438, i64 -112
  %1461 = load i64, ptr %1460, align 1
  %1462 = getelementptr i8, ptr %1438, i64 -104
  %1463 = load i64, ptr %1462, align 1
  %1464 = xor i64 %1461, %1443
  %1465 = xor i64 %1463, %1445
  %1466 = zext i64 %1464 to i128
  %1467 = zext i64 %1465 to i128
  %1468 = mul nuw i128 %1467, %1466
  %1469 = lshr i128 %1468, 64
  %1470 = xor i128 %1469, %1468
  %1471 = trunc i128 %1470 to i64
  %1472 = add i64 %1433, %1471
  %1473 = add i64 %1442, %1440
  %1474 = xor i64 %1472, %1473
  %1475 = add nuw nsw i64 %1432, 1
  %1476 = icmp eq i64 %1475, %1430
  br i1 %1476, label %1477, label %1431

1477:                                             ; preds = %1431, %1264
  %1478 = phi i64 [ %1421, %1264 ], [ %1459, %1431 ]
  %1479 = phi i64 [ %1426, %1264 ], [ %1474, %1431 ]
  %1480 = getelementptr inbounds nuw i8, ptr %395, i64 %4
  %1481 = getelementptr inbounds i8, ptr %1480, i64 -16
  %1482 = getelementptr inbounds i8, ptr %1480, i64 -32
  %1483 = getelementptr inbounds nuw i8, ptr %951, i64 103
  %1484 = load i64, ptr %1481, align 1
  %1485 = getelementptr i8, ptr %1480, i64 -8
  %1486 = load i64, ptr %1485, align 1
  %1487 = load i64, ptr %1482, align 1
  %1488 = getelementptr i8, ptr %1480, i64 -24
  %1489 = load i64, ptr %1488, align 1
  %1490 = load i64, ptr %1483, align 1
  %1491 = getelementptr i8, ptr %951, i64 111
  %1492 = load i64, ptr %1491, align 1
  %1493 = xor i64 %1490, %1484
  %1494 = xor i64 %1492, %1486
  %1495 = zext i64 %1493 to i128
  %1496 = zext i64 %1494 to i128
  %1497 = mul nuw i128 %1496, %1495
  %1498 = lshr i128 %1497, 64
  %1499 = xor i128 %1498, %1497
  %1500 = trunc i128 %1499 to i64
  %1501 = add i64 %1478, %1500
  %1502 = add i64 %1489, %1487
  %1503 = xor i64 %1501, %1502
  %1504 = getelementptr inbounds nuw i8, ptr %951, i64 119
  %1505 = load i64, ptr %1504, align 1
  %1506 = getelementptr i8, ptr %951, i64 127
  %1507 = load i64, ptr %1506, align 1
  %1508 = xor i64 %1505, %1487
  %1509 = xor i64 %1507, %1489
  %1510 = zext i64 %1508 to i128
  %1511 = zext i64 %1509 to i128
  %1512 = mul nuw i128 %1511, %1510
  %1513 = lshr i128 %1512, 64
  %1514 = xor i128 %1513, %1512
  %1515 = trunc i128 %1514 to i64
  %1516 = add i64 %1479, %1515
  %1517 = add i64 %1486, %1484
  %1518 = xor i64 %1516, %1517
  %1519 = add i64 %1518, %1503
  %1520 = mul i64 %1503, -7046029288634856825
  %1521 = mul i64 %1518, -8796714831421723037
  %1522 = mul i64 %4, -4417276706812531889
  %1523 = add i64 %1520, %1522
  %1524 = add i64 %1523, %1521
  %1525 = lshr i64 %1519, 37
  %1526 = xor i64 %1525, %1519
  %1527 = mul i64 %1526, 1609587929392839161
  %1528 = lshr i64 %1527, 32
  %1529 = xor i64 %1528, %1527
  %1530 = lshr i64 %1524, 37
  %1531 = xor i64 %1530, %1524
  %1532 = mul i64 %1531, 1609587929392839161
  %1533 = lshr i64 %1532, 32
  %1534 = xor i64 %1533, %1532
  %1535 = sub i64 0, %1534
  br label %1536

1536:                                             ; preds = %1477, %1207, %1037, %1035, %996, %955, %893, %637, %480, %478, %440, %400, %260
  %1537 = phi i64 [ %330, %260 ], [ %685, %637 ], [ %942, %893 ], [ %432, %400 ], [ %472, %440 ], [ %511, %480 ], [ 0, %478 ], [ %1257, %1207 ], [ %1529, %1477 ], [ %988, %955 ], [ %1029, %996 ], [ %1069, %1037 ], [ 0, %1035 ]
  %1538 = phi i64 [ %390, %260 ], [ %691, %637 ], [ %948, %893 ], [ %437, %400 ], [ %477, %440 ], [ %516, %480 ], [ 0, %478 ], [ %1263, %1207 ], [ %1535, %1477 ], [ %993, %955 ], [ %1034, %996 ], [ %1074, %1037 ], [ 0, %1035 ]
  %1539 = insertvalue { i64, i64 } poison, i64 %1537, 0
  %1540 = insertvalue { i64, i64 } %1539, i64 %1538, 1
  ret { i64, i64 } %1540
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @XXH128_isEqual(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #16 {
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

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #17 {
  %10 = add i32 %8, 606290984
  %11 = add i32 %8, -2048144777
  %12 = add i32 %8, 1640531535
  %13 = trunc i64 %0 to i32
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %10, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %11, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = trunc i64 %1 to i32
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %8
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = lshr i64 %1, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %12, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %39, 20
  %46 = add i32 %45, %40
  %47 = add i32 %46, %41
  %48 = add i32 %47, %42
  %49 = add i32 %48, %44
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i32 %51, 15
  %53 = xor i32 %52, %51
  %54 = mul i32 %53, -2048144777
  %55 = lshr i32 %54, 13
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, -1028477379
  %58 = lshr i32 %57, 16
  %59 = xor i32 %58, %57
  ret i32 %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len40(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i64, ptr %6, align 1
  %8 = mul i64 %7, -4417276706812531889
  %9 = add i64 %5, %8
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load i64, ptr %12, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = add i64 %14, %1
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %4, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = load i64, ptr %0, align 1
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %3, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr i8, ptr %0, i64 32
  %30 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 1)
  %31 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 7)
  %32 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 12)
  %33 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 18)
  %34 = add i64 %32, %33
  %35 = add i64 %34, %31
  %36 = add i64 %35, %30
  %37 = mul i64 %27, -2381459717836149591
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = xor i64 %36, %39
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = mul i64 %22, -2381459717836149591
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 31)
  %45 = mul i64 %44, -7046029288634856825
  %46 = xor i64 %42, %45
  %47 = mul i64 %46, -7046029288634856825
  %48 = add i64 %47, -8796714831421723037
  %49 = mul i64 %16, -2381459717836149591
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  %52 = xor i64 %48, %51
  %53 = mul i64 %52, -7046029288634856825
  %54 = add i64 %53, -8796714831421723037
  %55 = mul i64 %10, -2381459717836149591
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = xor i64 %54, %57
  %59 = mul i64 %58, -7046029288634856825
  %60 = add i64 %59, -8796714831421722997
  %61 = load i64, ptr %29, align 1
  %62 = mul i64 %61, -4417276706812531889
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %60, %64
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 27)
  %67 = mul i64 %66, -7046029288634856825
  %68 = add i64 %67, -8796714831421723037
  %69 = lshr i64 %68, 33
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, -4417276706812531889
  %72 = lshr i64 %71, 29
  %73 = xor i64 %72, %71
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  ret i64 %76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len20(ptr noundef readonly %0) local_unnamed_addr #18 {
  %2 = load i64, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 1
  %5 = xor i64 %2, -4734510112055689544
  %6 = xor i64 %4, 2066345149520216444
  %7 = zext i64 %5 to i128
  %8 = zext i64 %6 to i128
  %9 = mul nuw i128 %8, %7
  %10 = lshr i128 %9, 64
  %11 = xor i128 %10, %9
  %12 = trunc i128 %11 to i64
  %13 = add i64 %12, 6653366816979276428
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i64 12
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %15, -2623469361688619810
  %19 = xor i64 %17, 2262974939099578482
  %20 = zext i64 %18 to i128
  %21 = zext i64 %19 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %13, %25
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587929392839161
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  ret i64 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len200(ptr noundef readonly %0) local_unnamed_addr #18 {
  %2 = load i64, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 1
  %5 = xor i64 %2, -4734510112055689544
  %6 = xor i64 %4, 2066345149520216444
  %7 = zext i64 %5 to i128
  %8 = zext i64 %6 to i128
  %9 = mul nuw i128 %8, %7
  %10 = lshr i128 %9, 64
  %11 = xor i128 %10, %9
  %12 = trunc i128 %11 to i64
  %13 = add i64 %12, -7253308125045442184
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i64 24
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %15, -2623469361688619810
  %19 = xor i64 %17, 2262974939099578482
  %20 = zext i64 %18 to i128
  %21 = zext i64 %19 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %13, %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr i8, ptr %0, i64 40
  %30 = load i64, ptr %29, align 1
  %31 = xor i64 %28, 8711581037947681227
  %32 = xor i64 %30, 2410270004345854594
  %33 = zext i64 %31 to i128
  %34 = zext i64 %32 to i128
  %35 = mul nuw i128 %34, %33
  %36 = lshr i128 %35, 64
  %37 = xor i128 %36, %35
  %38 = trunc i128 %37 to i64
  %39 = add i64 %26, %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %41 = load i64, ptr %40, align 1
  %42 = getelementptr i8, ptr %0, i64 56
  %43 = load i64, ptr %42, align 1
  %44 = xor i64 %41, -8204357891075471176
  %45 = xor i64 %43, 5487137525590930912
  %46 = zext i64 %44 to i128
  %47 = zext i64 %45 to i128
  %48 = mul nuw i128 %47, %46
  %49 = lshr i128 %48, 64
  %50 = xor i128 %49, %48
  %51 = trunc i128 %50 to i64
  %52 = add i64 %39, %51
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %54 = load i64, ptr %53, align 1
  %55 = getelementptr i8, ptr %0, i64 72
  %56 = load i64, ptr %55, align 1
  %57 = xor i64 %54, -3818837453329782724
  %58 = xor i64 %56, -6688317018830679928
  %59 = zext i64 %57 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %52, %64
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 88
  %69 = load i64, ptr %68, align 1
  %70 = xor i64 %67, 5690594596133299313
  %71 = xor i64 %69, -2833645246901970632
  %72 = zext i64 %70 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %73, %72
  %75 = lshr i128 %74, 64
  %76 = xor i128 %75, %74
  %77 = trunc i128 %76 to i64
  %78 = add i64 %65, %77
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %80 = load i64, ptr %79, align 1
  %81 = getelementptr i8, ptr %0, i64 104
  %82 = load i64, ptr %81, align 1
  %83 = xor i64 %80, 4554437623014685352
  %84 = xor i64 %82, 2111919702937427193
  %85 = zext i64 %83 to i128
  %86 = zext i64 %84 to i128
  %87 = mul nuw i128 %86, %85
  %88 = lshr i128 %87, 64
  %89 = xor i128 %88, %87
  %90 = trunc i128 %89 to i64
  %91 = add i64 %78, %90
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 120
  %95 = load i64, ptr %94, align 1
  %96 = xor i64 %93, 3556072174620004746
  %97 = xor i64 %95, 7238261902898274248
  %98 = zext i64 %96 to i128
  %99 = zext i64 %97 to i128
  %100 = mul nuw i128 %99, %98
  %101 = lshr i128 %100, 64
  %102 = xor i128 %101, %100
  %103 = trunc i128 %102 to i64
  %104 = add i64 %91, %103
  %105 = lshr i64 %104, 37
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %111 = load i64, ptr %110, align 1
  %112 = getelementptr i8, ptr %0, i64 136
  %113 = load i64, ptr %112, align 1
  %114 = xor i64 %111, -9150895811085458631
  %115 = xor i64 %113, 7914194659941938988
  %116 = zext i64 %114 to i128
  %117 = zext i64 %115 to i128
  %118 = mul nuw i128 %117, %116
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %109, %121
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr i8, ptr %0, i64 152
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, -6611157965513653271
  %128 = xor i64 %126, -1839215637059881052
  %129 = zext i64 %127 to i128
  %130 = zext i64 %128 to i128
  %131 = mul nuw i128 %130, %129
  %132 = lshr i128 %131, 64
  %133 = xor i128 %132, %131
  %134 = trunc i128 %133 to i64
  %135 = add i64 %122, %134
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %137 = load i64, ptr %136, align 1
  %138 = getelementptr i8, ptr %0, i64 168
  %139 = load i64, ptr %138, align 1
  %140 = xor i64 %137, -3433288310154277810
  %141 = xor i64 %139, 5046485836271438973
  %142 = zext i64 %140 to i128
  %143 = zext i64 %141 to i128
  %144 = mul nuw i128 %143, %142
  %145 = lshr i128 %144, 64
  %146 = xor i128 %145, %144
  %147 = trunc i128 %146 to i64
  %148 = add i64 %135, %147
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %150 = load i64, ptr %149, align 1
  %151 = getelementptr i8, ptr %0, i64 184
  %152 = load i64, ptr %151, align 1
  %153 = xor i64 %150, -8055285457383852172
  %154 = xor i64 %152, 5920048007935066598
  %155 = zext i64 %153 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %148, %160
  %162 = getelementptr i8, ptr %0, i64 192
  %163 = load i64, ptr %162, align 1
  %164 = xor i64 %152, 8320639771003045937
  %165 = xor i64 %163, -1453760514566526364
  %166 = zext i64 %164 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %161, %171
  %173 = lshr i64 %172, 37
  %174 = xor i64 %173, %172
  %175 = mul i64 %174, 1609587929392839161
  %176 = lshr i64 %175, 32
  %177 = xor i64 %176, %175
  ret i64 %177
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #21

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr, ptr, i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ucmp.i32.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

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
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!5 = !{i64 318274}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_len_17to128_64b: argument 0"}
!13 = distinct !{!13, !"XXH3_len_17to128_64b"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"XXH3_len_17to128_64b: argument 1"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"XXH3_len_129to240_64b: argument 0"}
!18 = distinct !{!18, !"XXH3_len_129to240_64b"}
!19 = !{!20}
!20 = distinct !{!20, !18, !"XXH3_len_129to240_64b: argument 1"}
!21 = distinct !{!21, !7}
!22 = !{!23}
!23 = distinct !{!23, !24, !"XXH3_hashLong_64b_defaultSecret: argument 0"}
!24 = distinct !{!24, !"XXH3_hashLong_64b_defaultSecret"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"XXH3_hashLong_internal: argument 0"}
!27 = distinct !{!27, !"XXH3_hashLong_internal"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"XXH3_hashLong_internal: argument 1"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"XXH3_hashLong_internal_loop: argument 1"}
!32 = distinct !{!32, !"XXH3_hashLong_internal_loop"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"XXH3_hashLong_internal_loop: argument 2"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"XXH3_accumulate: argument 1"}
!37 = distinct !{!37, !"XXH3_accumulate"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"XXH3_accumulate: argument 2"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"XXH3_accumulate_512: argument 1"}
!42 = distinct !{!42, !"XXH3_accumulate_512"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"XXH3_accumulate_512: argument 2"}
!45 = !{!41, !36, !31, !26, !23}
!46 = !{!47, !44, !48, !39, !49, !34, !29}
!47 = distinct !{!47, !42, !"XXH3_accumulate_512: argument 0"}
!48 = distinct !{!48, !37, !"XXH3_accumulate: argument 0"}
!49 = distinct !{!49, !32, !"XXH3_hashLong_internal_loop: argument 0"}
!50 = !{!44, !39, !34, !29}
!51 = !{!47, !41, !48, !36, !49, !31, !26, !23}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_accumulate: argument 1"}
!56 = distinct !{!56, !"XXH3_accumulate"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"XXH3_accumulate: argument 2"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"XXH3_accumulate_512: argument 1"}
!61 = distinct !{!61, !"XXH3_accumulate_512"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"XXH3_accumulate_512: argument 2"}
!64 = !{!60, !55, !31, !26, !23}
!65 = !{!66, !63, !67, !58, !49, !34, !29}
!66 = distinct !{!66, !61, !"XXH3_accumulate_512: argument 0"}
!67 = distinct !{!67, !56, !"XXH3_accumulate: argument 0"}
!68 = !{!63, !58, !34, !29}
!69 = !{!66, !60, !67, !55, !49, !31, !26, !23}
!70 = !{!71, !31, !26, !23}
!71 = distinct !{!71, !72, !"XXH3_accumulate_512: argument 1"}
!72 = distinct !{!72, !"XXH3_accumulate_512"}
!73 = !{!74, !75, !49, !34, !29}
!74 = distinct !{!74, !72, !"XXH3_accumulate_512: argument 0"}
!75 = distinct !{!75, !72, !"XXH3_accumulate_512: argument 2"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"XXH3_len_17to128_64b: argument 0"}
!78 = distinct !{!78, !"XXH3_len_17to128_64b"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"XXH3_len_17to128_64b: argument 1"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"XXH3_len_129to240_64b: argument 0"}
!83 = distinct !{!83, !"XXH3_len_129to240_64b"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"XXH3_len_129to240_64b: argument 1"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_hashLong_64b_withSecret: argument 0"}
!88 = distinct !{!88, !"XXH3_hashLong_64b_withSecret"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"XXH3_hashLong_64b_withSecret: argument 1"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"XXH3_hashLong_internal: argument 0"}
!93 = distinct !{!93, !"XXH3_hashLong_internal"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"XXH3_hashLong_internal: argument 1"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"XXH3_hashLong_internal_loop: argument 1"}
!98 = distinct !{!98, !"XXH3_hashLong_internal_loop"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"XXH3_hashLong_internal_loop: argument 2"}
!101 = !{!102, !100, !95, !90}
!102 = distinct !{!102, !103, !"XXH3_scrambleAcc: argument 1"}
!103 = distinct !{!103, !"XXH3_scrambleAcc"}
!104 = !{!105, !106, !97, !92, !87}
!105 = distinct !{!105, !103, !"XXH3_scrambleAcc: argument 0"}
!106 = distinct !{!106, !98, !"XXH3_hashLong_internal_loop: argument 0"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"XXH3_accumulate: argument 1"}
!109 = distinct !{!109, !"XXH3_accumulate"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"XXH3_accumulate: argument 2"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"XXH3_accumulate_512: argument 1"}
!114 = distinct !{!114, !"XXH3_accumulate_512"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"XXH3_accumulate_512: argument 2"}
!117 = !{!113, !108, !97, !92, !87}
!118 = !{!119, !116, !120, !111, !106, !100, !95, !90}
!119 = distinct !{!119, !114, !"XXH3_accumulate_512: argument 0"}
!120 = distinct !{!120, !109, !"XXH3_accumulate: argument 0"}
!121 = !{!116, !111, !100, !95, !90}
!122 = !{!119, !113, !120, !108, !106, !97, !92, !87}
!123 = !{!124}
!124 = distinct !{!124, !125, !"XXH3_accumulate: argument 1"}
!125 = distinct !{!125, !"XXH3_accumulate"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"XXH3_accumulate: argument 2"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"XXH3_accumulate_512: argument 1"}
!130 = distinct !{!130, !"XXH3_accumulate_512"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"XXH3_accumulate_512: argument 2"}
!133 = !{!129, !124, !97, !92, !87}
!134 = !{!135, !132, !136, !127, !106, !100, !95, !90}
!135 = distinct !{!135, !130, !"XXH3_accumulate_512: argument 0"}
!136 = distinct !{!136, !125, !"XXH3_accumulate: argument 0"}
!137 = !{!132, !127, !100, !95, !90}
!138 = !{!135, !129, !136, !124, !106, !97, !92, !87}
!139 = !{!140}
!140 = distinct !{!140, !141, !"XXH3_accumulate_512: argument 1"}
!141 = distinct !{!141, !"XXH3_accumulate_512"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"XXH3_accumulate_512: argument 2"}
!144 = !{!140, !97, !92, !87}
!145 = !{!146, !143, !106, !100, !95, !90}
!146 = distinct !{!146, !141, !"XXH3_accumulate_512: argument 0"}
!147 = !{!143, !100, !95, !90}
!148 = !{!146, !140, !106, !97, !92, !87}
!149 = !{!150, !95, !90}
!150 = distinct !{!150, !151, !"XXH3_mergeAccs: argument 1"}
!151 = distinct !{!151, !"XXH3_mergeAccs"}
!152 = !{!153, !92, !87}
!153 = distinct !{!153, !151, !"XXH3_mergeAccs: argument 0"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"XXH3_len_17to128_64b: argument 0"}
!156 = distinct !{!156, !"XXH3_len_17to128_64b"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"XXH3_len_17to128_64b: argument 1"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"XXH3_len_129to240_64b: argument 0"}
!161 = distinct !{!161, !"XXH3_len_129to240_64b"}
!162 = !{!163}
!163 = distinct !{!163, !161, !"XXH3_len_129to240_64b: argument 1"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"XXH3_hashLong_64b_defaultSecret: argument 0"}
!166 = distinct !{!166, !"XXH3_hashLong_64b_defaultSecret"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"XXH3_hashLong_internal: argument 0"}
!169 = distinct !{!169, !"XXH3_hashLong_internal"}
!170 = !{!171}
!171 = distinct !{!171, !169, !"XXH3_hashLong_internal: argument 1"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"XXH3_hashLong_internal_loop: argument 1"}
!174 = distinct !{!174, !"XXH3_hashLong_internal_loop"}
!175 = !{!176}
!176 = distinct !{!176, !174, !"XXH3_hashLong_internal_loop: argument 2"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"XXH3_accumulate: argument 1"}
!179 = distinct !{!179, !"XXH3_accumulate"}
!180 = !{!181}
!181 = distinct !{!181, !179, !"XXH3_accumulate: argument 2"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"XXH3_accumulate_512: argument 1"}
!184 = distinct !{!184, !"XXH3_accumulate_512"}
!185 = !{!186}
!186 = distinct !{!186, !184, !"XXH3_accumulate_512: argument 2"}
!187 = !{!183, !178, !173, !168, !165}
!188 = !{!189, !186, !190, !181, !191, !176, !171}
!189 = distinct !{!189, !184, !"XXH3_accumulate_512: argument 0"}
!190 = distinct !{!190, !179, !"XXH3_accumulate: argument 0"}
!191 = distinct !{!191, !174, !"XXH3_hashLong_internal_loop: argument 0"}
!192 = !{!186, !181, !176, !171}
!193 = !{!189, !183, !190, !178, !191, !173, !168, !165}
!194 = !{!195}
!195 = distinct !{!195, !196, !"XXH3_accumulate: argument 1"}
!196 = distinct !{!196, !"XXH3_accumulate"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"XXH3_accumulate: argument 2"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"XXH3_accumulate_512: argument 1"}
!201 = distinct !{!201, !"XXH3_accumulate_512"}
!202 = !{!203}
!203 = distinct !{!203, !201, !"XXH3_accumulate_512: argument 2"}
!204 = !{!200, !195, !173, !168, !165}
!205 = !{!206, !203, !207, !198, !191, !176, !171}
!206 = distinct !{!206, !201, !"XXH3_accumulate_512: argument 0"}
!207 = distinct !{!207, !196, !"XXH3_accumulate: argument 0"}
!208 = !{!203, !198, !176, !171}
!209 = !{!206, !200, !207, !195, !191, !173, !168, !165}
!210 = !{!211, !173, !168, !165}
!211 = distinct !{!211, !212, !"XXH3_accumulate_512: argument 1"}
!212 = distinct !{!212, !"XXH3_accumulate_512"}
!213 = !{!214, !215, !191, !176, !171}
!214 = distinct !{!214, !212, !"XXH3_accumulate_512: argument 0"}
!215 = distinct !{!215, !212, !"XXH3_accumulate_512: argument 2"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"XXH3_hashLong_internal: argument 0"}
!218 = distinct !{!218, !"XXH3_hashLong_internal"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"XXH3_hashLong_internal: argument 1"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"XXH3_hashLong_internal_loop: argument 1"}
!223 = distinct !{!223, !"XXH3_hashLong_internal_loop"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"XXH3_hashLong_internal_loop: argument 2"}
!226 = !{!227, !225, !220}
!227 = distinct !{!227, !228, !"XXH3_scrambleAcc: argument 1"}
!228 = distinct !{!228, !"XXH3_scrambleAcc"}
!229 = !{!230, !231, !222, !217}
!230 = distinct !{!230, !228, !"XXH3_scrambleAcc: argument 0"}
!231 = distinct !{!231, !223, !"XXH3_hashLong_internal_loop: argument 0"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"XXH3_accumulate: argument 1"}
!234 = distinct !{!234, !"XXH3_accumulate"}
!235 = !{!236}
!236 = distinct !{!236, !234, !"XXH3_accumulate: argument 2"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"XXH3_accumulate_512: argument 1"}
!239 = distinct !{!239, !"XXH3_accumulate_512"}
!240 = !{!241}
!241 = distinct !{!241, !239, !"XXH3_accumulate_512: argument 2"}
!242 = !{!238, !233, !222, !217}
!243 = !{!244, !241, !245, !236, !231, !225, !220}
!244 = distinct !{!244, !239, !"XXH3_accumulate_512: argument 0"}
!245 = distinct !{!245, !234, !"XXH3_accumulate: argument 0"}
!246 = !{!241, !236, !225, !220}
!247 = !{!244, !238, !245, !233, !231, !222, !217}
!248 = !{!249}
!249 = distinct !{!249, !250, !"XXH3_accumulate: argument 1"}
!250 = distinct !{!250, !"XXH3_accumulate"}
!251 = !{!252}
!252 = distinct !{!252, !250, !"XXH3_accumulate: argument 2"}
!253 = !{!254}
!254 = distinct !{!254, !255, !"XXH3_accumulate_512: argument 1"}
!255 = distinct !{!255, !"XXH3_accumulate_512"}
!256 = !{!257}
!257 = distinct !{!257, !255, !"XXH3_accumulate_512: argument 2"}
!258 = !{!254, !249, !222, !217}
!259 = !{!260, !257, !261, !252, !231, !225, !220}
!260 = distinct !{!260, !255, !"XXH3_accumulate_512: argument 0"}
!261 = distinct !{!261, !250, !"XXH3_accumulate: argument 0"}
!262 = !{!257, !252, !225, !220}
!263 = !{!260, !254, !261, !249, !231, !222, !217}
!264 = !{!265}
!265 = distinct !{!265, !266, !"XXH3_accumulate_512: argument 1"}
!266 = distinct !{!266, !"XXH3_accumulate_512"}
!267 = !{!268}
!268 = distinct !{!268, !266, !"XXH3_accumulate_512: argument 2"}
!269 = !{!265, !222, !217}
!270 = !{!271, !268, !231, !225, !220}
!271 = distinct !{!271, !266, !"XXH3_accumulate_512: argument 0"}
!272 = !{!268, !225, !220}
!273 = !{!271, !265, !231, !222, !217}
!274 = !{!275, !220}
!275 = distinct !{!275, !276, !"XXH3_mergeAccs: argument 1"}
!276 = distinct !{!276, !"XXH3_mergeAccs"}
!277 = !{!278, !217}
!278 = distinct !{!278, !276, !"XXH3_mergeAccs: argument 0"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"XXH3_accumulate: argument 0"}
!281 = distinct !{!281, !"XXH3_accumulate"}
!282 = !{!283}
!283 = distinct !{!283, !281, !"XXH3_accumulate: argument 1"}
!284 = !{!285}
!285 = distinct !{!285, !281, !"XXH3_accumulate: argument 2"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"XXH3_scrambleAcc: argument 0"}
!288 = distinct !{!288, !"XXH3_scrambleAcc"}
!289 = !{!290}
!290 = distinct !{!290, !288, !"XXH3_scrambleAcc: argument 1"}
!291 = !{}
!292 = !{!293}
!293 = distinct !{!293, !294, !"XXH3_accumulate_512: argument 0"}
!294 = distinct !{!294, !"XXH3_accumulate_512"}
!295 = !{!296}
!296 = distinct !{!296, !294, !"XXH3_accumulate_512: argument 1"}
!297 = !{!298}
!298 = distinct !{!298, !294, !"XXH3_accumulate_512: argument 2"}
!299 = !{!296, !283}
!300 = !{!293, !298, !280, !285}
!301 = !{!298, !285}
!302 = !{!293, !296, !280, !283}
!303 = !{!293, !280}
!304 = !{!296, !298, !283, !285}
!305 = !{!306}
!306 = distinct !{!306, !307, !"XXH3_accumulate: argument 0"}
!307 = distinct !{!307, !"XXH3_accumulate"}
!308 = !{!309}
!309 = distinct !{!309, !307, !"XXH3_accumulate: argument 1"}
!310 = !{!311}
!311 = distinct !{!311, !307, !"XXH3_accumulate: argument 2"}
!312 = !{!313}
!313 = distinct !{!313, !314, !"XXH3_accumulate_512: argument 0"}
!314 = distinct !{!314, !"XXH3_accumulate_512"}
!315 = !{!316}
!316 = distinct !{!316, !314, !"XXH3_accumulate_512: argument 1"}
!317 = !{!318}
!318 = distinct !{!318, !314, !"XXH3_accumulate_512: argument 2"}
!319 = !{!316, !309}
!320 = !{!313, !318, !306, !311}
!321 = !{!318, !311}
!322 = !{!313, !316, !306, !309}
!323 = !{!313, !306}
!324 = !{!316, !318, !309, !311}
!325 = !{!326}
!326 = distinct !{!326, !327, !"XXH3_accumulate: argument 0"}
!327 = distinct !{!327, !"XXH3_accumulate"}
!328 = !{!329}
!329 = distinct !{!329, !327, !"XXH3_accumulate: argument 1"}
!330 = !{!331}
!331 = distinct !{!331, !327, !"XXH3_accumulate: argument 2"}
!332 = !{!333, !326}
!333 = distinct !{!333, !334, !"XXH3_accumulate_512: argument 0"}
!334 = distinct !{!334, !"XXH3_accumulate_512"}
!335 = !{!336, !337, !329, !331}
!336 = distinct !{!336, !334, !"XXH3_accumulate_512: argument 1"}
!337 = distinct !{!337, !334, !"XXH3_accumulate_512: argument 2"}
!338 = !{!333}
!339 = !{!336}
!340 = !{!337}
!341 = !{!336, !329}
!342 = !{!333, !337, !326, !331}
!343 = !{!337, !331}
!344 = !{!333, !336, !326, !329}
!345 = !{!346}
!346 = distinct !{!346, !334, !"XXH3_accumulate_512: argument 1:It1"}
!347 = !{!348}
!348 = distinct !{!348, !334, !"XXH3_accumulate_512: argument 2:It1"}
!349 = !{!346, !329}
!350 = !{!351, !348, !326, !331}
!351 = distinct !{!351, !334, !"XXH3_accumulate_512: argument 0:It1"}
!352 = !{!348, !331}
!353 = !{!351, !346, !326, !329}
!354 = !{!355}
!355 = distinct !{!355, !334, !"XXH3_accumulate_512: argument 1:It2"}
!356 = !{!357}
!357 = distinct !{!357, !334, !"XXH3_accumulate_512: argument 2:It2"}
!358 = !{!355, !329}
!359 = !{!360, !357, !326, !331}
!360 = distinct !{!360, !334, !"XXH3_accumulate_512: argument 0:It2"}
!361 = !{!357, !331}
!362 = !{!360, !355, !326, !329}
!363 = !{!364}
!364 = distinct !{!364, !334, !"XXH3_accumulate_512: argument 1:It3"}
!365 = !{!366}
!366 = distinct !{!366, !334, !"XXH3_accumulate_512: argument 2:It3"}
!367 = !{!364, !329}
!368 = !{!369, !366, !326, !331}
!369 = distinct !{!369, !334, !"XXH3_accumulate_512: argument 0:It3"}
!370 = !{!366, !331}
!371 = !{!369, !364, !326, !329}
!372 = !{!373}
!373 = distinct !{!373, !374, !"XXH3_accumulate: argument 0"}
!374 = distinct !{!374, !"XXH3_accumulate"}
!375 = !{!376}
!376 = distinct !{!376, !374, !"XXH3_accumulate: argument 1"}
!377 = !{!378}
!378 = distinct !{!378, !374, !"XXH3_accumulate: argument 2"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"XXH3_scrambleAcc: argument 0"}
!381 = distinct !{!381, !"XXH3_scrambleAcc"}
!382 = !{!383}
!383 = distinct !{!383, !381, !"XXH3_scrambleAcc: argument 1"}
!384 = !{!385}
!385 = distinct !{!385, !386, !"XXH3_accumulate_512: argument 0"}
!386 = distinct !{!386, !"XXH3_accumulate_512"}
!387 = !{!388}
!388 = distinct !{!388, !386, !"XXH3_accumulate_512: argument 1"}
!389 = !{!390}
!390 = distinct !{!390, !386, !"XXH3_accumulate_512: argument 2"}
!391 = !{!388, !376}
!392 = !{!385, !390, !373, !378}
!393 = !{!390, !378}
!394 = !{!385, !388, !373, !376}
!395 = !{!385, !373}
!396 = !{!388, !390, !376, !378}
!397 = !{!398}
!398 = distinct !{!398, !399, !"XXH3_accumulate: argument 0"}
!399 = distinct !{!399, !"XXH3_accumulate"}
!400 = !{!401}
!401 = distinct !{!401, !399, !"XXH3_accumulate: argument 1"}
!402 = !{!403}
!403 = distinct !{!403, !399, !"XXH3_accumulate: argument 2"}
!404 = !{!405}
!405 = distinct !{!405, !406, !"XXH3_accumulate_512: argument 0"}
!406 = distinct !{!406, !"XXH3_accumulate_512"}
!407 = !{!408}
!408 = distinct !{!408, !406, !"XXH3_accumulate_512: argument 1"}
!409 = !{!410}
!410 = distinct !{!410, !406, !"XXH3_accumulate_512: argument 2"}
!411 = !{!408, !401}
!412 = !{!405, !410, !398, !403}
!413 = !{!410, !403}
!414 = !{!405, !408, !398, !401}
!415 = !{!405, !398}
!416 = !{!408, !410, !401, !403}
!417 = !{!418}
!418 = distinct !{!418, !419, !"XXH3_accumulate: argument 0"}
!419 = distinct !{!419, !"XXH3_accumulate"}
!420 = !{!421}
!421 = distinct !{!421, !419, !"XXH3_accumulate: argument 1"}
!422 = !{!423}
!423 = distinct !{!423, !419, !"XXH3_accumulate: argument 2"}
!424 = !{!425, !418}
!425 = distinct !{!425, !426, !"XXH3_accumulate_512: argument 0"}
!426 = distinct !{!426, !"XXH3_accumulate_512"}
!427 = !{!428, !429, !421, !423}
!428 = distinct !{!428, !426, !"XXH3_accumulate_512: argument 1"}
!429 = distinct !{!429, !426, !"XXH3_accumulate_512: argument 2"}
!430 = !{!425}
!431 = !{!428}
!432 = !{!429}
!433 = !{!428, !421}
!434 = !{!425, !429, !418, !423}
!435 = !{!429, !423}
!436 = !{!425, !428, !418, !421}
!437 = !{!438}
!438 = distinct !{!438, !426, !"XXH3_accumulate_512: argument 1:It1"}
!439 = !{!440}
!440 = distinct !{!440, !426, !"XXH3_accumulate_512: argument 2:It1"}
!441 = !{!438, !421}
!442 = !{!443, !440, !418, !423}
!443 = distinct !{!443, !426, !"XXH3_accumulate_512: argument 0:It1"}
!444 = !{!440, !423}
!445 = !{!443, !438, !418, !421}
!446 = !{!447}
!447 = distinct !{!447, !426, !"XXH3_accumulate_512: argument 1:It2"}
!448 = !{!449}
!449 = distinct !{!449, !426, !"XXH3_accumulate_512: argument 2:It2"}
!450 = !{!447, !421}
!451 = !{!452, !449, !418, !423}
!452 = distinct !{!452, !426, !"XXH3_accumulate_512: argument 0:It2"}
!453 = !{!449, !423}
!454 = !{!452, !447, !418, !421}
!455 = !{!456}
!456 = distinct !{!456, !426, !"XXH3_accumulate_512: argument 1:It3"}
!457 = !{!458}
!458 = distinct !{!458, !426, !"XXH3_accumulate_512: argument 2:It3"}
!459 = !{!456, !421}
!460 = !{!461, !458, !418, !423}
!461 = distinct !{!461, !426, !"XXH3_accumulate_512: argument 0:It3"}
!462 = !{!458, !423}
!463 = !{!461, !456, !418, !421}
!464 = distinct !{!464, !7}
!465 = !{!466}
!466 = distinct !{!466, !467, !"XXH3_accumulate: argument 1"}
!467 = distinct !{!467, !"XXH3_accumulate"}
!468 = !{!469}
!469 = distinct !{!469, !467, !"XXH3_accumulate: argument 2"}
!470 = !{!471}
!471 = distinct !{!471, !472, !"XXH3_accumulate_512: argument 1"}
!472 = distinct !{!472, !"XXH3_accumulate_512"}
!473 = !{!474}
!474 = distinct !{!474, !472, !"XXH3_accumulate_512: argument 2"}
!475 = !{!471, !466}
!476 = !{!477, !474, !478, !469}
!477 = distinct !{!477, !472, !"XXH3_accumulate_512: argument 0"}
!478 = distinct !{!478, !467, !"XXH3_accumulate: argument 0"}
!479 = !{!474, !469}
!480 = !{!477, !471, !478, !466}
!481 = !{!482}
!482 = distinct !{!482, !483, !"XXH3_scrambleAcc: argument 1"}
!483 = distinct !{!483, !"XXH3_scrambleAcc"}
!484 = !{!485}
!485 = distinct !{!485, !483, !"XXH3_scrambleAcc: argument 0"}
!486 = !{!487}
!487 = distinct !{!487, !488, !"XXH3_accumulate: argument 1"}
!488 = distinct !{!488, !"XXH3_accumulate"}
!489 = !{!490}
!490 = distinct !{!490, !488, !"XXH3_accumulate: argument 2"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"XXH3_accumulate_512: argument 1"}
!493 = distinct !{!493, !"XXH3_accumulate_512"}
!494 = !{!495}
!495 = distinct !{!495, !493, !"XXH3_accumulate_512: argument 2"}
!496 = !{!492, !487}
!497 = !{!498, !495, !499, !490}
!498 = distinct !{!498, !493, !"XXH3_accumulate_512: argument 0"}
!499 = distinct !{!499, !488, !"XXH3_accumulate: argument 0"}
!500 = !{!495, !490}
!501 = !{!498, !492, !499, !487}
!502 = !{!503}
!503 = distinct !{!503, !504, !"XXH3_accumulate: argument 1"}
!504 = distinct !{!504, !"XXH3_accumulate"}
!505 = !{!506}
!506 = distinct !{!506, !504, !"XXH3_accumulate: argument 2"}
!507 = !{!508}
!508 = distinct !{!508, !509, !"XXH3_accumulate_512: argument 1"}
!509 = distinct !{!509, !"XXH3_accumulate_512"}
!510 = !{!511}
!511 = distinct !{!511, !509, !"XXH3_accumulate_512: argument 2"}
!512 = !{!508, !503}
!513 = !{!514, !511, !515, !506}
!514 = distinct !{!514, !509, !"XXH3_accumulate_512: argument 0"}
!515 = distinct !{!515, !504, !"XXH3_accumulate: argument 0"}
!516 = !{!511, !506}
!517 = !{!514, !508, !515, !503}
!518 = !{!519}
!519 = distinct !{!519, !520, !"XXH3_accumulate_512: argument 1"}
!520 = distinct !{!520, !"XXH3_accumulate_512"}
!521 = !{!522}
!522 = distinct !{!522, !520, !"XXH3_accumulate_512: argument 2"}
!523 = !{!524, !522}
!524 = distinct !{!524, !520, !"XXH3_accumulate_512: argument 0"}
!525 = !{!524, !519}
!526 = !{!527}
!527 = distinct !{!527, !528, !"XXH3_accumulate_512: argument 1"}
!528 = distinct !{!528, !"XXH3_accumulate_512"}
!529 = !{!530}
!530 = distinct !{!530, !528, !"XXH3_accumulate_512: argument 2"}
!531 = !{!532, !530}
!532 = distinct !{!532, !528, !"XXH3_accumulate_512: argument 0"}
!533 = !{!532, !527}
!534 = !{!535}
!535 = distinct !{!535, !536, !"XXH3_mergeAccs: argument 1"}
!536 = distinct !{!536, !"XXH3_mergeAccs"}
!537 = !{!538}
!538 = distinct !{!538, !536, !"XXH3_mergeAccs: argument 0"}
!539 = !{!540}
!540 = distinct !{!540, !541, !"XXH3_len_17to128_64b: argument 0"}
!541 = distinct !{!541, !"XXH3_len_17to128_64b"}
!542 = !{!543}
!543 = distinct !{!543, !541, !"XXH3_len_17to128_64b: argument 1"}
!544 = !{!545}
!545 = distinct !{!545, !546, !"XXH3_len_129to240_64b: argument 0"}
!546 = distinct !{!546, !"XXH3_len_129to240_64b"}
!547 = !{!548}
!548 = distinct !{!548, !546, !"XXH3_len_129to240_64b: argument 1"}
!549 = !{!550}
!550 = distinct !{!550, !551, !"XXH3_len_17to128_64b: argument 0"}
!551 = distinct !{!551, !"XXH3_len_17to128_64b"}
!552 = !{!553}
!553 = distinct !{!553, !551, !"XXH3_len_17to128_64b: argument 1"}
!554 = !{!555}
!555 = distinct !{!555, !556, !"XXH3_len_129to240_64b: argument 0"}
!556 = distinct !{!556, !"XXH3_len_129to240_64b"}
!557 = !{!558}
!558 = distinct !{!558, !556, !"XXH3_len_129to240_64b: argument 1"}
!559 = !{!560}
!560 = distinct !{!560, !561, !"XXH3_len_17to128_128b: argument 0"}
!561 = distinct !{!561, !"XXH3_len_17to128_128b"}
!562 = !{!563}
!563 = distinct !{!563, !561, !"XXH3_len_17to128_128b: argument 1"}
!564 = !{!565}
!565 = distinct !{!565, !566, !"XXH3_len_129to240_128b: argument 0"}
!566 = distinct !{!566, !"XXH3_len_129to240_128b"}
!567 = !{!568}
!568 = distinct !{!568, !566, !"XXH3_len_129to240_128b: argument 1"}
!569 = distinct !{!569, !7}
!570 = !{!571}
!571 = distinct !{!571, !572, !"XXH3_hashLong_128b_internal: argument 0"}
!572 = distinct !{!572, !"XXH3_hashLong_128b_internal"}
!573 = !{!574}
!574 = distinct !{!574, !572, !"XXH3_hashLong_128b_internal: argument 1"}
!575 = !{!576}
!576 = distinct !{!576, !577, !"XXH3_hashLong_internal_loop: argument 1"}
!577 = distinct !{!577, !"XXH3_hashLong_internal_loop"}
!578 = !{!579}
!579 = distinct !{!579, !577, !"XXH3_hashLong_internal_loop: argument 2"}
!580 = !{!581}
!581 = distinct !{!581, !582, !"XXH3_accumulate: argument 1"}
!582 = distinct !{!582, !"XXH3_accumulate"}
!583 = !{!584}
!584 = distinct !{!584, !582, !"XXH3_accumulate: argument 2"}
!585 = !{!586}
!586 = distinct !{!586, !587, !"XXH3_accumulate_512: argument 1"}
!587 = distinct !{!587, !"XXH3_accumulate_512"}
!588 = !{!589}
!589 = distinct !{!589, !587, !"XXH3_accumulate_512: argument 2"}
!590 = !{!586, !581, !576, !571}
!591 = !{!592, !589, !593, !584, !594, !579, !574}
!592 = distinct !{!592, !587, !"XXH3_accumulate_512: argument 0"}
!593 = distinct !{!593, !582, !"XXH3_accumulate: argument 0"}
!594 = distinct !{!594, !577, !"XXH3_hashLong_internal_loop: argument 0"}
!595 = !{!589, !584, !579, !574}
!596 = !{!592, !586, !593, !581, !594, !576, !571}
!597 = !{!598}
!598 = distinct !{!598, !599, !"XXH3_accumulate: argument 1"}
!599 = distinct !{!599, !"XXH3_accumulate"}
!600 = !{!601}
!601 = distinct !{!601, !599, !"XXH3_accumulate: argument 2"}
!602 = !{!603}
!603 = distinct !{!603, !604, !"XXH3_accumulate_512: argument 1"}
!604 = distinct !{!604, !"XXH3_accumulate_512"}
!605 = !{!606}
!606 = distinct !{!606, !604, !"XXH3_accumulate_512: argument 2"}
!607 = !{!603, !598, !576, !571}
!608 = !{!609, !606, !610, !601, !594, !579, !574}
!609 = distinct !{!609, !604, !"XXH3_accumulate_512: argument 0"}
!610 = distinct !{!610, !599, !"XXH3_accumulate: argument 0"}
!611 = !{!606, !601, !579, !574}
!612 = !{!609, !603, !610, !598, !594, !576, !571}
!613 = !{!614, !576, !571}
!614 = distinct !{!614, !615, !"XXH3_accumulate_512: argument 1"}
!615 = distinct !{!615, !"XXH3_accumulate_512"}
!616 = !{!617, !618, !594, !579, !574}
!617 = distinct !{!617, !615, !"XXH3_accumulate_512: argument 0"}
!618 = distinct !{!618, !615, !"XXH3_accumulate_512: argument 2"}
!619 = !{!620}
!620 = distinct !{!620, !621, !"XXH3_len_17to128_128b: argument 0"}
!621 = distinct !{!621, !"XXH3_len_17to128_128b"}
!622 = !{!623}
!623 = distinct !{!623, !621, !"XXH3_len_17to128_128b: argument 1"}
!624 = !{!625}
!625 = distinct !{!625, !626, !"XXH3_len_129to240_128b: argument 0"}
!626 = distinct !{!626, !"XXH3_len_129to240_128b"}
!627 = !{!628}
!628 = distinct !{!628, !626, !"XXH3_len_129to240_128b: argument 1"}
!629 = !{!630}
!630 = distinct !{!630, !631, !"XXH3_hashLong_128b_internal: argument 0"}
!631 = distinct !{!631, !"XXH3_hashLong_128b_internal"}
!632 = !{!633}
!633 = distinct !{!633, !631, !"XXH3_hashLong_128b_internal: argument 1"}
!634 = !{!635}
!635 = distinct !{!635, !636, !"XXH3_hashLong_internal_loop: argument 1"}
!636 = distinct !{!636, !"XXH3_hashLong_internal_loop"}
!637 = !{!638}
!638 = distinct !{!638, !636, !"XXH3_hashLong_internal_loop: argument 2"}
!639 = !{!640, !638, !633}
!640 = distinct !{!640, !641, !"XXH3_scrambleAcc: argument 1"}
!641 = distinct !{!641, !"XXH3_scrambleAcc"}
!642 = !{!643, !644, !635, !630}
!643 = distinct !{!643, !641, !"XXH3_scrambleAcc: argument 0"}
!644 = distinct !{!644, !636, !"XXH3_hashLong_internal_loop: argument 0"}
!645 = !{!646}
!646 = distinct !{!646, !647, !"XXH3_accumulate: argument 1"}
!647 = distinct !{!647, !"XXH3_accumulate"}
!648 = !{!649}
!649 = distinct !{!649, !647, !"XXH3_accumulate: argument 2"}
!650 = !{!651}
!651 = distinct !{!651, !652, !"XXH3_accumulate_512: argument 1"}
!652 = distinct !{!652, !"XXH3_accumulate_512"}
!653 = !{!654}
!654 = distinct !{!654, !652, !"XXH3_accumulate_512: argument 2"}
!655 = !{!651, !646, !635, !630}
!656 = !{!657, !654, !658, !649, !644, !638, !633}
!657 = distinct !{!657, !652, !"XXH3_accumulate_512: argument 0"}
!658 = distinct !{!658, !647, !"XXH3_accumulate: argument 0"}
!659 = !{!654, !649, !638, !633}
!660 = !{!657, !651, !658, !646, !644, !635, !630}
!661 = !{!662}
!662 = distinct !{!662, !663, !"XXH3_accumulate: argument 1"}
!663 = distinct !{!663, !"XXH3_accumulate"}
!664 = !{!665}
!665 = distinct !{!665, !663, !"XXH3_accumulate: argument 2"}
!666 = !{!667}
!667 = distinct !{!667, !668, !"XXH3_accumulate_512: argument 1"}
!668 = distinct !{!668, !"XXH3_accumulate_512"}
!669 = !{!670}
!670 = distinct !{!670, !668, !"XXH3_accumulate_512: argument 2"}
!671 = !{!667, !662, !635, !630}
!672 = !{!673, !670, !674, !665, !644, !638, !633}
!673 = distinct !{!673, !668, !"XXH3_accumulate_512: argument 0"}
!674 = distinct !{!674, !663, !"XXH3_accumulate: argument 0"}
!675 = !{!670, !665, !638, !633}
!676 = !{!673, !667, !674, !662, !644, !635, !630}
!677 = !{!678, !633}
!678 = distinct !{!678, !679, !"XXH3_mergeAccs: argument 1"}
!679 = distinct !{!679, !"XXH3_mergeAccs"}
!680 = !{!681, !630}
!681 = distinct !{!681, !679, !"XXH3_mergeAccs: argument 0"}
!682 = !{!683, !635, !630}
!683 = distinct !{!683, !684, !"XXH3_accumulate_512: argument 1"}
!684 = distinct !{!684, !"XXH3_accumulate_512"}
!685 = !{!686, !687, !644, !638, !633}
!686 = distinct !{!686, !684, !"XXH3_accumulate_512: argument 0"}
!687 = distinct !{!687, !684, !"XXH3_accumulate_512: argument 2"}
!688 = !{!689, !633}
!689 = distinct !{!689, !690, !"XXH3_mergeAccs: argument 1"}
!690 = distinct !{!690, !"XXH3_mergeAccs"}
!691 = !{!692, !630}
!692 = distinct !{!692, !690, !"XXH3_mergeAccs: argument 0"}
!693 = !{!694}
!694 = distinct !{!694, !695, !"XXH3_len_17to128_128b: argument 0"}
!695 = distinct !{!695, !"XXH3_len_17to128_128b"}
!696 = !{!697}
!697 = distinct !{!697, !695, !"XXH3_len_17to128_128b: argument 1"}
!698 = !{!699}
!699 = distinct !{!699, !700, !"XXH3_len_129to240_128b: argument 0"}
!700 = distinct !{!700, !"XXH3_len_129to240_128b"}
!701 = !{!702}
!702 = distinct !{!702, !700, !"XXH3_len_129to240_128b: argument 1"}
!703 = !{!704}
!704 = distinct !{!704, !705, !"XXH3_hashLong_128b_internal: argument 0"}
!705 = distinct !{!705, !"XXH3_hashLong_128b_internal"}
!706 = !{!707}
!707 = distinct !{!707, !705, !"XXH3_hashLong_128b_internal: argument 1"}
!708 = !{!709}
!709 = distinct !{!709, !710, !"XXH3_hashLong_internal_loop: argument 1"}
!710 = distinct !{!710, !"XXH3_hashLong_internal_loop"}
!711 = !{!712}
!712 = distinct !{!712, !710, !"XXH3_hashLong_internal_loop: argument 2"}
!713 = !{!714}
!714 = distinct !{!714, !715, !"XXH3_accumulate: argument 1"}
!715 = distinct !{!715, !"XXH3_accumulate"}
!716 = !{!717}
!717 = distinct !{!717, !715, !"XXH3_accumulate: argument 2"}
!718 = !{!719}
!719 = distinct !{!719, !720, !"XXH3_accumulate_512: argument 1"}
!720 = distinct !{!720, !"XXH3_accumulate_512"}
!721 = !{!722}
!722 = distinct !{!722, !720, !"XXH3_accumulate_512: argument 2"}
!723 = !{!719, !714, !709, !704}
!724 = !{!725, !722, !726, !717, !727, !712, !707}
!725 = distinct !{!725, !720, !"XXH3_accumulate_512: argument 0"}
!726 = distinct !{!726, !715, !"XXH3_accumulate: argument 0"}
!727 = distinct !{!727, !710, !"XXH3_hashLong_internal_loop: argument 0"}
!728 = !{!722, !717, !712, !707}
!729 = !{!725, !719, !726, !714, !727, !709, !704}
!730 = !{!731}
!731 = distinct !{!731, !732, !"XXH3_accumulate: argument 1"}
!732 = distinct !{!732, !"XXH3_accumulate"}
!733 = !{!734}
!734 = distinct !{!734, !732, !"XXH3_accumulate: argument 2"}
!735 = !{!736}
!736 = distinct !{!736, !737, !"XXH3_accumulate_512: argument 1"}
!737 = distinct !{!737, !"XXH3_accumulate_512"}
!738 = !{!739}
!739 = distinct !{!739, !737, !"XXH3_accumulate_512: argument 2"}
!740 = !{!736, !731, !709, !704}
!741 = !{!742, !739, !743, !734, !727, !712, !707}
!742 = distinct !{!742, !737, !"XXH3_accumulate_512: argument 0"}
!743 = distinct !{!743, !732, !"XXH3_accumulate: argument 0"}
!744 = !{!739, !734, !712, !707}
!745 = !{!742, !736, !743, !731, !727, !709, !704}
!746 = !{!747, !709, !704}
!747 = distinct !{!747, !748, !"XXH3_accumulate_512: argument 1"}
!748 = distinct !{!748, !"XXH3_accumulate_512"}
!749 = !{!750, !751, !727, !712, !707}
!750 = distinct !{!750, !748, !"XXH3_accumulate_512: argument 0"}
!751 = distinct !{!751, !748, !"XXH3_accumulate_512: argument 2"}
!752 = !{!753}
!753 = distinct !{!753, !754, !"XXH3_hashLong_128b_internal: argument 0"}
!754 = distinct !{!754, !"XXH3_hashLong_128b_internal"}
!755 = !{!756}
!756 = distinct !{!756, !754, !"XXH3_hashLong_128b_internal: argument 1"}
!757 = !{!758}
!758 = distinct !{!758, !759, !"XXH3_hashLong_internal_loop: argument 1"}
!759 = distinct !{!759, !"XXH3_hashLong_internal_loop"}
!760 = !{!761}
!761 = distinct !{!761, !759, !"XXH3_hashLong_internal_loop: argument 2"}
!762 = !{!763, !761, !756}
!763 = distinct !{!763, !764, !"XXH3_scrambleAcc: argument 1"}
!764 = distinct !{!764, !"XXH3_scrambleAcc"}
!765 = !{!766, !767, !758, !753}
!766 = distinct !{!766, !764, !"XXH3_scrambleAcc: argument 0"}
!767 = distinct !{!767, !759, !"XXH3_hashLong_internal_loop: argument 0"}
!768 = !{!769}
!769 = distinct !{!769, !770, !"XXH3_accumulate: argument 1"}
!770 = distinct !{!770, !"XXH3_accumulate"}
!771 = !{!772}
!772 = distinct !{!772, !770, !"XXH3_accumulate: argument 2"}
!773 = !{!774}
!774 = distinct !{!774, !775, !"XXH3_accumulate_512: argument 1"}
!775 = distinct !{!775, !"XXH3_accumulate_512"}
!776 = !{!777}
!777 = distinct !{!777, !775, !"XXH3_accumulate_512: argument 2"}
!778 = !{!774, !769, !758, !753}
!779 = !{!780, !777, !781, !772, !767, !761, !756}
!780 = distinct !{!780, !775, !"XXH3_accumulate_512: argument 0"}
!781 = distinct !{!781, !770, !"XXH3_accumulate: argument 0"}
!782 = !{!777, !772, !761, !756}
!783 = !{!780, !774, !781, !769, !767, !758, !753}
!784 = !{!785}
!785 = distinct !{!785, !786, !"XXH3_accumulate: argument 1"}
!786 = distinct !{!786, !"XXH3_accumulate"}
!787 = !{!788}
!788 = distinct !{!788, !786, !"XXH3_accumulate: argument 2"}
!789 = !{!790}
!790 = distinct !{!790, !791, !"XXH3_accumulate_512: argument 1"}
!791 = distinct !{!791, !"XXH3_accumulate_512"}
!792 = !{!793}
!793 = distinct !{!793, !791, !"XXH3_accumulate_512: argument 2"}
!794 = !{!790, !785, !758, !753}
!795 = !{!796, !793, !797, !788, !767, !761, !756}
!796 = distinct !{!796, !791, !"XXH3_accumulate_512: argument 0"}
!797 = distinct !{!797, !786, !"XXH3_accumulate: argument 0"}
!798 = !{!793, !788, !761, !756}
!799 = !{!796, !790, !797, !785, !767, !758, !753}
!800 = !{!801, !756}
!801 = distinct !{!801, !802, !"XXH3_mergeAccs: argument 1"}
!802 = distinct !{!802, !"XXH3_mergeAccs"}
!803 = !{!804, !753}
!804 = distinct !{!804, !802, !"XXH3_mergeAccs: argument 0"}
!805 = !{!806, !758, !753}
!806 = distinct !{!806, !807, !"XXH3_accumulate_512: argument 1"}
!807 = distinct !{!807, !"XXH3_accumulate_512"}
!808 = !{!809, !810, !767, !761, !756}
!809 = distinct !{!809, !807, !"XXH3_accumulate_512: argument 0"}
!810 = distinct !{!810, !807, !"XXH3_accumulate_512: argument 2"}
!811 = !{!812, !756}
!812 = distinct !{!812, !813, !"XXH3_mergeAccs: argument 1"}
!813 = distinct !{!813, !"XXH3_mergeAccs"}
!814 = !{!815, !753}
!815 = distinct !{!815, !813, !"XXH3_mergeAccs: argument 0"}
!816 = !{!817}
!817 = distinct !{!817, !818, !"XXH3_len_17to128_128b: argument 0"}
!818 = distinct !{!818, !"XXH3_len_17to128_128b"}
!819 = !{!820}
!820 = distinct !{!820, !818, !"XXH3_len_17to128_128b: argument 1"}
!821 = !{!822}
!822 = distinct !{!822, !823, !"XXH3_len_129to240_128b: argument 0"}
!823 = distinct !{!823, !"XXH3_len_129to240_128b"}
!824 = !{!825}
!825 = distinct !{!825, !823, !"XXH3_len_129to240_128b: argument 1"}
!826 = !{!827}
!827 = distinct !{!827, !828, !"XXH3_hashLong_128b_internal: argument 0"}
!828 = distinct !{!828, !"XXH3_hashLong_128b_internal"}
!829 = !{!830}
!830 = distinct !{!830, !828, !"XXH3_hashLong_128b_internal: argument 1"}
!831 = !{!832}
!832 = distinct !{!832, !833, !"XXH3_hashLong_internal_loop: argument 1"}
!833 = distinct !{!833, !"XXH3_hashLong_internal_loop"}
!834 = !{!835}
!835 = distinct !{!835, !833, !"XXH3_hashLong_internal_loop: argument 2"}
!836 = !{!837}
!837 = distinct !{!837, !838, !"XXH3_accumulate: argument 1"}
!838 = distinct !{!838, !"XXH3_accumulate"}
!839 = !{!840}
!840 = distinct !{!840, !838, !"XXH3_accumulate: argument 2"}
!841 = !{!842}
!842 = distinct !{!842, !843, !"XXH3_accumulate_512: argument 1"}
!843 = distinct !{!843, !"XXH3_accumulate_512"}
!844 = !{!845}
!845 = distinct !{!845, !843, !"XXH3_accumulate_512: argument 2"}
!846 = !{!842, !837, !832, !827}
!847 = !{!848, !845, !849, !840, !850, !835, !830}
!848 = distinct !{!848, !843, !"XXH3_accumulate_512: argument 0"}
!849 = distinct !{!849, !838, !"XXH3_accumulate: argument 0"}
!850 = distinct !{!850, !833, !"XXH3_hashLong_internal_loop: argument 0"}
!851 = !{!845, !840, !835, !830}
!852 = !{!848, !842, !849, !837, !850, !832, !827}
!853 = !{!854}
!854 = distinct !{!854, !855, !"XXH3_accumulate: argument 1"}
!855 = distinct !{!855, !"XXH3_accumulate"}
!856 = !{!857}
!857 = distinct !{!857, !855, !"XXH3_accumulate: argument 2"}
!858 = !{!859}
!859 = distinct !{!859, !860, !"XXH3_accumulate_512: argument 1"}
!860 = distinct !{!860, !"XXH3_accumulate_512"}
!861 = !{!862}
!862 = distinct !{!862, !860, !"XXH3_accumulate_512: argument 2"}
!863 = !{!859, !854, !832, !827}
!864 = !{!865, !862, !866, !857, !850, !835, !830}
!865 = distinct !{!865, !860, !"XXH3_accumulate_512: argument 0"}
!866 = distinct !{!866, !855, !"XXH3_accumulate: argument 0"}
!867 = !{!862, !857, !835, !830}
!868 = !{!865, !859, !866, !854, !850, !832, !827}
!869 = !{!870, !832, !827}
!870 = distinct !{!870, !871, !"XXH3_accumulate_512: argument 1"}
!871 = distinct !{!871, !"XXH3_accumulate_512"}
!872 = !{!873, !874, !850, !835, !830}
!873 = distinct !{!873, !871, !"XXH3_accumulate_512: argument 0"}
!874 = distinct !{!874, !871, !"XXH3_accumulate_512: argument 2"}
!875 = !{!876}
!876 = distinct !{!876, !877, !"XXH3_hashLong_128b_internal: argument 0"}
!877 = distinct !{!877, !"XXH3_hashLong_128b_internal"}
!878 = !{!879}
!879 = distinct !{!879, !877, !"XXH3_hashLong_128b_internal: argument 1"}
!880 = !{!881}
!881 = distinct !{!881, !882, !"XXH3_hashLong_internal_loop: argument 1"}
!882 = distinct !{!882, !"XXH3_hashLong_internal_loop"}
!883 = !{!884}
!884 = distinct !{!884, !882, !"XXH3_hashLong_internal_loop: argument 2"}
!885 = !{!886, !884, !879}
!886 = distinct !{!886, !887, !"XXH3_scrambleAcc: argument 1"}
!887 = distinct !{!887, !"XXH3_scrambleAcc"}
!888 = !{!889, !890, !881, !876}
!889 = distinct !{!889, !887, !"XXH3_scrambleAcc: argument 0"}
!890 = distinct !{!890, !882, !"XXH3_hashLong_internal_loop: argument 0"}
!891 = !{!892}
!892 = distinct !{!892, !893, !"XXH3_accumulate: argument 1"}
!893 = distinct !{!893, !"XXH3_accumulate"}
!894 = !{!895}
!895 = distinct !{!895, !893, !"XXH3_accumulate: argument 2"}
!896 = !{!897}
!897 = distinct !{!897, !898, !"XXH3_accumulate_512: argument 1"}
!898 = distinct !{!898, !"XXH3_accumulate_512"}
!899 = !{!900}
!900 = distinct !{!900, !898, !"XXH3_accumulate_512: argument 2"}
!901 = !{!897, !892, !881, !876}
!902 = !{!903, !900, !904, !895, !890, !884, !879}
!903 = distinct !{!903, !898, !"XXH3_accumulate_512: argument 0"}
!904 = distinct !{!904, !893, !"XXH3_accumulate: argument 0"}
!905 = !{!900, !895, !884, !879}
!906 = !{!903, !897, !904, !892, !890, !881, !876}
!907 = !{!908}
!908 = distinct !{!908, !909, !"XXH3_accumulate: argument 1"}
!909 = distinct !{!909, !"XXH3_accumulate"}
!910 = !{!911}
!911 = distinct !{!911, !909, !"XXH3_accumulate: argument 2"}
!912 = !{!913}
!913 = distinct !{!913, !914, !"XXH3_accumulate_512: argument 1"}
!914 = distinct !{!914, !"XXH3_accumulate_512"}
!915 = !{!916}
!916 = distinct !{!916, !914, !"XXH3_accumulate_512: argument 2"}
!917 = !{!913, !908, !881, !876}
!918 = !{!919, !916, !920, !911, !890, !884, !879}
!919 = distinct !{!919, !914, !"XXH3_accumulate_512: argument 0"}
!920 = distinct !{!920, !909, !"XXH3_accumulate: argument 0"}
!921 = !{!916, !911, !884, !879}
!922 = !{!919, !913, !920, !908, !890, !881, !876}
!923 = !{!924, !879}
!924 = distinct !{!924, !925, !"XXH3_mergeAccs: argument 1"}
!925 = distinct !{!925, !"XXH3_mergeAccs"}
!926 = !{!927, !876}
!927 = distinct !{!927, !925, !"XXH3_mergeAccs: argument 0"}
!928 = !{!929, !881, !876}
!929 = distinct !{!929, !930, !"XXH3_accumulate_512: argument 1"}
!930 = distinct !{!930, !"XXH3_accumulate_512"}
!931 = !{!932, !933, !890, !884, !879}
!932 = distinct !{!932, !930, !"XXH3_accumulate_512: argument 0"}
!933 = distinct !{!933, !930, !"XXH3_accumulate_512: argument 2"}
!934 = !{!935, !879}
!935 = distinct !{!935, !936, !"XXH3_mergeAccs: argument 1"}
!936 = distinct !{!936, !"XXH3_mergeAccs"}
!937 = !{!938, !876}
!938 = distinct !{!938, !936, !"XXH3_mergeAccs: argument 0"}
!939 = !{!940}
!940 = distinct !{!940, !941, !"XXH3_accumulate: argument 0"}
!941 = distinct !{!941, !"XXH3_accumulate"}
!942 = !{!943}
!943 = distinct !{!943, !941, !"XXH3_accumulate: argument 1"}
!944 = !{!945}
!945 = distinct !{!945, !941, !"XXH3_accumulate: argument 2"}
!946 = !{!947}
!947 = distinct !{!947, !948, !"XXH3_scrambleAcc: argument 0"}
!948 = distinct !{!948, !"XXH3_scrambleAcc"}
!949 = !{!950}
!950 = distinct !{!950, !948, !"XXH3_scrambleAcc: argument 1"}
!951 = !{!952}
!952 = distinct !{!952, !953, !"XXH3_accumulate_512: argument 0"}
!953 = distinct !{!953, !"XXH3_accumulate_512"}
!954 = !{!955}
!955 = distinct !{!955, !953, !"XXH3_accumulate_512: argument 1"}
!956 = !{!957}
!957 = distinct !{!957, !953, !"XXH3_accumulate_512: argument 2"}
!958 = !{!955, !943}
!959 = !{!952, !957, !940, !945}
!960 = !{!957, !945}
!961 = !{!952, !955, !940, !943}
!962 = !{!952, !940}
!963 = !{!955, !957, !943, !945}
!964 = !{!965}
!965 = distinct !{!965, !966, !"XXH3_accumulate: argument 0"}
!966 = distinct !{!966, !"XXH3_accumulate"}
!967 = !{!968}
!968 = distinct !{!968, !966, !"XXH3_accumulate: argument 1"}
!969 = !{!970}
!970 = distinct !{!970, !966, !"XXH3_accumulate: argument 2"}
!971 = !{!972}
!972 = distinct !{!972, !973, !"XXH3_accumulate_512: argument 0"}
!973 = distinct !{!973, !"XXH3_accumulate_512"}
!974 = !{!975}
!975 = distinct !{!975, !973, !"XXH3_accumulate_512: argument 1"}
!976 = !{!977}
!977 = distinct !{!977, !973, !"XXH3_accumulate_512: argument 2"}
!978 = !{!975, !968}
!979 = !{!972, !977, !965, !970}
!980 = !{!977, !970}
!981 = !{!972, !975, !965, !968}
!982 = !{!972, !965}
!983 = !{!975, !977, !968, !970}
!984 = !{!985}
!985 = distinct !{!985, !986, !"XXH3_accumulate: argument 0"}
!986 = distinct !{!986, !"XXH3_accumulate"}
!987 = !{!988}
!988 = distinct !{!988, !986, !"XXH3_accumulate: argument 1"}
!989 = !{!990}
!990 = distinct !{!990, !986, !"XXH3_accumulate: argument 2"}
!991 = !{!992, !985}
!992 = distinct !{!992, !993, !"XXH3_accumulate_512: argument 0"}
!993 = distinct !{!993, !"XXH3_accumulate_512"}
!994 = !{!995, !996, !988, !990}
!995 = distinct !{!995, !993, !"XXH3_accumulate_512: argument 1"}
!996 = distinct !{!996, !993, !"XXH3_accumulate_512: argument 2"}
!997 = !{!992}
!998 = !{!995}
!999 = !{!996}
!1000 = !{!995, !988}
!1001 = !{!992, !996, !985, !990}
!1002 = !{!996, !990}
!1003 = !{!992, !995, !985, !988}
!1004 = !{!1005}
!1005 = distinct !{!1005, !993, !"XXH3_accumulate_512: argument 1:It1"}
!1006 = !{!1007}
!1007 = distinct !{!1007, !993, !"XXH3_accumulate_512: argument 2:It1"}
!1008 = !{!1005, !988}
!1009 = !{!1010, !1007, !985, !990}
!1010 = distinct !{!1010, !993, !"XXH3_accumulate_512: argument 0:It1"}
!1011 = !{!1007, !990}
!1012 = !{!1010, !1005, !985, !988}
!1013 = !{!1014}
!1014 = distinct !{!1014, !993, !"XXH3_accumulate_512: argument 1:It2"}
!1015 = !{!1016}
!1016 = distinct !{!1016, !993, !"XXH3_accumulate_512: argument 2:It2"}
!1017 = !{!1014, !988}
!1018 = !{!1019, !1016, !985, !990}
!1019 = distinct !{!1019, !993, !"XXH3_accumulate_512: argument 0:It2"}
!1020 = !{!1016, !990}
!1021 = !{!1019, !1014, !985, !988}
!1022 = !{!1023}
!1023 = distinct !{!1023, !993, !"XXH3_accumulate_512: argument 1:It3"}
!1024 = !{!1025}
!1025 = distinct !{!1025, !993, !"XXH3_accumulate_512: argument 2:It3"}
!1026 = !{!1023, !988}
!1027 = !{!1028, !1025, !985, !990}
!1028 = distinct !{!1028, !993, !"XXH3_accumulate_512: argument 0:It3"}
!1029 = !{!1025, !990}
!1030 = !{!1028, !1023, !985, !988}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"XXH3_accumulate: argument 0"}
!1033 = distinct !{!1033, !"XXH3_accumulate"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"XXH3_accumulate: argument 1"}
!1036 = !{!1037}
!1037 = distinct !{!1037, !1033, !"XXH3_accumulate: argument 2"}
!1038 = !{!1039}
!1039 = distinct !{!1039, !1040, !"XXH3_scrambleAcc: argument 0"}
!1040 = distinct !{!1040, !"XXH3_scrambleAcc"}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1040, !"XXH3_scrambleAcc: argument 1"}
!1043 = !{!1044}
!1044 = distinct !{!1044, !1045, !"XXH3_accumulate_512: argument 0"}
!1045 = distinct !{!1045, !"XXH3_accumulate_512"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1045, !"XXH3_accumulate_512: argument 1"}
!1048 = !{!1049}
!1049 = distinct !{!1049, !1045, !"XXH3_accumulate_512: argument 2"}
!1050 = !{!1047, !1035}
!1051 = !{!1044, !1049, !1032, !1037}
!1052 = !{!1049, !1037}
!1053 = !{!1044, !1047, !1032, !1035}
!1054 = !{!1044, !1032}
!1055 = !{!1047, !1049, !1035, !1037}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"XXH3_accumulate: argument 0"}
!1058 = distinct !{!1058, !"XXH3_accumulate"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1058, !"XXH3_accumulate: argument 1"}
!1061 = !{!1062}
!1062 = distinct !{!1062, !1058, !"XXH3_accumulate: argument 2"}
!1063 = !{!1064}
!1064 = distinct !{!1064, !1065, !"XXH3_accumulate_512: argument 0"}
!1065 = distinct !{!1065, !"XXH3_accumulate_512"}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1065, !"XXH3_accumulate_512: argument 1"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1065, !"XXH3_accumulate_512: argument 2"}
!1070 = !{!1067, !1060}
!1071 = !{!1064, !1069, !1057, !1062}
!1072 = !{!1069, !1062}
!1073 = !{!1064, !1067, !1057, !1060}
!1074 = !{!1064, !1057}
!1075 = !{!1067, !1069, !1060, !1062}
!1076 = !{!1077}
!1077 = distinct !{!1077, !1078, !"XXH3_accumulate: argument 0"}
!1078 = distinct !{!1078, !"XXH3_accumulate"}
!1079 = !{!1080}
!1080 = distinct !{!1080, !1078, !"XXH3_accumulate: argument 1"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1078, !"XXH3_accumulate: argument 2"}
!1083 = !{!1084, !1077}
!1084 = distinct !{!1084, !1085, !"XXH3_accumulate_512: argument 0"}
!1085 = distinct !{!1085, !"XXH3_accumulate_512"}
!1086 = !{!1087, !1088, !1080, !1082}
!1087 = distinct !{!1087, !1085, !"XXH3_accumulate_512: argument 1"}
!1088 = distinct !{!1088, !1085, !"XXH3_accumulate_512: argument 2"}
!1089 = !{!1084}
!1090 = !{!1087}
!1091 = !{!1088}
!1092 = !{!1087, !1080}
!1093 = !{!1084, !1088, !1077, !1082}
!1094 = !{!1088, !1082}
!1095 = !{!1084, !1087, !1077, !1080}
!1096 = !{!1097}
!1097 = distinct !{!1097, !1085, !"XXH3_accumulate_512: argument 1:It1"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1085, !"XXH3_accumulate_512: argument 2:It1"}
!1100 = !{!1097, !1080}
!1101 = !{!1102, !1099, !1077, !1082}
!1102 = distinct !{!1102, !1085, !"XXH3_accumulate_512: argument 0:It1"}
!1103 = !{!1099, !1082}
!1104 = !{!1102, !1097, !1077, !1080}
!1105 = !{!1106}
!1106 = distinct !{!1106, !1085, !"XXH3_accumulate_512: argument 1:It2"}
!1107 = !{!1108}
!1108 = distinct !{!1108, !1085, !"XXH3_accumulate_512: argument 2:It2"}
!1109 = !{!1106, !1080}
!1110 = !{!1111, !1108, !1077, !1082}
!1111 = distinct !{!1111, !1085, !"XXH3_accumulate_512: argument 0:It2"}
!1112 = !{!1108, !1082}
!1113 = !{!1111, !1106, !1077, !1080}
!1114 = !{!1115}
!1115 = distinct !{!1115, !1085, !"XXH3_accumulate_512: argument 1:It3"}
!1116 = !{!1117}
!1117 = distinct !{!1117, !1085, !"XXH3_accumulate_512: argument 2:It3"}
!1118 = !{!1115, !1080}
!1119 = !{!1120, !1117, !1077, !1082}
!1120 = distinct !{!1120, !1085, !"XXH3_accumulate_512: argument 0:It3"}
!1121 = !{!1117, !1082}
!1122 = !{!1120, !1115, !1077, !1080}
!1123 = !{!1124}
!1124 = distinct !{!1124, !1125, !"XXH3_accumulate: argument 1"}
!1125 = distinct !{!1125, !"XXH3_accumulate"}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1125, !"XXH3_accumulate: argument 2"}
!1128 = !{!1129}
!1129 = distinct !{!1129, !1130, !"XXH3_accumulate_512: argument 1"}
!1130 = distinct !{!1130, !"XXH3_accumulate_512"}
!1131 = !{!1132}
!1132 = distinct !{!1132, !1130, !"XXH3_accumulate_512: argument 2"}
!1133 = !{!1129, !1124}
!1134 = !{!1135, !1132, !1136, !1127}
!1135 = distinct !{!1135, !1130, !"XXH3_accumulate_512: argument 0"}
!1136 = distinct !{!1136, !1125, !"XXH3_accumulate: argument 0"}
!1137 = !{!1132, !1127}
!1138 = !{!1135, !1129, !1136, !1124}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1141, !"XXH3_scrambleAcc: argument 1"}
!1141 = distinct !{!1141, !"XXH3_scrambleAcc"}
!1142 = !{!1143}
!1143 = distinct !{!1143, !1141, !"XXH3_scrambleAcc: argument 0"}
!1144 = !{!1145}
!1145 = distinct !{!1145, !1146, !"XXH3_accumulate: argument 1"}
!1146 = distinct !{!1146, !"XXH3_accumulate"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1146, !"XXH3_accumulate: argument 2"}
!1149 = !{!1150}
!1150 = distinct !{!1150, !1151, !"XXH3_accumulate_512: argument 1"}
!1151 = distinct !{!1151, !"XXH3_accumulate_512"}
!1152 = !{!1153}
!1153 = distinct !{!1153, !1151, !"XXH3_accumulate_512: argument 2"}
!1154 = !{!1150, !1145}
!1155 = !{!1156, !1153, !1157, !1148}
!1156 = distinct !{!1156, !1151, !"XXH3_accumulate_512: argument 0"}
!1157 = distinct !{!1157, !1146, !"XXH3_accumulate: argument 0"}
!1158 = !{!1153, !1148}
!1159 = !{!1156, !1150, !1157, !1145}
!1160 = !{!1161}
!1161 = distinct !{!1161, !1162, !"XXH3_accumulate: argument 1"}
!1162 = distinct !{!1162, !"XXH3_accumulate"}
!1163 = !{!1164}
!1164 = distinct !{!1164, !1162, !"XXH3_accumulate: argument 2"}
!1165 = !{!1166}
!1166 = distinct !{!1166, !1167, !"XXH3_accumulate_512: argument 1"}
!1167 = distinct !{!1167, !"XXH3_accumulate_512"}
!1168 = !{!1169}
!1169 = distinct !{!1169, !1167, !"XXH3_accumulate_512: argument 2"}
!1170 = !{!1166, !1161}
!1171 = !{!1172, !1169, !1173, !1164}
!1172 = distinct !{!1172, !1167, !"XXH3_accumulate_512: argument 0"}
!1173 = distinct !{!1173, !1162, !"XXH3_accumulate: argument 0"}
!1174 = !{!1169, !1164}
!1175 = !{!1172, !1166, !1173, !1161}
!1176 = !{!1177}
!1177 = distinct !{!1177, !1178, !"XXH3_accumulate_512: argument 1"}
!1178 = distinct !{!1178, !"XXH3_accumulate_512"}
!1179 = !{!1180}
!1180 = distinct !{!1180, !1178, !"XXH3_accumulate_512: argument 2"}
!1181 = !{!1182, !1180}
!1182 = distinct !{!1182, !1178, !"XXH3_accumulate_512: argument 0"}
!1183 = !{!1182, !1177}
!1184 = !{!1185}
!1185 = distinct !{!1185, !1186, !"XXH3_accumulate_512: argument 1"}
!1186 = distinct !{!1186, !"XXH3_accumulate_512"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1186, !"XXH3_accumulate_512: argument 2"}
!1189 = !{!1190, !1188}
!1190 = distinct !{!1190, !1186, !"XXH3_accumulate_512: argument 0"}
!1191 = !{!1190, !1185}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1194, !"XXH3_mergeAccs: argument 1"}
!1194 = distinct !{!1194, !"XXH3_mergeAccs"}
!1195 = !{!1196}
!1196 = distinct !{!1196, !1194, !"XXH3_mergeAccs: argument 0"}
!1197 = !{!1198}
!1198 = distinct !{!1198, !1199, !"XXH3_mergeAccs: argument 1"}
!1199 = distinct !{!1199, !"XXH3_mergeAccs"}
!1200 = !{!1201}
!1201 = distinct !{!1201, !1199, !"XXH3_mergeAccs: argument 0"}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1204, !"XXH3_len_17to128_128b: argument 0"}
!1204 = distinct !{!1204, !"XXH3_len_17to128_128b"}
!1205 = !{!1206}
!1206 = distinct !{!1206, !1204, !"XXH3_len_17to128_128b: argument 1"}
!1207 = !{!1208}
!1208 = distinct !{!1208, !1209, !"XXH3_len_129to240_128b: argument 0"}
!1209 = distinct !{!1209, !"XXH3_len_129to240_128b"}
!1210 = !{!1211}
!1211 = distinct !{!1211, !1209, !"XXH3_len_129to240_128b: argument 1"}
!1212 = !{!1213}
!1213 = distinct !{!1213, !1214, !"XXH3_len_17to128_128b: argument 0"}
!1214 = distinct !{!1214, !"XXH3_len_17to128_128b"}
!1215 = !{!1216}
!1216 = distinct !{!1216, !1214, !"XXH3_len_17to128_128b: argument 1"}
!1217 = !{!1218}
!1218 = distinct !{!1218, !1219, !"XXH3_len_129to240_128b: argument 0"}
!1219 = distinct !{!1219, !"XXH3_len_129to240_128b"}
!1220 = !{!1221}
!1221 = distinct !{!1221, !1219, !"XXH3_len_129to240_128b: argument 1"}
!1222 = !{!1223}
!1223 = distinct !{!1223, !1224, !"XXH3_len_17to128_64b: argument 0"}
!1224 = distinct !{!1224, !"XXH3_len_17to128_64b"}
!1225 = !{!1226}
!1226 = distinct !{!1226, !1224, !"XXH3_len_17to128_64b: argument 1"}
!1227 = !{!1228}
!1228 = distinct !{!1228, !1229, !"XXH3_len_129to240_64b: argument 0"}
!1229 = distinct !{!1229, !"XXH3_len_129to240_64b"}
!1230 = !{!1231}
!1231 = distinct !{!1231, !1229, !"XXH3_len_129to240_64b: argument 1"}
