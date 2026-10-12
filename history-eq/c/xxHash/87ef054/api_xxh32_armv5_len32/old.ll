; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/87ef054/api_xxh32_armv5_len32/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/87ef054/api_xxh32_armv5_len32/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv5e-unknown-linux-gnueabi"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i32 @XXH32(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %0 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %8 = icmp ugt i32 %1, 15
  br i1 %6, label %9, label %101

9:                                                ; preds = %3
  br i1 %8, label %10, label %62

10:                                               ; preds = %9
  %11 = getelementptr inbounds i8, ptr %7, i32 -16
  %12 = add i32 %2, 606290984
  %13 = add i32 %2, -2048144777
  %14 = add i32 %2, 1640531535
  br label %15

15:                                               ; preds = %15, %10
  %16 = phi ptr [ %0, %10 ], [ %44, %15 ]
  %17 = phi i32 [ %12, %10 ], [ %25, %15 ]
  %18 = phi i32 [ %13, %10 ], [ %31, %15 ]
  %19 = phi i32 [ %2, %10 ], [ %37, %15 ]
  %20 = phi i32 [ %14, %10 ], [ %43, %15 ]
  %21 = load i32, ptr %16, align 4
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %17
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = getelementptr inbounds nuw i8, ptr %16, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %18
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = getelementptr inbounds nuw i8, ptr %16, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %19
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = getelementptr inbounds nuw i8, ptr %16, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, -2048144777
  %41 = add i32 %40, %20
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 13)
  %43 = mul i32 %42, -1640531535
  %44 = getelementptr inbounds nuw i8, ptr %16, i32 16
  %45 = icmp ugt ptr %44, %11
  br i1 %45, label %46, label %15

46:                                               ; preds = %15
  %47 = mul i32 %24, 1013904226
  %48 = lshr i32 %25, 31
  %49 = mul i32 %30, 465361024
  %50 = lshr i32 %31, 25
  %51 = mul i32 %36, 2006650880
  %52 = lshr i32 %37, 20
  %53 = mul i32 %42, -423362560
  %54 = lshr i32 %43, 14
  %55 = or disjoint i32 %48, %47
  %56 = add i32 %55, %49
  %57 = add i32 %56, %50
  %58 = add i32 %57, %51
  %59 = add i32 %58, %52
  %60 = add i32 %59, %53
  %61 = add i32 %60, %54
  br label %64

62:                                               ; preds = %9
  %63 = add i32 %2, 374761393
  br label %64

64:                                               ; preds = %62, %46
  %65 = phi i32 [ %61, %46 ], [ %63, %62 ]
  %66 = phi ptr [ %44, %46 ], [ %0, %62 ]
  %67 = add i32 %65, %1
  %68 = getelementptr inbounds nuw i8, ptr %66, i32 4
  %69 = icmp ugt ptr %68, %7
  br i1 %69, label %70, label %79

70:                                               ; preds = %79, %64
  %71 = phi i32 [ %67, %64 ], [ %87, %79 ]
  %72 = phi ptr [ %66, %64 ], [ %80, %79 ]
  %73 = icmp ult ptr %72, %7
  br i1 %73, label %74, label %193

74:                                               ; preds = %70
  %75 = ptrtoint ptr %72 to i32
  %76 = add i32 %1, %4
  %77 = sub i32 %76, %75
  %78 = getelementptr i8, ptr %72, i32 %77
  br label %90

79:                                               ; preds = %64, %79
  %80 = phi ptr [ %88, %79 ], [ %68, %64 ]
  %81 = phi ptr [ %80, %79 ], [ %66, %64 ]
  %82 = phi i32 [ %87, %79 ], [ %67, %64 ]
  %83 = load i32, ptr %81, align 4
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %82
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %87 = mul i32 %86, 668265263
  %88 = getelementptr inbounds nuw i8, ptr %80, i32 4
  %89 = icmp ugt ptr %88, %7
  br i1 %89, label %70, label %79

90:                                               ; preds = %74, %90
  %91 = phi ptr [ %99, %90 ], [ %72, %74 ]
  %92 = phi i32 [ %98, %90 ], [ %71, %74 ]
  %93 = load i8, ptr %91, align 1
  %94 = zext i8 %93 to i32
  %95 = mul i32 %94, 374761393
  %96 = add i32 %95, %92
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 11)
  %98 = mul i32 %97, -1640531535
  %99 = getelementptr inbounds nuw i8, ptr %91, i32 1
  %100 = icmp eq ptr %99, %78
  br i1 %100, label %193, label %90

101:                                              ; preds = %3
  br i1 %8, label %102, label %154

102:                                              ; preds = %101
  %103 = getelementptr inbounds i8, ptr %7, i32 -16
  %104 = add i32 %2, 606290984
  %105 = add i32 %2, -2048144777
  %106 = add i32 %2, 1640531535
  br label %107

