; ModuleID = '/tmp/xxh-a80-baseline-reok9wxr/old/xxh_x86dispatch.c'
source_filename = "/tmp/xxh-a80-baseline-reok9wxr/old/xxh_x86dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64
@g_dispatch_hashLong64_default = internal unnamed_addr global ptr null, align 8
@g_dispatch_hashLong64_seed = internal unnamed_addr global ptr null, align 8
@switch.table.select_hashLong = private unnamed_addr constant [6 x ptr] [ptr @XXH3_hashLong_64b_defaultSecret_forcesscalar, ptr @XXH3_hashLong_64b_defaultSecret_forcesse2, ptr @XXH3_hashLong_64b_defaultSecret_forceavx2, ptr poison, ptr poison, ptr @XXH3_hashLong_64b_defaultSecret_forceavx512], align 8
@switch.table.select_hashLong_withSeed = private unnamed_addr constant [6 x ptr] [ptr @XXH3_hashLong_64b_withSeed_forcescalar, ptr @XXH3_hashLong_64b_withSeed_forcesse2, ptr @XXH3_hashLong_64b_withSeed_forceavx2, ptr poison, ptr poison, ptr @XXH3_hashLong_64b_withSeed_forceavx512], align 8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @select_hashLong(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 6
  br i1 %2, label %4, label %3

3:                                                ; preds = %4, %1
  tail call void @exit(i32 noundef 1) #16
  unreachable

4:                                                ; preds = %1
  %5 = trunc nuw i32 %0 to i8
  %6 = lshr i8 39, %5
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %3

8:                                                ; preds = %4
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds nuw [6 x ptr], ptr @switch.table.select_hashLong, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_defaultSecret_forceavx512(ptr noalias nocapture noundef readonly %0, i64 noundef %1) #1 {
  %3 = load <8 x i64>, ptr @__const.XXH3_hashLong_64b_internal.acc, align 64, !noalias !5
  %4 = lshr i64 %1, 10
  %5 = icmp ult i64 %1, 1024
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), align 64, !tbaa !9, !alias.scope !12, !noalias !15
  br label %8

8:                                                ; preds = %6, %34
  %9 = phi i64 [ 0, %6 ], [ %45, %34 ]
  %10 = phi <8 x i64> [ %3, %6 ], [ %44, %34 ]
  %11 = shl nuw i64 %9, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %32, %13 ]
  %15 = phi <8 x i64> [ %10, %8 ], [ %31, %13 ]
  %16 = shl nuw nsw i64 %14, 6
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %18, i32 0, i32 3, i32 1)
  %19 = shl nuw nsw i64 %14, 3
  %20 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %21 = load <8 x i64>, ptr %17, align 1, !tbaa !9, !alias.scope !17, !noalias !22
  %22 = load <8 x i64>, ptr %20, align 8, !tbaa !9, !alias.scope !20, !noalias !24
  %23 = add <8 x i64> %21, %15
  %24 = xor <8 x i64> %22, %21
  %25 = and <8 x i64> %24, splat (i64 4294967295)
  %26 = bitcast <8 x i64> %24 to <16 x i32>
  %27 = shufflevector <16 x i32> %26, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %28 = bitcast <16 x i32> %27 to <8 x i64>
  %29 = and <8 x i64> %28, splat (i64 4294967295)
  %30 = mul nuw <8 x i64> %29, %25
  %31 = add <8 x i64> %23, %30
  %32 = add nuw nsw i64 %14, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %13

34:                                               ; preds = %13
  %35 = lshr <8 x i64> %31, splat (i64 47)
  %36 = xor <8 x i64> %35, %7
  %37 = xor <8 x i64> %36, %31
  %38 = bitcast <8 x i64> %37 to <16 x i32>
  %39 = shufflevector <16 x i32> %38, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %40 = and <8 x i64> %37, splat (i64 4294967295)
  %41 = mul nuw <8 x i64> %40, splat (i64 2654435761)
  %42 = bitcast <16 x i32> %39 to <8 x i64>
  %43 = mul <8 x i64> %42, splat (i64 -7046029290881679360)
  %44 = add <8 x i64> %43, %41
  %45 = add nuw nsw i64 %9, 1
  %46 = icmp eq i64 %45, %4
  br i1 %46, label %47, label %8

47:                                               ; preds = %34, %2
  %48 = phi <8 x i64> [ %3, %2 ], [ %44, %34 ]
  %49 = and i64 %1, -1024
  %50 = lshr i64 %1, 6
  %51 = and i64 %50, 15
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 %49
  %53 = icmp eq i64 %51, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %47, %54
  %55 = phi i64 [ %73, %54 ], [ 0, %47 ]
  %56 = phi <8 x i64> [ %72, %54 ], [ %48, %47 ]
  %57 = shl nuw i64 %55, 6
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 %57
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %59, i32 0, i32 3, i32 1)
  %60 = shl nuw nsw i64 %55, 3
  %61 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %60
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %62 = load <8 x i64>, ptr %58, align 1, !tbaa !9, !alias.scope !25, !noalias !30
  %63 = load <8 x i64>, ptr %61, align 8, !tbaa !9, !alias.scope !28, !noalias !32
  %64 = add <8 x i64> %62, %56
  %65 = xor <8 x i64> %63, %62
  %66 = and <8 x i64> %65, splat (i64 4294967295)
  %67 = bitcast <8 x i64> %65 to <16 x i32>
  %68 = shufflevector <16 x i32> %67, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %69 = bitcast <16 x i32> %68 to <8 x i64>
  %70 = and <8 x i64> %69, splat (i64 4294967295)
  %71 = mul nuw <8 x i64> %70, %66
  %72 = add <8 x i64> %64, %71
  %73 = add nuw nsw i64 %55, 1
  %74 = icmp eq i64 %73, %51
  br i1 %74, label %75, label %54

75:                                               ; preds = %54, %47
  %76 = phi <8 x i64> [ %48, %47 ], [ %72, %54 ]
  %77 = and i64 %1, 63
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %81 = getelementptr inbounds i8, ptr %80, i64 -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %82 = load <8 x i64>, ptr %81, align 1, !tbaa !9, !alias.scope !33, !noalias !38
  %83 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), align 1, !tbaa !9, !alias.scope !36, !noalias !40
  %84 = add <8 x i64> %82, %76
  %85 = xor <8 x i64> %83, %82
  %86 = and <8 x i64> %85, splat (i64 4294967295)
  %87 = bitcast <8 x i64> %85 to <16 x i32>
  %88 = shufflevector <16 x i32> %87, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %89 = bitcast <16 x i32> %88 to <8 x i64>
  %90 = and <8 x i64> %89, splat (i64 4294967295)
  %91 = mul nuw <8 x i64> %90, %86
  %92 = add <8 x i64> %84, %91
  br label %93

93:                                               ; preds = %75, %79
  %94 = phi <8 x i64> [ %76, %75 ], [ %92, %79 ]
  %95 = mul i64 %1, -7046029288634856825
  %96 = shufflevector <8 x i64> %94, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %97 = xor <4 x i64> %96, <i64 7914194659941938988, i64 -1839215637059881052, i64 5046485836271438973, i64 5920048007935066598>
  %98 = shufflevector <8 x i64> %94, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %99 = xor <4 x i64> %98, <i64 -6611157965513653271, i64 -3433288310154277810, i64 -8055285457383852172, i64 7336514198459093435>
  %100 = zext <4 x i64> %97 to <4 x i128>
  %101 = zext <4 x i64> %99 to <4 x i128>
  %102 = mul nuw <4 x i128> %101, %100
  %103 = lshr <4 x i128> %102, splat (i128 64)
  %104 = xor <4 x i128> %103, %102
  %105 = trunc <4 x i128> %104 to <4 x i64>
  %106 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %105)
  %107 = add i64 %106, %95
  %108 = lshr i64 %107, 37
  %109 = xor i64 %108, %107
  %110 = mul i64 %109, 1609587791953885689
  %111 = lshr i64 %110, 32
  %112 = xor i64 %111, %110
  ret i64 %112
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_defaultSecret_forceavx2(ptr noalias nocapture noundef readonly %0, i64 noundef %1) #2 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %69, label %5

5:                                                ; preds = %2, %46
  %6 = phi <4 x i64> [ %66, %46 ], [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %7 = phi <4 x i64> [ %56, %46 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %8 = phi i64 [ %67, %46 ], [ 0, %2 ]
  %9 = shl nuw i64 %8, 10
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  br label %11

11:                                               ; preds = %5, %11
  %12 = phi <4 x i64> [ %6, %5 ], [ %43, %11 ]
  %13 = phi <4 x i64> [ %7, %5 ], [ %30, %11 ]
  %14 = phi i64 [ 0, %5 ], [ %44, %11 ]
  %15 = shl nuw nsw i64 %14, 6
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 0, i32 3, i32 1)
  %18 = shl nuw nsw i64 %14, 3
  %19 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %18
  %20 = load <4 x i64>, ptr %16, align 1, !tbaa !9, !noalias !41
  %21 = load <4 x i64>, ptr %19, align 8, !tbaa !9, !noalias !41
  %22 = xor <4 x i64> %21, %20
  %23 = bitcast <4 x i64> %22 to <8 x i32>
  %24 = shufflevector <8 x i32> %23, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %25 = bitcast <8 x i32> %24 to <4 x i64>
  %26 = and <4 x i64> %22, splat (i64 4294967295)
  %27 = and <4 x i64> %25, splat (i64 4294967295)
  %28 = mul nuw <4 x i64> %27, %26
  %29 = add <4 x i64> %13, %20
  %30 = add <4 x i64> %29, %28
  %31 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %32 = load <4 x i64>, ptr %31, align 1, !tbaa !9, !noalias !41
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %34 = load <4 x i64>, ptr %33, align 8, !tbaa !9, !noalias !41
  %35 = xor <4 x i64> %34, %32
  %36 = bitcast <4 x i64> %35 to <8 x i32>
  %37 = shufflevector <8 x i32> %36, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %38 = bitcast <8 x i32> %37 to <4 x i64>
  %39 = and <4 x i64> %35, splat (i64 4294967295)
  %40 = and <4 x i64> %38, splat (i64 4294967295)
  %41 = mul nuw <4 x i64> %40, %39
  %42 = add <4 x i64> %12, %32
  %43 = add <4 x i64> %42, %41
  %44 = add nuw nsw i64 %14, 1
  %45 = icmp eq i64 %44, 16
  br i1 %45, label %46, label %11

46:                                               ; preds = %11
  %47 = lshr <4 x i64> %30, splat (i64 47)
  %48 = xor <4 x i64> %47, %30
  %49 = xor <4 x i64> %48, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %50 = bitcast <4 x i64> %49 to <8 x i32>
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %52 = and <4 x i64> %49, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %52, splat (i64 2654435761)
  %54 = bitcast <8 x i32> %51 to <4 x i64>
  %55 = mul <4 x i64> %54, splat (i64 -7046029290881679360)
  %56 = add <4 x i64> %55, %53
  %57 = lshr <4 x i64> %43, splat (i64 47)
  %58 = xor <4 x i64> %57, %43
  %59 = xor <4 x i64> %58, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %60 = bitcast <4 x i64> %59 to <8 x i32>
  %61 = shufflevector <8 x i32> %60, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %62 = and <4 x i64> %59, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, splat (i64 2654435761)
  %64 = bitcast <8 x i32> %61 to <4 x i64>
  %65 = mul <4 x i64> %64, splat (i64 -7046029290881679360)
  %66 = add <4 x i64> %65, %63
  %67 = add nuw nsw i64 %8, 1
  %68 = icmp eq i64 %67, %3
  br i1 %68, label %69, label %5

69:                                               ; preds = %46, %2
  %70 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %66, %46 ]
  %71 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %56, %46 ]
  %72 = and i64 %1, -1024
  %73 = lshr i64 %1, 6
  %74 = and i64 %73, 15
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 %72
  %76 = icmp eq i64 %74, 0
  br i1 %76, label %112, label %77

77:                                               ; preds = %69, %77
  %78 = phi <4 x i64> [ %109, %77 ], [ %70, %69 ]
  %79 = phi <4 x i64> [ %96, %77 ], [ %71, %69 ]
  %80 = phi i64 [ %110, %77 ], [ 0, %69 ]
  %81 = shl nuw i64 %80, 6
  %82 = getelementptr inbounds nuw i8, ptr %75, i64 %81
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %83, i32 0, i32 3, i32 1)
  %84 = shl nuw nsw i64 %80, 3
  %85 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %84
  %86 = load <4 x i64>, ptr %82, align 1, !tbaa !9, !noalias !44
  %87 = load <4 x i64>, ptr %85, align 8, !tbaa !9, !noalias !44
  %88 = xor <4 x i64> %87, %86
  %89 = bitcast <4 x i64> %88 to <8 x i32>
  %90 = shufflevector <8 x i32> %89, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %91 = bitcast <8 x i32> %90 to <4 x i64>
  %92 = and <4 x i64> %88, splat (i64 4294967295)
  %93 = and <4 x i64> %91, splat (i64 4294967295)
  %94 = mul nuw <4 x i64> %93, %92
  %95 = add <4 x i64> %79, %86
  %96 = add <4 x i64> %95, %94
  %97 = getelementptr inbounds nuw i8, ptr %82, i64 32
  %98 = load <4 x i64>, ptr %97, align 1, !tbaa !9, !noalias !44
  %99 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %100 = load <4 x i64>, ptr %99, align 8, !tbaa !9, !noalias !44
  %101 = xor <4 x i64> %100, %98
  %102 = bitcast <4 x i64> %101 to <8 x i32>
  %103 = shufflevector <8 x i32> %102, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %104 = bitcast <8 x i32> %103 to <4 x i64>
  %105 = and <4 x i64> %101, splat (i64 4294967295)
  %106 = and <4 x i64> %104, splat (i64 4294967295)
  %107 = mul nuw <4 x i64> %106, %105
  %108 = add <4 x i64> %78, %98
  %109 = add <4 x i64> %108, %107
  %110 = add nuw nsw i64 %80, 1
  %111 = icmp eq i64 %110, %74
  br i1 %111, label %112, label %77

112:                                              ; preds = %77, %69
  %113 = phi <4 x i64> [ %70, %69 ], [ %109, %77 ]
  %114 = phi <4 x i64> [ %71, %69 ], [ %96, %77 ]
  %115 = and i64 %1, 63
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %141, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %119 = getelementptr inbounds i8, ptr %118, i64 -64
  %120 = load <4 x i64>, ptr %119, align 1, !tbaa !9, !noalias !47
  %121 = xor <4 x i64> %120, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %122 = bitcast <4 x i64> %121 to <8 x i32>
  %123 = shufflevector <8 x i32> %122, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %124 = bitcast <8 x i32> %123 to <4 x i64>
  %125 = and <4 x i64> %121, splat (i64 4294967295)
  %126 = and <4 x i64> %124, splat (i64 4294967295)
  %127 = mul nuw <4 x i64> %126, %125
  %128 = add <4 x i64> %114, %120
  %129 = add <4 x i64> %128, %127
  %130 = getelementptr inbounds i8, ptr %118, i64 -32
  %131 = load <4 x i64>, ptr %130, align 1, !tbaa !9, !noalias !47
  %132 = xor <4 x i64> %131, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %133 = bitcast <4 x i64> %132 to <8 x i32>
  %134 = shufflevector <8 x i32> %133, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %135 = bitcast <8 x i32> %134 to <4 x i64>
  %136 = and <4 x i64> %132, splat (i64 4294967295)
  %137 = and <4 x i64> %135, splat (i64 4294967295)
  %138 = mul nuw <4 x i64> %137, %136
  %139 = add <4 x i64> %113, %131
  %140 = add <4 x i64> %139, %138
  br label %141

141:                                              ; preds = %117, %112
  %142 = phi <4 x i64> [ %113, %112 ], [ %140, %117 ]
  %143 = phi <4 x i64> [ %114, %112 ], [ %129, %117 ]
  %144 = mul i64 %1, -7046029288634856825
  %145 = shufflevector <4 x i64> %143, <4 x i64> %142, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %146 = xor <4 x i64> %145, <i64 7914194659941938988, i64 -1839215637059881052, i64 5046485836271438973, i64 5920048007935066598>
  %147 = shufflevector <4 x i64> %143, <4 x i64> %142, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %148 = xor <4 x i64> %147, <i64 -6611157965513653271, i64 -3433288310154277810, i64 -8055285457383852172, i64 7336514198459093435>
  %149 = zext <4 x i64> %146 to <4 x i128>
  %150 = zext <4 x i64> %148 to <4 x i128>
  %151 = mul nuw <4 x i128> %150, %149
  %152 = lshr <4 x i128> %151, splat (i128 64)
  %153 = xor <4 x i128> %152, %151
  %154 = trunc <4 x i128> %153 to <4 x i64>
  %155 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %154)
  %156 = add i64 %155, %144
  %157 = lshr i64 %156, 37
  %158 = xor i64 %157, %156
  %159 = mul i64 %158, 1609587791953885689
  %160 = lshr i64 %159, 32
  %161 = xor i64 %160, %159
  ret i64 %161
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_defaultSecret_forcesse2(ptr noalias nocapture noundef readonly %0, i64 noundef %1) #3 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %119, label %5

5:                                                ; preds = %2, %76
  %6 = phi <2 x i64> [ %116, %76 ], [ <i64 2870177450012600261, i64 2654435761>, %2 ]
  %7 = phi <2 x i64> [ %106, %76 ], [ <i64 -8796714831421723037, i64 2246822519>, %2 ]
  %8 = phi <2 x i64> [ %96, %76 ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %9 = phi <2 x i64> [ %86, %76 ], [ <i64 3266489917, i64 -7046029288634856825>, %2 ]
  %10 = phi i64 [ %117, %76 ], [ 0, %2 ]
  %11 = shl nuw i64 %10, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %5, %13
  %14 = phi <2 x i64> [ %6, %5 ], [ %73, %13 ]
  %15 = phi <2 x i64> [ %7, %5 ], [ %60, %13 ]
  %16 = phi <2 x i64> [ %8, %5 ], [ %47, %13 ]
  %17 = phi <2 x i64> [ %9, %5 ], [ %34, %13 ]
  %18 = phi i64 [ 0, %5 ], [ %74, %13 ]
  %19 = shl nuw nsw i64 %18, 6
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %21, i32 0, i32 3, i32 1)
  %22 = shl nuw nsw i64 %18, 3
  %23 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %22
  %24 = load <2 x i64>, ptr %20, align 1, !tbaa !9, !noalias !50
  %25 = load <2 x i64>, ptr %23, align 8, !tbaa !9, !noalias !50
  %26 = xor <2 x i64> %25, %24
  %27 = bitcast <2 x i64> %26 to <4 x i32>
  %28 = shufflevector <4 x i32> %27, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %29 = bitcast <4 x i32> %28 to <2 x i64>
  %30 = and <2 x i64> %26, splat (i64 4294967295)
  %31 = and <2 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <2 x i64> %31, %30
  %33 = add <2 x i64> %17, %24
  %34 = add <2 x i64> %33, %32
  %35 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %36 = load <2 x i64>, ptr %35, align 1, !tbaa !9, !noalias !50
  %37 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %38 = load <2 x i64>, ptr %37, align 8, !tbaa !9, !noalias !50
  %39 = xor <2 x i64> %38, %36
  %40 = bitcast <2 x i64> %39 to <4 x i32>
  %41 = shufflevector <4 x i32> %40, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %42 = bitcast <4 x i32> %41 to <2 x i64>
  %43 = and <2 x i64> %39, splat (i64 4294967295)
  %44 = and <2 x i64> %42, splat (i64 4294967295)
  %45 = mul nuw <2 x i64> %44, %43
  %46 = add <2 x i64> %16, %36
  %47 = add <2 x i64> %46, %45
  %48 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %49 = load <2 x i64>, ptr %48, align 1, !tbaa !9, !noalias !50
  %50 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %51 = load <2 x i64>, ptr %50, align 8, !tbaa !9, !noalias !50
  %52 = xor <2 x i64> %51, %49
  %53 = bitcast <2 x i64> %52 to <4 x i32>
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %55 = bitcast <4 x i32> %54 to <2 x i64>
  %56 = and <2 x i64> %52, splat (i64 4294967295)
  %57 = and <2 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <2 x i64> %57, %56
  %59 = add <2 x i64> %15, %49
  %60 = add <2 x i64> %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %20, i64 48
  %62 = load <2 x i64>, ptr %61, align 1, !tbaa !9, !noalias !50
  %63 = getelementptr inbounds nuw i8, ptr %23, i64 48
  %64 = load <2 x i64>, ptr %63, align 8, !tbaa !9, !noalias !50
  %65 = xor <2 x i64> %64, %62
  %66 = bitcast <2 x i64> %65 to <4 x i32>
  %67 = shufflevector <4 x i32> %66, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %68 = bitcast <4 x i32> %67 to <2 x i64>
  %69 = and <2 x i64> %65, splat (i64 4294967295)
  %70 = and <2 x i64> %68, splat (i64 4294967295)
  %71 = mul nuw <2 x i64> %70, %69
  %72 = add <2 x i64> %14, %62
  %73 = add <2 x i64> %72, %71
  %74 = add nuw nsw i64 %18, 1
  %75 = icmp eq i64 %74, 16
  br i1 %75, label %76, label %13

