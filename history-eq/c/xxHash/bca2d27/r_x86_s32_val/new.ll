; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/bca2d27/wrapv_s32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/bca2d27/wrapv_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, [4 x i32], [16 x i8], i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_7_8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [16 x i8], align 16
  %19 = alloca [11 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18)
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %19)
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %21, i8 0, i64 3, i1 false)
  %22 = load i32, ptr %18, align 16
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %19, ptr noundef nonnull align 4 dereferenceable(3) %23, i64 3, i1 false)
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 7
  %25 = load i64, ptr %24, align 1
  %26 = getelementptr inbounds nuw i8, ptr %19, i64 3
  store i64 %25, ptr %26, align 1
  %27 = add i32 %16, 374761408
  %28 = mul i32 %22, -1028477379
  %29 = add i32 %28, %27
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 17)
  %31 = mul i32 %30, 668265263
  %32 = load i32, ptr %19, align 4
  %33 = mul i32 %32, -1028477379
  %34 = add i32 %33, %31
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 17)
  %36 = mul i32 %35, 668265263
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, -1028477379
  %40 = add i32 %39, %36
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 17)
  %42 = mul i32 %41, 668265263
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = mul i32 %45, 374761393
  %47 = add i32 %46, %42
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 11)
  %49 = mul i32 %48, -1640531535
  %50 = getelementptr inbounds nuw i8, ptr %19, i64 9
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = mul i32 %52, 374761393
  %54 = add i32 %53, %49
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 11)
  %56 = mul i32 %55, -1640531535
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 10
  %58 = load i8, ptr %57, align 2
  %59 = zext i8 %58 to i32
  %60 = mul i32 %59, 374761393
  %61 = add i32 %60, %56
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 11)
  %63 = mul i32 %62, -1640531535
  %64 = lshr i32 %63, 15
  %65 = xor i32 %64, %63
  %66 = mul i32 %65, -2048144777
  %67 = lshr i32 %66, 13
  %68 = xor i32 %67, %66
  %69 = mul i32 %68, -1028477379
  %70 = lshr i32 %69, 16
  %71 = xor i32 %70, %69
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %19)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18)
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_5_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = lshr i64 %1, 32
  %19 = trunc nuw i64 %18 to i32
  %20 = lshr i64 %1, 40
  %21 = trunc nuw nsw i64 %20 to i32
  %22 = lshr i64 %1, 48
  %23 = trunc nuw nsw i64 %22 to i32
  %24 = add i32 %16, 374761408
  %25 = trunc i64 %1 to i32
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = and i32 %27, 255
  %29 = lshr i64 %0, 32
  %30 = trunc nuw i64 %29 to i32
  %31 = and i32 %30, -256
  %32 = or disjoint i32 %28, %31
  %33 = trunc i64 %0 to i32
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %34, %24
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %37 = mul i32 %36, 668265263
  %38 = mul i32 %32, -1028477379
  %39 = add i32 %38, %37
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 17)
  %41 = mul i32 %40, 668265263
  %42 = mul i32 %25, -1028477379
  %43 = add i32 %42, %41
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %45 = mul i32 %44, 668265263
  %46 = and i32 %19, 255
  %47 = mul i32 %46, 374761393
  %48 = add i32 %47, %45
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 11)
  %50 = mul i32 %49, -1640531535
  %51 = and i32 %21, 255
  %52 = mul i32 %51, 374761393
  %53 = add i32 %52, %50
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 11)
  %55 = mul i32 %54, -1640531535
  %56 = and i32 %23, 255
  %57 = mul i32 %56, 374761393
  %58 = add i32 %57, %55
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 11)
  %60 = mul i32 %59, -1640531535
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

; Function Attrs: nounwind memory(inaccessiblemem: readwrite) uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #9
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #9
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 44
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %37 = add i32 %16, 606290984
  %38 = add i32 %16, -2048144777
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %41 = add i32 %16, 1640531535
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 10
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %46 = getelementptr inbounds nuw i8, ptr %19, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %46, ptr noundef nonnull readonly align 16 dereferenceable(10) %18, i64 10, i1 false)
  store i32 10, ptr %45, align 4
  store i32 20, ptr %19, align 4
  store i32 1, ptr %44, align 4
  %47 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %48 = getelementptr inbounds nuw i8, ptr %19, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %48, ptr noundef nonnull readonly align 2 dereferenceable(6) %43, i64 6, i1 false)
  %49 = load i32, ptr %47, align 4
  %50 = mul i32 %49, -2048144777
  %51 = add i32 %50, %37
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  %54 = freeze i32 %53
  store i32 %54, ptr %36, align 4
  %55 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %56 = load i32, ptr %55, align 4
  %57 = mul i32 %56, -2048144777
  %58 = add i32 %57, %38
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = mul i32 %59, -1640531535
  %61 = freeze i32 %60
  store i32 %61, ptr %39, align 4
  %62 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %63 = load i32, ptr %62, align 4
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %16
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 4
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %70 = load i32, ptr %69, align 4
  %71 = mul i32 %70, -2048144777
  %72 = add i32 %71, %41
  %73 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 13)
  %74 = mul i32 %73, -1640531535
  %75 = freeze i32 %74
  store i32 %75, ptr %42, align 4
  %76 = load i32, ptr %45, align 4
  %77 = zext i32 %76 to i64
  %78 = sub nsw i64 26, %77
  store i32 0, ptr %45, align 4
  %79 = icmp ult i32 %76, 22
  br i1 %79, label %120, label %80

80:                                               ; preds = %17
  %81 = add nsw i64 %77, -22
  %82 = icmp ult i64 %81, -16
  tail call void @llvm.assume(i1 %82)
  br label %83

83:                                               ; preds = %83, %80
  %84 = phi i32 [ %75, %80 ], [ %116, %83 ]
  %85 = phi i32 [ %68, %80 ], [ %109, %83 ]
  %86 = phi i32 [ %61, %80 ], [ %102, %83 ]
  %87 = phi i32 [ %54, %80 ], [ %95, %83 ]
  %88 = phi i64 [ %78, %80 ], [ %117, %83 ]
  %89 = getelementptr inbounds nuw i8, ptr %18, i64 %88
  %90 = load i32, ptr %89, align 1
  %91 = mul i32 %90, -2048144777
  %92 = add i32 %91, %87
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 13)
  %94 = mul i32 %93, -1640531535
  %95 = freeze i32 %94
  %96 = getelementptr inbounds nuw i8, ptr %89, i64 4
  %97 = load i32, ptr %96, align 1
  %98 = mul i32 %97, -2048144777
  %99 = add i32 %98, %86
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 13)
  %101 = mul i32 %100, -1640531535
  %102 = freeze i32 %101
  %103 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %104 = load i32, ptr %103, align 1
  %105 = mul i32 %104, -2048144777
  %106 = add i32 %105, %85
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 13)
  %108 = mul i32 %107, -1640531535
  %109 = freeze i32 %108
  %110 = getelementptr inbounds nuw i8, ptr %89, i64 12
  %111 = load i32, ptr %110, align 1
  %112 = mul i32 %111, -2048144777
  %113 = add i32 %112, %84
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 13)
  %115 = mul i32 %114, -1640531535
  %116 = freeze i32 %115
  %117 = add nuw nsw i64 %88, 16
  %118 = icmp slt i64 %88, -11
  br i1 %118, label %83, label %119

119:                                              ; preds = %83
  store i32 %95, ptr %36, align 4
  store i32 %102, ptr %39, align 4
  store i32 %109, ptr %40, align 4
  store i32 %116, ptr %42, align 4
  br label %120

120:                                              ; preds = %119, %17
  %121 = phi i32 [ %75, %17 ], [ %116, %119 ]
  %122 = phi i32 [ %68, %17 ], [ %109, %119 ]
  %123 = phi i32 [ %61, %17 ], [ %102, %119 ]
  %124 = phi i32 [ %54, %17 ], [ %95, %119 ]
  %125 = phi i64 [ %78, %17 ], [ %117, %119 ]
  %126 = icmp samesign ult i64 %125, 20
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = getelementptr inbounds nuw i8, ptr %18, i64 %125
  %129 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %130 = sub nuw nsw i64 20, %125
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %129, ptr nonnull readonly align 1 %128, i64 %130, i1 false)
  %131 = trunc nuw nsw i64 %130 to i32
  store i32 %131, ptr %45, align 4
  %132 = and i32 %131, 15
  br label %133

133:                                              ; preds = %120, %127
  %134 = phi i32 [ 0, %120 ], [ %132, %127 ]
  %135 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 7)
  %136 = tail call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 1)
  %137 = add i32 %135, %136
  %138 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 12)
  %139 = add i32 %137, %138
  %140 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 18)
  %141 = add i32 %139, %140
  %142 = add i32 %141, 20
  %143 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %144 = zext nneg i32 %134 to i64
  %145 = icmp samesign ugt i32 %134, 3
  br i1 %145, label %146, label %175

146:                                              ; preds = %133
  %147 = add nsw i64 %144, -4
  %148 = lshr i64 %147, 2
  %149 = add nuw nsw i64 %148, 1
  %150 = and i64 %149, 7
  %151 = and i64 %147, 28
  %152 = icmp eq i64 %151, 28
  br i1 %152, label %167, label %153

