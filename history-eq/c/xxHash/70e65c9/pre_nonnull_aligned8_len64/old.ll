; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/70e65c9/pre_nonnull_aligned8_len64/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/70e65c9/pre_nonnull_aligned8_len64/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @XXH32(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  store i32 %2, ptr %4, align 8
  %5 = add i32 %2, 606290984
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %5, ptr %6, align 4
  %7 = add i32 %2, -2048144777
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %2, ptr %9, align 4
  %10 = add i32 %2, 1640531535
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %13, align 8
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = icmp eq ptr %0, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %19 = getelementptr i8, ptr %4, i64 32
  br label %92

20:                                               ; preds = %3
  store i64 %14, ptr %12, align 8
  %21 = icmp slt i32 %1, 16
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 1 %0, i64 %14, i1 false)
  %24 = load i32, ptr %13, align 8
  %25 = add nsw i32 %24, %1
  br label %67

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr %15, i64 -16
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i32 [ %56, %28 ], [ %10, %26 ]
  %30 = phi i32 [ %50, %28 ], [ %2, %26 ]
  %31 = phi i32 [ %44, %28 ], [ %7, %26 ]
  %32 = phi i32 [ %38, %28 ], [ %5, %26 ]
  %33 = phi ptr [ %57, %28 ], [ %0, %26 ]
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %32
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 4
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %31
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %30
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 12
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, -2048144777
  %54 = add i32 %53, %29
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13)
  %56 = mul i32 %55, -1640531535
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %58 = icmp ugt ptr %57, %27
  br i1 %58, label %59, label %28

59:                                               ; preds = %28
  store i32 %38, ptr %6, align 4
  store i32 %44, ptr %8, align 8
  store i32 %50, ptr %9, align 4
  store i32 %56, ptr %11, align 8
  %60 = icmp ult ptr %57, %15
  br i1 %60, label %61, label %73

61:                                               ; preds = %59
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %63 = ptrtoint ptr %15 to i64
  %64 = ptrtoint ptr %57 to i64
  %65 = sub i64 %63, %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %62, ptr nonnull align 1 %57, i64 %65, i1 false)
  %66 = trunc i64 %65 to i32
  br label %67

67:                                               ; preds = %61, %22
  %68 = phi i32 [ %56, %61 ], [ %10, %22 ]
  %69 = phi i32 [ %50, %61 ], [ %2, %22 ]
  %70 = phi i32 [ %44, %61 ], [ %7, %22 ]
  %71 = phi i32 [ %38, %61 ], [ %5, %22 ]
  %72 = phi i32 [ %66, %61 ], [ %25, %22 ]
  store i32 %72, ptr %13, align 8
  br label %73

73:                                               ; preds = %59, %67
  %74 = phi i32 [ %68, %67 ], [ %56, %59 ]
  %75 = phi i32 [ %69, %67 ], [ %50, %59 ]
  %76 = phi i32 [ %70, %67 ], [ %44, %59 ]
  %77 = phi i32 [ %71, %67 ], [ %38, %59 ]
  %78 = phi i32 [ %72, %67 ], [ 0, %59 ]
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %80 = sext i32 %78 to i64
  %81 = getelementptr i8, ptr %4, i64 %80
  %82 = getelementptr i8, ptr %81, i64 32
  %83 = icmp ugt i32 %1, 15
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 1)
  %86 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 7)
  %87 = add i32 %86, %85
  %88 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 12)
  %89 = add i32 %87, %88
  %90 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 18)
  %91 = add i32 %89, %90
  br label %99

92:                                               ; preds = %17, %73
  %93 = phi ptr [ %19, %17 ], [ %82, %73 ]
  %94 = phi ptr [ %4, %17 ], [ %81, %73 ]
  %95 = phi ptr [ %18, %17 ], [ %79, %73 ]
  %96 = phi i32 [ 0, %17 ], [ %78, %73 ]
  %97 = phi i32 [ 0, %17 ], [ %1, %73 ]
  %98 = add i32 %2, 374761393
  br label %99