107:                                              ; preds = %107, %102
  %108 = phi ptr [ %0, %102 ], [ %136, %107 ]
  %109 = phi i32 [ %104, %102 ], [ %117, %107 ]
  %110 = phi i32 [ %105, %102 ], [ %123, %107 ]
  %111 = phi i32 [ %2, %102 ], [ %129, %107 ]
  %112 = phi i32 [ %106, %102 ], [ %135, %107 ]
  %113 = load i32, ptr %108, align 1
  %114 = mul i32 %113, -2048144777
  %115 = add i32 %114, %109
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = mul i32 %116, -1640531535
  %118 = getelementptr inbounds nuw i8, ptr %108, i32 4
  %119 = load i32, ptr %118, align 1
  %120 = mul i32 %119, -2048144777
  %121 = add i32 %120, %110
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 13)
  %123 = mul i32 %122, -1640531535
  %124 = getelementptr inbounds nuw i8, ptr %108, i32 8
  %125 = load i32, ptr %124, align 1
  %126 = mul i32 %125, -2048144777
  %127 = add i32 %126, %111
  %128 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 13)
  %129 = mul i32 %128, -1640531535
  %130 = getelementptr inbounds nuw i8, ptr %108, i32 12
  %131 = load i32, ptr %130, align 1
  %132 = mul i32 %131, -2048144777
  %133 = add i32 %132, %112
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 13)
  %135 = mul i32 %134, -1640531535
  %136 = getelementptr inbounds nuw i8, ptr %108, i32 16
  %137 = icmp ugt ptr %136, %103
  br i1 %137, label %138, label %107

138:                                              ; preds = %107
  %139 = mul i32 %116, 1013904226
  %140 = lshr i32 %117, 31
  %141 = mul i32 %122, 465361024
  %142 = lshr i32 %123, 25
  %143 = mul i32 %128, 2006650880
  %144 = lshr i32 %129, 20
  %145 = mul i32 %134, -423362560
  %146 = lshr i32 %135, 14
  %147 = or disjoint i32 %140, %139
  %148 = add i32 %147, %141
  %149 = add i32 %148, %142
  %150 = add i32 %149, %143
  %151 = add i32 %150, %144
  %152 = add i32 %151, %145
  %153 = add i32 %152, %146
  br label %156

154:                                              ; preds = %101
  %155 = add i32 %2, 374761393
  br label %156

156:                                              ; preds = %154, %138
  %157 = phi i32 [ %153, %138 ], [ %155, %154 ]
  %158 = phi ptr [ %136, %138 ], [ %0, %154 ]
  %159 = add i32 %157, %1
  %160 = getelementptr inbounds nuw i8, ptr %158, i32 4
  %161 = icmp ugt ptr %160, %7
  br i1 %161, label %162, label %171

162:                                              ; preds = %171, %156
  %163 = phi i32 [ %159, %156 ], [ %179, %171 ]
  %164 = phi ptr [ %158, %156 ], [ %172, %171 ]
  %165 = icmp ult ptr %164, %7
  br i1 %165, label %166, label %193

166:                                              ; preds = %162
  %167 = ptrtoint ptr %164 to i32
  %168 = add i32 %1, %4
  %169 = sub i32 %168, %167
  %170 = getelementptr i8, ptr %164, i32 %169
  br label %182

171:                                              ; preds = %156, %171
  %172 = phi ptr [ %180, %171 ], [ %160, %156 ]
  %173 = phi ptr [ %172, %171 ], [ %158, %156 ]
  %174 = phi i32 [ %179, %171 ], [ %159, %156 ]
  %175 = load i32, ptr %173, align 1
  %176 = mul i32 %175, -1028477379
  %177 = add i32 %176, %174
  %178 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 17)
  %179 = mul i32 %178, 668265263
  %180 = getelementptr inbounds nuw i8, ptr %172, i32 4
  %181 = icmp ugt ptr %180, %7
  br i1 %181, label %162, label %171

182:                                              ; preds = %166, %182
  %183 = phi ptr [ %191, %182 ], [ %164, %166 ]
  %184 = phi i32 [ %190, %182 ], [ %163, %166 ]
  %185 = load i8, ptr %183, align 1
  %186 = zext i8 %185 to i32
  %187 = mul i32 %186, 374761393
  %188 = add i32 %187, %184
  %189 = tail call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 11)
  %190 = mul i32 %189, -1640531535
  %191 = getelementptr inbounds nuw i8, ptr %183, i32 1
  %192 = icmp eq ptr %191, %170
  br i1 %192, label %193, label %182

