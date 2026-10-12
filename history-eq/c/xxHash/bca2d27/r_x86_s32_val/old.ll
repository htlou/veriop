; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/bca2d27/wrapv_s32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/bca2d27/wrapv_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, [4 x i32], [4 x i32], i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #6
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #6
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 44
  store i32 0, ptr %35, align 4
  %36 = add i32 %16, 606290984
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 8
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
  %51 = add i32 %50, %36
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  %54 = freeze i32 %53
  store i32 %54, ptr %37, align 4
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
  %77 = sub i32 16, %76
  store i32 0, ptr %45, align 4
  %78 = icmp ult i32 %77, 10
  br i1 %78, label %79, label %89

79:                                               ; preds = %17
  %80 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %81 = zext nneg i32 %77 to i64
  %82 = getelementptr inbounds nuw i8, ptr %18, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 10
  %84 = ptrtoint ptr %80 to i64
  %85 = ptrtoint ptr %83 to i64
  %86 = sub i64 %84, %85
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %47, ptr nonnull readonly align 1 %83, i64 %86, i1 false)
  %87 = trunc i64 %86 to i32
  store i32 %87, ptr %45, align 4
  %88 = and i32 %87, 15
  br label %89

89:                                               ; preds = %17, %79
  %90 = phi i32 [ 0, %17 ], [ %88, %79 ]
  %91 = call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 7)
  %92 = call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 1)
  %93 = add i32 %91, %92
  %94 = call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 12)
  %95 = add i32 %93, %94
  %96 = call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 18)
  %97 = add i32 %95, %96
  %98 = add i32 %97, 20
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %100 = zext nneg i32 %90 to i64
  %101 = icmp samesign ugt i32 %90, 3
  br i1 %101, label %102, label %131

102:                                              ; preds = %89
  %103 = add nsw i64 %100, -4
  %104 = lshr i64 %103, 2
  %105 = add nuw nsw i64 %104, 1
  %106 = and i64 %105, 7
  %107 = and i64 %103, 28
  %108 = icmp eq i64 %107, 28
  br i1 %108, label %123, label %109

109:                                              ; preds = %102, %109
  %110 = phi i32 [ %119, %109 ], [ %98, %102 ]
  %111 = phi i64 [ %120, %109 ], [ %100, %102 ]
  %112 = phi ptr [ %117, %109 ], [ %99, %102 ]
  %113 = phi i64 [ %121, %109 ], [ 0, %102 ]
  %114 = load i32, ptr %112, align 4
  %115 = mul i32 %114, -1028477379
  %116 = add i32 %115, %110
  %117 = getelementptr inbounds nuw i8, ptr %112, i64 4
  %118 = call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 17)
  %119 = mul i32 %118, 668265263
  %120 = add nsw i64 %111, -4
  %121 = add i64 %113, 1
  %122 = icmp eq i64 %121, %106
  br i1 %122, label %123, label %109

123:                                              ; preds = %109, %102
  %124 = phi i32 [ %98, %102 ], [ %119, %109 ]
  %125 = phi i64 [ %100, %102 ], [ %120, %109 ]
  %126 = phi ptr [ %99, %102 ], [ %117, %109 ]
  %127 = phi ptr [ poison, %102 ], [ %117, %109 ]
  %128 = phi i32 [ poison, %102 ], [ %119, %109 ]
  %129 = phi i64 [ poison, %102 ], [ %120, %109 ]
  %130 = icmp ult i64 %103, 28
  br i1 %130, label %131, label %160

131:                                              ; preds = %123, %160, %89
  %132 = phi ptr [ %99, %89 ], [ %127, %123 ], [ %209, %160 ]
  %133 = phi i64 [ %100, %89 ], [ %129, %123 ], [ %212, %160 ]
  %134 = phi i32 [ %98, %89 ], [ %128, %123 ], [ %211, %160 ]
  %135 = icmp eq i64 %133, 0
  br i1 %135, label %276, label %136

136:                                              ; preds = %131
  %137 = and i64 %133, 7
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %136, %139
  %140 = phi i32 [ %150, %139 ], [ %134, %136 ]
  %141 = phi i64 [ %151, %139 ], [ %133, %136 ]
  %142 = phi ptr [ %144, %139 ], [ %132, %136 ]
  %143 = phi i64 [ %152, %139 ], [ 0, %136 ]
  %144 = getelementptr inbounds nuw i8, ptr %142, i64 1
  %145 = load i8, ptr %142, align 1
  %146 = zext i8 %145 to i32
  %147 = mul i32 %146, 374761393
  %148 = add i32 %147, %140
  %149 = call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 11)
  %150 = mul i32 %149, -1640531535
  %151 = add nsw i64 %141, -1
  %152 = add i64 %143, 1
  %153 = icmp eq i64 %152, %137
  br i1 %153, label %154, label %139

154:                                              ; preds = %139, %136
  %155 = phi i32 [ poison, %136 ], [ %150, %139 ]
  %156 = phi i32 [ %134, %136 ], [ %150, %139 ]
  %157 = phi i64 [ %133, %136 ], [ %151, %139 ]
  %158 = phi ptr [ %132, %136 ], [ %144, %139 ]
  %159 = icmp ult i64 %133, 8
  br i1 %159, label %276, label %214

