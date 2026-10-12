; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5176062/api_xxh32_len33/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5176062/api_xxh32_len33/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %0 to i64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %6 = icmp ugt i64 %1, 15
  br i1 %6, label %7, label %59

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i64 -16
  %9 = add i32 %2, 606290984
  %10 = add i32 %2, -2048144777
  %11 = add i32 %2, 1640531535
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi ptr [ %0, %7 ], [ %41, %12 ]
  %14 = phi i32 [ %9, %7 ], [ %22, %12 ]
  %15 = phi i32 [ %10, %7 ], [ %28, %12 ]
  %16 = phi i32 [ %2, %7 ], [ %34, %12 ]
  %17 = phi i32 [ %11, %7 ], [ %40, %12 ]
  %18 = load i32, ptr %13, align 4
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %14
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %15
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %16
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr inbounds nuw i8, ptr %13, i64 12
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %17
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %42 = icmp ugt ptr %41, %8
  br i1 %42, label %43, label %12

43:                                               ; preds = %12
  %44 = mul i32 %21, 1013904226
  %45 = lshr i32 %22, 31
  %46 = mul i32 %27, 465361024
  %47 = lshr i32 %28, 25
  %48 = mul i32 %33, 2006650880
  %49 = lshr i32 %34, 20
  %50 = mul i32 %39, -423362560
  %51 = lshr i32 %40, 14
  %52 = or disjoint i32 %45, %44
  %53 = add i32 %52, %46
  %54 = add i32 %53, %47
  %55 = add i32 %54, %48
  %56 = add i32 %55, %49
  %57 = add i32 %56, %50
  %58 = add i32 %57, %51
  br label %61

59:                                               ; preds = %3
  %60 = add i32 %2, 374761393
  br label %61

61:                                               ; preds = %59, %43
  %62 = phi i32 [ %58, %43 ], [ %60, %59 ]
  %63 = phi ptr [ %41, %43 ], [ %0, %59 ]
  %64 = trunc i64 %1 to i32
  %65 = add i32 %62, %64
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %67 = icmp ugt ptr %66, %5
  br i1 %67, label %68, label %97

68:                                               ; preds = %97, %61
  %69 = phi i32 [ %65, %61 ], [ %105, %97 ]
  %70 = phi ptr [ %63, %61 ], [ %98, %97 ]
  %71 = icmp ult ptr %70, %5
  br i1 %71, label %72, label %168

72:                                               ; preds = %68
  %73 = ptrtoint ptr %70 to i64
  %74 = add i64 %1, %4
  %75 = sub i64 %74, %73
  %76 = and i64 %75, 7
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %72, %78
  %79 = phi ptr [ %88, %78 ], [ %70, %72 ]
  %80 = phi i32 [ %87, %78 ], [ %69, %72 ]
  %81 = phi i64 [ %89, %78 ], [ 0, %72 ]
  %82 = load i8, ptr %79, align 1
  %83 = zext i8 %82 to i32
  %84 = mul i32 %83, 374761393
  %85 = add i32 %84, %80
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 11)
  %87 = mul i32 %86, -1640531535
  %88 = getelementptr inbounds nuw i8, ptr %79, i64 1
  %89 = add i64 %81, 1
  %90 = icmp eq i64 %89, %76
  br i1 %90, label %91, label %78

91:                                               ; preds = %78, %72
  %92 = phi ptr [ %70, %72 ], [ %88, %78 ]
  %93 = phi i32 [ %69, %72 ], [ %87, %78 ]
  %94 = phi i32 [ poison, %72 ], [ %87, %78 ]
  %95 = sub i64 %73, %74
  %96 = icmp ugt i64 %95, -8
  br i1 %96, label %168, label %108

97:                                               ; preds = %61, %97
  %98 = phi ptr [ %106, %97 ], [ %66, %61 ]
  %99 = phi ptr [ %98, %97 ], [ %63, %61 ]
  %100 = phi i32 [ %105, %97 ], [ %65, %61 ]
  %101 = load i32, ptr %99, align 4
  %102 = mul i32 %101, -1028477379
  %103 = add i32 %102, %100
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 17)
  %105 = mul i32 %104, 668265263
  %106 = getelementptr inbounds nuw i8, ptr %98, i64 4
  %107 = icmp ugt ptr %106, %5
  br i1 %107, label %68, label %97

