; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7ad2406/api_xxh32_aarch64_len33/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7ad2406/api_xxh32_aarch64_len33/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 501
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 3
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = icmp ugt i64 %1, 15
  br i1 %6, label %9, label %102

9:                                                ; preds = %3
  br i1 %8, label %10, label %62

10:                                               ; preds = %9
  %11 = getelementptr inbounds i8, ptr %7, i64 -16
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
  %26 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %18
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %19
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 12
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, -2048144777
  %41 = add i32 %40, %20
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 13)
  %43 = mul i32 %42, -1640531535
  %44 = getelementptr inbounds nuw i8, ptr %16, i64 16
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
  %67 = trunc i64 %1 to i32
  %68 = add i32 %65, %67
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 4
  %70 = icmp ugt ptr %69, %7
  br i1 %70, label %71, label %80

71:                                               ; preds = %80, %64
  %72 = phi i32 [ %68, %64 ], [ %88, %80 ]
  %73 = phi ptr [ %66, %64 ], [ %81, %80 ]
  %74 = icmp ult ptr %73, %7
  br i1 %74, label %75, label %195

75:                                               ; preds = %71
  %76 = ptrtoint ptr %73 to i64
  %77 = add i64 %1, %4
  %78 = sub i64 %77, %76
  %79 = getelementptr i8, ptr %73, i64 %78
  br label %91

80:                                               ; preds = %64, %80
  %81 = phi ptr [ %89, %80 ], [ %69, %64 ]
  %82 = phi ptr [ %81, %80 ], [ %66, %64 ]
  %83 = phi i32 [ %88, %80 ], [ %68, %64 ]
  %84 = load i32, ptr %82, align 4
  %85 = mul i32 %84, -1028477379
  %86 = add i32 %85, %83
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 17)
  %88 = mul i32 %87, 668265263
  %89 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %90 = icmp ugt ptr %89, %7
  br i1 %90, label %71, label %80

91:                                               ; preds = %75, %91
  %92 = phi ptr [ %100, %91 ], [ %73, %75 ]
  %93 = phi i32 [ %99, %91 ], [ %72, %75 ]
  %94 = load i8, ptr %92, align 1
  %95 = zext i8 %94 to i32
  %96 = mul i32 %95, 374761393
  %97 = add i32 %96, %93
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 11)
  %99 = mul i32 %98, -1640531535
  %100 = getelementptr inbounds nuw i8, ptr %92, i64 1
  %101 = icmp eq ptr %100, %79
  br i1 %101, label %195, label %91

102:                                              ; preds = %3
  br i1 %8, label %103, label %155

103:                                              ; preds = %102
  %104 = getelementptr inbounds i8, ptr %7, i64 -16
  %105 = add i32 %2, 606290984
  %106 = add i32 %2, -2048144777
  %107 = add i32 %2, 1640531535
  br label %108

108:                                              ; preds = %108, %103
  %109 = phi ptr [ %0, %103 ], [ %137, %108 ]
  %110 = phi i32 [ %105, %103 ], [ %118, %108 ]
  %111 = phi i32 [ %106, %103 ], [ %124, %108 ]
  %112 = phi i32 [ %2, %103 ], [ %130, %108 ]
  %113 = phi i32 [ %107, %103 ], [ %136, %108 ]
  %114 = load i32, ptr %109, align 1
  %115 = mul i32 %114, -2048144777
  %116 = add i32 %115, %110
  %117 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 13)
  %118 = mul i32 %117, -1640531535
  %119 = getelementptr inbounds nuw i8, ptr %109, i64 4
  %120 = load i32, ptr %119, align 1
  %121 = mul i32 %120, -2048144777
  %122 = add i32 %121, %111
  %123 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 13)
  %124 = mul i32 %123, -1640531535
  %125 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %126 = load i32, ptr %125, align 1
  %127 = mul i32 %126, -2048144777
  %128 = add i32 %127, %112
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 13)
  %130 = mul i32 %129, -1640531535
  %131 = getelementptr inbounds nuw i8, ptr %109, i64 12
  %132 = load i32, ptr %131, align 1
  %133 = mul i32 %132, -2048144777
  %134 = add i32 %133, %113
  %135 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 13)
  %136 = mul i32 %135, -1640531535
  %137 = getelementptr inbounds nuw i8, ptr %109, i64 16
  %138 = icmp ugt ptr %137, %104
  br i1 %138, label %139, label %108

139:                                              ; preds = %108
  %140 = mul i32 %117, 1013904226
  %141 = lshr i32 %118, 31
  %142 = mul i32 %123, 465361024
  %143 = lshr i32 %124, 25
  %144 = mul i32 %129, 2006650880
  %145 = lshr i32 %130, 20
  %146 = mul i32 %135, -423362560
  %147 = lshr i32 %136, 14
  %148 = or disjoint i32 %141, %140
  %149 = add i32 %148, %142
  %150 = add i32 %149, %143
  %151 = add i32 %150, %144
  %152 = add i32 %151, %145
  %153 = add i32 %152, %146
  %154 = add i32 %153, %147
  br label %157

