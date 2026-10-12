; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5176062/api_xxh32_len11_nw/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/5176062/api_xxh32_len11_nw/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH32_state_t = type { [6 x i64] }
%struct.XXH64_state_t = type { [11 x i64] }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @XXH32(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.XXH32_state_t, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #11
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %5, align 8
  %6 = add i32 %2, 606290984
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %6, ptr %7, align 4
  %8 = add i32 %2, -2048144777
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %2, ptr %10, align 4
  %11 = add i32 %2, 1640531535
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store i64 %1, ptr %4, align 8
  %15 = icmp ult i64 %1, 16
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %17, ptr align 1 %0, i64 %1, i1 false)
  br label %65

18:                                               ; preds = %3
  %19 = getelementptr inbounds i8, ptr %14, i64 -16
  %20 = icmp ugt ptr %0, %19
  br i1 %20, label %53, label %21

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %50, %21 ], [ %0, %18 ]
  %23 = phi i32 [ %31, %21 ], [ %6, %18 ]
  %24 = phi i32 [ %37, %21 ], [ %8, %18 ]
  %25 = phi i32 [ %43, %21 ], [ %2, %18 ]
  %26 = phi i32 [ %49, %21 ], [ %11, %18 ]
  %27 = load i32, ptr %22, align 4
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %23
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %24
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, -2048144777
  %41 = add i32 %40, %25
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 13)
  %43 = mul i32 %42, -1640531535
  %44 = getelementptr inbounds nuw i8, ptr %22, i64 12
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %26
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %51 = icmp ugt ptr %50, %19
  br i1 %51, label %52, label %21

52:                                               ; preds = %21
  store i32 %31, ptr %7, align 4
  store i32 %37, ptr %9, align 8
  store i32 %43, ptr %10, align 4
  store i32 %49, ptr %12, align 8
  br label %53

53:                                               ; preds = %52, %18
  %54 = phi i32 [ %49, %52 ], [ %11, %18 ]
  %55 = phi i32 [ %43, %52 ], [ %2, %18 ]
  %56 = phi i32 [ %37, %52 ], [ %8, %18 ]
  %57 = phi i32 [ %31, %52 ], [ %6, %18 ]
  %58 = phi ptr [ %50, %52 ], [ %0, %18 ]
  %59 = icmp ult ptr %58, %14
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %62 = ptrtoint ptr %14 to i64
  %63 = ptrtoint ptr %58 to i64
  %64 = sub i64 %62, %63
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %61, ptr nonnull align 1 %58, i64 %64, i1 false)
  br label %65

65:                                               ; preds = %60, %16
  %66 = phi i32 [ %11, %16 ], [ %54, %60 ]
  %67 = phi i32 [ %2, %16 ], [ %55, %60 ]
  %68 = phi i32 [ %8, %16 ], [ %56, %60 ]
  %69 = phi i32 [ %6, %16 ], [ %57, %60 ]
  %70 = phi i64 [ %1, %16 ], [ %64, %60 ]
  %71 = trunc i64 %70 to i32
  store i32 %71, ptr %13, align 4
  br label %72

72:                                               ; preds = %53, %65
  %73 = phi i32 [ %66, %65 ], [ %54, %53 ]
  %74 = phi i32 [ %67, %65 ], [ %55, %53 ]
  %75 = phi i32 [ %68, %65 ], [ %56, %53 ]
  %76 = phi i32 [ %69, %65 ], [ %57, %53 ]
  %77 = phi i32 [ %71, %65 ], [ 0, %53 ]
  %78 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds nuw i8, ptr %4, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %82 = icmp ugt i64 %1, 15
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 1)
  %85 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 7)
  %86 = add i32 %85, %84
  %87 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 12)
  %88 = add i32 %86, %87
  %89 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 18)
  %90 = add i32 %88, %89
  br label %93

91:                                               ; preds = %72
  %92 = add i32 %2, 374761393
  br label %93

93:                                               ; preds = %91, %83
  %94 = phi i32 [ %90, %83 ], [ %92, %91 ]
  %95 = trunc i64 %1 to i32
  %96 = add i32 %94, %95
  %97 = icmp ult i32 %77, 4
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds nuw i8, ptr %4, i64 36
  br label %104

100:                                              ; preds = %104, %93
  %101 = phi ptr [ %78, %93 ], [ %105, %104 ]
  %102 = phi i32 [ %96, %93 ], [ %112, %104 ]
  %103 = icmp ult ptr %101, %81
  br i1 %103, label %115, label %126

