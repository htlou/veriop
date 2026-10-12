; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8293860/api_xxh32_len16/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8293860/api_xxh32_len16/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH128_hash_t = type { i64, i64 }

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 701
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
  %22 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %21) #23
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %14
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %28) #23
  %30 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %15
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %35) #23
  %37 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %38 = load i32, ptr %37, align 1
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %16
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %42) #23
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
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #24
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #25
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
  %41 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %40) #23
  store i32 %41, ptr %34, align 4
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 1
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %49) #23
  store i32 %50, ptr %43, align 4
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %51, align 1
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %53
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %58) #23
  store i32 %59, ptr %52, align 4
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %60, align 1
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %67) #23
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
  %97 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %96) #23
  %98 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %99 = load i32, ptr %98, align 1
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %89
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %103) #23
  %105 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %106 = load i32, ptr %105, align 1
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %90
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %110) #23
  %112 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %113 = load i32, ptr %112, align 1
  %114 = mul i32 %113, -2048144777
  %115 = add i32 %114, %91
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = mul i32 %116, -1640531535
  %118 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %117) #23
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
define dso_local noundef i32 @XXH32_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #11 {
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
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #24
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #25
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
define dso_local range(i32 0, 2) i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 {
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
define dso_local i64 @XXH3_64bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #13 {
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
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #14 {
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
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1) unnamed_addr #15 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %384, label %5

5:                                                ; preds = %2, %5
  %6 = phi <4 x i64> [ %381, %5 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %7 = phi <4 x i64> [ %371, %5 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %8 = phi i64 [ %382, %5 ], [ 0, %2 ]
  %9 = shl i64 %8, 10
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = load <4 x i64>, ptr %10, align 1
  %12 = xor <4 x i64> %11, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %13 = bitcast <4 x i64> %12 to <8 x i32>
  %14 = shufflevector <8 x i32> %13, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %15 = bitcast <8 x i32> %14 to <4 x i64>
  %16 = and <4 x i64> %12, splat (i64 4294967295)
  %17 = and <4 x i64> %15, splat (i64 4294967295)
  %18 = mul nuw <4 x i64> %17, %16
  %19 = add <4 x i64> %7, %11
  %20 = add <4 x i64> %19, %18
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %22 = load <4 x i64>, ptr %21, align 1
  %23 = xor <4 x i64> %22, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %24 = bitcast <4 x i64> %23 to <8 x i32>
  %25 = shufflevector <8 x i32> %24, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %26 = bitcast <8 x i32> %25 to <4 x i64>
  %27 = and <4 x i64> %23, splat (i64 4294967295)
  %28 = and <4 x i64> %26, splat (i64 4294967295)
  %29 = mul nuw <4 x i64> %28, %27
  %30 = add <4 x i64> %6, %22
  %31 = add <4 x i64> %30, %29
  %32 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %33 = load <4 x i64>, ptr %32, align 1
  %34 = xor <4 x i64> %33, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %35 = bitcast <4 x i64> %34 to <8 x i32>
  %36 = shufflevector <8 x i32> %35, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %37 = bitcast <8 x i32> %36 to <4 x i64>
  %38 = and <4 x i64> %34, splat (i64 4294967295)
  %39 = and <4 x i64> %37, splat (i64 4294967295)
  %40 = mul nuw <4 x i64> %39, %38
  %41 = add <4 x i64> %20, %33
  %42 = add <4 x i64> %41, %40
  %43 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %44 = load <4 x i64>, ptr %43, align 1
  %45 = xor <4 x i64> %44, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %46 = bitcast <4 x i64> %45 to <8 x i32>
  %47 = shufflevector <8 x i32> %46, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %48 = bitcast <8 x i32> %47 to <4 x i64>
  %49 = and <4 x i64> %45, splat (i64 4294967295)
  %50 = and <4 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <4 x i64> %50, %49
  %52 = add <4 x i64> %31, %44
  %53 = add <4 x i64> %52, %51
  %54 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %55 = load <4 x i64>, ptr %54, align 1
  %56 = xor <4 x i64> %55, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %57 = bitcast <4 x i64> %56 to <8 x i32>
  %58 = shufflevector <8 x i32> %57, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %59 = bitcast <8 x i32> %58 to <4 x i64>
  %60 = and <4 x i64> %56, splat (i64 4294967295)
  %61 = and <4 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, %60
  %63 = add <4 x i64> %42, %55
  %64 = add <4 x i64> %63, %62
  %65 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %66 = load <4 x i64>, ptr %65, align 1
  %67 = xor <4 x i64> %66, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = and <4 x i64> %70, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, %71
  %74 = add <4 x i64> %53, %66
  %75 = add <4 x i64> %74, %73
  %76 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %77 = load <4 x i64>, ptr %76, align 1
  %78 = xor <4 x i64> %77, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = add <4 x i64> %64, %77
  %86 = add <4 x i64> %85, %84
  %87 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %88 = load <4 x i64>, ptr %87, align 1
  %89 = xor <4 x i64> %88, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %90 = bitcast <4 x i64> %89 to <8 x i32>
  %91 = shufflevector <8 x i32> %90, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %92 = bitcast <8 x i32> %91 to <4 x i64>
  %93 = and <4 x i64> %89, splat (i64 4294967295)
  %94 = and <4 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, %93
  %96 = add <4 x i64> %75, %88
  %97 = add <4 x i64> %96, %95
  %98 = getelementptr inbounds nuw i8, ptr %10, i64 256
  %99 = load <4 x i64>, ptr %98, align 1
  %100 = xor <4 x i64> %99, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %101 = bitcast <4 x i64> %100 to <8 x i32>
  %102 = shufflevector <8 x i32> %101, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %103 = bitcast <8 x i32> %102 to <4 x i64>
  %104 = and <4 x i64> %100, splat (i64 4294967295)
  %105 = and <4 x i64> %103, splat (i64 4294967295)
  %106 = mul nuw <4 x i64> %105, %104
  %107 = add <4 x i64> %86, %99
  %108 = add <4 x i64> %107, %106
  %109 = getelementptr inbounds nuw i8, ptr %10, i64 288
  %110 = load <4 x i64>, ptr %109, align 1
  %111 = xor <4 x i64> %110, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %112 = bitcast <4 x i64> %111 to <8 x i32>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = and <4 x i64> %111, splat (i64 4294967295)
  %116 = and <4 x i64> %114, splat (i64 4294967295)
  %117 = mul nuw <4 x i64> %116, %115
  %118 = add <4 x i64> %97, %110
  %119 = add <4 x i64> %118, %117
  %120 = getelementptr inbounds nuw i8, ptr %10, i64 320
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = xor <4 x i64> %121, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %123 = bitcast <4 x i64> %122 to <8 x i32>
  %124 = shufflevector <8 x i32> %123, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %125 = bitcast <8 x i32> %124 to <4 x i64>
  %126 = and <4 x i64> %122, splat (i64 4294967295)
  %127 = and <4 x i64> %125, splat (i64 4294967295)
  %128 = mul nuw <4 x i64> %127, %126
  %129 = add <4 x i64> %108, %121
  %130 = add <4 x i64> %129, %128
  %131 = getelementptr inbounds nuw i8, ptr %10, i64 352
  %132 = load <4 x i64>, ptr %131, align 1
  %133 = xor <4 x i64> %132, <i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352>
  %134 = bitcast <4 x i64> %133 to <8 x i32>
  %135 = shufflevector <8 x i32> %134, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %136 = bitcast <8 x i32> %135 to <4 x i64>
  %137 = and <4 x i64> %133, splat (i64 4294967295)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = add <4 x i64> %119, %132
  %141 = add <4 x i64> %140, %139
  %142 = getelementptr inbounds nuw i8, ptr %10, i64 384
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = xor <4 x i64> %143, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %145 = bitcast <4 x i64> %144 to <8 x i32>
  %146 = shufflevector <8 x i32> %145, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %147 = bitcast <8 x i32> %146 to <4 x i64>
  %148 = and <4 x i64> %144, splat (i64 4294967295)
  %149 = and <4 x i64> %147, splat (i64 4294967295)
  %150 = mul nuw <4 x i64> %149, %148
  %151 = add <4 x i64> %130, %143
  %152 = add <4 x i64> %151, %150
  %153 = getelementptr inbounds nuw i8, ptr %10, i64 416
  %154 = load <4 x i64>, ptr %153, align 1
  %155 = xor <4 x i64> %154, <i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193>
  %156 = bitcast <4 x i64> %155 to <8 x i32>
  %157 = shufflevector <8 x i32> %156, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %158 = bitcast <8 x i32> %157 to <4 x i64>
  %159 = and <4 x i64> %155, splat (i64 4294967295)
  %160 = and <4 x i64> %158, splat (i64 4294967295)
  %161 = mul nuw <4 x i64> %160, %159
  %162 = add <4 x i64> %141, %154
  %163 = add <4 x i64> %162, %161
  %164 = getelementptr inbounds nuw i8, ptr %10, i64 448
  %165 = load <4 x i64>, ptr %164, align 1
  %166 = xor <4 x i64> %165, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %167 = bitcast <4 x i64> %166 to <8 x i32>
  %168 = shufflevector <8 x i32> %167, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %169 = bitcast <8 x i32> %168 to <4 x i64>
  %170 = and <4 x i64> %166, splat (i64 4294967295)
  %171 = and <4 x i64> %169, splat (i64 4294967295)
  %172 = mul nuw <4 x i64> %171, %170
  %173 = add <4 x i64> %152, %165
  %174 = add <4 x i64> %173, %172
  %175 = getelementptr inbounds nuw i8, ptr %10, i64 480
  %176 = load <4 x i64>, ptr %175, align 1
  %177 = xor <4 x i64> %176, <i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746>
  %178 = bitcast <4 x i64> %177 to <8 x i32>
  %179 = shufflevector <8 x i32> %178, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %180 = bitcast <8 x i32> %179 to <4 x i64>
  %181 = and <4 x i64> %177, splat (i64 4294967295)
  %182 = and <4 x i64> %180, splat (i64 4294967295)
  %183 = mul nuw <4 x i64> %182, %181
  %184 = add <4 x i64> %163, %176
  %185 = add <4 x i64> %184, %183
  %186 = getelementptr inbounds nuw i8, ptr %10, i64 512
  %187 = load <4 x i64>, ptr %186, align 1
  %188 = xor <4 x i64> %187, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %189 = bitcast <4 x i64> %188 to <8 x i32>
  %190 = shufflevector <8 x i32> %189, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %191 = bitcast <8 x i32> %190 to <4 x i64>
  %192 = and <4 x i64> %188, splat (i64 4294967295)
  %193 = and <4 x i64> %191, splat (i64 4294967295)
  %194 = mul nuw <4 x i64> %193, %192
  %195 = add <4 x i64> %174, %187
  %196 = add <4 x i64> %195, %194
  %197 = getelementptr inbounds nuw i8, ptr %10, i64 544
  %198 = load <4 x i64>, ptr %197, align 1
  %199 = xor <4 x i64> %198, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %200 = bitcast <4 x i64> %199 to <8 x i32>
  %201 = shufflevector <8 x i32> %200, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %202 = bitcast <8 x i32> %201 to <4 x i64>
  %203 = and <4 x i64> %199, splat (i64 4294967295)
  %204 = and <4 x i64> %202, splat (i64 4294967295)
  %205 = mul nuw <4 x i64> %204, %203
  %206 = add <4 x i64> %185, %198
  %207 = add <4 x i64> %206, %205
  %208 = getelementptr inbounds nuw i8, ptr %10, i64 576
  %209 = load <4 x i64>, ptr %208, align 1
  %210 = xor <4 x i64> %209, <i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352>
  %211 = bitcast <4 x i64> %210 to <8 x i32>
  %212 = shufflevector <8 x i32> %211, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %213 = bitcast <8 x i32> %212 to <4 x i64>
  %214 = and <4 x i64> %210, splat (i64 4294967295)
  %215 = and <4 x i64> %213, splat (i64 4294967295)
  %216 = mul nuw <4 x i64> %215, %214
  %217 = add <4 x i64> %196, %209
  %218 = add <4 x i64> %217, %216
  %219 = getelementptr inbounds nuw i8, ptr %10, i64 608
  %220 = load <4 x i64>, ptr %219, align 1
  %221 = xor <4 x i64> %220, <i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654>
  %222 = bitcast <4 x i64> %221 to <8 x i32>
  %223 = shufflevector <8 x i32> %222, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %224 = bitcast <8 x i32> %223 to <4 x i64>
  %225 = and <4 x i64> %221, splat (i64 4294967295)
  %226 = and <4 x i64> %224, splat (i64 4294967295)
  %227 = mul nuw <4 x i64> %226, %225
  %228 = add <4 x i64> %207, %220
  %229 = add <4 x i64> %228, %227
  %230 = getelementptr inbounds nuw i8, ptr %10, i64 640
  %231 = load <4 x i64>, ptr %230, align 1
  %232 = xor <4 x i64> %231, <i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193>
  %233 = bitcast <4 x i64> %232 to <8 x i32>
  %234 = shufflevector <8 x i32> %233, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %235 = bitcast <8 x i32> %234 to <4 x i64>
  %236 = and <4 x i64> %232, splat (i64 4294967295)
  %237 = and <4 x i64> %235, splat (i64 4294967295)
  %238 = mul nuw <4 x i64> %237, %236
  %239 = add <4 x i64> %218, %231
  %240 = add <4 x i64> %239, %238
  %241 = getelementptr inbounds nuw i8, ptr %10, i64 672
  %242 = load <4 x i64>, ptr %241, align 1
  %243 = xor <4 x i64> %242, <i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907>
  %244 = bitcast <4 x i64> %243 to <8 x i32>
  %245 = shufflevector <8 x i32> %244, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %246 = bitcast <8 x i32> %245 to <4 x i64>
  %247 = and <4 x i64> %243, splat (i64 4294967295)
  %248 = and <4 x i64> %246, splat (i64 4294967295)
  %249 = mul nuw <4 x i64> %248, %247
  %250 = add <4 x i64> %229, %242
  %251 = add <4 x i64> %250, %249
  %252 = getelementptr inbounds nuw i8, ptr %10, i64 704
  %253 = load <4 x i64>, ptr %252, align 1
  %254 = xor <4 x i64> %253, <i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746>
  %255 = bitcast <4 x i64> %254 to <8 x i32>
  %256 = shufflevector <8 x i32> %255, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %257 = bitcast <8 x i32> %256 to <4 x i64>
  %258 = and <4 x i64> %254, splat (i64 4294967295)
  %259 = and <4 x i64> %257, splat (i64 4294967295)
  %260 = mul nuw <4 x i64> %259, %258
  %261 = add <4 x i64> %240, %253
  %262 = add <4 x i64> %261, %260
  %263 = getelementptr inbounds nuw i8, ptr %10, i64 736
  %264 = load <4 x i64>, ptr %263, align 1
  %265 = xor <4 x i64> %264, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047>
  %266 = bitcast <4 x i64> %265 to <8 x i32>
  %267 = shufflevector <8 x i32> %266, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %268 = bitcast <8 x i32> %267 to <4 x i64>
  %269 = and <4 x i64> %265, splat (i64 4294967295)
  %270 = and <4 x i64> %268, splat (i64 4294967295)
  %271 = mul nuw <4 x i64> %270, %269
  %272 = add <4 x i64> %251, %264
  %273 = add <4 x i64> %272, %271
  %274 = getelementptr inbounds nuw i8, ptr %10, i64 768
  %275 = load <4 x i64>, ptr %274, align 1
  %276 = xor <4 x i64> %275, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %277 = bitcast <4 x i64> %276 to <8 x i32>
  %278 = shufflevector <8 x i32> %277, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %279 = bitcast <8 x i32> %278 to <4 x i64>
  %280 = and <4 x i64> %276, splat (i64 4294967295)
  %281 = and <4 x i64> %279, splat (i64 4294967295)
  %282 = mul nuw <4 x i64> %281, %280
  %283 = add <4 x i64> %262, %275
  %284 = add <4 x i64> %283, %282
  %285 = getelementptr inbounds nuw i8, ptr %10, i64 800
  %286 = load <4 x i64>, ptr %285, align 1
  %287 = xor <4 x i64> %286, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %288 = bitcast <4 x i64> %287 to <8 x i32>
  %289 = shufflevector <8 x i32> %288, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %290 = bitcast <8 x i32> %289 to <4 x i64>
  %291 = and <4 x i64> %287, splat (i64 4294967295)
  %292 = and <4 x i64> %290, splat (i64 4294967295)
  %293 = mul nuw <4 x i64> %292, %291
  %294 = add <4 x i64> %273, %286
  %295 = add <4 x i64> %294, %293
  %296 = getelementptr inbounds nuw i8, ptr %10, i64 832
  %297 = load <4 x i64>, ptr %296, align 1
  %298 = xor <4 x i64> %297, <i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654>
  %299 = bitcast <4 x i64> %298 to <8 x i32>
  %300 = shufflevector <8 x i32> %299, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %301 = bitcast <8 x i32> %300 to <4 x i64>
  %302 = and <4 x i64> %298, splat (i64 4294967295)
  %303 = and <4 x i64> %301, splat (i64 4294967295)
  %304 = mul nuw <4 x i64> %303, %302
  %305 = add <4 x i64> %284, %297
  %306 = add <4 x i64> %305, %304
  %307 = getelementptr inbounds nuw i8, ptr %10, i64 864
  %308 = load <4 x i64>, ptr %307, align 1
  %309 = xor <4 x i64> %308, <i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509>
  %310 = bitcast <4 x i64> %309 to <8 x i32>
  %311 = shufflevector <8 x i32> %310, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %312 = bitcast <8 x i32> %311 to <4 x i64>
  %313 = and <4 x i64> %309, splat (i64 4294967295)
  %314 = and <4 x i64> %312, splat (i64 4294967295)
  %315 = mul nuw <4 x i64> %314, %313
  %316 = add <4 x i64> %295, %308
  %317 = add <4 x i64> %316, %315
  %318 = getelementptr inbounds nuw i8, ptr %10, i64 896
  %319 = load <4 x i64>, ptr %318, align 1
  %320 = xor <4 x i64> %319, <i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907>
  %321 = bitcast <4 x i64> %320 to <8 x i32>
  %322 = shufflevector <8 x i32> %321, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %323 = bitcast <8 x i32> %322 to <4 x i64>
  %324 = and <4 x i64> %320, splat (i64 4294967295)
  %325 = and <4 x i64> %323, splat (i64 4294967295)
  %326 = mul nuw <4 x i64> %325, %324
  %327 = add <4 x i64> %306, %319
  %328 = add <4 x i64> %327, %326
  %329 = getelementptr inbounds nuw i8, ptr %10, i64 928
  %330 = load <4 x i64>, ptr %329, align 1
  %331 = xor <4 x i64> %330, <i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737>
  %332 = bitcast <4 x i64> %331 to <8 x i32>
  %333 = shufflevector <8 x i32> %332, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %334 = bitcast <8 x i32> %333 to <4 x i64>
  %335 = and <4 x i64> %331, splat (i64 4294967295)
  %336 = and <4 x i64> %334, splat (i64 4294967295)
  %337 = mul nuw <4 x i64> %336, %335
  %338 = add <4 x i64> %317, %330
  %339 = add <4 x i64> %338, %337
  %340 = getelementptr inbounds nuw i8, ptr %10, i64 960
  %341 = load <4 x i64>, ptr %340, align 1
  %342 = xor <4 x i64> %341, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047>
  %343 = bitcast <4 x i64> %342 to <8 x i32>
  %344 = shufflevector <8 x i32> %343, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %345 = bitcast <8 x i32> %344 to <4 x i64>
  %346 = and <4 x i64> %342, splat (i64 4294967295)
  %347 = and <4 x i64> %345, splat (i64 4294967295)
  %348 = mul nuw <4 x i64> %347, %346
  %349 = add <4 x i64> %328, %341
  %350 = add <4 x i64> %349, %348
  %351 = getelementptr inbounds nuw i8, ptr %10, i64 992
  %352 = load <4 x i64>, ptr %351, align 1
  %353 = xor <4 x i64> %352, <i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253>
  %354 = bitcast <4 x i64> %353 to <8 x i32>
  %355 = shufflevector <8 x i32> %354, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %356 = bitcast <8 x i32> %355 to <4 x i64>
  %357 = and <4 x i64> %353, splat (i64 4294967295)
  %358 = and <4 x i64> %356, splat (i64 4294967295)
  %359 = mul nuw <4 x i64> %358, %357
  %360 = add <4 x i64> %339, %352
  %361 = add <4 x i64> %360, %359
  %362 = lshr <4 x i64> %350, splat (i64 47)
  %363 = xor <4 x i64> %362, %350
  %364 = xor <4 x i64> %363, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %365 = and <4 x i64> %364, splat (i64 4294967295)
  %366 = mul nuw <4 x i64> %365, splat (i64 2654435761)
  %367 = bitcast <4 x i64> %364 to <8 x i32>
  %368 = shufflevector <8 x i32> %367, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %369 = bitcast <8 x i32> %368 to <4 x i64>
  %370 = mul <4 x i64> %369, splat (i64 -7046029290881679360)
  %371 = add <4 x i64> %370, %366
  %372 = lshr <4 x i64> %361, splat (i64 47)
  %373 = xor <4 x i64> %372, %361
  %374 = xor <4 x i64> %373, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %375 = and <4 x i64> %374, splat (i64 4294967295)
  %376 = mul nuw <4 x i64> %375, splat (i64 2654435761)
  %377 = bitcast <4 x i64> %374 to <8 x i32>
  %378 = shufflevector <8 x i32> %377, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %379 = bitcast <8 x i32> %378 to <4 x i64>
  %380 = mul <4 x i64> %379, splat (i64 -7046029290881679360)
  %381 = add <4 x i64> %380, %376
  %382 = add nuw nsw i64 %8, 1
  %383 = icmp eq i64 %382, %3
  br i1 %383, label %384, label %5

384:                                              ; preds = %5, %2
  %385 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %381, %5 ]
  %386 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %371, %5 ]
  %387 = and i64 %1, -1024
  %388 = lshr i64 %1, 6
  %389 = and i64 %388, 15
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 %387
  %391 = icmp eq i64 %389, 0
  br i1 %391, label %426, label %392

392:                                              ; preds = %384, %392
  %393 = phi <4 x i64> [ %423, %392 ], [ %385, %384 ]
  %394 = phi <4 x i64> [ %410, %392 ], [ %386, %384 ]
  %395 = phi i64 [ %424, %392 ], [ 0, %384 ]
  %396 = shl i64 %395, 6
  %397 = getelementptr inbounds nuw i8, ptr %390, i64 %396
  %398 = shl i64 %395, 3
  %399 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %398
  %400 = load <4 x i64>, ptr %397, align 1
  %401 = load <4 x i64>, ptr %399, align 8
  %402 = xor <4 x i64> %401, %400
  %403 = bitcast <4 x i64> %402 to <8 x i32>
  %404 = shufflevector <8 x i32> %403, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %405 = bitcast <8 x i32> %404 to <4 x i64>
  %406 = and <4 x i64> %402, splat (i64 4294967295)
  %407 = and <4 x i64> %405, splat (i64 4294967295)
  %408 = mul nuw <4 x i64> %407, %406
  %409 = add <4 x i64> %394, %400
  %410 = add <4 x i64> %409, %408
  %411 = getelementptr inbounds nuw i8, ptr %397, i64 32
  %412 = load <4 x i64>, ptr %411, align 1
  %413 = getelementptr inbounds nuw i8, ptr %399, i64 32
  %414 = load <4 x i64>, ptr %413, align 8
  %415 = xor <4 x i64> %414, %412
  %416 = bitcast <4 x i64> %415 to <8 x i32>
  %417 = shufflevector <8 x i32> %416, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %418 = bitcast <8 x i32> %417 to <4 x i64>
  %419 = and <4 x i64> %415, splat (i64 4294967295)
  %420 = and <4 x i64> %418, splat (i64 4294967295)
  %421 = mul nuw <4 x i64> %420, %419
  %422 = add <4 x i64> %393, %412
  %423 = add <4 x i64> %422, %421
  %424 = add nuw nsw i64 %395, 1
  %425 = icmp eq i64 %424, %389
  br i1 %425, label %426, label %392

426:                                              ; preds = %392, %384
  %427 = phi <4 x i64> [ %385, %384 ], [ %423, %392 ]
  %428 = phi <4 x i64> [ %386, %384 ], [ %410, %392 ]
  %429 = and i64 %1, 63
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %455, label %431

431:                                              ; preds = %426
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %433 = getelementptr inbounds i8, ptr %432, i64 -64
  %434 = load <4 x i64>, ptr %433, align 1
  %435 = xor <4 x i64> %434, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %436 = bitcast <4 x i64> %435 to <8 x i32>
  %437 = shufflevector <8 x i32> %436, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %438 = bitcast <8 x i32> %437 to <4 x i64>
  %439 = and <4 x i64> %435, splat (i64 4294967295)
  %440 = and <4 x i64> %438, splat (i64 4294967295)
  %441 = mul nuw <4 x i64> %440, %439
  %442 = add <4 x i64> %428, %434
  %443 = add <4 x i64> %442, %441
  %444 = getelementptr inbounds i8, ptr %432, i64 -32
  %445 = load <4 x i64>, ptr %444, align 1
  %446 = xor <4 x i64> %445, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %447 = bitcast <4 x i64> %446 to <8 x i32>
  %448 = shufflevector <8 x i32> %447, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %449 = bitcast <8 x i32> %448 to <4 x i64>
  %450 = and <4 x i64> %446, splat (i64 4294967295)
  %451 = and <4 x i64> %449, splat (i64 4294967295)
  %452 = mul nuw <4 x i64> %451, %450
  %453 = add <4 x i64> %427, %445
  %454 = add <4 x i64> %453, %452
  br label %455

455:                                              ; preds = %431, %426
  %456 = phi <4 x i64> [ %427, %426 ], [ %454, %431 ]
  %457 = phi <4 x i64> [ %428, %426 ], [ %443, %431 ]
  %458 = mul i64 %1, -7046029288634856825
  %459 = extractelement <4 x i64> %457, i64 0
  %460 = xor i64 %459, 7914194659941938988
  %461 = extractelement <4 x i64> %457, i64 1
  %462 = xor i64 %461, -6611157965513653271
  %463 = zext i64 %460 to i128
  %464 = zext i64 %462 to i128
  %465 = mul nuw i128 %464, %463
  %466 = lshr i128 %465, 64
  %467 = xor i128 %466, %465
  %468 = trunc i128 %467 to i64
  %469 = add i64 %458, %468
  %470 = extractelement <4 x i64> %457, i64 2
  %471 = xor i64 %470, -1839215637059881052
  %472 = extractelement <4 x i64> %457, i64 3
  %473 = xor i64 %472, -3433288310154277810
  %474 = zext i64 %471 to i128
  %475 = zext i64 %473 to i128
  %476 = mul nuw i128 %475, %474
  %477 = lshr i128 %476, 64
  %478 = xor i128 %477, %476
  %479 = trunc i128 %478 to i64
  %480 = add i64 %469, %479
  %481 = extractelement <4 x i64> %456, i64 0
  %482 = xor i64 %481, 5046485836271438973
  %483 = extractelement <4 x i64> %456, i64 1
  %484 = xor i64 %483, -8055285457383852172
  %485 = zext i64 %482 to i128
  %486 = zext i64 %484 to i128
  %487 = mul nuw i128 %486, %485
  %488 = lshr i128 %487, 64
  %489 = xor i128 %488, %487
  %490 = trunc i128 %489 to i64
  %491 = add i64 %480, %490
  %492 = extractelement <4 x i64> %456, i64 2
  %493 = xor i64 %492, 5920048007935066598
  %494 = extractelement <4 x i64> %456, i64 3
  %495 = xor i64 %494, 7336514198459093435
  %496 = zext i64 %493 to i128
  %497 = zext i64 %495 to i128
  %498 = mul nuw i128 %497, %496
  %499 = lshr i128 %498, 64
  %500 = xor i128 %499, %498
  %501 = trunc i128 %500 to i64
  %502 = add i64 %491, %501
  %503 = lshr i64 %502, 37
  %504 = xor i64 %503, %502
  %505 = mul i64 %504, 1609587929392839161
  %506 = lshr i64 %505, 32
  %507 = xor i64 %506, %505
  ret i64 %507
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH3_64bits_withSecret(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #13 {
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
define internal fastcc i64 @XXH3_hashLong_64b_withSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #15 {
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
  %65 = and <4 x i64> %64, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, splat (i64 2654435761)
  %67 = bitcast <4 x i64> %64 to <8 x i32>
  %68 = shufflevector <8 x i32> %67, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %69 = bitcast <8 x i32> %68 to <4 x i64>
  %70 = mul <4 x i64> %69, splat (i64 -7046029290881679360)
  %71 = add <4 x i64> %70, %66
  %72 = lshr <4 x i64> %60, splat (i64 47)
  %73 = xor <4 x i64> %18, %72
  %74 = xor <4 x i64> %73, %60
  %75 = and <4 x i64> %74, splat (i64 4294967295)
  %76 = mul nuw <4 x i64> %75, splat (i64 2654435761)
  %77 = bitcast <4 x i64> %74 to <8 x i32>
  %78 = shufflevector <8 x i32> %77, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %79 = bitcast <8 x i32> %78 to <4 x i64>
  %80 = mul <4 x i64> %79, splat (i64 -7046029290881679360)
  %81 = add <4 x i64> %80, %76
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
define dso_local i64 @XXH3_64bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #13 {
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
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, i64 noundef %2) unnamed_addr #15 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #25
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
  br i1 %55, label %476, label %58