155:                                              ; preds = %102
  %156 = add i32 %2, 374761393
  br label %157

157:                                              ; preds = %155, %139
  %158 = phi i32 [ %154, %139 ], [ %156, %155 ]
  %159 = phi ptr [ %137, %139 ], [ %0, %155 ]
  %160 = trunc i64 %1 to i32
  %161 = add i32 %158, %160
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 4
  %163 = icmp ugt ptr %162, %7
  br i1 %163, label %164, label %173

164:                                              ; preds = %173, %157
  %165 = phi i32 [ %161, %157 ], [ %181, %173 ]
  %166 = phi ptr [ %159, %157 ], [ %174, %173 ]
  %167 = icmp ult ptr %166, %7
  br i1 %167, label %168, label %195

168:                                              ; preds = %164
  %169 = ptrtoint ptr %166 to i64
  %170 = add i64 %1, %4
  %171 = sub i64 %170, %169
  %172 = getelementptr i8, ptr %166, i64 %171
  br label %184

173:                                              ; preds = %157, %173
  %174 = phi ptr [ %182, %173 ], [ %162, %157 ]
  %175 = phi ptr [ %174, %173 ], [ %159, %157 ]
  %176 = phi i32 [ %181, %173 ], [ %161, %157 ]
  %177 = load i32, ptr %175, align 1
  %178 = mul i32 %177, -1028477379
  %179 = add i32 %178, %176
  %180 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 17)
  %181 = mul i32 %180, 668265263
  %182 = getelementptr inbounds nuw i8, ptr %174, i64 4
  %183 = icmp ugt ptr %182, %7
  br i1 %183, label %164, label %173

184:                                              ; preds = %168, %184
  %185 = phi ptr [ %193, %184 ], [ %166, %168 ]
  %186 = phi i32 [ %192, %184 ], [ %165, %168 ]
  %187 = load i8, ptr %185, align 1
  %188 = zext i8 %187 to i32
  %189 = mul i32 %188, 374761393
  %190 = add i32 %189, %186
  %191 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 11)
  %192 = mul i32 %191, -1640531535
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 1
  %194 = icmp eq ptr %193, %172
  br i1 %194, label %195, label %184

195:                                              ; preds = %184, %91, %164, %71
  %196 = phi i32 [ %72, %71 ], [ %165, %164 ], [ %99, %91 ], [ %192, %184 ]
  %197 = lshr i32 %196, 15
  %198 = xor i32 %197, %196
  %199 = mul i32 %198, -2048144777
  %200 = lshr i32 %199, 13
  %201 = xor i32 %200, %199
  %202 = mul i32 %201, -1028477379
  %203 = lshr i32 %202, 16
  %204 = xor i32 %203, %202
  ret i32 %204
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = icmp ugt i64 %1, 31
  br i1 %6, label %9, label %151

9:                                                ; preds = %3
  br i1 %8, label %10, label %94

10:                                               ; preds = %9
  %11 = getelementptr inbounds i8, ptr %7, i64 -32
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
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %25 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = load i64, ptr %24, align 8
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, %17
  %30 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %31 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = load i64, ptr %30, align 8
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, %18
  %36 = getelementptr inbounds nuw i8, ptr %20, i64 24
  %37 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = load i64, ptr %36, align 8
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, %19
  %42 = getelementptr inbounds nuw i8, ptr %20, i64 32
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
  %99 = add i64 %97, %1
  %100 = getelementptr inbounds nuw i8, ptr %98, i64 8
  %101 = icmp ugt ptr %100, %7
  br i1 %101, label %118, label %102

102:                                              ; preds = %96, %102
  %103 = phi ptr [ %116, %102 ], [ %100, %96 ]
  %104 = phi ptr [ %103, %102 ], [ %98, %96 ]
  %105 = phi i64 [ %115, %102 ], [ %99, %96 ]
  %106 = load i64, ptr %104, align 8
  %107 = mul i64 %106, -4417276706812531889
  %108 = mul i64 %106, -7788283243316379648
  %109 = lshr i64 %107, 33
  %110 = or disjoint i64 %109, %108
  %111 = mul i64 %110, -7046029288634856825
  %112 = xor i64 %111, %105
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 27)
  %114 = mul i64 %113, -7046029288634856825
  %115 = add i64 %114, -8796714831421723037
  %116 = getelementptr inbounds nuw i8, ptr %103, i64 8
  %117 = icmp ugt ptr %116, %7
  br i1 %117, label %118, label %102

118:                                              ; preds = %102, %96
  %119 = phi i64 [ %99, %96 ], [ %115, %102 ]
  %120 = phi ptr [ %98, %96 ], [ %103, %102 ]
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 4
  %122 = icmp ugt ptr %121, %7
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  %124 = load i32, ptr %120, align 4
  %125 = zext i32 %124 to i64
  %126 = mul i64 %125, -7046029288634856825
  %127 = xor i64 %126, %119
  %128 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 23)
  %129 = mul i64 %128, -4417276706812531889
  %130 = add i64 %129, 1609587929392839161
  br label %131

