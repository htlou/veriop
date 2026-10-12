; ModuleID = 'history-eq/wt/zstd-68c14bd-new/lib/compress/huf_compress.c'
source_filename = "history-eq/wt/zstd-68c14bd-new/lib/compress/huf_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HUF_CElt_s = type { i16, i8 }
%struct.rankPos = type { i32, i32 }
%struct.nodeElt_s = type { i32, i16, i8, i8 }
%struct.HUF_buildCTable_wksp_tables = type { [512 x %struct.nodeElt_s], [32 x %struct.rankPos] }

; Function Attrs: nounwind uwtable
define dso_local i32 @HUF_optimalTableLog(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @FSE_optimalTableLog_internal(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef 1) #12
  ret i32 %4
}

declare i32 @FSE_optimalTableLog_internal(i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_writeCTable(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca [59 x i32], align 16
  %8 = alloca [120 x i8], align 16
  %9 = alloca [13 x i32], align 16
  %10 = alloca [13 x i16], align 16
  %11 = alloca [13 x i8], align 1
  %12 = alloca [255 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %12) #12
  %13 = icmp ugt i32 %3, 255
  br i1 %13, label %132, label %14

14:                                               ; preds = %5
  store i8 0, ptr %11, align 1
  %15 = add i32 %4, 1
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = zext i32 %15 to i64
  br label %23

19:                                               ; preds = %23, %14
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %19
  %22 = zext nneg i32 %3 to i64
  br label %31

23:                                               ; preds = %17, %23
  %24 = phi i64 [ 1, %17 ], [ %29, %23 ]
  %25 = trunc i64 %24 to i32
  %26 = sub i32 %15, %25
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds nuw [13 x i8], ptr %11, i64 0, i64 %24
  store i8 %27, ptr %28, align 1
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %18
  br i1 %30, label %19, label %23, !llvm.loop !5

31:                                               ; preds = %21, %31
  %32 = phi i64 [ 0, %21 ], [ %39, %31 ]
  %33 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %2, i64 %32, i32 1
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds nuw [13 x i8], ptr %11, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds nuw [255 x i8], ptr %12, i64 0, i64 %32
  store i8 %37, ptr %38, align 1
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, %22
  br i1 %40, label %41, label %31, !llvm.loop !8

41:                                               ; preds = %31, %19
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %43 = add i64 %1, -1
  %44 = zext nneg i32 %3 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 12, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %10) #12
  %45 = icmp ult i32 %3, 2
  br i1 %45, label %88, label %46

46:                                               ; preds = %41
  %47 = call i32 @HIST_count_simple(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %12, i64 noundef range(i64 0, 256) %44) #12
  %48 = icmp ne i32 %3, %47
  %49 = icmp ne i32 %47, 1
  %50 = and i1 %48, %49
  %51 = xor i1 %48, true
  %52 = zext i1 %51 to i64
  br i1 %50, label %53, label %88

53:                                               ; preds = %46
  %54 = load i32, ptr %6, align 4
  %55 = call i32 @FSE_optimalTableLog(i32 noundef 6, i64 noundef range(i64 0, 256) %44, i32 noundef %54) #12
  %56 = load i32, ptr %6, align 4
  %57 = call i64 @FSE_normalizeCount(ptr noundef nonnull %10, i32 noundef %55, ptr noundef nonnull %9, i64 noundef range(i64 0, 256) %44, i32 noundef %56, i32 noundef 0) #12
  %58 = icmp ult i64 %57, -119
  %59 = select i1 %58, i64 %52, i64 %57
  br i1 %58, label %60, label %88

60:                                               ; preds = %53
  %61 = ptrtoint ptr %42 to i64
  %62 = load i32, ptr %6, align 4
  %63 = call i64 @FSE_writeNCount(ptr noundef nonnull %42, i64 noundef %43, ptr noundef nonnull %10, i32 noundef %62, i32 noundef %55) #12
  %64 = icmp ult i64 %63, -119
  %65 = select i1 %64, i64 %63, i64 0
  %66 = getelementptr inbounds nuw i8, ptr %42, i64 %65
  %67 = select i1 %64, i64 %59, i64 %63
  br i1 %64, label %68, label %88

68:                                               ; preds = %60
  %69 = load i32, ptr %6, align 4
  %70 = call i64 @FSE_buildCTable_wksp(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef %69, i32 noundef %55, ptr noundef nonnull %8, i64 noundef 120) #12
  %71 = icmp ult i64 %70, -119
  %72 = select i1 %71, i64 %67, i64 %70
  br i1 %71, label %73, label %88

73:                                               ; preds = %68
  %74 = sub nsw i64 %43, %65
  %75 = call i64 @FSE_compress_usingCTable(ptr noundef nonnull %66, i64 noundef %74, ptr noundef nonnull %12, i64 noundef range(i64 0, 256) %44, ptr noundef nonnull %7) #12
  %76 = icmp ult i64 %75, -119
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = icmp eq i64 %75, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds nuw i8, ptr %66, i64 %75
  br label %81

81:                                               ; preds = %79, %77, %73
  %82 = phi i1 [ true, %79 ], [ false, %73 ], [ false, %77 ]
  %83 = phi ptr [ %80, %79 ], [ %66, %73 ], [ %66, %77 ]
  %84 = phi i64 [ %72, %79 ], [ %75, %73 ], [ 0, %77 ]
  br i1 %82, label %85, label %88

85:                                               ; preds = %81
  %86 = ptrtoint ptr %83 to i64
  %87 = sub i64 %86, %61
  br label %88

88:                                               ; preds = %41, %46, %53, %60, %68, %81, %85
  %89 = phi i64 [ %87, %85 ], [ %84, %81 ], [ %72, %68 ], [ %67, %60 ], [ %59, %53 ], [ %52, %46 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %90 = icmp ult i64 %89, -119
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = icmp ugt i64 %89, 1
  %93 = lshr i32 %3, 1
  %94 = zext nneg i32 %93 to i64
  %95 = icmp ult i64 %89, %94
  %96 = and i1 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = trunc i64 %89 to i8
  store i8 %98, ptr %0, align 1
  %99 = add i64 %89, 1
  br label %100

100:                                              ; preds = %91, %88, %97
  %101 = phi i1 [ false, %97 ], [ false, %88 ], [ true, %91 ]
  %102 = phi i64 [ %99, %97 ], [ %89, %88 ], [ undef, %91 ]
  br i1 %101, label %103, label %132

103:                                              ; preds = %100
  %104 = icmp ugt i32 %3, 128
  br i1 %104, label %132, label %105

105:                                              ; preds = %103
  %106 = add nuw nsw i32 %3, 1
  %107 = lshr i32 %106, 1
  %108 = add nuw nsw i32 %107, 1
  %109 = zext nneg i32 %108 to i64
  %110 = icmp ult i64 %1, %109
  br i1 %110, label %132, label %111

111:                                              ; preds = %105
  %112 = trunc nuw i32 %3 to i8
  %113 = add i8 %112, 127
  store i8 %113, ptr %0, align 1
  %114 = getelementptr inbounds nuw [255 x i8], ptr %12, i64 0, i64 %44
  store i8 0, ptr %114, align 1
  %115 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %116 = icmp eq i32 %3, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %111
  %118 = zext nneg i32 %3 to i64
  br label %119

119:                                              ; preds = %117, %119
  %120 = phi i64 [ 0, %117 ], [ %130, %119 ]
  %121 = getelementptr inbounds nuw [255 x i8], ptr %12, i64 0, i64 %120
  %122 = load i8, ptr %121, align 2
  %123 = shl i8 %122, 4
  %124 = or disjoint i64 %120, 1
  %125 = getelementptr inbounds nuw [255 x i8], ptr %12, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1
  %127 = add i8 %123, %126
  %128 = lshr exact i64 %120, 1
  %129 = getelementptr inbounds nuw i8, ptr %115, i64 %128
  store i8 %127, ptr %129, align 1
  %130 = add nuw nsw i64 %120, 2
  %131 = icmp samesign ult i64 %130, %118
  br i1 %131, label %119, label %132, !llvm.loop !9

132:                                              ; preds = %119, %111, %105, %103, %5, %100
  %133 = phi i64 [ %102, %100 ], [ -46, %5 ], [ -1, %103 ], [ -70, %105 ], [ %109, %111 ], [ %109, %119 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %11) #12
  ret i64 %133
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readCTable(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [256 x i8], align 16
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [14 x i16], align 16
  %11 = alloca [14 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4
  %12 = call i64 @HUF_readStats(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %2, i64 noundef %3) #12
  %13 = icmp ult i64 %12, -119
  br i1 %13, label %14, label %107

14:                                               ; preds = %5
  %15 = load i32, ptr %7, align 16
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, ptr %4, align 4
  %18 = load i32, ptr %8, align 4
  %19 = icmp ugt i32 %18, 12
  br i1 %19, label %107, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %9, align 4
  %22 = load i32, ptr %1, align 4
  %23 = add i32 %22, 1
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %107, label %25

25:                                               ; preds = %20
  %26 = icmp eq i32 %18, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = add nuw nsw i32 %18, 1
  %29 = zext nneg i32 %28 to i64
  br label %36

30:                                               ; preds = %36, %25
  %31 = icmp eq i32 %21, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %30
  %33 = trunc nuw i32 %18 to i8
  %34 = add nuw nsw i8 %33, 1
  %35 = zext i32 %21 to i64
  br label %47

36:                                               ; preds = %27, %36
  %37 = phi i64 [ 1, %27 ], [ %45, %36 ]
  %38 = phi i32 [ 0, %27 ], [ %44, %36 ]
  %39 = getelementptr inbounds nuw [16 x i32], ptr %7, i64 0, i64 %37
  %40 = load i32, ptr %39, align 4
  %41 = trunc i64 %37 to i32
  %42 = add i32 %41, -1
  %43 = shl i32 %40, %42
  %44 = add i32 %43, %38
  store i32 %38, ptr %39, align 4
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, %29
  br i1 %46, label %30, label %36, !llvm.loop !10

47:                                               ; preds = %32, %47
  %48 = phi i64 [ 0, %32 ], [ %55, %47 ]
  %49 = getelementptr inbounds nuw [256 x i8], ptr %6, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = sub i8 %34, %50
  %52 = icmp eq i8 %50, 0
  %53 = select i1 %52, i8 0, i8 %51
  %54 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %48, i32 1
  store i8 %53, ptr %54, align 2
  %55 = add nuw nsw i64 %48, 1
  %56 = icmp eq i64 %55, %35
  br i1 %56, label %57, label %47, !llvm.loop !11

57:                                               ; preds = %47, %30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  %58 = icmp eq i32 %21, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %57
  %60 = zext i32 %21 to i64
  br label %61

61:                                               ; preds = %59, %61
  %62 = phi i64 [ 0, %59 ], [ %69, %61 ]
  %63 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %62, i32 1
  %64 = load i8, ptr %63, align 2
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds nuw [14 x i16], ptr %10, i64 0, i64 %65
  %67 = load i16, ptr %66, align 2
  %68 = add i16 %67, 1
  store i16 %68, ptr %66, align 2
  %69 = add nuw nsw i64 %62, 1
  %70 = icmp eq i64 %69, %60
  br i1 %70, label %71, label %61, !llvm.loop !12

71:                                               ; preds = %61, %57
  %72 = add nuw nsw i32 %18, 1
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %73
  store i16 0, ptr %74, align 2
  %75 = icmp eq i32 %18, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = zext nneg i32 %18 to i64
  br label %82

78:                                               ; preds = %82, %71
  %79 = icmp eq i32 %21, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %78
  %81 = zext i32 %21 to i64
  br label %94

82:                                               ; preds = %76, %82
  %83 = phi i64 [ %77, %76 ], [ %93, %82 ]
  %84 = phi i32 [ %18, %76 ], [ %91, %82 ]
  %85 = phi i16 [ 0, %76 ], [ %90, %82 ]
  %86 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %83
  store i16 %85, ptr %86, align 2
  %87 = getelementptr inbounds nuw [14 x i16], ptr %10, i64 0, i64 %83
  %88 = load i16, ptr %87, align 2
  %89 = add i16 %88, %85
  %90 = lshr i16 %89, 1
  %91 = add i32 %84, -1
  %92 = icmp eq i32 %91, 0
  %93 = add nsw i64 %83, -1
  br i1 %92, label %78, label %82, !llvm.loop !13

94:                                               ; preds = %80, %94
  %95 = phi i64 [ 0, %80 ], [ %103, %94 ]
  %96 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %95
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 2
  %98 = load i8, ptr %97, align 2
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %99
  %101 = load i16, ptr %100, align 2
  %102 = add i16 %101, 1
  store i16 %102, ptr %100, align 2
  store i16 %101, ptr %96, align 2
  %103 = add nuw nsw i64 %95, 1
  %104 = icmp eq i64 %103, %81
  br i1 %104, label %105, label %94, !llvm.loop !14

105:                                              ; preds = %94, %78
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #12
  %106 = add i32 %21, -1
  store i32 %106, ptr %1, align 4
  br label %107

107:                                              ; preds = %20, %14, %5, %105
  %108 = phi i64 [ %12, %105 ], [ %12, %5 ], [ -44, %14 ], [ -48, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #12
  ret i64 %108
}

declare i64 @HUF_readStats(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 256) i32 @HUF_getNbBits(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %3, i32 1
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -66, 256) i64 @HUF_buildCTable_wksp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #5 {
  %7 = alloca [14 x i32], align 16
  %8 = alloca [13 x i16], align 16
  %9 = alloca [13 x i16], align 16
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %11 = ptrtoint ptr %4 to i64
  %12 = and i64 %11, 3
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %487

14:                                               ; preds = %6
  %15 = icmp ult i64 %5, 4352
  br i1 %15, label %487, label %16

16:                                               ; preds = %14
  %17 = icmp eq i32 %3, 0
  %18 = select i1 %17, i32 11, i32 %3
  %19 = icmp ugt i32 %2, 255
  br i1 %19, label %487, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 4096
  %22 = add nuw nsw i32 %2, 1
  %23 = zext nneg i32 %22 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4352) %4, i8 0, i64 4352, i1 false)
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi i64 [ 0, %20 ], [ %35, %24 ]
  %26 = getelementptr inbounds nuw i32, ptr %1, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  %29 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %28, i1 true)
  %30 = xor i32 %29, 31
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds nuw %struct.rankPos, ptr %21, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = add nuw nsw i64 %25, 1
  %36 = icmp eq i64 %35, %23
  br i1 %36, label %37, label %24, !llvm.loop !15

37:                                               ; preds = %24, %37
  %38 = phi i64 [ %41, %37 ], [ 30, %24 ]
  %39 = getelementptr inbounds nuw %struct.rankPos, ptr %21, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i64 %38, -1
  %42 = getelementptr inbounds nuw %struct.rankPos, ptr %21, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %40
  store i32 %44, ptr %42, align 4
  %45 = icmp eq i64 %41, 0
  br i1 %45, label %46, label %37, !llvm.loop !16

46:                                               ; preds = %37, %46
  %47 = phi i64 [ %51, %46 ], [ 0, %37 ]
  %48 = getelementptr inbounds nuw %struct.rankPos, ptr %21, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 4
  store i32 %49, ptr %50, align 4
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, 32
  br i1 %52, label %53, label %46, !llvm.loop !17

53:                                               ; preds = %46, %81
  %54 = phi i64 [ %87, %81 ], [ 0, %46 ]
  %55 = getelementptr inbounds nuw i32, ptr %1, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  %58 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %57, i1 true)
  %59 = xor i32 %58, 31
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds nuw %struct.rankPos, ptr %21, i64 %60
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 12
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  %66 = load i32, ptr %62, align 4
  %67 = icmp ugt i32 %64, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %53, %75
  %69 = phi i32 [ %70, %75 ], [ %64, %53 ]
  %70 = add i32 %69, -1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %10, i64 %71
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %56, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = zext i32 %69 to i64
  %77 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %10, i64 %76
  %78 = load i64, ptr %72, align 4
  store i64 %78, ptr %77, align 4
  %79 = load i32, ptr %62, align 4
  %80 = icmp ugt i32 %70, %79
  br i1 %80, label %68, label %81, !llvm.loop !18