108:                                              ; preds = %91, %108
  %109 = phi ptr [ %166, %108 ], [ %92, %91 ]
  %110 = phi i32 [ %165, %108 ], [ %93, %91 ]
  %111 = load i8, ptr %109, align 1
  %112 = zext i8 %111 to i32
  %113 = mul i32 %112, 374761393
  %114 = add i32 %113, %110
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 11)
  %116 = mul i32 %115, -1640531535
  %117 = getelementptr inbounds nuw i8, ptr %109, i64 1
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = mul i32 %119, 374761393
  %121 = add i32 %120, %116
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 11)
  %123 = mul i32 %122, -1640531535
  %124 = getelementptr inbounds nuw i8, ptr %109, i64 2
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = mul i32 %126, 374761393
  %128 = add i32 %127, %123
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 11)
  %130 = mul i32 %129, -1640531535
  %131 = getelementptr inbounds nuw i8, ptr %109, i64 3
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = mul i32 %133, 374761393
  %135 = add i32 %134, %130
  %136 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 11)
  %137 = mul i32 %136, -1640531535
  %138 = getelementptr inbounds nuw i8, ptr %109, i64 4
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = mul i32 %140, 374761393
  %142 = add i32 %141, %137
  %143 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 11)
  %144 = mul i32 %143, -1640531535
  %145 = getelementptr inbounds nuw i8, ptr %109, i64 5
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = mul i32 %147, 374761393
  %149 = add i32 %148, %144
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 11)
  %151 = mul i32 %150, -1640531535
  %152 = getelementptr inbounds nuw i8, ptr %109, i64 6
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = mul i32 %154, 374761393
  %156 = add i32 %155, %151
  %157 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 11)
  %158 = mul i32 %157, -1640531535
  %159 = getelementptr inbounds nuw i8, ptr %109, i64 7
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = mul i32 %161, 374761393
  %163 = add i32 %162, %158
  %164 = tail call i32 @llvm.fshl.i32(i32 %163, i32 %163, i32 11)
  %165 = mul i32 %164, -1640531535
  %166 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %167 = icmp ult ptr %166, %5
  br i1 %167, label %108, label %168

168:                                              ; preds = %91, %108, %68
  %169 = phi i32 [ %69, %68 ], [ %94, %91 ], [ %165, %108 ]
  %170 = lshr i32 %169, 15
  %171 = xor i32 %170, %169
  %172 = mul i32 %171, -2048144777
  %173 = lshr i32 %172, 13
  %174 = xor i32 %173, %172
  %175 = mul i32 %174, -1028477379
  %176 = lshr i32 %175, 16
  %177 = xor i32 %176, %175
  ret i32 %177
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %0 to i64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %6 = icmp ugt i64 %1, 31
  br i1 %6, label %7, label %91

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i64 -32
  %9 = add i64 %2, 6983438078262162902
  %10 = add i64 %2, -4417276706812531889
  %11 = add i64 %2, 7046029288634856825
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i64 [ %9, %7 ], [ %23, %12 ]
  %14 = phi i64 [ %10, %7 ], [ %29, %12 ]
  %15 = phi i64 [ %2, %7 ], [ %35, %12 ]
  %16 = phi i64 [ %11, %7 ], [ %41, %12 ]
  %17 = phi ptr [ %0, %7 ], [ %39, %12 ]
  %18 = load i64, ptr %17, align 8
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %13
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %22 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = load i64, ptr %21, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %14
  %27 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %28 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = load i64, ptr %27, align 8
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %17, i64 24
  %34 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = load i64, ptr %33, align 8
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %16
  %39 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %40 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = icmp ugt ptr %39, %8
  br i1 %42, label %43, label %12