131:                                              ; preds = %123, %118
  %132 = phi i64 [ %130, %123 ], [ %119, %118 ]
  %133 = phi ptr [ %121, %123 ], [ %120, %118 ]
  %134 = icmp ult ptr %133, %7
  br i1 %134, label %135, label %293

135:                                              ; preds = %131
  %136 = ptrtoint ptr %133 to i64
  %137 = add i64 %1, %4
  %138 = sub i64 %137, %136
  %139 = getelementptr i8, ptr %133, i64 %138
  br label %140

140:                                              ; preds = %135, %140
  %141 = phi ptr [ %149, %140 ], [ %133, %135 ]
  %142 = phi i64 [ %148, %140 ], [ %132, %135 ]
  %143 = load i8, ptr %141, align 1
  %144 = zext i8 %143 to i64
  %145 = mul i64 %144, 2870177450012600261
  %146 = xor i64 %145, %142
  %147 = tail call i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 11)
  %148 = mul i64 %147, -7046029288634856825
  %149 = getelementptr inbounds nuw i8, ptr %141, i64 1
  %150 = icmp eq ptr %149, %139
  br i1 %150, label %293, label %140

151:                                              ; preds = %3
  br i1 %8, label %152, label %236

152:                                              ; preds = %151
  %153 = getelementptr inbounds i8, ptr %7, i64 -32
  %154 = add i64 %2, 6983438078262162902
  %155 = add i64 %2, -4417276706812531889
  %156 = add i64 %2, 7046029288634856825
  br label %157

157:                                              ; preds = %157, %152
  %158 = phi i64 [ %154, %152 ], [ %168, %157 ]
  %159 = phi i64 [ %155, %152 ], [ %174, %157 ]
  %160 = phi i64 [ %2, %152 ], [ %180, %157 ]
  %161 = phi i64 [ %156, %152 ], [ %186, %157 ]
  %162 = phi ptr [ %0, %152 ], [ %184, %157 ]
  %163 = load i64, ptr %162, align 1
  %164 = mul i64 %163, -4417276706812531889
  %165 = add i64 %164, %158
  %166 = getelementptr inbounds nuw i8, ptr %162, i64 8
  %167 = tail call i64 @llvm.fshl.i64(i64 %165, i64 %165, i64 31)
  %168 = mul i64 %167, -7046029288634856825
  %169 = load i64, ptr %166, align 1
  %170 = mul i64 %169, -4417276706812531889
  %171 = add i64 %170, %159
  %172 = getelementptr inbounds nuw i8, ptr %162, i64 16
  %173 = tail call i64 @llvm.fshl.i64(i64 %171, i64 %171, i64 31)
  %174 = mul i64 %173, -7046029288634856825
  %175 = load i64, ptr %172, align 1
  %176 = mul i64 %175, -4417276706812531889
  %177 = add i64 %176, %160
  %178 = getelementptr inbounds nuw i8, ptr %162, i64 24
  %179 = tail call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 31)
  %180 = mul i64 %179, -7046029288634856825
  %181 = load i64, ptr %178, align 1
  %182 = mul i64 %181, -4417276706812531889
  %183 = add i64 %182, %161
  %184 = getelementptr inbounds nuw i8, ptr %162, i64 32
  %185 = tail call i64 @llvm.fshl.i64(i64 %183, i64 %183, i64 31)
  %186 = mul i64 %185, -7046029288634856825
  %187 = icmp ugt ptr %184, %153
  br i1 %187, label %188, label %157

188:                                              ; preds = %157
  %189 = mul i64 %167, 4354685496439837966
  %190 = lshr i64 %168, 63
  %191 = mul i64 %173, 1998710666506355584
  %192 = lshr i64 %174, 57
  %193 = mul i64 %179, 8618509107074723840
  %194 = lshr i64 %180, 52
  %195 = mul i64 %185, -1817739358504222720
  %196 = lshr i64 %186, 46
  %197 = or disjoint i64 %190, %189
  %198 = add i64 %197, %191
  %199 = add i64 %198, %192
  %200 = add i64 %199, %193
  %201 = add i64 %200, %194
  %202 = add i64 %201, %195
  %203 = add i64 %202, %196
  %204 = mul i64 %167, -2381459717836149591
  %205 = mul i64 %167, -8665851108926685184
  %206 = lshr i64 %204, 33
  %207 = or disjoint i64 %206, %205
  %208 = mul i64 %207, -7046029288634856825
  %209 = xor i64 %203, %208
  %210 = mul i64 %209, -7046029288634856825
  %211 = add i64 %210, -8796714831421723037
  %212 = mul i64 %173, -2381459717836149591
  %213 = mul i64 %173, -8665851108926685184
  %214 = lshr i64 %212, 33
  %215 = or disjoint i64 %214, %213
  %216 = mul i64 %215, -7046029288634856825
  %217 = xor i64 %211, %216
  %218 = mul i64 %217, -7046029288634856825
  %219 = add i64 %218, -8796714831421723037
  %220 = mul i64 %179, -2381459717836149591
  %221 = mul i64 %179, -8665851108926685184
  %222 = lshr i64 %220, 33
  %223 = or disjoint i64 %222, %221
  %224 = mul i64 %223, -7046029288634856825
  %225 = xor i64 %219, %224
  %226 = mul i64 %225, -7046029288634856825
  %227 = add i64 %226, -8796714831421723037
  %228 = mul i64 %185, -2381459717836149591
  %229 = mul i64 %185, -8665851108926685184
  %230 = lshr i64 %228, 33
  %231 = or disjoint i64 %230, %229
  %232 = mul i64 %231, -7046029288634856825
  %233 = xor i64 %227, %232
  %234 = mul i64 %233, -7046029288634856825
  %235 = add i64 %234, -8796714831421723037
  br label %238

