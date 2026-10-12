; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/fdf28f6/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/fdf28f6/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 32

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @target_64_len17(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef 17, i64 noundef 0, ptr noundef nonnull @XXH3_hashLong_64b_default) #10
  ret i64 %2
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @target_64seed_len33(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef 33, i64 noundef %1, ptr noundef nonnull @XXH3_hashLong_64b_withSeed) #10
  ret i64 %3
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @target_64seed_len80(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef 80, i64 noundef %1, ptr noundef nonnull @XXH3_hashLong_64b_withSeed) #10
  ret i64 %3
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @target_64seed_len128(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @XXH3_64bits_internal(ptr noundef %0, i64 noundef 128, i64 noundef %1, ptr noundef nonnull @XXH3_hashLong_64b_withSeed) #10
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_128seed_len100(ptr noundef writeonly %0, ptr noundef readonly %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 100
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i64 [ 3, %3 ], [ %54, %5 ]
  %7 = phi i64 [ -3626654062522721092, %3 ], [ %36, %5 ]
  %8 = phi i64 [ 0, %3 ], [ %53, %5 ]
  %9 = shl i64 %6, 4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 %9
  %11 = sub nuw nsw i64 -16, %9
  %12 = getelementptr inbounds i8, ptr %4, i64 %11
  %13 = shl i64 %6, 5
  %14 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %13
  %15 = load i64, ptr %10, align 1
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %17 = load i64, ptr %16, align 1
  %18 = load i64, ptr %14, align 32
  %19 = add i64 %18, %2
  %20 = xor i64 %19, %15
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %22 = load i64, ptr %21, align 8
  %23 = sub i64 %22, %2
  %24 = xor i64 %23, %17
  %25 = zext i64 %20 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %26, %25
  %28 = lshr i128 %27, 64
  %29 = xor i128 %28, %27
  %30 = trunc i128 %29 to i64
  %31 = add i64 %7, %30
  %32 = load i64, ptr %12, align 1
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %34 = load i64, ptr %33, align 1
  %35 = add i64 %34, %32
  %36 = xor i64 %31, %35
  %37 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %38 = load i64, ptr %37, align 16
  %39 = add i64 %38, %2
  %40 = xor i64 %39, %32
  %41 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %42 = load i64, ptr %41, align 8
  %43 = sub i64 %42, %2
  %44 = xor i64 %43, %34
  %45 = zext i64 %40 to i128
  %46 = zext i64 %44 to i128
  %47 = mul nuw i128 %46, %45
  %48 = lshr i128 %47, 64
  %49 = xor i128 %48, %47
  %50 = trunc i128 %49 to i64
  %51 = add i64 %8, %50
  %52 = add i64 %17, %15
  %53 = xor i64 %51, %52
  %54 = add nsw i64 %6, -1
  %55 = icmp eq i64 %6, 0
  br i1 %55, label %56, label %5

56:                                               ; preds = %5
  %57 = add i64 %53, %36
  %58 = mul i64 %36, -7046029288634856825
  %59 = mul i64 %53, -8796714831421723037
  %60 = sub i64 100, %2
  %61 = mul i64 %60, -4417276706812531889
  %62 = add i64 %58, %61
  %63 = add i64 %62, %59
  %64 = lshr i64 %57, 37
  %65 = xor i64 %64, %57
  %66 = mul i64 %65, 1609587791953885689
  %67 = lshr i64 %66, 32
  %68 = xor i64 %67, %66
  %69 = lshr i64 %63, 37
  %70 = xor i64 %69, %63
  %71 = mul i64 %70, 1609587791953885689
  %72 = lshr i64 %71, 32
  %73 = xor i64 %72, %71
  %74 = sub i64 0, %73
  store i64 %68, ptr %0, align 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %74, ptr %75, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #2

; Function Attrs: nofree norecurse nosync nounwind optsize uwtable
define dso_local i64 @target_64seed_len256(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef 256, i64 noundef %1, ptr nonnull poison, i64 poison) #11, !callees !21
  ret i64 %3
}

; Function Attrs: nofree norecurse nosync nounwind optsize uwtable
define dso_local i64 @target_64_len256(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca [8 x i64], align 32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %2, ptr noundef nonnull align 32 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %2, ptr noundef readonly %0, i64 noundef 256, ptr noundef nonnull @XXH3_kSecret) #10
  %3 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %2, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 11), i64 noundef 3997421333012711168) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #12
  ret i64 %3
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @XXH3_64bits_internal(ptr noalias noundef %0, i64 noundef range(i64 17, 257) %1, i64 noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = icmp samesign ult i64 %1, 129
  br i1 %5, label %6, label %63

6:                                                ; preds = %4
  %7 = mul i64 %1, -7046029288634856825
  %8 = add nsw i64 %1, -1
  %9 = lshr i64 %8, 5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi i64 [ %7, %6 ], [ %54, %11 ]
  %13 = phi i64 [ %9, %6 ], [ %55, %11 ]
  %14 = shl i64 %13, 4
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %14
  %16 = shl i64 %13, 5
  %17 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %16
  %18 = load i64, ptr %15, align 1
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %20 = load i64, ptr %19, align 1
  %21 = load i64, ptr %17, align 32
  %22 = add i64 %21, %2
  %23 = xor i64 %22, %18
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %25 = load i64, ptr %24, align 8
  %26 = sub i64 %25, %2
  %27 = xor i64 %26, %20
  %28 = zext i64 %23 to i128
  %29 = zext i64 %27 to i128
  %30 = mul nuw i128 %29, %28
  %31 = lshr i128 %30, 64
  %32 = xor i128 %31, %30
  %33 = trunc i128 %32 to i64
  %34 = add i64 %12, %33
  %35 = sub nuw nsw i64 -16, %14
  %36 = getelementptr inbounds i8, ptr %10, i64 %35
  %37 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %38 = load i64, ptr %36, align 1
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %40 = load i64, ptr %39, align 1
  %41 = load i64, ptr %37, align 16
  %42 = add i64 %41, %2
  %43 = xor i64 %42, %38
  %44 = getelementptr inbounds nuw i8, ptr %17, i64 24
  %45 = load i64, ptr %44, align 8
  %46 = sub i64 %45, %2
  %47 = xor i64 %46, %40
  %48 = zext i64 %43 to i128
  %49 = zext i64 %47 to i128
  %50 = mul nuw i128 %49, %48
  %51 = lshr i128 %50, 64
  %52 = xor i128 %51, %50
  %53 = trunc i128 %52 to i64
  %54 = add i64 %34, %53
  %55 = add nsw i64 %13, -1
  %56 = icmp eq i64 %13, 0
  br i1 %56, label %57, label %11

57:                                               ; preds = %11
  %58 = lshr i64 %54, 37
  %59 = xor i64 %58, %54
  %60 = mul i64 %59, 1609587791953885689
  %61 = lshr i64 %60, 32
  %62 = xor i64 %61, %60
  br label %158

63:                                               ; preds = %4
  %64 = icmp samesign ult i64 %1, 241
  br i1 %64, label %65, label %156

65:                                               ; preds = %63
  %66 = mul i64 %1, -7046029288634856825
  %67 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %66, i64 0
  %68 = insertelement <4 x i64> poison, i64 %2, i64 0
  %69 = shufflevector <4 x i64> %68, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %70

70:                                               ; preds = %70, %65
  %71 = phi i64 [ 0, %65 ], [ %93, %70 ]
  %72 = phi <4 x i64> [ %67, %65 ], [ %92, %70 ]
  %73 = shl nuw nsw i64 %71, 4
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %73
  %75 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %73
  %76 = load <8 x i64>, ptr %74, align 1
  %77 = shufflevector <8 x i64> %76, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %78 = shufflevector <8 x i64> %76, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %79 = load <8 x i64>, ptr %75, align 64
  %80 = shufflevector <8 x i64> %79, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %81 = shufflevector <8 x i64> %79, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %82 = add <4 x i64> %80, %69
  %83 = xor <4 x i64> %82, %77
  %84 = sub <4 x i64> %81, %69
  %85 = xor <4 x i64> %84, %78
  %86 = zext <4 x i64> %83 to <4 x i128>
  %87 = zext <4 x i64> %85 to <4 x i128>
  %88 = mul nuw <4 x i128> %87, %86
  %89 = lshr <4 x i128> %88, splat (i128 64)
  %90 = xor <4 x i128> %89, %88
  %91 = trunc <4 x i128> %90 to <4 x i64>
  %92 = add <4 x i64> %72, %91
  %93 = add nuw i64 %71, 4
  %94 = icmp eq i64 %93, 8
  br i1 %94, label %95, label %70

95:                                               ; preds = %70
  %96 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %92)
  %97 = trunc nuw nsw i64 %1 to i32
  %98 = lshr i32 %97, 4
  %99 = lshr i64 %96, 37
  %100 = xor i64 %99, %96
  %101 = mul i64 %100, 1609587791953885689
  %102 = lshr i64 %101, 32
  %103 = xor i64 %102, %101
  %104 = icmp eq i32 %98, 8
  br i1 %104, label %133, label %105

