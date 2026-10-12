; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c5a6a14/wrap_o64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c5a6a14/wrap_o64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 803
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 15
  br i1 %6, label %7, label %59

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -15
  %10 = add i32 %2, 606290984
  %11 = add i32 %2, -2048144777
  %12 = add i32 %2, 1640531535
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %0, %7 ], [ %46, %13 ]
  %15 = phi i32 [ %10, %7 ], [ %24, %13 ]
  %16 = phi i32 [ %11, %7 ], [ %31, %13 ]
  %17 = phi i32 [ %2, %7 ], [ %38, %13 ]
  %18 = phi i32 [ %12, %7 ], [ %45, %13 ]
  %19 = load i32, ptr %14, align 1
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %15
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = freeze i32 %23
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %26 = load i32, ptr %25, align 1
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %16
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %33 = load i32, ptr %32, align 1
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %17
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = getelementptr inbounds nuw i8, ptr %14, i64 12
  %40 = load i32, ptr %39, align 1
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %18
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = freeze i32 %44
  %46 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %47 = icmp ult ptr %46, %9
  br i1 %47, label %13, label %48

48:                                               ; preds = %13
  %49 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 1)
  %50 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 7)
  %51 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 12)
  %52 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 18)
  %53 = trunc i64 %1 to i32
  %54 = add i32 %49, %53
  %55 = add i32 %54, %50
  %56 = add i32 %55, %51
  %57 = add i32 %56, %52
  %58 = and i64 %1, 15
  br label %66

59:                                               ; preds = %5
  %60 = add i32 %2, 374761393
  %61 = trunc nuw i64 %1 to i32
  %62 = add i32 %60, %61
  br label %66

63:                                               ; preds = %3
  %64 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %64)
  %65 = add i32 %2, 374761393
  br label %245

66:                                               ; preds = %59, %48
  %67 = phi i64 [ %58, %48 ], [ %1, %59 ]
  %68 = phi i32 [ %57, %48 ], [ %62, %59 ]
  %69 = phi ptr [ %46, %48 ], [ %0, %59 ]
  %70 = icmp samesign ugt i64 %67, 3
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = add nsw i64 %67, -4
  %73 = lshr i64 %72, 2
  %74 = add nuw nsw i64 %73, 1
  %75 = and i64 %74, 7
  %76 = and i64 %72, 28
  %77 = icmp eq i64 %76, 28
  br i1 %77, label %92, label %78

78:                                               ; preds = %71, %78
  %79 = phi i32 [ %88, %78 ], [ %68, %71 ]
  %80 = phi i64 [ %89, %78 ], [ %67, %71 ]
  %81 = phi ptr [ %86, %78 ], [ %69, %71 ]
  %82 = phi i64 [ %90, %78 ], [ 0, %71 ]
  %83 = load i32, ptr %81, align 1
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %79
  %86 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %88 = mul i32 %87, 668265263
  %89 = add nsw i64 %80, -4
  %90 = add i64 %82, 1
  %91 = icmp eq i64 %90, %75
  br i1 %91, label %92, label %78

92:                                               ; preds = %78, %71
  %93 = phi i32 [ %68, %71 ], [ %88, %78 ]
  %94 = phi i64 [ %67, %71 ], [ %89, %78 ]
  %95 = phi ptr [ %69, %71 ], [ %86, %78 ]
  %96 = phi ptr [ poison, %71 ], [ %86, %78 ]
  %97 = phi i32 [ poison, %71 ], [ %88, %78 ]
  %98 = phi i64 [ poison, %71 ], [ %89, %78 ]
  %99 = icmp ult i64 %72, 28
  br i1 %99, label %100, label %129

100:                                              ; preds = %92, %129, %66
  %101 = phi ptr [ %69, %66 ], [ %96, %92 ], [ %178, %129 ]
  %102 = phi i64 [ %67, %66 ], [ %98, %92 ], [ %181, %129 ]
  %103 = phi i32 [ %68, %66 ], [ %97, %92 ], [ %180, %129 ]
  %104 = icmp eq i64 %102, 0
  br i1 %104, label %245, label %105

105:                                              ; preds = %100
  %106 = and i64 %102, 7
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %105, %108
  %109 = phi i32 [ %119, %108 ], [ %103, %105 ]
  %110 = phi i64 [ %120, %108 ], [ %102, %105 ]
  %111 = phi ptr [ %113, %108 ], [ %101, %105 ]
  %112 = phi i64 [ %121, %108 ], [ 0, %105 ]
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 1
  %114 = load i8, ptr %111, align 1
  %115 = zext i8 %114 to i32
  %116 = mul i32 %115, 374761393
  %117 = add i32 %116, %109
  %118 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 11)
  %119 = mul i32 %118, -1640531535
  %120 = add nsw i64 %110, -1
  %121 = add i64 %112, 1
  %122 = icmp eq i64 %121, %106
  br i1 %122, label %123, label %108

123:                                              ; preds = %108, %105
  %124 = phi i32 [ poison, %105 ], [ %119, %108 ]
  %125 = phi i32 [ %103, %105 ], [ %119, %108 ]
  %126 = phi i64 [ %102, %105 ], [ %120, %108 ]
  %127 = phi ptr [ %101, %105 ], [ %113, %108 ]
  %128 = icmp ult i64 %102, 8
  br i1 %128, label %245, label %183

129:                                              ; preds = %92, %129
  %130 = phi i32 [ %180, %129 ], [ %93, %92 ]
  %131 = phi i64 [ %181, %129 ], [ %94, %92 ]
  %132 = phi ptr [ %178, %129 ], [ %95, %92 ]
  %133 = load i32, ptr %132, align 1
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %130
  %136 = getelementptr inbounds nuw i8, ptr %132, i64 4
  %137 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  %139 = load i32, ptr %136, align 1
  %140 = mul i32 %139, -1028477379
  %141 = add i32 %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %132, i64 8
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 17)
  %144 = mul i32 %143, 668265263
  %145 = load i32, ptr %142, align 1
  %146 = mul i32 %145, -1028477379
  %147 = add i32 %146, %144
  %148 = getelementptr inbounds nuw i8, ptr %132, i64 12
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 17)
  %150 = mul i32 %149, 668265263
  %151 = load i32, ptr %148, align 1
  %152 = mul i32 %151, -1028477379
  %153 = add i32 %152, %150
  %154 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 17)
  %156 = mul i32 %155, 668265263
  %157 = load i32, ptr %154, align 1
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  %163 = load i32, ptr %160, align 1
  %164 = mul i32 %163, -1028477379
  %165 = add i32 %164, %162
  %166 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %167 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 17)
  %168 = mul i32 %167, 668265263
  %169 = load i32, ptr %166, align 1
  %170 = mul i32 %169, -1028477379
  %171 = add i32 %170, %168
  %172 = getelementptr inbounds nuw i8, ptr %132, i64 28
  %173 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 17)
  %174 = mul i32 %173, 668265263
  %175 = load i32, ptr %172, align 1
  %176 = mul i32 %175, -1028477379
  %177 = add i32 %176, %174
  %178 = getelementptr inbounds nuw i8, ptr %132, i64 32
  %179 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 17)
  %180 = mul i32 %179, 668265263
  %181 = add nsw i64 %131, -32
  %182 = icmp ugt i64 %181, 3
  br i1 %182, label %129, label %100