99:                                               ; preds = %92, %84
  %100 = phi ptr [ %82, %84 ], [ %93, %92 ]
  %101 = phi ptr [ %81, %84 ], [ %94, %92 ]
  %102 = phi ptr [ %79, %84 ], [ %95, %92 ]
  %103 = phi i32 [ %78, %84 ], [ %96, %92 ]
  %104 = phi i32 [ %1, %84 ], [ %97, %92 ]
  %105 = phi i32 [ %91, %84 ], [ %98, %92 ]
  %106 = ptrtoint ptr %100 to i64
  %107 = add i32 %105, %104
  %108 = getelementptr i8, ptr %101, i64 28
  %109 = icmp slt i32 %103, 4
  br i1 %109, label %110, label %138

110:                                              ; preds = %138, %99
  %111 = phi ptr [ %102, %99 ], [ %146, %138 ]
  %112 = phi i32 [ %107, %99 ], [ %145, %138 ]
  %113 = icmp ult ptr %111, %100
  br i1 %113, label %114, label %208

114:                                              ; preds = %110
  %115 = ptrtoint ptr %111 to i64
  %116 = sub i64 %106, %115
  %117 = and i64 %116, 7
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %114, %119
  %120 = phi i32 [ %128, %119 ], [ %112, %114 ]
  %121 = phi ptr [ %129, %119 ], [ %111, %114 ]
  %122 = phi i64 [ %130, %119 ], [ 0, %114 ]
  %123 = load i8, ptr %121, align 1
  %124 = zext i8 %123 to i32
  %125 = mul i32 %124, 374761393
  %126 = add i32 %125, %120
  %127 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 11)
  %128 = mul i32 %127, -1640531535
  %129 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %130 = add i64 %122, 1
  %131 = icmp eq i64 %130, %117
  br i1 %131, label %132, label %119

132:                                              ; preds = %119, %114
  %133 = phi i32 [ %112, %114 ], [ %128, %119 ]
  %134 = phi ptr [ %111, %114 ], [ %129, %119 ]
  %135 = phi i32 [ poison, %114 ], [ %128, %119 ]
  %136 = sub i64 %115, %106
  %137 = icmp ugt i64 %136, -8
  br i1 %137, label %208, label %148

138:                                              ; preds = %99, %138
  %139 = phi i32 [ %145, %138 ], [ %107, %99 ]
  %140 = phi ptr [ %146, %138 ], [ %102, %99 ]
  %141 = load i32, ptr %140, align 4
  %142 = mul i32 %141, -1028477379
  %143 = add i32 %142, %139
  %144 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 17)
  %145 = mul i32 %144, 668265263
  %146 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %147 = icmp ugt ptr %146, %108
  br i1 %147, label %110, label %138

148:                                              ; preds = %132, %148
  %149 = phi i32 [ %205, %148 ], [ %133, %132 ]
  %150 = phi ptr [ %206, %148 ], [ %134, %132 ]
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = mul i32 %152, 374761393
  %154 = add i32 %153, %149
  %155 = tail call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 11)
  %156 = mul i32 %155, -1640531535
  %157 = getelementptr inbounds nuw i8, ptr %150, i64 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = mul i32 %159, 374761393
  %161 = add i32 %160, %156
  %162 = tail call i32 @llvm.fshl.i32(i32 %161, i32 %161, i32 11)
  %163 = mul i32 %162, -1640531535
  %164 = getelementptr inbounds nuw i8, ptr %150, i64 2
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = mul i32 %166, 374761393
  %168 = add i32 %167, %163
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 11)
  %170 = mul i32 %169, -1640531535
  %171 = getelementptr inbounds nuw i8, ptr %150, i64 3
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i32
  %174 = mul i32 %173, 374761393
  %175 = add i32 %174, %170
  %176 = tail call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 11)
  %177 = mul i32 %176, -1640531535
  %178 = getelementptr inbounds nuw i8, ptr %150, i64 4
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = mul i32 %180, 374761393
  %182 = add i32 %181, %177
  %183 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 11)
  %184 = mul i32 %183, -1640531535
  %185 = getelementptr inbounds nuw i8, ptr %150, i64 5
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = mul i32 %187, 374761393
  %189 = add i32 %188, %184
  %190 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 11)
  %191 = mul i32 %190, -1640531535
  %192 = getelementptr inbounds nuw i8, ptr %150, i64 6
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i32
  %195 = mul i32 %194, 374761393
  %196 = add i32 %195, %191
  %197 = tail call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 11)
  %198 = mul i32 %197, -1640531535
  %199 = getelementptr inbounds nuw i8, ptr %150, i64 7
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = mul i32 %201, 374761393
  %203 = add i32 %202, %198
  %204 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 11)
  %205 = mul i32 %204, -1640531535
  %206 = getelementptr inbounds nuw i8, ptr %150, i64 8
  %207 = icmp ult ptr %206, %100
  br i1 %207, label %148, label %208