43:                                               ; preds = %12
  %44 = mul i64 %22, 4354685496439837966
  %45 = lshr i64 %23, 63
  %46 = mul i64 %28, 1998710666506355584
  %47 = lshr i64 %29, 57
  %48 = mul i64 %34, 8618509107074723840
  %49 = lshr i64 %35, 52
  %50 = mul i64 %40, -1817739358504222720
  %51 = lshr i64 %41, 46
  %52 = or disjoint i64 %45, %44
  %53 = add i64 %52, %46
  %54 = add i64 %53, %47
  %55 = add i64 %54, %48
  %56 = add i64 %55, %49
  %57 = add i64 %56, %50
  %58 = add i64 %57, %51
  %59 = mul i64 %22, -2381459717836149591
  %60 = mul i64 %22, -8665851108926685184
  %61 = lshr i64 %59, 33
  %62 = or disjoint i64 %61, %60
  %63 = mul i64 %62, -7046029288634856825
  %64 = xor i64 %58, %63
  %65 = mul i64 %64, -7046029288634856825
  %66 = add i64 %65, -8796714831421723037
  %67 = mul i64 %28, -2381459717836149591
  %68 = mul i64 %28, -8665851108926685184
  %69 = lshr i64 %67, 33
  %70 = or disjoint i64 %69, %68
  %71 = mul i64 %70, -7046029288634856825
  %72 = xor i64 %66, %71
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  %75 = mul i64 %34, -2381459717836149591
  %76 = mul i64 %34, -8665851108926685184
  %77 = lshr i64 %75, 33
  %78 = or disjoint i64 %77, %76
  %79 = mul i64 %78, -7046029288634856825
  %80 = xor i64 %74, %79
  %81 = mul i64 %80, -7046029288634856825
  %82 = add i64 %81, -8796714831421723037
  %83 = mul i64 %40, -2381459717836149591
  %84 = mul i64 %40, -8665851108926685184
  %85 = lshr i64 %83, 33
  %86 = or disjoint i64 %85, %84
  %87 = mul i64 %86, -7046029288634856825
  %88 = xor i64 %82, %87
  %89 = mul i64 %88, -7046029288634856825
  %90 = add i64 %89, -8796714831421723037
  br label %93

91:                                               ; preds = %3
  %92 = add i64 %2, 2870177450012600261
  br label %93

93:                                               ; preds = %91, %43
  %94 = phi i64 [ %90, %43 ], [ %92, %91 ]
  %95 = phi ptr [ %39, %43 ], [ %0, %91 ]
  %96 = add i64 %94, %1
  %97 = getelementptr inbounds nuw i8, ptr %95, i64 8
  %98 = icmp ugt ptr %97, %5
  br i1 %98, label %115, label %99

99:                                               ; preds = %93, %99
  %100 = phi ptr [ %113, %99 ], [ %97, %93 ]
  %101 = phi ptr [ %100, %99 ], [ %95, %93 ]
  %102 = phi i64 [ %112, %99 ], [ %96, %93 ]
  %103 = load i64, ptr %101, align 8
  %104 = mul i64 %103, -4417276706812531889
  %105 = mul i64 %103, -7788283243316379648
  %106 = lshr i64 %104, 33
  %107 = or disjoint i64 %106, %105
  %108 = mul i64 %107, -7046029288634856825
  %109 = xor i64 %108, %102
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 27)
  %111 = mul i64 %110, -7046029288634856825
  %112 = add i64 %111, -8796714831421723037
  %113 = getelementptr inbounds nuw i8, ptr %100, i64 8
  %114 = icmp ugt ptr %113, %5
  br i1 %114, label %115, label %99

115:                                              ; preds = %99, %93
  %116 = phi i64 [ %96, %93 ], [ %112, %99 ]
  %117 = phi ptr [ %95, %93 ], [ %100, %99 ]
  %118 = getelementptr inbounds nuw i8, ptr %117, i64 4
  %119 = icmp ugt ptr %118, %5
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load i32, ptr %117, align 4
  %122 = zext i32 %121 to i64
  %123 = mul i64 %122, -7046029288634856825
  %124 = xor i64 %123, %116
  %125 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 23)
  %126 = mul i64 %125, -4417276706812531889
  %127 = add i64 %126, 1609587929392839161
  br label %128

128:                                              ; preds = %120, %115
  %129 = phi i64 [ %127, %120 ], [ %116, %115 ]
  %130 = phi ptr [ %118, %120 ], [ %117, %115 ]
  %131 = icmp ult ptr %130, %5
  br i1 %131, label %132, label %217