153:                                              ; preds = %146, %153
  %154 = phi i32 [ %163, %153 ], [ %142, %146 ]
  %155 = phi i64 [ %164, %153 ], [ %144, %146 ]
  %156 = phi ptr [ %161, %153 ], [ %143, %146 ]
  %157 = phi i64 [ %165, %153 ], [ 0, %146 ]
  %158 = load i32, ptr %156, align 1
  %159 = mul i32 %158, -1028477379
  %160 = add i32 %159, %154
  %161 = getelementptr inbounds nuw i8, ptr %156, i64 4
  %162 = tail call i32 @llvm.fshl.i32(i32 %160, i32 %160, i32 17)
  %163 = mul i32 %162, 668265263
  %164 = add nsw i64 %155, -4
  %165 = add i64 %157, 1
  %166 = icmp eq i64 %165, %150
  br i1 %166, label %167, label %153

167:                                              ; preds = %153, %146
  %168 = phi i32 [ %142, %146 ], [ %163, %153 ]
  %169 = phi i64 [ %144, %146 ], [ %164, %153 ]
  %170 = phi ptr [ %143, %146 ], [ %161, %153 ]
  %171 = phi ptr [ poison, %146 ], [ %161, %153 ]
  %172 = phi i32 [ poison, %146 ], [ %163, %153 ]
  %173 = phi i64 [ poison, %146 ], [ %164, %153 ]
  %174 = icmp ult i64 %147, 28
  br i1 %174, label %175, label %204

175:                                              ; preds = %167, %204, %133
  %176 = phi ptr [ %143, %133 ], [ %171, %167 ], [ %253, %204 ]
  %177 = phi i64 [ %144, %133 ], [ %173, %167 ], [ %256, %204 ]
  %178 = phi i32 [ %142, %133 ], [ %172, %167 ], [ %255, %204 ]
  %179 = icmp eq i64 %177, 0
  br i1 %179, label %320, label %180

180:                                              ; preds = %175
  %181 = and i64 %177, 7
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %198, label %183

183:                                              ; preds = %180, %183
  %184 = phi i32 [ %194, %183 ], [ %178, %180 ]
  %185 = phi i64 [ %195, %183 ], [ %177, %180 ]
  %186 = phi ptr [ %188, %183 ], [ %176, %180 ]
  %187 = phi i64 [ %196, %183 ], [ 0, %180 ]
  %188 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %189 = load i8, ptr %186, align 1
  %190 = zext i8 %189 to i32
  %191 = mul i32 %190, 374761393
  %192 = add i32 %191, %184
  %193 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 11)
  %194 = mul i32 %193, -1640531535
  %195 = add nsw i64 %185, -1
  %196 = add i64 %187, 1
  %197 = icmp eq i64 %196, %181
  br i1 %197, label %198, label %183

198:                                              ; preds = %183, %180
  %199 = phi i32 [ poison, %180 ], [ %194, %183 ]
  %200 = phi i32 [ %178, %180 ], [ %194, %183 ]
  %201 = phi i64 [ %177, %180 ], [ %195, %183 ]
  %202 = phi ptr [ %176, %180 ], [ %188, %183 ]
  %203 = icmp ult i64 %177, 8
  br i1 %203, label %320, label %258

204:                                              ; preds = %167, %204
  %205 = phi i32 [ %255, %204 ], [ %168, %167 ]
  %206 = phi i64 [ %256, %204 ], [ %169, %167 ]
  %207 = phi ptr [ %253, %204 ], [ %170, %167 ]
  %208 = load i32, ptr %207, align 1
  %209 = mul i32 %208, -1028477379
  %210 = add i32 %209, %205
  %211 = getelementptr inbounds nuw i8, ptr %207, i64 4
  %212 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 17)
  %213 = mul i32 %212, 668265263
  %214 = load i32, ptr %211, align 1
  %215 = mul i32 %214, -1028477379
  %216 = add i32 %215, %213
  %217 = getelementptr inbounds nuw i8, ptr %207, i64 8
  %218 = tail call i32 @llvm.fshl.i32(i32 %216, i32 %216, i32 17)
  %219 = mul i32 %218, 668265263
  %220 = load i32, ptr %217, align 1
  %221 = mul i32 %220, -1028477379
  %222 = add i32 %221, %219
  %223 = getelementptr inbounds nuw i8, ptr %207, i64 12
  %224 = tail call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 17)
  %225 = mul i32 %224, 668265263
  %226 = load i32, ptr %223, align 1
  %227 = mul i32 %226, -1028477379
  %228 = add i32 %227, %225
  %229 = getelementptr inbounds nuw i8, ptr %207, i64 16
  %230 = tail call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 17)
  %231 = mul i32 %230, 668265263
  %232 = load i32, ptr %229, align 1
  %233 = mul i32 %232, -1028477379
  %234 = add i32 %233, %231
  %235 = getelementptr inbounds nuw i8, ptr %207, i64 20
  %236 = tail call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 17)
  %237 = mul i32 %236, 668265263
  %238 = load i32, ptr %235, align 1
  %239 = mul i32 %238, -1028477379
  %240 = add i32 %239, %237
  %241 = getelementptr inbounds nuw i8, ptr %207, i64 24
  %242 = tail call i32 @llvm.fshl.i32(i32 %240, i32 %240, i32 17)
  %243 = mul i32 %242, 668265263
  %244 = load i32, ptr %241, align 1
  %245 = mul i32 %244, -1028477379
  %246 = add i32 %245, %243
  %247 = getelementptr inbounds nuw i8, ptr %207, i64 28
  %248 = tail call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 17)
  %249 = mul i32 %248, 668265263
  %250 = load i32, ptr %247, align 1
  %251 = mul i32 %250, -1028477379
  %252 = add i32 %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %207, i64 32
  %254 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 17)
  %255 = mul i32 %254, 668265263
  %256 = add nsw i64 %206, -32
  %257 = icmp ugt i64 %256, 3
  br i1 %257, label %204, label %175

258:                                              ; preds = %198, %258
  %259 = phi i32 [ %317, %258 ], [ %200, %198 ]
  %260 = phi i64 [ %318, %258 ], [ %201, %198 ]
  %261 = phi ptr [ %311, %258 ], [ %202, %198 ]
  %262 = getelementptr inbounds nuw i8, ptr %261, i64 1
  %263 = load i8, ptr %261, align 1
  %264 = zext i8 %263 to i32
  %265 = mul i32 %264, 374761393
  %266 = add i32 %265, %259
  %267 = tail call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 11)
  %268 = mul i32 %267, -1640531535
  %269 = getelementptr inbounds nuw i8, ptr %261, i64 2
  %270 = load i8, ptr %262, align 1
  %271 = zext i8 %270 to i32
  %272 = mul i32 %271, 374761393
  %273 = add i32 %272, %268
  %274 = tail call i32 @llvm.fshl.i32(i32 %273, i32 %273, i32 11)
  %275 = mul i32 %274, -1640531535
  %276 = getelementptr inbounds nuw i8, ptr %261, i64 3
  %277 = load i8, ptr %269, align 1
  %278 = zext i8 %277 to i32
  %279 = mul i32 %278, 374761393
  %280 = add i32 %279, %275
  %281 = tail call i32 @llvm.fshl.i32(i32 %280, i32 %280, i32 11)
  %282 = mul i32 %281, -1640531535
  %283 = getelementptr inbounds nuw i8, ptr %261, i64 4
  %284 = load i8, ptr %276, align 1
  %285 = zext i8 %284 to i32
  %286 = mul i32 %285, 374761393
  %287 = add i32 %286, %282
  %288 = tail call i32 @llvm.fshl.i32(i32 %287, i32 %287, i32 11)
  %289 = mul i32 %288, -1640531535
  %290 = getelementptr inbounds nuw i8, ptr %261, i64 5
  %291 = load i8, ptr %283, align 1
  %292 = zext i8 %291 to i32
  %293 = mul i32 %292, 374761393
  %294 = add i32 %293, %289
  %295 = tail call i32 @llvm.fshl.i32(i32 %294, i32 %294, i32 11)
  %296 = mul i32 %295, -1640531535
  %297 = getelementptr inbounds nuw i8, ptr %261, i64 6
  %298 = load i8, ptr %290, align 1
  %299 = zext i8 %298 to i32
  %300 = mul i32 %299, 374761393
  %301 = add i32 %300, %296
  %302 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 11)
  %303 = mul i32 %302, -1640531535
  %304 = getelementptr inbounds nuw i8, ptr %261, i64 7
  %305 = load i8, ptr %297, align 1
  %306 = zext i8 %305 to i32
  %307 = mul i32 %306, 374761393
  %308 = add i32 %307, %303
  %309 = tail call i32 @llvm.fshl.i32(i32 %308, i32 %308, i32 11)
  %310 = mul i32 %309, -1640531535
  %311 = getelementptr inbounds nuw i8, ptr %261, i64 8
  %312 = load i8, ptr %304, align 1
  %313 = zext i8 %312 to i32
  %314 = mul i32 %313, 374761393
  %315 = add i32 %314, %310
  %316 = tail call i32 @llvm.fshl.i32(i32 %315, i32 %315, i32 11)
  %317 = mul i32 %316, -1640531535
  %318 = add nsw i64 %260, -8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %258

320:                                              ; preds = %198, %258, %175
  %321 = phi i32 [ %178, %175 ], [ %199, %198 ], [ %317, %258 ]
  %322 = lshr i32 %321, 15
  %323 = xor i32 %322, %321
  %324 = mul i32 %323, -2048144777
  %325 = lshr i32 %324, 13
  %326 = xor i32 %325, %324
  %327 = mul i32 %326, -1028477379
  %328 = lshr i32 %327, 16
  %329 = xor i32 %328, %327
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #9
  ret i32 %329
}