56:                                               ; preds = %3
  %57 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %620

58:                                               ; preds = %6
  %59 = load <4 x i64>, ptr %4, align 8
  %60 = load <4 x i64>, ptr %14, align 8
  %61 = load <4 x i64>, ptr %8, align 8
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %63 = load <4 x i64>, ptr %62, align 8
  %64 = load <4 x i64>, ptr %10, align 8
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %66 = load <4 x i64>, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %68 = load <4 x i64>, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %70 = load <4 x i64>, ptr %69, align 8
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %72 = load <4 x i64>, ptr %71, align 8
  %73 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %74 = load <4 x i64>, ptr %73, align 8
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %76 = load <4 x i64>, ptr %75, align 8
  %77 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %78 = load <4 x i64>, ptr %77, align 8
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %80 = load <4 x i64>, ptr %79, align 8
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %82 = load <4 x i64>, ptr %81, align 8
  %83 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %84 = load <4 x i64>, ptr %83, align 8
  %85 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %86 = load <4 x i64>, ptr %85, align 8
  %87 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %88 = load <4 x i64>, ptr %87, align 8
  %89 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %90 = load <4 x i64>, ptr %89, align 8
  %91 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %92 = load <4 x i64>, ptr %91, align 8
  %93 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %94 = load <4 x i64>, ptr %93, align 8
  %95 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %96 = load <4 x i64>, ptr %95, align 8
  br label %97

97:                                               ; preds = %58, %97
  %98 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %58 ], [ %473, %97 ]
  %99 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %58 ], [ %463, %97 ]
  %100 = phi i64 [ 0, %58 ], [ %474, %97 ]
  %101 = shl i64 %100, 10
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 %101
  %103 = load <4 x i64>, ptr %102, align 1
  %104 = xor <4 x i64> %59, %103
  %105 = bitcast <4 x i64> %104 to <8 x i32>
  %106 = shufflevector <8 x i32> %105, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %107 = bitcast <8 x i32> %106 to <4 x i64>
  %108 = and <4 x i64> %104, splat (i64 4294967295)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = add <4 x i64> %99, %103
  %112 = add <4 x i64> %111, %110
  %113 = getelementptr inbounds nuw i8, ptr %102, i64 32
  %114 = load <4 x i64>, ptr %113, align 1
  %115 = xor <4 x i64> %60, %114
  %116 = bitcast <4 x i64> %115 to <8 x i32>
  %117 = shufflevector <8 x i32> %116, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %118 = bitcast <8 x i32> %117 to <4 x i64>
  %119 = and <4 x i64> %115, splat (i64 4294967295)
  %120 = and <4 x i64> %118, splat (i64 4294967295)
  %121 = mul nuw <4 x i64> %120, %119
  %122 = add <4 x i64> %98, %114
  %123 = add <4 x i64> %122, %121
  %124 = getelementptr inbounds nuw i8, ptr %102, i64 64
  %125 = load <4 x i64>, ptr %124, align 1
  %126 = xor <4 x i64> %61, %125
  %127 = bitcast <4 x i64> %126 to <8 x i32>
  %128 = shufflevector <8 x i32> %127, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %129 = bitcast <8 x i32> %128 to <4 x i64>
  %130 = and <4 x i64> %126, splat (i64 4294967295)
  %131 = and <4 x i64> %129, splat (i64 4294967295)
  %132 = mul nuw <4 x i64> %131, %130
  %133 = add <4 x i64> %112, %125
  %134 = add <4 x i64> %133, %132
  %135 = getelementptr inbounds nuw i8, ptr %102, i64 96
  %136 = load <4 x i64>, ptr %135, align 1
  %137 = xor <4 x i64> %63, %136
  %138 = bitcast <4 x i64> %137 to <8 x i32>
  %139 = shufflevector <8 x i32> %138, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %140 = bitcast <8 x i32> %139 to <4 x i64>
  %141 = and <4 x i64> %137, splat (i64 4294967295)
  %142 = and <4 x i64> %140, splat (i64 4294967295)
  %143 = mul nuw <4 x i64> %142, %141
  %144 = add <4 x i64> %123, %136
  %145 = add <4 x i64> %144, %143
  %146 = getelementptr inbounds nuw i8, ptr %102, i64 128
  %147 = load <4 x i64>, ptr %146, align 1
  %148 = xor <4 x i64> %64, %147
  %149 = bitcast <4 x i64> %148 to <8 x i32>
  %150 = shufflevector <8 x i32> %149, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %151 = bitcast <8 x i32> %150 to <4 x i64>
  %152 = and <4 x i64> %148, splat (i64 4294967295)
  %153 = and <4 x i64> %151, splat (i64 4294967295)
  %154 = mul nuw <4 x i64> %153, %152
  %155 = add <4 x i64> %134, %147
  %156 = add <4 x i64> %155, %154
  %157 = getelementptr inbounds nuw i8, ptr %102, i64 160
  %158 = load <4 x i64>, ptr %157, align 1
  %159 = xor <4 x i64> %66, %158
  %160 = bitcast <4 x i64> %159 to <8 x i32>
  %161 = shufflevector <8 x i32> %160, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %162 = bitcast <8 x i32> %161 to <4 x i64>
  %163 = and <4 x i64> %159, splat (i64 4294967295)
  %164 = and <4 x i64> %162, splat (i64 4294967295)
  %165 = mul nuw <4 x i64> %164, %163
  %166 = add <4 x i64> %145, %158
  %167 = add <4 x i64> %166, %165
  %168 = getelementptr inbounds nuw i8, ptr %102, i64 192
  %169 = load <4 x i64>, ptr %168, align 1
  %170 = xor <4 x i64> %68, %169
  %171 = bitcast <4 x i64> %170 to <8 x i32>
  %172 = shufflevector <8 x i32> %171, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %173 = bitcast <8 x i32> %172 to <4 x i64>
  %174 = and <4 x i64> %170, splat (i64 4294967295)
  %175 = and <4 x i64> %173, splat (i64 4294967295)
  %176 = mul nuw <4 x i64> %175, %174
  %177 = add <4 x i64> %156, %169
  %178 = add <4 x i64> %177, %176
  %179 = getelementptr inbounds nuw i8, ptr %102, i64 224
  %180 = load <4 x i64>, ptr %179, align 1
  %181 = xor <4 x i64> %70, %180
  %182 = bitcast <4 x i64> %181 to <8 x i32>
  %183 = shufflevector <8 x i32> %182, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %184 = bitcast <8 x i32> %183 to <4 x i64>
  %185 = and <4 x i64> %181, splat (i64 4294967295)
  %186 = and <4 x i64> %184, splat (i64 4294967295)
  %187 = mul nuw <4 x i64> %186, %185
  %188 = add <4 x i64> %167, %180
  %189 = add <4 x i64> %188, %187
  %190 = getelementptr inbounds nuw i8, ptr %102, i64 256
  %191 = load <4 x i64>, ptr %190, align 1
  %192 = xor <4 x i64> %60, %191
  %193 = bitcast <4 x i64> %192 to <8 x i32>
  %194 = shufflevector <8 x i32> %193, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %195 = bitcast <8 x i32> %194 to <4 x i64>
  %196 = and <4 x i64> %192, splat (i64 4294967295)
  %197 = and <4 x i64> %195, splat (i64 4294967295)
  %198 = mul nuw <4 x i64> %197, %196
  %199 = add <4 x i64> %178, %191
  %200 = add <4 x i64> %199, %198
  %201 = getelementptr inbounds nuw i8, ptr %102, i64 288
  %202 = load <4 x i64>, ptr %201, align 1
  %203 = xor <4 x i64> %72, %202
  %204 = bitcast <4 x i64> %203 to <8 x i32>
  %205 = shufflevector <8 x i32> %204, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %206 = bitcast <8 x i32> %205 to <4 x i64>
  %207 = and <4 x i64> %203, splat (i64 4294967295)
  %208 = and <4 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <4 x i64> %208, %207
  %210 = add <4 x i64> %189, %202
  %211 = add <4 x i64> %210, %209
  %212 = getelementptr inbounds nuw i8, ptr %102, i64 320
  %213 = load <4 x i64>, ptr %212, align 1
  %214 = xor <4 x i64> %63, %213
  %215 = bitcast <4 x i64> %214 to <8 x i32>
  %216 = shufflevector <8 x i32> %215, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %217 = bitcast <8 x i32> %216 to <4 x i64>
  %218 = and <4 x i64> %214, splat (i64 4294967295)
  %219 = and <4 x i64> %217, splat (i64 4294967295)
  %220 = mul nuw <4 x i64> %219, %218
  %221 = add <4 x i64> %200, %213
  %222 = add <4 x i64> %221, %220
  %223 = getelementptr inbounds nuw i8, ptr %102, i64 352
  %224 = load <4 x i64>, ptr %223, align 1
  %225 = xor <4 x i64> %74, %224
  %226 = bitcast <4 x i64> %225 to <8 x i32>
  %227 = shufflevector <8 x i32> %226, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %228 = bitcast <8 x i32> %227 to <4 x i64>
  %229 = and <4 x i64> %225, splat (i64 4294967295)
  %230 = and <4 x i64> %228, splat (i64 4294967295)
  %231 = mul nuw <4 x i64> %230, %229
  %232 = add <4 x i64> %211, %224
  %233 = add <4 x i64> %232, %231
  %234 = getelementptr inbounds nuw i8, ptr %102, i64 384
  %235 = load <4 x i64>, ptr %234, align 1
  %236 = xor <4 x i64> %66, %235
  %237 = bitcast <4 x i64> %236 to <8 x i32>
  %238 = shufflevector <8 x i32> %237, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %239 = bitcast <8 x i32> %238 to <4 x i64>
  %240 = and <4 x i64> %236, splat (i64 4294967295)
  %241 = and <4 x i64> %239, splat (i64 4294967295)
  %242 = mul nuw <4 x i64> %241, %240
  %243 = add <4 x i64> %222, %235
  %244 = add <4 x i64> %243, %242
  %245 = getelementptr inbounds nuw i8, ptr %102, i64 416
  %246 = load <4 x i64>, ptr %245, align 1
  %247 = xor <4 x i64> %76, %246
  %248 = bitcast <4 x i64> %247 to <8 x i32>
  %249 = shufflevector <8 x i32> %248, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %250 = bitcast <8 x i32> %249 to <4 x i64>
  %251 = and <4 x i64> %247, splat (i64 4294967295)
  %252 = and <4 x i64> %250, splat (i64 4294967295)
  %253 = mul nuw <4 x i64> %252, %251
  %254 = add <4 x i64> %233, %246
  %255 = add <4 x i64> %254, %253
  %256 = getelementptr inbounds nuw i8, ptr %102, i64 448
  %257 = load <4 x i64>, ptr %256, align 1
  %258 = xor <4 x i64> %70, %257
  %259 = bitcast <4 x i64> %258 to <8 x i32>
  %260 = shufflevector <8 x i32> %259, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %261 = bitcast <8 x i32> %260 to <4 x i64>
  %262 = and <4 x i64> %258, splat (i64 4294967295)
  %263 = and <4 x i64> %261, splat (i64 4294967295)
  %264 = mul nuw <4 x i64> %263, %262
  %265 = add <4 x i64> %244, %257
  %266 = add <4 x i64> %265, %264
  %267 = getelementptr inbounds nuw i8, ptr %102, i64 480
  %268 = load <4 x i64>, ptr %267, align 1
  %269 = xor <4 x i64> %78, %268
  %270 = bitcast <4 x i64> %269 to <8 x i32>
  %271 = shufflevector <8 x i32> %270, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %272 = bitcast <8 x i32> %271 to <4 x i64>
  %273 = and <4 x i64> %269, splat (i64 4294967295)
  %274 = and <4 x i64> %272, splat (i64 4294967295)
  %275 = mul nuw <4 x i64> %274, %273
  %276 = add <4 x i64> %255, %268
  %277 = add <4 x i64> %276, %275
  %278 = getelementptr inbounds nuw i8, ptr %102, i64 512
  %279 = load <4 x i64>, ptr %278, align 1
  %280 = xor <4 x i64> %72, %279
  %281 = bitcast <4 x i64> %280 to <8 x i32>
  %282 = shufflevector <8 x i32> %281, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %283 = bitcast <8 x i32> %282 to <4 x i64>
  %284 = and <4 x i64> %280, splat (i64 4294967295)
  %285 = and <4 x i64> %283, splat (i64 4294967295)
  %286 = mul nuw <4 x i64> %285, %284
  %287 = add <4 x i64> %266, %279
  %288 = add <4 x i64> %287, %286
  %289 = getelementptr inbounds nuw i8, ptr %102, i64 544
  %290 = load <4 x i64>, ptr %289, align 1
  %291 = xor <4 x i64> %80, %290
  %292 = bitcast <4 x i64> %291 to <8 x i32>
  %293 = shufflevector <8 x i32> %292, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %294 = bitcast <8 x i32> %293 to <4 x i64>
  %295 = and <4 x i64> %291, splat (i64 4294967295)
  %296 = and <4 x i64> %294, splat (i64 4294967295)
  %297 = mul nuw <4 x i64> %296, %295
  %298 = add <4 x i64> %277, %290
  %299 = add <4 x i64> %298, %297
  %300 = getelementptr inbounds nuw i8, ptr %102, i64 576
  %301 = load <4 x i64>, ptr %300, align 1
  %302 = xor <4 x i64> %74, %301
  %303 = bitcast <4 x i64> %302 to <8 x i32>
  %304 = shufflevector <8 x i32> %303, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %305 = bitcast <8 x i32> %304 to <4 x i64>
  %306 = and <4 x i64> %302, splat (i64 4294967295)
  %307 = and <4 x i64> %305, splat (i64 4294967295)
  %308 = mul nuw <4 x i64> %307, %306
  %309 = add <4 x i64> %288, %301
  %310 = add <4 x i64> %309, %308
  %311 = getelementptr inbounds nuw i8, ptr %102, i64 608
  %312 = load <4 x i64>, ptr %311, align 1
  %313 = xor <4 x i64> %82, %312
  %314 = bitcast <4 x i64> %313 to <8 x i32>
  %315 = shufflevector <8 x i32> %314, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %316 = bitcast <8 x i32> %315 to <4 x i64>
  %317 = and <4 x i64> %313, splat (i64 4294967295)
  %318 = and <4 x i64> %316, splat (i64 4294967295)
  %319 = mul nuw <4 x i64> %318, %317
  %320 = add <4 x i64> %299, %312
  %321 = add <4 x i64> %320, %319
  %322 = getelementptr inbounds nuw i8, ptr %102, i64 640
  %323 = load <4 x i64>, ptr %322, align 1
  %324 = xor <4 x i64> %76, %323
  %325 = bitcast <4 x i64> %324 to <8 x i32>
  %326 = shufflevector <8 x i32> %325, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %327 = bitcast <8 x i32> %326 to <4 x i64>
  %328 = and <4 x i64> %324, splat (i64 4294967295)
  %329 = and <4 x i64> %327, splat (i64 4294967295)
  %330 = mul nuw <4 x i64> %329, %328
  %331 = add <4 x i64> %310, %323
  %332 = add <4 x i64> %331, %330
  %333 = getelementptr inbounds nuw i8, ptr %102, i64 672
  %334 = load <4 x i64>, ptr %333, align 1
  %335 = xor <4 x i64> %84, %334
  %336 = bitcast <4 x i64> %335 to <8 x i32>
  %337 = shufflevector <8 x i32> %336, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %338 = bitcast <8 x i32> %337 to <4 x i64>
  %339 = and <4 x i64> %335, splat (i64 4294967295)
  %340 = and <4 x i64> %338, splat (i64 4294967295)
  %341 = mul nuw <4 x i64> %340, %339
  %342 = add <4 x i64> %321, %334
  %343 = add <4 x i64> %342, %341
  %344 = getelementptr inbounds nuw i8, ptr %102, i64 704
  %345 = load <4 x i64>, ptr %344, align 1
  %346 = xor <4 x i64> %78, %345
  %347 = bitcast <4 x i64> %346 to <8 x i32>
  %348 = shufflevector <8 x i32> %347, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %349 = bitcast <8 x i32> %348 to <4 x i64>
  %350 = and <4 x i64> %346, splat (i64 4294967295)
  %351 = and <4 x i64> %349, splat (i64 4294967295)
  %352 = mul nuw <4 x i64> %351, %350
  %353 = add <4 x i64> %332, %345
  %354 = add <4 x i64> %353, %352
  %355 = getelementptr inbounds nuw i8, ptr %102, i64 736
  %356 = load <4 x i64>, ptr %355, align 1
  %357 = xor <4 x i64> %86, %356
  %358 = bitcast <4 x i64> %357 to <8 x i32>
  %359 = shufflevector <8 x i32> %358, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %360 = bitcast <8 x i32> %359 to <4 x i64>
  %361 = and <4 x i64> %357, splat (i64 4294967295)
  %362 = and <4 x i64> %360, splat (i64 4294967295)
  %363 = mul nuw <4 x i64> %362, %361
  %364 = add <4 x i64> %343, %356
  %365 = add <4 x i64> %364, %363
  %366 = getelementptr inbounds nuw i8, ptr %102, i64 768
  %367 = load <4 x i64>, ptr %366, align 1
  %368 = xor <4 x i64> %80, %367
  %369 = bitcast <4 x i64> %368 to <8 x i32>
  %370 = shufflevector <8 x i32> %369, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %371 = bitcast <8 x i32> %370 to <4 x i64>
  %372 = and <4 x i64> %368, splat (i64 4294967295)
  %373 = and <4 x i64> %371, splat (i64 4294967295)
  %374 = mul nuw <4 x i64> %373, %372
  %375 = add <4 x i64> %354, %367
  %376 = add <4 x i64> %375, %374
  %377 = getelementptr inbounds nuw i8, ptr %102, i64 800
  %378 = load <4 x i64>, ptr %377, align 1
  %379 = xor <4 x i64> %88, %378
  %380 = bitcast <4 x i64> %379 to <8 x i32>
  %381 = shufflevector <8 x i32> %380, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %382 = bitcast <8 x i32> %381 to <4 x i64>
  %383 = and <4 x i64> %379, splat (i64 4294967295)
  %384 = and <4 x i64> %382, splat (i64 4294967295)
  %385 = mul nuw <4 x i64> %384, %383
  %386 = add <4 x i64> %365, %378
  %387 = add <4 x i64> %386, %385
  %388 = getelementptr inbounds nuw i8, ptr %102, i64 832
  %389 = load <4 x i64>, ptr %388, align 1
  %390 = xor <4 x i64> %82, %389
  %391 = bitcast <4 x i64> %390 to <8 x i32>
  %392 = shufflevector <8 x i32> %391, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %393 = bitcast <8 x i32> %392 to <4 x i64>
  %394 = and <4 x i64> %390, splat (i64 4294967295)
  %395 = and <4 x i64> %393, splat (i64 4294967295)
  %396 = mul nuw <4 x i64> %395, %394
  %397 = add <4 x i64> %376, %389
  %398 = add <4 x i64> %397, %396
  %399 = getelementptr inbounds nuw i8, ptr %102, i64 864
  %400 = load <4 x i64>, ptr %399, align 1
  %401 = xor <4 x i64> %90, %400
  %402 = bitcast <4 x i64> %401 to <8 x i32>
  %403 = shufflevector <8 x i32> %402, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %404 = bitcast <8 x i32> %403 to <4 x i64>
  %405 = and <4 x i64> %401, splat (i64 4294967295)
  %406 = and <4 x i64> %404, splat (i64 4294967295)
  %407 = mul nuw <4 x i64> %406, %405
  %408 = add <4 x i64> %387, %400
  %409 = add <4 x i64> %408, %407
  %410 = getelementptr inbounds nuw i8, ptr %102, i64 896
  %411 = load <4 x i64>, ptr %410, align 1
  %412 = xor <4 x i64> %84, %411
  %413 = bitcast <4 x i64> %412 to <8 x i32>
  %414 = shufflevector <8 x i32> %413, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %415 = bitcast <8 x i32> %414 to <4 x i64>
  %416 = and <4 x i64> %412, splat (i64 4294967295)
  %417 = and <4 x i64> %415, splat (i64 4294967295)
  %418 = mul nuw <4 x i64> %417, %416
  %419 = add <4 x i64> %398, %411
  %420 = add <4 x i64> %419, %418
  %421 = getelementptr inbounds nuw i8, ptr %102, i64 928
  %422 = load <4 x i64>, ptr %421, align 1
  %423 = xor <4 x i64> %92, %422
  %424 = bitcast <4 x i64> %423 to <8 x i32>
  %425 = shufflevector <8 x i32> %424, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %426 = bitcast <8 x i32> %425 to <4 x i64>
  %427 = and <4 x i64> %423, splat (i64 4294967295)
  %428 = and <4 x i64> %426, splat (i64 4294967295)
  %429 = mul nuw <4 x i64> %428, %427
  %430 = add <4 x i64> %409, %422
  %431 = add <4 x i64> %430, %429
  %432 = getelementptr inbounds nuw i8, ptr %102, i64 960
  %433 = load <4 x i64>, ptr %432, align 1
  %434 = xor <4 x i64> %86, %433
  %435 = bitcast <4 x i64> %434 to <8 x i32>
  %436 = shufflevector <8 x i32> %435, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %437 = bitcast <8 x i32> %436 to <4 x i64>
  %438 = and <4 x i64> %434, splat (i64 4294967295)
  %439 = and <4 x i64> %437, splat (i64 4294967295)
  %440 = mul nuw <4 x i64> %439, %438
  %441 = add <4 x i64> %420, %433
  %442 = add <4 x i64> %441, %440
  %443 = getelementptr inbounds nuw i8, ptr %102, i64 992
  %444 = load <4 x i64>, ptr %443, align 1
  %445 = xor <4 x i64> %94, %444
  %446 = bitcast <4 x i64> %445 to <8 x i32>
  %447 = shufflevector <8 x i32> %446, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %448 = bitcast <8 x i32> %447 to <4 x i64>
  %449 = and <4 x i64> %445, splat (i64 4294967295)
  %450 = and <4 x i64> %448, splat (i64 4294967295)
  %451 = mul nuw <4 x i64> %450, %449
  %452 = add <4 x i64> %431, %444
  %453 = add <4 x i64> %452, %451
  %454 = lshr <4 x i64> %442, splat (i64 47)
  %455 = xor <4 x i64> %88, %454
  %456 = xor <4 x i64> %455, %442
  %457 = and <4 x i64> %456, splat (i64 4294967295)
  %458 = mul nuw <4 x i64> %457, splat (i64 2654435761)
  %459 = bitcast <4 x i64> %456 to <8 x i32>
  %460 = shufflevector <8 x i32> %459, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %461 = bitcast <8 x i32> %460 to <4 x i64>
  %462 = mul <4 x i64> %461, splat (i64 -7046029290881679360)
  %463 = add <4 x i64> %462, %458
  %464 = lshr <4 x i64> %453, splat (i64 47)
  %465 = xor <4 x i64> %96, %464
  %466 = xor <4 x i64> %465, %453
  %467 = and <4 x i64> %466, splat (i64 4294967295)
  %468 = mul nuw <4 x i64> %467, splat (i64 2654435761)
  %469 = bitcast <4 x i64> %466 to <8 x i32>
  %470 = shufflevector <8 x i32> %469, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %471 = bitcast <8 x i32> %470 to <4 x i64>
  %472 = mul <4 x i64> %471, splat (i64 -7046029290881679360)
  %473 = add <4 x i64> %472, %468
  %474 = add nuw nsw i64 %100, 1
  %475 = icmp eq i64 %474, %54
  br i1 %475, label %476, label %97

476:                                              ; preds = %97, %6
  %477 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %473, %97 ]
  %478 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %463, %97 ]
  %479 = and i64 %1, -1024
  %480 = lshr i64 %1, 6
  %481 = and i64 %480, 15
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 %479
  %483 = icmp eq i64 %481, 0
  br i1 %483, label %518, label %484

484:                                              ; preds = %476, %484
  %485 = phi <4 x i64> [ %515, %484 ], [ %477, %476 ]
  %486 = phi <4 x i64> [ %502, %484 ], [ %478, %476 ]
  %487 = phi i64 [ %516, %484 ], [ 0, %476 ]
  %488 = shl i64 %487, 6
  %489 = getelementptr inbounds nuw i8, ptr %482, i64 %488
  %490 = shl i64 %487, 3
  %491 = getelementptr inbounds nuw i8, ptr %4, i64 %490
  %492 = load <4 x i64>, ptr %489, align 1
  %493 = load <4 x i64>, ptr %491, align 8
  %494 = xor <4 x i64> %493, %492
  %495 = bitcast <4 x i64> %494 to <8 x i32>
  %496 = shufflevector <8 x i32> %495, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %497 = bitcast <8 x i32> %496 to <4 x i64>
  %498 = and <4 x i64> %494, splat (i64 4294967295)
  %499 = and <4 x i64> %497, splat (i64 4294967295)
  %500 = mul nuw <4 x i64> %499, %498
  %501 = add <4 x i64> %486, %492
  %502 = add <4 x i64> %501, %500
  %503 = getelementptr inbounds nuw i8, ptr %489, i64 32
  %504 = load <4 x i64>, ptr %503, align 1
  %505 = getelementptr inbounds nuw i8, ptr %491, i64 32
  %506 = load <4 x i64>, ptr %505, align 8
  %507 = xor <4 x i64> %506, %504
  %508 = bitcast <4 x i64> %507 to <8 x i32>
  %509 = shufflevector <8 x i32> %508, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %510 = bitcast <8 x i32> %509 to <4 x i64>
  %511 = and <4 x i64> %507, splat (i64 4294967295)
  %512 = and <4 x i64> %510, splat (i64 4294967295)
  %513 = mul nuw <4 x i64> %512, %511
  %514 = add <4 x i64> %485, %504
  %515 = add <4 x i64> %514, %513
  %516 = add nuw nsw i64 %487, 1
  %517 = icmp eq i64 %516, %481
  br i1 %517, label %518, label %484

