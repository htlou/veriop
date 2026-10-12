; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/777ec65/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/777ec65/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_api_xxh32_0to15(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %167, label %5

5:                                                ; preds = %3
  %6 = add i32 %2, 374761393
  %7 = trunc nuw nsw i64 %1 to i32
  %8 = add i32 %6, %7
  switch i64 %1, label %156 [
    i64 12, label %9
    i64 8, label %16
    i64 4, label %25
    i64 13, label %33
    i64 9, label %40
    i64 5, label %49
    i64 14, label %64
    i64 10, label %71
    i64 6, label %80
    i64 15, label %102
    i64 11, label %109
    i64 7, label %118
    i64 3, label %127
    i64 2, label %137
    i64 1, label %147
    i64 0, label %157
  ]

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi ptr [ %0, %5 ], [ %13, %9 ]
  %18 = phi i32 [ %8, %5 ], [ %15, %9 ]
  %19 = load i32, ptr %17, align 1
  %20 = mul i32 %19, -1028477379
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 17)
  %24 = mul i32 %23, 668265263
  br label %25

25:                                               ; preds = %16, %5
  %26 = phi ptr [ %0, %5 ], [ %22, %16 ]
  %27 = phi i32 [ %8, %5 ], [ %24, %16 ]
  %28 = load i32, ptr %26, align 1
  %29 = mul i32 %28, -1028477379
  %30 = add i32 %29, %27
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  br label %157

33:                                               ; preds = %5
  %34 = load i32, ptr %0, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %8
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  br label %40

40:                                               ; preds = %33, %5
  %41 = phi ptr [ %0, %5 ], [ %37, %33 ]
  %42 = phi i32 [ %8, %5 ], [ %39, %33 ]
  %43 = load i32, ptr %41, align 1
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 4
  %47 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %48 = mul i32 %47, 668265263
  br label %49

49:                                               ; preds = %40, %5
  %50 = phi ptr [ %0, %5 ], [ %46, %40 ]
  %51 = phi i32 [ %8, %5 ], [ %48, %40 ]
  %52 = load i32, ptr %50, align 1
  %53 = mul i32 %52, -1028477379
  %54 = add i32 %53, %51
  %55 = getelementptr inbounds nuw i8, ptr %50, i64 4
  %56 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 17)
  %57 = mul i32 %56, 668265263
  %58 = load i8, ptr %55, align 1
  %59 = zext i8 %58 to i32
  %60 = mul i32 %59, 374761393
  %61 = add i32 %57, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 11)
  %63 = mul i32 %62, -1640531535
  br label %157

64:                                               ; preds = %5
  %65 = load i32, ptr %0, align 1
  %66 = mul i32 %65, -1028477379
  %67 = add i32 %66, %8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %69 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 17)
  %70 = mul i32 %69, 668265263
  br label %71

71:                                               ; preds = %64, %5
  %72 = phi ptr [ %0, %5 ], [ %68, %64 ]
  %73 = phi i32 [ %8, %5 ], [ %70, %64 ]
  %74 = load i32, ptr %72, align 1
  %75 = mul i32 %74, -1028477379
  %76 = add i32 %75, %73
  %77 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %78 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 17)
  %79 = mul i32 %78, 668265263
  br label %80

80:                                               ; preds = %71, %5
  %81 = phi ptr [ %0, %5 ], [ %77, %71 ]
  %82 = phi i32 [ %8, %5 ], [ %79, %71 ]
  %83 = load i32, ptr %81, align 1
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %82
  %86 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %88 = mul i32 %87, 668265263
  %89 = getelementptr inbounds nuw i8, ptr %81, i64 5
  %90 = load i8, ptr %86, align 1
  %91 = zext i8 %90 to i32
  %92 = mul i32 %91, 374761393
  %93 = add i32 %88, %92
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 11)
  %95 = mul i32 %94, -1640531535
  %96 = load i8, ptr %89, align 1
  %97 = zext i8 %96 to i32
  %98 = mul i32 %97, 374761393
  %99 = add i32 %95, %98
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 11)
  %101 = mul i32 %100, -1640531535
  br label %157

102:                                              ; preds = %5
  %103 = load i32, ptr %0, align 1
  %104 = mul i32 %103, -1028477379
  %105 = add i32 %104, %8
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %107 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 17)
  %108 = mul i32 %107, 668265263
  br label %109

109:                                              ; preds = %102, %5
  %110 = phi ptr [ %0, %5 ], [ %106, %102 ]
  %111 = phi i32 [ %8, %5 ], [ %108, %102 ]
  %112 = load i32, ptr %110, align 1
  %113 = mul i32 %112, -1028477379
  %114 = add i32 %113, %111
  %115 = getelementptr inbounds nuw i8, ptr %110, i64 4
  %116 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 17)
  %117 = mul i32 %116, 668265263
  br label %118

118:                                              ; preds = %109, %5
  %119 = phi ptr [ %0, %5 ], [ %115, %109 ]
  %120 = phi i32 [ %8, %5 ], [ %117, %109 ]
  %121 = load i32, ptr %119, align 1
  %122 = mul i32 %121, -1028477379
  %123 = add i32 %122, %120
  %124 = getelementptr inbounds nuw i8, ptr %119, i64 4
  %125 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 17)
  %126 = mul i32 %125, 668265263
  br label %127

127:                                              ; preds = %118, %5
  %128 = phi ptr [ %0, %5 ], [ %124, %118 ]
  %129 = phi i32 [ %8, %5 ], [ %126, %118 ]
  %130 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %131 = load i8, ptr %128, align 1
  %132 = zext i8 %131 to i32
  %133 = mul i32 %132, 374761393
  %134 = add i32 %133, %129
  %135 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 11)
  %136 = mul i32 %135, -1640531535
  br label %137