193:                                              ; preds = %182, %90, %162, %70
  %194 = phi i32 [ %71, %70 ], [ %163, %162 ], [ %98, %90 ], [ %190, %182 ]
  %195 = lshr i32 %194, 15
  %196 = xor i32 %195, %194
  %197 = mul i32 %196, -2048144777
  %198 = lshr i32 %197, 13
  %199 = xor i32 %198, %197
  %200 = mul i32 %199, -1028477379
  %201 = lshr i32 %200, 16
  %202 = xor i32 %201, %200
  ret i32 %202
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @XXH64(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %0 to i32
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %8 = icmp ugt i32 %1, 31
  br i1 %6, label %9, label %152

9:                                                ; preds = %3
  br i1 %8, label %10, label %94

10:                                               ; preds = %9
  %11 = getelementptr inbounds i8, ptr %7, i32 -32
  %12 = add i64 %2, 6983438078262162902
  %13 = add i64 %2, -4417276706812531889
  %14 = add i64 %2, 7046029288634856825
  br label %15

15:                                               ; preds = %15, %10
  %16 = phi i64 [ %12, %10 ], [ %26, %15 ]
  %17 = phi i64 [ %13, %10 ], [ %32, %15 ]
  %18 = phi i64 [ %2, %10 ], [ %38, %15 ]
  %19 = phi i64 [ %14, %10 ], [ %44, %15 ]
  %20 = phi ptr [ %0, %10 ], [ %42, %15 ]
  %21 = load i64, ptr %20, align 8
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %22, %16
  %24 = getelementptr inbounds nuw i8, ptr %20, i32 8
  %25 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = load i64, ptr %24, align 8
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, %17
  %30 = getelementptr inbounds nuw i8, ptr %20, i32 16
  %31 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = load i64, ptr %30, align 8
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, %18
  %36 = getelementptr inbounds nuw i8, ptr %20, i32 24
  %37 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = load i64, ptr %36, align 8
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, %19
  %42 = getelementptr inbounds nuw i8, ptr %20, i32 32
  %43 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %44 = mul i64 %43, -7046029288634856825
  %45 = icmp ugt ptr %42, %11
  br i1 %45, label %46, label %15

46:                                               ; preds = %15
  %47 = mul i64 %25, 4354685496439837966
  %48 = lshr i64 %26, 63
  %49 = mul i64 %31, 1998710666506355584
  %50 = lshr i64 %32, 57
  %51 = mul i64 %37, 8618509107074723840
  %52 = lshr i64 %38, 52
  %53 = mul i64 %43, -1817739358504222720
  %54 = lshr i64 %44, 46
  %55 = or disjoint i64 %48, %47
  %56 = add i64 %55, %49
  %57 = add i64 %56, %50
  %58 = add i64 %57, %51
  %59 = add i64 %58, %52
  %60 = add i64 %59, %53
  %61 = add i64 %60, %54
  %62 = mul i64 %25, -2381459717836149591
  %63 = mul i64 %25, -8665851108926685184
  %64 = lshr i64 %62, 33
  %65 = or disjoint i64 %64, %63
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %61, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = mul i64 %31, -2381459717836149591
  %71 = mul i64 %31, -8665851108926685184
  %72 = lshr i64 %70, 33
  %73 = or disjoint i64 %72, %71
  %74 = mul i64 %73, -7046029288634856825
  %75 = xor i64 %69, %74
  %76 = mul i64 %75, -7046029288634856825
  %77 = add i64 %76, -8796714831421723037
  %78 = mul i64 %37, -2381459717836149591
  %79 = mul i64 %37, -8665851108926685184
  %80 = lshr i64 %78, 33
  %81 = or disjoint i64 %80, %79
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %77, %82
  %84 = mul i64 %83, -7046029288634856825
  %85 = add i64 %84, -8796714831421723037
  %86 = mul i64 %43, -2381459717836149591
  %87 = mul i64 %43, -8665851108926685184
  %88 = lshr i64 %86, 33
  %89 = or disjoint i64 %88, %87
  %90 = mul i64 %89, -7046029288634856825
  %91 = xor i64 %85, %90
  %92 = mul i64 %91, -7046029288634856825
  %93 = add i64 %92, -8796714831421723037
  br label %96

94:                                               ; preds = %9
  %95 = add i64 %2, 2870177450012600261
  br label %96

96:                                               ; preds = %94, %46
  %97 = phi i64 [ %93, %46 ], [ %95, %94 ]
  %98 = phi ptr [ %42, %46 ], [ %0, %94 ]
  %99 = zext i32 %1 to i64
  %100 = add i64 %97, %99
  %101 = getelementptr inbounds nuw i8, ptr %98, i32 8
  %102 = icmp ugt ptr %101, %7
  br i1 %102, label %119, label %103

103:                                              ; preds = %96, %103
  %104 = phi ptr [ %117, %103 ], [ %101, %96 ]
  %105 = phi ptr [ %104, %103 ], [ %98, %96 ]
  %106 = phi i64 [ %116, %103 ], [ %100, %96 ]
  %107 = load i64, ptr %105, align 8
  %108 = mul i64 %107, -4417276706812531889
  %109 = mul i64 %107, -7788283243316379648
  %110 = lshr i64 %108, 33
  %111 = or disjoint i64 %110, %109
  %112 = mul i64 %111, -7046029288634856825
  %113 = xor i64 %112, %106
  %114 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 27)
  %115 = mul i64 %114, -7046029288634856825
  %116 = add i64 %115, -8796714831421723037
  %117 = getelementptr inbounds nuw i8, ptr %104, i32 8
  %118 = icmp ugt ptr %117, %7
  br i1 %118, label %119, label %103

119:                                              ; preds = %103, %96
  %120 = phi i64 [ %100, %96 ], [ %116, %103 ]
  %121 = phi ptr [ %98, %96 ], [ %104, %103 ]
  %122 = getelementptr inbounds nuw i8, ptr %121, i32 4
  %123 = icmp ugt ptr %122, %7
  br i1 %123, label %132, label %124

124:                                              ; preds = %119
  %125 = load i32, ptr %121, align 4
  %126 = zext i32 %125 to i64
  %127 = mul i64 %126, -7046029288634856825
  %128 = xor i64 %127, %120
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 23)
  %130 = mul i64 %129, -4417276706812531889
  %131 = add i64 %130, 1609587929392839161
  br label %132

132:                                              ; preds = %124, %119
  %133 = phi i64 [ %131, %124 ], [ %120, %119 ]
  %134 = phi ptr [ %122, %124 ], [ %121, %119 ]
  %135 = icmp ult ptr %134, %7
  br i1 %135, label %136, label %295

136:                                              ; preds = %132
  %137 = ptrtoint ptr %134 to i32
  %138 = add i32 %1, %4
  %139 = sub i32 %138, %137
  %140 = getelementptr i8, ptr %134, i32 %139
  br label %141

141:                                              ; preds = %136, %141
  %142 = phi ptr [ %150, %141 ], [ %134, %136 ]
  %143 = phi i64 [ %149, %141 ], [ %133, %136 ]
  %144 = load i8, ptr %142, align 1
  %145 = zext i8 %144 to i64
  %146 = mul i64 %145, 2870177450012600261
  %147 = xor i64 %146, %143
  %148 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 11)
  %149 = mul i64 %148, -7046029288634856825
  %150 = getelementptr inbounds nuw i8, ptr %142, i32 1
  %151 = icmp eq ptr %150, %140
  br i1 %151, label %295, label %141