160:                                              ; preds = %123, %160
  %161 = phi i32 [ %211, %160 ], [ %124, %123 ]
  %162 = phi i64 [ %212, %160 ], [ %125, %123 ]
  %163 = phi ptr [ %209, %160 ], [ %126, %123 ]
  %164 = load i32, ptr %163, align 4
  %165 = mul i32 %164, -1028477379
  %166 = add i32 %165, %161
  %167 = getelementptr inbounds nuw i8, ptr %163, i64 4
  %168 = call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 17)
  %169 = mul i32 %168, 668265263
  %170 = load i32, ptr %167, align 4
  %171 = mul i32 %170, -1028477379
  %172 = add i32 %171, %169
  %173 = getelementptr inbounds nuw i8, ptr %163, i64 8
  %174 = call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 17)
  %175 = mul i32 %174, 668265263
  %176 = load i32, ptr %173, align 4
  %177 = mul i32 %176, -1028477379
  %178 = add i32 %177, %175
  %179 = getelementptr inbounds nuw i8, ptr %163, i64 12
  %180 = call i32 @llvm.fshl.i32(i32 %178, i32 %178, i32 17)
  %181 = mul i32 %180, 668265263
  %182 = load i32, ptr %179, align 4
  %183 = mul i32 %182, -1028477379
  %184 = add i32 %183, %181
  %185 = getelementptr inbounds nuw i8, ptr %163, i64 16
  %186 = call i32 @llvm.fshl.i32(i32 %184, i32 %184, i32 17)
  %187 = mul i32 %186, 668265263
  %188 = load i32, ptr %185, align 4
  %189 = mul i32 %188, -1028477379
  %190 = add i32 %189, %187
  %191 = getelementptr inbounds nuw i8, ptr %163, i64 20
  %192 = call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 17)
  %193 = mul i32 %192, 668265263
  %194 = load i32, ptr %191, align 4
  %195 = mul i32 %194, -1028477379
  %196 = add i32 %195, %193
  %197 = getelementptr inbounds nuw i8, ptr %163, i64 24
  %198 = call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 17)
  %199 = mul i32 %198, 668265263
  %200 = load i32, ptr %197, align 4
  %201 = mul i32 %200, -1028477379
  %202 = add i32 %201, %199
  %203 = getelementptr inbounds nuw i8, ptr %163, i64 28
  %204 = call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 17)
  %205 = mul i32 %204, 668265263
  %206 = load i32, ptr %203, align 4
  %207 = mul i32 %206, -1028477379
  %208 = add i32 %207, %205
  %209 = getelementptr inbounds nuw i8, ptr %163, i64 32
  %210 = call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 17)
  %211 = mul i32 %210, 668265263
  %212 = add nsw i64 %162, -32
  %213 = icmp ugt i64 %212, 3
  br i1 %213, label %160, label %131

214:                                              ; preds = %154, %214
  %215 = phi i32 [ %273, %214 ], [ %156, %154 ]
  %216 = phi i64 [ %274, %214 ], [ %157, %154 ]
  %217 = phi ptr [ %267, %214 ], [ %158, %154 ]
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 1
  %219 = load i8, ptr %217, align 1
  %220 = zext i8 %219 to i32
  %221 = mul i32 %220, 374761393
  %222 = add i32 %221, %215
  %223 = call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 11)
  %224 = mul i32 %223, -1640531535
  %225 = getelementptr inbounds nuw i8, ptr %217, i64 2
  %226 = load i8, ptr %218, align 1
  %227 = zext i8 %226 to i32
  %228 = mul i32 %227, 374761393
  %229 = add i32 %228, %224
  %230 = call i32 @llvm.fshl.i32(i32 %229, i32 %229, i32 11)
  %231 = mul i32 %230, -1640531535
  %232 = getelementptr inbounds nuw i8, ptr %217, i64 3
  %233 = load i8, ptr %225, align 1
  %234 = zext i8 %233 to i32
  %235 = mul i32 %234, 374761393
  %236 = add i32 %235, %231
  %237 = call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 11)
  %238 = mul i32 %237, -1640531535
  %239 = getelementptr inbounds nuw i8, ptr %217, i64 4
  %240 = load i8, ptr %232, align 1
  %241 = zext i8 %240 to i32
  %242 = mul i32 %241, 374761393
  %243 = add i32 %242, %238
  %244 = call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 11)
  %245 = mul i32 %244, -1640531535
  %246 = getelementptr inbounds nuw i8, ptr %217, i64 5
  %247 = load i8, ptr %239, align 1
  %248 = zext i8 %247 to i32
  %249 = mul i32 %248, 374761393
  %250 = add i32 %249, %245
  %251 = call i32 @llvm.fshl.i32(i32 %250, i32 %250, i32 11)
  %252 = mul i32 %251, -1640531535
  %253 = getelementptr inbounds nuw i8, ptr %217, i64 6
  %254 = load i8, ptr %246, align 1
  %255 = zext i8 %254 to i32
  %256 = mul i32 %255, 374761393
  %257 = add i32 %256, %252
  %258 = call i32 @llvm.fshl.i32(i32 %257, i32 %257, i32 11)
  %259 = mul i32 %258, -1640531535
  %260 = getelementptr inbounds nuw i8, ptr %217, i64 7
  %261 = load i8, ptr %253, align 1
  %262 = zext i8 %261 to i32
  %263 = mul i32 %262, 374761393
  %264 = add i32 %263, %259
  %265 = call i32 @llvm.fshl.i32(i32 %264, i32 %264, i32 11)
  %266 = mul i32 %265, -1640531535
  %267 = getelementptr inbounds nuw i8, ptr %217, i64 8
  %268 = load i8, ptr %260, align 1
  %269 = zext i8 %268 to i32
  %270 = mul i32 %269, 374761393
  %271 = add i32 %270, %266
  %272 = call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 11)
  %273 = mul i32 %272, -1640531535
  %274 = add nsw i64 %216, -8
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %214

276:                                              ; preds = %154, %214, %131
  %277 = phi i32 [ %134, %131 ], [ %155, %154 ], [ %273, %214 ]
  %278 = lshr i32 %277, 15
  %279 = xor i32 %278, %277
  %280 = mul i32 %279, -2048144777
  %281 = lshr i32 %280, 13
  %282 = xor i32 %281, %280
  %283 = mul i32 %282, -1028477379
  %284 = lshr i32 %283, 16
  %285 = xor i32 %284, %283
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #6
  ret i32 %285
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
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
define dso_local i32 @target_s32_16_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = lshr i64 %1, 32
  %19 = trunc nuw i64 %18 to i32
  %20 = trunc i64 %1 to i32
  %21 = lshr i64 %0, 32
  %22 = trunc nuw i64 %21 to i32
  %23 = trunc i64 %0 to i32
  %24 = add i32 %16, 1640531535
  %25 = add i32 %16, -2048144777
  %26 = add i32 %16, 606290984
  %27 = mul i32 %23, -2048144777
  %28 = add i32 %27, %26
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = mul i32 %22, -2048144777
  %33 = add i32 %32, %25
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = freeze i32 %35
  %37 = mul i32 %20, -2048144777
  %38 = add i32 %37, %16
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  %42 = mul i32 %19, -2048144777
  %43 = add i32 %42, %24
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

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #6
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #6
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 44
  store i32 0, ptr %35, align 4
  %36 = add i32 %16, 606290984
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 8
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
  %48 = add i32 %47, %36
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
  store i32 %83, ptr %37, align 4
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
  %106 = sub i32 16, %105
  store i32 0, ptr %45, align 4
  %107 = icmp ult i32 %106, 13
  br i1 %107, label %108, label %118

108:                                              ; preds = %17
  %109 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %110 = zext nneg i32 %106 to i64
  %111 = getelementptr inbounds nuw i8, ptr %18, i64 %110
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 20
  %113 = ptrtoint ptr %109 to i64
  %114 = ptrtoint ptr %112 to i64
  %115 = sub i64 %113, %114
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %76, ptr nonnull readonly align 1 %112, i64 %115, i1 false)
  %116 = trunc i64 %115 to i32
  store i32 %116, ptr %45, align 4
  %117 = and i32 %116, 15
  br label %118