105:                                              ; preds = %95
  %106 = zext nneg i32 %98 to i64
  br label %107

107:                                              ; preds = %107, %105
  %108 = phi i64 [ 8, %105 ], [ %131, %107 ]
  %109 = phi i64 [ %103, %105 ], [ %130, %107 ]
  %110 = shl nsw i64 %108, 4
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 %110
  %112 = getelementptr i8, ptr @XXH3_kSecret, i64 %110
  %113 = getelementptr i8, ptr %112, i64 -125
  %114 = load i64, ptr %111, align 1
  %115 = getelementptr inbounds nuw i8, ptr %111, i64 8
  %116 = load i64, ptr %115, align 1
  %117 = load i64, ptr %113, align 1
  %118 = add i64 %117, %2
  %119 = xor i64 %118, %114
  %120 = getelementptr i8, ptr %112, i64 -117
  %121 = load i64, ptr %120, align 1
  %122 = sub i64 %121, %2
  %123 = xor i64 %122, %116
  %124 = zext i64 %119 to i128
  %125 = zext i64 %123 to i128
  %126 = mul nuw i128 %125, %124
  %127 = lshr i128 %126, 64
  %128 = xor i128 %127, %126
  %129 = trunc i128 %128 to i64
  %130 = add i64 %109, %129
  %131 = add nuw nsw i64 %108, 1
  %132 = icmp eq i64 %131, %106
  br i1 %132, label %133, label %107