137:                                              ; preds = %127, %5
  %138 = phi ptr [ %0, %5 ], [ %130, %127 ]
  %139 = phi i32 [ %8, %5 ], [ %136, %127 ]
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 1
  %141 = load i8, ptr %138, align 1
  %142 = zext i8 %141 to i32
  %143 = mul i32 %142, 374761393
  %144 = add i32 %143, %139
  %145 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 11)
  %146 = mul i32 %145, -1640531535
  br label %147

147:                                              ; preds = %137, %5
  %148 = phi ptr [ %0, %5 ], [ %140, %137 ]
  %149 = phi i32 [ %8, %5 ], [ %146, %137 ]
  %150 = load i8, ptr %148, align 1
  %151 = zext i8 %150 to i32
  %152 = mul i32 %151, 374761393
  %153 = add i32 %152, %149
  %154 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 11)
  %155 = mul i32 %154, -1640531535
  br label %157

156:                                              ; preds = %5
  unreachable

157:                                              ; preds = %5, %25, %49, %80, %147
  %158 = phi i32 [ %101, %80 ], [ %63, %49 ], [ %32, %25 ], [ %8, %5 ], [ %155, %147 ]
  %159 = lshr i32 %158, 15
  %160 = xor i32 %159, %158
  %161 = mul i32 %160, -2048144777
  %162 = lshr i32 %161, 13
  %163 = xor i32 %162, %161
  %164 = mul i32 %163, -1028477379
  %165 = lshr i32 %164, 16
  %166 = xor i32 %165, %164
  br label %167

167:                                              ; preds = %3, %157
  %168 = phi i32 [ %166, %157 ], [ 0, %3 ]
  ret i32 %168
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_xxh64_0to31(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 31
  br i1 %4, label %420, label %5

5:                                                ; preds = %3
  %6 = add nuw nsw i64 %1, 2870177450012600261
  %7 = add i64 %6, %2
  switch i64 %1, label %409 [
    i64 24, label %8
    i64 16, label %18
    i64 8, label %30
    i64 28, label %41
    i64 20, label %51
    i64 12, label %63
    i64 4, label %75
    i64 25, label %85
    i64 17, label %95
    i64 9, label %107
    i64 29, label %125
    i64 21, label %135
    i64 13, label %147
    i64 5, label %159
    i64 26, label %176
    i64 18, label %186
    i64 10, label %198
    i64 30, label %223
    i64 22, label %233
    i64 14, label %245
    i64 6, label %257
    i64 27, label %281
    i64 19, label %291
    i64 11, label %303
    i64 31, label %335
    i64 23, label %345
    i64 15, label %357
    i64 7, label %369
    i64 3, label %380
    i64 2, label %390
    i64 1, label %400
    i64 0, label %410
  ]

8:                                                ; preds = %5
  %9 = load i64, ptr %0, align 1
  %10 = mul i64 %9, -4417276706812531889
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = xor i64 %12, %7
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 27)
  %16 = mul i64 %15, -7046029288634856825
  %17 = add i64 %16, -8796714831421723037
  br label %18

18:                                               ; preds = %8, %5
  %19 = phi ptr [ %0, %5 ], [ %13, %8 ]
  %20 = phi i64 [ %7, %5 ], [ %17, %8 ]
  %21 = load i64, ptr %19, align 1
  %22 = mul i64 %21, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %26 = xor i64 %24, %20
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 27)
  %28 = mul i64 %27, -7046029288634856825
  %29 = add i64 %28, -8796714831421723037
  br label %30

30:                                               ; preds = %18, %5
  %31 = phi ptr [ %0, %5 ], [ %25, %18 ]
  %32 = phi i64 [ %7, %5 ], [ %29, %18 ]
  %33 = load i64, ptr %31, align 1
  %34 = mul i64 %33, -4417276706812531889
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = xor i64 %36, %32
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 27)
  %39 = mul i64 %38, -7046029288634856825
  %40 = add i64 %39, -8796714831421723037
  br label %410

41:                                               ; preds = %5
  %42 = load i64, ptr %0, align 1
  %43 = mul i64 %42, -4417276706812531889
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 31)
  %45 = mul i64 %44, -7046029288634856825
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %47 = xor i64 %45, %7
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 27)
  %49 = mul i64 %48, -7046029288634856825
  %50 = add i64 %49, -8796714831421723037
  br label %51

51:                                               ; preds = %41, %5
  %52 = phi ptr [ %0, %5 ], [ %46, %41 ]
  %53 = phi i64 [ %7, %5 ], [ %50, %41 ]
  %54 = load i64, ptr %52, align 1
  %55 = mul i64 %54, -4417276706812531889
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %59 = xor i64 %57, %53
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 27)
  %61 = mul i64 %60, -7046029288634856825
  %62 = add i64 %61, -8796714831421723037
  br label %63

63:                                               ; preds = %51, %5
  %64 = phi ptr [ %0, %5 ], [ %58, %51 ]
  %65 = phi i64 [ %7, %5 ], [ %62, %51 ]
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

75:                                               ; preds = %63, %5
  %76 = phi ptr [ %0, %5 ], [ %70, %63 ]
  %77 = phi i64 [ %7, %5 ], [ %74, %63 ]
  %78 = load i32, ptr %76, align 1
  %79 = zext i32 %78 to i64
  %80 = mul i64 %79, -7046029288634856825
  %81 = xor i64 %80, %77
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 23)
  %83 = mul i64 %82, -4417276706812531889
  %84 = add i64 %83, 1609587929392839161
  br label %410