81:                                               ; preds = %75, %68, %53
  %82 = phi i32 [ %64, %53 ], [ %69, %68 ], [ %70, %75 ]
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %10, i64 %83
  store i32 %56, ptr %84, align 4
  %85 = trunc i64 %54 to i8
  %86 = getelementptr inbounds nuw i8, ptr %84, i64 6
  store i8 %85, ptr %86, align 2
  %87 = add nuw nsw i64 %54, 1
  %88 = icmp eq i64 %87, %23
  br i1 %88, label %89, label %53, !llvm.loop !19

89:                                               ; preds = %81
  %90 = zext nneg i32 %2 to i64
  %91 = add nuw nsw i32 %2, 254
  br label %92

92:                                               ; preds = %89, %92
  %93 = phi i32 [ %22, %89 ], [ %101, %92 ]
  %94 = phi i32 [ %91, %89 ], [ %100, %92 ]
  %95 = phi i64 [ %90, %89 ], [ %99, %92 ]
  %96 = getelementptr inbounds %struct.nodeElt_s, ptr %10, i64 %95
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  %99 = add nsw i64 %95, -1
  %100 = add i32 %94, -1
  %101 = add i32 %93, -1
  br i1 %98, label %92, label %102, !llvm.loop !20

102:                                              ; preds = %92
  %103 = trunc nsw i64 %95 to i32
  %104 = getelementptr inbounds %struct.nodeElt_s, ptr %10, i64 %95
  %105 = add nsw i32 %103, 255
  %106 = getelementptr i8, ptr %104, i64 -8
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, %97
  %109 = getelementptr inbounds nuw i8, ptr %4, i64 2056
  store i32 %108, ptr %109, align 4
  %110 = getelementptr i8, ptr %104, i64 -4
  store i16 256, ptr %110, align 4
  %111 = getelementptr inbounds nuw i8, ptr %104, i64 4
  store i16 256, ptr %111, align 4
  %112 = add nsw i32 %103, -2
  %113 = icmp slt i64 %95, 2
  br i1 %113, label %121, label %114