183:                                              ; preds = %123, %183
  %184 = phi i32 [ %242, %183 ], [ %125, %123 ]
  %185 = phi i64 [ %243, %183 ], [ %126, %123 ]
  %186 = phi ptr [ %236, %183 ], [ %127, %123 ]
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %188 = load i8, ptr %186, align 1
  %189 = zext i8 %188 to i32
  %190 = mul i32 %189, 374761393
  %191 = add i32 %190, %184
  %192 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 11)
  %193 = mul i32 %192, -1640531535
  %194 = getelementptr inbounds nuw i8, ptr %186, i64 2
  %195 = load i8, ptr %187, align 1
  %196 = zext i8 %195 to i32
  %197 = mul i32 %196, 374761393
  %198 = add i32 %197, %193
  %199 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 11)
  %200 = mul i32 %199, -1640531535
  %201 = getelementptr inbounds nuw i8, ptr %186, i64 3
  %202 = load i8, ptr %194, align 1
  %203 = zext i8 %202 to i32
  %204 = mul i32 %203, 374761393
  %205 = add i32 %204, %200
  %206 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 11)
  %207 = mul i32 %206, -1640531535
  %208 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %209 = load i8, ptr %201, align 1
  %210 = zext i8 %209 to i32
  %211 = mul i32 %210, 374761393
  %212 = add i32 %211, %207
  %213 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 11)
  %214 = mul i32 %213, -1640531535
  %215 = getelementptr inbounds nuw i8, ptr %186, i64 5
  %216 = load i8, ptr %208, align 1
  %217 = zext i8 %216 to i32
  %218 = mul i32 %217, 374761393
  %219 = add i32 %218, %214
  %220 = tail call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 11)
  %221 = mul i32 %220, -1640531535
  %222 = getelementptr inbounds nuw i8, ptr %186, i64 6
  %223 = load i8, ptr %215, align 1
  %224 = zext i8 %223 to i32
  %225 = mul i32 %224, 374761393
  %226 = add i32 %225, %221
  %227 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 11)
  %228 = mul i32 %227, -1640531535
  %229 = getelementptr inbounds nuw i8, ptr %186, i64 7
  %230 = load i8, ptr %222, align 1
  %231 = zext i8 %230 to i32
  %232 = mul i32 %231, 374761393
  %233 = add i32 %232, %228
  %234 = tail call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 11)
  %235 = mul i32 %234, -1640531535
  %236 = getelementptr inbounds nuw i8, ptr %186, i64 8
  %237 = load i8, ptr %229, align 1
  %238 = zext i8 %237 to i32
  %239 = mul i32 %238, 374761393
  %240 = add i32 %239, %235
  %241 = tail call i32 @llvm.fshl.i32(i32 %240, i32 %240, i32 11)
  %242 = mul i32 %241, -1640531535
  %243 = add nsw i64 %185, -8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %183

245:                                              ; preds = %123, %183, %63, %100
  %246 = phi i32 [ %103, %100 ], [ %65, %63 ], [ %124, %123 ], [ %242, %183 ]
  %247 = lshr i32 %246, 15
  %248 = xor i32 %247, %246
  %249 = mul i32 %248, -2048144777
  %250 = lshr i32 %249, 13
  %251 = xor i32 %250, %249
  %252 = mul i32 %251, -1028477379
  %253 = lshr i32 %252, 16
  %254 = xor i32 %253, %252
  ret i32 %254
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #20
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH32_copyState(ptr noundef writeonly initializes((0, 48)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %0, ptr noundef nonnull readonly align 1 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %4 = add i32 %1, 606290984
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %4, ptr %5, align 4
  %6 = add i32 %1, -2048144777
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %8, align 4
  %9 = add i32 %1, 1640531535
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %9, ptr %10, align 4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %129

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %9 = trunc i64 %2 to i32
  %10 = load i32, ptr %0, align 4
  %11 = add i32 %10, %9
  store i32 %11, ptr %0, align 4
  %12 = icmp ugt i64 %2, 15
  %13 = icmp ugt i32 %11, 15
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = add i64 %2, %21
  %23 = icmp ult i64 %22, 16
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %27 = load i32, ptr %19, align 4
  %28 = add i32 %27, %9
  store i32 %28, ptr %19, align 4
  br label %129

29:                                               ; preds = %7
  %30 = icmp eq i32 %20, 0
  br i1 %30, label %75, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 %21
  %34 = sub i32 16, %20
  %35 = zext i32 %34 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr nonnull readonly align 1 %1, i64 %35, i1 false)
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %32, align 1
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %37
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = freeze i32 %42
  store i32 %43, ptr %36, align 4
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %44, align 1
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %46
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  store i32 %52, ptr %45, align 4
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %53, align 1
  %57 = mul i32 %56, -2048144777
  %58 = add i32 %57, %55
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = mul i32 %59, -1640531535
  %61 = freeze i32 %60
  store i32 %61, ptr %54, align 4
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %62, align 1
  %66 = mul i32 %65, -2048144777
  %67 = add i32 %66, %64
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 13)
  %69 = mul i32 %68, -1640531535
  %70 = freeze i32 %69
  store i32 %70, ptr %63, align 4
  %71 = load i32, ptr %19, align 4
  %72 = sub i32 16, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 %73
  store i32 0, ptr %19, align 4
  br label %75

75:                                               ; preds = %31, %29
  %76 = phi ptr [ %74, %31 ], [ %1, %29 ]
  %77 = getelementptr inbounds i8, ptr %8, i64 -16
  %78 = icmp ugt ptr %76, %77
  br i1 %78, label %120, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %85

