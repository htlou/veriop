; ModuleID = '/tmp/xxh-s390x-kymaxz_l/wrapper.c'
source_filename = "/tmp/xxh-s390x-kymaxz_l/wrapper.c"
target datalayout = "E-m:e-i1:8:16-i8:8:16-i64:64-f128:64-v128:64-a:8:16-n32:64"
target triple = "s390x-unknown-linux-gnu"

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16

; Function Attrs: nounwind
define dso_local i64 @target(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef %1) #9
  ret i64 %3
}

; Function Attrs: noinline nounwind
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef %1) unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca <2 x i64>, align 8
  %6 = alloca <2 x i64>, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [8 x i64], align 16
  %10 = alloca [192 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %10) #10
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0) #9
  br label %70

14:                                               ; preds = %2, %14
  %15 = phi i64 [ %33, %14 ], [ 0, %2 ]
  %16 = shl nuw nsw i64 %15, 4
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %19 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %18, i64 noundef 8) #11
  %20 = load i64, ptr %4, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %21 = call noundef i64 @llvm.bswap.i64(i64 %20)
  %22 = add i64 %21, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  %23 = call noundef i64 @llvm.bswap.i64(i64 %22)
  store i64 %23, ptr %7, align 8, !tbaa !4
  %24 = call ptr @memcpy(ptr noundef nonnull %17, ptr noundef nonnull %7, i64 noundef 8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %25 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %27 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %26, i64 noundef 8) #11
  %28 = load i64, ptr %3, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %29 = call noundef i64 @llvm.bswap.i64(i64 %28)
  %30 = sub i64 %29, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  %31 = call noundef i64 @llvm.bswap.i64(i64 %30)
  store i64 %31, ptr %8, align 8, !tbaa !4
  %32 = call ptr @memcpy(ptr noundef nonnull %25, ptr noundef nonnull %8, i64 noundef 8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %33 = add nuw nsw i64 %15, 1
  %34 = icmp eq i64 %33, 12
  br i1 %34, label %35, label %14, !llvm.loop !8

35:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #10, !noalias !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %9, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_internal.acc, i64 64, i1 false), !noalias !10
  br label %36

36:                                               ; preds = %35, %64
  %37 = phi i64 [ 0, %35 ], [ %65, %64 ]
  %38 = shl nuw nsw i64 %37, 6
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 384
  call void @llvm.prefetch.p0(ptr nonnull %40, i32 0, i32 3, i32 1)
  %41 = shl nuw nsw i64 %37, 3
  %42 = getelementptr inbounds nuw i8, ptr %10, i64 %41
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  br label %43

43:                                               ; preds = %36, %43
  %44 = phi i64 [ 0, %36 ], [ %62, %43 ]
  %45 = getelementptr inbounds nuw <2 x i64>, ptr %39, i64 %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10, !noalias !14
  %46 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef %45, i64 noundef 16) #11, !noalias !14
  %47 = load <2 x i64>, ptr %5, align 8, !tbaa !17, !noalias !14
  %48 = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %47)
  store <2 x i64> %48, ptr %5, align 8, !tbaa !17, !noalias !14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10, !noalias !14
  %49 = getelementptr inbounds nuw <2 x i64>, ptr %42, i64 %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10, !noalias !14
  %50 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %49, i64 noundef 16) #11, !noalias !14
  %51 = load <2 x i64>, ptr %6, align 8, !tbaa !17, !noalias !14
  %52 = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %51)
  store <2 x i64> %52, ptr %6, align 8, !tbaa !17, !noalias !14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10, !noalias !14
  %53 = xor <2 x i64> %52, %48
  %54 = call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %53, <2 x i64> %53, <2 x i64> splat (i64 32))
  %55 = bitcast <2 x i64> %54 to <4 x i32>
  %56 = bitcast <2 x i64> %53 to <4 x i32>
  %57 = call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %56, <4 x i32> %55) #12, !srcloc !18
  %58 = getelementptr inbounds nuw <2 x i64>, ptr %9, i64 %44
  %59 = load <2 x i64>, ptr %58, align 16, !tbaa !17, !alias.scope !14, !noalias !19
  %60 = add <2 x i64> %57, %48
  %61 = add <2 x i64> %60, %59
  store <2 x i64> %61, ptr %58, align 16, !tbaa !17, !alias.scope !14, !noalias !19
  %62 = add nuw nsw i64 %44, 1
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %64, label %43, !llvm.loop !22

64:                                               ; preds = %43
  %65 = add nuw nsw i64 %37, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %36, !llvm.loop !23

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %10, i64 11
  %69 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %9, ptr noundef nonnull %68) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10, !noalias !10
  br label %70

70:                                               ; preds = %67, %12
  %71 = phi i64 [ %13, %12 ], [ %69, %67 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %10) #10
  ret i64 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noalias noundef %0) unnamed_addr #1 {
  %2 = alloca <2 x i64>, align 8
  %3 = alloca <2 x i64>, align 8
  %4 = alloca [8 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10, !noalias !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_internal.acc, i64 64, i1 false), !noalias !24
  br label %5