114:                                              ; preds = %102
  %115 = sext i32 %105 to i64
  br label %116

116:                                              ; preds = %114, %116
  %117 = phi i64 [ 257, %114 ], [ %119, %116 ]
  %118 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %10, i64 %117
  store i32 1073741824, ptr %118, align 4
  %119 = add nuw nsw i64 %117, 1
  %120 = icmp slt i64 %117, %115
  br i1 %120, label %116, label %121, !llvm.loop !21

121:                                              ; preds = %116, %102
  store i32 -2147483648, ptr %4, align 4
  %122 = icmp slt i64 %95, 2
  br i1 %122, label %168, label %123

123:                                              ; preds = %121
  %124 = sext i32 %105 to i64
  br label %125

125:                                              ; preds = %123, %125
  %126 = phi i64 [ 257, %123 ], [ %166, %125 ]
  %127 = phi i32 [ %112, %123 ], [ %153, %125 ]
  %128 = phi i32 [ 256, %123 ], [ %150, %125 ]
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds %struct.nodeElt_s, ptr %10, i64 %129
  %131 = load i32, ptr %130, align 4
  %132 = sext i32 %128 to i64
  %133 = getelementptr inbounds %struct.nodeElt_s, ptr %10, i64 %132
  %134 = load i32, ptr %133, align 4
  %135 = icmp uge i32 %131, %134
  %136 = zext i1 %135 to i32
  %137 = add nsw i32 %128, %136
  %138 = xor i1 %135, true
  %139 = sext i1 %138 to i32
  %140 = add nsw i32 %127, %139
  %141 = select i1 %135, i32 %128, i32 %127
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds %struct.nodeElt_s, ptr %10, i64 %142
  %144 = load i32, ptr %143, align 4
  %145 = sext i32 %137 to i64
  %146 = getelementptr inbounds %struct.nodeElt_s, ptr %10, i64 %145
  %147 = load i32, ptr %146, align 4
  %148 = icmp uge i32 %144, %147
  %149 = zext i1 %148 to i32
  %150 = add nsw i32 %137, %149
  %151 = xor i1 %148, true
  %152 = sext i1 %151 to i32
  %153 = add nsw i32 %140, %152
  %154 = select i1 %148, i32 %137, i32 %140
  %155 = sext i32 %141 to i64
  %156 = getelementptr inbounds %struct.nodeElt_s, ptr %10, i64 %155
  %157 = load i32, ptr %156, align 4
  %158 = sext i32 %154 to i64
  %159 = getelementptr inbounds %struct.nodeElt_s, ptr %10, i64 %158
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, %157
  %162 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %10, i64 %126
  store i32 %161, ptr %162, align 4
  %163 = trunc i64 %126 to i16
  %164 = getelementptr inbounds nuw i8, ptr %159, i64 4
  store i16 %163, ptr %164, align 4
  %165 = getelementptr inbounds nuw i8, ptr %156, i64 4
  store i16 %163, ptr %165, align 4
  %166 = add nuw nsw i64 %126, 1
  %167 = icmp slt i64 %126, %124
  br i1 %167, label %125, label %168, !llvm.loop !22

168:                                              ; preds = %125, %121
  %169 = sext i32 %105 to i64
  %170 = shl nsw i64 %169, 3
  %171 = or disjoint i64 %170, 7
  %172 = getelementptr inbounds i8, ptr %10, i64 %171
  store i8 0, ptr %172, align 1
  %173 = icmp sgt i64 %95, 1
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = zext i32 %94 to i64
  br label %180

176:                                              ; preds = %180, %168
  %177 = icmp slt i64 %95, 0
  br i1 %177, label %209, label %178

178:                                              ; preds = %176
  %179 = zext i32 %93 to i64
  br label %195

180:                                              ; preds = %174, %180
  %181 = phi i64 [ %175, %174 ], [ %192, %180 ]
  %182 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %10, i64 %181
  %183 = getelementptr inbounds nuw i8, ptr %182, i64 4
  %184 = load i16, ptr %183, align 4
  %185 = zext i16 %184 to i64
  %186 = shl nuw nsw i64 %185, 3
  %187 = or disjoint i64 %186, 7
  %188 = getelementptr inbounds nuw i8, ptr %10, i64 %187
  %189 = load i8, ptr %188, align 1
  %190 = add i8 %189, 1
  %191 = getelementptr inbounds nuw i8, ptr %182, i64 7
  store i8 %190, ptr %191, align 1
  %192 = add nsw i64 %181, -1
  %193 = trunc nuw i64 %181 to i32
  %194 = icmp sgt i32 %193, 256
  br i1 %194, label %180, label %176, !llvm.loop !23

195:                                              ; preds = %178, %195
  %196 = phi i64 [ 0, %178 ], [ %207, %195 ]
  %197 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %10, i64 %196
  %198 = getelementptr inbounds nuw i8, ptr %197, i64 4
  %199 = load i16, ptr %198, align 4
  %200 = zext i16 %199 to i64
  %201 = shl nuw nsw i64 %200, 3
  %202 = or disjoint i64 %201, 7
  %203 = getelementptr inbounds nuw i8, ptr %10, i64 %202
  %204 = load i8, ptr %203, align 1
  %205 = add i8 %204, 1
  %206 = getelementptr inbounds nuw i8, ptr %197, i64 7
  store i8 %205, ptr %206, align 1
  %207 = add nuw nsw i64 %196, 1
  %208 = icmp eq i64 %207, %179
  br i1 %208, label %209, label %195, !llvm.loop !24

209:                                              ; preds = %195, %176
  %210 = shl i64 %95, 3
  %211 = and i64 %210, 34359738360
  %212 = or disjoint i64 %211, 7
  %213 = getelementptr inbounds nuw i8, ptr %10, i64 %212
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp ult i32 %18, %215
  br i1 %216, label %217, label %421

217:                                              ; preds = %209
  %218 = sub nuw nsw i32 %215, %18
  %219 = shl nuw i32 1, %218
  %220 = shl nsw i64 %95, 3
  %221 = or disjoint i64 %220, 7
  %222 = getelementptr inbounds i8, ptr %10, i64 %221
  %223 = load i8, ptr %222, align 1
  %224 = zext i8 %223 to i32
  %225 = icmp ult i32 %18, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %217
  %227 = trunc nuw i32 %18 to i8
  br label %233

228:                                              ; preds = %233, %217
  %229 = phi i64 [ %95, %217 ], [ %242, %233 ]
  %230 = phi i32 [ 0, %217 ], [ %241, %233 ]
  %231 = shl i64 %229, 32
  %232 = ashr exact i64 %231, 32
  br label %249

233:                                              ; preds = %233, %226
  %234 = phi i64 [ %95, %226 ], [ %242, %233 ]
  %235 = phi i32 [ %224, %226 ], [ %247, %233 ]
  %236 = phi ptr [ %222, %226 ], [ %245, %233 ]
  %237 = phi i32 [ 0, %226 ], [ %241, %233 ]
  %238 = sub nsw i32 %215, %235
  %239 = shl nsw i32 -1, %238
  %240 = add i32 %237, %219
  %241 = add i32 %240, %239
  store i8 %227, ptr %236, align 1
  %242 = add nsw i64 %234, -1
  %243 = shl nsw i64 %242, 3
  %244 = or disjoint i64 %243, 7
  %245 = getelementptr inbounds i8, ptr %10, i64 %244
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp ult i32 %18, %247
  br i1 %248, label %233, label %228, !llvm.loop !25

249:                                              ; preds = %249, %228
  %250 = phi i64 [ %257, %249 ], [ %232, %228 ]
  %251 = shl nsw i64 %250, 3
  %252 = or disjoint i64 %251, 7
  %253 = getelementptr inbounds i8, ptr %10, i64 %252
  %254 = load i8, ptr %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp eq i32 %18, %255
  %257 = add i64 %250, -1
  br i1 %256, label %249, label %258, !llvm.loop !26

258:                                              ; preds = %249
  %259 = ashr i32 %230, %218
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %7, i8 -16, i64 56, i1 false)
  %260 = icmp sgt i64 %250, -1
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = and i64 %250, 4294967295
  br label %265

263:                                              ; preds = %279, %258
  %264 = icmp sgt i32 %259, 0
  br i1 %264, label %289, label %283