152:                                              ; preds = %3
  br i1 %8, label %153, label %237

153:                                              ; preds = %152
  %154 = getelementptr inbounds i8, ptr %7, i32 -32
  %155 = add i64 %2, 6983438078262162902
  %156 = add i64 %2, -4417276706812531889
  %157 = add i64 %2, 7046029288634856825
  br label %158

158:                                              ; preds = %158, %153
  %159 = phi i64 [ %155, %153 ], [ %169, %158 ]
  %160 = phi i64 [ %156, %153 ], [ %175, %158 ]
  %161 = phi i64 [ %2, %153 ], [ %181, %158 ]
  %162 = phi i64 [ %157, %153 ], [ %187, %158 ]
  %163 = phi ptr [ %0, %153 ], [ %185, %158 ]
  %164 = load i64, ptr %163, align 1
  %165 = mul i64 %164, -4417276706812531889
  %166 = add i64 %165, %159
  %167 = getelementptr inbounds nuw i8, ptr %163, i32 8
  %168 = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 31)
  %169 = mul i64 %168, -7046029288634856825
  %170 = load i64, ptr %167, align 1
  %171 = mul i64 %170, -4417276706812531889
  %172 = add i64 %171, %160
  %173 = getelementptr inbounds nuw i8, ptr %163, i32 16
  %174 = tail call i64 @llvm.fshl.i64(i64 %172, i64 %172, i64 31)
  %175 = mul i64 %174, -7046029288634856825
  %176 = load i64, ptr %173, align 1
  %177 = mul i64 %176, -4417276706812531889
  %178 = add i64 %177, %161
  %179 = getelementptr inbounds nuw i8, ptr %163, i32 24
  %180 = tail call i64 @llvm.fshl.i64(i64 %178, i64 %178, i64 31)
  %181 = mul i64 %180, -7046029288634856825
  %182 = load i64, ptr %179, align 1
  %183 = mul i64 %182, -4417276706812531889
  %184 = add i64 %183, %162
  %185 = getelementptr inbounds nuw i8, ptr %163, i32 32
  %186 = tail call i64 @llvm.fshl.i64(i64 %184, i64 %184, i64 31)
  %187 = mul i64 %186, -7046029288634856825
  %188 = icmp ugt ptr %185, %154
  br i1 %188, label %189, label %158

189:                                              ; preds = %158
  %190 = mul i64 %168, 4354685496439837966
  %191 = lshr i64 %169, 63
  %192 = mul i64 %174, 1998710666506355584
  %193 = lshr i64 %175, 57
  %194 = mul i64 %180, 8618509107074723840
  %195 = lshr i64 %181, 52
  %196 = mul i64 %186, -1817739358504222720
  %197 = lshr i64 %187, 46
  %198 = or disjoint i64 %191, %190
  %199 = add i64 %198, %192
  %200 = add i64 %199, %193
  %201 = add i64 %200, %194
  %202 = add i64 %201, %195
  %203 = add i64 %202, %196
  %204 = add i64 %203, %197
  %205 = mul i64 %168, -2381459717836149591
  %206 = mul i64 %168, -8665851108926685184
  %207 = lshr i64 %205, 33
  %208 = or disjoint i64 %207, %206
  %209 = mul i64 %208, -7046029288634856825
  %210 = xor i64 %204, %209
  %211 = mul i64 %210, -7046029288634856825
  %212 = add i64 %211, -8796714831421723037
  %213 = mul i64 %174, -2381459717836149591
  %214 = mul i64 %174, -8665851108926685184
  %215 = lshr i64 %213, 33
  %216 = or disjoint i64 %215, %214
  %217 = mul i64 %216, -7046029288634856825
  %218 = xor i64 %212, %217
  %219 = mul i64 %218, -7046029288634856825
  %220 = add i64 %219, -8796714831421723037
  %221 = mul i64 %180, -2381459717836149591
  %222 = mul i64 %180, -8665851108926685184
  %223 = lshr i64 %221, 33
  %224 = or disjoint i64 %223, %222
  %225 = mul i64 %224, -7046029288634856825
  %226 = xor i64 %220, %225
  %227 = mul i64 %226, -7046029288634856825
  %228 = add i64 %227, -8796714831421723037
  %229 = mul i64 %186, -2381459717836149591
  %230 = mul i64 %186, -8665851108926685184
  %231 = lshr i64 %229, 33
  %232 = or disjoint i64 %231, %230
  %233 = mul i64 %232, -7046029288634856825
  %234 = xor i64 %228, %233
  %235 = mul i64 %234, -7046029288634856825
  %236 = add i64 %235, -8796714831421723037
  br label %239

237:                                              ; preds = %152
  %238 = add i64 %2, 2870177450012600261
  br label %239

239:                                              ; preds = %237, %189
  %240 = phi i64 [ %236, %189 ], [ %238, %237 ]
  %241 = phi ptr [ %185, %189 ], [ %0, %237 ]
  %242 = zext i32 %1 to i64
  %243 = add i64 %240, %242
  %244 = getelementptr inbounds nuw i8, ptr %241, i32 8
  %245 = icmp ugt ptr %244, %7
  br i1 %245, label %262, label %246