104:                                              ; preds = %104, %98
  %105 = phi ptr [ %113, %104 ], [ %99, %98 ]
  %106 = phi i32 [ %112, %104 ], [ %96, %98 ]
  %107 = phi ptr [ %105, %104 ], [ %78, %98 ]
  %108 = load i32, ptr %107, align 4
  %109 = mul i32 %108, -1028477379
  %110 = add i32 %109, %106
  %111 = call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 17)
  %112 = mul i32 %111, 668265263
  %113 = getelementptr inbounds nuw i8, ptr %105, i64 4
  %114 = icmp ugt ptr %113, %81
  br i1 %114, label %100, label %104

115:                                              ; preds = %100, %115
  %116 = phi i32 [ %123, %115 ], [ %102, %100 ]
  %117 = phi ptr [ %124, %115 ], [ %101, %100 ]
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = mul i32 %119, 374761393
  %121 = add i32 %120, %116
  %122 = call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 11)
  %123 = mul i32 %122, -1640531535
  %124 = getelementptr inbounds nuw i8, ptr %117, i64 1
  %125 = icmp ult ptr %124, %81
  br i1 %125, label %115, label %126

126:                                              ; preds = %115, %100
  %127 = phi i32 [ %102, %100 ], [ %123, %115 ]
  %128 = lshr i32 %127, 15
  %129 = xor i32 %128, %127
  %130 = mul i32 %129, -2048144777
  %131 = lshr i32 %130, 13
  %132 = xor i32 %131, %130
  %133 = mul i32 %132, -1028477379
  %134 = lshr i32 %133, 16
  %135 = xor i32 %134, %133
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  ret i32 %135
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH32_reset(ptr noundef writeonly initializes((0, 32)) %0, i32 noundef %1) local_unnamed_addr #2 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @XXH32_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
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
define dso_local i32 @XXH32_digest(ptr noundef readonly %0) local_unnamed_addr #3 {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @XXH64(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.XXH64_state_t, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #11
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %5, align 8
  %6 = add i64 %2, 6983438078262162902
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %6, ptr %7, align 8
  %8 = add i64 %2, -4417276706812531889
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %8, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %2, ptr %10, align 8
  %11 = add i64 %2, 7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store i64 %1, ptr %4, align 8
  %15 = icmp ult i64 %1, 32
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %17, ptr align 1 %0, i64 %1, i1 false)
  br label %58

18:                                               ; preds = %3
  %19 = getelementptr inbounds i8, ptr %14, i64 -32
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %0, %18 ], [ %49, %20 ]
  %22 = phi i64 [ %6, %18 ], [ %30, %20 ]
  %23 = phi i64 [ %8, %18 ], [ %36, %20 ]
  %24 = phi i64 [ %2, %18 ], [ %42, %20 ]
  %25 = phi i64 [ %11, %18 ], [ %48, %20 ]
  %26 = load i64, ptr %21, align 8
  %27 = mul i64 %26, -4417276706812531889
  %28 = add i64 %27, %22
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %32 = load i64, ptr %31, align 8
  %33 = mul i64 %32, -4417276706812531889
  %34 = add i64 %33, %23
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %38 = load i64, ptr %37, align 8
  %39 = mul i64 %38, -4417276706812531889
  %40 = add i64 %39, %24
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %42 = mul i64 %41, -7046029288634856825
  %43 = getelementptr inbounds nuw i8, ptr %21, i64 24
  %44 = load i64, ptr %43, align 8
  %45 = mul i64 %44, -4417276706812531889
  %46 = add i64 %45, %25
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 31)
  %48 = mul i64 %47, -7046029288634856825
  %49 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %50 = icmp ugt ptr %49, %19
  br i1 %50, label %51, label %20

51:                                               ; preds = %20
  store i64 %30, ptr %7, align 8
  store i64 %36, ptr %9, align 8
  store i64 %42, ptr %10, align 8
  store i64 %48, ptr %12, align 8
  %52 = icmp ult ptr %49, %14
  br i1 %52, label %53, label %65

53:                                               ; preds = %51
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 52
  %55 = ptrtoint ptr %14 to i64
  %56 = ptrtoint ptr %49 to i64
  %57 = sub i64 %55, %56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %54, ptr nonnull align 1 %49, i64 %57, i1 false)
  br label %58