; Function Attrs: nounwind memory(inaccessiblemem: readwrite) uwtable
define dso_local i32 @target_s32_3_20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = and i32 %21, 16777215
  %23 = trunc i64 %0 to i32
  %24 = and i32 %23, -16777216
  %25 = or disjoint i32 %22, %24
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = trunc i64 %1 to i32
  %29 = lshr i64 %1, 32
  %30 = trunc nuw i64 %29 to i32
  %31 = mul i32 %25, -2048144777
  %32 = add i32 %31, %18
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = freeze i32 %34
  %36 = lshr i64 %0, 32
  %37 = trunc nuw i64 %36 to i32
  %38 = and i32 %37, -16777216
  %39 = lshr i64 %0, 32
  %40 = trunc nuw i64 %39 to i32
  %41 = and i32 %40, 16711680
  %42 = or disjoint i32 %38, %41
  %43 = lshr i64 %0, 32
  %44 = trunc nuw i64 %43 to i32
  %45 = and i32 %44, 65280
  %46 = or disjoint i32 %42, %45
  %47 = and i32 %27, 255
  %48 = or disjoint i32 %46, %47
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %19
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = freeze i32 %52
  %54 = mul i32 %28, -2048144777
  %55 = add i32 %54, %16
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  %59 = mul i32 %30, -2048144777
  %60 = add i32 %59, %20
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13)
  %62 = mul i32 %61, -1640531535
  %63 = freeze i32 %62
  %64 = trunc i64 %2 to i32
  %65 = mul i32 %64, -1028477379
  %66 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 1)
  %67 = add i32 %66, 23
  %68 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 7)
  %69 = add i32 %67, %68
  %70 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 12)
  %71 = add i32 %69, %70
  %72 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 18)
  %73 = add i32 %71, %72
  %74 = add i32 %65, %73
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 17)
  %76 = mul i32 %75, 668265263
  %77 = lshr i64 %2, 48
  %78 = trunc nuw nsw i64 %77 to i32
  %79 = lshr i64 %2, 40
  %80 = trunc nuw nsw i64 %79 to i32
  %81 = lshr i64 %2, 32
  %82 = trunc nuw i64 %81 to i32
  %83 = and i32 %82, 255
  %84 = mul i32 %83, 374761393
  %85 = add i32 %84, %76
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 11)
  %87 = mul i32 %86, -1640531535
  %88 = and i32 %80, 255
  %89 = mul i32 %88, 374761393
  %90 = add i32 %89, %87
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 11)
  %92 = mul i32 %91, -1640531535
  %93 = and i32 %78, 255
  %94 = mul i32 %93, 374761393
  %95 = add i32 %94, %92
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 11)
  %97 = mul i32 %96, -1640531535
  %98 = lshr i32 %97, 15
  %99 = xor i32 %98, %97
  %100 = mul i32 %99, -2048144777
  %101 = lshr i32 %100, 13
  %102 = xor i32 %101, %100
  %103 = mul i32 %102, -1028477379
  %104 = lshr i32 %103, 16
  %105 = xor i32 %104, %103
  ret i32 %105
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_16_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = lshr i64 %0, 32
  %23 = trunc nuw i64 %22 to i32
  %24 = trunc i64 %1 to i32
  %25 = lshr i64 %1, 32
  %26 = trunc nuw i64 %25 to i32
  %27 = mul i32 %21, -2048144777
  %28 = add i32 %27, %18
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = mul i32 %23, -2048144777
  %33 = add i32 %32, %19
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = freeze i32 %35
  %37 = mul i32 %24, -2048144777
  %38 = add i32 %37, %16
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  %42 = mul i32 %26, -2048144777
  %43 = add i32 %42, %20
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 1)
  %48 = add i32 %47, 16
  %49 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 7)
  %50 = add i32 %48, %49
  %51 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 12)
  %52 = add i32 %50, %51
  %53 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 18)
  %54 = add i32 %52, %53
  %55 = lshr i32 %54, 15
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, -2048144777
  %58 = lshr i32 %57, 13
  %59 = xor i32 %58, %57
  %60 = mul i32 %59, -1028477379
  %61 = lshr i32 %60, 16
  %62 = xor i32 %61, %60
  ret i32 %62
}

; Function Attrs: nounwind memory(inaccessiblemem: readwrite) uwtable
define dso_local i32 @target_s32_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #9
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #9
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 44
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %37 = add i32 %16, 606290984
  %38 = add i32 %16, -2048144777
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %41 = add i32 %16, 1640531535
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %46 = load i32, ptr %18, align 16
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %37
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  %52 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %38
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %60 = load i32, ptr %59, align 8
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %16
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  %66 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %41
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  %73 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %74 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %75 = load i32, ptr %73, align 16
  store i32 %75, ptr %74, align 4
  store i32 4, ptr %45, align 4
  store i32 33, ptr %19, align 4
  store i32 1, ptr %44, align 4
  %76 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %77, ptr noundef nonnull readonly align 4 dereferenceable(12) %43, i64 12, i1 false)
  %78 = load i32, ptr %76, align 4
  %79 = mul i32 %78, -2048144777
  %80 = add i32 %79, %51
  %81 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 13)
  %82 = mul i32 %81, -1640531535
  %83 = freeze i32 %82
  store i32 %83, ptr %36, align 4
  %84 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %85 = load i32, ptr %84, align 4
  %86 = mul i32 %85, -2048144777
  %87 = add i32 %86, %58
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 13)
  %89 = mul i32 %88, -1640531535
  %90 = freeze i32 %89
  store i32 %90, ptr %39, align 4
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %92 = load i32, ptr %91, align 4
  %93 = mul i32 %92, -2048144777
  %94 = add i32 %93, %65
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 13)
  %96 = mul i32 %95, -1640531535
  %97 = freeze i32 %96
  store i32 %97, ptr %40, align 4
  %98 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %99 = load i32, ptr %98, align 4
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %72
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = freeze i32 %103
  store i32 %104, ptr %42, align 4
  %105 = load i32, ptr %45, align 4
  %106 = zext i32 %105 to i64
  %107 = sub nsw i64 36, %106
  store i32 0, ptr %45, align 4
  %108 = icmp ult i32 %105, 19
  br i1 %108, label %149, label %109

109:                                              ; preds = %17
  %110 = add nsw i64 %106, -19
  %111 = icmp ult i64 %110, -16
  tail call void @llvm.assume(i1 %111)
  br label %112

112:                                              ; preds = %112, %109
  %113 = phi i32 [ %104, %109 ], [ %145, %112 ]
  %114 = phi i32 [ %97, %109 ], [ %138, %112 ]
  %115 = phi i32 [ %90, %109 ], [ %131, %112 ]
  %116 = phi i32 [ %83, %109 ], [ %124, %112 ]
  %117 = phi i64 [ %107, %109 ], [ %146, %112 ]
  %118 = getelementptr inbounds nuw i8, ptr %18, i64 %117
  %119 = load i32, ptr %118, align 1
  %120 = mul i32 %119, -2048144777
  %121 = add i32 %120, %116
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 13)
  %123 = mul i32 %122, -1640531535
  %124 = freeze i32 %123
  %125 = getelementptr inbounds nuw i8, ptr %118, i64 4
  %126 = load i32, ptr %125, align 1
  %127 = mul i32 %126, -2048144777
  %128 = add i32 %127, %115
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 13)
  %130 = mul i32 %129, -1640531535
  %131 = freeze i32 %130
  %132 = getelementptr inbounds nuw i8, ptr %118, i64 8
  %133 = load i32, ptr %132, align 1
  %134 = mul i32 %133, -2048144777
  %135 = add i32 %134, %114
  %136 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 13)
  %137 = mul i32 %136, -1640531535
  %138 = freeze i32 %137
  %139 = getelementptr inbounds nuw i8, ptr %118, i64 12
  %140 = load i32, ptr %139, align 1
  %141 = mul i32 %140, -2048144777
  %142 = add i32 %141, %113
  %143 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 13)
  %144 = mul i32 %143, -1640531535
  %145 = freeze i32 %144
  %146 = add nuw nsw i64 %117, 16
  %147 = icmp slt i64 %117, 2
  br i1 %147, label %112, label %148

148:                                              ; preds = %112
  store i32 %124, ptr %36, align 4
  store i32 %131, ptr %39, align 4
  store i32 %138, ptr %40, align 4
  store i32 %145, ptr %42, align 4
  br label %149

149:                                              ; preds = %148, %17
  %150 = phi i32 [ %104, %17 ], [ %145, %148 ]
  %151 = phi i32 [ %97, %17 ], [ %138, %148 ]
  %152 = phi i32 [ %90, %17 ], [ %131, %148 ]
  %153 = phi i32 [ %83, %17 ], [ %124, %148 ]
  %154 = phi i64 [ %107, %17 ], [ %146, %148 ]
  %155 = icmp samesign ult i64 %154, 33
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = getelementptr inbounds nuw i8, ptr %18, i64 %154
  %158 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %159 = sub nuw nsw i64 33, %154
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %158, ptr nonnull readonly align 1 %157, i64 %159, i1 false)
  %160 = trunc nuw nsw i64 %159 to i32
  store i32 %160, ptr %45, align 4
  %161 = and i32 %160, 15
  br label %162

162:                                              ; preds = %149, %156
  %163 = phi i32 [ 0, %149 ], [ %161, %156 ]
  %164 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 1)
  %165 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 7)
  %166 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 12)
  %167 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 18)
  %168 = add i32 %164, 33
  %169 = add i32 %168, %165
  %170 = add i32 %169, %166
  %171 = add i32 %170, %167
  %172 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %173 = zext nneg i32 %163 to i64
  %174 = icmp samesign ugt i32 %163, 3
  br i1 %174, label %175, label %204

175:                                              ; preds = %162
  %176 = add nsw i64 %173, -4
  %177 = lshr i64 %176, 2
  %178 = add nuw nsw i64 %177, 1
  %179 = and i64 %178, 7
  %180 = and i64 %176, 28
  %181 = icmp eq i64 %180, 28
  br i1 %181, label %196, label %182