246:                                              ; preds = %239, %246
  %247 = phi ptr [ %260, %246 ], [ %244, %239 ]
  %248 = phi ptr [ %247, %246 ], [ %241, %239 ]
  %249 = phi i64 [ %259, %246 ], [ %243, %239 ]
  %250 = load i64, ptr %248, align 1
  %251 = mul i64 %250, -4417276706812531889
  %252 = mul i64 %250, -7788283243316379648
  %253 = lshr i64 %251, 33
  %254 = or disjoint i64 %253, %252
  %255 = mul i64 %254, -7046029288634856825
  %256 = xor i64 %255, %249
  %257 = tail call i64 @llvm.fshl.i64(i64 %256, i64 %256, i64 27)
  %258 = mul i64 %257, -7046029288634856825
  %259 = add i64 %258, -8796714831421723037
  %260 = getelementptr inbounds nuw i8, ptr %247, i32 8
  %261 = icmp ugt ptr %260, %7
  br i1 %261, label %262, label %246

262:                                              ; preds = %246, %239
  %263 = phi i64 [ %243, %239 ], [ %259, %246 ]
  %264 = phi ptr [ %241, %239 ], [ %247, %246 ]
  %265 = getelementptr inbounds nuw i8, ptr %264, i32 4
  %266 = icmp ugt ptr %265, %7
  br i1 %266, label %275, label %267

267:                                              ; preds = %262
  %268 = load i32, ptr %264, align 1
  %269 = zext i32 %268 to i64
  %270 = mul i64 %269, -7046029288634856825
  %271 = xor i64 %270, %263
  %272 = tail call i64 @llvm.fshl.i64(i64 %271, i64 %271, i64 23)
  %273 = mul i64 %272, -4417276706812531889
  %274 = add i64 %273, 1609587929392839161
  br label %275

275:                                              ; preds = %267, %262
  %276 = phi i64 [ %274, %267 ], [ %263, %262 ]
  %277 = phi ptr [ %265, %267 ], [ %264, %262 ]
  %278 = icmp ult ptr %277, %7
  br i1 %278, label %279, label %295

279:                                              ; preds = %275
  %280 = ptrtoint ptr %277 to i32
  %281 = add i32 %1, %4
  %282 = sub i32 %281, %280
  %283 = getelementptr i8, ptr %277, i32 %282
  br label %284

284:                                              ; preds = %279, %284
  %285 = phi ptr [ %293, %284 ], [ %277, %279 ]
  %286 = phi i64 [ %292, %284 ], [ %276, %279 ]
  %287 = load i8, ptr %285, align 1
  %288 = zext i8 %287 to i64
  %289 = mul i64 %288, 2870177450012600261
  %290 = xor i64 %289, %286
  %291 = tail call i64 @llvm.fshl.i64(i64 %290, i64 %290, i64 11)
  %292 = mul i64 %291, -7046029288634856825
  %293 = getelementptr inbounds nuw i8, ptr %285, i32 1
  %294 = icmp eq ptr %293, %283
  br i1 %294, label %295, label %284

295:                                              ; preds = %284, %141, %275, %132
  %296 = phi i64 [ %133, %132 ], [ %276, %275 ], [ %149, %141 ], [ %292, %284 ]
  %297 = lshr i64 %296, 33
  %298 = xor i64 %297, %296
  %299 = mul i64 %298, -4417276706812531889
  %300 = lshr i64 %299, 29
  %301 = xor i64 %300, %299
  %302 = mul i64 %301, 1609587929392839161
  %303 = lshr i64 %302, 32
  %304 = xor i64 %303, %302
  ret i64 %304
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite)
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #1 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i32 noundef 48) #10
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite)
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #1 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i32 noundef 88) #10
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local noundef i32 @XXH32_reset(ptr noundef writeonly initializes((0, 28), (44, 48)) %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i32 %1, ptr %3, align 8
  %4 = add i32 %1, 606290984
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 12
  store i32 %4, ptr %5, align 4
  %6 = add i32 %1, -2048144777
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 20
  store i32 %1, ptr %8, align 4
  %9 = add i32 %1, 1640531535
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i32 %9, ptr %10, align 8
  store i64 0, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 44
  store i32 0, ptr %11, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local noundef i32 @XXH64_reset(ptr noundef writeonly initializes((0, 48), (80, 84)) %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 8
  store i64 %1, ptr %3, align 8
  %4 = add i64 %1, 6983438078262162902
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 16
  store i64 %4, ptr %5, align 8
  %6 = add i64 %1, -4417276706812531889
  %7 = getelementptr inbounds nuw i8, ptr %0, i32 24
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 32
  store i64 %1, ptr %8, align 8
  %9 = add i64 %1, 7046029288634856825
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 40
  store i64 %9, ptr %10, align 8
  store i64 0, ptr %0, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 80
  store i32 0, ptr %11, align 8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local noundef i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %5 = zext i32 %2 to i64
  %6 = load i64, ptr %0, align 8
  %7 = add i64 %6, %5
  store i64 %7, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 44
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %2
  %11 = icmp ult i32 %10, 16
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %14 = getelementptr inbounds nuw i8, ptr %13, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %14, ptr readonly align 1 %1, i32 %2, i1 false)
  %15 = load i32, ptr %8, align 4
  %16 = add i32 %15, %2
  br label %110

17:                                               ; preds = %3
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %21 = getelementptr inbounds nuw i8, ptr %20, i32 %9
  %22 = sub i32 16, %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %21, ptr readonly align 1 %1, i32 %22, i1 false)
  %23 = load i32, ptr %20, align 1
  %24 = mul i32 %23, -2048144777
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  store i32 %29, ptr %25, align 4
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, %32
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  store i32 %37, ptr %33, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i32 36
  %39 = load i32, ptr %38, align 1
  %40 = mul i32 %39, -2048144777
  %41 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %40
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  store i32 %45, ptr %41, align 4
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %47 = load i32, ptr %46, align 1
  %48 = mul i32 %47, -2048144777
  %49 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, %48
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  store i32 %53, ptr %49, align 8
  %54 = load i32, ptr %8, align 4
  %55 = sub i32 16, %54
  %56 = getelementptr inbounds nuw i8, ptr %1, i32 %55
  store i32 0, ptr %8, align 4
  br label %57