518:                                              ; preds = %484, %476
  %519 = phi <4 x i64> [ %477, %476 ], [ %515, %484 ]
  %520 = phi <4 x i64> [ %478, %476 ], [ %502, %484 ]
  %521 = and i64 %1, 63
  %522 = icmp eq i64 %521, 0
  br i1 %522, label %551, label %523

523:                                              ; preds = %518
  %524 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %525 = getelementptr inbounds i8, ptr %524, i64 -64
  %526 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %527 = load <4 x i64>, ptr %525, align 1
  %528 = load <4 x i64>, ptr %526, align 1
  %529 = xor <4 x i64> %528, %527
  %530 = bitcast <4 x i64> %529 to <8 x i32>
  %531 = shufflevector <8 x i32> %530, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %532 = bitcast <8 x i32> %531 to <4 x i64>
  %533 = and <4 x i64> %529, splat (i64 4294967295)
  %534 = and <4 x i64> %532, splat (i64 4294967295)
  %535 = mul nuw <4 x i64> %534, %533
  %536 = add <4 x i64> %520, %527
  %537 = add <4 x i64> %536, %535
  %538 = getelementptr inbounds i8, ptr %524, i64 -32
  %539 = load <4 x i64>, ptr %538, align 1
  %540 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %541 = load <4 x i64>, ptr %540, align 1
  %542 = xor <4 x i64> %541, %539
  %543 = bitcast <4 x i64> %542 to <8 x i32>
  %544 = shufflevector <8 x i32> %543, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %545 = bitcast <8 x i32> %544 to <4 x i64>
  %546 = and <4 x i64> %542, splat (i64 4294967295)
  %547 = and <4 x i64> %545, splat (i64 4294967295)
  %548 = mul nuw <4 x i64> %547, %546
  %549 = add <4 x i64> %519, %539
  %550 = add <4 x i64> %549, %548
  br label %551

551:                                              ; preds = %523, %518
  %552 = phi <4 x i64> [ %519, %518 ], [ %550, %523 ]
  %553 = phi <4 x i64> [ %520, %518 ], [ %537, %523 ]
  %554 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %555 = mul i64 %1, -7046029288634856825
  %556 = extractelement <4 x i64> %553, i64 0
  %557 = load i64, ptr %554, align 1
  %558 = xor i64 %557, %556
  %559 = extractelement <4 x i64> %553, i64 1
  %560 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %561 = load i64, ptr %560, align 1
  %562 = xor i64 %561, %559
  %563 = zext i64 %558 to i128
  %564 = zext i64 %562 to i128
  %565 = mul nuw i128 %564, %563
  %566 = lshr i128 %565, 64
  %567 = xor i128 %566, %565
  %568 = trunc i128 %567 to i64
  %569 = add i64 %555, %568
  %570 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %571 = extractelement <4 x i64> %553, i64 2
  %572 = load i64, ptr %570, align 1
  %573 = xor i64 %572, %571
  %574 = extractelement <4 x i64> %553, i64 3
  %575 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %576 = load i64, ptr %575, align 1
  %577 = xor i64 %576, %574
  %578 = zext i64 %573 to i128
  %579 = zext i64 %577 to i128
  %580 = mul nuw i128 %579, %578
  %581 = lshr i128 %580, 64
  %582 = xor i128 %581, %580
  %583 = trunc i128 %582 to i64
  %584 = add i64 %569, %583
  %585 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %586 = extractelement <4 x i64> %552, i64 0
  %587 = load i64, ptr %585, align 1
  %588 = xor i64 %587, %586
  %589 = extractelement <4 x i64> %552, i64 1
  %590 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %591 = load i64, ptr %590, align 1
  %592 = xor i64 %591, %589
  %593 = zext i64 %588 to i128
  %594 = zext i64 %592 to i128
  %595 = mul nuw i128 %594, %593
  %596 = lshr i128 %595, 64
  %597 = xor i128 %596, %595
  %598 = trunc i128 %597 to i64
  %599 = add i64 %584, %598
  %600 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %601 = extractelement <4 x i64> %552, i64 2
  %602 = load i64, ptr %600, align 1
  %603 = xor i64 %602, %601
  %604 = extractelement <4 x i64> %552, i64 3
  %605 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %606 = load i64, ptr %605, align 1
  %607 = xor i64 %606, %604
  %608 = zext i64 %603 to i128
  %609 = zext i64 %607 to i128
  %610 = mul nuw i128 %609, %608
  %611 = lshr i128 %610, 64
  %612 = xor i128 %611, %610
  %613 = trunc i128 %612 to i64
  %614 = add i64 %599, %613
  %615 = lshr i64 %614, 37
  %616 = xor i64 %615, %614
  %617 = mul i64 %616, 1609587929392839161
  %618 = lshr i64 %617, 32
  %619 = xor i64 %618, %617
  br label %620

620:                                              ; preds = %551, %56
  %621 = phi i64 [ %57, %56 ], [ %619, %551 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #25
  ret i64 %621
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH3_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(576) ptr @malloc(i64 noundef 576) #24
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH3_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #25
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
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr @kSecret, ptr %12, align 64
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 524
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
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %1, ptr %14, align 64
  %15 = trunc i64 %2 to i32
  %16 = add i32 %15, -64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 %16, ptr %17, align 4
  %18 = lshr i32 %16, 3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 524
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
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 128, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 524
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
  store ptr %5, ptr %15, align 64
  br label %65

65:                                               ; preds = %2, %4
  %66 = phi i32 [ 0, %4 ], [ 1, %2 ]
  ret i32 %66
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #16 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %525, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %8 = load i64, ptr %7, align 32
  %9 = add i64 %8, %2
  store i64 %9, ptr %7, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = add i64 %2, %12
  %14 = icmp ult i64 %13, 257
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %18 = trunc i64 %2 to i32
  %19 = load i32, ptr %10, align 8
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
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %33 = load ptr, ptr %32, align 64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 540
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
  %96 = and <4 x i64> %95, splat (i64 4294967295)
  %97 = mul nuw <4 x i64> %96, splat (i64 2654435761)
  %98 = bitcast <4 x i64> %95 to <8 x i32>
  %99 = shufflevector <8 x i32> %98, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %100 = bitcast <8 x i32> %99 to <4 x i64>
  %101 = mul <4 x i64> %100, splat (i64 -7046029290881679360)
  %102 = add <4 x i64> %101, %97
  store <4 x i64> %102, ptr %0, align 32
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %104 = lshr <4 x i64> %89, splat (i64 47)
  %105 = getelementptr inbounds nuw i8, ptr %91, i64 32
  %106 = load <4 x i64>, ptr %105, align 1
  %107 = xor <4 x i64> %106, %104
  %108 = xor <4 x i64> %107, %89
  %109 = and <4 x i64> %108, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, splat (i64 2654435761)
  %111 = bitcast <4 x i64> %108 to <8 x i32>
  %112 = shufflevector <8 x i32> %111, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %113 = bitcast <8 x i32> %112 to <4 x i64>
  %114 = mul <4 x i64> %113, splat (i64 -7046029290881679360)
  %115 = add <4 x i64> %114, %110
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
  store i32 0, ptr %10, align 8
  br label %266

266:                                              ; preds = %264, %21
  %267 = phi ptr [ %28, %264 ], [ %1, %21 ]
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 256
  %269 = icmp ugt ptr %268, %6
  br i1 %269, label %514, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds i8, ptr %6, i64 -256
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %276 = load i32, ptr %272, align 4
  %277 = load i32, ptr %273, align 4
  %278 = load ptr, ptr %274, align 64
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
  %345 = and <4 x i64> %344, splat (i64 4294967295)
  %346 = mul nuw <4 x i64> %345, splat (i64 2654435761)
  %347 = bitcast <4 x i64> %344 to <8 x i32>
  %348 = shufflevector <8 x i32> %347, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %349 = bitcast <8 x i32> %348 to <4 x i64>
  %350 = mul <4 x i64> %349, splat (i64 -7046029290881679360)
  %351 = add <4 x i64> %350, %346
  store <4 x i64> %351, ptr %0, align 32
  %352 = lshr <4 x i64> %339, splat (i64 47)
  %353 = load <4 x i64>, ptr %285, align 1
  %354 = xor <4 x i64> %353, %352
  %355 = xor <4 x i64> %354, %339
  %356 = and <4 x i64> %355, splat (i64 4294967295)
  %357 = mul nuw <4 x i64> %356, splat (i64 2654435761)
  %358 = bitcast <4 x i64> %355 to <8 x i32>
  %359 = shufflevector <8 x i32> %358, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %360 = bitcast <8 x i32> %359 to <4 x i64>
  %361 = mul <4 x i64> %360, splat (i64 -7046029290881679360)
  %362 = add <4 x i64> %361, %357
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
  store i32 %524, ptr %10, align 8
  br label %525

525:                                              ; preds = %523, %3, %514
  %526 = phi i32 [ 1, %3 ], [ 0, %514 ], [ 0, %523 ]
  ret i32 %526
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i64 @XXH3_64bits_digest(ptr noundef readonly %0) local_unnamed_addr #16 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %4 = load i64, ptr %3, align 32
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %318

6:                                                ; preds = %1
  %7 = load <4 x i64>, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %13, label %204

13:                                               ; preds = %6
  %14 = lshr i32 %11, 6
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %17 = load i32, ptr %16, align 16
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 540
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
  %78 = and <4 x i64> %77, splat (i64 4294967295)
  %79 = mul nuw <4 x i64> %78, splat (i64 2654435761)
  %80 = bitcast <4 x i64> %77 to <8 x i32>
  %81 = shufflevector <8 x i32> %80, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %82 = bitcast <8 x i32> %81 to <4 x i64>
  %83 = mul <4 x i64> %82, splat (i64 -7046029290881679360)
  %84 = add <4 x i64> %83, %79
  %85 = lshr <4 x i64> %71, splat (i64 47)
  %86 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %87 = load <4 x i64>, ptr %86, align 1
  %88 = xor <4 x i64> %87, %85
  %89 = xor <4 x i64> %88, %71
  %90 = and <4 x i64> %89, splat (i64 4294967295)
  %91 = mul nuw <4 x i64> %90, splat (i64 2654435761)
  %92 = bitcast <4 x i64> %89 to <8 x i32>
  %93 = shufflevector <8 x i32> %92, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %94 = bitcast <8 x i32> %93 to <4 x i64>
  %95 = mul <4 x i64> %94, splat (i64 -7046029290881679360)
  %96 = add <4 x i64> %95, %91
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
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %208 = load ptr, ptr %207, align 64
  br label %248

209:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #25
  %210 = sub nuw nsw i32 64, %11
  %211 = zext nneg i32 %210 to i64
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %214 = sub nsw i64 0, %211
  %215 = getelementptr inbounds i8, ptr %213, i64 %214
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %215, i64 %211, i1 false)
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 %211
  %217 = zext nneg i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %216, ptr nonnull align 64 %212, i64 %217, i1 false)
  %218 = load ptr, ptr %213, align 64
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 540
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #25
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
  %319 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %320 = load i64, ptr %319, align 8
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
  %549 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %550 = load ptr, ptr %549, align 64
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
define dso_local { i64, i64 } @XXH3_128bits(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #13 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %120

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %40

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
  %19 = mul i64 %11, -7046029288634856825
  %20 = add i64 %19, %18
  %21 = lshr i64 %20, 32
  %22 = xor i64 %21, %16
  %23 = zext i64 %22 to i128
  %24 = mul nuw i128 %23, 14029467366897019727
  %25 = trunc i128 %24 to i64
  %26 = lshr i128 %24, 64
  %27 = trunc nuw i128 %26 to i64
  %28 = mul i64 %20, -4417276706812531889
  %29 = add i64 %28, %27
  %30 = lshr i64 %25, 37
  %31 = xor i64 %30, %25
  %32 = mul i64 %31, 1609587929392839161
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  %35 = lshr i64 %29, 37
  %36 = xor i64 %35, %29
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %115

40:                                               ; preds = %4
  %41 = icmp samesign ugt i64 %1, 3
  br i1 %41, label %42, label %78

42:                                               ; preds = %40
  %43 = load i32, ptr %0, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %45 = getelementptr inbounds i8, ptr %44, i64 -4
  %46 = load i32, ptr %45, align 1
  %47 = zext i32 %43 to i64
  %48 = zext i32 %46 to i64
  %49 = shl nuw i64 %48, 32
  %50 = or disjoint i64 %49, %47
  %51 = xor i64 %50, -4734510112055689544
  %52 = xor i64 %50, 8935565165804498204
  %53 = tail call i64 @llvm.bswap.i64(i64 %52)
  %54 = lshr i64 %51, 51
  %55 = xor i64 %54, %51
  %56 = mul i64 %55, 2654435761
  %57 = add i64 %56, %1
  %58 = lshr i64 %57, 47
  %59 = xor i64 %58, %57
  %60 = mul i64 %59, -4417276706812531889
  %61 = lshr i64 %53, 47
  %62 = xor i64 %61, %53
  %63 = mul i64 %62, -7046029288634856825
  %64 = sub i64 %63, %1
  %65 = lshr i64 %64, 43
  %66 = xor i64 %65, %64
  %67 = mul i64 %66, -8796714831421723037
  %68 = lshr i64 %60, 37
  %69 = xor i64 %68, %60
  %70 = mul i64 %69, 1609587929392839161
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  %73 = lshr i64 %67, 37
  %74 = xor i64 %73, %67
  %75 = mul i64 %74, 1609587929392839161
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  br label %115

78:                                               ; preds = %40
  %79 = icmp eq i64 %1, 0
  br i1 %79, label %115, label %80

80:                                               ; preds = %78
  %81 = load i8, ptr %0, align 1
  %82 = lshr i64 %1, 1
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 %82
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %0, i64 %1
  %86 = getelementptr i8, ptr %85, i64 -1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %81 to i32
  %89 = zext i8 %84 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or disjoint i32 %90, %88
  %92 = zext i8 %87 to i32
  %93 = shl nuw nsw i32 %92, 16
  %94 = or disjoint i32 %91, %93
  %95 = trunc nuw nsw i64 %1 to i32
  %96 = shl nuw nsw i32 %95, 24
  %97 = or disjoint i32 %94, %96
  %98 = xor i32 %97, 963444408
  %99 = zext nneg i32 %98 to i64
  %100 = xor i32 %97, 597969854
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %102 = zext i32 %101 to i64
  %103 = mul i64 %99, -7046029288634856825
  %104 = mul i64 %102, -4417276706812531889
  %105 = lshr i64 %103, 37
  %106 = xor i64 %105, %103
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  %110 = lshr i64 %104, 37
  %111 = xor i64 %110, %104
  %112 = mul i64 %111, 1609587929392839161
  %113 = lshr i64 %112, 32
  %114 = xor i64 %113, %112
  br label %115

115:                                              ; preds = %6, %42, %78, %80
  %116 = phi i64 [ %39, %6 ], [ %77, %42 ], [ %114, %80 ], [ 0, %78 ]
  %117 = phi i64 [ %34, %6 ], [ %72, %42 ], [ %109, %80 ], [ 0, %78 ]
  %118 = insertvalue { i64, i64 } poison, i64 %117, 0
  %119 = insertvalue { i64, i64 } %118, i64 %116, 1
  br label %270

120:                                              ; preds = %2
  %121 = icmp ult i64 %1, 129
  br i1 %121, label %122, label %264

122:                                              ; preds = %120
  %123 = mul i64 %1, -7046029288634856825
  %124 = icmp samesign ugt i64 %1, 32
  br i1 %124, label %125, label %216

125:                                              ; preds = %122
  %126 = icmp samesign ugt i64 %1, 64
  br i1 %126, label %127, label %186

127:                                              ; preds = %125
  %128 = icmp samesign ugt i64 %1, 96
  br i1 %128, label %129, label %156

129:                                              ; preds = %127
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %131 = load i64, ptr %130, align 1
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %133 = load i64, ptr %132, align 1
  %134 = xor i64 %131, 4554437623014685352
  %135 = xor i64 %133, 2111919702937427193
  %136 = zext i64 %134 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %123, %141
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %144 = getelementptr inbounds i8, ptr %143, i64 -64
  %145 = load i64, ptr %144, align 1
  %146 = getelementptr inbounds i8, ptr %143, i64 -56
  %147 = load i64, ptr %146, align 1
  %148 = xor i64 %145, 3556072174620004746
  %149 = xor i64 %147, 7238261902898274248
  %150 = zext i64 %148 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  br label %156

156:                                              ; preds = %129, %127
  %157 = phi i64 [ %155, %129 ], [ 0, %127 ]
  %158 = phi i64 [ %142, %129 ], [ %123, %127 ]
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %162 = load i64, ptr %161, align 1
  %163 = xor i64 %160, -3818837453329782724
  %164 = xor i64 %162, -6688317018830679928
  %165 = zext i64 %163 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %158, %170
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %173 = getelementptr inbounds i8, ptr %172, i64 -48
  %174 = load i64, ptr %173, align 1
  %175 = getelementptr inbounds i8, ptr %172, i64 -40
  %176 = load i64, ptr %175, align 1
  %177 = xor i64 %174, 5690594596133299313
  %178 = xor i64 %176, -2833645246901970632
  %179 = zext i64 %177 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %157, %184
  br label %186

186:                                              ; preds = %156, %125
  %187 = phi i64 [ %185, %156 ], [ 0, %125 ]
  %188 = phi i64 [ %171, %156 ], [ %123, %125 ]
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %190 = load i64, ptr %189, align 1
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %192 = load i64, ptr %191, align 1
  %193 = xor i64 %190, 8711581037947681227
  %194 = xor i64 %192, 2410270004345854594
  %195 = zext i64 %193 to i128
  %196 = zext i64 %194 to i128
  %197 = mul nuw i128 %196, %195
  %198 = lshr i128 %197, 64
  %199 = xor i128 %198, %197
  %200 = trunc i128 %199 to i64
  %201 = add i64 %188, %200
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %203 = getelementptr inbounds i8, ptr %202, i64 -32
  %204 = load i64, ptr %203, align 1
  %205 = getelementptr inbounds i8, ptr %202, i64 -24
  %206 = load i64, ptr %205, align 1
  %207 = xor i64 %204, -8204357891075471176
  %208 = xor i64 %206, 5487137525590930912
  %209 = zext i64 %207 to i128
  %210 = zext i64 %208 to i128
  %211 = mul nuw i128 %210, %209
  %212 = lshr i128 %211, 64
  %213 = xor i128 %212, %211
  %214 = trunc i128 %213 to i64
  %215 = add i64 %187, %214
  br label %216

216:                                              ; preds = %122, %186
  %217 = phi i64 [ %215, %186 ], [ 0, %122 ]
  %218 = phi i64 [ %201, %186 ], [ %123, %122 ]
  %219 = load i64, ptr %0, align 1
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %221 = load i64, ptr %220, align 1
  %222 = xor i64 %219, -4734510112055689544
  %223 = xor i64 %221, 2066345149520216444
  %224 = zext i64 %222 to i128
  %225 = zext i64 %223 to i128
  %226 = mul nuw i128 %225, %224
  %227 = lshr i128 %226, 64
  %228 = xor i128 %227, %226
  %229 = trunc i128 %228 to i64
  %230 = add i64 %218, %229
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %232 = getelementptr inbounds i8, ptr %231, i64 -16
  %233 = load i64, ptr %232, align 1
  %234 = getelementptr inbounds i8, ptr %231, i64 -8
  %235 = load i64, ptr %234, align 1
  %236 = xor i64 %233, -2623469361688619810
  %237 = xor i64 %235, 2262974939099578482
  %238 = zext i64 %236 to i128
  %239 = zext i64 %237 to i128
  %240 = mul nuw i128 %239, %238
  %241 = lshr i128 %240, 64
  %242 = xor i128 %241, %240
  %243 = trunc i128 %242 to i64
  %244 = add i64 %217, %243
  %245 = add i64 %244, %230
  %246 = mul i64 %230, -7046029288634856825
  %247 = mul i64 %244, -8796714831421723037
  %248 = mul i64 %1, -4417276706812531889
  %249 = add i64 %246, %248
  %250 = add i64 %249, %247
  %251 = lshr i64 %245, 37
  %252 = xor i64 %251, %245
  %253 = mul i64 %252, 1609587929392839161
  %254 = lshr i64 %253, 32
  %255 = xor i64 %254, %253
  %256 = lshr i64 %250, 37
  %257 = xor i64 %256, %250
  %258 = mul i64 %257, 1609587929392839161
  %259 = lshr i64 %258, 32
  %260 = xor i64 %259, %258
  %261 = sub i64 0, %260
  %262 = insertvalue { i64, i64 } poison, i64 %255, 0
  %263 = insertvalue { i64, i64 } %262, i64 %261, 1
  br label %270

264:                                              ; preds = %120
  %265 = icmp ult i64 %1, 241
  br i1 %265, label %266, label %268

266:                                              ; preds = %264
  %267 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef 0)
  br label %270

268:                                              ; preds = %264
  %269 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %270

270:                                              ; preds = %268, %266, %216, %115
  %271 = phi { i64, i64 } [ %119, %115 ], [ %263, %216 ], [ %267, %266 ], [ %269, %268 ]
  ret { i64, i64 } %271
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #14 {
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
  %30 = sub i64 %29, %3
  %31 = xor i64 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = add i64 %33, %3
  %35 = xor i64 %34, %28
  %36 = zext i64 %31 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %44 = load i64, ptr %42, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %46 = load i64, ptr %45, align 1
  %47 = load i64, ptr %43, align 1
  %48 = add i64 %47, %3
  %49 = xor i64 %48, %44
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %51 = load i64, ptr %50, align 1
  %52 = sub i64 %51, %3
  %53 = xor i64 %52, %46
  %54 = zext i64 %49 to i128
  %55 = zext i64 %53 to i128
  %56 = mul nuw i128 %55, %54
  %57 = lshr i128 %56, 64
  %58 = xor i128 %57, %56
  %59 = trunc i128 %58 to i64
  %60 = add i64 %23, %59
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %63 = load i64, ptr %61, align 1
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %65 = load i64, ptr %64, align 1
  %66 = load i64, ptr %62, align 1
  %67 = sub i64 %66, %3
  %68 = xor i64 %67, %63
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %70 = load i64, ptr %69, align 1
  %71 = add i64 %70, %3
  %72 = xor i64 %71, %65
  %73 = zext i64 %68 to i128
  %74 = zext i64 %72 to i128
  %75 = mul nuw i128 %74, %73
  %76 = lshr i128 %75, 64
  %77 = xor i128 %76, %75
  %78 = trunc i128 %77 to i64
  %79 = add i64 %41, %78
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %82 = load i64, ptr %80, align 1
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %84 = load i64, ptr %83, align 1
  %85 = load i64, ptr %81, align 1
  %86 = add i64 %85, %3
  %87 = xor i64 %86, %82
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %89 = load i64, ptr %88, align 1
  %90 = sub i64 %89, %3
  %91 = xor i64 %90, %84
  %92 = zext i64 %87 to i128
  %93 = zext i64 %91 to i128
  %94 = mul nuw i128 %93, %92
  %95 = lshr i128 %94, 64
  %96 = xor i128 %95, %94
  %97 = trunc i128 %96 to i64
  %98 = add i64 %60, %97
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %101 = load i64, ptr %99, align 1
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %103 = load i64, ptr %102, align 1
  %104 = load i64, ptr %100, align 1
  %105 = sub i64 %104, %3
  %106 = xor i64 %105, %101
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %108 = load i64, ptr %107, align 1
  %109 = add i64 %108, %3
  %110 = xor i64 %109, %103
  %111 = zext i64 %106 to i128
  %112 = zext i64 %110 to i128
  %113 = mul nuw i128 %112, %111
  %114 = lshr i128 %113, 64
  %115 = xor i128 %114, %113
  %116 = trunc i128 %115 to i64
  %117 = add i64 %79, %116
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %120 = load i64, ptr %118, align 1
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %122 = load i64, ptr %121, align 1
  %123 = load i64, ptr %119, align 1
  %124 = add i64 %123, %3
  %125 = xor i64 %124, %120
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %127 = load i64, ptr %126, align 1
  %128 = sub i64 %127, %3
  %129 = xor i64 %128, %122
  %130 = zext i64 %125 to i128
  %131 = zext i64 %129 to i128
  %132 = mul nuw i128 %131, %130
  %133 = lshr i128 %132, 64
  %134 = xor i128 %133, %132
  %135 = trunc i128 %134 to i64
  %136 = add i64 %98, %135
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %139 = load i64, ptr %137, align 1
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %141 = load i64, ptr %140, align 1
  %142 = load i64, ptr %138, align 1
  %143 = sub i64 %142, %3
  %144 = xor i64 %143, %139
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %146 = load i64, ptr %145, align 1
  %147 = add i64 %146, %3
  %148 = xor i64 %147, %141
  %149 = zext i64 %144 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = add i64 %117, %154
  %156 = lshr i32 %6, 5
  %157 = lshr i64 %136, 37
  %158 = xor i64 %157, %136
  %159 = mul i64 %158, 1609587929392839161
  %160 = lshr i64 %159, 32
  %161 = xor i64 %160, %159
  %162 = lshr i64 %155, 37
  %163 = xor i64 %162, %155
  %164 = mul i64 %163, 1609587929392839161
  %165 = lshr i64 %164, 32
  %166 = xor i64 %165, %164
  %167 = icmp eq i32 %156, 4
  br i1 %167, label %287, label %168

168:                                              ; preds = %4
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %170 = getelementptr i8, ptr %2, i64 3
  %171 = load i64, ptr %169, align 1
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %173 = load i64, ptr %172, align 1
  %174 = load i64, ptr %170, align 1
  %175 = add i64 %174, %3
  %176 = xor i64 %175, %171
  %177 = getelementptr i8, ptr %2, i64 11
  %178 = load i64, ptr %177, align 1
  %179 = sub i64 %178, %3
  %180 = xor i64 %179, %173
  %181 = zext i64 %176 to i128
  %182 = zext i64 %180 to i128
  %183 = mul nuw i128 %182, %181
  %184 = lshr i128 %183, 64
  %185 = xor i128 %184, %183
  %186 = trunc i128 %185 to i64
  %187 = add i64 %161, %186
  %188 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %189 = getelementptr i8, ptr %2, i64 19
  %190 = load i64, ptr %188, align 1
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %192 = load i64, ptr %191, align 1
  %193 = load i64, ptr %189, align 1
  %194 = sub i64 %193, %3
  %195 = xor i64 %194, %190
  %196 = getelementptr i8, ptr %2, i64 27
  %197 = load i64, ptr %196, align 1
  %198 = add i64 %197, %3
  %199 = xor i64 %198, %192
  %200 = zext i64 %195 to i128
  %201 = zext i64 %199 to i128
  %202 = mul nuw i128 %201, %200
  %203 = lshr i128 %202, 64
  %204 = xor i128 %203, %202
  %205 = trunc i128 %204 to i64
  %206 = add i64 %166, %205
  %207 = icmp eq i32 %156, 5
  br i1 %207, label %287, label %208

208:                                              ; preds = %168
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %210 = getelementptr i8, ptr %2, i64 35
  %211 = load i64, ptr %209, align 1
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %213 = load i64, ptr %212, align 1
  %214 = load i64, ptr %210, align 1
  %215 = add i64 %214, %3
  %216 = xor i64 %215, %211
  %217 = getelementptr i8, ptr %2, i64 43
  %218 = load i64, ptr %217, align 1
  %219 = sub i64 %218, %3
  %220 = xor i64 %219, %213
  %221 = zext i64 %216 to i128
  %222 = zext i64 %220 to i128
  %223 = mul nuw i128 %222, %221
  %224 = lshr i128 %223, 64
  %225 = xor i128 %224, %223
  %226 = trunc i128 %225 to i64
  %227 = add i64 %187, %226
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %229 = getelementptr i8, ptr %2, i64 51
  %230 = load i64, ptr %228, align 1
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = sub i64 %233, %3
  %235 = xor i64 %234, %230
  %236 = getelementptr i8, ptr %2, i64 59
  %237 = load i64, ptr %236, align 1
  %238 = add i64 %237, %3
  %239 = xor i64 %238, %232
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %206, %245
  %247 = icmp eq i32 %156, 6
  br i1 %247, label %287, label %248