182:                                              ; preds = %175, %182
  %183 = phi i32 [ %192, %182 ], [ %171, %175 ]
  %184 = phi i64 [ %193, %182 ], [ %173, %175 ]
  %185 = phi ptr [ %190, %182 ], [ %172, %175 ]
  %186 = phi i64 [ %194, %182 ], [ 0, %175 ]
  %187 = load i32, ptr %185, align 1
  %188 = mul i32 %187, -1028477379
  %189 = add i32 %188, %183
  %190 = getelementptr inbounds nuw i8, ptr %185, i64 4
  %191 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 17)
  %192 = mul i32 %191, 668265263
  %193 = add nsw i64 %184, -4
  %194 = add i64 %186, 1
  %195 = icmp eq i64 %194, %179
  br i1 %195, label %196, label %182

196:                                              ; preds = %182, %175
  %197 = phi i32 [ %171, %175 ], [ %192, %182 ]
  %198 = phi i64 [ %173, %175 ], [ %193, %182 ]
  %199 = phi ptr [ %172, %175 ], [ %190, %182 ]
  %200 = phi ptr [ poison, %175 ], [ %190, %182 ]
  %201 = phi i32 [ poison, %175 ], [ %192, %182 ]
  %202 = phi i64 [ poison, %175 ], [ %193, %182 ]
  %203 = icmp ult i64 %176, 28
  br i1 %203, label %204, label %233

204:                                              ; preds = %196, %233, %162
  %205 = phi ptr [ %172, %162 ], [ %200, %196 ], [ %282, %233 ]
  %206 = phi i64 [ %173, %162 ], [ %202, %196 ], [ %285, %233 ]
  %207 = phi i32 [ %171, %162 ], [ %201, %196 ], [ %284, %233 ]
  %208 = icmp eq i64 %206, 0
  br i1 %208, label %349, label %209

209:                                              ; preds = %204
  %210 = and i64 %206, 7
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %227, label %212

212:                                              ; preds = %209, %212
  %213 = phi i32 [ %223, %212 ], [ %207, %209 ]
  %214 = phi i64 [ %224, %212 ], [ %206, %209 ]
  %215 = phi ptr [ %217, %212 ], [ %205, %209 ]
  %216 = phi i64 [ %225, %212 ], [ 0, %209 ]
  %217 = getelementptr inbounds nuw i8, ptr %215, i64 1
  %218 = load i8, ptr %215, align 1
  %219 = zext i8 %218 to i32
  %220 = mul i32 %219, 374761393
  %221 = add i32 %220, %213
  %222 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 11)
  %223 = mul i32 %222, -1640531535
  %224 = add nsw i64 %214, -1
  %225 = add i64 %216, 1
  %226 = icmp eq i64 %225, %210
  br i1 %226, label %227, label %212

227:                                              ; preds = %212, %209
  %228 = phi i32 [ poison, %209 ], [ %223, %212 ]
  %229 = phi i32 [ %207, %209 ], [ %223, %212 ]
  %230 = phi i64 [ %206, %209 ], [ %224, %212 ]
  %231 = phi ptr [ %205, %209 ], [ %217, %212 ]
  %232 = icmp ult i64 %206, 8
  br i1 %232, label %349, label %287

233:                                              ; preds = %196, %233
  %234 = phi i32 [ %284, %233 ], [ %197, %196 ]
  %235 = phi i64 [ %285, %233 ], [ %198, %196 ]
  %236 = phi ptr [ %282, %233 ], [ %199, %196 ]
  %237 = load i32, ptr %236, align 1
  %238 = mul i32 %237, -1028477379
  %239 = add i32 %238, %234
  %240 = getelementptr inbounds nuw i8, ptr %236, i64 4
  %241 = tail call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 17)
  %242 = mul i32 %241, 668265263
  %243 = load i32, ptr %240, align 1
  %244 = mul i32 %243, -1028477379
  %245 = add i32 %244, %242
  %246 = getelementptr inbounds nuw i8, ptr %236, i64 8
  %247 = tail call i32 @llvm.fshl.i32(i32 %245, i32 %245, i32 17)
  %248 = mul i32 %247, 668265263
  %249 = load i32, ptr %246, align 1
  %250 = mul i32 %249, -1028477379
  %251 = add i32 %250, %248
  %252 = getelementptr inbounds nuw i8, ptr %236, i64 12
  %253 = tail call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 17)
  %254 = mul i32 %253, 668265263
  %255 = load i32, ptr %252, align 1
  %256 = mul i32 %255, -1028477379
  %257 = add i32 %256, %254
  %258 = getelementptr inbounds nuw i8, ptr %236, i64 16
  %259 = tail call i32 @llvm.fshl.i32(i32 %257, i32 %257, i32 17)
  %260 = mul i32 %259, 668265263
  %261 = load i32, ptr %258, align 1
  %262 = mul i32 %261, -1028477379
  %263 = add i32 %262, %260
  %264 = getelementptr inbounds nuw i8, ptr %236, i64 20
  %265 = tail call i32 @llvm.fshl.i32(i32 %263, i32 %263, i32 17)
  %266 = mul i32 %265, 668265263
  %267 = load i32, ptr %264, align 1
  %268 = mul i32 %267, -1028477379
  %269 = add i32 %268, %266
  %270 = getelementptr inbounds nuw i8, ptr %236, i64 24
  %271 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 17)
  %272 = mul i32 %271, 668265263
  %273 = load i32, ptr %270, align 1
  %274 = mul i32 %273, -1028477379
  %275 = add i32 %274, %272
  %276 = getelementptr inbounds nuw i8, ptr %236, i64 28
  %277 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 17)
  %278 = mul i32 %277, 668265263
  %279 = load i32, ptr %276, align 1
  %280 = mul i32 %279, -1028477379
  %281 = add i32 %280, %278
  %282 = getelementptr inbounds nuw i8, ptr %236, i64 32
  %283 = tail call i32 @llvm.fshl.i32(i32 %281, i32 %281, i32 17)
  %284 = mul i32 %283, 668265263
  %285 = add nsw i64 %235, -32
  %286 = icmp ugt i64 %285, 3
  br i1 %286, label %233, label %204

287:                                              ; preds = %227, %287
  %288 = phi i32 [ %346, %287 ], [ %229, %227 ]
  %289 = phi i64 [ %347, %287 ], [ %230, %227 ]
  %290 = phi ptr [ %340, %287 ], [ %231, %227 ]
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 1
  %292 = load i8, ptr %290, align 1
  %293 = zext i8 %292 to i32
  %294 = mul i32 %293, 374761393
  %295 = add i32 %294, %288
  %296 = tail call i32 @llvm.fshl.i32(i32 %295, i32 %295, i32 11)
  %297 = mul i32 %296, -1640531535
  %298 = getelementptr inbounds nuw i8, ptr %290, i64 2
  %299 = load i8, ptr %291, align 1
  %300 = zext i8 %299 to i32
  %301 = mul i32 %300, 374761393
  %302 = add i32 %301, %297
  %303 = tail call i32 @llvm.fshl.i32(i32 %302, i32 %302, i32 11)
  %304 = mul i32 %303, -1640531535
  %305 = getelementptr inbounds nuw i8, ptr %290, i64 3
  %306 = load i8, ptr %298, align 1
  %307 = zext i8 %306 to i32
  %308 = mul i32 %307, 374761393
  %309 = add i32 %308, %304
  %310 = tail call i32 @llvm.fshl.i32(i32 %309, i32 %309, i32 11)
  %311 = mul i32 %310, -1640531535
  %312 = getelementptr inbounds nuw i8, ptr %290, i64 4
  %313 = load i8, ptr %305, align 1
  %314 = zext i8 %313 to i32
  %315 = mul i32 %314, 374761393
  %316 = add i32 %315, %311
  %317 = tail call i32 @llvm.fshl.i32(i32 %316, i32 %316, i32 11)
  %318 = mul i32 %317, -1640531535
  %319 = getelementptr inbounds nuw i8, ptr %290, i64 5
  %320 = load i8, ptr %312, align 1
  %321 = zext i8 %320 to i32
  %322 = mul i32 %321, 374761393
  %323 = add i32 %322, %318
  %324 = tail call i32 @llvm.fshl.i32(i32 %323, i32 %323, i32 11)
  %325 = mul i32 %324, -1640531535
  %326 = getelementptr inbounds nuw i8, ptr %290, i64 6
  %327 = load i8, ptr %319, align 1
  %328 = zext i8 %327 to i32
  %329 = mul i32 %328, 374761393
  %330 = add i32 %329, %325
  %331 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 11)
  %332 = mul i32 %331, -1640531535
  %333 = getelementptr inbounds nuw i8, ptr %290, i64 7
  %334 = load i8, ptr %326, align 1
  %335 = zext i8 %334 to i32
  %336 = mul i32 %335, 374761393
  %337 = add i32 %336, %332
  %338 = tail call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 11)
  %339 = mul i32 %338, -1640531535
  %340 = getelementptr inbounds nuw i8, ptr %290, i64 8
  %341 = load i8, ptr %333, align 1
  %342 = zext i8 %341 to i32
  %343 = mul i32 %342, 374761393
  %344 = add i32 %343, %339
  %345 = tail call i32 @llvm.fshl.i32(i32 %344, i32 %344, i32 11)
  %346 = mul i32 %345, -1640531535
  %347 = add nsw i64 %289, -8
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %287