76:                                               ; preds = %13
  %77 = lshr <2 x i64> %34, splat (i64 47)
  %78 = xor <2 x i64> %77, %34
  %79 = xor <2 x i64> %78, <i64 -4329134394285701654, i64 -1485321483350670907>
  %80 = bitcast <2 x i64> %79 to <4 x i32>
  %81 = shufflevector <4 x i32> %80, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %82 = bitcast <4 x i32> %81 to <2 x i64>
  %83 = and <2 x i64> %79, splat (i64 4294967295)
  %84 = mul nuw <2 x i64> %83, splat (i64 2654435761)
  %85 = mul <2 x i64> %82, splat (i64 -7046029290881679360)
  %86 = add <2 x i64> %85, %84
  %87 = lshr <2 x i64> %47, splat (i64 47)
  %88 = xor <2 x i64> %87, %47
  %89 = xor <2 x i64> %88, <i64 5321830579834785047, i64 -7032137544937171245>
  %90 = bitcast <2 x i64> %89 to <4 x i32>
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %92 = bitcast <4 x i32> %91 to <2 x i64>
  %93 = and <2 x i64> %89, splat (i64 4294967295)
  %94 = mul nuw <2 x i64> %93, splat (i64 2654435761)
  %95 = mul <2 x i64> %92, splat (i64 -7046029290881679360)
  %96 = add <2 x i64> %95, %94
  %97 = lshr <2 x i64> %60, splat (i64 47)
  %98 = xor <2 x i64> %97, %60
  %99 = xor <2 x i64> %98, <i64 -242834301215959509, i64 -3588858202114426737>
  %100 = bitcast <2 x i64> %99 to <4 x i32>
  %101 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %102 = bitcast <4 x i32> %101 to <2 x i64>
  %103 = and <2 x i64> %99, splat (i64 4294967295)
  %104 = mul nuw <2 x i64> %103, splat (i64 2654435761)
  %105 = mul <2 x i64> %102, splat (i64 -7046029290881679360)
  %106 = add <2 x i64> %105, %104
  %107 = lshr <2 x i64> %73, splat (i64 47)
  %108 = xor <2 x i64> %107, %73
  %109 = xor <2 x i64> %108, <i64 2883454493032893253, i64 9097354517224871855>
  %110 = bitcast <2 x i64> %109 to <4 x i32>
  %111 = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %112 = bitcast <4 x i32> %111 to <2 x i64>
  %113 = and <2 x i64> %109, splat (i64 4294967295)
  %114 = mul nuw <2 x i64> %113, splat (i64 2654435761)
  %115 = mul <2 x i64> %112, splat (i64 -7046029290881679360)
  %116 = add <2 x i64> %115, %114
  %117 = add nuw nsw i64 %10, 1
  %118 = icmp eq i64 %117, %3
  br i1 %118, label %119, label %5

119:                                              ; preds = %76, %2
  %120 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %2 ], [ %116, %76 ]
  %121 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %2 ], [ %106, %76 ]
  %122 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %96, %76 ]
  %123 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %2 ], [ %86, %76 ]
  %124 = and i64 %1, -1024
  %125 = lshr i64 %1, 6
  %126 = and i64 %125, 15
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 %124
  %128 = icmp eq i64 %126, 0
  br i1 %128, label %192, label %129

129:                                              ; preds = %119, %129
  %130 = phi <2 x i64> [ %189, %129 ], [ %120, %119 ]
  %131 = phi <2 x i64> [ %176, %129 ], [ %121, %119 ]
  %132 = phi <2 x i64> [ %163, %129 ], [ %122, %119 ]
  %133 = phi <2 x i64> [ %150, %129 ], [ %123, %119 ]
  %134 = phi i64 [ %190, %129 ], [ 0, %119 ]
  %135 = shl nuw i64 %134, 6
  %136 = getelementptr inbounds nuw i8, ptr %127, i64 %135
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %137, i32 0, i32 3, i32 1)
  %138 = shl nuw nsw i64 %134, 3
  %139 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %138
  %140 = load <2 x i64>, ptr %136, align 1, !tbaa !9, !noalias !53
  %141 = load <2 x i64>, ptr %139, align 8, !tbaa !9, !noalias !53
  %142 = xor <2 x i64> %141, %140
  %143 = bitcast <2 x i64> %142 to <4 x i32>
  %144 = shufflevector <4 x i32> %143, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %145 = bitcast <4 x i32> %144 to <2 x i64>
  %146 = and <2 x i64> %142, splat (i64 4294967295)
  %147 = and <2 x i64> %145, splat (i64 4294967295)
  %148 = mul nuw <2 x i64> %147, %146
  %149 = add <2 x i64> %133, %140
  %150 = add <2 x i64> %149, %148
  %151 = getelementptr inbounds nuw i8, ptr %136, i64 16
  %152 = load <2 x i64>, ptr %151, align 1, !tbaa !9, !noalias !53
  %153 = getelementptr inbounds nuw i8, ptr %139, i64 16
  %154 = load <2 x i64>, ptr %153, align 8, !tbaa !9, !noalias !53
  %155 = xor <2 x i64> %154, %152
  %156 = bitcast <2 x i64> %155 to <4 x i32>
  %157 = shufflevector <4 x i32> %156, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %158 = bitcast <4 x i32> %157 to <2 x i64>
  %159 = and <2 x i64> %155, splat (i64 4294967295)
  %160 = and <2 x i64> %158, splat (i64 4294967295)
  %161 = mul nuw <2 x i64> %160, %159
  %162 = add <2 x i64> %132, %152
  %163 = add <2 x i64> %162, %161
  %164 = getelementptr inbounds nuw i8, ptr %136, i64 32
  %165 = load <2 x i64>, ptr %164, align 1, !tbaa !9, !noalias !53
  %166 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %167 = load <2 x i64>, ptr %166, align 8, !tbaa !9, !noalias !53
  %168 = xor <2 x i64> %167, %165
  %169 = bitcast <2 x i64> %168 to <4 x i32>
  %170 = shufflevector <4 x i32> %169, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %171 = bitcast <4 x i32> %170 to <2 x i64>
  %172 = and <2 x i64> %168, splat (i64 4294967295)
  %173 = and <2 x i64> %171, splat (i64 4294967295)
  %174 = mul nuw <2 x i64> %173, %172
  %175 = add <2 x i64> %131, %165
  %176 = add <2 x i64> %175, %174
  %177 = getelementptr inbounds nuw i8, ptr %136, i64 48
  %178 = load <2 x i64>, ptr %177, align 1, !tbaa !9, !noalias !53
  %179 = getelementptr inbounds nuw i8, ptr %139, i64 48
  %180 = load <2 x i64>, ptr %179, align 8, !tbaa !9, !noalias !53
  %181 = xor <2 x i64> %180, %178
  %182 = bitcast <2 x i64> %181 to <4 x i32>
  %183 = shufflevector <4 x i32> %182, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %184 = bitcast <4 x i32> %183 to <2 x i64>
  %185 = and <2 x i64> %181, splat (i64 4294967295)
  %186 = and <2 x i64> %184, splat (i64 4294967295)
  %187 = mul nuw <2 x i64> %186, %185
  %188 = add <2 x i64> %130, %178
  %189 = add <2 x i64> %188, %187
  %190 = add nuw nsw i64 %134, 1
  %191 = icmp eq i64 %190, %126
  br i1 %191, label %192, label %129

192:                                              ; preds = %129, %119
  %193 = phi <2 x i64> [ %120, %119 ], [ %189, %129 ]
  %194 = phi <2 x i64> [ %121, %119 ], [ %176, %129 ]
  %195 = phi <2 x i64> [ %122, %119 ], [ %163, %129 ]
  %196 = phi <2 x i64> [ %123, %119 ], [ %150, %129 ]
  %197 = and i64 %1, 63
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %245, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %201 = getelementptr inbounds i8, ptr %200, i64 -64
  %202 = load <2 x i64>, ptr %201, align 1, !tbaa !9, !noalias !56
  %203 = xor <2 x i64> %202, <i64 -1556992608276218209, i64 -4196251135427498811>
  %204 = bitcast <2 x i64> %203 to <4 x i32>
  %205 = shufflevector <4 x i32> %204, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %206 = bitcast <4 x i32> %205 to <2 x i64>
  %207 = and <2 x i64> %203, splat (i64 4294967295)
  %208 = and <2 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <2 x i64> %208, %207
  %210 = add <2 x i64> %196, %202
  %211 = add <2 x i64> %210, %209
  %212 = getelementptr inbounds i8, ptr %200, i64 -48
  %213 = load <2 x i64>, ptr %212, align 1, !tbaa !9, !noalias !56
  %214 = xor <2 x i64> %213, <i64 1723580219865931905, i64 -3221803331004277491>
  %215 = bitcast <2 x i64> %214 to <4 x i32>
  %216 = shufflevector <4 x i32> %215, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %217 = bitcast <4 x i32> %216 to <2 x i64>
  %218 = and <2 x i64> %214, splat (i64 4294967295)
  %219 = and <2 x i64> %217, splat (i64 4294967295)
  %220 = mul nuw <2 x i64> %219, %218
  %221 = add <2 x i64> %195, %213
  %222 = add <2 x i64> %221, %220
  %223 = getelementptr inbounds i8, ptr %200, i64 -32
  %224 = load <2 x i64>, ptr %223, align 1, !tbaa !9, !noalias !56
  %225 = xor <2 x i64> %224, <i64 3143064850383918358, i64 -8071399103737053674>
  %226 = bitcast <2 x i64> %225 to <4 x i32>
  %227 = shufflevector <4 x i32> %226, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %228 = bitcast <4 x i32> %227 to <2 x i64>
  %229 = and <2 x i64> %225, splat (i64 4294967295)
  %230 = and <2 x i64> %228, splat (i64 4294967295)
  %231 = mul nuw <2 x i64> %230, %229
  %232 = add <2 x i64> %194, %224
  %233 = add <2 x i64> %232, %231
  %234 = getelementptr inbounds i8, ptr %200, i64 -16
  %235 = load <2 x i64>, ptr %234, align 1, !tbaa !9, !noalias !56
  %236 = xor <2 x i64> %235, <i64 5030012605302946040, i64 -5825401622958753077>
  %237 = bitcast <2 x i64> %236 to <4 x i32>
  %238 = shufflevector <4 x i32> %237, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %239 = bitcast <4 x i32> %238 to <2 x i64>
  %240 = and <2 x i64> %236, splat (i64 4294967295)
  %241 = and <2 x i64> %239, splat (i64 4294967295)
  %242 = mul nuw <2 x i64> %241, %240
  %243 = add <2 x i64> %193, %235
  %244 = add <2 x i64> %243, %242
  br label %245

245:                                              ; preds = %199, %192
  %246 = phi <2 x i64> [ %193, %192 ], [ %244, %199 ]
  %247 = phi <2 x i64> [ %194, %192 ], [ %233, %199 ]
  %248 = phi <2 x i64> [ %195, %192 ], [ %222, %199 ]
  %249 = phi <2 x i64> [ %196, %192 ], [ %211, %199 ]
  %250 = mul i64 %1, -7046029288634856825
  %251 = shufflevector <2 x i64> %249, <2 x i64> %248, <2 x i32> <i32 0, i32 2>
  %252 = shufflevector <2 x i64> %247, <2 x i64> %246, <2 x i32> <i32 0, i32 2>
  %253 = shufflevector <2 x i64> %251, <2 x i64> %252, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %254 = xor <4 x i64> %253, <i64 7914194659941938988, i64 -1839215637059881052, i64 5046485836271438973, i64 5920048007935066598>
  %255 = shufflevector <2 x i64> %249, <2 x i64> %248, <2 x i32> <i32 1, i32 3>
  %256 = shufflevector <2 x i64> %247, <2 x i64> %246, <2 x i32> <i32 1, i32 3>
  %257 = shufflevector <2 x i64> %255, <2 x i64> %256, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %258 = xor <4 x i64> %257, <i64 -6611157965513653271, i64 -3433288310154277810, i64 -8055285457383852172, i64 7336514198459093435>
  %259 = zext <4 x i64> %254 to <4 x i128>
  %260 = zext <4 x i64> %258 to <4 x i128>
  %261 = mul nuw <4 x i128> %260, %259
  %262 = lshr <4 x i128> %261, splat (i128 64)
  %263 = xor <4 x i128> %262, %261
  %264 = trunc <4 x i128> %263 to <4 x i64>
  %265 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %264)
  %266 = add i64 %265, %250
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  ret i64 %271
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_defaultSecret_forcesscalar(ptr noalias nocapture noundef readonly %0, i64 noundef %1) #4 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %35, label %5

5:                                                ; preds = %2, %28
  %6 = phi i64 [ %33, %28 ], [ 0, %2 ]
  %7 = phi <8 x i64> [ %32, %28 ], [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ]
  %8 = shl nuw i64 %6, 10
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %26, %10 ]
  %12 = phi <8 x i64> [ %7, %5 ], [ %25, %10 ]
  %13 = shl nuw nsw i64 %11, 6
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %15, i32 0, i32 3, i32 1)
  %16 = shl nuw nsw i64 %11, 3
  %17 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %16
  %18 = load <8 x i64>, ptr %14, align 1, !noalias !59
  %19 = load <8 x i64>, ptr %17, align 8, !noalias !59
  %20 = xor <8 x i64> %19, %18
  %21 = add <8 x i64> %12, %18
  %22 = and <8 x i64> %20, splat (i64 4294967295)
  %23 = lshr <8 x i64> %20, splat (i64 32)
  %24 = mul nuw <8 x i64> %22, %23
  %25 = add <8 x i64> %21, %24
  %26 = add nuw nsw i64 %11, 1
  %27 = icmp eq i64 %26, 16
  br i1 %27, label %28, label %10

28:                                               ; preds = %10
  %29 = lshr <8 x i64> %25, splat (i64 47)
  %30 = xor <8 x i64> %29, %25
  %31 = xor <8 x i64> %30, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245, i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %32 = mul <8 x i64> %31, splat (i64 2654435761)
  %33 = add nuw nsw i64 %6, 1
  %34 = icmp eq i64 %33, %3
  br i1 %34, label %35, label %5

35:                                               ; preds = %28, %2
  %36 = phi <8 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %32, %28 ]
  %37 = and i64 %1, -1024
  %38 = lshr i64 %1, 6
  %39 = and i64 %38, 15
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 %37
  %41 = icmp eq i64 %39, 0
  %42 = extractelement <8 x i64> %36, i64 0
  %43 = extractelement <8 x i64> %36, i64 1
  %44 = extractelement <8 x i64> %36, i64 2
  %45 = extractelement <8 x i64> %36, i64 3
  %46 = extractelement <8 x i64> %36, i64 4
  %47 = extractelement <8 x i64> %36, i64 5
  %48 = extractelement <8 x i64> %36, i64 6
  %49 = extractelement <8 x i64> %36, i64 7
  br i1 %41, label %77, label %50

50:                                               ; preds = %35, %50
  %51 = phi i64 [ %66, %50 ], [ 0, %35 ]
  %52 = phi <8 x i64> [ %65, %50 ], [ %36, %35 ]
  %53 = shl nuw i64 %51, 6
  %54 = getelementptr inbounds nuw i8, ptr %40, i64 %53
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %55, i32 0, i32 3, i32 1)
  %56 = shl nuw nsw i64 %51, 3
  %57 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %56
  %58 = load <8 x i64>, ptr %54, align 1, !noalias !62
  %59 = load <8 x i64>, ptr %57, align 8, !noalias !62
  %60 = xor <8 x i64> %59, %58
  %61 = add <8 x i64> %52, %58
  %62 = and <8 x i64> %60, splat (i64 4294967295)
  %63 = lshr <8 x i64> %60, splat (i64 32)
  %64 = mul nuw <8 x i64> %62, %63
  %65 = add <8 x i64> %61, %64
  %66 = add nuw nsw i64 %51, 1
  %67 = icmp eq i64 %66, %39
  br i1 %67, label %68, label %50

68:                                               ; preds = %50
  %69 = extractelement <8 x i64> %65, i64 7
  %70 = extractelement <8 x i64> %65, i64 6
  %71 = extractelement <8 x i64> %65, i64 5
  %72 = extractelement <8 x i64> %65, i64 4
  %73 = extractelement <8 x i64> %65, i64 3
  %74 = extractelement <8 x i64> %65, i64 2
  %75 = extractelement <8 x i64> %65, i64 1
  %76 = extractelement <8 x i64> %65, i64 0
  br label %77

77:                                               ; preds = %68, %35
  %78 = phi i64 [ %49, %35 ], [ %69, %68 ]
  %79 = phi i64 [ %48, %35 ], [ %70, %68 ]
  %80 = phi i64 [ %47, %35 ], [ %71, %68 ]
  %81 = phi i64 [ %46, %35 ], [ %72, %68 ]
  %82 = phi i64 [ %45, %35 ], [ %73, %68 ]
  %83 = phi i64 [ %44, %35 ], [ %74, %68 ]
  %84 = phi i64 [ %43, %35 ], [ %75, %68 ]
  %85 = phi i64 [ %42, %35 ], [ %76, %68 ]
  %86 = and i64 %1, 63
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %154, label %88

88:                                               ; preds = %77
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %90 = getelementptr inbounds i8, ptr %89, i64 -64
  %91 = load i64, ptr %90, align 1, !noalias !65
  %92 = xor i64 %91, -1556992608276218209
  %93 = add i64 %85, %91
  %94 = and i64 %92, 4294967295
  %95 = lshr i64 %92, 32
  %96 = mul nuw i64 %94, %95
  %97 = add i64 %93, %96
  %98 = getelementptr inbounds i8, ptr %89, i64 -56
  %99 = load i64, ptr %98, align 1, !noalias !65
  %100 = xor i64 %99, -4196251135427498811
  %101 = add i64 %84, %99
  %102 = and i64 %100, 4294967295
  %103 = lshr i64 %100, 32
  %104 = mul nuw i64 %102, %103
  %105 = add i64 %101, %104
  %106 = getelementptr inbounds i8, ptr %89, i64 -48
  %107 = load i64, ptr %106, align 1, !noalias !65
  %108 = xor i64 %107, 1723580219865931905
  %109 = add i64 %83, %107
  %110 = and i64 %108, 4294967295
  %111 = lshr i64 %108, 32
  %112 = mul nuw i64 %110, %111
  %113 = add i64 %109, %112
  %114 = getelementptr inbounds i8, ptr %89, i64 -40
  %115 = load i64, ptr %114, align 1, !noalias !65
  %116 = xor i64 %115, -3221803331004277491
  %117 = add i64 %82, %115
  %118 = and i64 %116, 4294967295
  %119 = lshr i64 %116, 32
  %120 = mul nuw i64 %118, %119
  %121 = add i64 %117, %120
  %122 = getelementptr inbounds i8, ptr %89, i64 -32
  %123 = load i64, ptr %122, align 1, !noalias !65
  %124 = xor i64 %123, 3143064850383918358
  %125 = add i64 %81, %123
  %126 = and i64 %124, 4294967295
  %127 = lshr i64 %124, 32
  %128 = mul nuw i64 %126, %127
  %129 = add i64 %125, %128
  %130 = getelementptr inbounds i8, ptr %89, i64 -24
  %131 = load i64, ptr %130, align 1, !noalias !65
  %132 = xor i64 %131, -8071399103737053674
  %133 = add i64 %80, %131
  %134 = and i64 %132, 4294967295
  %135 = lshr i64 %132, 32
  %136 = mul nuw i64 %134, %135
  %137 = add i64 %133, %136
  %138 = getelementptr inbounds i8, ptr %89, i64 -16
  %139 = load i64, ptr %138, align 1, !noalias !65
  %140 = xor i64 %139, 5030012605302946040
  %141 = add i64 %79, %139
  %142 = and i64 %140, 4294967295
  %143 = lshr i64 %140, 32
  %144 = mul nuw i64 %142, %143
  %145 = add i64 %141, %144
  %146 = getelementptr inbounds i8, ptr %89, i64 -8
  %147 = load i64, ptr %146, align 1, !noalias !65
  %148 = xor i64 %147, -5825401622958753077
  %149 = add i64 %78, %147
  %150 = and i64 %148, 4294967295
  %151 = lshr i64 %148, 32
  %152 = mul nuw i64 %150, %151
  %153 = add i64 %149, %152
  br label %154

154:                                              ; preds = %88, %77
  %155 = phi i64 [ %78, %77 ], [ %153, %88 ]
  %156 = phi i64 [ %79, %77 ], [ %145, %88 ]
  %157 = phi i64 [ %80, %77 ], [ %137, %88 ]
  %158 = phi i64 [ %81, %77 ], [ %129, %88 ]
  %159 = phi i64 [ %82, %77 ], [ %121, %88 ]
  %160 = phi i64 [ %83, %77 ], [ %113, %88 ]
  %161 = phi i64 [ %84, %77 ], [ %105, %88 ]
  %162 = phi i64 [ %85, %77 ], [ %97, %88 ]
  %163 = mul i64 %1, -7046029288634856825
  %164 = xor i64 %162, 7914194659941938988
  %165 = xor i64 %161, -6611157965513653271
  %166 = zext i64 %164 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %163, %171
  %173 = xor i64 %160, -1839215637059881052
  %174 = xor i64 %159, -3433288310154277810
  %175 = zext i64 %173 to i128
  %176 = zext i64 %174 to i128
  %177 = mul nuw i128 %176, %175
  %178 = lshr i128 %177, 64
  %179 = xor i128 %178, %177
  %180 = trunc i128 %179 to i64
  %181 = add i64 %172, %180
  %182 = xor i64 %158, 5046485836271438973
  %183 = xor i64 %157, -8055285457383852172
  %184 = zext i64 %182 to i128
  %185 = zext i64 %183 to i128
  %186 = mul nuw i128 %185, %184
  %187 = lshr i128 %186, 64
  %188 = xor i128 %187, %186
  %189 = trunc i128 %188 to i64
  %190 = add i64 %181, %189
  %191 = xor i64 %156, 5920048007935066598
  %192 = xor i64 %155, 7336514198459093435
  %193 = zext i64 %191 to i128
  %194 = zext i64 %192 to i128
  %195 = mul nuw i128 %194, %193
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %190, %198
  %200 = lshr i64 %199, 37
  %201 = xor i64 %200, %199
  %202 = mul i64 %201, 1609587791953885689
  %203 = lshr i64 %202, 32
  %204 = xor i64 %203, %202
  ret i64 %204
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i64 @XXH3_64bits_dispatch(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = icmp ult i64 %1, 17
  br i1 %3, label %4, label %77

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 8
  br i1 %5, label %6, label %28, !prof !68

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, 7458650908927343033
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, -5812251307325107654
  %13 = tail call noundef i64 @llvm.bswap.i64(i64 %8)
  %14 = add i64 %13, %1
  %15 = add i64 %14, %12
  %16 = zext i64 %8 to i128
  %17 = zext i64 %12 to i128
  %18 = mul nuw i128 %17, %16
  %19 = lshr i128 %18, 64
  %20 = xor i128 %19, %18
  %21 = trunc i128 %20 to i64
  %22 = add i64 %15, %21
  %23 = lshr i64 %22, 37
  %24 = xor i64 %23, %22
  %25 = mul i64 %24, 1609587791953885689
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %25
  br label %250

28:                                               ; preds = %4
  %29 = icmp samesign ugt i64 %1, 3
  br i1 %29, label %30, label %51, !prof !68

30:                                               ; preds = %28
  %31 = load i32, ptr %0, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %33 = getelementptr inbounds i8, ptr %32, i64 -4
  %34 = load i32, ptr %33, align 1
  %35 = zext i32 %34 to i64
  %36 = zext i32 %31 to i64
  %37 = shl nuw i64 %36, 32
  %38 = or disjoint i64 %37, %35
  %39 = xor i64 %38, -4090762196417718878
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 49)
  %41 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 24)
  %42 = xor i64 %41, %40
  %43 = xor i64 %42, %39
  %44 = mul i64 %43, -6939452855193903323
  %45 = lshr i64 %44, 35
  %46 = add nuw nsw i64 %45, %1
  %47 = xor i64 %46, %44
  %48 = mul i64 %47, -6939452855193903323
  %49 = lshr i64 %48, 28
  %50 = xor i64 %49, %48
  br label %250