85:                                               ; preds = %79, %85
  %86 = phi i32 [ %93, %85 ], [ %81, %79 ]
  %87 = phi ptr [ %118, %85 ], [ %76, %79 ]
  %88 = load i32, ptr %87, align 1
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %86
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  %93 = freeze i32 %92
  store i32 %93, ptr %80, align 4
  %94 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %95 = load i32, ptr %82, align 4
  %96 = load i32, ptr %94, align 1
  %97 = mul i32 %96, -2048144777
  %98 = add i32 %97, %95
  %99 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 13)
  %100 = mul i32 %99, -1640531535
  %101 = freeze i32 %100
  store i32 %101, ptr %82, align 4
  %102 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %103 = load i32, ptr %83, align 4
  %104 = load i32, ptr %102, align 1
  %105 = mul i32 %104, -2048144777
  %106 = add i32 %105, %103
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 13)
  %108 = mul i32 %107, -1640531535
  %109 = freeze i32 %108
  store i32 %109, ptr %83, align 4
  %110 = getelementptr inbounds nuw i8, ptr %87, i64 12
  %111 = load i32, ptr %84, align 4
  %112 = load i32, ptr %110, align 1
  %113 = mul i32 %112, -2048144777
  %114 = add i32 %113, %111
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 13)
  %116 = mul i32 %115, -1640531535
  %117 = freeze i32 %116
  store i32 %117, ptr %84, align 4
  %118 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %119 = icmp ugt ptr %118, %77
  br i1 %119, label %120, label %85

120:                                              ; preds = %85, %75
  %121 = phi ptr [ %76, %75 ], [ %118, %85 ]
  %122 = icmp ult ptr %121, %8
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %125 = ptrtoint ptr %8 to i64
  %126 = ptrtoint ptr %121 to i64
  %127 = sub i64 %125, %126
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %124, ptr nonnull readonly align 1 %121, i64 %127, i1 false)
  %128 = trunc i64 %127 to i32
  store i32 %128, ptr %19, align 4
  br label %129

129:                                              ; preds = %24, %123, %120, %5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #9

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
  %43 = phi i32 [ %52, %42 ], [ %28, %35 ]
  %44 = phi i64 [ %53, %42 ], [ %33, %35 ]
  %45 = phi ptr [ %50, %42 ], [ %29, %35 ]
  %46 = phi i64 [ %54, %42 ], [ 0, %35 ]
  %47 = load i32, ptr %45, align 1
  %48 = mul i32 %47, -1028477379
  %49 = add i32 %48, %43
  %50 = getelementptr inbounds nuw i8, ptr %45, i64 4
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %52 = mul i32 %51, 668265263
  %53 = add nsw i64 %44, -4
  %54 = add i64 %46, 1
  %55 = icmp eq i64 %54, %39
  br i1 %55, label %56, label %42

56:                                               ; preds = %42, %35
  %57 = phi i32 [ %28, %35 ], [ %52, %42 ]
  %58 = phi i64 [ %33, %35 ], [ %53, %42 ]
  %59 = phi ptr [ %29, %35 ], [ %50, %42 ]
  %60 = phi ptr [ poison, %35 ], [ %50, %42 ]
  %61 = phi i32 [ poison, %35 ], [ %52, %42 ]
  %62 = phi i64 [ poison, %35 ], [ %53, %42 ]
  %63 = icmp ult i64 %36, 28
  br i1 %63, label %64, label %93

64:                                               ; preds = %56, %93, %25
  %65 = phi ptr [ %29, %25 ], [ %60, %56 ], [ %142, %93 ]
  %66 = phi i64 [ %33, %25 ], [ %62, %56 ], [ %145, %93 ]
  %67 = phi i32 [ %28, %25 ], [ %61, %56 ], [ %144, %93 ]
  %68 = icmp eq i64 %66, 0
  br i1 %68, label %209, label %69

69:                                               ; preds = %64
  %70 = and i64 %66, 7
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %69, %72
  %73 = phi i32 [ %83, %72 ], [ %67, %69 ]
  %74 = phi i64 [ %84, %72 ], [ %66, %69 ]
  %75 = phi ptr [ %77, %72 ], [ %65, %69 ]
  %76 = phi i64 [ %85, %72 ], [ 0, %69 ]
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 1
  %78 = load i8, ptr %75, align 1
  %79 = zext i8 %78 to i32
  %80 = mul i32 %79, 374761393
  %81 = add i32 %80, %73
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 11)
  %83 = mul i32 %82, -1640531535
  %84 = add nsw i64 %74, -1
  %85 = add i64 %76, 1
  %86 = icmp eq i64 %85, %70
  br i1 %86, label %87, label %72

87:                                               ; preds = %72, %69
  %88 = phi i32 [ poison, %69 ], [ %83, %72 ]
  %89 = phi i32 [ %67, %69 ], [ %83, %72 ]
  %90 = phi i64 [ %66, %69 ], [ %84, %72 ]
  %91 = phi ptr [ %65, %69 ], [ %77, %72 ]
  %92 = icmp ult i64 %66, 8
  br i1 %92, label %209, label %147

93:                                               ; preds = %56, %93
  %94 = phi i32 [ %144, %93 ], [ %57, %56 ]
  %95 = phi i64 [ %145, %93 ], [ %58, %56 ]
  %96 = phi ptr [ %142, %93 ], [ %59, %56 ]
  %97 = load i32, ptr %96, align 1
  %98 = mul i32 %97, -1028477379
  %99 = add i32 %98, %94
  %100 = getelementptr inbounds nuw i8, ptr %96, i64 4
  %101 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 17)
  %102 = mul i32 %101, 668265263
  %103 = load i32, ptr %100, align 1
  %104 = mul i32 %103, -1028477379
  %105 = add i32 %104, %102
  %106 = getelementptr inbounds nuw i8, ptr %96, i64 8
  %107 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 17)
  %108 = mul i32 %107, 668265263
  %109 = load i32, ptr %106, align 1
  %110 = mul i32 %109, -1028477379
  %111 = add i32 %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %96, i64 12
  %113 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 17)
  %114 = mul i32 %113, 668265263
  %115 = load i32, ptr %112, align 1
  %116 = mul i32 %115, -1028477379
  %117 = add i32 %116, %114
  %118 = getelementptr inbounds nuw i8, ptr %96, i64 16
  %119 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 17)
  %120 = mul i32 %119, 668265263
  %121 = load i32, ptr %118, align 1
  %122 = mul i32 %121, -1028477379
  %123 = add i32 %122, %120
  %124 = getelementptr inbounds nuw i8, ptr %96, i64 20
  %125 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 17)
  %126 = mul i32 %125, 668265263
  %127 = load i32, ptr %124, align 1
  %128 = mul i32 %127, -1028477379
  %129 = add i32 %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 17)
  %132 = mul i32 %131, 668265263
  %133 = load i32, ptr %130, align 1
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %132
  %136 = getelementptr inbounds nuw i8, ptr %96, i64 28
  %137 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  %139 = load i32, ptr %136, align 1
  %140 = mul i32 %139, -1028477379
  %141 = add i32 %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 17)
  %144 = mul i32 %143, 668265263
  %145 = add nsw i64 %95, -32
  %146 = icmp ugt i64 %145, 3
  br i1 %146, label %93, label %64