57:                                               ; preds = %19, %17
  %58 = phi ptr [ %56, %19 ], [ %1, %17 ]
  %59 = getelementptr inbounds i8, ptr %4, i32 -16
  %60 = icmp ugt ptr %58, %59
  br i1 %60, label %102, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %69 = load i32, ptr %68, align 8
  br label %70

70:                                               ; preds = %70, %61
  %71 = phi ptr [ %58, %61 ], [ %99, %70 ]
  %72 = phi i32 [ %63, %61 ], [ %80, %70 ]
  %73 = phi i32 [ %65, %61 ], [ %86, %70 ]
  %74 = phi i32 [ %67, %61 ], [ %92, %70 ]
  %75 = phi i32 [ %69, %61 ], [ %98, %70 ]
  %76 = load i32, ptr %71, align 1
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %72
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = getelementptr inbounds nuw i8, ptr %71, i32 4
  %82 = load i32, ptr %81, align 1
  %83 = mul i32 %82, -2048144777
  %84 = add i32 %83, %73
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 13)
  %86 = mul i32 %85, -1640531535
  %87 = getelementptr inbounds nuw i8, ptr %71, i32 8
  %88 = load i32, ptr %87, align 1
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %74
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  %93 = getelementptr inbounds nuw i8, ptr %71, i32 12
  %94 = load i32, ptr %93, align 1
  %95 = mul i32 %94, -2048144777
  %96 = add i32 %95, %75
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 13)
  %98 = mul i32 %97, -1640531535
  %99 = getelementptr inbounds nuw i8, ptr %71, i32 16
  %100 = icmp ugt ptr %99, %59
  br i1 %100, label %101, label %70

101:                                              ; preds = %70
  store i32 %80, ptr %62, align 4
  store i32 %86, ptr %64, align 8
  store i32 %92, ptr %66, align 4
  store i32 %98, ptr %68, align 8
  br label %102

102:                                              ; preds = %101, %57
  %103 = phi ptr [ %99, %101 ], [ %58, %57 ]
  %104 = icmp ult ptr %103, %4
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %107 = ptrtoint ptr %4 to i32
  %108 = ptrtoint ptr %103 to i32
  %109 = sub i32 %107, %108
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %106, ptr nonnull readonly align 1 %103, i32 %109, i1 false)
  br label %110

110:                                              ; preds = %105, %12
  %111 = phi i32 [ %16, %12 ], [ %109, %105 ]
  store i32 %111, ptr %8, align 4
  br label %112

112:                                              ; preds = %110, %102
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i32
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %4 = getelementptr inbounds nuw i8, ptr %0, i32 44
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr i8, ptr %6, i32 28
  %8 = load i64, ptr %0, align 8
  %9 = icmp ugt i64 %8, 15
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = trunc i64 %8 to i32
  %33 = add i32 %31, %32
  %34 = icmp slt i32 %5, 4
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds nuw i8, ptr %0, i32 32
  br label %47

37:                                               ; preds = %47, %30
  %38 = phi ptr [ %3, %30 ], [ %48, %47 ]
  %39 = phi i32 [ %33, %30 ], [ %55, %47 ]
  %40 = icmp ult ptr %38, %7
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  %43 = add i32 %5, %2
  %44 = add i32 %43, 28
  %45 = sub i32 %44, %42
  %46 = getelementptr i8, ptr %38, i32 %45
  br label %58

47:                                               ; preds = %35, %47
  %48 = phi ptr [ %56, %47 ], [ %36, %35 ]
  %49 = phi i32 [ %55, %47 ], [ %33, %35 ]
  %50 = phi ptr [ %48, %47 ], [ %3, %35 ]
  %51 = load i32, ptr %50, align 1
  %52 = mul i32 %51, -1028477379
  %53 = add i32 %52, %49
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 17)
  %55 = mul i32 %54, 668265263
  %56 = getelementptr inbounds nuw i8, ptr %48, i32 4
  %57 = icmp ugt ptr %56, %7
  br i1 %57, label %37, label %47

58:                                               ; preds = %41, %58
  %59 = phi i32 [ %66, %58 ], [ %39, %41 ]
  %60 = phi ptr [ %67, %58 ], [ %38, %41 ]
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 374761393
  %64 = add i32 %63, %59
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 11)
  %66 = mul i32 %65, -1640531535
  %67 = getelementptr inbounds nuw i8, ptr %60, i32 1
  %68 = icmp eq ptr %67, %46
  br i1 %68, label %69, label %58

69:                                               ; preds = %58, %37
  %70 = phi i32 [ %39, %37 ], [ %66, %58 ]
  %71 = lshr i32 %70, 15
  %72 = xor i32 %71, %70
  %73 = mul i32 %72, -2048144777
  %74 = lshr i32 %73, 13
  %75 = xor i32 %74, %73
  %76 = mul i32 %75, -1028477379
  %77 = lshr i32 %76, 16
  %78 = xor i32 %77, %76
  ret i32 %78
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local noundef i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i32 %2
  %5 = zext i32 %2 to i64
  %6 = load i64, ptr %0, align 8
  %7 = add i64 %6, %5
  store i64 %7, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i32 80
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, %2
  %11 = icmp ult i32 %10, 32
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %14 = getelementptr inbounds nuw i8, ptr %13, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %14, ptr readonly align 1 %1, i32 %2, i1 false)
  %15 = load i32, ptr %8, align 8
  %16 = add i32 %15, %2
  br label %111

