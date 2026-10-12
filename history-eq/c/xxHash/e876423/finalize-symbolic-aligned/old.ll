; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e876423/wrap_finalize.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e876423/wrap_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_unaligned(i64 noundef %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %190

7:                                                ; preds = %3
  %8 = and i64 %2, 31
  %9 = icmp samesign ugt i64 %8, 7
  br i1 %9, label %10, label %84

10:                                               ; preds = %7
  %11 = add nsw i64 %8, -8
  %12 = lshr i64 %11, 3
  %13 = add nuw nsw i64 %12, 1
  %14 = and i64 %13, 3
  %15 = and i64 %11, 24
  %16 = icmp eq i64 %15, 24
  br i1 %16, label %34, label %17

17:                                               ; preds = %10, %17
  %18 = phi i64 [ %30, %17 ], [ %0, %10 ]
  %19 = phi ptr [ %26, %17 ], [ %1, %10 ]
  %20 = phi i64 [ %31, %17 ], [ %8, %10 ]
  %21 = phi i64 [ %32, %17 ], [ 0, %10 ]
  %22 = load i64, ptr %19, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %27 = xor i64 %25, %18
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 27)
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = add nsw i64 %20, -8
  %32 = add i64 %21, 1
  %33 = icmp eq i64 %32, %14
  br i1 %33, label %34, label %17

34:                                               ; preds = %17, %10
  %35 = phi i64 [ %0, %10 ], [ %30, %17 ]
  %36 = phi ptr [ %1, %10 ], [ %26, %17 ]
  %37 = phi i64 [ %8, %10 ], [ %31, %17 ]
  %38 = phi ptr [ poison, %10 ], [ %26, %17 ]
  %39 = phi i64 [ poison, %10 ], [ %30, %17 ]
  %40 = phi i64 [ poison, %10 ], [ %31, %17 ]
  %41 = icmp ult i64 %11, 24
  br i1 %41, label %84, label %42

42:                                               ; preds = %34, %42
  %43 = phi i64 [ %81, %42 ], [ %35, %34 ]
  %44 = phi ptr [ %77, %42 ], [ %36, %34 ]
  %45 = phi i64 [ %82, %42 ], [ %37, %34 ]
  %46 = load i64, ptr %44, align 1
  %47 = mul i64 %46, -4417276706812531889
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 31)
  %49 = mul i64 %48, -7046029288634856825
  %50 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %51 = xor i64 %49, %43
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 27)
  %53 = mul i64 %52, -7046029288634856825
  %54 = add i64 %53, -8796714831421723037
  %55 = load i64, ptr %50, align 1
  %56 = mul i64 %55, -4417276706812531889
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %60 = xor i64 %58, %54
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 27)
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = load i64, ptr %59, align 1
  %65 = mul i64 %64, -4417276706812531889
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 31)
  %67 = mul i64 %66, -7046029288634856825
  %68 = getelementptr inbounds nuw i8, ptr %44, i64 24
  %69 = xor i64 %67, %63
  %70 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 27)
  %71 = mul i64 %70, -7046029288634856825
  %72 = add i64 %71, -8796714831421723037
  %73 = load i64, ptr %68, align 1
  %74 = mul i64 %73, -4417276706812531889
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 31)
  %76 = mul i64 %75, -7046029288634856825
  %77 = getelementptr inbounds nuw i8, ptr %44, i64 32
  %78 = xor i64 %76, %72
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 27)
  %80 = mul i64 %79, -7046029288634856825
  %81 = add i64 %80, -8796714831421723037
  %82 = add nsw i64 %45, -32
  %83 = icmp ugt i64 %82, 7
  br i1 %83, label %42, label %84