248:                                              ; preds = %208
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
  %267 = add i64 %227, %266
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %269 = getelementptr i8, ptr %2, i64 83
  %270 = load i64, ptr %268, align 1
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %272 = load i64, ptr %271, align 1
  %273 = load i64, ptr %269, align 1
  %274 = sub i64 %273, %3
  %275 = xor i64 %274, %270
  %276 = getelementptr i8, ptr %2, i64 91
  %277 = load i64, ptr %276, align 1
  %278 = add i64 %277, %3
  %279 = xor i64 %278, %272
  %280 = zext i64 %275 to i128
  %281 = zext i64 %279 to i128
  %282 = mul nuw i128 %281, %280
  %283 = lshr i128 %282, 64
  %284 = xor i128 %283, %282
  %285 = trunc i128 %284 to i64
  %286 = add i64 %246, %285
  br label %287

287:                                              ; preds = %168, %208, %248, %4
  %288 = phi i64 [ %166, %4 ], [ %206, %168 ], [ %246, %208 ], [ %286, %248 ]
  %289 = phi i64 [ %161, %4 ], [ %187, %168 ], [ %227, %208 ], [ %267, %248 ]
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %291 = getelementptr inbounds i8, ptr %290, i64 -16
  %292 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %293 = load i64, ptr %291, align 1
  %294 = getelementptr inbounds i8, ptr %290, i64 -8
  %295 = load i64, ptr %294, align 1
  %296 = load i64, ptr %292, align 1
  %297 = add i64 %296, %3
  %298 = xor i64 %297, %293
  %299 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %300 = load i64, ptr %299, align 1
  %301 = sub i64 %300, %3
  %302 = xor i64 %301, %295
  %303 = zext i64 %298 to i128
  %304 = zext i64 %302 to i128
  %305 = mul nuw i128 %304, %303
  %306 = lshr i128 %305, 64
  %307 = xor i128 %306, %305
  %308 = trunc i128 %307 to i64
  %309 = add i64 %289, %308
  %310 = getelementptr inbounds i8, ptr %290, i64 -32
  %311 = getelementptr inbounds nuw i8, ptr %2, i64 103
  %312 = load i64, ptr %310, align 1
  %313 = getelementptr inbounds i8, ptr %290, i64 -24
  %314 = load i64, ptr %313, align 1
  %315 = load i64, ptr %311, align 1
  %316 = sub i64 %315, %3
  %317 = xor i64 %316, %312
  %318 = getelementptr inbounds nuw i8, ptr %2, i64 111
  %319 = load i64, ptr %318, align 1
  %320 = add i64 %319, %3
  %321 = xor i64 %320, %314
  %322 = zext i64 %317 to i128
  %323 = zext i64 %321 to i128
  %324 = mul nuw i128 %323, %322
  %325 = lshr i128 %324, 64
  %326 = xor i128 %325, %324
  %327 = trunc i128 %326 to i64
  %328 = add i64 %288, %327
  %329 = add i64 %328, %309
  %330 = mul i64 %309, -7046029288634856825
  %331 = mul i64 %328, -8796714831421723037
  %332 = sub i64 %1, %3
  %333 = mul i64 %332, -4417276706812531889
  %334 = add i64 %330, %333
  %335 = add i64 %334, %331
  %336 = lshr i64 %329, 37
  %337 = xor i64 %336, %329
  %338 = mul i64 %337, 1609587929392839161
  %339 = lshr i64 %338, 32
  %340 = xor i64 %339, %338
  %341 = lshr i64 %335, 37
  %342 = xor i64 %341, %335
  %343 = mul i64 %342, 1609587929392839161
  %344 = lshr i64 %343, 32
  %345 = xor i64 %344, %343
  %346 = sub i64 0, %345
  %347 = insertvalue { i64, i64 } poison, i64 %340, 0
  %348 = insertvalue { i64, i64 } %347, i64 %346, 1
  ret { i64, i64 } %348
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1) unnamed_addr #15 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %416, label %5

5:                                                ; preds = %2, %5
  %6 = phi <4 x i64> [ %413, %5 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %7 = phi <4 x i64> [ %403, %5 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %8 = phi i64 [ %414, %5 ], [ 0, %2 ]
  %9 = shl i64 %8, 10
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = load <4 x i64>, ptr %10, align 1
  %12 = xor <4 x i64> %11, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %13 = bitcast <4 x i64> %12 to <8 x i32>
  %14 = shufflevector <8 x i32> %13, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %15 = bitcast <8 x i32> %14 to <4 x i64>
  %16 = and <4 x i64> %12, splat (i64 4294967295)
  %17 = and <4 x i64> %15, splat (i64 4294967295)
  %18 = mul nuw <4 x i64> %17, %16
  %19 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %20 = add <4 x i64> %7, %19
  %21 = add <4 x i64> %20, %18
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %23 = load <4 x i64>, ptr %22, align 1
  %24 = xor <4 x i64> %23, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %25 = bitcast <4 x i64> %24 to <8 x i32>
  %26 = shufflevector <8 x i32> %25, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = and <4 x i64> %24, splat (i64 4294967295)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = shufflevector <4 x i64> %23, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %32 = add <4 x i64> %6, %31
  %33 = add <4 x i64> %32, %30
  %34 = getelementptr inbounds nuw i8, ptr %10, i64 64
  %35 = load <4 x i64>, ptr %34, align 1
  %36 = xor <4 x i64> %35, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %36, splat (i64 4294967295)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %21, %43
  %45 = add <4 x i64> %44, %42
  %46 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %47 = load <4 x i64>, ptr %46, align 1
  %48 = xor <4 x i64> %47, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %49 = bitcast <4 x i64> %48 to <8 x i32>
  %50 = shufflevector <8 x i32> %49, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %51 = bitcast <8 x i32> %50 to <4 x i64>
  %52 = and <4 x i64> %48, splat (i64 4294967295)
  %53 = and <4 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, %52
  %55 = shufflevector <4 x i64> %47, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %56 = add <4 x i64> %33, %55
  %57 = add <4 x i64> %56, %54
  %58 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %59 = load <4 x i64>, ptr %58, align 1
  %60 = xor <4 x i64> %59, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %61 = bitcast <4 x i64> %60 to <8 x i32>
  %62 = shufflevector <8 x i32> %61, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %63 = bitcast <8 x i32> %62 to <4 x i64>
  %64 = and <4 x i64> %60, splat (i64 4294967295)
  %65 = and <4 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, %64
  %67 = shufflevector <4 x i64> %59, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %68 = add <4 x i64> %45, %67
  %69 = add <4 x i64> %68, %66
  %70 = getelementptr inbounds nuw i8, ptr %10, i64 160
  %71 = load <4 x i64>, ptr %70, align 1
  %72 = xor <4 x i64> %71, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %73 = bitcast <4 x i64> %72 to <8 x i32>
  %74 = shufflevector <8 x i32> %73, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  %76 = and <4 x i64> %72, splat (i64 4294967295)
  %77 = and <4 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <4 x i64> %77, %76
  %79 = shufflevector <4 x i64> %71, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %80 = add <4 x i64> %57, %79
  %81 = add <4 x i64> %80, %78
  %82 = getelementptr inbounds nuw i8, ptr %10, i64 192
  %83 = load <4 x i64>, ptr %82, align 1
  %84 = xor <4 x i64> %83, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %85 = bitcast <4 x i64> %84 to <8 x i32>
  %86 = shufflevector <8 x i32> %85, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %87 = bitcast <8 x i32> %86 to <4 x i64>
  %88 = and <4 x i64> %84, splat (i64 4294967295)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = shufflevector <4 x i64> %83, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %92 = add <4 x i64> %69, %91
  %93 = add <4 x i64> %92, %90
  %94 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %95 = load <4 x i64>, ptr %94, align 1
  %96 = xor <4 x i64> %95, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %97 = bitcast <4 x i64> %96 to <8 x i32>
  %98 = shufflevector <8 x i32> %97, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %99 = bitcast <8 x i32> %98 to <4 x i64>
  %100 = and <4 x i64> %96, splat (i64 4294967295)
  %101 = and <4 x i64> %99, splat (i64 4294967295)
  %102 = mul nuw <4 x i64> %101, %100
  %103 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %104 = add <4 x i64> %81, %103
  %105 = add <4 x i64> %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %10, i64 256
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = xor <4 x i64> %107, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %109 = bitcast <4 x i64> %108 to <8 x i32>
  %110 = shufflevector <8 x i32> %109, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %111 = bitcast <8 x i32> %110 to <4 x i64>
  %112 = and <4 x i64> %108, splat (i64 4294967295)
  %113 = and <4 x i64> %111, splat (i64 4294967295)
  %114 = mul nuw <4 x i64> %113, %112
  %115 = shufflevector <4 x i64> %107, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %116 = add <4 x i64> %93, %115
  %117 = add <4 x i64> %116, %114
  %118 = getelementptr inbounds nuw i8, ptr %10, i64 288
  %119 = load <4 x i64>, ptr %118, align 1
  %120 = xor <4 x i64> %119, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %121 = bitcast <4 x i64> %120 to <8 x i32>
  %122 = shufflevector <8 x i32> %121, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %123 = bitcast <8 x i32> %122 to <4 x i64>
  %124 = and <4 x i64> %120, splat (i64 4294967295)
  %125 = and <4 x i64> %123, splat (i64 4294967295)
  %126 = mul nuw <4 x i64> %125, %124
  %127 = shufflevector <4 x i64> %119, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %128 = add <4 x i64> %105, %127
  %129 = add <4 x i64> %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %10, i64 320
  %131 = load <4 x i64>, ptr %130, align 1
  %132 = xor <4 x i64> %131, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %133 = bitcast <4 x i64> %132 to <8 x i32>
  %134 = shufflevector <8 x i32> %133, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %135 = bitcast <8 x i32> %134 to <4 x i64>
  %136 = and <4 x i64> %132, splat (i64 4294967295)
  %137 = and <4 x i64> %135, splat (i64 4294967295)
  %138 = mul nuw <4 x i64> %137, %136
  %139 = shufflevector <4 x i64> %131, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %140 = add <4 x i64> %117, %139
  %141 = add <4 x i64> %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %10, i64 352
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = xor <4 x i64> %143, <i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352>
  %145 = bitcast <4 x i64> %144 to <8 x i32>
  %146 = shufflevector <8 x i32> %145, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %147 = bitcast <8 x i32> %146 to <4 x i64>
  %148 = and <4 x i64> %144, splat (i64 4294967295)
  %149 = and <4 x i64> %147, splat (i64 4294967295)
  %150 = mul nuw <4 x i64> %149, %148
  %151 = shufflevector <4 x i64> %143, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %152 = add <4 x i64> %129, %151
  %153 = add <4 x i64> %152, %150
  %154 = getelementptr inbounds nuw i8, ptr %10, i64 384
  %155 = load <4 x i64>, ptr %154, align 1
  %156 = xor <4 x i64> %155, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %157 = bitcast <4 x i64> %156 to <8 x i32>
  %158 = shufflevector <8 x i32> %157, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %159 = bitcast <8 x i32> %158 to <4 x i64>
  %160 = and <4 x i64> %156, splat (i64 4294967295)
  %161 = and <4 x i64> %159, splat (i64 4294967295)
  %162 = mul nuw <4 x i64> %161, %160
  %163 = shufflevector <4 x i64> %155, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %164 = add <4 x i64> %141, %163
  %165 = add <4 x i64> %164, %162
  %166 = getelementptr inbounds nuw i8, ptr %10, i64 416
  %167 = load <4 x i64>, ptr %166, align 1
  %168 = xor <4 x i64> %167, <i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193>
  %169 = bitcast <4 x i64> %168 to <8 x i32>
  %170 = shufflevector <8 x i32> %169, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %171 = bitcast <8 x i32> %170 to <4 x i64>
  %172 = and <4 x i64> %168, splat (i64 4294967295)
  %173 = and <4 x i64> %171, splat (i64 4294967295)
  %174 = mul nuw <4 x i64> %173, %172
  %175 = shufflevector <4 x i64> %167, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %176 = add <4 x i64> %153, %175
  %177 = add <4 x i64> %176, %174
  %178 = getelementptr inbounds nuw i8, ptr %10, i64 448
  %179 = load <4 x i64>, ptr %178, align 1
  %180 = xor <4 x i64> %179, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %181 = bitcast <4 x i64> %180 to <8 x i32>
  %182 = shufflevector <8 x i32> %181, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %183 = bitcast <8 x i32> %182 to <4 x i64>
  %184 = and <4 x i64> %180, splat (i64 4294967295)
  %185 = and <4 x i64> %183, splat (i64 4294967295)
  %186 = mul nuw <4 x i64> %185, %184
  %187 = shufflevector <4 x i64> %179, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %188 = add <4 x i64> %165, %187
  %189 = add <4 x i64> %188, %186
  %190 = getelementptr inbounds nuw i8, ptr %10, i64 480
  %191 = load <4 x i64>, ptr %190, align 1
  %192 = xor <4 x i64> %191, <i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746>
  %193 = bitcast <4 x i64> %192 to <8 x i32>
  %194 = shufflevector <8 x i32> %193, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %195 = bitcast <8 x i32> %194 to <4 x i64>
  %196 = and <4 x i64> %192, splat (i64 4294967295)
  %197 = and <4 x i64> %195, splat (i64 4294967295)
  %198 = mul nuw <4 x i64> %197, %196
  %199 = shufflevector <4 x i64> %191, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %200 = add <4 x i64> %177, %199
  %201 = add <4 x i64> %200, %198
  %202 = getelementptr inbounds nuw i8, ptr %10, i64 512
  %203 = load <4 x i64>, ptr %202, align 1
  %204 = xor <4 x i64> %203, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %205 = bitcast <4 x i64> %204 to <8 x i32>
  %206 = shufflevector <8 x i32> %205, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %207 = bitcast <8 x i32> %206 to <4 x i64>
  %208 = and <4 x i64> %204, splat (i64 4294967295)
  %209 = and <4 x i64> %207, splat (i64 4294967295)
  %210 = mul nuw <4 x i64> %209, %208
  %211 = shufflevector <4 x i64> %203, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %212 = add <4 x i64> %189, %211
  %213 = add <4 x i64> %212, %210
  %214 = getelementptr inbounds nuw i8, ptr %10, i64 544
  %215 = load <4 x i64>, ptr %214, align 1
  %216 = xor <4 x i64> %215, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %217 = bitcast <4 x i64> %216 to <8 x i32>
  %218 = shufflevector <8 x i32> %217, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %219 = bitcast <8 x i32> %218 to <4 x i64>
  %220 = and <4 x i64> %216, splat (i64 4294967295)
  %221 = and <4 x i64> %219, splat (i64 4294967295)
  %222 = mul nuw <4 x i64> %221, %220
  %223 = shufflevector <4 x i64> %215, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %224 = add <4 x i64> %201, %223
  %225 = add <4 x i64> %224, %222
  %226 = getelementptr inbounds nuw i8, ptr %10, i64 576
  %227 = load <4 x i64>, ptr %226, align 1
  %228 = xor <4 x i64> %227, <i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352>
  %229 = bitcast <4 x i64> %228 to <8 x i32>
  %230 = shufflevector <8 x i32> %229, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %231 = bitcast <8 x i32> %230 to <4 x i64>
  %232 = and <4 x i64> %228, splat (i64 4294967295)
  %233 = and <4 x i64> %231, splat (i64 4294967295)
  %234 = mul nuw <4 x i64> %233, %232
  %235 = shufflevector <4 x i64> %227, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %236 = add <4 x i64> %213, %235
  %237 = add <4 x i64> %236, %234
  %238 = getelementptr inbounds nuw i8, ptr %10, i64 608
  %239 = load <4 x i64>, ptr %238, align 1
  %240 = xor <4 x i64> %239, <i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654>
  %241 = bitcast <4 x i64> %240 to <8 x i32>
  %242 = shufflevector <8 x i32> %241, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %243 = bitcast <8 x i32> %242 to <4 x i64>
  %244 = and <4 x i64> %240, splat (i64 4294967295)
  %245 = and <4 x i64> %243, splat (i64 4294967295)
  %246 = mul nuw <4 x i64> %245, %244
  %247 = shufflevector <4 x i64> %239, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %248 = add <4 x i64> %225, %247
  %249 = add <4 x i64> %248, %246
  %250 = getelementptr inbounds nuw i8, ptr %10, i64 640
  %251 = load <4 x i64>, ptr %250, align 1
  %252 = xor <4 x i64> %251, <i64 5690594596133299313, i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193>
  %253 = bitcast <4 x i64> %252 to <8 x i32>
  %254 = shufflevector <8 x i32> %253, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %255 = bitcast <8 x i32> %254 to <4 x i64>
  %256 = and <4 x i64> %252, splat (i64 4294967295)
  %257 = and <4 x i64> %255, splat (i64 4294967295)
  %258 = mul nuw <4 x i64> %257, %256
  %259 = shufflevector <4 x i64> %251, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %260 = add <4 x i64> %237, %259
  %261 = add <4 x i64> %260, %258
  %262 = getelementptr inbounds nuw i8, ptr %10, i64 672
  %263 = load <4 x i64>, ptr %262, align 1
  %264 = xor <4 x i64> %263, <i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907>
  %265 = bitcast <4 x i64> %264 to <8 x i32>
  %266 = shufflevector <8 x i32> %265, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %267 = bitcast <8 x i32> %266 to <4 x i64>
  %268 = and <4 x i64> %264, splat (i64 4294967295)
  %269 = and <4 x i64> %267, splat (i64 4294967295)
  %270 = mul nuw <4 x i64> %269, %268
  %271 = shufflevector <4 x i64> %263, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %272 = add <4 x i64> %249, %271
  %273 = add <4 x i64> %272, %270
  %274 = getelementptr inbounds nuw i8, ptr %10, i64 704
  %275 = load <4 x i64>, ptr %274, align 1
  %276 = xor <4 x i64> %275, <i64 -2833645246901970632, i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746>
  %277 = bitcast <4 x i64> %276 to <8 x i32>
  %278 = shufflevector <8 x i32> %277, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %279 = bitcast <8 x i32> %278 to <4 x i64>
  %280 = and <4 x i64> %276, splat (i64 4294967295)
  %281 = and <4 x i64> %279, splat (i64 4294967295)
  %282 = mul nuw <4 x i64> %281, %280
  %283 = shufflevector <4 x i64> %275, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %284 = add <4 x i64> %261, %283
  %285 = add <4 x i64> %284, %282
  %286 = getelementptr inbounds nuw i8, ptr %10, i64 736
  %287 = load <4 x i64>, ptr %286, align 1
  %288 = xor <4 x i64> %287, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047>
  %289 = bitcast <4 x i64> %288 to <8 x i32>
  %290 = shufflevector <8 x i32> %289, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %291 = bitcast <8 x i32> %290 to <4 x i64>
  %292 = and <4 x i64> %288, splat (i64 4294967295)
  %293 = and <4 x i64> %291, splat (i64 4294967295)
  %294 = mul nuw <4 x i64> %293, %292
  %295 = shufflevector <4 x i64> %287, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %296 = add <4 x i64> %273, %295
  %297 = add <4 x i64> %296, %294
  %298 = getelementptr inbounds nuw i8, ptr %10, i64 768
  %299 = load <4 x i64>, ptr %298, align 1
  %300 = xor <4 x i64> %299, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %301 = bitcast <4 x i64> %300 to <8 x i32>
  %302 = shufflevector <8 x i32> %301, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %303 = bitcast <8 x i32> %302 to <4 x i64>
  %304 = and <4 x i64> %300, splat (i64 4294967295)
  %305 = and <4 x i64> %303, splat (i64 4294967295)
  %306 = mul nuw <4 x i64> %305, %304
  %307 = shufflevector <4 x i64> %299, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %308 = add <4 x i64> %285, %307
  %309 = add <4 x i64> %308, %306
  %310 = getelementptr inbounds nuw i8, ptr %10, i64 800
  %311 = load <4 x i64>, ptr %310, align 1
  %312 = xor <4 x i64> %311, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %313 = bitcast <4 x i64> %312 to <8 x i32>
  %314 = shufflevector <8 x i32> %313, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %315 = bitcast <8 x i32> %314 to <4 x i64>
  %316 = and <4 x i64> %312, splat (i64 4294967295)
  %317 = and <4 x i64> %315, splat (i64 4294967295)
  %318 = mul nuw <4 x i64> %317, %316
  %319 = shufflevector <4 x i64> %311, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %320 = add <4 x i64> %297, %319
  %321 = add <4 x i64> %320, %318
  %322 = getelementptr inbounds nuw i8, ptr %10, i64 832
  %323 = load <4 x i64>, ptr %322, align 1
  %324 = xor <4 x i64> %323, <i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654>
  %325 = bitcast <4 x i64> %324 to <8 x i32>
  %326 = shufflevector <8 x i32> %325, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %327 = bitcast <8 x i32> %326 to <4 x i64>
  %328 = and <4 x i64> %324, splat (i64 4294967295)
  %329 = and <4 x i64> %327, splat (i64 4294967295)
  %330 = mul nuw <4 x i64> %329, %328
  %331 = shufflevector <4 x i64> %323, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %332 = add <4 x i64> %309, %331
  %333 = add <4 x i64> %332, %330
  %334 = getelementptr inbounds nuw i8, ptr %10, i64 864
  %335 = load <4 x i64>, ptr %334, align 1
  %336 = xor <4 x i64> %335, <i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509>
  %337 = bitcast <4 x i64> %336 to <8 x i32>
  %338 = shufflevector <8 x i32> %337, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %339 = bitcast <8 x i32> %338 to <4 x i64>
  %340 = and <4 x i64> %336, splat (i64 4294967295)
  %341 = and <4 x i64> %339, splat (i64 4294967295)
  %342 = mul nuw <4 x i64> %341, %340
  %343 = shufflevector <4 x i64> %335, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %344 = add <4 x i64> %321, %343
  %345 = add <4 x i64> %344, %342
  %346 = getelementptr inbounds nuw i8, ptr %10, i64 896
  %347 = load <4 x i64>, ptr %346, align 1
  %348 = xor <4 x i64> %347, <i64 3556072174620004746, i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907>
  %349 = bitcast <4 x i64> %348 to <8 x i32>
  %350 = shufflevector <8 x i32> %349, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %351 = bitcast <8 x i32> %350 to <4 x i64>
  %352 = and <4 x i64> %348, splat (i64 4294967295)
  %353 = and <4 x i64> %351, splat (i64 4294967295)
  %354 = mul nuw <4 x i64> %353, %352
  %355 = shufflevector <4 x i64> %347, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %356 = add <4 x i64> %333, %355
  %357 = add <4 x i64> %356, %354
  %358 = getelementptr inbounds nuw i8, ptr %10, i64 928
  %359 = load <4 x i64>, ptr %358, align 1
  %360 = xor <4 x i64> %359, <i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737>
  %361 = bitcast <4 x i64> %360 to <8 x i32>
  %362 = shufflevector <8 x i32> %361, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %363 = bitcast <8 x i32> %362 to <4 x i64>
  %364 = and <4 x i64> %360, splat (i64 4294967295)
  %365 = and <4 x i64> %363, splat (i64 4294967295)
  %366 = mul nuw <4 x i64> %365, %364
  %367 = shufflevector <4 x i64> %359, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %368 = add <4 x i64> %345, %367
  %369 = add <4 x i64> %368, %366
  %370 = getelementptr inbounds nuw i8, ptr %10, i64 960
  %371 = load <4 x i64>, ptr %370, align 1
  %372 = xor <4 x i64> %371, <i64 7238261902898274248, i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047>
  %373 = bitcast <4 x i64> %372 to <8 x i32>
  %374 = shufflevector <8 x i32> %373, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %375 = bitcast <8 x i32> %374 to <4 x i64>
  %376 = and <4 x i64> %372, splat (i64 4294967295)
  %377 = and <4 x i64> %375, splat (i64 4294967295)
  %378 = mul nuw <4 x i64> %377, %376
  %379 = shufflevector <4 x i64> %371, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %380 = add <4 x i64> %357, %379
  %381 = add <4 x i64> %380, %378
  %382 = getelementptr inbounds nuw i8, ptr %10, i64 992
  %383 = load <4 x i64>, ptr %382, align 1
  %384 = xor <4 x i64> %383, <i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253>
  %385 = bitcast <4 x i64> %384 to <8 x i32>
  %386 = shufflevector <8 x i32> %385, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %387 = bitcast <8 x i32> %386 to <4 x i64>
  %388 = and <4 x i64> %384, splat (i64 4294967295)
  %389 = and <4 x i64> %387, splat (i64 4294967295)
  %390 = mul nuw <4 x i64> %389, %388
  %391 = shufflevector <4 x i64> %383, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %392 = add <4 x i64> %369, %391
  %393 = add <4 x i64> %392, %390
  %394 = lshr <4 x i64> %381, splat (i64 47)
  %395 = xor <4 x i64> %394, %381
  %396 = xor <4 x i64> %395, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %397 = and <4 x i64> %396, splat (i64 4294967295)
  %398 = mul nuw <4 x i64> %397, splat (i64 2654435761)
  %399 = bitcast <4 x i64> %396 to <8 x i32>
  %400 = shufflevector <8 x i32> %399, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %401 = bitcast <8 x i32> %400 to <4 x i64>
  %402 = mul <4 x i64> %401, splat (i64 -7046029290881679360)
  %403 = add <4 x i64> %402, %398
  %404 = lshr <4 x i64> %393, splat (i64 47)
  %405 = xor <4 x i64> %404, %393
  %406 = xor <4 x i64> %405, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %407 = and <4 x i64> %406, splat (i64 4294967295)
  %408 = mul nuw <4 x i64> %407, splat (i64 2654435761)
  %409 = bitcast <4 x i64> %406 to <8 x i32>
  %410 = shufflevector <8 x i32> %409, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %411 = bitcast <8 x i32> %410 to <4 x i64>
  %412 = mul <4 x i64> %411, splat (i64 -7046029290881679360)
  %413 = add <4 x i64> %412, %408
  %414 = add nuw nsw i64 %8, 1
  %415 = icmp eq i64 %414, %3
  br i1 %415, label %416, label %5

416:                                              ; preds = %5, %2
  %417 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %413, %5 ]
  %418 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %403, %5 ]
  %419 = and i64 %1, -1024
  %420 = lshr i64 %1, 6
  %421 = and i64 %420, 15
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 %419
  %423 = icmp eq i64 %421, 0
  br i1 %423, label %460, label %424