17:                                               ; preds = %3
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %21 = getelementptr inbounds nuw i8, ptr %20, i32 %9
  %22 = sub i32 32, %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %21, ptr readonly align 1 %1, i32 %22, i1 false)
  %23 = load i64, ptr %20, align 1
  %24 = mul i64 %23, -4417276706812531889
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, %24
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  store i64 %29, ptr %25, align 8
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %31 = load i64, ptr %30, align 1
  %32 = mul i64 %31, -4417276706812531889
  %33 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, %32
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  store i64 %37, ptr %33, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i32 64
  %39 = load i64, ptr %38, align 1
  %40 = mul i64 %39, -4417276706812531889
  %41 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, %40
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 31)
  %45 = mul i64 %44, -7046029288634856825
  store i64 %45, ptr %41, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 72
  %47 = load i64, ptr %46, align 1
  %48 = mul i64 %47, -4417276706812531889
  %49 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %50 = load i64, ptr %49, align 8
  %51 = add i64 %50, %48
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 31)
  %53 = mul i64 %52, -7046029288634856825
  store i64 %53, ptr %49, align 8
  %54 = load i32, ptr %8, align 8
  %55 = sub i32 32, %54
  %56 = getelementptr inbounds nuw i8, ptr %1, i32 %55
  store i32 0, ptr %8, align 8
  br label %57

57:                                               ; preds = %19, %17
  %58 = phi ptr [ %56, %19 ], [ %1, %17 ]
  %59 = getelementptr inbounds nuw i8, ptr %58, i32 32
  %60 = icmp ugt ptr %59, %4
  br i1 %60, label %103, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, ptr %4, i32 -32
  %63 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %70 = load i64, ptr %69, align 8
  br label %71

71:                                               ; preds = %71, %61
  %72 = phi ptr [ %58, %61 ], [ %100, %71 ]
  %73 = phi i64 [ %64, %61 ], [ %81, %71 ]
  %74 = phi i64 [ %66, %61 ], [ %87, %71 ]
  %75 = phi i64 [ %68, %61 ], [ %93, %71 ]
  %76 = phi i64 [ %70, %61 ], [ %99, %71 ]
  %77 = load i64, ptr %72, align 1
  %78 = mul i64 %77, -4417276706812531889
  %79 = add i64 %78, %73
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 31)
  %81 = mul i64 %80, -7046029288634856825
  %82 = getelementptr inbounds nuw i8, ptr %72, i32 8
  %83 = load i64, ptr %82, align 1
  %84 = mul i64 %83, -4417276706812531889
  %85 = add i64 %84, %74
  %86 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 31)
  %87 = mul i64 %86, -7046029288634856825
  %88 = getelementptr inbounds nuw i8, ptr %72, i32 16
  %89 = load i64, ptr %88, align 1
  %90 = mul i64 %89, -4417276706812531889
  %91 = add i64 %90, %75
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds nuw i8, ptr %72, i32 24
  %95 = load i64, ptr %94, align 1
  %96 = mul i64 %95, -4417276706812531889
  %97 = add i64 %96, %76
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 31)
  %99 = mul i64 %98, -7046029288634856825
  %100 = getelementptr inbounds nuw i8, ptr %72, i32 32
  %101 = icmp ugt ptr %100, %62
  br i1 %101, label %102, label %71

102:                                              ; preds = %71
  store i64 %81, ptr %63, align 8
  store i64 %87, ptr %65, align 8
  store i64 %93, ptr %67, align 8
  store i64 %99, ptr %69, align 8
  br label %103

103:                                              ; preds = %102, %57
  %104 = phi ptr [ %100, %102 ], [ %58, %57 ]
  %105 = icmp ult ptr %104, %4
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %108 = ptrtoint ptr %4 to i32
  %109 = ptrtoint ptr %104 to i32
  %110 = sub i32 %108, %109
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %107, ptr readonly align 1 %104, i32 %110, i1 false)
  br label %111

111:                                              ; preds = %106, %12
  %112 = phi i32 [ %16, %12 ], [ %110, %106 ]
  store i32 %112, ptr %8, align 8
  br label %113

113:                                              ; preds = %111, %103
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i32
  %3 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i32 80
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr i8, ptr %6, i32 48
  %8 = load i64, ptr %0, align 8
  %9 = icmp ugt i64 %8, 31
  br i1 %9, label %10, label %58

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i32 40
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
  %59 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %60, 2870177450012600261
  br label %62

62:                                               ; preds = %58, %10
  %63 = phi i64 [ %57, %10 ], [ %61, %58 ]
  %64 = add i64 %63, %8
  %65 = icmp slt i32 %5, 8
  br i1 %65, label %84, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds nuw i8, ptr %0, i32 56
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi ptr [ %82, %68 ], [ %67, %66 ]
  %70 = phi ptr [ %69, %68 ], [ %3, %66 ]
  %71 = phi i64 [ %81, %68 ], [ %64, %66 ]
  %72 = load i64, ptr %70, align 1
  %73 = mul i64 %72, -4417276706812531889
  %74 = mul i64 %72, -7788283243316379648
  %75 = lshr i64 %73, 33
  %76 = or disjoint i64 %75, %74
  %77 = mul i64 %76, -7046029288634856825
  %78 = xor i64 %77, %71
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 27)
  %80 = mul i64 %79, -7046029288634856825
  %81 = add i64 %80, -8796714831421723037
  %82 = getelementptr inbounds nuw i8, ptr %69, i32 8
  %83 = icmp ugt ptr %82, %7
  br i1 %83, label %84, label %68