132:                                              ; preds = %128
  %133 = ptrtoint ptr %130 to i64
  %134 = add i64 %1, %4
  %135 = sub i64 %134, %133
  %136 = and i64 %135, 7
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %132, %138
  %139 = phi ptr [ %148, %138 ], [ %130, %132 ]
  %140 = phi i64 [ %147, %138 ], [ %129, %132 ]
  %141 = phi i64 [ %149, %138 ], [ 0, %132 ]
  %142 = load i8, ptr %139, align 1
  %143 = zext i8 %142 to i64
  %144 = mul i64 %143, 2870177450012600261
  %145 = xor i64 %144, %140
  %146 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 11)
  %147 = mul i64 %146, -7046029288634856825
  %148 = getelementptr inbounds nuw i8, ptr %139, i64 1
  %149 = add i64 %141, 1
  %150 = icmp eq i64 %149, %136
  br i1 %150, label %151, label %138

151:                                              ; preds = %138, %132
  %152 = phi ptr [ %130, %132 ], [ %148, %138 ]
  %153 = phi i64 [ %129, %132 ], [ %147, %138 ]
  %154 = phi i64 [ poison, %132 ], [ %147, %138 ]
  %155 = sub i64 %133, %134
  %156 = icmp ugt i64 %155, -8
  br i1 %156, label %217, label %157

157:                                              ; preds = %151, %157
  %158 = phi ptr [ %215, %157 ], [ %152, %151 ]
  %159 = phi i64 [ %214, %157 ], [ %153, %151 ]
  %160 = load i8, ptr %158, align 1
  %161 = zext i8 %160 to i64
  %162 = mul i64 %161, 2870177450012600261
  %163 = xor i64 %162, %159
  %164 = tail call i64 @llvm.fshl.i64(i64 %163, i64 %163, i64 11)
  %165 = mul i64 %164, -7046029288634856825
  %166 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i64
  %169 = mul i64 %168, 2870177450012600261
  %170 = xor i64 %169, %165
  %171 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 11)
  %172 = mul i64 %171, -7046029288634856825
  %173 = getelementptr inbounds nuw i8, ptr %158, i64 2
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i64
  %176 = mul i64 %175, 2870177450012600261
  %177 = xor i64 %176, %172
  %178 = tail call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 11)
  %179 = mul i64 %178, -7046029288634856825
  %180 = getelementptr inbounds nuw i8, ptr %158, i64 3
  %181 = load i8, ptr %180, align 1
  %182 = zext i8 %181 to i64
  %183 = mul i64 %182, 2870177450012600261
  %184 = xor i64 %183, %179
  %185 = tail call i64 @llvm.fshl.i64(i64 %184, i64 %184, i64 11)
  %186 = mul i64 %185, -7046029288634856825
  %187 = getelementptr inbounds nuw i8, ptr %158, i64 4
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i64
  %190 = mul i64 %189, 2870177450012600261
  %191 = xor i64 %190, %186
  %192 = tail call i64 @llvm.fshl.i64(i64 %191, i64 %191, i64 11)
  %193 = mul i64 %192, -7046029288634856825
  %194 = getelementptr inbounds nuw i8, ptr %158, i64 5
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i64
  %197 = mul i64 %196, 2870177450012600261
  %198 = xor i64 %197, %193
  %199 = tail call i64 @llvm.fshl.i64(i64 %198, i64 %198, i64 11)
  %200 = mul i64 %199, -7046029288634856825
  %201 = getelementptr inbounds nuw i8, ptr %158, i64 6
  %202 = load i8, ptr %201, align 1
  %203 = zext i8 %202 to i64
  %204 = mul i64 %203, 2870177450012600261
  %205 = xor i64 %204, %200
  %206 = tail call i64 @llvm.fshl.i64(i64 %205, i64 %205, i64 11)
  %207 = mul i64 %206, -7046029288634856825
  %208 = getelementptr inbounds nuw i8, ptr %158, i64 7
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i64
  %211 = mul i64 %210, 2870177450012600261
  %212 = xor i64 %211, %207
  %213 = tail call i64 @llvm.fshl.i64(i64 %212, i64 %212, i64 11)
  %214 = mul i64 %213, -7046029288634856825
  %215 = getelementptr inbounds nuw i8, ptr %158, i64 8
  %216 = icmp ult ptr %215, %5
  br i1 %216, label %157, label %217