424:                                              ; preds = %416, %424
  %425 = phi <4 x i64> [ %457, %424 ], [ %417, %416 ]
  %426 = phi <4 x i64> [ %443, %424 ], [ %418, %416 ]
  %427 = phi i64 [ %458, %424 ], [ 0, %416 ]
  %428 = shl i64 %427, 6
  %429 = getelementptr inbounds nuw i8, ptr %422, i64 %428
  %430 = shl i64 %427, 3
  %431 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %430
  %432 = load <4 x i64>, ptr %429, align 1
  %433 = load <4 x i64>, ptr %431, align 8
  %434 = xor <4 x i64> %433, %432
  %435 = bitcast <4 x i64> %434 to <8 x i32>
  %436 = shufflevector <8 x i32> %435, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %437 = bitcast <8 x i32> %436 to <4 x i64>
  %438 = and <4 x i64> %434, splat (i64 4294967295)
  %439 = and <4 x i64> %437, splat (i64 4294967295)
  %440 = mul nuw <4 x i64> %439, %438
  %441 = shufflevector <4 x i64> %432, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %442 = add <4 x i64> %426, %441
  %443 = add <4 x i64> %442, %440
  %444 = getelementptr inbounds nuw i8, ptr %429, i64 32
  %445 = load <4 x i64>, ptr %444, align 1
  %446 = getelementptr inbounds nuw i8, ptr %431, i64 32
  %447 = load <4 x i64>, ptr %446, align 8
  %448 = xor <4 x i64> %447, %445
  %449 = bitcast <4 x i64> %448 to <8 x i32>
  %450 = shufflevector <8 x i32> %449, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %451 = bitcast <8 x i32> %450 to <4 x i64>
  %452 = and <4 x i64> %448, splat (i64 4294967295)
  %453 = and <4 x i64> %451, splat (i64 4294967295)
  %454 = mul nuw <4 x i64> %453, %452
  %455 = shufflevector <4 x i64> %445, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %456 = add <4 x i64> %425, %455
  %457 = add <4 x i64> %456, %454
  %458 = add nuw nsw i64 %427, 1
  %459 = icmp eq i64 %458, %421
  br i1 %459, label %460, label %424

460:                                              ; preds = %424, %416
  %461 = phi <4 x i64> [ %417, %416 ], [ %457, %424 ]
  %462 = phi <4 x i64> [ %418, %416 ], [ %443, %424 ]
  %463 = and i64 %1, 63
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %491, label %465

465:                                              ; preds = %460
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %467 = getelementptr inbounds i8, ptr %466, i64 -64
  %468 = load <4 x i64>, ptr %467, align 1
  %469 = xor <4 x i64> %468, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %470 = bitcast <4 x i64> %469 to <8 x i32>
  %471 = shufflevector <8 x i32> %470, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %472 = bitcast <8 x i32> %471 to <4 x i64>
  %473 = and <4 x i64> %469, splat (i64 4294967295)
  %474 = and <4 x i64> %472, splat (i64 4294967295)
  %475 = mul nuw <4 x i64> %474, %473
  %476 = shufflevector <4 x i64> %468, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %477 = add <4 x i64> %462, %476
  %478 = add <4 x i64> %477, %475
  %479 = getelementptr inbounds i8, ptr %466, i64 -32
  %480 = load <4 x i64>, ptr %479, align 1
  %481 = xor <4 x i64> %480, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %482 = bitcast <4 x i64> %481 to <8 x i32>
  %483 = shufflevector <8 x i32> %482, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %484 = bitcast <8 x i32> %483 to <4 x i64>
  %485 = and <4 x i64> %481, splat (i64 4294967295)
  %486 = and <4 x i64> %484, splat (i64 4294967295)
  %487 = mul nuw <4 x i64> %486, %485
  %488 = shufflevector <4 x i64> %480, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %489 = add <4 x i64> %461, %488
  %490 = add <4 x i64> %489, %487
  br label %491

491:                                              ; preds = %465, %460
  %492 = phi <4 x i64> [ %461, %460 ], [ %490, %465 ]
  %493 = phi <4 x i64> [ %462, %460 ], [ %478, %465 ]
  %494 = mul i64 %1, -7046029288634856825
  %495 = extractelement <4 x i64> %493, i64 0
  %496 = xor i64 %495, 7914194659941938988
  %497 = extractelement <4 x i64> %493, i64 1
  %498 = xor i64 %497, -6611157965513653271
  %499 = zext i64 %496 to i128
  %500 = zext i64 %498 to i128
  %501 = mul nuw i128 %500, %499
  %502 = lshr i128 %501, 64
  %503 = xor i128 %502, %501
  %504 = trunc i128 %503 to i64
  %505 = add i64 %494, %504
  %506 = extractelement <4 x i64> %493, i64 2
  %507 = xor i64 %506, -1839215637059881052
  %508 = extractelement <4 x i64> %493, i64 3
  %509 = xor i64 %508, -3433288310154277810
  %510 = zext i64 %507 to i128
  %511 = zext i64 %509 to i128
  %512 = mul nuw i128 %511, %510
  %513 = lshr i128 %512, 64
  %514 = xor i128 %513, %512
  %515 = trunc i128 %514 to i64
  %516 = add i64 %505, %515
  %517 = extractelement <4 x i64> %492, i64 0
  %518 = xor i64 %517, 5046485836271438973
  %519 = extractelement <4 x i64> %492, i64 1
  %520 = xor i64 %519, -8055285457383852172
  %521 = zext i64 %518 to i128
  %522 = zext i64 %520 to i128
  %523 = mul nuw i128 %522, %521
  %524 = lshr i128 %523, 64
  %525 = xor i128 %524, %523
  %526 = trunc i128 %525 to i64
  %527 = add i64 %516, %526
  %528 = extractelement <4 x i64> %492, i64 2
  %529 = xor i64 %528, 5920048007935066598
  %530 = extractelement <4 x i64> %492, i64 3
  %531 = xor i64 %530, 7336514198459093435
  %532 = zext i64 %529 to i128
  %533 = zext i64 %531 to i128
  %534 = mul nuw i128 %533, %532
  %535 = lshr i128 %534, 64
  %536 = xor i128 %535, %534
  %537 = trunc i128 %536 to i64
  %538 = add i64 %527, %537
  %539 = lshr i64 %538, 37
  %540 = xor i64 %539, %538
  %541 = mul i64 %540, 1609587929392839161
  %542 = lshr i64 %541, 32
  %543 = xor i64 %542, %541
  %544 = mul i64 %1, -4417276706812531889
  %545 = xor i64 %544, -1
  %546 = xor i64 %495, -2753530472436770380
  %547 = xor i64 %497, 3784058077962335096
  %548 = zext i64 %546 to i128
  %549 = zext i64 %547 to i128
  %550 = mul nuw i128 %549, %548
  %551 = lshr i128 %550, 64
  %552 = xor i128 %551, %550
  %553 = trunc i128 %552 to i64
  %554 = add i64 %553, %545
  %555 = xor i64 %506, -360392965937173549
  %556 = xor i64 %508, -5237161843349560557
  %557 = zext i64 %555 to i128
  %558 = zext i64 %556 to i128
  %559 = mul nuw i128 %558, %557
  %560 = lshr i128 %559, 64
  %561 = xor i128 %560, %559
  %562 = trunc i128 %561 to i64
  %563 = add i64 %554, %562
  %564 = xor i64 %517, 2965150961192524528
  %565 = xor i64 %519, 9032178055121889492
  %566 = zext i64 %564 to i128
  %567 = zext i64 %565 to i128
  %568 = mul nuw i128 %567, %566
  %569 = lshr i128 %568, 64
  %570 = xor i128 %569, %568
  %571 = trunc i128 %570 to i64
  %572 = add i64 %563, %571
  %573 = xor i64 %528, 8850058120466833735
  %574 = xor i64 %530, -7669846995664752176
  %575 = zext i64 %573 to i128
  %576 = zext i64 %574 to i128
  %577 = mul nuw i128 %576, %575
  %578 = lshr i128 %577, 64
  %579 = xor i128 %578, %577
  %580 = trunc i128 %579 to i64
  %581 = add i64 %572, %580
  %582 = lshr i64 %581, 37
  %583 = xor i64 %582, %581
  %584 = mul i64 %583, 1609587929392839161
  %585 = lshr i64 %584, 32
  %586 = xor i64 %585, %584
  %587 = insertvalue { i64, i64 } poison, i64 %543, 0
  %588 = insertvalue { i64, i64 } %587, i64 %586, 1
  ret { i64, i64 } %588
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH3_128bits_withSecret(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #13 {
  %5 = icmp ult i64 %1, 17
  br i1 %5, label %6, label %131

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %45

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
  %24 = mul i64 %17, -7046029288634856825
  %25 = add i64 %24, %23
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %21
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
  br label %126

45:                                               ; preds = %6
  %46 = icmp samesign ugt i64 %1, 3
  br i1 %46, label %47, label %86

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
  %57 = load i64, ptr %2, align 1
  %58 = xor i64 %55, %57
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %56, %60
  %62 = lshr i64 %58, 51
  %63 = xor i64 %62, %58
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
  br label %126

86:                                               ; preds = %45
  %87 = icmp eq i64 %1, 0
  br i1 %87, label %126, label %88

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
  %107 = load i32, ptr %2, align 1
  %108 = xor i32 %105, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %111 = load i32, ptr %110, align 1
  %112 = xor i32 %106, %111
  %113 = zext i32 %112 to i64
  %114 = mul i64 %109, -7046029288634856825
  %115 = mul i64 %113, -4417276706812531889
  %116 = lshr i64 %114, 37
  %117 = xor i64 %116, %114
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  %121 = lshr i64 %115, 37
  %122 = xor i64 %121, %115
  %123 = mul i64 %122, 1609587929392839161
  %124 = lshr i64 %123, 32
  %125 = xor i64 %124, %123
  br label %126

126:                                              ; preds = %8, %47, %86, %88
  %127 = phi i64 [ %44, %8 ], [ %85, %47 ], [ %125, %88 ], [ 0, %86 ]
  %128 = phi i64 [ %39, %8 ], [ %80, %47 ], [ %120, %88 ], [ 0, %86 ]
  %129 = insertvalue { i64, i64 } poison, i64 %128, 0
  %130 = insertvalue { i64, i64 } %129, i64 %127, 1
  br label %312

131:                                              ; preds = %4
  %132 = icmp ult i64 %1, 129
  br i1 %132, label %133, label %306

133:                                              ; preds = %131
  %134 = mul i64 %1, -7046029288634856825
  %135 = icmp samesign ugt i64 %1, 32
  br i1 %135, label %136, label %251

136:                                              ; preds = %133
  %137 = icmp samesign ugt i64 %1, 64
  br i1 %137, label %138, label %213

138:                                              ; preds = %136
  %139 = icmp samesign ugt i64 %1, 96
  br i1 %139, label %140, label %175

140:                                              ; preds = %138
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %143 = load i64, ptr %141, align 1
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %145 = load i64, ptr %144, align 1
  %146 = load i64, ptr %142, align 1
  %147 = xor i64 %146, %143
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %149, %145
  %151 = zext i64 %147 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %134, %156
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -64
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %161 = load i64, ptr %159, align 1
  %162 = getelementptr inbounds i8, ptr %158, i64 -56
  %163 = load i64, ptr %162, align 1
  %164 = load i64, ptr %160, align 1
  %165 = xor i64 %164, %161
  %166 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %167 = load i64, ptr %166, align 1
  %168 = xor i64 %167, %163
  %169 = zext i64 %165 to i128
  %170 = zext i64 %168 to i128
  %171 = mul nuw i128 %170, %169
  %172 = lshr i128 %171, 64
  %173 = xor i128 %172, %171
  %174 = trunc i128 %173 to i64
  br label %175

175:                                              ; preds = %140, %138
  %176 = phi i64 [ %174, %140 ], [ 0, %138 ]
  %177 = phi i64 [ %157, %140 ], [ %134, %138 ]
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %179 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %180 = load i64, ptr %178, align 1
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %182 = load i64, ptr %181, align 1
  %183 = load i64, ptr %179, align 1
  %184 = xor i64 %183, %180
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %186 = load i64, ptr %185, align 1
  %187 = xor i64 %186, %182
  %188 = zext i64 %184 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %177, %193
  %195 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %196 = getelementptr inbounds i8, ptr %195, i64 -48
  %197 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %198 = load i64, ptr %196, align 1
  %199 = getelementptr inbounds i8, ptr %195, i64 -40
  %200 = load i64, ptr %199, align 1
  %201 = load i64, ptr %197, align 1
  %202 = xor i64 %201, %198
  %203 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %204 = load i64, ptr %203, align 1
  %205 = xor i64 %204, %200
  %206 = zext i64 %202 to i128
  %207 = zext i64 %205 to i128
  %208 = mul nuw i128 %207, %206
  %209 = lshr i128 %208, 64
  %210 = xor i128 %209, %208
  %211 = trunc i128 %210 to i64
  %212 = add i64 %176, %211
  br label %213

213:                                              ; preds = %175, %136
  %214 = phi i64 [ %212, %175 ], [ 0, %136 ]
  %215 = phi i64 [ %194, %175 ], [ %134, %136 ]
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %217 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %218 = load i64, ptr %216, align 1
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %220 = load i64, ptr %219, align 1
  %221 = load i64, ptr %217, align 1
  %222 = xor i64 %221, %218
  %223 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %224 = load i64, ptr %223, align 1
  %225 = xor i64 %224, %220
  %226 = zext i64 %222 to i128
  %227 = zext i64 %225 to i128
  %228 = mul nuw i128 %227, %226
  %229 = lshr i128 %228, 64
  %230 = xor i128 %229, %228
  %231 = trunc i128 %230 to i64
  %232 = add i64 %215, %231
  %233 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %234 = getelementptr inbounds i8, ptr %233, i64 -32
  %235 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %236 = load i64, ptr %234, align 1
  %237 = getelementptr inbounds i8, ptr %233, i64 -24
  %238 = load i64, ptr %237, align 1
  %239 = load i64, ptr %235, align 1
  %240 = xor i64 %239, %236
  %241 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %242 = load i64, ptr %241, align 1
  %243 = xor i64 %242, %238
  %244 = zext i64 %240 to i128
  %245 = zext i64 %243 to i128
  %246 = mul nuw i128 %245, %244
  %247 = lshr i128 %246, 64
  %248 = xor i128 %247, %246
  %249 = trunc i128 %248 to i64
  %250 = add i64 %214, %249
  br label %251

251:                                              ; preds = %133, %213
  %252 = phi i64 [ %250, %213 ], [ 0, %133 ]
  %253 = phi i64 [ %232, %213 ], [ %134, %133 ]
  %254 = load i64, ptr %0, align 1
  %255 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %256 = load i64, ptr %255, align 1
  %257 = load i64, ptr %2, align 1
  %258 = xor i64 %257, %254
  %259 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %260 = load i64, ptr %259, align 1
  %261 = xor i64 %260, %256
  %262 = zext i64 %258 to i128
  %263 = zext i64 %261 to i128
  %264 = mul nuw i128 %263, %262
  %265 = lshr i128 %264, 64
  %266 = xor i128 %265, %264
  %267 = trunc i128 %266 to i64
  %268 = add i64 %253, %267
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %270 = getelementptr inbounds i8, ptr %269, i64 -16
  %271 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %272 = load i64, ptr %270, align 1
  %273 = getelementptr inbounds i8, ptr %269, i64 -8
  %274 = load i64, ptr %273, align 1
  %275 = load i64, ptr %271, align 1
  %276 = xor i64 %275, %272
  %277 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, %274
  %280 = zext i64 %276 to i128
  %281 = zext i64 %279 to i128
  %282 = mul nuw i128 %281, %280
  %283 = lshr i128 %282, 64
  %284 = xor i128 %283, %282
  %285 = trunc i128 %284 to i64
  %286 = add i64 %252, %285
  %287 = add i64 %286, %268
  %288 = mul i64 %268, -7046029288634856825
  %289 = mul i64 %286, -8796714831421723037
  %290 = mul i64 %1, -4417276706812531889
  %291 = add i64 %288, %290
  %292 = add i64 %291, %289
  %293 = lshr i64 %287, 37
  %294 = xor i64 %293, %287
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

306:                                              ; preds = %131
  %307 = icmp ult i64 %1, 241
  br i1 %307, label %308, label %310

308:                                              ; preds = %306
  %309 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0)
  br label %312

310:                                              ; preds = %306
  %311 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %312

312:                                              ; preds = %310, %308, %251, %126
  %313 = phi { i64, i64 } [ %130, %126 ], [ %305, %251 ], [ %309, %308 ], [ %311, %310 ]
  ret { i64, i64 } %313
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSecret(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #15 {
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
  %67 = and <4 x i64> %66, splat (i64 4294967295)
  %68 = mul nuw <4 x i64> %67, splat (i64 2654435761)
  %69 = bitcast <4 x i64> %66 to <8 x i32>
  %70 = shufflevector <8 x i32> %69, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %71 = bitcast <8 x i32> %70 to <4 x i64>
  %72 = mul <4 x i64> %71, splat (i64 -7046029290881679360)
  %73 = add <4 x i64> %72, %68
  %74 = lshr <4 x i64> %62, splat (i64 47)
  %75 = xor <4 x i64> %18, %74
  %76 = xor <4 x i64> %75, %62
  %77 = and <4 x i64> %76, splat (i64 4294967295)
  %78 = mul nuw <4 x i64> %77, splat (i64 2654435761)
  %79 = bitcast <4 x i64> %76 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = mul <4 x i64> %81, splat (i64 -7046029290881679360)
  %83 = add <4 x i64> %82, %78
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
define dso_local { i64, i64 } @XXH3_128bits_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %127

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %43

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
  %22 = mul i64 %15, -7046029288634856825
  %23 = add i64 %22, %21
  %24 = lshr i64 %23, 32
  %25 = xor i64 %24, %19
  %26 = zext i64 %25 to i128
  %27 = mul nuw i128 %26, 14029467366897019727
  %28 = trunc i128 %27 to i64
  %29 = lshr i128 %27, 64
  %30 = trunc nuw i128 %29 to i64
  %31 = mul i64 %23, -4417276706812531889
  %32 = add i64 %31, %30
  %33 = lshr i64 %28, 37
  %34 = xor i64 %33, %28
  %35 = mul i64 %34, 1609587929392839161
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  %38 = lshr i64 %32, 37
  %39 = xor i64 %38, %32
  %40 = mul i64 %39, 1609587929392839161
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  br label %122

43:                                               ; preds = %5
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %83

45:                                               ; preds = %43
  %46 = load i32, ptr %0, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %48 = getelementptr inbounds i8, ptr %47, i64 -4
  %49 = load i32, ptr %48, align 1
  %50 = zext i32 %46 to i64
  %51 = zext i32 %49 to i64
  %52 = shl nuw i64 %51, 32
  %53 = or disjoint i64 %52, %50
  %54 = tail call noundef i64 @llvm.bswap.i64(i64 %53)
  %55 = add i64 %2, -4734510112055689544
  %56 = xor i64 %53, %55
  %57 = sub i64 2066345149520216444, %2
  %58 = xor i64 %54, %57
  %59 = lshr i64 %56, 51
  %60 = xor i64 %59, %56
  %61 = mul i64 %60, 2654435761
  %62 = add i64 %61, %1
  %63 = lshr i64 %62, 47
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, -4417276706812531889
  %66 = lshr i64 %58, 47
  %67 = xor i64 %66, %58
  %68 = mul i64 %67, -7046029288634856825
  %69 = sub i64 %68, %1
  %70 = lshr i64 %69, 43
  %71 = xor i64 %70, %69
  %72 = mul i64 %71, -8796714831421723037
  %73 = lshr i64 %65, 37
  %74 = xor i64 %73, %65
  %75 = mul i64 %74, 1609587929392839161
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  %78 = lshr i64 %72, 37
  %79 = xor i64 %78, %72
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  br label %122

83:                                               ; preds = %43
  %84 = icmp eq i64 %1, 0
  br i1 %84, label %122, label %85

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
  %97 = zext i8 %92 to i32
  %98 = shl nuw nsw i32 %97, 16
  %99 = or disjoint i32 %96, %98
  %100 = trunc nuw nsw i64 %1 to i32
  %101 = shl nuw nsw i32 %100, 24
  %102 = or disjoint i32 %99, %101
  %103 = tail call noundef i32 @llvm.bswap.i32(i32 %102)
  %104 = zext nneg i32 %102 to i64
  %105 = add i64 %2, 963444408
  %106 = xor i64 %105, %104
  %107 = zext i32 %103 to i64
  %108 = sub i64 3192628259, %2
  %109 = xor i64 %108, %107
  %110 = mul i64 %106, -7046029288634856825
  %111 = mul i64 %109, -4417276706812531889
  %112 = lshr i64 %110, 37
  %113 = xor i64 %112, %110
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  %117 = lshr i64 %111, 37
  %118 = xor i64 %117, %111
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %122

122:                                              ; preds = %7, %45, %83, %85
  %123 = phi i64 [ %42, %7 ], [ %82, %45 ], [ %121, %85 ], [ 0, %83 ]
  %124 = phi i64 [ %37, %7 ], [ %77, %45 ], [ %116, %85 ], [ 0, %83 ]
  %125 = insertvalue { i64, i64 } poison, i64 %124, 0
  %126 = insertvalue { i64, i64 } %125, i64 %123, 1
  br label %294

127:                                              ; preds = %3
  %128 = icmp ult i64 %1, 129
  br i1 %128, label %129, label %288

129:                                              ; preds = %127
  %130 = mul i64 %1, -7046029288634856825
  %131 = icmp samesign ugt i64 %1, 32
  br i1 %131, label %132, label %235

132:                                              ; preds = %129
  %133 = icmp samesign ugt i64 %1, 64
  br i1 %133, label %134, label %201

134:                                              ; preds = %132
  %135 = icmp samesign ugt i64 %1, 96
  br i1 %135, label %136, label %167

136:                                              ; preds = %134
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %138 = load i64, ptr %137, align 1
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %140 = load i64, ptr %139, align 1
  %141 = add i64 %2, 4554437623014685352
  %142 = xor i64 %138, %141
  %143 = sub i64 2111919702937427193, %2
  %144 = xor i64 %140, %143
  %145 = zext i64 %142 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %130, %150
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %153 = getelementptr inbounds i8, ptr %152, i64 -64
  %154 = load i64, ptr %153, align 1
  %155 = getelementptr inbounds i8, ptr %152, i64 -56
  %156 = load i64, ptr %155, align 1
  %157 = add i64 %2, 3556072174620004746
  %158 = xor i64 %154, %157
  %159 = sub i64 7238261902898274248, %2
  %160 = xor i64 %156, %159
  %161 = zext i64 %158 to i128
  %162 = zext i64 %160 to i128
  %163 = mul nuw i128 %162, %161
  %164 = lshr i128 %163, 64
  %165 = xor i128 %164, %163
  %166 = trunc i128 %165 to i64
  br label %167

167:                                              ; preds = %136, %134
  %168 = phi i64 [ %166, %136 ], [ 0, %134 ]
  %169 = phi i64 [ %151, %136 ], [ %130, %134 ]
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %171 = load i64, ptr %170, align 1
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %173 = load i64, ptr %172, align 1
  %174 = add i64 %2, -3818837453329782724
  %175 = xor i64 %171, %174
  %176 = sub i64 -6688317018830679928, %2
  %177 = xor i64 %173, %176
  %178 = zext i64 %175 to i128
  %179 = zext i64 %177 to i128
  %180 = mul nuw i128 %179, %178
  %181 = lshr i128 %180, 64
  %182 = xor i128 %181, %180
  %183 = trunc i128 %182 to i64
  %184 = add i64 %169, %183
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %186 = getelementptr inbounds i8, ptr %185, i64 -48
  %187 = load i64, ptr %186, align 1
  %188 = getelementptr inbounds i8, ptr %185, i64 -40
  %189 = load i64, ptr %188, align 1
  %190 = add i64 %2, 5690594596133299313
  %191 = xor i64 %187, %190
  %192 = sub i64 -2833645246901970632, %2
  %193 = xor i64 %189, %192
  %194 = zext i64 %191 to i128
  %195 = zext i64 %193 to i128
  %196 = mul nuw i128 %195, %194
  %197 = lshr i128 %196, 64
  %198 = xor i128 %197, %196
  %199 = trunc i128 %198 to i64
  %200 = add i64 %168, %199
  br label %201

201:                                              ; preds = %167, %132
  %202 = phi i64 [ %200, %167 ], [ 0, %132 ]
  %203 = phi i64 [ %184, %167 ], [ %130, %132 ]
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %205 = load i64, ptr %204, align 1
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %207 = load i64, ptr %206, align 1
  %208 = add i64 %2, 8711581037947681227
  %209 = xor i64 %205, %208
  %210 = sub i64 2410270004345854594, %2
  %211 = xor i64 %207, %210
  %212 = zext i64 %209 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %203, %217
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %220 = getelementptr inbounds i8, ptr %219, i64 -32
  %221 = load i64, ptr %220, align 1
  %222 = getelementptr inbounds i8, ptr %219, i64 -24
  %223 = load i64, ptr %222, align 1
  %224 = add i64 %2, -8204357891075471176
  %225 = xor i64 %221, %224
  %226 = sub i64 5487137525590930912, %2
  %227 = xor i64 %223, %226
  %228 = zext i64 %225 to i128
  %229 = zext i64 %227 to i128
  %230 = mul nuw i128 %229, %228
  %231 = lshr i128 %230, 64
  %232 = xor i128 %231, %230
  %233 = trunc i128 %232 to i64
  %234 = add i64 %202, %233
  br label %235

235:                                              ; preds = %129, %201
  %236 = phi i64 [ %234, %201 ], [ 0, %129 ]
  %237 = phi i64 [ %218, %201 ], [ %130, %129 ]
  %238 = load i64, ptr %0, align 1
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %240 = load i64, ptr %239, align 1
  %241 = add i64 %2, -4734510112055689544
  %242 = xor i64 %238, %241
  %243 = sub i64 2066345149520216444, %2
  %244 = xor i64 %240, %243
  %245 = zext i64 %242 to i128
  %246 = zext i64 %244 to i128
  %247 = mul nuw i128 %246, %245
  %248 = lshr i128 %247, 64
  %249 = xor i128 %248, %247
  %250 = trunc i128 %249 to i64
  %251 = add i64 %237, %250
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %253 = getelementptr inbounds i8, ptr %252, i64 -16
  %254 = load i64, ptr %253, align 1
  %255 = getelementptr inbounds i8, ptr %252, i64 -8
  %256 = load i64, ptr %255, align 1
  %257 = add i64 %2, -2623469361688619810
  %258 = xor i64 %254, %257
  %259 = sub i64 2262974939099578482, %2
  %260 = xor i64 %256, %259
  %261 = zext i64 %258 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %236, %266
  %268 = add i64 %267, %251
  %269 = mul i64 %251, -7046029288634856825
  %270 = mul i64 %267, -8796714831421723037
  %271 = sub i64 %1, %2
  %272 = mul i64 %271, -4417276706812531889
  %273 = add i64 %269, %272
  %274 = add i64 %273, %270
  %275 = lshr i64 %268, 37
  %276 = xor i64 %275, %268
  %277 = mul i64 %276, 1609587929392839161
  %278 = lshr i64 %277, 32
  %279 = xor i64 %278, %277
  %280 = lshr i64 %274, 37
  %281 = xor i64 %280, %274
  %282 = mul i64 %281, 1609587929392839161
  %283 = lshr i64 %282, 32
  %284 = xor i64 %283, %282
  %285 = sub i64 0, %284
  %286 = insertvalue { i64, i64 } poison, i64 %279, 0
  %287 = insertvalue { i64, i64 } %286, i64 %285, 1
  br label %294

288:                                              ; preds = %127
  %289 = icmp ult i64 %1, 241
  br i1 %289, label %290, label %292

290:                                              ; preds = %288
  %291 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %294

292:                                              ; preds = %288
  %293 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %294

294:                                              ; preds = %292, %290, %235, %122
  %295 = phi { i64, i64 } [ %126, %122 ], [ %287, %235 ], [ %291, %290 ], [ %293, %292 ]
  ret { i64, i64 } %295
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef readonly %0, i64 noundef range(i64 241, 0) %1, i64 noundef %2) unnamed_addr #15 {
  %4 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #25
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
  br i1 %55, label %527, label %58

56:                                               ; preds = %3
  %57 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %747