208:                                              ; preds = %132, %148, %110
  %209 = phi i32 [ %112, %110 ], [ %135, %132 ], [ %205, %148 ]
  %210 = lshr i32 %209, 15
  %211 = xor i32 %210, %209
  %212 = mul i32 %211, -2048144777
  %213 = lshr i32 %212, 13
  %214 = xor i32 %213, %212
  %215 = mul i32 %214, -1028477379
  %216 = lshr i32 %215, 16
  %217 = xor i32 %216, %215
  tail call void @free(ptr noundef %4) #11
  ret i32 %217
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_init(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #10
  store i32 %0, ptr %2, align 8
  %3 = add i32 %0, 606290984
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %3, ptr %4, align 4
  %5 = add i32 %0, -2048144777
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %5, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %0, ptr %7, align 4
  %8 = add i32 %0, 1640531535
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %11, align 8
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %131, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %9, %4
  store i64 %10, ptr %8, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %12 = load i32, ptr %11, align 8
  %13 = add nsw i32 %12, %2
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %18, ptr nonnull align 1 %1, i64 %4, i1 false)
  %19 = load i32, ptr %11, align 8
  %20 = add nsw i32 %19, %2
  br label %129

21:                                               ; preds = %7
  %22 = icmp eq i32 %12, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %31 = load i32, ptr %30, align 8
  br label %73

32:                                               ; preds = %21
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %34 = sext i32 %12 to i64
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  %36 = sub nsw i32 16, %12
  %37 = sext i32 %36 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr nonnull align 1 %1, i64 %37, i1 false)
  %38 = load i32, ptr %33, align 4
  %39 = mul i32 %38, -2048144777
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  store i32 %44, ptr %40, align 4
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, -2048144777
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, %47
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  store i32 %52, ptr %48, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %54 = load i32, ptr %53, align 4
  %55 = mul i32 %54, -2048144777
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %55
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = mul i32 %59, -1640531535
  store i32 %60, ptr %56, align 4
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %62 = load i32, ptr %61, align 4
  %63 = mul i32 %62, -2048144777
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, %63
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13)
  %68 = mul i32 %67, -1640531535
  store i32 %68, ptr %64, align 8
  %69 = load i32, ptr %11, align 8
  %70 = sub nsw i32 16, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %1, i64 %71
  store i32 0, ptr %11, align 8
  br label %73

73:                                               ; preds = %23, %32
  %74 = phi i32 [ %68, %32 ], [ %31, %23 ]
  %75 = phi i32 [ %60, %32 ], [ %29, %23 ]
  %76 = phi i32 [ %52, %32 ], [ %27, %23 ]
  %77 = phi i32 [ %44, %32 ], [ %25, %23 ]
  %78 = phi ptr [ %72, %32 ], [ %1, %23 ]
  %79 = getelementptr inbounds i8, ptr %5, i64 -16
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %84 = icmp ugt ptr %78, %79
  br i1 %84, label %116, label %85

85:                                               ; preds = %73, %85
  %86 = phi i32 [ %113, %85 ], [ %74, %73 ]
  %87 = phi i32 [ %107, %85 ], [ %75, %73 ]
  %88 = phi i32 [ %101, %85 ], [ %76, %73 ]
  %89 = phi i32 [ %95, %85 ], [ %77, %73 ]
  %90 = phi ptr [ %114, %85 ], [ %78, %73 ]
  %91 = load i32, ptr %90, align 4
  %92 = mul i32 %91, -2048144777
  %93 = add i32 %92, %89
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 13)
  %95 = mul i32 %94, -1640531535
  %96 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %97 = load i32, ptr %96, align 4
  %98 = mul i32 %97, -2048144777
  %99 = add i32 %98, %88
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 13)
  %101 = mul i32 %100, -1640531535
  %102 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %103 = load i32, ptr %102, align 4
  %104 = mul i32 %103, -2048144777
  %105 = add i32 %104, %87
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 13)
  %107 = mul i32 %106, -1640531535
  %108 = getelementptr inbounds nuw i8, ptr %90, i64 12
  %109 = load i32, ptr %108, align 4
  %110 = mul i32 %109, -2048144777
  %111 = add i32 %110, %86
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 13)
  %113 = mul i32 %112, -1640531535
  %114 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %115 = icmp ugt ptr %114, %79
  br i1 %115, label %116, label %85