236:                                              ; preds = %151
  %237 = add i64 %2, 2870177450012600261
  br label %238

238:                                              ; preds = %236, %188
  %239 = phi i64 [ %235, %188 ], [ %237, %236 ]
  %240 = phi ptr [ %184, %188 ], [ %0, %236 ]
  %241 = add i64 %239, %1
  %242 = getelementptr inbounds nuw i8, ptr %240, i64 8
  %243 = icmp ugt ptr %242, %7
  br i1 %243, label %260, label %244

244:                                              ; preds = %238, %244
  %245 = phi ptr [ %258, %244 ], [ %242, %238 ]
  %246 = phi ptr [ %245, %244 ], [ %240, %238 ]
  %247 = phi i64 [ %257, %244 ], [ %241, %238 ]
  %248 = load i64, ptr %246, align 1
  %249 = mul i64 %248, -4417276706812531889
  %250 = mul i64 %248, -7788283243316379648
  %251 = lshr i64 %249, 33
  %252 = or disjoint i64 %251, %250
  %253 = mul i64 %252, -7046029288634856825
  %254 = xor i64 %253, %247
  %255 = tail call i64 @llvm.fshl.i64(i64 %254, i64 %254, i64 27)
  %256 = mul i64 %255, -7046029288634856825
  %257 = add i64 %256, -8796714831421723037
  %258 = getelementptr inbounds nuw i8, ptr %245, i64 8
  %259 = icmp ugt ptr %258, %7
  br i1 %259, label %260, label %244

260:                                              ; preds = %244, %238
  %261 = phi i64 [ %241, %238 ], [ %257, %244 ]
  %262 = phi ptr [ %240, %238 ], [ %245, %244 ]
  %263 = getelementptr inbounds nuw i8, ptr %262, i64 4
  %264 = icmp ugt ptr %263, %7
  br i1 %264, label %273, label %265

265:                                              ; preds = %260
  %266 = load i32, ptr %262, align 1
  %267 = zext i32 %266 to i64
  %268 = mul i64 %267, -7046029288634856825
  %269 = xor i64 %268, %261
  %270 = tail call i64 @llvm.fshl.i64(i64 %269, i64 %269, i64 23)
  %271 = mul i64 %270, -4417276706812531889
  %272 = add i64 %271, 1609587929392839161
  br label %273

273:                                              ; preds = %265, %260
  %274 = phi i64 [ %272, %265 ], [ %261, %260 ]
  %275 = phi ptr [ %263, %265 ], [ %262, %260 ]
  %276 = icmp ult ptr %275, %7
  br i1 %276, label %277, label %293

277:                                              ; preds = %273
  %278 = ptrtoint ptr %275 to i64
  %279 = add i64 %1, %4
  %280 = sub i64 %279, %278
  %281 = getelementptr i8, ptr %275, i64 %280
  br label %282

282:                                              ; preds = %277, %282
  %283 = phi ptr [ %291, %282 ], [ %275, %277 ]
  %284 = phi i64 [ %290, %282 ], [ %274, %277 ]
  %285 = load i8, ptr %283, align 1
  %286 = zext i8 %285 to i64
  %287 = mul i64 %286, 2870177450012600261
  %288 = xor i64 %287, %284
  %289 = tail call i64 @llvm.fshl.i64(i64 %288, i64 %288, i64 11)
  %290 = mul i64 %289, -7046029288634856825
  %291 = getelementptr inbounds nuw i8, ptr %283, i64 1
  %292 = icmp eq ptr %291, %281
  br i1 %292, label %293, label %282

293:                                              ; preds = %282, %140, %273, %131
  %294 = phi i64 [ %132, %131 ], [ %274, %273 ], [ %148, %140 ], [ %290, %282 ]
  %295 = lshr i64 %294, 33
  %296 = xor i64 %295, %294
  %297 = mul i64 %296, -4417276706812531889
  %298 = lshr i64 %297, 29
  %299 = xor i64 %298, %297
  %300 = mul i64 %299, 1609587929392839161
  %301 = lshr i64 %300, 32
  %302 = xor i64 %301, %300
  ret i64 %302
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #12
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #12
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr noundef writeonly initializes((0, 48)) %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  store i64 0, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %5, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr noundef writeonly initializes((0, 88)) %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  store i64 0, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %5, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %5 = load i64, ptr %0, align 8
  %6 = add i64 %5, %2
  store i64 %6, ptr %0, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = add i64 %2, %9
  %11 = icmp ult i64 %10, 16
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr readonly align 1 %1, i64 %2, i1 false)
  %15 = trunc i64 %2 to i32
  %16 = load i32, ptr %7, align 4
  %17 = add i32 %16, %15
  br label %114