147:                                              ; preds = %87, %147
  %148 = phi i32 [ %206, %147 ], [ %89, %87 ]
  %149 = phi i64 [ %207, %147 ], [ %90, %87 ]
  %150 = phi ptr [ %200, %147 ], [ %91, %87 ]
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 1
  %152 = load i8, ptr %150, align 1
  %153 = zext i8 %152 to i32
  %154 = mul i32 %153, 374761393
  %155 = add i32 %154, %148
  %156 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 11)
  %157 = mul i32 %156, -1640531535
  %158 = getelementptr inbounds nuw i8, ptr %150, i64 2
  %159 = load i8, ptr %151, align 1
  %160 = zext i8 %159 to i32
  %161 = mul i32 %160, 374761393
  %162 = add i32 %161, %157
  %163 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 11)
  %164 = mul i32 %163, -1640531535
  %165 = getelementptr inbounds nuw i8, ptr %150, i64 3
  %166 = load i8, ptr %158, align 1
  %167 = zext i8 %166 to i32
  %168 = mul i32 %167, 374761393
  %169 = add i32 %168, %164
  %170 = tail call i32 @llvm.fshl.i32(i32 %169, i32 %169, i32 11)
  %171 = mul i32 %170, -1640531535
  %172 = getelementptr inbounds nuw i8, ptr %150, i64 4
  %173 = load i8, ptr %165, align 1
  %174 = zext i8 %173 to i32
  %175 = mul i32 %174, 374761393
  %176 = add i32 %175, %171
  %177 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 11)
  %178 = mul i32 %177, -1640531535
  %179 = getelementptr inbounds nuw i8, ptr %150, i64 5
  %180 = load i8, ptr %172, align 1
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 374761393
  %183 = add i32 %182, %178
  %184 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 11)
  %185 = mul i32 %184, -1640531535
  %186 = getelementptr inbounds nuw i8, ptr %150, i64 6
  %187 = load i8, ptr %179, align 1
  %188 = zext i8 %187 to i32
  %189 = mul i32 %188, 374761393
  %190 = add i32 %189, %185
  %191 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 11)
  %192 = mul i32 %191, -1640531535
  %193 = getelementptr inbounds nuw i8, ptr %150, i64 7
  %194 = load i8, ptr %186, align 1
  %195 = zext i8 %194 to i32
  %196 = mul i32 %195, 374761393
  %197 = add i32 %196, %192
  %198 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 11)
  %199 = mul i32 %198, -1640531535
  %200 = getelementptr inbounds nuw i8, ptr %150, i64 8
  %201 = load i8, ptr %193, align 1
  %202 = zext i8 %201 to i32
  %203 = mul i32 %202, 374761393
  %204 = add i32 %203, %199
  %205 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 11)
  %206 = mul i32 %205, -1640531535
  %207 = add nsw i64 %149, -8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %147

209:                                              ; preds = %87, %147, %64
  %210 = phi i32 [ %67, %64 ], [ %88, %87 ], [ %206, %147 ]
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH32_canonicalFromHash(ptr noundef writeonly initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #12 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 31
  br i1 %6, label %7, label %77

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -31
  %10 = add i64 %2, 6983438078262162902
  %11 = add i64 %2, -4417276706812531889
  %12 = add i64 %2, 7046029288634856825
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %0, %7 ], [ %42, %13 ]
  %15 = phi i64 [ %10, %7 ], [ %23, %13 ]
  %16 = phi i64 [ %11, %7 ], [ %29, %13 ]
  %17 = phi i64 [ %2, %7 ], [ %35, %13 ]
  %18 = phi i64 [ %12, %7 ], [ %41, %13 ]
  %19 = load i64, ptr %14, align 1
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %20, %15
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %25 = load i64, ptr %24, align 1
  %26 = mul i64 %25, -4417276706812531889
  %27 = add i64 %26, %16
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %31 = load i64, ptr %30, align 1
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %17
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %37 = load i64, ptr %36, align 1
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %18
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %43 = icmp ult ptr %42, %9
  br i1 %43, label %13, label %44

44:                                               ; preds = %13
  %45 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 1)
  %46 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 7)
  %47 = add i64 %46, %45
  %48 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 12)
  %49 = add i64 %47, %48
  %50 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 18)
  %51 = add i64 %49, %50
  %52 = mul i64 %22, -2381459717836149591
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = xor i64 %51, %54
  %56 = mul i64 %55, -7046029288634856825
  %57 = add i64 %56, -8796714831421723037
  %58 = mul i64 %28, -2381459717836149591
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %57, %60
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = mul i64 %34, -2381459717836149591
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %63, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = mul i64 %40, -2381459717836149591
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %69, %72
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %1, -8796714831421723037
  %76 = add i64 %75, %74
  br label %83

77:                                               ; preds = %5
  %78 = add i64 %2, 2870177450012600261
  %79 = add i64 %78, %1
  br label %83

80:                                               ; preds = %3
  %81 = add i64 %2, 2870177450012600261
  %82 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %82)
  br label %268

83:                                               ; preds = %77, %44
  %84 = phi i64 [ %76, %44 ], [ %79, %77 ]
  %85 = phi ptr [ %42, %44 ], [ %0, %77 ]
  %86 = and i64 %1, 31
  %87 = icmp samesign ugt i64 %86, 7
  br i1 %87, label %88, label %162

88:                                               ; preds = %83
  %89 = add nsw i64 %86, -8
  %90 = lshr i64 %89, 3
  %91 = add nuw nsw i64 %90, 1
  %92 = and i64 %91, 3
  %93 = and i64 %89, 24
  %94 = icmp eq i64 %93, 24
  br i1 %94, label %112, label %95

95:                                               ; preds = %88, %95
  %96 = phi i64 [ %108, %95 ], [ %84, %88 ]
  %97 = phi ptr [ %104, %95 ], [ %85, %88 ]
  %98 = phi i64 [ %109, %95 ], [ %86, %88 ]
  %99 = phi i64 [ %110, %95 ], [ 0, %88 ]
  %100 = load i64, ptr %97, align 1
  %101 = mul i64 %100, -4417276706812531889
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 31)
  %103 = mul i64 %102, -7046029288634856825
  %104 = getelementptr inbounds nuw i8, ptr %97, i64 8
  %105 = xor i64 %103, %96
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 27)
  %107 = mul i64 %106, -7046029288634856825
  %108 = add i64 %107, -8796714831421723037
  %109 = add nsw i64 %98, -8
  %110 = add i64 %99, 1
  %111 = icmp eq i64 %110, %92
  br i1 %111, label %112, label %95