84:                                               ; preds = %68, %62
  %85 = phi i64 [ %64, %62 ], [ %81, %68 ]
  %86 = phi ptr [ %3, %62 ], [ %69, %68 ]
  %87 = getelementptr inbounds nuw i8, ptr %86, i32 4
  %88 = icmp ugt ptr %87, %7
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = load i32, ptr %86, align 1
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
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = ptrtoint ptr %99 to i32
  %103 = add i32 %5, %2
  %104 = add i32 %103, 48
  %105 = sub i32 %104, %102
  %106 = getelementptr i8, ptr %99, i32 %105
  br label %107

107:                                              ; preds = %101, %107
  %108 = phi ptr [ %116, %107 ], [ %99, %101 ]
  %109 = phi i64 [ %115, %107 ], [ %98, %101 ]
  %110 = load i8, ptr %108, align 1
  %111 = zext i8 %110 to i64
  %112 = mul i64 %111, 2870177450012600261
  %113 = xor i64 %112, %109
  %114 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 11)
  %115 = mul i64 %114, -7046029288634856825
  %116 = getelementptr inbounds nuw i8, ptr %108, i32 1
  %117 = icmp eq ptr %116, %106
  br i1 %117, label %118, label %107

118:                                              ; preds = %107, %97
  %119 = phi i64 [ %98, %97 ], [ %115, %107 ]
  %120 = lshr i64 %119, 33
  %121 = xor i64 %120, %119
  %122 = mul i64 %121, -4417276706812531889
  %123 = lshr i64 %122, 29
  %124 = xor i64 %123, %122
  %125 = mul i64 %124, 1609587929392839161
  %126 = lshr i64 %125, 32
  %127 = xor i64 %126, %125
  ret i64 %127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i32 @target_oneshot(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = ptrtoint ptr %0 to i32
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %4, 0
  %6 = add i32 %1, 606290984
  %7 = add i32 %1, -2048144777
  %8 = add i32 %1, 1640531535
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %12 = getelementptr inbounds nuw i8, ptr %0, i32 16
  br i1 %5, label %13, label %41

13:                                               ; preds = %2
  %14 = load i32, ptr %0, align 4
  %15 = mul i32 %14, -2048144777
  %16 = add i32 %15, %6
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 13)
  %18 = mul i32 %17, -1640531535
  %19 = load i32, ptr %9, align 4
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %7
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = load i32, ptr %10, align 4
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %1
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = load i32, ptr %11, align 4
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %29, %8
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = load i32, ptr %12, align 4
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %18
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %23
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  br label %69

41:                                               ; preds = %2
  %42 = load i32, ptr %0, align 1
  %43 = mul i32 %42, -2048144777
  %44 = add i32 %43, %6
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  %47 = load i32, ptr %9, align 1
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %7
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = load i32, ptr %10, align 1
  %53 = mul i32 %52, -2048144777
  %54 = add i32 %53, %1
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13)
  %56 = load i32, ptr %11, align 1
  %57 = mul i32 %56, -2048144777
  %58 = add i32 %57, %8
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13)
  %60 = load i32, ptr %12, align 1
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %46
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %65 = load i32, ptr %64, align 1
  %66 = mul i32 %65, -2048144777
  %67 = add i32 %66, %51
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 13)
  br label %69

69:                                               ; preds = %41, %13
  %70 = phi i32 [ %55, %41 ], [ %27, %13 ]
  %71 = phi i32 [ %59, %41 ], [ %31, %13 ]
  %72 = phi i32 [ %63, %41 ], [ %35, %13 ]
  %73 = phi i32 [ %68, %41 ], [ %40, %13 ]
  %74 = mul i32 %70, -1640531535
  %75 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %76 = load i32, ptr %75, align 1
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %74
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = mul i32 %73, -1640531535
  %82 = mul i32 %72, -1640531535
  %83 = mul i32 %71, -1640531535
  %84 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %85 = load i32, ptr %84, align 1
  %86 = mul i32 %85, -2048144777
  %87 = add i32 %86, %83
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 13)
  %89 = mul i32 %88, -1640531535
  %90 = mul i32 %72, 1013904226
  %91 = lshr i32 %82, 31
  %92 = mul i32 %73, 465361024
  %93 = lshr i32 %81, 25
  %94 = mul i32 %79, 2006650880
  %95 = lshr i32 %80, 20
  %96 = mul i32 %88, -423362560
  %97 = lshr i32 %89, 14
  %98 = add i32 %90, 32
  %99 = or disjoint i32 %98, %91
  %100 = add i32 %99, %92
  %101 = add i32 %100, %93
  %102 = add i32 %101, %94
  %103 = add i32 %102, %95
  %104 = add i32 %103, %96
  %105 = add i32 %104, %97
  %106 = lshr i32 %105, 15
  %107 = xor i32 %106, %105
  %108 = mul i32 %107, -2048144777
  %109 = lshr i32 %108, 13
  %110 = xor i32 %109, %108
  %111 = mul i32 %110, -1028477379
  %112 = lshr i32 %111, 16
  %113 = xor i32 %112, %111
  ret i32 %113
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly, ptr noalias readonly, i32, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1022e" "target-features"="+armv5te,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