349:                                              ; preds = %227, %287, %204
  %350 = phi i32 [ %207, %204 ], [ %228, %227 ], [ %346, %287 ]
  %351 = lshr i32 %350, 15
  %352 = xor i32 %351, %350
  %353 = mul i32 %352, -2048144777
  %354 = lshr i32 %353, 13
  %355 = xor i32 %354, %353
  %356 = mul i32 %355, -1028477379
  %357 = lshr i32 %356, 16
  %358 = xor i32 %357, %356
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #9
  ret i32 %358
}

; Function Attrs: nounwind memory(inaccessiblemem: readwrite) uwtable
define dso_local i32 @target_s32_17_30(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #9
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #9
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 44
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %37 = add i32 %16, 606290984
  %38 = add i32 %16, -2048144777
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %41 = add i32 %16, 1640531535
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 17
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %46 = load i32, ptr %18, align 16
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %37
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  %52 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %38
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %60 = load i32, ptr %59, align 8
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %16
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  %66 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %41
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  %73 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %74 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %75 = load i8, ptr %73, align 16
  store i8 %75, ptr %74, align 4
  store i32 1, ptr %45, align 4
  store i32 47, ptr %19, align 4
  store i32 1, ptr %44, align 4
  %76 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %77 = getelementptr inbounds nuw i8, ptr %19, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %77, ptr noundef nonnull readonly align 1 dereferenceable(15) %43, i64 15, i1 false)
  %78 = load i32, ptr %76, align 4
  %79 = mul i32 %78, -2048144777
  %80 = add i32 %79, %51
  %81 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 13)
  %82 = mul i32 %81, -1640531535
  %83 = freeze i32 %82
  store i32 %83, ptr %36, align 4
  %84 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %85 = load i32, ptr %84, align 4
  %86 = mul i32 %85, -2048144777
  %87 = add i32 %86, %58
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 13)
  %89 = mul i32 %88, -1640531535
  %90 = freeze i32 %89
  store i32 %90, ptr %39, align 4
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %92 = load i32, ptr %91, align 4
  %93 = mul i32 %92, -2048144777
  %94 = add i32 %93, %65
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 13)
  %96 = mul i32 %95, -1640531535
  %97 = freeze i32 %96
  store i32 %97, ptr %40, align 4
  %98 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %99 = load i32, ptr %98, align 4
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %72
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = freeze i32 %103
  store i32 %104, ptr %42, align 4
  %105 = load i32, ptr %45, align 4
  %106 = zext i32 %105 to i64
  %107 = sub nsw i64 33, %106
  store i32 0, ptr %45, align 4
  %108 = icmp ult i32 %105, 2
  br i1 %108, label %149, label %109

109:                                              ; preds = %17
  %110 = and i64 %107, -16
  %111 = icmp ne i64 %110, 32
  tail call void @llvm.assume(i1 %111)
  br label %112

112:                                              ; preds = %112, %109
  %113 = phi i32 [ %104, %109 ], [ %145, %112 ]
  %114 = phi i32 [ %97, %109 ], [ %138, %112 ]
  %115 = phi i32 [ %90, %109 ], [ %131, %112 ]
  %116 = phi i32 [ %83, %109 ], [ %124, %112 ]
  %117 = phi i64 [ %107, %109 ], [ %146, %112 ]
  %118 = getelementptr inbounds nuw i8, ptr %18, i64 %117
  %119 = load i32, ptr %118, align 1
  %120 = mul i32 %119, -2048144777
  %121 = add i32 %120, %116
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 13)
  %123 = mul i32 %122, -1640531535
  %124 = freeze i32 %123
  %125 = getelementptr inbounds nuw i8, ptr %118, i64 4
  %126 = load i32, ptr %125, align 1
  %127 = mul i32 %126, -2048144777
  %128 = add i32 %127, %115
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 13)
  %130 = mul i32 %129, -1640531535
  %131 = freeze i32 %130
  %132 = getelementptr inbounds nuw i8, ptr %118, i64 8
  %133 = load i32, ptr %132, align 1
  %134 = mul i32 %133, -2048144777
  %135 = add i32 %134, %114
  %136 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 13)
  %137 = mul i32 %136, -1640531535
  %138 = freeze i32 %137
  %139 = getelementptr inbounds nuw i8, ptr %118, i64 12
  %140 = load i32, ptr %139, align 1
  %141 = mul i32 %140, -2048144777
  %142 = add i32 %141, %113
  %143 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 13)
  %144 = mul i32 %143, -1640531535
  %145 = freeze i32 %144
  %146 = add nuw nsw i64 %117, 16
  %147 = icmp slt i64 %117, 16
  br i1 %147, label %112, label %148

148:                                              ; preds = %112
  store i32 %124, ptr %36, align 4
  store i32 %131, ptr %39, align 4
  store i32 %138, ptr %40, align 4
  store i32 %145, ptr %42, align 4
  br label %149

149:                                              ; preds = %148, %17
  %150 = phi i32 [ %104, %17 ], [ %145, %148 ]
  %151 = phi i32 [ %97, %17 ], [ %138, %148 ]
  %152 = phi i32 [ %90, %17 ], [ %131, %148 ]
  %153 = phi i32 [ %83, %17 ], [ %124, %148 ]
  %154 = phi i64 [ %107, %17 ], [ %146, %148 ]
  %155 = icmp samesign ult i64 %154, 47
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = getelementptr inbounds nuw i8, ptr %18, i64 %154
  %158 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %159 = sub nuw nsw i64 47, %154
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %158, ptr nonnull readonly align 1 %157, i64 %159, i1 false)
  %160 = trunc nuw nsw i64 %159 to i32
  store i32 %160, ptr %45, align 4
  %161 = and i32 %160, 15
  br label %162

162:                                              ; preds = %149, %156
  %163 = phi i32 [ 0, %149 ], [ %161, %156 ]
  %164 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 1)
  %165 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 7)
  %166 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 12)
  %167 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 18)
  %168 = add i32 %164, 47
  %169 = add i32 %168, %165
  %170 = add i32 %169, %166
  %171 = add i32 %170, %167
  %172 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %173 = zext nneg i32 %163 to i64
  %174 = icmp samesign ugt i32 %163, 3
  br i1 %174, label %175, label %204

175:                                              ; preds = %162
  %176 = add nsw i64 %173, -4
  %177 = lshr i64 %176, 2
  %178 = add nuw nsw i64 %177, 1
  %179 = and i64 %178, 7
  %180 = and i64 %176, 28
  %181 = icmp eq i64 %180, 28
  br i1 %181, label %196, label %182

182:                                              ; preds = %175, %182
  %183 = phi i32 [ %192, %182 ], [ %171, %175 ]
  %184 = phi i64 [ %193, %182 ], [ %173, %175 ]
  %185 = phi ptr [ %190, %182 ], [ %172, %175 ]
  %186 = phi i64 [ %194, %182 ], [ 0, %175 ]
  %187 = load i32, ptr %185, align 1
  %188 = mul i32 %187, -1028477379
  %189 = add i32 %188, %183
  %190 = getelementptr inbounds nuw i8, ptr %185, i64 4
  %191 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 17)
  %192 = mul i32 %191, 668265263
  %193 = add nsw i64 %184, -4
  %194 = add i64 %186, 1
  %195 = icmp eq i64 %194, %179
  br i1 %195, label %196, label %182

196:                                              ; preds = %182, %175
  %197 = phi i32 [ %171, %175 ], [ %192, %182 ]
  %198 = phi i64 [ %173, %175 ], [ %193, %182 ]
  %199 = phi ptr [ %172, %175 ], [ %190, %182 ]
  %200 = phi ptr [ poison, %175 ], [ %190, %182 ]
  %201 = phi i32 [ poison, %175 ], [ %192, %182 ]
  %202 = phi i64 [ poison, %175 ], [ %193, %182 ]
  %203 = icmp ult i64 %176, 28
  br i1 %203, label %204, label %233

204:                                              ; preds = %196, %233, %162
  %205 = phi ptr [ %172, %162 ], [ %200, %196 ], [ %282, %233 ]
  %206 = phi i64 [ %173, %162 ], [ %202, %196 ], [ %285, %233 ]
  %207 = phi i32 [ %171, %162 ], [ %201, %196 ], [ %284, %233 ]
  %208 = icmp eq i64 %206, 0
  br i1 %208, label %349, label %209

209:                                              ; preds = %204
  %210 = and i64 %206, 7
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %227, label %212

212:                                              ; preds = %209, %212
  %213 = phi i32 [ %223, %212 ], [ %207, %209 ]
  %214 = phi i64 [ %224, %212 ], [ %206, %209 ]
  %215 = phi ptr [ %217, %212 ], [ %205, %209 ]
  %216 = phi i64 [ %225, %212 ], [ 0, %209 ]
  %217 = getelementptr inbounds nuw i8, ptr %215, i64 1
  %218 = load i8, ptr %215, align 1
  %219 = zext i8 %218 to i32
  %220 = mul i32 %219, 374761393
  %221 = add i32 %220, %213
  %222 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 11)
  %223 = mul i32 %222, -1640531535
  %224 = add nsw i64 %214, -1
  %225 = add i64 %216, 1
  %226 = icmp eq i64 %225, %210
  br i1 %226, label %227, label %212

227:                                              ; preds = %212, %209
  %228 = phi i32 [ poison, %209 ], [ %223, %212 ]
  %229 = phi i32 [ %207, %209 ], [ %223, %212 ]
  %230 = phi i64 [ %206, %209 ], [ %224, %212 ]
  %231 = phi ptr [ %205, %209 ], [ %217, %212 ]
  %232 = icmp ult i64 %206, 8
  br i1 %232, label %349, label %287