112:                                              ; preds = %95, %88
  %113 = phi i64 [ %84, %88 ], [ %108, %95 ]
  %114 = phi ptr [ %85, %88 ], [ %104, %95 ]
  %115 = phi i64 [ %86, %88 ], [ %109, %95 ]
  %116 = phi ptr [ poison, %88 ], [ %104, %95 ]
  %117 = phi i64 [ poison, %88 ], [ %108, %95 ]
  %118 = phi i64 [ poison, %88 ], [ %109, %95 ]
  %119 = icmp ult i64 %89, 24
  br i1 %119, label %162, label %120

120:                                              ; preds = %112, %120
  %121 = phi i64 [ %159, %120 ], [ %113, %112 ]
  %122 = phi ptr [ %155, %120 ], [ %114, %112 ]
  %123 = phi i64 [ %160, %120 ], [ %115, %112 ]
  %124 = load i64, ptr %122, align 1
  %125 = mul i64 %124, -4417276706812531889
  %126 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 31)
  %127 = mul i64 %126, -7046029288634856825
  %128 = getelementptr inbounds nuw i8, ptr %122, i64 8
  %129 = xor i64 %127, %121
  %130 = tail call i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 27)
  %131 = mul i64 %130, -7046029288634856825
  %132 = add i64 %131, -8796714831421723037
  %133 = load i64, ptr %128, align 1
  %134 = mul i64 %133, -4417276706812531889
  %135 = tail call i64 @llvm.fshl.i64(i64 %134, i64 %134, i64 31)
  %136 = mul i64 %135, -7046029288634856825
  %137 = getelementptr inbounds nuw i8, ptr %122, i64 16
  %138 = xor i64 %136, %132
  %139 = tail call i64 @llvm.fshl.i64(i64 %138, i64 %138, i64 27)
  %140 = mul i64 %139, -7046029288634856825
  %141 = add i64 %140, -8796714831421723037
  %142 = load i64, ptr %137, align 1
  %143 = mul i64 %142, -4417276706812531889
  %144 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 31)
  %145 = mul i64 %144, -7046029288634856825
  %146 = getelementptr inbounds nuw i8, ptr %122, i64 24
  %147 = xor i64 %145, %141
  %148 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 27)
  %149 = mul i64 %148, -7046029288634856825
  %150 = add i64 %149, -8796714831421723037
  %151 = load i64, ptr %146, align 1
  %152 = mul i64 %151, -4417276706812531889
  %153 = tail call i64 @llvm.fshl.i64(i64 %152, i64 %152, i64 31)
  %154 = mul i64 %153, -7046029288634856825
  %155 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %156 = xor i64 %154, %150
  %157 = tail call i64 @llvm.fshl.i64(i64 %156, i64 %156, i64 27)
  %158 = mul i64 %157, -7046029288634856825
  %159 = add i64 %158, -8796714831421723037
  %160 = add nsw i64 %123, -32
  %161 = icmp ugt i64 %160, 7
  br i1 %161, label %120, label %162

162:                                              ; preds = %112, %120, %83
  %163 = phi i64 [ %86, %83 ], [ %118, %112 ], [ %160, %120 ]
  %164 = phi ptr [ %85, %83 ], [ %116, %112 ], [ %155, %120 ]
  %165 = phi i64 [ %84, %83 ], [ %117, %112 ], [ %159, %120 ]
  %166 = icmp samesign ugt i64 %163, 3
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load i32, ptr %164, align 1
  %169 = zext i32 %168 to i64
  %170 = mul i64 %169, -7046029288634856825
  %171 = xor i64 %170, %165
  %172 = getelementptr inbounds nuw i8, ptr %164, i64 4
  %173 = tail call i64 @llvm.fshl.i64(i64 %171, i64 %171, i64 23)
  %174 = mul i64 %173, -4417276706812531889
  %175 = add i64 %174, 1609587929392839161
  %176 = add nsw i64 %163, -4
  br label %177

177:                                              ; preds = %167, %162
  %178 = phi i64 [ %176, %167 ], [ %163, %162 ]
  %179 = phi ptr [ %172, %167 ], [ %164, %162 ]
  %180 = phi i64 [ %175, %167 ], [ %165, %162 ]
  %181 = icmp eq i64 %178, 0
  br i1 %181, label %268, label %182

182:                                              ; preds = %177
  %183 = and i64 %178, 7
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %200, label %185

185:                                              ; preds = %182, %185
  %186 = phi i64 [ %196, %185 ], [ %180, %182 ]
  %187 = phi ptr [ %190, %185 ], [ %179, %182 ]
  %188 = phi i64 [ %197, %185 ], [ %178, %182 ]
  %189 = phi i64 [ %198, %185 ], [ 0, %182 ]
  %190 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %191 = load i8, ptr %187, align 1
  %192 = zext i8 %191 to i64
  %193 = mul i64 %192, 2870177450012600261
  %194 = xor i64 %193, %186
  %195 = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 11)
  %196 = mul i64 %195, -7046029288634856825
  %197 = add nsw i64 %188, -1
  %198 = add i64 %189, 1
  %199 = icmp eq i64 %198, %183
  br i1 %199, label %200, label %185

200:                                              ; preds = %185, %182
  %201 = phi i64 [ poison, %182 ], [ %196, %185 ]
  %202 = phi i64 [ %180, %182 ], [ %196, %185 ]
  %203 = phi ptr [ %179, %182 ], [ %190, %185 ]
  %204 = phi i64 [ %178, %182 ], [ %197, %185 ]
  %205 = icmp ult i64 %178, 8
  br i1 %205, label %268, label %206