58:                                               ; preds = %6
  %59 = load <4 x i64>, ptr %4, align 8
  %60 = load <4 x i64>, ptr %14, align 8
  %61 = load <4 x i64>, ptr %8, align 8
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %63 = load <4 x i64>, ptr %62, align 8
  %64 = load <4 x i64>, ptr %10, align 8
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %66 = load <4 x i64>, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %68 = load <4 x i64>, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %70 = load <4 x i64>, ptr %69, align 8
  %71 = load <4 x i64>, ptr %14, align 8
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %73 = load <4 x i64>, ptr %72, align 8
  %74 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %75 = load <4 x i64>, ptr %74, align 8
  %76 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %77 = load <4 x i64>, ptr %76, align 8
  %78 = load <4 x i64>, ptr %18, align 8
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 80
  %80 = load <4 x i64>, ptr %79, align 8
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %82 = load <4 x i64>, ptr %81, align 8
  %83 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %84 = load <4 x i64>, ptr %83, align 8
  %85 = load <4 x i64>, ptr %22, align 8
  %86 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %87 = load <4 x i64>, ptr %86, align 8
  %88 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %89 = load <4 x i64>, ptr %88, align 8
  %90 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %91 = load <4 x i64>, ptr %90, align 8
  %92 = load <4 x i64>, ptr %26, align 8
  %93 = getelementptr inbounds nuw i8, ptr %4, i64 112
  %94 = load <4 x i64>, ptr %93, align 8
  %95 = getelementptr inbounds nuw i8, ptr %4, i64 88
  %96 = load <4 x i64>, ptr %95, align 8
  %97 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %98 = load <4 x i64>, ptr %97, align 8
  %99 = load <4 x i64>, ptr %30, align 8
  %100 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %101 = load <4 x i64>, ptr %100, align 8
  %102 = getelementptr inbounds nuw i8, ptr %4, i64 104
  %103 = load <4 x i64>, ptr %102, align 8
  %104 = getelementptr inbounds nuw i8, ptr %4, i64 136
  %105 = load <4 x i64>, ptr %104, align 8
  %106 = load <4 x i64>, ptr %34, align 8
  %107 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %108 = load <4 x i64>, ptr %107, align 8
  %109 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %110 = load <4 x i64>, ptr %109, align 8
  %111 = getelementptr inbounds nuw i8, ptr %4, i64 152
  %112 = load <4 x i64>, ptr %111, align 8
  %113 = load <4 x i64>, ptr %38, align 8
  %114 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %115 = load <4 x i64>, ptr %114, align 8
  br label %116

116:                                              ; preds = %58, %116
  %117 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %58 ], [ %524, %116 ]
  %118 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %58 ], [ %514, %116 ]
  %119 = phi i64 [ 0, %58 ], [ %525, %116 ]
  %120 = shl i64 %119, 10
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 %120
  %122 = load <4 x i64>, ptr %121, align 1
  %123 = xor <4 x i64> %59, %122
  %124 = bitcast <4 x i64> %123 to <8 x i32>
  %125 = shufflevector <8 x i32> %124, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %126 = bitcast <8 x i32> %125 to <4 x i64>
  %127 = and <4 x i64> %123, splat (i64 4294967295)
  %128 = and <4 x i64> %126, splat (i64 4294967295)
  %129 = mul nuw <4 x i64> %128, %127
  %130 = shufflevector <4 x i64> %122, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %131 = add <4 x i64> %118, %130
  %132 = add <4 x i64> %131, %129
  %133 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %134 = load <4 x i64>, ptr %133, align 1
  %135 = xor <4 x i64> %60, %134
  %136 = bitcast <4 x i64> %135 to <8 x i32>
  %137 = shufflevector <8 x i32> %136, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %138 = bitcast <8 x i32> %137 to <4 x i64>
  %139 = and <4 x i64> %135, splat (i64 4294967295)
  %140 = and <4 x i64> %138, splat (i64 4294967295)
  %141 = mul nuw <4 x i64> %140, %139
  %142 = shufflevector <4 x i64> %134, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %143 = add <4 x i64> %117, %142
  %144 = add <4 x i64> %143, %141
  %145 = getelementptr inbounds nuw i8, ptr %121, i64 64
  %146 = load <4 x i64>, ptr %145, align 1
  %147 = xor <4 x i64> %61, %146
  %148 = bitcast <4 x i64> %147 to <8 x i32>
  %149 = shufflevector <8 x i32> %148, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %150 = bitcast <8 x i32> %149 to <4 x i64>
  %151 = and <4 x i64> %147, splat (i64 4294967295)
  %152 = and <4 x i64> %150, splat (i64 4294967295)
  %153 = mul nuw <4 x i64> %152, %151
  %154 = shufflevector <4 x i64> %146, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %155 = add <4 x i64> %132, %154
  %156 = add <4 x i64> %155, %153
  %157 = getelementptr inbounds nuw i8, ptr %121, i64 96
  %158 = load <4 x i64>, ptr %157, align 1
  %159 = xor <4 x i64> %63, %158
  %160 = bitcast <4 x i64> %159 to <8 x i32>
  %161 = shufflevector <8 x i32> %160, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %162 = bitcast <8 x i32> %161 to <4 x i64>
  %163 = and <4 x i64> %159, splat (i64 4294967295)
  %164 = and <4 x i64> %162, splat (i64 4294967295)
  %165 = mul nuw <4 x i64> %164, %163
  %166 = shufflevector <4 x i64> %158, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %167 = add <4 x i64> %144, %166
  %168 = add <4 x i64> %167, %165
  %169 = getelementptr inbounds nuw i8, ptr %121, i64 128
  %170 = load <4 x i64>, ptr %169, align 1
  %171 = xor <4 x i64> %64, %170
  %172 = bitcast <4 x i64> %171 to <8 x i32>
  %173 = shufflevector <8 x i32> %172, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %174 = bitcast <8 x i32> %173 to <4 x i64>
  %175 = and <4 x i64> %171, splat (i64 4294967295)
  %176 = and <4 x i64> %174, splat (i64 4294967295)
  %177 = mul nuw <4 x i64> %176, %175
  %178 = shufflevector <4 x i64> %170, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %179 = add <4 x i64> %156, %178
  %180 = add <4 x i64> %179, %177
  %181 = getelementptr inbounds nuw i8, ptr %121, i64 160
  %182 = load <4 x i64>, ptr %181, align 1
  %183 = xor <4 x i64> %66, %182
  %184 = bitcast <4 x i64> %183 to <8 x i32>
  %185 = shufflevector <8 x i32> %184, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %186 = bitcast <8 x i32> %185 to <4 x i64>
  %187 = and <4 x i64> %183, splat (i64 4294967295)
  %188 = and <4 x i64> %186, splat (i64 4294967295)
  %189 = mul nuw <4 x i64> %188, %187
  %190 = shufflevector <4 x i64> %182, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %191 = add <4 x i64> %168, %190
  %192 = add <4 x i64> %191, %189
  %193 = getelementptr inbounds nuw i8, ptr %121, i64 192
  %194 = load <4 x i64>, ptr %193, align 1
  %195 = xor <4 x i64> %68, %194
  %196 = bitcast <4 x i64> %195 to <8 x i32>
  %197 = shufflevector <8 x i32> %196, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %198 = bitcast <8 x i32> %197 to <4 x i64>
  %199 = and <4 x i64> %195, splat (i64 4294967295)
  %200 = and <4 x i64> %198, splat (i64 4294967295)
  %201 = mul nuw <4 x i64> %200, %199
  %202 = shufflevector <4 x i64> %194, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %203 = add <4 x i64> %180, %202
  %204 = add <4 x i64> %203, %201
  %205 = getelementptr inbounds nuw i8, ptr %121, i64 224
  %206 = load <4 x i64>, ptr %205, align 1
  %207 = xor <4 x i64> %70, %206
  %208 = bitcast <4 x i64> %207 to <8 x i32>
  %209 = shufflevector <8 x i32> %208, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %210 = bitcast <8 x i32> %209 to <4 x i64>
  %211 = and <4 x i64> %207, splat (i64 4294967295)
  %212 = and <4 x i64> %210, splat (i64 4294967295)
  %213 = mul nuw <4 x i64> %212, %211
  %214 = shufflevector <4 x i64> %206, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %215 = add <4 x i64> %192, %214
  %216 = add <4 x i64> %215, %213
  %217 = getelementptr inbounds nuw i8, ptr %121, i64 256
  %218 = load <4 x i64>, ptr %217, align 1
  %219 = xor <4 x i64> %71, %218
  %220 = bitcast <4 x i64> %219 to <8 x i32>
  %221 = shufflevector <8 x i32> %220, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %222 = bitcast <8 x i32> %221 to <4 x i64>
  %223 = and <4 x i64> %219, splat (i64 4294967295)
  %224 = and <4 x i64> %222, splat (i64 4294967295)
  %225 = mul nuw <4 x i64> %224, %223
  %226 = shufflevector <4 x i64> %218, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %227 = add <4 x i64> %204, %226
  %228 = add <4 x i64> %227, %225
  %229 = getelementptr inbounds nuw i8, ptr %121, i64 288
  %230 = load <4 x i64>, ptr %229, align 1
  %231 = xor <4 x i64> %73, %230
  %232 = bitcast <4 x i64> %231 to <8 x i32>
  %233 = shufflevector <8 x i32> %232, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %234 = bitcast <8 x i32> %233 to <4 x i64>
  %235 = and <4 x i64> %231, splat (i64 4294967295)
  %236 = and <4 x i64> %234, splat (i64 4294967295)
  %237 = mul nuw <4 x i64> %236, %235
  %238 = shufflevector <4 x i64> %230, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %239 = add <4 x i64> %216, %238
  %240 = add <4 x i64> %239, %237
  %241 = getelementptr inbounds nuw i8, ptr %121, i64 320
  %242 = load <4 x i64>, ptr %241, align 1
  %243 = xor <4 x i64> %75, %242
  %244 = bitcast <4 x i64> %243 to <8 x i32>
  %245 = shufflevector <8 x i32> %244, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %246 = bitcast <8 x i32> %245 to <4 x i64>
  %247 = and <4 x i64> %243, splat (i64 4294967295)
  %248 = and <4 x i64> %246, splat (i64 4294967295)
  %249 = mul nuw <4 x i64> %248, %247
  %250 = shufflevector <4 x i64> %242, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %251 = add <4 x i64> %228, %250
  %252 = add <4 x i64> %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %121, i64 352
  %254 = load <4 x i64>, ptr %253, align 1
  %255 = xor <4 x i64> %77, %254
  %256 = bitcast <4 x i64> %255 to <8 x i32>
  %257 = shufflevector <8 x i32> %256, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %258 = bitcast <8 x i32> %257 to <4 x i64>
  %259 = and <4 x i64> %255, splat (i64 4294967295)
  %260 = and <4 x i64> %258, splat (i64 4294967295)
  %261 = mul nuw <4 x i64> %260, %259
  %262 = shufflevector <4 x i64> %254, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %263 = add <4 x i64> %240, %262
  %264 = add <4 x i64> %263, %261
  %265 = getelementptr inbounds nuw i8, ptr %121, i64 384
  %266 = load <4 x i64>, ptr %265, align 1
  %267 = xor <4 x i64> %78, %266
  %268 = bitcast <4 x i64> %267 to <8 x i32>
  %269 = shufflevector <8 x i32> %268, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %270 = bitcast <8 x i32> %269 to <4 x i64>
  %271 = and <4 x i64> %267, splat (i64 4294967295)
  %272 = and <4 x i64> %270, splat (i64 4294967295)
  %273 = mul nuw <4 x i64> %272, %271
  %274 = shufflevector <4 x i64> %266, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %275 = add <4 x i64> %252, %274
  %276 = add <4 x i64> %275, %273
  %277 = getelementptr inbounds nuw i8, ptr %121, i64 416
  %278 = load <4 x i64>, ptr %277, align 1
  %279 = xor <4 x i64> %80, %278
  %280 = bitcast <4 x i64> %279 to <8 x i32>
  %281 = shufflevector <8 x i32> %280, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %282 = bitcast <8 x i32> %281 to <4 x i64>
  %283 = and <4 x i64> %279, splat (i64 4294967295)
  %284 = and <4 x i64> %282, splat (i64 4294967295)
  %285 = mul nuw <4 x i64> %284, %283
  %286 = shufflevector <4 x i64> %278, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %287 = add <4 x i64> %264, %286
  %288 = add <4 x i64> %287, %285
  %289 = getelementptr inbounds nuw i8, ptr %121, i64 448
  %290 = load <4 x i64>, ptr %289, align 1
  %291 = xor <4 x i64> %82, %290
  %292 = bitcast <4 x i64> %291 to <8 x i32>
  %293 = shufflevector <8 x i32> %292, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %294 = bitcast <8 x i32> %293 to <4 x i64>
  %295 = and <4 x i64> %291, splat (i64 4294967295)
  %296 = and <4 x i64> %294, splat (i64 4294967295)
  %297 = mul nuw <4 x i64> %296, %295
  %298 = shufflevector <4 x i64> %290, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %299 = add <4 x i64> %276, %298
  %300 = add <4 x i64> %299, %297
  %301 = getelementptr inbounds nuw i8, ptr %121, i64 480
  %302 = load <4 x i64>, ptr %301, align 1
  %303 = xor <4 x i64> %84, %302
  %304 = bitcast <4 x i64> %303 to <8 x i32>
  %305 = shufflevector <8 x i32> %304, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %306 = bitcast <8 x i32> %305 to <4 x i64>
  %307 = and <4 x i64> %303, splat (i64 4294967295)
  %308 = and <4 x i64> %306, splat (i64 4294967295)
  %309 = mul nuw <4 x i64> %308, %307
  %310 = shufflevector <4 x i64> %302, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %311 = add <4 x i64> %288, %310
  %312 = add <4 x i64> %311, %309
  %313 = getelementptr inbounds nuw i8, ptr %121, i64 512
  %314 = load <4 x i64>, ptr %313, align 1
  %315 = xor <4 x i64> %85, %314
  %316 = bitcast <4 x i64> %315 to <8 x i32>
  %317 = shufflevector <8 x i32> %316, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %318 = bitcast <8 x i32> %317 to <4 x i64>
  %319 = and <4 x i64> %315, splat (i64 4294967295)
  %320 = and <4 x i64> %318, splat (i64 4294967295)
  %321 = mul nuw <4 x i64> %320, %319
  %322 = shufflevector <4 x i64> %314, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %323 = add <4 x i64> %300, %322
  %324 = add <4 x i64> %323, %321
  %325 = getelementptr inbounds nuw i8, ptr %121, i64 544
  %326 = load <4 x i64>, ptr %325, align 1
  %327 = xor <4 x i64> %87, %326
  %328 = bitcast <4 x i64> %327 to <8 x i32>
  %329 = shufflevector <8 x i32> %328, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %330 = bitcast <8 x i32> %329 to <4 x i64>
  %331 = and <4 x i64> %327, splat (i64 4294967295)
  %332 = and <4 x i64> %330, splat (i64 4294967295)
  %333 = mul nuw <4 x i64> %332, %331
  %334 = shufflevector <4 x i64> %326, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %335 = add <4 x i64> %312, %334
  %336 = add <4 x i64> %335, %333
  %337 = getelementptr inbounds nuw i8, ptr %121, i64 576
  %338 = load <4 x i64>, ptr %337, align 1
  %339 = xor <4 x i64> %89, %338
  %340 = bitcast <4 x i64> %339 to <8 x i32>
  %341 = shufflevector <8 x i32> %340, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %342 = bitcast <8 x i32> %341 to <4 x i64>
  %343 = and <4 x i64> %339, splat (i64 4294967295)
  %344 = and <4 x i64> %342, splat (i64 4294967295)
  %345 = mul nuw <4 x i64> %344, %343
  %346 = shufflevector <4 x i64> %338, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %347 = add <4 x i64> %324, %346
  %348 = add <4 x i64> %347, %345
  %349 = getelementptr inbounds nuw i8, ptr %121, i64 608
  %350 = load <4 x i64>, ptr %349, align 1
  %351 = xor <4 x i64> %91, %350
  %352 = bitcast <4 x i64> %351 to <8 x i32>
  %353 = shufflevector <8 x i32> %352, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %354 = bitcast <8 x i32> %353 to <4 x i64>
  %355 = and <4 x i64> %351, splat (i64 4294967295)
  %356 = and <4 x i64> %354, splat (i64 4294967295)
  %357 = mul nuw <4 x i64> %356, %355
  %358 = shufflevector <4 x i64> %350, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %359 = add <4 x i64> %336, %358
  %360 = add <4 x i64> %359, %357
  %361 = getelementptr inbounds nuw i8, ptr %121, i64 640
  %362 = load <4 x i64>, ptr %361, align 1
  %363 = xor <4 x i64> %92, %362
  %364 = bitcast <4 x i64> %363 to <8 x i32>
  %365 = shufflevector <8 x i32> %364, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %366 = bitcast <8 x i32> %365 to <4 x i64>
  %367 = and <4 x i64> %363, splat (i64 4294967295)
  %368 = and <4 x i64> %366, splat (i64 4294967295)
  %369 = mul nuw <4 x i64> %368, %367
  %370 = shufflevector <4 x i64> %362, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %371 = add <4 x i64> %348, %370
  %372 = add <4 x i64> %371, %369
  %373 = getelementptr inbounds nuw i8, ptr %121, i64 672
  %374 = load <4 x i64>, ptr %373, align 1
  %375 = xor <4 x i64> %94, %374
  %376 = bitcast <4 x i64> %375 to <8 x i32>
  %377 = shufflevector <8 x i32> %376, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %378 = bitcast <8 x i32> %377 to <4 x i64>
  %379 = and <4 x i64> %375, splat (i64 4294967295)
  %380 = and <4 x i64> %378, splat (i64 4294967295)
  %381 = mul nuw <4 x i64> %380, %379
  %382 = shufflevector <4 x i64> %374, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %383 = add <4 x i64> %360, %382
  %384 = add <4 x i64> %383, %381
  %385 = getelementptr inbounds nuw i8, ptr %121, i64 704
  %386 = load <4 x i64>, ptr %385, align 1
  %387 = xor <4 x i64> %96, %386
  %388 = bitcast <4 x i64> %387 to <8 x i32>
  %389 = shufflevector <8 x i32> %388, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %390 = bitcast <8 x i32> %389 to <4 x i64>
  %391 = and <4 x i64> %387, splat (i64 4294967295)
  %392 = and <4 x i64> %390, splat (i64 4294967295)
  %393 = mul nuw <4 x i64> %392, %391
  %394 = shufflevector <4 x i64> %386, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %395 = add <4 x i64> %372, %394
  %396 = add <4 x i64> %395, %393
  %397 = getelementptr inbounds nuw i8, ptr %121, i64 736
  %398 = load <4 x i64>, ptr %397, align 1
  %399 = xor <4 x i64> %98, %398
  %400 = bitcast <4 x i64> %399 to <8 x i32>
  %401 = shufflevector <8 x i32> %400, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %402 = bitcast <8 x i32> %401 to <4 x i64>
  %403 = and <4 x i64> %399, splat (i64 4294967295)
  %404 = and <4 x i64> %402, splat (i64 4294967295)
  %405 = mul nuw <4 x i64> %404, %403
  %406 = shufflevector <4 x i64> %398, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %407 = add <4 x i64> %384, %406
  %408 = add <4 x i64> %407, %405
  %409 = getelementptr inbounds nuw i8, ptr %121, i64 768
  %410 = load <4 x i64>, ptr %409, align 1
  %411 = xor <4 x i64> %99, %410
  %412 = bitcast <4 x i64> %411 to <8 x i32>
  %413 = shufflevector <8 x i32> %412, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %414 = bitcast <8 x i32> %413 to <4 x i64>
  %415 = and <4 x i64> %411, splat (i64 4294967295)
  %416 = and <4 x i64> %414, splat (i64 4294967295)
  %417 = mul nuw <4 x i64> %416, %415
  %418 = shufflevector <4 x i64> %410, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %419 = add <4 x i64> %396, %418
  %420 = add <4 x i64> %419, %417
  %421 = getelementptr inbounds nuw i8, ptr %121, i64 800
  %422 = load <4 x i64>, ptr %421, align 1
  %423 = xor <4 x i64> %101, %422
  %424 = bitcast <4 x i64> %423 to <8 x i32>
  %425 = shufflevector <8 x i32> %424, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %426 = bitcast <8 x i32> %425 to <4 x i64>
  %427 = and <4 x i64> %423, splat (i64 4294967295)
  %428 = and <4 x i64> %426, splat (i64 4294967295)
  %429 = mul nuw <4 x i64> %428, %427
  %430 = shufflevector <4 x i64> %422, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %431 = add <4 x i64> %408, %430
  %432 = add <4 x i64> %431, %429
  %433 = getelementptr inbounds nuw i8, ptr %121, i64 832
  %434 = load <4 x i64>, ptr %433, align 1
  %435 = xor <4 x i64> %103, %434
  %436 = bitcast <4 x i64> %435 to <8 x i32>
  %437 = shufflevector <8 x i32> %436, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %438 = bitcast <8 x i32> %437 to <4 x i64>
  %439 = and <4 x i64> %435, splat (i64 4294967295)
  %440 = and <4 x i64> %438, splat (i64 4294967295)
  %441 = mul nuw <4 x i64> %440, %439
  %442 = shufflevector <4 x i64> %434, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %443 = add <4 x i64> %420, %442
  %444 = add <4 x i64> %443, %441
  %445 = getelementptr inbounds nuw i8, ptr %121, i64 864
  %446 = load <4 x i64>, ptr %445, align 1
  %447 = xor <4 x i64> %105, %446
  %448 = bitcast <4 x i64> %447 to <8 x i32>
  %449 = shufflevector <8 x i32> %448, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %450 = bitcast <8 x i32> %449 to <4 x i64>
  %451 = and <4 x i64> %447, splat (i64 4294967295)
  %452 = and <4 x i64> %450, splat (i64 4294967295)
  %453 = mul nuw <4 x i64> %452, %451
  %454 = shufflevector <4 x i64> %446, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %455 = add <4 x i64> %432, %454
  %456 = add <4 x i64> %455, %453
  %457 = getelementptr inbounds nuw i8, ptr %121, i64 896
  %458 = load <4 x i64>, ptr %457, align 1
  %459 = xor <4 x i64> %106, %458
  %460 = bitcast <4 x i64> %459 to <8 x i32>
  %461 = shufflevector <8 x i32> %460, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %462 = bitcast <8 x i32> %461 to <4 x i64>
  %463 = and <4 x i64> %459, splat (i64 4294967295)
  %464 = and <4 x i64> %462, splat (i64 4294967295)
  %465 = mul nuw <4 x i64> %464, %463
  %466 = shufflevector <4 x i64> %458, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %467 = add <4 x i64> %444, %466
  %468 = add <4 x i64> %467, %465
  %469 = getelementptr inbounds nuw i8, ptr %121, i64 928
  %470 = load <4 x i64>, ptr %469, align 1
  %471 = xor <4 x i64> %108, %470
  %472 = bitcast <4 x i64> %471 to <8 x i32>
  %473 = shufflevector <8 x i32> %472, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %474 = bitcast <8 x i32> %473 to <4 x i64>
  %475 = and <4 x i64> %471, splat (i64 4294967295)
  %476 = and <4 x i64> %474, splat (i64 4294967295)
  %477 = mul nuw <4 x i64> %476, %475
  %478 = shufflevector <4 x i64> %470, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %479 = add <4 x i64> %456, %478
  %480 = add <4 x i64> %479, %477
  %481 = getelementptr inbounds nuw i8, ptr %121, i64 960
  %482 = load <4 x i64>, ptr %481, align 1
  %483 = xor <4 x i64> %110, %482
  %484 = bitcast <4 x i64> %483 to <8 x i32>
  %485 = shufflevector <8 x i32> %484, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %486 = bitcast <8 x i32> %485 to <4 x i64>
  %487 = and <4 x i64> %483, splat (i64 4294967295)
  %488 = and <4 x i64> %486, splat (i64 4294967295)
  %489 = mul nuw <4 x i64> %488, %487
  %490 = shufflevector <4 x i64> %482, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %491 = add <4 x i64> %468, %490
  %492 = add <4 x i64> %491, %489
  %493 = getelementptr inbounds nuw i8, ptr %121, i64 992
  %494 = load <4 x i64>, ptr %493, align 1
  %495 = xor <4 x i64> %112, %494
  %496 = bitcast <4 x i64> %495 to <8 x i32>
  %497 = shufflevector <8 x i32> %496, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %498 = bitcast <8 x i32> %497 to <4 x i64>
  %499 = and <4 x i64> %495, splat (i64 4294967295)
  %500 = and <4 x i64> %498, splat (i64 4294967295)
  %501 = mul nuw <4 x i64> %500, %499
  %502 = shufflevector <4 x i64> %494, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %503 = add <4 x i64> %480, %502
  %504 = add <4 x i64> %503, %501
  %505 = lshr <4 x i64> %492, splat (i64 47)
  %506 = xor <4 x i64> %113, %505
  %507 = xor <4 x i64> %506, %492
  %508 = and <4 x i64> %507, splat (i64 4294967295)
  %509 = mul nuw <4 x i64> %508, splat (i64 2654435761)
  %510 = bitcast <4 x i64> %507 to <8 x i32>
  %511 = shufflevector <8 x i32> %510, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %512 = bitcast <8 x i32> %511 to <4 x i64>
  %513 = mul <4 x i64> %512, splat (i64 -7046029290881679360)
  %514 = add <4 x i64> %513, %509
  %515 = lshr <4 x i64> %504, splat (i64 47)
  %516 = xor <4 x i64> %115, %515
  %517 = xor <4 x i64> %516, %504
  %518 = and <4 x i64> %517, splat (i64 4294967295)
  %519 = mul nuw <4 x i64> %518, splat (i64 2654435761)
  %520 = bitcast <4 x i64> %517 to <8 x i32>
  %521 = shufflevector <8 x i32> %520, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %522 = bitcast <8 x i32> %521 to <4 x i64>
  %523 = mul <4 x i64> %522, splat (i64 -7046029290881679360)
  %524 = add <4 x i64> %523, %519
  %525 = add nuw nsw i64 %119, 1
  %526 = icmp eq i64 %525, %54
  br i1 %526, label %527, label %116

527:                                              ; preds = %116, %6
  %528 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %524, %116 ]
  %529 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %514, %116 ]
  %530 = and i64 %1, -1024
  %531 = lshr i64 %1, 6
  %532 = and i64 %531, 15
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 %530
  %534 = icmp eq i64 %532, 0
  br i1 %534, label %571, label %535

535:                                              ; preds = %527, %535
  %536 = phi <4 x i64> [ %568, %535 ], [ %528, %527 ]
  %537 = phi <4 x i64> [ %554, %535 ], [ %529, %527 ]
  %538 = phi i64 [ %569, %535 ], [ 0, %527 ]
  %539 = shl i64 %538, 6
  %540 = getelementptr inbounds nuw i8, ptr %533, i64 %539
  %541 = shl i64 %538, 3
  %542 = getelementptr inbounds nuw i8, ptr %4, i64 %541
  %543 = load <4 x i64>, ptr %540, align 1
  %544 = load <4 x i64>, ptr %542, align 8
  %545 = xor <4 x i64> %544, %543
  %546 = bitcast <4 x i64> %545 to <8 x i32>
  %547 = shufflevector <8 x i32> %546, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %548 = bitcast <8 x i32> %547 to <4 x i64>
  %549 = and <4 x i64> %545, splat (i64 4294967295)
  %550 = and <4 x i64> %548, splat (i64 4294967295)
  %551 = mul nuw <4 x i64> %550, %549
  %552 = shufflevector <4 x i64> %543, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %553 = add <4 x i64> %537, %552
  %554 = add <4 x i64> %553, %551
  %555 = getelementptr inbounds nuw i8, ptr %540, i64 32
  %556 = load <4 x i64>, ptr %555, align 1
  %557 = getelementptr inbounds nuw i8, ptr %542, i64 32
  %558 = load <4 x i64>, ptr %557, align 8
  %559 = xor <4 x i64> %558, %556
  %560 = bitcast <4 x i64> %559 to <8 x i32>
  %561 = shufflevector <8 x i32> %560, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %562 = bitcast <8 x i32> %561 to <4 x i64>
  %563 = and <4 x i64> %559, splat (i64 4294967295)
  %564 = and <4 x i64> %562, splat (i64 4294967295)
  %565 = mul nuw <4 x i64> %564, %563
  %566 = shufflevector <4 x i64> %556, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %567 = add <4 x i64> %536, %566
  %568 = add <4 x i64> %567, %565
  %569 = add nuw nsw i64 %538, 1
  %570 = icmp eq i64 %569, %532
  br i1 %570, label %571, label %535

