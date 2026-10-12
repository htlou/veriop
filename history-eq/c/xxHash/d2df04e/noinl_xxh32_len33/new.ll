; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d2df04e/noinl_xxh32_len33/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d2df04e/noinl_xxh32_len33/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @XXH_versionNumber() local_unnamed_addr #0 {
  ret i32 602
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XXH32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = ptrtoint ptr %0 to i64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %6 = icmp ugt i64 %1, 15
  br i1 %6, label %7, label %51

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
  %18 = load i32, ptr %13, align 1
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %14
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %15
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %16
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr inbounds nuw i8, ptr %13, i64 12
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %17
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %42 = icmp ugt ptr %41, %8
  br i1 %42, label %43, label %12

43:                                               ; preds = %12
  %44 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 1)
  %45 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 7)
  %46 = add i32 %45, %44
  %47 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 12)
  %48 = add i32 %46, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 18)
  %50 = add i32 %48, %49
  br label %53

51:                                               ; preds = %3
  %52 = add i32 %2, 374761393
  br label %53

53:                                               ; preds = %51, %43
  %54 = phi i32 [ %50, %43 ], [ %52, %51 ]
  %55 = phi ptr [ %41, %43 ], [ %0, %51 ]
  %56 = trunc i64 %1 to i32
  %57 = add i32 %54, %56
  %58 = getelementptr inbounds nuw i8, ptr %55, i64 4
  %59 = icmp ugt ptr %58, %5
  br i1 %59, label %60, label %89

60:                                               ; preds = %89, %53
  %61 = phi i32 [ %57, %53 ], [ %97, %89 ]
  %62 = phi ptr [ %55, %53 ], [ %90, %89 ]
  %63 = icmp ult ptr %62, %5
  br i1 %63, label %64, label %160

64:                                               ; preds = %60
  %65 = ptrtoint ptr %62 to i64
  %66 = add i64 %1, %4
  %67 = sub i64 %66, %65
  %68 = and i64 %67, 7
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %64, %70
  %71 = phi ptr [ %80, %70 ], [ %62, %64 ]
  %72 = phi i32 [ %79, %70 ], [ %61, %64 ]
  %73 = phi i64 [ %81, %70 ], [ 0, %64 ]
  %74 = load i8, ptr %71, align 1
  %75 = zext i8 %74 to i32
  %76 = mul i32 %75, 374761393
  %77 = add i32 %76, %72
  %78 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 11)
  %79 = mul i32 %78, -1640531535
  %80 = getelementptr inbounds nuw i8, ptr %71, i64 1
  %81 = add i64 %73, 1
  %82 = icmp eq i64 %81, %68
  br i1 %82, label %83, label %70

83:                                               ; preds = %70, %64
  %84 = phi ptr [ %62, %64 ], [ %80, %70 ]
  %85 = phi i32 [ %61, %64 ], [ %79, %70 ]
  %86 = phi i32 [ poison, %64 ], [ %79, %70 ]
  %87 = sub i64 %65, %66
  %88 = icmp ugt i64 %87, -8
  br i1 %88, label %160, label %100

89:                                               ; preds = %53, %89
  %90 = phi ptr [ %98, %89 ], [ %58, %53 ]
  %91 = phi ptr [ %90, %89 ], [ %55, %53 ]
  %92 = phi i32 [ %97, %89 ], [ %57, %53 ]
  %93 = load i32, ptr %91, align 1
  %94 = mul i32 %93, -1028477379
  %95 = add i32 %94, %92
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 17)
  %97 = mul i32 %96, 668265263
  %98 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %99 = icmp ugt ptr %98, %5
  br i1 %99, label %60, label %89