133:                                              ; preds = %107, %95
  %134 = phi i64 [ %103, %95 ], [ %130, %107 ]
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %136 = getelementptr inbounds i8, ptr %135, i64 -16
  %137 = load i64, ptr %136, align 1
  %138 = getelementptr inbounds i8, ptr %135, i64 -8
  %139 = load i64, ptr %138, align 1
  %140 = add i64 %2, 8320639771003045937
  %141 = xor i64 %137, %140
  %142 = sub i64 -1453760514566526364, %2
  %143 = xor i64 %139, %142
  %144 = zext i64 %141 to i128
  %145 = zext i64 %143 to i128
  %146 = mul nuw i128 %145, %144
  %147 = lshr i128 %146, 64
  %148 = xor i128 %147, %146
  %149 = trunc i128 %148 to i64
  %150 = add i64 %134, %149
  %151 = lshr i64 %150, 37
  %152 = xor i64 %151, %150
  %153 = mul i64 %152, 1609587791953885689
  %154 = lshr i64 %153, 32
  %155 = xor i64 %154, %153
  br label %158

156:                                              ; preds = %63
  %157 = tail call i64 %3(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192) #11, !callees !21
  br label %158

158:                                              ; preds = %156, %133, %57
  %159 = phi i64 [ %62, %57 ], [ %155, %133 ], [ %157, %156 ]
  ret i64 %159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read) uwtable