18:                                               ; preds = %3
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %9
  %23 = sub i32 16, %8
  %24 = zext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr readonly align 1 %1, i64 %24, i1 false)
  %25 = load i32, ptr %21, align 1
  %26 = mul i32 %25, -2048144777
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  store i32 %31, ptr %27, align 4
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %33 = load i32, ptr %32, align 1
  %34 = mul i32 %33, -2048144777
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %36 = load i32, ptr %35, align 8
  %37 = add i32 %36, %34
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 13)
  %39 = mul i32 %38, -1640531535
  store i32 %39, ptr %35, align 8
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %41 = load i32, ptr %40, align 1
  %42 = mul i32 %41, -2048144777
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  store i32 %47, ptr %43, align 4
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %49 = load i32, ptr %48, align 1
  %50 = mul i32 %49, -2048144777
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, %50
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  store i32 %55, ptr %51, align 8
  %56 = load i32, ptr %7, align 4
  %57 = sub i32 16, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 %58
  store i32 0, ptr %7, align 4
  br label %60

60:                                               ; preds = %20, %18
  %61 = phi ptr [ %59, %20 ], [ %1, %18 ]
  %62 = getelementptr inbounds i8, ptr %4, i64 -16
  %63 = icmp ugt ptr %61, %62
  br i1 %63, label %105, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %72 = load i32, ptr %71, align 8
  br label %73

73:                                               ; preds = %73, %64
  %74 = phi ptr [ %61, %64 ], [ %102, %73 ]
  %75 = phi i32 [ %66, %64 ], [ %83, %73 ]
  %76 = phi i32 [ %68, %64 ], [ %89, %73 ]
  %77 = phi i32 [ %70, %64 ], [ %95, %73 ]
  %78 = phi i32 [ %72, %64 ], [ %101, %73 ]
  %79 = load i32, ptr %74, align 1
  %80 = mul i32 %79, -2048144777
  %81 = add i32 %80, %75
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 13)
  %83 = mul i32 %82, -1640531535
  %84 = getelementptr inbounds nuw i8, ptr %74, i64 4
  %85 = load i32, ptr %84, align 1
  %86 = mul i32 %85, -2048144777
  %87 = add i32 %86, %76
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 13)
  %89 = mul i32 %88, -1640531535
  %90 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %91 = load i32, ptr %90, align 1
  %92 = mul i32 %91, -2048144777
  %93 = add i32 %92, %77
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 13)
  %95 = mul i32 %94, -1640531535
  %96 = getelementptr inbounds nuw i8, ptr %74, i64 12
  %97 = load i32, ptr %96, align 1
  %98 = mul i32 %97, -2048144777
  %99 = add i32 %98, %78
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 13)
  %101 = mul i32 %100, -1640531535
  %102 = getelementptr inbounds nuw i8, ptr %74, i64 16
  %103 = icmp ugt ptr %102, %62
  br i1 %103, label %104, label %73

104:                                              ; preds = %73
  store i32 %83, ptr %65, align 4
  store i32 %89, ptr %67, align 8
  store i32 %95, ptr %69, align 4
  store i32 %101, ptr %71, align 8
  br label %105

105:                                              ; preds = %104, %60
  %106 = phi ptr [ %102, %104 ], [ %61, %60 ]
  %107 = icmp ult ptr %106, %4
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %110 = ptrtoint ptr %4 to i64
  %111 = ptrtoint ptr %106 to i64
  %112 = sub i64 %110, %111
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %109, ptr nonnull readonly align 1 %106, i64 %112, i1 false)
  %113 = trunc i64 %112 to i32
  br label %114

114:                                              ; preds = %108, %12
  %115 = phi i32 [ %17, %12 ], [ %113, %108 ]
  store i32 %115, ptr %7, align 4
  br label %116

116:                                              ; preds = %114, %105
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = ptrtoint ptr %0 to i64
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 28
  %9 = load i64, ptr %0, align 8
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7)
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 12)
  %22 = add i32 %18, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 18)
  %26 = add i32 %22, %25
  br label %31

27:                                               ; preds = %1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, 374761393
  br label %31

31:                                               ; preds = %27, %11
  %32 = phi i32 [ %26, %11 ], [ %30, %27 ]
  %33 = trunc i64 %9 to i32
  %34 = add i32 %32, %33
  %35 = icmp ult i32 %5, 4
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %48

38:                                               ; preds = %48, %31
  %39 = phi ptr [ %3, %31 ], [ %49, %48 ]
  %40 = phi i32 [ %34, %31 ], [ %56, %48 ]
  %41 = icmp ult ptr %39, %8
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = ptrtoint ptr %39 to i64
  %44 = add i64 %2, %6
  %45 = add i64 %44, 28
  %46 = sub i64 %45, %43
  %47 = getelementptr i8, ptr %39, i64 %46
  br label %59