217:                                              ; preds = %151, %157, %128
  %218 = phi i64 [ %129, %128 ], [ %154, %151 ], [ %214, %157 ]
  %219 = lshr i64 %218, 33
  %220 = xor i64 %219, %218
  %221 = mul i64 %220, -4417276706812531889
  %222 = lshr i64 %221, 29
  %223 = xor i64 %222, %221
  %224 = mul i64 %223, 1609587929392839161
  %225 = lshr i64 %224, 32
  %226 = xor i64 %225, %224
  ret i64 %226
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #1 {
  %1 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #10
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #11
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #1 {
  %1 = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #10
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr noundef writeonly initializes((0, 32)) %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %3, align 8
  %4 = add i32 %1, 606290984
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %5, align 4
  %6 = add i32 %1, -2048144777
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %8, align 4
  %9 = add i32 %1, 1640531535
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %9, ptr %10, align 8
  store i64 0, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %11, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr noundef writeonly initializes((0, 52)) %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %3, align 8
  %4 = add i64 %1, 6983438078262162902
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %5, align 8
  %6 = add i64 %1, -4417276706812531889
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %8, align 8
  %9 = add i64 %1, 7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %9, ptr %10, align 8
  store i64 0, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %5 = load i64, ptr %0, align 8
  %6 = add i64 %5, %2
  store i64 %6, ptr %0, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = add i64 %2, %9
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr align 1 %1, i64 %2, i1 false)
  %15 = trunc i64 %2 to i32
  %16 = add i32 %8, %15
  br label %110

17:                                               ; preds = %3
  %18 = icmp eq i32 %8, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 %9
  %22 = sub i32 16, %8
  %23 = zext i32 %22 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %1, i64 %23, i1 false)
  %24 = load i32, ptr %20, align 4
  %25 = mul i32 %24, -2048144777
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  store i32 %30, ptr %26, align 4
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, -2048144777
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, %33
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  store i32 %38, ptr %34, align 8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, -2048144777
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  store i32 %46, ptr %42, align 4
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, -2048144777
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, %49
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 13)
  %54 = mul i32 %53, -1640531535
  store i32 %54, ptr %50, align 8
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 %23
  store i32 0, ptr %7, align 4
  br label %56

56:                                               ; preds = %19, %17
  %57 = phi ptr [ %55, %19 ], [ %1, %17 ]
  %58 = getelementptr inbounds i8, ptr %4, i64 -16
  %59 = icmp ugt ptr %57, %58
  br i1 %59, label %101, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %68 = load i32, ptr %67, align 8
  br label %69

69:                                               ; preds = %69, %60
  %70 = phi ptr [ %57, %60 ], [ %98, %69 ]
  %71 = phi i32 [ %62, %60 ], [ %79, %69 ]
  %72 = phi i32 [ %64, %60 ], [ %85, %69 ]
  %73 = phi i32 [ %66, %60 ], [ %91, %69 ]
  %74 = phi i32 [ %68, %60 ], [ %97, %69 ]
  %75 = load i32, ptr %70, align 4
  %76 = mul i32 %75, -2048144777
  %77 = add i32 %76, %71
  %78 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 13)
  %79 = mul i32 %78, -1640531535
  %80 = getelementptr inbounds nuw i8, ptr %70, i64 4
  %81 = load i32, ptr %80, align 4
  %82 = mul i32 %81, -2048144777
  %83 = add i32 %82, %72
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 13)
  %85 = mul i32 %84, -1640531535
  %86 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %87 = load i32, ptr %86, align 4
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %73
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = getelementptr inbounds nuw i8, ptr %70, i64 12
  %93 = load i32, ptr %92, align 4
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %74
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = getelementptr inbounds nuw i8, ptr %70, i64 16
  %99 = icmp ugt ptr %98, %58
  br i1 %99, label %100, label %69

100:                                              ; preds = %69
  store i32 %79, ptr %61, align 4
  store i32 %85, ptr %63, align 8
  store i32 %91, ptr %65, align 4
  store i32 %97, ptr %67, align 8
  br label %101

101:                                              ; preds = %100, %56
  %102 = phi ptr [ %98, %100 ], [ %57, %56 ]
  %103 = icmp ult ptr %102, %4
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %106 = ptrtoint ptr %4 to i64
  %107 = ptrtoint ptr %102 to i64
  %108 = sub i64 %106, %107
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %105, ptr nonnull align 1 %102, i64 %108, i1 false)
  %109 = trunc i64 %108 to i32
  br label %110