define internal i64 @XXH3_hashLong_64b_default(ptr noalias noundef readonly %0, i64 noundef %1, i64 %2, ptr noalias readnone %3, i64 %4) #4 {
  %6 = alloca [8 x i64], align 32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %6, ptr noundef nonnull align 32 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret) #10
  %7 = mul i64 %1, -7046029288634856825
  %8 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 11), i64 noundef %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  ret i64 %8
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_hashLong_internal_loop(ptr noalias noundef nonnull %0, ptr noalias noundef readonly %1, i64 noundef %2, ptr noalias noundef readonly %3) unnamed_addr #6 {
  %5 = add i64 %2, -1
  %6 = icmp ult i64 %5, 1024
  br i1 %6, label %63, label %7

7:                                                ; preds = %4
  %8 = lshr i64 %5, 10
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 128
  br label %10

10:                                               ; preds = %7, %60
  %11 = phi i64 [ 0, %7 ], [ %61, %60 ]
  %12 = shl nuw i64 %11, 10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 %12
  br label %14

14:                                               ; preds = %39, %10
  %15 = phi i64 [ %40, %39 ], [ 0, %10 ]
  %16 = shl nuw i64 %15, 6
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 %16
  %18 = shl nuw nsw i64 %15, 3
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 %18
  br label %20

20:                                               ; preds = %20, %14
  %21 = phi i1 [ true, %14 ], [ false, %20 ]
  %22 = phi i64 [ 0, %14 ], [ 1, %20 ]
  %23 = getelementptr inbounds nuw <4 x i64>, ptr %17, i64 %22
  %24 = load <4 x i64>, ptr %23, align 1
  %25 = getelementptr inbounds nuw <4 x i64>, ptr %19, i64 %22
  %26 = load <4 x i64>, ptr %25, align 1
  %27 = xor <4 x i64> %26, %24
  %28 = bitcast <4 x i64> %27 to <8 x i32>
  %29 = shufflevector <8 x i32> %28, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %30 = bitcast <8 x i32> %29 to <4 x i64>
  %31 = and <4 x i64> %27, splat (i64 4294967295)
  %32 = and <4 x i64> %30, splat (i64 4294967295)
  %33 = mul nuw <4 x i64> %32, %31
  %34 = shufflevector <4 x i64> %24, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %35 = getelementptr inbounds nuw <4 x i64>, ptr %0, i64 %22
  %36 = load <4 x i64>, ptr %35, align 32
  %37 = add <4 x i64> %36, %34
  %38 = add <4 x i64> %37, %33
  store <4 x i64> %38, ptr %35, align 32
  br i1 %21, label %20, label %39

39:                                               ; preds = %20
  %40 = add nuw nsw i64 %15, 1
  %41 = icmp eq i64 %40, 16
  br i1 %41, label %42, label %14

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %43, %42
  %44 = phi i1 [ true, %42 ], [ false, %43 ]
  %45 = phi i64 [ 0, %42 ], [ 1, %43 ]
  %46 = getelementptr inbounds nuw <4 x i64>, ptr %0, i64 %45
  %47 = load <4 x i64>, ptr %46, align 32
  %48 = lshr <4 x i64> %47, splat (i64 47)
  %49 = getelementptr inbounds nuw <4 x i64>, ptr %9, i64 %45
  %50 = load <4 x i64>, ptr %49, align 1
  %51 = xor <4 x i64> %48, %50
  %52 = xor <4 x i64> %51, %47
  %53 = bitcast <4 x i64> %52 to <8 x i32>
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %55 = bitcast <8 x i32> %54 to <4 x i64>
  %56 = and <4 x i64> %52, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, splat (i64 2654435761)
  %58 = mul <4 x i64> %55, splat (i64 -7046029290881679360)
  %59 = add <4 x i64> %58, %57
  store <4 x i64> %59, ptr %46, align 32
  br i1 %44, label %43, label %60

60:                                               ; preds = %43
  %61 = add nuw nsw i64 %11, 1
  %62 = icmp eq i64 %61, %8
  br i1 %62, label %63, label %10

63:                                               ; preds = %60, %4
  %64 = and i64 %5, -1024
  %65 = lshr i64 %5, 6
  %66 = and i64 %65, 15
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 %64
  %68 = icmp eq i64 %66, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %63, %94
  %70 = phi i64 [ %95, %94 ], [ 0, %63 ]
  %71 = shl nuw i64 %70, 6
  %72 = getelementptr inbounds nuw i8, ptr %67, i64 %71
  %73 = shl nuw nsw i64 %70, 3
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 %73
  br label %75

