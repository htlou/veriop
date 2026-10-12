; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/87ef054/api_xxh64_armv7_len31/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/87ef054/api_xxh64_armv7_len31/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i32 @XXH32(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %0 to i32
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %6 = icmp ugt i32 %1, 15
  br i1 %6, label %7, label %59

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i32 -16
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
  %23 = getelementptr inbounds nuw i8, ptr %13, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %15
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %13, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %16
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr inbounds nuw i8, ptr %13, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %17
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %13, i32 16
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
  %64 = add i32 %62, %1
  %65 = getelementptr inbounds nuw i8, ptr %63, i32 4
  %66 = icmp ugt ptr %65, %5
  br i1 %66, label %67, label %76

67:                                               ; preds = %76, %61
  %68 = phi i32 [ %64, %61 ], [ %84, %76 ]
  %69 = phi ptr [ %63, %61 ], [ %77, %76 ]
  %70 = icmp ult ptr %69, %5
  br i1 %70, label %71, label %98

71:                                               ; preds = %67
  %72 = ptrtoint ptr %69 to i32
  %73 = add i32 %1, %4
  %74 = sub i32 %73, %72
  %75 = getelementptr i8, ptr %69, i32 %74
  br label %87

76:                                               ; preds = %61, %76
  %77 = phi ptr [ %85, %76 ], [ %65, %61 ]
  %78 = phi ptr [ %77, %76 ], [ %63, %61 ]
  %79 = phi i32 [ %84, %76 ], [ %64, %61 ]
  %80 = load i32, ptr %78, align 4
  %81 = mul i32 %80, -1028477379
  %82 = add i32 %81, %79
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 17)
  %84 = mul i32 %83, 668265263
  %85 = getelementptr inbounds nuw i8, ptr %77, i32 4
  %86 = icmp ugt ptr %85, %5
  br i1 %86, label %67, label %76

87:                                               ; preds = %71, %87
  %88 = phi ptr [ %96, %87 ], [ %69, %71 ]
  %89 = phi i32 [ %95, %87 ], [ %68, %71 ]
  %90 = load i8, ptr %88, align 1
  %91 = zext i8 %90 to i32
  %92 = mul i32 %91, 374761393
  %93 = add i32 %92, %89
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 11)
  %95 = mul i32 %94, -1640531535
  %96 = getelementptr inbounds nuw i8, ptr %88, i32 1
  %97 = icmp eq ptr %96, %75
  br i1 %97, label %98, label %87

98:                                               ; preds = %87, %67
  %99 = phi i32 [ %68, %67 ], [ %95, %87 ]
  %100 = lshr i32 %99, 15
  %101 = xor i32 %100, %99
  %102 = mul i32 %101, -2048144777
  %103 = lshr i32 %102, 13
  %104 = xor i32 %103, %102
  %105 = mul i32 %104, -1028477379
  %106 = lshr i32 %105, 16
  %107 = xor i32 %106, %105
  ret i32 %107
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local i64 @XXH64(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %0 to i32
  %5 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %6 = icmp ugt i32 %1, 31
  br i1 %6, label %7, label %91

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i32 -32
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
  %21 = getelementptr inbounds nuw i8, ptr %17, i32 8
  %22 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = load i64, ptr %21, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %14
  %27 = getelementptr inbounds nuw i8, ptr %17, i32 16
  %28 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  %30 = load i64, ptr %27, align 8
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %15
  %33 = getelementptr inbounds nuw i8, ptr %17, i32 24
  %34 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = load i64, ptr %33, align 8
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %16
  %39 = getelementptr inbounds nuw i8, ptr %17, i32 32
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
  %96 = zext i32 %1 to i64
  %97 = add i64 %94, %96
  %98 = getelementptr inbounds nuw i8, ptr %95, i32 8
  %99 = icmp ugt ptr %98, %5
  br i1 %99, label %116, label %100

100:                                              ; preds = %93, %100
  %101 = phi ptr [ %114, %100 ], [ %98, %93 ]
  %102 = phi ptr [ %101, %100 ], [ %95, %93 ]
  %103 = phi i64 [ %113, %100 ], [ %97, %93 ]
  %104 = load i64, ptr %102, align 8
  %105 = mul i64 %104, -4417276706812531889
  %106 = mul i64 %104, -7788283243316379648
  %107 = lshr i64 %105, 33
  %108 = or disjoint i64 %107, %106
  %109 = mul i64 %108, -7046029288634856825
  %110 = xor i64 %109, %103
  %111 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 27)
  %112 = mul i64 %111, -7046029288634856825
  %113 = add i64 %112, -8796714831421723037
  %114 = getelementptr inbounds nuw i8, ptr %101, i32 8
  %115 = icmp ugt ptr %114, %5
  br i1 %115, label %116, label %100