51:                                               ; preds = %28
  %52 = icmp eq i64 %1, 0
  br i1 %52, label %250, label %53

53:                                               ; preds = %51
  %54 = load i8, ptr %0, align 1, !tbaa !9
  %55 = lshr i64 %1, 1
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !9
  %58 = getelementptr i8, ptr %0, i64 %1
  %59 = getelementptr i8, ptr %58, i64 -1
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = zext i8 %54 to i64
  %62 = shl nuw nsw i64 %61, 16
  %63 = zext i8 %57 to i64
  %64 = shl nuw nsw i64 %63, 24
  %65 = or disjoint i64 %64, %62
  %66 = zext i8 %60 to i64
  %67 = or disjoint i64 %65, %66
  %68 = shl nuw nsw i64 %1, 8
  %69 = or disjoint i64 %67, %68
  %70 = xor i64 %69, 2267503259
  %71 = mul i64 %70, -7046029288634856825
  %72 = lshr i64 %71, 37
  %73 = xor i64 %72, %71
  %74 = mul i64 %73, 1609587791953885689
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  br label %250

77:                                               ; preds = %2
  %78 = icmp ult i64 %1, 129
  br i1 %78, label %79, label %205

79:                                               ; preds = %77
  %80 = mul i64 %1, -7046029288634856825
  %81 = icmp samesign ugt i64 %1, 32
  br i1 %81, label %82, label %172

82:                                               ; preds = %79
  %83 = icmp samesign ugt i64 %1, 64
  br i1 %83, label %84, label %143

84:                                               ; preds = %82
  %85 = icmp samesign ugt i64 %1, 96
  br i1 %85, label %86, label %114

86:                                               ; preds = %84
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %88 = load i64, ptr %87, align 1, !noalias !69
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %90 = load i64, ptr %89, align 1, !noalias !69
  %91 = xor i64 %88, 4554437623014685352
  %92 = xor i64 %90, 2111919702937427193
  %93 = zext i64 %91 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %101 = getelementptr inbounds i8, ptr %100, i64 -64
  %102 = load i64, ptr %101, align 1, !noalias !72
  %103 = getelementptr inbounds i8, ptr %100, i64 -56
  %104 = load i64, ptr %103, align 1, !noalias !72
  %105 = xor i64 %102, 3556072174620004746
  %106 = xor i64 %104, 7238261902898274248
  %107 = zext i64 %105 to i128
  %108 = zext i64 %106 to i128
  %109 = mul nuw i128 %108, %107
  %110 = lshr i128 %109, 64
  %111 = xor i128 %110, %109
  %112 = trunc i128 %111 to i64
  %113 = add i64 %99, %112
  br label %114

114:                                              ; preds = %86, %84
  %115 = phi i64 [ %113, %86 ], [ %80, %84 ]
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %117 = load i64, ptr %116, align 1, !noalias !75
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %119 = load i64, ptr %118, align 1, !noalias !75
  %120 = xor i64 %117, -3818837453329782724
  %121 = xor i64 %119, -6688317018830679928
  %122 = zext i64 %120 to i128
  %123 = zext i64 %121 to i128
  %124 = mul nuw i128 %123, %122
  %125 = lshr i128 %124, 64
  %126 = xor i128 %125, %124
  %127 = trunc i128 %126 to i64
  %128 = add i64 %115, %127
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %130 = getelementptr inbounds i8, ptr %129, i64 -48
  %131 = load i64, ptr %130, align 1, !noalias !78
  %132 = getelementptr inbounds i8, ptr %129, i64 -40
  %133 = load i64, ptr %132, align 1, !noalias !78
  %134 = xor i64 %131, 5690594596133299313
  %135 = xor i64 %133, -2833645246901970632
  %136 = zext i64 %134 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %128, %141
  br label %143

143:                                              ; preds = %114, %82
  %144 = phi i64 [ %142, %114 ], [ %80, %82 ]
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %146 = load i64, ptr %145, align 1, !noalias !81
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %148 = load i64, ptr %147, align 1, !noalias !81
  %149 = xor i64 %146, 8711581037947681227
  %150 = xor i64 %148, 2410270004345854594
  %151 = zext i64 %149 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %144, %156
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -32
  %160 = load i64, ptr %159, align 1, !noalias !84
  %161 = getelementptr inbounds i8, ptr %158, i64 -24
  %162 = load i64, ptr %161, align 1, !noalias !84
  %163 = xor i64 %160, -8204357891075471176
  %164 = xor i64 %162, 5487137525590930912
  %165 = zext i64 %163 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %157, %170
  br label %172

172:                                              ; preds = %79, %143
  %173 = phi i64 [ %171, %143 ], [ %80, %79 ]
  %174 = load i64, ptr %0, align 1, !noalias !87
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %176 = load i64, ptr %175, align 1, !noalias !87
  %177 = xor i64 %174, -4734510112055689544
  %178 = xor i64 %176, 2066345149520216444
  %179 = zext i64 %177 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %173, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %187 = getelementptr inbounds i8, ptr %186, i64 -16
  %188 = load i64, ptr %187, align 1, !noalias !90
  %189 = getelementptr inbounds i8, ptr %186, i64 -8
  %190 = load i64, ptr %189, align 1, !noalias !90
  %191 = xor i64 %188, -2623469361688619810
  %192 = xor i64 %190, 2262974939099578482
  %193 = zext i64 %191 to i128
  %194 = zext i64 %192 to i128
  %195 = mul nuw i128 %194, %193
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %185, %198
  %200 = lshr i64 %199, 37
  %201 = xor i64 %200, %199
  %202 = mul i64 %201, 1609587791953885689
  %203 = lshr i64 %202, 32
  %204 = xor i64 %203, %202
  br label %250

205:                                              ; preds = %77
  %206 = icmp ult i64 %1, 241
  br i1 %206, label %207, label %209

207:                                              ; preds = %205
  %208 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, i64 noundef 0)
  br label %250

209:                                              ; preds = %205
  %210 = load ptr, ptr @g_dispatch_hashLong64_default, align 8, !tbaa !93
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %247

212:                                              ; preds = %209
  %213 = tail call { i32, i32, i32, i32 } asm "# Call CPUID\0A\09cpuid\0A\09", "={bx},={ax},={cx},={dx},1,2,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #17, !srcloc !95
  %214 = extractvalue { i32, i32, i32, i32 } %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %245, label %216, !prof !96

216:                                              ; preds = %212
  %217 = tail call { i32, i32, i32, i32 } asm "# Call CPUID\0A\09cpuid\0A\09", "={bx},={ax},={cx},={dx},1,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #17, !srcloc !95
  %218 = extractvalue { i32, i32, i32, i32 } %217, 3
  %219 = and i32 %218, 67108864
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %245, label %221, !prof !96

221:                                              ; preds = %216
  %222 = extractvalue { i32, i32, i32, i32 } %217, 2
  %223 = icmp ugt i32 %214, 6
  %224 = and i32 %222, 201326592
  %225 = icmp eq i32 %224, 201326592
  %226 = select i1 %223, i1 %225, i1 false
  br i1 %226, label %227, label %245, !prof !97

227:                                              ; preds = %221
  %228 = tail call { i32, i32, i32, i32 } asm "# Call CPUID\0A\09cpuid\0A\09", "={bx},={ax},={cx},={dx},1,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #17, !srcloc !95
  %229 = extractvalue { i32, i32, i32, i32 } %228, 0
  %230 = tail call { i32, i32 } asm "# Call XGETBV\0A\09#\0A\09# Older assemblers (e.g. macOS's ancient GAS version) don't support\0A\09# the XGETBV opcode, so we encode it by hand instead.\0A\09# See <https://github.com/asmjit/asmjit/issues/78> for details.\0A\09.byte   0x0f, 0x01, 0xd0\0A\09", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #17, !srcloc !98
  %231 = extractvalue { i32, i32 } %230, 0
  %232 = zext i32 %231 to i64
  %233 = and i32 %229, 32
  %234 = icmp ne i32 %233, 0
  %235 = and i64 %232, 6
  %236 = icmp eq i64 %235, 6
  %237 = select i1 %234, i1 %236, i1 false
  br i1 %237, label %238, label %245

238:                                              ; preds = %227
  %239 = and i32 %229, 65536
  %240 = icmp ne i32 %239, 0
  %241 = and i64 %232, 230
  %242 = icmp eq i64 %241, 230
  %243 = select i1 %240, i1 %242, i1 false
  %244 = select i1 %243, ptr @XXH3_hashLong_64b_defaultSecret_forceavx512, ptr @XXH3_hashLong_64b_defaultSecret_forceavx2
  br label %245

245:                                              ; preds = %238, %227, %221, %216, %212
  %246 = phi ptr [ @XXH3_hashLong_64b_defaultSecret_forcesse2, %221 ], [ @XXH3_hashLong_64b_defaultSecret_forcesse2, %227 ], [ @XXH3_hashLong_64b_defaultSecret_forcesscalar, %212 ], [ @XXH3_hashLong_64b_defaultSecret_forcesscalar, %216 ], [ %244, %238 ]
  store ptr %246, ptr @g_dispatch_hashLong64_default, align 8, !tbaa !93
  br label %247

247:                                              ; preds = %209, %245
  %248 = phi ptr [ %246, %245 ], [ %210, %209 ]
  %249 = tail call i64 %248(ptr noundef %0, i64 noundef range(i64 241, 0) %1) #18, !callees !99
  br label %250

250:                                              ; preds = %53, %30, %6, %51, %247, %207, %172
  %251 = phi i64 [ %204, %172 ], [ %208, %207 ], [ %249, %247 ], [ %27, %6 ], [ %50, %30 ], [ %76, %53 ], [ 8606060009869906325, %51 ]
  ret i64 %251
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, i64 noundef %2) unnamed_addr #7 {
  %4 = mul i64 %1, -7046029288634856825
  %5 = trunc nuw nsw i64 %1 to i32
  %6 = insertelement <8 x i64> poison, i64 %2, i64 0
  %7 = shufflevector <8 x i64> %6, <8 x i64> poison, <8 x i32> zeroinitializer
  %8 = add <8 x i64> %7, <i64 -4734510112055689544, i64 -2623469361688619810, i64 8711581037947681227, i64 -8204357891075471176, i64 -3818837453329782724, i64 5690594596133299313, i64 4554437623014685352, i64 3556072174620004746>
  %9 = sub <8 x i64> <i64 2066345149520216444, i64 2262974939099578482, i64 2410270004345854594, i64 5487137525590930912, i64 -6688317018830679928, i64 -2833645246901970632, i64 2111919702937427193, i64 7238261902898274248>, %7
  %10 = load <16 x i64>, ptr %0, align 1, !noalias !100
  %11 = shufflevector <16 x i64> %10, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %12 = xor <8 x i64> %8, %11
  %13 = shufflevector <16 x i64> %10, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %14 = xor <8 x i64> %9, %13
  %15 = zext <8 x i64> %12 to <8 x i128>
  %16 = zext <8 x i64> %14 to <8 x i128>
  %17 = mul nuw <8 x i128> %16, %15
  %18 = lshr <8 x i128> %17, splat (i128 64)
  %19 = xor <8 x i128> %18, %17
  %20 = trunc <8 x i128> %19 to <8 x i64>
  %21 = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %20)
  %22 = add i64 %21, %4
  %23 = lshr i32 %5, 4
  %24 = lshr i64 %22, 37
  %25 = xor i64 %24, %22
  %26 = mul i64 %25, 1609587791953885689
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  %29 = icmp eq i32 %23, 8
  br i1 %29, label %148, label %30

30:                                               ; preds = %3
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %32 = load i64, ptr %31, align 1, !noalias !103
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %34 = load i64, ptr %33, align 1, !noalias !103
  %35 = add i64 %2, -9150895811085458631
  %36 = xor i64 %35, %32
  %37 = sub i64 7914194659941938988, %2
  %38 = xor i64 %37, %34
  %39 = zext i64 %36 to i128
  %40 = zext i64 %38 to i128
  %41 = mul nuw i128 %40, %39
  %42 = lshr i128 %41, 64
  %43 = xor i128 %42, %41
  %44 = trunc i128 %43 to i64
  %45 = add i64 %28, %44
  %46 = icmp eq i32 %23, 9
  br i1 %46, label %148, label %47

47:                                               ; preds = %30
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %49 = load i64, ptr %48, align 1, !noalias !103
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %51 = load i64, ptr %50, align 1, !noalias !103
  %52 = add i64 %2, -6611157965513653271
  %53 = xor i64 %52, %49
  %54 = sub i64 -1839215637059881052, %2
  %55 = xor i64 %54, %51
  %56 = zext i64 %53 to i128
  %57 = zext i64 %55 to i128
  %58 = mul nuw i128 %57, %56
  %59 = lshr i128 %58, 64
  %60 = xor i128 %59, %58
  %61 = trunc i128 %60 to i64
  %62 = add i64 %45, %61
  %63 = icmp eq i32 %23, 10
  br i1 %63, label %148, label %64

64:                                               ; preds = %47
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %66 = load i64, ptr %65, align 1, !noalias !103
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %68 = load i64, ptr %67, align 1, !noalias !103
  %69 = add i64 %2, -3433288310154277810
  %70 = xor i64 %69, %66
  %71 = sub i64 5046485836271438973, %2
  %72 = xor i64 %71, %68
  %73 = zext i64 %70 to i128
  %74 = zext i64 %72 to i128
  %75 = mul nuw i128 %74, %73
  %76 = lshr i128 %75, 64
  %77 = xor i128 %76, %75
  %78 = trunc i128 %77 to i64
  %79 = add i64 %62, %78
  %80 = icmp eq i32 %23, 11
  br i1 %80, label %148, label %81

81:                                               ; preds = %64
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %83 = load i64, ptr %82, align 1, !noalias !103
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %85 = load i64, ptr %84, align 1, !noalias !103
  %86 = add i64 %2, -8055285457383852172
  %87 = xor i64 %86, %83
  %88 = sub i64 5920048007935066598, %2
  %89 = xor i64 %88, %85
  %90 = zext i64 %87 to i128
  %91 = zext i64 %89 to i128
  %92 = mul nuw i128 %91, %90
  %93 = lshr i128 %92, 64
  %94 = xor i128 %93, %92
  %95 = trunc i128 %94 to i64
  %96 = add i64 %79, %95
  %97 = icmp eq i32 %23, 12
  br i1 %97, label %148, label %98

98:                                               ; preds = %81
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %100 = load i64, ptr %99, align 1, !noalias !103
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %102 = load i64, ptr %101, align 1, !noalias !103
  %103 = add i64 %2, 7336514198459093435
  %104 = xor i64 %103, %100
  %105 = sub i64 5216419214072683403, %2
  %106 = xor i64 %105, %102
  %107 = zext i64 %104 to i128
  %108 = zext i64 %106 to i128
  %109 = mul nuw i128 %108, %107
  %110 = lshr i128 %109, 64
  %111 = xor i128 %110, %109
  %112 = trunc i128 %111 to i64
  %113 = add i64 %96, %112
  %114 = icmp eq i32 %23, 13
  br i1 %114, label %148, label %115

115:                                              ; preds = %98
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %117 = load i64, ptr %116, align 1, !noalias !103
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %119 = load i64, ptr %118, align 1, !noalias !103
  %120 = add i64 %2, -1217880312389983593
  %121 = xor i64 %120, %117
  %122 = sub i64 8573350489219836230, %2
  %123 = xor i64 %122, %119
  %124 = zext i64 %121 to i128
  %125 = zext i64 %123 to i128
  %126 = mul nuw i128 %125, %124
  %127 = lshr i128 %126, 64
  %128 = xor i128 %127, %126
  %129 = trunc i128 %128 to i64
  %130 = add i64 %113, %129
  %131 = icmp eq i32 %23, 14
  br i1 %131, label %148, label %132

132:                                              ; preds = %115
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %134 = load i64, ptr %133, align 1, !noalias !103
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %136 = load i64, ptr %135, align 1, !noalias !103
  %137 = add i64 %2, -4909775443879730369
  %138 = xor i64 %137, %134
  %139 = sub i64 -2282891677615274041, %2
  %140 = xor i64 %139, %136
  %141 = zext i64 %138 to i128
  %142 = zext i64 %140 to i128
  %143 = mul nuw i128 %142, %141
  %144 = lshr i128 %143, 64
  %145 = xor i128 %144, %143
  %146 = trunc i128 %145 to i64
  %147 = add i64 %130, %146
  br label %148

148:                                              ; preds = %30, %47, %64, %81, %98, %115, %132, %3
  %149 = phi i64 [ %28, %3 ], [ %45, %30 ], [ %62, %47 ], [ %79, %64 ], [ %96, %81 ], [ %113, %98 ], [ %130, %115 ], [ %147, %132 ]
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %151 = getelementptr inbounds i8, ptr %150, i64 -16
  %152 = load i64, ptr %151, align 1, !noalias !106
  %153 = getelementptr inbounds i8, ptr %150, i64 -8
  %154 = load i64, ptr %153, align 1, !noalias !106
  %155 = add i64 %2, 8320639771003045937
  %156 = xor i64 %152, %155
  %157 = sub i64 -1453760514566526364, %2
  %158 = xor i64 %154, %157
  %159 = zext i64 %156 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %149, %164
  %166 = lshr i64 %165, 37
  %167 = xor i64 %166, %165
  %168 = mul i64 %167, 1609587791953885689
  %169 = lshr i64 %168, 32
  %170 = xor i64 %169, %168
  ret i64 %170
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @select_hashLong_withSeed(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 6
  br i1 %2, label %4, label %3

3:                                                ; preds = %4, %1
  tail call void @exit(i32 noundef 1) #16
  unreachable

4:                                                ; preds = %1
  %5 = trunc nuw i32 %0 to i8
  %6 = lshr i8 39, %5
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %3

8:                                                ; preds = %4
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds nuw [6 x ptr], ptr @switch.table.select_hashLong_withSeed, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSeed_forceavx512(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #1 {
  %4 = alloca [192 x i8], align 16
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %148

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %9 = insertelement <8 x i64> poison, i64 %2, i64 0
  %10 = sub nsw i64 0, %2
  %11 = insertelement <8 x i64> poison, i64 %10, i64 0
  %12 = shufflevector <8 x i64> %9, <8 x i64> %11, <8 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %13 = load <8 x i64>, ptr @XXH3_kSecret, align 64, !tbaa !9, !noalias !109, !nontemporal !112
  %14 = add <8 x i64> %13, %12
  store <8 x i64> %14, ptr %4, align 64, !tbaa !9, !alias.scope !109
  %15 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 64), align 64, !tbaa !9, !noalias !109, !nontemporal !112
  %16 = add <8 x i64> %15, %12
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <8 x i64> %16, ptr %17, align 64, !tbaa !9, !alias.scope !109
  %18 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), align 64, !tbaa !9, !noalias !109, !nontemporal !112
  %19 = add <8 x i64> %18, %12
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store <8 x i64> %19, ptr %20, align 64, !tbaa !9, !alias.scope !109
  %21 = load <8 x i64>, ptr @__const.XXH3_hashLong_64b_internal.acc, align 64, !noalias !113
  %22 = lshr i64 %1, 10
  %23 = icmp ult i64 %1, 1024
  %24 = bitcast <8 x i64> %14 to i512
  %25 = lshr i512 %24, 344
  %26 = trunc i512 %25 to i64
  %27 = bitcast <8 x i64> %16 to i512
  %28 = insertelement <2 x i512> poison, i512 %24, i64 0
  %29 = shufflevector <2 x i512> %28, <2 x i512> poison, <2 x i32> zeroinitializer
  %30 = lshr <2 x i512> %29, <i512 88, i512 216>
  %31 = insertelement <2 x i512> %29, i512 %27, i64 1
  %32 = shufflevector <2 x i512> %31, <2 x i512> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %33 = lshr <4 x i512> %32, <i512 152, i512 280, i512 408, i512 24>
  %34 = trunc <2 x i512> %30 to <2 x i64>
  %35 = trunc <4 x i512> %33 to <4 x i64>
  br i1 %23, label %75, label %36

36:                                               ; preds = %8, %62
  %37 = phi i64 [ %73, %62 ], [ 0, %8 ]
  %38 = phi <8 x i64> [ %72, %62 ], [ %21, %8 ]
  %39 = shl nuw i64 %37, 10
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 %39
  br label %41

41:                                               ; preds = %36, %41
  %42 = phi i64 [ 0, %36 ], [ %60, %41 ]
  %43 = phi <8 x i64> [ %38, %36 ], [ %59, %41 ]
  %44 = shl nuw nsw i64 %42, 6
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %46, i32 0, i32 3, i32 1)
  %47 = shl nuw nsw i64 %42, 3
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 %47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %49 = load <8 x i64>, ptr %45, align 1, !tbaa !9, !alias.scope !117, !noalias !122
  %50 = load <8 x i64>, ptr %48, align 8, !tbaa !9, !alias.scope !120, !noalias !124
  %51 = add <8 x i64> %49, %43
  %52 = xor <8 x i64> %50, %49
  %53 = and <8 x i64> %52, splat (i64 4294967295)
  %54 = bitcast <8 x i64> %52 to <16 x i32>
  %55 = shufflevector <16 x i32> %54, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %56 = bitcast <16 x i32> %55 to <8 x i64>
  %57 = and <8 x i64> %56, splat (i64 4294967295)
  %58 = mul nuw <8 x i64> %57, %53
  %59 = add <8 x i64> %51, %58
  %60 = add nuw nsw i64 %42, 1
  %61 = icmp eq i64 %60, 16
  br i1 %61, label %62, label %41