118:                                              ; preds = %17, %108
  %119 = phi i32 [ 0, %17 ], [ %117, %108 ]
  %120 = call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 1)
  %121 = call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 7)
  %122 = call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 12)
  %123 = call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 18)
  %124 = add i32 %120, 33
  %125 = add i32 %124, %121
  %126 = add i32 %125, %122
  %127 = add i32 %126, %123
  %128 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %129 = zext nneg i32 %119 to i64
  %130 = icmp samesign ugt i32 %119, 3
  br i1 %130, label %131, label %160

131:                                              ; preds = %118
  %132 = add nsw i64 %129, -4
  %133 = lshr i64 %132, 2
  %134 = add nuw nsw i64 %133, 1
  %135 = and i64 %134, 7
  %136 = and i64 %132, 28
  %137 = icmp eq i64 %136, 28
  br i1 %137, label %152, label %138

138:                                              ; preds = %131, %138
  %139 = phi i32 [ %148, %138 ], [ %127, %131 ]
  %140 = phi i64 [ %149, %138 ], [ %129, %131 ]
  %141 = phi ptr [ %146, %138 ], [ %128, %131 ]
  %142 = phi i64 [ %150, %138 ], [ 0, %131 ]
  %143 = load i32, ptr %141, align 4
  %144 = mul i32 %143, -1028477379
  %145 = add i32 %144, %139
  %146 = getelementptr inbounds nuw i8, ptr %141, i64 4
  %147 = call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 17)
  %148 = mul i32 %147, 668265263
  %149 = add nsw i64 %140, -4
  %150 = add i64 %142, 1
  %151 = icmp eq i64 %150, %135
  br i1 %151, label %152, label %138

152:                                              ; preds = %138, %131
  %153 = phi i32 [ %127, %131 ], [ %148, %138 ]
  %154 = phi i64 [ %129, %131 ], [ %149, %138 ]
  %155 = phi ptr [ %128, %131 ], [ %146, %138 ]
  %156 = phi ptr [ poison, %131 ], [ %146, %138 ]
  %157 = phi i32 [ poison, %131 ], [ %148, %138 ]
  %158 = phi i64 [ poison, %131 ], [ %149, %138 ]
  %159 = icmp ult i64 %132, 28
  br i1 %159, label %160, label %189

160:                                              ; preds = %152, %189, %118
  %161 = phi ptr [ %128, %118 ], [ %156, %152 ], [ %238, %189 ]
  %162 = phi i64 [ %129, %118 ], [ %158, %152 ], [ %241, %189 ]
  %163 = phi i32 [ %127, %118 ], [ %157, %152 ], [ %240, %189 ]
  %164 = icmp eq i64 %162, 0
  br i1 %164, label %305, label %165

165:                                              ; preds = %160
  %166 = and i64 %162, 7
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %183, label %168

168:                                              ; preds = %165, %168
  %169 = phi i32 [ %179, %168 ], [ %163, %165 ]
  %170 = phi i64 [ %180, %168 ], [ %162, %165 ]
  %171 = phi ptr [ %173, %168 ], [ %161, %165 ]
  %172 = phi i64 [ %181, %168 ], [ 0, %165 ]
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %174 = load i8, ptr %171, align 1
  %175 = zext i8 %174 to i32
  %176 = mul i32 %175, 374761393
  %177 = add i32 %176, %169
  %178 = call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 11)
  %179 = mul i32 %178, -1640531535
  %180 = add nsw i64 %170, -1
  %181 = add i64 %172, 1
  %182 = icmp eq i64 %181, %166
  br i1 %182, label %183, label %168

183:                                              ; preds = %168, %165
  %184 = phi i32 [ poison, %165 ], [ %179, %168 ]
  %185 = phi i32 [ %163, %165 ], [ %179, %168 ]
  %186 = phi i64 [ %162, %165 ], [ %180, %168 ]
  %187 = phi ptr [ %161, %165 ], [ %173, %168 ]
  %188 = icmp ult i64 %162, 8
  br i1 %188, label %305, label %243

189:                                              ; preds = %152, %189
  %190 = phi i32 [ %240, %189 ], [ %153, %152 ]
  %191 = phi i64 [ %241, %189 ], [ %154, %152 ]
  %192 = phi ptr [ %238, %189 ], [ %155, %152 ]
  %193 = load i32, ptr %192, align 4
  %194 = mul i32 %193, -1028477379
  %195 = add i32 %194, %190
  %196 = getelementptr inbounds nuw i8, ptr %192, i64 4
  %197 = call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 17)
  %198 = mul i32 %197, 668265263
  %199 = load i32, ptr %196, align 4
  %200 = mul i32 %199, -1028477379
  %201 = add i32 %200, %198
  %202 = getelementptr inbounds nuw i8, ptr %192, i64 8
  %203 = call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 17)
  %204 = mul i32 %203, 668265263
  %205 = load i32, ptr %202, align 4
  %206 = mul i32 %205, -1028477379
  %207 = add i32 %206, %204
  %208 = getelementptr inbounds nuw i8, ptr %192, i64 12
  %209 = call i32 @llvm.fshl.i32(i32 %207, i32 %207, i32 17)
  %210 = mul i32 %209, 668265263
  %211 = load i32, ptr %208, align 4
  %212 = mul i32 %211, -1028477379
  %213 = add i32 %212, %210
  %214 = getelementptr inbounds nuw i8, ptr %192, i64 16
  %215 = call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 17)
  %216 = mul i32 %215, 668265263
  %217 = load i32, ptr %214, align 4
  %218 = mul i32 %217, -1028477379
  %219 = add i32 %218, %216
  %220 = getelementptr inbounds nuw i8, ptr %192, i64 20
  %221 = call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 17)
  %222 = mul i32 %221, 668265263
  %223 = load i32, ptr %220, align 4
  %224 = mul i32 %223, -1028477379
  %225 = add i32 %224, %222
  %226 = getelementptr inbounds nuw i8, ptr %192, i64 24
  %227 = call i32 @llvm.fshl.i32(i32 %225, i32 %225, i32 17)
  %228 = mul i32 %227, 668265263
  %229 = load i32, ptr %226, align 4
  %230 = mul i32 %229, -1028477379
  %231 = add i32 %230, %228
  %232 = getelementptr inbounds nuw i8, ptr %192, i64 28
  %233 = call i32 @llvm.fshl.i32(i32 %231, i32 %231, i32 17)
  %234 = mul i32 %233, 668265263
  %235 = load i32, ptr %232, align 4
  %236 = mul i32 %235, -1028477379
  %237 = add i32 %236, %234
  %238 = getelementptr inbounds nuw i8, ptr %192, i64 32
  %239 = call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 17)
  %240 = mul i32 %239, 668265263
  %241 = add nsw i64 %191, -32
  %242 = icmp ugt i64 %241, 3
  br i1 %242, label %189, label %160