84:                                               ; preds = %34, %42, %7
  %85 = phi i64 [ %8, %7 ], [ %40, %34 ], [ %82, %42 ]
  %86 = phi ptr [ %1, %7 ], [ %38, %34 ], [ %77, %42 ]
  %87 = phi i64 [ %0, %7 ], [ %39, %34 ], [ %81, %42 ]
  %88 = icmp samesign ugt i64 %85, 3
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32, ptr %86, align 1
  %91 = zext i32 %90 to i64
  %92 = mul i64 %91, -7046029288634856825
  %93 = xor i64 %92, %87
  %94 = getelementptr inbounds nuw i8, ptr %86, i64 4
  %95 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 23)
  %96 = mul i64 %95, -4417276706812531889
  %97 = add i64 %96, 1609587929392839161
  %98 = add nsw i64 %85, -4
  br label %99

99:                                               ; preds = %89, %84
  %100 = phi i64 [ %98, %89 ], [ %85, %84 ]
  %101 = phi ptr [ %94, %89 ], [ %86, %84 ]
  %102 = phi i64 [ %97, %89 ], [ %87, %84 ]
  %103 = icmp eq i64 %100, 0
  br i1 %103, label %190, label %104

104:                                              ; preds = %99
  %105 = and i64 %100, 7
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %104, %107
  %108 = phi i64 [ %118, %107 ], [ %102, %104 ]
  %109 = phi ptr [ %112, %107 ], [ %101, %104 ]
  %110 = phi i64 [ %119, %107 ], [ %100, %104 ]
  %111 = phi i64 [ %120, %107 ], [ 0, %104 ]
  %112 = getelementptr inbounds nuw i8, ptr %109, i64 1
  %113 = load i8, ptr %109, align 1
  %114 = zext i8 %113 to i64
  %115 = mul i64 %114, 2870177450012600261
  %116 = xor i64 %115, %108
  %117 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 11)
  %118 = mul i64 %117, -7046029288634856825
  %119 = add nsw i64 %110, -1
  %120 = add i64 %111, 1
  %121 = icmp eq i64 %120, %105
  br i1 %121, label %122, label %107

122:                                              ; preds = %107, %104
  %123 = phi i64 [ poison, %104 ], [ %118, %107 ]
  %124 = phi i64 [ %102, %104 ], [ %118, %107 ]
  %125 = phi ptr [ %101, %104 ], [ %112, %107 ]
  %126 = phi i64 [ %100, %104 ], [ %119, %107 ]
  %127 = icmp ult i64 %100, 8
  br i1 %127, label %190, label %128

128:                                              ; preds = %122, %128
  %129 = phi i64 [ %187, %128 ], [ %124, %122 ]
  %130 = phi ptr [ %181, %128 ], [ %125, %122 ]
  %131 = phi i64 [ %188, %128 ], [ %126, %122 ]
  %132 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %133 = load i8, ptr %130, align 1
  %134 = zext i8 %133 to i64
  %135 = mul i64 %134, 2870177450012600261
  %136 = xor i64 %135, %129
  %137 = tail call i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 11)
  %138 = mul i64 %137, -7046029288634856825
  %139 = getelementptr inbounds nuw i8, ptr %130, i64 2
  %140 = load i8, ptr %132, align 1
  %141 = zext i8 %140 to i64
  %142 = mul i64 %141, 2870177450012600261
  %143 = xor i64 %142, %138
  %144 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 11)
  %145 = mul i64 %144, -7046029288634856825
  %146 = getelementptr inbounds nuw i8, ptr %130, i64 3
  %147 = load i8, ptr %139, align 1
  %148 = zext i8 %147 to i64
  %149 = mul i64 %148, 2870177450012600261
  %150 = xor i64 %149, %145
  %151 = tail call i64 @llvm.fshl.i64(i64 %150, i64 %150, i64 11)
  %152 = mul i64 %151, -7046029288634856825
  %153 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %154 = load i8, ptr %146, align 1
  %155 = zext i8 %154 to i64
  %156 = mul i64 %155, 2870177450012600261
  %157 = xor i64 %156, %152
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 11)
  %159 = mul i64 %158, -7046029288634856825
  %160 = getelementptr inbounds nuw i8, ptr %130, i64 5
  %161 = load i8, ptr %153, align 1
  %162 = zext i8 %161 to i64
  %163 = mul i64 %162, 2870177450012600261
  %164 = xor i64 %163, %159
  %165 = tail call i64 @llvm.fshl.i64(i64 %164, i64 %164, i64 11)
  %166 = mul i64 %165, -7046029288634856825
  %167 = getelementptr inbounds nuw i8, ptr %130, i64 6
  %168 = load i8, ptr %160, align 1
  %169 = zext i8 %168 to i64
  %170 = mul i64 %169, 2870177450012600261
  %171 = xor i64 %170, %166
  %172 = tail call i64 @llvm.fshl.i64(i64 %171, i64 %171, i64 11)
  %173 = mul i64 %172, -7046029288634856825
  %174 = getelementptr inbounds nuw i8, ptr %130, i64 7
  %175 = load i8, ptr %167, align 1
  %176 = zext i8 %175 to i64
  %177 = mul i64 %176, 2870177450012600261
  %178 = xor i64 %177, %173
  %179 = tail call i64 @llvm.fshl.i64(i64 %178, i64 %178, i64 11)
  %180 = mul i64 %179, -7046029288634856825
  %181 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %182 = load i8, ptr %174, align 1
  %183 = zext i8 %182 to i64
  %184 = mul i64 %183, 2870177450012600261
  %185 = xor i64 %184, %180
  %186 = tail call i64 @llvm.fshl.i64(i64 %185, i64 %185, i64 11)
  %187 = mul i64 %186, -7046029288634856825
  %188 = add nsw i64 %131, -8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %128