48:                                               ; preds = %36, %48
  %49 = phi ptr [ %57, %48 ], [ %37, %36 ]
  %50 = phi i32 [ %56, %48 ], [ %34, %36 ]
  %51 = phi ptr [ %49, %48 ], [ %3, %36 ]
  %52 = load i32, ptr %51, align 1
  %53 = mul i32 %52, -1028477379
  %54 = add i32 %53, %50
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 17)
  %56 = mul i32 %55, 668265263
  %57 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %58 = icmp ugt ptr %57, %8
  br i1 %58, label %38, label %48

59:                                               ; preds = %42, %59
  %60 = phi i32 [ %67, %59 ], [ %40, %42 ]
  %61 = phi ptr [ %68, %59 ], [ %39, %42 ]
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = mul i32 %63, 374761393
  %65 = add i32 %64, %60
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 11)
  %67 = mul i32 %66, -1640531535
  %68 = getelementptr inbounds nuw i8, ptr %61, i64 1
  %69 = icmp eq ptr %68, %47
  br i1 %69, label %70, label %59

70:                                               ; preds = %59, %38
  %71 = phi i32 [ %40, %38 ], [ %67, %59 ]
  %72 = lshr i32 %71, 15
  %73 = xor i32 %72, %71
  %74 = mul i32 %73, -2048144777
  %75 = lshr i32 %74, 13
  %76 = xor i32 %75, %74
  %77 = mul i32 %76, -1028477379
  %78 = lshr i32 %77, 16
  %79 = xor i32 %78, %77
  ret i32 %79
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %5 = load i64, ptr %0, align 8
  %6 = add i64 %5, %2
  store i64 %6, ptr %0, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %8 = load i32, ptr %7, align 8
  %9 = zext i32 %8 to i64
  %10 = add i64 %2, %9
  %11 = icmp ult i64 %10, 32
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %14, ptr readonly align 1 %1, i64 %2, i1 false)
  %15 = trunc i64 %2 to i32
  %16 = load i32, ptr %7, align 8
  %17 = add i32 %16, %15
  br label %115

18:                                               ; preds = %3
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %9
  %23 = sub i32 32, %8
  %24 = zext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr readonly align 1 %1, i64 %24, i1 false)
  %25 = load i64, ptr %21, align 1
  %26 = mul i64 %25, -4417276706812531889
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %28, %26
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  store i64 %31, ptr %27, align 8
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %33 = load i64, ptr %32, align 1
  %34 = mul i64 %33, -4417276706812531889
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %36, %34
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  store i64 %39, ptr %35, align 8
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %41 = load i64, ptr %40, align 1
  %42 = mul i64 %41, -4417276706812531889
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load i64, ptr %43, align 8
  %45 = add i64 %44, %42
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  store i64 %47, ptr %43, align 8
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %49 = load i64, ptr %48, align 1
  %50 = mul i64 %49, -4417276706812531889
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %52, %50
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 31)
  %55 = mul i64 %54, -7046029288634856825
  store i64 %55, ptr %51, align 8
  %56 = load i32, ptr %7, align 8
  %57 = sub i32 32, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 %58
  store i32 0, ptr %7, align 8
  br label %60

60:                                               ; preds = %20, %18
  %61 = phi ptr [ %59, %20 ], [ %1, %18 ]
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %63 = icmp ugt ptr %62, %4
  br i1 %63, label %106, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %4, i64 -32
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %67 = load i64, ptr %66, align 8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %73 = load i64, ptr %72, align 8
  br label %74

74:                                               ; preds = %74, %64
  %75 = phi ptr [ %61, %64 ], [ %103, %74 ]
  %76 = phi i64 [ %67, %64 ], [ %84, %74 ]
  %77 = phi i64 [ %69, %64 ], [ %90, %74 ]
  %78 = phi i64 [ %71, %64 ], [ %96, %74 ]
  %79 = phi i64 [ %73, %64 ], [ %102, %74 ]
  %80 = load i64, ptr %75, align 1
  %81 = mul i64 %80, -4417276706812531889
  %82 = add i64 %81, %76
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 31)
  %84 = mul i64 %83, -7046029288634856825
  %85 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %86 = load i64, ptr %85, align 1
  %87 = mul i64 %86, -4417276706812531889
  %88 = add i64 %87, %77
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 31)
  %90 = mul i64 %89, -7046029288634856825
  %91 = getelementptr inbounds nuw i8, ptr %75, i64 16
  %92 = load i64, ptr %91, align 1
  %93 = mul i64 %92, -4417276706812531889
  %94 = add i64 %93, %78
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 31)
  %96 = mul i64 %95, -7046029288634856825
  %97 = getelementptr inbounds nuw i8, ptr %75, i64 24
  %98 = load i64, ptr %97, align 1
  %99 = mul i64 %98, -4417276706812531889
  %100 = add i64 %99, %79
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 31)
  %102 = mul i64 %101, -7046029288634856825
  %103 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %104 = icmp ugt ptr %103, %65
  br i1 %104, label %105, label %74