243:                                              ; preds = %183, %243
  %244 = phi i32 [ %302, %243 ], [ %185, %183 ]
  %245 = phi i64 [ %303, %243 ], [ %186, %183 ]
  %246 = phi ptr [ %296, %243 ], [ %187, %183 ]
  %247 = getelementptr inbounds nuw i8, ptr %246, i64 1
  %248 = load i8, ptr %246, align 1
  %249 = zext i8 %248 to i32
  %250 = mul i32 %249, 374761393
  %251 = add i32 %250, %244
  %252 = call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 11)
  %253 = mul i32 %252, -1640531535
  %254 = getelementptr inbounds nuw i8, ptr %246, i64 2
  %255 = load i8, ptr %247, align 1
  %256 = zext i8 %255 to i32
  %257 = mul i32 %256, 374761393
  %258 = add i32 %257, %253
  %259 = call i32 @llvm.fshl.i32(i32 %258, i32 %258, i32 11)
  %260 = mul i32 %259, -1640531535
  %261 = getelementptr inbounds nuw i8, ptr %246, i64 3
  %262 = load i8, ptr %254, align 1
  %263 = zext i8 %262 to i32
  %264 = mul i32 %263, 374761393
  %265 = add i32 %264, %260
  %266 = call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 11)
  %267 = mul i32 %266, -1640531535
  %268 = getelementptr inbounds nuw i8, ptr %246, i64 4
  %269 = load i8, ptr %261, align 1
  %270 = zext i8 %269 to i32
  %271 = mul i32 %270, 374761393
  %272 = add i32 %271, %267
  %273 = call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 11)
  %274 = mul i32 %273, -1640531535
  %275 = getelementptr inbounds nuw i8, ptr %246, i64 5
  %276 = load i8, ptr %268, align 1
  %277 = zext i8 %276 to i32
  %278 = mul i32 %277, 374761393
  %279 = add i32 %278, %274
  %280 = call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 11)
  %281 = mul i32 %280, -1640531535
  %282 = getelementptr inbounds nuw i8, ptr %246, i64 6
  %283 = load i8, ptr %275, align 1
  %284 = zext i8 %283 to i32
  %285 = mul i32 %284, 374761393
  %286 = add i32 %285, %281
  %287 = call i32 @llvm.fshl.i32(i32 %286, i32 %286, i32 11)
  %288 = mul i32 %287, -1640531535
  %289 = getelementptr inbounds nuw i8, ptr %246, i64 7
  %290 = load i8, ptr %282, align 1
  %291 = zext i8 %290 to i32
  %292 = mul i32 %291, 374761393
  %293 = add i32 %292, %288
  %294 = call i32 @llvm.fshl.i32(i32 %293, i32 %293, i32 11)
  %295 = mul i32 %294, -1640531535
  %296 = getelementptr inbounds nuw i8, ptr %246, i64 8
  %297 = load i8, ptr %289, align 1
  %298 = zext i8 %297 to i32
  %299 = mul i32 %298, 374761393
  %300 = add i32 %299, %295
  %301 = call i32 @llvm.fshl.i32(i32 %300, i32 %300, i32 11)
  %302 = mul i32 %301, -1640531535
  %303 = add nsw i64 %245, -8
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %243

305:                                              ; preds = %183, %243, %160
  %306 = phi i32 [ %163, %160 ], [ %184, %183 ], [ %302, %243 ]
  %307 = lshr i32 %306, 15
  %308 = xor i32 %307, %306
  %309 = mul i32 %308, -2048144777
  %310 = lshr i32 %309, 13
  %311 = xor i32 %310, %309
  %312 = mul i32 %311, -1028477379
  %313 = lshr i32 %312, 16
  %314 = xor i32 %313, %312
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #6
  ret i32 %314
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_17_30(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #6
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #6
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 44
  store i32 0, ptr %35, align 4
  %36 = add i32 %16, 606290984
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 8
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
  %48 = add i32 %47, %36
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
  store i32 %83, ptr %37, align 4
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
  %106 = sub i32 16, %105
  %107 = zext i32 %106 to i64
  %108 = add nuw nsw i64 %107, 17
  store i32 0, ptr %45, align 4
  %109 = icmp ugt i32 %106, 14
  br i1 %109, label %140, label %110

110:                                              ; preds = %17
  %111 = getelementptr inbounds nuw i8, ptr %18, i64 %108
  %112 = load i32, ptr %111, align 1
  %113 = mul i32 %112, -2048144777
  %114 = add i32 %113, %83
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 13)
  %116 = mul i32 %115, -1640531535
  %117 = freeze i32 %116
  %118 = getelementptr inbounds nuw i8, ptr %111, i64 4
  %119 = load i32, ptr %118, align 1
  %120 = mul i32 %119, -2048144777
  %121 = add i32 %120, %90
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 13)
  %123 = mul i32 %122, -1640531535
  %124 = freeze i32 %123
  %125 = getelementptr inbounds nuw i8, ptr %111, i64 8
  %126 = load i32, ptr %125, align 1
  %127 = mul i32 %126, -2048144777
  %128 = add i32 %127, %97
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 13)
  %130 = mul i32 %129, -1640531535
  %131 = freeze i32 %130
  %132 = getelementptr inbounds nuw i8, ptr %111, i64 12
  %133 = load i32, ptr %132, align 1
  %134 = mul i32 %133, -2048144777
  %135 = add i32 %134, %104
  %136 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 13)
  %137 = mul i32 %136, -1640531535
  %138 = freeze i32 %137
  %139 = add nuw nsw i64 %107, 33
  store i32 %117, ptr %37, align 4
  store i32 %124, ptr %39, align 4
  store i32 %131, ptr %40, align 4
  store i32 %138, ptr %42, align 4
  br label %140

140:                                              ; preds = %110, %17
  %141 = phi i32 [ %104, %17 ], [ %138, %110 ]
  %142 = phi i32 [ %97, %17 ], [ %131, %110 ]
  %143 = phi i32 [ %90, %17 ], [ %124, %110 ]
  %144 = phi i32 [ %83, %17 ], [ %117, %110 ]
  %145 = phi i64 [ %108, %17 ], [ %139, %110 ]
  %146 = icmp slt i64 %145, 47
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = getelementptr inbounds nuw i8, ptr %18, i64 %145
  %149 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %150 = sub nsw i64 47, %145
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %149, ptr nonnull readonly align 1 %148, i64 %150, i1 false)
  %151 = trunc i64 %150 to i32
  store i32 %151, ptr %45, align 4
  %152 = and i32 %151, 15
  br label %153