233:                                              ; preds = %196, %233
  %234 = phi i32 [ %284, %233 ], [ %197, %196 ]
  %235 = phi i64 [ %285, %233 ], [ %198, %196 ]
  %236 = phi ptr [ %282, %233 ], [ %199, %196 ]
  %237 = load i32, ptr %236, align 1
  %238 = mul i32 %237, -1028477379
  %239 = add i32 %238, %234
  %240 = getelementptr inbounds nuw i8, ptr %236, i64 4
  %241 = tail call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 17)
  %242 = mul i32 %241, 668265263
  %243 = load i32, ptr %240, align 1
  %244 = mul i32 %243, -1028477379
  %245 = add i32 %244, %242
  %246 = getelementptr inbounds nuw i8, ptr %236, i64 8
  %247 = tail call i32 @llvm.fshl.i32(i32 %245, i32 %245, i32 17)
  %248 = mul i32 %247, 668265263
  %249 = load i32, ptr %246, align 1
  %250 = mul i32 %249, -1028477379
  %251 = add i32 %250, %248
  %252 = getelementptr inbounds nuw i8, ptr %236, i64 12
  %253 = tail call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 17)
  %254 = mul i32 %253, 668265263
  %255 = load i32, ptr %252, align 1
  %256 = mul i32 %255, -1028477379
  %257 = add i32 %256, %254
  %258 = getelementptr inbounds nuw i8, ptr %236, i64 16
  %259 = tail call i32 @llvm.fshl.i32(i32 %257, i32 %257, i32 17)
  %260 = mul i32 %259, 668265263
  %261 = load i32, ptr %258, align 1
  %262 = mul i32 %261, -1028477379
  %263 = add i32 %262, %260
  %264 = getelementptr inbounds nuw i8, ptr %236, i64 20
  %265 = tail call i32 @llvm.fshl.i32(i32 %263, i32 %263, i32 17)
  %266 = mul i32 %265, 668265263
  %267 = load i32, ptr %264, align 1
  %268 = mul i32 %267, -1028477379
  %269 = add i32 %268, %266
  %270 = getelementptr inbounds nuw i8, ptr %236, i64 24
  %271 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 17)
  %272 = mul i32 %271, 668265263
  %273 = load i32, ptr %270, align 1
  %274 = mul i32 %273, -1028477379
  %275 = add i32 %274, %272
  %276 = getelementptr inbounds nuw i8, ptr %236, i64 28
  %277 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 17)
  %278 = mul i32 %277, 668265263
  %279 = load i32, ptr %276, align 1
  %280 = mul i32 %279, -1028477379
  %281 = add i32 %280, %278
  %282 = getelementptr inbounds nuw i8, ptr %236, i64 32
  %283 = tail call i32 @llvm.fshl.i32(i32 %281, i32 %281, i32 17)
  %284 = mul i32 %283, 668265263
  %285 = add nsw i64 %235, -32
  %286 = icmp ugt i64 %285, 3
  br i1 %286, label %233, label %204

287:                                              ; preds = %227, %287
  %288 = phi i32 [ %346, %287 ], [ %229, %227 ]
  %289 = phi i64 [ %347, %287 ], [ %230, %227 ]
  %290 = phi ptr [ %340, %287 ], [ %231, %227 ]
  %291 = getelementptr inbounds nuw i8, ptr %290, i64 1
  %292 = load i8, ptr %290, align 1
  %293 = zext i8 %292 to i32
  %294 = mul i32 %293, 374761393
  %295 = add i32 %294, %288
  %296 = tail call i32 @llvm.fshl.i32(i32 %295, i32 %295, i32 11)
  %297 = mul i32 %296, -1640531535
  %298 = getelementptr inbounds nuw i8, ptr %290, i64 2
  %299 = load i8, ptr %291, align 1
  %300 = zext i8 %299 to i32
  %301 = mul i32 %300, 374761393
  %302 = add i32 %301, %297
  %303 = tail call i32 @llvm.fshl.i32(i32 %302, i32 %302, i32 11)
  %304 = mul i32 %303, -1640531535
  %305 = getelementptr inbounds nuw i8, ptr %290, i64 3
  %306 = load i8, ptr %298, align 1
  %307 = zext i8 %306 to i32
  %308 = mul i32 %307, 374761393
  %309 = add i32 %308, %304
  %310 = tail call i32 @llvm.fshl.i32(i32 %309, i32 %309, i32 11)
  %311 = mul i32 %310, -1640531535
  %312 = getelementptr inbounds nuw i8, ptr %290, i64 4
  %313 = load i8, ptr %305, align 1
  %314 = zext i8 %313 to i32
  %315 = mul i32 %314, 374761393
  %316 = add i32 %315, %311
  %317 = tail call i32 @llvm.fshl.i32(i32 %316, i32 %316, i32 11)
  %318 = mul i32 %317, -1640531535
  %319 = getelementptr inbounds nuw i8, ptr %290, i64 5
  %320 = load i8, ptr %312, align 1
  %321 = zext i8 %320 to i32
  %322 = mul i32 %321, 374761393
  %323 = add i32 %322, %318
  %324 = tail call i32 @llvm.fshl.i32(i32 %323, i32 %323, i32 11)
  %325 = mul i32 %324, -1640531535
  %326 = getelementptr inbounds nuw i8, ptr %290, i64 6
  %327 = load i8, ptr %319, align 1
  %328 = zext i8 %327 to i32
  %329 = mul i32 %328, 374761393
  %330 = add i32 %329, %325
  %331 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 11)
  %332 = mul i32 %331, -1640531535
  %333 = getelementptr inbounds nuw i8, ptr %290, i64 7
  %334 = load i8, ptr %326, align 1
  %335 = zext i8 %334 to i32
  %336 = mul i32 %335, 374761393
  %337 = add i32 %336, %332
  %338 = tail call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 11)
  %339 = mul i32 %338, -1640531535
  %340 = getelementptr inbounds nuw i8, ptr %290, i64 8
  %341 = load i8, ptr %333, align 1
  %342 = zext i8 %341 to i32
  %343 = mul i32 %342, 374761393
  %344 = add i32 %343, %339
  %345 = tail call i32 @llvm.fshl.i32(i32 %344, i32 %344, i32 11)
  %346 = mul i32 %345, -1640531535
  %347 = add nsw i64 %289, -8
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %287

349:                                              ; preds = %227, %287, %204
  %350 = phi i32 [ %207, %204 ], [ %228, %227 ], [ %346, %287 ]
  %351 = lshr i32 %350, 15
  %352 = xor i32 %351, %350
  %353 = mul i32 %352, -2048144777
  %354 = lshr i32 %353, 13
  %355 = xor i32 %354, %353
  %356 = mul i32 %355, -1028477379
  %357 = lshr i32 %356, 16
  %358 = xor i32 %357, %356
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #9
  ret i32 %358
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_1_47(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = trunc i64 %0 to i32
  %23 = and i32 %22, -256
  %24 = lshr i64 %0, 32
  %25 = trunc nuw i64 %24 to i32
  %26 = trunc i64 %1 to i32
  %27 = lshr i64 %1, 32
  %28 = trunc nuw i64 %27 to i32
  %29 = and i32 %21, 255
  %30 = or disjoint i32 %23, %29
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %18
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = freeze i32 %34
  %36 = mul i32 %25, -2048144777
  %37 = add i32 %36, %19
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 13)
  %39 = mul i32 %38, -1640531535
  %40 = freeze i32 %39
  %41 = mul i32 %26, -2048144777
  %42 = add i32 %41, %16
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = freeze i32 %44
  %46 = mul i32 %28, -2048144777
  %47 = add i32 %46, %20
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = freeze i32 %49
  %51 = trunc i64 %2 to i32
  %52 = mul i32 %51, -2048144777
  %53 = add i32 %52, %35
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  %56 = freeze i32 %55
  %57 = lshr i64 %2, 32
  %58 = trunc nuw i64 %57 to i32
  %59 = mul i32 %58, -2048144777
  %60 = add i32 %59, %40
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13)
  %62 = mul i32 %61, -1640531535
  %63 = freeze i32 %62
  %64 = trunc i64 %3 to i32
  %65 = mul i32 %64, -2048144777
  %66 = add i32 %65, %45
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13)
  %68 = mul i32 %67, -1640531535
  %69 = freeze i32 %68
  %70 = lshr i64 %3, 32
  %71 = trunc nuw i64 %70 to i32
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %50
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = freeze i32 %75
  %77 = trunc i64 %4 to i32
  %78 = mul i32 %77, -2048144777
  %79 = add i32 %78, %56
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 13)
  %81 = mul i32 %80, -1640531535
  %82 = freeze i32 %81
  %83 = lshr i64 %4, 32
  %84 = trunc nuw i64 %83 to i32
  %85 = mul i32 %84, -2048144777
  %86 = add i32 %85, %63
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 13)
  %88 = mul i32 %87, -1640531535
  %89 = freeze i32 %88
  %90 = trunc i64 %5 to i32
  %91 = mul i32 %90, -2048144777
  %92 = add i32 %91, %69
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 13)
  %94 = mul i32 %93, -1640531535
  %95 = freeze i32 %94
  %96 = lshr i64 %5, 32
  %97 = trunc nuw i64 %96 to i32
  %98 = mul i32 %97, -2048144777
  %99 = add i32 %98, %76
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 13)
  %101 = mul i32 %100, -1640531535
  %102 = freeze i32 %101
  %103 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 1)
  %104 = add i32 %103, 48
  %105 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 7)
  %106 = add i32 %104, %105
  %107 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 12)
  %108 = add i32 %106, %107
  %109 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 18)
  %110 = add i32 %108, %109
  %111 = lshr i32 %110, 15
  %112 = xor i32 %111, %110
  %113 = mul i32 %112, -2048144777
  %114 = lshr i32 %113, 13
  %115 = xor i32 %114, %113
  %116 = mul i32 %115, -1028477379
  %117 = lshr i32 %116, 16
  %118 = xor i32 %117, %116
  ret i32 %118
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_40_40(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #9
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #9
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %35, i8 0, i64 24, i1 false)
  %36 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %42 = add i32 %16, 1640531535
  %43 = add i32 %16, -2048144777
  %44 = add i32 %16, 606290984
  %45 = load i32, ptr %18, align 16
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = freeze i32 %49
  %51 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, -2048144777
  %54 = add i32 %53, %43
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13)
  %56 = mul i32 %55, -1640531535
  %57 = freeze i32 %56
  %58 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %59 = load i32, ptr %58, align 8
  %60 = mul i32 %59, -2048144777
  %61 = add i32 %60, %16
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13)
  %63 = mul i32 %62, -1640531535
  %64 = freeze i32 %63
  %65 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %66, -2048144777
  %68 = add i32 %67, %42
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 13)
  %70 = mul i32 %69, -1640531535
  %71 = freeze i32 %70
  %72 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %73 = load i32, ptr %72, align 16
  %74 = mul i32 %73, -2048144777
  %75 = add i32 %74, %50
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 13)
  %77 = mul i32 %76, -1640531535
  %78 = freeze i32 %77
  %79 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %80 = load i32, ptr %79, align 4
  %81 = mul i32 %80, -2048144777
  %82 = add i32 %81, %57
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  %85 = freeze i32 %84
  %86 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %87 = load i32, ptr %86, align 8
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %64
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = freeze i32 %91
  %93 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %94 = load i32, ptr %93, align 4
  %95 = mul i32 %94, -2048144777
  %96 = add i32 %95, %71
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 13)
  %98 = mul i32 %97, -1640531535
  %99 = freeze i32 %98
  store i32 %78, ptr %36, align 4
  store i32 %85, ptr %37, align 4
  store i32 %92, ptr %38, align 4
  store i32 %99, ptr %39, align 4
  %100 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %102 = load i64, ptr %100, align 16
  store i64 %102, ptr %101, align 4
  store i32 8, ptr %40, align 4
  store i32 80, ptr %19, align 4
  store i32 1, ptr %41, align 4
  %103 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %104 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %105 = load i64, ptr %24, align 8
  store i64 %105, ptr %104, align 4
  %106 = load i32, ptr %103, align 4
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %78
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = freeze i32 %110
  %112 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, -2048144777
  %115 = add i32 %114, %85
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = mul i32 %116, -1640531535
  %118 = freeze i32 %117
  %119 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %120 = load i32, ptr %119, align 4
  %121 = mul i32 %120, -2048144777
  %122 = add i32 %121, %92
  %123 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 13)
  %124 = mul i32 %123, -1640531535
  %125 = freeze i32 %124
  %126 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %127 = load i32, ptr %126, align 4
  %128 = mul i32 %127, -2048144777
  %129 = add i32 %128, %99
  %130 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 13)
  %131 = mul i32 %130, -1640531535
  %132 = freeze i32 %131
  %133 = load i32, ptr %40, align 4
  %134 = zext i32 %133 to i64
  %135 = sub nsw i64 56, %134
  store i32 0, ptr %40, align 4
  br label %136