5:                                                ; preds = %1, %33
  %6 = phi i64 [ 0, %1 ], [ %34, %33 ]
  %7 = shl nuw nsw i64 %6, 6
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 384
  call void @llvm.prefetch.p0(ptr nonnull %9, i32 0, i32 3, i32 1)
  %10 = shl nuw nsw i64 %6, 3
  %11 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %10
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  br label %12

12:                                               ; preds = %5, %12
  %13 = phi i64 [ 0, %5 ], [ %31, %12 ]
  %14 = getelementptr inbounds nuw <2 x i64>, ptr %8, i64 %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10, !noalias !28
  %15 = call ptr @memcpy(ptr noundef nonnull %2, ptr noundef %14, i64 noundef 16) #11, !noalias !28
  %16 = load <2 x i64>, ptr %2, align 8, !tbaa !17, !noalias !28
  %17 = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %16)
  store <2 x i64> %17, ptr %2, align 8, !tbaa !17, !noalias !28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10, !noalias !28
  %18 = getelementptr inbounds nuw <2 x i64>, ptr %11, i64 %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10, !noalias !28
  %19 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %18, i64 noundef 16) #11, !noalias !28
  %20 = load <2 x i64>, ptr %3, align 8, !tbaa !17, !noalias !28
  %21 = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %20)
  store <2 x i64> %21, ptr %3, align 8, !tbaa !17, !noalias !28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10, !noalias !28
  %22 = xor <2 x i64> %21, %17
  %23 = call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %22, <2 x i64> %22, <2 x i64> splat (i64 32))
  %24 = bitcast <2 x i64> %23 to <4 x i32>
  %25 = bitcast <2 x i64> %22 to <4 x i32>
  %26 = call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %25, <4 x i32> %24) #12, !srcloc !18
  %27 = getelementptr inbounds nuw <2 x i64>, ptr %4, i64 %13
  %28 = load <2 x i64>, ptr %27, align 16, !tbaa !17, !alias.scope !28, !noalias !31
  %29 = add <2 x i64> %26, %17
  %30 = add <2 x i64> %29, %28
  store <2 x i64> %30, ptr %27, align 16, !tbaa !17, !alias.scope !28, !noalias !31
  %31 = add nuw nsw i64 %13, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %12, !llvm.loop !22

33:                                               ; preds = %12
  %34 = add nuw nsw i64 %6, 1
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %5, !llvm.loop !23