62:                                               ; preds = %41
  %63 = lshr <8 x i64> %59, splat (i64 47)
  %64 = xor <8 x i64> %63, %19
  %65 = xor <8 x i64> %64, %59
  %66 = bitcast <8 x i64> %65 to <16 x i32>
  %67 = shufflevector <16 x i32> %66, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %68 = and <8 x i64> %65, splat (i64 4294967295)
  %69 = mul nuw <8 x i64> %68, splat (i64 2654435761)
  %70 = bitcast <16 x i32> %67 to <8 x i64>
  %71 = mul <8 x i64> %70, splat (i64 -7046029290881679360)
  %72 = add <8 x i64> %71, %69
  %73 = add nuw nsw i64 %37, 1
  %74 = icmp eq i64 %73, %22
  br i1 %74, label %75, label %36

75:                                               ; preds = %62, %8
  %76 = phi <8 x i64> [ %21, %8 ], [ %72, %62 ]
  %77 = and i64 %1, -1024
  %78 = lshr i64 %1, 6
  %79 = and i64 %78, 15
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 %77
  %81 = icmp eq i64 %79, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %75, %82
  %83 = phi i64 [ %101, %82 ], [ 0, %75 ]
  %84 = phi <8 x i64> [ %100, %82 ], [ %76, %75 ]
  %85 = shl nuw i64 %83, 6
  %86 = getelementptr inbounds nuw i8, ptr %80, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %87, i32 0, i32 3, i32 1)
  %88 = shl nuw nsw i64 %83, 3
  %89 = getelementptr inbounds nuw i8, ptr %4, i64 %88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %90 = load <8 x i64>, ptr %86, align 1, !tbaa !9, !alias.scope !125, !noalias !130
  %91 = load <8 x i64>, ptr %89, align 8, !tbaa !9, !alias.scope !128, !noalias !132
  %92 = add <8 x i64> %90, %84
  %93 = xor <8 x i64> %91, %90
  %94 = and <8 x i64> %93, splat (i64 4294967295)
  %95 = bitcast <8 x i64> %93 to <16 x i32>
  %96 = shufflevector <16 x i32> %95, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %97 = bitcast <16 x i32> %96 to <8 x i64>
  %98 = and <8 x i64> %97, splat (i64 4294967295)
  %99 = mul nuw <8 x i64> %98, %94
  %100 = add <8 x i64> %92, %99
  %101 = add nuw nsw i64 %83, 1
  %102 = icmp eq i64 %101, %79
  br i1 %102, label %103, label %82

103:                                              ; preds = %82, %75
  %104 = phi <8 x i64> [ %76, %75 ], [ %100, %82 ]
  %105 = and i64 %1, 63
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %109 = getelementptr inbounds i8, ptr %108, i64 -64
  %110 = getelementptr inbounds nuw i8, ptr %4, i64 121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %111 = load <8 x i64>, ptr %109, align 1, !tbaa !9, !alias.scope !133, !noalias !138
  %112 = load <8 x i64>, ptr %110, align 1, !tbaa !9, !alias.scope !136, !noalias !140
  %113 = add <8 x i64> %111, %104
  %114 = xor <8 x i64> %112, %111
  %115 = and <8 x i64> %114, splat (i64 4294967295)
  %116 = bitcast <8 x i64> %114 to <16 x i32>
  %117 = shufflevector <16 x i32> %116, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %118 = bitcast <16 x i32> %117 to <8 x i64>
  %119 = and <8 x i64> %118, splat (i64 4294967295)
  %120 = mul nuw <8 x i64> %119, %115
  %121 = add <8 x i64> %113, %120
  br label %122

122:                                              ; preds = %107, %103
  %123 = phi <8 x i64> [ %104, %103 ], [ %121, %107 ]
  %124 = mul i64 %1, -7046029288634856825
  %125 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %126 = load i64, ptr %125, align 1, !alias.scope !141, !noalias !144
  %127 = insertelement <4 x i64> poison, i64 %26, i64 2
  %128 = insertelement <4 x i64> %127, i64 %126, i64 3
  %129 = shufflevector <2 x i64> %34, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %130 = shufflevector <4 x i64> %129, <4 x i64> %128, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %131 = shufflevector <8 x i64> %123, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %132 = xor <4 x i64> %130, %131
  %133 = shufflevector <8 x i64> %123, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %134 = xor <4 x i64> %133, %35
  %135 = zext <4 x i64> %132 to <4 x i128>
  %136 = zext <4 x i64> %134 to <4 x i128>
  %137 = mul nuw <4 x i128> %136, %135
  %138 = lshr <4 x i128> %137, splat (i128 64)
  %139 = xor <4 x i128> %138, %137
  %140 = trunc <4 x i128> %139 to <4 x i64>
  %141 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %140)
  %142 = add i64 %141, %124
  %143 = lshr i64 %142, 37
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587791953885689
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #18
  br label %148

148:                                              ; preds = %6, %122
  %149 = phi i64 [ %7, %6 ], [ %147, %122 ]
  ret i64 %149
}

; Function Attrs: noinline nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSeed_forceavx2(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #8 {
  %4 = alloca [192 x i8], align 16
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %198

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #18
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 0, i32 3, i32 1)
  %9 = sub nsw i64 0, %2
  %10 = insertelement <4 x i64> poison, i64 %2, i64 0
  %11 = insertelement <4 x i64> %10, i64 %9, i64 1
  %12 = insertelement <4 x i64> %11, i64 %2, i64 2
  %13 = insertelement <4 x i64> %12, i64 %9, i64 3
  %14 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %4) #17, !srcloc !148
  %15 = add <4 x i64> %13, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %15, ptr %14, align 32, !tbaa !9
  %16 = add <4 x i64> %13, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <4 x i64> %16, ptr %17, align 32, !tbaa !9
  %18 = add <4 x i64> %13, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 64
  store <4 x i64> %18, ptr %19, align 32, !tbaa !9
  %20 = add <4 x i64> %13, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 96
  store <4 x i64> %20, ptr %21, align 32, !tbaa !9
  %22 = add <4 x i64> %13, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %23 = getelementptr inbounds nuw i8, ptr %14, i64 128
  store <4 x i64> %22, ptr %23, align 32, !tbaa !9
  %24 = add <4 x i64> %13, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 160
  store <4 x i64> %24, ptr %25, align 32, !tbaa !9
  %26 = lshr i64 %1, 10
  %27 = icmp ult i64 %1, 1024
  br i1 %27, label %97, label %28

28:                                               ; preds = %8
  %29 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %30 = load <4 x i64>, ptr %29, align 16, !tbaa !9, !alias.scope !149, !noalias !152
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %32 = load <4 x i64>, ptr %31, align 16, !tbaa !9, !alias.scope !149, !noalias !152
  br label %33

33:                                               ; preds = %28, %74
  %34 = phi i64 [ 0, %28 ], [ %95, %74 ]
  %35 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %28 ], [ %84, %74 ]
  %36 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %28 ], [ %94, %74 ]
  %37 = shl nuw i64 %34, 10
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 %37
  br label %39

39:                                               ; preds = %33, %39
  %40 = phi i64 [ 0, %33 ], [ %72, %39 ]
  %41 = phi <4 x i64> [ %35, %33 ], [ %58, %39 ]
  %42 = phi <4 x i64> [ %36, %33 ], [ %71, %39 ]
  %43 = shl nuw nsw i64 %40, 6
  %44 = getelementptr inbounds nuw i8, ptr %38, i64 %43
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %45, i32 0, i32 3, i32 1)
  %46 = shl nuw nsw i64 %40, 3
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 %46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %48 = load <4 x i64>, ptr %44, align 1, !tbaa !9, !alias.scope !154, !noalias !159
  %49 = load <4 x i64>, ptr %47, align 8, !tbaa !9, !alias.scope !157, !noalias !161
  %50 = xor <4 x i64> %49, %48
  %51 = bitcast <4 x i64> %50 to <8 x i32>
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %53 = bitcast <8 x i32> %52 to <4 x i64>
  %54 = and <4 x i64> %50, splat (i64 4294967295)
  %55 = and <4 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <4 x i64> %55, %54
  %57 = add <4 x i64> %48, %41
  %58 = add <4 x i64> %57, %56
  %59 = getelementptr inbounds nuw i8, ptr %44, i64 32
  %60 = load <4 x i64>, ptr %59, align 1, !tbaa !9, !alias.scope !154, !noalias !159
  %61 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %62 = load <4 x i64>, ptr %61, align 8, !tbaa !9, !alias.scope !157, !noalias !161
  %63 = xor <4 x i64> %62, %60
  %64 = bitcast <4 x i64> %63 to <8 x i32>
  %65 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %66 = bitcast <8 x i32> %65 to <4 x i64>
  %67 = and <4 x i64> %63, splat (i64 4294967295)
  %68 = and <4 x i64> %66, splat (i64 4294967295)
  %69 = mul nuw <4 x i64> %68, %67
  %70 = add <4 x i64> %60, %42
  %71 = add <4 x i64> %70, %69
  %72 = add nuw nsw i64 %40, 1
  %73 = icmp eq i64 %72, 16
  br i1 %73, label %74, label %39

74:                                               ; preds = %39
  %75 = lshr <4 x i64> %58, splat (i64 47)
  %76 = xor <4 x i64> %75, %30
  %77 = xor <4 x i64> %76, %58
  %78 = bitcast <4 x i64> %77 to <8 x i32>
  %79 = shufflevector <8 x i32> %78, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %80 = and <4 x i64> %77, splat (i64 4294967295)
  %81 = mul nuw <4 x i64> %80, splat (i64 2654435761)
  %82 = bitcast <8 x i32> %79 to <4 x i64>
  %83 = mul <4 x i64> %82, splat (i64 -7046029290881679360)
  %84 = add <4 x i64> %83, %81
  %85 = lshr <4 x i64> %71, splat (i64 47)
  %86 = xor <4 x i64> %85, %32
  %87 = xor <4 x i64> %86, %71
  %88 = bitcast <4 x i64> %87 to <8 x i32>
  %89 = shufflevector <8 x i32> %88, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %90 = and <4 x i64> %87, splat (i64 4294967295)
  %91 = mul nuw <4 x i64> %90, splat (i64 2654435761)
  %92 = bitcast <8 x i32> %89 to <4 x i64>
  %93 = mul <4 x i64> %92, splat (i64 -7046029290881679360)
  %94 = add <4 x i64> %93, %91
  %95 = add nuw nsw i64 %34, 1
  %96 = icmp eq i64 %95, %26
  br i1 %96, label %97, label %33

97:                                               ; preds = %74, %8
  %98 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %8 ], [ %94, %74 ]
  %99 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %8 ], [ %84, %74 ]
  %100 = and i64 %1, -1024
  %101 = lshr i64 %1, 6
  %102 = and i64 %101, 15
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 %100
  %104 = icmp eq i64 %102, 0
  br i1 %104, label %140, label %105

105:                                              ; preds = %97, %105
  %106 = phi i64 [ %138, %105 ], [ 0, %97 ]
  %107 = phi <4 x i64> [ %124, %105 ], [ %99, %97 ]
  %108 = phi <4 x i64> [ %137, %105 ], [ %98, %97 ]
  %109 = shl nuw i64 %106, 6
  %110 = getelementptr inbounds nuw i8, ptr %103, i64 %109
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %111, i32 0, i32 3, i32 1)
  %112 = shl nuw nsw i64 %106, 3
  %113 = getelementptr inbounds nuw i8, ptr %4, i64 %112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %114 = load <4 x i64>, ptr %110, align 1, !tbaa !9, !alias.scope !162, !noalias !167
  %115 = load <4 x i64>, ptr %113, align 8, !tbaa !9, !alias.scope !165, !noalias !169
  %116 = xor <4 x i64> %115, %114
  %117 = bitcast <4 x i64> %116 to <8 x i32>
  %118 = shufflevector <8 x i32> %117, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %119 = bitcast <8 x i32> %118 to <4 x i64>
  %120 = and <4 x i64> %116, splat (i64 4294967295)
  %121 = and <4 x i64> %119, splat (i64 4294967295)
  %122 = mul nuw <4 x i64> %121, %120
  %123 = add <4 x i64> %114, %107
  %124 = add <4 x i64> %123, %122
  %125 = getelementptr inbounds nuw i8, ptr %110, i64 32
  %126 = load <4 x i64>, ptr %125, align 1, !tbaa !9, !alias.scope !162, !noalias !167
  %127 = getelementptr inbounds nuw i8, ptr %113, i64 32
  %128 = load <4 x i64>, ptr %127, align 8, !tbaa !9, !alias.scope !165, !noalias !169
  %129 = xor <4 x i64> %128, %126
  %130 = bitcast <4 x i64> %129 to <8 x i32>
  %131 = shufflevector <8 x i32> %130, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %132 = bitcast <8 x i32> %131 to <4 x i64>
  %133 = and <4 x i64> %129, splat (i64 4294967295)
  %134 = and <4 x i64> %132, splat (i64 4294967295)
  %135 = mul nuw <4 x i64> %134, %133
  %136 = add <4 x i64> %126, %108
  %137 = add <4 x i64> %136, %135
  %138 = add nuw nsw i64 %106, 1
  %139 = icmp eq i64 %138, %102
  br i1 %139, label %140, label %105

140:                                              ; preds = %105, %97
  %141 = phi <4 x i64> [ %98, %97 ], [ %137, %105 ]
  %142 = phi <4 x i64> [ %99, %97 ], [ %124, %105 ]
  %143 = and i64 %1, 63
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %173, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %147 = getelementptr inbounds i8, ptr %146, i64 -64
  %148 = getelementptr inbounds nuw i8, ptr %4, i64 121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %149 = load <4 x i64>, ptr %147, align 1, !tbaa !9, !alias.scope !170, !noalias !175
  %150 = load <4 x i64>, ptr %148, align 1, !tbaa !9, !alias.scope !173, !noalias !177
  %151 = xor <4 x i64> %150, %149
  %152 = bitcast <4 x i64> %151 to <8 x i32>
  %153 = shufflevector <8 x i32> %152, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %154 = bitcast <8 x i32> %153 to <4 x i64>
  %155 = and <4 x i64> %151, splat (i64 4294967295)
  %156 = and <4 x i64> %154, splat (i64 4294967295)
  %157 = mul nuw <4 x i64> %156, %155
  %158 = add <4 x i64> %149, %142
  %159 = add <4 x i64> %158, %157
  %160 = getelementptr inbounds i8, ptr %146, i64 -32
  %161 = load <4 x i64>, ptr %160, align 1, !tbaa !9, !alias.scope !170, !noalias !175
  %162 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %163 = load <4 x i64>, ptr %162, align 1, !tbaa !9, !alias.scope !173, !noalias !177
  %164 = xor <4 x i64> %163, %161
  %165 = bitcast <4 x i64> %164 to <8 x i32>
  %166 = shufflevector <8 x i32> %165, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %167 = bitcast <8 x i32> %166 to <4 x i64>
  %168 = and <4 x i64> %164, splat (i64 4294967295)
  %169 = and <4 x i64> %167, splat (i64 4294967295)
  %170 = mul nuw <4 x i64> %169, %168
  %171 = add <4 x i64> %161, %141
  %172 = add <4 x i64> %171, %170
  br label %173

173:                                              ; preds = %145, %140
  %174 = phi <4 x i64> [ %141, %140 ], [ %172, %145 ]
  %175 = phi <4 x i64> [ %142, %140 ], [ %159, %145 ]
  %176 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %177 = mul i64 %1, -7046029288634856825
  %178 = load <8 x i64>, ptr %176, align 1, !alias.scope !178, !noalias !181
  %179 = shufflevector <8 x i64> %178, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %180 = shufflevector <4 x i64> %175, <4 x i64> %174, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %181 = xor <4 x i64> %179, %180
  %182 = shufflevector <8 x i64> %178, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %183 = shufflevector <4 x i64> %175, <4 x i64> %174, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %184 = xor <4 x i64> %182, %183
  %185 = zext <4 x i64> %181 to <4 x i128>
  %186 = zext <4 x i64> %184 to <4 x i128>
  %187 = mul nuw <4 x i128> %186, %185
  %188 = lshr <4 x i128> %187, splat (i128 64)
  %189 = xor <4 x i128> %188, %187
  %190 = trunc <4 x i128> %189 to <4 x i64>
  %191 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %190)
  %192 = add i64 %191, %177
  %193 = lshr i64 %192, 37
  %194 = xor i64 %193, %192
  %195 = mul i64 %194, 1609587791953885689
  %196 = lshr i64 %195, 32
  %197 = xor i64 %196, %195
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #18
  br label %198

198:                                              ; preds = %6, %173
  %199 = phi i64 [ %7, %6 ], [ %197, %173 ]
  ret i64 %199
}

; Function Attrs: noinline nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSeed_forcesse2(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #9 {
  %4 = alloca [192 x i8], align 16
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %326

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #18
  %9 = sub nsw i64 0, %2
  %10 = insertelement <2 x i64> poison, i64 %2, i64 0
  %11 = insertelement <2 x i64> %10, i64 %9, i64 1
  %12 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %4) #17, !srcloc !183
  %13 = add <2 x i64> %11, <i64 -4734510112055689544, i64 2066345149520216444>
  store <2 x i64> %13, ptr %12, align 16, !tbaa !9
  %14 = add <2 x i64> %11, <i64 -2623469361688619810, i64 2262974939099578482>
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <2 x i64> %14, ptr %15, align 16, !tbaa !9
  %16 = add <2 x i64> %11, <i64 8711581037947681227, i64 2410270004345854594>
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store <2 x i64> %16, ptr %17, align 16, !tbaa !9
  %18 = add <2 x i64> %11, <i64 -8204357891075471176, i64 5487137525590930912>
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 48
  store <2 x i64> %18, ptr %19, align 16, !tbaa !9
  %20 = add <2 x i64> %11, <i64 -3818837453329782724, i64 -6688317018830679928>
  %21 = getelementptr inbounds nuw i8, ptr %12, i64 64
  store <2 x i64> %20, ptr %21, align 16, !tbaa !9
  %22 = add <2 x i64> %11, <i64 5690594596133299313, i64 -2833645246901970632>
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 80
  store <2 x i64> %22, ptr %23, align 16, !tbaa !9
  %24 = add <2 x i64> %11, <i64 4554437623014685352, i64 2111919702937427193>
  %25 = getelementptr inbounds nuw i8, ptr %12, i64 96
  store <2 x i64> %24, ptr %25, align 16, !tbaa !9
  %26 = add <2 x i64> %11, <i64 3556072174620004746, i64 7238261902898274248>
  %27 = getelementptr inbounds nuw i8, ptr %12, i64 112
  store <2 x i64> %26, ptr %27, align 16, !tbaa !9
  %28 = add <2 x i64> %11, <i64 -4329134394285701654, i64 -1485321483350670907>
  %29 = getelementptr inbounds nuw i8, ptr %12, i64 128
  store <2 x i64> %28, ptr %29, align 16, !tbaa !9
  %30 = add <2 x i64> %11, <i64 5321830579834785047, i64 -7032137544937171245>
  %31 = getelementptr inbounds nuw i8, ptr %12, i64 144
  store <2 x i64> %30, ptr %31, align 16, !tbaa !9
  %32 = add <2 x i64> %11, <i64 -242834301215959509, i64 -3588858202114426737>
  %33 = getelementptr inbounds nuw i8, ptr %12, i64 160
  store <2 x i64> %32, ptr %33, align 16, !tbaa !9
  %34 = add <2 x i64> %11, <i64 2883454493032893253, i64 9097354517224871855>
  %35 = getelementptr inbounds nuw i8, ptr %12, i64 176
  store <2 x i64> %34, ptr %35, align 16, !tbaa !9
  %36 = lshr i64 %1, 10
  %37 = icmp ult i64 %1, 1024
  br i1 %37, label %161, label %38

38:                                               ; preds = %8
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %40 = load <2 x i64>, ptr %39, align 16, !tbaa !9, !alias.scope !184, !noalias !187
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 144
  %42 = load <2 x i64>, ptr %41, align 16, !tbaa !9, !alias.scope !184, !noalias !187
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %44 = load <2 x i64>, ptr %43, align 16, !tbaa !9, !alias.scope !184, !noalias !187
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 176
  %46 = load <2 x i64>, ptr %45, align 16, !tbaa !9, !alias.scope !184, !noalias !187
  br label %47

47:                                               ; preds = %38, %118
  %48 = phi i64 [ 0, %38 ], [ %159, %118 ]
  %49 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %38 ], [ %128, %118 ]
  %50 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %38 ], [ %138, %118 ]
  %51 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %38 ], [ %148, %118 ]
  %52 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %38 ], [ %158, %118 ]
  %53 = shl nuw i64 %48, 10
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 %53
  br label %55