153:                                              ; preds = %140, %147
  %154 = phi i32 [ 0, %140 ], [ %152, %147 ]
  %155 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 1)
  %156 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 7)
  %157 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 12)
  %158 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 18)
  %159 = add i32 %155, 47
  %160 = add i32 %159, %156
  %161 = add i32 %160, %157
  %162 = add i32 %161, %158
  %163 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %164 = zext nneg i32 %154 to i64
  %165 = icmp samesign ugt i32 %154, 3
  br i1 %165, label %166, label %195

166:                                              ; preds = %153
  %167 = add nsw i64 %164, -4
  %168 = lshr i64 %167, 2
  %169 = add nuw nsw i64 %168, 1
  %170 = and i64 %169, 7
  %171 = and i64 %167, 28
  %172 = icmp eq i64 %171, 28
  br i1 %172, label %187, label %173

173:                                              ; preds = %166, %173
  %174 = phi i32 [ %183, %173 ], [ %162, %166 ]
  %175 = phi i64 [ %184, %173 ], [ %164, %166 ]
  %176 = phi ptr [ %181, %173 ], [ %163, %166 ]
  %177 = phi i64 [ %185, %173 ], [ 0, %166 ]
  %178 = load i32, ptr %176, align 4
  %179 = mul i32 %178, -1028477379
  %180 = add i32 %179, %174
  %181 = getelementptr inbounds nuw i8, ptr %176, i64 4
  %182 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 17)
  %183 = mul i32 %182, 668265263
  %184 = add nsw i64 %175, -4
  %185 = add i64 %177, 1
  %186 = icmp eq i64 %185, %170
  br i1 %186, label %187, label %173

187:                                              ; preds = %173, %166
  %188 = phi i32 [ %162, %166 ], [ %183, %173 ]
  %189 = phi i64 [ %164, %166 ], [ %184, %173 ]
  %190 = phi ptr [ %163, %166 ], [ %181, %173 ]
  %191 = phi ptr [ poison, %166 ], [ %181, %173 ]
  %192 = phi i32 [ poison, %166 ], [ %183, %173 ]
  %193 = phi i64 [ poison, %166 ], [ %184, %173 ]
  %194 = icmp ult i64 %167, 28
  br i1 %194, label %195, label %224

195:                                              ; preds = %187, %224, %153
  %196 = phi ptr [ %163, %153 ], [ %191, %187 ], [ %273, %224 ]
  %197 = phi i64 [ %164, %153 ], [ %193, %187 ], [ %276, %224 ]
  %198 = phi i32 [ %162, %153 ], [ %192, %187 ], [ %275, %224 ]
  %199 = icmp eq i64 %197, 0
  br i1 %199, label %340, label %200

200:                                              ; preds = %195
  %201 = and i64 %197, 7
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %218, label %203

203:                                              ; preds = %200, %203
  %204 = phi i32 [ %214, %203 ], [ %198, %200 ]
  %205 = phi i64 [ %215, %203 ], [ %197, %200 ]
  %206 = phi ptr [ %208, %203 ], [ %196, %200 ]
  %207 = phi i64 [ %216, %203 ], [ 0, %200 ]
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 1
  %209 = load i8, ptr %206, align 1
  %210 = zext i8 %209 to i32
  %211 = mul i32 %210, 374761393
  %212 = add i32 %211, %204
  %213 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 11)
  %214 = mul i32 %213, -1640531535
  %215 = add nsw i64 %205, -1
  %216 = add i64 %207, 1
  %217 = icmp eq i64 %216, %201
  br i1 %217, label %218, label %203

218:                                              ; preds = %203, %200
  %219 = phi i32 [ poison, %200 ], [ %214, %203 ]
  %220 = phi i32 [ %198, %200 ], [ %214, %203 ]
  %221 = phi i64 [ %197, %200 ], [ %215, %203 ]
  %222 = phi ptr [ %196, %200 ], [ %208, %203 ]
  %223 = icmp ult i64 %197, 8
  br i1 %223, label %340, label %278

224:                                              ; preds = %187, %224
  %225 = phi i32 [ %275, %224 ], [ %188, %187 ]
  %226 = phi i64 [ %276, %224 ], [ %189, %187 ]
  %227 = phi ptr [ %273, %224 ], [ %190, %187 ]
  %228 = load i32, ptr %227, align 4
  %229 = mul i32 %228, -1028477379
  %230 = add i32 %229, %225
  %231 = getelementptr inbounds nuw i8, ptr %227, i64 4
  %232 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 17)
  %233 = mul i32 %232, 668265263
  %234 = load i32, ptr %231, align 4
  %235 = mul i32 %234, -1028477379
  %236 = add i32 %235, %233
  %237 = getelementptr inbounds nuw i8, ptr %227, i64 8
  %238 = tail call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 17)
  %239 = mul i32 %238, 668265263
  %240 = load i32, ptr %237, align 4
  %241 = mul i32 %240, -1028477379
  %242 = add i32 %241, %239
  %243 = getelementptr inbounds nuw i8, ptr %227, i64 12
  %244 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 17)
  %245 = mul i32 %244, 668265263
  %246 = load i32, ptr %243, align 4
  %247 = mul i32 %246, -1028477379
  %248 = add i32 %247, %245
  %249 = getelementptr inbounds nuw i8, ptr %227, i64 16
  %250 = tail call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 17)
  %251 = mul i32 %250, 668265263
  %252 = load i32, ptr %249, align 4
  %253 = mul i32 %252, -1028477379
  %254 = add i32 %253, %251
  %255 = getelementptr inbounds nuw i8, ptr %227, i64 20
  %256 = tail call i32 @llvm.fshl.i32(i32 %254, i32 %254, i32 17)
  %257 = mul i32 %256, 668265263
  %258 = load i32, ptr %255, align 4
  %259 = mul i32 %258, -1028477379
  %260 = add i32 %259, %257
  %261 = getelementptr inbounds nuw i8, ptr %227, i64 24
  %262 = tail call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 17)
  %263 = mul i32 %262, 668265263
  %264 = load i32, ptr %261, align 4
  %265 = mul i32 %264, -1028477379
  %266 = add i32 %265, %263
  %267 = getelementptr inbounds nuw i8, ptr %227, i64 28
  %268 = tail call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 17)
  %269 = mul i32 %268, 668265263
  %270 = load i32, ptr %267, align 4
  %271 = mul i32 %270, -1028477379
  %272 = add i32 %271, %269
  %273 = getelementptr inbounds nuw i8, ptr %227, i64 32
  %274 = tail call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 17)
  %275 = mul i32 %274, 668265263
  %276 = add nsw i64 %226, -32
  %277 = icmp ugt i64 %276, 3
  br i1 %277, label %224, label %195