265:                                              ; preds = %279, %261
  %266 = phi i64 [ %262, %261 ], [ %281, %279 ]
  %267 = phi i32 [ %18, %261 ], [ %280, %279 ]
  %268 = shl nuw nsw i64 %266, 3
  %269 = or disjoint i64 %268, 7
  %270 = getelementptr inbounds nuw i8, ptr %10, i64 %269
  %271 = load i8, ptr %270, align 1
  %272 = zext i8 %271 to i32
  %273 = icmp ugt i32 %267, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %265
  %275 = sub nsw i32 %18, %272
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds nuw [14 x i32], ptr %7, i64 0, i64 %276
  %278 = trunc nuw nsw i64 %266 to i32
  store i32 %278, ptr %277, align 4
  br label %279

279:                                              ; preds = %274, %265
  %280 = phi i32 [ %267, %265 ], [ %272, %274 ]
  %281 = add nsw i64 %266, -1
  %282 = icmp sgt i64 %266, 0
  br i1 %282, label %265, label %263, !llvm.loop !27

283:                                              ; preds = %373, %263
  %284 = phi i32 [ %259, %263 ], [ %342, %373 ]
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %420

286:                                              ; preds = %283
  %287 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %288 = load i32, ptr %287, align 4
  br label %403

289:                                              ; preds = %263, %373
  %290 = phi i32 [ %342, %373 ], [ %259, %263 ]
  %291 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %290, i1 true)
  %292 = sub nuw nsw i32 32, %291
  %293 = icmp eq i32 %291, 31
  br i1 %293, label %323, label %294

294:                                              ; preds = %289
  %295 = zext nneg i32 %292 to i64
  br label %296

296:                                              ; preds = %316, %294
  %297 = phi i64 [ %295, %294 ], [ %300, %316 ]
  %298 = getelementptr inbounds nuw [14 x i32], ptr %7, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4
  %300 = add nsw i64 %297, -1
  %301 = and i64 %300, 4294967295
  %302 = getelementptr inbounds nuw [14 x i32], ptr %7, i64 0, i64 %301
  %303 = load i32, ptr %302, align 4
  %304 = icmp eq i32 %299, -252645136
  br i1 %304, label %316, label %305

305:                                              ; preds = %296
  %306 = icmp eq i32 %303, -252645136
  br i1 %306, label %319, label %307

307:                                              ; preds = %305
  %308 = zext i32 %299 to i64
  %309 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %10, i64 %308
  %310 = load i32, ptr %309, align 4
  %311 = zext i32 %303 to i64
  %312 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %10, i64 %311
  %313 = load i32, ptr %312, align 4
  %314 = shl i32 %313, 1
  %315 = icmp ugt i32 %310, %314
  br i1 %315, label %316, label %321

316:                                              ; preds = %307, %296
  %317 = and i64 %300, 4294967294
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %323, label %296, !llvm.loop !28

319:                                              ; preds = %305
  %320 = trunc nuw i64 %297 to i32
  br label %323

321:                                              ; preds = %307
  %322 = trunc nuw i64 %297 to i32
  br label %323

323:                                              ; preds = %316, %319, %321, %289
  %324 = phi i32 [ %292, %289 ], [ %320, %319 ], [ %322, %321 ], [ 1, %316 ]
  %325 = icmp ult i32 %324, 13
  br i1 %325, label %326, label %338

326:                                              ; preds = %323
  %327 = zext nneg i32 %324 to i64
  br label %328

328:                                              ; preds = %333, %326
  %329 = phi i64 [ %327, %326 ], [ %334, %333 ]
  %330 = getelementptr inbounds nuw [14 x i32], ptr %7, i64 0, i64 %329
  %331 = load i32, ptr %330, align 4
  %332 = icmp eq i32 %331, -252645136
  br i1 %332, label %333, label %336

333:                                              ; preds = %328
  %334 = add nuw nsw i64 %329, 1
  %335 = icmp eq i64 %334, 13
  br i1 %335, label %338, label %328, !llvm.loop !29

336:                                              ; preds = %328
  %337 = trunc nuw nsw i64 %329 to i32
  br label %338

338:                                              ; preds = %333, %336, %323
  %339 = phi i32 [ %324, %323 ], [ %337, %336 ], [ 13, %333 ]
  %340 = add nsw i32 %339, -1
  %341 = shl nsw i32 -1, %340
  %342 = add nsw i32 %341, %290
  %343 = zext nneg i32 %340 to i64
  %344 = getelementptr inbounds nuw [14 x i32], ptr %7, i64 0, i64 %343
  %345 = load i32, ptr %344, align 4
  %346 = icmp eq i32 %345, -252645136
  br i1 %346, label %347, label %351

347:                                              ; preds = %338
  %348 = zext nneg i32 %339 to i64
  %349 = getelementptr inbounds nuw [14 x i32], ptr %7, i64 0, i64 %348
  %350 = load i32, ptr %349, align 4
  store i32 %350, ptr %344, align 4
  br label %351

351:                                              ; preds = %347, %338
  %352 = zext nneg i32 %339 to i64
  %353 = getelementptr inbounds nuw [14 x i32], ptr %7, i64 0, i64 %352
  %354 = load i32, ptr %353, align 4
  %355 = zext i32 %354 to i64
  %356 = shl nuw nsw i64 %355, 3
  %357 = or disjoint i64 %356, 7
  %358 = getelementptr inbounds nuw i8, ptr %10, i64 %357
  %359 = load i8, ptr %358, align 1
  %360 = add i8 %359, 1
  store i8 %360, ptr %358, align 1
  %361 = icmp eq i32 %354, 0
  br i1 %361, label %373, label %362

362:                                              ; preds = %351
  %363 = add i32 %354, -1
  store i32 %363, ptr %353, align 4
  %364 = zext i32 %363 to i64
  %365 = shl nuw nsw i64 %364, 3
  %366 = or disjoint i64 %365, 7
  %367 = getelementptr inbounds nuw i8, ptr %10, i64 %366
  %368 = load i8, ptr %367, align 1
  %369 = zext i8 %368 to i32
  %370 = sub nsw i32 %18, %339
  %371 = icmp eq i32 %370, %369
  %372 = select i1 %371, i32 %363, i32 -252645136
  br label %373

373:                                              ; preds = %362, %351
  %374 = phi i32 [ %372, %362 ], [ -252645136, %351 ]
  store i32 %374, ptr %353, align 4
  %375 = icmp sgt i32 %342, 0
  br i1 %375, label %289, label %283, !llvm.loop !30

376:                                              ; preds = %408, %403
  %377 = phi i32 [ %404, %403 ], [ %409, %408 ]
  %378 = phi i32 [ %405, %403 ], [ %416, %408 ]
  %379 = icmp eq i32 %377, -252645136
  br i1 %379, label %380, label %408

380:                                              ; preds = %376
  %381 = shl i64 %406, 32
  %382 = ashr exact i64 %381, 32
  br label %383

383:                                              ; preds = %383, %380
  %384 = phi i64 [ %391, %383 ], [ %382, %380 ]
  %385 = shl nsw i64 %384, 3
  %386 = or disjoint i64 %385, 7
  %387 = getelementptr inbounds i8, ptr %10, i64 %386
  %388 = load i8, ptr %387, align 1
  %389 = zext i8 %388 to i32
  %390 = icmp eq i32 %18, %389
  %391 = add nsw i64 %384, -1
  br i1 %390, label %383, label %392, !llvm.loop !31

392:                                              ; preds = %383
  %393 = trunc nsw i64 %384 to i32
  %394 = add nsw i32 %393, 1
  %395 = sext i32 %394 to i64
  %396 = shl nsw i64 %395, 3
  %397 = or disjoint i64 %396, 7
  %398 = getelementptr inbounds i8, ptr %10, i64 %397
  %399 = load i8, ptr %398, align 1
  %400 = add i8 %399, -1
  store i8 %400, ptr %398, align 1
  %401 = add nsw i32 %378, 1
  %402 = icmp slt i32 %378, -1
  br i1 %402, label %403, label %418, !llvm.loop !32

403:                                              ; preds = %392, %286
  %404 = phi i32 [ %288, %286 ], [ %394, %392 ]
  %405 = phi i32 [ %284, %286 ], [ %401, %392 ]
  %406 = phi i64 [ %250, %286 ], [ %384, %392 ]
  %407 = tail call i32 @llvm.smax.i32(i32 %405, i32 -1)
  br label %376

408:                                              ; preds = %376
  %409 = add i32 %377, 1
  %410 = zext i32 %409 to i64
  %411 = shl nuw nsw i64 %410, 3
  %412 = or disjoint i64 %411, 7
  %413 = getelementptr inbounds nuw i8, ptr %10, i64 %412
  %414 = load i8, ptr %413, align 1
  %415 = add i8 %414, -1
  store i8 %415, ptr %413, align 1
  %416 = add i32 %378, 1
  %417 = icmp eq i32 %378, %407
  br i1 %417, label %418, label %376, !llvm.loop !32

418:                                              ; preds = %392, %408
  %419 = phi i32 [ %409, %408 ], [ %394, %392 ]
  store i32 %419, ptr %287, align 4
  br label %420