136:                                              ; preds = %136, %17
  %137 = phi i32 [ %132, %17 ], [ %169, %136 ]
  %138 = phi i32 [ %125, %17 ], [ %162, %136 ]
  %139 = phi i32 [ %118, %17 ], [ %155, %136 ]
  %140 = phi i32 [ %111, %17 ], [ %148, %136 ]
  %141 = phi i64 [ %135, %17 ], [ %170, %136 ]
  %142 = getelementptr inbounds nuw i8, ptr %18, i64 %141
  %143 = load i32, ptr %142, align 1
  %144 = mul i32 %143, -2048144777
  %145 = add i32 %144, %140
  %146 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 13)
  %147 = mul i32 %146, -1640531535
  %148 = freeze i32 %147
  %149 = getelementptr inbounds nuw i8, ptr %142, i64 4
  %150 = load i32, ptr %149, align 1
  %151 = mul i32 %150, -2048144777
  %152 = add i32 %151, %139
  %153 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 13)
  %154 = mul i32 %153, -1640531535
  %155 = freeze i32 %154
  %156 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %157 = load i32, ptr %156, align 1
  %158 = mul i32 %157, -2048144777
  %159 = add i32 %158, %138
  %160 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 13)
  %161 = mul i32 %160, -1640531535
  %162 = freeze i32 %161
  %163 = getelementptr inbounds nuw i8, ptr %142, i64 12
  %164 = load i32, ptr %163, align 1
  %165 = mul i32 %164, -2048144777
  %166 = add i32 %165, %137
  %167 = tail call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 13)
  %168 = mul i32 %167, -1640531535
  %169 = freeze i32 %168
  %170 = add nuw nsw i64 %141, 16
  %171 = icmp slt i64 %141, 49
  br i1 %171, label %136, label %172

172:                                              ; preds = %136
  store i32 %148, ptr %36, align 4
  store i32 %155, ptr %37, align 4
  store i32 %162, ptr %38, align 4
  store i32 %169, ptr %39, align 4
  %173 = icmp samesign ult i64 %141, 64
  br i1 %173, label %174, label %180

174:                                              ; preds = %172
  %175 = getelementptr inbounds nuw i8, ptr %18, i64 %170
  %176 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %177 = sub nuw nsw i64 64, %141
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %176, ptr nonnull readonly align 1 %175, i64 %177, i1 false)
  %178 = trunc nuw nsw i64 %177 to i32
  store i32 %178, ptr %40, align 4
  %179 = and i32 %178, 15
  br label %180

180:                                              ; preds = %172, %174
  %181 = phi i32 [ 0, %172 ], [ %179, %174 ]
  %182 = phi i32 [ %169, %172 ], [ %169, %174 ]
  %183 = phi i32 [ %162, %172 ], [ %162, %174 ]
  %184 = phi i32 [ %155, %172 ], [ %155, %174 ]
  %185 = phi i32 [ %148, %172 ], [ %148, %174 ]
  %186 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 1)
  %187 = tail call i32 @llvm.fshl.i32(i32 %184, i32 %184, i32 7)
  %188 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 12)
  %189 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 18)
  %190 = add i32 %186, 80
  %191 = add i32 %190, %187
  %192 = add i32 %191, %188
  %193 = add i32 %192, %189
  %194 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %195 = zext nneg i32 %181 to i64
  %196 = icmp samesign ugt i32 %181, 3
  br i1 %196, label %197, label %226

197:                                              ; preds = %180
  %198 = add nsw i64 %195, -4
  %199 = lshr i64 %198, 2
  %200 = add nuw nsw i64 %199, 1
  %201 = and i64 %200, 7
  %202 = and i64 %198, 28
  %203 = icmp eq i64 %202, 28
  br i1 %203, label %218, label %204

204:                                              ; preds = %197, %204
  %205 = phi i32 [ %214, %204 ], [ %193, %197 ]
  %206 = phi i64 [ %215, %204 ], [ %195, %197 ]
  %207 = phi ptr [ %212, %204 ], [ %194, %197 ]
  %208 = phi i64 [ %216, %204 ], [ 0, %197 ]
  %209 = load i32, ptr %207, align 1
  %210 = mul i32 %209, -1028477379
  %211 = add i32 %210, %205
  %212 = getelementptr inbounds nuw i8, ptr %207, i64 4
  %213 = tail call i32 @llvm.fshl.i32(i32 %211, i32 %211, i32 17)
  %214 = mul i32 %213, 668265263
  %215 = add nsw i64 %206, -4
  %216 = add i64 %208, 1
  %217 = icmp eq i64 %216, %201
  br i1 %217, label %218, label %204

218:                                              ; preds = %204, %197
  %219 = phi i32 [ %193, %197 ], [ %214, %204 ]
  %220 = phi i64 [ %195, %197 ], [ %215, %204 ]
  %221 = phi ptr [ %194, %197 ], [ %212, %204 ]
  %222 = phi ptr [ poison, %197 ], [ %212, %204 ]
  %223 = phi i32 [ poison, %197 ], [ %214, %204 ]
  %224 = phi i64 [ poison, %197 ], [ %215, %204 ]
  %225 = icmp ult i64 %198, 28
  br i1 %225, label %226, label %255

226:                                              ; preds = %218, %255, %180
  %227 = phi ptr [ %194, %180 ], [ %222, %218 ], [ %304, %255 ]
  %228 = phi i64 [ %195, %180 ], [ %224, %218 ], [ %307, %255 ]
  %229 = phi i32 [ %193, %180 ], [ %223, %218 ], [ %306, %255 ]
  %230 = icmp eq i64 %228, 0
  br i1 %230, label %371, label %231

231:                                              ; preds = %226
  %232 = and i64 %228, 7
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %249, label %234

234:                                              ; preds = %231, %234
  %235 = phi i32 [ %245, %234 ], [ %229, %231 ]
  %236 = phi i64 [ %246, %234 ], [ %228, %231 ]
  %237 = phi ptr [ %239, %234 ], [ %227, %231 ]
  %238 = phi i64 [ %247, %234 ], [ 0, %231 ]
  %239 = getelementptr inbounds nuw i8, ptr %237, i64 1
  %240 = load i8, ptr %237, align 1
  %241 = zext i8 %240 to i32
  %242 = mul i32 %241, 374761393
  %243 = add i32 %242, %235
  %244 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 11)
  %245 = mul i32 %244, -1640531535
  %246 = add nsw i64 %236, -1
  %247 = add i64 %238, 1
  %248 = icmp eq i64 %247, %232
  br i1 %248, label %249, label %234