55:                                               ; preds = %47, %55
  %56 = phi i64 [ 0, %47 ], [ %116, %55 ]
  %57 = phi <2 x i64> [ %49, %47 ], [ %76, %55 ]
  %58 = phi <2 x i64> [ %50, %47 ], [ %89, %55 ]
  %59 = phi <2 x i64> [ %51, %47 ], [ %102, %55 ]
  %60 = phi <2 x i64> [ %52, %47 ], [ %115, %55 ]
  %61 = shl nuw nsw i64 %56, 6
  %62 = getelementptr inbounds nuw i8, ptr %54, i64 %61
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %63, i32 0, i32 3, i32 1)
  %64 = shl nuw nsw i64 %56, 3
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 %64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %66 = load <2 x i64>, ptr %62, align 1, !tbaa !9, !alias.scope !189, !noalias !194
  %67 = load <2 x i64>, ptr %65, align 8, !tbaa !9, !alias.scope !192, !noalias !196
  %68 = xor <2 x i64> %67, %66
  %69 = bitcast <2 x i64> %68 to <4 x i32>
  %70 = shufflevector <4 x i32> %69, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %71 = bitcast <4 x i32> %70 to <2 x i64>
  %72 = and <2 x i64> %68, splat (i64 4294967295)
  %73 = and <2 x i64> %71, splat (i64 4294967295)
  %74 = mul nuw <2 x i64> %73, %72
  %75 = add <2 x i64> %66, %57
  %76 = add <2 x i64> %75, %74
  %77 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %78 = load <2 x i64>, ptr %77, align 1, !tbaa !9, !alias.scope !189, !noalias !194
  %79 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %80 = load <2 x i64>, ptr %79, align 8, !tbaa !9, !alias.scope !192, !noalias !196
  %81 = xor <2 x i64> %80, %78
  %82 = bitcast <2 x i64> %81 to <4 x i32>
  %83 = shufflevector <4 x i32> %82, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %84 = bitcast <4 x i32> %83 to <2 x i64>
  %85 = and <2 x i64> %81, splat (i64 4294967295)
  %86 = and <2 x i64> %84, splat (i64 4294967295)
  %87 = mul nuw <2 x i64> %86, %85
  %88 = add <2 x i64> %78, %58
  %89 = add <2 x i64> %88, %87
  %90 = getelementptr inbounds nuw i8, ptr %62, i64 32
  %91 = load <2 x i64>, ptr %90, align 1, !tbaa !9, !alias.scope !189, !noalias !194
  %92 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %93 = load <2 x i64>, ptr %92, align 8, !tbaa !9, !alias.scope !192, !noalias !196
  %94 = xor <2 x i64> %93, %91
  %95 = bitcast <2 x i64> %94 to <4 x i32>
  %96 = shufflevector <4 x i32> %95, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %97 = bitcast <4 x i32> %96 to <2 x i64>
  %98 = and <2 x i64> %94, splat (i64 4294967295)
  %99 = and <2 x i64> %97, splat (i64 4294967295)
  %100 = mul nuw <2 x i64> %99, %98
  %101 = add <2 x i64> %91, %59
  %102 = add <2 x i64> %101, %100
  %103 = getelementptr inbounds nuw i8, ptr %62, i64 48
  %104 = load <2 x i64>, ptr %103, align 1, !tbaa !9, !alias.scope !189, !noalias !194
  %105 = getelementptr inbounds nuw i8, ptr %65, i64 48
  %106 = load <2 x i64>, ptr %105, align 8, !tbaa !9, !alias.scope !192, !noalias !196
  %107 = xor <2 x i64> %106, %104
  %108 = bitcast <2 x i64> %107 to <4 x i32>
  %109 = shufflevector <4 x i32> %108, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %110 = bitcast <4 x i32> %109 to <2 x i64>
  %111 = and <2 x i64> %107, splat (i64 4294967295)
  %112 = and <2 x i64> %110, splat (i64 4294967295)
  %113 = mul nuw <2 x i64> %112, %111
  %114 = add <2 x i64> %104, %60
  %115 = add <2 x i64> %114, %113
  %116 = add nuw nsw i64 %56, 1
  %117 = icmp eq i64 %116, 16
  br i1 %117, label %118, label %55

118:                                              ; preds = %55
  %119 = lshr <2 x i64> %76, splat (i64 47)
  %120 = xor <2 x i64> %119, %40
  %121 = xor <2 x i64> %120, %76
  %122 = bitcast <2 x i64> %121 to <4 x i32>
  %123 = shufflevector <4 x i32> %122, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %124 = bitcast <4 x i32> %123 to <2 x i64>
  %125 = and <2 x i64> %121, splat (i64 4294967295)
  %126 = mul nuw <2 x i64> %125, splat (i64 2654435761)
  %127 = mul <2 x i64> %124, splat (i64 -7046029290881679360)
  %128 = add <2 x i64> %127, %126
  %129 = lshr <2 x i64> %89, splat (i64 47)
  %130 = xor <2 x i64> %129, %42
  %131 = xor <2 x i64> %130, %89
  %132 = bitcast <2 x i64> %131 to <4 x i32>
  %133 = shufflevector <4 x i32> %132, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %134 = bitcast <4 x i32> %133 to <2 x i64>
  %135 = and <2 x i64> %131, splat (i64 4294967295)
  %136 = mul nuw <2 x i64> %135, splat (i64 2654435761)
  %137 = mul <2 x i64> %134, splat (i64 -7046029290881679360)
  %138 = add <2 x i64> %137, %136
  %139 = lshr <2 x i64> %102, splat (i64 47)
  %140 = xor <2 x i64> %139, %44
  %141 = xor <2 x i64> %140, %102
  %142 = bitcast <2 x i64> %141 to <4 x i32>
  %143 = shufflevector <4 x i32> %142, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %144 = bitcast <4 x i32> %143 to <2 x i64>
  %145 = and <2 x i64> %141, splat (i64 4294967295)
  %146 = mul nuw <2 x i64> %145, splat (i64 2654435761)
  %147 = mul <2 x i64> %144, splat (i64 -7046029290881679360)
  %148 = add <2 x i64> %147, %146
  %149 = lshr <2 x i64> %115, splat (i64 47)
  %150 = xor <2 x i64> %149, %46
  %151 = xor <2 x i64> %150, %115
  %152 = bitcast <2 x i64> %151 to <4 x i32>
  %153 = shufflevector <4 x i32> %152, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %154 = bitcast <4 x i32> %153 to <2 x i64>
  %155 = and <2 x i64> %151, splat (i64 4294967295)
  %156 = mul nuw <2 x i64> %155, splat (i64 2654435761)
  %157 = mul <2 x i64> %154, splat (i64 -7046029290881679360)
  %158 = add <2 x i64> %157, %156
  %159 = add nuw nsw i64 %48, 1
  %160 = icmp eq i64 %159, %36
  br i1 %160, label %161, label %47

161:                                              ; preds = %118, %8
  %162 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %8 ], [ %158, %118 ]
  %163 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %8 ], [ %148, %118 ]
  %164 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %8 ], [ %138, %118 ]
  %165 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %8 ], [ %128, %118 ]
  %166 = and i64 %1, -1024
  %167 = lshr i64 %1, 6
  %168 = and i64 %167, 15
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 %166
  %170 = icmp eq i64 %168, 0
  br i1 %170, label %234, label %171

171:                                              ; preds = %161, %171
  %172 = phi i64 [ %232, %171 ], [ 0, %161 ]
  %173 = phi <2 x i64> [ %192, %171 ], [ %165, %161 ]
  %174 = phi <2 x i64> [ %205, %171 ], [ %164, %161 ]
  %175 = phi <2 x i64> [ %218, %171 ], [ %163, %161 ]
  %176 = phi <2 x i64> [ %231, %171 ], [ %162, %161 ]
  %177 = shl nuw i64 %172, 6
  %178 = getelementptr inbounds nuw i8, ptr %169, i64 %177
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %179, i32 0, i32 3, i32 1)
  %180 = shl nuw nsw i64 %172, 3
  %181 = getelementptr inbounds nuw i8, ptr %4, i64 %180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %182 = load <2 x i64>, ptr %178, align 1, !tbaa !9, !alias.scope !197, !noalias !202
  %183 = load <2 x i64>, ptr %181, align 8, !tbaa !9, !alias.scope !200, !noalias !204
  %184 = xor <2 x i64> %183, %182
  %185 = bitcast <2 x i64> %184 to <4 x i32>
  %186 = shufflevector <4 x i32> %185, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %187 = bitcast <4 x i32> %186 to <2 x i64>
  %188 = and <2 x i64> %184, splat (i64 4294967295)
  %189 = and <2 x i64> %187, splat (i64 4294967295)
  %190 = mul nuw <2 x i64> %189, %188
  %191 = add <2 x i64> %182, %173
  %192 = add <2 x i64> %191, %190
  %193 = getelementptr inbounds nuw i8, ptr %178, i64 16
  %194 = load <2 x i64>, ptr %193, align 1, !tbaa !9, !alias.scope !197, !noalias !202
  %195 = getelementptr inbounds nuw i8, ptr %181, i64 16
  %196 = load <2 x i64>, ptr %195, align 8, !tbaa !9, !alias.scope !200, !noalias !204
  %197 = xor <2 x i64> %196, %194
  %198 = bitcast <2 x i64> %197 to <4 x i32>
  %199 = shufflevector <4 x i32> %198, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %200 = bitcast <4 x i32> %199 to <2 x i64>
  %201 = and <2 x i64> %197, splat (i64 4294967295)
  %202 = and <2 x i64> %200, splat (i64 4294967295)
  %203 = mul nuw <2 x i64> %202, %201
  %204 = add <2 x i64> %194, %174
  %205 = add <2 x i64> %204, %203
  %206 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %207 = load <2 x i64>, ptr %206, align 1, !tbaa !9, !alias.scope !197, !noalias !202
  %208 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %209 = load <2 x i64>, ptr %208, align 8, !tbaa !9, !alias.scope !200, !noalias !204
  %210 = xor <2 x i64> %209, %207
  %211 = bitcast <2 x i64> %210 to <4 x i32>
  %212 = shufflevector <4 x i32> %211, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %213 = bitcast <4 x i32> %212 to <2 x i64>
  %214 = and <2 x i64> %210, splat (i64 4294967295)
  %215 = and <2 x i64> %213, splat (i64 4294967295)
  %216 = mul nuw <2 x i64> %215, %214
  %217 = add <2 x i64> %207, %175
  %218 = add <2 x i64> %217, %216
  %219 = getelementptr inbounds nuw i8, ptr %178, i64 48
  %220 = load <2 x i64>, ptr %219, align 1, !tbaa !9, !alias.scope !197, !noalias !202
  %221 = getelementptr inbounds nuw i8, ptr %181, i64 48
  %222 = load <2 x i64>, ptr %221, align 8, !tbaa !9, !alias.scope !200, !noalias !204
  %223 = xor <2 x i64> %222, %220
  %224 = bitcast <2 x i64> %223 to <4 x i32>
  %225 = shufflevector <4 x i32> %224, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %226 = bitcast <4 x i32> %225 to <2 x i64>
  %227 = and <2 x i64> %223, splat (i64 4294967295)
  %228 = and <2 x i64> %226, splat (i64 4294967295)
  %229 = mul nuw <2 x i64> %228, %227
  %230 = add <2 x i64> %220, %176
  %231 = add <2 x i64> %230, %229
  %232 = add nuw nsw i64 %172, 1
  %233 = icmp eq i64 %232, %168
  br i1 %233, label %234, label %171

234:                                              ; preds = %171, %161
  %235 = phi <2 x i64> [ %162, %161 ], [ %231, %171 ]
  %236 = phi <2 x i64> [ %163, %161 ], [ %218, %171 ]
  %237 = phi <2 x i64> [ %164, %161 ], [ %205, %171 ]
  %238 = phi <2 x i64> [ %165, %161 ], [ %192, %171 ]
  %239 = and i64 %1, 63
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %295, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %243 = getelementptr inbounds i8, ptr %242, i64 -64
  %244 = getelementptr inbounds nuw i8, ptr %4, i64 121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %245 = load <2 x i64>, ptr %243, align 1, !tbaa !9, !alias.scope !205, !noalias !210
  %246 = load <2 x i64>, ptr %244, align 1, !tbaa !9, !alias.scope !208, !noalias !212
  %247 = xor <2 x i64> %246, %245
  %248 = bitcast <2 x i64> %247 to <4 x i32>
  %249 = shufflevector <4 x i32> %248, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %250 = bitcast <4 x i32> %249 to <2 x i64>
  %251 = and <2 x i64> %247, splat (i64 4294967295)
  %252 = and <2 x i64> %250, splat (i64 4294967295)
  %253 = mul nuw <2 x i64> %252, %251
  %254 = add <2 x i64> %245, %238
  %255 = add <2 x i64> %254, %253
  %256 = getelementptr inbounds i8, ptr %242, i64 -48
  %257 = load <2 x i64>, ptr %256, align 1, !tbaa !9, !alias.scope !205, !noalias !210
  %258 = getelementptr inbounds nuw i8, ptr %4, i64 137
  %259 = load <2 x i64>, ptr %258, align 1, !tbaa !9, !alias.scope !208, !noalias !212
  %260 = xor <2 x i64> %259, %257
  %261 = bitcast <2 x i64> %260 to <4 x i32>
  %262 = shufflevector <4 x i32> %261, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %263 = bitcast <4 x i32> %262 to <2 x i64>
  %264 = and <2 x i64> %260, splat (i64 4294967295)
  %265 = and <2 x i64> %263, splat (i64 4294967295)
  %266 = mul nuw <2 x i64> %265, %264
  %267 = add <2 x i64> %257, %237
  %268 = add <2 x i64> %267, %266
  %269 = getelementptr inbounds i8, ptr %242, i64 -32
  %270 = load <2 x i64>, ptr %269, align 1, !tbaa !9, !alias.scope !205, !noalias !210
  %271 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %272 = load <2 x i64>, ptr %271, align 1, !tbaa !9, !alias.scope !208, !noalias !212
  %273 = xor <2 x i64> %272, %270
  %274 = bitcast <2 x i64> %273 to <4 x i32>
  %275 = shufflevector <4 x i32> %274, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %276 = bitcast <4 x i32> %275 to <2 x i64>
  %277 = and <2 x i64> %273, splat (i64 4294967295)
  %278 = and <2 x i64> %276, splat (i64 4294967295)
  %279 = mul nuw <2 x i64> %278, %277
  %280 = add <2 x i64> %270, %236
  %281 = add <2 x i64> %280, %279
  %282 = getelementptr inbounds i8, ptr %242, i64 -16
  %283 = load <2 x i64>, ptr %282, align 1, !tbaa !9, !alias.scope !205, !noalias !210
  %284 = getelementptr inbounds nuw i8, ptr %4, i64 169
  %285 = load <2 x i64>, ptr %284, align 1, !tbaa !9, !alias.scope !208, !noalias !212
  %286 = xor <2 x i64> %285, %283
  %287 = bitcast <2 x i64> %286 to <4 x i32>
  %288 = shufflevector <4 x i32> %287, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %289 = bitcast <4 x i32> %288 to <2 x i64>
  %290 = and <2 x i64> %286, splat (i64 4294967295)
  %291 = and <2 x i64> %289, splat (i64 4294967295)
  %292 = mul nuw <2 x i64> %291, %290
  %293 = add <2 x i64> %283, %235
  %294 = add <2 x i64> %293, %292
  br label %295

295:                                              ; preds = %241, %234
  %296 = phi <2 x i64> [ %235, %234 ], [ %294, %241 ]
  %297 = phi <2 x i64> [ %236, %234 ], [ %281, %241 ]
  %298 = phi <2 x i64> [ %237, %234 ], [ %268, %241 ]
  %299 = phi <2 x i64> [ %238, %234 ], [ %255, %241 ]
  %300 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %301 = mul i64 %1, -7046029288634856825
  %302 = load <8 x i64>, ptr %300, align 1, !alias.scope !213, !noalias !216
  %303 = shufflevector <8 x i64> %302, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %304 = shufflevector <2 x i64> %299, <2 x i64> %298, <2 x i32> <i32 0, i32 2>
  %305 = shufflevector <2 x i64> %297, <2 x i64> %296, <2 x i32> <i32 0, i32 2>
  %306 = shufflevector <2 x i64> %304, <2 x i64> %305, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %307 = xor <4 x i64> %303, %306
  %308 = shufflevector <8 x i64> %302, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %309 = shufflevector <2 x i64> %299, <2 x i64> %298, <2 x i32> <i32 1, i32 3>
  %310 = shufflevector <2 x i64> %297, <2 x i64> %296, <2 x i32> <i32 1, i32 3>
  %311 = shufflevector <2 x i64> %309, <2 x i64> %310, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %312 = xor <4 x i64> %308, %311
  %313 = zext <4 x i64> %307 to <4 x i128>
  %314 = zext <4 x i64> %312 to <4 x i128>
  %315 = mul nuw <4 x i128> %314, %313
  %316 = lshr <4 x i128> %315, splat (i128 64)
  %317 = xor <4 x i128> %316, %315
  %318 = trunc <4 x i128> %317 to <4 x i64>
  %319 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %318)
  %320 = add i64 %319, %301
  %321 = lshr i64 %320, 37
  %322 = xor i64 %321, %320
  %323 = mul i64 %322, 1609587791953885689
  %324 = lshr i64 %323, 32
  %325 = xor i64 %324, %323
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #18
  br label %326

326:                                              ; preds = %6, %295
  %327 = phi i64 [ %7, %6 ], [ %325, %295 ]
  ret i64 %327
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i64 @XXH3_hashLong_64b_withSeed_forcescalar(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #4 {
  %4 = alloca [192 x i8], align 16
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noundef %0, i64 noundef %1)
  br label %469

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #18
  %9 = add i64 %2, -4734510112055689544
  %10 = sub i64 2066345149520216444, %2
  store i64 %9, ptr %4, align 16, !alias.scope !218
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %10, ptr %11, align 8, !alias.scope !218
  %12 = add i64 %2, -2623469361688619810
  %13 = sub i64 2262974939099578482, %2
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %12, ptr %14, align 16, !alias.scope !218
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %13, ptr %15, align 8, !alias.scope !218
  %16 = add i64 %2, 8711581037947681227
  %17 = sub i64 2410270004345854594, %2
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %16, ptr %18, align 16, !alias.scope !218
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %17, ptr %19, align 8, !alias.scope !218
  %20 = add i64 %2, -8204357891075471176
  %21 = sub i64 5487137525590930912, %2
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %20, ptr %22, align 16, !alias.scope !218
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %21, ptr %23, align 8, !alias.scope !218
  %24 = add i64 %2, -3818837453329782724
  %25 = sub i64 -6688317018830679928, %2
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %24, ptr %26, align 16, !alias.scope !218
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %25, ptr %27, align 8, !alias.scope !218
  %28 = add i64 %2, 5690594596133299313
  %29 = sub i64 -2833645246901970632, %2
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %28, ptr %30, align 16, !alias.scope !218
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %29, ptr %31, align 8, !alias.scope !218
  %32 = add i64 %2, 4554437623014685352
  %33 = sub i64 2111919702937427193, %2
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %32, ptr %34, align 16, !alias.scope !218
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %33, ptr %35, align 8, !alias.scope !218
  %36 = add i64 %2, 3556072174620004746
  %37 = sub i64 7238261902898274248, %2
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 %36, ptr %38, align 16, !alias.scope !218
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %37, ptr %39, align 8, !alias.scope !218
  %40 = add i64 %2, -4329134394285701654
  %41 = sub i64 -1485321483350670907, %2
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i64 %40, ptr %42, align 16, !alias.scope !218
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %41, ptr %43, align 8, !alias.scope !218
  %44 = add i64 %2, 5321830579834785047
  %45 = sub i64 -7032137544937171245, %2
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i64 %44, ptr %46, align 16, !alias.scope !218
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 %45, ptr %47, align 8, !alias.scope !218
  %48 = add i64 %2, -242834301215959509
  %49 = sub i64 -3588858202114426737, %2
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 %48, ptr %50, align 16, !alias.scope !218
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 %49, ptr %51, align 8, !alias.scope !218
  %52 = add i64 %2, 2883454493032893253
  %53 = sub i64 9097354517224871855, %2
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i64 %52, ptr %54, align 16, !alias.scope !218
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i64 %53, ptr %55, align 8, !alias.scope !218
  %56 = lshr i64 %1, 10
  %57 = icmp ult i64 %1, 1024
  br i1 %57, label %200, label %58

58:                                               ; preds = %8, %165
  %59 = phi i64 [ %198, %165 ], [ 0, %8 ]
  %60 = phi i64 [ %169, %165 ], [ 3266489917, %8 ]
  %61 = phi i64 [ %173, %165 ], [ -7046029288634856825, %8 ]
  %62 = phi i64 [ %177, %165 ], [ -4417276706812531889, %8 ]
  %63 = phi i64 [ %181, %165 ], [ 1609587929392839161, %8 ]
  %64 = phi i64 [ %185, %165 ], [ -8796714831421723037, %8 ]
  %65 = phi i64 [ %189, %165 ], [ 2246822519, %8 ]
  %66 = phi i64 [ %193, %165 ], [ 2870177450012600261, %8 ]
  %67 = phi i64 [ %197, %165 ], [ 2654435761, %8 ]
  %68 = shl nuw i64 %59, 10
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 %68
  br label %70