85:                                               ; preds = %5
  %86 = load i64, ptr %0, align 1
  %87 = mul i64 %86, -4417276706812531889
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %91 = xor i64 %89, %7
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 27)
  %93 = mul i64 %92, -7046029288634856825
  %94 = add i64 %93, -8796714831421723037
  br label %95

95:                                               ; preds = %85, %5
  %96 = phi ptr [ %0, %5 ], [ %90, %85 ]
  %97 = phi i64 [ %7, %5 ], [ %94, %85 ]
  %98 = load i64, ptr %96, align 1
  %99 = mul i64 %98, -4417276706812531889
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 31)
  %101 = mul i64 %100, -7046029288634856825
  %102 = getelementptr inbounds nuw i8, ptr %96, i64 8
  %103 = xor i64 %101, %97
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 27)
  %105 = mul i64 %104, -7046029288634856825
  %106 = add i64 %105, -8796714831421723037
  br label %107

107:                                              ; preds = %95, %5
  %108 = phi ptr [ %0, %5 ], [ %102, %95 ]
  %109 = phi i64 [ %7, %5 ], [ %106, %95 ]
  %110 = load i64, ptr %108, align 1
  %111 = mul i64 %110, -4417276706812531889
  %112 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 31)
  %113 = mul i64 %112, -7046029288634856825
  %114 = getelementptr inbounds nuw i8, ptr %108, i64 8
  %115 = xor i64 %113, %109
  %116 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 27)
  %117 = mul i64 %116, -7046029288634856825
  %118 = add i64 %117, -8796714831421723037
  %119 = load i8, ptr %114, align 1
  %120 = zext i8 %119 to i64
  %121 = mul i64 %120, 2870177450012600261
  %122 = xor i64 %118, %121
  %123 = tail call i64 @llvm.fshl.i64(i64 %122, i64 %122, i64 11)
  %124 = mul i64 %123, -7046029288634856825
  br label %410

125:                                              ; preds = %5
  %126 = load i64, ptr %0, align 1
  %127 = mul i64 %126, -4417276706812531889
  %128 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 31)
  %129 = mul i64 %128, -7046029288634856825
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %131 = xor i64 %129, %7
  %132 = tail call i64 @llvm.fshl.i64(i64 %131, i64 %131, i64 27)
  %133 = mul i64 %132, -7046029288634856825
  %134 = add i64 %133, -8796714831421723037
  br label %135

135:                                              ; preds = %125, %5
  %136 = phi ptr [ %0, %5 ], [ %130, %125 ]
  %137 = phi i64 [ %7, %5 ], [ %134, %125 ]
  %138 = load i64, ptr %136, align 1
  %139 = mul i64 %138, -4417276706812531889
  %140 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 31)
  %141 = mul i64 %140, -7046029288634856825
  %142 = getelementptr inbounds nuw i8, ptr %136, i64 8
  %143 = xor i64 %141, %137
  %144 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 27)
  %145 = mul i64 %144, -7046029288634856825
  %146 = add i64 %145, -8796714831421723037
  br label %147

147:                                              ; preds = %135, %5
  %148 = phi ptr [ %0, %5 ], [ %142, %135 ]
  %149 = phi i64 [ %7, %5 ], [ %146, %135 ]
  %150 = load i64, ptr %148, align 1
  %151 = mul i64 %150, -4417276706812531889
  %152 = tail call i64 @llvm.fshl.i64(i64 %151, i64 %151, i64 31)
  %153 = mul i64 %152, -7046029288634856825
  %154 = getelementptr inbounds nuw i8, ptr %148, i64 8
  %155 = xor i64 %153, %149
  %156 = tail call i64 @llvm.fshl.i64(i64 %155, i64 %155, i64 27)
  %157 = mul i64 %156, -7046029288634856825
  %158 = add i64 %157, -8796714831421723037
  br label %159

159:                                              ; preds = %147, %5
  %160 = phi ptr [ %0, %5 ], [ %154, %147 ]
  %161 = phi i64 [ %7, %5 ], [ %158, %147 ]
  %162 = load i32, ptr %160, align 1
  %163 = zext i32 %162 to i64
  %164 = mul i64 %163, -7046029288634856825
  %165 = xor i64 %164, %161
  %166 = getelementptr inbounds nuw i8, ptr %160, i64 4
  %167 = tail call i64 @llvm.fshl.i64(i64 %165, i64 %165, i64 23)
  %168 = mul i64 %167, -4417276706812531889
  %169 = add i64 %168, 1609587929392839161
  %170 = load i8, ptr %166, align 1
  %171 = zext i8 %170 to i64
  %172 = mul i64 %171, 2870177450012600261
  %173 = xor i64 %169, %172
  %174 = tail call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 11)
  %175 = mul i64 %174, -7046029288634856825
  br label %410

176:                                              ; preds = %5
  %177 = load i64, ptr %0, align 1
  %178 = mul i64 %177, -4417276706812531889
  %179 = tail call i64 @llvm.fshl.i64(i64 %178, i64 %178, i64 31)
  %180 = mul i64 %179, -7046029288634856825
  %181 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %182 = xor i64 %180, %7
  %183 = tail call i64 @llvm.fshl.i64(i64 %182, i64 %182, i64 27)
  %184 = mul i64 %183, -7046029288634856825
  %185 = add i64 %184, -8796714831421723037
  br label %186