206:                                              ; preds = %200, %206
  %207 = phi i64 [ %265, %206 ], [ %202, %200 ]
  %208 = phi ptr [ %259, %206 ], [ %203, %200 ]
  %209 = phi i64 [ %266, %206 ], [ %204, %200 ]
  %210 = getelementptr inbounds nuw i8, ptr %208, i64 1
  %211 = load i8, ptr %208, align 1
  %212 = zext i8 %211 to i64
  %213 = mul i64 %212, 2870177450012600261
  %214 = xor i64 %213, %207
  %215 = tail call i64 @llvm.fshl.i64(i64 %214, i64 %214, i64 11)
  %216 = mul i64 %215, -7046029288634856825
  %217 = getelementptr inbounds nuw i8, ptr %208, i64 2
  %218 = load i8, ptr %210, align 1
  %219 = zext i8 %218 to i64
  %220 = mul i64 %219, 2870177450012600261
  %221 = xor i64 %220, %216
  %222 = tail call i64 @llvm.fshl.i64(i64 %221, i64 %221, i64 11)
  %223 = mul i64 %222, -7046029288634856825
  %224 = getelementptr inbounds nuw i8, ptr %208, i64 3
  %225 = load i8, ptr %217, align 1
  %226 = zext i8 %225 to i64
  %227 = mul i64 %226, 2870177450012600261
  %228 = xor i64 %227, %223
  %229 = tail call i64 @llvm.fshl.i64(i64 %228, i64 %228, i64 11)
  %230 = mul i64 %229, -7046029288634856825
  %231 = getelementptr inbounds nuw i8, ptr %208, i64 4
  %232 = load i8, ptr %224, align 1
  %233 = zext i8 %232 to i64
  %234 = mul i64 %233, 2870177450012600261
  %235 = xor i64 %234, %230
  %236 = tail call i64 @llvm.fshl.i64(i64 %235, i64 %235, i64 11)
  %237 = mul i64 %236, -7046029288634856825
  %238 = getelementptr inbounds nuw i8, ptr %208, i64 5
  %239 = load i8, ptr %231, align 1
  %240 = zext i8 %239 to i64
  %241 = mul i64 %240, 2870177450012600261
  %242 = xor i64 %241, %237
  %243 = tail call i64 @llvm.fshl.i64(i64 %242, i64 %242, i64 11)
  %244 = mul i64 %243, -7046029288634856825
  %245 = getelementptr inbounds nuw i8, ptr %208, i64 6
  %246 = load i8, ptr %238, align 1
  %247 = zext i8 %246 to i64
  %248 = mul i64 %247, 2870177450012600261
  %249 = xor i64 %248, %244
  %250 = tail call i64 @llvm.fshl.i64(i64 %249, i64 %249, i64 11)
  %251 = mul i64 %250, -7046029288634856825
  %252 = getelementptr inbounds nuw i8, ptr %208, i64 7
  %253 = load i8, ptr %245, align 1
  %254 = zext i8 %253 to i64
  %255 = mul i64 %254, 2870177450012600261
  %256 = xor i64 %255, %251
  %257 = tail call i64 @llvm.fshl.i64(i64 %256, i64 %256, i64 11)
  %258 = mul i64 %257, -7046029288634856825
  %259 = getelementptr inbounds nuw i8, ptr %208, i64 8
  %260 = load i8, ptr %252, align 1
  %261 = zext i8 %260 to i64
  %262 = mul i64 %261, 2870177450012600261
  %263 = xor i64 %262, %258
  %264 = tail call i64 @llvm.fshl.i64(i64 %263, i64 %263, i64 11)
  %265 = mul i64 %264, -7046029288634856825
  %266 = add nsw i64 %209, -8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %206

268:                                              ; preds = %200, %206, %80, %177
  %269 = phi i64 [ %180, %177 ], [ %81, %80 ], [ %201, %200 ], [ %265, %206 ]
  %270 = lshr i64 %269, 33
  %271 = xor i64 %270, %269
  %272 = mul i64 %271, -4417276706812531889
  %273 = lshr i64 %272, 29
  %274 = xor i64 %273, %272
  %275 = mul i64 %274, 1609587929392839161
  %276 = lshr i64 %275, 32
  %277 = xor i64 %276, %275
  ret i64 %277
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #20
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH64_copyState(ptr noundef writeonly initializes((0, 88)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %0, ptr noundef nonnull readonly align 1 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr noundef writeonly %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %4 = add i64 %1, 6983438078262162902
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %5, align 8
  %6 = add i64 %1, -4417276706812531889
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %8, align 8
  %9 = add i64 %1, 7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %9, ptr %10, align 8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %118

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %9 = load i64, ptr %0, align 8
  %10 = add i64 %9, %2
  store i64 %10, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  %14 = add i64 %2, %13
  %15 = icmp ult i64 %14, 32
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %19 = trunc i64 %2 to i32
  %20 = load i32, ptr %11, align 8
  %21 = add i32 %20, %19
  store i32 %21, ptr %11, align 8
  br label %118

22:                                               ; preds = %7
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %13
  %27 = sub i32 32, %12
  %28 = zext i32 %27 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr nonnull readonly align 1 %1, i64 %28, i1 false)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i64, ptr %29, align 8
  %31 = load i64, ptr %25, align 1
  %32 = mul i64 %31, -4417276706812531889
  %33 = add i64 %32, %30
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  store i64 %35, ptr %29, align 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %39 = load i64, ptr %38, align 1
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, %37
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %43 = mul i64 %42, -7046029288634856825
  store i64 %43, ptr %36, align 8
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %47 = load i64, ptr %46, align 1
  %48 = mul i64 %47, -4417276706812531889
  %49 = add i64 %48, %45
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  store i64 %51, ptr %44, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %55 = load i64, ptr %54, align 1
  %56 = mul i64 %55, -4417276706812531889
  %57 = add i64 %56, %53
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  store i64 %59, ptr %52, align 8
  %60 = load i32, ptr %11, align 8
  %61 = sub i32 32, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 %62
  store i32 0, ptr %11, align 8
  br label %64

64:                                               ; preds = %24, %22
  %65 = phi ptr [ %63, %24 ], [ %1, %22 ]
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %67 = icmp ugt ptr %66, %8
  br i1 %67, label %109, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %8, i64 -32
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %74 = load i64, ptr %70, align 8
  %75 = load i64, ptr %71, align 8
  %76 = load i64, ptr %72, align 8
  %77 = load i64, ptr %73, align 8
  br label %78

78:                                               ; preds = %78, %68
  %79 = phi i64 [ %77, %68 ], [ %106, %78 ]
  %80 = phi i64 [ %76, %68 ], [ %100, %78 ]
  %81 = phi i64 [ %75, %68 ], [ %94, %78 ]
  %82 = phi i64 [ %74, %68 ], [ %88, %78 ]
  %83 = phi ptr [ %65, %68 ], [ %107, %78 ]
  %84 = load i64, ptr %83, align 1
  %85 = mul i64 %84, -4417276706812531889
  %86 = add i64 %85, %82
  %87 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 31)
  %88 = mul i64 %87, -7046029288634856825
  store i64 %88, ptr %70, align 8
  %89 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %90 = load i64, ptr %89, align 1
  %91 = mul i64 %90, -4417276706812531889
  %92 = add i64 %91, %81
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  store i64 %94, ptr %71, align 8
  %95 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %96 = load i64, ptr %95, align 1
  %97 = mul i64 %96, -4417276706812531889
  %98 = add i64 %97, %80
  %99 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 31)
  %100 = mul i64 %99, -7046029288634856825
  store i64 %100, ptr %72, align 8
  %101 = getelementptr inbounds nuw i8, ptr %83, i64 24
  %102 = load i64, ptr %101, align 1
  %103 = mul i64 %102, -4417276706812531889
  %104 = add i64 %103, %79
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 31)
  %106 = mul i64 %105, -7046029288634856825
  store i64 %106, ptr %73, align 8
  %107 = getelementptr inbounds nuw i8, ptr %83, i64 32
  %108 = icmp ugt ptr %107, %69
  br i1 %108, label %109, label %78