105:                                              ; preds = %74
  store i64 %84, ptr %66, align 8
  store i64 %90, ptr %68, align 8
  store i64 %96, ptr %70, align 8
  store i64 %102, ptr %72, align 8
  br label %106

106:                                              ; preds = %105, %60
  %107 = phi ptr [ %103, %105 ], [ %61, %60 ]
  %108 = icmp ult ptr %107, %4
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %111 = ptrtoint ptr %4 to i64
  %112 = ptrtoint ptr %107 to i64
  %113 = sub i64 %111, %112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %110, ptr readonly align 1 %107, i64 %113, i1 false)
  %114 = trunc i64 %113 to i32
  br label %115

115:                                              ; preds = %109, %12
  %116 = phi i32 [ %17, %12 ], [ %114, %109 ]
  store i32 %116, ptr %7, align 8
  br label %117

117:                                              ; preds = %115, %106
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = ptrtoint ptr %0 to i64
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = load i32, ptr %4, align 8
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 48
  %9 = load i64, ptr %0, align 8
  %10 = icmp ugt i64 %9, 31
  br i1 %10, label %11, label %59

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %19 = load i64, ptr %18, align 8
  %20 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 1)
  %21 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 7)
  %22 = add i64 %21, %20
  %23 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 12)
  %24 = add i64 %22, %23
  %25 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 18)
  %26 = add i64 %24, %25
  %27 = mul i64 %13, -4417276706812531889
  %28 = mul i64 %13, -7788283243316379648
  %29 = lshr i64 %27, 33
  %30 = or disjoint i64 %29, %28
  %31 = mul i64 %30, -7046029288634856825
  %32 = xor i64 %26, %31
  %33 = mul i64 %32, -7046029288634856825
  %34 = add i64 %33, -8796714831421723037
  %35 = mul i64 %15, -4417276706812531889
  %36 = mul i64 %15, -7788283243316379648
  %37 = lshr i64 %35, 33
  %38 = or disjoint i64 %37, %36
  %39 = mul i64 %38, -7046029288634856825
  %40 = xor i64 %34, %39
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = mul i64 %17, -4417276706812531889
  %44 = mul i64 %17, -7788283243316379648
  %45 = lshr i64 %43, 33
  %46 = or disjoint i64 %45, %44
  %47 = mul i64 %46, -7046029288634856825
  %48 = xor i64 %42, %47
  %49 = mul i64 %48, -7046029288634856825
  %50 = add i64 %49, -8796714831421723037
  %51 = mul i64 %19, -4417276706812531889
  %52 = mul i64 %19, -7788283243316379648
  %53 = lshr i64 %51, 33
  %54 = or disjoint i64 %53, %52
  %55 = mul i64 %54, -7046029288634856825
  %56 = xor i64 %50, %55
  %57 = mul i64 %56, -7046029288634856825
  %58 = add i64 %57, -8796714831421723037
  br label %63

59:                                               ; preds = %1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %61 = load i64, ptr %60, align 8
  %62 = add i64 %61, 2870177450012600261
  br label %63

63:                                               ; preds = %59, %11
  %64 = phi i64 [ %58, %11 ], [ %62, %59 ]
  %65 = add i64 %64, %9
  %66 = icmp ult i32 %5, 8
  br i1 %66, label %85, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi ptr [ %83, %69 ], [ %68, %67 ]
  %71 = phi ptr [ %70, %69 ], [ %3, %67 ]
  %72 = phi i64 [ %82, %69 ], [ %65, %67 ]
  %73 = load i64, ptr %71, align 1
  %74 = mul i64 %73, -4417276706812531889
  %75 = mul i64 %73, -7788283243316379648
  %76 = lshr i64 %74, 33
  %77 = or disjoint i64 %76, %75
  %78 = mul i64 %77, -7046029288634856825
  %79 = xor i64 %78, %72
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 27)
  %81 = mul i64 %80, -7046029288634856825
  %82 = add i64 %81, -8796714831421723037
  %83 = getelementptr inbounds nuw i8, ptr %70, i64 8
  %84 = icmp ugt ptr %83, %8
  br i1 %84, label %85, label %69

85:                                               ; preds = %69, %63
  %86 = phi i64 [ %65, %63 ], [ %82, %69 ]
  %87 = phi ptr [ %3, %63 ], [ %70, %69 ]
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 4
  %89 = icmp ugt ptr %88, %8
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr %87, align 1
  %92 = zext i32 %91 to i64
  %93 = mul i64 %92, -7046029288634856825
  %94 = xor i64 %93, %86
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 23)
  %96 = mul i64 %95, -4417276706812531889
  %97 = add i64 %96, 1609587929392839161
  br label %98