110:                                              ; preds = %104, %12
  %111 = phi i32 [ %16, %12 ], [ %109, %104 ]
  store i32 %111, ptr %7, align 4
  br label %112

112:                                              ; preds = %110, %101
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %8 = load i64, ptr %0, align 8
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = trunc i64 %8 to i32
  %33 = add i32 %31, %32
  %34 = icmp ult i32 %4, 4
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %41

37:                                               ; preds = %41, %30
  %38 = phi ptr [ %2, %30 ], [ %42, %41 ]
  %39 = phi i32 [ %33, %30 ], [ %49, %41 ]
  %40 = icmp ult ptr %38, %7
  br i1 %40, label %52, label %63

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %50, %41 ], [ %36, %35 ]
  %43 = phi i32 [ %49, %41 ], [ %33, %35 ]
  %44 = phi ptr [ %42, %41 ], [ %2, %35 ]
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, -1028477379
  %47 = add i32 %46, %43
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %49 = mul i32 %48, 668265263
  %50 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %51 = icmp ugt ptr %50, %7
  br i1 %51, label %37, label %41

52:                                               ; preds = %37, %52
  %53 = phi i32 [ %60, %52 ], [ %39, %37 ]
  %54 = phi ptr [ %61, %52 ], [ %38, %37 ]
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = mul i32 %56, 374761393
  %58 = add i32 %57, %53
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 11)
  %60 = mul i32 %59, -1640531535
  %61 = getelementptr inbounds nuw i8, ptr %54, i64 1
  %62 = icmp ult ptr %61, %7
  br i1 %62, label %52, label %63

63:                                               ; preds = %52, %37
  %64 = phi i32 [ %39, %37 ], [ %60, %52 ]
  %65 = lshr i32 %64, 15
  %66 = xor i32 %65, %64
  %67 = mul i32 %66, -2048144777
  %68 = lshr i32 %67, 13
  %69 = xor i32 %68, %67
  %70 = mul i32 %69, -1028477379
  %71 = lshr i32 %70, 16
  %72 = xor i32 %71, %70
  ret i32 %72
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %5 = load i64, ptr %0, align 8
  %6 = add i64 %5, %2
  store i64 %6, ptr %0, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = load i32, ptr %7, align 8
  %9 = zext i32 %8 to i64
  %10 = add i64 %2, %9
  %11 = icmp ult i64 %10, 32
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr align 1 %1, i64 %2, i1 false)
  %15 = trunc i64 %2 to i32
  %16 = add i32 %8, %15
  br label %111

17:                                               ; preds = %3
  %18 = icmp eq i32 %8, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 %9
  %22 = sub i32 32, %8
  %23 = zext i32 %22 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr align 1 %1, i64 %23, i1 false)
  %24 = load i64, ptr %20, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %27, %25
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  store i64 %30, ptr %26, align 8
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %32 = load i64, ptr %31, align 8
  %33 = mul i64 %32, -4417276706812531889
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, %33
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  store i64 %38, ptr %34, align 8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %40 = load i64, ptr %39, align 8
  %41 = mul i64 %40, -4417276706812531889
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %43, %41
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  store i64 %46, ptr %42, align 8
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %48 = load i64, ptr %47, align 8
  %49 = mul i64 %48, -4417276706812531889
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, %49
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  store i64 %54, ptr %50, align 8
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 %23
  store i32 0, ptr %7, align 8
  br label %56

56:                                               ; preds = %19, %17
  %57 = phi ptr [ %55, %19 ], [ %1, %17 ]
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 32
  %59 = icmp ugt ptr %58, %4
  br i1 %59, label %102, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %4, i64 -32
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %67 = load i64, ptr %66, align 8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %69 = load i64, ptr %68, align 8
  br label %70