58:                                               ; preds = %53, %16
  %59 = phi i64 [ %11, %16 ], [ %48, %53 ]
  %60 = phi i64 [ %2, %16 ], [ %42, %53 ]
  %61 = phi i64 [ %8, %16 ], [ %36, %53 ]
  %62 = phi i64 [ %6, %16 ], [ %30, %53 ]
  %63 = phi i64 [ %1, %16 ], [ %57, %53 ]
  %64 = trunc i64 %63 to i32
  store i32 %64, ptr %13, align 8
  br label %65

65:                                               ; preds = %51, %58
  %66 = phi i64 [ %59, %58 ], [ %48, %51 ]
  %67 = phi i64 [ %60, %58 ], [ %42, %51 ]
  %68 = phi i64 [ %61, %58 ], [ %36, %51 ]
  %69 = phi i64 [ %62, %58 ], [ %30, %51 ]
  %70 = phi i32 [ %64, %58 ], [ 0, %51 ]
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 52
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds nuw i8, ptr %4, i64 %72
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 52
  %75 = icmp ugt i64 %1, 31
  br i1 %75, label %76, label %116

76:                                               ; preds = %65
  %77 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 1)
  %78 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 7)
  %79 = add i64 %78, %77
  %80 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 12)
  %81 = add i64 %79, %80
  %82 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 18)
  %83 = add i64 %81, %82
  %84 = mul i64 %69, -4417276706812531889
  %85 = mul i64 %69, -7788283243316379648
  %86 = lshr i64 %84, 33
  %87 = or disjoint i64 %86, %85
  %88 = mul i64 %87, -7046029288634856825
  %89 = xor i64 %83, %88
  %90 = mul i64 %89, -7046029288634856825
  %91 = add i64 %90, -8796714831421723037
  %92 = mul i64 %68, -4417276706812531889
  %93 = mul i64 %68, -7788283243316379648
  %94 = lshr i64 %92, 33
  %95 = or disjoint i64 %94, %93
  %96 = mul i64 %95, -7046029288634856825
  %97 = xor i64 %91, %96
  %98 = mul i64 %97, -7046029288634856825
  %99 = add i64 %98, -8796714831421723037
  %100 = mul i64 %67, -4417276706812531889
  %101 = mul i64 %67, -7788283243316379648
  %102 = lshr i64 %100, 33
  %103 = or disjoint i64 %102, %101
  %104 = mul i64 %103, -7046029288634856825
  %105 = xor i64 %99, %104
  %106 = mul i64 %105, -7046029288634856825
  %107 = add i64 %106, -8796714831421723037
  %108 = mul i64 %66, -4417276706812531889
  %109 = mul i64 %66, -7788283243316379648
  %110 = lshr i64 %108, 33
  %111 = or disjoint i64 %110, %109
  %112 = mul i64 %111, -7046029288634856825
  %113 = xor i64 %107, %112
  %114 = mul i64 %113, -7046029288634856825
  %115 = add i64 %114, -8796714831421723037
  br label %118

116:                                              ; preds = %65
  %117 = add i64 %2, 2870177450012600261
  br label %118

118:                                              ; preds = %116, %76
  %119 = phi i64 [ %115, %76 ], [ %117, %116 ]
  %120 = add i64 %119, %1
  %121 = icmp ult i32 %70, 8
  br i1 %121, label %140, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds nuw i8, ptr %4, i64 60
  br label %124

124:                                              ; preds = %124, %122
  %125 = phi ptr [ %138, %124 ], [ %123, %122 ]
  %126 = phi ptr [ %125, %124 ], [ %71, %122 ]
  %127 = phi i64 [ %137, %124 ], [ %120, %122 ]
  %128 = load i64, ptr %126, align 8
  %129 = mul i64 %128, -4417276706812531889
  %130 = mul i64 %128, -7788283243316379648
  %131 = lshr i64 %129, 33
  %132 = or disjoint i64 %131, %130
  %133 = mul i64 %132, -7046029288634856825
  %134 = xor i64 %133, %127
  %135 = call i64 @llvm.fshl.i64(i64 %134, i64 %134, i64 27)
  %136 = mul i64 %135, -7046029288634856825
  %137 = add i64 %136, -8796714831421723037
  %138 = getelementptr inbounds nuw i8, ptr %125, i64 8
  %139 = icmp ugt ptr %138, %74
  br i1 %139, label %140, label %124