420:                                              ; preds = %418, %283
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #12
  br label %421

421:                                              ; preds = %209, %420
  %422 = phi i32 [ %18, %420 ], [ %215, %209 ]
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %8, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %9, i8 0, i64 26, i1 false)
  %423 = icmp samesign ult i32 %422, 13
  br i1 %423, label %424, label %484

424:                                              ; preds = %421
  %425 = icmp slt i64 %95, 0
  br i1 %425, label %428, label %426

426:                                              ; preds = %424
  %427 = zext i32 %93 to i64
  br label %434

428:                                              ; preds = %434, %424
  %429 = icmp eq i32 %422, 0
  br i1 %429, label %446, label %430

430:                                              ; preds = %428
  %431 = zext i32 %18 to i64
  %432 = zext i8 %214 to i64
  %433 = tail call i64 @llvm.umin.i64(i64 %431, i64 %432)
  br label %449

434:                                              ; preds = %426, %434
  %435 = phi i64 [ 0, %426 ], [ %444, %434 ]
  %436 = shl nuw nsw i64 %435, 3
  %437 = or disjoint i64 %436, 7
  %438 = getelementptr inbounds nuw i8, ptr %10, i64 %437
  %439 = load i8, ptr %438, align 1
  %440 = zext i8 %439 to i64
  %441 = getelementptr inbounds nuw [13 x i16], ptr %8, i64 0, i64 %440
  %442 = load i16, ptr %441, align 2
  %443 = add i16 %442, 1
  store i16 %443, ptr %441, align 2
  %444 = add nuw nsw i64 %435, 1
  %445 = icmp eq i64 %444, %427
  br i1 %445, label %428, label %434, !llvm.loop !33

446:                                              ; preds = %449, %428
  %447 = add nuw nsw i32 %2, 1
  %448 = zext nneg i32 %447 to i64
  br label %462

449:                                              ; preds = %430, %449
  %450 = phi i64 [ %433, %430 ], [ %457, %449 ]
  %451 = phi i16 [ 0, %430 ], [ %456, %449 ]
  %452 = getelementptr inbounds nuw [13 x i16], ptr %9, i64 0, i64 %450
  store i16 %451, ptr %452, align 2
  %453 = getelementptr inbounds nuw [13 x i16], ptr %8, i64 0, i64 %450
  %454 = load i16, ptr %453, align 2
  %455 = add i16 %454, %451
  %456 = lshr i16 %455, 1
  %457 = add nsw i64 %450, -1
  %458 = icmp sgt i64 %450, 1
  br i1 %458, label %449, label %446, !llvm.loop !34

459:                                              ; preds = %462
  %460 = add nuw nsw i32 %2, 1
  %461 = zext nneg i32 %460 to i64
  br label %473

462:                                              ; preds = %446, %462
  %463 = phi i64 [ 0, %446 ], [ %471, %462 ]
  %464 = getelementptr inbounds nuw %struct.nodeElt_s, ptr %10, i64 %463
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 7
  %466 = load i8, ptr %465, align 1
  %467 = getelementptr inbounds nuw i8, ptr %464, i64 6
  %468 = load i8, ptr %467, align 2
  %469 = zext i8 %468 to i64
  %470 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %469, i32 1
  store i8 %466, ptr %470, align 2
  %471 = add nuw nsw i64 %463, 1
  %472 = icmp eq i64 %471, %448
  br i1 %472, label %459, label %462, !llvm.loop !35

473:                                              ; preds = %459, %473
  %474 = phi i64 [ 0, %459 ], [ %482, %473 ]
  %475 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %474
  %476 = getelementptr inbounds nuw i8, ptr %475, i64 2
  %477 = load i8, ptr %476, align 2
  %478 = zext i8 %477 to i64
  %479 = getelementptr inbounds nuw [13 x i16], ptr %9, i64 0, i64 %478
  %480 = load i16, ptr %479, align 2
  %481 = add i16 %480, 1
  store i16 %481, ptr %479, align 2
  store i16 %480, ptr %475, align 2
  %482 = add nuw nsw i64 %474, 1
  %483 = icmp eq i64 %482, %461
  br i1 %483, label %484, label %473, !llvm.loop !36

484:                                              ; preds = %473, %421
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %8) #12
  %485 = zext nneg i32 %422 to i64
  %486 = select i1 %423, i64 %485, i64 -1
  br label %487

487:                                              ; preds = %484, %16, %14, %6
  %488 = phi i64 [ -1, %6 ], [ -66, %14 ], [ -46, %16 ], [ %486, %484 ]
  ret i64 %488
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i64 0, 2305843009213693952) i64 @HUF_estimateCompressedSize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = add nuw i32 %2, 1
  %7 = zext i32 %6 to i64
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %19, %8 ]
  %10 = phi i64 [ 0, %5 ], [ %18, %8 ]
  %11 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %9, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds nuw i32, ptr %1, i64 %9
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %13
  %17 = zext i32 %16 to i64
  %18 = add i64 %10, %17
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, %7
  br i1 %20, label %21, label %8, !llvm.loop !37

21:                                               ; preds = %8
  %22 = lshr i64 %18, 3
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi i64 [ 0, %3 ], [ %22, %21 ]
  ret i64 %24
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @HUF_validateCTable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = add nuw i32 %2, 1
  %7 = zext i32 %6 to i64
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %20, %8 ]
  %10 = phi i32 [ 0, %5 ], [ %19, %8 ]
  %11 = getelementptr inbounds nuw i32, ptr %1, i64 %9
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %9, i32 1
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 0
  %17 = and i1 %13, %16
  %18 = zext i1 %17 to i32
  %19 = or i32 %10, %18
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, %7
  br i1 %21, label %22, label %8, !llvm.loop !38