116:                                              ; preds = %85, %73
  %117 = phi ptr [ %78, %73 ], [ %114, %85 ]
  %118 = phi i32 [ %77, %73 ], [ %95, %85 ]
  %119 = phi i32 [ %76, %73 ], [ %101, %85 ]
  %120 = phi i32 [ %75, %73 ], [ %107, %85 ]
  %121 = phi i32 [ %74, %73 ], [ %113, %85 ]
  store i32 %118, ptr %80, align 4
  store i32 %119, ptr %81, align 8
  store i32 %120, ptr %82, align 4
  store i32 %121, ptr %83, align 8
  %122 = icmp ult ptr %117, %5
  br i1 %122, label %123, label %131

123:                                              ; preds = %116
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %125 = ptrtoint ptr %5 to i64
  %126 = ptrtoint ptr %117 to i64
  %127 = sub i64 %125, %126
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %124, ptr nonnull align 1 %117, i64 %127, i1 false)
  %128 = trunc i64 %127 to i32
  br label %129

129:                                              ; preds = %15, %123
  %130 = phi i32 [ %128, %123 ], [ %20, %15 ]
  store i32 %130, ptr %11, align 8
  br label %131

131:                                              ; preds = %129, %116, %3
  %132 = phi i32 [ 1, %3 ], [ 0, %116 ], [ 0, %129 ]
  ret i32 %132
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i32 @XXH32_digest(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load i32, ptr %3, align 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  %7 = getelementptr i8, ptr %6, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i64, ptr %8, align 8
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7)
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 12)
  %22 = add i32 %18, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 18)
  %26 = add i32 %22, %25
  br label %30

27:                                               ; preds = %1
  %28 = load i32, ptr %0, align 8
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %27, %11
  %31 = phi i32 [ %26, %11 ], [ %29, %27 ]
  %32 = trunc i64 %9 to i32
  %33 = add i32 %31, %32
  %34 = getelementptr i8, ptr %6, i64 28
  %35 = icmp slt i32 %4, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %40, %30
  %37 = phi ptr [ %2, %30 ], [ %48, %40 ]
  %38 = phi i32 [ %33, %30 ], [ %47, %40 ]
  %39 = icmp ult ptr %37, %7
  br i1 %39, label %50, label %61

40:                                               ; preds = %30, %40
  %41 = phi i32 [ %47, %40 ], [ %33, %30 ]
  %42 = phi ptr [ %48, %40 ], [ %2, %30 ]
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %41
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %47 = mul i32 %46, 668265263
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %49 = icmp ugt ptr %48, %34
  br i1 %49, label %36, label %40

50:                                               ; preds = %36, %50
  %51 = phi i32 [ %58, %50 ], [ %38, %36 ]
  %52 = phi ptr [ %59, %50 ], [ %37, %36 ]
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = mul i32 %54, 374761393
  %56 = add i32 %55, %51
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 11)
  %58 = mul i32 %57, -1640531535
  %59 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %60 = icmp ult ptr %59, %7
  br i1 %60, label %50, label %61

61:                                               ; preds = %50, %36
  %62 = phi i32 [ %38, %36 ], [ %58, %50 ]
  %63 = lshr i32 %62, 15
  %64 = xor i32 %63, %62
  %65 = mul i32 %64, -2048144777
  %66 = lshr i32 %65, 13
  %67 = xor i32 %66, %65
  %68 = mul i32 %67, -1028477379
  %69 = lshr i32 %68, 16
  %70 = xor i32 %69, %68
  tail call void @free(ptr noundef %0) #11
  ret i32 %70
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32_intermediateDigest(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load i32, ptr %3, align 8
  %5 = sext i32 %4 to i64
  %6 = getelementptr i8, ptr %0, i64 %5
  %7 = getelementptr i8, ptr %6, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i64, ptr %8, align 8
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7)
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 12)
  %22 = add i32 %18, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 18)
  %26 = add i32 %22, %25
  br label %30