100:                                              ; preds = %83, %100
  %101 = phi ptr [ %158, %100 ], [ %84, %83 ]
  %102 = phi i32 [ %157, %100 ], [ %85, %83 ]
  %103 = load i8, ptr %101, align 1
  %104 = zext i8 %103 to i32
  %105 = mul i32 %104, 374761393
  %106 = add i32 %105, %102
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 11)
  %108 = mul i32 %107, -1640531535
  %109 = getelementptr inbounds nuw i8, ptr %101, i64 1
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = mul i32 %111, 374761393
  %113 = add i32 %112, %108
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 11)
  %115 = mul i32 %114, -1640531535
  %116 = getelementptr inbounds nuw i8, ptr %101, i64 2
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = mul i32 %118, 374761393
  %120 = add i32 %119, %115
  %121 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 11)
  %122 = mul i32 %121, -1640531535
  %123 = getelementptr inbounds nuw i8, ptr %101, i64 3
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = mul i32 %125, 374761393
  %127 = add i32 %126, %122
  %128 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 11)
  %129 = mul i32 %128, -1640531535
  %130 = getelementptr inbounds nuw i8, ptr %101, i64 4
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = mul i32 %132, 374761393
  %134 = add i32 %133, %129
  %135 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 11)
  %136 = mul i32 %135, -1640531535
  %137 = getelementptr inbounds nuw i8, ptr %101, i64 5
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = mul i32 %139, 374761393
  %141 = add i32 %140, %136
  %142 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 11)
  %143 = mul i32 %142, -1640531535
  %144 = getelementptr inbounds nuw i8, ptr %101, i64 6
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = mul i32 %146, 374761393
  %148 = add i32 %147, %143
  %149 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 11)
  %150 = mul i32 %149, -1640531535
  %151 = getelementptr inbounds nuw i8, ptr %101, i64 7
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = mul i32 %153, 374761393
  %155 = add i32 %154, %150
  %156 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 11)
  %157 = mul i32 %156, -1640531535
  %158 = getelementptr inbounds nuw i8, ptr %101, i64 8
  %159 = icmp ult ptr %158, %5
  br i1 %159, label %100, label %160

160:                                              ; preds = %83, %100, %60
  %161 = phi i32 [ %61, %60 ], [ %86, %83 ], [ %157, %100 ]
  %162 = lshr i32 %161, 15
  %163 = xor i32 %162, %161
  %164 = mul i32 %163, -2048144777
  %165 = lshr i32 %164, 13
  %166 = xor i32 %165, %164
  %167 = mul i32 %166, -1028477379
  %168 = lshr i32 %167, 16
  %169 = xor i32 %168, %167
  ret i32 %169
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #12
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH32_copyState(ptr noundef writeonly initializes((0, 48)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr noundef writeonly initializes((0, 44)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  store i64 0, ptr %0, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %5, ptr %9, align 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i64 20, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %5 = trunc i64 %2 to i32
  %6 = load i32, ptr %0, align 4
  %7 = add i32 %6, %5
  store i32 %7, ptr %0, align 4
  %8 = icmp ugt i64 %2, 15
  %9 = icmp ugt i32 %7, 15
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %11
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = add i64 %2, %17
  %19 = icmp ult i64 %18, 16
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr readonly align 1 %1, i64 %2, i1 false)
  %23 = load i32, ptr %15, align 4
  %24 = add i32 %23, %5
  br label %121

25:                                               ; preds = %3
  %26 = icmp eq i32 %16, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %17
  %30 = sub i32 16, %16
  %31 = zext i32 %30 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr readonly align 1 %1, i64 %31, i1 false)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %28, align 1
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %33
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  store i32 %38, ptr %32, align 4
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %39, align 1
  %43 = mul i32 %42, -2048144777
  %44 = add i32 %43, %41
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  store i32 %46, ptr %40, align 4
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %47, align 1
  %51 = mul i32 %50, -2048144777
  %52 = add i32 %51, %49
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 13)
  %54 = mul i32 %53, -1640531535
  store i32 %54, ptr %48, align 4
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %55, align 1
  %59 = mul i32 %58, -2048144777
  %60 = add i32 %59, %57
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13)
  %62 = mul i32 %61, -1640531535
  store i32 %62, ptr %56, align 4
  %63 = load i32, ptr %15, align 4
  %64 = sub i32 16, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 %65
  store i32 0, ptr %15, align 4
  br label %67