70:                                               ; preds = %58, %70
  %71 = phi i64 [ 0, %58 ], [ %163, %70 ]
  %72 = phi i64 [ %60, %58 ], [ %92, %70 ]
  %73 = phi i64 [ %61, %58 ], [ %102, %70 ]
  %74 = phi i64 [ %62, %58 ], [ %112, %70 ]
  %75 = phi i64 [ %63, %58 ], [ %122, %70 ]
  %76 = phi i64 [ %64, %58 ], [ %132, %70 ]
  %77 = phi i64 [ %65, %58 ], [ %142, %70 ]
  %78 = phi i64 [ %66, %58 ], [ %152, %70 ]
  %79 = phi i64 [ %67, %58 ], [ %162, %70 ]
  %80 = shl nuw nsw i64 %71, 6
  %81 = getelementptr inbounds nuw i8, ptr %69, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %82, i32 0, i32 3, i32 1)
  %83 = shl nuw nsw i64 %71, 3
  %84 = getelementptr inbounds nuw i8, ptr %4, i64 %83
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %85 = load i64, ptr %81, align 1, !alias.scope !221, !noalias !226
  %86 = load i64, ptr %84, align 8, !alias.scope !224, !noalias !228
  %87 = xor i64 %86, %85
  %88 = add i64 %85, %72
  %89 = and i64 %87, 4294967295
  %90 = lshr i64 %87, 32
  %91 = mul nuw i64 %89, %90
  %92 = add i64 %88, %91
  %93 = getelementptr inbounds nuw i8, ptr %81, i64 8
  %94 = load i64, ptr %93, align 1, !alias.scope !221, !noalias !226
  %95 = getelementptr inbounds nuw i8, ptr %84, i64 8
  %96 = load i64, ptr %95, align 8, !alias.scope !224, !noalias !228
  %97 = xor i64 %96, %94
  %98 = add i64 %94, %73
  %99 = and i64 %97, 4294967295
  %100 = lshr i64 %97, 32
  %101 = mul nuw i64 %99, %100
  %102 = add i64 %98, %101
  %103 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %104 = load i64, ptr %103, align 1, !alias.scope !221, !noalias !226
  %105 = getelementptr inbounds nuw i8, ptr %84, i64 16
  %106 = load i64, ptr %105, align 8, !alias.scope !224, !noalias !228
  %107 = xor i64 %106, %104
  %108 = add i64 %104, %74
  %109 = and i64 %107, 4294967295
  %110 = lshr i64 %107, 32
  %111 = mul nuw i64 %109, %110
  %112 = add i64 %108, %111
  %113 = getelementptr inbounds nuw i8, ptr %81, i64 24
  %114 = load i64, ptr %113, align 1, !alias.scope !221, !noalias !226
  %115 = getelementptr inbounds nuw i8, ptr %84, i64 24
  %116 = load i64, ptr %115, align 8, !alias.scope !224, !noalias !228
  %117 = xor i64 %116, %114
  %118 = add i64 %114, %75
  %119 = and i64 %117, 4294967295
  %120 = lshr i64 %117, 32
  %121 = mul nuw i64 %119, %120
  %122 = add i64 %118, %121
  %123 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %124 = load i64, ptr %123, align 1, !alias.scope !221, !noalias !226
  %125 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %126 = load i64, ptr %125, align 8, !alias.scope !224, !noalias !228
  %127 = xor i64 %126, %124
  %128 = add i64 %124, %76
  %129 = and i64 %127, 4294967295
  %130 = lshr i64 %127, 32
  %131 = mul nuw i64 %129, %130
  %132 = add i64 %128, %131
  %133 = getelementptr inbounds nuw i8, ptr %81, i64 40
  %134 = load i64, ptr %133, align 1, !alias.scope !221, !noalias !226
  %135 = getelementptr inbounds nuw i8, ptr %84, i64 40
  %136 = load i64, ptr %135, align 8, !alias.scope !224, !noalias !228
  %137 = xor i64 %136, %134
  %138 = add i64 %134, %77
  %139 = and i64 %137, 4294967295
  %140 = lshr i64 %137, 32
  %141 = mul nuw i64 %139, %140
  %142 = add i64 %138, %141
  %143 = getelementptr inbounds nuw i8, ptr %81, i64 48
  %144 = load i64, ptr %143, align 1, !alias.scope !221, !noalias !226
  %145 = getelementptr inbounds nuw i8, ptr %84, i64 48
  %146 = load i64, ptr %145, align 8, !alias.scope !224, !noalias !228
  %147 = xor i64 %146, %144
  %148 = add i64 %144, %78
  %149 = and i64 %147, 4294967295
  %150 = lshr i64 %147, 32
  %151 = mul nuw i64 %149, %150
  %152 = add i64 %148, %151
  %153 = getelementptr inbounds nuw i8, ptr %81, i64 56
  %154 = load i64, ptr %153, align 1, !alias.scope !221, !noalias !226
  %155 = getelementptr inbounds nuw i8, ptr %84, i64 56
  %156 = load i64, ptr %155, align 8, !alias.scope !224, !noalias !228
  %157 = add i64 %154, %79
  %158 = xor i64 %156, %154
  %159 = and i64 %158, 4294967295
  %160 = lshr i64 %158, 32
  %161 = mul nuw i64 %159, %160
  %162 = add i64 %157, %161
  %163 = add nuw nsw i64 %71, 1
  %164 = icmp eq i64 %163, 16
  br i1 %164, label %165, label %70

165:                                              ; preds = %70
  %166 = lshr i64 %92, 47
  %167 = xor i64 %166, %40
  %168 = xor i64 %167, %92
  %169 = mul i64 %168, 2654435761
  %170 = lshr i64 %102, 47
  %171 = xor i64 %170, %41
  %172 = xor i64 %171, %102
  %173 = mul i64 %172, 2654435761
  %174 = lshr i64 %112, 47
  %175 = xor i64 %174, %44
  %176 = xor i64 %175, %112
  %177 = mul i64 %176, 2654435761
  %178 = lshr i64 %122, 47
  %179 = xor i64 %178, %45
  %180 = xor i64 %179, %122
  %181 = mul i64 %180, 2654435761
  %182 = lshr i64 %132, 47
  %183 = xor i64 %182, %48
  %184 = xor i64 %183, %132
  %185 = mul i64 %184, 2654435761
  %186 = lshr i64 %142, 47
  %187 = xor i64 %186, %49
  %188 = xor i64 %187, %142
  %189 = mul i64 %188, 2654435761
  %190 = lshr i64 %152, 47
  %191 = xor i64 %190, %52
  %192 = xor i64 %191, %152
  %193 = mul i64 %192, 2654435761
  %194 = lshr i64 %162, 47
  %195 = xor i64 %194, %53
  %196 = xor i64 %195, %162
  %197 = mul i64 %196, 2654435761
  %198 = add nuw nsw i64 %59, 1
  %199 = icmp eq i64 %198, %56
  br i1 %199, label %200, label %58

200:                                              ; preds = %165, %8
  %201 = phi i64 [ 2654435761, %8 ], [ %197, %165 ]
  %202 = phi i64 [ 2870177450012600261, %8 ], [ %193, %165 ]
  %203 = phi i64 [ 2246822519, %8 ], [ %189, %165 ]
  %204 = phi i64 [ -8796714831421723037, %8 ], [ %185, %165 ]
  %205 = phi i64 [ 1609587929392839161, %8 ], [ %181, %165 ]
  %206 = phi i64 [ -4417276706812531889, %8 ], [ %177, %165 ]
  %207 = phi i64 [ -7046029288634856825, %8 ], [ %173, %165 ]
  %208 = phi i64 [ 3266489917, %8 ], [ %169, %165 ]
  %209 = and i64 %1, -1024
  %210 = lshr i64 %1, 6
  %211 = and i64 %210, 15
  %212 = getelementptr inbounds nuw i8, ptr %0, i64 %209
  %213 = icmp eq i64 %211, 0
  br i1 %213, label %309, label %214

214:                                              ; preds = %200, %214
  %215 = phi i64 [ %307, %214 ], [ 0, %200 ]
  %216 = phi i64 [ %236, %214 ], [ %208, %200 ]
  %217 = phi i64 [ %246, %214 ], [ %207, %200 ]
  %218 = phi i64 [ %256, %214 ], [ %206, %200 ]
  %219 = phi i64 [ %266, %214 ], [ %205, %200 ]
  %220 = phi i64 [ %276, %214 ], [ %204, %200 ]
  %221 = phi i64 [ %286, %214 ], [ %203, %200 ]
  %222 = phi i64 [ %296, %214 ], [ %202, %200 ]
  %223 = phi i64 [ %306, %214 ], [ %201, %200 ]
  %224 = shl nuw i64 %215, 6
  %225 = getelementptr inbounds nuw i8, ptr %212, i64 %224
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %226, i32 0, i32 3, i32 1)
  %227 = shl nuw nsw i64 %215, 3
  %228 = getelementptr inbounds nuw i8, ptr %4, i64 %227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %229 = load i64, ptr %225, align 1, !alias.scope !229, !noalias !234
  %230 = load i64, ptr %228, align 8, !alias.scope !232, !noalias !236
  %231 = xor i64 %230, %229
  %232 = add i64 %229, %216
  %233 = and i64 %231, 4294967295
  %234 = lshr i64 %231, 32
  %235 = mul nuw i64 %233, %234
  %236 = add i64 %232, %235
  %237 = getelementptr inbounds nuw i8, ptr %225, i64 8
  %238 = load i64, ptr %237, align 1, !alias.scope !229, !noalias !234
  %239 = getelementptr inbounds nuw i8, ptr %228, i64 8
  %240 = load i64, ptr %239, align 8, !alias.scope !232, !noalias !236
  %241 = xor i64 %240, %238
  %242 = add i64 %238, %217
  %243 = and i64 %241, 4294967295
  %244 = lshr i64 %241, 32
  %245 = mul nuw i64 %243, %244
  %246 = add i64 %242, %245
  %247 = getelementptr inbounds nuw i8, ptr %225, i64 16
  %248 = load i64, ptr %247, align 1, !alias.scope !229, !noalias !234
  %249 = getelementptr inbounds nuw i8, ptr %228, i64 16
  %250 = load i64, ptr %249, align 8, !alias.scope !232, !noalias !236
  %251 = xor i64 %250, %248
  %252 = add i64 %248, %218
  %253 = and i64 %251, 4294967295
  %254 = lshr i64 %251, 32
  %255 = mul nuw i64 %253, %254
  %256 = add i64 %252, %255
  %257 = getelementptr inbounds nuw i8, ptr %225, i64 24
  %258 = load i64, ptr %257, align 1, !alias.scope !229, !noalias !234
  %259 = getelementptr inbounds nuw i8, ptr %228, i64 24
  %260 = load i64, ptr %259, align 8, !alias.scope !232, !noalias !236
  %261 = xor i64 %260, %258
  %262 = add i64 %258, %219
  %263 = and i64 %261, 4294967295
  %264 = lshr i64 %261, 32
  %265 = mul nuw i64 %263, %264
  %266 = add i64 %262, %265
  %267 = getelementptr inbounds nuw i8, ptr %225, i64 32
  %268 = load i64, ptr %267, align 1, !alias.scope !229, !noalias !234
  %269 = getelementptr inbounds nuw i8, ptr %228, i64 32
  %270 = load i64, ptr %269, align 8, !alias.scope !232, !noalias !236
  %271 = xor i64 %270, %268
  %272 = add i64 %268, %220
  %273 = and i64 %271, 4294967295
  %274 = lshr i64 %271, 32
  %275 = mul nuw i64 %273, %274
  %276 = add i64 %272, %275
  %277 = getelementptr inbounds nuw i8, ptr %225, i64 40
  %278 = load i64, ptr %277, align 1, !alias.scope !229, !noalias !234
  %279 = getelementptr inbounds nuw i8, ptr %228, i64 40
  %280 = load i64, ptr %279, align 8, !alias.scope !232, !noalias !236
  %281 = xor i64 %280, %278
  %282 = add i64 %278, %221
  %283 = and i64 %281, 4294967295
  %284 = lshr i64 %281, 32
  %285 = mul nuw i64 %283, %284
  %286 = add i64 %282, %285
  %287 = getelementptr inbounds nuw i8, ptr %225, i64 48
  %288 = load i64, ptr %287, align 1, !alias.scope !229, !noalias !234
  %289 = getelementptr inbounds nuw i8, ptr %228, i64 48
  %290 = load i64, ptr %289, align 8, !alias.scope !232, !noalias !236
  %291 = xor i64 %290, %288
  %292 = add i64 %288, %222
  %293 = and i64 %291, 4294967295
  %294 = lshr i64 %291, 32
  %295 = mul nuw i64 %293, %294
  %296 = add i64 %292, %295
  %297 = getelementptr inbounds nuw i8, ptr %225, i64 56
  %298 = load i64, ptr %297, align 1, !alias.scope !229, !noalias !234
  %299 = getelementptr inbounds nuw i8, ptr %228, i64 56
  %300 = load i64, ptr %299, align 8, !alias.scope !232, !noalias !236
  %301 = add i64 %298, %223
  %302 = xor i64 %300, %298
  %303 = and i64 %302, 4294967295
  %304 = lshr i64 %302, 32
  %305 = mul nuw i64 %303, %304
  %306 = add i64 %301, %305
  %307 = add nuw nsw i64 %215, 1
  %308 = icmp eq i64 %307, %211
  br i1 %308, label %309, label %214

309:                                              ; preds = %214, %200
  %310 = phi i64 [ %201, %200 ], [ %306, %214 ]
  %311 = phi i64 [ %202, %200 ], [ %296, %214 ]
  %312 = phi i64 [ %203, %200 ], [ %286, %214 ]
  %313 = phi i64 [ %204, %200 ], [ %276, %214 ]
  %314 = phi i64 [ %205, %200 ], [ %266, %214 ]
  %315 = phi i64 [ %206, %200 ], [ %256, %214 ]
  %316 = phi i64 [ %207, %200 ], [ %246, %214 ]
  %317 = phi i64 [ %208, %200 ], [ %236, %214 ]
  %318 = and i64 %1, 63
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %402, label %320

320:                                              ; preds = %309
  %321 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %322 = getelementptr inbounds i8, ptr %321, i64 -64
  %323 = getelementptr inbounds nuw i8, ptr %4, i64 121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %324 = load i64, ptr %322, align 1, !alias.scope !237, !noalias !242
  %325 = load i64, ptr %323, align 1, !alias.scope !240, !noalias !244
  %326 = xor i64 %325, %324
  %327 = add i64 %324, %317
  %328 = and i64 %326, 4294967295
  %329 = lshr i64 %326, 32
  %330 = mul nuw i64 %328, %329
  %331 = add i64 %327, %330
  %332 = getelementptr inbounds i8, ptr %321, i64 -56
  %333 = load i64, ptr %332, align 1, !alias.scope !237, !noalias !242
  %334 = getelementptr inbounds nuw i8, ptr %4, i64 129
  %335 = load i64, ptr %334, align 1, !alias.scope !240, !noalias !244
  %336 = xor i64 %335, %333
  %337 = add i64 %333, %316
  %338 = and i64 %336, 4294967295
  %339 = lshr i64 %336, 32
  %340 = mul nuw i64 %338, %339
  %341 = add i64 %337, %340
  %342 = getelementptr inbounds i8, ptr %321, i64 -48
  %343 = load i64, ptr %342, align 1, !alias.scope !237, !noalias !242
  %344 = getelementptr inbounds nuw i8, ptr %4, i64 137
  %345 = load i64, ptr %344, align 1, !alias.scope !240, !noalias !244
  %346 = xor i64 %345, %343
  %347 = add i64 %343, %315
  %348 = and i64 %346, 4294967295
  %349 = lshr i64 %346, 32
  %350 = mul nuw i64 %348, %349
  %351 = add i64 %347, %350
  %352 = getelementptr inbounds i8, ptr %321, i64 -40
  %353 = load i64, ptr %352, align 1, !alias.scope !237, !noalias !242
  %354 = getelementptr inbounds nuw i8, ptr %4, i64 145
  %355 = load i64, ptr %354, align 1, !alias.scope !240, !noalias !244
  %356 = xor i64 %355, %353
  %357 = add i64 %353, %314
  %358 = and i64 %356, 4294967295
  %359 = lshr i64 %356, 32
  %360 = mul nuw i64 %358, %359
  %361 = add i64 %357, %360
  %362 = getelementptr inbounds i8, ptr %321, i64 -32
  %363 = load i64, ptr %362, align 1, !alias.scope !237, !noalias !242
  %364 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %365 = load i64, ptr %364, align 1, !alias.scope !240, !noalias !244
  %366 = xor i64 %365, %363
  %367 = add i64 %363, %313
  %368 = and i64 %366, 4294967295
  %369 = lshr i64 %366, 32
  %370 = mul nuw i64 %368, %369
  %371 = add i64 %367, %370
  %372 = getelementptr inbounds i8, ptr %321, i64 -24
  %373 = load i64, ptr %372, align 1, !alias.scope !237, !noalias !242
  %374 = getelementptr inbounds nuw i8, ptr %4, i64 161
  %375 = load i64, ptr %374, align 1, !alias.scope !240, !noalias !244
  %376 = xor i64 %375, %373
  %377 = add i64 %373, %312
  %378 = and i64 %376, 4294967295
  %379 = lshr i64 %376, 32
  %380 = mul nuw i64 %378, %379
  %381 = add i64 %377, %380
  %382 = getelementptr inbounds i8, ptr %321, i64 -16
  %383 = load i64, ptr %382, align 1, !alias.scope !237, !noalias !242
  %384 = getelementptr inbounds nuw i8, ptr %4, i64 169
  %385 = load i64, ptr %384, align 1, !alias.scope !240, !noalias !244
  %386 = xor i64 %385, %383
  %387 = add i64 %383, %311
  %388 = and i64 %386, 4294967295
  %389 = lshr i64 %386, 32
  %390 = mul nuw i64 %388, %389
  %391 = add i64 %387, %390
  %392 = getelementptr inbounds i8, ptr %321, i64 -8
  %393 = load i64, ptr %392, align 1, !alias.scope !237, !noalias !242
  %394 = getelementptr inbounds nuw i8, ptr %4, i64 177
  %395 = load i64, ptr %394, align 1, !alias.scope !240, !noalias !244
  %396 = add i64 %393, %310
  %397 = xor i64 %395, %393
  %398 = and i64 %397, 4294967295
  %399 = lshr i64 %397, 32
  %400 = mul nuw i64 %398, %399
  %401 = add i64 %396, %400
  br label %402

402:                                              ; preds = %320, %309
  %403 = phi i64 [ %310, %309 ], [ %401, %320 ]
  %404 = phi i64 [ %311, %309 ], [ %391, %320 ]
  %405 = phi i64 [ %312, %309 ], [ %381, %320 ]
  %406 = phi i64 [ %313, %309 ], [ %371, %320 ]
  %407 = phi i64 [ %314, %309 ], [ %361, %320 ]
  %408 = phi i64 [ %315, %309 ], [ %351, %320 ]
  %409 = phi i64 [ %316, %309 ], [ %341, %320 ]
  %410 = phi i64 [ %317, %309 ], [ %331, %320 ]
  %411 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %412 = mul i64 %1, -7046029288634856825
  %413 = load i64, ptr %411, align 1, !alias.scope !245, !noalias !248
  %414 = xor i64 %413, %410
  %415 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %416 = load i64, ptr %415, align 1, !alias.scope !245, !noalias !248
  %417 = xor i64 %416, %409
  %418 = zext i64 %414 to i128
  %419 = zext i64 %417 to i128
  %420 = mul nuw i128 %419, %418
  %421 = lshr i128 %420, 64
  %422 = xor i128 %421, %420
  %423 = trunc i128 %422 to i64
  %424 = add i64 %412, %423
  %425 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %426 = load i64, ptr %425, align 1, !alias.scope !245, !noalias !252
  %427 = xor i64 %426, %408
  %428 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %429 = load i64, ptr %428, align 1, !alias.scope !245, !noalias !252
  %430 = xor i64 %429, %407
  %431 = zext i64 %427 to i128
  %432 = zext i64 %430 to i128
  %433 = mul nuw i128 %432, %431
  %434 = lshr i128 %433, 64
  %435 = xor i128 %434, %433
  %436 = trunc i128 %435 to i64
  %437 = add i64 %424, %436
  %438 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %439 = load i64, ptr %438, align 1, !alias.scope !245, !noalias !254
  %440 = xor i64 %439, %406
  %441 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %442 = load i64, ptr %441, align 1, !alias.scope !245, !noalias !254
  %443 = xor i64 %442, %405
  %444 = zext i64 %440 to i128
  %445 = zext i64 %443 to i128
  %446 = mul nuw i128 %445, %444
  %447 = lshr i128 %446, 64
  %448 = xor i128 %447, %446
  %449 = trunc i128 %448 to i64
  %450 = add i64 %437, %449
  %451 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %452 = load i64, ptr %451, align 1, !alias.scope !245, !noalias !256
  %453 = xor i64 %452, %404
  %454 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %455 = load i64, ptr %454, align 1, !alias.scope !245, !noalias !256
  %456 = xor i64 %455, %403
  %457 = zext i64 %453 to i128
  %458 = zext i64 %456 to i128
  %459 = mul nuw i128 %458, %457
  %460 = lshr i128 %459, 64
  %461 = xor i128 %460, %459
  %462 = trunc i128 %461 to i64
  %463 = add i64 %450, %462
  %464 = lshr i64 %463, 37
  %465 = xor i64 %464, %463
  %466 = mul i64 %465, 1609587791953885689
  %467 = lshr i64 %466, 32
  %468 = xor i64 %467, %466
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #18
  br label %469

469:                                              ; preds = %6, %402
  %470 = phi i64 [ %7, %6 ], [ %468, %402 ]
  ret i64 %470
}

; Function Attrs: nounwind uwtable
define dso_local i64 @XXH3_64bits_withSeed_dispatch(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %95

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %31, !prof !68

7:                                                ; preds = %5
  %8 = add i64 %2, 7458650908927343033
  %9 = sub i64 -5812251307325107654, %2
  %10 = load i64, ptr %0, align 1
  %11 = xor i64 %10, %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = xor i64 %14, %9
  %16 = tail call noundef i64 @llvm.bswap.i64(i64 %11)
  %17 = add i64 %16, %1
  %18 = add i64 %17, %15
  %19 = zext i64 %11 to i128
  %20 = zext i64 %15 to i128
  %21 = mul nuw i128 %20, %19
  %22 = lshr i128 %21, 64
  %23 = xor i128 %22, %21
  %24 = trunc i128 %23 to i64
  %25 = add i64 %18, %24
  %26 = lshr i64 %25, 37
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, 1609587791953885689
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  br label %284

31:                                               ; preds = %5
  %32 = icmp samesign ugt i64 %1, 3
  br i1 %32, label %33, label %60, !prof !68

33:                                               ; preds = %31
  %34 = trunc i64 %2 to i32
  %35 = tail call noundef i32 @llvm.bswap.i32(i32 %34)
  %36 = zext i32 %35 to i64
  %37 = shl nuw i64 %36, 32
  %38 = xor i64 %37, %2
  %39 = load i32, ptr %0, align 1
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %41 = getelementptr inbounds i8, ptr %40, i64 -4
  %42 = load i32, ptr %41, align 1
  %43 = sub i64 -4090762196417718878, %38
  %44 = zext i32 %42 to i64
  %45 = zext i32 %39 to i64
  %46 = shl nuw i64 %45, 32
  %47 = or disjoint i64 %46, %44
  %48 = xor i64 %47, %43
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 49)
  %50 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 24)
  %51 = xor i64 %50, %49
  %52 = xor i64 %51, %48
  %53 = mul i64 %52, -6939452855193903323
  %54 = lshr i64 %53, 35
  %55 = add nuw nsw i64 %54, %1
  %56 = xor i64 %55, %53
  %57 = mul i64 %56, -6939452855193903323
  %58 = lshr i64 %57, 28
  %59 = xor i64 %58, %57
  br label %284