75:                                               ; preds = %75, %69
  %76 = phi i1 [ true, %69 ], [ false, %75 ]
  %77 = phi i64 [ 0, %69 ], [ 1, %75 ]
  %78 = getelementptr inbounds nuw <4 x i64>, ptr %72, i64 %77
  %79 = load <4 x i64>, ptr %78, align 1
  %80 = getelementptr inbounds nuw <4 x i64>, ptr %74, i64 %77
  %81 = load <4 x i64>, ptr %80, align 1
  %82 = xor <4 x i64> %81, %79
  %83 = bitcast <4 x i64> %82 to <8 x i32>
  %84 = shufflevector <8 x i32> %83, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %85 = bitcast <8 x i32> %84 to <4 x i64>
  %86 = and <4 x i64> %82, splat (i64 4294967295)
  %87 = and <4 x i64> %85, splat (i64 4294967295)
  %88 = mul nuw <4 x i64> %87, %86
  %89 = shufflevector <4 x i64> %79, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %90 = getelementptr inbounds nuw <4 x i64>, ptr %0, i64 %77
  %91 = load <4 x i64>, ptr %90, align 32
  %92 = add <4 x i64> %91, %89
  %93 = add <4 x i64> %92, %88
  store <4 x i64> %93, ptr %90, align 32
  br i1 %76, label %75, label %94

94:                                               ; preds = %75
  %95 = add nuw nsw i64 %70, 1
  %96 = icmp eq i64 %95, %66
  br i1 %96, label %97, label %69

97:                                               ; preds = %94, %63
  %98 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %99 = getelementptr inbounds i8, ptr %98, i64 -64
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 121
  br label %101

101:                                              ; preds = %101, %97
  %102 = phi i1 [ true, %97 ], [ false, %101 ]
  %103 = phi i64 [ 0, %97 ], [ 1, %101 ]
  %104 = getelementptr inbounds nuw <4 x i64>, ptr %99, i64 %103
  %105 = load <4 x i64>, ptr %104, align 1
  %106 = getelementptr inbounds nuw <4 x i64>, ptr %100, i64 %103
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = xor <4 x i64> %107, %105
  %109 = bitcast <4 x i64> %108 to <8 x i32>
  %110 = shufflevector <8 x i32> %109, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %111 = bitcast <8 x i32> %110 to <4 x i64>
  %112 = and <4 x i64> %108, splat (i64 4294967295)
  %113 = and <4 x i64> %111, splat (i64 4294967295)
  %114 = mul nuw <4 x i64> %113, %112
  %115 = shufflevector <4 x i64> %105, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %116 = getelementptr inbounds nuw <4 x i64>, ptr %0, i64 %103
  %117 = load <4 x i64>, ptr %116, align 32
  %118 = add <4 x i64> %117, %115
  %119 = add <4 x i64> %118, %114
  store <4 x i64> %119, ptr %116, align 32
  br i1 %102, label %101, label %120

120:                                              ; preds = %101
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH3_mergeAccs(ptr noalias noundef nonnull readonly %0, ptr noalias noundef readonly %1, i64 noundef %2) unnamed_addr #7 {
  %4 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %2, i64 0
  %5 = load <8 x i64>, ptr %1, align 1
  %6 = load <8 x i64>, ptr %0, align 8
  %7 = xor <8 x i64> %5, %6
  %8 = shufflevector <8 x i64> %7, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %9 = zext <4 x i64> %8 to <4 x i128>
  %10 = xor <8 x i64> %5, %6
  %11 = shufflevector <8 x i64> %10, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %12 = zext <4 x i64> %11 to <4 x i128>
  %13 = mul nuw <4 x i128> %9, %12
  %14 = lshr <4 x i128> %13, splat (i128 64)
  %15 = xor <4 x i128> %14, %13
  %16 = trunc <4 x i128> %15 to <4 x i64>
  %17 = add <4 x i64> %4, %16
  %18 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %17)
  %19 = lshr i64 %18, 37
  %20 = xor i64 %19, %18
  %21 = mul i64 %20, 1609587791953885689
  %22 = lshr i64 %21, 32
  %23 = xor i64 %22, %21
  ret i64 %23
}