67:                                               ; preds = %27, %25
  %68 = phi ptr [ %66, %27 ], [ %1, %25 ]
  %69 = getelementptr inbounds i8, ptr %4, i64 -16
  %70 = icmp ugt ptr %68, %69
  br i1 %70, label %112, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %80, %71
  %81 = phi ptr [ %68, %71 ], [ %109, %80 ]
  %82 = phi i32 [ %73, %71 ], [ %90, %80 ]
  %83 = phi i32 [ %75, %71 ], [ %96, %80 ]
  %84 = phi i32 [ %77, %71 ], [ %102, %80 ]
  %85 = phi i32 [ %79, %71 ], [ %108, %80 ]
  %86 = load i32, ptr %81, align 1
  %87 = mul i32 %86, -2048144777
  %88 = add i32 %87, %82
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 13)
  %90 = mul i32 %89, -1640531535
  %91 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %92 = load i32, ptr %91, align 1
  %93 = mul i32 %92, -2048144777
  %94 = add i32 %93, %83
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 13)
  %96 = mul i32 %95, -1640531535
  %97 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %98 = load i32, ptr %97, align 1
  %99 = mul i32 %98, -2048144777
  %100 = add i32 %99, %84
  %101 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 13)
  %102 = mul i32 %101, -1640531535
  %103 = getelementptr inbounds nuw i8, ptr %81, i64 12
  %104 = load i32, ptr %103, align 1
  %105 = mul i32 %104, -2048144777
  %106 = add i32 %105, %85
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 13)
  %108 = mul i32 %107, -1640531535
  %109 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %110 = icmp ugt ptr %109, %69
  br i1 %110, label %111, label %80

111:                                              ; preds = %80
  store i32 %90, ptr %72, align 4
  store i32 %96, ptr %74, align 4
  store i32 %102, ptr %76, align 4
  store i32 %108, ptr %78, align 4
  br label %112

112:                                              ; preds = %111, %67
  %113 = phi ptr [ %109, %111 ], [ %68, %67 ]
  %114 = icmp ult ptr %113, %4
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %117 = ptrtoint ptr %4 to i64
  %118 = ptrtoint ptr %113 to i64
  %119 = sub i64 %117, %118
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %116, ptr nonnull readonly align 1 %113, i64 %119, i1 false)
  %120 = trunc i64 %119 to i32
  br label %121

121:                                              ; preds = %115, %20
  %122 = phi i32 [ %24, %20 ], [ %120, %115 ]
  store i32 %122, ptr %15, align 4
  br label %123

123:                                              ; preds = %121, %112
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7)
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 12)
  %22 = add i32 %18, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 18)
  %26 = add i32 %22, %25
  br label %31

27:                                               ; preds = %1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 374761393
  br label %31

31:                                               ; preds = %27, %11
  %32 = phi i32 [ %26, %11 ], [ %30, %27 ]
  %33 = load i32, ptr %0, align 4
  %34 = add i32 %33, %32
  %35 = icmp ult i32 %4, 4
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %42

38:                                               ; preds = %42, %31
  %39 = phi ptr [ %2, %31 ], [ %43, %42 ]
  %40 = phi i32 [ %34, %31 ], [ %50, %42 ]
  %41 = icmp ult ptr %39, %7
  br i1 %41, label %53, label %64