27:                                               ; preds = %1
  %28 = load i32, ptr %0, align 8
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %27, %11
  %31 = phi i32 [ %26, %11 ], [ %29, %27 ]
  %32 = trunc i64 %9 to i32
  %33 = add i32 %31, %32
  %34 = getelementptr i8, ptr %6, i64 28
  %35 = icmp slt i32 %4, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %40, %30
  %37 = phi ptr [ %2, %30 ], [ %48, %40 ]
  %38 = phi i32 [ %33, %30 ], [ %47, %40 ]
  %39 = icmp ult ptr %37, %7
  br i1 %39, label %50, label %61

40:                                               ; preds = %30, %40
  %41 = phi i32 [ %47, %40 ], [ %33, %30 ]
  %42 = phi ptr [ %48, %40 ], [ %2, %30 ]
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %41
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %47 = mul i32 %46, 668265263
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %49 = icmp ugt ptr %48, %34
  br i1 %49, label %36, label %40

50:                                               ; preds = %36, %50
  %51 = phi i32 [ %58, %50 ], [ %38, %36 ]
  %52 = phi ptr [ %59, %50 ], [ %37, %36 ]
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = mul i32 %54, 374761393
  %56 = add i32 %55, %51
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 11)
  %58 = mul i32 %57, -1640531535
  %59 = getelementptr inbounds nuw i8, ptr %52, i64 1
  %60 = icmp ult ptr %59, %7
  br i1 %60, label %50, label %61

61:                                               ; preds = %50, %36
  %62 = phi i32 [ %38, %36 ], [ %58, %50 ]
  %63 = lshr i32 %62, 15
  %64 = xor i32 %63, %62
  %65 = mul i32 %64, -2048144777
  %66 = lshr i32 %65, 13
  %67 = xor i32 %66, %65
  %68 = mul i32 %67, -1028477379
  %69 = lshr i32 %68, 16
  %70 = xor i32 %69, %68
  ret i32 %70
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ne ptr %0, null
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  %7 = and i1 %3, %6
  br i1 %7, label %8, label %123

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, -2048144777
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, -2048144777
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, -2048144777
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %1, 1640531535
  %22 = add i32 %20, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = add i32 %17, %24
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = add i32 %14, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = add i32 %11, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %36, -2048144777
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, -2048144777
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, -2048144777
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %1
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = add i32 %43, %49
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = add i32 %40, %52
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  %56 = add i32 %37, %55
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %60 = load i32, ptr %59, align 4
  %61 = mul i32 %60, -2048144777
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %63 = load i32, ptr %62, align 4
  %64 = mul i32 %63, -2048144777
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %66, -2048144777
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %69 = load i32, ptr %68, align 4
  %70 = mul i32 %69, -2048144777
  %71 = add i32 %1, -2048144777
  %72 = add i32 %70, %71
  %73 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 13)
  %74 = mul i32 %73, -1640531535
  %75 = add i32 %67, %74
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 13)
  %77 = mul i32 %76, -1640531535
  %78 = add i32 %64, %77
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = add i32 %61, %80
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 13)
  %83 = mul i32 %82, -1640531535
  %84 = load i32, ptr %34, align 4
  %85 = mul i32 %84, -2048144777
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %87 = load i32, ptr %86, align 4
  %88 = mul i32 %87, -2048144777
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %90 = load i32, ptr %89, align 4
  %91 = mul i32 %90, -2048144777
  %92 = load i32, ptr %0, align 4
  %93 = mul i32 %92, -2048144777
  %94 = add i32 %1, 606290984
  %95 = add i32 %93, %94
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = add i32 %91, %97
  %99 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 13)
  %100 = mul i32 %99, -1640531535
  %101 = add i32 %88, %100
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = add i32 %85, %103
  %105 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 13)
  %106 = mul i32 %105, -1640531535
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 1)
  %108 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 7)
  %109 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 12)
  %110 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 18)
  %111 = add i32 %107, 64
  %112 = add i32 %111, %108
  %113 = add i32 %112, %109
  %114 = add i32 %113, %110
  %115 = lshr i32 %114, 15
  %116 = xor i32 %115, %114
  %117 = mul i32 %116, -2048144777
  %118 = lshr i32 %117, 13
  %119 = xor i32 %118, %117
  %120 = mul i32 %119, -1028477379
  %121 = lshr i32 %120, 16
  %122 = xor i32 %121, %120
  br label %123

123:                                              ; preds = %2, %8
  %124 = phi i32 [ %122, %8 ], [ 0, %2 ]
  ret i32 %124
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