70:                                               ; preds = %70, %60
  %71 = phi ptr [ %57, %60 ], [ %99, %70 ]
  %72 = phi i64 [ %63, %60 ], [ %80, %70 ]
  %73 = phi i64 [ %65, %60 ], [ %86, %70 ]
  %74 = phi i64 [ %67, %60 ], [ %92, %70 ]
  %75 = phi i64 [ %69, %60 ], [ %98, %70 ]
  %76 = load i64, ptr %71, align 8
  %77 = mul i64 %76, -4417276706812531889
  %78 = add i64 %77, %72
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 31)
  %80 = mul i64 %79, -7046029288634856825
  %81 = getelementptr inbounds nuw i8, ptr %71, i64 8
  %82 = load i64, ptr %81, align 8
  %83 = mul i64 %82, -4417276706812531889
  %84 = add i64 %83, %73
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 31)
  %86 = mul i64 %85, -7046029288634856825
  %87 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %88 = load i64, ptr %87, align 8
  %89 = mul i64 %88, -4417276706812531889
  %90 = add i64 %89, %74
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 31)
  %92 = mul i64 %91, -7046029288634856825
  %93 = getelementptr inbounds nuw i8, ptr %71, i64 24
  %94 = load i64, ptr %93, align 8
  %95 = mul i64 %94, -4417276706812531889
  %96 = add i64 %95, %75
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 31)
  %98 = mul i64 %97, -7046029288634856825
  %99 = getelementptr inbounds nuw i8, ptr %71, i64 32
  %100 = icmp ugt ptr %99, %61
  br i1 %100, label %101, label %70

101:                                              ; preds = %70
  store i64 %80, ptr %62, align 8
  store i64 %86, ptr %64, align 8
  store i64 %92, ptr %66, align 8
  store i64 %98, ptr %68, align 8
  br label %102

102:                                              ; preds = %101, %56
  %103 = phi ptr [ %99, %101 ], [ %57, %56 ]
  %104 = icmp ult ptr %103, %4
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %107 = ptrtoint ptr %4 to i64
  %108 = ptrtoint ptr %103 to i64
  %109 = sub i64 %107, %108
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %106, ptr align 1 %103, i64 %109, i1 false)
  %110 = trunc i64 %109 to i32
  br label %111

111:                                              ; preds = %105, %12
  %112 = phi i32 [ %16, %12 ], [ %110, %105 ]
  store i32 %112, ptr %7, align 8
  br label %113

113:                                              ; preds = %111, %102
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load i32, ptr %3, align 8
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 52
  %8 = load i64, ptr %0, align 8
  %9 = icmp ugt i64 %8, 31
  br i1 %9, label %10, label %58

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8
  %19 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 1)
  %20 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 7)
  %21 = add i64 %20, %19
  %22 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 12)
  %23 = add i64 %21, %22
  %24 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 18)
  %25 = add i64 %23, %24
  %26 = mul i64 %12, -4417276706812531889
  %27 = mul i64 %12, -7788283243316379648
  %28 = lshr i64 %26, 33
  %29 = or disjoint i64 %28, %27
  %30 = mul i64 %29, -7046029288634856825
  %31 = xor i64 %25, %30
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %32, -8796714831421723037
  %34 = mul i64 %14, -4417276706812531889
  %35 = mul i64 %14, -7788283243316379648
  %36 = lshr i64 %34, 33
  %37 = or disjoint i64 %36, %35
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %33, %38
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = mul i64 %16, -4417276706812531889
  %43 = mul i64 %16, -7788283243316379648
  %44 = lshr i64 %42, 33
  %45 = or disjoint i64 %44, %43
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %41, %46
  %48 = mul i64 %47, -7046029288634856825
  %49 = add i64 %48, -8796714831421723037
  %50 = mul i64 %18, -4417276706812531889
  %51 = mul i64 %18, -7788283243316379648
  %52 = lshr i64 %50, 33
  %53 = or disjoint i64 %52, %51
  %54 = mul i64 %53, -7046029288634856825
  %55 = xor i64 %49, %54
  %56 = mul i64 %55, -7046029288634856825
  %57 = add i64 %56, -8796714831421723037
  br label %62

58:                                               ; preds = %1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %60, 2870177450012600261
  br label %62

62:                                               ; preds = %58, %10
  %63 = phi i64 [ %57, %10 ], [ %61, %58 ]
  %64 = add i64 %63, %8
  %65 = icmp ult i32 %4, 8
  br i1 %65, label %84, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi ptr [ %82, %68 ], [ %67, %66 ]
  %70 = phi ptr [ %69, %68 ], [ %2, %66 ]
  %71 = phi i64 [ %81, %68 ], [ %64, %66 ]
  %72 = load i64, ptr %70, align 8
  %73 = mul i64 %72, -4417276706812531889
  %74 = mul i64 %72, -7788283243316379648
  %75 = lshr i64 %73, 33
  %76 = or disjoint i64 %75, %74
  %77 = mul i64 %76, -7046029288634856825
  %78 = xor i64 %77, %71
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 27)
  %80 = mul i64 %79, -7046029288634856825
  %81 = add i64 %80, -8796714831421723037
  %82 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %83 = icmp ugt ptr %82, %7
  br i1 %83, label %84, label %68