42:                                               ; preds = %36, %42
  %43 = phi ptr [ %51, %42 ], [ %37, %36 ]
  %44 = phi i32 [ %50, %42 ], [ %34, %36 ]
  %45 = phi ptr [ %43, %42 ], [ %2, %36 ]
  %46 = load i32, ptr %45, align 1
  %47 = mul i32 %46, -1028477379
  %48 = add i32 %47, %44
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 17)
  %50 = mul i32 %49, 668265263
  %51 = getelementptr inbounds nuw i8, ptr %43, i64 4
  %52 = icmp ugt ptr %51, %7
  br i1 %52, label %38, label %42

53:                                               ; preds = %38, %53
  %54 = phi i32 [ %61, %53 ], [ %40, %38 ]
  %55 = phi ptr [ %62, %53 ], [ %39, %38 ]
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = mul i32 %57, 374761393
  %59 = add i32 %58, %54
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 11)
  %61 = mul i32 %60, -1640531535
  %62 = getelementptr inbounds nuw i8, ptr %55, i64 1
  %63 = icmp ult ptr %62, %7
  br i1 %63, label %53, label %64

64:                                               ; preds = %53, %38
  %65 = phi i32 [ %40, %38 ], [ %61, %53 ]
  %66 = lshr i32 %65, 15
  %67 = xor i32 %66, %65
  %68 = mul i32 %67, -2048144777
  %69 = lshr i32 %68, 13
  %70 = xor i32 %69, %68
  %71 = mul i32 %70, -1028477379
  %72 = lshr i32 %71, 16
  %73 = xor i32 %72, %71
  ret i32 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH32_canonicalFromHash(ptr noundef writeonly initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @XXH32_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = ptrtoint ptr %0 to i64
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %6 = icmp ugt i64 %1, 31
  br i1 %6, label %7, label %75

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i64 -32
  %9 = add i64 %2, 6983438078262162902
  %10 = add i64 %2, -4417276706812531889
  %11 = add i64 %2, 7046029288634856825
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i64 [ %9, %7 ], [ %22, %12 ]
  %14 = phi i64 [ %10, %7 ], [ %28, %12 ]
  %15 = phi i64 [ %2, %7 ], [ %34, %12 ]
  %16 = phi i64 [ %11, %7 ], [ %40, %12 ]
  %17 = phi ptr [ %0, %7 ], [ %41, %12 ]
  %18 = load i64, ptr %17, align 1
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %13
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %24 = load i64, ptr %23, align 1
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %14
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %30 = load i64, ptr %29, align 1
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %15
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = getelementptr inbounds nuw i8, ptr %17, i64 24
  %36 = load i64, ptr %35, align 1
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %16
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %42 = icmp ugt ptr %41, %8
  br i1 %42, label %43, label %12

43:                                               ; preds = %12
  %44 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 1)
  %45 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %46 = add i64 %45, %44
  %47 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 12)
  %48 = add i64 %46, %47
  %49 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 18)
  %50 = add i64 %48, %49
  %51 = mul i64 %21, -2381459717836149591
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 31)
  %53 = mul i64 %52, -7046029288634856825
  %54 = xor i64 %50, %53
  %55 = mul i64 %54, -7046029288634856825
  %56 = add i64 %55, -8796714831421723037
  %57 = mul i64 %27, -2381459717836149591
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  %60 = xor i64 %56, %59
  %61 = mul i64 %60, -7046029288634856825
  %62 = add i64 %61, -8796714831421723037
  %63 = mul i64 %33, -2381459717836149591
  %64 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 31)
  %65 = mul i64 %64, -7046029288634856825
  %66 = xor i64 %62, %65
  %67 = mul i64 %66, -7046029288634856825
  %68 = add i64 %67, -8796714831421723037
  %69 = mul i64 %39, -2381459717836149591
  %70 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 31)
  %71 = mul i64 %70, -7046029288634856825
  %72 = xor i64 %68, %71
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  br label %77

75:                                               ; preds = %3
  %76 = add i64 %2, 2870177450012600261
  br label %77