109:                                              ; preds = %78, %64
  %110 = phi ptr [ %65, %64 ], [ %107, %78 ]
  %111 = icmp ult ptr %110, %8
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %114 = ptrtoint ptr %8 to i64
  %115 = ptrtoint ptr %110 to i64
  %116 = sub i64 %114, %115
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %113, ptr readonly align 1 %110, i64 %116, i1 false)
  %117 = trunc i64 %116 to i32
  store i32 %117, ptr %11, align 8
  br label %118

118:                                              ; preds = %16, %112, %109, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i64, ptr %0, align 8
  %3 = icmp ugt i64 %2, 31
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 1)
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load i64, ptr %8, align 8
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 7)
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 12)
  %15 = add i64 %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 18)
  %19 = add i64 %15, %18
  %20 = mul i64 %6, -4417276706812531889
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = xor i64 %19, %22
  %24 = mul i64 %23, -7046029288634856825
  %25 = add i64 %24, -8796714831421723037
  %26 = mul i64 %9, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %25, %28
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = mul i64 %13, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %31, %34
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = mul i64 %17, -4417276706812531889
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
  %66 = load i64, ptr %63, align 8
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
  %90 = load i64, ptr %88, align 8
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds nuw i8, ptr %88, i64 8
  %95 = xor i64 %93, %87
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 27)
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  %99 = load i64, ptr %94, align 8
  %100 = mul i64 %99, -4417276706812531889
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 31)
  %102 = mul i64 %101, -7046029288634856825
  %103 = getelementptr inbounds nuw i8, ptr %88, i64 16
  %104 = xor i64 %102, %98
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 27)
  %106 = mul i64 %105, -7046029288634856825
  %107 = add i64 %106, -8796714831421723037
  %108 = load i64, ptr %103, align 8
  %109 = mul i64 %108, -4417276706812531889
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = getelementptr inbounds nuw i8, ptr %88, i64 24
  %113 = xor i64 %111, %107
  %114 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 27)
  %115 = mul i64 %114, -7046029288634856825
  %116 = add i64 %115, -8796714831421723037
  %117 = load i64, ptr %112, align 8
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
  %132 = icmp samesign ugt i64 %129, 3
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i32, ptr %130, align 4
  %135 = zext i32 %134 to i64
  %136 = mul i64 %135, -7046029288634856825
  %137 = xor i64 %136, %131
  %138 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %139 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 23)
  %140 = mul i64 %139, -4417276706812531889
  %141 = add i64 %140, 1609587929392839161
  %142 = add nsw i64 %129, -4
  br label %143

143:                                              ; preds = %133, %128
  %144 = phi i64 [ %142, %133 ], [ %129, %128 ]
  %145 = phi ptr [ %138, %133 ], [ %130, %128 ]
  %146 = phi i64 [ %141, %133 ], [ %131, %128 ]
  %147 = icmp eq i64 %144, 0
  br i1 %147, label %234, label %148

148:                                              ; preds = %143
  %149 = and i64 %144, 7
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %148, %151
  %152 = phi i64 [ %162, %151 ], [ %146, %148 ]
  %153 = phi ptr [ %156, %151 ], [ %145, %148 ]
  %154 = phi i64 [ %163, %151 ], [ %144, %148 ]
  %155 = phi i64 [ %164, %151 ], [ 0, %148 ]
  %156 = getelementptr inbounds nuw i8, ptr %153, i64 1
  %157 = load i8, ptr %153, align 1
  %158 = zext i8 %157 to i64
  %159 = mul i64 %158, 2870177450012600261
  %160 = xor i64 %159, %152
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 11)
  %162 = mul i64 %161, -7046029288634856825
  %163 = add nsw i64 %154, -1
  %164 = add i64 %155, 1
  %165 = icmp eq i64 %164, %149
  br i1 %165, label %166, label %151

166:                                              ; preds = %151, %148
  %167 = phi i64 [ poison, %148 ], [ %162, %151 ]
  %168 = phi i64 [ %146, %148 ], [ %162, %151 ]
  %169 = phi ptr [ %145, %148 ], [ %156, %151 ]
  %170 = phi i64 [ %144, %148 ], [ %163, %151 ]
  %171 = icmp ult i64 %144, 8
  br i1 %171, label %234, label %172

172:                                              ; preds = %166, %172
  %173 = phi i64 [ %231, %172 ], [ %168, %166 ]
  %174 = phi ptr [ %225, %172 ], [ %169, %166 ]
  %175 = phi i64 [ %232, %172 ], [ %170, %166 ]
  %176 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %177 = load i8, ptr %174, align 1
  %178 = zext i8 %177 to i64
  %179 = mul i64 %178, 2870177450012600261
  %180 = xor i64 %179, %173
  %181 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 11)
  %182 = mul i64 %181, -7046029288634856825
  %183 = getelementptr inbounds nuw i8, ptr %174, i64 2
  %184 = load i8, ptr %176, align 1
  %185 = zext i8 %184 to i64
  %186 = mul i64 %185, 2870177450012600261
  %187 = xor i64 %186, %182
  %188 = tail call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 11)
  %189 = mul i64 %188, -7046029288634856825
  %190 = getelementptr inbounds nuw i8, ptr %174, i64 3
  %191 = load i8, ptr %183, align 1
  %192 = zext i8 %191 to i64
  %193 = mul i64 %192, 2870177450012600261
  %194 = xor i64 %193, %189
  %195 = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 11)
  %196 = mul i64 %195, -7046029288634856825
  %197 = getelementptr inbounds nuw i8, ptr %174, i64 4
  %198 = load i8, ptr %190, align 1
  %199 = zext i8 %198 to i64
  %200 = mul i64 %199, 2870177450012600261
  %201 = xor i64 %200, %196
  %202 = tail call i64 @llvm.fshl.i64(i64 %201, i64 %201, i64 11)
  %203 = mul i64 %202, -7046029288634856825
  %204 = getelementptr inbounds nuw i8, ptr %174, i64 5
  %205 = load i8, ptr %197, align 1
  %206 = zext i8 %205 to i64
  %207 = mul i64 %206, 2870177450012600261
  %208 = xor i64 %207, %203
  %209 = tail call i64 @llvm.fshl.i64(i64 %208, i64 %208, i64 11)
  %210 = mul i64 %209, -7046029288634856825
  %211 = getelementptr inbounds nuw i8, ptr %174, i64 6
  %212 = load i8, ptr %204, align 1
  %213 = zext i8 %212 to i64
  %214 = mul i64 %213, 2870177450012600261
  %215 = xor i64 %214, %210
  %216 = tail call i64 @llvm.fshl.i64(i64 %215, i64 %215, i64 11)
  %217 = mul i64 %216, -7046029288634856825
  %218 = getelementptr inbounds nuw i8, ptr %174, i64 7
  %219 = load i8, ptr %211, align 1
  %220 = zext i8 %219 to i64
  %221 = mul i64 %220, 2870177450012600261
  %222 = xor i64 %221, %217
  %223 = tail call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 11)
  %224 = mul i64 %223, -7046029288634856825
  %225 = getelementptr inbounds nuw i8, ptr %174, i64 8
  %226 = load i8, ptr %218, align 1
  %227 = zext i8 %226 to i64
  %228 = mul i64 %227, 2870177450012600261
  %229 = xor i64 %228, %224
  %230 = tail call i64 @llvm.fshl.i64(i64 %229, i64 %229, i64 11)
  %231 = mul i64 %230, -7046029288634856825
  %232 = add nsw i64 %175, -8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %172