84:                                               ; preds = %68, %62
  %85 = phi i64 [ %64, %62 ], [ %81, %68 ]
  %86 = phi ptr [ %2, %62 ], [ %69, %68 ]
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 4
  %88 = icmp ugt ptr %87, %7
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = load i32, ptr %86, align 4
  %91 = zext i32 %90 to i64
  %92 = mul i64 %91, -7046029288634856825
  %93 = xor i64 %92, %85
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 23)
  %95 = mul i64 %94, -4417276706812531889
  %96 = add i64 %95, 1609587929392839161
  br label %97

97:                                               ; preds = %89, %84
  %98 = phi i64 [ %96, %89 ], [ %85, %84 ]
  %99 = phi ptr [ %87, %89 ], [ %86, %84 ]
  %100 = icmp ult ptr %99, %7
  br i1 %100, label %101, label %112

101:                                              ; preds = %97, %101
  %102 = phi ptr [ %110, %101 ], [ %99, %97 ]
  %103 = phi i64 [ %109, %101 ], [ %98, %97 ]
  %104 = load i8, ptr %102, align 1
  %105 = zext i8 %104 to i64
  %106 = mul i64 %105, 2870177450012600261
  %107 = xor i64 %106, %103
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 11)
  %109 = mul i64 %108, -7046029288634856825
  %110 = getelementptr inbounds nuw i8, ptr %102, i64 1
  %111 = icmp ult ptr %110, %7
  br i1 %111, label %101, label %112

112:                                              ; preds = %101, %97
  %113 = phi i64 [ %98, %97 ], [ %109, %101 ]
  %114 = lshr i64 %113, 33
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, -4417276706812531889
  %117 = lshr i64 %116, 29
  %118 = xor i64 %117, %116
  %119 = mul i64 %118, 1609587929392839161
  %120 = lshr i64 %119, 32
  %121 = xor i64 %120, %119
  ret i64 %121
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_oneshot(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = mul i32 %5, 374761393
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, -2048144777
  %10 = load i32, ptr %0, align 4
  %11 = mul i32 %10, -2048144777
  %12 = add i32 %1, 606290984
  %13 = add i32 %11, %12
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 13)
  %15 = mul i32 %14, -1640531535
  %16 = add i32 %9, %15
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 13)
  %18 = mul i32 %17, 1013904226
  %19 = add i32 %18, 33
  %20 = mul i32 %17, -1640531535
  %21 = lshr i32 %20, 31
  %22 = add i32 %19, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, -2048144777
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %1, -2048144777
  %30 = add i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = mul i32 %31, -1640531535
  %33 = add i32 %25, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, 465361024
  %36 = add i32 %22, %35
  %37 = mul i32 %34, -1640531535
  %38 = lshr i32 %37, 25
  %39 = add i32 %36, %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %41, -2048144777
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %44 = load i32, ptr %43, align 4
  %45 = mul i32 %44, -2048144777
  %46 = add i32 %45, %1
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 13)
  %48 = mul i32 %47, -1640531535
  %49 = add i32 %42, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, 2006650880
  %52 = add i32 %39, %51
  %53 = mul i32 %50, -1640531535
  %54 = lshr i32 %53, 20
  %55 = add i32 %52, %54
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %57 = load i32, ptr %56, align 4
  %58 = mul i32 %57, -2048144777
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %60 = load i32, ptr %59, align 4
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %1, 1640531535
  %63 = add i32 %61, %62
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 13)
  %65 = mul i32 %64, -1640531535
  %66 = add i32 %58, %65
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13)
  %68 = mul i32 %67, -423362560
  %69 = add i32 %55, %68
  %70 = mul i32 %67, -1640531535
  %71 = lshr i32 %70, 14
  %72 = add i32 %69, %71
  %73 = add i32 %6, %72
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