571:                                              ; preds = %535, %527
  %572 = phi <4 x i64> [ %528, %527 ], [ %568, %535 ]
  %573 = phi <4 x i64> [ %529, %527 ], [ %554, %535 ]
  %574 = and i64 %1, 63
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %576, label %583

576:                                              ; preds = %571
  %577 = getelementptr inbounds nuw i8, ptr %4, i64 125
  %578 = load i64, ptr %577, align 1
  %579 = getelementptr inbounds nuw i8, ptr %4, i64 133
  %580 = load i64, ptr %579, align 1
  %581 = getelementptr inbounds nuw i8, ptr %4, i64 141
  %582 = load i64, ptr %581, align 1
  br label %620

583:                                              ; preds = %571
  %584 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %585 = getelementptr inbounds i8, ptr %584, i64 -64
  %586 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %587 = load <4 x i64>, ptr %585, align 1
  %588 = load <4 x i64>, ptr %586, align 1
  %589 = xor <4 x i64> %588, %587
  %590 = bitcast <4 x i64> %589 to <8 x i32>
  %591 = shufflevector <8 x i32> %590, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %592 = bitcast <8 x i32> %591 to <4 x i64>
  %593 = and <4 x i64> %589, splat (i64 4294967295)
  %594 = and <4 x i64> %592, splat (i64 4294967295)
  %595 = mul nuw <4 x i64> %594, %593
  %596 = shufflevector <4 x i64> %587, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %597 = add <4 x i64> %573, %596
  %598 = add <4 x i64> %597, %595
  %599 = getelementptr inbounds i8, ptr %584, i64 -32
  %600 = load <4 x i64>, ptr %599, align 1
  %601 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %602 = load <4 x i64>, ptr %601, align 1
  %603 = xor <4 x i64> %602, %600
  %604 = bitcast <4 x i64> %603 to <8 x i32>
  %605 = shufflevector <8 x i32> %604, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %606 = bitcast <8 x i32> %605 to <4 x i64>
  %607 = and <4 x i64> %603, splat (i64 4294967295)
  %608 = and <4 x i64> %606, splat (i64 4294967295)
  %609 = mul nuw <4 x i64> %608, %607
  %610 = shufflevector <4 x i64> %600, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %611 = add <4 x i64> %572, %610
  %612 = add <4 x i64> %611, %609
  %613 = bitcast <4 x i64> %588 to i256
  %614 = lshr i256 %613, 32
  %615 = trunc i256 %614 to i64
  %616 = lshr i256 %613, 96
  %617 = trunc i256 %616 to i64
  %618 = lshr i256 %613, 160
  %619 = trunc i256 %618 to i64
  br label %620

620:                                              ; preds = %576, %583
  %621 = phi i64 [ %582, %576 ], [ %619, %583 ]
  %622 = phi i64 [ %580, %576 ], [ %617, %583 ]
  %623 = phi i64 [ %578, %576 ], [ %615, %583 ]
  %624 = phi <4 x i64> [ %572, %576 ], [ %612, %583 ]
  %625 = phi <4 x i64> [ %573, %576 ], [ %598, %583 ]
  %626 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %627 = mul i64 %1, -7046029288634856825
  %628 = extractelement <4 x i64> %625, i64 0
  %629 = load i64, ptr %626, align 1
  %630 = xor i64 %629, %628
  %631 = extractelement <4 x i64> %625, i64 1
  %632 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %633 = load i64, ptr %632, align 1
  %634 = xor i64 %633, %631
  %635 = zext i64 %630 to i128
  %636 = zext i64 %634 to i128
  %637 = mul nuw i128 %636, %635
  %638 = lshr i128 %637, 64
  %639 = xor i128 %638, %637
  %640 = trunc i128 %639 to i64
  %641 = add i64 %627, %640
  %642 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %643 = extractelement <4 x i64> %625, i64 2
  %644 = load i64, ptr %642, align 1
  %645 = xor i64 %644, %643
  %646 = extractelement <4 x i64> %625, i64 3
  %647 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %648 = load i64, ptr %647, align 1
  %649 = xor i64 %648, %646
  %650 = zext i64 %645 to i128
  %651 = zext i64 %649 to i128
  %652 = mul nuw i128 %651, %650
  %653 = lshr i128 %652, 64
  %654 = xor i128 %653, %652
  %655 = trunc i128 %654 to i64
  %656 = add i64 %641, %655
  %657 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %658 = extractelement <4 x i64> %624, i64 0
  %659 = load i64, ptr %657, align 1
  %660 = xor i64 %659, %658
  %661 = extractelement <4 x i64> %624, i64 1
  %662 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %663 = load i64, ptr %662, align 1
  %664 = xor i64 %663, %661
  %665 = zext i64 %660 to i128
  %666 = zext i64 %664 to i128
  %667 = mul nuw i128 %666, %665
  %668 = lshr i128 %667, 64
  %669 = xor i128 %668, %667
  %670 = trunc i128 %669 to i64
  %671 = add i64 %656, %670
  %672 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %673 = extractelement <4 x i64> %624, i64 2
  %674 = load i64, ptr %672, align 1
  %675 = xor i64 %674, %673
  %676 = extractelement <4 x i64> %624, i64 3
  %677 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %678 = load i64, ptr %677, align 1
  %679 = xor i64 %678, %676
  %680 = zext i64 %675 to i128
  %681 = zext i64 %679 to i128
  %682 = mul nuw i128 %681, %680
  %683 = lshr i128 %682, 64
  %684 = xor i128 %683, %682
  %685 = trunc i128 %684 to i64
  %686 = add i64 %671, %685
  %687 = lshr i64 %686, 37
  %688 = xor i64 %687, %686
  %689 = mul i64 %688, 1609587929392839161
  %690 = lshr i64 %689, 32
  %691 = xor i64 %690, %689
  %692 = getelementptr inbounds nuw i8, ptr %4, i64 117
  %693 = mul i64 %1, -4417276706812531889
  %694 = xor i64 %693, -1
  %695 = load i64, ptr %692, align 1
  %696 = xor i64 %695, %628
  %697 = xor i64 %623, %631
  %698 = zext i64 %696 to i128
  %699 = zext i64 %697 to i128
  %700 = mul nuw i128 %699, %698
  %701 = lshr i128 %700, 64
  %702 = xor i128 %701, %700
  %703 = trunc i128 %702 to i64
  %704 = add i64 %703, %694
  %705 = xor i64 %622, %643
  %706 = xor i64 %621, %646
  %707 = zext i64 %705 to i128
  %708 = zext i64 %706 to i128
  %709 = mul nuw i128 %708, %707
  %710 = lshr i128 %709, 64
  %711 = xor i128 %710, %709
  %712 = trunc i128 %711 to i64
  %713 = add i64 %704, %712
  %714 = getelementptr inbounds nuw i8, ptr %4, i64 149
  %715 = load i64, ptr %714, align 1
  %716 = xor i64 %715, %658
  %717 = getelementptr inbounds nuw i8, ptr %4, i64 157
  %718 = load i64, ptr %717, align 1
  %719 = xor i64 %718, %661
  %720 = zext i64 %716 to i128
  %721 = zext i64 %719 to i128
  %722 = mul nuw i128 %721, %720
  %723 = lshr i128 %722, 64
  %724 = xor i128 %723, %722
  %725 = trunc i128 %724 to i64
  %726 = add i64 %713, %725
  %727 = getelementptr inbounds nuw i8, ptr %4, i64 165
  %728 = load i64, ptr %727, align 1
  %729 = xor i64 %728, %673
  %730 = getelementptr inbounds nuw i8, ptr %4, i64 173
  %731 = load i64, ptr %730, align 1
  %732 = xor i64 %731, %676
  %733 = zext i64 %729 to i128
  %734 = zext i64 %732 to i128
  %735 = mul nuw i128 %734, %733
  %736 = lshr i128 %735, 64
  %737 = xor i128 %736, %735
  %738 = trunc i128 %737 to i64
  %739 = add i64 %726, %738
  %740 = lshr i64 %739, 37
  %741 = xor i64 %740, %739
  %742 = mul i64 %741, 1609587929392839161
  %743 = lshr i64 %742, 32
  %744 = xor i64 %743, %742
  %745 = insertvalue { i64, i64 } poison, i64 %691, 0
  %746 = insertvalue { i64, i64 } %745, i64 %744, 1
  br label %747

747:                                              ; preds = %620, %56
  %748 = phi { i64, i64 } [ %57, %56 ], [ %746, %620 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #25
  ret { i64, i64 } %748
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local { i64, i64 } @XXH128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %127

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %43

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
  %22 = mul i64 %15, -7046029288634856825
  %23 = add i64 %22, %21
  %24 = lshr i64 %23, 32
  %25 = xor i64 %24, %19
  %26 = zext i64 %25 to i128
  %27 = mul nuw i128 %26, 14029467366897019727
  %28 = trunc i128 %27 to i64
  %29 = lshr i128 %27, 64
  %30 = trunc nuw i128 %29 to i64
  %31 = mul i64 %23, -4417276706812531889
  %32 = add i64 %31, %30
  %33 = lshr i64 %28, 37
  %34 = xor i64 %33, %28
  %35 = mul i64 %34, 1609587929392839161
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  %38 = lshr i64 %32, 37
  %39 = xor i64 %38, %32
  %40 = mul i64 %39, 1609587929392839161
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  br label %122

43:                                               ; preds = %5
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %83

45:                                               ; preds = %43
  %46 = load i32, ptr %0, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %48 = getelementptr inbounds i8, ptr %47, i64 -4
  %49 = load i32, ptr %48, align 1
  %50 = zext i32 %46 to i64
  %51 = zext i32 %49 to i64
  %52 = shl nuw i64 %51, 32
  %53 = or disjoint i64 %52, %50
  %54 = tail call noundef i64 @llvm.bswap.i64(i64 %53)
  %55 = add i64 %2, -4734510112055689544
  %56 = xor i64 %53, %55
  %57 = sub i64 2066345149520216444, %2
  %58 = xor i64 %54, %57
  %59 = lshr i64 %56, 51
  %60 = xor i64 %59, %56
  %61 = mul i64 %60, 2654435761
  %62 = add i64 %61, %1
  %63 = lshr i64 %62, 47
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, -4417276706812531889
  %66 = lshr i64 %58, 47
  %67 = xor i64 %66, %58
  %68 = mul i64 %67, -7046029288634856825
  %69 = sub i64 %68, %1
  %70 = lshr i64 %69, 43
  %71 = xor i64 %70, %69
  %72 = mul i64 %71, -8796714831421723037
  %73 = lshr i64 %65, 37
  %74 = xor i64 %73, %65
  %75 = mul i64 %74, 1609587929392839161
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  %78 = lshr i64 %72, 37
  %79 = xor i64 %78, %72
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  br label %122

83:                                               ; preds = %43
  %84 = icmp eq i64 %1, 0
  br i1 %84, label %122, label %85

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
  %97 = zext i8 %92 to i32
  %98 = shl nuw nsw i32 %97, 16
  %99 = or disjoint i32 %96, %98
  %100 = trunc nuw nsw i64 %1 to i32
  %101 = shl nuw nsw i32 %100, 24
  %102 = or disjoint i32 %99, %101
  %103 = tail call noundef i32 @llvm.bswap.i32(i32 %102)
  %104 = zext nneg i32 %102 to i64
  %105 = add i64 %2, 963444408
  %106 = xor i64 %105, %104
  %107 = zext i32 %103 to i64
  %108 = sub i64 3192628259, %2
  %109 = xor i64 %108, %107
  %110 = mul i64 %106, -7046029288634856825
  %111 = mul i64 %109, -4417276706812531889
  %112 = lshr i64 %110, 37
  %113 = xor i64 %112, %110
  %114 = mul i64 %113, 1609587929392839161
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  %117 = lshr i64 %111, 37
  %118 = xor i64 %117, %111
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  br label %122

122:                                              ; preds = %85, %83, %45, %7
  %123 = phi i64 [ %42, %7 ], [ %82, %45 ], [ %121, %85 ], [ 0, %83 ]
  %124 = phi i64 [ %37, %7 ], [ %77, %45 ], [ %116, %85 ], [ 0, %83 ]
  %125 = insertvalue { i64, i64 } poison, i64 %124, 0
  %126 = insertvalue { i64, i64 } %125, i64 %123, 1
  br label %294

127:                                              ; preds = %3
  %128 = icmp ult i64 %1, 129
  br i1 %128, label %129, label %288

129:                                              ; preds = %127
  %130 = mul i64 %1, -7046029288634856825
  %131 = icmp samesign ugt i64 %1, 32
  br i1 %131, label %132, label %235

132:                                              ; preds = %129
  %133 = icmp samesign ugt i64 %1, 64
  br i1 %133, label %134, label %201

134:                                              ; preds = %132
  %135 = icmp samesign ugt i64 %1, 96
  br i1 %135, label %136, label %167

136:                                              ; preds = %134
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %138 = load i64, ptr %137, align 1
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %140 = load i64, ptr %139, align 1
  %141 = add i64 %2, 4554437623014685352
  %142 = xor i64 %138, %141
  %143 = sub i64 2111919702937427193, %2
  %144 = xor i64 %140, %143
  %145 = zext i64 %142 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %130, %150
  %152 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %153 = getelementptr inbounds i8, ptr %152, i64 -64
  %154 = load i64, ptr %153, align 1
  %155 = getelementptr inbounds i8, ptr %152, i64 -56
  %156 = load i64, ptr %155, align 1
  %157 = add i64 %2, 3556072174620004746
  %158 = xor i64 %154, %157
  %159 = sub i64 7238261902898274248, %2
  %160 = xor i64 %156, %159
  %161 = zext i64 %158 to i128
  %162 = zext i64 %160 to i128
  %163 = mul nuw i128 %162, %161
  %164 = lshr i128 %163, 64
  %165 = xor i128 %164, %163
  %166 = trunc i128 %165 to i64
  br label %167

167:                                              ; preds = %136, %134
  %168 = phi i64 [ %166, %136 ], [ 0, %134 ]
  %169 = phi i64 [ %151, %136 ], [ %130, %134 ]
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %171 = load i64, ptr %170, align 1
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %173 = load i64, ptr %172, align 1
  %174 = add i64 %2, -3818837453329782724
  %175 = xor i64 %171, %174
  %176 = sub i64 -6688317018830679928, %2
  %177 = xor i64 %173, %176
  %178 = zext i64 %175 to i128
  %179 = zext i64 %177 to i128
  %180 = mul nuw i128 %179, %178
  %181 = lshr i128 %180, 64
  %182 = xor i128 %181, %180
  %183 = trunc i128 %182 to i64
  %184 = add i64 %169, %183
  %185 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %186 = getelementptr inbounds i8, ptr %185, i64 -48
  %187 = load i64, ptr %186, align 1
  %188 = getelementptr inbounds i8, ptr %185, i64 -40
  %189 = load i64, ptr %188, align 1
  %190 = add i64 %2, 5690594596133299313
  %191 = xor i64 %187, %190
  %192 = sub i64 -2833645246901970632, %2
  %193 = xor i64 %189, %192
  %194 = zext i64 %191 to i128
  %195 = zext i64 %193 to i128
  %196 = mul nuw i128 %195, %194
  %197 = lshr i128 %196, 64
  %198 = xor i128 %197, %196
  %199 = trunc i128 %198 to i64
  %200 = add i64 %168, %199
  br label %201

201:                                              ; preds = %167, %132
  %202 = phi i64 [ %200, %167 ], [ 0, %132 ]
  %203 = phi i64 [ %184, %167 ], [ %130, %132 ]
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %205 = load i64, ptr %204, align 1
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %207 = load i64, ptr %206, align 1
  %208 = add i64 %2, 8711581037947681227
  %209 = xor i64 %205, %208
  %210 = sub i64 2410270004345854594, %2
  %211 = xor i64 %207, %210
  %212 = zext i64 %209 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %203, %217
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %220 = getelementptr inbounds i8, ptr %219, i64 -32
  %221 = load i64, ptr %220, align 1
  %222 = getelementptr inbounds i8, ptr %219, i64 -24
  %223 = load i64, ptr %222, align 1
  %224 = add i64 %2, -8204357891075471176
  %225 = xor i64 %221, %224
  %226 = sub i64 5487137525590930912, %2
  %227 = xor i64 %223, %226
  %228 = zext i64 %225 to i128
  %229 = zext i64 %227 to i128
  %230 = mul nuw i128 %229, %228
  %231 = lshr i128 %230, 64
  %232 = xor i128 %231, %230
  %233 = trunc i128 %232 to i64
  %234 = add i64 %202, %233
  br label %235

235:                                              ; preds = %201, %129
  %236 = phi i64 [ %234, %201 ], [ 0, %129 ]
  %237 = phi i64 [ %218, %201 ], [ %130, %129 ]
  %238 = load i64, ptr %0, align 1
  %239 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %240 = load i64, ptr %239, align 1
  %241 = add i64 %2, -4734510112055689544
  %242 = xor i64 %238, %241
  %243 = sub i64 2066345149520216444, %2
  %244 = xor i64 %240, %243
  %245 = zext i64 %242 to i128
  %246 = zext i64 %244 to i128
  %247 = mul nuw i128 %246, %245
  %248 = lshr i128 %247, 64
  %249 = xor i128 %248, %247
  %250 = trunc i128 %249 to i64
  %251 = add i64 %237, %250
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %253 = getelementptr inbounds i8, ptr %252, i64 -16
  %254 = load i64, ptr %253, align 1
  %255 = getelementptr inbounds i8, ptr %252, i64 -8
  %256 = load i64, ptr %255, align 1
  %257 = add i64 %2, -2623469361688619810
  %258 = xor i64 %254, %257
  %259 = sub i64 2262974939099578482, %2
  %260 = xor i64 %256, %259
  %261 = zext i64 %258 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %236, %266
  %268 = add i64 %267, %251
  %269 = mul i64 %251, -7046029288634856825
  %270 = mul i64 %267, -8796714831421723037
  %271 = sub i64 %1, %2
  %272 = mul i64 %271, -4417276706812531889
  %273 = add i64 %269, %272
  %274 = add i64 %273, %270
  %275 = lshr i64 %268, 37
  %276 = xor i64 %275, %268
  %277 = mul i64 %276, 1609587929392839161
  %278 = lshr i64 %277, 32
  %279 = xor i64 %278, %277
  %280 = lshr i64 %274, 37
  %281 = xor i64 %280, %274
  %282 = mul i64 %281, 1609587929392839161
  %283 = lshr i64 %282, 32
  %284 = xor i64 %283, %282
  %285 = sub i64 0, %284
  %286 = insertvalue { i64, i64 } poison, i64 %279, 0
  %287 = insertvalue { i64, i64 } %286, i64 %285, 1
  br label %294

288:                                              ; preds = %127
  %289 = icmp ult i64 %1, 241
  br i1 %289, label %290, label %292

290:                                              ; preds = %288
  %291 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @kSecret, i64 noundef %2)
  br label %294

292:                                              ; preds = %288
  %293 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2)
  br label %294

294:                                              ; preds = %122, %235, %290, %292
  %295 = phi { i64, i64 } [ %126, %122 ], [ %287, %235 ], [ %291, %290 ], [ %293, %292 ]
  ret { i64, i64 } %295
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
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr @kSecret, ptr %12, align 64
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 128, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 524
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
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %1, ptr %14, align 64
  %15 = trunc i64 %2 to i32
  %16 = add i32 %15, -64
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 %16, ptr %17, align 4
  %18 = lshr i32 %16, 3
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 524
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
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 128, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 524
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
  store ptr %5, ptr %15, align 64
  br label %65

65:                                               ; preds = %2, %4
  %66 = phi i32 [ 0, %4 ], [ 1, %2 ]
  ret i32 %66
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @XXH3_128bits_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #16 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %549, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %8 = load i64, ptr %7, align 32
  %9 = add i64 %8, %2
  store i64 %9, ptr %7, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = add i64 %2, %12
  %14 = icmp ult i64 %13, 257
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %17, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %18 = trunc i64 %2 to i32
  %19 = load i32, ptr %10, align 8
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
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %33 = load ptr, ptr %32, align 64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 540
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
  %98 = and <4 x i64> %97, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, splat (i64 2654435761)
  %100 = bitcast <4 x i64> %97 to <8 x i32>
  %101 = shufflevector <8 x i32> %100, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %102 = bitcast <8 x i32> %101 to <4 x i64>
  %103 = mul <4 x i64> %102, splat (i64 -7046029290881679360)
  %104 = add <4 x i64> %103, %99
  store <4 x i64> %104, ptr %0, align 32
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %106 = lshr <4 x i64> %91, splat (i64 47)
  %107 = getelementptr inbounds nuw i8, ptr %93, i64 32
  %108 = load <4 x i64>, ptr %107, align 1
  %109 = xor <4 x i64> %108, %106
  %110 = xor <4 x i64> %109, %91
  %111 = and <4 x i64> %110, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, splat (i64 2654435761)
  %113 = bitcast <4 x i64> %110 to <8 x i32>
  %114 = shufflevector <8 x i32> %113, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %115 = bitcast <8 x i32> %114 to <4 x i64>
  %116 = mul <4 x i64> %115, splat (i64 -7046029290881679360)
  %117 = add <4 x i64> %116, %112
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
  store i32 0, ptr %10, align 8
  br label %278

278:                                              ; preds = %276, %21
  %279 = phi ptr [ %28, %276 ], [ %1, %21 ]
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 256
  %281 = icmp ugt ptr %280, %6
  br i1 %281, label %538, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds i8, ptr %6, i64 -256
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %288 = load i32, ptr %284, align 4
  %289 = load i32, ptr %285, align 4
  %290 = load ptr, ptr %286, align 64
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
  %359 = and <4 x i64> %358, splat (i64 4294967295)
  %360 = mul nuw <4 x i64> %359, splat (i64 2654435761)
  %361 = bitcast <4 x i64> %358 to <8 x i32>
  %362 = shufflevector <8 x i32> %361, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %363 = bitcast <8 x i32> %362 to <4 x i64>
  %364 = mul <4 x i64> %363, splat (i64 -7046029290881679360)
  %365 = add <4 x i64> %364, %360
  store <4 x i64> %365, ptr %0, align 32
  %366 = lshr <4 x i64> %353, splat (i64 47)
  %367 = load <4 x i64>, ptr %297, align 1
  %368 = xor <4 x i64> %367, %366
  %369 = xor <4 x i64> %368, %353
  %370 = and <4 x i64> %369, splat (i64 4294967295)
  %371 = mul nuw <4 x i64> %370, splat (i64 2654435761)
  %372 = bitcast <4 x i64> %369 to <8 x i32>
  %373 = shufflevector <8 x i32> %372, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %374 = bitcast <8 x i32> %373 to <4 x i64>
  %375 = mul <4 x i64> %374, splat (i64 -7046029290881679360)
  %376 = add <4 x i64> %375, %371
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
  store i32 %548, ptr %10, align 8
  br label %549

549:                                              ; preds = %547, %3, %538
  %550 = phi i32 [ 1, %3 ], [ 0, %538 ], [ 0, %547 ]
  ret i32 %550
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local { i64, i64 } @XXH3_128bits_digest(ptr noundef readonly %0) local_unnamed_addr #16 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %4 = load i64, ptr %3, align 32
  %5 = icmp ugt i64 %4, 240
  br i1 %5, label %6, label %394

6:                                                ; preds = %1
  %7 = load <4 x i64>, ptr %0, align 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 63
  br i1 %12, label %13, label %212

13:                                               ; preds = %6
  %14 = lshr i32 %11, 6
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %17 = load i32, ptr %16, align 16
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 524
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 540
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
  %80 = and <4 x i64> %79, splat (i64 4294967295)
  %81 = mul nuw <4 x i64> %80, splat (i64 2654435761)
  %82 = bitcast <4 x i64> %79 to <8 x i32>
  %83 = shufflevector <8 x i32> %82, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %84 = bitcast <8 x i32> %83 to <4 x i64>
  %85 = mul <4 x i64> %84, splat (i64 -7046029290881679360)
  %86 = add <4 x i64> %85, %81
  %87 = lshr <4 x i64> %73, splat (i64 47)
  %88 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %89 = load <4 x i64>, ptr %88, align 1
  %90 = xor <4 x i64> %89, %87
  %91 = xor <4 x i64> %90, %73
  %92 = and <4 x i64> %91, splat (i64 4294967295)
  %93 = mul nuw <4 x i64> %92, splat (i64 2654435761)
  %94 = bitcast <4 x i64> %91 to <8 x i32>
  %95 = shufflevector <8 x i32> %94, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %96 = bitcast <8 x i32> %95 to <4 x i64>
  %97 = mul <4 x i64> %96, splat (i64 -7046029290881679360)
  %98 = add <4 x i64> %97, %93
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
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %216 = load ptr, ptr %215, align 64
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 540
  %218 = load i32, ptr %217, align 4
  %219 = zext i32 %218 to i64
  br label %261

220:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #25
  %221 = sub nuw nsw i32 64, %11
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %224 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %225 = sub nsw i64 0, %222
  %226 = getelementptr inbounds i8, ptr %224, i64 %225
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %226, i64 %222, i1 false)
  %227 = getelementptr inbounds nuw i8, ptr %2, i64 %222
  %228 = zext nneg i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %227, ptr nonnull align 64 %223, i64 %228, i1 false)
  %229 = load ptr, ptr %224, align 64
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 540
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
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #25
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
  br label %992

394:                                              ; preds = %1
  %395 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %396 = load i64, ptr %395, align 8
  %397 = icmp eq i64 %396, 0
  %398 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %397, label %686, label %399

399:                                              ; preds = %394
  %400 = icmp samesign ult i64 %4, 17
  br i1 %400, label %401, label %523

401:                                              ; preds = %399
  %402 = icmp samesign ugt i64 %4, 8
  br i1 %402, label %403, label %439

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
  %418 = mul i64 %411, -7046029288634856825
  %419 = add i64 %418, %417
  %420 = lshr i64 %419, 32
  %421 = xor i64 %420, %415
  %422 = zext i64 %421 to i128
  %423 = mul nuw i128 %422, 14029467366897019727
  %424 = trunc i128 %423 to i64
  %425 = lshr i128 %423, 64
  %426 = trunc nuw i128 %425 to i64
  %427 = mul i64 %419, -4417276706812531889
  %428 = add i64 %427, %426
  %429 = lshr i64 %424, 37
  %430 = xor i64 %429, %424
  %431 = mul i64 %430, 1609587929392839161
  %432 = lshr i64 %431, 32
  %433 = xor i64 %432, %431
  %434 = lshr i64 %428, 37
  %435 = xor i64 %434, %428
  %436 = mul i64 %435, 1609587929392839161
  %437 = lshr i64 %436, 32
  %438 = xor i64 %437, %436
  br label %518