190:                                              ; preds = %122, %128, %5, %99
  %191 = phi i64 [ %102, %99 ], [ %0, %5 ], [ %123, %122 ], [ %187, %128 ]
  %192 = lshr i64 %191, 33
  %193 = xor i64 %192, %191
  %194 = mul i64 %193, -4417276706812531889
  %195 = lshr i64 %194, 29
  %196 = xor i64 %195, %194
  %197 = mul i64 %196, 1609587929392839161
  %198 = lshr i64 %197, 32
  %199 = xor i64 %198, %197
  ret i64 %199
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_aligned(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %1 to i64
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  tail call void @llvm.assume(i1 %6)
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %9)
  br label %193

10:                                               ; preds = %3
  %11 = and i64 %2, 31
  %12 = icmp samesign ugt i64 %11, 7
  br i1 %12, label %13, label %87

13:                                               ; preds = %10
  %14 = add nsw i64 %11, -8
  %15 = lshr i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = and i64 %16, 3
  %18 = and i64 %14, 24
  %19 = icmp eq i64 %18, 24
  br i1 %19, label %37, label %20

20:                                               ; preds = %13, %20
  %21 = phi i64 [ %33, %20 ], [ %0, %13 ]
  %22 = phi ptr [ %29, %20 ], [ %1, %13 ]
  %23 = phi i64 [ %34, %20 ], [ %11, %13 ]
  %24 = phi i64 [ %35, %20 ], [ 0, %13 ]
  %25 = load i64, ptr %22, align 1
  %26 = mul i64 %25, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %30 = xor i64 %28, %21
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 27)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = add nsw i64 %23, -8
  %35 = add i64 %24, 1
  %36 = icmp eq i64 %35, %17
  br i1 %36, label %37, label %20

37:                                               ; preds = %20, %13
  %38 = phi i64 [ %0, %13 ], [ %33, %20 ]
  %39 = phi ptr [ %1, %13 ], [ %29, %20 ]
  %40 = phi i64 [ %11, %13 ], [ %34, %20 ]
  %41 = phi ptr [ poison, %13 ], [ %29, %20 ]
  %42 = phi i64 [ poison, %13 ], [ %33, %20 ]
  %43 = phi i64 [ poison, %13 ], [ %34, %20 ]
  %44 = icmp ult i64 %14, 24
  br i1 %44, label %87, label %45