186:                                              ; preds = %176, %5
  %187 = phi ptr [ %0, %5 ], [ %181, %176 ]
  %188 = phi i64 [ %7, %5 ], [ %185, %176 ]
  %189 = load i64, ptr %187, align 1
  %190 = mul i64 %189, -4417276706812531889
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 31)
  %192 = mul i64 %191, -7046029288634856825
  %193 = getelementptr inbounds nuw i8, ptr %187, i64 8
  %194 = xor i64 %192, %188
  %195 = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 27)
  %196 = mul i64 %195, -7046029288634856825
  %197 = add i64 %196, -8796714831421723037
  br label %198

198:                                              ; preds = %186, %5
  %199 = phi ptr [ %0, %5 ], [ %193, %186 ]
  %200 = phi i64 [ %7, %5 ], [ %197, %186 ]
  %201 = load i64, ptr %199, align 1
  %202 = mul i64 %201, -4417276706812531889
  %203 = tail call i64 @llvm.fshl.i64(i64 %202, i64 %202, i64 31)
  %204 = mul i64 %203, -7046029288634856825
  %205 = getelementptr inbounds nuw i8, ptr %199, i64 8
  %206 = xor i64 %204, %200
  %207 = tail call i64 @llvm.fshl.i64(i64 %206, i64 %206, i64 27)
  %208 = mul i64 %207, -7046029288634856825
  %209 = add i64 %208, -8796714831421723037
  %210 = getelementptr inbounds nuw i8, ptr %199, i64 9
  %211 = load i8, ptr %205, align 1
  %212 = zext i8 %211 to i64
  %213 = mul i64 %212, 2870177450012600261
  %214 = xor i64 %209, %213
  %215 = tail call i64 @llvm.fshl.i64(i64 %214, i64 %214, i64 11)
  %216 = mul i64 %215, -7046029288634856825
  %217 = load i8, ptr %210, align 1
  %218 = zext i8 %217 to i64
  %219 = mul i64 %218, 2870177450012600261
  %220 = xor i64 %216, %219
  %221 = tail call i64 @llvm.fshl.i64(i64 %220, i64 %220, i64 11)
  %222 = mul i64 %221, -7046029288634856825
  br label %410

223:                                              ; preds = %5
  %224 = load i64, ptr %0, align 1
  %225 = mul i64 %224, -4417276706812531889
  %226 = tail call i64 @llvm.fshl.i64(i64 %225, i64 %225, i64 31)
  %227 = mul i64 %226, -7046029288634856825
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %229 = xor i64 %227, %7
  %230 = tail call i64 @llvm.fshl.i64(i64 %229, i64 %229, i64 27)
  %231 = mul i64 %230, -7046029288634856825
  %232 = add i64 %231, -8796714831421723037
  br label %233

233:                                              ; preds = %223, %5
  %234 = phi ptr [ %0, %5 ], [ %228, %223 ]
  %235 = phi i64 [ %7, %5 ], [ %232, %223 ]
  %236 = load i64, ptr %234, align 1
  %237 = mul i64 %236, -4417276706812531889
  %238 = tail call i64 @llvm.fshl.i64(i64 %237, i64 %237, i64 31)
  %239 = mul i64 %238, -7046029288634856825
  %240 = getelementptr inbounds nuw i8, ptr %234, i64 8
  %241 = xor i64 %239, %235
  %242 = tail call i64 @llvm.fshl.i64(i64 %241, i64 %241, i64 27)
  %243 = mul i64 %242, -7046029288634856825
  %244 = add i64 %243, -8796714831421723037
  br label %245

245:                                              ; preds = %233, %5
  %246 = phi ptr [ %0, %5 ], [ %240, %233 ]
  %247 = phi i64 [ %7, %5 ], [ %244, %233 ]
  %248 = load i64, ptr %246, align 1
  %249 = mul i64 %248, -4417276706812531889
  %250 = tail call i64 @llvm.fshl.i64(i64 %249, i64 %249, i64 31)
  %251 = mul i64 %250, -7046029288634856825
  %252 = getelementptr inbounds nuw i8, ptr %246, i64 8
  %253 = xor i64 %251, %247
  %254 = tail call i64 @llvm.fshl.i64(i64 %253, i64 %253, i64 27)
  %255 = mul i64 %254, -7046029288634856825
  %256 = add i64 %255, -8796714831421723037
  br label %257

257:                                              ; preds = %245, %5
  %258 = phi ptr [ %0, %5 ], [ %252, %245 ]
  %259 = phi i64 [ %7, %5 ], [ %256, %245 ]
  %260 = load i32, ptr %258, align 1
  %261 = zext i32 %260 to i64
  %262 = mul i64 %261, -7046029288634856825
  %263 = xor i64 %262, %259
  %264 = getelementptr inbounds nuw i8, ptr %258, i64 4
  %265 = tail call i64 @llvm.fshl.i64(i64 %263, i64 %263, i64 23)
  %266 = mul i64 %265, -4417276706812531889
  %267 = add i64 %266, 1609587929392839161
  %268 = getelementptr inbounds nuw i8, ptr %258, i64 5
  %269 = load i8, ptr %264, align 1
  %270 = zext i8 %269 to i64
  %271 = mul i64 %270, 2870177450012600261
  %272 = xor i64 %267, %271
  %273 = tail call i64 @llvm.fshl.i64(i64 %272, i64 %272, i64 11)
  %274 = mul i64 %273, -7046029288634856825
  %275 = load i8, ptr %268, align 1
  %276 = zext i8 %275 to i64
  %277 = mul i64 %276, 2870177450012600261
  %278 = xor i64 %274, %277
  %279 = tail call i64 @llvm.fshl.i64(i64 %278, i64 %278, i64 11)
  %280 = mul i64 %279, -7046029288634856825
  br label %410