60:                                               ; preds = %31
  %61 = icmp eq i64 %1, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %60
  %63 = load i8, ptr %0, align 1, !tbaa !9
  %64 = lshr i64 %1, 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !9
  %67 = getelementptr i8, ptr %0, i64 %1
  %68 = getelementptr i8, ptr %67, i64 -1
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = zext i8 %63 to i64
  %71 = shl nuw nsw i64 %70, 16
  %72 = zext i8 %66 to i64
  %73 = shl nuw nsw i64 %72, 24
  %74 = or disjoint i64 %73, %71
  %75 = zext i8 %69 to i64
  %76 = or disjoint i64 %74, %75
  %77 = shl nuw nsw i64 %1, 8
  %78 = or disjoint i64 %76, %77
  %79 = add i64 %2, 2267503259
  %80 = xor i64 %78, %79
  %81 = mul i64 %80, -7046029288634856825
  %82 = lshr i64 %81, 37
  %83 = xor i64 %82, %81
  %84 = mul i64 %83, 1609587791953885689
  %85 = lshr i64 %84, 32
  %86 = xor i64 %85, %84
  br label %284

87:                                               ; preds = %60
  %88 = add i64 %2, -7046029288634856825
  %89 = xor i64 %88, -8707998980786479652
  %90 = lshr i64 %89, 37
  %91 = xor i64 %90, %89
  %92 = mul i64 %91, 1609587791953885689
  %93 = lshr i64 %92, 32
  %94 = xor i64 %93, %92
  br label %284

95:                                               ; preds = %3
  %96 = icmp ult i64 %1, 129
  br i1 %96, label %97, label %239

97:                                               ; preds = %95
  %98 = mul i64 %1, -7046029288634856825
  %99 = icmp samesign ugt i64 %1, 32
  br i1 %99, label %100, label %202

100:                                              ; preds = %97
  %101 = icmp samesign ugt i64 %1, 64
  br i1 %101, label %102, label %169

102:                                              ; preds = %100
  %103 = icmp samesign ugt i64 %1, 96
  br i1 %103, label %104, label %136

104:                                              ; preds = %102
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %106 = load i64, ptr %105, align 1, !noalias !258
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %108 = load i64, ptr %107, align 1, !noalias !258
  %109 = add i64 %2, 4554437623014685352
  %110 = xor i64 %106, %109
  %111 = sub i64 2111919702937427193, %2
  %112 = xor i64 %108, %111
  %113 = zext i64 %110 to i128
  %114 = zext i64 %112 to i128
  %115 = mul nuw i128 %114, %113
  %116 = lshr i128 %115, 64
  %117 = xor i128 %116, %115
  %118 = trunc i128 %117 to i64
  %119 = add i64 %98, %118
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %121 = getelementptr inbounds i8, ptr %120, i64 -64
  %122 = load i64, ptr %121, align 1, !noalias !261
  %123 = getelementptr inbounds i8, ptr %120, i64 -56
  %124 = load i64, ptr %123, align 1, !noalias !261
  %125 = add i64 %2, 3556072174620004746
  %126 = xor i64 %122, %125
  %127 = sub i64 7238261902898274248, %2
  %128 = xor i64 %124, %127
  %129 = zext i64 %126 to i128
  %130 = zext i64 %128 to i128
  %131 = mul nuw i128 %130, %129
  %132 = lshr i128 %131, 64
  %133 = xor i128 %132, %131
  %134 = trunc i128 %133 to i64
  %135 = add i64 %119, %134
  br label %136

136:                                              ; preds = %104, %102
  %137 = phi i64 [ %135, %104 ], [ %98, %102 ]
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %139 = load i64, ptr %138, align 1, !noalias !264
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %141 = load i64, ptr %140, align 1, !noalias !264
  %142 = add i64 %2, -3818837453329782724
  %143 = xor i64 %139, %142
  %144 = sub i64 -6688317018830679928, %2
  %145 = xor i64 %141, %144
  %146 = zext i64 %143 to i128
  %147 = zext i64 %145 to i128
  %148 = mul nuw i128 %147, %146
  %149 = lshr i128 %148, 64
  %150 = xor i128 %149, %148
  %151 = trunc i128 %150 to i64
  %152 = add i64 %137, %151
  %153 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %154 = getelementptr inbounds i8, ptr %153, i64 -48
  %155 = load i64, ptr %154, align 1, !noalias !267
  %156 = getelementptr inbounds i8, ptr %153, i64 -40
  %157 = load i64, ptr %156, align 1, !noalias !267
  %158 = add i64 %2, 5690594596133299313
  %159 = xor i64 %155, %158
  %160 = sub i64 -2833645246901970632, %2
  %161 = xor i64 %157, %160
  %162 = zext i64 %159 to i128
  %163 = zext i64 %161 to i128
  %164 = mul nuw i128 %163, %162
  %165 = lshr i128 %164, 64
  %166 = xor i128 %165, %164
  %167 = trunc i128 %166 to i64
  %168 = add i64 %152, %167
  br label %169

169:                                              ; preds = %136, %100
  %170 = phi i64 [ %168, %136 ], [ %98, %100 ]
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %172 = load i64, ptr %171, align 1, !noalias !270
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %174 = load i64, ptr %173, align 1, !noalias !270
  %175 = add i64 %2, 8711581037947681227
  %176 = xor i64 %172, %175
  %177 = sub i64 2410270004345854594, %2
  %178 = xor i64 %174, %177
  %179 = zext i64 %176 to i128
  %180 = zext i64 %178 to i128
  %181 = mul nuw i128 %180, %179
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %170, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %187 = getelementptr inbounds i8, ptr %186, i64 -32
  %188 = load i64, ptr %187, align 1, !noalias !273
  %189 = getelementptr inbounds i8, ptr %186, i64 -24
  %190 = load i64, ptr %189, align 1, !noalias !273
  %191 = add i64 %2, -8204357891075471176
  %192 = xor i64 %188, %191
  %193 = sub i64 5487137525590930912, %2
  %194 = xor i64 %190, %193
  %195 = zext i64 %192 to i128
  %196 = zext i64 %194 to i128
  %197 = mul nuw i128 %196, %195
  %198 = lshr i128 %197, 64
  %199 = xor i128 %198, %197
  %200 = trunc i128 %199 to i64
  %201 = add i64 %185, %200
  br label %202

202:                                              ; preds = %97, %169
  %203 = phi i64 [ %201, %169 ], [ %98, %97 ]
  %204 = load i64, ptr %0, align 1, !noalias !276
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %206 = load i64, ptr %205, align 1, !noalias !276
  %207 = add i64 %2, -4734510112055689544
  %208 = xor i64 %204, %207
  %209 = sub i64 2066345149520216444, %2
  %210 = xor i64 %206, %209
  %211 = zext i64 %208 to i128
  %212 = zext i64 %210 to i128
  %213 = mul nuw i128 %212, %211
  %214 = lshr i128 %213, 64
  %215 = xor i128 %214, %213
  %216 = trunc i128 %215 to i64
  %217 = add i64 %203, %216
  %218 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %219 = getelementptr inbounds i8, ptr %218, i64 -16
  %220 = load i64, ptr %219, align 1, !noalias !279
  %221 = getelementptr inbounds i8, ptr %218, i64 -8
  %222 = load i64, ptr %221, align 1, !noalias !279
  %223 = add i64 %2, -2623469361688619810
  %224 = xor i64 %220, %223
  %225 = sub i64 2262974939099578482, %2
  %226 = xor i64 %222, %225
  %227 = zext i64 %224 to i128
  %228 = zext i64 %226 to i128
  %229 = mul nuw i128 %228, %227
  %230 = lshr i128 %229, 64
  %231 = xor i128 %230, %229
  %232 = trunc i128 %231 to i64
  %233 = add i64 %217, %232
  %234 = lshr i64 %233, 37
  %235 = xor i64 %234, %233
  %236 = mul i64 %235, 1609587791953885689
  %237 = lshr i64 %236, 32
  %238 = xor i64 %237, %236
  br label %284

239:                                              ; preds = %95
  %240 = icmp ult i64 %1, 241
  br i1 %240, label %241, label %243

241:                                              ; preds = %239
  %242 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %284

243:                                              ; preds = %239
  %244 = load ptr, ptr @g_dispatch_hashLong64_seed, align 8, !tbaa !93
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %281

246:                                              ; preds = %243
  %247 = tail call { i32, i32, i32, i32 } asm "# Call CPUID\0A\09cpuid\0A\09", "={bx},={ax},={cx},={dx},1,2,~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #17, !srcloc !95
  %248 = extractvalue { i32, i32, i32, i32 } %247, 1
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %279, label %250, !prof !96

250:                                              ; preds = %246
  %251 = tail call { i32, i32, i32, i32 } asm "# Call CPUID\0A\09cpuid\0A\09", "={bx},={ax},={cx},={dx},1,2,~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #17, !srcloc !95
  %252 = extractvalue { i32, i32, i32, i32 } %251, 3
  %253 = and i32 %252, 67108864
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %279, label %255, !prof !96

255:                                              ; preds = %250
  %256 = extractvalue { i32, i32, i32, i32 } %251, 2
  %257 = icmp ugt i32 %248, 6
  %258 = and i32 %256, 201326592
  %259 = icmp eq i32 %258, 201326592
  %260 = select i1 %257, i1 %259, i1 false
  br i1 %260, label %261, label %279, !prof !97

261:                                              ; preds = %255
  %262 = tail call { i32, i32, i32, i32 } asm "# Call CPUID\0A\09cpuid\0A\09", "={bx},={ax},={cx},={dx},1,2,~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #17, !srcloc !95
  %263 = extractvalue { i32, i32, i32, i32 } %262, 0
  %264 = tail call { i32, i32 } asm "# Call XGETBV\0A\09#\0A\09# Older assemblers (e.g. macOS's ancient GAS version) don't support\0A\09# the XGETBV opcode, so we encode it by hand instead.\0A\09# See <https://github.com/asmjit/asmjit/issues/78> for details.\0A\09.byte   0x0f, 0x01, 0xd0\0A\09", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #17, !srcloc !98
  %265 = extractvalue { i32, i32 } %264, 0
  %266 = zext i32 %265 to i64
  %267 = and i32 %263, 32
  %268 = icmp ne i32 %267, 0
  %269 = and i64 %266, 6
  %270 = icmp eq i64 %269, 6
  %271 = select i1 %268, i1 %270, i1 false
  br i1 %271, label %272, label %279

272:                                              ; preds = %261
  %273 = and i32 %263, 65536
  %274 = icmp ne i32 %273, 0
  %275 = and i64 %266, 230
  %276 = icmp eq i64 %275, 230
  %277 = select i1 %274, i1 %276, i1 false
  %278 = select i1 %277, ptr @XXH3_hashLong_64b_withSeed_forceavx512, ptr @XXH3_hashLong_64b_withSeed_forceavx2
  br label %279

279:                                              ; preds = %272, %261, %255, %250, %246
  %280 = phi ptr [ @XXH3_hashLong_64b_withSeed_forcesse2, %255 ], [ @XXH3_hashLong_64b_withSeed_forcesse2, %261 ], [ @XXH3_hashLong_64b_withSeed_forcescalar, %246 ], [ @XXH3_hashLong_64b_withSeed_forcescalar, %250 ], [ %278, %272 ]
  store ptr %280, ptr @g_dispatch_hashLong64_seed, align 8, !tbaa !93
  br label %281

281:                                              ; preds = %243, %279
  %282 = phi ptr [ %280, %279 ], [ %244, %243 ]
  %283 = tail call i64 %282(ptr noundef %0, i64 noundef range(i64 241, 0) %1, i64 noundef %2) #18, !callees !282
  br label %284

284:                                              ; preds = %87, %62, %33, %7, %281, %241, %202
  %285 = phi i64 [ %238, %202 ], [ %242, %241 ], [ %283, %281 ], [ %30, %7 ], [ %59, %33 ], [ %86, %62 ], [ %94, %87 ]
  ret i64 %285
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_defaultSecret(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #13 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_defaultVec(ptr noundef %0, i64 noundef %1)
  ret i64 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_defaultVec(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #3 {
  %3 = lshr i64 %1, 10
  %4 = icmp ult i64 %1, 1024
  br i1 %4, label %119, label %5

5:                                                ; preds = %2, %76
  %6 = phi <2 x i64> [ %116, %76 ], [ <i64 2870177450012600261, i64 2654435761>, %2 ]
  %7 = phi <2 x i64> [ %106, %76 ], [ <i64 -8796714831421723037, i64 2246822519>, %2 ]
  %8 = phi <2 x i64> [ %96, %76 ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %9 = phi <2 x i64> [ %86, %76 ], [ <i64 3266489917, i64 -7046029288634856825>, %2 ]
  %10 = phi i64 [ %117, %76 ], [ 0, %2 ]
  %11 = shl nuw i64 %10, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %5, %13
  %14 = phi <2 x i64> [ %6, %5 ], [ %73, %13 ]
  %15 = phi <2 x i64> [ %7, %5 ], [ %60, %13 ]
  %16 = phi <2 x i64> [ %8, %5 ], [ %47, %13 ]
  %17 = phi <2 x i64> [ %9, %5 ], [ %34, %13 ]
  %18 = phi i64 [ 0, %5 ], [ %74, %13 ]
  %19 = shl nuw nsw i64 %18, 6
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 %19
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %21, i32 0, i32 3, i32 1)
  %22 = shl nuw nsw i64 %18, 3
  %23 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %22
  %24 = load <2 x i64>, ptr %20, align 1, !tbaa !9, !noalias !283
  %25 = load <2 x i64>, ptr %23, align 8, !tbaa !9, !noalias !283
  %26 = xor <2 x i64> %25, %24
  %27 = bitcast <2 x i64> %26 to <4 x i32>
  %28 = shufflevector <4 x i32> %27, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %29 = bitcast <4 x i32> %28 to <2 x i64>
  %30 = and <2 x i64> %26, splat (i64 4294967295)
  %31 = and <2 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <2 x i64> %31, %30
  %33 = add <2 x i64> %17, %24
  %34 = add <2 x i64> %33, %32
  %35 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %36 = load <2 x i64>, ptr %35, align 1, !tbaa !9, !noalias !283
  %37 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %38 = load <2 x i64>, ptr %37, align 8, !tbaa !9, !noalias !283
  %39 = xor <2 x i64> %38, %36
  %40 = bitcast <2 x i64> %39 to <4 x i32>
  %41 = shufflevector <4 x i32> %40, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %42 = bitcast <4 x i32> %41 to <2 x i64>
  %43 = and <2 x i64> %39, splat (i64 4294967295)
  %44 = and <2 x i64> %42, splat (i64 4294967295)
  %45 = mul nuw <2 x i64> %44, %43
  %46 = add <2 x i64> %16, %36
  %47 = add <2 x i64> %46, %45
  %48 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %49 = load <2 x i64>, ptr %48, align 1, !tbaa !9, !noalias !283
  %50 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %51 = load <2 x i64>, ptr %50, align 8, !tbaa !9, !noalias !283
  %52 = xor <2 x i64> %51, %49
  %53 = bitcast <2 x i64> %52 to <4 x i32>
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %55 = bitcast <4 x i32> %54 to <2 x i64>
  %56 = and <2 x i64> %52, splat (i64 4294967295)
  %57 = and <2 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <2 x i64> %57, %56
  %59 = add <2 x i64> %15, %49
  %60 = add <2 x i64> %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %20, i64 48
  %62 = load <2 x i64>, ptr %61, align 1, !tbaa !9, !noalias !283
  %63 = getelementptr inbounds nuw i8, ptr %23, i64 48
  %64 = load <2 x i64>, ptr %63, align 8, !tbaa !9, !noalias !283
  %65 = xor <2 x i64> %64, %62
  %66 = bitcast <2 x i64> %65 to <4 x i32>
  %67 = shufflevector <4 x i32> %66, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %68 = bitcast <4 x i32> %67 to <2 x i64>
  %69 = and <2 x i64> %65, splat (i64 4294967295)
  %70 = and <2 x i64> %68, splat (i64 4294967295)
  %71 = mul nuw <2 x i64> %70, %69
  %72 = add <2 x i64> %14, %62
  %73 = add <2 x i64> %72, %71
  %74 = add nuw nsw i64 %18, 1
  %75 = icmp eq i64 %74, 16
  br i1 %75, label %76, label %13

76:                                               ; preds = %13
  %77 = lshr <2 x i64> %34, splat (i64 47)
  %78 = xor <2 x i64> %77, %34
  %79 = xor <2 x i64> %78, <i64 -4329134394285701654, i64 -1485321483350670907>
  %80 = bitcast <2 x i64> %79 to <4 x i32>
  %81 = shufflevector <4 x i32> %80, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %82 = bitcast <4 x i32> %81 to <2 x i64>
  %83 = and <2 x i64> %79, splat (i64 4294967295)
  %84 = mul nuw <2 x i64> %83, splat (i64 2654435761)
  %85 = mul <2 x i64> %82, splat (i64 -7046029290881679360)
  %86 = add <2 x i64> %85, %84
  %87 = lshr <2 x i64> %47, splat (i64 47)
  %88 = xor <2 x i64> %87, %47
  %89 = xor <2 x i64> %88, <i64 5321830579834785047, i64 -7032137544937171245>
  %90 = bitcast <2 x i64> %89 to <4 x i32>
  %91 = shufflevector <4 x i32> %90, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %92 = bitcast <4 x i32> %91 to <2 x i64>
  %93 = and <2 x i64> %89, splat (i64 4294967295)
  %94 = mul nuw <2 x i64> %93, splat (i64 2654435761)
  %95 = mul <2 x i64> %92, splat (i64 -7046029290881679360)
  %96 = add <2 x i64> %95, %94
  %97 = lshr <2 x i64> %60, splat (i64 47)
  %98 = xor <2 x i64> %97, %60
  %99 = xor <2 x i64> %98, <i64 -242834301215959509, i64 -3588858202114426737>
  %100 = bitcast <2 x i64> %99 to <4 x i32>
  %101 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %102 = bitcast <4 x i32> %101 to <2 x i64>
  %103 = and <2 x i64> %99, splat (i64 4294967295)
  %104 = mul nuw <2 x i64> %103, splat (i64 2654435761)
  %105 = mul <2 x i64> %102, splat (i64 -7046029290881679360)
  %106 = add <2 x i64> %105, %104
  %107 = lshr <2 x i64> %73, splat (i64 47)
  %108 = xor <2 x i64> %107, %73
  %109 = xor <2 x i64> %108, <i64 2883454493032893253, i64 9097354517224871855>
  %110 = bitcast <2 x i64> %109 to <4 x i32>
  %111 = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %112 = bitcast <4 x i32> %111 to <2 x i64>
  %113 = and <2 x i64> %109, splat (i64 4294967295)
  %114 = mul nuw <2 x i64> %113, splat (i64 2654435761)
  %115 = mul <2 x i64> %112, splat (i64 -7046029290881679360)
  %116 = add <2 x i64> %115, %114
  %117 = add nuw nsw i64 %10, 1
  %118 = icmp eq i64 %117, %3
  br i1 %118, label %119, label %5

119:                                              ; preds = %76, %2
  %120 = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %2 ], [ %116, %76 ]
  %121 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %2 ], [ %106, %76 ]
  %122 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %96, %76 ]
  %123 = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %2 ], [ %86, %76 ]
  %124 = and i64 %1, -1024
  %125 = lshr i64 %1, 6
  %126 = and i64 %125, 15
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 %124
  %128 = icmp eq i64 %126, 0
  br i1 %128, label %192, label %129

129:                                              ; preds = %119, %129
  %130 = phi <2 x i64> [ %189, %129 ], [ %120, %119 ]
  %131 = phi <2 x i64> [ %176, %129 ], [ %121, %119 ]
  %132 = phi <2 x i64> [ %163, %129 ], [ %122, %119 ]
  %133 = phi <2 x i64> [ %150, %129 ], [ %123, %119 ]
  %134 = phi i64 [ %190, %129 ], [ 0, %119 ]
  %135 = shl nuw i64 %134, 6
  %136 = getelementptr inbounds nuw i8, ptr %127, i64 %135
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %137, i32 0, i32 3, i32 1)
  %138 = shl nuw nsw i64 %134, 3
  %139 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %138
  %140 = load <2 x i64>, ptr %136, align 1, !tbaa !9, !noalias !286
  %141 = load <2 x i64>, ptr %139, align 8, !tbaa !9, !noalias !286
  %142 = xor <2 x i64> %141, %140
  %143 = bitcast <2 x i64> %142 to <4 x i32>
  %144 = shufflevector <4 x i32> %143, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %145 = bitcast <4 x i32> %144 to <2 x i64>
  %146 = and <2 x i64> %142, splat (i64 4294967295)
  %147 = and <2 x i64> %145, splat (i64 4294967295)
  %148 = mul nuw <2 x i64> %147, %146
  %149 = add <2 x i64> %133, %140
  %150 = add <2 x i64> %149, %148
  %151 = getelementptr inbounds nuw i8, ptr %136, i64 16
  %152 = load <2 x i64>, ptr %151, align 1, !tbaa !9, !noalias !286
  %153 = getelementptr inbounds nuw i8, ptr %139, i64 16
  %154 = load <2 x i64>, ptr %153, align 8, !tbaa !9, !noalias !286
  %155 = xor <2 x i64> %154, %152
  %156 = bitcast <2 x i64> %155 to <4 x i32>
  %157 = shufflevector <4 x i32> %156, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %158 = bitcast <4 x i32> %157 to <2 x i64>
  %159 = and <2 x i64> %155, splat (i64 4294967295)
  %160 = and <2 x i64> %158, splat (i64 4294967295)
  %161 = mul nuw <2 x i64> %160, %159
  %162 = add <2 x i64> %132, %152
  %163 = add <2 x i64> %162, %161
  %164 = getelementptr inbounds nuw i8, ptr %136, i64 32
  %165 = load <2 x i64>, ptr %164, align 1, !tbaa !9, !noalias !286
  %166 = getelementptr inbounds nuw i8, ptr %139, i64 32
  %167 = load <2 x i64>, ptr %166, align 8, !tbaa !9, !noalias !286
  %168 = xor <2 x i64> %167, %165
  %169 = bitcast <2 x i64> %168 to <4 x i32>
  %170 = shufflevector <4 x i32> %169, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %171 = bitcast <4 x i32> %170 to <2 x i64>
  %172 = and <2 x i64> %168, splat (i64 4294967295)
  %173 = and <2 x i64> %171, splat (i64 4294967295)
  %174 = mul nuw <2 x i64> %173, %172
  %175 = add <2 x i64> %131, %165
  %176 = add <2 x i64> %175, %174
  %177 = getelementptr inbounds nuw i8, ptr %136, i64 48
  %178 = load <2 x i64>, ptr %177, align 1, !tbaa !9, !noalias !286
  %179 = getelementptr inbounds nuw i8, ptr %139, i64 48
  %180 = load <2 x i64>, ptr %179, align 8, !tbaa !9, !noalias !286
  %181 = xor <2 x i64> %180, %178
  %182 = bitcast <2 x i64> %181 to <4 x i32>
  %183 = shufflevector <4 x i32> %182, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %184 = bitcast <4 x i32> %183 to <2 x i64>
  %185 = and <2 x i64> %181, splat (i64 4294967295)
  %186 = and <2 x i64> %184, splat (i64 4294967295)
  %187 = mul nuw <2 x i64> %186, %185
  %188 = add <2 x i64> %130, %178
  %189 = add <2 x i64> %188, %187
  %190 = add nuw nsw i64 %134, 1
  %191 = icmp eq i64 %190, %126
  br i1 %191, label %192, label %129