45:                                               ; preds = %37, %45
  %46 = phi i64 [ %84, %45 ], [ %38, %37 ]
  %47 = phi ptr [ %80, %45 ], [ %39, %37 ]
  %48 = phi i64 [ %85, %45 ], [ %40, %37 ]
  %49 = load i64, ptr %47, align 1
  %50 = mul i64 %49, -4417276706812531889
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %54 = xor i64 %52, %46
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 27)
  %56 = mul i64 %55, -7046029288634856825
  %57 = add i64 %56, -8796714831421723037
  %58 = load i64, ptr %53, align 1
  %59 = mul i64 %58, -4417276706812531889
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 31)
  %61 = mul i64 %60, -7046029288634856825
  %62 = getelementptr inbounds nuw i8, ptr %47, i64 16
  %63 = xor i64 %61, %57
  %64 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 27)
  %65 = mul i64 %64, -7046029288634856825
  %66 = add i64 %65, -8796714831421723037
  %67 = load i64, ptr %62, align 1
  %68 = mul i64 %67, -4417276706812531889
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = getelementptr inbounds nuw i8, ptr %47, i64 24
  %72 = xor i64 %70, %66
  %73 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 27)
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %74, -8796714831421723037
  %76 = load i64, ptr %71, align 1
  %77 = mul i64 %76, -4417276706812531889
  %78 = tail call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 31)
  %79 = mul i64 %78, -7046029288634856825
  %80 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %81 = xor i64 %79, %75
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 27)
  %83 = mul i64 %82, -7046029288634856825
  %84 = add i64 %83, -8796714831421723037
  %85 = add nsw i64 %48, -32
  %86 = icmp ugt i64 %85, 7
  br i1 %86, label %45, label %87

87:                                               ; preds = %37, %45, %10
  %88 = phi i64 [ %11, %10 ], [ %43, %37 ], [ %85, %45 ]
  %89 = phi ptr [ %1, %10 ], [ %41, %37 ], [ %80, %45 ]
  %90 = phi i64 [ %0, %10 ], [ %42, %37 ], [ %84, %45 ]
  %91 = icmp samesign ugt i64 %88, 3
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i32, ptr %89, align 1
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, -7046029288634856825
  %96 = xor i64 %95, %90
  %97 = getelementptr inbounds nuw i8, ptr %89, i64 4
  %98 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 23)
  %99 = mul i64 %98, -4417276706812531889
  %100 = add i64 %99, 1609587929392839161
  %101 = add nsw i64 %88, -4
  br label %102

102:                                              ; preds = %92, %87
  %103 = phi i64 [ %101, %92 ], [ %88, %87 ]
  %104 = phi ptr [ %97, %92 ], [ %89, %87 ]
  %105 = phi i64 [ %100, %92 ], [ %90, %87 ]
  %106 = icmp eq i64 %103, 0
  br i1 %106, label %193, label %107

107:                                              ; preds = %102
  %108 = and i64 %103, 7
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %107, %110
  %111 = phi i64 [ %121, %110 ], [ %105, %107 ]
  %112 = phi ptr [ %115, %110 ], [ %104, %107 ]
  %113 = phi i64 [ %122, %110 ], [ %103, %107 ]
  %114 = phi i64 [ %123, %110 ], [ 0, %107 ]
  %115 = getelementptr inbounds nuw i8, ptr %112, i64 1
  %116 = load i8, ptr %112, align 1
  %117 = zext i8 %116 to i64
  %118 = mul i64 %117, 2870177450012600261
  %119 = xor i64 %118, %111
  %120 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 11)
  %121 = mul i64 %120, -7046029288634856825
  %122 = add nsw i64 %113, -1
  %123 = add i64 %114, 1
  %124 = icmp eq i64 %123, %108
  br i1 %124, label %125, label %110

125:                                              ; preds = %110, %107
  %126 = phi i64 [ poison, %107 ], [ %121, %110 ]
  %127 = phi i64 [ %105, %107 ], [ %121, %110 ]
  %128 = phi ptr [ %104, %107 ], [ %115, %110 ]
  %129 = phi i64 [ %103, %107 ], [ %122, %110 ]
  %130 = icmp ult i64 %103, 8
  br i1 %130, label %193, label %131