140:                                              ; preds = %124, %118
  %141 = phi i64 [ %120, %118 ], [ %137, %124 ]
  %142 = phi ptr [ %71, %118 ], [ %125, %124 ]
  %143 = getelementptr inbounds nuw i8, ptr %142, i64 4
  %144 = icmp ugt ptr %143, %74
  br i1 %144, label %153, label %145

145:                                              ; preds = %140
  %146 = load i32, ptr %142, align 4
  %147 = zext i32 %146 to i64
  %148 = mul i64 %147, -7046029288634856825
  %149 = xor i64 %148, %141
  %150 = call i64 @llvm.fshl.i64(i64 %149, i64 %149, i64 23)
  %151 = mul i64 %150, -4417276706812531889
  %152 = add i64 %151, 1609587929392839161
  br label %153

153:                                              ; preds = %145, %140
  %154 = phi i64 [ %152, %145 ], [ %141, %140 ]
  %155 = phi ptr [ %143, %145 ], [ %142, %140 ]
  %156 = icmp ult ptr %155, %74
  br i1 %156, label %157, label %168

157:                                              ; preds = %153, %157
  %158 = phi ptr [ %166, %157 ], [ %155, %153 ]
  %159 = phi i64 [ %165, %157 ], [ %154, %153 ]
  %160 = load i8, ptr %158, align 1
  %161 = zext i8 %160 to i64
  %162 = mul i64 %161, 2870177450012600261
  %163 = xor i64 %162, %159
  %164 = call i64 @llvm.fshl.i64(i64 %163, i64 %163, i64 11)
  %165 = mul i64 %164, -7046029288634856825
  %166 = getelementptr inbounds nuw i8, ptr %158, i64 1
  %167 = icmp ult ptr %166, %74
  br i1 %167, label %157, label %168

168:                                              ; preds = %157, %153
  %169 = phi i64 [ %154, %153 ], [ %165, %157 ]
  %170 = lshr i64 %169, 33
  %171 = xor i64 %170, %169
  %172 = mul i64 %171, -4417276706812531889
  %173 = lshr i64 %172, 29
  %174 = xor i64 %173, %172
  %175 = mul i64 %174, 1609587929392839161
  %176 = lshr i64 %175, 32
  %177 = xor i64 %176, %175
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #11
  ret i64 %177
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @XXH64_reset(ptr noundef writeonly initializes((0, 52)) %0, i64 noundef %1) local_unnamed_addr #2 {
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
define dso_local noundef i32 @XXH64_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
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
define dso_local i64 @XXH64_digest(ptr noundef readonly %0) local_unnamed_addr #3 {
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH32_createState() local_unnamed_addr #4 {
  %1 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #12
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH32_freeState(ptr noundef %0) local_unnamed_addr #6 {
  tail call void @free(ptr noundef %0) #11
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @XXH64_createState() local_unnamed_addr #4 {
  %1 = tail call noalias dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #12
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @XXH64_freeState(ptr noundef %0) local_unnamed_addr #6 {
  tail call void @free(ptr noundef %0) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_oneshot(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ugt ptr %0, inttoptr (i64 -12 to ptr)
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = mul i32 %7, 374761393
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = mul i32 %11, 374761393
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = mul i32 %15, 374761393
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %18 = load i32, ptr %17, align 1
  %19 = mul i32 %18, -1028477379
  %20 = load i32, ptr %0, align 1
  %21 = mul i32 %20, -1028477379
  %22 = add i32 %1, 374761404
  %23 = add i32 %21, %22
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 17)
  %25 = mul i32 %24, 668265263
  %26 = add i32 %19, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 17)
  %28 = mul i32 %27, 668265263
  %29 = add i32 %16, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 11)
  %31 = mul i32 %30, -1640531535
  %32 = add i32 %12, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 11)
  %34 = mul i32 %33, -1640531535
  %35 = add i32 %8, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 11)
  %37 = mul i32 %36, -1640531535
  %38 = lshr i32 %37, 15
  %39 = xor i32 %38, %37
  %40 = mul i32 %39, -2048144777
  %41 = lshr i32 %40, 13
  %42 = xor i32 %41, %40
  %43 = mul i32 %42, -1028477379
  %44 = lshr i32 %43, 16
  %45 = xor i32 %44, %43
  br label %46

46:                                               ; preds = %2, %4
  %47 = phi i32 [ %45, %4 ], [ 0, %2 ]
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