192:                                              ; preds = %129, %119
  %193 = phi <2 x i64> [ %120, %119 ], [ %189, %129 ]
  %194 = phi <2 x i64> [ %121, %119 ], [ %176, %129 ]
  %195 = phi <2 x i64> [ %122, %119 ], [ %163, %129 ]
  %196 = phi <2 x i64> [ %123, %119 ], [ %150, %129 ]
  %197 = and i64 %1, 63
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %245, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %201 = getelementptr inbounds i8, ptr %200, i64 -64
  %202 = load <2 x i64>, ptr %201, align 1, !tbaa !9, !noalias !289
  %203 = xor <2 x i64> %202, <i64 -1556992608276218209, i64 -4196251135427498811>
  %204 = bitcast <2 x i64> %203 to <4 x i32>
  %205 = shufflevector <4 x i32> %204, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %206 = bitcast <4 x i32> %205 to <2 x i64>
  %207 = and <2 x i64> %203, splat (i64 4294967295)
  %208 = and <2 x i64> %206, splat (i64 4294967295)
  %209 = mul nuw <2 x i64> %208, %207
  %210 = add <2 x i64> %196, %202
  %211 = add <2 x i64> %210, %209
  %212 = getelementptr inbounds i8, ptr %200, i64 -48
  %213 = load <2 x i64>, ptr %212, align 1, !tbaa !9, !noalias !289
  %214 = xor <2 x i64> %213, <i64 1723580219865931905, i64 -3221803331004277491>
  %215 = bitcast <2 x i64> %214 to <4 x i32>
  %216 = shufflevector <4 x i32> %215, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %217 = bitcast <4 x i32> %216 to <2 x i64>
  %218 = and <2 x i64> %214, splat (i64 4294967295)
  %219 = and <2 x i64> %217, splat (i64 4294967295)
  %220 = mul nuw <2 x i64> %219, %218
  %221 = add <2 x i64> %195, %213
  %222 = add <2 x i64> %221, %220
  %223 = getelementptr inbounds i8, ptr %200, i64 -32
  %224 = load <2 x i64>, ptr %223, align 1, !tbaa !9, !noalias !289
  %225 = xor <2 x i64> %224, <i64 3143064850383918358, i64 -8071399103737053674>
  %226 = bitcast <2 x i64> %225 to <4 x i32>
  %227 = shufflevector <4 x i32> %226, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %228 = bitcast <4 x i32> %227 to <2 x i64>
  %229 = and <2 x i64> %225, splat (i64 4294967295)
  %230 = and <2 x i64> %228, splat (i64 4294967295)
  %231 = mul nuw <2 x i64> %230, %229
  %232 = add <2 x i64> %194, %224
  %233 = add <2 x i64> %232, %231
  %234 = getelementptr inbounds i8, ptr %200, i64 -16
  %235 = load <2 x i64>, ptr %234, align 1, !tbaa !9, !noalias !289
  %236 = xor <2 x i64> %235, <i64 5030012605302946040, i64 -5825401622958753077>
  %237 = bitcast <2 x i64> %236 to <4 x i32>
  %238 = shufflevector <4 x i32> %237, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %239 = bitcast <4 x i32> %238 to <2 x i64>
  %240 = and <2 x i64> %236, splat (i64 4294967295)
  %241 = and <2 x i64> %239, splat (i64 4294967295)
  %242 = mul nuw <2 x i64> %241, %240
  %243 = add <2 x i64> %193, %235
  %244 = add <2 x i64> %243, %242
  br label %245

245:                                              ; preds = %199, %192
  %246 = phi <2 x i64> [ %193, %192 ], [ %244, %199 ]
  %247 = phi <2 x i64> [ %194, %192 ], [ %233, %199 ]
  %248 = phi <2 x i64> [ %195, %192 ], [ %222, %199 ]
  %249 = phi <2 x i64> [ %196, %192 ], [ %211, %199 ]
  %250 = mul i64 %1, -7046029288634856825
  %251 = shufflevector <2 x i64> %249, <2 x i64> %248, <2 x i32> <i32 0, i32 2>
  %252 = shufflevector <2 x i64> %247, <2 x i64> %246, <2 x i32> <i32 0, i32 2>
  %253 = shufflevector <2 x i64> %251, <2 x i64> %252, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %254 = xor <4 x i64> %253, <i64 7914194659941938988, i64 -1839215637059881052, i64 5046485836271438973, i64 5920048007935066598>
  %255 = shufflevector <2 x i64> %249, <2 x i64> %248, <2 x i32> <i32 1, i32 3>
  %256 = shufflevector <2 x i64> %247, <2 x i64> %246, <2 x i32> <i32 1, i32 3>
  %257 = shufflevector <2 x i64> %255, <2 x i64> %256, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %258 = xor <4 x i64> %257, <i64 -6611157965513653271, i64 -3433288310154277810, i64 -8055285457383852172, i64 7336514198459093435>
  %259 = zext <4 x i64> %254 to <4 x i128>
  %260 = zext <4 x i64> %258 to <4 x i128>
  %261 = mul nuw <4 x i128> %260, %259
  %262 = lshr <4 x i128> %261, splat (i128 64)
  %263 = xor <4 x i128> %262, %261
  %264 = trunc <4 x i128> %263 to <4 x i64>
  %265 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %264)
  %266 = add i64 %265, %250
  %267 = lshr i64 %266, 37
  %268 = xor i64 %267, %266
  %269 = mul i64 %268, 1609587791953885689
  %270 = lshr i64 %269, 32
  %271 = xor i64 %270, %269
  ret i64 %271
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #14

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+evex512,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1-256,-avx10.1-512,-avx10.2-256,-avx10.2-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-xop" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #8 = { noinline nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { noinline nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind memory(none) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !8}
!6 = distinct !{!6, !7, !"XXH3_hashLong_64b_internal: argument 0"}
!7 = distinct !{!7, !"XXH3_hashLong_64b_internal"}
!8 = distinct !{!8, !7, !"XXH3_hashLong_64b_internal: argument 1"}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_scrambleAcc_avx512: argument 1"}
!14 = distinct !{!14, !"XXH3_scrambleAcc_avx512"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"XXH3_scrambleAcc_avx512: argument 0"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_accumulate_512_avx512: argument 1"}
!19 = distinct !{!19, !"XXH3_accumulate_512_avx512"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"XXH3_accumulate_512_avx512: argument 2"}
!22 = !{!23, !21}
!23 = distinct !{!23, !19, !"XXH3_accumulate_512_avx512: argument 0"}
!24 = !{!23, !18}
!25 = !{!26}
!26 = distinct !{!26, !27, !"XXH3_accumulate_512_avx512: argument 1"}
!27 = distinct !{!27, !"XXH3_accumulate_512_avx512"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"XXH3_accumulate_512_avx512: argument 2"}
!30 = !{!31, !29}
!31 = distinct !{!31, !27, !"XXH3_accumulate_512_avx512: argument 0"}
!32 = !{!31, !26}
!33 = !{!34}
!34 = distinct !{!34, !35, !"XXH3_accumulate_512_avx512: argument 1"}
!35 = distinct !{!35, !"XXH3_accumulate_512_avx512"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"XXH3_accumulate_512_avx512: argument 2"}
!38 = !{!39, !37}
!39 = distinct !{!39, !35, !"XXH3_accumulate_512_avx512: argument 0"}
!40 = !{!39, !34}
!41 = !{!42}
!42 = distinct !{!42, !43, !"XXH3_accumulate_512_avx2: argument 0"}
!43 = distinct !{!43, !"XXH3_accumulate_512_avx2"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"XXH3_accumulate_512_avx2: argument 0"}
!46 = distinct !{!46, !"XXH3_accumulate_512_avx2"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"XXH3_accumulate_512_avx2: argument 0"}
!49 = distinct !{!49, !"XXH3_accumulate_512_avx2"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"XXH3_accumulate_512_sse2: argument 0"}
!52 = distinct !{!52, !"XXH3_accumulate_512_sse2"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"XXH3_accumulate_512_sse2: argument 0"}
!55 = distinct !{!55, !"XXH3_accumulate_512_sse2"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"XXH3_accumulate_512_sse2: argument 0"}
!58 = distinct !{!58, !"XXH3_accumulate_512_sse2"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"XXH3_accumulate_512_scalar: argument 0"}
!61 = distinct !{!61, !"XXH3_accumulate_512_scalar"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"XXH3_accumulate_512_scalar: argument 0"}
!64 = distinct !{!64, !"XXH3_accumulate_512_scalar"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"XXH3_accumulate_512_scalar: argument 0"}
!67 = distinct !{!67, !"XXH3_accumulate_512_scalar"}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = !{!70}
!70 = distinct !{!70, !71, !"XXH3_mix16B: argument 1"}
!71 = distinct !{!71, !"XXH3_mix16B"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"XXH3_mix16B: argument 1"}
!74 = distinct !{!74, !"XXH3_mix16B"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"XXH3_mix16B: argument 1"}
!77 = distinct !{!77, !"XXH3_mix16B"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"XXH3_mix16B: argument 1"}
!80 = distinct !{!80, !"XXH3_mix16B"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"XXH3_mix16B: argument 1"}
!83 = distinct !{!83, !"XXH3_mix16B"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"XXH3_mix16B: argument 1"}
!86 = distinct !{!86, !"XXH3_mix16B"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"XXH3_mix16B: argument 1"}
!89 = distinct !{!89, !"XXH3_mix16B"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"XXH3_mix16B: argument 1"}
!92 = distinct !{!92, !"XXH3_mix16B"}
!93 = !{!94, !94, i64 0}
!94 = !{!"any pointer", !10, i64 0}
!95 = !{i64 4115, i64 4130, i64 2152064261}
!96 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!97 = !{!"branch_weights", i32 2000, i32 2002}
!98 = !{i64 5052, i64 5068, i64 5084, i64 5166, i64 5234, i64 5312, i64 5351}
!99 = !{ptr @XXH3_hashLong_64b_defaultSecret_forceavx2, ptr @XXH3_hashLong_64b_defaultSecret_forceavx512, ptr @XXH3_hashLong_64b_defaultSecret_forcesscalar, ptr @XXH3_hashLong_64b_defaultSecret_forcesse2}
!100 = !{!101}
!101 = distinct !{!101, !102, !"XXH3_mix16B: argument 1"}
!102 = distinct !{!102, !"XXH3_mix16B"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_mix16B: argument 1"}
!105 = distinct !{!105, !"XXH3_mix16B"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"XXH3_mix16B: argument 1"}
!108 = distinct !{!108, !"XXH3_mix16B"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"XXH3_initCustomSecret_avx512: argument 0"}
!111 = distinct !{!111, !"XXH3_initCustomSecret_avx512"}
!112 = !{i32 1}
!113 = !{!114, !116}
!114 = distinct !{!114, !115, !"XXH3_hashLong_64b_internal: argument 0"}
!115 = distinct !{!115, !"XXH3_hashLong_64b_internal"}
!116 = distinct !{!116, !115, !"XXH3_hashLong_64b_internal: argument 1"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"XXH3_accumulate_512_avx512: argument 1"}
!119 = distinct !{!119, !"XXH3_accumulate_512_avx512"}
!120 = !{!121}
!121 = distinct !{!121, !119, !"XXH3_accumulate_512_avx512: argument 2"}
!122 = !{!123, !121}
!123 = distinct !{!123, !119, !"XXH3_accumulate_512_avx512: argument 0"}
!124 = !{!123, !118}
!125 = !{!126}
!126 = distinct !{!126, !127, !"XXH3_accumulate_512_avx512: argument 1"}
!127 = distinct !{!127, !"XXH3_accumulate_512_avx512"}
!128 = !{!129}
!129 = distinct !{!129, !127, !"XXH3_accumulate_512_avx512: argument 2"}
!130 = !{!131, !129}
!131 = distinct !{!131, !127, !"XXH3_accumulate_512_avx512: argument 0"}
!132 = !{!131, !126}
!133 = !{!134}
!134 = distinct !{!134, !135, !"XXH3_accumulate_512_avx512: argument 1"}
!135 = distinct !{!135, !"XXH3_accumulate_512_avx512"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"XXH3_accumulate_512_avx512: argument 2"}
!138 = !{!139, !137}
!139 = distinct !{!139, !135, !"XXH3_accumulate_512_avx512: argument 0"}
!140 = !{!139, !134}
!141 = !{!142}
!142 = distinct !{!142, !143, !"XXH3_mergeAccs: argument 1"}
!143 = distinct !{!143, !"XXH3_mergeAccs"}
!144 = !{!145, !147}
!145 = distinct !{!145, !146, !"XXH3_mix2Accs: argument 0:It3"}
!146 = distinct !{!146, !"XXH3_mix2Accs"}
!147 = distinct !{!147, !143, !"XXH3_mergeAccs: argument 0"}
!148 = !{i64 4421248}
!149 = !{!150}
!150 = distinct !{!150, !151, !"XXH3_scrambleAcc_avx2: argument 1"}
!151 = distinct !{!151, !"XXH3_scrambleAcc_avx2"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"XXH3_scrambleAcc_avx2: argument 0"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"XXH3_accumulate_512_avx2: argument 1"}
!156 = distinct !{!156, !"XXH3_accumulate_512_avx2"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"XXH3_accumulate_512_avx2: argument 2"}
!159 = !{!160, !158}
!160 = distinct !{!160, !156, !"XXH3_accumulate_512_avx2: argument 0"}
!161 = !{!160, !155}
!162 = !{!163}
!163 = distinct !{!163, !164, !"XXH3_accumulate_512_avx2: argument 1"}
!164 = distinct !{!164, !"XXH3_accumulate_512_avx2"}
!165 = !{!166}
!166 = distinct !{!166, !164, !"XXH3_accumulate_512_avx2: argument 2"}
!167 = !{!168, !166}
!168 = distinct !{!168, !164, !"XXH3_accumulate_512_avx2: argument 0"}
!169 = !{!168, !163}
!170 = !{!171}
!171 = distinct !{!171, !172, !"XXH3_accumulate_512_avx2: argument 1"}
!172 = distinct !{!172, !"XXH3_accumulate_512_avx2"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"XXH3_accumulate_512_avx2: argument 2"}
!175 = !{!176, !174}
!176 = distinct !{!176, !172, !"XXH3_accumulate_512_avx2: argument 0"}
!177 = !{!176, !171}
!178 = !{!179}
!179 = distinct !{!179, !180, !"XXH3_mergeAccs: argument 1"}
!180 = distinct !{!180, !"XXH3_mergeAccs"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"XXH3_mergeAccs: argument 0"}
!183 = !{i64 4426700}
!184 = !{!185}
!185 = distinct !{!185, !186, !"XXH3_scrambleAcc_sse2: argument 1"}
!186 = distinct !{!186, !"XXH3_scrambleAcc_sse2"}
!187 = !{!188}
!188 = distinct !{!188, !186, !"XXH3_scrambleAcc_sse2: argument 0"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"XXH3_accumulate_512_sse2: argument 1"}
!191 = distinct !{!191, !"XXH3_accumulate_512_sse2"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"XXH3_accumulate_512_sse2: argument 2"}
!194 = !{!195, !193}
!195 = distinct !{!195, !191, !"XXH3_accumulate_512_sse2: argument 0"}
!196 = !{!195, !190}
!197 = !{!198}
!198 = distinct !{!198, !199, !"XXH3_accumulate_512_sse2: argument 1"}
!199 = distinct !{!199, !"XXH3_accumulate_512_sse2"}
!200 = !{!201}
!201 = distinct !{!201, !199, !"XXH3_accumulate_512_sse2: argument 2"}
!202 = !{!203, !201}
!203 = distinct !{!203, !199, !"XXH3_accumulate_512_sse2: argument 0"}
!204 = !{!203, !198}
!205 = !{!206}
!206 = distinct !{!206, !207, !"XXH3_accumulate_512_sse2: argument 1"}
!207 = distinct !{!207, !"XXH3_accumulate_512_sse2"}
!208 = !{!209}
!209 = distinct !{!209, !207, !"XXH3_accumulate_512_sse2: argument 2"}
!210 = !{!211, !209}
!211 = distinct !{!211, !207, !"XXH3_accumulate_512_sse2: argument 0"}
!212 = !{!211, !206}
!213 = !{!214}
!214 = distinct !{!214, !215, !"XXH3_mergeAccs: argument 1"}
!215 = distinct !{!215, !"XXH3_mergeAccs"}
!216 = !{!217}
!217 = distinct !{!217, !215, !"XXH3_mergeAccs: argument 0"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"XXH3_initCustomSecret_scalar: argument 0"}
!220 = distinct !{!220, !"XXH3_initCustomSecret_scalar"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"XXH3_accumulate_512_scalar: argument 1"}
!223 = distinct !{!223, !"XXH3_accumulate_512_scalar"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"XXH3_accumulate_512_scalar: argument 2"}
!226 = !{!227, !225}
!227 = distinct !{!227, !223, !"XXH3_accumulate_512_scalar: argument 0"}
!228 = !{!227, !222}
!229 = !{!230}
!230 = distinct !{!230, !231, !"XXH3_accumulate_512_scalar: argument 1"}
!231 = distinct !{!231, !"XXH3_accumulate_512_scalar"}
!232 = !{!233}
!233 = distinct !{!233, !231, !"XXH3_accumulate_512_scalar: argument 2"}
!234 = !{!235, !233}
!235 = distinct !{!235, !231, !"XXH3_accumulate_512_scalar: argument 0"}
!236 = !{!235, !230}
!237 = !{!238}
!238 = distinct !{!238, !239, !"XXH3_accumulate_512_scalar: argument 1"}
!239 = distinct !{!239, !"XXH3_accumulate_512_scalar"}
!240 = !{!241}
!241 = distinct !{!241, !239, !"XXH3_accumulate_512_scalar: argument 2"}
!242 = !{!243, !241}
!243 = distinct !{!243, !239, !"XXH3_accumulate_512_scalar: argument 0"}
!244 = !{!243, !238}
!245 = !{!246}
!246 = distinct !{!246, !247, !"XXH3_mergeAccs: argument 1"}
!247 = distinct !{!247, !"XXH3_mergeAccs"}
!248 = !{!249, !251}
!249 = distinct !{!249, !250, !"XXH3_mix2Accs: argument 0"}
!250 = distinct !{!250, !"XXH3_mix2Accs"}
!251 = distinct !{!251, !247, !"XXH3_mergeAccs: argument 0"}
!252 = !{!253, !251}
!253 = distinct !{!253, !250, !"XXH3_mix2Accs: argument 0:It1"}
!254 = !{!255, !251}
!255 = distinct !{!255, !250, !"XXH3_mix2Accs: argument 0:It2"}
!256 = !{!257, !251}
!257 = distinct !{!257, !250, !"XXH3_mix2Accs: argument 0:It3"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"XXH3_mix16B: argument 1"}
!260 = distinct !{!260, !"XXH3_mix16B"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"XXH3_mix16B: argument 1"}
!263 = distinct !{!263, !"XXH3_mix16B"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"XXH3_mix16B: argument 1"}
!266 = distinct !{!266, !"XXH3_mix16B"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"XXH3_mix16B: argument 1"}
!269 = distinct !{!269, !"XXH3_mix16B"}
!270 = !{!271}
!271 = distinct !{!271, !272, !"XXH3_mix16B: argument 1"}
!272 = distinct !{!272, !"XXH3_mix16B"}
!273 = !{!274}
!274 = distinct !{!274, !275, !"XXH3_mix16B: argument 1"}
!275 = distinct !{!275, !"XXH3_mix16B"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"XXH3_mix16B: argument 1"}
!278 = distinct !{!278, !"XXH3_mix16B"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"XXH3_mix16B: argument 1"}
!281 = distinct !{!281, !"XXH3_mix16B"}
!282 = !{ptr @XXH3_hashLong_64b_withSeed_forceavx2, ptr @XXH3_hashLong_64b_withSeed_forceavx512, ptr @XXH3_hashLong_64b_withSeed_forcescalar, ptr @XXH3_hashLong_64b_withSeed_forcesse2}
!283 = !{!284}
!284 = distinct !{!284, !285, !"XXH3_accumulate_512_sse2: argument 0"}
!285 = distinct !{!285, !"XXH3_accumulate_512_sse2"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"XXH3_accumulate_512_sse2: argument 0"}
!288 = distinct !{!288, !"XXH3_accumulate_512_sse2"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"XXH3_accumulate_512_sse2: argument 0"}
!291 = distinct !{!291, !"XXH3_accumulate_512_sse2"}