234:                                              ; preds = %166, %172, %143
  %235 = phi i64 [ %146, %143 ], [ %167, %166 ], [ %231, %172 ]
  %236 = lshr i64 %235, 33
  %237 = xor i64 %236, %235
  %238 = mul i64 %237, -4417276706812531889
  %239 = lshr i64 %238, 29
  %240 = xor i64 %239, %238
  %241 = mul i64 %240, 1609587929392839161
  %242 = lshr i64 %241, 32
  %243 = xor i64 %242, %241
  ret i64 %243
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH64_canonicalFromHash(ptr noundef writeonly initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #12 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_xxh64_len0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, 2870177450012600261
  %4 = lshr i64 %3, 33
  %5 = xor i64 %4, %3
  %6 = mul i64 %5, -4417276706812531889
  %7 = lshr i64 %6, 29
  %8 = xor i64 %7, %6
  %9 = mul i64 %8, 1609587929392839161
  %10 = lshr i64 %9, 32
  %11 = xor i64 %10, %9
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh64_len7(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = add i64 %1, 2870177450012600268
  %5 = load i32, ptr %0, align 1
  %6 = zext i32 %5 to i64
  %7 = mul i64 %6, -7046029288634856825
  %8 = xor i64 %7, %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 23)
  %11 = mul i64 %10, -4417276706812531889
  %12 = add i64 %11, 1609587929392839161
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %14 = load i8, ptr %9, align 1
  %15 = zext i8 %14 to i64
  %16 = mul i64 %15, 2870177450012600261
  %17 = xor i64 %16, %12
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 11)
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %21 = load i8, ptr %13, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = xor i64 %23, %19
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 11)
  %26 = mul i64 %25, -7046029288634856825
  %27 = load i8, ptr %20, align 1
  %28 = zext i8 %27 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = xor i64 %29, %26
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 11)
  %32 = mul i64 %31, -7046029288634856825
  %33 = lshr i64 %32, 33
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, -4417276706812531889
  %36 = lshr i64 %35, 29
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  ret i64 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_xxh64_len31(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #14 {
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = getelementptr i8, ptr %0, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 1
  %9 = load i64, ptr %0, align 1
  %10 = load i32, ptr %4, align 1
  %11 = getelementptr i8, ptr %0, i64 30
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i64
  %14 = mul i64 %13, 2870177450012600261
  %15 = getelementptr i8, ptr %0, i64 29
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i64
  %18 = mul i64 %17, 2870177450012600261
  %19 = getelementptr i8, ptr %0, i64 28
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i64
  %22 = mul i64 %21, 2870177450012600261
  %23 = zext i32 %10 to i64
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %6, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = mul i64 %8, -4417276706812531889
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = mul i64 %9, -4417276706812531889
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = add i64 %1, 2870177450012600292
  %35 = xor i64 %33, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 27)
  %37 = mul i64 %36, -7046029288634856825
  %38 = add i64 %37, -8796714831421723037
  %39 = xor i64 %30, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 27)
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = xor i64 %27, %42
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 27)
  %45 = mul i64 %44, -7046029288634856825
  %46 = add i64 %45, -8796714831421723037
  %47 = xor i64 %24, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 23)
  %49 = mul i64 %48, -4417276706812531889
  %50 = add i64 %49, 1609587929392839161
  %51 = xor i64 %22, %50
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 11)
  %53 = mul i64 %52, -7046029288634856825
  %54 = xor i64 %18, %53
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 11)
  %56 = mul i64 %55, -7046029288634856825
  %57 = xor i64 %14, %56
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 11)
  %59 = mul i64 %58, -7046029288634856825
  %60 = lshr i64 %59, 33
  %61 = xor i64 %60, %59
  %62 = mul i64 %61, -4417276706812531889
  %63 = lshr i64 %62, 29
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, 1609587929392839161
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  ret i64 %67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len32(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = tail call i64 @XXH64(ptr noundef %0, i64 noundef 32, i64 noundef %1) #22
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len63(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = tail call i64 @XXH64(ptr noundef %0, i64 noundef 63, i64 noundef %1) #22
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = tail call i64 @XXH64(ptr noundef %0, i64 noundef 64, i64 noundef %1) #22
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len100(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = tail call i64 @XXH64(ptr noundef %0, i64 noundef 100, i64 noundef %1) #22
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local i64 @target_s64_10_30(ptr noundef %0, i64 noundef %1) local_unnamed_addr #13 {
  %3 = alloca %struct.XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 88, i1 false)
  %4 = add i64 %1, 6983438078262162902
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %5, align 8
  %6 = add i64 %1, -4417276706812531889
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %8, align 8
  %9 = add i64 %1, 7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %9, ptr %10, align 8
  %11 = call i32 @XXH64_update(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 10)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %13 = call i32 @XXH64_update(ptr noundef nonnull %3, ptr noundef nonnull %12, i64 noundef 30)
  %14 = call i64 @XXH64_digest(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #21
  ret i64 %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local i64 @target_s64_40_23(ptr noundef %0, i64 noundef %1) local_unnamed_addr #13 {
  %3 = alloca %struct.XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 88, i1 false)
  %4 = add i64 %1, 6983438078262162902
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %5, align 8
  %6 = add i64 %1, -4417276706812531889
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %8, align 8
  %9 = add i64 %1, 7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %9, ptr %10, align 8
  %11 = call i32 @XXH64_update(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 40)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = call i32 @XXH64_update(ptr noundef nonnull %3, ptr noundef nonnull %12, i64 noundef 23)
  %14 = call i64 @XXH64_digest(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #21
  ret i64 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind memory(none) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148126766}
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