281:                                              ; preds = %5
  %282 = load i64, ptr %0, align 1
  %283 = mul i64 %282, -4417276706812531889
  %284 = tail call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 31)
  %285 = mul i64 %284, -7046029288634856825
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %287 = xor i64 %285, %7
  %288 = tail call i64 @llvm.fshl.i64(i64 %287, i64 %287, i64 27)
  %289 = mul i64 %288, -7046029288634856825
  %290 = add i64 %289, -8796714831421723037
  br label %291

291:                                              ; preds = %281, %5
  %292 = phi ptr [ %0, %5 ], [ %286, %281 ]
  %293 = phi i64 [ %7, %5 ], [ %290, %281 ]
  %294 = load i64, ptr %292, align 1
  %295 = mul i64 %294, -4417276706812531889
  %296 = tail call i64 @llvm.fshl.i64(i64 %295, i64 %295, i64 31)
  %297 = mul i64 %296, -7046029288634856825
  %298 = getelementptr inbounds nuw i8, ptr %292, i64 8
  %299 = xor i64 %297, %293
  %300 = tail call i64 @llvm.fshl.i64(i64 %299, i64 %299, i64 27)
  %301 = mul i64 %300, -7046029288634856825
  %302 = add i64 %301, -8796714831421723037
  br label %303

303:                                              ; preds = %291, %5
  %304 = phi ptr [ %0, %5 ], [ %298, %291 ]
  %305 = phi i64 [ %7, %5 ], [ %302, %291 ]
  %306 = load i64, ptr %304, align 1
  %307 = mul i64 %306, -4417276706812531889
  %308 = tail call i64 @llvm.fshl.i64(i64 %307, i64 %307, i64 31)
  %309 = mul i64 %308, -7046029288634856825
  %310 = getelementptr inbounds nuw i8, ptr %304, i64 8
  %311 = xor i64 %309, %305
  %312 = tail call i64 @llvm.fshl.i64(i64 %311, i64 %311, i64 27)
  %313 = mul i64 %312, -7046029288634856825
  %314 = add i64 %313, -8796714831421723037
  %315 = getelementptr inbounds nuw i8, ptr %304, i64 9
  %316 = load i8, ptr %310, align 1
  %317 = zext i8 %316 to i64
  %318 = mul i64 %317, 2870177450012600261
  %319 = xor i64 %314, %318
  %320 = tail call i64 @llvm.fshl.i64(i64 %319, i64 %319, i64 11)
  %321 = mul i64 %320, -7046029288634856825
  %322 = getelementptr inbounds nuw i8, ptr %304, i64 10
  %323 = load i8, ptr %315, align 1
  %324 = zext i8 %323 to i64
  %325 = mul i64 %324, 2870177450012600261
  %326 = xor i64 %321, %325
  %327 = tail call i64 @llvm.fshl.i64(i64 %326, i64 %326, i64 11)
  %328 = mul i64 %327, -7046029288634856825
  %329 = load i8, ptr %322, align 1
  %330 = zext i8 %329 to i64
  %331 = mul i64 %330, 2870177450012600261
  %332 = xor i64 %328, %331
  %333 = tail call i64 @llvm.fshl.i64(i64 %332, i64 %332, i64 11)
  %334 = mul i64 %333, -7046029288634856825
  br label %410

335:                                              ; preds = %5
  %336 = load i64, ptr %0, align 1
  %337 = mul i64 %336, -4417276706812531889
  %338 = tail call i64 @llvm.fshl.i64(i64 %337, i64 %337, i64 31)
  %339 = mul i64 %338, -7046029288634856825
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %341 = xor i64 %339, %7
  %342 = tail call i64 @llvm.fshl.i64(i64 %341, i64 %341, i64 27)
  %343 = mul i64 %342, -7046029288634856825
  %344 = add i64 %343, -8796714831421723037
  br label %345

345:                                              ; preds = %335, %5
  %346 = phi ptr [ %0, %5 ], [ %340, %335 ]
  %347 = phi i64 [ %7, %5 ], [ %344, %335 ]
  %348 = load i64, ptr %346, align 1
  %349 = mul i64 %348, -4417276706812531889
  %350 = tail call i64 @llvm.fshl.i64(i64 %349, i64 %349, i64 31)
  %351 = mul i64 %350, -7046029288634856825
  %352 = getelementptr inbounds nuw i8, ptr %346, i64 8
  %353 = xor i64 %351, %347
  %354 = tail call i64 @llvm.fshl.i64(i64 %353, i64 %353, i64 27)
  %355 = mul i64 %354, -7046029288634856825
  %356 = add i64 %355, -8796714831421723037
  br label %357

357:                                              ; preds = %345, %5
  %358 = phi ptr [ %0, %5 ], [ %352, %345 ]
  %359 = phi i64 [ %7, %5 ], [ %356, %345 ]
  %360 = load i64, ptr %358, align 1
  %361 = mul i64 %360, -4417276706812531889
  %362 = tail call i64 @llvm.fshl.i64(i64 %361, i64 %361, i64 31)
  %363 = mul i64 %362, -7046029288634856825
  %364 = getelementptr inbounds nuw i8, ptr %358, i64 8
  %365 = xor i64 %363, %359
  %366 = tail call i64 @llvm.fshl.i64(i64 %365, i64 %365, i64 27)
  %367 = mul i64 %366, -7046029288634856825
  %368 = add i64 %367, -8796714831421723037
  br label %369

369:                                              ; preds = %357, %5
  %370 = phi ptr [ %0, %5 ], [ %364, %357 ]
  %371 = phi i64 [ %7, %5 ], [ %368, %357 ]
  %372 = load i32, ptr %370, align 1
  %373 = zext i32 %372 to i64
  %374 = mul i64 %373, -7046029288634856825
  %375 = xor i64 %374, %371
  %376 = getelementptr inbounds nuw i8, ptr %370, i64 4
  %377 = tail call i64 @llvm.fshl.i64(i64 %375, i64 %375, i64 23)
  %378 = mul i64 %377, -4417276706812531889
  %379 = add i64 %378, 1609587929392839161
  br label %380