77:                                               ; preds = %75, %43
  %78 = phi i64 [ %74, %43 ], [ %76, %75 ]
  %79 = phi ptr [ %41, %43 ], [ %0, %75 ]
  %80 = add i64 %78, %1
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %82 = icmp ugt ptr %81, %5
  br i1 %82, label %97, label %83

83:                                               ; preds = %77, %83
  %84 = phi ptr [ %95, %83 ], [ %81, %77 ]
  %85 = phi ptr [ %84, %83 ], [ %79, %77 ]
  %86 = phi i64 [ %94, %83 ], [ %80, %77 ]
  %87 = load i64, ptr %85, align 1
  %88 = mul i64 %87, -4417276706812531889
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 31)
  %90 = mul i64 %89, -7046029288634856825
  %91 = xor i64 %90, %86
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 27)
  %93 = mul i64 %92, -7046029288634856825
  %94 = add i64 %93, -8796714831421723037
  %95 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %96 = icmp ugt ptr %95, %5
  br i1 %96, label %97, label %83

97:                                               ; preds = %83, %77
  %98 = phi i64 [ %80, %77 ], [ %94, %83 ]
  %99 = phi ptr [ %79, %77 ], [ %84, %83 ]
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 4
  %101 = icmp ugt ptr %100, %5
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load i32, ptr %99, align 1
  %104 = zext i32 %103 to i64
  %105 = mul i64 %104, -7046029288634856825
  %106 = xor i64 %105, %98
  %107 = tail call i64 @llvm.fshl.i64(i64 %106, i64 %106, i64 23)
  %108 = mul i64 %107, -4417276706812531889
  %109 = add i64 %108, 1609587929392839161
  br label %110

110:                                              ; preds = %102, %97
  %111 = phi i64 [ %109, %102 ], [ %98, %97 ]
  %112 = phi ptr [ %100, %102 ], [ %99, %97 ]
  %113 = icmp ult ptr %112, %5
  br i1 %113, label %114, label %199

114:                                              ; preds = %110
  %115 = ptrtoint ptr %112 to i64
  %116 = add i64 %1, %4
  %117 = sub i64 %116, %115
  %118 = and i64 %117, 7
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %114, %120
  %121 = phi ptr [ %130, %120 ], [ %112, %114 ]
  %122 = phi i64 [ %129, %120 ], [ %111, %114 ]
  %123 = phi i64 [ %131, %120 ], [ 0, %114 ]
  %124 = load i8, ptr %121, align 1
  %125 = zext i8 %124 to i64
  %126 = mul i64 %125, 2870177450012600261
  %127 = xor i64 %126, %122
  %128 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 11)
  %129 = mul i64 %128, -7046029288634856825
  %130 = getelementptr inbounds nuw i8, ptr %121, i64 1
  %131 = add i64 %123, 1
  %132 = icmp eq i64 %131, %118
  br i1 %132, label %133, label %120

133:                                              ; preds = %120, %114
  %134 = phi ptr [ %112, %114 ], [ %130, %120 ]
  %135 = phi i64 [ %111, %114 ], [ %129, %120 ]
  %136 = phi i64 [ poison, %114 ], [ %129, %120 ]
  %137 = sub i64 %115, %116
  %138 = icmp ugt i64 %137, -8
  br i1 %138, label %199, label %139