36:                                               ; preds = %33
  %37 = call fastcc i64 @XXH3_mergeAccs(ptr noundef %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i64 11)) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10, !noalias !24
  ret i64 %37
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
define internal fastcc i64 @XXH3_mergeAccs(ptr noalias nocapture noundef nonnull readonly %0, ptr noalias noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %11 = load i64, ptr %0, align 8, !tbaa !4, !alias.scope !34, !noalias !37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10, !noalias !34
  %12 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef %1, i64 noundef 8) #11, !noalias !34
  %13 = load i64, ptr %10, align 8, !tbaa !4, !noalias !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10, !noalias !34
  %14 = call noundef i64 @llvm.bswap.i64(i64 %13)
  %15 = xor i64 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !4, !alias.scope !34, !noalias !37
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10, !noalias !34
  %19 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %18, i64 noundef 8) #11, !noalias !34
  %20 = load i64, ptr %9, align 8, !tbaa !4, !noalias !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10, !noalias !34
  %21 = call noundef i64 @llvm.bswap.i64(i64 %20)
  %22 = xor i64 %21, %17
  %23 = zext i64 %15 to i128
  %24 = zext i64 %22 to i128
  %25 = mul nuw i128 %24, %23
  %26 = lshr i128 %25, 64
  %27 = xor i128 %26, %25
  %28 = trunc i128 %27 to i64
  %29 = add i64 %28, 3997421333012711168
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %32 = load i64, ptr %30, align 8, !tbaa !4, !alias.scope !39, !noalias !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10, !noalias !39
  %33 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %31, i64 noundef 8) #11, !noalias !39
  %34 = load i64, ptr %8, align 8, !tbaa !4, !noalias !39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10, !noalias !39
  %35 = call noundef i64 @llvm.bswap.i64(i64 %34)
  %36 = xor i64 %35, %32
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %38 = load i64, ptr %37, align 8, !tbaa !4, !alias.scope !39, !noalias !42
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10, !noalias !39
  %40 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %39, i64 noundef 8) #11, !noalias !39
  %41 = load i64, ptr %7, align 8, !tbaa !4, !noalias !39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10, !noalias !39
  %42 = call noundef i64 @llvm.bswap.i64(i64 %41)
  %43 = xor i64 %42, %38
  %44 = zext i64 %36 to i128
  %45 = zext i64 %43 to i128
  %46 = mul nuw i128 %45, %44
  %47 = lshr i128 %46, 64
  %48 = xor i128 %47, %46
  %49 = trunc i128 %48 to i64
  %50 = add i64 %29, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %53 = load i64, ptr %51, align 8, !tbaa !4, !alias.scope !44, !noalias !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10, !noalias !44
  %54 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %52, i64 noundef 8) #11, !noalias !44
  %55 = load i64, ptr %6, align 8, !tbaa !4, !noalias !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10, !noalias !44
  %56 = call noundef i64 @llvm.bswap.i64(i64 %55)
  %57 = xor i64 %56, %53
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %59 = load i64, ptr %58, align 8, !tbaa !4, !alias.scope !44, !noalias !47
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10, !noalias !44
  %61 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %60, i64 noundef 8) #11, !noalias !44
  %62 = load i64, ptr %5, align 8, !tbaa !4, !noalias !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10, !noalias !44
  %63 = call noundef i64 @llvm.bswap.i64(i64 %62)
  %64 = xor i64 %63, %59
  %65 = zext i64 %57 to i128
  %66 = zext i64 %64 to i128
  %67 = mul nuw i128 %66, %65
  %68 = lshr i128 %67, 64
  %69 = xor i128 %68, %67
  %70 = trunc i128 %69 to i64
  %71 = add i64 %50, %70
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %74 = load i64, ptr %72, align 8, !tbaa !4, !alias.scope !49, !noalias !52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10, !noalias !49
  %75 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %73, i64 noundef 8) #11, !noalias !49
  %76 = load i64, ptr %4, align 8, !tbaa !4, !noalias !49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10, !noalias !49
  %77 = call noundef i64 @llvm.bswap.i64(i64 %76)
  %78 = xor i64 %77, %74
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %80 = load i64, ptr %79, align 8, !tbaa !4, !alias.scope !49, !noalias !52
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10, !noalias !49
  %82 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %81, i64 noundef 8) #11, !noalias !49
  %83 = load i64, ptr %3, align 8, !tbaa !4, !noalias !49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10, !noalias !49
  %84 = call noundef i64 @llvm.bswap.i64(i64 %83)
  %85 = xor i64 %84, %80
  %86 = zext i64 %78 to i128
  %87 = zext i64 %85 to i128
  %88 = mul nuw i128 %87, %86
  %89 = lshr i128 %88, 64
  %90 = xor i128 %89, %88
  %91 = trunc i128 %90 to i64
  %92 = add i64 %71, %91
  %93 = lshr i64 %92, 37
  %94 = xor i64 %93, %92
  %95 = mul i64 %94, 1609587929392839161
  %96 = lshr i64 %95, 32
  %97 = xor i64 %96, %95
  ret i64 %97
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="z13" "target-features"="+transactional-execution,+vector" }
attributes #1 = { noinline nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="z13" "target-features"="+transactional-execution,+vector" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="z13" "target-features"="+transactional-execution,+vector" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !13}
!11 = distinct !{!11, !12, !"XXH3_hashLong_internal: argument 0"}
!12 = distinct !{!12, !"XXH3_hashLong_internal"}
!13 = distinct !{!13, !12, !"XXH3_hashLong_internal: argument 1"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_accumulate_512: argument 0"}
!16 = distinct !{!16, !"XXH3_accumulate_512"}
!17 = !{!6, !6, i64 0}
!18 = !{i64 30004}
!19 = !{!20, !21}
!20 = distinct !{!20, !16, !"XXH3_accumulate_512: argument 1"}
!21 = distinct !{!21, !16, !"XXH3_accumulate_512: argument 2"}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = !{!25, !27}
!25 = distinct !{!25, !26, !"XXH3_hashLong_internal: argument 0"}
!26 = distinct !{!26, !"XXH3_hashLong_internal"}
!27 = distinct !{!27, !26, !"XXH3_hashLong_internal: argument 1"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"XXH3_accumulate_512: argument 0"}
!30 = distinct !{!30, !"XXH3_accumulate_512"}
!31 = !{!32, !33}
!32 = distinct !{!32, !30, !"XXH3_accumulate_512: argument 1"}
!33 = distinct !{!33, !30, !"XXH3_accumulate_512: argument 2"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"XXH3_mix2Accs: argument 0"}
!36 = distinct !{!36, !"XXH3_mix2Accs"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"XXH3_mix2Accs: argument 1"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"XXH3_mix2Accs: argument 0"}
!41 = distinct !{!41, !"XXH3_mix2Accs"}
!42 = !{!43}
!43 = distinct !{!43, !41, !"XXH3_mix2Accs: argument 1"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"XXH3_mix2Accs: argument 0"}
!46 = distinct !{!46, !"XXH3_mix2Accs"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"XXH3_mix2Accs: argument 1"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"XXH3_mix2Accs: argument 0"}
!51 = distinct !{!51, !"XXH3_mix2Accs"}
!52 = !{!53}
!53 = distinct !{!53, !51, !"XXH3_mix2Accs: argument 1"}