380:                                              ; preds = %369, %5
  %381 = phi ptr [ %0, %5 ], [ %376, %369 ]
  %382 = phi i64 [ %7, %5 ], [ %379, %369 ]
  %383 = getelementptr inbounds nuw i8, ptr %381, i64 1
  %384 = load i8, ptr %381, align 1
  %385 = zext i8 %384 to i64
  %386 = mul i64 %385, 2870177450012600261
  %387 = xor i64 %386, %382
  %388 = tail call i64 @llvm.fshl.i64(i64 %387, i64 %387, i64 11)
  %389 = mul i64 %388, -7046029288634856825
  br label %390

390:                                              ; preds = %380, %5
  %391 = phi ptr [ %0, %5 ], [ %383, %380 ]
  %392 = phi i64 [ %7, %5 ], [ %389, %380 ]
  %393 = getelementptr inbounds nuw i8, ptr %391, i64 1
  %394 = load i8, ptr %391, align 1
  %395 = zext i8 %394 to i64
  %396 = mul i64 %395, 2870177450012600261
  %397 = xor i64 %396, %392
  %398 = tail call i64 @llvm.fshl.i64(i64 %397, i64 %397, i64 11)
  %399 = mul i64 %398, -7046029288634856825
  br label %400

400:                                              ; preds = %390, %5
  %401 = phi ptr [ %0, %5 ], [ %393, %390 ]
  %402 = phi i64 [ %7, %5 ], [ %399, %390 ]
  %403 = load i8, ptr %401, align 1
  %404 = zext i8 %403 to i64
  %405 = mul i64 %404, 2870177450012600261
  %406 = xor i64 %405, %402
  %407 = tail call i64 @llvm.fshl.i64(i64 %406, i64 %406, i64 11)
  %408 = mul i64 %407, -7046029288634856825
  br label %410

409:                                              ; preds = %5
  unreachable

410:                                              ; preds = %5, %30, %75, %107, %159, %198, %257, %303, %400
  %411 = phi i64 [ %334, %303 ], [ %280, %257 ], [ %222, %198 ], [ %175, %159 ], [ %124, %107 ], [ %84, %75 ], [ %40, %30 ], [ %7, %5 ], [ %408, %400 ]
  %412 = lshr i64 %411, 33
  %413 = xor i64 %412, %411
  %414 = mul i64 %413, -4417276706812531889
  %415 = lshr i64 %414, 29
  %416 = xor i64 %415, %414
  %417 = mul i64 %416, 1609587929392839161
  %418 = lshr i64 %417, 32
  %419 = xor i64 %418, %417
  br label %420

420:                                              ; preds = %3, %410
  %421 = phi i64 [ %419, %410 ], [ 0, %3 ]
  ret i64 %421
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_xxh3_64_seed_0to128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 128
  br i1 %4, label %216, label %5

5:                                                ; preds = %3
  %6 = icmp samesign ult i64 %1, 17
  br i1 %6, label %7, label %72

7:                                                ; preds = %5
  %8 = icmp samesign ugt i64 %1, 8
  br i1 %8, label %9, label %27

9:                                                ; preds = %7
  %10 = load i64, ptr %0, align 1
  %11 = add i64 %2, -4734510112055689544
  %12 = xor i64 %10, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = load i64, ptr %14, align 1
  %16 = sub i64 2066345149520216444, %2
  %17 = xor i64 %15, %16
  %18 = zext i64 %12 to i128
  %19 = zext i64 %17 to i128
  %20 = mul nuw i128 %19, %18
  %21 = lshr i128 %20, 64
  %22 = xor i128 %21, %20
  %23 = trunc i128 %22 to i64
  %24 = add i64 %12, %1
  %25 = add i64 %24, %17
  %26 = add i64 %25, %23
  br label %209

27:                                               ; preds = %7
  %28 = icmp samesign ugt i64 %1, 3
  br i1 %28, label %29, label %47

29:                                               ; preds = %27
  %30 = load i32, ptr %0, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %32 = getelementptr inbounds i8, ptr %31, i64 -4
  %33 = load i32, ptr %32, align 1
  %34 = zext i32 %30 to i64
  %35 = zext i32 %33 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or disjoint i64 %36, %34
  %38 = add i64 %2, -4734510112055689544
  %39 = xor i64 %37, %38
  %40 = lshr i64 %39, 51
  %41 = xor i64 %40, %39
  %42 = mul i64 %41, 2654435761
  %43 = add i64 %42, %1
  %44 = lshr i64 %43, 47
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, -4417276706812531889
  br label %209

47:                                               ; preds = %27
  %48 = icmp eq i64 %1, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %47
  %50 = load i8, ptr %0, align 1
  %51 = lshr i64 %1, 1
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 %51
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr i8, ptr %0, i64 %1
  %55 = getelementptr i8, ptr %54, i64 -1
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %50 to i64
  %58 = zext i8 %53 to i64
  %59 = shl nuw nsw i64 %58, 8
  %60 = or disjoint i64 %59, %57
  %61 = zext i8 %56 to i64
  %62 = shl nuw nsw i64 %61, 16
  %63 = or disjoint i64 %60, %62
  %64 = shl nuw nsw i64 %1, 24
  %65 = or disjoint i64 %63, %64
  %66 = add i64 %2, 963444408
  %67 = xor i64 %65, %66
  %68 = mul i64 %67, -7046029288634856825
  br label %209