139:                                              ; preds = %133, %139
  %140 = phi ptr [ %197, %139 ], [ %134, %133 ]
  %141 = phi i64 [ %196, %139 ], [ %135, %133 ]
  %142 = load i8, ptr %140, align 1
  %143 = zext i8 %142 to i64
  %144 = mul i64 %143, 2870177450012600261
  %145 = xor i64 %144, %141
  %146 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 11)
  %147 = mul i64 %146, -7046029288634856825
  %148 = getelementptr inbounds nuw i8, ptr %140, i64 1
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i64
  %151 = mul i64 %150, 2870177450012600261
  %152 = xor i64 %151, %147
  %153 = tail call i64 @llvm.fshl.i64(i64 %152, i64 %152, i64 11)
  %154 = mul i64 %153, -7046029288634856825
  %155 = getelementptr inbounds nuw i8, ptr %140, i64 2
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i64
  %158 = mul i64 %157, 2870177450012600261
  %159 = xor i64 %158, %154
  %160 = tail call i64 @llvm.fshl.i64(i64 %159, i64 %159, i64 11)
  %161 = mul i64 %160, -7046029288634856825
  %162 = getelementptr inbounds nuw i8, ptr %140, i64 3
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i64
  %165 = mul i64 %164, 2870177450012600261
  %166 = xor i64 %165, %161
  %167 = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 11)
  %168 = mul i64 %167, -7046029288634856825
  %169 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i64
  %172 = mul i64 %171, 2870177450012600261
  %173 = xor i64 %172, %168
  %174 = tail call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 11)
  %175 = mul i64 %174, -7046029288634856825
  %176 = getelementptr inbounds nuw i8, ptr %140, i64 5
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i64
  %179 = mul i64 %178, 2870177450012600261
  %180 = xor i64 %179, %175
  %181 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 11)
  %182 = mul i64 %181, -7046029288634856825
  %183 = getelementptr inbounds nuw i8, ptr %140, i64 6
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i64
  %186 = mul i64 %185, 2870177450012600261
  %187 = xor i64 %186, %182
  %188 = tail call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 11)
  %189 = mul i64 %188, -7046029288634856825
  %190 = getelementptr inbounds nuw i8, ptr %140, i64 7
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i64
  %193 = mul i64 %192, 2870177450012600261
  %194 = xor i64 %193, %189
  %195 = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 11)
  %196 = mul i64 %195, -7046029288634856825
  %197 = getelementptr inbounds nuw i8, ptr %140, i64 8
  %198 = icmp ult ptr %197, %5
  br i1 %198, label %139, label %199

199:                                              ; preds = %133, %139, %110
  %200 = phi i64 [ %111, %110 ], [ %136, %133 ], [ %196, %139 ]
  %201 = lshr i64 %200, 33
  %202 = xor i64 %201, %200
  %203 = mul i64 %202, -4417276706812531889
  %204 = lshr i64 %203, 29
  %205 = xor i64 %204, %203
  %206 = mul i64 %205, 1609587929392839161
  %207 = lshr i64 %206, 32
  %208 = xor i64 %207, %206
  ret i64 %208
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #2 {
  %1 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #12
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @XXH64_copyState(ptr noundef writeonly initializes((0, 88)) %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr noundef writeonly initializes((0, 80)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  store i64 0, ptr %0, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %5, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %5 = load i64, ptr %0, align 8
  %6 = add i64 %5, %2
  store i64 %6, ptr %0, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %8 = load i32, ptr %7, align 8
  %9 = zext i32 %8 to i64
  %10 = add i64 %2, %9
  %11 = icmp ult i64 %10, 32
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 40
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %9
  %23 = sub i32 32, %8
  %24 = zext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr readonly align 1 %1, i64 %24, i1 false)
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %26 = load i64, ptr %25, align 8
  %27 = load i64, ptr %21, align 1
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, %26
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  store i64 %31, ptr %25, align 8
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %35 = load i64, ptr %34, align 1
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, %33
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  store i64 %39, ptr %32, align 8
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %43 = load i64, ptr %42, align 1
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, %41
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  store i64 %47, ptr %40, align 8
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %51 = load i64, ptr %50, align 1
  %52 = mul i64 %51, -4417276706812531889
  %53 = add i64 %52, %49
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 31)
  %55 = mul i64 %54, -7046029288634856825
  store i64 %55, ptr %48, align 8
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
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %67 = load i64, ptr %66, align 8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 32
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
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 40
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %4 = load i32, ptr %3, align 8
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %8 = load i64, ptr %0, align 8
  %9 = icmp ugt i64 %8, 31
  br i1 %9, label %10, label %50