131:                                              ; preds = %125, %131
  %132 = phi i64 [ %190, %131 ], [ %127, %125 ]
  %133 = phi ptr [ %184, %131 ], [ %128, %125 ]
  %134 = phi i64 [ %191, %131 ], [ %129, %125 ]
  %135 = getelementptr inbounds nuw i8, ptr %133, i64 1
  %136 = load i8, ptr %133, align 1
  %137 = zext i8 %136 to i64
  %138 = mul i64 %137, 2870177450012600261
  %139 = xor i64 %138, %132
  %140 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 11)
  %141 = mul i64 %140, -7046029288634856825
  %142 = getelementptr inbounds nuw i8, ptr %133, i64 2
  %143 = load i8, ptr %135, align 1
  %144 = zext i8 %143 to i64
  %145 = mul i64 %144, 2870177450012600261
  %146 = xor i64 %145, %141
  %147 = tail call i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 11)
  %148 = mul i64 %147, -7046029288634856825
  %149 = getelementptr inbounds nuw i8, ptr %133, i64 3
  %150 = load i8, ptr %142, align 1
  %151 = zext i8 %150 to i64
  %152 = mul i64 %151, 2870177450012600261
  %153 = xor i64 %152, %148
  %154 = tail call i64 @llvm.fshl.i64(i64 %153, i64 %153, i64 11)
  %155 = mul i64 %154, -7046029288634856825
  %156 = getelementptr inbounds nuw i8, ptr %133, i64 4
  %157 = load i8, ptr %149, align 1
  %158 = zext i8 %157 to i64
  %159 = mul i64 %158, 2870177450012600261
  %160 = xor i64 %159, %155
  %161 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 11)
  %162 = mul i64 %161, -7046029288634856825
  %163 = getelementptr inbounds nuw i8, ptr %133, i64 5
  %164 = load i8, ptr %156, align 1
  %165 = zext i8 %164 to i64
  %166 = mul i64 %165, 2870177450012600261
  %167 = xor i64 %166, %162
  %168 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 11)
  %169 = mul i64 %168, -7046029288634856825
  %170 = getelementptr inbounds nuw i8, ptr %133, i64 6
  %171 = load i8, ptr %163, align 1
  %172 = zext i8 %171 to i64
  %173 = mul i64 %172, 2870177450012600261
  %174 = xor i64 %173, %169
  %175 = tail call i64 @llvm.fshl.i64(i64 %174, i64 %174, i64 11)
  %176 = mul i64 %175, -7046029288634856825
  %177 = getelementptr inbounds nuw i8, ptr %133, i64 7
  %178 = load i8, ptr %170, align 1
  %179 = zext i8 %178 to i64
  %180 = mul i64 %179, 2870177450012600261
  %181 = xor i64 %180, %176
  %182 = tail call i64 @llvm.fshl.i64(i64 %181, i64 %181, i64 11)
  %183 = mul i64 %182, -7046029288634856825
  %184 = getelementptr inbounds nuw i8, ptr %133, i64 8
  %185 = load i8, ptr %177, align 1
  %186 = zext i8 %185 to i64
  %187 = mul i64 %186, 2870177450012600261
  %188 = xor i64 %187, %183
  %189 = tail call i64 @llvm.fshl.i64(i64 %188, i64 %188, i64 11)
  %190 = mul i64 %189, -7046029288634856825
  %191 = add nsw i64 %134, -8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %131

193:                                              ; preds = %125, %131, %8, %102
  %194 = phi i64 [ %105, %102 ], [ %0, %8 ], [ %126, %125 ], [ %190, %131 ]
  %195 = lshr i64 %194, 33
  %196 = xor i64 %195, %194
  %197 = mul i64 %196, -4417276706812531889
  %198 = lshr i64 %197, 29
  %199 = xor i64 %198, %197
  %200 = mul i64 %199, 1609587929392839161
  %201 = lshr i64 %200, 32
  %202 = xor i64 %201, %200
  ret i64 %202
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