22:                                               ; preds = %8
  %23 = icmp eq i32 %19, 0
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i32 [ 1, %3 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @HUF_compressBound(i64 noundef %0) local_unnamed_addr #7 {
  %2 = lshr i64 %0, 8
  %3 = add i64 %0, 137
  %4 = add i64 %3, %2
  ret i64 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @HUF_compress1X_usingCTable(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #5 {
  %6 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #5 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %167

10:                                               ; preds = %6
  %11 = icmp ult i64 %1, 8
  br i1 %11, label %167, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = icmp eq i64 %1, 8
  br i1 %15, label %167, label %16

16:                                               ; preds = %12
  %17 = and i64 %3, -4
  %18 = and i64 %3, 3
  switch i64 %18, label %71 [
    i64 3, label %19
    i64 2, label %30
    i64 1, label %47
    i64 0, label %72
  ]

19:                                               ; preds = %16
  %20 = or disjoint i64 %17, 2
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %23
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 2
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %19, %16
  %31 = phi i32 [ 0, %16 ], [ %29, %19 ]
  %32 = phi i64 [ 0, %16 ], [ %26, %19 ]
  %33 = or disjoint i64 %17, 1
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %36
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 2
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  %43 = zext nneg i32 %31 to i64
  %44 = shl i64 %39, %43
  %45 = or i64 %44, %32
  %46 = add nuw nsw i32 %31, %42
  br label %47

47:                                               ; preds = %30, %16
  %48 = phi i32 [ 0, %16 ], [ %46, %30 ]
  %49 = phi i64 [ 0, %16 ], [ %45, %30 ]
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 %17
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %52
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i64
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 2
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  %59 = zext nneg i32 %48 to i64
  %60 = shl i64 %55, %59
  %61 = or i64 %60, %49
  %62 = add nuw nsw i32 %48, %58
  %63 = lshr i32 %62, 3
  %64 = zext nneg i32 %63 to i64
  store i64 %61, ptr %0, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  %66 = icmp ugt ptr %65, %14
  %67 = select i1 %66, ptr %14, ptr %65
  %68 = and i32 %62, 7
  %69 = shl nuw nsw i64 %64, 3
  %70 = lshr i64 %61, %69
  br label %72

71:                                               ; preds = %16
  unreachable

72:                                               ; preds = %47, %16
  %73 = phi ptr [ %0, %16 ], [ %67, %47 ]
  %74 = phi i32 [ 0, %16 ], [ %68, %47 ]
  %75 = phi i64 [ %18, %16 ], [ %70, %47 ]
  %76 = icmp eq i64 %17, 0
  br i1 %76, label %145, label %77

77:                                               ; preds = %72, %77
  %78 = phi i64 [ %119, %77 ], [ %17, %72 ]
  %79 = phi i64 [ %143, %77 ], [ %75, %72 ]
  %80 = phi i32 [ %141, %77 ], [ %74, %72 ]
  %81 = phi ptr [ %140, %77 ], [ %73, %72 ]
  %82 = getelementptr i8, ptr %2, i64 %78
  %83 = getelementptr i8, ptr %82, i64 -1
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %85
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i64
  %89 = getelementptr inbounds nuw i8, ptr %86, i64 2
  %90 = load i8, ptr %89, align 2
  %91 = zext i8 %90 to i32
  %92 = zext nneg i32 %80 to i64
  %93 = shl nuw nsw i64 %88, %92
  %94 = add nuw nsw i32 %80, %91
  %95 = getelementptr i8, ptr %82, i64 -2
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %97
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i64
  %101 = getelementptr inbounds nuw i8, ptr %98, i64 2
  %102 = load i8, ptr %101, align 2
  %103 = zext i8 %102 to i32
  %104 = zext nneg i32 %94 to i64
  %105 = shl i64 %100, %104
  %106 = add nuw nsw i32 %94, %103
  %107 = getelementptr i8, ptr %82, i64 -3
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %109
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %111 to i64
  %113 = getelementptr inbounds nuw i8, ptr %110, i64 2
  %114 = load i8, ptr %113, align 2
  %115 = zext i8 %114 to i32
  %116 = zext nneg i32 %106 to i64
  %117 = shl i64 %112, %116
  %118 = add nuw nsw i32 %106, %115
  %119 = add i64 %78, -4
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 %119
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %122
  %124 = load i16, ptr %123, align 2
  %125 = zext i16 %124 to i64
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 2
  %127 = load i8, ptr %126, align 2
  %128 = zext i8 %127 to i32
  %129 = zext nneg i32 %118 to i64
  %130 = shl i64 %125, %129
  %131 = or i64 %93, %79
  %132 = or i64 %131, %105
  %133 = or i64 %132, %117
  %134 = or i64 %133, %130
  %135 = add nuw nsw i32 %118, %128
  %136 = lshr i32 %135, 3
  %137 = zext nneg i32 %136 to i64
  store i64 %134, ptr %81, align 1
  %138 = getelementptr inbounds nuw i8, ptr %81, i64 %137
  %139 = icmp ugt ptr %138, %14
  %140 = select i1 %139, ptr %14, ptr %138
  %141 = and i32 %135, 7
  %142 = shl nuw nsw i64 %137, 3
  %143 = lshr i64 %134, %142
  %144 = icmp eq i64 %119, 0
  br i1 %144, label %145, label %77, !llvm.loop !39

145:                                              ; preds = %77, %72
  %146 = phi ptr [ %73, %72 ], [ %140, %77 ]
  %147 = phi i32 [ %74, %72 ], [ %141, %77 ]
  %148 = phi i64 [ %75, %72 ], [ %143, %77 ]
  %149 = zext nneg i32 %147 to i64
  %150 = shl nuw nsw i64 1, %149
  %151 = or i64 %150, %148
  %152 = add nuw nsw i32 %147, 1
  %153 = lshr i32 %152, 3
  %154 = zext nneg i32 %153 to i64
  store i64 %151, ptr %146, align 1
  %155 = getelementptr inbounds nuw i8, ptr %146, i64 %154
  %156 = icmp ugt ptr %155, %14
  %157 = select i1 %156, ptr %14, ptr %155
  %158 = and i32 %152, 7
  %159 = icmp ult ptr %157, %14
  %160 = ptrtoint ptr %157 to i64
  %161 = ptrtoint ptr %0 to i64
  %162 = icmp ne i32 %158, 0
  %163 = zext i1 %162 to i64
  %164 = sub i64 %163, %161
  %165 = add i64 %164, %160
  %166 = select i1 %159, i64 %165, i64 0
  br label %167

167:                                              ; preds = %145, %12, %10, %8
  %168 = phi i64 [ %9, %8 ], [ %166, %145 ], [ 0, %12 ], [ 0, %10 ]
  ret i64 %168
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @HUF_compress4X_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #5 {
  %6 = tail call fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef 0)
  ret i64 %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #5 {
  %7 = add i64 %3, 3
  %8 = lshr i64 %7, 2
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %10 = icmp ult i64 %1, 17
  %11 = icmp ult i64 %3, 12
  %12 = or i1 %10, %11
  br i1 %12, label %82, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %16 = ptrtoint ptr %14 to i64
  %17 = add nsw i64 %1, -6
  %18 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef nonnull %15, i64 noundef %17, ptr noundef %2, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %19 = icmp ult i64 %18, -119
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i64 %18, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = trunc i64 %18 to i16
  store i16 %23, ptr %0, align 1
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 %18
  br label %25

25:                                               ; preds = %20, %13, %22
  %26 = phi i1 [ true, %22 ], [ false, %13 ], [ false, %20 ]
  %27 = phi ptr [ %24, %22 ], [ %15, %13 ], [ %15, %20 ]
  %28 = phi i64 [ undef, %22 ], [ %18, %13 ], [ 0, %20 ]
  br i1 %26, label %29, label %82

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %31 = ptrtoint ptr %27 to i64
  %32 = sub i64 %16, %31
  %33 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %27, i64 noundef %32, ptr noundef %30, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %34 = icmp ult i64 %33, -119
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = icmp eq i64 %33, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %39 = trunc i64 %33 to i16
  store i16 %39, ptr %38, align 1
  %40 = getelementptr inbounds nuw i8, ptr %27, i64 %33
  br label %41

41:                                               ; preds = %35, %29, %37
  %42 = phi i1 [ true, %37 ], [ false, %29 ], [ false, %35 ]
  %43 = phi ptr [ %40, %37 ], [ %27, %29 ], [ %27, %35 ]
  %44 = phi i64 [ %28, %37 ], [ %33, %29 ], [ 0, %35 ]
  br i1 %42, label %45, label %82

45:                                               ; preds = %41
  %46 = getelementptr inbounds nuw i8, ptr %30, i64 %8
  %47 = ptrtoint ptr %43 to i64
  %48 = sub i64 %16, %47
  %49 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %43, i64 noundef %48, ptr noundef %46, i64 noundef %8, ptr noundef %4, i32 noundef %5)
  %50 = icmp ult i64 %49, -119
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = icmp eq i64 %49, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %55 = trunc i64 %49 to i16
  store i16 %55, ptr %54, align 1
  %56 = getelementptr inbounds nuw i8, ptr %43, i64 %49
  br label %57

57:                                               ; preds = %51, %45, %53
  %58 = phi i1 [ true, %53 ], [ false, %45 ], [ false, %51 ]
  %59 = phi ptr [ %56, %53 ], [ %43, %45 ], [ %43, %51 ]
  %60 = phi i64 [ %44, %53 ], [ %49, %45 ], [ 0, %51 ]
  br i1 %58, label %61, label %82

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %46, i64 %8
  %63 = ptrtoint ptr %59 to i64
  %64 = sub i64 %16, %63
  %65 = ptrtoint ptr %9 to i64
  %66 = ptrtoint ptr %62 to i64
  %67 = sub i64 %65, %66
  %68 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %59, i64 noundef %64, ptr noundef %62, i64 noundef %67, ptr noundef %4, i32 noundef %5)
  %69 = icmp ult i64 %68, -119
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = icmp eq i64 %68, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds nuw i8, ptr %59, i64 %68
  br label %74

74:                                               ; preds = %70, %61, %72
  %75 = phi i1 [ true, %72 ], [ false, %61 ], [ false, %70 ]
  %76 = phi ptr [ %73, %72 ], [ %59, %61 ], [ %59, %70 ]
  %77 = phi i64 [ %60, %72 ], [ %68, %61 ], [ 0, %70 ]
  br i1 %75, label %78, label %82

78:                                               ; preds = %74
  %79 = ptrtoint ptr %76 to i64
  %80 = ptrtoint ptr %0 to i64
  %81 = sub i64 %79, %80
  br label %82

82:                                               ; preds = %6, %74, %57, %41, %25, %78
  %83 = phi i64 [ %81, %78 ], [ %77, %74 ], [ %60, %57 ], [ %44, %41 ], [ %28, %25 ], [ 0, %6 ]
  ret i64 %83
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress1X_wksp(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
  %9 = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %6, i64 noundef %7, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0)
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12) unnamed_addr #0 {
  %14 = alloca i32, align 4
  store i32 %4, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %16 = ptrtoint ptr %7 to i64
  %17 = and i64 %16, 3
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %187

19:                                               ; preds = %13
  %20 = icmp ult i64 %8, 6400
  br i1 %20, label %187, label %21

21:                                               ; preds = %19
  %22 = icmp eq i64 %3, 0
  %23 = icmp eq i64 %1, 0
  %24 = or i1 %23, %22
  br i1 %24, label %187, label %25

25:                                               ; preds = %21
  %26 = icmp ugt i64 %3, 131072
  br i1 %26, label %187, label %27

27:                                               ; preds = %25
  %28 = icmp ugt i32 %5, 12
  br i1 %28, label %187, label %29

29:                                               ; preds = %27
  %30 = icmp ugt i32 %4, 255
  br i1 %30, label %187, label %31

31:                                               ; preds = %29
  %32 = icmp eq i32 %4, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  store i32 255, ptr %14, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = icmp eq i32 %5, 0
  %36 = select i1 %35, i32 11, i32 %5
  %37 = icmp ne i32 %11, 0
  %38 = icmp ne ptr %10, null
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, ptr %10, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %15, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %12)
  br label %187