249:                                              ; preds = %234, %231
  %250 = phi i32 [ poison, %231 ], [ %245, %234 ]
  %251 = phi i32 [ %229, %231 ], [ %245, %234 ]
  %252 = phi i64 [ %228, %231 ], [ %246, %234 ]
  %253 = phi ptr [ %227, %231 ], [ %239, %234 ]
  %254 = icmp ult i64 %228, 8
  br i1 %254, label %371, label %309

255:                                              ; preds = %218, %255
  %256 = phi i32 [ %306, %255 ], [ %219, %218 ]
  %257 = phi i64 [ %307, %255 ], [ %220, %218 ]
  %258 = phi ptr [ %304, %255 ], [ %221, %218 ]
  %259 = load i32, ptr %258, align 1
  %260 = mul i32 %259, -1028477379
  %261 = add i32 %260, %256
  %262 = getelementptr inbounds nuw i8, ptr %258, i64 4
  %263 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 17)
  %264 = mul i32 %263, 668265263
  %265 = load i32, ptr %262, align 1
  %266 = mul i32 %265, -1028477379
  %267 = add i32 %266, %264
  %268 = getelementptr inbounds nuw i8, ptr %258, i64 8
  %269 = tail call i32 @llvm.fshl.i32(i32 %267, i32 %267, i32 17)
  %270 = mul i32 %269, 668265263
  %271 = load i32, ptr %268, align 1
  %272 = mul i32 %271, -1028477379
  %273 = add i32 %272, %270
  %274 = getelementptr inbounds nuw i8, ptr %258, i64 12
  %275 = tail call i32 @llvm.fshl.i32(i32 %273, i32 %273, i32 17)
  %276 = mul i32 %275, 668265263
  %277 = load i32, ptr %274, align 1
  %278 = mul i32 %277, -1028477379
  %279 = add i32 %278, %276
  %280 = getelementptr inbounds nuw i8, ptr %258, i64 16
  %281 = tail call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 17)
  %282 = mul i32 %281, 668265263
  %283 = load i32, ptr %280, align 1
  %284 = mul i32 %283, -1028477379
  %285 = add i32 %284, %282
  %286 = getelementptr inbounds nuw i8, ptr %258, i64 20
  %287 = tail call i32 @llvm.fshl.i32(i32 %285, i32 %285, i32 17)
  %288 = mul i32 %287, 668265263
  %289 = load i32, ptr %286, align 1
  %290 = mul i32 %289, -1028477379
  %291 = add i32 %290, %288
  %292 = getelementptr inbounds nuw i8, ptr %258, i64 24
  %293 = tail call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 17)
  %294 = mul i32 %293, 668265263
  %295 = load i32, ptr %292, align 1
  %296 = mul i32 %295, -1028477379
  %297 = add i32 %296, %294
  %298 = getelementptr inbounds nuw i8, ptr %258, i64 28
  %299 = tail call i32 @llvm.fshl.i32(i32 %297, i32 %297, i32 17)
  %300 = mul i32 %299, 668265263
  %301 = load i32, ptr %298, align 1
  %302 = mul i32 %301, -1028477379
  %303 = add i32 %302, %300
  %304 = getelementptr inbounds nuw i8, ptr %258, i64 32
  %305 = tail call i32 @llvm.fshl.i32(i32 %303, i32 %303, i32 17)
  %306 = mul i32 %305, 668265263
  %307 = add nsw i64 %257, -32
  %308 = icmp ugt i64 %307, 3
  br i1 %308, label %255, label %226

309:                                              ; preds = %249, %309
  %310 = phi i32 [ %368, %309 ], [ %251, %249 ]
  %311 = phi i64 [ %369, %309 ], [ %252, %249 ]
  %312 = phi ptr [ %362, %309 ], [ %253, %249 ]
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 1
  %314 = load i8, ptr %312, align 1
  %315 = zext i8 %314 to i32
  %316 = mul i32 %315, 374761393
  %317 = add i32 %316, %310
  %318 = tail call i32 @llvm.fshl.i32(i32 %317, i32 %317, i32 11)
  %319 = mul i32 %318, -1640531535
  %320 = getelementptr inbounds nuw i8, ptr %312, i64 2
  %321 = load i8, ptr %313, align 1
  %322 = zext i8 %321 to i32
  %323 = mul i32 %322, 374761393
  %324 = add i32 %323, %319
  %325 = tail call i32 @llvm.fshl.i32(i32 %324, i32 %324, i32 11)
  %326 = mul i32 %325, -1640531535
  %327 = getelementptr inbounds nuw i8, ptr %312, i64 3
  %328 = load i8, ptr %320, align 1
  %329 = zext i8 %328 to i32
  %330 = mul i32 %329, 374761393
  %331 = add i32 %330, %326
  %332 = tail call i32 @llvm.fshl.i32(i32 %331, i32 %331, i32 11)
  %333 = mul i32 %332, -1640531535
  %334 = getelementptr inbounds nuw i8, ptr %312, i64 4
  %335 = load i8, ptr %327, align 1
  %336 = zext i8 %335 to i32
  %337 = mul i32 %336, 374761393
  %338 = add i32 %337, %333
  %339 = tail call i32 @llvm.fshl.i32(i32 %338, i32 %338, i32 11)
  %340 = mul i32 %339, -1640531535
  %341 = getelementptr inbounds nuw i8, ptr %312, i64 5
  %342 = load i8, ptr %334, align 1
  %343 = zext i8 %342 to i32
  %344 = mul i32 %343, 374761393
  %345 = add i32 %344, %340
  %346 = tail call i32 @llvm.fshl.i32(i32 %345, i32 %345, i32 11)
  %347 = mul i32 %346, -1640531535
  %348 = getelementptr inbounds nuw i8, ptr %312, i64 6
  %349 = load i8, ptr %341, align 1
  %350 = zext i8 %349 to i32
  %351 = mul i32 %350, 374761393
  %352 = add i32 %351, %347
  %353 = tail call i32 @llvm.fshl.i32(i32 %352, i32 %352, i32 11)
  %354 = mul i32 %353, -1640531535
  %355 = getelementptr inbounds nuw i8, ptr %312, i64 7
  %356 = load i8, ptr %348, align 1
  %357 = zext i8 %356 to i32
  %358 = mul i32 %357, 374761393
  %359 = add i32 %358, %354
  %360 = tail call i32 @llvm.fshl.i32(i32 %359, i32 %359, i32 11)
  %361 = mul i32 %360, -1640531535
  %362 = getelementptr inbounds nuw i8, ptr %312, i64 8
  %363 = load i8, ptr %355, align 1
  %364 = zext i8 %363 to i32
  %365 = mul i32 %364, 374761393
  %366 = add i32 %365, %361
  %367 = tail call i32 @llvm.fshl.i32(i32 %366, i32 %366, i32 11)
  %368 = mul i32 %367, -1640531535
  %369 = add nsw i64 %311, -8
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %309

371:                                              ; preds = %249, %309, %226
  %372 = phi i32 [ %229, %226 ], [ %250, %249 ], [ %368, %309 ]
  %373 = lshr i32 %372, 15
  %374 = xor i32 %373, %372
  %375 = mul i32 %374, -2048144777
  %376 = lshr i32 %375, 13
  %377 = xor i32 %376, %375
  %378 = mul i32 %377, -1028477379
  %379 = lshr i32 %378, 16
  %380 = xor i32 %379, %378
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #9
  ret i32 %380
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH32_consumeLong: argument 0"}
!7 = distinct !{!7, !"XXH32_consumeLong"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH32_consumeLong: argument 1"}
!10 = !{i64 2148152070}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH32_consumeLong: argument 1"}
!13 = distinct !{!13, !"XXH32_consumeLong"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"XXH32_consumeLong: argument 0"}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH32_consumeLong: argument 1"}
!25 = distinct !{!25, !"XXH32_consumeLong"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"XXH32_consumeLong: argument 0"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"XXH32_consumeLong: argument 0"}
!30 = distinct !{!30, !"XXH32_consumeLong"}
!31 = !{!32}
!32 = distinct !{!32, !30, !"XXH32_consumeLong: argument 1"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH32_consumeLong: argument 1"}
!35 = distinct !{!35, !"XXH32_consumeLong"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"XXH32_consumeLong: argument 0"}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = !{!41}
!41 = distinct !{!41, !42, !"XXH32_consumeLong: argument 1"}
!42 = distinct !{!42, !"XXH32_consumeLong"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"XXH32_consumeLong: argument 0"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"XXH32_consumeLong: argument 0"}
!47 = distinct !{!47, !"XXH32_consumeLong"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"XXH32_consumeLong: argument 1"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"XXH32_consumeLong: argument 1"}
!52 = distinct !{!52, !"XXH32_consumeLong"}
!53 = !{!54}
!54 = distinct !{!54, !52, !"XXH32_consumeLong: argument 0"}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = !{!58}
!58 = distinct !{!58, !59, !"XXH32_consumeLong: argument 1"}
!59 = distinct !{!59, !"XXH32_consumeLong"}
!60 = !{!61}
!61 = distinct !{!61, !59, !"XXH32_consumeLong: argument 0"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"XXH32_consumeLong: argument 1"}
!64 = distinct !{!64, !"XXH32_consumeLong"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"XXH32_consumeLong: argument 0"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"XXH32_consumeLong: argument 1"}
!69 = distinct !{!69, !"XXH32_consumeLong"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"XXH32_consumeLong: argument 0"}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