278:                                              ; preds = %218, %278
  %279 = phi i32 [ %337, %278 ], [ %220, %218 ]
  %280 = phi i64 [ %338, %278 ], [ %221, %218 ]
  %281 = phi ptr [ %331, %278 ], [ %222, %218 ]
  %282 = getelementptr inbounds nuw i8, ptr %281, i64 1
  %283 = load i8, ptr %281, align 1
  %284 = zext i8 %283 to i32
  %285 = mul i32 %284, 374761393
  %286 = add i32 %285, %279
  %287 = tail call i32 @llvm.fshl.i32(i32 %286, i32 %286, i32 11)
  %288 = mul i32 %287, -1640531535
  %289 = getelementptr inbounds nuw i8, ptr %281, i64 2
  %290 = load i8, ptr %282, align 1
  %291 = zext i8 %290 to i32
  %292 = mul i32 %291, 374761393
  %293 = add i32 %292, %288
  %294 = tail call i32 @llvm.fshl.i32(i32 %293, i32 %293, i32 11)
  %295 = mul i32 %294, -1640531535
  %296 = getelementptr inbounds nuw i8, ptr %281, i64 3
  %297 = load i8, ptr %289, align 1
  %298 = zext i8 %297 to i32
  %299 = mul i32 %298, 374761393
  %300 = add i32 %299, %295
  %301 = tail call i32 @llvm.fshl.i32(i32 %300, i32 %300, i32 11)
  %302 = mul i32 %301, -1640531535
  %303 = getelementptr inbounds nuw i8, ptr %281, i64 4
  %304 = load i8, ptr %296, align 1
  %305 = zext i8 %304 to i32
  %306 = mul i32 %305, 374761393
  %307 = add i32 %306, %302
  %308 = tail call i32 @llvm.fshl.i32(i32 %307, i32 %307, i32 11)
  %309 = mul i32 %308, -1640531535
  %310 = getelementptr inbounds nuw i8, ptr %281, i64 5
  %311 = load i8, ptr %303, align 1
  %312 = zext i8 %311 to i32
  %313 = mul i32 %312, 374761393
  %314 = add i32 %313, %309
  %315 = tail call i32 @llvm.fshl.i32(i32 %314, i32 %314, i32 11)
  %316 = mul i32 %315, -1640531535
  %317 = getelementptr inbounds nuw i8, ptr %281, i64 6
  %318 = load i8, ptr %310, align 1
  %319 = zext i8 %318 to i32
  %320 = mul i32 %319, 374761393
  %321 = add i32 %320, %316
  %322 = tail call i32 @llvm.fshl.i32(i32 %321, i32 %321, i32 11)
  %323 = mul i32 %322, -1640531535
  %324 = getelementptr inbounds nuw i8, ptr %281, i64 7
  %325 = load i8, ptr %317, align 1
  %326 = zext i8 %325 to i32
  %327 = mul i32 %326, 374761393
  %328 = add i32 %327, %323
  %329 = tail call i32 @llvm.fshl.i32(i32 %328, i32 %328, i32 11)
  %330 = mul i32 %329, -1640531535
  %331 = getelementptr inbounds nuw i8, ptr %281, i64 8
  %332 = load i8, ptr %324, align 1
  %333 = zext i8 %332 to i32
  %334 = mul i32 %333, 374761393
  %335 = add i32 %334, %330
  %336 = tail call i32 @llvm.fshl.i32(i32 %335, i32 %335, i32 11)
  %337 = mul i32 %336, -1640531535
  %338 = add nsw i64 %280, -8
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %278

340:                                              ; preds = %218, %278, %195
  %341 = phi i32 [ %198, %195 ], [ %219, %218 ], [ %337, %278 ]
  %342 = lshr i32 %341, 15
  %343 = xor i32 %342, %341
  %344 = mul i32 %343, -2048144777
  %345 = lshr i32 %344, 13
  %346 = xor i32 %345, %344
  %347 = mul i32 %346, -1028477379
  %348 = lshr i32 %347, 16
  %349 = xor i32 %348, %347
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #6
  ret i32 %349
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_1_47(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
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
define dso_local i32 @target_s32_40_40(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #6
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #6
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %35, i8 0, i64 40, i1 false)
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
  store i32 %111, ptr %36, align 4
  %112 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, -2048144777
  %115 = add i32 %114, %85
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = mul i32 %116, -1640531535
  %118 = freeze i32 %117
  store i32 %118, ptr %37, align 4
  %119 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %120 = load i32, ptr %119, align 4
  %121 = mul i32 %120, -2048144777
  %122 = add i32 %121, %92
  %123 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 13)
  %124 = mul i32 %123, -1640531535
  %125 = freeze i32 %124
  store i32 %125, ptr %38, align 4
  %126 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %127 = load i32, ptr %126, align 4
  %128 = mul i32 %127, -2048144777
  %129 = add i32 %128, %99
  %130 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 13)
  %131 = mul i32 %130, -1640531535
  %132 = freeze i32 %131
  store i32 %132, ptr %39, align 4
  %133 = load i32, ptr %40, align 4
  %134 = sub i32 16, %133
  %135 = zext i32 %134 to i64
  %136 = add nuw nsw i64 %135, 40
  store i32 0, ptr %40, align 4
  %137 = icmp ugt i32 %134, 24
  br i1 %137, label %175, label %138