45:                                               ; preds = %40, %34
  %46 = call i64 @HIST_count_wksp(ptr noundef %7, ptr noundef nonnull %14, ptr noundef %2, i64 noundef %3, ptr noundef %7, i64 noundef %8) #12
  %47 = icmp ult i64 %46, -119
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = icmp eq i64 %46, %3
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = load i8, ptr %2, align 1
  store i8 %51, ptr %0, align 1
  br label %56

52:                                               ; preds = %48
  %53 = lshr i64 %3, 7
  %54 = add nuw nsw i64 %53, 4
  %55 = icmp ugt i64 %46, %54
  br label %56

56:                                               ; preds = %52, %45, %50
  %57 = phi i1 [ false, %50 ], [ false, %45 ], [ %55, %52 ]
  %58 = phi i64 [ 1, %50 ], [ %46, %45 ], [ 0, %52 ]
  br i1 %57, label %59, label %187

59:                                               ; preds = %56
  br i1 %38, label %60, label %86

60:                                               ; preds = %59
  %61 = load i32, ptr %10, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load i32, ptr %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %63
  %67 = add nuw i32 %64, 1
  %68 = zext i32 %67 to i64
  br label %69

69:                                               ; preds = %69, %66
  %70 = phi i64 [ 0, %66 ], [ %81, %69 ]
  %71 = phi i32 [ 0, %66 ], [ %80, %69 ]
  %72 = getelementptr inbounds nuw i32, ptr %7, i64 %70
  %73 = load i32, ptr %72, align 4
  %74 = icmp ne i32 %73, 0
  %75 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %9, i64 %70, i32 1
  %76 = load i8, ptr %75, align 2
  %77 = icmp eq i8 %76, 0
  %78 = and i1 %74, %77
  %79 = zext i1 %78 to i32
  %80 = or i32 %71, %79
  %81 = add nuw nsw i64 %70, 1
  %82 = icmp eq i64 %81, %68
  br i1 %82, label %83, label %69, !llvm.loop !38

83:                                               ; preds = %69
  %84 = icmp eq i32 %80, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %83
  store i32 0, ptr %10, align 4
  br label %86

86:                                               ; preds = %63, %85, %83, %60, %59
  br i1 %39, label %87, label %92

87:                                               ; preds = %86
  %88 = load i32, ptr %10, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %15, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %12)
  br label %187

92:                                               ; preds = %87, %86
  %93 = load i32, ptr %14, align 4
  %94 = call i32 @FSE_optimalTableLog_internal(i32 noundef %36, i64 noundef %3, i32 noundef %93, i32 noundef 1) #12
  %95 = getelementptr inbounds nuw i8, ptr %7, i64 1024
  %96 = load i32, ptr %14, align 4
  %97 = getelementptr inbounds nuw i8, ptr %7, i64 2048
  %98 = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %95, ptr noundef %7, i32 noundef %96, i32 noundef %94, ptr noundef nonnull %97, i64 noundef 4352)
  %99 = icmp ult i64 %98, -119
  %100 = select i1 %99, i64 %58, i64 %98
  br i1 %99, label %101, label %108

101:                                              ; preds = %92
  %102 = trunc nsw i64 %98 to i32
  %103 = add i32 %96, 1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %95, i64 %104
  %106 = shl nuw nsw i64 %104, 2
  %107 = sub nsw i64 1024, %106
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %105, i8 0, i64 %107, i1 false)
  br label %108

108:                                              ; preds = %92, %101
  %109 = phi i32 [ %102, %101 ], [ %94, %92 ]
  br i1 %99, label %110, label %187

110:                                              ; preds = %108
  %111 = call i64 @HUF_writeCTable(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %95, i32 noundef %96, i32 noundef %109)
  %112 = icmp ult i64 %111, -119
  br i1 %112, label %113, label %181

113:                                              ; preds = %110
  br i1 %38, label %114, label %171

114:                                              ; preds = %113
  %115 = load i32, ptr %10, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %171, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %14, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %138, label %120

120:                                              ; preds = %117
  %121 = add nuw i32 %118, 1
  %122 = zext i32 %121 to i64
  br label %123

123:                                              ; preds = %123, %120
  %124 = phi i64 [ 0, %120 ], [ %134, %123 ]
  %125 = phi i64 [ 0, %120 ], [ %133, %123 ]
  %126 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %9, i64 %124, i32 1
  %127 = load i8, ptr %126, align 2
  %128 = zext i8 %127 to i32
  %129 = getelementptr inbounds nuw i32, ptr %7, i64 %124
  %130 = load i32, ptr %129, align 4
  %131 = mul i32 %130, %128
  %132 = zext i32 %131 to i64
  %133 = add i64 %125, %132
  %134 = add nuw nsw i64 %124, 1
  %135 = icmp eq i64 %134, %122
  br i1 %135, label %136, label %123, !llvm.loop !37

136:                                              ; preds = %123
  %137 = lshr i64 %133, 3
  br label %138

138:                                              ; preds = %117, %136
  %139 = phi i64 [ 0, %117 ], [ %137, %136 ]
  br i1 %119, label %160, label %140

140:                                              ; preds = %138
  %141 = add nuw i32 %118, 1
  %142 = zext i32 %141 to i64
  br label %143

143:                                              ; preds = %143, %140
  %144 = phi i64 [ 0, %140 ], [ %156, %143 ]
  %145 = phi i64 [ 0, %140 ], [ %155, %143 ]
  %146 = shl nuw nsw i64 %144, 2
  %147 = or disjoint i64 %146, 2
  %148 = getelementptr inbounds nuw i8, ptr %95, i64 %147
  %149 = load i8, ptr %148, align 2
  %150 = zext i8 %149 to i32
  %151 = getelementptr inbounds nuw i32, ptr %7, i64 %144
  %152 = load i32, ptr %151, align 4
  %153 = mul i32 %152, %150
  %154 = zext i32 %153 to i64
  %155 = add i64 %145, %154
  %156 = add nuw nsw i64 %144, 1
  %157 = icmp eq i64 %156, %142
  br i1 %157, label %158, label %143, !llvm.loop !37

158:                                              ; preds = %143
  %159 = lshr i64 %155, 3
  br label %160

160:                                              ; preds = %138, %158
  %161 = phi i64 [ 0, %138 ], [ %159, %158 ]
  %162 = add i64 %161, %111
  %163 = icmp ugt i64 %139, %162
  %164 = add i64 %111, 12
  %165 = icmp ult i64 %164, %3
  %166 = and i1 %165, %163
  br i1 %166, label %169, label %167

167:                                              ; preds = %160
  %168 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %15, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %12)
  br label %169

169:                                              ; preds = %160, %167
  %170 = phi i64 [ %168, %167 ], [ %100, %160 ]
  br i1 %166, label %171, label %181

171:                                              ; preds = %169, %114, %113
  %172 = phi i64 [ %170, %169 ], [ %100, %114 ], [ %100, %113 ]
  %173 = add i64 %111, 12
  %174 = icmp ult i64 %173, %3
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 %111
  br i1 %38, label %177, label %178

177:                                              ; preds = %175
  store i32 0, ptr %10, align 4
  br label %178

178:                                              ; preds = %177, %175
  %179 = icmp eq ptr %9, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1024) %9, ptr noundef nonnull align 4 dereferenceable(1024) %95, i64 1024, i1 false)
  br label %181

181:                                              ; preds = %178, %180, %171, %110, %169
  %182 = phi i1 [ false, %169 ], [ false, %110 ], [ false, %171 ], [ true, %180 ], [ true, %178 ]
  %183 = phi ptr [ %0, %169 ], [ %0, %110 ], [ %0, %171 ], [ %176, %180 ], [ %176, %178 ]
  %184 = phi i64 [ %170, %169 ], [ %111, %110 ], [ 0, %171 ], [ %172, %180 ], [ %172, %178 ]
  br i1 %182, label %185, label %187

185:                                              ; preds = %181
  %186 = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %183, ptr noundef nonnull %15, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef nonnull %95, i32 noundef %12)
  br label %187

187:                                              ; preds = %29, %27, %25, %21, %19, %13, %181, %108, %56, %185, %90, %43
  %188 = phi i64 [ %44, %43 ], [ %91, %90 ], [ %186, %185 ], [ %184, %181 ], [ %100, %108 ], [ %58, %56 ], [ -1, %13 ], [ -66, %19 ], [ 0, %21 ], [ -72, %25 ], [ -44, %27 ], [ -46, %29 ]
  ret i64 %188
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress1X_repeat(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress4X_wksp(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
  %9 = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef %6, i64 noundef %7, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0)
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress4X_repeat(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  ret i64 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -66, 256) i64 @HUF_buildCTable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = alloca %struct.HUF_buildCTable_wksp_tables, align 4
  call void @llvm.lifetime.start.p0(i64 4352, ptr nonnull %5) #12
  %6 = call i64 @HUF_buildCTable_wksp(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5, i64 noundef 4352)
  call void @llvm.lifetime.end.p0(i64 4352, ptr nonnull %5) #12
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress1X(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [1600 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 6400, ptr nonnull %7) #12
  %8 = call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, ptr noundef nonnull %7, i64 noundef 6400, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %7) #12
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [1600 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 6400, ptr nonnull %7) #12
  %8 = call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef nonnull %7, i64 noundef 6400, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %7) #12
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [1600 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 6400, ptr nonnull %5) #12
  %6 = call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 255, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %5, i64 noundef 6400, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 6400, ptr nonnull %5) #12
  ret i64 %6
}