98:                                               ; preds = %90, %85
  %99 = phi i64 [ %97, %90 ], [ %86, %85 ]
  %100 = phi ptr [ %88, %90 ], [ %87, %85 ]
  %101 = icmp ult ptr %100, %8
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = ptrtoint ptr %100 to i64
  %104 = add i64 %2, %6
  %105 = add i64 %104, 48
  %106 = sub i64 %105, %103
  %107 = getelementptr i8, ptr %100, i64 %106
  br label %108

108:                                              ; preds = %102, %108
  %109 = phi ptr [ %117, %108 ], [ %100, %102 ]
  %110 = phi i64 [ %116, %108 ], [ %99, %102 ]
  %111 = load i8, ptr %109, align 1
  %112 = zext i8 %111 to i64
  %113 = mul i64 %112, 2870177450012600261
  %114 = xor i64 %113, %110
  %115 = tail call i64 @llvm.fshl.i64(i64 %114, i64 %114, i64 11)
  %116 = mul i64 %115, -7046029288634856825
  %117 = getelementptr inbounds nuw i8, ptr %109, i64 1
  %118 = icmp eq ptr %117, %107
  br i1 %118, label %119, label %108

119:                                              ; preds = %108, %98
  %120 = phi i64 [ %99, %98 ], [ %116, %108 ]
  %121 = lshr i64 %120, 33
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, -4417276706812531889
  %124 = lshr i64 %123, 29
  %125 = xor i64 %124, %123
  %126 = mul i64 %125, 1609587929392839161
  %127 = lshr i64 %126, 32
  %128 = xor i64 %127, %126
  ret i64 %128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH32_canonicalFromHash(ptr noundef writeonly initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH64_canonicalFromHash(ptr noundef writeonly initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @XXH32_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @XXH64_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_oneshot(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 3
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = add i32 %1, 606290984
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = add i32 %1, -2048144777
  br i1 %5, label %11, label %40

11:                                               ; preds = %2
  %12 = load i32, ptr %6, align 4
  %13 = mul i32 %12, -2048144777
  %14 = load i32, ptr %0, align 4
  %15 = mul i32 %14, -2048144777
  %16 = add i32 %15, %7
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 13)
  %18 = mul i32 %17, -1640531535
  %19 = add i32 %13, %18
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 13)
  %21 = mul i32 %20, 1013904226
  %22 = add i32 %21, 33
  %23 = mul i32 %20, -1640531535
  %24 = lshr i32 %23, 31
  %25 = add i32 %22, %24
  %26 = load i32, ptr %8, align 4
  %27 = mul i32 %26, -2048144777
  %28 = load i32, ptr %9, align 4
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %29, %10
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = mul i32 %31, -1640531535
  %33 = add i32 %27, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, 465361024
  %36 = add i32 %25, %35
  %37 = mul i32 %34, -1640531535
  %38 = lshr i32 %37, 25
  %39 = add i32 %36, %38
  br label %69

40:                                               ; preds = %2
  %41 = load i32, ptr %6, align 1
  %42 = mul i32 %41, -2048144777
  %43 = load i32, ptr %0, align 1
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %7
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = add i32 %42, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, 1013904226
  %51 = add i32 %50, 33
  %52 = mul i32 %49, -1640531535
  %53 = lshr i32 %52, 31
  %54 = add i32 %51, %53
  %55 = load i32, ptr %8, align 1
  %56 = mul i32 %55, -2048144777
  %57 = load i32, ptr %9, align 1
  %58 = mul i32 %57, -2048144777
  %59 = add i32 %58, %10
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 13)
  %61 = mul i32 %60, -1640531535
  %62 = add i32 %56, %61
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, 465361024
  %65 = add i32 %54, %64
  %66 = mul i32 %63, -1640531535
  %67 = lshr i32 %66, 25
  %68 = add i32 %65, %67
  br label %69

69:                                               ; preds = %40, %11
  %70 = phi i32 [ %68, %40 ], [ %39, %11 ]
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %72 = load i32, ptr %71, align 1
  %73 = mul i32 %72, -2048144777
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %75 = load i32, ptr %74, align 1
  %76 = mul i32 %75, -2048144777
  %77 = add i32 %76, %1
  %78 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 13)
  %79 = mul i32 %78, -1640531535
  %80 = add i32 %73, %79
  %81 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 13)
  %82 = mul i32 %81, 2006650880
  %83 = add i32 %70, %82
  %84 = mul i32 %81, -1640531535
  %85 = lshr i32 %84, 20
  %86 = add i32 %83, %85
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %88 = load i32, ptr %87, align 1
  %89 = mul i32 %88, -2048144777
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %91 = load i32, ptr %90, align 1
  %92 = mul i32 %91, -2048144777
  %93 = add i32 %1, 1640531535
  %94 = add i32 %92, %93
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 13)
  %96 = mul i32 %95, -1640531535
  %97 = add i32 %89, %96
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -423362560
  %100 = add i32 %86, %99
  %101 = mul i32 %98, -1640531535
  %102 = lshr i32 %101, 14
  %103 = add i32 %100, %102
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = mul i32 %106, 374761393
  %108 = add i32 %107, %103
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 11)
  %110 = mul i32 %109, -1640531535
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

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