; Function Attrs: nofree norecurse nosync nounwind optsize uwtable
define internal i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr readnone %3, i64 %4) #3 {
  %6 = alloca [8 x i64], align 32
  %7 = alloca [192 x i8], align 32
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #12
  %8 = insertelement <4 x i64> poison, i64 %2, i64 0
  %9 = shufflevector <4 x i64> %8, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %10

10:                                               ; preds = %10, %5
  %11 = phi i64 [ 0, %5 ], [ %21, %10 ]
  %12 = shl nuw nsw i64 %11, 4
  %13 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %12
  %14 = load <8 x i64>, ptr %13, align 64
  %15 = shufflevector <8 x i64> %14, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %16 = shufflevector <8 x i64> %14, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %17 = add <4 x i64> %15, %9
  %18 = sub <4 x i64> %16, %9
  %19 = getelementptr inbounds nuw i8, ptr %7, i64 %12
  %20 = shufflevector <4 x i64> %17, <4 x i64> %18, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i64> %20, ptr %19, align 32
  %21 = add nuw i64 %11, 4
  %22 = icmp eq i64 %21, 12
  br i1 %22, label %23, label %10

23:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(64) %6, ptr noundef nonnull align 32 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false)
  call fastcc void @XXH3_hashLong_internal_loop(ptr noundef %6, ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull readonly %7) #10
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 11
  %25 = mul i64 %1, -7046029288634856825
  %26 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %6, ptr noundef nonnull readonly %24, i64 noundef %25) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #12
  ret i64 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #9

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { nofree norecurse nosync nounwind optsize memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_len_17to128_128b: argument 0"}
!7 = distinct !{!7, !"XXH3_len_17to128_128b"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_mix16B: argument 0"}
!10 = distinct !{!10, !"XXH3_mix16B"}
!11 = !{!12}
!12 = distinct !{!12, !10, !"XXH3_mix16B: argument 1"}
!13 = !{!9, !6}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_mix16B: argument 1"}
!16 = distinct !{!16, !"XXH3_mix16B"}
!17 = !{!18, !6}
!18 = distinct !{!18, !16, !"XXH3_mix16B: argument 0"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{ptr @XXH3_hashLong_64b_default, ptr @XXH3_hashLong_64b_withSeed}
!22 = !{!23, !25, !26}
!23 = distinct !{!23, !24, !"XXH3_hashLong_64b_internal: argument 0"}
!24 = distinct !{!24, !"XXH3_hashLong_64b_internal"}
!25 = distinct !{!25, !24, !"XXH3_hashLong_64b_internal: argument 1"}
!26 = distinct !{!26, !27, !"XXH3_hashLong_64b_default: argument 0"}
!27 = distinct !{!27, !"XXH3_hashLong_64b_default"}
!28 = !{!23, !26}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_len_17to128_64b: argument 0"}
!31 = distinct !{!31, !"XXH3_len_17to128_64b"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"XXH3_mix16B: argument 0"}
!34 = distinct !{!34, !"XXH3_mix16B"}
!35 = !{!36}
!36 = distinct !{!36, !34, !"XXH3_mix16B: argument 1"}
!37 = !{!33, !30}
!38 = !{!39}
!39 = distinct !{!39, !40, !"XXH3_mix16B: argument 0"}
!40 = distinct !{!40, !"XXH3_mix16B"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"XXH3_mix16B: argument 1"}
!43 = !{!39, !30}
!44 = distinct !{!44, !20}
!45 = !{!46}
!46 = distinct !{!46, !47, !"XXH3_len_129to240_64b: argument 0"}
!47 = distinct !{!47, !"XXH3_len_129to240_64b"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"XXH3_mix16B: argument 0"}
!50 = distinct !{!50, !"XXH3_mix16B"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"XXH3_mix16B: argument 1"}
!53 = !{!49, !46}
!54 = distinct !{!54, !20, !55, !56}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"XXH3_mix16B: argument 0"}
!59 = distinct !{!59, !"XXH3_mix16B"}
!60 = !{!61}
!61 = distinct !{!61, !59, !"XXH3_mix16B: argument 1"}
!62 = !{!58, !46}
!63 = distinct !{!63, !20}
!64 = !{!65, !46}
!65 = distinct !{!65, !66, !"XXH3_mix16B: argument 0"}
!66 = distinct !{!66, !"XXH3_mix16B"}
!67 = !{!68}
!68 = distinct !{!68, !66, !"XXH3_mix16B: argument 1"}
!69 = !{!70, !72}
!70 = distinct !{!70, !71, !"XXH3_hashLong_64b_internal: argument 0"}
!71 = distinct !{!71, !"XXH3_hashLong_64b_internal"}
!72 = distinct !{!72, !71, !"XXH3_hashLong_64b_internal: argument 1"}
!73 = !{!70}
!74 = !{!75}
!75 = distinct !{!75, !76, !"XXH3_accumulate: argument 0"}
!76 = distinct !{!76, !"XXH3_accumulate"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"XXH3_accumulate: argument 1"}
!79 = !{!80}
!80 = distinct !{!80, !76, !"XXH3_accumulate: argument 2"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"XXH3_accumulate_512_avx2: argument 0"}
!83 = distinct !{!83, !"XXH3_accumulate_512_avx2"}
!84 = !{!85}
!85 = distinct !{!85, !83, !"XXH3_accumulate_512_avx2: argument 1"}
!86 = !{!87}
!87 = distinct !{!87, !83, !"XXH3_accumulate_512_avx2: argument 2"}
!88 = !{!85, !78}
!89 = !{!82, !87, !75, !80}
!90 = !{!87, !80}
!91 = !{!82, !85, !75, !78}
!92 = !{!82, !75}
!93 = !{!85, !87, !78, !80}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20}
!96 = !{!97}
!97 = distinct !{!97, !98, !"XXH3_scrambleAcc_avx2: argument 0"}
!98 = distinct !{!98, !"XXH3_scrambleAcc_avx2"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"XXH3_scrambleAcc_avx2: argument 1"}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_accumulate: argument 0"}
!105 = distinct !{!105, !"XXH3_accumulate"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"XXH3_accumulate: argument 1"}
!108 = !{!109}
!109 = distinct !{!109, !105, !"XXH3_accumulate: argument 2"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"XXH3_accumulate_512_avx2: argument 0"}
!112 = distinct !{!112, !"XXH3_accumulate_512_avx2"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"XXH3_accumulate_512_avx2: argument 1"}
!115 = !{!116}
!116 = distinct !{!116, !112, !"XXH3_accumulate_512_avx2: argument 2"}
!117 = !{!114, !107}
!118 = !{!111, !116, !104, !109}
!119 = !{!116, !109}
!120 = !{!111, !114, !104, !107}
!121 = !{!111, !104}
!122 = !{!114, !116, !107, !109}
!123 = !{!124}
!124 = distinct !{!124, !125, !"XXH3_accumulate_512_avx2: argument 0"}
!125 = distinct !{!125, !"XXH3_accumulate_512_avx2"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"XXH3_accumulate_512_avx2: argument 1"}
!128 = !{!129}
!129 = distinct !{!129, !125, !"XXH3_accumulate_512_avx2: argument 2"}
!130 = !{!124, !129}
!131 = !{!124, !127}
!132 = !{!127, !129}
!133 = !{!134}
!134 = distinct !{!134, !135, !"XXH3_mix2Accs: argument 0"}
!135 = distinct !{!135, !"XXH3_mix2Accs"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"XXH3_mix2Accs: argument 1"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"XXH3_initCustomSecret_scalar: argument 0"}
!140 = distinct !{!140, !"XXH3_initCustomSecret_scalar"}
!141 = distinct !{!141, !20, !55, !56}
!142 = !{!143, !145}
!143 = distinct !{!143, !144, !"XXH3_hashLong_64b_internal: argument 0"}
!144 = distinct !{!144, !"XXH3_hashLong_64b_internal"}
!145 = distinct !{!145, !144, !"XXH3_hashLong_64b_internal: argument 1"}
!146 = !{!143}