declare i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @FSE_optimalTableLog(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @FSE_compress_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = icmp ult i64 %1, 8
  br i1 %6, label %162, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -8
  %10 = icmp eq i64 %1, 8
  br i1 %10, label %162, label %11

11:                                               ; preds = %7
  %12 = and i64 %3, -4
  %13 = and i64 %3, 3
  switch i64 %13, label %66 [
    i64 3, label %14
    i64 2, label %25
    i64 1, label %42
    i64 0, label %67
  ]

14:                                               ; preds = %11
  %15 = or disjoint i64 %12, 2
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %18
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 2
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %14, %11
  %26 = phi i32 [ 0, %11 ], [ %24, %14 ]
  %27 = phi i64 [ 0, %11 ], [ %21, %14 ]
  %28 = or disjoint i64 %12, 1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 %28
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %31
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 2
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = zext nneg i32 %26 to i64
  %39 = shl i64 %34, %38
  %40 = or i64 %39, %27
  %41 = add nuw nsw i32 %26, %37
  br label %42

42:                                               ; preds = %25, %11
  %43 = phi i32 [ 0, %11 ], [ %41, %25 ]
  %44 = phi i64 [ 0, %11 ], [ %40, %25 ]
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 %12
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %47
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr %48, i64 2
  %52 = load i8, ptr %51, align 2
  %53 = zext i8 %52 to i32
  %54 = zext nneg i32 %43 to i64
  %55 = shl i64 %50, %54
  %56 = or i64 %55, %44
  %57 = add nuw nsw i32 %43, %53
  %58 = lshr i32 %57, 3
  %59 = zext nneg i32 %58 to i64
  store i64 %56, ptr %0, align 1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %59
  %61 = icmp ugt ptr %60, %9
  %62 = select i1 %61, ptr %9, ptr %60
  %63 = and i32 %57, 7
  %64 = shl nuw nsw i64 %59, 3
  %65 = lshr i64 %56, %64
  br label %67

66:                                               ; preds = %11
  unreachable

67:                                               ; preds = %42, %11
  %68 = phi ptr [ %0, %11 ], [ %62, %42 ]
  %69 = phi i32 [ 0, %11 ], [ %63, %42 ]
  %70 = phi i64 [ %13, %11 ], [ %65, %42 ]
  %71 = icmp eq i64 %12, 0
  br i1 %71, label %140, label %72

72:                                               ; preds = %67, %72
  %73 = phi i64 [ %114, %72 ], [ %12, %67 ]
  %74 = phi i64 [ %138, %72 ], [ %70, %67 ]
  %75 = phi i32 [ %136, %72 ], [ %69, %67 ]
  %76 = phi ptr [ %135, %72 ], [ %68, %67 ]
  %77 = getelementptr i8, ptr %2, i64 %73
  %78 = getelementptr i8, ptr %77, i64 -1
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %80
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i64
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 2
  %85 = load i8, ptr %84, align 2
  %86 = zext i8 %85 to i32
  %87 = zext nneg i32 %75 to i64
  %88 = shl nuw nsw i64 %83, %87
  %89 = add nuw nsw i32 %75, %86
  %90 = getelementptr i8, ptr %77, i64 -2
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %92
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i64
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 2
  %97 = load i8, ptr %96, align 2
  %98 = zext i8 %97 to i32
  %99 = zext nneg i32 %89 to i64
  %100 = shl i64 %95, %99
  %101 = add nuw nsw i32 %89, %98
  %102 = getelementptr i8, ptr %77, i64 -3
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %104
  %106 = load i16, ptr %105, align 2
  %107 = zext i16 %106 to i64
  %108 = getelementptr inbounds nuw i8, ptr %105, i64 2
  %109 = load i8, ptr %108, align 2
  %110 = zext i8 %109 to i32
  %111 = zext nneg i32 %101 to i64
  %112 = shl i64 %107, %111
  %113 = add nuw nsw i32 %101, %110
  %114 = add i64 %73, -4
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %4, i64 %117
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i64
  %121 = getelementptr inbounds nuw i8, ptr %118, i64 2
  %122 = load i8, ptr %121, align 2
  %123 = zext i8 %122 to i32
  %124 = zext nneg i32 %113 to i64
  %125 = shl i64 %120, %124
  %126 = or i64 %88, %74
  %127 = or i64 %126, %100
  %128 = or i64 %127, %112
  %129 = or i64 %128, %125
  %130 = add nuw nsw i32 %113, %123
  %131 = lshr i32 %130, 3
  %132 = zext nneg i32 %131 to i64
  store i64 %129, ptr %76, align 1
  %133 = getelementptr inbounds nuw i8, ptr %76, i64 %132
  %134 = icmp ugt ptr %133, %9
  %135 = select i1 %134, ptr %9, ptr %133
  %136 = and i32 %130, 7
  %137 = shl nuw nsw i64 %132, 3
  %138 = lshr i64 %129, %137
  %139 = icmp eq i64 %114, 0
  br i1 %139, label %140, label %72, !llvm.loop !39

140:                                              ; preds = %72, %67
  %141 = phi ptr [ %68, %67 ], [ %135, %72 ]
  %142 = phi i32 [ %69, %67 ], [ %136, %72 ]
  %143 = phi i64 [ %70, %67 ], [ %138, %72 ]
  %144 = zext nneg i32 %142 to i64
  %145 = shl nuw nsw i64 1, %144
  %146 = or i64 %145, %143
  %147 = add nuw nsw i32 %142, 1
  %148 = lshr i32 %147, 3
  %149 = zext nneg i32 %148 to i64
  store i64 %146, ptr %141, align 1
  %150 = getelementptr inbounds nuw i8, ptr %141, i64 %149
  %151 = icmp ugt ptr %150, %9
  %152 = select i1 %151, ptr %9, ptr %150
  %153 = and i32 %147, 7
  %154 = icmp ult ptr %152, %9
  %155 = ptrtoint ptr %152 to i64
  %156 = ptrtoint ptr %0 to i64
  %157 = icmp ne i32 %153, 0
  %158 = zext i1 %157 to i64
  %159 = sub i64 %158, %156
  %160 = add i64 %159, %155
  %161 = select i1 %154, i64 %160, i64 0
  br label %162

162:                                              ; preds = %5, %7, %140
  %163 = phi i64 [ %161, %140 ], [ 0, %7 ], [ 0, %5 ]
  ret i64 %163
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef range(i64 1, 131073) %4, i32 noundef range(i32 0, 2) %5, ptr nocapture noundef readonly %6, i32 noundef %7) unnamed_addr #5 {
  %9 = icmp eq i32 %5, 0
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = sub i64 %10, %11
  br i1 %9, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %1, i64 noundef %12, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %17

15:                                               ; preds = %8
  %16 = tail call fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %1, i64 noundef %12, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  %19 = icmp ult i64 %18, -119
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = icmp eq i64 %18, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 %18
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %0 to i64
  %26 = sub i64 %24, %25
  %27 = add nsw i64 %4, -1
  %28 = icmp ult i64 %26, %27
  %29 = select i1 %28, i64 %26, i64 0
  br label %30

30:                                               ; preds = %22, %20, %17
  %31 = phi i64 [ %18, %17 ], [ 0, %20 ], [ %29, %22 ]
  ret i64 %31
}

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi2,+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !6, !7}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !6, !7}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6, !7}
!19 = distinct !{!19, !6, !7}
!20 = distinct !{!20, !6, !7}
!21 = distinct !{!21, !6, !7}
!22 = distinct !{!22, !6, !7}
!23 = distinct !{!23, !6, !7}
!24 = distinct !{!24, !6, !7}
!25 = distinct !{!25, !6, !7}
!26 = distinct !{!26, !6, !7}
!27 = distinct !{!27, !6, !7}
!28 = distinct !{!28, !6, !7}
!29 = distinct !{!29, !6, !7}
!30 = distinct !{!30, !6, !7}
!31 = distinct !{!31, !6, !7}
!32 = distinct !{!32, !6, !7}
!33 = distinct !{!33, !6, !7}
!34 = distinct !{!34, !6, !7}
!35 = distinct !{!35, !6, !7}
!36 = distinct !{!36, !6, !7}
!37 = distinct !{!37, !6, !7}
!38 = distinct !{!38, !6, !7}
!39 = distinct !{!39, !6, !7}