116:                                              ; preds = %100, %93
  %117 = phi i64 [ %97, %93 ], [ %113, %100 ]
  %118 = phi ptr [ %95, %93 ], [ %101, %100 ]
  %119 = getelementptr inbounds nuw i8, ptr %118, i32 4
  %120 = icmp ugt ptr %119, %5
  br i1 %120, label %129, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %118, align 4
  %123 = zext i32 %122 to i64
  %124 = mul i64 %123, -7046029288634856825
  %125 = xor i64 %124, %117
  %126 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 23)
  %127 = mul i64 %126, -4417276706812531889
  %128 = add i64 %127, 1609587929392839161
  br label %129

129:                                              ; preds = %121, %116
  %130 = phi i64 [ %128, %121 ], [ %117, %116 ]
  %131 = phi ptr [ %119, %121 ], [ %118, %116 ]
  %132 = icmp ult ptr %131, %5
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = ptrtoint ptr %131 to i32
  %135 = add i32 %1, %4
  %136 = sub i32 %135, %134
  %137 = getelementptr i8, ptr %131, i32 %136
  br label %138

138:                                              ; preds = %133, %138
  %139 = phi ptr [ %147, %138 ], [ %131, %133 ]
  %140 = phi i64 [ %146, %138 ], [ %130, %133 ]
  %141 = load i8, ptr %139, align 1
  %142 = zext i8 %141 to i64
  %143 = mul i64 %142, 2870177450012600261
  %144 = xor i64 %143, %140
  %145 = tail call i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 11)
  %146 = mul i64 %145, -7046029288634856825
  %147 = getelementptr inbounds nuw i8, ptr %139, i32 1
  %148 = icmp eq ptr %147, %137
  br i1 %148, label %149, label %138