138:                                              ; preds = %17, %138
  %139 = phi i32 [ %171, %138 ], [ %132, %17 ]
  %140 = phi i32 [ %164, %138 ], [ %125, %17 ]
  %141 = phi i32 [ %157, %138 ], [ %118, %17 ]
  %142 = phi i32 [ %150, %138 ], [ %111, %17 ]
  %143 = phi i64 [ %172, %138 ], [ %136, %17 ]
  %144 = getelementptr inbounds nuw i8, ptr %18, i64 %143
  %145 = load i32, ptr %144, align 1
  %146 = mul i32 %145, -2048144777
  %147 = add i32 %146, %142
  %148 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 13)
  %149 = mul i32 %148, -1640531535
  %150 = freeze i32 %149
  %151 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %152 = load i32, ptr %151, align 1
  %153 = mul i32 %152, -2048144777
  %154 = add i32 %153, %141
  %155 = tail call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 13)
  %156 = mul i32 %155, -1640531535
  %157 = freeze i32 %156
  %158 = getelementptr inbounds nuw i8, ptr %144, i64 8
  %159 = load i32, ptr %158, align 1
  %160 = mul i32 %159, -2048144777
  %161 = add i32 %160, %140
  %162 = tail call i32 @llvm.fshl.i32(i32 %161, i32 %161, i32 13)
  %163 = mul i32 %162, -1640531535
  %164 = freeze i32 %163
  %165 = getelementptr inbounds nuw i8, ptr %144, i64 12
  %166 = load i32, ptr %165, align 1
  %167 = mul i32 %166, -2048144777
  %168 = add i32 %167, %139
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 13)
  %170 = mul i32 %169, -1640531535
  %171 = freeze i32 %170
  %172 = add nuw nsw i64 %143, 16
  %173 = icmp samesign ugt i64 %143, 48
  br i1 %173, label %174, label %138

174:                                              ; preds = %138
  store i32 %150, ptr %36, align 4
  store i32 %157, ptr %37, align 4
  store i32 %164, ptr %38, align 4
  store i32 %171, ptr %39, align 4
  br label %175

175:                                              ; preds = %174, %17
  %176 = phi i32 [ %132, %17 ], [ %171, %174 ]
  %177 = phi i32 [ %125, %17 ], [ %164, %174 ]
  %178 = phi i32 [ %118, %17 ], [ %157, %174 ]
  %179 = phi i32 [ %111, %17 ], [ %150, %174 ]
  %180 = phi i64 [ %136, %17 ], [ %172, %174 ]
  %181 = icmp samesign ult i64 %180, 80
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = getelementptr inbounds nuw i8, ptr %18, i64 %180
  %184 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %185 = sub nuw nsw i64 80, %180
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %184, ptr nonnull readonly align 1 %183, i64 %185, i1 false)
  %186 = trunc nuw nsw i64 %185 to i32
  store i32 %186, ptr %40, align 4
  %187 = and i32 %186, 15
  br label %188

188:                                              ; preds = %175, %182
  %189 = phi i32 [ 0, %175 ], [ %187, %182 ]
  %190 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 1)
  %191 = tail call i32 @llvm.fshl.i32(i32 %178, i32 %178, i32 7)
  %192 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 12)
  %193 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 18)
  %194 = add i32 %190, 80
  %195 = add i32 %194, %191
  %196 = add i32 %195, %192
  %197 = add i32 %196, %193
  %198 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %199 = zext nneg i32 %189 to i64
  %200 = icmp samesign ugt i32 %189, 3
  br i1 %200, label %201, label %230

201:                                              ; preds = %188
  %202 = add nsw i64 %199, -4
  %203 = lshr i64 %202, 2
  %204 = add nuw nsw i64 %203, 1
  %205 = and i64 %204, 7
  %206 = and i64 %202, 28
  %207 = icmp eq i64 %206, 28
  br i1 %207, label %222, label %208

208:                                              ; preds = %201, %208
  %209 = phi i32 [ %218, %208 ], [ %197, %201 ]
  %210 = phi i64 [ %219, %208 ], [ %199, %201 ]
  %211 = phi ptr [ %216, %208 ], [ %198, %201 ]
  %212 = phi i64 [ %220, %208 ], [ 0, %201 ]
  %213 = load i32, ptr %211, align 4
  %214 = mul i32 %213, -1028477379
  %215 = add i32 %214, %209
  %216 = getelementptr inbounds nuw i8, ptr %211, i64 4
  %217 = tail call i32 @llvm.fshl.i32(i32 %215, i32 %215, i32 17)
  %218 = mul i32 %217, 668265263
  %219 = add nsw i64 %210, -4
  %220 = add i64 %212, 1
  %221 = icmp eq i64 %220, %205
  br i1 %221, label %222, label %208

222:                                              ; preds = %208, %201
  %223 = phi i32 [ %197, %201 ], [ %218, %208 ]
  %224 = phi i64 [ %199, %201 ], [ %219, %208 ]
  %225 = phi ptr [ %198, %201 ], [ %216, %208 ]
  %226 = phi ptr [ poison, %201 ], [ %216, %208 ]
  %227 = phi i32 [ poison, %201 ], [ %218, %208 ]
  %228 = phi i64 [ poison, %201 ], [ %219, %208 ]
  %229 = icmp ult i64 %202, 28
  br i1 %229, label %230, label %259

230:                                              ; preds = %222, %259, %188
  %231 = phi ptr [ %198, %188 ], [ %226, %222 ], [ %308, %259 ]
  %232 = phi i64 [ %199, %188 ], [ %228, %222 ], [ %311, %259 ]
  %233 = phi i32 [ %197, %188 ], [ %227, %222 ], [ %310, %259 ]
  %234 = icmp eq i64 %232, 0
  br i1 %234, label %375, label %235

235:                                              ; preds = %230
  %236 = and i64 %232, 7
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %253, label %238

238:                                              ; preds = %235, %238
  %239 = phi i32 [ %249, %238 ], [ %233, %235 ]
  %240 = phi i64 [ %250, %238 ], [ %232, %235 ]
  %241 = phi ptr [ %243, %238 ], [ %231, %235 ]
  %242 = phi i64 [ %251, %238 ], [ 0, %235 ]
  %243 = getelementptr inbounds nuw i8, ptr %241, i64 1
  %244 = load i8, ptr %241, align 1
  %245 = zext i8 %244 to i32
  %246 = mul i32 %245, 374761393
  %247 = add i32 %246, %239
  %248 = tail call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 11)
  %249 = mul i32 %248, -1640531535
  %250 = add nsw i64 %240, -1
  %251 = add i64 %242, 1
  %252 = icmp eq i64 %251, %236
  br i1 %252, label %253, label %238

253:                                              ; preds = %238, %235
  %254 = phi i32 [ poison, %235 ], [ %249, %238 ]
  %255 = phi i32 [ %233, %235 ], [ %249, %238 ]
  %256 = phi i64 [ %232, %235 ], [ %250, %238 ]
  %257 = phi ptr [ %231, %235 ], [ %243, %238 ]
  %258 = icmp ult i64 %232, 8
  br i1 %258, label %375, label %313