10:                                               ; preds = %1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = load i64, ptr %17, align 8
  %19 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 1)
  %20 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 7)
  %21 = add i64 %20, %19
  %22 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 12)
  %23 = add i64 %21, %22
  %24 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 18)
  %25 = add i64 %23, %24
  %26 = mul i64 %12, -4417276706812531889
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = xor i64 %25, %28
  %30 = mul i64 %29, -7046029288634856825
  %31 = add i64 %30, -8796714831421723037
  %32 = mul i64 %14, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = xor i64 %31, %34
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = mul i64 %16, -4417276706812531889
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %37, %40
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  %44 = mul i64 %18, -4417276706812531889
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, -7046029288634856825
  %49 = add i64 %48, -8796714831421723037
  br label %54

50:                                               ; preds = %1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %52, 2870177450012600261
  br label %54

54:                                               ; preds = %50, %10
  %55 = phi i64 [ %49, %10 ], [ %53, %50 ]
  %56 = add i64 %55, %8
  %57 = icmp ult i32 %4, 8
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi ptr [ %72, %60 ], [ %59, %58 ]
  %62 = phi ptr [ %61, %60 ], [ %2, %58 ]
  %63 = phi i64 [ %71, %60 ], [ %56, %58 ]
  %64 = load i64, ptr %62, align 1
  %65 = mul i64 %64, -4417276706812531889
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 31)
  %67 = mul i64 %66, -7046029288634856825
  %68 = xor i64 %67, %63
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 27)
  %70 = mul i64 %69, -7046029288634856825
  %71 = add i64 %70, -8796714831421723037
  %72 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %73 = icmp ugt ptr %72, %7
  br i1 %73, label %74, label %60

74:                                               ; preds = %60, %54
  %75 = phi i64 [ %56, %54 ], [ %71, %60 ]
  %76 = phi ptr [ %2, %54 ], [ %61, %60 ]
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 4
  %78 = icmp ugt ptr %77, %7
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %76, align 1
  %81 = zext i32 %80 to i64
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %82, %75
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 23)
  %85 = mul i64 %84, -4417276706812531889
  %86 = add i64 %85, 1609587929392839161
  br label %87

87:                                               ; preds = %79, %74
  %88 = phi i64 [ %86, %79 ], [ %75, %74 ]
  %89 = phi ptr [ %77, %79 ], [ %76, %74 ]
  %90 = icmp ult ptr %89, %7
  br i1 %90, label %91, label %102

91:                                               ; preds = %87, %91
  %92 = phi ptr [ %100, %91 ], [ %89, %87 ]
  %93 = phi i64 [ %99, %91 ], [ %88, %87 ]
  %94 = load i8, ptr %92, align 1
  %95 = zext i8 %94 to i64
  %96 = mul i64 %95, 2870177450012600261
  %97 = xor i64 %96, %93
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 11)
  %99 = mul i64 %98, -7046029288634856825
  %100 = getelementptr inbounds nuw i8, ptr %92, i64 1
  %101 = icmp ult ptr %100, %7
  br i1 %101, label %91, label %102

102:                                              ; preds = %91, %87
  %103 = phi i64 [ %88, %87 ], [ %99, %91 ]
  %104 = lshr i64 %103, 33
  %105 = xor i64 %104, %103
  %106 = mul i64 %105, -4417276706812531889
  %107 = lshr i64 %106, 29
  %108 = xor i64 %107, %106
  %109 = mul i64 %108, 1609587929392839161
  %110 = lshr i64 %109, 32
  %111 = xor i64 %110, %109
  ret i64 %111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @XXH64_canonicalFromHash(ptr noundef writeonly initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %1)
  store i64 %3, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @XXH64_hashFromCanonical(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_oneshot(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @XXH32(ptr noundef %0, i64 noundef 33, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }

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
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