69:                                               ; preds = %47
  %70 = add i64 %2, -7046029288634856825
  %71 = xor i64 %70, -4734510112055689544
  br label %209

72:                                               ; preds = %5
  %73 = mul i64 %1, -7046029288634856825
  %74 = icmp samesign ugt i64 %1, 32
  br i1 %74, label %75, label %177

75:                                               ; preds = %72
  %76 = icmp samesign ugt i64 %1, 64
  br i1 %76, label %77, label %144

77:                                               ; preds = %75
  %78 = icmp samesign ugt i64 %1, 96
  br i1 %78, label %79, label %111

79:                                               ; preds = %77
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %81 = load i64, ptr %80, align 1
  %82 = getelementptr i8, ptr %0, i64 56
  %83 = load i64, ptr %82, align 1
  %84 = add i64 %2, 4554437623014685352
  %85 = xor i64 %81, %84
  %86 = sub i64 2111919702937427193, %2
  %87 = xor i64 %83, %86
  %88 = zext i64 %85 to i128
  %89 = zext i64 %87 to i128
  %90 = mul nuw i128 %89, %88
  %91 = lshr i128 %90, 64
  %92 = xor i128 %91, %90
  %93 = trunc i128 %92 to i64
  %94 = add i64 %73, %93
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %96 = getelementptr inbounds i8, ptr %95, i64 -64
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr i8, ptr %95, i64 -56
  %99 = load i64, ptr %98, align 1
  %100 = add i64 %2, 3556072174620004746
  %101 = xor i64 %97, %100
  %102 = sub i64 7238261902898274248, %2
  %103 = xor i64 %99, %102
  %104 = zext i64 %101 to i128
  %105 = zext i64 %103 to i128
  %106 = mul nuw i128 %105, %104
  %107 = lshr i128 %106, 64
  %108 = xor i128 %107, %106
  %109 = trunc i128 %108 to i64
  %110 = add i64 %94, %109
  br label %111

111:                                              ; preds = %79, %77
  %112 = phi i64 [ %110, %79 ], [ %73, %77 ]
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %114 = load i64, ptr %113, align 1
  %115 = getelementptr i8, ptr %0, i64 40
  %116 = load i64, ptr %115, align 1
  %117 = add i64 %2, -3818837453329782724
  %118 = xor i64 %114, %117
  %119 = sub i64 -6688317018830679928, %2
  %120 = xor i64 %116, %119
  %121 = zext i64 %118 to i128
  %122 = zext i64 %120 to i128
  %123 = mul nuw i128 %122, %121
  %124 = lshr i128 %123, 64
  %125 = xor i128 %124, %123
  %126 = trunc i128 %125 to i64
  %127 = add i64 %112, %126
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %129 = getelementptr inbounds i8, ptr %128, i64 -48
  %130 = load i64, ptr %129, align 1
  %131 = getelementptr i8, ptr %128, i64 -40
  %132 = load i64, ptr %131, align 1
  %133 = add i64 %2, 5690594596133299313
  %134 = xor i64 %130, %133
  %135 = sub i64 -2833645246901970632, %2
  %136 = xor i64 %132, %135
  %137 = zext i64 %134 to i128
  %138 = zext i64 %136 to i128
  %139 = mul nuw i128 %138, %137
  %140 = lshr i128 %139, 64
  %141 = xor i128 %140, %139
  %142 = trunc i128 %141 to i64
  %143 = add i64 %127, %142
  br label %144

144:                                              ; preds = %111, %75
  %145 = phi i64 [ %143, %111 ], [ %73, %75 ]
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr i8, ptr %0, i64 24
  %149 = load i64, ptr %148, align 1
  %150 = add i64 %2, 8711581037947681227
  %151 = xor i64 %147, %150
  %152 = sub i64 2410270004345854594, %2
  %153 = xor i64 %149, %152
  %154 = zext i64 %151 to i128
  %155 = zext i64 %153 to i128
  %156 = mul nuw i128 %155, %154
  %157 = lshr i128 %156, 64
  %158 = xor i128 %157, %156
  %159 = trunc i128 %158 to i64
  %160 = add i64 %145, %159
  %161 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %162 = getelementptr inbounds i8, ptr %161, i64 -32
  %163 = load i64, ptr %162, align 1
  %164 = getelementptr i8, ptr %161, i64 -24
  %165 = load i64, ptr %164, align 1
  %166 = add i64 %2, -8204357891075471176
  %167 = xor i64 %163, %166
  %168 = sub i64 5487137525590930912, %2
  %169 = xor i64 %165, %168
  %170 = zext i64 %167 to i128
  %171 = zext i64 %169 to i128
  %172 = mul nuw i128 %171, %170
  %173 = lshr i128 %172, 64
  %174 = xor i128 %173, %172
  %175 = trunc i128 %174 to i64
  %176 = add i64 %160, %175
  br label %177

177:                                              ; preds = %144, %72
  %178 = phi i64 [ %176, %144 ], [ %73, %72 ]
  %179 = load i64, ptr %0, align 1
  %180 = getelementptr i8, ptr %0, i64 8
  %181 = load i64, ptr %180, align 1
  %182 = add i64 %2, -4734510112055689544
  %183 = xor i64 %179, %182
  %184 = sub i64 2066345149520216444, %2
  %185 = xor i64 %181, %184
  %186 = zext i64 %183 to i128
  %187 = zext i64 %185 to i128
  %188 = mul nuw i128 %187, %186
  %189 = lshr i128 %188, 64
  %190 = xor i128 %189, %188
  %191 = trunc i128 %190 to i64
  %192 = add i64 %178, %191
  %193 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %194 = getelementptr inbounds i8, ptr %193, i64 -16
  %195 = load i64, ptr %194, align 1
  %196 = getelementptr i8, ptr %193, i64 -8
  %197 = load i64, ptr %196, align 1
  %198 = add i64 %2, -2623469361688619810
  %199 = xor i64 %195, %198
  %200 = sub i64 2262974939099578482, %2
  %201 = xor i64 %197, %200
  %202 = zext i64 %199 to i128
  %203 = zext i64 %201 to i128
  %204 = mul nuw i128 %203, %202
  %205 = lshr i128 %204, 64
  %206 = xor i128 %205, %204
  %207 = trunc i128 %206 to i64
  %208 = add i64 %192, %207
  br label %209