259:                                              ; preds = %222, %259
  %260 = phi i32 [ %310, %259 ], [ %223, %222 ]
  %261 = phi i64 [ %311, %259 ], [ %224, %222 ]
  %262 = phi ptr [ %308, %259 ], [ %225, %222 ]
  %263 = load i32, ptr %262, align 4
  %264 = mul i32 %263, -1028477379
  %265 = add i32 %264, %260
  %266 = getelementptr inbounds nuw i8, ptr %262, i64 4
  %267 = tail call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 17)
  %268 = mul i32 %267, 668265263
  %269 = load i32, ptr %266, align 4
  %270 = mul i32 %269, -1028477379
  %271 = add i32 %270, %268
  %272 = getelementptr inbounds nuw i8, ptr %262, i64 8
  %273 = tail call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 17)
  %274 = mul i32 %273, 668265263
  %275 = load i32, ptr %272, align 4
  %276 = mul i32 %275, -1028477379
  %277 = add i32 %276, %274
  %278 = getelementptr inbounds nuw i8, ptr %262, i64 12
  %279 = tail call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 17)
  %280 = mul i32 %279, 668265263
  %281 = load i32, ptr %278, align 4
  %282 = mul i32 %281, -1028477379
  %283 = add i32 %282, %280
  %284 = getelementptr inbounds nuw i8, ptr %262, i64 16
  %285 = tail call i32 @llvm.fshl.i32(i32 %283, i32 %283, i32 17)
  %286 = mul i32 %285, 668265263
  %287 = load i32, ptr %284, align 4
  %288 = mul i32 %287, -1028477379
  %289 = add i32 %288, %286
  %290 = getelementptr inbounds nuw i8, ptr %262, i64 20
  %291 = tail call i32 @llvm.fshl.i32(i32 %289, i32 %289, i32 17)
  %292 = mul i32 %291, 668265263
  %293 = load i32, ptr %290, align 4
  %294 = mul i32 %293, -1028477379
  %295 = add i32 %294, %292
  %296 = getelementptr inbounds nuw i8, ptr %262, i64 24
  %297 = tail call i32 @llvm.fshl.i32(i32 %295, i32 %295, i32 17)
  %298 = mul i32 %297, 668265263
  %299 = load i32, ptr %296, align 4
  %300 = mul i32 %299, -1028477379
  %301 = add i32 %300, %298
  %302 = getelementptr inbounds nuw i8, ptr %262, i64 28
  %303 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 17)
  %304 = mul i32 %303, 668265263
  %305 = load i32, ptr %302, align 4
  %306 = mul i32 %305, -1028477379
  %307 = add i32 %306, %304
  %308 = getelementptr inbounds nuw i8, ptr %262, i64 32
  %309 = tail call i32 @llvm.fshl.i32(i32 %307, i32 %307, i32 17)
  %310 = mul i32 %309, 668265263
  %311 = add nsw i64 %261, -32
  %312 = icmp ugt i64 %311, 3
  br i1 %312, label %259, label %230

313:                                              ; preds = %253, %313
  %314 = phi i32 [ %372, %313 ], [ %255, %253 ]
  %315 = phi i64 [ %373, %313 ], [ %256, %253 ]
  %316 = phi ptr [ %366, %313 ], [ %257, %253 ]
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 1
  %318 = load i8, ptr %316, align 1
  %319 = zext i8 %318 to i32
  %320 = mul i32 %319, 374761393
  %321 = add i32 %320, %314
  %322 = tail call i32 @llvm.fshl.i32(i32 %321, i32 %321, i32 11)
  %323 = mul i32 %322, -1640531535
  %324 = getelementptr inbounds nuw i8, ptr %316, i64 2
  %325 = load i8, ptr %317, align 1
  %326 = zext i8 %325 to i32
  %327 = mul i32 %326, 374761393
  %328 = add i32 %327, %323
  %329 = tail call i32 @llvm.fshl.i32(i32 %328, i32 %328, i32 11)
  %330 = mul i32 %329, -1640531535
  %331 = getelementptr inbounds nuw i8, ptr %316, i64 3
  %332 = load i8, ptr %324, align 1
  %333 = zext i8 %332 to i32
  %334 = mul i32 %333, 374761393
  %335 = add i32 %334, %330
  %336 = tail call i32 @llvm.fshl.i32(i32 %335, i32 %335, i32 11)
  %337 = mul i32 %336, -1640531535
  %338 = getelementptr inbounds nuw i8, ptr %316, i64 4
  %339 = load i8, ptr %331, align 1
  %340 = zext i8 %339 to i32
  %341 = mul i32 %340, 374761393
  %342 = add i32 %341, %337
  %343 = tail call i32 @llvm.fshl.i32(i32 %342, i32 %342, i32 11)
  %344 = mul i32 %343, -1640531535
  %345 = getelementptr inbounds nuw i8, ptr %316, i64 5
  %346 = load i8, ptr %338, align 1
  %347 = zext i8 %346 to i32
  %348 = mul i32 %347, 374761393
  %349 = add i32 %348, %344
  %350 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 11)
  %351 = mul i32 %350, -1640531535
  %352 = getelementptr inbounds nuw i8, ptr %316, i64 6
  %353 = load i8, ptr %345, align 1
  %354 = zext i8 %353 to i32
  %355 = mul i32 %354, 374761393
  %356 = add i32 %355, %351
  %357 = tail call i32 @llvm.fshl.i32(i32 %356, i32 %356, i32 11)
  %358 = mul i32 %357, -1640531535
  %359 = getelementptr inbounds nuw i8, ptr %316, i64 7
  %360 = load i8, ptr %352, align 1
  %361 = zext i8 %360 to i32
  %362 = mul i32 %361, 374761393
  %363 = add i32 %362, %358
  %364 = tail call i32 @llvm.fshl.i32(i32 %363, i32 %363, i32 11)
  %365 = mul i32 %364, -1640531535
  %366 = getelementptr inbounds nuw i8, ptr %316, i64 8
  %367 = load i8, ptr %359, align 1
  %368 = zext i8 %367 to i32
  %369 = mul i32 %368, 374761393
  %370 = add i32 %369, %365
  %371 = tail call i32 @llvm.fshl.i32(i32 %370, i32 %370, i32 11)
  %372 = mul i32 %371, -1640531535
  %373 = add nsw i64 %315, -8
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %313

375:                                              ; preds = %253, %313, %230
  %376 = phi i32 [ %233, %230 ], [ %254, %253 ], [ %372, %313 ]
  %377 = lshr i32 %376, 15
  %378 = xor i32 %377, %376
  %379 = mul i32 %378, -2048144777
  %380 = lshr i32 %379, 13
  %381 = xor i32 %380, %379
  %382 = mul i32 %381, -1028477379
  %383 = lshr i32 %382, 16
  %384 = xor i32 %383, %382
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #6
  ret i32 %384
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148150963}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