439:                                              ; preds = %401
  %440 = icmp samesign ugt i64 %4, 3
  br i1 %440, label %441, label %479

441:                                              ; preds = %439
  %442 = load i32, ptr %398, align 1
  %443 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %444 = getelementptr inbounds i8, ptr %443, i64 -4
  %445 = load i32, ptr %444, align 1
  %446 = zext i32 %442 to i64
  %447 = zext i32 %445 to i64
  %448 = shl nuw i64 %447, 32
  %449 = or disjoint i64 %448, %446
  %450 = tail call noundef i64 @llvm.bswap.i64(i64 %449)
  %451 = add i64 %396, -4734510112055689544
  %452 = xor i64 %449, %451
  %453 = sub i64 2066345149520216444, %396
  %454 = xor i64 %450, %453
  %455 = lshr i64 %452, 51
  %456 = xor i64 %455, %452
  %457 = mul i64 %456, 2654435761
  %458 = add i64 %457, %4
  %459 = lshr i64 %458, 47
  %460 = xor i64 %459, %458
  %461 = mul i64 %460, -4417276706812531889
  %462 = lshr i64 %454, 47
  %463 = xor i64 %462, %454
  %464 = mul i64 %463, -7046029288634856825
  %465 = sub i64 %464, %4
  %466 = lshr i64 %465, 43
  %467 = xor i64 %466, %465
  %468 = mul i64 %467, -8796714831421723037
  %469 = lshr i64 %461, 37
  %470 = xor i64 %469, %461
  %471 = mul i64 %470, 1609587929392839161
  %472 = lshr i64 %471, 32
  %473 = xor i64 %472, %471
  %474 = lshr i64 %468, 37
  %475 = xor i64 %474, %468
  %476 = mul i64 %475, 1609587929392839161
  %477 = lshr i64 %476, 32
  %478 = xor i64 %477, %476
  br label %518

479:                                              ; preds = %439
  %480 = icmp eq i64 %4, 0
  br i1 %480, label %518, label %481

481:                                              ; preds = %479
  %482 = load i8, ptr %398, align 1
  %483 = lshr i64 %4, 1
  %484 = getelementptr inbounds nuw i8, ptr %398, i64 %483
  %485 = load i8, ptr %484, align 1
  %486 = getelementptr i8, ptr %398, i64 %4
  %487 = getelementptr i8, ptr %486, i64 -1
  %488 = load i8, ptr %487, align 1
  %489 = zext i8 %482 to i32
  %490 = zext i8 %485 to i32
  %491 = shl nuw nsw i32 %490, 8
  %492 = or disjoint i32 %491, %489
  %493 = zext i8 %488 to i32
  %494 = shl nuw nsw i32 %493, 16
  %495 = or disjoint i32 %492, %494
  %496 = trunc nuw nsw i64 %4 to i32
  %497 = shl nuw nsw i32 %496, 24
  %498 = or disjoint i32 %495, %497
  %499 = tail call noundef i32 @llvm.bswap.i32(i32 %498)
  %500 = zext nneg i32 %498 to i64
  %501 = add i64 %396, 963444408
  %502 = xor i64 %501, %500
  %503 = zext i32 %499 to i64
  %504 = sub i64 3192628259, %396
  %505 = xor i64 %504, %503
  %506 = mul i64 %502, -7046029288634856825
  %507 = mul i64 %505, -4417276706812531889
  %508 = lshr i64 %506, 37
  %509 = xor i64 %508, %506
  %510 = mul i64 %509, 1609587929392839161
  %511 = lshr i64 %510, 32
  %512 = xor i64 %511, %510
  %513 = lshr i64 %507, 37
  %514 = xor i64 %513, %507
  %515 = mul i64 %514, 1609587929392839161
  %516 = lshr i64 %515, 32
  %517 = xor i64 %516, %515
  br label %518

518:                                              ; preds = %481, %479, %441, %403
  %519 = phi i64 [ %438, %403 ], [ %478, %441 ], [ %517, %481 ], [ 0, %479 ]
  %520 = phi i64 [ %433, %403 ], [ %473, %441 ], [ %512, %481 ], [ 0, %479 ]
  %521 = insertvalue { i64, i64 } poison, i64 %520, 0
  %522 = insertvalue { i64, i64 } %521, i64 %519, 1
  br label %992

523:                                              ; preds = %399
  %524 = icmp samesign ult i64 %4, 129
  br i1 %524, label %525, label %684

525:                                              ; preds = %523
  %526 = mul i64 %4, -7046029288634856825
  %527 = icmp samesign ugt i64 %4, 32
  br i1 %527, label %528, label %631

528:                                              ; preds = %525
  %529 = icmp samesign ugt i64 %4, 64
  br i1 %529, label %530, label %597

530:                                              ; preds = %528
  %531 = icmp samesign ugt i64 %4, 96
  br i1 %531, label %532, label %563

532:                                              ; preds = %530
  %533 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %534 = load i64, ptr %533, align 1
  %535 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %536 = load i64, ptr %535, align 1
  %537 = add i64 %396, 4554437623014685352
  %538 = xor i64 %534, %537
  %539 = sub i64 2111919702937427193, %396
  %540 = xor i64 %536, %539
  %541 = zext i64 %538 to i128
  %542 = zext i64 %540 to i128
  %543 = mul nuw i128 %542, %541
  %544 = lshr i128 %543, 64
  %545 = xor i128 %544, %543
  %546 = trunc i128 %545 to i64
  %547 = add i64 %526, %546
  %548 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %549 = getelementptr inbounds i8, ptr %548, i64 -64
  %550 = load i64, ptr %549, align 1
  %551 = getelementptr inbounds i8, ptr %548, i64 -56
  %552 = load i64, ptr %551, align 1
  %553 = add i64 %396, 3556072174620004746
  %554 = xor i64 %550, %553
  %555 = sub i64 7238261902898274248, %396
  %556 = xor i64 %552, %555
  %557 = zext i64 %554 to i128
  %558 = zext i64 %556 to i128
  %559 = mul nuw i128 %558, %557
  %560 = lshr i128 %559, 64
  %561 = xor i128 %560, %559
  %562 = trunc i128 %561 to i64
  br label %563

563:                                              ; preds = %532, %530
  %564 = phi i64 [ %562, %532 ], [ 0, %530 ]
  %565 = phi i64 [ %547, %532 ], [ %526, %530 ]
  %566 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %567 = load i64, ptr %566, align 1
  %568 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %569 = load i64, ptr %568, align 1
  %570 = add i64 %396, -3818837453329782724
  %571 = xor i64 %567, %570
  %572 = sub i64 -6688317018830679928, %396
  %573 = xor i64 %569, %572
  %574 = zext i64 %571 to i128
  %575 = zext i64 %573 to i128
  %576 = mul nuw i128 %575, %574
  %577 = lshr i128 %576, 64
  %578 = xor i128 %577, %576
  %579 = trunc i128 %578 to i64
  %580 = add i64 %565, %579
  %581 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %582 = getelementptr inbounds i8, ptr %581, i64 -48
  %583 = load i64, ptr %582, align 1
  %584 = getelementptr inbounds i8, ptr %581, i64 -40
  %585 = load i64, ptr %584, align 1
  %586 = add i64 %396, 5690594596133299313
  %587 = xor i64 %583, %586
  %588 = sub i64 -2833645246901970632, %396
  %589 = xor i64 %585, %588
  %590 = zext i64 %587 to i128
  %591 = zext i64 %589 to i128
  %592 = mul nuw i128 %591, %590
  %593 = lshr i128 %592, 64
  %594 = xor i128 %593, %592
  %595 = trunc i128 %594 to i64
  %596 = add i64 %564, %595
  br label %597

597:                                              ; preds = %563, %528
  %598 = phi i64 [ %596, %563 ], [ 0, %528 ]
  %599 = phi i64 [ %580, %563 ], [ %526, %528 ]
  %600 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %601 = load i64, ptr %600, align 1
  %602 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %603 = load i64, ptr %602, align 1
  %604 = add i64 %396, 8711581037947681227
  %605 = xor i64 %601, %604
  %606 = sub i64 2410270004345854594, %396
  %607 = xor i64 %603, %606
  %608 = zext i64 %605 to i128
  %609 = zext i64 %607 to i128
  %610 = mul nuw i128 %609, %608
  %611 = lshr i128 %610, 64
  %612 = xor i128 %611, %610
  %613 = trunc i128 %612 to i64
  %614 = add i64 %599, %613
  %615 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %616 = getelementptr inbounds i8, ptr %615, i64 -32
  %617 = load i64, ptr %616, align 1
  %618 = getelementptr inbounds i8, ptr %615, i64 -24
  %619 = load i64, ptr %618, align 1
  %620 = add i64 %396, -8204357891075471176
  %621 = xor i64 %617, %620
  %622 = sub i64 5487137525590930912, %396
  %623 = xor i64 %619, %622
  %624 = zext i64 %621 to i128
  %625 = zext i64 %623 to i128
  %626 = mul nuw i128 %625, %624
  %627 = lshr i128 %626, 64
  %628 = xor i128 %627, %626
  %629 = trunc i128 %628 to i64
  %630 = add i64 %598, %629
  br label %631

631:                                              ; preds = %597, %525
  %632 = phi i64 [ %630, %597 ], [ 0, %525 ]
  %633 = phi i64 [ %614, %597 ], [ %526, %525 ]
  %634 = load i64, ptr %398, align 1
  %635 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %636 = load i64, ptr %635, align 1
  %637 = add i64 %396, -4734510112055689544
  %638 = xor i64 %634, %637
  %639 = sub i64 2066345149520216444, %396
  %640 = xor i64 %636, %639
  %641 = zext i64 %638 to i128
  %642 = zext i64 %640 to i128
  %643 = mul nuw i128 %642, %641
  %644 = lshr i128 %643, 64
  %645 = xor i128 %644, %643
  %646 = trunc i128 %645 to i64
  %647 = add i64 %633, %646
  %648 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %649 = getelementptr inbounds i8, ptr %648, i64 -16
  %650 = load i64, ptr %649, align 1
  %651 = getelementptr inbounds i8, ptr %648, i64 -8
  %652 = load i64, ptr %651, align 1
  %653 = add i64 %396, -2623469361688619810
  %654 = xor i64 %650, %653
  %655 = sub i64 2262974939099578482, %396
  %656 = xor i64 %652, %655
  %657 = zext i64 %654 to i128
  %658 = zext i64 %656 to i128
  %659 = mul nuw i128 %658, %657
  %660 = lshr i128 %659, 64
  %661 = xor i128 %660, %659
  %662 = trunc i128 %661 to i64
  %663 = add i64 %632, %662
  %664 = add i64 %663, %647
  %665 = mul i64 %647, -7046029288634856825
  %666 = mul i64 %663, -8796714831421723037
  %667 = sub i64 %4, %396
  %668 = mul i64 %667, -4417276706812531889
  %669 = add i64 %665, %668
  %670 = add i64 %669, %666
  %671 = lshr i64 %664, 37
  %672 = xor i64 %671, %664
  %673 = mul i64 %672, 1609587929392839161
  %674 = lshr i64 %673, 32
  %675 = xor i64 %674, %673
  %676 = lshr i64 %670, 37
  %677 = xor i64 %676, %670
  %678 = mul i64 %677, 1609587929392839161
  %679 = lshr i64 %678, 32
  %680 = xor i64 %679, %678
  %681 = sub i64 0, %680
  %682 = insertvalue { i64, i64 } poison, i64 %675, 0
  %683 = insertvalue { i64, i64 } %682, i64 %681, 1
  br label %992

684:                                              ; preds = %523
  %685 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef nonnull readonly %398, i64 noundef %4, ptr noundef nonnull @kSecret, i64 noundef %396)
  br label %992

686:                                              ; preds = %394
  %687 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %688 = load ptr, ptr %687, align 64
  %689 = icmp samesign ult i64 %4, 17
  br i1 %689, label %690, label %815

690:                                              ; preds = %686
  %691 = icmp samesign ugt i64 %4, 8
  br i1 %691, label %692, label %729

692:                                              ; preds = %690
  %693 = load i64, ptr %398, align 1
  %694 = load i64, ptr %688, align 1
  %695 = xor i64 %694, %693
  %696 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %697 = getelementptr inbounds i8, ptr %696, i64 -8
  %698 = load i64, ptr %697, align 1
  %699 = getelementptr inbounds nuw i8, ptr %688, i64 8
  %700 = load i64, ptr %699, align 1
  %701 = xor i64 %700, %698
  %702 = xor i64 %695, %701
  %703 = zext i64 %702 to i128
  %704 = mul nuw i128 %703, 11400714785074694791
  %705 = trunc i128 %704 to i64
  %706 = lshr i128 %704, 64
  %707 = trunc nuw i128 %706 to i64
  %708 = mul i64 %701, -7046029288634856825
  %709 = add i64 %708, %707
  %710 = lshr i64 %709, 32
  %711 = xor i64 %710, %705
  %712 = zext i64 %711 to i128
  %713 = mul nuw i128 %712, 14029467366897019727
  %714 = trunc i128 %713 to i64
  %715 = lshr i128 %713, 64
  %716 = trunc nuw i128 %715 to i64
  %717 = mul i64 %709, -4417276706812531889
  %718 = add i64 %717, %716
  %719 = lshr i64 %714, 37
  %720 = xor i64 %719, %714
  %721 = mul i64 %720, 1609587929392839161
  %722 = lshr i64 %721, 32
  %723 = xor i64 %722, %721
  %724 = lshr i64 %718, 37
  %725 = xor i64 %724, %718
  %726 = mul i64 %725, 1609587929392839161
  %727 = lshr i64 %726, 32
  %728 = xor i64 %727, %726
  br label %810

729:                                              ; preds = %690
  %730 = icmp samesign ugt i64 %4, 3
  br i1 %730, label %731, label %770

731:                                              ; preds = %729
  %732 = load i32, ptr %398, align 1
  %733 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %734 = getelementptr inbounds i8, ptr %733, i64 -4
  %735 = load i32, ptr %734, align 1
  %736 = zext i32 %732 to i64
  %737 = zext i32 %735 to i64
  %738 = shl nuw i64 %737, 32
  %739 = or disjoint i64 %738, %736
  %740 = tail call noundef i64 @llvm.bswap.i64(i64 %739)
  %741 = load i64, ptr %688, align 1
  %742 = xor i64 %739, %741
  %743 = getelementptr inbounds nuw i8, ptr %688, i64 8
  %744 = load i64, ptr %743, align 1
  %745 = xor i64 %740, %744
  %746 = lshr i64 %742, 51
  %747 = xor i64 %746, %742
  %748 = mul i64 %747, 2654435761
  %749 = add i64 %748, %4
  %750 = lshr i64 %749, 47
  %751 = xor i64 %750, %749
  %752 = mul i64 %751, -4417276706812531889
  %753 = lshr i64 %745, 47
  %754 = xor i64 %753, %745
  %755 = mul i64 %754, -7046029288634856825
  %756 = sub i64 %755, %4
  %757 = lshr i64 %756, 43
  %758 = xor i64 %757, %756
  %759 = mul i64 %758, -8796714831421723037
  %760 = lshr i64 %752, 37
  %761 = xor i64 %760, %752
  %762 = mul i64 %761, 1609587929392839161
  %763 = lshr i64 %762, 32
  %764 = xor i64 %763, %762
  %765 = lshr i64 %759, 37
  %766 = xor i64 %765, %759
  %767 = mul i64 %766, 1609587929392839161
  %768 = lshr i64 %767, 32
  %769 = xor i64 %768, %767
  br label %810

770:                                              ; preds = %729
  %771 = icmp eq i64 %4, 0
  br i1 %771, label %810, label %772

772:                                              ; preds = %770
  %773 = load i8, ptr %398, align 1
  %774 = lshr i64 %4, 1
  %775 = getelementptr inbounds nuw i8, ptr %398, i64 %774
  %776 = load i8, ptr %775, align 1
  %777 = getelementptr i8, ptr %398, i64 %4
  %778 = getelementptr i8, ptr %777, i64 -1
  %779 = load i8, ptr %778, align 1
  %780 = zext i8 %773 to i32
  %781 = zext i8 %776 to i32
  %782 = shl nuw nsw i32 %781, 8
  %783 = or disjoint i32 %782, %780
  %784 = zext i8 %779 to i32
  %785 = shl nuw nsw i32 %784, 16
  %786 = or disjoint i32 %783, %785
  %787 = trunc nuw nsw i64 %4 to i32
  %788 = shl nuw nsw i32 %787, 24
  %789 = or disjoint i32 %786, %788
  %790 = tail call noundef i32 @llvm.bswap.i32(i32 %789)
  %791 = load i32, ptr %688, align 1
  %792 = xor i32 %789, %791
  %793 = zext i32 %792 to i64
  %794 = getelementptr inbounds nuw i8, ptr %688, i64 4
  %795 = load i32, ptr %794, align 1
  %796 = xor i32 %790, %795
  %797 = zext i32 %796 to i64
  %798 = mul i64 %793, -7046029288634856825
  %799 = mul i64 %797, -4417276706812531889
  %800 = lshr i64 %798, 37
  %801 = xor i64 %800, %798
  %802 = mul i64 %801, 1609587929392839161
  %803 = lshr i64 %802, 32
  %804 = xor i64 %803, %802
  %805 = lshr i64 %799, 37
  %806 = xor i64 %805, %799
  %807 = mul i64 %806, 1609587929392839161
  %808 = lshr i64 %807, 32
  %809 = xor i64 %808, %807
  br label %810

810:                                              ; preds = %772, %770, %731, %692
  %811 = phi i64 [ %728, %692 ], [ %769, %731 ], [ %809, %772 ], [ 0, %770 ]
  %812 = phi i64 [ %723, %692 ], [ %764, %731 ], [ %804, %772 ], [ 0, %770 ]
  %813 = insertvalue { i64, i64 } poison, i64 %812, 0
  %814 = insertvalue { i64, i64 } %813, i64 %811, 1
  br label %992

815:                                              ; preds = %686
  %816 = icmp samesign ult i64 %4, 129
  br i1 %816, label %817, label %990

817:                                              ; preds = %815
  %818 = mul i64 %4, -7046029288634856825
  %819 = icmp samesign ugt i64 %4, 32
  br i1 %819, label %820, label %935

820:                                              ; preds = %817
  %821 = icmp samesign ugt i64 %4, 64
  br i1 %821, label %822, label %897

822:                                              ; preds = %820
  %823 = icmp samesign ugt i64 %4, 96
  br i1 %823, label %824, label %859

824:                                              ; preds = %822
  %825 = getelementptr inbounds nuw i8, ptr %0, i64 304
  %826 = getelementptr inbounds nuw i8, ptr %688, i64 96
  %827 = load i64, ptr %825, align 1
  %828 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %829 = load i64, ptr %828, align 1
  %830 = load i64, ptr %826, align 1
  %831 = xor i64 %830, %827
  %832 = getelementptr inbounds nuw i8, ptr %688, i64 104
  %833 = load i64, ptr %832, align 1
  %834 = xor i64 %833, %829
  %835 = zext i64 %831 to i128
  %836 = zext i64 %834 to i128
  %837 = mul nuw i128 %836, %835
  %838 = lshr i128 %837, 64
  %839 = xor i128 %838, %837
  %840 = trunc i128 %839 to i64
  %841 = add i64 %818, %840
  %842 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %843 = getelementptr inbounds i8, ptr %842, i64 -64
  %844 = getelementptr inbounds nuw i8, ptr %688, i64 112
  %845 = load i64, ptr %843, align 1
  %846 = getelementptr inbounds i8, ptr %842, i64 -56
  %847 = load i64, ptr %846, align 1
  %848 = load i64, ptr %844, align 1
  %849 = xor i64 %848, %845
  %850 = getelementptr inbounds nuw i8, ptr %688, i64 120
  %851 = load i64, ptr %850, align 1
  %852 = xor i64 %851, %847
  %853 = zext i64 %849 to i128
  %854 = zext i64 %852 to i128
  %855 = mul nuw i128 %854, %853
  %856 = lshr i128 %855, 64
  %857 = xor i128 %856, %855
  %858 = trunc i128 %857 to i64
  br label %859

859:                                              ; preds = %824, %822
  %860 = phi i64 [ %858, %824 ], [ 0, %822 ]
  %861 = phi i64 [ %841, %824 ], [ %818, %822 ]
  %862 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %863 = getelementptr inbounds nuw i8, ptr %688, i64 64
  %864 = load i64, ptr %862, align 1
  %865 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %866 = load i64, ptr %865, align 1
  %867 = load i64, ptr %863, align 1
  %868 = xor i64 %867, %864
  %869 = getelementptr inbounds nuw i8, ptr %688, i64 72
  %870 = load i64, ptr %869, align 1
  %871 = xor i64 %870, %866
  %872 = zext i64 %868 to i128
  %873 = zext i64 %871 to i128
  %874 = mul nuw i128 %873, %872
  %875 = lshr i128 %874, 64
  %876 = xor i128 %875, %874
  %877 = trunc i128 %876 to i64
  %878 = add i64 %861, %877
  %879 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %880 = getelementptr inbounds i8, ptr %879, i64 -48
  %881 = getelementptr inbounds nuw i8, ptr %688, i64 80
  %882 = load i64, ptr %880, align 1
  %883 = getelementptr inbounds i8, ptr %879, i64 -40
  %884 = load i64, ptr %883, align 1
  %885 = load i64, ptr %881, align 1
  %886 = xor i64 %885, %882
  %887 = getelementptr inbounds nuw i8, ptr %688, i64 88
  %888 = load i64, ptr %887, align 1
  %889 = xor i64 %888, %884
  %890 = zext i64 %886 to i128
  %891 = zext i64 %889 to i128
  %892 = mul nuw i128 %891, %890
  %893 = lshr i128 %892, 64
  %894 = xor i128 %893, %892
  %895 = trunc i128 %894 to i64
  %896 = add i64 %860, %895
  br label %897

897:                                              ; preds = %859, %820
  %898 = phi i64 [ %896, %859 ], [ 0, %820 ]
  %899 = phi i64 [ %878, %859 ], [ %818, %820 ]
  %900 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %901 = getelementptr inbounds nuw i8, ptr %688, i64 32
  %902 = load i64, ptr %900, align 1
  %903 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %904 = load i64, ptr %903, align 1
  %905 = load i64, ptr %901, align 1
  %906 = xor i64 %905, %902
  %907 = getelementptr inbounds nuw i8, ptr %688, i64 40
  %908 = load i64, ptr %907, align 1
  %909 = xor i64 %908, %904
  %910 = zext i64 %906 to i128
  %911 = zext i64 %909 to i128
  %912 = mul nuw i128 %911, %910
  %913 = lshr i128 %912, 64
  %914 = xor i128 %913, %912
  %915 = trunc i128 %914 to i64
  %916 = add i64 %899, %915
  %917 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %918 = getelementptr inbounds i8, ptr %917, i64 -32
  %919 = getelementptr inbounds nuw i8, ptr %688, i64 48
  %920 = load i64, ptr %918, align 1
  %921 = getelementptr inbounds i8, ptr %917, i64 -24
  %922 = load i64, ptr %921, align 1
  %923 = load i64, ptr %919, align 1
  %924 = xor i64 %923, %920
  %925 = getelementptr inbounds nuw i8, ptr %688, i64 56
  %926 = load i64, ptr %925, align 1
  %927 = xor i64 %926, %922
  %928 = zext i64 %924 to i128
  %929 = zext i64 %927 to i128
  %930 = mul nuw i128 %929, %928
  %931 = lshr i128 %930, 64
  %932 = xor i128 %931, %930
  %933 = trunc i128 %932 to i64
  %934 = add i64 %898, %933
  br label %935

935:                                              ; preds = %897, %817
  %936 = phi i64 [ %934, %897 ], [ 0, %817 ]
  %937 = phi i64 [ %916, %897 ], [ %818, %817 ]
  %938 = load i64, ptr %398, align 1
  %939 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %940 = load i64, ptr %939, align 1
  %941 = load i64, ptr %688, align 1
  %942 = xor i64 %941, %938
  %943 = getelementptr inbounds nuw i8, ptr %688, i64 8
  %944 = load i64, ptr %943, align 1
  %945 = xor i64 %944, %940
  %946 = zext i64 %942 to i128
  %947 = zext i64 %945 to i128
  %948 = mul nuw i128 %947, %946
  %949 = lshr i128 %948, 64
  %950 = xor i128 %949, %948
  %951 = trunc i128 %950 to i64
  %952 = add i64 %937, %951
  %953 = getelementptr inbounds nuw i8, ptr %398, i64 %4
  %954 = getelementptr inbounds i8, ptr %953, i64 -16
  %955 = getelementptr inbounds nuw i8, ptr %688, i64 16
  %956 = load i64, ptr %954, align 1
  %957 = getelementptr inbounds i8, ptr %953, i64 -8
  %958 = load i64, ptr %957, align 1
  %959 = load i64, ptr %955, align 1
  %960 = xor i64 %959, %956
  %961 = getelementptr inbounds nuw i8, ptr %688, i64 24
  %962 = load i64, ptr %961, align 1
  %963 = xor i64 %962, %958
  %964 = zext i64 %960 to i128
  %965 = zext i64 %963 to i128
  %966 = mul nuw i128 %965, %964
  %967 = lshr i128 %966, 64
  %968 = xor i128 %967, %966
  %969 = trunc i128 %968 to i64
  %970 = add i64 %936, %969
  %971 = add i64 %970, %952
  %972 = mul i64 %952, -7046029288634856825
  %973 = mul i64 %970, -8796714831421723037
  %974 = mul i64 %4, -4417276706812531889
  %975 = add i64 %972, %974
  %976 = add i64 %975, %973
  %977 = lshr i64 %971, 37
  %978 = xor i64 %977, %971
  %979 = mul i64 %978, 1609587929392839161
  %980 = lshr i64 %979, 32
  %981 = xor i64 %980, %979
  %982 = lshr i64 %976, 37
  %983 = xor i64 %982, %976
  %984 = mul i64 %983, 1609587929392839161
  %985 = lshr i64 %984, 32
  %986 = xor i64 %985, %984
  %987 = sub i64 0, %986
  %988 = insertvalue { i64, i64 } poison, i64 %981, 0
  %989 = insertvalue { i64, i64 } %988, i64 %987, 1
  br label %992

990:                                              ; preds = %815
  %991 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef nonnull readonly %398, i64 noundef %4, ptr noundef readonly %688, i64 noundef 0)
  br label %992

992:                                              ; preds = %990, %935, %810, %684, %631, %518, %261
  %993 = phi { i64, i64 } [ %393, %261 ], [ %522, %518 ], [ %683, %631 ], [ %685, %684 ], [ %814, %810 ], [ %989, %935 ], [ %991, %990 ]
  ret { i64, i64 } %993
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @XXH128_isEqual(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #17 {
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
define dso_local i32 @target_oneshot(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #18 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %3, %7
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %10) #23
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %4, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %17) #23
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %24) #23
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %5, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %31) #23
  %33 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %34 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 7)
  %35 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 12)
  %36 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 18)
  %37 = add i32 %33, 16
  %38 = add i32 %37, %34
  %39 = add i32 %38, %35
  %40 = add i32 %39, %36
  %41 = lshr i32 %40, 15
  %42 = xor i32 %41, %40
  %43 = mul i32 %42, -2048144777
  %44 = lshr i32 %43, 13
  %45 = xor i32 %44, %43
  %46 = mul i32 %45, -1028477379
  %47 = lshr i32 %46, 16
  %48 = xor i32 %47, %46
  ret i32 %48
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #21

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr, ptr, i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ucmp.i32.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

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
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #18 = { nofree nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind memory(none) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 302113}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7, !14}
!14 = !{!"llvm.loop.unroll.enable"}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