209:                                              ; preds = %9, %29, %49, %69, %177
  %210 = phi i64 [ %208, %177 ], [ %71, %69 ], [ %68, %49 ], [ %46, %29 ], [ %26, %9 ]
  %211 = lshr i64 %210, 37
  %212 = xor i64 %211, %210
  %213 = mul i64 %212, 1609587929392839161
  %214 = lshr i64 %213, 32
  %215 = xor i64 %214, %213
  br label %216

216:                                              ; preds = %3, %209
  %217 = phi i64 [ %215, %209 ], [ 0, %3 ]
  ret i64 %217
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_xxh3_128_seed_0to16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #1 {
  %5 = icmp ugt i64 %1, 16
  br i1 %5, label %129, label %6

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %41

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
  br label %120

41:                                               ; preds = %6
  %42 = icmp samesign ugt i64 %1, 3
  br i1 %42, label %43, label %76

43:                                               ; preds = %41
  %44 = load i32, ptr %0, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %46 = getelementptr inbounds i8, ptr %45, i64 -4
  %47 = load i32, ptr %46, align 1
  %48 = zext i32 %44 to i64
  %49 = zext i32 %47 to i64
  %50 = shl nuw i64 %49, 32
  %51 = or disjoint i64 %50, %48
  %52 = tail call noundef i64 @llvm.bswap.i64(i64 %51)
  %53 = add i64 %2, -4734510112055689544
  %54 = xor i64 %51, %53
  %55 = sub i64 2066345149520216444, %2
  %56 = xor i64 %52, %55
  %57 = lshr i64 %54, 51
  %58 = xor i64 %57, %54
  %59 = mul i64 %58, 2654435761
  %60 = add i64 %59, %1
  %61 = lshr i64 %60, 47
  %62 = xor i64 %61, %60
  %63 = mul i64 %62, -4417276706812531889
  %64 = lshr i64 %56, 47
  %65 = xor i64 %64, %56
  %66 = mul i64 %65, -7046029288634856825
  %67 = sub i64 %66, %1
  %68 = lshr i64 %67, 43
  %69 = xor i64 %68, %67
  %70 = mul i64 %69, -8796714831421723037
  %71 = lshr i64 %63, 37
  %72 = xor i64 %71, %63
  %73 = mul i64 %72, 1609587929392839161
  %74 = lshr i64 %73, 32
  %75 = xor i64 %74, %73
  br label %120

76:                                               ; preds = %41
  %77 = icmp eq i64 %1, 0
  br i1 %77, label %110, label %78

78:                                               ; preds = %76
  %79 = load i8, ptr %0, align 1
  %80 = lshr i64 %1, 1
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr i8, ptr %0, i64 %1
  %84 = getelementptr i8, ptr %83, i64 -1
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %79 to i32
  %87 = zext i8 %82 to i32
  %88 = shl nuw nsw i32 %87, 8
  %89 = or disjoint i32 %88, %86
  %90 = zext i8 %85 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = or disjoint i32 %89, %91
  %93 = trunc nuw nsw i64 %1 to i32
  %94 = shl nuw nsw i32 %93, 24
  %95 = or disjoint i32 %92, %94
  %96 = tail call range(i32 1, 0) i32 @llvm.bswap.i32(i32 range(i32 16777216, 67108864) %95)
  %97 = zext nneg i32 %95 to i64
  %98 = add i64 %2, 963444408
  %99 = xor i64 %98, %97
  %100 = zext i32 %96 to i64
  %101 = sub i64 3192628259, %2
  %102 = xor i64 %101, %100
  %103 = mul i64 %99, -7046029288634856825
  %104 = mul i64 %102, 2870177450012600261
  %105 = lshr i64 %103, 37
  %106 = xor i64 %105, %103
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %120

110:                                              ; preds = %76
  %111 = add i64 %2, -7046029288634856825
  %112 = xor i64 %111, -4734510112055689544
  %113 = lshr i64 %112, 37
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, 1609587929392839161
  %116 = lshr i64 %115, 32
  %117 = xor i64 %116, %115
  %118 = sub i64 -4417276706812531889, %2
  %119 = xor i64 %118, 2066345149520216444
  br label %120

120:                                              ; preds = %8, %43, %78, %110
  %121 = phi i64 [ %119, %110 ], [ %104, %78 ], [ %70, %43 ], [ %35, %8 ]
  %122 = phi i64 [ %117, %110 ], [ %109, %78 ], [ %75, %43 ], [ %40, %8 ]
  %123 = lshr i64 %121, 37
  %124 = xor i64 %123, %121
  %125 = mul i64 %124, 1609587929392839161
  %126 = lshr i64 %125, 32
  %127 = xor i64 %126, %125
  store i64 %122, ptr %3, align 8
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %127, ptr %128, align 8
  br label %129

129:                                              ; preds = %4, %120
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_len_17to128_64b: argument 0"}
!7 = distinct !{!7, !"XXH3_len_17to128_64b"}