149:                                              ; preds = %138, %129
  %150 = phi i64 [ %130, %129 ], [ %146, %138 ]
  %151 = lshr i64 %150, 33
  %152 = xor i64 %151, %150
  %153 = mul i64 %152, -4417276706812531889
  %154 = lshr i64 %153, 29
  %155 = xor i64 %154, %153
  %156 = mul i64 %155, 1609587929392839161
  %157 = lshr i64 %156, 32
  %158 = xor i64 %157, %156
  ret i64 %158
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
  %23 = load i32, ptr %20, align 4
  %24 = mul i32 %23, -2048144777
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  store i32 %29, ptr %25, align 4
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, -2048144777
  %33 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, %32
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  store i32 %37, ptr %33, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i32 36
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, -2048144777
  %41 = getelementptr inbounds nuw i8, ptr %0, i32 20
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %40
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  store i32 %45, ptr %41, align 4
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 40
  %47 = load i32, ptr %46, align 4
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
  %76 = load i32, ptr %71, align 4
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %72
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = getelementptr inbounds nuw i8, ptr %71, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = mul i32 %82, -2048144777
  %84 = add i32 %83, %73
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 13)
  %86 = mul i32 %85, -1640531535
  %87 = getelementptr inbounds nuw i8, ptr %71, i32 8
  %88 = load i32, ptr %87, align 4
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %74
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  %93 = getelementptr inbounds nuw i8, ptr %71, i32 12
  %94 = load i32, ptr %93, align 4
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
  %51 = load i32, ptr %50, align 4
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
  %23 = load i64, ptr %20, align 8
  %24 = mul i64 %23, -4417276706812531889
  %25 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, %24
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 31)
  %29 = mul i64 %28, -7046029288634856825
  store i64 %29, ptr %25, align 8
  %30 = getelementptr inbounds nuw i8, ptr %0, i32 56
  %31 = load i64, ptr %30, align 8
  %32 = mul i64 %31, -4417276706812531889
  %33 = getelementptr inbounds nuw i8, ptr %0, i32 24
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, %32
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  store i64 %37, ptr %33, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i32 64
  %39 = load i64, ptr %38, align 8
  %40 = mul i64 %39, -4417276706812531889
  %41 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %42 = load i64, ptr %41, align 8
  %43 = add i64 %42, %40
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 31)
  %45 = mul i64 %44, -7046029288634856825
  store i64 %45, ptr %41, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 72
  %47 = load i64, ptr %46, align 8
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
  %77 = load i64, ptr %72, align 8
  %78 = mul i64 %77, -4417276706812531889
  %79 = add i64 %78, %73
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 31)
  %81 = mul i64 %80, -7046029288634856825
  %82 = getelementptr inbounds nuw i8, ptr %72, i32 8
  %83 = load i64, ptr %82, align 8
  %84 = mul i64 %83, -4417276706812531889
  %85 = add i64 %84, %74
  %86 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 31)
  %87 = mul i64 %86, -7046029288634856825
  %88 = getelementptr inbounds nuw i8, ptr %72, i32 16
  %89 = load i64, ptr %88, align 8
  %90 = mul i64 %89, -4417276706812531889
  %91 = add i64 %90, %75
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds nuw i8, ptr %72, i32 24
  %95 = load i64, ptr %94, align 8
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
define dso_local i64 @target_oneshot(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr i8, ptr %0, i32 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i32 8
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %0, align 8
  %9 = load i32, ptr %3, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 30
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = mul i64 %12, 2870177450012600261
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 29
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = mul i64 %16, 2870177450012600261
  %18 = getelementptr inbounds nuw i8, ptr %0, i32 28
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = mul i64 %20, 2870177450012600261
  %22 = zext i32 %9 to i64
  %23 = mul i64 %22, -7046029288634856825
  %24 = mul i64 %5, -4417276706812531889
  %25 = lshr i64 %24, 33
  %26 = mul i64 %5, -7788283243316379648
  %27 = or disjoint i64 %25, %26
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %7, -4417276706812531889
  %30 = lshr i64 %29, 33
  %31 = mul i64 %7, -7788283243316379648
  %32 = or disjoint i64 %30, %31
  %33 = mul i64 %32, -7046029288634856825
  %34 = mul i64 %8, -4417276706812531889
  %35 = lshr i64 %34, 33
  %36 = mul i64 %8, -7788283243316379648
  %37 = or disjoint i64 %35, %36
  %38 = mul i64 %37, -7046029288634856825
  %39 = add i64 %1, 2870177450012600292
  %40 = xor i64 %38, %39
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 27)
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  %44 = xor i64 %33, %43
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 27)
  %46 = mul i64 %45, -7046029288634856825
  %47 = add i64 %46, -8796714831421723037
  %48 = xor i64 %28, %47
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 27)
  %50 = mul i64 %49, -7046029288634856825
  %51 = add i64 %50, -8796714831421723037
  %52 = xor i64 %23, %51
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 23)
  %54 = mul i64 %53, -4417276706812531889
  %55 = add i64 %54, 1609587929392839161
  %56 = xor i64 %21, %55
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 11)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %17, %58
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 11)
  %61 = mul i64 %60, -7046029288634856825
  %62 = xor i64 %13, %61
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 11)
  %64 = mul i64 %63, -7046029288634856825
  %65 = lshr i64 %64, 33
  %66 = xor i64 %65, %64
  %67 = mul i64 %66, -4417276706812531889
  %68 = lshr i64 %67, 29
  %69 = xor i64 %68, %67
  %70 = mul i64 %69, 1609587929392839161
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  ret i64 %72
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly, ptr noalias readonly, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
