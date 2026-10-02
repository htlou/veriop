; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecxor16/bench-cli/upstream/cli/xsum_bench.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecxor16/bench-cli/upstream/cli/xsum_bench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashInfo = type { ptr, ptr }
%struct.XXH_INLINE_XXH32_state_s = type { i32, i32, [4 x i32], [16 x i8], i32, i32 }
%struct.XXH_INLINE_XXH64_state_s = type { i64, [4 x i64], [32 x i8], i32, i32, i64 }
%struct.XXH_INLINE_XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@g_nbTestFunctions = dso_local local_unnamed_addr constant i32 29, align 4
@g_testIDs = dso_local local_unnamed_addr global [29 x i8] zeroinitializer, align 16
@k_testIDs_default = dso_local local_unnamed_addr constant <{ [12 x i8], [17 x i8] }> <{ [12 x i8] c"\00\01\00\01\00\01\00\00\00\00\00\01", [17 x i8] zeroinitializer }>, align 16
@g_nbIterations = dso_local local_unnamed_addr global i32 3, align 4
@.str = private unnamed_addr constant [19 x i8] c"inFileName != NULL\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vecxor16/bench-cli/upstream/cli/xsum_bench.c\00", align 1
@__PRETTY_FUNCTION__.XSUM_benchFiles = private unnamed_addr constant [40 x i8] c"int XSUM_benchFiles(const char **, int)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Error: Could not open '%s': %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\0AError: Out of memory.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\0AError: Could not read '%s': %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\0AError: benchmark block size is too large.\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Sample of \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%u KiB\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%u bytes\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"...        \0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"Not enough memory for '%s' full size; testing %i MiB only...\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"(((size_t)buffer) & 15) == 0\00", align 1
@__PRETTY_FUNCTION__.XSUM_benchMem = private unnamed_addr constant [41 x i8] c"void XSUM_benchMem(const void *, size_t)\00", align 1
@g_benchSecretBuf = internal global [136 x i8] zeroinitializer, align 16
@g_hashesToBench = internal unnamed_addr constant [14 x %struct.hashInfo] [%struct.hashInfo { ptr @.str.17, ptr @localXXH32 }, %struct.hashInfo { ptr @.str.18, ptr @localXXH64 }, %struct.hashInfo { ptr @.str.19, ptr @localXXH3_64b }, %struct.hashInfo { ptr @.str.20, ptr @localXXH3_64b_seeded }, %struct.hashInfo { ptr @.str.21, ptr @localXXH3_64b_secret }, %struct.hashInfo { ptr @.str.22, ptr @localXXH3_128b }, %struct.hashInfo { ptr @.str.23, ptr @localXXH3_128b_seeded }, %struct.hashInfo { ptr @.str.24, ptr @localXXH3_128b_secret }, %struct.hashInfo { ptr @.str.25, ptr @localXXH32_stream }, %struct.hashInfo { ptr @.str.26, ptr @localXXH64_stream }, %struct.hashInfo { ptr @.str.27, ptr @localXXH3_stream }, %struct.hashInfo { ptr @.str.28, ptr @localXXH3_stream_seeded }, %struct.hashInfo { ptr @.str.29, ptr @localXXH128_stream }, %struct.hashInfo { ptr @.str.30, ptr @localXXH128_stream_seeded }], align 16
@.str.14 = private unnamed_addr constant [41 x i8] c"g_hashesToBench[hashFuncID].name != NULL\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c" unaligned\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"hashNameBuf != NULL\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"XXH32\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"XXH64\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"XXH3_64b\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"XXH3_64b w/seed\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"XXH3_64b w/secret\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"XXH128\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"XXH128 w/seed\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"XXH128 w/secret\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"XXH32_stream\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"XXH64_stream\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"XXH3_stream\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"XXH3_stream w/seed\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"XXH128_stream\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"XXH128_stream w/seed\00", align 1
@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"\0D%80s\0D\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"%2i-%-*.*s : %10u ->\0D\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c".\0D\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"%2i-%-*.*s : %10u -> %8.0f it/s (%7.1f MiB/s) \0D\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"%2i#%-*.*s : %10u -> %8.0f it/s (%7.1f MiB/s) \0A\00", align 1
@XSUM_logLevel = external local_unnamed_addr global i32, align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"%u, \00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @XSUM_benchFiles(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %63

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %60
  %7 = phi i64 [ 0, %4 ], [ %61, %60 ]
  %8 = getelementptr inbounds nuw ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 392, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_benchFiles) #38
  unreachable

12:                                               ; preds = %6
  %13 = tail call ptr @XSUM_fopen(ptr noundef nonnull %9, ptr noundef nonnull @.str.2) #39
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = tail call ptr @__errno_location() #40
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @strerror(i32 noundef %17) #39
  %19 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.3, ptr noundef nonnull %9, ptr noundef %18) #39
  tail call void @exit(i32 noundef 11) #41
  unreachable

20:                                               ; preds = %12
  %21 = tail call i64 @XSUM_getFileSize(ptr noundef nonnull %9) #39
  %22 = and i64 %21, -67108864
  %23 = add i64 %22, 201326592
  %24 = tail call i64 @llvm.umin.i64(i64 %23, i64 2080374784)
  %25 = icmp ugt i64 %23, 67108864
  %26 = add nsw i64 %24, -67108864
  %27 = lshr exact i64 %24, 1
  %28 = select i1 %25, i64 %26, i64 %27
  %29 = icmp ugt i64 %28, 67108864
  %30 = add nsw i64 %28, -67108864
  %31 = lshr exact i64 %28, 1
  %32 = select i1 %29, i64 %30, i64 %31
  %33 = tail call i64 @llvm.umin.i64(i64 %32, i64 %21)
  %34 = icmp ult i64 %32, %21
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = lshr i64 %33, 20
  %37 = trunc i64 %36 to i32
  %38 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.12, ptr noundef nonnull %9, i32 noundef %37) #39
  br label %39

39:                                               ; preds = %20, %35
  %40 = add nuw i64 %33, 19
  %41 = tail call noalias ptr @calloc(i64 noundef %40, i64 noundef 1) #42
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.5) #39
  %45 = tail call i32 @fclose(ptr noundef nonnull %13)
  tail call void @exit(i32 noundef 12) #41
  unreachable

46:                                               ; preds = %39
  %47 = getelementptr inbounds nuw i8, ptr %41, i64 15
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 15
  %50 = sub nsw i64 0, %49
  %51 = getelementptr inbounds i8, ptr %47, i64 %50
  %52 = tail call i64 @fread(ptr noundef nonnull %51, i64 noundef 1, i64 noundef %33, ptr noundef nonnull %13)
  %53 = tail call i32 @fclose(ptr noundef nonnull %13)
  %54 = icmp eq i64 %52, %33
  br i1 %54, label %60, label %55

55:                                               ; preds = %46
  %56 = tail call ptr @__errno_location() #40
  %57 = load i32, ptr %56, align 4
  %58 = tail call ptr @strerror(i32 noundef %57) #39
  %59 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.6, ptr noundef nonnull %9, ptr noundef %58) #39
  tail call void @free(ptr noundef nonnull %41) #39
  tail call void @exit(i32 noundef 13) #41
  unreachable

60:                                               ; preds = %46
  tail call fastcc void @XSUM_benchMem(ptr noundef %51, i64 noundef %33)
  tail call void @free(ptr noundef nonnull %41) #39
  %61 = add nuw nsw i64 %7, 1
  %62 = icmp eq i64 %61, %5
  br i1 %62, label %63, label %6, !llvm.loop !5

63:                                               ; preds = %60, %2
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @XSUM_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @XSUM_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @XSUM_benchMem(ptr noundef nonnull %0, i64 noundef range(i64 0, -19) %1) unnamed_addr #0 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, 15
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 353, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_benchMem) #38
  unreachable

7:                                                ; preds = %2
  tail call void @XSUM_fillTestBuffer(ptr noundef nonnull @g_benchSecretBuf, i64 noundef 136) #39
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %9

9:                                                ; preds = %7, %41
  %10 = phi i64 [ 1, %7 ], [ %42, %41 ]
  %11 = trunc nuw nsw i64 %10 to i32
  %12 = trunc i64 %10 to i8
  %13 = add nsw i8 %12, -1
  %14 = sdiv i8 %13, 2
  %15 = sext i8 %14 to i64
  %16 = and i64 %15, 4294967295
  %17 = getelementptr inbounds nuw [14 x %struct.hashInfo], ptr @g_hashesToBench, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 358, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_benchMem) #38
  unreachable

21:                                               ; preds = %9
  %22 = getelementptr inbounds nuw [29 x i8], ptr @g_testIDs, i64 0, i64 %10
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %21
  %26 = and i32 %11, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %30 = load ptr, ptr %29, align 8
  tail call fastcc void @XSUM_benchHash(ptr noundef %30, ptr noundef %18, i32 noundef %11, ptr noundef %0, i64 noundef %1)
  br label %41

31:                                               ; preds = %25
  %32 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %18) #43
  %33 = add i64 %32, 11
  %34 = tail call noalias ptr @malloc(i64 noundef %33) #44
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 368, ptr noundef nonnull @__PRETTY_FUNCTION__.XSUM_benchMem) #38
  unreachable

37:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %34, ptr nonnull readonly align 1 %18, i64 %32, i1 false)
  %38 = getelementptr inbounds nuw i8, ptr %34, i64 %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %38, ptr noundef nonnull align 1 dereferenceable(11) @.str.15, i64 11, i1 false)
  %39 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %40 = load ptr, ptr %39, align 8
  tail call fastcc void @XSUM_benchHash(ptr noundef %40, ptr noundef %34, i32 noundef %11, ptr noundef %8, i64 noundef %1)
  tail call void @free(ptr noundef nonnull %34) #39
  br label %41

41:                                               ; preds = %28, %37, %21
  %42 = add nuw nsw i64 %10, 1
  %43 = icmp eq i64 %42, 29
  br i1 %43, label %44, label %9, !llvm.loop !7

44:                                               ; preds = %41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @XSUM_benchInternal(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i64 %0, -20
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.7) #39
  br label %25

5:                                                ; preds = %1
  %6 = add nuw i64 %0, 19
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 1) #42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @XSUM_log(ptr noundef nonnull @.str.5) #39
  tail call void @exit(i32 noundef 12) #41
  unreachable

11:                                               ; preds = %5
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 15
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 15
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  tail call void @XSUM_fillTestBuffer(ptr noundef nonnull %16, i64 noundef %0) #39
  %17 = tail call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 1, ptr noundef nonnull @.str.8) #39
  %18 = icmp ugt i64 %0, 10240
  %19 = lshr i64 %0, 10
  %20 = select i1 %18, i64 %19, i64 %0
  %21 = select i1 %18, ptr @.str.9, ptr @.str.10
  %22 = trunc i64 %20 to i32
  %23 = tail call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 1, ptr noundef nonnull %21, i32 noundef %22) #39
  %24 = tail call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 1, ptr noundef nonnull @.str.11) #39
  tail call fastcc void @XSUM_benchMem(ptr noundef %16, i64 noundef %0)
  tail call void @free(ptr noundef nonnull %7) #39
  br label %25

25:                                               ; preds = %11, %3
  %26 = phi i32 [ 1, %3 ], [ 0, %11 ]
  ret i32 %26
}

declare void @XSUM_fillTestBuffer(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @XSUM_logVerbose(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @XSUM_getFileSize(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @XSUM_benchHash(ptr nocapture noundef readonly %0, ptr noundef nonnull %1, i32 noundef range(i32 -2147483648, 29) %2, ptr noundef nonnull %3, i64 noundef range(i64 0, -19) %4) unnamed_addr #0 {
  %6 = load i32, ptr @g_nbIterations, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 1)
  %8 = tail call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 2, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #39
  %9 = icmp slt i32 %7, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = trunc i64 %4 to i32
  %12 = uitofp i64 %4 to double
  %13 = fmul double %12, 0x3EB0000000000000
  br label %86

14:                                               ; preds = %5
  %15 = add nuw i64 %4, 1
  %16 = udiv i64 10485760, %15
  %17 = trunc nuw nsw i64 %16 to i32
  %18 = add nuw nsw i32 %17, 1
  %19 = trunc i64 %4 to i32
  %20 = uitofp i64 %4 to double
  %21 = fmul double %20, 0x3EB0000000000000
  br label %22

22:                                               ; preds = %14, %81
  %23 = phi i32 [ %18, %14 ], [ %84, %81 ]
  %24 = phi i32 [ 1, %14 ], [ %82, %81 ]
  %25 = phi double [ 1.000000e+08, %14 ], [ %83, %81 ]
  %26 = tail call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %24, i32 noundef 29, i32 noundef 29, ptr noundef nonnull %1, i32 noundef %19) #39
  %27 = tail call i64 @clock() #39
  br label %28

28:                                               ; preds = %28, %22
  %29 = tail call i64 @clock() #39
  %30 = icmp eq i64 %29, %27
  br i1 %30, label %28, label %31, !llvm.loop !8

31:                                               ; preds = %28
  %32 = tail call i64 @clock() #39
  %33 = icmp eq i32 %23, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31, %34
  %35 = phi i32 [ %39, %34 ], [ 0, %31 ]
  %36 = phi i32 [ %38, %34 ], [ 0, %31 ]
  %37 = tail call i32 %0(ptr noundef nonnull %3, i64 noundef %4, i32 noundef %35) #39
  %38 = add i32 %37, %36
  %39 = add nuw i32 %35, 1
  %40 = icmp eq i32 %39, %23
  br i1 %40, label %41, label %34, !llvm.loop !9

41:                                               ; preds = %34
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31, %41
  %44 = tail call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 3, ptr noundef nonnull @.str.34) #39
  br label %45

45:                                               ; preds = %43, %41
  %46 = tail call i64 @clock() #39
  %47 = sub nsw i64 %46, %32
  %48 = sitofp i64 %47 to double
  %49 = fdiv double %48, 1.000000e+06
  %50 = uitofp i32 %23 to double
  %51 = fdiv double %49, %50
  %52 = icmp slt i64 %47, 500000
  br i1 %52, label %53, label %67

53:                                               ; preds = %45
  %54 = icmp eq i64 %46, %32
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = mul i32 %23, 100
  br label %63

57:                                               ; preds = %53
  %58 = fdiv double 1.000000e+00, %51
  %59 = fadd double %58, 1.000000e+00
  %60 = fcmp ogt double %59, 0x41EF400000000000
  %61 = select i1 %60, double 0x41EF400000000000, double %59
  %62 = fptoui double %61 to i32
  br label %63

63:                                               ; preds = %57, %55
  %64 = phi i32 [ %56, %55 ], [ %62, %57 ]
  %65 = load i32, ptr @g_nbIterations, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %63, %45
  %68 = fcmp olt double %51, %25
  %69 = select i1 %68, double %51, double %25
  %70 = fcmp ogt double %69, 0.000000e+00
  %71 = fdiv double 1.000000e+00, %69
  br i1 %70, label %72, label %75

72:                                               ; preds = %67
  %73 = fdiv double %21, %69
  %74 = tail call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %24, i32 noundef 29, i32 noundef 29, ptr noundef nonnull %1, i32 noundef %19, double noundef %71, double noundef %73) #39
  br label %75

75:                                               ; preds = %67, %72
  %76 = add nsw i32 %24, 1
  %77 = fadd double %71, 1.000000e+00
  %78 = fcmp ogt double %77, 0x41EF400000000000
  %79 = select i1 %78, double 0x41EF400000000000, double %77
  %80 = fptoui double %79 to i32
  br label %81

81:                                               ; preds = %63, %75
  %82 = phi i32 [ %76, %75 ], [ %24, %63 ]
  %83 = phi double [ %69, %75 ], [ %25, %63 ]
  %84 = phi i32 [ %80, %75 ], [ %64, %63 ]
  %85 = icmp sgt i32 %82, %7
  br i1 %85, label %86, label %22, !llvm.loop !10

86:                                               ; preds = %81, %10
  %87 = phi double [ %13, %10 ], [ %21, %81 ]
  %88 = phi i32 [ %11, %10 ], [ %19, %81 ]
  %89 = phi double [ 1.000000e+08, %10 ], [ %83, %81 ]
  %90 = fdiv double 1.000000e+00, %89
  %91 = fdiv double %87, %89
  %92 = tail call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 1, ptr noundef nonnull @.str.36, i32 noundef %2, i32 noundef 29, i32 noundef 29, ptr noundef nonnull %1, i32 noundef %88, double noundef %90, double noundef %91) #39
  %93 = load i32, ptr @XSUM_logLevel, align 4
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = fptoui double %90 to i32
  %97 = tail call i32 (i32, ptr, ...) @XSUM_logVerbose(i32 noundef 0, ptr noundef nonnull @.str.37, i32 noundef %96) #39
  br label %98

98:                                               ; preds = %95, %86
  ret void
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define internal i32 @localXXH32(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) #11 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 15
  br i1 %6, label %7, label %59

7:                                                ; preds = %5
  %8 = add i32 %2, 606290984
  %9 = add i32 %2, -2048144777
  %10 = add i32 %2, 1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -15
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i32 [ %10, %7 ], [ %45, %13 ]
  %15 = phi i32 [ %2, %7 ], [ %38, %13 ]
  %16 = phi i32 [ %9, %7 ], [ %31, %13 ]
  %17 = phi i32 [ %8, %7 ], [ %24, %13 ]
  %18 = phi ptr [ %0, %7 ], [ %46, %13 ]
  %19 = load i32, ptr %18, align 1
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %17
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %23) #45, !srcloc !11
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %26 = load i32, ptr %25, align 1
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %16
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %30) #45, !srcloc !11
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %33 = load i32, ptr %32, align 1
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %15
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %37) #45, !srcloc !11
  %39 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %40 = load i32, ptr %39, align 1
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %14
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %44) #45, !srcloc !11
  %46 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %47 = icmp ult ptr %46, %12
  br i1 %47, label %13, label %48, !llvm.loop !12

48:                                               ; preds = %13
  %49 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 1)
  %50 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 7)
  %51 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 12)
  %52 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 18)
  %53 = trunc i64 %1 to i32
  %54 = add i32 %49, %53
  %55 = add i32 %54, %50
  %56 = add i32 %55, %51
  %57 = add i32 %56, %52
  %58 = and i64 %1, 15
  br label %66

59:                                               ; preds = %5
  %60 = add i32 %2, 374761393
  %61 = trunc nuw i64 %1 to i32
  %62 = add i32 %60, %61
  br label %66

63:                                               ; preds = %3
  %64 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %64)
  %65 = add i32 %2, 374761393
  br label %245

66:                                               ; preds = %59, %48
  %67 = phi i64 [ %58, %48 ], [ %1, %59 ]
  %68 = phi i32 [ %57, %48 ], [ %62, %59 ]
  %69 = phi ptr [ %46, %48 ], [ %0, %59 ]
  %70 = icmp samesign ugt i64 %67, 3
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = add nsw i64 %67, -4
  %73 = lshr i64 %72, 2
  %74 = add nuw nsw i64 %73, 1
  %75 = and i64 %74, 7
  %76 = and i64 %72, 28
  %77 = icmp eq i64 %76, 28
  br i1 %77, label %92, label %78

78:                                               ; preds = %71, %78
  %79 = phi i32 [ %88, %78 ], [ %68, %71 ]
  %80 = phi i64 [ %89, %78 ], [ %67, %71 ]
  %81 = phi ptr [ %86, %78 ], [ %69, %71 ]
  %82 = phi i64 [ %90, %78 ], [ 0, %71 ]
  %83 = load i32, ptr %81, align 1
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %79
  %86 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %88 = mul i32 %87, 668265263
  %89 = add nsw i64 %80, -4
  %90 = add i64 %82, 1
  %91 = icmp eq i64 %90, %75
  br i1 %91, label %92, label %78, !llvm.loop !13

92:                                               ; preds = %78, %71
  %93 = phi i32 [ %68, %71 ], [ %88, %78 ]
  %94 = phi i64 [ %67, %71 ], [ %89, %78 ]
  %95 = phi ptr [ %69, %71 ], [ %86, %78 ]
  %96 = phi ptr [ poison, %71 ], [ %86, %78 ]
  %97 = phi i32 [ poison, %71 ], [ %88, %78 ]
  %98 = phi i64 [ poison, %71 ], [ %89, %78 ]
  %99 = icmp ult i64 %72, 28
  br i1 %99, label %100, label %129

100:                                              ; preds = %92, %129, %66
  %101 = phi ptr [ %69, %66 ], [ %96, %92 ], [ %178, %129 ]
  %102 = phi i64 [ %67, %66 ], [ %98, %92 ], [ %181, %129 ]
  %103 = phi i32 [ %68, %66 ], [ %97, %92 ], [ %180, %129 ]
  %104 = icmp eq i64 %102, 0
  br i1 %104, label %245, label %105

105:                                              ; preds = %100
  %106 = and i64 %102, 7
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %105, %108
  %109 = phi i32 [ %119, %108 ], [ %103, %105 ]
  %110 = phi i64 [ %120, %108 ], [ %102, %105 ]
  %111 = phi ptr [ %113, %108 ], [ %101, %105 ]
  %112 = phi i64 [ %121, %108 ], [ 0, %105 ]
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 1
  %114 = load i8, ptr %111, align 1
  %115 = zext i8 %114 to i32
  %116 = mul i32 %115, 374761393
  %117 = add i32 %116, %109
  %118 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 11)
  %119 = mul i32 %118, -1640531535
  %120 = add nsw i64 %110, -1
  %121 = add i64 %112, 1
  %122 = icmp eq i64 %121, %106
  br i1 %122, label %123, label %108, !llvm.loop !15

123:                                              ; preds = %108, %105
  %124 = phi i32 [ poison, %105 ], [ %119, %108 ]
  %125 = phi i32 [ %103, %105 ], [ %119, %108 ]
  %126 = phi i64 [ %102, %105 ], [ %120, %108 ]
  %127 = phi ptr [ %101, %105 ], [ %113, %108 ]
  %128 = icmp ult i64 %102, 8
  br i1 %128, label %245, label %183

129:                                              ; preds = %92, %129
  %130 = phi i32 [ %180, %129 ], [ %93, %92 ]
  %131 = phi i64 [ %181, %129 ], [ %94, %92 ]
  %132 = phi ptr [ %178, %129 ], [ %95, %92 ]
  %133 = load i32, ptr %132, align 1
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %130
  %136 = getelementptr inbounds nuw i8, ptr %132, i64 4
  %137 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  %139 = load i32, ptr %136, align 1
  %140 = mul i32 %139, -1028477379
  %141 = add i32 %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %132, i64 8
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 17)
  %144 = mul i32 %143, 668265263
  %145 = load i32, ptr %142, align 1
  %146 = mul i32 %145, -1028477379
  %147 = add i32 %146, %144
  %148 = getelementptr inbounds nuw i8, ptr %132, i64 12
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 17)
  %150 = mul i32 %149, 668265263
  %151 = load i32, ptr %148, align 1
  %152 = mul i32 %151, -1028477379
  %153 = add i32 %152, %150
  %154 = getelementptr inbounds nuw i8, ptr %132, i64 16
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 17)
  %156 = mul i32 %155, 668265263
  %157 = load i32, ptr %154, align 1
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %132, i64 20
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  %163 = load i32, ptr %160, align 1
  %164 = mul i32 %163, -1028477379
  %165 = add i32 %164, %162
  %166 = getelementptr inbounds nuw i8, ptr %132, i64 24
  %167 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 17)
  %168 = mul i32 %167, 668265263
  %169 = load i32, ptr %166, align 1
  %170 = mul i32 %169, -1028477379
  %171 = add i32 %170, %168
  %172 = getelementptr inbounds nuw i8, ptr %132, i64 28
  %173 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 17)
  %174 = mul i32 %173, 668265263
  %175 = load i32, ptr %172, align 1
  %176 = mul i32 %175, -1028477379
  %177 = add i32 %176, %174
  %178 = getelementptr inbounds nuw i8, ptr %132, i64 32
  %179 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 17)
  %180 = mul i32 %179, 668265263
  %181 = add nsw i64 %131, -32
  %182 = icmp ugt i64 %181, 3
  br i1 %182, label %129, label %100, !llvm.loop !16

183:                                              ; preds = %123, %183
  %184 = phi i32 [ %242, %183 ], [ %125, %123 ]
  %185 = phi i64 [ %243, %183 ], [ %126, %123 ]
  %186 = phi ptr [ %236, %183 ], [ %127, %123 ]
  %187 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %188 = load i8, ptr %186, align 1
  %189 = zext i8 %188 to i32
  %190 = mul i32 %189, 374761393
  %191 = add i32 %190, %184
  %192 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 11)
  %193 = mul i32 %192, -1640531535
  %194 = getelementptr inbounds nuw i8, ptr %186, i64 2
  %195 = load i8, ptr %187, align 1
  %196 = zext i8 %195 to i32
  %197 = mul i32 %196, 374761393
  %198 = add i32 %197, %193
  %199 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 11)
  %200 = mul i32 %199, -1640531535
  %201 = getelementptr inbounds nuw i8, ptr %186, i64 3
  %202 = load i8, ptr %194, align 1
  %203 = zext i8 %202 to i32
  %204 = mul i32 %203, 374761393
  %205 = add i32 %204, %200
  %206 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 11)
  %207 = mul i32 %206, -1640531535
  %208 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %209 = load i8, ptr %201, align 1
  %210 = zext i8 %209 to i32
  %211 = mul i32 %210, 374761393
  %212 = add i32 %211, %207
  %213 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 11)
  %214 = mul i32 %213, -1640531535
  %215 = getelementptr inbounds nuw i8, ptr %186, i64 5
  %216 = load i8, ptr %208, align 1
  %217 = zext i8 %216 to i32
  %218 = mul i32 %217, 374761393
  %219 = add i32 %218, %214
  %220 = tail call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 11)
  %221 = mul i32 %220, -1640531535
  %222 = getelementptr inbounds nuw i8, ptr %186, i64 6
  %223 = load i8, ptr %215, align 1
  %224 = zext i8 %223 to i32
  %225 = mul i32 %224, 374761393
  %226 = add i32 %225, %221
  %227 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 11)
  %228 = mul i32 %227, -1640531535
  %229 = getelementptr inbounds nuw i8, ptr %186, i64 7
  %230 = load i8, ptr %222, align 1
  %231 = zext i8 %230 to i32
  %232 = mul i32 %231, 374761393
  %233 = add i32 %232, %228
  %234 = tail call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 11)
  %235 = mul i32 %234, -1640531535
  %236 = getelementptr inbounds nuw i8, ptr %186, i64 8
  %237 = load i8, ptr %229, align 1
  %238 = zext i8 %237 to i32
  %239 = mul i32 %238, 374761393
  %240 = add i32 %239, %235
  %241 = tail call i32 @llvm.fshl.i32(i32 %240, i32 %240, i32 11)
  %242 = mul i32 %241, -1640531535
  %243 = add nsw i64 %185, -8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %183, !llvm.loop !17

245:                                              ; preds = %123, %183, %63, %100
  %246 = phi i32 [ %103, %100 ], [ %65, %63 ], [ %124, %123 ], [ %242, %183 ]
  %247 = lshr i32 %246, 15
  %248 = xor i32 %247, %246
  %249 = mul i32 %248, -2048144777
  %250 = lshr i32 %249, 13
  %251 = xor i32 %250, %249
  %252 = mul i32 %251, -1028477379
  %253 = lshr i32 %252, 16
  %254 = xor i32 %253, %252
  ret i32 %254
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define internal i32 @localXXH64(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) #12 {
  %4 = zext i32 %2 to i64
  %5 = icmp eq ptr %0, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 31
  br i1 %7, label %8, label %78

8:                                                ; preds = %6
  %9 = add nuw nsw i64 %4, 6983438078262162902
  %10 = add nuw nsw i64 %4, -4417276706812531889
  %11 = add nuw nsw i64 %4, 7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -31
  br label %14

14:                                               ; preds = %14, %8
  %15 = phi i64 [ %11, %8 ], [ %42, %14 ]
  %16 = phi i64 [ %4, %8 ], [ %36, %14 ]
  %17 = phi i64 [ %10, %8 ], [ %30, %14 ]
  %18 = phi i64 [ %9, %8 ], [ %24, %14 ]
  %19 = phi ptr [ %0, %8 ], [ %43, %14 ]
  %20 = load i64, ptr %19, align 1
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %21, %18
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %26 = load i64, ptr %25, align 1
  %27 = mul i64 %26, -4417276706812531889
  %28 = add i64 %27, %17
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %32 = load i64, ptr %31, align 1
  %33 = mul i64 %32, -4417276706812531889
  %34 = add i64 %33, %16
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %38 = load i64, ptr %37, align 1
  %39 = mul i64 %38, -4417276706812531889
  %40 = add i64 %39, %15
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %42 = mul i64 %41, -7046029288634856825
  %43 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %44 = icmp ult ptr %43, %13
  br i1 %44, label %14, label %45, !llvm.loop !18

45:                                               ; preds = %14
  %46 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 1)
  %47 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 7)
  %48 = add i64 %47, %46
  %49 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 12)
  %50 = add i64 %48, %49
  %51 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 18)
  %52 = add i64 %50, %51
  %53 = mul i64 %23, -2381459717836149591
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 31)
  %55 = mul i64 %54, -7046029288634856825
  %56 = xor i64 %52, %55
  %57 = mul i64 %56, -7046029288634856825
  %58 = add i64 %57, -8796714831421723037
  %59 = mul i64 %29, -2381459717836149591
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 31)
  %61 = mul i64 %60, -7046029288634856825
  %62 = xor i64 %58, %61
  %63 = mul i64 %62, -7046029288634856825
  %64 = add i64 %63, -8796714831421723037
  %65 = mul i64 %35, -2381459717836149591
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 31)
  %67 = mul i64 %66, -7046029288634856825
  %68 = xor i64 %64, %67
  %69 = mul i64 %68, -7046029288634856825
  %70 = add i64 %69, -8796714831421723037
  %71 = mul i64 %41, -2381459717836149591
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 31)
  %73 = mul i64 %72, -7046029288634856825
  %74 = xor i64 %70, %73
  %75 = mul i64 %74, -7046029288634856825
  %76 = add i64 %1, -8796714831421723037
  %77 = add i64 %76, %75
  br label %84

78:                                               ; preds = %6
  %79 = add nuw nsw i64 %4, 2870177450012600261
  %80 = add nuw nsw i64 %79, %1
  br label %84

81:                                               ; preds = %3
  %82 = add nuw nsw i64 %4, 2870177450012600261
  %83 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %83)
  br label %269

84:                                               ; preds = %78, %45
  %85 = phi i64 [ %77, %45 ], [ %80, %78 ]
  %86 = phi ptr [ %43, %45 ], [ %0, %78 ]
  %87 = and i64 %1, 31
  %88 = icmp samesign ugt i64 %87, 7
  br i1 %88, label %89, label %163

89:                                               ; preds = %84
  %90 = add nsw i64 %87, -8
  %91 = lshr i64 %90, 3
  %92 = add nuw nsw i64 %91, 1
  %93 = and i64 %92, 3
  %94 = and i64 %90, 24
  %95 = icmp eq i64 %94, 24
  br i1 %95, label %113, label %96

96:                                               ; preds = %89, %96
  %97 = phi i64 [ %109, %96 ], [ %85, %89 ]
  %98 = phi ptr [ %105, %96 ], [ %86, %89 ]
  %99 = phi i64 [ %110, %96 ], [ %87, %89 ]
  %100 = phi i64 [ %111, %96 ], [ 0, %89 ]
  %101 = load i64, ptr %98, align 1
  %102 = mul i64 %101, -4417276706812531889
  %103 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %102, i64 31)
  %104 = mul i64 %103, -7046029288634856825
  %105 = getelementptr inbounds nuw i8, ptr %98, i64 8
  %106 = xor i64 %104, %97
  %107 = tail call i64 @llvm.fshl.i64(i64 %106, i64 %106, i64 27)
  %108 = mul i64 %107, -7046029288634856825
  %109 = add i64 %108, -8796714831421723037
  %110 = add nsw i64 %99, -8
  %111 = add i64 %100, 1
  %112 = icmp eq i64 %111, %93
  br i1 %112, label %113, label %96, !llvm.loop !19

113:                                              ; preds = %96, %89
  %114 = phi i64 [ %85, %89 ], [ %109, %96 ]
  %115 = phi ptr [ %86, %89 ], [ %105, %96 ]
  %116 = phi i64 [ %87, %89 ], [ %110, %96 ]
  %117 = phi ptr [ poison, %89 ], [ %105, %96 ]
  %118 = phi i64 [ poison, %89 ], [ %109, %96 ]
  %119 = phi i64 [ poison, %89 ], [ %110, %96 ]
  %120 = icmp ult i64 %90, 24
  br i1 %120, label %163, label %121

121:                                              ; preds = %113, %121
  %122 = phi i64 [ %160, %121 ], [ %114, %113 ]
  %123 = phi ptr [ %156, %121 ], [ %115, %113 ]
  %124 = phi i64 [ %161, %121 ], [ %116, %113 ]
  %125 = load i64, ptr %123, align 1
  %126 = mul i64 %125, -4417276706812531889
  %127 = tail call i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 31)
  %128 = mul i64 %127, -7046029288634856825
  %129 = getelementptr inbounds nuw i8, ptr %123, i64 8
  %130 = xor i64 %128, %122
  %131 = tail call i64 @llvm.fshl.i64(i64 %130, i64 %130, i64 27)
  %132 = mul i64 %131, -7046029288634856825
  %133 = add i64 %132, -8796714831421723037
  %134 = load i64, ptr %129, align 1
  %135 = mul i64 %134, -4417276706812531889
  %136 = tail call i64 @llvm.fshl.i64(i64 %135, i64 %135, i64 31)
  %137 = mul i64 %136, -7046029288634856825
  %138 = getelementptr inbounds nuw i8, ptr %123, i64 16
  %139 = xor i64 %137, %133
  %140 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 27)
  %141 = mul i64 %140, -7046029288634856825
  %142 = add i64 %141, -8796714831421723037
  %143 = load i64, ptr %138, align 1
  %144 = mul i64 %143, -4417276706812531889
  %145 = tail call i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 31)
  %146 = mul i64 %145, -7046029288634856825
  %147 = getelementptr inbounds nuw i8, ptr %123, i64 24
  %148 = xor i64 %146, %142
  %149 = tail call i64 @llvm.fshl.i64(i64 %148, i64 %148, i64 27)
  %150 = mul i64 %149, -7046029288634856825
  %151 = add i64 %150, -8796714831421723037
  %152 = load i64, ptr %147, align 1
  %153 = mul i64 %152, -4417276706812531889
  %154 = tail call i64 @llvm.fshl.i64(i64 %153, i64 %153, i64 31)
  %155 = mul i64 %154, -7046029288634856825
  %156 = getelementptr inbounds nuw i8, ptr %123, i64 32
  %157 = xor i64 %155, %151
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 27)
  %159 = mul i64 %158, -7046029288634856825
  %160 = add i64 %159, -8796714831421723037
  %161 = add nsw i64 %124, -32
  %162 = icmp ugt i64 %161, 7
  br i1 %162, label %121, label %163, !llvm.loop !20

163:                                              ; preds = %113, %121, %84
  %164 = phi i64 [ %87, %84 ], [ %119, %113 ], [ %161, %121 ]
  %165 = phi ptr [ %86, %84 ], [ %117, %113 ], [ %156, %121 ]
  %166 = phi i64 [ %85, %84 ], [ %118, %113 ], [ %160, %121 ]
  %167 = icmp samesign ugt i64 %164, 3
  br i1 %167, label %168, label %178

168:                                              ; preds = %163
  %169 = load i32, ptr %165, align 1
  %170 = zext i32 %169 to i64
  %171 = mul i64 %170, -7046029288634856825
  %172 = xor i64 %171, %166
  %173 = getelementptr inbounds nuw i8, ptr %165, i64 4
  %174 = tail call i64 @llvm.fshl.i64(i64 %172, i64 %172, i64 23)
  %175 = mul i64 %174, -4417276706812531889
  %176 = add i64 %175, 1609587929392839161
  %177 = add nsw i64 %164, -4
  br label %178

178:                                              ; preds = %168, %163
  %179 = phi i64 [ %177, %168 ], [ %164, %163 ]
  %180 = phi ptr [ %173, %168 ], [ %165, %163 ]
  %181 = phi i64 [ %176, %168 ], [ %166, %163 ]
  %182 = icmp eq i64 %179, 0
  br i1 %182, label %269, label %183

183:                                              ; preds = %178
  %184 = and i64 %179, 7
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %201, label %186

186:                                              ; preds = %183, %186
  %187 = phi i64 [ %197, %186 ], [ %181, %183 ]
  %188 = phi ptr [ %191, %186 ], [ %180, %183 ]
  %189 = phi i64 [ %198, %186 ], [ %179, %183 ]
  %190 = phi i64 [ %199, %186 ], [ 0, %183 ]
  %191 = getelementptr inbounds nuw i8, ptr %188, i64 1
  %192 = load i8, ptr %188, align 1
  %193 = zext i8 %192 to i64
  %194 = mul i64 %193, 2870177450012600261
  %195 = xor i64 %194, %187
  %196 = tail call i64 @llvm.fshl.i64(i64 %195, i64 %195, i64 11)
  %197 = mul i64 %196, -7046029288634856825
  %198 = add nsw i64 %189, -1
  %199 = add i64 %190, 1
  %200 = icmp eq i64 %199, %184
  br i1 %200, label %201, label %186, !llvm.loop !21

201:                                              ; preds = %186, %183
  %202 = phi i64 [ poison, %183 ], [ %197, %186 ]
  %203 = phi i64 [ %181, %183 ], [ %197, %186 ]
  %204 = phi ptr [ %180, %183 ], [ %191, %186 ]
  %205 = phi i64 [ %179, %183 ], [ %198, %186 ]
  %206 = icmp ult i64 %179, 8
  br i1 %206, label %269, label %207

207:                                              ; preds = %201, %207
  %208 = phi i64 [ %266, %207 ], [ %203, %201 ]
  %209 = phi ptr [ %260, %207 ], [ %204, %201 ]
  %210 = phi i64 [ %267, %207 ], [ %205, %201 ]
  %211 = getelementptr inbounds nuw i8, ptr %209, i64 1
  %212 = load i8, ptr %209, align 1
  %213 = zext i8 %212 to i64
  %214 = mul i64 %213, 2870177450012600261
  %215 = xor i64 %214, %208
  %216 = tail call i64 @llvm.fshl.i64(i64 %215, i64 %215, i64 11)
  %217 = mul i64 %216, -7046029288634856825
  %218 = getelementptr inbounds nuw i8, ptr %209, i64 2
  %219 = load i8, ptr %211, align 1
  %220 = zext i8 %219 to i64
  %221 = mul i64 %220, 2870177450012600261
  %222 = xor i64 %221, %217
  %223 = tail call i64 @llvm.fshl.i64(i64 %222, i64 %222, i64 11)
  %224 = mul i64 %223, -7046029288634856825
  %225 = getelementptr inbounds nuw i8, ptr %209, i64 3
  %226 = load i8, ptr %218, align 1
  %227 = zext i8 %226 to i64
  %228 = mul i64 %227, 2870177450012600261
  %229 = xor i64 %228, %224
  %230 = tail call i64 @llvm.fshl.i64(i64 %229, i64 %229, i64 11)
  %231 = mul i64 %230, -7046029288634856825
  %232 = getelementptr inbounds nuw i8, ptr %209, i64 4
  %233 = load i8, ptr %225, align 1
  %234 = zext i8 %233 to i64
  %235 = mul i64 %234, 2870177450012600261
  %236 = xor i64 %235, %231
  %237 = tail call i64 @llvm.fshl.i64(i64 %236, i64 %236, i64 11)
  %238 = mul i64 %237, -7046029288634856825
  %239 = getelementptr inbounds nuw i8, ptr %209, i64 5
  %240 = load i8, ptr %232, align 1
  %241 = zext i8 %240 to i64
  %242 = mul i64 %241, 2870177450012600261
  %243 = xor i64 %242, %238
  %244 = tail call i64 @llvm.fshl.i64(i64 %243, i64 %243, i64 11)
  %245 = mul i64 %244, -7046029288634856825
  %246 = getelementptr inbounds nuw i8, ptr %209, i64 6
  %247 = load i8, ptr %239, align 1
  %248 = zext i8 %247 to i64
  %249 = mul i64 %248, 2870177450012600261
  %250 = xor i64 %249, %245
  %251 = tail call i64 @llvm.fshl.i64(i64 %250, i64 %250, i64 11)
  %252 = mul i64 %251, -7046029288634856825
  %253 = getelementptr inbounds nuw i8, ptr %209, i64 7
  %254 = load i8, ptr %246, align 1
  %255 = zext i8 %254 to i64
  %256 = mul i64 %255, 2870177450012600261
  %257 = xor i64 %256, %252
  %258 = tail call i64 @llvm.fshl.i64(i64 %257, i64 %257, i64 11)
  %259 = mul i64 %258, -7046029288634856825
  %260 = getelementptr inbounds nuw i8, ptr %209, i64 8
  %261 = load i8, ptr %253, align 1
  %262 = zext i8 %261 to i64
  %263 = mul i64 %262, 2870177450012600261
  %264 = xor i64 %263, %259
  %265 = tail call i64 @llvm.fshl.i64(i64 %264, i64 %264, i64 11)
  %266 = mul i64 %265, -7046029288634856825
  %267 = add nsw i64 %210, -8
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %207, !llvm.loop !22

269:                                              ; preds = %201, %207, %81, %178
  %270 = phi i64 [ %181, %178 ], [ %82, %81 ], [ %202, %201 ], [ %266, %207 ]
  %271 = lshr i64 %270, 33
  %272 = xor i64 %271, %270
  %273 = mul i64 %272, -4417276706812531889
  %274 = lshr i64 %273, 29
  %275 = xor i64 %274, %273
  %276 = mul i64 %275, 1609587929392839161
  %277 = lshr i64 %276, 32
  %278 = xor i64 %277, %276
  %279 = trunc i64 %278 to i32
  ret i32 %279
}

; Function Attrs: nounwind uwtable
define internal i32 @localXXH3_64b(ptr noundef %0, i64 noundef %1, i32 %2) #0 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i64 @target_0to16(ptr noundef %0, i64 noundef range(i64 0, 17) %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #39
  br label %141

7:                                                ; preds = %3
  %8 = icmp ult i64 %1, 129
  br i1 %8, label %9, label %135

9:                                                ; preds = %7
  %10 = mul i64 %1, -7046029288634856825
  %11 = icmp samesign ugt i64 %1, 32
  br i1 %11, label %12, label %102

12:                                               ; preds = %9
  %13 = icmp samesign ugt i64 %1, 64
  br i1 %13, label %14, label %73

14:                                               ; preds = %12
  %15 = icmp samesign ugt i64 %1, 96
  br i1 %15, label %16, label %44

16:                                               ; preds = %14
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %20 = load i64, ptr %19, align 1
  %21 = xor i64 %18, 4554437623014685352
  %22 = xor i64 %20, 2111919702937427193
  %23 = zext i64 %21 to i128
  %24 = zext i64 %22 to i128
  %25 = mul nuw i128 %24, %23
  %26 = lshr i128 %25, 64
  %27 = xor i128 %26, %25
  %28 = trunc i128 %27 to i64
  %29 = add i64 %10, %28
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %31 = getelementptr inbounds i8, ptr %30, i64 -64
  %32 = load i64, ptr %31, align 1
  %33 = getelementptr inbounds i8, ptr %30, i64 -56
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %32, 3556072174620004746
  %36 = xor i64 %34, 7238261902898274248
  %37 = zext i64 %35 to i128
  %38 = zext i64 %36 to i128
  %39 = mul nuw i128 %38, %37
  %40 = lshr i128 %39, 64
  %41 = xor i128 %40, %39
  %42 = trunc i128 %41 to i64
  %43 = add i64 %29, %42
  br label %44

44:                                               ; preds = %16, %14
  %45 = phi i64 [ %43, %16 ], [ %10, %14 ]
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %49 = load i64, ptr %48, align 1
  %50 = xor i64 %47, -3818837453329782724
  %51 = xor i64 %49, -6688317018830679928
  %52 = zext i64 %50 to i128
  %53 = zext i64 %51 to i128
  %54 = mul nuw i128 %53, %52
  %55 = lshr i128 %54, 64
  %56 = xor i128 %55, %54
  %57 = trunc i128 %56 to i64
  %58 = add i64 %45, %57
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %60 = getelementptr inbounds i8, ptr %59, i64 -48
  %61 = load i64, ptr %60, align 1
  %62 = getelementptr inbounds i8, ptr %59, i64 -40
  %63 = load i64, ptr %62, align 1
  %64 = xor i64 %61, 5690594596133299313
  %65 = xor i64 %63, -2833645246901970632
  %66 = zext i64 %64 to i128
  %67 = zext i64 %65 to i128
  %68 = mul nuw i128 %67, %66
  %69 = lshr i128 %68, 64
  %70 = xor i128 %69, %68
  %71 = trunc i128 %70 to i64
  %72 = add i64 %58, %71
  br label %73

73:                                               ; preds = %44, %12
  %74 = phi i64 [ %72, %44 ], [ %10, %12 ]
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %76 = load i64, ptr %75, align 1
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %78 = load i64, ptr %77, align 1
  %79 = xor i64 %76, 8711581037947681227
  %80 = xor i64 %78, 2410270004345854594
  %81 = zext i64 %79 to i128
  %82 = zext i64 %80 to i128
  %83 = mul nuw i128 %82, %81
  %84 = lshr i128 %83, 64
  %85 = xor i128 %84, %83
  %86 = trunc i128 %85 to i64
  %87 = add i64 %74, %86
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %89 = getelementptr inbounds i8, ptr %88, i64 -32
  %90 = load i64, ptr %89, align 1
  %91 = getelementptr inbounds i8, ptr %88, i64 -24
  %92 = load i64, ptr %91, align 1
  %93 = xor i64 %90, -8204357891075471176
  %94 = xor i64 %92, 5487137525590930912
  %95 = zext i64 %93 to i128
  %96 = zext i64 %94 to i128
  %97 = mul nuw i128 %96, %95
  %98 = lshr i128 %97, 64
  %99 = xor i128 %98, %97
  %100 = trunc i128 %99 to i64
  %101 = add i64 %87, %100
  br label %102

102:                                              ; preds = %73, %9
  %103 = phi i64 [ %101, %73 ], [ %10, %9 ]
  %104 = load i64, ptr %0, align 1
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %106 = load i64, ptr %105, align 1
  %107 = xor i64 %104, -4734510112055689544
  %108 = xor i64 %106, 2066345149520216444
  %109 = zext i64 %107 to i128
  %110 = zext i64 %108 to i128
  %111 = mul nuw i128 %110, %109
  %112 = lshr i128 %111, 64
  %113 = xor i128 %112, %111
  %114 = trunc i128 %113 to i64
  %115 = add i64 %103, %114
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %117 = getelementptr inbounds i8, ptr %116, i64 -16
  %118 = load i64, ptr %117, align 1
  %119 = getelementptr inbounds i8, ptr %116, i64 -8
  %120 = load i64, ptr %119, align 1
  %121 = xor i64 %118, -2623469361688619810
  %122 = xor i64 %120, 2262974939099578482
  %123 = zext i64 %121 to i128
  %124 = zext i64 %122 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %115, %128
  %130 = lshr i64 %129, 37
  %131 = xor i64 %130, %129
  %132 = mul i64 %131, 1609587791953885689
  %133 = lshr i64 %132, 32
  %134 = xor i64 %133, %132
  br label %141

135:                                              ; preds = %7
  %136 = icmp ult i64 %1, 241
  br i1 %136, label %137, label %139

137:                                              ; preds = %135
  %138 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #43
  br label %141

139:                                              ; preds = %135
  %140 = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef %0, i64 noundef %1) #39
  br label %141

141:                                              ; preds = %5, %102, %137, %139
  %142 = phi i64 [ %6, %5 ], [ %134, %102 ], [ %138, %137 ], [ %140, %139 ]
  %143 = trunc i64 %142 to i32
  ret i32 %143
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal i32 @localXXH3_64b_seeded(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #13 {
  %4 = zext i32 %2 to i64
  %5 = tail call fastcc i64 @XXH_INLINE_XXH3_64bits_withSeed(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %4) #43
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal i32 @localXXH3_64b_secret(ptr nocapture noundef readonly %0, i64 noundef %1, i32 %2) #13 {
  %4 = tail call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecret(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef nonnull @g_benchSecretBuf, i64 noundef 136) #43
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal i32 @localXXH3_128b(ptr noundef readonly %0, i64 noundef %1, i32 %2) #14 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %127

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %49

7:                                                ; preds = %5
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i64, ptr %0, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %9, %12
  %14 = xor i64 %13, 6455697860950631241
  %15 = zext i64 %14 to i128
  %16 = mul nuw i128 %15, 11400714785074694791
  %17 = trunc i128 %16 to i64
  %18 = lshr i128 %16, 64
  %19 = trunc nuw i128 %18 to i64
  %20 = shl nuw nsw i64 %1, 54
  %21 = add nsw i64 %20, -18014398509481984
  %22 = add i64 %21, %17
  %23 = xor i64 %12, -4466874330221494952
  %24 = and i64 %23, 4294967295
  %25 = mul nuw i64 %24, 2246822518
  %26 = add i64 %25, %23
  %27 = add i64 %26, %19
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %27)
  %29 = xor i64 %28, %22
  %30 = zext i64 %29 to i128
  %31 = mul nuw i128 %30, 14029467366897019727
  %32 = trunc i128 %31 to i64
  %33 = lshr i128 %31, 64
  %34 = trunc nuw i128 %33 to i64
  %35 = mul i64 %27, -4417276706812531889
  %36 = add i64 %35, %34
  %37 = lshr i64 %32, 37
  %38 = xor i64 %37, %32
  %39 = mul i64 %38, 1609587791953885689
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  %42 = lshr i64 %36, 37
  %43 = xor i64 %42, %36
  %44 = mul i64 %43, 1609587791953885689
  %45 = lshr i64 %44, 32
  %46 = xor i64 %45, %44
  %47 = insertvalue { i64, i64 } poison, i64 %41, 0
  %48 = insertvalue { i64, i64 } %47, i64 %46, 1
  br label %293

49:                                               ; preds = %5
  %50 = icmp samesign ugt i64 %1, 3
  br i1 %50, label %51, label %86

51:                                               ; preds = %49
  %52 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %52)
  %53 = load i32, ptr %0, align 1
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = zext i32 %53 to i64
  %58 = zext i32 %56 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or disjoint i64 %59, %57
  %61 = xor i64 %60, -4255862940314790740
  %62 = shl nuw nsw i64 %1, 2
  %63 = add nuw nsw i64 %62, -7046029288634856825
  %64 = zext i64 %61 to i128
  %65 = zext i64 %63 to i128
  %66 = mul nuw i128 %64, %65
  %67 = trunc i128 %66 to i64
  %68 = lshr i128 %66, 64
  %69 = trunc nuw i128 %68 to i64
  %70 = shl i64 %67, 1
  %71 = add i64 %70, %69
  %72 = lshr i64 %71, 3
  %73 = xor i64 %72, %67
  %74 = lshr i64 %73, 35
  %75 = xor i64 %74, %73
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  %79 = lshr i64 %71, 37
  %80 = xor i64 %79, %71
  %81 = mul i64 %80, 1609587791953885689
  %82 = lshr i64 %81, 32
  %83 = xor i64 %82, %81
  %84 = insertvalue { i64, i64 } poison, i64 %78, 0
  %85 = insertvalue { i64, i64 } %84, i64 %83, 1
  br label %293

86:                                               ; preds = %49
  %87 = icmp eq i64 %1, 0
  br i1 %87, label %293, label %88

88:                                               ; preds = %86
  %89 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %89)
  %90 = load i8, ptr %0, align 1
  %91 = lshr i64 %1, 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 %91
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 %1
  %95 = getelementptr i8, ptr %94, i64 -1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %90 to i32
  %98 = shl nuw nsw i32 %97, 16
  %99 = zext i8 %93 to i32
  %100 = shl nuw i32 %99, 24
  %101 = or disjoint i32 %100, %98
  %102 = zext i8 %96 to i32
  %103 = or disjoint i32 %101, %102
  %104 = trunc nuw nsw i64 %1 to i32
  %105 = shl nuw nsw i32 %104, 8
  %106 = or disjoint i32 %103, %105
  %107 = tail call noundef i32 @llvm.bswap.i32(i32 %106)
  %108 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 13)
  %109 = xor i32 %106, -2027464037
  %110 = zext i32 %109 to i64
  %111 = xor i32 %108, 808198283
  %112 = zext i32 %111 to i64
  %113 = mul i64 %110, -4417276706812531889
  %114 = lshr i64 %113, 29
  %115 = xor i64 %114, %113
  %116 = mul i64 %115, 1609587929392839161
  %117 = lshr i64 %116, 32
  %118 = xor i64 %117, %116
  %119 = mul i64 %112, -4417276706812531889
  %120 = lshr i64 %119, 29
  %121 = xor i64 %120, %119
  %122 = mul i64 %121, 1609587929392839161
  %123 = lshr i64 %122, 32
  %124 = xor i64 %123, %122
  %125 = insertvalue { i64, i64 } poison, i64 %118, 0
  %126 = insertvalue { i64, i64 } %125, i64 %124, 1
  br label %293

127:                                              ; preds = %3
  %128 = icmp ult i64 %1, 129
  br i1 %128, label %129, label %287

129:                                              ; preds = %127
  %130 = mul i64 %1, -7046029288634856825
  %131 = icmp samesign ugt i64 %1, 32
  br i1 %131, label %132, label %235

132:                                              ; preds = %129
  %133 = icmp samesign ugt i64 %1, 64
  br i1 %133, label %134, label %201

134:                                              ; preds = %132
  %135 = icmp samesign ugt i64 %1, 96
  br i1 %135, label %136, label %167

136:                                              ; preds = %134
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %139 = getelementptr inbounds i8, ptr %138, i64 -64
  %140 = load i64, ptr %137, align 1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %142 = load i64, ptr %141, align 1
  %143 = xor i64 %140, 4554437623014685352
  %144 = xor i64 %142, 2111919702937427193
  %145 = zext i64 %143 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %130, %150
  %152 = load i64, ptr %139, align 1
  %153 = getelementptr inbounds i8, ptr %138, i64 -56
  %154 = load i64, ptr %153, align 1
  %155 = add i64 %154, %152
  %156 = xor i64 %151, %155
  %157 = xor i64 %152, 3556072174620004746
  %158 = xor i64 %154, 7238261902898274248
  %159 = zext i64 %157 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %142, %140
  %166 = xor i64 %165, %164
  br label %167

167:                                              ; preds = %136, %134
  %168 = phi i64 [ %156, %136 ], [ %130, %134 ]
  %169 = phi i64 [ %166, %136 ], [ 0, %134 ]
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %172 = getelementptr inbounds i8, ptr %171, i64 -48
  %173 = load i64, ptr %170, align 1
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %175 = load i64, ptr %174, align 1
  %176 = xor i64 %173, -3818837453329782724
  %177 = xor i64 %175, -6688317018830679928
  %178 = zext i64 %176 to i128
  %179 = zext i64 %177 to i128
  %180 = mul nuw i128 %179, %178
  %181 = lshr i128 %180, 64
  %182 = xor i128 %181, %180
  %183 = trunc i128 %182 to i64
  %184 = add i64 %168, %183
  %185 = load i64, ptr %172, align 1
  %186 = getelementptr inbounds i8, ptr %171, i64 -40
  %187 = load i64, ptr %186, align 1
  %188 = add i64 %187, %185
  %189 = xor i64 %184, %188
  %190 = xor i64 %185, 5690594596133299313
  %191 = xor i64 %187, -2833645246901970632
  %192 = zext i64 %190 to i128
  %193 = zext i64 %191 to i128
  %194 = mul nuw i128 %193, %192
  %195 = lshr i128 %194, 64
  %196 = xor i128 %195, %194
  %197 = trunc i128 %196 to i64
  %198 = add i64 %169, %197
  %199 = add i64 %175, %173
  %200 = xor i64 %198, %199
  br label %201

201:                                              ; preds = %167, %132
  %202 = phi i64 [ %189, %167 ], [ %130, %132 ]
  %203 = phi i64 [ %200, %167 ], [ 0, %132 ]
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %205 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %206 = getelementptr inbounds i8, ptr %205, i64 -32
  %207 = load i64, ptr %204, align 1
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %209 = load i64, ptr %208, align 1
  %210 = xor i64 %207, 8711581037947681227
  %211 = xor i64 %209, 2410270004345854594
  %212 = zext i64 %210 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %202, %217
  %219 = load i64, ptr %206, align 1
  %220 = getelementptr inbounds i8, ptr %205, i64 -24
  %221 = load i64, ptr %220, align 1
  %222 = add i64 %221, %219
  %223 = xor i64 %218, %222
  %224 = xor i64 %219, -8204357891075471176
  %225 = xor i64 %221, 5487137525590930912
  %226 = zext i64 %224 to i128
  %227 = zext i64 %225 to i128
  %228 = mul nuw i128 %227, %226
  %229 = lshr i128 %228, 64
  %230 = xor i128 %229, %228
  %231 = trunc i128 %230 to i64
  %232 = add i64 %203, %231
  %233 = add i64 %209, %207
  %234 = xor i64 %232, %233
  br label %235

235:                                              ; preds = %201, %129
  %236 = phi i64 [ %223, %201 ], [ %130, %129 ]
  %237 = phi i64 [ %234, %201 ], [ 0, %129 ]
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %239 = getelementptr inbounds i8, ptr %238, i64 -16
  %240 = load i64, ptr %0, align 1
  %241 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %242 = load i64, ptr %241, align 1
  %243 = xor i64 %240, -4734510112055689544
  %244 = xor i64 %242, 2066345149520216444
  %245 = zext i64 %243 to i128
  %246 = zext i64 %244 to i128
  %247 = mul nuw i128 %246, %245
  %248 = lshr i128 %247, 64
  %249 = xor i128 %248, %247
  %250 = trunc i128 %249 to i64
  %251 = add i64 %236, %250
  %252 = load i64, ptr %239, align 1
  %253 = getelementptr inbounds i8, ptr %238, i64 -8
  %254 = load i64, ptr %253, align 1
  %255 = add i64 %254, %252
  %256 = xor i64 %251, %255
  %257 = xor i64 %252, -2623469361688619810
  %258 = xor i64 %254, 2262974939099578482
  %259 = zext i64 %257 to i128
  %260 = zext i64 %258 to i128
  %261 = mul nuw i128 %260, %259
  %262 = lshr i128 %261, 64
  %263 = xor i128 %262, %261
  %264 = trunc i128 %263 to i64
  %265 = add i64 %237, %264
  %266 = add i64 %242, %240
  %267 = xor i64 %265, %266
  %268 = add i64 %267, %256
  %269 = mul i64 %256, -7046029288634856825
  %270 = mul i64 %267, -8796714831421723037
  %271 = mul i64 %1, -4417276706812531889
  %272 = add i64 %269, %271
  %273 = add i64 %272, %270
  %274 = lshr i64 %268, 37
  %275 = xor i64 %274, %268
  %276 = mul i64 %275, 1609587791953885689
  %277 = lshr i64 %276, 32
  %278 = xor i64 %277, %276
  %279 = lshr i64 %273, 37
  %280 = xor i64 %279, %273
  %281 = mul i64 %280, 1609587791953885689
  %282 = lshr i64 %281, 32
  %283 = xor i64 %282, %281
  %284 = sub i64 0, %283
  %285 = insertvalue { i64, i64 } poison, i64 %278, 0
  %286 = insertvalue { i64, i64 } %285, i64 %284, 1
  br label %293

287:                                              ; preds = %127
  %288 = icmp ult i64 %1, 241
  br i1 %288, label %289, label %291

289:                                              ; preds = %287
  %290 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef readonly %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #43
  br label %293

291:                                              ; preds = %287
  %292 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_default(ptr noundef readonly %0, i64 noundef %1) #39
  br label %293

293:                                              ; preds = %7, %51, %86, %88, %235, %289, %291
  %294 = phi { i64, i64 } [ %286, %235 ], [ %290, %289 ], [ %292, %291 ], [ %48, %7 ], [ %85, %51 ], [ %126, %88 ], [ { i64 6918025063187695999, i64 -7374073936536430376 }, %86 ]
  %295 = extractvalue { i64, i64 } %294, 0
  %296 = trunc i64 %295 to i32
  ret i32 %296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal i32 @localXXH3_128b_seeded(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #15 {
  %4 = zext i32 %2 to i64
  %5 = tail call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %4) #43
  %6 = extractvalue { i64, i64 } %5, 0
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read) uwtable
define internal i32 @localXXH3_128b_secret(ptr nocapture noundef readonly %0, i64 noundef %1, i32 %2) #16 {
  %4 = tail call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecret(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef nonnull @g_benchSecretBuf, i64 noundef 136) #43
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal i32 @localXXH32_stream(ptr noundef %0, i64 noundef %1, i32 noundef %2) #17 {
  %4 = alloca %struct.XXH_INLINE_XXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = add i32 %2, 606290984
  store i32 %6, ptr %5, align 4
  %7 = add i32 %2, -2048144777
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %2, ptr %9, align 4
  %10 = add i32 %2, 1640531535
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %10, ptr %11, align 4
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %14)
  br label %92

15:                                               ; preds = %3
  %16 = trunc i64 %1 to i32
  store i32 %16, ptr %4, align 4
  %17 = icmp ugt i64 %1, 15
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %21 = icmp ult i64 %1, 16
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %23, ptr nonnull align 1 %0, i64 %1, i1 false)
  %24 = load i32, ptr %20, align 4
  %25 = add i32 %24, %16
  br label %72

26:                                               ; preds = %15
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %28 = ptrtoint ptr %27 to i64
  %29 = getelementptr inbounds i8, ptr %27, i64 -15
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi i32 [ %10, %26 ], [ %62, %30 ]
  %32 = phi i32 [ %2, %26 ], [ %55, %30 ]
  %33 = phi i32 [ %7, %26 ], [ %48, %30 ]
  %34 = phi i32 [ %6, %26 ], [ %41, %30 ]
  %35 = phi ptr [ %0, %26 ], [ %63, %30 ]
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %34
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %40) #45, !srcloc !11
  %42 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %43 = load i32, ptr %42, align 1
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %33
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %47) #45, !srcloc !11
  %49 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %50 = load i32, ptr %49, align 1
  %51 = mul i32 %50, -2048144777
  %52 = add i32 %51, %32
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 13)
  %54 = mul i32 %53, -1640531535
  %55 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %54) #45, !srcloc !11
  %56 = getelementptr inbounds nuw i8, ptr %35, i64 12
  %57 = load i32, ptr %56, align 1
  %58 = mul i32 %57, -2048144777
  %59 = add i32 %58, %31
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 13)
  %61 = mul i32 %60, -1640531535
  %62 = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %61) #45, !srcloc !11
  %63 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %64 = icmp ult ptr %63, %29
  br i1 %64, label %30, label %65, !llvm.loop !12

65:                                               ; preds = %30
  store i32 %41, ptr %5, align 4
  store i32 %48, ptr %8, align 4
  store i32 %55, ptr %9, align 4
  store i32 %62, ptr %11, align 4
  %66 = icmp ult ptr %63, %27
  br i1 %66, label %67, label %78

67:                                               ; preds = %65
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %69 = ptrtoint ptr %63 to i64
  %70 = sub i64 %28, %69
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %68, ptr nonnull align 1 %63, i64 %70, i1 false)
  %71 = trunc i64 %70 to i32
  br label %72

72:                                               ; preds = %67, %22
  %73 = phi i32 [ %25, %22 ], [ %71, %67 ]
  %74 = phi i32 [ %10, %22 ], [ %62, %67 ]
  %75 = phi i32 [ %2, %22 ], [ %55, %67 ]
  %76 = phi i32 [ %7, %22 ], [ %48, %67 ]
  %77 = phi i32 [ %6, %22 ], [ %41, %67 ]
  store i32 %73, ptr %20, align 4
  br label %78

78:                                               ; preds = %72, %65
  %79 = phi i32 [ 0, %65 ], [ %73, %72 ]
  %80 = phi i32 [ %62, %65 ], [ %74, %72 ]
  %81 = phi i32 [ %55, %65 ], [ %75, %72 ]
  %82 = phi i32 [ %48, %65 ], [ %76, %72 ]
  %83 = phi i32 [ %41, %65 ], [ %77, %72 ]
  br i1 %17, label %84, label %92

84:                                               ; preds = %78
  %85 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 1)
  %86 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 7)
  %87 = add i32 %86, %85
  %88 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 12)
  %89 = add i32 %87, %88
  %90 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 18)
  %91 = add i32 %89, %90
  br label %97

92:                                               ; preds = %13, %78
  %93 = phi i32 [ %2, %13 ], [ %81, %78 ]
  %94 = phi i32 [ 0, %13 ], [ %16, %78 ]
  %95 = phi i32 [ 0, %13 ], [ %79, %78 ]
  %96 = add i32 %93, 374761393
  br label %97

97:                                               ; preds = %92, %84
  %98 = phi i32 [ %16, %84 ], [ %94, %92 ]
  %99 = phi i32 [ %79, %84 ], [ %95, %92 ]
  %100 = phi i32 [ %91, %84 ], [ %96, %92 ]
  %101 = add i32 %98, %100
  %102 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %103 = and i32 %99, 15
  %104 = zext nneg i32 %103 to i64
  %105 = icmp samesign ugt i32 %103, 3
  br i1 %105, label %106, label %135

106:                                              ; preds = %97
  %107 = add nsw i64 %104, -4
  %108 = lshr i64 %107, 2
  %109 = add nuw nsw i64 %108, 1
  %110 = and i64 %109, 7
  %111 = and i64 %107, 28
  %112 = icmp eq i64 %111, 28
  br i1 %112, label %127, label %113

113:                                              ; preds = %106, %113
  %114 = phi i32 [ %123, %113 ], [ %101, %106 ]
  %115 = phi i64 [ %124, %113 ], [ %104, %106 ]
  %116 = phi ptr [ %121, %113 ], [ %102, %106 ]
  %117 = phi i64 [ %125, %113 ], [ 0, %106 ]
  %118 = load i32, ptr %116, align 1
  %119 = mul i32 %118, -1028477379
  %120 = add i32 %119, %114
  %121 = getelementptr inbounds nuw i8, ptr %116, i64 4
  %122 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 17)
  %123 = mul i32 %122, 668265263
  %124 = add nsw i64 %115, -4
  %125 = add i64 %117, 1
  %126 = icmp eq i64 %125, %110
  br i1 %126, label %127, label %113, !llvm.loop !23

127:                                              ; preds = %113, %106
  %128 = phi i32 [ %101, %106 ], [ %123, %113 ]
  %129 = phi i64 [ %104, %106 ], [ %124, %113 ]
  %130 = phi ptr [ %102, %106 ], [ %121, %113 ]
  %131 = phi ptr [ poison, %106 ], [ %121, %113 ]
  %132 = phi i32 [ poison, %106 ], [ %123, %113 ]
  %133 = phi i64 [ poison, %106 ], [ %124, %113 ]
  %134 = icmp ult i64 %107, 28
  br i1 %134, label %135, label %164

135:                                              ; preds = %127, %164, %97
  %136 = phi ptr [ %102, %97 ], [ %131, %127 ], [ %213, %164 ]
  %137 = phi i64 [ %104, %97 ], [ %133, %127 ], [ %216, %164 ]
  %138 = phi i32 [ %101, %97 ], [ %132, %127 ], [ %215, %164 ]
  %139 = icmp eq i64 %137, 0
  br i1 %139, label %280, label %140

140:                                              ; preds = %135
  %141 = and i64 %137, 7
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %158, label %143

143:                                              ; preds = %140, %143
  %144 = phi i32 [ %154, %143 ], [ %138, %140 ]
  %145 = phi i64 [ %155, %143 ], [ %137, %140 ]
  %146 = phi ptr [ %148, %143 ], [ %136, %140 ]
  %147 = phi i64 [ %156, %143 ], [ 0, %140 ]
  %148 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %149 = load i8, ptr %146, align 1
  %150 = zext i8 %149 to i32
  %151 = mul i32 %150, 374761393
  %152 = add i32 %151, %144
  %153 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 11)
  %154 = mul i32 %153, -1640531535
  %155 = add nsw i64 %145, -1
  %156 = add i64 %147, 1
  %157 = icmp eq i64 %156, %141
  br i1 %157, label %158, label %143, !llvm.loop !24

158:                                              ; preds = %143, %140
  %159 = phi i32 [ poison, %140 ], [ %154, %143 ]
  %160 = phi i32 [ %138, %140 ], [ %154, %143 ]
  %161 = phi i64 [ %137, %140 ], [ %155, %143 ]
  %162 = phi ptr [ %136, %140 ], [ %148, %143 ]
  %163 = icmp ult i64 %137, 8
  br i1 %163, label %280, label %218

164:                                              ; preds = %127, %164
  %165 = phi i32 [ %215, %164 ], [ %128, %127 ]
  %166 = phi i64 [ %216, %164 ], [ %129, %127 ]
  %167 = phi ptr [ %213, %164 ], [ %130, %127 ]
  %168 = load i32, ptr %167, align 1
  %169 = mul i32 %168, -1028477379
  %170 = add i32 %169, %165
  %171 = getelementptr inbounds nuw i8, ptr %167, i64 4
  %172 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 17)
  %173 = mul i32 %172, 668265263
  %174 = load i32, ptr %171, align 1
  %175 = mul i32 %174, -1028477379
  %176 = add i32 %175, %173
  %177 = getelementptr inbounds nuw i8, ptr %167, i64 8
  %178 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 17)
  %179 = mul i32 %178, 668265263
  %180 = load i32, ptr %177, align 1
  %181 = mul i32 %180, -1028477379
  %182 = add i32 %181, %179
  %183 = getelementptr inbounds nuw i8, ptr %167, i64 12
  %184 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 17)
  %185 = mul i32 %184, 668265263
  %186 = load i32, ptr %183, align 1
  %187 = mul i32 %186, -1028477379
  %188 = add i32 %187, %185
  %189 = getelementptr inbounds nuw i8, ptr %167, i64 16
  %190 = tail call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 17)
  %191 = mul i32 %190, 668265263
  %192 = load i32, ptr %189, align 1
  %193 = mul i32 %192, -1028477379
  %194 = add i32 %193, %191
  %195 = getelementptr inbounds nuw i8, ptr %167, i64 20
  %196 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 17)
  %197 = mul i32 %196, 668265263
  %198 = load i32, ptr %195, align 1
  %199 = mul i32 %198, -1028477379
  %200 = add i32 %199, %197
  %201 = getelementptr inbounds nuw i8, ptr %167, i64 24
  %202 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 17)
  %203 = mul i32 %202, 668265263
  %204 = load i32, ptr %201, align 1
  %205 = mul i32 %204, -1028477379
  %206 = add i32 %205, %203
  %207 = getelementptr inbounds nuw i8, ptr %167, i64 28
  %208 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 17)
  %209 = mul i32 %208, 668265263
  %210 = load i32, ptr %207, align 1
  %211 = mul i32 %210, -1028477379
  %212 = add i32 %211, %209
  %213 = getelementptr inbounds nuw i8, ptr %167, i64 32
  %214 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 17)
  %215 = mul i32 %214, 668265263
  %216 = add nsw i64 %166, -32
  %217 = icmp ugt i64 %216, 3
  br i1 %217, label %164, label %135, !llvm.loop !16

218:                                              ; preds = %158, %218
  %219 = phi i32 [ %277, %218 ], [ %160, %158 ]
  %220 = phi i64 [ %278, %218 ], [ %161, %158 ]
  %221 = phi ptr [ %271, %218 ], [ %162, %158 ]
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 1
  %223 = load i8, ptr %221, align 1
  %224 = zext i8 %223 to i32
  %225 = mul i32 %224, 374761393
  %226 = add i32 %225, %219
  %227 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 11)
  %228 = mul i32 %227, -1640531535
  %229 = getelementptr inbounds nuw i8, ptr %221, i64 2
  %230 = load i8, ptr %222, align 1
  %231 = zext i8 %230 to i32
  %232 = mul i32 %231, 374761393
  %233 = add i32 %232, %228
  %234 = tail call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 11)
  %235 = mul i32 %234, -1640531535
  %236 = getelementptr inbounds nuw i8, ptr %221, i64 3
  %237 = load i8, ptr %229, align 1
  %238 = zext i8 %237 to i32
  %239 = mul i32 %238, 374761393
  %240 = add i32 %239, %235
  %241 = tail call i32 @llvm.fshl.i32(i32 %240, i32 %240, i32 11)
  %242 = mul i32 %241, -1640531535
  %243 = getelementptr inbounds nuw i8, ptr %221, i64 4
  %244 = load i8, ptr %236, align 1
  %245 = zext i8 %244 to i32
  %246 = mul i32 %245, 374761393
  %247 = add i32 %246, %242
  %248 = tail call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 11)
  %249 = mul i32 %248, -1640531535
  %250 = getelementptr inbounds nuw i8, ptr %221, i64 5
  %251 = load i8, ptr %243, align 1
  %252 = zext i8 %251 to i32
  %253 = mul i32 %252, 374761393
  %254 = add i32 %253, %249
  %255 = tail call i32 @llvm.fshl.i32(i32 %254, i32 %254, i32 11)
  %256 = mul i32 %255, -1640531535
  %257 = getelementptr inbounds nuw i8, ptr %221, i64 6
  %258 = load i8, ptr %250, align 1
  %259 = zext i8 %258 to i32
  %260 = mul i32 %259, 374761393
  %261 = add i32 %260, %256
  %262 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 11)
  %263 = mul i32 %262, -1640531535
  %264 = getelementptr inbounds nuw i8, ptr %221, i64 7
  %265 = load i8, ptr %257, align 1
  %266 = zext i8 %265 to i32
  %267 = mul i32 %266, 374761393
  %268 = add i32 %267, %263
  %269 = tail call i32 @llvm.fshl.i32(i32 %268, i32 %268, i32 11)
  %270 = mul i32 %269, -1640531535
  %271 = getelementptr inbounds nuw i8, ptr %221, i64 8
  %272 = load i8, ptr %264, align 1
  %273 = zext i8 %272 to i32
  %274 = mul i32 %273, 374761393
  %275 = add i32 %274, %270
  %276 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 11)
  %277 = mul i32 %276, -1640531535
  %278 = add nsw i64 %220, -8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %218, !llvm.loop !17

280:                                              ; preds = %158, %218, %135
  %281 = phi i32 [ %138, %135 ], [ %159, %158 ], [ %277, %218 ]
  %282 = lshr i32 %281, 15
  %283 = xor i32 %282, %281
  %284 = mul i32 %283, -2048144777
  %285 = lshr i32 %284, 13
  %286 = xor i32 %285, %284
  %287 = mul i32 %286, -1028477379
  %288 = lshr i32 %287, 16
  %289 = xor i32 %288, %287
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #39
  ret i32 %289
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal i32 @localXXH64_stream(ptr noundef %0, i64 noundef %1, i32 noundef %2) #18 {
  %4 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #39
  %5 = zext i32 %2 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i64 88, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %7 = add nuw nsw i64 %5, 6983438078262162902
  store i64 %7, ptr %6, align 8
  %8 = add nuw nsw i64 %5, -4417276706812531889
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %8, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %5, ptr %10, align 8
  %11 = add nuw nsw i64 %5, 7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %11, ptr %12, align 8
  %13 = icmp eq ptr %0, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %15)
  br label %98

16:                                               ; preds = %3
  store i64 %1, ptr %4, align 8
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %18 = icmp ult i64 %1, 32
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %20, ptr nonnull align 1 %0, i64 %1, i1 false)
  %21 = trunc nuw nsw i64 %1 to i32
  %22 = load i32, ptr %17, align 8
  %23 = add i32 %22, %21
  store i32 %23, ptr %17, align 8
  br label %98

24:                                               ; preds = %16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %26 = ptrtoint ptr %25 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 -31
  br label %28

28:                                               ; preds = %28, %24
  %29 = phi i64 [ %11, %24 ], [ %56, %28 ]
  %30 = phi i64 [ %5, %24 ], [ %50, %28 ]
  %31 = phi i64 [ %8, %24 ], [ %44, %28 ]
  %32 = phi i64 [ %7, %24 ], [ %38, %28 ]
  %33 = phi ptr [ %0, %24 ], [ %57, %28 ]
  %34 = load i64, ptr %33, align 1
  %35 = mul i64 %34, -4417276706812531889
  %36 = add i64 %35, %32
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %40 = load i64, ptr %39, align 1
  %41 = mul i64 %40, -4417276706812531889
  %42 = add i64 %41, %31
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 31)
  %44 = mul i64 %43, -7046029288634856825
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %46 = load i64, ptr %45, align 1
  %47 = mul i64 %46, -4417276706812531889
  %48 = add i64 %47, %30
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 31)
  %50 = mul i64 %49, -7046029288634856825
  %51 = getelementptr inbounds nuw i8, ptr %33, i64 24
  %52 = load i64, ptr %51, align 1
  %53 = mul i64 %52, -4417276706812531889
  %54 = add i64 %53, %29
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %58 = icmp ult ptr %57, %27
  br i1 %58, label %28, label %59, !llvm.loop !18

59:                                               ; preds = %28
  store i64 %38, ptr %6, align 8, !alias.scope !25, !noalias !28
  store i64 %44, ptr %9, align 8, !alias.scope !25, !noalias !28
  store i64 %50, ptr %10, align 8, !alias.scope !25, !noalias !28
  store i64 %56, ptr %12, align 8, !alias.scope !25, !noalias !28
  %60 = icmp ult ptr %57, %25
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %63 = ptrtoint ptr %57 to i64
  %64 = sub i64 %26, %63
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %62, ptr nonnull align 1 %57, i64 %64, i1 false)
  %65 = trunc i64 %64 to i32
  store i32 %65, ptr %17, align 8
  br label %66

66:                                               ; preds = %61, %59
  %67 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 1)
  %68 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 7)
  %69 = add i64 %68, %67
  %70 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 12)
  %71 = add i64 %69, %70
  %72 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 18)
  %73 = add i64 %71, %72
  %74 = mul i64 %37, -2381459717836149591
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 31)
  %76 = mul i64 %75, -7046029288634856825
  %77 = xor i64 %73, %76
  %78 = mul i64 %77, -7046029288634856825
  %79 = add i64 %78, -8796714831421723037
  %80 = mul i64 %43, -2381459717836149591
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %79, %82
  %84 = mul i64 %83, -7046029288634856825
  %85 = add i64 %84, -8796714831421723037
  %86 = mul i64 %49, -2381459717836149591
  %87 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 31)
  %88 = mul i64 %87, -7046029288634856825
  %89 = xor i64 %85, %88
  %90 = mul i64 %89, -7046029288634856825
  %91 = add i64 %90, -8796714831421723037
  %92 = mul i64 %55, -2381459717836149591
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  %95 = xor i64 %91, %94
  %96 = mul i64 %95, -7046029288634856825
  %97 = add i64 %96, -8796714831421723037
  br label %101

98:                                               ; preds = %19, %14
  %99 = phi i64 [ %1, %19 ], [ 0, %14 ]
  %100 = add nuw nsw i64 %5, 2870177450012600261
  br label %101

101:                                              ; preds = %98, %66
  %102 = phi i64 [ %1, %66 ], [ %99, %98 ]
  %103 = phi i64 [ %97, %66 ], [ %100, %98 ]
  %104 = add i64 %103, %102
  %105 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %106 = and i64 %102, 31
  %107 = icmp samesign ugt i64 %106, 7
  br i1 %107, label %108, label %182

108:                                              ; preds = %101
  %109 = add nsw i64 %106, -8
  %110 = lshr i64 %109, 3
  %111 = add nuw nsw i64 %110, 1
  %112 = and i64 %111, 3
  %113 = and i64 %109, 24
  %114 = icmp eq i64 %113, 24
  br i1 %114, label %132, label %115

115:                                              ; preds = %108, %115
  %116 = phi i64 [ %128, %115 ], [ %104, %108 ]
  %117 = phi ptr [ %124, %115 ], [ %105, %108 ]
  %118 = phi i64 [ %129, %115 ], [ %106, %108 ]
  %119 = phi i64 [ %130, %115 ], [ 0, %108 ]
  %120 = load i64, ptr %117, align 8
  %121 = mul i64 %120, -4417276706812531889
  %122 = tail call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 31)
  %123 = mul i64 %122, -7046029288634856825
  %124 = getelementptr inbounds nuw i8, ptr %117, i64 8
  %125 = xor i64 %123, %116
  %126 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 27)
  %127 = mul i64 %126, -7046029288634856825
  %128 = add i64 %127, -8796714831421723037
  %129 = add nsw i64 %118, -8
  %130 = add i64 %119, 1
  %131 = icmp eq i64 %130, %112
  br i1 %131, label %132, label %115, !llvm.loop !30

132:                                              ; preds = %115, %108
  %133 = phi i64 [ %104, %108 ], [ %128, %115 ]
  %134 = phi ptr [ %105, %108 ], [ %124, %115 ]
  %135 = phi i64 [ %106, %108 ], [ %129, %115 ]
  %136 = phi ptr [ poison, %108 ], [ %124, %115 ]
  %137 = phi i64 [ poison, %108 ], [ %128, %115 ]
  %138 = phi i64 [ poison, %108 ], [ %129, %115 ]
  %139 = icmp ult i64 %109, 24
  br i1 %139, label %182, label %140

140:                                              ; preds = %132, %140
  %141 = phi i64 [ %179, %140 ], [ %133, %132 ]
  %142 = phi ptr [ %175, %140 ], [ %134, %132 ]
  %143 = phi i64 [ %180, %140 ], [ %135, %132 ]
  %144 = load i64, ptr %142, align 8
  %145 = mul i64 %144, -4417276706812531889
  %146 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 31)
  %147 = mul i64 %146, -7046029288634856825
  %148 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %149 = xor i64 %147, %141
  %150 = tail call i64 @llvm.fshl.i64(i64 %149, i64 %149, i64 27)
  %151 = mul i64 %150, -7046029288634856825
  %152 = add i64 %151, -8796714831421723037
  %153 = load i64, ptr %148, align 8
  %154 = mul i64 %153, -4417276706812531889
  %155 = tail call i64 @llvm.fshl.i64(i64 %154, i64 %154, i64 31)
  %156 = mul i64 %155, -7046029288634856825
  %157 = getelementptr inbounds nuw i8, ptr %142, i64 16
  %158 = xor i64 %156, %152
  %159 = tail call i64 @llvm.fshl.i64(i64 %158, i64 %158, i64 27)
  %160 = mul i64 %159, -7046029288634856825
  %161 = add i64 %160, -8796714831421723037
  %162 = load i64, ptr %157, align 8
  %163 = mul i64 %162, -4417276706812531889
  %164 = tail call i64 @llvm.fshl.i64(i64 %163, i64 %163, i64 31)
  %165 = mul i64 %164, -7046029288634856825
  %166 = getelementptr inbounds nuw i8, ptr %142, i64 24
  %167 = xor i64 %165, %161
  %168 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 27)
  %169 = mul i64 %168, -7046029288634856825
  %170 = add i64 %169, -8796714831421723037
  %171 = load i64, ptr %166, align 8
  %172 = mul i64 %171, -4417276706812531889
  %173 = tail call i64 @llvm.fshl.i64(i64 %172, i64 %172, i64 31)
  %174 = mul i64 %173, -7046029288634856825
  %175 = getelementptr inbounds nuw i8, ptr %142, i64 32
  %176 = xor i64 %174, %170
  %177 = tail call i64 @llvm.fshl.i64(i64 %176, i64 %176, i64 27)
  %178 = mul i64 %177, -7046029288634856825
  %179 = add i64 %178, -8796714831421723037
  %180 = add nsw i64 %143, -32
  %181 = icmp ugt i64 %180, 7
  br i1 %181, label %140, label %182, !llvm.loop !20

182:                                              ; preds = %132, %140, %101
  %183 = phi i64 [ %106, %101 ], [ %138, %132 ], [ %180, %140 ]
  %184 = phi ptr [ %105, %101 ], [ %136, %132 ], [ %175, %140 ]
  %185 = phi i64 [ %104, %101 ], [ %137, %132 ], [ %179, %140 ]
  %186 = icmp samesign ugt i64 %183, 3
  br i1 %186, label %187, label %197

187:                                              ; preds = %182
  %188 = load i32, ptr %184, align 4
  %189 = zext i32 %188 to i64
  %190 = mul i64 %189, -7046029288634856825
  %191 = xor i64 %190, %185
  %192 = getelementptr inbounds nuw i8, ptr %184, i64 4
  %193 = tail call i64 @llvm.fshl.i64(i64 %191, i64 %191, i64 23)
  %194 = mul i64 %193, -4417276706812531889
  %195 = add i64 %194, 1609587929392839161
  %196 = add nsw i64 %183, -4
  br label %197

197:                                              ; preds = %187, %182
  %198 = phi i64 [ %196, %187 ], [ %183, %182 ]
  %199 = phi ptr [ %192, %187 ], [ %184, %182 ]
  %200 = phi i64 [ %195, %187 ], [ %185, %182 ]
  %201 = icmp eq i64 %198, 0
  br i1 %201, label %288, label %202

202:                                              ; preds = %197
  %203 = and i64 %198, 7
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %220, label %205

205:                                              ; preds = %202, %205
  %206 = phi i64 [ %216, %205 ], [ %200, %202 ]
  %207 = phi ptr [ %210, %205 ], [ %199, %202 ]
  %208 = phi i64 [ %217, %205 ], [ %198, %202 ]
  %209 = phi i64 [ %218, %205 ], [ 0, %202 ]
  %210 = getelementptr inbounds nuw i8, ptr %207, i64 1
  %211 = load i8, ptr %207, align 1
  %212 = zext i8 %211 to i64
  %213 = mul i64 %212, 2870177450012600261
  %214 = xor i64 %213, %206
  %215 = tail call i64 @llvm.fshl.i64(i64 %214, i64 %214, i64 11)
  %216 = mul i64 %215, -7046029288634856825
  %217 = add nsw i64 %208, -1
  %218 = add i64 %209, 1
  %219 = icmp eq i64 %218, %203
  br i1 %219, label %220, label %205, !llvm.loop !31

220:                                              ; preds = %205, %202
  %221 = phi i64 [ poison, %202 ], [ %216, %205 ]
  %222 = phi i64 [ %200, %202 ], [ %216, %205 ]
  %223 = phi ptr [ %199, %202 ], [ %210, %205 ]
  %224 = phi i64 [ %198, %202 ], [ %217, %205 ]
  %225 = icmp ult i64 %198, 8
  br i1 %225, label %288, label %226

226:                                              ; preds = %220, %226
  %227 = phi i64 [ %285, %226 ], [ %222, %220 ]
  %228 = phi ptr [ %279, %226 ], [ %223, %220 ]
  %229 = phi i64 [ %286, %226 ], [ %224, %220 ]
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 1
  %231 = load i8, ptr %228, align 1
  %232 = zext i8 %231 to i64
  %233 = mul i64 %232, 2870177450012600261
  %234 = xor i64 %233, %227
  %235 = tail call i64 @llvm.fshl.i64(i64 %234, i64 %234, i64 11)
  %236 = mul i64 %235, -7046029288634856825
  %237 = getelementptr inbounds nuw i8, ptr %228, i64 2
  %238 = load i8, ptr %230, align 1
  %239 = zext i8 %238 to i64
  %240 = mul i64 %239, 2870177450012600261
  %241 = xor i64 %240, %236
  %242 = tail call i64 @llvm.fshl.i64(i64 %241, i64 %241, i64 11)
  %243 = mul i64 %242, -7046029288634856825
  %244 = getelementptr inbounds nuw i8, ptr %228, i64 3
  %245 = load i8, ptr %237, align 1
  %246 = zext i8 %245 to i64
  %247 = mul i64 %246, 2870177450012600261
  %248 = xor i64 %247, %243
  %249 = tail call i64 @llvm.fshl.i64(i64 %248, i64 %248, i64 11)
  %250 = mul i64 %249, -7046029288634856825
  %251 = getelementptr inbounds nuw i8, ptr %228, i64 4
  %252 = load i8, ptr %244, align 1
  %253 = zext i8 %252 to i64
  %254 = mul i64 %253, 2870177450012600261
  %255 = xor i64 %254, %250
  %256 = tail call i64 @llvm.fshl.i64(i64 %255, i64 %255, i64 11)
  %257 = mul i64 %256, -7046029288634856825
  %258 = getelementptr inbounds nuw i8, ptr %228, i64 5
  %259 = load i8, ptr %251, align 1
  %260 = zext i8 %259 to i64
  %261 = mul i64 %260, 2870177450012600261
  %262 = xor i64 %261, %257
  %263 = tail call i64 @llvm.fshl.i64(i64 %262, i64 %262, i64 11)
  %264 = mul i64 %263, -7046029288634856825
  %265 = getelementptr inbounds nuw i8, ptr %228, i64 6
  %266 = load i8, ptr %258, align 1
  %267 = zext i8 %266 to i64
  %268 = mul i64 %267, 2870177450012600261
  %269 = xor i64 %268, %264
  %270 = tail call i64 @llvm.fshl.i64(i64 %269, i64 %269, i64 11)
  %271 = mul i64 %270, -7046029288634856825
  %272 = getelementptr inbounds nuw i8, ptr %228, i64 7
  %273 = load i8, ptr %265, align 1
  %274 = zext i8 %273 to i64
  %275 = mul i64 %274, 2870177450012600261
  %276 = xor i64 %275, %271
  %277 = tail call i64 @llvm.fshl.i64(i64 %276, i64 %276, i64 11)
  %278 = mul i64 %277, -7046029288634856825
  %279 = getelementptr inbounds nuw i8, ptr %228, i64 8
  %280 = load i8, ptr %272, align 1
  %281 = zext i8 %280 to i64
  %282 = mul i64 %281, 2870177450012600261
  %283 = xor i64 %282, %278
  %284 = tail call i64 @llvm.fshl.i64(i64 %283, i64 %283, i64 11)
  %285 = mul i64 %284, -7046029288634856825
  %286 = add nsw i64 %229, -8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %226, !llvm.loop !22

288:                                              ; preds = %220, %226, %197
  %289 = phi i64 [ %200, %197 ], [ %221, %220 ], [ %285, %226 ]
  %290 = lshr i64 %289, 33
  %291 = xor i64 %290, %289
  %292 = mul i64 %291, -4417276706812531889
  %293 = lshr i64 %292, 29
  %294 = xor i64 %293, %292
  %295 = mul i64 %294, 1609587929392839161
  %296 = lshr i64 %295, 32
  %297 = xor i64 %296, %295
  %298 = trunc i64 %297 to i32
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #39
  ret i32 %298
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i32 @localXXH3_stream(ptr nocapture noundef %0, i64 noundef %1, i32 %2) #19 {
  %4 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #39
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %4, align 64
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %7, align 16
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %9, align 32
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %11, align 16
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 552
  store i64 0, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 568
  store ptr @XXH3_kSecret, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 544
  store i64 128, ptr %15, align 32
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i64 16, ptr %16, align 8
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %4, ptr nocapture noundef %0, i64 noundef %1)
  %17 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %4) #43
  %18 = trunc i64 %17 to i32
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #39
  ret i32 %18
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i32 @localXXH3_stream_seeded(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #19 {
  %4 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #39
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %4, align 64
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %9, align 16
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %11, align 32
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %13, align 16
  br label %72

14:                                               ; preds = %3
  %15 = zext i32 %2 to i64
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %17 = add nuw nsw i64 %15, -4734510112055689544
  %18 = sub nuw nsw i64 2066345149520216444, %15
  store i64 %17, ptr %16, align 64
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %18, ptr %19, align 8
  %20 = add nuw nsw i64 %15, -2623469361688619810
  %21 = sub nuw nsw i64 2262974939099578482, %15
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %20, ptr %22, align 16
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %21, ptr %23, align 8
  %24 = add nuw nsw i64 %15, 8711581037947681227
  %25 = sub nuw nsw i64 2410270004345854594, %15
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %24, ptr %26, align 32
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %25, ptr %27, align 8
  %28 = add nuw nsw i64 %15, -8204357891075471176
  %29 = sub nuw nsw i64 5487137525590930912, %15
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 %28, ptr %30, align 16
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %29, ptr %31, align 8
  %32 = add nuw nsw i64 %15, -3818837453329782724
  %33 = sub nuw nsw i64 -6688317018830679928, %15
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i64 %32, ptr %34, align 64
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %33, ptr %35, align 8
  %36 = add nuw nsw i64 %15, 5690594596133299313
  %37 = sub nuw nsw i64 -2833645246901970632, %15
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i64 %36, ptr %38, align 16
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 %37, ptr %39, align 8
  %40 = add nuw nsw i64 %15, 4554437623014685352
  %41 = sub nuw nsw i64 2111919702937427193, %15
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 %40, ptr %42, align 32
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 %41, ptr %43, align 8
  %44 = add nuw nsw i64 %15, 3556072174620004746
  %45 = sub nuw nsw i64 7238261902898274248, %15
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i64 %44, ptr %46, align 16
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i64 %45, ptr %47, align 8
  %48 = add nuw nsw i64 %15, -4329134394285701654
  %49 = sub nuw nsw i64 -1485321483350670907, %15
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store i64 %48, ptr %50, align 64
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i64 %49, ptr %51, align 8
  %52 = add nuw nsw i64 %15, 5321830579834785047
  %53 = sub nuw nsw i64 -7032137544937171245, %15
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i64 %52, ptr %54, align 16
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 216
  store i64 %53, ptr %55, align 8
  %56 = add nuw nsw i64 %15, -242834301215959509
  %57 = sub nuw nsw i64 -3588858202114426737, %15
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 224
  store i64 %56, ptr %58, align 32
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i64 %57, ptr %59, align 8
  %60 = add nuw nsw i64 %15, 2883454493032893253
  %61 = sub nuw nsw i64 9097354517224871855, %15
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i64 %60, ptr %62, align 16
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 248
  store i64 %61, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %4, align 64
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %66, align 16
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %68, align 32
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %70, align 16
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 516
  store i32 1, ptr %71, align 4
  br label %72

72:                                               ; preds = %6, %14
  %73 = phi i64 [ 0, %6 ], [ %15, %14 ]
  %74 = phi ptr [ @XXH3_kSecret, %6 ], [ null, %14 ]
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 568
  %76 = getelementptr inbounds nuw i8, ptr %4, i64 552
  %77 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %77, align 8
  store i64 %73, ptr %76, align 8
  store ptr %74, ptr %75, align 8
  %78 = getelementptr inbounds nuw i8, ptr %4, i64 544
  store i64 128, ptr %78, align 32
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i64 16, ptr %79, align 8
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %4, ptr nocapture noundef %0, i64 noundef %1)
  %80 = call fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef %4) #43
  %81 = trunc i64 %80 to i32
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #39
  ret i32 %81
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i32 @localXXH128_stream(ptr nocapture noundef %0, i64 noundef %1, i32 %2) #20 {
  %4 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #39
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %4, align 64
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %7, align 16
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %9, align 32
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %11, align 16
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 552
  store i64 0, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 568
  store ptr @XXH3_kSecret, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 544
  store i64 128, ptr %15, align 32
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i64 16, ptr %16, align 8
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %4, ptr nocapture noundef %0, i64 noundef %1)
  %17 = call fastcc i64 @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %4) #43
  %18 = trunc i64 %17 to i32
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #39
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal i32 @localXXH128_stream_seeded(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #20 {
  %4 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #39
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %4, align 64
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %9, align 16
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %11, align 32
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %13, align 16
  br label %72

14:                                               ; preds = %3
  %15 = zext i32 %2 to i64
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %17 = add nuw nsw i64 %15, -4734510112055689544
  %18 = sub nuw nsw i64 2066345149520216444, %15
  store i64 %17, ptr %16, align 64
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %18, ptr %19, align 8
  %20 = add nuw nsw i64 %15, -2623469361688619810
  %21 = sub nuw nsw i64 2262974939099578482, %15
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %20, ptr %22, align 16
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %21, ptr %23, align 8
  %24 = add nuw nsw i64 %15, 8711581037947681227
  %25 = sub nuw nsw i64 2410270004345854594, %15
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %24, ptr %26, align 32
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %25, ptr %27, align 8
  %28 = add nuw nsw i64 %15, -8204357891075471176
  %29 = sub nuw nsw i64 5487137525590930912, %15
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 %28, ptr %30, align 16
  %31 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %29, ptr %31, align 8
  %32 = add nuw nsw i64 %15, -3818837453329782724
  %33 = sub nuw nsw i64 -6688317018830679928, %15
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i64 %32, ptr %34, align 64
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %33, ptr %35, align 8
  %36 = add nuw nsw i64 %15, 5690594596133299313
  %37 = sub nuw nsw i64 -2833645246901970632, %15
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i64 %36, ptr %38, align 16
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 %37, ptr %39, align 8
  %40 = add nuw nsw i64 %15, 4554437623014685352
  %41 = sub nuw nsw i64 2111919702937427193, %15
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 %40, ptr %42, align 32
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 %41, ptr %43, align 8
  %44 = add nuw nsw i64 %15, 3556072174620004746
  %45 = sub nuw nsw i64 7238261902898274248, %15
  %46 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i64 %44, ptr %46, align 16
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i64 %45, ptr %47, align 8
  %48 = add nuw nsw i64 %15, -4329134394285701654
  %49 = sub nuw nsw i64 -1485321483350670907, %15
  %50 = getelementptr inbounds nuw i8, ptr %4, i64 192
  store i64 %48, ptr %50, align 64
  %51 = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i64 %49, ptr %51, align 8
  %52 = add nuw nsw i64 %15, 5321830579834785047
  %53 = sub nuw nsw i64 -7032137544937171245, %15
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i64 %52, ptr %54, align 16
  %55 = getelementptr inbounds nuw i8, ptr %4, i64 216
  store i64 %53, ptr %55, align 8
  %56 = add nuw nsw i64 %15, -242834301215959509
  %57 = sub nuw nsw i64 -3588858202114426737, %15
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 224
  store i64 %56, ptr %58, align 32
  %59 = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i64 %57, ptr %59, align 8
  %60 = add nuw nsw i64 %15, 2883454493032893253
  %61 = sub nuw nsw i64 9097354517224871855, %15
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i64 %60, ptr %62, align 16
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 248
  store i64 %61, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  store i64 3266489917, ptr %4, align 64
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %66, align 16
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %68, align 32
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %70, align 16
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 516
  store i32 1, ptr %71, align 4
  br label %72

72:                                               ; preds = %6, %14
  %73 = phi i64 [ 0, %6 ], [ %15, %14 ]
  %74 = phi ptr [ @XXH3_kSecret, %6 ], [ null, %14 ]
  %75 = getelementptr inbounds nuw i8, ptr %4, i64 568
  %76 = getelementptr inbounds nuw i8, ptr %4, i64 552
  %77 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %77, align 8
  store i64 %73, ptr %76, align 8
  store ptr %74, ptr %75, align 8
  %78 = getelementptr inbounds nuw i8, ptr %4, i64 544
  store i64 128, ptr %78, align 32
  %79 = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i64 16, ptr %79, align 8
  call fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %4, ptr nocapture noundef %0, i64 noundef %1)
  %80 = call fastcc i64 @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef %4) #43
  %81 = trunc i64 %80 to i32
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #39
  ret i32 %81
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #23 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %149, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %114
  %8 = phi i64 [ 2654435761, %5 ], [ %146, %114 ]
  %9 = phi i64 [ 2870177450012600261, %5 ], [ %142, %114 ]
  %10 = phi i64 [ 2246822519, %5 ], [ %138, %114 ]
  %11 = phi i64 [ -8796714831421723037, %5 ], [ %134, %114 ]
  %12 = phi i64 [ 1609587929392839161, %5 ], [ %130, %114 ]
  %13 = phi i64 [ -4417276706812531889, %5 ], [ %126, %114 ]
  %14 = phi i64 [ -7046029288634856825, %5 ], [ %122, %114 ]
  %15 = phi i64 [ 3266489917, %5 ], [ %118, %114 ]
  %16 = phi i64 [ 0, %5 ], [ %147, %114 ]
  %17 = shl i64 %16, 10
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %17
  br label %19

19:                                               ; preds = %7, %19
  %20 = phi i64 [ %8, %7 ], [ %111, %19 ]
  %21 = phi i64 [ %9, %7 ], [ %107, %19 ]
  %22 = phi i64 [ %10, %7 ], [ %91, %19 ]
  %23 = phi i64 [ %11, %7 ], [ %87, %19 ]
  %24 = phi i64 [ %12, %7 ], [ %71, %19 ]
  %25 = phi i64 [ %13, %7 ], [ %67, %19 ]
  %26 = phi i64 [ %14, %7 ], [ %51, %19 ]
  %27 = phi i64 [ %15, %7 ], [ %47, %19 ]
  %28 = phi i64 [ 0, %7 ], [ %112, %19 ]
  %29 = shl nuw nsw i64 %28, 6
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 0, i32 3, i32 1)
  %32 = shl nuw nsw i64 %28, 3
  %33 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %32
  %34 = load i64, ptr %30, align 1
  %35 = load i64, ptr %33, align 8
  %36 = xor i64 %35, %34
  %37 = add i64 %26, %34
  %38 = lshr i64 %36, 32
  %39 = and i64 %36, 4294967295
  %40 = mul nuw i64 %39, %38
  %41 = add i64 %40, %27
  %42 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %43 = load i64, ptr %42, align 1
  %44 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %45 = load i64, ptr %44, align 8
  %46 = xor i64 %45, %43
  %47 = add i64 %41, %43
  %48 = lshr i64 %46, 32
  %49 = and i64 %46, 4294967295
  %50 = mul nuw i64 %49, %48
  %51 = add i64 %50, %37
  %52 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %53 = load i64, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %55 = load i64, ptr %54, align 8
  %56 = xor i64 %55, %53
  %57 = add i64 %24, %53
  %58 = lshr i64 %56, 32
  %59 = and i64 %56, 4294967295
  %60 = mul nuw i64 %59, %58
  %61 = add i64 %60, %25
  %62 = getelementptr inbounds nuw i8, ptr %30, i64 24
  %63 = load i64, ptr %62, align 1
  %64 = getelementptr inbounds nuw i8, ptr %33, i64 24
  %65 = load i64, ptr %64, align 8
  %66 = xor i64 %65, %63
  %67 = add i64 %61, %63
  %68 = lshr i64 %66, 32
  %69 = and i64 %66, 4294967295
  %70 = mul nuw i64 %69, %68
  %71 = add i64 %70, %57
  %72 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %73 = load i64, ptr %72, align 1
  %74 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %75 = load i64, ptr %74, align 8
  %76 = xor i64 %75, %73
  %77 = add i64 %22, %73
  %78 = lshr i64 %76, 32
  %79 = and i64 %76, 4294967295
  %80 = mul nuw i64 %79, %78
  %81 = add i64 %80, %23
  %82 = getelementptr inbounds nuw i8, ptr %30, i64 40
  %83 = load i64, ptr %82, align 1
  %84 = getelementptr inbounds nuw i8, ptr %33, i64 40
  %85 = load i64, ptr %84, align 8
  %86 = xor i64 %85, %83
  %87 = add i64 %81, %83
  %88 = lshr i64 %86, 32
  %89 = and i64 %86, 4294967295
  %90 = mul nuw i64 %89, %88
  %91 = add i64 %90, %77
  %92 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr inbounds nuw i8, ptr %33, i64 48
  %95 = load i64, ptr %94, align 8
  %96 = xor i64 %95, %93
  %97 = add i64 %20, %93
  %98 = lshr i64 %96, 32
  %99 = and i64 %96, 4294967295
  %100 = mul nuw i64 %99, %98
  %101 = add i64 %100, %21
  %102 = getelementptr inbounds nuw i8, ptr %30, i64 56
  %103 = load i64, ptr %102, align 1
  %104 = getelementptr inbounds nuw i8, ptr %33, i64 56
  %105 = load i64, ptr %104, align 8
  %106 = xor i64 %105, %103
  %107 = add i64 %101, %103
  %108 = lshr i64 %106, 32
  %109 = and i64 %106, 4294967295
  %110 = mul nuw i64 %109, %108
  %111 = add i64 %110, %97
  %112 = add nuw nsw i64 %28, 1
  %113 = icmp eq i64 %112, 16
  br i1 %113, label %114, label %19, !llvm.loop !32

114:                                              ; preds = %19
  %115 = lshr i64 %47, 47
  %116 = xor i64 %115, %47
  %117 = xor i64 %116, -4329134394285701654
  %118 = mul i64 %117, 2654435761
  %119 = lshr i64 %51, 47
  %120 = xor i64 %119, %51
  %121 = xor i64 %120, -1485321483350670907
  %122 = mul i64 %121, 2654435761
  %123 = lshr i64 %67, 47
  %124 = xor i64 %123, %67
  %125 = xor i64 %124, 5321830579834785047
  %126 = mul i64 %125, 2654435761
  %127 = lshr i64 %71, 47
  %128 = xor i64 %127, %71
  %129 = xor i64 %128, -7032137544937171245
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %87, 47
  %132 = xor i64 %131, %87
  %133 = xor i64 %132, -242834301215959509
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %91, 47
  %136 = xor i64 %135, %91
  %137 = xor i64 %136, -3588858202114426737
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %107, 47
  %140 = xor i64 %139, %107
  %141 = xor i64 %140, 2883454493032893253
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %111, 47
  %144 = xor i64 %143, %111
  %145 = xor i64 %144, 9097354517224871855
  %146 = mul i64 %145, 2654435761
  %147 = add nuw nsw i64 %16, 1
  %148 = icmp eq i64 %147, %6
  br i1 %148, label %149, label %7, !llvm.loop !33

149:                                              ; preds = %114, %2
  %150 = phi i64 [ 2654435761, %2 ], [ %146, %114 ]
  %151 = phi i64 [ 2870177450012600261, %2 ], [ %142, %114 ]
  %152 = phi i64 [ 2246822519, %2 ], [ %138, %114 ]
  %153 = phi i64 [ -8796714831421723037, %2 ], [ %134, %114 ]
  %154 = phi i64 [ 1609587929392839161, %2 ], [ %130, %114 ]
  %155 = phi i64 [ -4417276706812531889, %2 ], [ %126, %114 ]
  %156 = phi i64 [ -7046029288634856825, %2 ], [ %122, %114 ]
  %157 = phi i64 [ 3266489917, %2 ], [ %118, %114 ]
  %158 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %158)
  %159 = and i64 %3, -1024
  %160 = lshr i64 %3, 6
  %161 = and i64 %160, 15
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 %159
  %163 = icmp eq i64 %161, 0
  br i1 %163, label %259, label %164

164:                                              ; preds = %149, %164
  %165 = phi i64 [ %256, %164 ], [ %150, %149 ]
  %166 = phi i64 [ %252, %164 ], [ %151, %149 ]
  %167 = phi i64 [ %236, %164 ], [ %152, %149 ]
  %168 = phi i64 [ %232, %164 ], [ %153, %149 ]
  %169 = phi i64 [ %216, %164 ], [ %154, %149 ]
  %170 = phi i64 [ %212, %164 ], [ %155, %149 ]
  %171 = phi i64 [ %196, %164 ], [ %156, %149 ]
  %172 = phi i64 [ %192, %164 ], [ %157, %149 ]
  %173 = phi i64 [ %257, %164 ], [ 0, %149 ]
  %174 = shl nuw nsw i64 %173, 6
  %175 = getelementptr inbounds nuw i8, ptr %162, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %176, i32 0, i32 3, i32 1)
  %177 = shl nuw nsw i64 %173, 3
  %178 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %177
  %179 = load i64, ptr %175, align 1
  %180 = load i64, ptr %178, align 8
  %181 = xor i64 %180, %179
  %182 = add i64 %171, %179
  %183 = lshr i64 %181, 32
  %184 = and i64 %181, 4294967295
  %185 = mul nuw i64 %184, %183
  %186 = add i64 %185, %172
  %187 = getelementptr inbounds nuw i8, ptr %175, i64 8
  %188 = load i64, ptr %187, align 1
  %189 = getelementptr inbounds nuw i8, ptr %178, i64 8
  %190 = load i64, ptr %189, align 8
  %191 = xor i64 %190, %188
  %192 = add i64 %186, %188
  %193 = lshr i64 %191, 32
  %194 = and i64 %191, 4294967295
  %195 = mul nuw i64 %194, %193
  %196 = add i64 %195, %182
  %197 = getelementptr inbounds nuw i8, ptr %175, i64 16
  %198 = load i64, ptr %197, align 1
  %199 = getelementptr inbounds nuw i8, ptr %178, i64 16
  %200 = load i64, ptr %199, align 8
  %201 = xor i64 %200, %198
  %202 = add i64 %169, %198
  %203 = lshr i64 %201, 32
  %204 = and i64 %201, 4294967295
  %205 = mul nuw i64 %204, %203
  %206 = add i64 %205, %170
  %207 = getelementptr inbounds nuw i8, ptr %175, i64 24
  %208 = load i64, ptr %207, align 1
  %209 = getelementptr inbounds nuw i8, ptr %178, i64 24
  %210 = load i64, ptr %209, align 8
  %211 = xor i64 %210, %208
  %212 = add i64 %206, %208
  %213 = lshr i64 %211, 32
  %214 = and i64 %211, 4294967295
  %215 = mul nuw i64 %214, %213
  %216 = add i64 %215, %202
  %217 = getelementptr inbounds nuw i8, ptr %175, i64 32
  %218 = load i64, ptr %217, align 1
  %219 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %220 = load i64, ptr %219, align 8
  %221 = xor i64 %220, %218
  %222 = add i64 %167, %218
  %223 = lshr i64 %221, 32
  %224 = and i64 %221, 4294967295
  %225 = mul nuw i64 %224, %223
  %226 = add i64 %225, %168
  %227 = getelementptr inbounds nuw i8, ptr %175, i64 40
  %228 = load i64, ptr %227, align 1
  %229 = getelementptr inbounds nuw i8, ptr %178, i64 40
  %230 = load i64, ptr %229, align 8
  %231 = xor i64 %230, %228
  %232 = add i64 %226, %228
  %233 = lshr i64 %231, 32
  %234 = and i64 %231, 4294967295
  %235 = mul nuw i64 %234, %233
  %236 = add i64 %235, %222
  %237 = getelementptr inbounds nuw i8, ptr %175, i64 48
  %238 = load i64, ptr %237, align 1
  %239 = getelementptr inbounds nuw i8, ptr %178, i64 48
  %240 = load i64, ptr %239, align 8
  %241 = xor i64 %240, %238
  %242 = add i64 %165, %238
  %243 = lshr i64 %241, 32
  %244 = and i64 %241, 4294967295
  %245 = mul nuw i64 %244, %243
  %246 = add i64 %245, %166
  %247 = getelementptr inbounds nuw i8, ptr %175, i64 56
  %248 = load i64, ptr %247, align 1
  %249 = getelementptr inbounds nuw i8, ptr %178, i64 56
  %250 = load i64, ptr %249, align 8
  %251 = xor i64 %250, %248
  %252 = add i64 %246, %248
  %253 = lshr i64 %251, 32
  %254 = and i64 %251, 4294967295
  %255 = mul nuw i64 %254, %253
  %256 = add i64 %255, %242
  %257 = add nuw nsw i64 %173, 1
  %258 = icmp eq i64 %257, %161
  br i1 %258, label %259, label %164, !llvm.loop !32

259:                                              ; preds = %164, %149
  %260 = phi i64 [ %150, %149 ], [ %256, %164 ]
  %261 = phi i64 [ %151, %149 ], [ %252, %164 ]
  %262 = phi i64 [ %152, %149 ], [ %236, %164 ]
  %263 = phi i64 [ %153, %149 ], [ %232, %164 ]
  %264 = phi i64 [ %154, %149 ], [ %216, %164 ]
  %265 = phi i64 [ %155, %149 ], [ %212, %164 ]
  %266 = phi i64 [ %156, %149 ], [ %196, %164 ]
  %267 = phi i64 [ %157, %149 ], [ %192, %164 ]
  %268 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %269 = getelementptr inbounds i8, ptr %268, i64 -64
  %270 = load i64, ptr %269, align 1
  %271 = xor i64 %270, -1556992608276218209
  %272 = add i64 %266, %270
  %273 = lshr i64 %271, 32
  %274 = and i64 %271, 4294967295
  %275 = mul nuw i64 %274, %273
  %276 = add i64 %275, %267
  %277 = getelementptr inbounds i8, ptr %268, i64 -56
  %278 = load i64, ptr %277, align 1
  %279 = xor i64 %278, -4196251135427498811
  %280 = add i64 %276, %278
  %281 = lshr i64 %279, 32
  %282 = and i64 %279, 4294967295
  %283 = mul nuw i64 %282, %281
  %284 = add i64 %283, %272
  %285 = getelementptr inbounds i8, ptr %268, i64 -48
  %286 = load i64, ptr %285, align 1
  %287 = xor i64 %286, 1723580219865931905
  %288 = add i64 %264, %286
  %289 = lshr i64 %287, 32
  %290 = and i64 %287, 4294967295
  %291 = mul nuw i64 %290, %289
  %292 = add i64 %291, %265
  %293 = getelementptr inbounds i8, ptr %268, i64 -40
  %294 = load i64, ptr %293, align 1
  %295 = xor i64 %294, -3221803331004277491
  %296 = add i64 %292, %294
  %297 = lshr i64 %295, 32
  %298 = and i64 %295, 4294967295
  %299 = mul nuw i64 %298, %297
  %300 = add i64 %299, %288
  %301 = getelementptr inbounds i8, ptr %268, i64 -32
  %302 = load i64, ptr %301, align 1
  %303 = xor i64 %302, 3143064850383918358
  %304 = add i64 %262, %302
  %305 = lshr i64 %303, 32
  %306 = and i64 %303, 4294967295
  %307 = mul nuw i64 %306, %305
  %308 = add i64 %307, %263
  %309 = getelementptr inbounds i8, ptr %268, i64 -24
  %310 = load i64, ptr %309, align 1
  %311 = xor i64 %310, -8071399103737053674
  %312 = add i64 %308, %310
  %313 = lshr i64 %311, 32
  %314 = and i64 %311, 4294967295
  %315 = mul nuw i64 %314, %313
  %316 = add i64 %315, %304
  %317 = getelementptr inbounds i8, ptr %268, i64 -16
  %318 = load i64, ptr %317, align 1
  %319 = xor i64 %318, 5030012605302946040
  %320 = add i64 %260, %318
  %321 = lshr i64 %319, 32
  %322 = and i64 %319, 4294967295
  %323 = mul nuw i64 %322, %321
  %324 = add i64 %323, %261
  %325 = getelementptr inbounds i8, ptr %268, i64 -8
  %326 = load i64, ptr %325, align 1
  %327 = xor i64 %326, -5825401622958753077
  %328 = add i64 %324, %326
  %329 = lshr i64 %327, 32
  %330 = and i64 %327, 4294967295
  %331 = mul nuw i64 %330, %329
  %332 = add i64 %331, %320
  %333 = mul i64 %1, -7046029288634856825
  %334 = xor i64 %280, 7914194659941938988
  %335 = xor i64 %284, -6611157965513653271
  %336 = zext i64 %334 to i128
  %337 = zext i64 %335 to i128
  %338 = mul nuw i128 %337, %336
  %339 = lshr i128 %338, 64
  %340 = xor i128 %339, %338
  %341 = trunc i128 %340 to i64
  %342 = add i64 %333, %341
  %343 = xor i64 %296, -1839215637059881052
  %344 = xor i64 %300, -3433288310154277810
  %345 = zext i64 %343 to i128
  %346 = zext i64 %344 to i128
  %347 = mul nuw i128 %346, %345
  %348 = lshr i128 %347, 64
  %349 = xor i128 %348, %347
  %350 = trunc i128 %349 to i64
  %351 = add i64 %342, %350
  %352 = xor i64 %312, 5046485836271438973
  %353 = xor i64 %316, -8055285457383852172
  %354 = zext i64 %352 to i128
  %355 = zext i64 %353 to i128
  %356 = mul nuw i128 %355, %354
  %357 = lshr i128 %356, 64
  %358 = xor i128 %357, %356
  %359 = trunc i128 %358 to i64
  %360 = add i64 %351, %359
  %361 = xor i64 %328, 5920048007935066598
  %362 = xor i64 %332, 7336514198459093435
  %363 = zext i64 %361 to i128
  %364 = zext i64 %362 to i128
  %365 = mul nuw i128 %364, %363
  %366 = lshr i128 %365, 64
  %367 = xor i128 %366, %365
  %368 = trunc i128 %367 to i64
  %369 = add i64 %360, %368
  %370 = lshr i64 %369, 37
  %371 = xor i64 %370, %369
  %372 = mul i64 %371, 1609587791953885689
  %373 = lshr i64 %372, 32
  %374 = xor i64 %373, %372
  ret i64 %374
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #24 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = trunc nuw nsw i64 %1 to i32
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %26 = load i64, ptr %24, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = load i64, ptr %25, align 1
  %30 = add i64 %29, %3
  %31 = xor i64 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %33 = load i64, ptr %32, align 1
  %34 = sub i64 %33, %3
  %35 = xor i64 %34, %28
  %36 = zext i64 %31 to i128
  %37 = zext i64 %35 to i128
  %38 = mul nuw i128 %37, %36
  %39 = lshr i128 %38, 64
  %40 = xor i128 %39, %38
  %41 = trunc i128 %40 to i64
  %42 = add i64 %23, %41
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %45 = load i64, ptr %43, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %47 = load i64, ptr %46, align 1
  %48 = load i64, ptr %44, align 1
  %49 = add i64 %48, %3
  %50 = xor i64 %49, %45
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = sub i64 %52, %3
  %54 = xor i64 %53, %47
  %55 = zext i64 %50 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %42, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %64 = load i64, ptr %62, align 1
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %66 = load i64, ptr %65, align 1
  %67 = load i64, ptr %63, align 1
  %68 = add i64 %67, %3
  %69 = xor i64 %68, %64
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %71 = load i64, ptr %70, align 1
  %72 = sub i64 %71, %3
  %73 = xor i64 %72, %66
  %74 = zext i64 %69 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %61, %79
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %83 = load i64, ptr %81, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %85 = load i64, ptr %84, align 1
  %86 = load i64, ptr %82, align 1
  %87 = add i64 %86, %3
  %88 = xor i64 %87, %83
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %90 = load i64, ptr %89, align 1
  %91 = sub i64 %90, %3
  %92 = xor i64 %91, %85
  %93 = zext i64 %88 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %80, %98
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %102 = load i64, ptr %100, align 1
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %104 = load i64, ptr %103, align 1
  %105 = load i64, ptr %101, align 1
  %106 = add i64 %105, %3
  %107 = xor i64 %106, %102
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = sub i64 %109, %3
  %111 = xor i64 %110, %104
  %112 = zext i64 %107 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %99, %117
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %121 = load i64, ptr %119, align 1
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %123 = load i64, ptr %122, align 1
  %124 = load i64, ptr %120, align 1
  %125 = add i64 %124, %3
  %126 = xor i64 %125, %121
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %128 = load i64, ptr %127, align 1
  %129 = sub i64 %128, %3
  %130 = xor i64 %129, %123
  %131 = zext i64 %126 to i128
  %132 = zext i64 %130 to i128
  %133 = mul nuw i128 %132, %131
  %134 = lshr i128 %133, 64
  %135 = xor i128 %134, %133
  %136 = trunc i128 %135 to i64
  %137 = add i64 %118, %136
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %140 = load i64, ptr %138, align 1
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %142 = load i64, ptr %141, align 1
  %143 = load i64, ptr %139, align 1
  %144 = add i64 %143, %3
  %145 = xor i64 %144, %140
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %147 = load i64, ptr %146, align 1
  %148 = sub i64 %147, %3
  %149 = xor i64 %148, %142
  %150 = zext i64 %145 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %137, %155
  %157 = lshr i32 %6, 4
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %159 = getelementptr inbounds i8, ptr %158, i64 -16
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %161 = load i64, ptr %159, align 1
  %162 = getelementptr inbounds i8, ptr %158, i64 -8
  %163 = load i64, ptr %162, align 1
  %164 = load i64, ptr %160, align 1
  %165 = add i64 %164, %3
  %166 = xor i64 %165, %161
  %167 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %168 = load i64, ptr %167, align 1
  %169 = sub i64 %168, %3
  %170 = xor i64 %169, %163
  %171 = zext i64 %166 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = lshr i64 %156, 37
  %178 = xor i64 %177, %156
  %179 = mul i64 %178, 1609587791953885689
  %180 = lshr i64 %179, 32
  %181 = xor i64 %180, %179
  %182 = icmp eq i32 %157, 8
  br i1 %182, label %213, label %183

183:                                              ; preds = %4
  %184 = zext nneg i32 %157 to i64
  br label %185

185:                                              ; preds = %183, %185
  %186 = phi i64 [ 8, %183 ], [ %211, %185 ]
  %187 = phi i64 [ %181, %183 ], [ %189, %185 ]
  %188 = phi i64 [ %176, %183 ], [ %210, %185 ]
  %189 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %187) #45, !srcloc !34
  %190 = shl nuw nsw i64 %186, 4
  %191 = getelementptr inbounds nuw i8, ptr %0, i64 %190
  %192 = getelementptr i8, ptr %2, i64 %190
  %193 = getelementptr i8, ptr %192, i64 -125
  %194 = load i64, ptr %191, align 1
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %196 = load i64, ptr %195, align 1
  %197 = load i64, ptr %193, align 1
  %198 = add i64 %197, %3
  %199 = xor i64 %198, %194
  %200 = getelementptr i8, ptr %192, i64 -117
  %201 = load i64, ptr %200, align 1
  %202 = sub i64 %201, %3
  %203 = xor i64 %202, %196
  %204 = zext i64 %199 to i128
  %205 = zext i64 %203 to i128
  %206 = mul nuw i128 %205, %204
  %207 = lshr i128 %206, 64
  %208 = xor i128 %207, %206
  %209 = trunc i128 %208 to i64
  %210 = add i64 %188, %209
  %211 = add nuw nsw i64 %186, 1
  %212 = icmp eq i64 %211, %184
  br i1 %212, label %213, label %185, !llvm.loop !35

213:                                              ; preds = %185, %4
  %214 = phi i64 [ %176, %4 ], [ %210, %185 ]
  %215 = phi i64 [ %181, %4 ], [ %189, %185 ]
  %216 = add i64 %215, %214
  %217 = lshr i64 %216, 37
  %218 = xor i64 %217, %216
  %219 = mul i64 %218, 1609587791953885689
  %220 = lshr i64 %219, 32
  %221 = xor i64 %220, %219
  ret i64 %221
}

declare i64 @target_0to16(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #26

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH3_64bits_withSeed(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #27 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i64 @target_0to16(ptr noundef %0, i64 noundef range(i64 0, 17) %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2) #39
  br label %157

7:                                                ; preds = %3
  %8 = icmp ult i64 %1, 129
  br i1 %8, label %9, label %151

9:                                                ; preds = %7
  %10 = mul i64 %1, -7046029288634856825
  %11 = icmp samesign ugt i64 %1, 32
  br i1 %11, label %12, label %114

12:                                               ; preds = %9
  %13 = icmp samesign ugt i64 %1, 64
  br i1 %13, label %14, label %81

14:                                               ; preds = %12
  %15 = icmp samesign ugt i64 %1, 96
  br i1 %15, label %16, label %48

16:                                               ; preds = %14
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %20 = load i64, ptr %19, align 1
  %21 = add i64 %2, 4554437623014685352
  %22 = xor i64 %18, %21
  %23 = sub i64 2111919702937427193, %2
  %24 = xor i64 %20, %23
  %25 = zext i64 %22 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %26, %25
  %28 = lshr i128 %27, 64
  %29 = xor i128 %28, %27
  %30 = trunc i128 %29 to i64
  %31 = add i64 %10, %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %33 = getelementptr inbounds i8, ptr %32, i64 -64
  %34 = load i64, ptr %33, align 1
  %35 = getelementptr inbounds i8, ptr %32, i64 -56
  %36 = load i64, ptr %35, align 1
  %37 = add i64 %2, 3556072174620004746
  %38 = xor i64 %34, %37
  %39 = sub i64 7238261902898274248, %2
  %40 = xor i64 %36, %39
  %41 = zext i64 %38 to i128
  %42 = zext i64 %40 to i128
  %43 = mul nuw i128 %42, %41
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %31, %46
  br label %48

48:                                               ; preds = %16, %14
  %49 = phi i64 [ %47, %16 ], [ %10, %14 ]
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %51 = load i64, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %53 = load i64, ptr %52, align 1
  %54 = add i64 %2, -3818837453329782724
  %55 = xor i64 %51, %54
  %56 = sub i64 -6688317018830679928, %2
  %57 = xor i64 %53, %56
  %58 = zext i64 %55 to i128
  %59 = zext i64 %57 to i128
  %60 = mul nuw i128 %59, %58
  %61 = lshr i128 %60, 64
  %62 = xor i128 %61, %60
  %63 = trunc i128 %62 to i64
  %64 = add i64 %49, %63
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %66 = getelementptr inbounds i8, ptr %65, i64 -48
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr inbounds i8, ptr %65, i64 -40
  %69 = load i64, ptr %68, align 1
  %70 = add i64 %2, 5690594596133299313
  %71 = xor i64 %67, %70
  %72 = sub i64 -2833645246901970632, %2
  %73 = xor i64 %69, %72
  %74 = zext i64 %71 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %64, %79
  br label %81

81:                                               ; preds = %48, %12
  %82 = phi i64 [ %80, %48 ], [ %10, %12 ]
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %86 = load i64, ptr %85, align 1
  %87 = add i64 %2, 8711581037947681227
  %88 = xor i64 %84, %87
  %89 = sub i64 2410270004345854594, %2
  %90 = xor i64 %86, %89
  %91 = zext i64 %88 to i128
  %92 = zext i64 %90 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %82, %96
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %99 = getelementptr inbounds i8, ptr %98, i64 -32
  %100 = load i64, ptr %99, align 1
  %101 = getelementptr inbounds i8, ptr %98, i64 -24
  %102 = load i64, ptr %101, align 1
  %103 = add i64 %2, -8204357891075471176
  %104 = xor i64 %100, %103
  %105 = sub i64 5487137525590930912, %2
  %106 = xor i64 %102, %105
  %107 = zext i64 %104 to i128
  %108 = zext i64 %106 to i128
  %109 = mul nuw i128 %108, %107
  %110 = lshr i128 %109, 64
  %111 = xor i128 %110, %109
  %112 = trunc i128 %111 to i64
  %113 = add i64 %97, %112
  br label %114

114:                                              ; preds = %9, %81
  %115 = phi i64 [ %113, %81 ], [ %10, %9 ]
  %116 = load i64, ptr %0, align 1
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %118 = load i64, ptr %117, align 1
  %119 = add i64 %2, -4734510112055689544
  %120 = xor i64 %116, %119
  %121 = sub i64 2066345149520216444, %2
  %122 = xor i64 %118, %121
  %123 = zext i64 %120 to i128
  %124 = zext i64 %122 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %115, %128
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %131 = getelementptr inbounds i8, ptr %130, i64 -16
  %132 = load i64, ptr %131, align 1
  %133 = getelementptr inbounds i8, ptr %130, i64 -8
  %134 = load i64, ptr %133, align 1
  %135 = add i64 %2, -2623469361688619810
  %136 = xor i64 %132, %135
  %137 = sub i64 2262974939099578482, %2
  %138 = xor i64 %134, %137
  %139 = zext i64 %136 to i128
  %140 = zext i64 %138 to i128
  %141 = mul nuw i128 %140, %139
  %142 = lshr i128 %141, 64
  %143 = xor i128 %142, %141
  %144 = trunc i128 %143 to i64
  %145 = add i64 %129, %144
  %146 = lshr i64 %145, 37
  %147 = xor i64 %146, %145
  %148 = mul i64 %147, 1609587791953885689
  %149 = lshr i64 %148, 32
  %150 = xor i64 %149, %148
  br label %157

151:                                              ; preds = %7
  %152 = icmp ult i64 %1, 241
  br i1 %152, label %153, label %155

153:                                              ; preds = %151
  %154 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2) #43
  br label %157

155:                                              ; preds = %151
  %156 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39
  br label %157

157:                                              ; preds = %5, %114, %153, %155
  %158 = phi i64 [ %6, %5 ], [ %150, %114 ], [ %154, %153 ], [ %156, %155 ]
  ret i64 %158
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noalias nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #28 {
  %4 = alloca [192 x i8], align 8
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %379

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %153, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %118
  %12 = phi i64 [ 2654435761, %9 ], [ %150, %118 ]
  %13 = phi i64 [ 2870177450012600261, %9 ], [ %146, %118 ]
  %14 = phi i64 [ 2246822519, %9 ], [ %142, %118 ]
  %15 = phi i64 [ -8796714831421723037, %9 ], [ %138, %118 ]
  %16 = phi i64 [ 1609587929392839161, %9 ], [ %134, %118 ]
  %17 = phi i64 [ -4417276706812531889, %9 ], [ %130, %118 ]
  %18 = phi i64 [ -7046029288634856825, %9 ], [ %126, %118 ]
  %19 = phi i64 [ 3266489917, %9 ], [ %122, %118 ]
  %20 = phi i64 [ 0, %9 ], [ %151, %118 ]
  %21 = shl i64 %20, 10
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 %21
  br label %23

23:                                               ; preds = %11, %23
  %24 = phi i64 [ %12, %11 ], [ %115, %23 ]
  %25 = phi i64 [ %13, %11 ], [ %111, %23 ]
  %26 = phi i64 [ %14, %11 ], [ %95, %23 ]
  %27 = phi i64 [ %15, %11 ], [ %91, %23 ]
  %28 = phi i64 [ %16, %11 ], [ %75, %23 ]
  %29 = phi i64 [ %17, %11 ], [ %71, %23 ]
  %30 = phi i64 [ %18, %11 ], [ %55, %23 ]
  %31 = phi i64 [ %19, %11 ], [ %51, %23 ]
  %32 = phi i64 [ 0, %11 ], [ %116, %23 ]
  %33 = shl nuw nsw i64 %32, 6
  %34 = getelementptr inbounds nuw i8, ptr %22, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %35, i32 0, i32 3, i32 1)
  %36 = shl nuw nsw i64 %32, 3
  %37 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %36
  %38 = load i64, ptr %34, align 1
  %39 = load i64, ptr %37, align 8
  %40 = xor i64 %39, %38
  %41 = add i64 %30, %38
  %42 = lshr i64 %40, 32
  %43 = and i64 %40, 4294967295
  %44 = mul nuw i64 %43, %42
  %45 = add i64 %44, %31
  %46 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %49 = load i64, ptr %48, align 8
  %50 = xor i64 %49, %47
  %51 = add i64 %45, %47
  %52 = lshr i64 %50, 32
  %53 = and i64 %50, 4294967295
  %54 = mul nuw i64 %53, %52
  %55 = add i64 %54, %41
  %56 = getelementptr inbounds nuw i8, ptr %34, i64 16
  %57 = load i64, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %37, i64 16
  %59 = load i64, ptr %58, align 8
  %60 = xor i64 %59, %57
  %61 = add i64 %28, %57
  %62 = lshr i64 %60, 32
  %63 = and i64 %60, 4294967295
  %64 = mul nuw i64 %63, %62
  %65 = add i64 %64, %29
  %66 = getelementptr inbounds nuw i8, ptr %34, i64 24
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr inbounds nuw i8, ptr %37, i64 24
  %69 = load i64, ptr %68, align 8
  %70 = xor i64 %69, %67
  %71 = add i64 %65, %67
  %72 = lshr i64 %70, 32
  %73 = and i64 %70, 4294967295
  %74 = mul nuw i64 %73, %72
  %75 = add i64 %74, %61
  %76 = getelementptr inbounds nuw i8, ptr %34, i64 32
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %37, i64 32
  %79 = load i64, ptr %78, align 8
  %80 = xor i64 %79, %77
  %81 = add i64 %26, %77
  %82 = lshr i64 %80, 32
  %83 = and i64 %80, 4294967295
  %84 = mul nuw i64 %83, %82
  %85 = add i64 %84, %27
  %86 = getelementptr inbounds nuw i8, ptr %34, i64 40
  %87 = load i64, ptr %86, align 1
  %88 = getelementptr inbounds nuw i8, ptr %37, i64 40
  %89 = load i64, ptr %88, align 8
  %90 = xor i64 %89, %87
  %91 = add i64 %85, %87
  %92 = lshr i64 %90, 32
  %93 = and i64 %90, 4294967295
  %94 = mul nuw i64 %93, %92
  %95 = add i64 %94, %81
  %96 = getelementptr inbounds nuw i8, ptr %34, i64 48
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %37, i64 48
  %99 = load i64, ptr %98, align 8
  %100 = xor i64 %99, %97
  %101 = add i64 %24, %97
  %102 = lshr i64 %100, 32
  %103 = and i64 %100, 4294967295
  %104 = mul nuw i64 %103, %102
  %105 = add i64 %104, %25
  %106 = getelementptr inbounds nuw i8, ptr %34, i64 56
  %107 = load i64, ptr %106, align 1
  %108 = getelementptr inbounds nuw i8, ptr %37, i64 56
  %109 = load i64, ptr %108, align 8
  %110 = xor i64 %109, %107
  %111 = add i64 %105, %107
  %112 = lshr i64 %110, 32
  %113 = and i64 %110, 4294967295
  %114 = mul nuw i64 %113, %112
  %115 = add i64 %114, %101
  %116 = add nuw nsw i64 %32, 1
  %117 = icmp eq i64 %116, 16
  br i1 %117, label %118, label %23, !llvm.loop !32

118:                                              ; preds = %23
  %119 = lshr i64 %51, 47
  %120 = xor i64 %119, %51
  %121 = xor i64 %120, -4329134394285701654
  %122 = mul i64 %121, 2654435761
  %123 = lshr i64 %55, 47
  %124 = xor i64 %123, %55
  %125 = xor i64 %124, -1485321483350670907
  %126 = mul i64 %125, 2654435761
  %127 = lshr i64 %71, 47
  %128 = xor i64 %127, %71
  %129 = xor i64 %128, 5321830579834785047
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %75, 47
  %132 = xor i64 %131, %75
  %133 = xor i64 %132, -7032137544937171245
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %91, 47
  %136 = xor i64 %135, %91
  %137 = xor i64 %136, -242834301215959509
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %95, 47
  %140 = xor i64 %139, %95
  %141 = xor i64 %140, -3588858202114426737
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %111, 47
  %144 = xor i64 %143, %111
  %145 = xor i64 %144, 2883454493032893253
  %146 = mul i64 %145, 2654435761
  %147 = lshr i64 %115, 47
  %148 = xor i64 %147, %115
  %149 = xor i64 %148, 9097354517224871855
  %150 = mul i64 %149, 2654435761
  %151 = add nuw nsw i64 %20, 1
  %152 = icmp eq i64 %151, %10
  br i1 %152, label %153, label %11, !llvm.loop !33

153:                                              ; preds = %118, %6
  %154 = phi i64 [ 2654435761, %6 ], [ %150, %118 ]
  %155 = phi i64 [ 2870177450012600261, %6 ], [ %146, %118 ]
  %156 = phi i64 [ 2246822519, %6 ], [ %142, %118 ]
  %157 = phi i64 [ -8796714831421723037, %6 ], [ %138, %118 ]
  %158 = phi i64 [ 1609587929392839161, %6 ], [ %134, %118 ]
  %159 = phi i64 [ -4417276706812531889, %6 ], [ %130, %118 ]
  %160 = phi i64 [ -7046029288634856825, %6 ], [ %126, %118 ]
  %161 = phi i64 [ 3266489917, %6 ], [ %122, %118 ]
  %162 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %162)
  %163 = and i64 %7, -1024
  %164 = lshr i64 %7, 6
  %165 = and i64 %164, 15
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 %163
  %167 = icmp eq i64 %165, 0
  br i1 %167, label %263, label %168

168:                                              ; preds = %153, %168
  %169 = phi i64 [ %260, %168 ], [ %154, %153 ]
  %170 = phi i64 [ %256, %168 ], [ %155, %153 ]
  %171 = phi i64 [ %240, %168 ], [ %156, %153 ]
  %172 = phi i64 [ %236, %168 ], [ %157, %153 ]
  %173 = phi i64 [ %220, %168 ], [ %158, %153 ]
  %174 = phi i64 [ %216, %168 ], [ %159, %153 ]
  %175 = phi i64 [ %200, %168 ], [ %160, %153 ]
  %176 = phi i64 [ %196, %168 ], [ %161, %153 ]
  %177 = phi i64 [ %261, %168 ], [ 0, %153 ]
  %178 = shl nuw nsw i64 %177, 6
  %179 = getelementptr inbounds nuw i8, ptr %166, i64 %178
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %180, i32 0, i32 3, i32 1)
  %181 = shl nuw nsw i64 %177, 3
  %182 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %181
  %183 = load i64, ptr %179, align 1
  %184 = load i64, ptr %182, align 8
  %185 = xor i64 %184, %183
  %186 = add i64 %175, %183
  %187 = lshr i64 %185, 32
  %188 = and i64 %185, 4294967295
  %189 = mul nuw i64 %188, %187
  %190 = add i64 %189, %176
  %191 = getelementptr inbounds nuw i8, ptr %179, i64 8
  %192 = load i64, ptr %191, align 1
  %193 = getelementptr inbounds nuw i8, ptr %182, i64 8
  %194 = load i64, ptr %193, align 8
  %195 = xor i64 %194, %192
  %196 = add i64 %190, %192
  %197 = lshr i64 %195, 32
  %198 = and i64 %195, 4294967295
  %199 = mul nuw i64 %198, %197
  %200 = add i64 %199, %186
  %201 = getelementptr inbounds nuw i8, ptr %179, i64 16
  %202 = load i64, ptr %201, align 1
  %203 = getelementptr inbounds nuw i8, ptr %182, i64 16
  %204 = load i64, ptr %203, align 8
  %205 = xor i64 %204, %202
  %206 = add i64 %173, %202
  %207 = lshr i64 %205, 32
  %208 = and i64 %205, 4294967295
  %209 = mul nuw i64 %208, %207
  %210 = add i64 %209, %174
  %211 = getelementptr inbounds nuw i8, ptr %179, i64 24
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %182, i64 24
  %214 = load i64, ptr %213, align 8
  %215 = xor i64 %214, %212
  %216 = add i64 %210, %212
  %217 = lshr i64 %215, 32
  %218 = and i64 %215, 4294967295
  %219 = mul nuw i64 %218, %217
  %220 = add i64 %219, %206
  %221 = getelementptr inbounds nuw i8, ptr %179, i64 32
  %222 = load i64, ptr %221, align 1
  %223 = getelementptr inbounds nuw i8, ptr %182, i64 32
  %224 = load i64, ptr %223, align 8
  %225 = xor i64 %224, %222
  %226 = add i64 %171, %222
  %227 = lshr i64 %225, 32
  %228 = and i64 %225, 4294967295
  %229 = mul nuw i64 %228, %227
  %230 = add i64 %229, %172
  %231 = getelementptr inbounds nuw i8, ptr %179, i64 40
  %232 = load i64, ptr %231, align 1
  %233 = getelementptr inbounds nuw i8, ptr %182, i64 40
  %234 = load i64, ptr %233, align 8
  %235 = xor i64 %234, %232
  %236 = add i64 %230, %232
  %237 = lshr i64 %235, 32
  %238 = and i64 %235, 4294967295
  %239 = mul nuw i64 %238, %237
  %240 = add i64 %239, %226
  %241 = getelementptr inbounds nuw i8, ptr %179, i64 48
  %242 = load i64, ptr %241, align 1
  %243 = getelementptr inbounds nuw i8, ptr %182, i64 48
  %244 = load i64, ptr %243, align 8
  %245 = xor i64 %244, %242
  %246 = add i64 %169, %242
  %247 = lshr i64 %245, 32
  %248 = and i64 %245, 4294967295
  %249 = mul nuw i64 %248, %247
  %250 = add i64 %249, %170
  %251 = getelementptr inbounds nuw i8, ptr %179, i64 56
  %252 = load i64, ptr %251, align 1
  %253 = getelementptr inbounds nuw i8, ptr %182, i64 56
  %254 = load i64, ptr %253, align 8
  %255 = xor i64 %254, %252
  %256 = add i64 %250, %252
  %257 = lshr i64 %255, 32
  %258 = and i64 %255, 4294967295
  %259 = mul nuw i64 %258, %257
  %260 = add i64 %259, %246
  %261 = add nuw nsw i64 %177, 1
  %262 = icmp eq i64 %261, %165
  br i1 %262, label %263, label %168, !llvm.loop !32

263:                                              ; preds = %168, %153
  %264 = phi i64 [ %154, %153 ], [ %260, %168 ]
  %265 = phi i64 [ %155, %153 ], [ %256, %168 ]
  %266 = phi i64 [ %156, %153 ], [ %240, %168 ]
  %267 = phi i64 [ %157, %153 ], [ %236, %168 ]
  %268 = phi i64 [ %158, %153 ], [ %220, %168 ]
  %269 = phi i64 [ %159, %153 ], [ %216, %168 ]
  %270 = phi i64 [ %160, %153 ], [ %200, %168 ]
  %271 = phi i64 [ %161, %153 ], [ %196, %168 ]
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %273 = getelementptr inbounds i8, ptr %272, i64 -64
  %274 = load i64, ptr %273, align 1
  %275 = xor i64 %274, -1556992608276218209
  %276 = add i64 %270, %274
  %277 = lshr i64 %275, 32
  %278 = and i64 %275, 4294967295
  %279 = mul nuw i64 %278, %277
  %280 = add i64 %279, %271
  %281 = getelementptr inbounds i8, ptr %272, i64 -56
  %282 = load i64, ptr %281, align 1
  %283 = xor i64 %282, -4196251135427498811
  %284 = add i64 %280, %282
  %285 = lshr i64 %283, 32
  %286 = and i64 %283, 4294967295
  %287 = mul nuw i64 %286, %285
  %288 = add i64 %287, %276
  %289 = getelementptr inbounds i8, ptr %272, i64 -48
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, 1723580219865931905
  %292 = add i64 %268, %290
  %293 = lshr i64 %291, 32
  %294 = and i64 %291, 4294967295
  %295 = mul nuw i64 %294, %293
  %296 = add i64 %295, %269
  %297 = getelementptr inbounds i8, ptr %272, i64 -40
  %298 = load i64, ptr %297, align 1
  %299 = xor i64 %298, -3221803331004277491
  %300 = add i64 %296, %298
  %301 = lshr i64 %299, 32
  %302 = and i64 %299, 4294967295
  %303 = mul nuw i64 %302, %301
  %304 = add i64 %303, %292
  %305 = getelementptr inbounds i8, ptr %272, i64 -32
  %306 = load i64, ptr %305, align 1
  %307 = xor i64 %306, 3143064850383918358
  %308 = add i64 %266, %306
  %309 = lshr i64 %307, 32
  %310 = and i64 %307, 4294967295
  %311 = mul nuw i64 %310, %309
  %312 = add i64 %311, %267
  %313 = getelementptr inbounds i8, ptr %272, i64 -24
  %314 = load i64, ptr %313, align 1
  %315 = xor i64 %314, -8071399103737053674
  %316 = add i64 %312, %314
  %317 = lshr i64 %315, 32
  %318 = and i64 %315, 4294967295
  %319 = mul nuw i64 %318, %317
  %320 = add i64 %319, %308
  %321 = getelementptr inbounds i8, ptr %272, i64 -16
  %322 = load i64, ptr %321, align 1
  %323 = xor i64 %322, 5030012605302946040
  %324 = add i64 %264, %322
  %325 = lshr i64 %323, 32
  %326 = and i64 %323, 4294967295
  %327 = mul nuw i64 %326, %325
  %328 = add i64 %327, %265
  %329 = getelementptr inbounds i8, ptr %272, i64 -8
  %330 = load i64, ptr %329, align 1
  %331 = xor i64 %330, -5825401622958753077
  %332 = add i64 %328, %330
  %333 = lshr i64 %331, 32
  %334 = and i64 %331, 4294967295
  %335 = mul nuw i64 %334, %333
  %336 = add i64 %335, %324
  %337 = mul i64 %1, -7046029288634856825
  %338 = xor i64 %284, 7914194659941938988
  %339 = xor i64 %288, -6611157965513653271
  %340 = zext i64 %338 to i128
  %341 = zext i64 %339 to i128
  %342 = mul nuw i128 %341, %340
  %343 = lshr i128 %342, 64
  %344 = xor i128 %343, %342
  %345 = trunc i128 %344 to i64
  %346 = add i64 %337, %345
  %347 = xor i64 %300, -1839215637059881052
  %348 = xor i64 %304, -3433288310154277810
  %349 = zext i64 %347 to i128
  %350 = zext i64 %348 to i128
  %351 = mul nuw i128 %350, %349
  %352 = lshr i128 %351, 64
  %353 = xor i128 %352, %351
  %354 = trunc i128 %353 to i64
  %355 = add i64 %346, %354
  %356 = xor i64 %316, 5046485836271438973
  %357 = xor i64 %320, -8055285457383852172
  %358 = zext i64 %356 to i128
  %359 = zext i64 %357 to i128
  %360 = mul nuw i128 %359, %358
  %361 = lshr i128 %360, 64
  %362 = xor i128 %361, %360
  %363 = trunc i128 %362 to i64
  %364 = add i64 %355, %363
  %365 = xor i64 %332, 5920048007935066598
  %366 = xor i64 %336, 7336514198459093435
  %367 = zext i64 %365 to i128
  %368 = zext i64 %366 to i128
  %369 = mul nuw i128 %368, %367
  %370 = lshr i128 %369, 64
  %371 = xor i128 %370, %369
  %372 = trunc i128 %371 to i64
  %373 = add i64 %364, %372
  %374 = lshr i64 %373, 37
  %375 = xor i64 %374, %373
  %376 = mul i64 %375, 1609587791953885689
  %377 = lshr i64 %376, 32
  %378 = xor i64 %377, %376
  br label %831

379:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #39
  %380 = add i64 %2, -4734510112055689544
  %381 = sub i64 2066345149520216444, %2
  store i64 %380, ptr %4, align 8
  %382 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %381, ptr %382, align 8
  %383 = add i64 %2, -2623469361688619810
  %384 = sub i64 2262974939099578482, %2
  %385 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %383, ptr %385, align 8
  %386 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %384, ptr %386, align 8
  %387 = add i64 %2, 8711581037947681227
  %388 = sub i64 2410270004345854594, %2
  %389 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %387, ptr %389, align 8
  %390 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %388, ptr %390, align 8
  %391 = add i64 %2, -8204357891075471176
  %392 = sub i64 5487137525590930912, %2
  %393 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %391, ptr %393, align 8
  %394 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %392, ptr %394, align 8
  %395 = add i64 %2, -3818837453329782724
  %396 = sub i64 -6688317018830679928, %2
  %397 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %395, ptr %397, align 8
  %398 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %396, ptr %398, align 8
  %399 = add i64 %2, 5690594596133299313
  %400 = sub i64 -2833645246901970632, %2
  %401 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 %399, ptr %401, align 8
  %402 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %400, ptr %402, align 8
  %403 = add i64 %2, 4554437623014685352
  %404 = sub i64 2111919702937427193, %2
  %405 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %403, ptr %405, align 8
  %406 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %404, ptr %406, align 8
  %407 = add i64 %2, 3556072174620004746
  %408 = sub i64 7238261902898274248, %2
  %409 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i64 %407, ptr %409, align 8
  %410 = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 %408, ptr %410, align 8
  %411 = add i64 %2, -4329134394285701654
  %412 = sub i64 -1485321483350670907, %2
  %413 = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i64 %411, ptr %413, align 8
  %414 = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 %412, ptr %414, align 8
  %415 = add i64 %2, 5321830579834785047
  %416 = sub i64 -7032137544937171245, %2
  %417 = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i64 %415, ptr %417, align 8
  %418 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 %416, ptr %418, align 8
  %419 = add i64 %2, -242834301215959509
  %420 = sub i64 -3588858202114426737, %2
  %421 = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 %419, ptr %421, align 8
  %422 = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 %420, ptr %422, align 8
  %423 = add i64 %2, 2883454493032893253
  %424 = sub i64 9097354517224871855, %2
  %425 = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i64 %423, ptr %425, align 8
  %426 = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i64 %424, ptr %426, align 8
  %427 = add i64 %1, -1
  %428 = icmp ult i64 %427, 1024
  br i1 %428, label %573, label %429

429:                                              ; preds = %379
  %430 = lshr i64 %427, 10
  br label %431

431:                                              ; preds = %429, %538
  %432 = phi i64 [ 2654435761, %429 ], [ %570, %538 ]
  %433 = phi i64 [ 2870177450012600261, %429 ], [ %566, %538 ]
  %434 = phi i64 [ 2246822519, %429 ], [ %562, %538 ]
  %435 = phi i64 [ -8796714831421723037, %429 ], [ %558, %538 ]
  %436 = phi i64 [ 1609587929392839161, %429 ], [ %554, %538 ]
  %437 = phi i64 [ -4417276706812531889, %429 ], [ %550, %538 ]
  %438 = phi i64 [ -7046029288634856825, %429 ], [ %546, %538 ]
  %439 = phi i64 [ 3266489917, %429 ], [ %542, %538 ]
  %440 = phi i64 [ 0, %429 ], [ %571, %538 ]
  %441 = shl i64 %440, 10
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 %441
  br label %443

443:                                              ; preds = %431, %443
  %444 = phi i64 [ %432, %431 ], [ %535, %443 ]
  %445 = phi i64 [ %433, %431 ], [ %531, %443 ]
  %446 = phi i64 [ %434, %431 ], [ %515, %443 ]
  %447 = phi i64 [ %435, %431 ], [ %511, %443 ]
  %448 = phi i64 [ %436, %431 ], [ %495, %443 ]
  %449 = phi i64 [ %437, %431 ], [ %491, %443 ]
  %450 = phi i64 [ %438, %431 ], [ %475, %443 ]
  %451 = phi i64 [ %439, %431 ], [ %471, %443 ]
  %452 = phi i64 [ 0, %431 ], [ %536, %443 ]
  %453 = shl nuw nsw i64 %452, 6
  %454 = getelementptr inbounds nuw i8, ptr %442, i64 %453
  %455 = getelementptr inbounds nuw i8, ptr %454, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %455, i32 0, i32 3, i32 1)
  %456 = shl nuw nsw i64 %452, 3
  %457 = getelementptr inbounds nuw i8, ptr %4, i64 %456
  %458 = load i64, ptr %454, align 1
  %459 = load i64, ptr %457, align 8
  %460 = xor i64 %459, %458
  %461 = add i64 %450, %458
  %462 = lshr i64 %460, 32
  %463 = and i64 %460, 4294967295
  %464 = mul nuw i64 %463, %462
  %465 = add i64 %464, %451
  %466 = getelementptr inbounds nuw i8, ptr %454, i64 8
  %467 = load i64, ptr %466, align 1
  %468 = getelementptr inbounds nuw i8, ptr %457, i64 8
  %469 = load i64, ptr %468, align 8
  %470 = xor i64 %469, %467
  %471 = add i64 %465, %467
  %472 = lshr i64 %470, 32
  %473 = and i64 %470, 4294967295
  %474 = mul nuw i64 %473, %472
  %475 = add i64 %474, %461
  %476 = getelementptr inbounds nuw i8, ptr %454, i64 16
  %477 = load i64, ptr %476, align 1
  %478 = getelementptr inbounds nuw i8, ptr %457, i64 16
  %479 = load i64, ptr %478, align 8
  %480 = xor i64 %479, %477
  %481 = add i64 %448, %477
  %482 = lshr i64 %480, 32
  %483 = and i64 %480, 4294967295
  %484 = mul nuw i64 %483, %482
  %485 = add i64 %484, %449
  %486 = getelementptr inbounds nuw i8, ptr %454, i64 24
  %487 = load i64, ptr %486, align 1
  %488 = getelementptr inbounds nuw i8, ptr %457, i64 24
  %489 = load i64, ptr %488, align 8
  %490 = xor i64 %489, %487
  %491 = add i64 %485, %487
  %492 = lshr i64 %490, 32
  %493 = and i64 %490, 4294967295
  %494 = mul nuw i64 %493, %492
  %495 = add i64 %494, %481
  %496 = getelementptr inbounds nuw i8, ptr %454, i64 32
  %497 = load i64, ptr %496, align 1
  %498 = getelementptr inbounds nuw i8, ptr %457, i64 32
  %499 = load i64, ptr %498, align 8
  %500 = xor i64 %499, %497
  %501 = add i64 %446, %497
  %502 = lshr i64 %500, 32
  %503 = and i64 %500, 4294967295
  %504 = mul nuw i64 %503, %502
  %505 = add i64 %504, %447
  %506 = getelementptr inbounds nuw i8, ptr %454, i64 40
  %507 = load i64, ptr %506, align 1
  %508 = getelementptr inbounds nuw i8, ptr %457, i64 40
  %509 = load i64, ptr %508, align 8
  %510 = xor i64 %509, %507
  %511 = add i64 %505, %507
  %512 = lshr i64 %510, 32
  %513 = and i64 %510, 4294967295
  %514 = mul nuw i64 %513, %512
  %515 = add i64 %514, %501
  %516 = getelementptr inbounds nuw i8, ptr %454, i64 48
  %517 = load i64, ptr %516, align 1
  %518 = getelementptr inbounds nuw i8, ptr %457, i64 48
  %519 = load i64, ptr %518, align 8
  %520 = xor i64 %519, %517
  %521 = add i64 %444, %517
  %522 = lshr i64 %520, 32
  %523 = and i64 %520, 4294967295
  %524 = mul nuw i64 %523, %522
  %525 = add i64 %524, %445
  %526 = getelementptr inbounds nuw i8, ptr %454, i64 56
  %527 = load i64, ptr %526, align 1
  %528 = getelementptr inbounds nuw i8, ptr %457, i64 56
  %529 = load i64, ptr %528, align 8
  %530 = xor i64 %529, %527
  %531 = add i64 %525, %527
  %532 = lshr i64 %530, 32
  %533 = and i64 %530, 4294967295
  %534 = mul nuw i64 %533, %532
  %535 = add i64 %534, %521
  %536 = add nuw nsw i64 %452, 1
  %537 = icmp eq i64 %536, 16
  br i1 %537, label %538, label %443, !llvm.loop !32

538:                                              ; preds = %443
  %539 = lshr i64 %471, 47
  %540 = xor i64 %411, %539
  %541 = xor i64 %540, %471
  %542 = mul i64 %541, 2654435761
  %543 = lshr i64 %475, 47
  %544 = xor i64 %412, %543
  %545 = xor i64 %544, %475
  %546 = mul i64 %545, 2654435761
  %547 = lshr i64 %491, 47
  %548 = xor i64 %415, %547
  %549 = xor i64 %548, %491
  %550 = mul i64 %549, 2654435761
  %551 = lshr i64 %495, 47
  %552 = xor i64 %416, %551
  %553 = xor i64 %552, %495
  %554 = mul i64 %553, 2654435761
  %555 = lshr i64 %511, 47
  %556 = xor i64 %419, %555
  %557 = xor i64 %556, %511
  %558 = mul i64 %557, 2654435761
  %559 = lshr i64 %515, 47
  %560 = xor i64 %420, %559
  %561 = xor i64 %560, %515
  %562 = mul i64 %561, 2654435761
  %563 = lshr i64 %531, 47
  %564 = xor i64 %423, %563
  %565 = xor i64 %564, %531
  %566 = mul i64 %565, 2654435761
  %567 = lshr i64 %535, 47
  %568 = xor i64 %424, %567
  %569 = xor i64 %568, %535
  %570 = mul i64 %569, 2654435761
  %571 = add nuw nsw i64 %440, 1
  %572 = icmp eq i64 %571, %430
  br i1 %572, label %573, label %431, !llvm.loop !33

573:                                              ; preds = %538, %379
  %574 = phi i64 [ 2654435761, %379 ], [ %570, %538 ]
  %575 = phi i64 [ 2870177450012600261, %379 ], [ %566, %538 ]
  %576 = phi i64 [ 2246822519, %379 ], [ %562, %538 ]
  %577 = phi i64 [ -8796714831421723037, %379 ], [ %558, %538 ]
  %578 = phi i64 [ 1609587929392839161, %379 ], [ %554, %538 ]
  %579 = phi i64 [ -4417276706812531889, %379 ], [ %550, %538 ]
  %580 = phi i64 [ -7046029288634856825, %379 ], [ %546, %538 ]
  %581 = phi i64 [ 3266489917, %379 ], [ %542, %538 ]
  %582 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %582)
  %583 = and i64 %427, -1024
  %584 = lshr i64 %427, 6
  %585 = and i64 %584, 15
  %586 = getelementptr inbounds nuw i8, ptr %0, i64 %583
  %587 = icmp eq i64 %585, 0
  br i1 %587, label %683, label %588

588:                                              ; preds = %573, %588
  %589 = phi i64 [ %680, %588 ], [ %574, %573 ]
  %590 = phi i64 [ %676, %588 ], [ %575, %573 ]
  %591 = phi i64 [ %660, %588 ], [ %576, %573 ]
  %592 = phi i64 [ %656, %588 ], [ %577, %573 ]
  %593 = phi i64 [ %640, %588 ], [ %578, %573 ]
  %594 = phi i64 [ %636, %588 ], [ %579, %573 ]
  %595 = phi i64 [ %620, %588 ], [ %580, %573 ]
  %596 = phi i64 [ %616, %588 ], [ %581, %573 ]
  %597 = phi i64 [ %681, %588 ], [ 0, %573 ]
  %598 = shl nuw nsw i64 %597, 6
  %599 = getelementptr inbounds nuw i8, ptr %586, i64 %598
  %600 = getelementptr inbounds nuw i8, ptr %599, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %600, i32 0, i32 3, i32 1)
  %601 = shl nuw nsw i64 %597, 3
  %602 = getelementptr inbounds nuw i8, ptr %4, i64 %601
  %603 = load i64, ptr %599, align 1
  %604 = load i64, ptr %602, align 8
  %605 = xor i64 %604, %603
  %606 = add i64 %595, %603
  %607 = lshr i64 %605, 32
  %608 = and i64 %605, 4294967295
  %609 = mul nuw i64 %608, %607
  %610 = add i64 %609, %596
  %611 = getelementptr inbounds nuw i8, ptr %599, i64 8
  %612 = load i64, ptr %611, align 1
  %613 = getelementptr inbounds nuw i8, ptr %602, i64 8
  %614 = load i64, ptr %613, align 8
  %615 = xor i64 %614, %612
  %616 = add i64 %610, %612
  %617 = lshr i64 %615, 32
  %618 = and i64 %615, 4294967295
  %619 = mul nuw i64 %618, %617
  %620 = add i64 %619, %606
  %621 = getelementptr inbounds nuw i8, ptr %599, i64 16
  %622 = load i64, ptr %621, align 1
  %623 = getelementptr inbounds nuw i8, ptr %602, i64 16
  %624 = load i64, ptr %623, align 8
  %625 = xor i64 %624, %622
  %626 = add i64 %593, %622
  %627 = lshr i64 %625, 32
  %628 = and i64 %625, 4294967295
  %629 = mul nuw i64 %628, %627
  %630 = add i64 %629, %594
  %631 = getelementptr inbounds nuw i8, ptr %599, i64 24
  %632 = load i64, ptr %631, align 1
  %633 = getelementptr inbounds nuw i8, ptr %602, i64 24
  %634 = load i64, ptr %633, align 8
  %635 = xor i64 %634, %632
  %636 = add i64 %630, %632
  %637 = lshr i64 %635, 32
  %638 = and i64 %635, 4294967295
  %639 = mul nuw i64 %638, %637
  %640 = add i64 %639, %626
  %641 = getelementptr inbounds nuw i8, ptr %599, i64 32
  %642 = load i64, ptr %641, align 1
  %643 = getelementptr inbounds nuw i8, ptr %602, i64 32
  %644 = load i64, ptr %643, align 8
  %645 = xor i64 %644, %642
  %646 = add i64 %591, %642
  %647 = lshr i64 %645, 32
  %648 = and i64 %645, 4294967295
  %649 = mul nuw i64 %648, %647
  %650 = add i64 %649, %592
  %651 = getelementptr inbounds nuw i8, ptr %599, i64 40
  %652 = load i64, ptr %651, align 1
  %653 = getelementptr inbounds nuw i8, ptr %602, i64 40
  %654 = load i64, ptr %653, align 8
  %655 = xor i64 %654, %652
  %656 = add i64 %650, %652
  %657 = lshr i64 %655, 32
  %658 = and i64 %655, 4294967295
  %659 = mul nuw i64 %658, %657
  %660 = add i64 %659, %646
  %661 = getelementptr inbounds nuw i8, ptr %599, i64 48
  %662 = load i64, ptr %661, align 1
  %663 = getelementptr inbounds nuw i8, ptr %602, i64 48
  %664 = load i64, ptr %663, align 8
  %665 = xor i64 %664, %662
  %666 = add i64 %589, %662
  %667 = lshr i64 %665, 32
  %668 = and i64 %665, 4294967295
  %669 = mul nuw i64 %668, %667
  %670 = add i64 %669, %590
  %671 = getelementptr inbounds nuw i8, ptr %599, i64 56
  %672 = load i64, ptr %671, align 1
  %673 = getelementptr inbounds nuw i8, ptr %602, i64 56
  %674 = load i64, ptr %673, align 8
  %675 = xor i64 %674, %672
  %676 = add i64 %670, %672
  %677 = lshr i64 %675, 32
  %678 = and i64 %675, 4294967295
  %679 = mul nuw i64 %678, %677
  %680 = add i64 %679, %666
  %681 = add nuw nsw i64 %597, 1
  %682 = icmp eq i64 %681, %585
  br i1 %682, label %683, label %588, !llvm.loop !32

683:                                              ; preds = %588, %573
  %684 = phi i64 [ %574, %573 ], [ %680, %588 ]
  %685 = phi i64 [ %575, %573 ], [ %676, %588 ]
  %686 = phi i64 [ %576, %573 ], [ %660, %588 ]
  %687 = phi i64 [ %577, %573 ], [ %656, %588 ]
  %688 = phi i64 [ %578, %573 ], [ %640, %588 ]
  %689 = phi i64 [ %579, %573 ], [ %636, %588 ]
  %690 = phi i64 [ %580, %573 ], [ %620, %588 ]
  %691 = phi i64 [ %581, %573 ], [ %616, %588 ]
  %692 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %693 = getelementptr inbounds i8, ptr %692, i64 -64
  %694 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %695 = load i64, ptr %693, align 1
  %696 = load i64, ptr %694, align 1
  %697 = xor i64 %696, %695
  %698 = add i64 %690, %695
  %699 = lshr i64 %697, 32
  %700 = and i64 %697, 4294967295
  %701 = mul nuw i64 %700, %699
  %702 = add i64 %701, %691
  %703 = getelementptr inbounds i8, ptr %692, i64 -56
  %704 = load i64, ptr %703, align 1
  %705 = getelementptr inbounds nuw i8, ptr %4, i64 129
  %706 = load i64, ptr %705, align 1
  %707 = xor i64 %706, %704
  %708 = add i64 %702, %704
  %709 = lshr i64 %707, 32
  %710 = and i64 %707, 4294967295
  %711 = mul nuw i64 %710, %709
  %712 = add i64 %711, %698
  %713 = getelementptr inbounds i8, ptr %692, i64 -48
  %714 = load i64, ptr %713, align 1
  %715 = getelementptr inbounds nuw i8, ptr %4, i64 137
  %716 = load i64, ptr %715, align 1
  %717 = xor i64 %716, %714
  %718 = add i64 %688, %714
  %719 = lshr i64 %717, 32
  %720 = and i64 %717, 4294967295
  %721 = mul nuw i64 %720, %719
  %722 = add i64 %721, %689
  %723 = getelementptr inbounds i8, ptr %692, i64 -40
  %724 = load i64, ptr %723, align 1
  %725 = getelementptr inbounds nuw i8, ptr %4, i64 145
  %726 = load i64, ptr %725, align 1
  %727 = xor i64 %726, %724
  %728 = add i64 %722, %724
  %729 = lshr i64 %727, 32
  %730 = and i64 %727, 4294967295
  %731 = mul nuw i64 %730, %729
  %732 = add i64 %731, %718
  %733 = getelementptr inbounds i8, ptr %692, i64 -32
  %734 = load i64, ptr %733, align 1
  %735 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %736 = load i64, ptr %735, align 1
  %737 = xor i64 %736, %734
  %738 = add i64 %686, %734
  %739 = lshr i64 %737, 32
  %740 = and i64 %737, 4294967295
  %741 = mul nuw i64 %740, %739
  %742 = add i64 %741, %687
  %743 = getelementptr inbounds i8, ptr %692, i64 -24
  %744 = load i64, ptr %743, align 1
  %745 = getelementptr inbounds nuw i8, ptr %4, i64 161
  %746 = load i64, ptr %745, align 1
  %747 = xor i64 %746, %744
  %748 = add i64 %742, %744
  %749 = lshr i64 %747, 32
  %750 = and i64 %747, 4294967295
  %751 = mul nuw i64 %750, %749
  %752 = add i64 %751, %738
  %753 = getelementptr inbounds i8, ptr %692, i64 -16
  %754 = load i64, ptr %753, align 1
  %755 = getelementptr inbounds nuw i8, ptr %4, i64 169
  %756 = load i64, ptr %755, align 1
  %757 = xor i64 %756, %754
  %758 = add i64 %684, %754
  %759 = lshr i64 %757, 32
  %760 = and i64 %757, 4294967295
  %761 = mul nuw i64 %760, %759
  %762 = add i64 %761, %685
  %763 = getelementptr inbounds i8, ptr %692, i64 -8
  %764 = load i64, ptr %763, align 1
  %765 = getelementptr inbounds nuw i8, ptr %4, i64 177
  %766 = load i64, ptr %765, align 1
  %767 = xor i64 %766, %764
  %768 = add i64 %762, %764
  %769 = lshr i64 %767, 32
  %770 = and i64 %767, 4294967295
  %771 = mul nuw i64 %770, %769
  %772 = add i64 %771, %758
  %773 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %774 = mul i64 %1, -7046029288634856825
  %775 = load i64, ptr %773, align 1, !alias.scope !36, !noalias !41
  %776 = xor i64 %775, %708
  %777 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %778 = load i64, ptr %777, align 1, !alias.scope !36, !noalias !41
  %779 = xor i64 %778, %712
  %780 = zext i64 %776 to i128
  %781 = zext i64 %779 to i128
  %782 = mul nuw i128 %781, %780
  %783 = lshr i128 %782, 64
  %784 = xor i128 %783, %782
  %785 = trunc i128 %784 to i64
  %786 = add i64 %774, %785
  %787 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %788 = load i64, ptr %787, align 1, !alias.scope !36, !noalias !41
  %789 = xor i64 %788, %728
  %790 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %791 = load i64, ptr %790, align 1, !alias.scope !36, !noalias !41
  %792 = xor i64 %791, %732
  %793 = zext i64 %789 to i128
  %794 = zext i64 %792 to i128
  %795 = mul nuw i128 %794, %793
  %796 = lshr i128 %795, 64
  %797 = xor i128 %796, %795
  %798 = trunc i128 %797 to i64
  %799 = add i64 %786, %798
  %800 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %801 = load i64, ptr %800, align 1, !alias.scope !36, !noalias !41
  %802 = xor i64 %801, %748
  %803 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %804 = load i64, ptr %803, align 1, !alias.scope !36, !noalias !41
  %805 = xor i64 %804, %752
  %806 = zext i64 %802 to i128
  %807 = zext i64 %805 to i128
  %808 = mul nuw i128 %807, %806
  %809 = lshr i128 %808, 64
  %810 = xor i128 %809, %808
  %811 = trunc i128 %810 to i64
  %812 = add i64 %799, %811
  %813 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %814 = load i64, ptr %813, align 1, !alias.scope !36, !noalias !41
  %815 = xor i64 %814, %768
  %816 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %817 = load i64, ptr %816, align 1, !alias.scope !36, !noalias !41
  %818 = xor i64 %817, %772
  %819 = zext i64 %815 to i128
  %820 = zext i64 %818 to i128
  %821 = mul nuw i128 %820, %819
  %822 = lshr i128 %821, 64
  %823 = xor i128 %822, %821
  %824 = trunc i128 %823 to i64
  %825 = add i64 %812, %824
  %826 = lshr i64 %825, 37
  %827 = xor i64 %826, %825
  %828 = mul i64 %827, 1609587791953885689
  %829 = lshr i64 %828, 32
  %830 = xor i64 %829, %828
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #39
  br label %831

831:                                              ; preds = %263, %683
  %832 = phi i64 [ %378, %263 ], [ %830, %683 ]
  ret i64 %832
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH3_64bits_withSecret(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef %2, i64 noundef %3) unnamed_addr #27 {
  %5 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 17
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i64 @target_0to16(ptr noundef %0, i64 noundef range(i64 0, 17) %1, ptr noundef %2, i64 noundef 0) #39
  br label %599

9:                                                ; preds = %4
  %10 = icmp ult i64 %1, 129
  br i1 %10, label %11, label %168

11:                                               ; preds = %9
  %12 = mul i64 %1, -7046029288634856825
  %13 = icmp samesign ugt i64 %1, 32
  br i1 %13, label %14, label %128

14:                                               ; preds = %11
  %15 = icmp samesign ugt i64 %1, 64
  br i1 %15, label %16, label %91

16:                                               ; preds = %14
  %17 = icmp samesign ugt i64 %1, 96
  br i1 %17, label %18, label %54

18:                                               ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %21 = load i64, ptr %19, align 1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %23 = load i64, ptr %22, align 1
  %24 = load i64, ptr %20, align 1
  %25 = xor i64 %24, %21
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %27 = load i64, ptr %26, align 1
  %28 = xor i64 %27, %23
  %29 = zext i64 %25 to i128
  %30 = zext i64 %28 to i128
  %31 = mul nuw i128 %30, %29
  %32 = lshr i128 %31, 64
  %33 = xor i128 %32, %31
  %34 = trunc i128 %33 to i64
  %35 = add i64 %12, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %37 = getelementptr inbounds i8, ptr %36, i64 -64
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %39 = load i64, ptr %37, align 1
  %40 = getelementptr inbounds i8, ptr %36, i64 -56
  %41 = load i64, ptr %40, align 1
  %42 = load i64, ptr %38, align 1
  %43 = xor i64 %42, %39
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %45 = load i64, ptr %44, align 1
  %46 = xor i64 %45, %41
  %47 = zext i64 %43 to i128
  %48 = zext i64 %46 to i128
  %49 = mul nuw i128 %48, %47
  %50 = lshr i128 %49, 64
  %51 = xor i128 %50, %49
  %52 = trunc i128 %51 to i64
  %53 = add i64 %35, %52
  br label %54

54:                                               ; preds = %18, %16
  %55 = phi i64 [ %53, %18 ], [ %12, %16 ]
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %58 = load i64, ptr %56, align 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %60 = load i64, ptr %59, align 1
  %61 = load i64, ptr %57, align 1
  %62 = xor i64 %61, %58
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %64 = load i64, ptr %63, align 1
  %65 = xor i64 %64, %60
  %66 = zext i64 %62 to i128
  %67 = zext i64 %65 to i128
  %68 = mul nuw i128 %67, %66
  %69 = lshr i128 %68, 64
  %70 = xor i128 %69, %68
  %71 = trunc i128 %70 to i64
  %72 = add i64 %55, %71
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %74 = getelementptr inbounds i8, ptr %73, i64 -48
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %76 = load i64, ptr %74, align 1
  %77 = getelementptr inbounds i8, ptr %73, i64 -40
  %78 = load i64, ptr %77, align 1
  %79 = load i64, ptr %75, align 1
  %80 = xor i64 %79, %76
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %82 = load i64, ptr %81, align 1
  %83 = xor i64 %82, %78
  %84 = zext i64 %80 to i128
  %85 = zext i64 %83 to i128
  %86 = mul nuw i128 %85, %84
  %87 = lshr i128 %86, 64
  %88 = xor i128 %87, %86
  %89 = trunc i128 %88 to i64
  %90 = add i64 %72, %89
  br label %91

91:                                               ; preds = %54, %14
  %92 = phi i64 [ %90, %54 ], [ %12, %14 ]
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %95 = load i64, ptr %93, align 1
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %97 = load i64, ptr %96, align 1
  %98 = load i64, ptr %94, align 1
  %99 = xor i64 %98, %95
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %101 = load i64, ptr %100, align 1
  %102 = xor i64 %101, %97
  %103 = zext i64 %99 to i128
  %104 = zext i64 %102 to i128
  %105 = mul nuw i128 %104, %103
  %106 = lshr i128 %105, 64
  %107 = xor i128 %106, %105
  %108 = trunc i128 %107 to i64
  %109 = add i64 %92, %108
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %111 = getelementptr inbounds i8, ptr %110, i64 -32
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %113 = load i64, ptr %111, align 1
  %114 = getelementptr inbounds i8, ptr %110, i64 -24
  %115 = load i64, ptr %114, align 1
  %116 = load i64, ptr %112, align 1
  %117 = xor i64 %116, %113
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %119 = load i64, ptr %118, align 1
  %120 = xor i64 %119, %115
  %121 = zext i64 %117 to i128
  %122 = zext i64 %120 to i128
  %123 = mul nuw i128 %122, %121
  %124 = lshr i128 %123, 64
  %125 = xor i128 %124, %123
  %126 = trunc i128 %125 to i64
  %127 = add i64 %109, %126
  br label %128

128:                                              ; preds = %11, %91
  %129 = phi i64 [ %127, %91 ], [ %12, %11 ]
  %130 = load i64, ptr %0, align 1
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %132 = load i64, ptr %131, align 1
  %133 = load i64, ptr %2, align 1
  %134 = xor i64 %133, %130
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %136 = load i64, ptr %135, align 1
  %137 = xor i64 %136, %132
  %138 = zext i64 %134 to i128
  %139 = zext i64 %137 to i128
  %140 = mul nuw i128 %139, %138
  %141 = lshr i128 %140, 64
  %142 = xor i128 %141, %140
  %143 = trunc i128 %142 to i64
  %144 = add i64 %129, %143
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %146 = getelementptr inbounds i8, ptr %145, i64 -16
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %148 = load i64, ptr %146, align 1
  %149 = getelementptr inbounds i8, ptr %145, i64 -8
  %150 = load i64, ptr %149, align 1
  %151 = load i64, ptr %147, align 1
  %152 = xor i64 %151, %148
  %153 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %154 = load i64, ptr %153, align 1
  %155 = xor i64 %154, %150
  %156 = zext i64 %152 to i128
  %157 = zext i64 %155 to i128
  %158 = mul nuw i128 %157, %156
  %159 = lshr i128 %158, 64
  %160 = xor i128 %159, %158
  %161 = trunc i128 %160 to i64
  %162 = add i64 %144, %161
  %163 = lshr i64 %162, 37
  %164 = xor i64 %163, %162
  %165 = mul i64 %164, 1609587791953885689
  %166 = lshr i64 %165, 32
  %167 = xor i64 %166, %165
  br label %599

168:                                              ; preds = %9
  %169 = icmp ult i64 %1, 241
  br i1 %169, label %170, label %172

170:                                              ; preds = %168
  %171 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0) #43
  br label %599

172:                                              ; preds = %168
  %173 = add i64 %3, -64
  %174 = lshr i64 %173, 3
  %175 = shl i64 %174, 6
  %176 = add i64 %1, -1
  %177 = udiv i64 %176, %175
  %178 = urem i64 %176, %175
  %179 = icmp ugt i64 %175, %176
  br i1 %179, label %340, label %180

180:                                              ; preds = %172
  %181 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %182 = getelementptr inbounds i8, ptr %181, i64 -64
  %183 = load i64, ptr %182, align 1
  %184 = getelementptr inbounds i8, ptr %181, i64 -56
  %185 = load i64, ptr %184, align 1
  %186 = getelementptr inbounds i8, ptr %181, i64 -48
  %187 = load i64, ptr %186, align 1
  %188 = getelementptr inbounds i8, ptr %181, i64 -40
  %189 = load i64, ptr %188, align 1
  %190 = getelementptr inbounds i8, ptr %181, i64 -32
  %191 = load i64, ptr %190, align 1
  %192 = getelementptr inbounds i8, ptr %181, i64 -24
  %193 = load i64, ptr %192, align 1
  %194 = getelementptr inbounds i8, ptr %181, i64 -16
  %195 = load i64, ptr %194, align 1
  %196 = getelementptr inbounds i8, ptr %181, i64 -8
  %197 = load i64, ptr %196, align 1
  br label %198

198:                                              ; preds = %180, %305
  %199 = phi i64 [ 2654435761, %180 ], [ %337, %305 ]
  %200 = phi i64 [ 2870177450012600261, %180 ], [ %333, %305 ]
  %201 = phi i64 [ 2246822519, %180 ], [ %329, %305 ]
  %202 = phi i64 [ -8796714831421723037, %180 ], [ %325, %305 ]
  %203 = phi i64 [ 1609587929392839161, %180 ], [ %321, %305 ]
  %204 = phi i64 [ -4417276706812531889, %180 ], [ %317, %305 ]
  %205 = phi i64 [ -7046029288634856825, %180 ], [ %313, %305 ]
  %206 = phi i64 [ 3266489917, %180 ], [ %309, %305 ]
  %207 = phi i64 [ 0, %180 ], [ %338, %305 ]
  %208 = mul i64 %207, %175
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 %208
  br label %210

210:                                              ; preds = %198, %210
  %211 = phi i64 [ %199, %198 ], [ %302, %210 ]
  %212 = phi i64 [ %200, %198 ], [ %298, %210 ]
  %213 = phi i64 [ %201, %198 ], [ %282, %210 ]
  %214 = phi i64 [ %202, %198 ], [ %278, %210 ]
  %215 = phi i64 [ %203, %198 ], [ %262, %210 ]
  %216 = phi i64 [ %204, %198 ], [ %258, %210 ]
  %217 = phi i64 [ %205, %198 ], [ %242, %210 ]
  %218 = phi i64 [ %206, %198 ], [ %238, %210 ]
  %219 = phi i64 [ 0, %198 ], [ %303, %210 ]
  %220 = shl i64 %219, 6
  %221 = getelementptr inbounds nuw i8, ptr %209, i64 %220
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %222, i32 0, i32 3, i32 1)
  %223 = shl i64 %219, 3
  %224 = getelementptr inbounds nuw i8, ptr %2, i64 %223
  %225 = load i64, ptr %221, align 1
  %226 = load i64, ptr %224, align 1
  %227 = xor i64 %226, %225
  %228 = add i64 %217, %225
  %229 = lshr i64 %227, 32
  %230 = and i64 %227, 4294967295
  %231 = mul nuw i64 %230, %229
  %232 = add i64 %231, %218
  %233 = getelementptr inbounds nuw i8, ptr %221, i64 8
  %234 = load i64, ptr %233, align 1
  %235 = getelementptr inbounds nuw i8, ptr %224, i64 8
  %236 = load i64, ptr %235, align 1
  %237 = xor i64 %236, %234
  %238 = add i64 %232, %234
  %239 = lshr i64 %237, 32
  %240 = and i64 %237, 4294967295
  %241 = mul nuw i64 %240, %239
  %242 = add i64 %241, %228
  %243 = getelementptr inbounds nuw i8, ptr %221, i64 16
  %244 = load i64, ptr %243, align 1
  %245 = getelementptr inbounds nuw i8, ptr %224, i64 16
  %246 = load i64, ptr %245, align 1
  %247 = xor i64 %246, %244
  %248 = add i64 %215, %244
  %249 = lshr i64 %247, 32
  %250 = and i64 %247, 4294967295
  %251 = mul nuw i64 %250, %249
  %252 = add i64 %251, %216
  %253 = getelementptr inbounds nuw i8, ptr %221, i64 24
  %254 = load i64, ptr %253, align 1
  %255 = getelementptr inbounds nuw i8, ptr %224, i64 24
  %256 = load i64, ptr %255, align 1
  %257 = xor i64 %256, %254
  %258 = add i64 %252, %254
  %259 = lshr i64 %257, 32
  %260 = and i64 %257, 4294967295
  %261 = mul nuw i64 %260, %259
  %262 = add i64 %261, %248
  %263 = getelementptr inbounds nuw i8, ptr %221, i64 32
  %264 = load i64, ptr %263, align 1
  %265 = getelementptr inbounds nuw i8, ptr %224, i64 32
  %266 = load i64, ptr %265, align 1
  %267 = xor i64 %266, %264
  %268 = add i64 %213, %264
  %269 = lshr i64 %267, 32
  %270 = and i64 %267, 4294967295
  %271 = mul nuw i64 %270, %269
  %272 = add i64 %271, %214
  %273 = getelementptr inbounds nuw i8, ptr %221, i64 40
  %274 = load i64, ptr %273, align 1
  %275 = getelementptr inbounds nuw i8, ptr %224, i64 40
  %276 = load i64, ptr %275, align 1
  %277 = xor i64 %276, %274
  %278 = add i64 %272, %274
  %279 = lshr i64 %277, 32
  %280 = and i64 %277, 4294967295
  %281 = mul nuw i64 %280, %279
  %282 = add i64 %281, %268
  %283 = getelementptr inbounds nuw i8, ptr %221, i64 48
  %284 = load i64, ptr %283, align 1
  %285 = getelementptr inbounds nuw i8, ptr %224, i64 48
  %286 = load i64, ptr %285, align 1
  %287 = xor i64 %286, %284
  %288 = add i64 %211, %284
  %289 = lshr i64 %287, 32
  %290 = and i64 %287, 4294967295
  %291 = mul nuw i64 %290, %289
  %292 = add i64 %291, %212
  %293 = getelementptr inbounds nuw i8, ptr %221, i64 56
  %294 = load i64, ptr %293, align 1
  %295 = getelementptr inbounds nuw i8, ptr %224, i64 56
  %296 = load i64, ptr %295, align 1
  %297 = xor i64 %296, %294
  %298 = add i64 %292, %294
  %299 = lshr i64 %297, 32
  %300 = and i64 %297, 4294967295
  %301 = mul nuw i64 %300, %299
  %302 = add i64 %301, %288
  %303 = add nuw nsw i64 %219, 1
  %304 = icmp eq i64 %303, %174
  br i1 %304, label %305, label %210, !llvm.loop !32

305:                                              ; preds = %210
  %306 = lshr i64 %238, 47
  %307 = xor i64 %183, %306
  %308 = xor i64 %307, %238
  %309 = mul i64 %308, 2654435761
  %310 = lshr i64 %242, 47
  %311 = xor i64 %185, %310
  %312 = xor i64 %311, %242
  %313 = mul i64 %312, 2654435761
  %314 = lshr i64 %258, 47
  %315 = xor i64 %187, %314
  %316 = xor i64 %315, %258
  %317 = mul i64 %316, 2654435761
  %318 = lshr i64 %262, 47
  %319 = xor i64 %189, %318
  %320 = xor i64 %319, %262
  %321 = mul i64 %320, 2654435761
  %322 = lshr i64 %278, 47
  %323 = xor i64 %191, %322
  %324 = xor i64 %323, %278
  %325 = mul i64 %324, 2654435761
  %326 = lshr i64 %282, 47
  %327 = xor i64 %193, %326
  %328 = xor i64 %327, %282
  %329 = mul i64 %328, 2654435761
  %330 = lshr i64 %298, 47
  %331 = xor i64 %195, %330
  %332 = xor i64 %331, %298
  %333 = mul i64 %332, 2654435761
  %334 = lshr i64 %302, 47
  %335 = xor i64 %197, %334
  %336 = xor i64 %335, %302
  %337 = mul i64 %336, 2654435761
  %338 = add nuw i64 %207, 1
  %339 = icmp ult i64 %338, %177
  br i1 %339, label %198, label %340, !llvm.loop !33

340:                                              ; preds = %305, %172
  %341 = phi i64 [ 2654435761, %172 ], [ %337, %305 ]
  %342 = phi i64 [ 2870177450012600261, %172 ], [ %333, %305 ]
  %343 = phi i64 [ 2246822519, %172 ], [ %329, %305 ]
  %344 = phi i64 [ -8796714831421723037, %172 ], [ %325, %305 ]
  %345 = phi i64 [ 1609587929392839161, %172 ], [ %321, %305 ]
  %346 = phi i64 [ -4417276706812531889, %172 ], [ %317, %305 ]
  %347 = phi i64 [ -7046029288634856825, %172 ], [ %313, %305 ]
  %348 = phi i64 [ 3266489917, %172 ], [ %309, %305 ]
  %349 = mul i64 %177, %175
  %350 = lshr i64 %178, 6
  %351 = lshr i64 %3, 3
  %352 = icmp samesign ule i64 %350, %351
  tail call void @llvm.assume(i1 %352)
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 %349
  %354 = icmp ult i64 %178, 64
  br i1 %354, label %450, label %355

355:                                              ; preds = %340, %355
  %356 = phi i64 [ %447, %355 ], [ %341, %340 ]
  %357 = phi i64 [ %443, %355 ], [ %342, %340 ]
  %358 = phi i64 [ %427, %355 ], [ %343, %340 ]
  %359 = phi i64 [ %423, %355 ], [ %344, %340 ]
  %360 = phi i64 [ %407, %355 ], [ %345, %340 ]
  %361 = phi i64 [ %403, %355 ], [ %346, %340 ]
  %362 = phi i64 [ %387, %355 ], [ %347, %340 ]
  %363 = phi i64 [ %383, %355 ], [ %348, %340 ]
  %364 = phi i64 [ %448, %355 ], [ 0, %340 ]
  %365 = shl i64 %364, 6
  %366 = getelementptr inbounds nuw i8, ptr %353, i64 %365
  %367 = getelementptr inbounds nuw i8, ptr %366, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %367, i32 0, i32 3, i32 1)
  %368 = shl i64 %364, 3
  %369 = getelementptr inbounds nuw i8, ptr %2, i64 %368
  %370 = load i64, ptr %366, align 1
  %371 = load i64, ptr %369, align 1
  %372 = xor i64 %371, %370
  %373 = add i64 %362, %370
  %374 = lshr i64 %372, 32
  %375 = and i64 %372, 4294967295
  %376 = mul nuw i64 %375, %374
  %377 = add i64 %376, %363
  %378 = getelementptr inbounds nuw i8, ptr %366, i64 8
  %379 = load i64, ptr %378, align 1
  %380 = getelementptr inbounds nuw i8, ptr %369, i64 8
  %381 = load i64, ptr %380, align 1
  %382 = xor i64 %381, %379
  %383 = add i64 %377, %379
  %384 = lshr i64 %382, 32
  %385 = and i64 %382, 4294967295
  %386 = mul nuw i64 %385, %384
  %387 = add i64 %386, %373
  %388 = getelementptr inbounds nuw i8, ptr %366, i64 16
  %389 = load i64, ptr %388, align 1
  %390 = getelementptr inbounds nuw i8, ptr %369, i64 16
  %391 = load i64, ptr %390, align 1
  %392 = xor i64 %391, %389
  %393 = add i64 %360, %389
  %394 = lshr i64 %392, 32
  %395 = and i64 %392, 4294967295
  %396 = mul nuw i64 %395, %394
  %397 = add i64 %396, %361
  %398 = getelementptr inbounds nuw i8, ptr %366, i64 24
  %399 = load i64, ptr %398, align 1
  %400 = getelementptr inbounds nuw i8, ptr %369, i64 24
  %401 = load i64, ptr %400, align 1
  %402 = xor i64 %401, %399
  %403 = add i64 %397, %399
  %404 = lshr i64 %402, 32
  %405 = and i64 %402, 4294967295
  %406 = mul nuw i64 %405, %404
  %407 = add i64 %406, %393
  %408 = getelementptr inbounds nuw i8, ptr %366, i64 32
  %409 = load i64, ptr %408, align 1
  %410 = getelementptr inbounds nuw i8, ptr %369, i64 32
  %411 = load i64, ptr %410, align 1
  %412 = xor i64 %411, %409
  %413 = add i64 %358, %409
  %414 = lshr i64 %412, 32
  %415 = and i64 %412, 4294967295
  %416 = mul nuw i64 %415, %414
  %417 = add i64 %416, %359
  %418 = getelementptr inbounds nuw i8, ptr %366, i64 40
  %419 = load i64, ptr %418, align 1
  %420 = getelementptr inbounds nuw i8, ptr %369, i64 40
  %421 = load i64, ptr %420, align 1
  %422 = xor i64 %421, %419
  %423 = add i64 %417, %419
  %424 = lshr i64 %422, 32
  %425 = and i64 %422, 4294967295
  %426 = mul nuw i64 %425, %424
  %427 = add i64 %426, %413
  %428 = getelementptr inbounds nuw i8, ptr %366, i64 48
  %429 = load i64, ptr %428, align 1
  %430 = getelementptr inbounds nuw i8, ptr %369, i64 48
  %431 = load i64, ptr %430, align 1
  %432 = xor i64 %431, %429
  %433 = add i64 %356, %429
  %434 = lshr i64 %432, 32
  %435 = and i64 %432, 4294967295
  %436 = mul nuw i64 %435, %434
  %437 = add i64 %436, %357
  %438 = getelementptr inbounds nuw i8, ptr %366, i64 56
  %439 = load i64, ptr %438, align 1
  %440 = getelementptr inbounds nuw i8, ptr %369, i64 56
  %441 = load i64, ptr %440, align 1
  %442 = xor i64 %441, %439
  %443 = add i64 %437, %439
  %444 = lshr i64 %442, 32
  %445 = and i64 %442, 4294967295
  %446 = mul nuw i64 %445, %444
  %447 = add i64 %446, %433
  %448 = add nuw nsw i64 %364, 1
  %449 = icmp samesign ult i64 %448, %350
  br i1 %449, label %355, label %450, !llvm.loop !32

450:                                              ; preds = %355, %340
  %451 = phi i64 [ %341, %340 ], [ %447, %355 ]
  %452 = phi i64 [ %342, %340 ], [ %443, %355 ]
  %453 = phi i64 [ %343, %340 ], [ %427, %355 ]
  %454 = phi i64 [ %344, %340 ], [ %423, %355 ]
  %455 = phi i64 [ %345, %340 ], [ %407, %355 ]
  %456 = phi i64 [ %346, %340 ], [ %403, %355 ]
  %457 = phi i64 [ %347, %340 ], [ %387, %355 ]
  %458 = phi i64 [ %348, %340 ], [ %383, %355 ]
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %460 = getelementptr inbounds i8, ptr %459, i64 -64
  %461 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %462 = getelementptr inbounds i8, ptr %461, i64 -71
  %463 = load i64, ptr %460, align 1
  %464 = load i64, ptr %462, align 1
  %465 = xor i64 %464, %463
  %466 = add i64 %457, %463
  %467 = lshr i64 %465, 32
  %468 = and i64 %465, 4294967295
  %469 = mul nuw i64 %468, %467
  %470 = add i64 %469, %458
  %471 = getelementptr inbounds i8, ptr %459, i64 -56
  %472 = load i64, ptr %471, align 1
  %473 = getelementptr inbounds i8, ptr %461, i64 -63
  %474 = load i64, ptr %473, align 1
  %475 = xor i64 %474, %472
  %476 = add i64 %470, %472
  %477 = lshr i64 %475, 32
  %478 = and i64 %475, 4294967295
  %479 = mul nuw i64 %478, %477
  %480 = add i64 %479, %466
  %481 = getelementptr inbounds i8, ptr %459, i64 -48
  %482 = load i64, ptr %481, align 1
  %483 = getelementptr inbounds i8, ptr %461, i64 -55
  %484 = load i64, ptr %483, align 1
  %485 = xor i64 %484, %482
  %486 = add i64 %455, %482
  %487 = lshr i64 %485, 32
  %488 = and i64 %485, 4294967295
  %489 = mul nuw i64 %488, %487
  %490 = add i64 %489, %456
  %491 = getelementptr inbounds i8, ptr %459, i64 -40
  %492 = load i64, ptr %491, align 1
  %493 = getelementptr inbounds i8, ptr %461, i64 -47
  %494 = load i64, ptr %493, align 1
  %495 = xor i64 %494, %492
  %496 = add i64 %490, %492
  %497 = lshr i64 %495, 32
  %498 = and i64 %495, 4294967295
  %499 = mul nuw i64 %498, %497
  %500 = add i64 %499, %486
  %501 = getelementptr inbounds i8, ptr %459, i64 -32
  %502 = load i64, ptr %501, align 1
  %503 = getelementptr inbounds i8, ptr %461, i64 -39
  %504 = load i64, ptr %503, align 1
  %505 = xor i64 %504, %502
  %506 = add i64 %453, %502
  %507 = lshr i64 %505, 32
  %508 = and i64 %505, 4294967295
  %509 = mul nuw i64 %508, %507
  %510 = add i64 %509, %454
  %511 = getelementptr inbounds i8, ptr %459, i64 -24
  %512 = load i64, ptr %511, align 1
  %513 = getelementptr inbounds i8, ptr %461, i64 -31
  %514 = load i64, ptr %513, align 1
  %515 = xor i64 %514, %512
  %516 = add i64 %510, %512
  %517 = lshr i64 %515, 32
  %518 = and i64 %515, 4294967295
  %519 = mul nuw i64 %518, %517
  %520 = add i64 %519, %506
  %521 = getelementptr inbounds i8, ptr %459, i64 -16
  %522 = load i64, ptr %521, align 1
  %523 = getelementptr inbounds i8, ptr %461, i64 -23
  %524 = load i64, ptr %523, align 1
  %525 = xor i64 %524, %522
  %526 = add i64 %451, %522
  %527 = lshr i64 %525, 32
  %528 = and i64 %525, 4294967295
  %529 = mul nuw i64 %528, %527
  %530 = add i64 %529, %452
  %531 = getelementptr inbounds i8, ptr %459, i64 -8
  %532 = load i64, ptr %531, align 1
  %533 = getelementptr inbounds i8, ptr %461, i64 -15
  %534 = load i64, ptr %533, align 1
  %535 = xor i64 %534, %532
  %536 = add i64 %530, %532
  %537 = lshr i64 %535, 32
  %538 = and i64 %535, 4294967295
  %539 = mul nuw i64 %538, %537
  %540 = add i64 %539, %526
  %541 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %542 = mul i64 %1, -7046029288634856825
  %543 = load i64, ptr %541, align 1, !alias.scope !44, !noalias !49
  %544 = xor i64 %543, %476
  %545 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %546 = load i64, ptr %545, align 1, !alias.scope !44, !noalias !49
  %547 = xor i64 %546, %480
  %548 = zext i64 %544 to i128
  %549 = zext i64 %547 to i128
  %550 = mul nuw i128 %549, %548
  %551 = lshr i128 %550, 64
  %552 = xor i128 %551, %550
  %553 = trunc i128 %552 to i64
  %554 = add i64 %542, %553
  %555 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %556 = load i64, ptr %555, align 1, !alias.scope !44, !noalias !49
  %557 = xor i64 %556, %496
  %558 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %559 = load i64, ptr %558, align 1, !alias.scope !44, !noalias !49
  %560 = xor i64 %559, %500
  %561 = zext i64 %557 to i128
  %562 = zext i64 %560 to i128
  %563 = mul nuw i128 %562, %561
  %564 = lshr i128 %563, 64
  %565 = xor i128 %564, %563
  %566 = trunc i128 %565 to i64
  %567 = add i64 %554, %566
  %568 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %569 = load i64, ptr %568, align 1, !alias.scope !44, !noalias !49
  %570 = xor i64 %569, %516
  %571 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %572 = load i64, ptr %571, align 1, !alias.scope !44, !noalias !49
  %573 = xor i64 %572, %520
  %574 = zext i64 %570 to i128
  %575 = zext i64 %573 to i128
  %576 = mul nuw i128 %575, %574
  %577 = lshr i128 %576, 64
  %578 = xor i128 %577, %576
  %579 = trunc i128 %578 to i64
  %580 = add i64 %567, %579
  %581 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %582 = load i64, ptr %581, align 1, !alias.scope !44, !noalias !49
  %583 = xor i64 %582, %536
  %584 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %585 = load i64, ptr %584, align 1, !alias.scope !44, !noalias !49
  %586 = xor i64 %585, %540
  %587 = zext i64 %583 to i128
  %588 = zext i64 %586 to i128
  %589 = mul nuw i128 %588, %587
  %590 = lshr i128 %589, 64
  %591 = xor i128 %590, %589
  %592 = trunc i128 %591 to i64
  %593 = add i64 %580, %592
  %594 = lshr i64 %593, 37
  %595 = xor i64 %594, %593
  %596 = mul i64 %595, 1609587791953885689
  %597 = lshr i64 %596, 32
  %598 = xor i64 %597, %596
  br label %599

599:                                              ; preds = %7, %128, %170, %450
  %600 = phi i64 [ %8, %7 ], [ %167, %128 ], [ %171, %170 ], [ %598, %450 ]
  ret i64 %600
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_default(ptr noalias nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #23 {
  %3 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #39, !noalias !52
  %4 = add i64 %1, -1
  %5 = icmp ult i64 %4, 1024
  br i1 %5, label %158, label %6

6:                                                ; preds = %2
  %7 = lshr i64 %4, 10
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %15

15:                                               ; preds = %6, %122
  %16 = phi i64 [ %126, %122 ], [ 3266489917, %6 ]
  %17 = phi i64 [ %130, %122 ], [ -7046029288634856825, %6 ]
  %18 = phi i64 [ %150, %122 ], [ 2870177450012600261, %6 ]
  %19 = phi i64 [ %154, %122 ], [ 2654435761, %6 ]
  %20 = phi i64 [ %142, %122 ], [ -8796714831421723037, %6 ]
  %21 = phi i64 [ %146, %122 ], [ 2246822519, %6 ]
  %22 = phi i64 [ %134, %122 ], [ -4417276706812531889, %6 ]
  %23 = phi i64 [ %138, %122 ], [ 1609587929392839161, %6 ]
  %24 = phi i64 [ %155, %122 ], [ 0, %6 ]
  %25 = shl i64 %24, 10
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %25
  br label %27

27:                                               ; preds = %15, %27
  %28 = phi i64 [ %16, %15 ], [ %55, %27 ]
  %29 = phi i64 [ %17, %15 ], [ %59, %27 ]
  %30 = phi i64 [ %18, %15 ], [ %115, %27 ]
  %31 = phi i64 [ %19, %15 ], [ %119, %27 ]
  %32 = phi i64 [ %20, %15 ], [ %95, %27 ]
  %33 = phi i64 [ %21, %15 ], [ %99, %27 ]
  %34 = phi i64 [ %22, %15 ], [ %75, %27 ]
  %35 = phi i64 [ %23, %15 ], [ %79, %27 ]
  %36 = phi i64 [ 0, %15 ], [ %120, %27 ]
  %37 = shl nuw nsw i64 %36, 6
  %38 = getelementptr inbounds nuw i8, ptr %26, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %39, i32 0, i32 3, i32 1)
  %40 = shl nuw nsw i64 %36, 3
  %41 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %40
  %42 = load i64, ptr %38, align 1
  %43 = load i64, ptr %41, align 8
  %44 = xor i64 %43, %42
  %45 = add i64 %29, %42
  %46 = lshr i64 %44, 32
  %47 = and i64 %44, 4294967295
  %48 = mul nuw i64 %47, %46
  %49 = add i64 %48, %28
  %50 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %51 = load i64, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %53 = load i64, ptr %52, align 8
  %54 = xor i64 %53, %51
  %55 = add i64 %49, %51
  %56 = lshr i64 %54, 32
  %57 = and i64 %54, 4294967295
  %58 = mul nuw i64 %57, %56
  %59 = add i64 %58, %45
  %60 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %61 = load i64, ptr %60, align 1
  %62 = getelementptr inbounds nuw i8, ptr %41, i64 16
  %63 = load i64, ptr %62, align 8
  %64 = xor i64 %63, %61
  %65 = add i64 %35, %61
  %66 = lshr i64 %64, 32
  %67 = and i64 %64, 4294967295
  %68 = mul nuw i64 %67, %66
  %69 = add i64 %68, %34
  %70 = getelementptr inbounds nuw i8, ptr %38, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = getelementptr inbounds nuw i8, ptr %41, i64 24
  %73 = load i64, ptr %72, align 8
  %74 = xor i64 %73, %71
  %75 = add i64 %69, %71
  %76 = lshr i64 %74, 32
  %77 = and i64 %74, 4294967295
  %78 = mul nuw i64 %77, %76
  %79 = add i64 %78, %65
  %80 = getelementptr inbounds nuw i8, ptr %38, i64 32
  %81 = load i64, ptr %80, align 1
  %82 = getelementptr inbounds nuw i8, ptr %41, i64 32
  %83 = load i64, ptr %82, align 8
  %84 = xor i64 %83, %81
  %85 = add i64 %33, %81
  %86 = lshr i64 %84, 32
  %87 = and i64 %84, 4294967295
  %88 = mul nuw i64 %87, %86
  %89 = add i64 %88, %32
  %90 = getelementptr inbounds nuw i8, ptr %38, i64 40
  %91 = load i64, ptr %90, align 1
  %92 = getelementptr inbounds nuw i8, ptr %41, i64 40
  %93 = load i64, ptr %92, align 8
  %94 = xor i64 %93, %91
  %95 = add i64 %89, %91
  %96 = lshr i64 %94, 32
  %97 = and i64 %94, 4294967295
  %98 = mul nuw i64 %97, %96
  %99 = add i64 %98, %85
  %100 = getelementptr inbounds nuw i8, ptr %38, i64 48
  %101 = load i64, ptr %100, align 1
  %102 = getelementptr inbounds nuw i8, ptr %41, i64 48
  %103 = load i64, ptr %102, align 8
  %104 = xor i64 %103, %101
  %105 = add i64 %31, %101
  %106 = lshr i64 %104, 32
  %107 = and i64 %104, 4294967295
  %108 = mul nuw i64 %107, %106
  %109 = add i64 %108, %30
  %110 = getelementptr inbounds nuw i8, ptr %38, i64 56
  %111 = load i64, ptr %110, align 1
  %112 = getelementptr inbounds nuw i8, ptr %41, i64 56
  %113 = load i64, ptr %112, align 8
  %114 = xor i64 %113, %111
  %115 = add i64 %109, %111
  %116 = lshr i64 %114, 32
  %117 = and i64 %114, 4294967295
  %118 = mul nuw i64 %117, %116
  %119 = add i64 %118, %105
  %120 = add nuw nsw i64 %36, 1
  %121 = icmp eq i64 %120, 16
  br i1 %121, label %122, label %27, !llvm.loop !32

122:                                              ; preds = %27
  %123 = lshr i64 %55, 47
  %124 = xor i64 %123, %55
  %125 = xor i64 %124, -4329134394285701654
  %126 = mul i64 %125, 2654435761
  %127 = lshr i64 %59, 47
  %128 = xor i64 %127, %59
  %129 = xor i64 %128, -1485321483350670907
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %75, 47
  %132 = xor i64 %131, %75
  %133 = xor i64 %132, 5321830579834785047
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %79, 47
  %136 = xor i64 %135, %79
  %137 = xor i64 %136, -7032137544937171245
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %95, 47
  %140 = xor i64 %139, %95
  %141 = xor i64 %140, -242834301215959509
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %99, 47
  %144 = xor i64 %143, %99
  %145 = xor i64 %144, -3588858202114426737
  %146 = mul i64 %145, 2654435761
  %147 = lshr i64 %115, 47
  %148 = xor i64 %147, %115
  %149 = xor i64 %148, 2883454493032893253
  %150 = mul i64 %149, 2654435761
  %151 = lshr i64 %119, 47
  %152 = xor i64 %151, %119
  %153 = xor i64 %152, 9097354517224871855
  %154 = mul i64 %153, 2654435761
  %155 = add nuw nsw i64 %24, 1
  %156 = icmp eq i64 %155, %7
  br i1 %156, label %157, label %15, !llvm.loop !33

157:                                              ; preds = %122
  store i64 %126, ptr %3, align 8, !noalias !52
  store i64 %130, ptr %8, align 8, !noalias !52
  store i64 %134, ptr %10, align 8, !noalias !52
  store i64 %138, ptr %9, align 8, !noalias !52
  store i64 %142, ptr %12, align 8, !noalias !52
  store i64 %146, ptr %11, align 8, !noalias !52
  store i64 %150, ptr %14, align 8, !noalias !52
  store i64 %154, ptr %13, align 8, !noalias !52
  br label %158

158:                                              ; preds = %157, %2
  %159 = phi i64 [ 3266489917, %2 ], [ %126, %157 ]
  %160 = phi i64 [ -7046029288634856825, %2 ], [ %130, %157 ]
  %161 = phi i64 [ 2870177450012600261, %2 ], [ %150, %157 ]
  %162 = phi i64 [ 2654435761, %2 ], [ %154, %157 ]
  %163 = phi i64 [ -8796714831421723037, %2 ], [ %142, %157 ]
  %164 = phi i64 [ 2246822519, %2 ], [ %146, %157 ]
  %165 = phi i64 [ -4417276706812531889, %2 ], [ %134, %157 ]
  %166 = phi i64 [ 1609587929392839161, %2 ], [ %138, %157 ]
  %167 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %167)
  %168 = and i64 %4, -1024
  %169 = lshr i64 %4, 6
  %170 = and i64 %169, 15
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 %168
  %172 = icmp eq i64 %170, 0
  br i1 %172, label %277, label %173

173:                                              ; preds = %158
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %175 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %176 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %177 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %180 = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %181

181:                                              ; preds = %173, %181
  %182 = phi i64 [ %209, %181 ], [ %159, %173 ]
  %183 = phi i64 [ %213, %181 ], [ %160, %173 ]
  %184 = phi i64 [ %269, %181 ], [ %161, %173 ]
  %185 = phi i64 [ %273, %181 ], [ %162, %173 ]
  %186 = phi i64 [ %249, %181 ], [ %163, %173 ]
  %187 = phi i64 [ %253, %181 ], [ %164, %173 ]
  %188 = phi i64 [ %229, %181 ], [ %165, %173 ]
  %189 = phi i64 [ %233, %181 ], [ %166, %173 ]
  %190 = phi i64 [ %274, %181 ], [ 0, %173 ]
  %191 = shl nuw nsw i64 %190, 6
  %192 = getelementptr inbounds nuw i8, ptr %171, i64 %191
  %193 = getelementptr inbounds nuw i8, ptr %192, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %193, i32 0, i32 3, i32 1)
  %194 = shl nuw nsw i64 %190, 3
  %195 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %194
  %196 = load i64, ptr %192, align 1
  %197 = load i64, ptr %195, align 8
  %198 = xor i64 %197, %196
  %199 = add i64 %183, %196
  %200 = lshr i64 %198, 32
  %201 = and i64 %198, 4294967295
  %202 = mul nuw i64 %201, %200
  %203 = add i64 %202, %182
  %204 = getelementptr inbounds nuw i8, ptr %192, i64 8
  %205 = load i64, ptr %204, align 1
  %206 = getelementptr inbounds nuw i8, ptr %195, i64 8
  %207 = load i64, ptr %206, align 8
  %208 = xor i64 %207, %205
  %209 = add i64 %203, %205
  %210 = lshr i64 %208, 32
  %211 = and i64 %208, 4294967295
  %212 = mul nuw i64 %211, %210
  %213 = add i64 %212, %199
  %214 = getelementptr inbounds nuw i8, ptr %192, i64 16
  %215 = load i64, ptr %214, align 1
  %216 = getelementptr inbounds nuw i8, ptr %195, i64 16
  %217 = load i64, ptr %216, align 8
  %218 = xor i64 %217, %215
  %219 = add i64 %189, %215
  %220 = lshr i64 %218, 32
  %221 = and i64 %218, 4294967295
  %222 = mul nuw i64 %221, %220
  %223 = add i64 %222, %188
  %224 = getelementptr inbounds nuw i8, ptr %192, i64 24
  %225 = load i64, ptr %224, align 1
  %226 = getelementptr inbounds nuw i8, ptr %195, i64 24
  %227 = load i64, ptr %226, align 8
  %228 = xor i64 %227, %225
  %229 = add i64 %223, %225
  %230 = lshr i64 %228, 32
  %231 = and i64 %228, 4294967295
  %232 = mul nuw i64 %231, %230
  %233 = add i64 %232, %219
  %234 = getelementptr inbounds nuw i8, ptr %192, i64 32
  %235 = load i64, ptr %234, align 1
  %236 = getelementptr inbounds nuw i8, ptr %195, i64 32
  %237 = load i64, ptr %236, align 8
  %238 = xor i64 %237, %235
  %239 = add i64 %187, %235
  %240 = lshr i64 %238, 32
  %241 = and i64 %238, 4294967295
  %242 = mul nuw i64 %241, %240
  %243 = add i64 %242, %186
  %244 = getelementptr inbounds nuw i8, ptr %192, i64 40
  %245 = load i64, ptr %244, align 1
  %246 = getelementptr inbounds nuw i8, ptr %195, i64 40
  %247 = load i64, ptr %246, align 8
  %248 = xor i64 %247, %245
  %249 = add i64 %243, %245
  %250 = lshr i64 %248, 32
  %251 = and i64 %248, 4294967295
  %252 = mul nuw i64 %251, %250
  %253 = add i64 %252, %239
  %254 = getelementptr inbounds nuw i8, ptr %192, i64 48
  %255 = load i64, ptr %254, align 1
  %256 = getelementptr inbounds nuw i8, ptr %195, i64 48
  %257 = load i64, ptr %256, align 8
  %258 = xor i64 %257, %255
  %259 = add i64 %185, %255
  %260 = lshr i64 %258, 32
  %261 = and i64 %258, 4294967295
  %262 = mul nuw i64 %261, %260
  %263 = add i64 %262, %184
  %264 = getelementptr inbounds nuw i8, ptr %192, i64 56
  %265 = load i64, ptr %264, align 1
  %266 = getelementptr inbounds nuw i8, ptr %195, i64 56
  %267 = load i64, ptr %266, align 8
  %268 = xor i64 %267, %265
  %269 = add i64 %263, %265
  %270 = lshr i64 %268, 32
  %271 = and i64 %268, 4294967295
  %272 = mul nuw i64 %271, %270
  %273 = add i64 %272, %259
  %274 = add nuw nsw i64 %190, 1
  %275 = icmp eq i64 %274, %170
  br i1 %275, label %276, label %181, !llvm.loop !32

276:                                              ; preds = %181
  store i64 %209, ptr %3, align 8, !alias.scope !56, !noalias !59
  store i64 %213, ptr %174, align 8, !alias.scope !56, !noalias !59
  store i64 %229, ptr %176, align 8, !alias.scope !56, !noalias !59
  store i64 %233, ptr %175, align 8, !alias.scope !56, !noalias !59
  store i64 %249, ptr %178, align 8, !alias.scope !56, !noalias !59
  store i64 %253, ptr %177, align 8, !alias.scope !56, !noalias !59
  store i64 %269, ptr %180, align 8, !alias.scope !56, !noalias !59
  store i64 %273, ptr %179, align 8, !alias.scope !56, !noalias !59
  br label %277

277:                                              ; preds = %276, %158
  %278 = phi i64 [ %161, %158 ], [ %269, %276 ]
  %279 = phi i64 [ %162, %158 ], [ %273, %276 ]
  %280 = phi i64 [ %163, %158 ], [ %249, %276 ]
  %281 = phi i64 [ %164, %158 ], [ %253, %276 ]
  %282 = phi i64 [ %165, %158 ], [ %229, %276 ]
  %283 = phi i64 [ %166, %158 ], [ %233, %276 ]
  %284 = phi i64 [ %159, %158 ], [ %209, %276 ]
  %285 = phi i64 [ %160, %158 ], [ %213, %276 ]
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %287 = getelementptr inbounds i8, ptr %286, i64 -64
  %288 = load i64, ptr %287, align 1
  %289 = xor i64 %288, -1556992608276218209
  %290 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %291 = add i64 %285, %288
  %292 = lshr i64 %289, 32
  %293 = and i64 %289, 4294967295
  %294 = mul nuw i64 %293, %292
  %295 = add i64 %294, %284
  %296 = getelementptr inbounds i8, ptr %286, i64 -56
  %297 = load i64, ptr %296, align 1
  %298 = xor i64 %297, -4196251135427498811
  %299 = add i64 %295, %297
  store i64 %299, ptr %3, align 8, !alias.scope !62, !noalias !65
  %300 = lshr i64 %298, 32
  %301 = and i64 %298, 4294967295
  %302 = mul nuw i64 %301, %300
  %303 = add i64 %302, %291
  store i64 %303, ptr %290, align 8, !alias.scope !62, !noalias !65
  %304 = getelementptr inbounds i8, ptr %286, i64 -48
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %305, 1723580219865931905
  %307 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %308 = add i64 %283, %305
  %309 = lshr i64 %306, 32
  %310 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %311 = and i64 %306, 4294967295
  %312 = mul nuw i64 %311, %309
  %313 = add i64 %312, %282
  %314 = getelementptr inbounds i8, ptr %286, i64 -40
  %315 = load i64, ptr %314, align 1
  %316 = xor i64 %315, -3221803331004277491
  %317 = add i64 %313, %315
  store i64 %317, ptr %310, align 8, !alias.scope !62, !noalias !65
  %318 = lshr i64 %316, 32
  %319 = and i64 %316, 4294967295
  %320 = mul nuw i64 %319, %318
  %321 = add i64 %320, %308
  store i64 %321, ptr %307, align 8, !alias.scope !62, !noalias !65
  %322 = getelementptr inbounds i8, ptr %286, i64 -32
  %323 = load i64, ptr %322, align 1
  %324 = xor i64 %323, 3143064850383918358
  %325 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %326 = add i64 %281, %323
  %327 = lshr i64 %324, 32
  %328 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %329 = and i64 %324, 4294967295
  %330 = mul nuw i64 %329, %327
  %331 = add i64 %330, %280
  %332 = getelementptr inbounds i8, ptr %286, i64 -24
  %333 = load i64, ptr %332, align 1
  %334 = xor i64 %333, -8071399103737053674
  %335 = add i64 %331, %333
  store i64 %335, ptr %328, align 8, !alias.scope !62, !noalias !65
  %336 = lshr i64 %334, 32
  %337 = and i64 %334, 4294967295
  %338 = mul nuw i64 %337, %336
  %339 = add i64 %338, %326
  store i64 %339, ptr %325, align 8, !alias.scope !62, !noalias !65
  %340 = getelementptr inbounds i8, ptr %286, i64 -16
  %341 = load i64, ptr %340, align 1
  %342 = xor i64 %341, 5030012605302946040
  %343 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %344 = add i64 %279, %341
  %345 = lshr i64 %342, 32
  %346 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %347 = and i64 %342, 4294967295
  %348 = mul nuw i64 %347, %345
  %349 = add i64 %348, %278
  %350 = getelementptr inbounds i8, ptr %286, i64 -8
  %351 = load i64, ptr %350, align 1
  %352 = xor i64 %351, -5825401622958753077
  %353 = add i64 %349, %351
  store i64 %353, ptr %346, align 8, !alias.scope !62, !noalias !65
  %354 = lshr i64 %352, 32
  %355 = and i64 %352, 4294967295
  %356 = mul nuw i64 %355, %354
  %357 = add i64 %356, %344
  store i64 %357, ptr %343, align 8, !alias.scope !62, !noalias !65
  %358 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %3, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192, i64 noundef %1) #43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #39, !noalias !52
  ret { i64, i64 } %358
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noalias nocapture noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noalias nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #29 {
  %5 = mul i64 %1, -7046029288634856825
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = load i64, ptr %2, align 1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %7
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 %14, %3
  %16 = xor i64 %15, %9
  %17 = zext i64 %12 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %5, %22
  %24 = load i64, ptr %6, align 1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i64, ptr %25, align 1
  %27 = add i64 %26, %24
  %28 = xor i64 %23, %27
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %30 = load i64, ptr %29, align 1
  %31 = add i64 %30, %3
  %32 = xor i64 %31, %24
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %34 = load i64, ptr %33, align 1
  %35 = sub i64 %34, %3
  %36 = xor i64 %35, %26
  %37 = zext i64 %32 to i128
  %38 = zext i64 %36 to i128
  %39 = mul nuw i128 %38, %37
  %40 = lshr i128 %39, 64
  %41 = xor i128 %40, %39
  %42 = trunc i128 %41 to i64
  %43 = add i64 %9, %7
  %44 = xor i64 %43, %42
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %48 = load i64, ptr %45, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 1
  %51 = load i64, ptr %47, align 1
  %52 = add i64 %51, %3
  %53 = xor i64 %52, %48
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %55 = load i64, ptr %54, align 1
  %56 = sub i64 %55, %3
  %57 = xor i64 %56, %50
  %58 = zext i64 %53 to i128
  %59 = zext i64 %57 to i128
  %60 = mul nuw i128 %59, %58
  %61 = lshr i128 %60, 64
  %62 = xor i128 %61, %60
  %63 = trunc i128 %62 to i64
  %64 = add i64 %28, %63
  %65 = load i64, ptr %46, align 1
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %67 = load i64, ptr %66, align 1
  %68 = add i64 %67, %65
  %69 = xor i64 %64, %68
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %71 = load i64, ptr %70, align 1
  %72 = add i64 %71, %3
  %73 = xor i64 %72, %65
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %75 = load i64, ptr %74, align 1
  %76 = sub i64 %75, %3
  %77 = xor i64 %76, %67
  %78 = zext i64 %73 to i128
  %79 = zext i64 %77 to i128
  %80 = mul nuw i128 %79, %78
  %81 = lshr i128 %80, 64
  %82 = xor i128 %81, %80
  %83 = trunc i128 %82 to i64
  %84 = add i64 %44, %83
  %85 = add i64 %50, %48
  %86 = xor i64 %84, %85
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %90 = load i64, ptr %87, align 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %92 = load i64, ptr %91, align 1
  %93 = load i64, ptr %89, align 1
  %94 = add i64 %93, %3
  %95 = xor i64 %94, %90
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %97 = load i64, ptr %96, align 1
  %98 = sub i64 %97, %3
  %99 = xor i64 %98, %92
  %100 = zext i64 %95 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %69, %105
  %107 = load i64, ptr %88, align 1
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %109 = load i64, ptr %108, align 1
  %110 = add i64 %109, %107
  %111 = xor i64 %106, %110
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %113 = load i64, ptr %112, align 1
  %114 = add i64 %113, %3
  %115 = xor i64 %114, %107
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %117 = load i64, ptr %116, align 1
  %118 = sub i64 %117, %3
  %119 = xor i64 %118, %109
  %120 = zext i64 %115 to i128
  %121 = zext i64 %119 to i128
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %86, %125
  %127 = add i64 %92, %90
  %128 = xor i64 %126, %127
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %132 = load i64, ptr %129, align 1
  %133 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %134 = load i64, ptr %133, align 1
  %135 = load i64, ptr %131, align 1
  %136 = add i64 %135, %3
  %137 = xor i64 %136, %132
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %139 = load i64, ptr %138, align 1
  %140 = sub i64 %139, %3
  %141 = xor i64 %140, %134
  %142 = zext i64 %137 to i128
  %143 = zext i64 %141 to i128
  %144 = mul nuw i128 %143, %142
  %145 = lshr i128 %144, 64
  %146 = xor i128 %145, %144
  %147 = trunc i128 %146 to i64
  %148 = add i64 %111, %147
  %149 = load i64, ptr %130, align 1
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %151 = load i64, ptr %150, align 1
  %152 = add i64 %151, %149
  %153 = xor i64 %148, %152
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %155 = load i64, ptr %154, align 1
  %156 = add i64 %155, %3
  %157 = xor i64 %156, %149
  %158 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %159 = load i64, ptr %158, align 1
  %160 = sub i64 %159, %3
  %161 = xor i64 %160, %151
  %162 = zext i64 %157 to i128
  %163 = zext i64 %161 to i128
  %164 = mul nuw i128 %163, %162
  %165 = lshr i128 %164, 64
  %166 = xor i128 %165, %164
  %167 = trunc i128 %166 to i64
  %168 = add i64 %128, %167
  %169 = add i64 %134, %132
  %170 = xor i64 %168, %169
  %171 = lshr i64 %153, 37
  %172 = xor i64 %171, %153
  %173 = mul i64 %172, 1609587791953885689
  %174 = lshr i64 %173, 32
  %175 = xor i64 %174, %173
  %176 = lshr i64 %170, 37
  %177 = xor i64 %176, %170
  %178 = mul i64 %177, 1609587791953885689
  %179 = lshr i64 %178, 32
  %180 = xor i64 %179, %178
  %181 = icmp samesign ult i64 %1, 160
  br i1 %181, label %313, label %182

182:                                              ; preds = %4
  %183 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %185 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %186 = load i64, ptr %183, align 1
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %188 = load i64, ptr %187, align 1
  %189 = load i64, ptr %185, align 1
  %190 = add i64 %189, %3
  %191 = xor i64 %190, %186
  %192 = getelementptr inbounds nuw i8, ptr %2, i64 11
  %193 = load i64, ptr %192, align 1
  %194 = sub i64 %193, %3
  %195 = xor i64 %194, %188
  %196 = zext i64 %191 to i128
  %197 = zext i64 %195 to i128
  %198 = mul nuw i128 %197, %196
  %199 = lshr i128 %198, 64
  %200 = xor i128 %199, %198
  %201 = trunc i128 %200 to i64
  %202 = add i64 %175, %201
  %203 = load i64, ptr %184, align 1
  %204 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %205 = load i64, ptr %204, align 1
  %206 = add i64 %205, %203
  %207 = xor i64 %202, %206
  %208 = getelementptr inbounds nuw i8, ptr %2, i64 19
  %209 = load i64, ptr %208, align 1
  %210 = add i64 %209, %3
  %211 = xor i64 %210, %203
  %212 = getelementptr inbounds nuw i8, ptr %2, i64 27
  %213 = load i64, ptr %212, align 1
  %214 = sub i64 %213, %3
  %215 = xor i64 %214, %205
  %216 = zext i64 %211 to i128
  %217 = zext i64 %215 to i128
  %218 = mul nuw i128 %217, %216
  %219 = lshr i128 %218, 64
  %220 = xor i128 %219, %218
  %221 = trunc i128 %220 to i64
  %222 = add i64 %180, %221
  %223 = add i64 %188, %186
  %224 = xor i64 %222, %223
  %225 = icmp samesign ult i64 %1, 192
  br i1 %225, label %313, label %226, !llvm.loop !68

226:                                              ; preds = %182
  %227 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %229 = getelementptr inbounds nuw i8, ptr %2, i64 35
  %230 = load i64, ptr %227, align 1
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = add i64 %233, %3
  %235 = xor i64 %234, %230
  %236 = getelementptr inbounds nuw i8, ptr %2, i64 43
  %237 = load i64, ptr %236, align 1
  %238 = sub i64 %237, %3
  %239 = xor i64 %238, %232
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %207, %245
  %247 = load i64, ptr %228, align 1
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %249 = load i64, ptr %248, align 1
  %250 = add i64 %249, %247
  %251 = xor i64 %246, %250
  %252 = getelementptr inbounds nuw i8, ptr %2, i64 51
  %253 = load i64, ptr %252, align 1
  %254 = add i64 %253, %3
  %255 = xor i64 %254, %247
  %256 = getelementptr inbounds nuw i8, ptr %2, i64 59
  %257 = load i64, ptr %256, align 1
  %258 = sub i64 %257, %3
  %259 = xor i64 %258, %249
  %260 = zext i64 %255 to i128
  %261 = zext i64 %259 to i128
  %262 = mul nuw i128 %261, %260
  %263 = lshr i128 %262, 64
  %264 = xor i128 %263, %262
  %265 = trunc i128 %264 to i64
  %266 = add i64 %224, %265
  %267 = add i64 %232, %230
  %268 = xor i64 %266, %267
  %269 = icmp samesign ult i64 %1, 224
  br i1 %269, label %313, label %270, !llvm.loop !68

270:                                              ; preds = %226
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %272 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %273 = getelementptr inbounds nuw i8, ptr %2, i64 67
  %274 = load i64, ptr %271, align 1
  %275 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %276 = load i64, ptr %275, align 1
  %277 = load i64, ptr %273, align 1
  %278 = add i64 %277, %3
  %279 = xor i64 %278, %274
  %280 = getelementptr inbounds nuw i8, ptr %2, i64 75
  %281 = load i64, ptr %280, align 1
  %282 = sub i64 %281, %3
  %283 = xor i64 %282, %276
  %284 = zext i64 %279 to i128
  %285 = zext i64 %283 to i128
  %286 = mul nuw i128 %285, %284
  %287 = lshr i128 %286, 64
  %288 = xor i128 %287, %286
  %289 = trunc i128 %288 to i64
  %290 = add i64 %251, %289
  %291 = load i64, ptr %272, align 1
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %293 = load i64, ptr %292, align 1
  %294 = add i64 %293, %291
  %295 = xor i64 %290, %294
  %296 = getelementptr inbounds nuw i8, ptr %2, i64 83
  %297 = load i64, ptr %296, align 1
  %298 = add i64 %297, %3
  %299 = xor i64 %298, %291
  %300 = getelementptr inbounds nuw i8, ptr %2, i64 91
  %301 = load i64, ptr %300, align 1
  %302 = sub i64 %301, %3
  %303 = xor i64 %302, %293
  %304 = zext i64 %299 to i128
  %305 = zext i64 %303 to i128
  %306 = mul nuw i128 %305, %304
  %307 = lshr i128 %306, 64
  %308 = xor i128 %307, %306
  %309 = trunc i128 %308 to i64
  %310 = add i64 %268, %309
  %311 = add i64 %276, %274
  %312 = xor i64 %310, %311
  br label %313

313:                                              ; preds = %182, %226, %270, %4
  %314 = phi i64 [ %175, %4 ], [ %207, %182 ], [ %251, %226 ], [ %295, %270 ]
  %315 = phi i64 [ %180, %4 ], [ %224, %182 ], [ %268, %226 ], [ %312, %270 ]
  %316 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %317 = getelementptr inbounds i8, ptr %316, i64 -16
  %318 = getelementptr inbounds i8, ptr %316, i64 -32
  %319 = getelementptr inbounds nuw i8, ptr %2, i64 103
  %320 = load i64, ptr %317, align 1
  %321 = getelementptr inbounds i8, ptr %316, i64 -8
  %322 = load i64, ptr %321, align 1
  %323 = load i64, ptr %319, align 1
  %324 = sub i64 %323, %3
  %325 = xor i64 %324, %320
  %326 = getelementptr inbounds nuw i8, ptr %2, i64 111
  %327 = load i64, ptr %326, align 1
  %328 = add i64 %327, %3
  %329 = xor i64 %328, %322
  %330 = zext i64 %325 to i128
  %331 = zext i64 %329 to i128
  %332 = mul nuw i128 %331, %330
  %333 = lshr i128 %332, 64
  %334 = xor i128 %333, %332
  %335 = trunc i128 %334 to i64
  %336 = add i64 %314, %335
  %337 = load i64, ptr %318, align 1
  %338 = getelementptr inbounds i8, ptr %316, i64 -24
  %339 = load i64, ptr %338, align 1
  %340 = add i64 %339, %337
  %341 = xor i64 %336, %340
  %342 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %343 = load i64, ptr %342, align 1
  %344 = sub i64 %343, %3
  %345 = xor i64 %344, %337
  %346 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %347 = load i64, ptr %346, align 1
  %348 = add i64 %347, %3
  %349 = xor i64 %348, %339
  %350 = zext i64 %345 to i128
  %351 = zext i64 %349 to i128
  %352 = mul nuw i128 %351, %350
  %353 = lshr i128 %352, 64
  %354 = xor i128 %353, %352
  %355 = trunc i128 %354 to i64
  %356 = add i64 %315, %355
  %357 = add i64 %322, %320
  %358 = xor i64 %356, %357
  %359 = add i64 %358, %341
  %360 = mul i64 %341, -7046029288634856825
  %361 = mul i64 %358, -8796714831421723037
  %362 = sub i64 %1, %3
  %363 = mul i64 %362, -4417276706812531889
  %364 = add i64 %360, %363
  %365 = add i64 %364, %361
  %366 = lshr i64 %359, 37
  %367 = xor i64 %366, %359
  %368 = mul i64 %367, 1609587791953885689
  %369 = lshr i64 %368, 32
  %370 = xor i64 %369, %368
  %371 = lshr i64 %365, 37
  %372 = xor i64 %371, %365
  %373 = mul i64 %372, 1609587791953885689
  %374 = lshr i64 %373, 32
  %375 = xor i64 %374, %373
  %376 = sub i64 0, %375
  %377 = insertvalue { i64, i64 } poison, i64 %370, 0
  %378 = insertvalue { i64, i64 } %377, i64 %376, 1
  ret { i64, i64 } %378
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noalias nocapture noundef nonnull readonly %0, ptr noalias nocapture noundef readonly %1, i64 noundef range(i64 75, 0) %2, i64 noundef %3) unnamed_addr #15 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %6 = mul i64 %3, -7046029288634856825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %7 = load i64, ptr %0, align 8, !alias.scope !79, !noalias !82
  %8 = load i64, ptr %5, align 1, !alias.scope !84, !noalias !85
  %9 = xor i64 %8, %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i64, ptr %10, align 8, !alias.scope !79, !noalias !82
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %13 = load i64, ptr %12, align 1, !alias.scope !84, !noalias !85
  %14 = xor i64 %13, %11
  %15 = zext i64 %9 to i128
  %16 = zext i64 %14 to i128
  %17 = mul nuw i128 %16, %15
  %18 = lshr i128 %17, 64
  %19 = xor i128 %18, %17
  %20 = trunc i128 %19 to i64
  %21 = add i64 %6, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 27
  %24 = load i64, ptr %22, align 8, !alias.scope !79, !noalias !82
  %25 = load i64, ptr %23, align 1, !alias.scope !84, !noalias !85
  %26 = xor i64 %25, %24
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i64, ptr %27, align 8, !alias.scope !79, !noalias !82
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 35
  %30 = load i64, ptr %29, align 1, !alias.scope !84, !noalias !85
  %31 = xor i64 %30, %28
  %32 = zext i64 %26 to i128
  %33 = zext i64 %31 to i128
  %34 = mul nuw i128 %33, %32
  %35 = lshr i128 %34, 64
  %36 = xor i128 %35, %34
  %37 = trunc i128 %36 to i64
  %38 = add i64 %21, %37
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 43
  %41 = load i64, ptr %39, align 8, !alias.scope !79, !noalias !82
  %42 = load i64, ptr %40, align 1, !alias.scope !84, !noalias !85
  %43 = xor i64 %42, %41
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %45 = load i64, ptr %44, align 8, !alias.scope !79, !noalias !82
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 51
  %47 = load i64, ptr %46, align 1, !alias.scope !84, !noalias !85
  %48 = xor i64 %47, %45
  %49 = zext i64 %43 to i128
  %50 = zext i64 %48 to i128
  %51 = mul nuw i128 %50, %49
  %52 = lshr i128 %51, 64
  %53 = xor i128 %52, %51
  %54 = trunc i128 %53 to i64
  %55 = add i64 %38, %54
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 59
  %58 = load i64, ptr %56, align 8, !alias.scope !79, !noalias !82
  %59 = load i64, ptr %57, align 1, !alias.scope !84, !noalias !85
  %60 = xor i64 %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %62 = load i64, ptr %61, align 8, !alias.scope !79, !noalias !82
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 67
  %64 = load i64, ptr %63, align 1, !alias.scope !84, !noalias !85
  %65 = xor i64 %64, %62
  %66 = zext i64 %60 to i128
  %67 = zext i64 %65 to i128
  %68 = mul nuw i128 %67, %66
  %69 = lshr i128 %68, 64
  %70 = xor i128 %69, %68
  %71 = trunc i128 %70 to i64
  %72 = add i64 %55, %71
  %73 = lshr i64 %72, 37
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, 1609587791953885689
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %79 = getelementptr inbounds i8, ptr %78, i64 -75
  %80 = mul i64 %3, -4417276706812531889
  %81 = xor i64 %80, -1
  %82 = load i64, ptr %79, align 1, !alias.scope !86, !noalias !89
  %83 = xor i64 %82, %7
  %84 = getelementptr inbounds i8, ptr %78, i64 -67
  %85 = load i64, ptr %84, align 1, !alias.scope !86, !noalias !89
  %86 = xor i64 %85, %11
  %87 = zext i64 %83 to i128
  %88 = zext i64 %86 to i128
  %89 = mul nuw i128 %88, %87
  %90 = lshr i128 %89, 64
  %91 = xor i128 %90, %89
  %92 = trunc i128 %91 to i64
  %93 = add i64 %92, %81
  %94 = getelementptr inbounds i8, ptr %78, i64 -59
  %95 = load i64, ptr %94, align 1, !alias.scope !86, !noalias !89
  %96 = xor i64 %95, %24
  %97 = getelementptr inbounds i8, ptr %78, i64 -51
  %98 = load i64, ptr %97, align 1, !alias.scope !86, !noalias !89
  %99 = xor i64 %98, %28
  %100 = zext i64 %96 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %93, %105
  %107 = getelementptr inbounds i8, ptr %78, i64 -43
  %108 = load i64, ptr %107, align 1, !alias.scope !86, !noalias !89
  %109 = xor i64 %108, %41
  %110 = getelementptr inbounds i8, ptr %78, i64 -35
  %111 = load i64, ptr %110, align 1, !alias.scope !86, !noalias !89
  %112 = xor i64 %111, %45
  %113 = zext i64 %109 to i128
  %114 = zext i64 %112 to i128
  %115 = mul nuw i128 %114, %113
  %116 = lshr i128 %115, 64
  %117 = xor i128 %116, %115
  %118 = trunc i128 %117 to i64
  %119 = add i64 %106, %118
  %120 = getelementptr inbounds i8, ptr %78, i64 -27
  %121 = load i64, ptr %120, align 1, !alias.scope !86, !noalias !89
  %122 = xor i64 %121, %58
  %123 = getelementptr inbounds i8, ptr %78, i64 -19
  %124 = load i64, ptr %123, align 1, !alias.scope !86, !noalias !89
  %125 = xor i64 %124, %62
  %126 = zext i64 %122 to i128
  %127 = zext i64 %125 to i128
  %128 = mul nuw i128 %127, %126
  %129 = lshr i128 %128, 64
  %130 = xor i128 %129, %128
  %131 = trunc i128 %130 to i64
  %132 = add i64 %119, %131
  %133 = lshr i64 %132, 37
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, 1609587791953885689
  %136 = lshr i64 %135, 32
  %137 = xor i64 %136, %135
  %138 = insertvalue { i64, i64 } poison, i64 %77, 0
  %139 = insertvalue { i64, i64 } %138, i64 %137, 1
  ret { i64, i64 } %139
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #30 {
  %4 = icmp ult i64 %1, 17
  br i1 %4, label %5, label %162

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %51

7:                                                ; preds = %5
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = sub i64 6455697860950631241, %2
  %10 = add i64 %2, -4466874330221494952
  %11 = load i64, ptr %0, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = xor i64 %11, %9
  %16 = xor i64 %15, %14
  %17 = zext i64 %16 to i128
  %18 = mul nuw i128 %17, 11400714785074694791
  %19 = trunc i128 %18 to i64
  %20 = lshr i128 %18, 64
  %21 = trunc nuw i128 %20 to i64
  %22 = shl nuw nsw i64 %1, 54
  %23 = add nsw i64 %22, -18014398509481984
  %24 = add i64 %23, %19
  %25 = xor i64 %14, %10
  %26 = and i64 %25, 4294967295
  %27 = mul nuw i64 %26, 2246822518
  %28 = add i64 %27, %25
  %29 = add i64 %28, %21
  %30 = tail call noundef i64 @llvm.bswap.i64(i64 %29)
  %31 = xor i64 %30, %24
  %32 = zext i64 %31 to i128
  %33 = mul nuw i128 %32, 14029467366897019727
  %34 = trunc i128 %33 to i64
  %35 = lshr i128 %33, 64
  %36 = trunc nuw i128 %35 to i64
  %37 = mul i64 %29, -4417276706812531889
  %38 = add i64 %37, %36
  %39 = lshr i64 %34, 37
  %40 = xor i64 %39, %34
  %41 = mul i64 %40, 1609587791953885689
  %42 = lshr i64 %41, 32
  %43 = xor i64 %42, %41
  %44 = lshr i64 %38, 37
  %45 = xor i64 %44, %38
  %46 = mul i64 %45, 1609587791953885689
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  %49 = insertvalue { i64, i64 } poison, i64 %43, 0
  %50 = insertvalue { i64, i64 } %49, i64 %48, 1
  br label %345

51:                                               ; preds = %5
  %52 = icmp samesign ugt i64 %1, 3
  br i1 %52, label %53, label %94

53:                                               ; preds = %51
  %54 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %54)
  %55 = trunc i64 %2 to i32
  %56 = tail call noundef i32 @llvm.bswap.i32(i32 %55)
  %57 = zext i32 %56 to i64
  %58 = shl nuw i64 %57, 32
  %59 = xor i64 %58, %2
  %60 = load i32, ptr %0, align 1
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %62 = getelementptr inbounds i8, ptr %61, i64 -4
  %63 = load i32, ptr %62, align 1
  %64 = zext i32 %60 to i64
  %65 = zext i32 %63 to i64
  %66 = shl nuw i64 %65, 32
  %67 = or disjoint i64 %66, %64
  %68 = add i64 %59, -4255862940314790740
  %69 = xor i64 %67, %68
  %70 = shl nuw nsw i64 %1, 2
  %71 = add nuw nsw i64 %70, -7046029288634856825
  %72 = zext i64 %69 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %72, %73
  %75 = trunc i128 %74 to i64
  %76 = lshr i128 %74, 64
  %77 = trunc nuw i128 %76 to i64
  %78 = shl i64 %75, 1
  %79 = add i64 %78, %77
  %80 = lshr i64 %79, 3
  %81 = xor i64 %80, %75
  %82 = lshr i64 %81, 35
  %83 = xor i64 %82, %81
  %84 = mul i64 %83, -6939452855193903323
  %85 = lshr i64 %84, 28
  %86 = xor i64 %85, %84
  %87 = lshr i64 %79, 37
  %88 = xor i64 %87, %79
  %89 = mul i64 %88, 1609587791953885689
  %90 = lshr i64 %89, 32
  %91 = xor i64 %90, %89
  %92 = insertvalue { i64, i64 } poison, i64 %86, 0
  %93 = insertvalue { i64, i64 } %92, i64 %91, 1
  br label %345

94:                                               ; preds = %51
  %95 = icmp eq i64 %1, 0
  br i1 %95, label %141, label %96

96:                                               ; preds = %94
  %97 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %97)
  %98 = load i8, ptr %0, align 1
  %99 = lshr i64 %1, 1
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %99
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr i8, ptr %0, i64 %1
  %103 = getelementptr i8, ptr %102, i64 -1
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %98 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = zext i8 %101 to i32
  %108 = shl nuw i32 %107, 24
  %109 = or disjoint i32 %108, %106
  %110 = zext i8 %104 to i32
  %111 = or disjoint i32 %109, %110
  %112 = trunc nuw nsw i64 %1 to i32
  %113 = shl nuw nsw i32 %112, 8
  %114 = or disjoint i32 %111, %113
  %115 = tail call noundef i32 @llvm.bswap.i32(i32 %114)
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 13)
  %117 = add i64 %2, 2267503259
  %118 = sub i64 808198283, %2
  %119 = zext i32 %114 to i64
  %120 = zext nneg i32 %116 to i64
  %121 = lshr i64 %117, 33
  %122 = xor i64 %121, %119
  %123 = xor i64 %122, %117
  %124 = mul i64 %123, -4417276706812531889
  %125 = lshr i64 %124, 29
  %126 = xor i64 %125, %124
  %127 = mul i64 %126, 1609587929392839161
  %128 = lshr i64 %127, 32
  %129 = xor i64 %128, %127
  %130 = lshr i64 %118, 33
  %131 = xor i64 %130, %120
  %132 = xor i64 %131, %118
  %133 = mul i64 %132, -4417276706812531889
  %134 = lshr i64 %133, 29
  %135 = xor i64 %134, %133
  %136 = mul i64 %135, 1609587929392839161
  %137 = lshr i64 %136, 32
  %138 = xor i64 %137, %136
  %139 = insertvalue { i64, i64 } poison, i64 %129, 0
  %140 = insertvalue { i64, i64 } %139, i64 %138, 1
  br label %345

141:                                              ; preds = %94
  %142 = xor i64 %2, 7507096552062056628
  %143 = lshr i64 %142, 33
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, -4417276706812531889
  %146 = lshr i64 %145, 29
  %147 = xor i64 %146, %145
  %148 = mul i64 %147, 1609587929392839161
  %149 = lshr i64 %148, 32
  %150 = xor i64 %149, %148
  %151 = xor i64 %2, -7613947547284439735
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  %160 = insertvalue { i64, i64 } poison, i64 %150, 0
  %161 = insertvalue { i64, i64 } %160, i64 %159, 1
  br label %345

162:                                              ; preds = %3
  %163 = icmp ult i64 %1, 129
  br i1 %163, label %164, label %339

164:                                              ; preds = %162
  %165 = mul i64 %1, -7046029288634856825
  %166 = icmp samesign ugt i64 %1, 32
  br i1 %166, label %167, label %282

167:                                              ; preds = %164
  %168 = icmp samesign ugt i64 %1, 64
  br i1 %168, label %169, label %244

169:                                              ; preds = %167
  %170 = icmp samesign ugt i64 %1, 96
  br i1 %170, label %171, label %206

171:                                              ; preds = %169
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %174 = getelementptr inbounds i8, ptr %173, i64 -64
  %175 = load i64, ptr %172, align 1
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %177 = load i64, ptr %176, align 1
  %178 = add i64 %2, 4554437623014685352
  %179 = xor i64 %175, %178
  %180 = sub i64 2111919702937427193, %2
  %181 = xor i64 %177, %180
  %182 = zext i64 %179 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %165, %187
  %189 = load i64, ptr %174, align 1
  %190 = getelementptr inbounds i8, ptr %173, i64 -56
  %191 = load i64, ptr %190, align 1
  %192 = add i64 %191, %189
  %193 = xor i64 %188, %192
  %194 = add i64 %2, 3556072174620004746
  %195 = xor i64 %189, %194
  %196 = sub i64 7238261902898274248, %2
  %197 = xor i64 %191, %196
  %198 = zext i64 %195 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %177, %175
  %205 = xor i64 %204, %203
  br label %206

206:                                              ; preds = %171, %169
  %207 = phi i64 [ %193, %171 ], [ %165, %169 ]
  %208 = phi i64 [ %205, %171 ], [ 0, %169 ]
  %209 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %211 = getelementptr inbounds i8, ptr %210, i64 -48
  %212 = load i64, ptr %209, align 1
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %214 = load i64, ptr %213, align 1
  %215 = add i64 %2, -3818837453329782724
  %216 = xor i64 %212, %215
  %217 = sub i64 -6688317018830679928, %2
  %218 = xor i64 %214, %217
  %219 = zext i64 %216 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %207, %224
  %226 = load i64, ptr %211, align 1
  %227 = getelementptr inbounds i8, ptr %210, i64 -40
  %228 = load i64, ptr %227, align 1
  %229 = add i64 %228, %226
  %230 = xor i64 %225, %229
  %231 = add i64 %2, 5690594596133299313
  %232 = xor i64 %226, %231
  %233 = sub i64 -2833645246901970632, %2
  %234 = xor i64 %228, %233
  %235 = zext i64 %232 to i128
  %236 = zext i64 %234 to i128
  %237 = mul nuw i128 %236, %235
  %238 = lshr i128 %237, 64
  %239 = xor i128 %238, %237
  %240 = trunc i128 %239 to i64
  %241 = add i64 %208, %240
  %242 = add i64 %214, %212
  %243 = xor i64 %241, %242
  br label %244

244:                                              ; preds = %206, %167
  %245 = phi i64 [ %230, %206 ], [ %165, %167 ]
  %246 = phi i64 [ %243, %206 ], [ 0, %167 ]
  %247 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %249 = getelementptr inbounds i8, ptr %248, i64 -32
  %250 = load i64, ptr %247, align 1
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %252 = load i64, ptr %251, align 1
  %253 = add i64 %2, 8711581037947681227
  %254 = xor i64 %250, %253
  %255 = sub i64 2410270004345854594, %2
  %256 = xor i64 %252, %255
  %257 = zext i64 %254 to i128
  %258 = zext i64 %256 to i128
  %259 = mul nuw i128 %258, %257
  %260 = lshr i128 %259, 64
  %261 = xor i128 %260, %259
  %262 = trunc i128 %261 to i64
  %263 = add i64 %245, %262
  %264 = load i64, ptr %249, align 1
  %265 = getelementptr inbounds i8, ptr %248, i64 -24
  %266 = load i64, ptr %265, align 1
  %267 = add i64 %266, %264
  %268 = xor i64 %263, %267
  %269 = add i64 %2, -8204357891075471176
  %270 = xor i64 %264, %269
  %271 = sub i64 5487137525590930912, %2
  %272 = xor i64 %266, %271
  %273 = zext i64 %270 to i128
  %274 = zext i64 %272 to i128
  %275 = mul nuw i128 %274, %273
  %276 = lshr i128 %275, 64
  %277 = xor i128 %276, %275
  %278 = trunc i128 %277 to i64
  %279 = add i64 %246, %278
  %280 = add i64 %252, %250
  %281 = xor i64 %279, %280
  br label %282

282:                                              ; preds = %164, %244
  %283 = phi i64 [ %268, %244 ], [ %165, %164 ]
  %284 = phi i64 [ %281, %244 ], [ 0, %164 ]
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %286 = getelementptr inbounds i8, ptr %285, i64 -16
  %287 = load i64, ptr %0, align 1
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %289 = load i64, ptr %288, align 1
  %290 = add i64 %2, -4734510112055689544
  %291 = xor i64 %287, %290
  %292 = sub i64 2066345149520216444, %2
  %293 = xor i64 %289, %292
  %294 = zext i64 %291 to i128
  %295 = zext i64 %293 to i128
  %296 = mul nuw i128 %295, %294
  %297 = lshr i128 %296, 64
  %298 = xor i128 %297, %296
  %299 = trunc i128 %298 to i64
  %300 = add i64 %283, %299
  %301 = load i64, ptr %286, align 1
  %302 = getelementptr inbounds i8, ptr %285, i64 -8
  %303 = load i64, ptr %302, align 1
  %304 = add i64 %303, %301
  %305 = xor i64 %300, %304
  %306 = add i64 %2, -2623469361688619810
  %307 = xor i64 %301, %306
  %308 = sub i64 2262974939099578482, %2
  %309 = xor i64 %303, %308
  %310 = zext i64 %307 to i128
  %311 = zext i64 %309 to i128
  %312 = mul nuw i128 %311, %310
  %313 = lshr i128 %312, 64
  %314 = xor i128 %313, %312
  %315 = trunc i128 %314 to i64
  %316 = add i64 %284, %315
  %317 = add i64 %289, %287
  %318 = xor i64 %316, %317
  %319 = add i64 %318, %305
  %320 = mul i64 %305, -7046029288634856825
  %321 = mul i64 %318, -8796714831421723037
  %322 = sub i64 %1, %2
  %323 = mul i64 %322, -4417276706812531889
  %324 = add i64 %320, %323
  %325 = add i64 %324, %321
  %326 = lshr i64 %319, 37
  %327 = xor i64 %326, %319
  %328 = mul i64 %327, 1609587791953885689
  %329 = lshr i64 %328, 32
  %330 = xor i64 %329, %328
  %331 = lshr i64 %325, 37
  %332 = xor i64 %331, %325
  %333 = mul i64 %332, 1609587791953885689
  %334 = lshr i64 %333, 32
  %335 = xor i64 %334, %333
  %336 = sub i64 0, %335
  %337 = insertvalue { i64, i64 } poison, i64 %330, 0
  %338 = insertvalue { i64, i64 } %337, i64 %336, 1
  br label %345

339:                                              ; preds = %162
  %340 = icmp ult i64 %1, 241
  br i1 %340, label %341, label %343

341:                                              ; preds = %339
  %342 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef %2) #43
  br label %345

343:                                              ; preds = %339
  %344 = tail call fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39
  br label %345

345:                                              ; preds = %141, %96, %53, %7, %282, %341, %343
  %346 = phi { i64, i64 } [ %338, %282 ], [ %342, %341 ], [ %344, %343 ], [ %50, %7 ], [ %93, %53 ], [ %140, %96 ], [ %161, %141 ]
  ret { i64, i64 } %346
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc { i64, i64 } @XXH3_hashLong_128b_withSeed(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #31 {
  %4 = alloca [8 x i64], align 8
  %5 = alloca [192 x i8], align 8
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %7, label %363

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #39, !noalias !91
  %8 = add i64 %1, -1
  %9 = icmp ult i64 %8, 1024
  br i1 %9, label %162, label %10

10:                                               ; preds = %7
  %11 = lshr i64 %8, 10
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %19

19:                                               ; preds = %10, %126
  %20 = phi i64 [ %130, %126 ], [ 3266489917, %10 ]
  %21 = phi i64 [ %134, %126 ], [ -7046029288634856825, %10 ]
  %22 = phi i64 [ %154, %126 ], [ 2870177450012600261, %10 ]
  %23 = phi i64 [ %158, %126 ], [ 2654435761, %10 ]
  %24 = phi i64 [ %146, %126 ], [ -8796714831421723037, %10 ]
  %25 = phi i64 [ %150, %126 ], [ 2246822519, %10 ]
  %26 = phi i64 [ %138, %126 ], [ -4417276706812531889, %10 ]
  %27 = phi i64 [ %142, %126 ], [ 1609587929392839161, %10 ]
  %28 = phi i64 [ %159, %126 ], [ 0, %10 ]
  %29 = shl i64 %28, 10
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 %29
  br label %31

31:                                               ; preds = %19, %31
  %32 = phi i64 [ %20, %19 ], [ %59, %31 ]
  %33 = phi i64 [ %21, %19 ], [ %63, %31 ]
  %34 = phi i64 [ %22, %19 ], [ %119, %31 ]
  %35 = phi i64 [ %23, %19 ], [ %123, %31 ]
  %36 = phi i64 [ %24, %19 ], [ %99, %31 ]
  %37 = phi i64 [ %25, %19 ], [ %103, %31 ]
  %38 = phi i64 [ %26, %19 ], [ %79, %31 ]
  %39 = phi i64 [ %27, %19 ], [ %83, %31 ]
  %40 = phi i64 [ 0, %19 ], [ %124, %31 ]
  %41 = shl nuw nsw i64 %40, 6
  %42 = getelementptr inbounds nuw i8, ptr %30, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %43, i32 0, i32 3, i32 1)
  %44 = shl nuw nsw i64 %40, 3
  %45 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %44
  %46 = load i64, ptr %42, align 1
  %47 = load i64, ptr %45, align 8
  %48 = xor i64 %47, %46
  %49 = add i64 %33, %46
  %50 = lshr i64 %48, 32
  %51 = and i64 %48, 4294967295
  %52 = mul nuw i64 %51, %50
  %53 = add i64 %52, %32
  %54 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %55 = load i64, ptr %54, align 1
  %56 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %57 = load i64, ptr %56, align 8
  %58 = xor i64 %57, %55
  %59 = add i64 %53, %55
  %60 = lshr i64 %58, 32
  %61 = and i64 %58, 4294967295
  %62 = mul nuw i64 %61, %60
  %63 = add i64 %62, %49
  %64 = getelementptr inbounds nuw i8, ptr %42, i64 16
  %65 = load i64, ptr %64, align 1
  %66 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %67 = load i64, ptr %66, align 8
  %68 = xor i64 %67, %65
  %69 = add i64 %39, %65
  %70 = lshr i64 %68, 32
  %71 = and i64 %68, 4294967295
  %72 = mul nuw i64 %71, %70
  %73 = add i64 %72, %38
  %74 = getelementptr inbounds nuw i8, ptr %42, i64 24
  %75 = load i64, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %45, i64 24
  %77 = load i64, ptr %76, align 8
  %78 = xor i64 %77, %75
  %79 = add i64 %73, %75
  %80 = lshr i64 %78, 32
  %81 = and i64 %78, 4294967295
  %82 = mul nuw i64 %81, %80
  %83 = add i64 %82, %69
  %84 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %85 = load i64, ptr %84, align 1
  %86 = getelementptr inbounds nuw i8, ptr %45, i64 32
  %87 = load i64, ptr %86, align 8
  %88 = xor i64 %87, %85
  %89 = add i64 %37, %85
  %90 = lshr i64 %88, 32
  %91 = and i64 %88, 4294967295
  %92 = mul nuw i64 %91, %90
  %93 = add i64 %92, %36
  %94 = getelementptr inbounds nuw i8, ptr %42, i64 40
  %95 = load i64, ptr %94, align 1
  %96 = getelementptr inbounds nuw i8, ptr %45, i64 40
  %97 = load i64, ptr %96, align 8
  %98 = xor i64 %97, %95
  %99 = add i64 %93, %95
  %100 = lshr i64 %98, 32
  %101 = and i64 %98, 4294967295
  %102 = mul nuw i64 %101, %100
  %103 = add i64 %102, %89
  %104 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %105 = load i64, ptr %104, align 1
  %106 = getelementptr inbounds nuw i8, ptr %45, i64 48
  %107 = load i64, ptr %106, align 8
  %108 = xor i64 %107, %105
  %109 = add i64 %35, %105
  %110 = lshr i64 %108, 32
  %111 = and i64 %108, 4294967295
  %112 = mul nuw i64 %111, %110
  %113 = add i64 %112, %34
  %114 = getelementptr inbounds nuw i8, ptr %42, i64 56
  %115 = load i64, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %45, i64 56
  %117 = load i64, ptr %116, align 8
  %118 = xor i64 %117, %115
  %119 = add i64 %113, %115
  %120 = lshr i64 %118, 32
  %121 = and i64 %118, 4294967295
  %122 = mul nuw i64 %121, %120
  %123 = add i64 %122, %109
  %124 = add nuw nsw i64 %40, 1
  %125 = icmp eq i64 %124, 16
  br i1 %125, label %126, label %31, !llvm.loop !32

126:                                              ; preds = %31
  %127 = lshr i64 %59, 47
  %128 = xor i64 %127, %59
  %129 = xor i64 %128, -4329134394285701654
  %130 = mul i64 %129, 2654435761
  %131 = lshr i64 %63, 47
  %132 = xor i64 %131, %63
  %133 = xor i64 %132, -1485321483350670907
  %134 = mul i64 %133, 2654435761
  %135 = lshr i64 %79, 47
  %136 = xor i64 %135, %79
  %137 = xor i64 %136, 5321830579834785047
  %138 = mul i64 %137, 2654435761
  %139 = lshr i64 %83, 47
  %140 = xor i64 %139, %83
  %141 = xor i64 %140, -7032137544937171245
  %142 = mul i64 %141, 2654435761
  %143 = lshr i64 %99, 47
  %144 = xor i64 %143, %99
  %145 = xor i64 %144, -242834301215959509
  %146 = mul i64 %145, 2654435761
  %147 = lshr i64 %103, 47
  %148 = xor i64 %147, %103
  %149 = xor i64 %148, -3588858202114426737
  %150 = mul i64 %149, 2654435761
  %151 = lshr i64 %119, 47
  %152 = xor i64 %151, %119
  %153 = xor i64 %152, 2883454493032893253
  %154 = mul i64 %153, 2654435761
  %155 = lshr i64 %123, 47
  %156 = xor i64 %155, %123
  %157 = xor i64 %156, 9097354517224871855
  %158 = mul i64 %157, 2654435761
  %159 = add nuw nsw i64 %28, 1
  %160 = icmp eq i64 %159, %11
  br i1 %160, label %161, label %19, !llvm.loop !33

161:                                              ; preds = %126
  store i64 %130, ptr %4, align 8, !noalias !91
  store i64 %134, ptr %12, align 8, !noalias !91
  store i64 %138, ptr %14, align 8, !noalias !91
  store i64 %142, ptr %13, align 8, !noalias !91
  store i64 %146, ptr %16, align 8, !noalias !91
  store i64 %150, ptr %15, align 8, !noalias !91
  store i64 %154, ptr %18, align 8, !noalias !91
  store i64 %158, ptr %17, align 8, !noalias !91
  br label %162

162:                                              ; preds = %161, %7
  %163 = phi i64 [ 3266489917, %7 ], [ %130, %161 ]
  %164 = phi i64 [ -7046029288634856825, %7 ], [ %134, %161 ]
  %165 = phi i64 [ 2870177450012600261, %7 ], [ %154, %161 ]
  %166 = phi i64 [ 2654435761, %7 ], [ %158, %161 ]
  %167 = phi i64 [ -8796714831421723037, %7 ], [ %146, %161 ]
  %168 = phi i64 [ 2246822519, %7 ], [ %150, %161 ]
  %169 = phi i64 [ -4417276706812531889, %7 ], [ %138, %161 ]
  %170 = phi i64 [ 1609587929392839161, %7 ], [ %142, %161 ]
  %171 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %171)
  %172 = and i64 %8, -1024
  %173 = lshr i64 %8, 6
  %174 = and i64 %173, 15
  %175 = getelementptr inbounds nuw i8, ptr %0, i64 %172
  %176 = icmp eq i64 %174, 0
  br i1 %176, label %281, label %177

177:                                              ; preds = %162
  %178 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %179 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %180 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %181 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %182 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %183 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %184 = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %185

185:                                              ; preds = %177, %185
  %186 = phi i64 [ %213, %185 ], [ %163, %177 ]
  %187 = phi i64 [ %217, %185 ], [ %164, %177 ]
  %188 = phi i64 [ %273, %185 ], [ %165, %177 ]
  %189 = phi i64 [ %277, %185 ], [ %166, %177 ]
  %190 = phi i64 [ %253, %185 ], [ %167, %177 ]
  %191 = phi i64 [ %257, %185 ], [ %168, %177 ]
  %192 = phi i64 [ %233, %185 ], [ %169, %177 ]
  %193 = phi i64 [ %237, %185 ], [ %170, %177 ]
  %194 = phi i64 [ %278, %185 ], [ 0, %177 ]
  %195 = shl nuw nsw i64 %194, 6
  %196 = getelementptr inbounds nuw i8, ptr %175, i64 %195
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %197, i32 0, i32 3, i32 1)
  %198 = shl nuw nsw i64 %194, 3
  %199 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %198
  %200 = load i64, ptr %196, align 1
  %201 = load i64, ptr %199, align 8
  %202 = xor i64 %201, %200
  %203 = add i64 %187, %200
  %204 = lshr i64 %202, 32
  %205 = and i64 %202, 4294967295
  %206 = mul nuw i64 %205, %204
  %207 = add i64 %206, %186
  %208 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %209 = load i64, ptr %208, align 1
  %210 = getelementptr inbounds nuw i8, ptr %199, i64 8
  %211 = load i64, ptr %210, align 8
  %212 = xor i64 %211, %209
  %213 = add i64 %207, %209
  %214 = lshr i64 %212, 32
  %215 = and i64 %212, 4294967295
  %216 = mul nuw i64 %215, %214
  %217 = add i64 %216, %203
  %218 = getelementptr inbounds nuw i8, ptr %196, i64 16
  %219 = load i64, ptr %218, align 1
  %220 = getelementptr inbounds nuw i8, ptr %199, i64 16
  %221 = load i64, ptr %220, align 8
  %222 = xor i64 %221, %219
  %223 = add i64 %193, %219
  %224 = lshr i64 %222, 32
  %225 = and i64 %222, 4294967295
  %226 = mul nuw i64 %225, %224
  %227 = add i64 %226, %192
  %228 = getelementptr inbounds nuw i8, ptr %196, i64 24
  %229 = load i64, ptr %228, align 1
  %230 = getelementptr inbounds nuw i8, ptr %199, i64 24
  %231 = load i64, ptr %230, align 8
  %232 = xor i64 %231, %229
  %233 = add i64 %227, %229
  %234 = lshr i64 %232, 32
  %235 = and i64 %232, 4294967295
  %236 = mul nuw i64 %235, %234
  %237 = add i64 %236, %223
  %238 = getelementptr inbounds nuw i8, ptr %196, i64 32
  %239 = load i64, ptr %238, align 1
  %240 = getelementptr inbounds nuw i8, ptr %199, i64 32
  %241 = load i64, ptr %240, align 8
  %242 = xor i64 %241, %239
  %243 = add i64 %191, %239
  %244 = lshr i64 %242, 32
  %245 = and i64 %242, 4294967295
  %246 = mul nuw i64 %245, %244
  %247 = add i64 %246, %190
  %248 = getelementptr inbounds nuw i8, ptr %196, i64 40
  %249 = load i64, ptr %248, align 1
  %250 = getelementptr inbounds nuw i8, ptr %199, i64 40
  %251 = load i64, ptr %250, align 8
  %252 = xor i64 %251, %249
  %253 = add i64 %247, %249
  %254 = lshr i64 %252, 32
  %255 = and i64 %252, 4294967295
  %256 = mul nuw i64 %255, %254
  %257 = add i64 %256, %243
  %258 = getelementptr inbounds nuw i8, ptr %196, i64 48
  %259 = load i64, ptr %258, align 1
  %260 = getelementptr inbounds nuw i8, ptr %199, i64 48
  %261 = load i64, ptr %260, align 8
  %262 = xor i64 %261, %259
  %263 = add i64 %189, %259
  %264 = lshr i64 %262, 32
  %265 = and i64 %262, 4294967295
  %266 = mul nuw i64 %265, %264
  %267 = add i64 %266, %188
  %268 = getelementptr inbounds nuw i8, ptr %196, i64 56
  %269 = load i64, ptr %268, align 1
  %270 = getelementptr inbounds nuw i8, ptr %199, i64 56
  %271 = load i64, ptr %270, align 8
  %272 = xor i64 %271, %269
  %273 = add i64 %267, %269
  %274 = lshr i64 %272, 32
  %275 = and i64 %272, 4294967295
  %276 = mul nuw i64 %275, %274
  %277 = add i64 %276, %263
  %278 = add nuw nsw i64 %194, 1
  %279 = icmp eq i64 %278, %174
  br i1 %279, label %280, label %185, !llvm.loop !32

280:                                              ; preds = %185
  store i64 %213, ptr %4, align 8, !alias.scope !97, !noalias !100
  store i64 %217, ptr %178, align 8, !alias.scope !97, !noalias !100
  store i64 %233, ptr %180, align 8, !alias.scope !97, !noalias !100
  store i64 %237, ptr %179, align 8, !alias.scope !97, !noalias !100
  store i64 %253, ptr %182, align 8, !alias.scope !97, !noalias !100
  store i64 %257, ptr %181, align 8, !alias.scope !97, !noalias !100
  store i64 %273, ptr %184, align 8, !alias.scope !97, !noalias !100
  store i64 %277, ptr %183, align 8, !alias.scope !97, !noalias !100
  br label %281

281:                                              ; preds = %280, %162
  %282 = phi i64 [ %165, %162 ], [ %273, %280 ]
  %283 = phi i64 [ %166, %162 ], [ %277, %280 ]
  %284 = phi i64 [ %167, %162 ], [ %253, %280 ]
  %285 = phi i64 [ %168, %162 ], [ %257, %280 ]
  %286 = phi i64 [ %169, %162 ], [ %233, %280 ]
  %287 = phi i64 [ %170, %162 ], [ %237, %280 ]
  %288 = phi i64 [ %163, %162 ], [ %213, %280 ]
  %289 = phi i64 [ %164, %162 ], [ %217, %280 ]
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %291 = getelementptr inbounds i8, ptr %290, i64 -64
  %292 = load i64, ptr %291, align 1
  %293 = xor i64 %292, -1556992608276218209
  %294 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %295 = add i64 %289, %292
  %296 = lshr i64 %293, 32
  %297 = and i64 %293, 4294967295
  %298 = mul nuw i64 %297, %296
  %299 = add i64 %298, %288
  %300 = getelementptr inbounds i8, ptr %290, i64 -56
  %301 = load i64, ptr %300, align 1
  %302 = xor i64 %301, -4196251135427498811
  %303 = add i64 %299, %301
  store i64 %303, ptr %4, align 8, !alias.scope !103, !noalias !106
  %304 = lshr i64 %302, 32
  %305 = and i64 %302, 4294967295
  %306 = mul nuw i64 %305, %304
  %307 = add i64 %306, %295
  store i64 %307, ptr %294, align 8, !alias.scope !103, !noalias !106
  %308 = getelementptr inbounds i8, ptr %290, i64 -48
  %309 = load i64, ptr %308, align 1
  %310 = xor i64 %309, 1723580219865931905
  %311 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %312 = add i64 %287, %309
  %313 = lshr i64 %310, 32
  %314 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %315 = and i64 %310, 4294967295
  %316 = mul nuw i64 %315, %313
  %317 = add i64 %316, %286
  %318 = getelementptr inbounds i8, ptr %290, i64 -40
  %319 = load i64, ptr %318, align 1
  %320 = xor i64 %319, -3221803331004277491
  %321 = add i64 %317, %319
  store i64 %321, ptr %314, align 8, !alias.scope !103, !noalias !106
  %322 = lshr i64 %320, 32
  %323 = and i64 %320, 4294967295
  %324 = mul nuw i64 %323, %322
  %325 = add i64 %324, %312
  store i64 %325, ptr %311, align 8, !alias.scope !103, !noalias !106
  %326 = getelementptr inbounds i8, ptr %290, i64 -32
  %327 = load i64, ptr %326, align 1
  %328 = xor i64 %327, 3143064850383918358
  %329 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %330 = add i64 %285, %327
  %331 = lshr i64 %328, 32
  %332 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %333 = and i64 %328, 4294967295
  %334 = mul nuw i64 %333, %331
  %335 = add i64 %334, %284
  %336 = getelementptr inbounds i8, ptr %290, i64 -24
  %337 = load i64, ptr %336, align 1
  %338 = xor i64 %337, -8071399103737053674
  %339 = add i64 %335, %337
  store i64 %339, ptr %332, align 8, !alias.scope !103, !noalias !106
  %340 = lshr i64 %338, 32
  %341 = and i64 %338, 4294967295
  %342 = mul nuw i64 %341, %340
  %343 = add i64 %342, %330
  store i64 %343, ptr %329, align 8, !alias.scope !103, !noalias !106
  %344 = getelementptr inbounds i8, ptr %290, i64 -16
  %345 = load i64, ptr %344, align 1
  %346 = xor i64 %345, 5030012605302946040
  %347 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %348 = add i64 %283, %345
  %349 = lshr i64 %346, 32
  %350 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %351 = and i64 %346, 4294967295
  %352 = mul nuw i64 %351, %349
  %353 = add i64 %352, %282
  %354 = getelementptr inbounds i8, ptr %290, i64 -8
  %355 = load i64, ptr %354, align 1
  %356 = xor i64 %355, -5825401622958753077
  %357 = add i64 %353, %355
  store i64 %357, ptr %350, align 8, !alias.scope !103, !noalias !106
  %358 = lshr i64 %356, 32
  %359 = and i64 %356, 4294967295
  %360 = mul nuw i64 %359, %358
  %361 = add i64 %360, %348
  store i64 %361, ptr %347, align 8, !alias.scope !103, !noalias !106
  %362 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %4, ptr noundef nonnull @XXH3_kSecret, i64 noundef 192, i64 noundef %1) #43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #39, !noalias !91
  br label %876

363:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %5) #39, !noalias !109
  %364 = add i64 %2, -4734510112055689544
  %365 = sub i64 2066345149520216444, %2
  store i64 %364, ptr %5, align 8, !noalias !109
  %366 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %365, ptr %366, align 8, !noalias !109
  %367 = add i64 %2, -2623469361688619810
  %368 = sub i64 2262974939099578482, %2
  %369 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %367, ptr %369, align 8, !noalias !109
  %370 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %368, ptr %370, align 8, !noalias !109
  %371 = add i64 %2, 8711581037947681227
  %372 = sub i64 2410270004345854594, %2
  %373 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %371, ptr %373, align 8, !noalias !109
  %374 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %372, ptr %374, align 8, !noalias !109
  %375 = add i64 %2, -8204357891075471176
  %376 = sub i64 5487137525590930912, %2
  %377 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %375, ptr %377, align 8, !noalias !109
  %378 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %376, ptr %378, align 8, !noalias !109
  %379 = add i64 %2, -3818837453329782724
  %380 = sub i64 -6688317018830679928, %2
  %381 = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %379, ptr %381, align 8, !noalias !109
  %382 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %380, ptr %382, align 8, !noalias !109
  %383 = add i64 %2, 5690594596133299313
  %384 = sub i64 -2833645246901970632, %2
  %385 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %383, ptr %385, align 8, !noalias !109
  %386 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %384, ptr %386, align 8, !noalias !109
  %387 = add i64 %2, 4554437623014685352
  %388 = sub i64 2111919702937427193, %2
  %389 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 %387, ptr %389, align 8, !noalias !109
  %390 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %388, ptr %390, align 8, !noalias !109
  %391 = add i64 %2, 3556072174620004746
  %392 = sub i64 7238261902898274248, %2
  %393 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %391, ptr %393, align 8, !noalias !109
  %394 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %392, ptr %394, align 8, !noalias !109
  %395 = add i64 %2, -4329134394285701654
  %396 = sub i64 -1485321483350670907, %2
  %397 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %395, ptr %397, align 8, !noalias !109
  %398 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 %396, ptr %398, align 8, !noalias !109
  %399 = add i64 %2, 5321830579834785047
  %400 = sub i64 -7032137544937171245, %2
  %401 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %399, ptr %401, align 8, !noalias !109
  %402 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %400, ptr %402, align 8, !noalias !109
  %403 = add i64 %2, -242834301215959509
  %404 = sub i64 -3588858202114426737, %2
  %405 = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 %403, ptr %405, align 8, !noalias !109
  %406 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %404, ptr %406, align 8, !noalias !109
  %407 = add i64 %2, 2883454493032893253
  %408 = sub i64 9097354517224871855, %2
  %409 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %407, ptr %409, align 8, !noalias !109
  %410 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %408, ptr %410, align 8, !noalias !109
  %411 = add i64 %1, -1
  %412 = icmp ult i64 %411, 1024
  br i1 %412, label %557, label %413

413:                                              ; preds = %363
  %414 = lshr i64 %411, 10
  br label %415

415:                                              ; preds = %413, %522
  %416 = phi i64 [ 2654435761, %413 ], [ %554, %522 ]
  %417 = phi i64 [ 2870177450012600261, %413 ], [ %550, %522 ]
  %418 = phi i64 [ 2246822519, %413 ], [ %546, %522 ]
  %419 = phi i64 [ -8796714831421723037, %413 ], [ %542, %522 ]
  %420 = phi i64 [ 1609587929392839161, %413 ], [ %538, %522 ]
  %421 = phi i64 [ -4417276706812531889, %413 ], [ %534, %522 ]
  %422 = phi i64 [ -7046029288634856825, %413 ], [ %530, %522 ]
  %423 = phi i64 [ 3266489917, %413 ], [ %526, %522 ]
  %424 = phi i64 [ 0, %413 ], [ %555, %522 ]
  %425 = shl i64 %424, 10
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 %425
  br label %427

427:                                              ; preds = %415, %427
  %428 = phi i64 [ %416, %415 ], [ %519, %427 ]
  %429 = phi i64 [ %417, %415 ], [ %515, %427 ]
  %430 = phi i64 [ %418, %415 ], [ %499, %427 ]
  %431 = phi i64 [ %419, %415 ], [ %495, %427 ]
  %432 = phi i64 [ %420, %415 ], [ %479, %427 ]
  %433 = phi i64 [ %421, %415 ], [ %475, %427 ]
  %434 = phi i64 [ %422, %415 ], [ %459, %427 ]
  %435 = phi i64 [ %423, %415 ], [ %455, %427 ]
  %436 = phi i64 [ 0, %415 ], [ %520, %427 ]
  %437 = shl nuw nsw i64 %436, 6
  %438 = getelementptr inbounds nuw i8, ptr %426, i64 %437
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %439, i32 0, i32 3, i32 1)
  %440 = shl nuw nsw i64 %436, 3
  %441 = getelementptr inbounds nuw i8, ptr %5, i64 %440
  %442 = load i64, ptr %438, align 1
  %443 = load i64, ptr %441, align 8
  %444 = xor i64 %443, %442
  %445 = add i64 %434, %442
  %446 = lshr i64 %444, 32
  %447 = and i64 %444, 4294967295
  %448 = mul nuw i64 %447, %446
  %449 = add i64 %448, %435
  %450 = getelementptr inbounds nuw i8, ptr %438, i64 8
  %451 = load i64, ptr %450, align 1
  %452 = getelementptr inbounds nuw i8, ptr %441, i64 8
  %453 = load i64, ptr %452, align 8
  %454 = xor i64 %453, %451
  %455 = add i64 %449, %451
  %456 = lshr i64 %454, 32
  %457 = and i64 %454, 4294967295
  %458 = mul nuw i64 %457, %456
  %459 = add i64 %458, %445
  %460 = getelementptr inbounds nuw i8, ptr %438, i64 16
  %461 = load i64, ptr %460, align 1
  %462 = getelementptr inbounds nuw i8, ptr %441, i64 16
  %463 = load i64, ptr %462, align 8
  %464 = xor i64 %463, %461
  %465 = add i64 %432, %461
  %466 = lshr i64 %464, 32
  %467 = and i64 %464, 4294967295
  %468 = mul nuw i64 %467, %466
  %469 = add i64 %468, %433
  %470 = getelementptr inbounds nuw i8, ptr %438, i64 24
  %471 = load i64, ptr %470, align 1
  %472 = getelementptr inbounds nuw i8, ptr %441, i64 24
  %473 = load i64, ptr %472, align 8
  %474 = xor i64 %473, %471
  %475 = add i64 %469, %471
  %476 = lshr i64 %474, 32
  %477 = and i64 %474, 4294967295
  %478 = mul nuw i64 %477, %476
  %479 = add i64 %478, %465
  %480 = getelementptr inbounds nuw i8, ptr %438, i64 32
  %481 = load i64, ptr %480, align 1
  %482 = getelementptr inbounds nuw i8, ptr %441, i64 32
  %483 = load i64, ptr %482, align 8
  %484 = xor i64 %483, %481
  %485 = add i64 %430, %481
  %486 = lshr i64 %484, 32
  %487 = and i64 %484, 4294967295
  %488 = mul nuw i64 %487, %486
  %489 = add i64 %488, %431
  %490 = getelementptr inbounds nuw i8, ptr %438, i64 40
  %491 = load i64, ptr %490, align 1
  %492 = getelementptr inbounds nuw i8, ptr %441, i64 40
  %493 = load i64, ptr %492, align 8
  %494 = xor i64 %493, %491
  %495 = add i64 %489, %491
  %496 = lshr i64 %494, 32
  %497 = and i64 %494, 4294967295
  %498 = mul nuw i64 %497, %496
  %499 = add i64 %498, %485
  %500 = getelementptr inbounds nuw i8, ptr %438, i64 48
  %501 = load i64, ptr %500, align 1
  %502 = getelementptr inbounds nuw i8, ptr %441, i64 48
  %503 = load i64, ptr %502, align 8
  %504 = xor i64 %503, %501
  %505 = add i64 %428, %501
  %506 = lshr i64 %504, 32
  %507 = and i64 %504, 4294967295
  %508 = mul nuw i64 %507, %506
  %509 = add i64 %508, %429
  %510 = getelementptr inbounds nuw i8, ptr %438, i64 56
  %511 = load i64, ptr %510, align 1
  %512 = getelementptr inbounds nuw i8, ptr %441, i64 56
  %513 = load i64, ptr %512, align 8
  %514 = xor i64 %513, %511
  %515 = add i64 %509, %511
  %516 = lshr i64 %514, 32
  %517 = and i64 %514, 4294967295
  %518 = mul nuw i64 %517, %516
  %519 = add i64 %518, %505
  %520 = add nuw nsw i64 %436, 1
  %521 = icmp eq i64 %520, 16
  br i1 %521, label %522, label %427, !llvm.loop !32

522:                                              ; preds = %427
  %523 = lshr i64 %455, 47
  %524 = xor i64 %395, %523
  %525 = xor i64 %524, %455
  %526 = mul i64 %525, 2654435761
  %527 = lshr i64 %459, 47
  %528 = xor i64 %396, %527
  %529 = xor i64 %528, %459
  %530 = mul i64 %529, 2654435761
  %531 = lshr i64 %475, 47
  %532 = xor i64 %399, %531
  %533 = xor i64 %532, %475
  %534 = mul i64 %533, 2654435761
  %535 = lshr i64 %479, 47
  %536 = xor i64 %400, %535
  %537 = xor i64 %536, %479
  %538 = mul i64 %537, 2654435761
  %539 = lshr i64 %495, 47
  %540 = xor i64 %403, %539
  %541 = xor i64 %540, %495
  %542 = mul i64 %541, 2654435761
  %543 = lshr i64 %499, 47
  %544 = xor i64 %404, %543
  %545 = xor i64 %544, %499
  %546 = mul i64 %545, 2654435761
  %547 = lshr i64 %515, 47
  %548 = xor i64 %407, %547
  %549 = xor i64 %548, %515
  %550 = mul i64 %549, 2654435761
  %551 = lshr i64 %519, 47
  %552 = xor i64 %408, %551
  %553 = xor i64 %552, %519
  %554 = mul i64 %553, 2654435761
  %555 = add nuw nsw i64 %424, 1
  %556 = icmp eq i64 %555, %414
  br i1 %556, label %557, label %415, !llvm.loop !33

557:                                              ; preds = %522, %363
  %558 = phi i64 [ 2654435761, %363 ], [ %554, %522 ]
  %559 = phi i64 [ 2870177450012600261, %363 ], [ %550, %522 ]
  %560 = phi i64 [ 2246822519, %363 ], [ %546, %522 ]
  %561 = phi i64 [ -8796714831421723037, %363 ], [ %542, %522 ]
  %562 = phi i64 [ 1609587929392839161, %363 ], [ %538, %522 ]
  %563 = phi i64 [ -4417276706812531889, %363 ], [ %534, %522 ]
  %564 = phi i64 [ -7046029288634856825, %363 ], [ %530, %522 ]
  %565 = phi i64 [ 3266489917, %363 ], [ %526, %522 ]
  %566 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %566)
  %567 = and i64 %411, -1024
  %568 = lshr i64 %411, 6
  %569 = and i64 %568, 15
  %570 = getelementptr inbounds nuw i8, ptr %0, i64 %567
  %571 = icmp eq i64 %569, 0
  br i1 %571, label %667, label %572

572:                                              ; preds = %557, %572
  %573 = phi i64 [ %664, %572 ], [ %558, %557 ]
  %574 = phi i64 [ %660, %572 ], [ %559, %557 ]
  %575 = phi i64 [ %644, %572 ], [ %560, %557 ]
  %576 = phi i64 [ %640, %572 ], [ %561, %557 ]
  %577 = phi i64 [ %624, %572 ], [ %562, %557 ]
  %578 = phi i64 [ %620, %572 ], [ %563, %557 ]
  %579 = phi i64 [ %604, %572 ], [ %564, %557 ]
  %580 = phi i64 [ %600, %572 ], [ %565, %557 ]
  %581 = phi i64 [ %665, %572 ], [ 0, %557 ]
  %582 = shl nuw nsw i64 %581, 6
  %583 = getelementptr inbounds nuw i8, ptr %570, i64 %582
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %584, i32 0, i32 3, i32 1)
  %585 = shl nuw nsw i64 %581, 3
  %586 = getelementptr inbounds nuw i8, ptr %5, i64 %585
  %587 = load i64, ptr %583, align 1
  %588 = load i64, ptr %586, align 8
  %589 = xor i64 %588, %587
  %590 = add i64 %579, %587
  %591 = lshr i64 %589, 32
  %592 = and i64 %589, 4294967295
  %593 = mul nuw i64 %592, %591
  %594 = add i64 %593, %580
  %595 = getelementptr inbounds nuw i8, ptr %583, i64 8
  %596 = load i64, ptr %595, align 1
  %597 = getelementptr inbounds nuw i8, ptr %586, i64 8
  %598 = load i64, ptr %597, align 8
  %599 = xor i64 %598, %596
  %600 = add i64 %594, %596
  %601 = lshr i64 %599, 32
  %602 = and i64 %599, 4294967295
  %603 = mul nuw i64 %602, %601
  %604 = add i64 %603, %590
  %605 = getelementptr inbounds nuw i8, ptr %583, i64 16
  %606 = load i64, ptr %605, align 1
  %607 = getelementptr inbounds nuw i8, ptr %586, i64 16
  %608 = load i64, ptr %607, align 8
  %609 = xor i64 %608, %606
  %610 = add i64 %577, %606
  %611 = lshr i64 %609, 32
  %612 = and i64 %609, 4294967295
  %613 = mul nuw i64 %612, %611
  %614 = add i64 %613, %578
  %615 = getelementptr inbounds nuw i8, ptr %583, i64 24
  %616 = load i64, ptr %615, align 1
  %617 = getelementptr inbounds nuw i8, ptr %586, i64 24
  %618 = load i64, ptr %617, align 8
  %619 = xor i64 %618, %616
  %620 = add i64 %614, %616
  %621 = lshr i64 %619, 32
  %622 = and i64 %619, 4294967295
  %623 = mul nuw i64 %622, %621
  %624 = add i64 %623, %610
  %625 = getelementptr inbounds nuw i8, ptr %583, i64 32
  %626 = load i64, ptr %625, align 1
  %627 = getelementptr inbounds nuw i8, ptr %586, i64 32
  %628 = load i64, ptr %627, align 8
  %629 = xor i64 %628, %626
  %630 = add i64 %575, %626
  %631 = lshr i64 %629, 32
  %632 = and i64 %629, 4294967295
  %633 = mul nuw i64 %632, %631
  %634 = add i64 %633, %576
  %635 = getelementptr inbounds nuw i8, ptr %583, i64 40
  %636 = load i64, ptr %635, align 1
  %637 = getelementptr inbounds nuw i8, ptr %586, i64 40
  %638 = load i64, ptr %637, align 8
  %639 = xor i64 %638, %636
  %640 = add i64 %634, %636
  %641 = lshr i64 %639, 32
  %642 = and i64 %639, 4294967295
  %643 = mul nuw i64 %642, %641
  %644 = add i64 %643, %630
  %645 = getelementptr inbounds nuw i8, ptr %583, i64 48
  %646 = load i64, ptr %645, align 1
  %647 = getelementptr inbounds nuw i8, ptr %586, i64 48
  %648 = load i64, ptr %647, align 8
  %649 = xor i64 %648, %646
  %650 = add i64 %573, %646
  %651 = lshr i64 %649, 32
  %652 = and i64 %649, 4294967295
  %653 = mul nuw i64 %652, %651
  %654 = add i64 %653, %574
  %655 = getelementptr inbounds nuw i8, ptr %583, i64 56
  %656 = load i64, ptr %655, align 1
  %657 = getelementptr inbounds nuw i8, ptr %586, i64 56
  %658 = load i64, ptr %657, align 8
  %659 = xor i64 %658, %656
  %660 = add i64 %654, %656
  %661 = lshr i64 %659, 32
  %662 = and i64 %659, 4294967295
  %663 = mul nuw i64 %662, %661
  %664 = add i64 %663, %650
  %665 = add nuw nsw i64 %581, 1
  %666 = icmp eq i64 %665, %569
  br i1 %666, label %667, label %572, !llvm.loop !32

667:                                              ; preds = %572, %557
  %668 = phi i64 [ %558, %557 ], [ %664, %572 ]
  %669 = phi i64 [ %559, %557 ], [ %660, %572 ]
  %670 = phi i64 [ %560, %557 ], [ %644, %572 ]
  %671 = phi i64 [ %561, %557 ], [ %640, %572 ]
  %672 = phi i64 [ %562, %557 ], [ %624, %572 ]
  %673 = phi i64 [ %563, %557 ], [ %620, %572 ]
  %674 = phi i64 [ %564, %557 ], [ %604, %572 ]
  %675 = phi i64 [ %565, %557 ], [ %600, %572 ]
  %676 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %677 = getelementptr inbounds i8, ptr %676, i64 -64
  %678 = getelementptr inbounds nuw i8, ptr %5, i64 121
  %679 = load i64, ptr %677, align 1
  %680 = load i64, ptr %678, align 1
  %681 = xor i64 %680, %679
  %682 = add i64 %674, %679
  %683 = lshr i64 %681, 32
  %684 = and i64 %681, 4294967295
  %685 = mul nuw i64 %684, %683
  %686 = add i64 %685, %675
  %687 = getelementptr inbounds i8, ptr %676, i64 -56
  %688 = load i64, ptr %687, align 1
  %689 = getelementptr inbounds nuw i8, ptr %5, i64 129
  %690 = load i64, ptr %689, align 1
  %691 = xor i64 %690, %688
  %692 = add i64 %686, %688
  %693 = lshr i64 %691, 32
  %694 = and i64 %691, 4294967295
  %695 = mul nuw i64 %694, %693
  %696 = add i64 %695, %682
  %697 = getelementptr inbounds i8, ptr %676, i64 -48
  %698 = load i64, ptr %697, align 1
  %699 = getelementptr inbounds nuw i8, ptr %5, i64 137
  %700 = load i64, ptr %699, align 1
  %701 = xor i64 %700, %698
  %702 = add i64 %672, %698
  %703 = lshr i64 %701, 32
  %704 = and i64 %701, 4294967295
  %705 = mul nuw i64 %704, %703
  %706 = add i64 %705, %673
  %707 = getelementptr inbounds i8, ptr %676, i64 -40
  %708 = load i64, ptr %707, align 1
  %709 = getelementptr inbounds nuw i8, ptr %5, i64 145
  %710 = load i64, ptr %709, align 1
  %711 = xor i64 %710, %708
  %712 = add i64 %706, %708
  %713 = lshr i64 %711, 32
  %714 = and i64 %711, 4294967295
  %715 = mul nuw i64 %714, %713
  %716 = add i64 %715, %702
  %717 = getelementptr inbounds i8, ptr %676, i64 -32
  %718 = load i64, ptr %717, align 1
  %719 = getelementptr inbounds nuw i8, ptr %5, i64 153
  %720 = load i64, ptr %719, align 1
  %721 = xor i64 %720, %718
  %722 = add i64 %670, %718
  %723 = lshr i64 %721, 32
  %724 = and i64 %721, 4294967295
  %725 = mul nuw i64 %724, %723
  %726 = add i64 %725, %671
  %727 = getelementptr inbounds i8, ptr %676, i64 -24
  %728 = load i64, ptr %727, align 1
  %729 = getelementptr inbounds nuw i8, ptr %5, i64 161
  %730 = load i64, ptr %729, align 1
  %731 = xor i64 %730, %728
  %732 = add i64 %726, %728
  %733 = lshr i64 %731, 32
  %734 = and i64 %731, 4294967295
  %735 = mul nuw i64 %734, %733
  %736 = add i64 %735, %722
  %737 = getelementptr inbounds i8, ptr %676, i64 -16
  %738 = load i64, ptr %737, align 1
  %739 = getelementptr inbounds nuw i8, ptr %5, i64 169
  %740 = load i64, ptr %739, align 1
  %741 = xor i64 %740, %738
  %742 = add i64 %668, %738
  %743 = lshr i64 %741, 32
  %744 = and i64 %741, 4294967295
  %745 = mul nuw i64 %744, %743
  %746 = add i64 %745, %669
  %747 = getelementptr inbounds i8, ptr %676, i64 -8
  %748 = load i64, ptr %747, align 1
  %749 = getelementptr inbounds nuw i8, ptr %5, i64 177
  %750 = load i64, ptr %749, align 1
  %751 = xor i64 %750, %748
  %752 = add i64 %746, %748
  %753 = lshr i64 %751, 32
  %754 = and i64 %751, 4294967295
  %755 = mul nuw i64 %754, %753
  %756 = add i64 %755, %742
  %757 = getelementptr inbounds nuw i8, ptr %5, i64 11
  %758 = mul i64 %1, -7046029288634856825
  %759 = load i64, ptr %757, align 1, !alias.scope !110, !noalias !117
  %760 = xor i64 %759, %692
  %761 = getelementptr inbounds nuw i8, ptr %5, i64 19
  %762 = load i64, ptr %761, align 1, !alias.scope !110, !noalias !117
  %763 = xor i64 %762, %696
  %764 = zext i64 %760 to i128
  %765 = zext i64 %763 to i128
  %766 = mul nuw i128 %765, %764
  %767 = lshr i128 %766, 64
  %768 = xor i128 %767, %766
  %769 = trunc i128 %768 to i64
  %770 = add i64 %758, %769
  %771 = getelementptr inbounds nuw i8, ptr %5, i64 27
  %772 = load i64, ptr %771, align 1, !alias.scope !110, !noalias !117
  %773 = xor i64 %772, %712
  %774 = getelementptr inbounds nuw i8, ptr %5, i64 35
  %775 = load i64, ptr %774, align 1, !alias.scope !110, !noalias !117
  %776 = xor i64 %775, %716
  %777 = zext i64 %773 to i128
  %778 = zext i64 %776 to i128
  %779 = mul nuw i128 %778, %777
  %780 = lshr i128 %779, 64
  %781 = xor i128 %780, %779
  %782 = trunc i128 %781 to i64
  %783 = add i64 %770, %782
  %784 = getelementptr inbounds nuw i8, ptr %5, i64 43
  %785 = load i64, ptr %784, align 1, !alias.scope !110, !noalias !117
  %786 = xor i64 %785, %732
  %787 = getelementptr inbounds nuw i8, ptr %5, i64 51
  %788 = load i64, ptr %787, align 1, !alias.scope !110, !noalias !117
  %789 = xor i64 %788, %736
  %790 = zext i64 %786 to i128
  %791 = zext i64 %789 to i128
  %792 = mul nuw i128 %791, %790
  %793 = lshr i128 %792, 64
  %794 = xor i128 %793, %792
  %795 = trunc i128 %794 to i64
  %796 = add i64 %783, %795
  %797 = getelementptr inbounds nuw i8, ptr %5, i64 59
  %798 = load i64, ptr %797, align 1, !alias.scope !110, !noalias !117
  %799 = xor i64 %798, %752
  %800 = getelementptr inbounds nuw i8, ptr %5, i64 67
  %801 = load i64, ptr %800, align 1, !alias.scope !110, !noalias !117
  %802 = xor i64 %801, %756
  %803 = zext i64 %799 to i128
  %804 = zext i64 %802 to i128
  %805 = mul nuw i128 %804, %803
  %806 = lshr i128 %805, 64
  %807 = xor i128 %806, %805
  %808 = trunc i128 %807 to i64
  %809 = add i64 %796, %808
  %810 = lshr i64 %809, 37
  %811 = xor i64 %810, %809
  %812 = mul i64 %811, 1609587791953885689
  %813 = lshr i64 %812, 32
  %814 = xor i64 %813, %812
  %815 = getelementptr inbounds nuw i8, ptr %5, i64 117
  %816 = mul i64 %1, -4417276706812531889
  %817 = xor i64 %816, -1
  %818 = load i64, ptr %815, align 1, !alias.scope !121, !noalias !124
  %819 = xor i64 %818, %692
  %820 = getelementptr inbounds nuw i8, ptr %5, i64 125
  %821 = load i64, ptr %820, align 1, !alias.scope !121, !noalias !124
  %822 = xor i64 %821, %696
  %823 = zext i64 %819 to i128
  %824 = zext i64 %822 to i128
  %825 = mul nuw i128 %824, %823
  %826 = lshr i128 %825, 64
  %827 = xor i128 %826, %825
  %828 = trunc i128 %827 to i64
  %829 = add i64 %828, %817
  %830 = getelementptr inbounds nuw i8, ptr %5, i64 133
  %831 = load i64, ptr %830, align 1, !alias.scope !121, !noalias !124
  %832 = xor i64 %831, %712
  %833 = getelementptr inbounds nuw i8, ptr %5, i64 141
  %834 = load i64, ptr %833, align 1, !alias.scope !121, !noalias !124
  %835 = xor i64 %834, %716
  %836 = zext i64 %832 to i128
  %837 = zext i64 %835 to i128
  %838 = mul nuw i128 %837, %836
  %839 = lshr i128 %838, 64
  %840 = xor i128 %839, %838
  %841 = trunc i128 %840 to i64
  %842 = add i64 %829, %841
  %843 = getelementptr inbounds nuw i8, ptr %5, i64 149
  %844 = load i64, ptr %843, align 1, !alias.scope !121, !noalias !124
  %845 = xor i64 %844, %732
  %846 = getelementptr inbounds nuw i8, ptr %5, i64 157
  %847 = load i64, ptr %846, align 1, !alias.scope !121, !noalias !124
  %848 = xor i64 %847, %736
  %849 = zext i64 %845 to i128
  %850 = zext i64 %848 to i128
  %851 = mul nuw i128 %850, %849
  %852 = lshr i128 %851, 64
  %853 = xor i128 %852, %851
  %854 = trunc i128 %853 to i64
  %855 = add i64 %842, %854
  %856 = getelementptr inbounds nuw i8, ptr %5, i64 165
  %857 = load i64, ptr %856, align 1, !alias.scope !121, !noalias !124
  %858 = xor i64 %857, %752
  %859 = getelementptr inbounds nuw i8, ptr %5, i64 173
  %860 = load i64, ptr %859, align 1, !alias.scope !121, !noalias !124
  %861 = xor i64 %860, %756
  %862 = zext i64 %858 to i128
  %863 = zext i64 %861 to i128
  %864 = mul nuw i128 %863, %862
  %865 = lshr i128 %864, 64
  %866 = xor i128 %865, %864
  %867 = trunc i128 %866 to i64
  %868 = add i64 %855, %867
  %869 = lshr i64 %868, 37
  %870 = xor i64 %869, %868
  %871 = mul i64 %870, 1609587791953885689
  %872 = lshr i64 %871, 32
  %873 = xor i64 %872, %871
  %874 = insertvalue { i64, i64 } poison, i64 %814, 0
  %875 = insertvalue { i64, i64 } %874, i64 %873, 1
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %5) #39, !noalias !109
  br label %876

876:                                              ; preds = %281, %667
  %877 = phi { i64, i64 } [ %362, %281 ], [ %875, %667 ]
  ret { i64, i64 } %877
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecret(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #30 {
  %5 = alloca [8 x i64], align 8
  %6 = icmp ugt i64 %3, 135
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ult i64 %1, 17
  br i1 %7, label %8, label %186

8:                                                ; preds = %4
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %63

10:                                               ; preds = %8
  %11 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %12)
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %14
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %21 = load i64, ptr %20, align 1
  %22 = xor i64 %21, %19
  %23 = load i64, ptr %0, align 1
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %17, %23
  %28 = xor i64 %27, %26
  %29 = zext i64 %28 to i128
  %30 = mul nuw i128 %29, 11400714785074694791
  %31 = trunc i128 %30 to i64
  %32 = lshr i128 %30, 64
  %33 = trunc nuw i128 %32 to i64
  %34 = shl nuw nsw i64 %1, 54
  %35 = add nsw i64 %34, -18014398509481984
  %36 = add i64 %35, %31
  %37 = xor i64 %22, %26
  %38 = and i64 %37, 4294967295
  %39 = mul nuw i64 %38, 2246822518
  %40 = add i64 %39, %37
  %41 = add i64 %40, %33
  %42 = tail call noundef i64 @llvm.bswap.i64(i64 %41)
  %43 = xor i64 %42, %36
  %44 = zext i64 %43 to i128
  %45 = mul nuw i128 %44, 14029467366897019727
  %46 = trunc i128 %45 to i64
  %47 = lshr i128 %45, 64
  %48 = trunc nuw i128 %47 to i64
  %49 = mul i64 %41, -4417276706812531889
  %50 = add i64 %49, %48
  %51 = lshr i64 %46, 37
  %52 = xor i64 %51, %46
  %53 = mul i64 %52, 1609587791953885689
  %54 = lshr i64 %53, 32
  %55 = xor i64 %54, %53
  %56 = lshr i64 %50, 37
  %57 = xor i64 %56, %50
  %58 = mul i64 %57, 1609587791953885689
  %59 = lshr i64 %58, 32
  %60 = xor i64 %59, %58
  %61 = insertvalue { i64, i64 } poison, i64 %55, 0
  %62 = insertvalue { i64, i64 } %61, i64 %60, 1
  br label %775

63:                                               ; preds = %8
  %64 = icmp samesign ugt i64 %1, 3
  br i1 %64, label %65, label %106

65:                                               ; preds = %63
  %66 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %66)
  %67 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %67)
  %68 = load i32, ptr %0, align 1
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %70 = getelementptr inbounds i8, ptr %69, i64 -4
  %71 = load i32, ptr %70, align 1
  %72 = zext i32 %68 to i64
  %73 = zext i32 %71 to i64
  %74 = shl nuw i64 %73, 32
  %75 = or disjoint i64 %74, %72
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %77 = load i64, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %79, %77
  %81 = xor i64 %80, %75
  %82 = shl nuw nsw i64 %1, 2
  %83 = add nuw nsw i64 %82, -7046029288634856825
  %84 = zext i64 %81 to i128
  %85 = zext i64 %83 to i128
  %86 = mul nuw i128 %84, %85
  %87 = trunc i128 %86 to i64
  %88 = lshr i128 %86, 64
  %89 = trunc nuw i128 %88 to i64
  %90 = shl i64 %87, 1
  %91 = add i64 %90, %89
  %92 = lshr i64 %91, 3
  %93 = xor i64 %92, %87
  %94 = lshr i64 %93, 35
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, -6939452855193903323
  %97 = lshr i64 %96, 28
  %98 = xor i64 %97, %96
  %99 = lshr i64 %91, 37
  %100 = xor i64 %99, %91
  %101 = mul i64 %100, 1609587791953885689
  %102 = lshr i64 %101, 32
  %103 = xor i64 %102, %101
  %104 = insertvalue { i64, i64 } poison, i64 %98, 0
  %105 = insertvalue { i64, i64 } %104, i64 %103, 1
  br label %775

106:                                              ; preds = %63
  %107 = icmp eq i64 %1, 0
  br i1 %107, label %157, label %108

108:                                              ; preds = %106
  %109 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %109)
  %110 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %110)
  %111 = load i8, ptr %0, align 1
  %112 = lshr i64 %1, 1
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 %112
  %114 = load i8, ptr %113, align 1
  %115 = getelementptr i8, ptr %0, i64 %1
  %116 = getelementptr i8, ptr %115, i64 -1
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %111 to i32
  %119 = shl nuw nsw i32 %118, 16
  %120 = zext i8 %114 to i32
  %121 = shl nuw i32 %120, 24
  %122 = or disjoint i32 %121, %119
  %123 = zext i8 %117 to i32
  %124 = or disjoint i32 %122, %123
  %125 = trunc nuw nsw i64 %1 to i32
  %126 = shl nuw nsw i32 %125, 8
  %127 = or disjoint i32 %124, %126
  %128 = tail call noundef i32 @llvm.bswap.i32(i32 %127)
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 13)
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %135 = load i32, ptr %134, align 1
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %137 = load i32, ptr %136, align 1
  %138 = xor i32 %137, %135
  %139 = xor i32 %133, %127
  %140 = zext i32 %139 to i64
  %141 = xor i32 %138, %129
  %142 = zext i32 %141 to i64
  %143 = mul i64 %140, -4417276706812531889
  %144 = lshr i64 %143, 29
  %145 = xor i64 %144, %143
  %146 = mul i64 %145, 1609587929392839161
  %147 = lshr i64 %146, 32
  %148 = xor i64 %147, %146
  %149 = mul i64 %142, -4417276706812531889
  %150 = lshr i64 %149, 29
  %151 = xor i64 %150, %149
  %152 = mul i64 %151, 1609587929392839161
  %153 = lshr i64 %152, 32
  %154 = xor i64 %153, %152
  %155 = insertvalue { i64, i64 } poison, i64 %148, 0
  %156 = insertvalue { i64, i64 } %155, i64 %154, 1
  br label %775

157:                                              ; preds = %106
  %158 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %159 = load i64, ptr %158, align 1
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %161 = load i64, ptr %160, align 1
  %162 = xor i64 %161, %159
  %163 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %164 = load i64, ptr %163, align 1
  %165 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %166 = load i64, ptr %165, align 1
  %167 = xor i64 %166, %164
  %168 = lshr i64 %162, 33
  %169 = xor i64 %168, %162
  %170 = mul i64 %169, -4417276706812531889
  %171 = lshr i64 %170, 29
  %172 = xor i64 %171, %170
  %173 = mul i64 %172, 1609587929392839161
  %174 = lshr i64 %173, 32
  %175 = xor i64 %174, %173
  %176 = lshr i64 %167, 33
  %177 = xor i64 %176, %167
  %178 = mul i64 %177, -4417276706812531889
  %179 = lshr i64 %178, 29
  %180 = xor i64 %179, %178
  %181 = mul i64 %180, 1609587929392839161
  %182 = lshr i64 %181, 32
  %183 = xor i64 %182, %181
  %184 = insertvalue { i64, i64 } poison, i64 %175, 0
  %185 = insertvalue { i64, i64 } %184, i64 %183, 1
  br label %775

186:                                              ; preds = %4
  %187 = icmp ult i64 %1, 129
  br i1 %187, label %188, label %377

188:                                              ; preds = %186
  %189 = mul i64 %1, -7046029288634856825
  %190 = icmp samesign ugt i64 %1, 32
  br i1 %190, label %191, label %318

191:                                              ; preds = %188
  %192 = icmp samesign ugt i64 %1, 64
  br i1 %192, label %193, label %276

193:                                              ; preds = %191
  %194 = icmp samesign ugt i64 %1, 96
  br i1 %194, label %195, label %234

195:                                              ; preds = %193
  %196 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %197 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %198 = getelementptr inbounds i8, ptr %197, i64 -64
  %199 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %200 = load i64, ptr %196, align 1
  %201 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %202 = load i64, ptr %201, align 1
  %203 = load i64, ptr %199, align 1
  %204 = xor i64 %203, %200
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %206 = load i64, ptr %205, align 1
  %207 = xor i64 %206, %202
  %208 = zext i64 %204 to i128
  %209 = zext i64 %207 to i128
  %210 = mul nuw i128 %209, %208
  %211 = lshr i128 %210, 64
  %212 = xor i128 %211, %210
  %213 = trunc i128 %212 to i64
  %214 = add i64 %189, %213
  %215 = load i64, ptr %198, align 1
  %216 = getelementptr inbounds i8, ptr %197, i64 -56
  %217 = load i64, ptr %216, align 1
  %218 = add i64 %217, %215
  %219 = xor i64 %214, %218
  %220 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %221 = load i64, ptr %220, align 1
  %222 = xor i64 %221, %215
  %223 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %224 = load i64, ptr %223, align 1
  %225 = xor i64 %224, %217
  %226 = zext i64 %222 to i128
  %227 = zext i64 %225 to i128
  %228 = mul nuw i128 %227, %226
  %229 = lshr i128 %228, 64
  %230 = xor i128 %229, %228
  %231 = trunc i128 %230 to i64
  %232 = add i64 %202, %200
  %233 = xor i64 %232, %231
  br label %234

234:                                              ; preds = %195, %193
  %235 = phi i64 [ %219, %195 ], [ %189, %193 ]
  %236 = phi i64 [ %233, %195 ], [ 0, %193 ]
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %239 = getelementptr inbounds i8, ptr %238, i64 -48
  %240 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %241 = load i64, ptr %237, align 1
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %243 = load i64, ptr %242, align 1
  %244 = load i64, ptr %240, align 1
  %245 = xor i64 %244, %241
  %246 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %247 = load i64, ptr %246, align 1
  %248 = xor i64 %247, %243
  %249 = zext i64 %245 to i128
  %250 = zext i64 %248 to i128
  %251 = mul nuw i128 %250, %249
  %252 = lshr i128 %251, 64
  %253 = xor i128 %252, %251
  %254 = trunc i128 %253 to i64
  %255 = add i64 %235, %254
  %256 = load i64, ptr %239, align 1
  %257 = getelementptr inbounds i8, ptr %238, i64 -40
  %258 = load i64, ptr %257, align 1
  %259 = add i64 %258, %256
  %260 = xor i64 %255, %259
  %261 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %262 = load i64, ptr %261, align 1
  %263 = xor i64 %262, %256
  %264 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %265 = load i64, ptr %264, align 1
  %266 = xor i64 %265, %258
  %267 = zext i64 %263 to i128
  %268 = zext i64 %266 to i128
  %269 = mul nuw i128 %268, %267
  %270 = lshr i128 %269, 64
  %271 = xor i128 %270, %269
  %272 = trunc i128 %271 to i64
  %273 = add i64 %236, %272
  %274 = add i64 %243, %241
  %275 = xor i64 %273, %274
  br label %276

276:                                              ; preds = %234, %191
  %277 = phi i64 [ %260, %234 ], [ %189, %191 ]
  %278 = phi i64 [ %275, %234 ], [ 0, %191 ]
  %279 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %281 = getelementptr inbounds i8, ptr %280, i64 -32
  %282 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %283 = load i64, ptr %279, align 1
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %285 = load i64, ptr %284, align 1
  %286 = load i64, ptr %282, align 1
  %287 = xor i64 %286, %283
  %288 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %289 = load i64, ptr %288, align 1
  %290 = xor i64 %289, %285
  %291 = zext i64 %287 to i128
  %292 = zext i64 %290 to i128
  %293 = mul nuw i128 %292, %291
  %294 = lshr i128 %293, 64
  %295 = xor i128 %294, %293
  %296 = trunc i128 %295 to i64
  %297 = add i64 %277, %296
  %298 = load i64, ptr %281, align 1
  %299 = getelementptr inbounds i8, ptr %280, i64 -24
  %300 = load i64, ptr %299, align 1
  %301 = add i64 %300, %298
  %302 = xor i64 %297, %301
  %303 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %304 = load i64, ptr %303, align 1
  %305 = xor i64 %304, %298
  %306 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %307 = load i64, ptr %306, align 1
  %308 = xor i64 %307, %300
  %309 = zext i64 %305 to i128
  %310 = zext i64 %308 to i128
  %311 = mul nuw i128 %310, %309
  %312 = lshr i128 %311, 64
  %313 = xor i128 %312, %311
  %314 = trunc i128 %313 to i64
  %315 = add i64 %278, %314
  %316 = add i64 %285, %283
  %317 = xor i64 %315, %316
  br label %318

318:                                              ; preds = %188, %276
  %319 = phi i64 [ %302, %276 ], [ %189, %188 ]
  %320 = phi i64 [ %317, %276 ], [ 0, %188 ]
  %321 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %322 = getelementptr inbounds i8, ptr %321, i64 -16
  %323 = load i64, ptr %0, align 1
  %324 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %325 = load i64, ptr %324, align 1
  %326 = load i64, ptr %2, align 1
  %327 = xor i64 %326, %323
  %328 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %329 = load i64, ptr %328, align 1
  %330 = xor i64 %329, %325
  %331 = zext i64 %327 to i128
  %332 = zext i64 %330 to i128
  %333 = mul nuw i128 %332, %331
  %334 = lshr i128 %333, 64
  %335 = xor i128 %334, %333
  %336 = trunc i128 %335 to i64
  %337 = add i64 %319, %336
  %338 = load i64, ptr %322, align 1
  %339 = getelementptr inbounds i8, ptr %321, i64 -8
  %340 = load i64, ptr %339, align 1
  %341 = add i64 %340, %338
  %342 = xor i64 %337, %341
  %343 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %344 = load i64, ptr %343, align 1
  %345 = xor i64 %344, %338
  %346 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %347 = load i64, ptr %346, align 1
  %348 = xor i64 %347, %340
  %349 = zext i64 %345 to i128
  %350 = zext i64 %348 to i128
  %351 = mul nuw i128 %350, %349
  %352 = lshr i128 %351, 64
  %353 = xor i128 %352, %351
  %354 = trunc i128 %353 to i64
  %355 = add i64 %320, %354
  %356 = add i64 %325, %323
  %357 = xor i64 %355, %356
  %358 = add i64 %357, %342
  %359 = mul i64 %342, -7046029288634856825
  %360 = mul i64 %357, -8796714831421723037
  %361 = mul i64 %1, -4417276706812531889
  %362 = add i64 %359, %361
  %363 = add i64 %362, %360
  %364 = lshr i64 %358, 37
  %365 = xor i64 %364, %358
  %366 = mul i64 %365, 1609587791953885689
  %367 = lshr i64 %366, 32
  %368 = xor i64 %367, %366
  %369 = lshr i64 %363, 37
  %370 = xor i64 %369, %363
  %371 = mul i64 %370, 1609587791953885689
  %372 = lshr i64 %371, 32
  %373 = xor i64 %372, %371
  %374 = sub i64 0, %373
  %375 = insertvalue { i64, i64 } poison, i64 %368, 0
  %376 = insertvalue { i64, i64 } %375, i64 %374, 1
  br label %775

377:                                              ; preds = %186
  %378 = icmp ult i64 %1, 241
  br i1 %378, label %379, label %381

379:                                              ; preds = %377
  %380 = tail call fastcc { i64, i64 } @XXH3_len_129to240_128b(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef 0) #43
  br label %775

381:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #39, !noalias !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) @__const.XXH3_hashLong_128b_internal.acc, i64 64, i1 false), !noalias !126
  %382 = add i64 %3, -64
  %383 = lshr i64 %382, 3
  %384 = shl i64 %383, 6
  %385 = add i64 %1, -1
  %386 = udiv i64 %385, %384
  %387 = urem i64 %385, %384
  %388 = icmp ugt i64 %384, %385
  br i1 %388, label %557, label %389

389:                                              ; preds = %381
  %390 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %391 = getelementptr inbounds i8, ptr %390, i64 -64
  %392 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %393 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %394 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %395 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %396 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %397 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %398 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %399 = load i64, ptr %391, align 1
  %400 = getelementptr inbounds i8, ptr %390, i64 -56
  %401 = load i64, ptr %400, align 1
  %402 = getelementptr inbounds i8, ptr %390, i64 -48
  %403 = load i64, ptr %402, align 1
  %404 = getelementptr inbounds i8, ptr %390, i64 -40
  %405 = load i64, ptr %404, align 1
  %406 = getelementptr inbounds i8, ptr %390, i64 -32
  %407 = load i64, ptr %406, align 1
  %408 = getelementptr inbounds i8, ptr %390, i64 -24
  %409 = load i64, ptr %408, align 1
  %410 = getelementptr inbounds i8, ptr %390, i64 -16
  %411 = load i64, ptr %410, align 1
  %412 = getelementptr inbounds i8, ptr %390, i64 -8
  %413 = load i64, ptr %412, align 1
  br label %414

414:                                              ; preds = %389, %521
  %415 = phi i64 [ %525, %521 ], [ 3266489917, %389 ]
  %416 = phi i64 [ %529, %521 ], [ -7046029288634856825, %389 ]
  %417 = phi i64 [ %549, %521 ], [ 2870177450012600261, %389 ]
  %418 = phi i64 [ %553, %521 ], [ 2654435761, %389 ]
  %419 = phi i64 [ %541, %521 ], [ -8796714831421723037, %389 ]
  %420 = phi i64 [ %545, %521 ], [ 2246822519, %389 ]
  %421 = phi i64 [ %533, %521 ], [ -4417276706812531889, %389 ]
  %422 = phi i64 [ %537, %521 ], [ 1609587929392839161, %389 ]
  %423 = phi i64 [ %554, %521 ], [ 0, %389 ]
  %424 = mul i64 %423, %384
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 %424
  br label %426

426:                                              ; preds = %414, %426
  %427 = phi i64 [ %415, %414 ], [ %454, %426 ]
  %428 = phi i64 [ %416, %414 ], [ %458, %426 ]
  %429 = phi i64 [ %417, %414 ], [ %514, %426 ]
  %430 = phi i64 [ %418, %414 ], [ %518, %426 ]
  %431 = phi i64 [ %419, %414 ], [ %494, %426 ]
  %432 = phi i64 [ %420, %414 ], [ %498, %426 ]
  %433 = phi i64 [ %421, %414 ], [ %474, %426 ]
  %434 = phi i64 [ %422, %414 ], [ %478, %426 ]
  %435 = phi i64 [ 0, %414 ], [ %519, %426 ]
  %436 = shl i64 %435, 6
  %437 = getelementptr inbounds nuw i8, ptr %425, i64 %436
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %438, i32 0, i32 3, i32 1)
  %439 = shl i64 %435, 3
  %440 = getelementptr inbounds nuw i8, ptr %2, i64 %439
  %441 = load i64, ptr %437, align 1
  %442 = load i64, ptr %440, align 1
  %443 = xor i64 %442, %441
  %444 = add i64 %428, %441
  %445 = lshr i64 %443, 32
  %446 = and i64 %443, 4294967295
  %447 = mul nuw i64 %446, %445
  %448 = add i64 %447, %427
  %449 = getelementptr inbounds nuw i8, ptr %437, i64 8
  %450 = load i64, ptr %449, align 1
  %451 = getelementptr inbounds nuw i8, ptr %440, i64 8
  %452 = load i64, ptr %451, align 1
  %453 = xor i64 %452, %450
  %454 = add i64 %448, %450
  %455 = lshr i64 %453, 32
  %456 = and i64 %453, 4294967295
  %457 = mul nuw i64 %456, %455
  %458 = add i64 %457, %444
  %459 = getelementptr inbounds nuw i8, ptr %437, i64 16
  %460 = load i64, ptr %459, align 1
  %461 = getelementptr inbounds nuw i8, ptr %440, i64 16
  %462 = load i64, ptr %461, align 1
  %463 = xor i64 %462, %460
  %464 = add i64 %434, %460
  %465 = lshr i64 %463, 32
  %466 = and i64 %463, 4294967295
  %467 = mul nuw i64 %466, %465
  %468 = add i64 %467, %433
  %469 = getelementptr inbounds nuw i8, ptr %437, i64 24
  %470 = load i64, ptr %469, align 1
  %471 = getelementptr inbounds nuw i8, ptr %440, i64 24
  %472 = load i64, ptr %471, align 1
  %473 = xor i64 %472, %470
  %474 = add i64 %468, %470
  %475 = lshr i64 %473, 32
  %476 = and i64 %473, 4294967295
  %477 = mul nuw i64 %476, %475
  %478 = add i64 %477, %464
  %479 = getelementptr inbounds nuw i8, ptr %437, i64 32
  %480 = load i64, ptr %479, align 1
  %481 = getelementptr inbounds nuw i8, ptr %440, i64 32
  %482 = load i64, ptr %481, align 1
  %483 = xor i64 %482, %480
  %484 = add i64 %432, %480
  %485 = lshr i64 %483, 32
  %486 = and i64 %483, 4294967295
  %487 = mul nuw i64 %486, %485
  %488 = add i64 %487, %431
  %489 = getelementptr inbounds nuw i8, ptr %437, i64 40
  %490 = load i64, ptr %489, align 1
  %491 = getelementptr inbounds nuw i8, ptr %440, i64 40
  %492 = load i64, ptr %491, align 1
  %493 = xor i64 %492, %490
  %494 = add i64 %488, %490
  %495 = lshr i64 %493, 32
  %496 = and i64 %493, 4294967295
  %497 = mul nuw i64 %496, %495
  %498 = add i64 %497, %484
  %499 = getelementptr inbounds nuw i8, ptr %437, i64 48
  %500 = load i64, ptr %499, align 1
  %501 = getelementptr inbounds nuw i8, ptr %440, i64 48
  %502 = load i64, ptr %501, align 1
  %503 = xor i64 %502, %500
  %504 = add i64 %430, %500
  %505 = lshr i64 %503, 32
  %506 = and i64 %503, 4294967295
  %507 = mul nuw i64 %506, %505
  %508 = add i64 %507, %429
  %509 = getelementptr inbounds nuw i8, ptr %437, i64 56
  %510 = load i64, ptr %509, align 1
  %511 = getelementptr inbounds nuw i8, ptr %440, i64 56
  %512 = load i64, ptr %511, align 1
  %513 = xor i64 %512, %510
  %514 = add i64 %508, %510
  %515 = lshr i64 %513, 32
  %516 = and i64 %513, 4294967295
  %517 = mul nuw i64 %516, %515
  %518 = add i64 %517, %504
  %519 = add nuw nsw i64 %435, 1
  %520 = icmp eq i64 %519, %383
  br i1 %520, label %521, label %426, !llvm.loop !32

521:                                              ; preds = %426
  %522 = lshr i64 %454, 47
  %523 = xor i64 %399, %522
  %524 = xor i64 %523, %454
  %525 = mul i64 %524, 2654435761
  %526 = lshr i64 %458, 47
  %527 = xor i64 %401, %526
  %528 = xor i64 %527, %458
  %529 = mul i64 %528, 2654435761
  %530 = lshr i64 %474, 47
  %531 = xor i64 %403, %530
  %532 = xor i64 %531, %474
  %533 = mul i64 %532, 2654435761
  %534 = lshr i64 %478, 47
  %535 = xor i64 %405, %534
  %536 = xor i64 %535, %478
  %537 = mul i64 %536, 2654435761
  %538 = lshr i64 %494, 47
  %539 = xor i64 %407, %538
  %540 = xor i64 %539, %494
  %541 = mul i64 %540, 2654435761
  %542 = lshr i64 %498, 47
  %543 = xor i64 %409, %542
  %544 = xor i64 %543, %498
  %545 = mul i64 %544, 2654435761
  %546 = lshr i64 %514, 47
  %547 = xor i64 %411, %546
  %548 = xor i64 %547, %514
  %549 = mul i64 %548, 2654435761
  %550 = lshr i64 %518, 47
  %551 = xor i64 %413, %550
  %552 = xor i64 %551, %518
  %553 = mul i64 %552, 2654435761
  %554 = add nuw i64 %423, 1
  %555 = icmp ult i64 %554, %386
  br i1 %555, label %414, label %556, !llvm.loop !33

556:                                              ; preds = %521
  store i64 %525, ptr %5, align 8, !noalias !126
  store i64 %529, ptr %392, align 8, !noalias !126
  store i64 %533, ptr %394, align 8, !noalias !126
  store i64 %537, ptr %393, align 8, !noalias !126
  store i64 %541, ptr %396, align 8, !noalias !126
  store i64 %545, ptr %395, align 8, !noalias !126
  store i64 %549, ptr %398, align 8, !noalias !126
  store i64 %553, ptr %397, align 8, !noalias !126
  br label %557

557:                                              ; preds = %556, %381
  %558 = phi i64 [ 3266489917, %381 ], [ %525, %556 ]
  %559 = phi i64 [ -7046029288634856825, %381 ], [ %529, %556 ]
  %560 = phi i64 [ 2870177450012600261, %381 ], [ %549, %556 ]
  %561 = phi i64 [ 2654435761, %381 ], [ %553, %556 ]
  %562 = phi i64 [ -8796714831421723037, %381 ], [ %541, %556 ]
  %563 = phi i64 [ 2246822519, %381 ], [ %545, %556 ]
  %564 = phi i64 [ -4417276706812531889, %381 ], [ %533, %556 ]
  %565 = phi i64 [ 1609587929392839161, %381 ], [ %537, %556 ]
  %566 = mul i64 %386, %384
  %567 = lshr i64 %387, 6
  %568 = lshr i64 %3, 3
  %569 = icmp samesign ule i64 %567, %568
  tail call void @llvm.assume(i1 %569)
  %570 = getelementptr inbounds nuw i8, ptr %0, i64 %566
  %571 = icmp ult i64 %387, 64
  br i1 %571, label %676, label %572

572:                                              ; preds = %557
  %573 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %574 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %575 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %576 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %577 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %578 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %579 = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %580

580:                                              ; preds = %572, %580
  %581 = phi i64 [ %608, %580 ], [ %558, %572 ]
  %582 = phi i64 [ %612, %580 ], [ %559, %572 ]
  %583 = phi i64 [ %668, %580 ], [ %560, %572 ]
  %584 = phi i64 [ %672, %580 ], [ %561, %572 ]
  %585 = phi i64 [ %648, %580 ], [ %562, %572 ]
  %586 = phi i64 [ %652, %580 ], [ %563, %572 ]
  %587 = phi i64 [ %628, %580 ], [ %564, %572 ]
  %588 = phi i64 [ %632, %580 ], [ %565, %572 ]
  %589 = phi i64 [ %673, %580 ], [ 0, %572 ]
  %590 = shl i64 %589, 6
  %591 = getelementptr inbounds nuw i8, ptr %570, i64 %590
  %592 = getelementptr inbounds nuw i8, ptr %591, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %592, i32 0, i32 3, i32 1)
  %593 = shl i64 %589, 3
  %594 = getelementptr inbounds nuw i8, ptr %2, i64 %593
  %595 = load i64, ptr %591, align 1
  %596 = load i64, ptr %594, align 1
  %597 = xor i64 %596, %595
  %598 = add i64 %582, %595
  %599 = lshr i64 %597, 32
  %600 = and i64 %597, 4294967295
  %601 = mul nuw i64 %600, %599
  %602 = add i64 %601, %581
  %603 = getelementptr inbounds nuw i8, ptr %591, i64 8
  %604 = load i64, ptr %603, align 1
  %605 = getelementptr inbounds nuw i8, ptr %594, i64 8
  %606 = load i64, ptr %605, align 1
  %607 = xor i64 %606, %604
  %608 = add i64 %602, %604
  %609 = lshr i64 %607, 32
  %610 = and i64 %607, 4294967295
  %611 = mul nuw i64 %610, %609
  %612 = add i64 %611, %598
  %613 = getelementptr inbounds nuw i8, ptr %591, i64 16
  %614 = load i64, ptr %613, align 1
  %615 = getelementptr inbounds nuw i8, ptr %594, i64 16
  %616 = load i64, ptr %615, align 1
  %617 = xor i64 %616, %614
  %618 = add i64 %588, %614
  %619 = lshr i64 %617, 32
  %620 = and i64 %617, 4294967295
  %621 = mul nuw i64 %620, %619
  %622 = add i64 %621, %587
  %623 = getelementptr inbounds nuw i8, ptr %591, i64 24
  %624 = load i64, ptr %623, align 1
  %625 = getelementptr inbounds nuw i8, ptr %594, i64 24
  %626 = load i64, ptr %625, align 1
  %627 = xor i64 %626, %624
  %628 = add i64 %622, %624
  %629 = lshr i64 %627, 32
  %630 = and i64 %627, 4294967295
  %631 = mul nuw i64 %630, %629
  %632 = add i64 %631, %618
  %633 = getelementptr inbounds nuw i8, ptr %591, i64 32
  %634 = load i64, ptr %633, align 1
  %635 = getelementptr inbounds nuw i8, ptr %594, i64 32
  %636 = load i64, ptr %635, align 1
  %637 = xor i64 %636, %634
  %638 = add i64 %586, %634
  %639 = lshr i64 %637, 32
  %640 = and i64 %637, 4294967295
  %641 = mul nuw i64 %640, %639
  %642 = add i64 %641, %585
  %643 = getelementptr inbounds nuw i8, ptr %591, i64 40
  %644 = load i64, ptr %643, align 1
  %645 = getelementptr inbounds nuw i8, ptr %594, i64 40
  %646 = load i64, ptr %645, align 1
  %647 = xor i64 %646, %644
  %648 = add i64 %642, %644
  %649 = lshr i64 %647, 32
  %650 = and i64 %647, 4294967295
  %651 = mul nuw i64 %650, %649
  %652 = add i64 %651, %638
  %653 = getelementptr inbounds nuw i8, ptr %591, i64 48
  %654 = load i64, ptr %653, align 1
  %655 = getelementptr inbounds nuw i8, ptr %594, i64 48
  %656 = load i64, ptr %655, align 1
  %657 = xor i64 %656, %654
  %658 = add i64 %584, %654
  %659 = lshr i64 %657, 32
  %660 = and i64 %657, 4294967295
  %661 = mul nuw i64 %660, %659
  %662 = add i64 %661, %583
  %663 = getelementptr inbounds nuw i8, ptr %591, i64 56
  %664 = load i64, ptr %663, align 1
  %665 = getelementptr inbounds nuw i8, ptr %594, i64 56
  %666 = load i64, ptr %665, align 1
  %667 = xor i64 %666, %664
  %668 = add i64 %662, %664
  %669 = lshr i64 %667, 32
  %670 = and i64 %667, 4294967295
  %671 = mul nuw i64 %670, %669
  %672 = add i64 %671, %658
  %673 = add nuw nsw i64 %589, 1
  %674 = icmp samesign ult i64 %673, %567
  br i1 %674, label %580, label %675, !llvm.loop !32

675:                                              ; preds = %580
  store i64 %608, ptr %5, align 8, !alias.scope !133, !noalias !136
  store i64 %612, ptr %573, align 8, !alias.scope !133, !noalias !136
  store i64 %628, ptr %575, align 8, !alias.scope !133, !noalias !136
  store i64 %632, ptr %574, align 8, !alias.scope !133, !noalias !136
  store i64 %648, ptr %577, align 8, !alias.scope !133, !noalias !136
  store i64 %652, ptr %576, align 8, !alias.scope !133, !noalias !136
  store i64 %668, ptr %579, align 8, !alias.scope !133, !noalias !136
  store i64 %672, ptr %578, align 8, !alias.scope !133, !noalias !136
  br label %676

676:                                              ; preds = %675, %557
  %677 = phi i64 [ %560, %557 ], [ %668, %675 ]
  %678 = phi i64 [ %561, %557 ], [ %672, %675 ]
  %679 = phi i64 [ %562, %557 ], [ %648, %675 ]
  %680 = phi i64 [ %563, %557 ], [ %652, %675 ]
  %681 = phi i64 [ %564, %557 ], [ %628, %675 ]
  %682 = phi i64 [ %565, %557 ], [ %632, %675 ]
  %683 = phi i64 [ %558, %557 ], [ %608, %675 ]
  %684 = phi i64 [ %559, %557 ], [ %612, %675 ]
  %685 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %686 = getelementptr inbounds i8, ptr %685, i64 -64
  %687 = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %688 = getelementptr inbounds i8, ptr %687, i64 -71
  %689 = load i64, ptr %686, align 1
  %690 = load i64, ptr %688, align 1
  %691 = xor i64 %690, %689
  %692 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %693 = add i64 %684, %689
  %694 = lshr i64 %691, 32
  %695 = and i64 %691, 4294967295
  %696 = mul nuw i64 %695, %694
  %697 = add i64 %696, %683
  %698 = getelementptr inbounds i8, ptr %685, i64 -56
  %699 = load i64, ptr %698, align 1
  %700 = getelementptr inbounds i8, ptr %687, i64 -63
  %701 = load i64, ptr %700, align 1
  %702 = xor i64 %701, %699
  %703 = add i64 %697, %699
  store i64 %703, ptr %5, align 8, !alias.scope !139, !noalias !142
  %704 = lshr i64 %702, 32
  %705 = and i64 %702, 4294967295
  %706 = mul nuw i64 %705, %704
  %707 = add i64 %706, %693
  store i64 %707, ptr %692, align 8, !alias.scope !139, !noalias !142
  %708 = getelementptr inbounds i8, ptr %685, i64 -48
  %709 = load i64, ptr %708, align 1
  %710 = getelementptr inbounds i8, ptr %687, i64 -55
  %711 = load i64, ptr %710, align 1
  %712 = xor i64 %711, %709
  %713 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %714 = add i64 %682, %709
  %715 = lshr i64 %712, 32
  %716 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %717 = and i64 %712, 4294967295
  %718 = mul nuw i64 %717, %715
  %719 = add i64 %718, %681
  %720 = getelementptr inbounds i8, ptr %685, i64 -40
  %721 = load i64, ptr %720, align 1
  %722 = getelementptr inbounds i8, ptr %687, i64 -47
  %723 = load i64, ptr %722, align 1
  %724 = xor i64 %723, %721
  %725 = add i64 %719, %721
  store i64 %725, ptr %716, align 8, !alias.scope !139, !noalias !142
  %726 = lshr i64 %724, 32
  %727 = and i64 %724, 4294967295
  %728 = mul nuw i64 %727, %726
  %729 = add i64 %728, %714
  store i64 %729, ptr %713, align 8, !alias.scope !139, !noalias !142
  %730 = getelementptr inbounds i8, ptr %685, i64 -32
  %731 = load i64, ptr %730, align 1
  %732 = getelementptr inbounds i8, ptr %687, i64 -39
  %733 = load i64, ptr %732, align 1
  %734 = xor i64 %733, %731
  %735 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %736 = add i64 %680, %731
  %737 = lshr i64 %734, 32
  %738 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %739 = and i64 %734, 4294967295
  %740 = mul nuw i64 %739, %737
  %741 = add i64 %740, %679
  %742 = getelementptr inbounds i8, ptr %685, i64 -24
  %743 = load i64, ptr %742, align 1
  %744 = getelementptr inbounds i8, ptr %687, i64 -31
  %745 = load i64, ptr %744, align 1
  %746 = xor i64 %745, %743
  %747 = add i64 %741, %743
  store i64 %747, ptr %738, align 8, !alias.scope !139, !noalias !142
  %748 = lshr i64 %746, 32
  %749 = and i64 %746, 4294967295
  %750 = mul nuw i64 %749, %748
  %751 = add i64 %750, %736
  store i64 %751, ptr %735, align 8, !alias.scope !139, !noalias !142
  %752 = getelementptr inbounds i8, ptr %685, i64 -16
  %753 = load i64, ptr %752, align 1
  %754 = getelementptr inbounds i8, ptr %687, i64 -23
  %755 = load i64, ptr %754, align 1
  %756 = xor i64 %755, %753
  %757 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %758 = add i64 %678, %753
  %759 = lshr i64 %756, 32
  %760 = getelementptr inbounds nuw i8, ptr %5, i64 48
  %761 = and i64 %756, 4294967295
  %762 = mul nuw i64 %761, %759
  %763 = add i64 %762, %677
  %764 = getelementptr inbounds i8, ptr %685, i64 -8
  %765 = load i64, ptr %764, align 1
  %766 = getelementptr inbounds i8, ptr %687, i64 -15
  %767 = load i64, ptr %766, align 1
  %768 = xor i64 %767, %765
  %769 = add i64 %763, %765
  store i64 %769, ptr %760, align 8, !alias.scope !139, !noalias !142
  %770 = lshr i64 %768, 32
  %771 = and i64 %768, 4294967295
  %772 = mul nuw i64 %771, %770
  %773 = add i64 %772, %758
  store i64 %773, ptr %757, align 8, !alias.scope !139, !noalias !142
  %774 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %5, ptr noundef %2, i64 noundef %3, i64 noundef %1) #43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #39, !noalias !126
  br label %775

775:                                              ; preds = %157, %108, %65, %10, %318, %379, %676
  %776 = phi { i64, i64 } [ %376, %318 ], [ %380, %379 ], [ %774, %676 ], [ %62, %10 ], [ %105, %65 ], [ %156, %108 ], [ %185, %157 ]
  ret { i64, i64 } %776
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #32

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH3_64bits_digest(ptr nocapture noundef nonnull readonly %0) unnamed_addr #27 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = select i1 %5, ptr %6, ptr %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %9 = load i64, ptr %8, align 16
  %10 = icmp ugt i64 %9, 240
  br i1 %10, label %11, label %495

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #39
  %12 = load i64, ptr %0, align 64
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load i64, ptr %15, align 16
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %20 = load i64, ptr %19, align 32
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %24 = load i64, ptr %23, align 16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %28 = load i32, ptr %27, align 64
  %29 = icmp ugt i32 %28, 63
  br i1 %29, label %30, label %336

30:                                               ; preds = %11
  %31 = add i32 %28, -1
  %32 = lshr i32 %31, 6
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %39 = shl i64 %35, 3
  %40 = getelementptr inbounds nuw i8, ptr %7, i64 %39
  %41 = sub i64 %37, %35
  %42 = icmp ugt i64 %41, %33
  br i1 %42, label %216, label %43

43:                                               ; preds = %30
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %45 = load i64, ptr %44, align 32
  %46 = getelementptr inbounds nuw i8, ptr %7, i64 %45
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %49 = load i64, ptr %48, align 1
  %50 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %51 = load i64, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %46, i64 24
  %53 = load i64, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %55 = load i64, ptr %54, align 1
  %56 = getelementptr inbounds nuw i8, ptr %46, i64 40
  %57 = load i64, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %46, i64 48
  %59 = load i64, ptr %58, align 1
  %60 = getelementptr inbounds nuw i8, ptr %46, i64 56
  %61 = load i64, ptr %60, align 1
  br label %62

62:                                               ; preds = %43, %171
  %63 = phi i64 [ %26, %43 ], [ %211, %171 ]
  %64 = phi i64 [ %24, %43 ], [ %207, %171 ]
  %65 = phi i64 [ %22, %43 ], [ %203, %171 ]
  %66 = phi i64 [ %20, %43 ], [ %199, %171 ]
  %67 = phi i64 [ %18, %43 ], [ %195, %171 ]
  %68 = phi i64 [ %16, %43 ], [ %191, %171 ]
  %69 = phi i64 [ %14, %43 ], [ %187, %171 ]
  %70 = phi i64 [ %12, %43 ], [ %183, %171 ]
  %71 = phi i64 [ %33, %43 ], [ %214, %171 ]
  %72 = phi ptr [ %38, %43 ], [ %213, %171 ]
  %73 = phi ptr [ %40, %43 ], [ %7, %171 ]
  %74 = phi i64 [ %41, %43 ], [ %37, %171 ]
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %171, label %76

76:                                               ; preds = %62, %76
  %77 = phi i64 [ %168, %76 ], [ %63, %62 ]
  %78 = phi i64 [ %164, %76 ], [ %64, %62 ]
  %79 = phi i64 [ %148, %76 ], [ %65, %62 ]
  %80 = phi i64 [ %144, %76 ], [ %66, %62 ]
  %81 = phi i64 [ %128, %76 ], [ %67, %62 ]
  %82 = phi i64 [ %124, %76 ], [ %68, %62 ]
  %83 = phi i64 [ %108, %76 ], [ %69, %62 ]
  %84 = phi i64 [ %104, %76 ], [ %70, %62 ]
  %85 = phi i64 [ %169, %76 ], [ 0, %62 ]
  %86 = shl i64 %85, 6
  %87 = getelementptr inbounds nuw i8, ptr %72, i64 %86
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %88, i32 0, i32 3, i32 1), !noalias !145
  %89 = shl i64 %85, 3
  %90 = getelementptr inbounds nuw i8, ptr %73, i64 %89
  %91 = load i64, ptr %87, align 1
  %92 = load i64, ptr %90, align 1
  %93 = xor i64 %92, %91
  %94 = add i64 %83, %91
  %95 = lshr i64 %93, 32
  %96 = and i64 %93, 4294967295
  %97 = mul nuw i64 %96, %95
  %98 = add i64 %97, %84
  %99 = getelementptr inbounds nuw i8, ptr %87, i64 8
  %100 = load i64, ptr %99, align 1
  %101 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %102 = load i64, ptr %101, align 1
  %103 = xor i64 %102, %100
  %104 = add i64 %98, %100
  %105 = lshr i64 %103, 32
  %106 = and i64 %103, 4294967295
  %107 = mul nuw i64 %106, %105
  %108 = add i64 %107, %94
  %109 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %110 = load i64, ptr %109, align 1
  %111 = getelementptr inbounds nuw i8, ptr %90, i64 16
  %112 = load i64, ptr %111, align 1
  %113 = xor i64 %112, %110
  %114 = add i64 %81, %110
  %115 = lshr i64 %113, 32
  %116 = and i64 %113, 4294967295
  %117 = mul nuw i64 %116, %115
  %118 = add i64 %117, %82
  %119 = getelementptr inbounds nuw i8, ptr %87, i64 24
  %120 = load i64, ptr %119, align 1
  %121 = getelementptr inbounds nuw i8, ptr %90, i64 24
  %122 = load i64, ptr %121, align 1
  %123 = xor i64 %122, %120
  %124 = add i64 %118, %120
  %125 = lshr i64 %123, 32
  %126 = and i64 %123, 4294967295
  %127 = mul nuw i64 %126, %125
  %128 = add i64 %127, %114
  %129 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %130 = load i64, ptr %129, align 1
  %131 = getelementptr inbounds nuw i8, ptr %90, i64 32
  %132 = load i64, ptr %131, align 1
  %133 = xor i64 %132, %130
  %134 = add i64 %79, %130
  %135 = lshr i64 %133, 32
  %136 = and i64 %133, 4294967295
  %137 = mul nuw i64 %136, %135
  %138 = add i64 %137, %80
  %139 = getelementptr inbounds nuw i8, ptr %87, i64 40
  %140 = load i64, ptr %139, align 1
  %141 = getelementptr inbounds nuw i8, ptr %90, i64 40
  %142 = load i64, ptr %141, align 1
  %143 = xor i64 %142, %140
  %144 = add i64 %138, %140
  %145 = lshr i64 %143, 32
  %146 = and i64 %143, 4294967295
  %147 = mul nuw i64 %146, %145
  %148 = add i64 %147, %134
  %149 = getelementptr inbounds nuw i8, ptr %87, i64 48
  %150 = load i64, ptr %149, align 1
  %151 = getelementptr inbounds nuw i8, ptr %90, i64 48
  %152 = load i64, ptr %151, align 1
  %153 = xor i64 %152, %150
  %154 = add i64 %77, %150
  %155 = lshr i64 %153, 32
  %156 = and i64 %153, 4294967295
  %157 = mul nuw i64 %156, %155
  %158 = add i64 %157, %78
  %159 = getelementptr inbounds nuw i8, ptr %87, i64 56
  %160 = load i64, ptr %159, align 1
  %161 = getelementptr inbounds nuw i8, ptr %90, i64 56
  %162 = load i64, ptr %161, align 1
  %163 = xor i64 %162, %160
  %164 = add i64 %158, %160
  %165 = lshr i64 %163, 32
  %166 = and i64 %163, 4294967295
  %167 = mul nuw i64 %166, %165
  %168 = add i64 %167, %154
  %169 = add nuw i64 %85, 1
  %170 = icmp eq i64 %169, %74
  br i1 %170, label %171, label %76, !llvm.loop !32

171:                                              ; preds = %76, %62
  %172 = phi i64 [ %63, %62 ], [ %168, %76 ]
  %173 = phi i64 [ %64, %62 ], [ %164, %76 ]
  %174 = phi i64 [ %65, %62 ], [ %148, %76 ]
  %175 = phi i64 [ %66, %62 ], [ %144, %76 ]
  %176 = phi i64 [ %67, %62 ], [ %128, %76 ]
  %177 = phi i64 [ %68, %62 ], [ %124, %76 ]
  %178 = phi i64 [ %69, %62 ], [ %108, %76 ]
  %179 = phi i64 [ %70, %62 ], [ %104, %76 ]
  %180 = lshr i64 %179, 47
  %181 = xor i64 %47, %180
  %182 = xor i64 %181, %179
  %183 = mul i64 %182, 2654435761
  %184 = lshr i64 %178, 47
  %185 = xor i64 %49, %184
  %186 = xor i64 %185, %178
  %187 = mul i64 %186, 2654435761
  %188 = lshr i64 %177, 47
  %189 = xor i64 %51, %188
  %190 = xor i64 %189, %177
  %191 = mul i64 %190, 2654435761
  %192 = lshr i64 %176, 47
  %193 = xor i64 %53, %192
  %194 = xor i64 %193, %176
  %195 = mul i64 %194, 2654435761
  %196 = lshr i64 %175, 47
  %197 = xor i64 %55, %196
  %198 = xor i64 %197, %175
  %199 = mul i64 %198, 2654435761
  %200 = lshr i64 %174, 47
  %201 = xor i64 %57, %200
  %202 = xor i64 %201, %174
  %203 = mul i64 %202, 2654435761
  %204 = lshr i64 %173, 47
  %205 = xor i64 %59, %204
  %206 = xor i64 %205, %173
  %207 = mul i64 %206, 2654435761
  %208 = lshr i64 %172, 47
  %209 = xor i64 %61, %208
  %210 = xor i64 %209, %172
  %211 = mul i64 %210, 2654435761
  %212 = shl i64 %74, 6
  %213 = getelementptr inbounds nuw i8, ptr %72, i64 %212
  %214 = sub i64 %71, %74
  %215 = icmp ult i64 %214, %37
  br i1 %215, label %216, label %62, !llvm.loop !148

216:                                              ; preds = %171, %30
  %217 = phi i64 [ %26, %30 ], [ %211, %171 ]
  %218 = phi i64 [ %24, %30 ], [ %207, %171 ]
  %219 = phi i64 [ %22, %30 ], [ %203, %171 ]
  %220 = phi i64 [ %20, %30 ], [ %199, %171 ]
  %221 = phi i64 [ %18, %30 ], [ %195, %171 ]
  %222 = phi i64 [ %16, %30 ], [ %191, %171 ]
  %223 = phi i64 [ %14, %30 ], [ %187, %171 ]
  %224 = phi i64 [ %12, %30 ], [ %183, %171 ]
  %225 = phi i64 [ %33, %30 ], [ %214, %171 ]
  %226 = phi ptr [ %38, %30 ], [ %213, %171 ]
  %227 = phi ptr [ %40, %30 ], [ %7, %171 ]
  %228 = icmp eq i64 %225, 0
  br i1 %228, label %324, label %229

229:                                              ; preds = %216, %229
  %230 = phi i64 [ %321, %229 ], [ %217, %216 ]
  %231 = phi i64 [ %317, %229 ], [ %218, %216 ]
  %232 = phi i64 [ %301, %229 ], [ %219, %216 ]
  %233 = phi i64 [ %297, %229 ], [ %220, %216 ]
  %234 = phi i64 [ %281, %229 ], [ %221, %216 ]
  %235 = phi i64 [ %277, %229 ], [ %222, %216 ]
  %236 = phi i64 [ %261, %229 ], [ %223, %216 ]
  %237 = phi i64 [ %257, %229 ], [ %224, %216 ]
  %238 = phi i64 [ %322, %229 ], [ 0, %216 ]
  %239 = shl i64 %238, 6
  %240 = getelementptr inbounds nuw i8, ptr %226, i64 %239
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %241, i32 0, i32 3, i32 1), !noalias !145
  %242 = shl i64 %238, 3
  %243 = getelementptr inbounds nuw i8, ptr %227, i64 %242
  %244 = load i64, ptr %240, align 1
  %245 = load i64, ptr %243, align 1
  %246 = xor i64 %245, %244
  %247 = add i64 %236, %244
  %248 = lshr i64 %246, 32
  %249 = and i64 %246, 4294967295
  %250 = mul nuw i64 %249, %248
  %251 = add i64 %250, %237
  %252 = getelementptr inbounds nuw i8, ptr %240, i64 8
  %253 = load i64, ptr %252, align 1
  %254 = getelementptr inbounds nuw i8, ptr %243, i64 8
  %255 = load i64, ptr %254, align 1
  %256 = xor i64 %255, %253
  %257 = add i64 %251, %253
  %258 = lshr i64 %256, 32
  %259 = and i64 %256, 4294967295
  %260 = mul nuw i64 %259, %258
  %261 = add i64 %260, %247
  %262 = getelementptr inbounds nuw i8, ptr %240, i64 16
  %263 = load i64, ptr %262, align 1
  %264 = getelementptr inbounds nuw i8, ptr %243, i64 16
  %265 = load i64, ptr %264, align 1
  %266 = xor i64 %265, %263
  %267 = add i64 %234, %263
  %268 = lshr i64 %266, 32
  %269 = and i64 %266, 4294967295
  %270 = mul nuw i64 %269, %268
  %271 = add i64 %270, %235
  %272 = getelementptr inbounds nuw i8, ptr %240, i64 24
  %273 = load i64, ptr %272, align 1
  %274 = getelementptr inbounds nuw i8, ptr %243, i64 24
  %275 = load i64, ptr %274, align 1
  %276 = xor i64 %275, %273
  %277 = add i64 %271, %273
  %278 = lshr i64 %276, 32
  %279 = and i64 %276, 4294967295
  %280 = mul nuw i64 %279, %278
  %281 = add i64 %280, %267
  %282 = getelementptr inbounds nuw i8, ptr %240, i64 32
  %283 = load i64, ptr %282, align 1
  %284 = getelementptr inbounds nuw i8, ptr %243, i64 32
  %285 = load i64, ptr %284, align 1
  %286 = xor i64 %285, %283
  %287 = add i64 %232, %283
  %288 = lshr i64 %286, 32
  %289 = and i64 %286, 4294967295
  %290 = mul nuw i64 %289, %288
  %291 = add i64 %290, %233
  %292 = getelementptr inbounds nuw i8, ptr %240, i64 40
  %293 = load i64, ptr %292, align 1
  %294 = getelementptr inbounds nuw i8, ptr %243, i64 40
  %295 = load i64, ptr %294, align 1
  %296 = xor i64 %295, %293
  %297 = add i64 %291, %293
  %298 = lshr i64 %296, 32
  %299 = and i64 %296, 4294967295
  %300 = mul nuw i64 %299, %298
  %301 = add i64 %300, %287
  %302 = getelementptr inbounds nuw i8, ptr %240, i64 48
  %303 = load i64, ptr %302, align 1
  %304 = getelementptr inbounds nuw i8, ptr %243, i64 48
  %305 = load i64, ptr %304, align 1
  %306 = xor i64 %305, %303
  %307 = add i64 %230, %303
  %308 = lshr i64 %306, 32
  %309 = and i64 %306, 4294967295
  %310 = mul nuw i64 %309, %308
  %311 = add i64 %310, %231
  %312 = getelementptr inbounds nuw i8, ptr %240, i64 56
  %313 = load i64, ptr %312, align 1
  %314 = getelementptr inbounds nuw i8, ptr %243, i64 56
  %315 = load i64, ptr %314, align 1
  %316 = xor i64 %315, %313
  %317 = add i64 %311, %313
  %318 = lshr i64 %316, 32
  %319 = and i64 %316, 4294967295
  %320 = mul nuw i64 %319, %318
  %321 = add i64 %320, %307
  %322 = add nuw i64 %238, 1
  %323 = icmp eq i64 %322, %225
  br i1 %323, label %324, label %229, !llvm.loop !32

324:                                              ; preds = %229, %216
  %325 = phi i64 [ %217, %216 ], [ %321, %229 ]
  %326 = phi i64 [ %218, %216 ], [ %317, %229 ]
  %327 = phi i64 [ %219, %216 ], [ %301, %229 ]
  %328 = phi i64 [ %220, %216 ], [ %297, %229 ]
  %329 = phi i64 [ %221, %216 ], [ %281, %229 ]
  %330 = phi i64 [ %222, %216 ], [ %277, %229 ]
  %331 = phi i64 [ %223, %216 ], [ %261, %229 ]
  %332 = phi i64 [ %224, %216 ], [ %257, %229 ]
  %333 = zext i32 %28 to i64
  %334 = getelementptr inbounds nuw i8, ptr %38, i64 %333
  %335 = getelementptr inbounds i8, ptr %334, i64 -64
  br label %345

336:                                              ; preds = %11
  %337 = sub nuw nsw i32 64, %28
  %338 = zext nneg i32 %337 to i64
  %339 = icmp ne i32 %28, 0
  tail call void @llvm.assume(i1 %339)
  %340 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %341 = sub nsw i64 0, %338
  %342 = getelementptr inbounds i8, ptr %27, i64 %341
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %342, i64 %338, i1 false)
  %343 = getelementptr inbounds nuw i8, ptr %2, i64 %338
  %344 = zext nneg i32 %28 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %343, ptr nonnull align 64 %340, i64 %344, i1 false)
  br label %345

345:                                              ; preds = %336, %324
  %346 = phi i64 [ %325, %324 ], [ %26, %336 ]
  %347 = phi i64 [ %326, %324 ], [ %24, %336 ]
  %348 = phi i64 [ %327, %324 ], [ %22, %336 ]
  %349 = phi i64 [ %328, %324 ], [ %20, %336 ]
  %350 = phi i64 [ %329, %324 ], [ %18, %336 ]
  %351 = phi i64 [ %330, %324 ], [ %16, %336 ]
  %352 = phi i64 [ %331, %324 ], [ %14, %336 ]
  %353 = phi i64 [ %332, %324 ], [ %12, %336 ]
  %354 = phi ptr [ %335, %324 ], [ %2, %336 ]
  %355 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %356 = load i64, ptr %355, align 32
  %357 = getelementptr inbounds nuw i8, ptr %7, i64 %356
  %358 = getelementptr inbounds i8, ptr %357, i64 -7
  %359 = load i64, ptr %354, align 1
  %360 = load i64, ptr %358, align 1
  %361 = xor i64 %360, %359
  %362 = add i64 %352, %359
  %363 = lshr i64 %361, 32
  %364 = and i64 %361, 4294967295
  %365 = mul nuw i64 %364, %363
  %366 = add i64 %365, %353
  %367 = getelementptr inbounds nuw i8, ptr %354, i64 8
  %368 = load i64, ptr %367, align 1
  %369 = getelementptr inbounds nuw i8, ptr %357, i64 1
  %370 = load i64, ptr %369, align 1
  %371 = xor i64 %370, %368
  %372 = add i64 %366, %368
  %373 = lshr i64 %371, 32
  %374 = and i64 %371, 4294967295
  %375 = mul nuw i64 %374, %373
  %376 = add i64 %375, %362
  %377 = getelementptr inbounds nuw i8, ptr %354, i64 16
  %378 = load i64, ptr %377, align 1
  %379 = getelementptr inbounds nuw i8, ptr %357, i64 9
  %380 = load i64, ptr %379, align 1
  %381 = xor i64 %380, %378
  %382 = add i64 %350, %378
  %383 = lshr i64 %381, 32
  %384 = and i64 %381, 4294967295
  %385 = mul nuw i64 %384, %383
  %386 = add i64 %385, %351
  %387 = getelementptr inbounds nuw i8, ptr %354, i64 24
  %388 = load i64, ptr %387, align 1
  %389 = getelementptr inbounds nuw i8, ptr %357, i64 17
  %390 = load i64, ptr %389, align 1
  %391 = xor i64 %390, %388
  %392 = add i64 %386, %388
  %393 = lshr i64 %391, 32
  %394 = and i64 %391, 4294967295
  %395 = mul nuw i64 %394, %393
  %396 = add i64 %395, %382
  %397 = getelementptr inbounds nuw i8, ptr %354, i64 32
  %398 = load i64, ptr %397, align 1
  %399 = getelementptr inbounds nuw i8, ptr %357, i64 25
  %400 = load i64, ptr %399, align 1
  %401 = xor i64 %400, %398
  %402 = add i64 %348, %398
  %403 = lshr i64 %401, 32
  %404 = and i64 %401, 4294967295
  %405 = mul nuw i64 %404, %403
  %406 = add i64 %405, %349
  %407 = getelementptr inbounds nuw i8, ptr %354, i64 40
  %408 = load i64, ptr %407, align 1
  %409 = getelementptr inbounds nuw i8, ptr %357, i64 33
  %410 = load i64, ptr %409, align 1
  %411 = xor i64 %410, %408
  %412 = add i64 %406, %408
  %413 = lshr i64 %411, 32
  %414 = and i64 %411, 4294967295
  %415 = mul nuw i64 %414, %413
  %416 = add i64 %415, %402
  %417 = getelementptr inbounds nuw i8, ptr %354, i64 48
  %418 = load i64, ptr %417, align 1
  %419 = getelementptr inbounds nuw i8, ptr %357, i64 41
  %420 = load i64, ptr %419, align 1
  %421 = xor i64 %420, %418
  %422 = add i64 %346, %418
  %423 = lshr i64 %421, 32
  %424 = and i64 %421, 4294967295
  %425 = mul nuw i64 %424, %423
  %426 = add i64 %425, %347
  %427 = getelementptr inbounds nuw i8, ptr %354, i64 56
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr inbounds nuw i8, ptr %357, i64 49
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %428
  %432 = add i64 %426, %428
  %433 = lshr i64 %431, 32
  %434 = and i64 %431, 4294967295
  %435 = mul nuw i64 %434, %433
  %436 = add i64 %435, %422
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #39
  %437 = getelementptr inbounds nuw i8, ptr %7, i64 11
  %438 = mul i64 %9, -7046029288634856825
  %439 = load i64, ptr %437, align 1, !alias.scope !149, !noalias !154
  %440 = xor i64 %439, %372
  %441 = getelementptr inbounds nuw i8, ptr %7, i64 19
  %442 = load i64, ptr %441, align 1, !alias.scope !149, !noalias !154
  %443 = xor i64 %442, %376
  %444 = zext i64 %440 to i128
  %445 = zext i64 %443 to i128
  %446 = mul nuw i128 %445, %444
  %447 = lshr i128 %446, 64
  %448 = xor i128 %447, %446
  %449 = trunc i128 %448 to i64
  %450 = add i64 %438, %449
  %451 = getelementptr inbounds nuw i8, ptr %7, i64 27
  %452 = load i64, ptr %451, align 1, !alias.scope !149, !noalias !154
  %453 = xor i64 %452, %392
  %454 = getelementptr inbounds nuw i8, ptr %7, i64 35
  %455 = load i64, ptr %454, align 1, !alias.scope !149, !noalias !154
  %456 = xor i64 %455, %396
  %457 = zext i64 %453 to i128
  %458 = zext i64 %456 to i128
  %459 = mul nuw i128 %458, %457
  %460 = lshr i128 %459, 64
  %461 = xor i128 %460, %459
  %462 = trunc i128 %461 to i64
  %463 = add i64 %450, %462
  %464 = getelementptr inbounds nuw i8, ptr %7, i64 43
  %465 = load i64, ptr %464, align 1, !alias.scope !149, !noalias !154
  %466 = xor i64 %465, %412
  %467 = getelementptr inbounds nuw i8, ptr %7, i64 51
  %468 = load i64, ptr %467, align 1, !alias.scope !149, !noalias !154
  %469 = xor i64 %468, %416
  %470 = zext i64 %466 to i128
  %471 = zext i64 %469 to i128
  %472 = mul nuw i128 %471, %470
  %473 = lshr i128 %472, 64
  %474 = xor i128 %473, %472
  %475 = trunc i128 %474 to i64
  %476 = add i64 %463, %475
  %477 = getelementptr inbounds nuw i8, ptr %7, i64 59
  %478 = load i64, ptr %477, align 1, !alias.scope !149, !noalias !154
  %479 = xor i64 %478, %432
  %480 = getelementptr inbounds nuw i8, ptr %7, i64 67
  %481 = load i64, ptr %480, align 1, !alias.scope !149, !noalias !154
  %482 = xor i64 %481, %436
  %483 = zext i64 %479 to i128
  %484 = zext i64 %482 to i128
  %485 = mul nuw i128 %484, %483
  %486 = lshr i128 %485, 64
  %487 = xor i128 %486, %485
  %488 = trunc i128 %487 to i64
  %489 = add i64 %476, %488
  %490 = lshr i64 %489, 37
  %491 = xor i64 %490, %489
  %492 = mul i64 %491, 1609587791953885689
  %493 = lshr i64 %492, 32
  %494 = xor i64 %493, %492
  br label %509

495:                                              ; preds = %1
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %497 = load i32, ptr %496, align 4
  %498 = icmp eq i32 %497, 0
  %499 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %498, label %504, label %500

500:                                              ; preds = %495
  %501 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %502 = load i64, ptr %501, align 8
  %503 = tail call fastcc i64 @XXH_INLINE_XXH3_64bits_withSeed(ptr nocapture noundef nonnull %499, i64 noundef %9, i64 noundef %502) #43
  br label %509

504:                                              ; preds = %495
  %505 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %506 = load i64, ptr %505, align 32
  %507 = add i64 %506, 64
  %508 = tail call fastcc i64 @XXH_INLINE_XXH3_64bits_withSecret(ptr nocapture noundef nonnull %499, i64 noundef %9, ptr nocapture noundef nonnull %7, i64 noundef %507) #43
  br label %509

509:                                              ; preds = %504, %500, %345
  %510 = phi i64 [ %494, %345 ], [ %503, %500 ], [ %508, %504 ]
  ret i64 %510
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @XXH3_update_regular(ptr nocapture noundef nonnull %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #33 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %6)
  br label %755

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %9 = load i64, ptr %8, align 16, !alias.scope !160, !noalias !157
  %10 = add i64 %9, %2
  store i64 %10, ptr %8, align 16, !alias.scope !160, !noalias !157
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %12 = load i32, ptr %11, align 64, !alias.scope !160, !noalias !157
  %13 = icmp ult i32 %12, 257
  tail call void @llvm.assume(i1 %13)
  %14 = sub nuw nsw i32 256, %12
  %15 = zext nneg i32 %14 to i64
  %16 = icmp ugt i64 %2, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %19 = zext nneg i32 %12 to i64
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr nonnull align 1 %1, i64 %2, i1 false), !alias.scope !162
  %21 = trunc nuw nsw i64 %2 to i32
  %22 = load i32, ptr %11, align 64, !alias.scope !160, !noalias !157
  %23 = add i32 %22, %21
  store i32 %23, ptr %11, align 64, !alias.scope !160, !noalias !157
  br label %755

24:                                               ; preds = %7
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %27 = load ptr, ptr %26, align 8, !alias.scope !160, !noalias !157
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %30 = select i1 %28, ptr %29, ptr %27
  %31 = icmp eq i32 %12, 0
  br i1 %31, label %388, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %34 = zext nneg i32 %12 to i64
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr nonnull align 1 %1, i64 %15, i1 false), !alias.scope !162
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 %15
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %39 = load i64, ptr %38, align 8, !alias.scope !160, !noalias !157
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %41 = load i64, ptr %40, align 32, !alias.scope !160, !noalias !157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %42 = load i64, ptr %37, align 8, !alias.scope !166, !noalias !168
  %43 = shl i64 %42, 3
  %44 = getelementptr inbounds nuw i8, ptr %30, i64 %43
  %45 = sub i64 %39, %42
  %46 = icmp ugt i64 %45, 4
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %46, label %48, label %66

48:                                               ; preds = %32
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %50 = load i64, ptr %49, align 8, !alias.scope !171, !noalias !174
  %51 = load i64, ptr %47, align 8, !alias.scope !171, !noalias !174
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %53 = load i64, ptr %52, align 8, !alias.scope !171, !noalias !174
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %55 = load i64, ptr %54, align 8, !alias.scope !171, !noalias !174
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %57 = load i64, ptr %56, align 8, !alias.scope !171, !noalias !174
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %59 = load i64, ptr %58, align 8, !alias.scope !171, !noalias !174
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %61 = load i64, ptr %60, align 8, !alias.scope !171, !noalias !174
  %62 = load i64, ptr %0, align 8, !alias.scope !171, !noalias !174
  %63 = ptrtoint ptr %0 to i64
  %64 = and i64 %63, 7
  %65 = icmp eq i64 %64, 0
  br label %269

66:                                               ; preds = %32
  %67 = getelementptr inbounds nuw i8, ptr %30, i64 %41
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %81 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %83 = getelementptr inbounds nuw i8, ptr %67, i64 16
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %85 = getelementptr inbounds nuw i8, ptr %67, i64 24
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %87 = getelementptr inbounds nuw i8, ptr %67, i64 32
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %89 = getelementptr inbounds nuw i8, ptr %67, i64 40
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %91 = getelementptr inbounds nuw i8, ptr %67, i64 48
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %93 = getelementptr inbounds nuw i8, ptr %67, i64 56
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %95

95:                                               ; preds = %66, %214
  %96 = phi i64 [ %265, %214 ], [ 4, %66 ]
  %97 = phi ptr [ %264, %214 ], [ %33, %66 ]
  %98 = phi ptr [ %30, %214 ], [ %44, %66 ]
  %99 = phi i64 [ %39, %214 ], [ %45, %66 ]
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load i64, ptr %0, align 8, !alias.scope !177, !noalias !180
  %103 = load i64, ptr %74, align 8, !alias.scope !177, !noalias !180
  %104 = load i64, ptr %75, align 8, !alias.scope !177, !noalias !180
  %105 = load i64, ptr %76, align 8, !alias.scope !177, !noalias !180
  %106 = load i64, ptr %77, align 8, !alias.scope !177, !noalias !180
  %107 = load i64, ptr %78, align 8, !alias.scope !177, !noalias !180
  %108 = load i64, ptr %79, align 8, !alias.scope !177, !noalias !180
  %109 = load i64, ptr %80, align 8, !alias.scope !177, !noalias !180
  br label %214

110:                                              ; preds = %95
  %111 = load i64, ptr %68, align 8, !alias.scope !182, !noalias !185
  %112 = load i64, ptr %47, align 8, !alias.scope !182, !noalias !185
  %113 = load i64, ptr %69, align 8, !alias.scope !182, !noalias !185
  %114 = load i64, ptr %70, align 8, !alias.scope !182, !noalias !185
  %115 = load i64, ptr %71, align 8, !alias.scope !182, !noalias !185
  %116 = load i64, ptr %72, align 8, !alias.scope !182, !noalias !185
  %117 = load i64, ptr %73, align 8, !alias.scope !182, !noalias !185
  %118 = load i64, ptr %0, align 8, !alias.scope !182, !noalias !185
  br label %119

119:                                              ; preds = %110, %119
  %120 = phi i64 [ %118, %110 ], [ %147, %119 ]
  %121 = phi i64 [ %117, %110 ], [ %151, %119 ]
  %122 = phi i64 [ %116, %110 ], [ %207, %119 ]
  %123 = phi i64 [ %115, %110 ], [ %211, %119 ]
  %124 = phi i64 [ %114, %110 ], [ %187, %119 ]
  %125 = phi i64 [ %113, %110 ], [ %191, %119 ]
  %126 = phi i64 [ %112, %110 ], [ %167, %119 ]
  %127 = phi i64 [ %111, %110 ], [ %171, %119 ]
  %128 = phi i64 [ 0, %110 ], [ %212, %119 ]
  %129 = shl i64 %128, 6
  %130 = getelementptr inbounds nuw i8, ptr %97, i64 %129
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %131, i32 0, i32 3, i32 1), !noalias !166
  %132 = shl i64 %128, 3
  %133 = getelementptr inbounds nuw i8, ptr %98, i64 %132
  %134 = load i64, ptr %130, align 1
  %135 = load i64, ptr %133, align 1
  %136 = xor i64 %135, %134
  %137 = add i64 %121, %134
  store i64 %137, ptr %73, align 8, !alias.scope !182, !noalias !185
  %138 = lshr i64 %136, 32
  %139 = and i64 %136, 4294967295
  %140 = mul nuw i64 %139, %138
  %141 = add i64 %140, %120
  store i64 %141, ptr %0, align 8, !alias.scope !182, !noalias !185
  %142 = getelementptr inbounds nuw i8, ptr %130, i64 8
  %143 = load i64, ptr %142, align 1
  %144 = getelementptr inbounds nuw i8, ptr %133, i64 8
  %145 = load i64, ptr %144, align 1
  %146 = xor i64 %145, %143
  %147 = add i64 %141, %143
  store i64 %147, ptr %0, align 8, !alias.scope !182, !noalias !185
  %148 = lshr i64 %146, 32
  %149 = and i64 %146, 4294967295
  %150 = mul nuw i64 %149, %148
  %151 = add i64 %150, %137
  store i64 %151, ptr %73, align 8, !alias.scope !182, !noalias !185
  %152 = getelementptr inbounds nuw i8, ptr %130, i64 16
  %153 = load i64, ptr %152, align 1
  %154 = getelementptr inbounds nuw i8, ptr %133, i64 16
  %155 = load i64, ptr %154, align 1
  %156 = xor i64 %155, %153
  %157 = add i64 %127, %153
  store i64 %157, ptr %68, align 8, !alias.scope !182, !noalias !185
  %158 = lshr i64 %156, 32
  %159 = and i64 %156, 4294967295
  %160 = mul nuw i64 %159, %158
  %161 = add i64 %160, %126
  store i64 %161, ptr %47, align 8, !alias.scope !182, !noalias !185
  %162 = getelementptr inbounds nuw i8, ptr %130, i64 24
  %163 = load i64, ptr %162, align 1
  %164 = getelementptr inbounds nuw i8, ptr %133, i64 24
  %165 = load i64, ptr %164, align 1
  %166 = xor i64 %165, %163
  %167 = add i64 %161, %163
  store i64 %167, ptr %47, align 8, !alias.scope !182, !noalias !185
  %168 = lshr i64 %166, 32
  %169 = and i64 %166, 4294967295
  %170 = mul nuw i64 %169, %168
  %171 = add i64 %170, %157
  store i64 %171, ptr %68, align 8, !alias.scope !182, !noalias !185
  %172 = getelementptr inbounds nuw i8, ptr %130, i64 32
  %173 = load i64, ptr %172, align 1
  %174 = getelementptr inbounds nuw i8, ptr %133, i64 32
  %175 = load i64, ptr %174, align 1
  %176 = xor i64 %175, %173
  %177 = add i64 %125, %173
  store i64 %177, ptr %69, align 8, !alias.scope !182, !noalias !185
  %178 = lshr i64 %176, 32
  %179 = and i64 %176, 4294967295
  %180 = mul nuw i64 %179, %178
  %181 = add i64 %180, %124
  store i64 %181, ptr %70, align 8, !alias.scope !182, !noalias !185
  %182 = getelementptr inbounds nuw i8, ptr %130, i64 40
  %183 = load i64, ptr %182, align 1
  %184 = getelementptr inbounds nuw i8, ptr %133, i64 40
  %185 = load i64, ptr %184, align 1
  %186 = xor i64 %185, %183
  %187 = add i64 %181, %183
  store i64 %187, ptr %70, align 8, !alias.scope !182, !noalias !185
  %188 = lshr i64 %186, 32
  %189 = and i64 %186, 4294967295
  %190 = mul nuw i64 %189, %188
  %191 = add i64 %190, %177
  store i64 %191, ptr %69, align 8, !alias.scope !182, !noalias !185
  %192 = getelementptr inbounds nuw i8, ptr %130, i64 48
  %193 = load i64, ptr %192, align 1
  %194 = getelementptr inbounds nuw i8, ptr %133, i64 48
  %195 = load i64, ptr %194, align 1
  %196 = xor i64 %195, %193
  %197 = add i64 %123, %193
  store i64 %197, ptr %71, align 8, !alias.scope !182, !noalias !185
  %198 = lshr i64 %196, 32
  %199 = and i64 %196, 4294967295
  %200 = mul nuw i64 %199, %198
  %201 = add i64 %200, %122
  store i64 %201, ptr %72, align 8, !alias.scope !182, !noalias !185
  %202 = getelementptr inbounds nuw i8, ptr %130, i64 56
  %203 = load i64, ptr %202, align 1
  %204 = getelementptr inbounds nuw i8, ptr %133, i64 56
  %205 = load i64, ptr %204, align 1
  %206 = xor i64 %205, %203
  %207 = add i64 %201, %203
  store i64 %207, ptr %72, align 8, !alias.scope !182, !noalias !185
  %208 = lshr i64 %206, 32
  %209 = and i64 %206, 4294967295
  %210 = mul nuw i64 %209, %208
  %211 = add i64 %210, %197
  store i64 %211, ptr %71, align 8, !alias.scope !182, !noalias !185
  %212 = add nuw i64 %128, 1
  %213 = icmp eq i64 %212, %99
  br i1 %213, label %214, label %119, !llvm.loop !32

214:                                              ; preds = %119, %101
  %215 = phi i64 [ %109, %101 ], [ %211, %119 ]
  %216 = phi i64 [ %108, %101 ], [ %207, %119 ]
  %217 = phi i64 [ %107, %101 ], [ %191, %119 ]
  %218 = phi i64 [ %106, %101 ], [ %187, %119 ]
  %219 = phi i64 [ %105, %101 ], [ %171, %119 ]
  %220 = phi i64 [ %104, %101 ], [ %167, %119 ]
  %221 = phi i64 [ %103, %101 ], [ %151, %119 ]
  %222 = phi i64 [ %102, %101 ], [ %147, %119 ]
  %223 = load i64, ptr %67, align 1
  %224 = lshr i64 %222, 47
  %225 = xor i64 %223, %224
  %226 = xor i64 %225, %222
  %227 = mul i64 %226, 2654435761
  store i64 %227, ptr %0, align 8, !alias.scope !177, !noalias !180
  %228 = load i64, ptr %81, align 1
  %229 = lshr i64 %221, 47
  %230 = xor i64 %228, %229
  %231 = xor i64 %230, %221
  %232 = mul i64 %231, 2654435761
  store i64 %232, ptr %82, align 8, !alias.scope !177, !noalias !180
  %233 = load i64, ptr %83, align 1
  %234 = lshr i64 %220, 47
  %235 = xor i64 %233, %234
  %236 = xor i64 %235, %220
  %237 = mul i64 %236, 2654435761
  store i64 %237, ptr %84, align 8, !alias.scope !177, !noalias !180
  %238 = load i64, ptr %85, align 1
  %239 = lshr i64 %219, 47
  %240 = xor i64 %238, %239
  %241 = xor i64 %240, %219
  %242 = mul i64 %241, 2654435761
  store i64 %242, ptr %86, align 8, !alias.scope !177, !noalias !180
  %243 = load i64, ptr %87, align 1
  %244 = lshr i64 %218, 47
  %245 = xor i64 %243, %244
  %246 = xor i64 %245, %218
  %247 = mul i64 %246, 2654435761
  store i64 %247, ptr %88, align 8, !alias.scope !177, !noalias !180
  %248 = load i64, ptr %89, align 1
  %249 = lshr i64 %217, 47
  %250 = xor i64 %248, %249
  %251 = xor i64 %250, %217
  %252 = mul i64 %251, 2654435761
  store i64 %252, ptr %90, align 8, !alias.scope !177, !noalias !180
  %253 = load i64, ptr %91, align 1
  %254 = lshr i64 %216, 47
  %255 = xor i64 %253, %254
  %256 = xor i64 %255, %216
  %257 = mul i64 %256, 2654435761
  store i64 %257, ptr %92, align 8, !alias.scope !177, !noalias !180
  %258 = load i64, ptr %93, align 1
  %259 = lshr i64 %215, 47
  %260 = xor i64 %258, %259
  %261 = xor i64 %260, %215
  %262 = mul i64 %261, 2654435761
  store i64 %262, ptr %94, align 8, !alias.scope !177, !noalias !180
  %263 = shl i64 %99, 6
  %264 = getelementptr inbounds nuw i8, ptr %97, i64 %263
  %265 = sub i64 %96, %99
  %266 = icmp ult i64 %265, %39
  br i1 %266, label %267, label %95, !llvm.loop !148

267:                                              ; preds = %214
  store i64 0, ptr %37, align 8, !alias.scope !166, !noalias !168
  %268 = icmp eq i64 %265, 0
  br i1 %268, label %387, label %269

269:                                              ; preds = %48, %267
  %270 = phi i1 [ %65, %48 ], [ true, %267 ]
  %271 = phi i64 [ %62, %48 ], [ %227, %267 ]
  %272 = phi i64 [ %61, %48 ], [ %232, %267 ]
  %273 = phi i64 [ %59, %48 ], [ %257, %267 ]
  %274 = phi i64 [ %57, %48 ], [ %262, %267 ]
  %275 = phi i64 [ %55, %48 ], [ %247, %267 ]
  %276 = phi i64 [ %53, %48 ], [ %252, %267 ]
  %277 = phi i64 [ %51, %48 ], [ %237, %267 ]
  %278 = phi i64 [ %50, %48 ], [ %242, %267 ]
  %279 = phi ptr [ %44, %48 ], [ %30, %267 ]
  %280 = phi ptr [ %33, %48 ], [ %264, %267 ]
  %281 = phi i64 [ 4, %48 ], [ %265, %267 ]
  tail call void @llvm.assume(i1 %270)
  %282 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %283 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %284 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %287 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %289

289:                                              ; preds = %269, %289
  %290 = phi i64 [ %271, %269 ], [ %317, %289 ]
  %291 = phi i64 [ %272, %269 ], [ %321, %289 ]
  %292 = phi i64 [ %273, %269 ], [ %377, %289 ]
  %293 = phi i64 [ %274, %269 ], [ %381, %289 ]
  %294 = phi i64 [ %275, %269 ], [ %357, %289 ]
  %295 = phi i64 [ %276, %269 ], [ %361, %289 ]
  %296 = phi i64 [ %277, %269 ], [ %337, %289 ]
  %297 = phi i64 [ %278, %269 ], [ %341, %289 ]
  %298 = phi i64 [ 0, %269 ], [ %382, %289 ]
  %299 = shl i64 %298, 6
  %300 = getelementptr inbounds nuw i8, ptr %280, i64 %299
  %301 = getelementptr inbounds nuw i8, ptr %300, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %301, i32 0, i32 3, i32 1), !noalias !166
  %302 = shl i64 %298, 3
  %303 = getelementptr inbounds nuw i8, ptr %279, i64 %302
  %304 = load i64, ptr %300, align 1
  %305 = load i64, ptr %303, align 1
  %306 = xor i64 %305, %304
  %307 = add i64 %291, %304
  store i64 %307, ptr %288, align 8, !alias.scope !171, !noalias !174
  %308 = lshr i64 %306, 32
  %309 = and i64 %306, 4294967295
  %310 = mul nuw i64 %309, %308
  %311 = add i64 %310, %290
  store i64 %311, ptr %0, align 8, !alias.scope !171, !noalias !174
  %312 = getelementptr inbounds nuw i8, ptr %300, i64 8
  %313 = load i64, ptr %312, align 1
  %314 = getelementptr inbounds nuw i8, ptr %303, i64 8
  %315 = load i64, ptr %314, align 1
  %316 = xor i64 %315, %313
  %317 = add i64 %311, %313
  store i64 %317, ptr %0, align 8, !alias.scope !171, !noalias !174
  %318 = lshr i64 %316, 32
  %319 = and i64 %316, 4294967295
  %320 = mul nuw i64 %319, %318
  %321 = add i64 %320, %307
  store i64 %321, ptr %288, align 8, !alias.scope !171, !noalias !174
  %322 = getelementptr inbounds nuw i8, ptr %300, i64 16
  %323 = load i64, ptr %322, align 1
  %324 = getelementptr inbounds nuw i8, ptr %303, i64 16
  %325 = load i64, ptr %324, align 1
  %326 = xor i64 %325, %323
  %327 = add i64 %297, %323
  store i64 %327, ptr %282, align 8, !alias.scope !171, !noalias !174
  %328 = lshr i64 %326, 32
  %329 = and i64 %326, 4294967295
  %330 = mul nuw i64 %329, %328
  %331 = add i64 %330, %296
  store i64 %331, ptr %283, align 8, !alias.scope !171, !noalias !174
  %332 = getelementptr inbounds nuw i8, ptr %300, i64 24
  %333 = load i64, ptr %332, align 1
  %334 = getelementptr inbounds nuw i8, ptr %303, i64 24
  %335 = load i64, ptr %334, align 1
  %336 = xor i64 %335, %333
  %337 = add i64 %331, %333
  store i64 %337, ptr %283, align 8, !alias.scope !171, !noalias !174
  %338 = lshr i64 %336, 32
  %339 = and i64 %336, 4294967295
  %340 = mul nuw i64 %339, %338
  %341 = add i64 %340, %327
  store i64 %341, ptr %282, align 8, !alias.scope !171, !noalias !174
  %342 = getelementptr inbounds nuw i8, ptr %300, i64 32
  %343 = load i64, ptr %342, align 1
  %344 = getelementptr inbounds nuw i8, ptr %303, i64 32
  %345 = load i64, ptr %344, align 1
  %346 = xor i64 %345, %343
  %347 = add i64 %295, %343
  store i64 %347, ptr %284, align 8, !alias.scope !171, !noalias !174
  %348 = lshr i64 %346, 32
  %349 = and i64 %346, 4294967295
  %350 = mul nuw i64 %349, %348
  %351 = add i64 %350, %294
  store i64 %351, ptr %285, align 8, !alias.scope !171, !noalias !174
  %352 = getelementptr inbounds nuw i8, ptr %300, i64 40
  %353 = load i64, ptr %352, align 1
  %354 = getelementptr inbounds nuw i8, ptr %303, i64 40
  %355 = load i64, ptr %354, align 1
  %356 = xor i64 %355, %353
  %357 = add i64 %351, %353
  store i64 %357, ptr %285, align 8, !alias.scope !171, !noalias !174
  %358 = lshr i64 %356, 32
  %359 = and i64 %356, 4294967295
  %360 = mul nuw i64 %359, %358
  %361 = add i64 %360, %347
  store i64 %361, ptr %284, align 8, !alias.scope !171, !noalias !174
  %362 = getelementptr inbounds nuw i8, ptr %300, i64 48
  %363 = load i64, ptr %362, align 1
  %364 = getelementptr inbounds nuw i8, ptr %303, i64 48
  %365 = load i64, ptr %364, align 1
  %366 = xor i64 %365, %363
  %367 = add i64 %293, %363
  store i64 %367, ptr %286, align 8, !alias.scope !171, !noalias !174
  %368 = lshr i64 %366, 32
  %369 = and i64 %366, 4294967295
  %370 = mul nuw i64 %369, %368
  %371 = add i64 %370, %292
  store i64 %371, ptr %287, align 8, !alias.scope !171, !noalias !174
  %372 = getelementptr inbounds nuw i8, ptr %300, i64 56
  %373 = load i64, ptr %372, align 1
  %374 = getelementptr inbounds nuw i8, ptr %303, i64 56
  %375 = load i64, ptr %374, align 1
  %376 = xor i64 %375, %373
  %377 = add i64 %371, %373
  store i64 %377, ptr %287, align 8, !alias.scope !171, !noalias !174
  %378 = lshr i64 %376, 32
  %379 = and i64 %376, 4294967295
  %380 = mul nuw i64 %379, %378
  %381 = add i64 %380, %367
  store i64 %381, ptr %286, align 8, !alias.scope !171, !noalias !174
  %382 = add nuw i64 %298, 1
  %383 = icmp eq i64 %382, %281
  br i1 %383, label %384, label %289, !llvm.loop !32

384:                                              ; preds = %289
  %385 = load i64, ptr %37, align 8, !alias.scope !166, !noalias !168
  %386 = add i64 %385, %281
  store i64 %386, ptr %37, align 8, !alias.scope !166, !noalias !168
  br label %387

387:                                              ; preds = %267, %384
  store i32 0, ptr %11, align 64, !alias.scope !160, !noalias !157
  br label %388

388:                                              ; preds = %387, %24
  %389 = phi ptr [ %36, %387 ], [ %1, %24 ]
  %390 = icmp ult ptr %389, %25
  tail call void @llvm.assume(i1 %390)
  %391 = ptrtoint ptr %25 to i64
  %392 = ptrtoint ptr %389 to i64
  %393 = sub i64 %391, %392
  %394 = icmp sgt i64 %393, 256
  br i1 %394, label %395, label %747

395:                                              ; preds = %388
  %396 = getelementptr inbounds i8, ptr %25, i64 -1
  %397 = ptrtoint ptr %396 to i64
  %398 = sub i64 %397, %392
  %399 = lshr i64 %398, 6
  %400 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %401 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %402 = load i64, ptr %401, align 8, !alias.scope !160, !noalias !157
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %404 = load i64, ptr %403, align 32, !alias.scope !160, !noalias !157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %405 = load i64, ptr %400, align 8, !alias.scope !191, !noalias !193
  %406 = shl i64 %405, 3
  %407 = getelementptr inbounds nuw i8, ptr %30, i64 %406
  %408 = sub i64 %402, %405
  %409 = icmp ult i64 %399, %408
  br i1 %409, label %615, label %410

410:                                              ; preds = %395
  %411 = getelementptr inbounds nuw i8, ptr %30, i64 %404
  %412 = ptrtoint ptr %0 to i64
  %413 = and i64 %412, 7
  %414 = icmp eq i64 %413, 0
  tail call void @llvm.assume(i1 %414)
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %416 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %417 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %420 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %421 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %423 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %424 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %425 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %426 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %427 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %428 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %429 = getelementptr inbounds nuw i8, ptr %411, i64 8
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %431 = getelementptr inbounds nuw i8, ptr %411, i64 16
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %433 = getelementptr inbounds nuw i8, ptr %411, i64 24
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %435 = getelementptr inbounds nuw i8, ptr %411, i64 32
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %437 = getelementptr inbounds nuw i8, ptr %411, i64 40
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %439 = getelementptr inbounds nuw i8, ptr %411, i64 48
  %440 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %441 = getelementptr inbounds nuw i8, ptr %411, i64 56
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %443

443:                                              ; preds = %410, %561
  %444 = phi i64 [ %612, %561 ], [ %399, %410 ]
  %445 = phi ptr [ %611, %561 ], [ %389, %410 ]
  %446 = phi ptr [ %30, %561 ], [ %407, %410 ]
  %447 = phi i64 [ %402, %561 ], [ %408, %410 ]
  %448 = icmp eq i64 %447, 0
  %449 = load i64, ptr %0, align 8, !alias.scope !188, !noalias !196
  br i1 %448, label %450, label %458

450:                                              ; preds = %443
  %451 = load i64, ptr %422, align 8, !alias.scope !197, !noalias !200
  %452 = load i64, ptr %423, align 8, !alias.scope !197, !noalias !200
  %453 = load i64, ptr %424, align 8, !alias.scope !197, !noalias !200
  %454 = load i64, ptr %425, align 8, !alias.scope !197, !noalias !200
  %455 = load i64, ptr %426, align 8, !alias.scope !197, !noalias !200
  %456 = load i64, ptr %427, align 8, !alias.scope !197, !noalias !200
  %457 = load i64, ptr %428, align 8, !alias.scope !197, !noalias !200
  br label %561

458:                                              ; preds = %443
  %459 = load i64, ptr %415, align 8, !alias.scope !202, !noalias !205
  %460 = load i64, ptr %416, align 8, !alias.scope !202, !noalias !205
  %461 = load i64, ptr %417, align 8, !alias.scope !202, !noalias !205
  %462 = load i64, ptr %418, align 8, !alias.scope !202, !noalias !205
  %463 = load i64, ptr %419, align 8, !alias.scope !202, !noalias !205
  %464 = load i64, ptr %420, align 8, !alias.scope !202, !noalias !205
  %465 = load i64, ptr %421, align 8, !alias.scope !202, !noalias !205
  br label %466

466:                                              ; preds = %458, %466
  %467 = phi i64 [ %449, %458 ], [ %494, %466 ]
  %468 = phi i64 [ %465, %458 ], [ %498, %466 ]
  %469 = phi i64 [ %464, %458 ], [ %554, %466 ]
  %470 = phi i64 [ %463, %458 ], [ %558, %466 ]
  %471 = phi i64 [ %462, %458 ], [ %534, %466 ]
  %472 = phi i64 [ %461, %458 ], [ %538, %466 ]
  %473 = phi i64 [ %460, %458 ], [ %514, %466 ]
  %474 = phi i64 [ %459, %458 ], [ %518, %466 ]
  %475 = phi i64 [ 0, %458 ], [ %559, %466 ]
  %476 = shl i64 %475, 6
  %477 = getelementptr inbounds nuw i8, ptr %445, i64 %476
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %478, i32 0, i32 3, i32 1), !noalias !191
  %479 = shl i64 %475, 3
  %480 = getelementptr inbounds nuw i8, ptr %446, i64 %479
  %481 = load i64, ptr %477, align 1
  %482 = load i64, ptr %480, align 1
  %483 = xor i64 %482, %481
  %484 = add i64 %468, %481
  store i64 %484, ptr %421, align 8, !alias.scope !202, !noalias !205
  %485 = lshr i64 %483, 32
  %486 = and i64 %483, 4294967295
  %487 = mul nuw i64 %486, %485
  %488 = add i64 %487, %467
  store i64 %488, ptr %0, align 8, !alias.scope !202, !noalias !205
  %489 = getelementptr inbounds nuw i8, ptr %477, i64 8
  %490 = load i64, ptr %489, align 1
  %491 = getelementptr inbounds nuw i8, ptr %480, i64 8
  %492 = load i64, ptr %491, align 1
  %493 = xor i64 %492, %490
  %494 = add i64 %488, %490
  store i64 %494, ptr %0, align 8, !alias.scope !202, !noalias !205
  %495 = lshr i64 %493, 32
  %496 = and i64 %493, 4294967295
  %497 = mul nuw i64 %496, %495
  %498 = add i64 %497, %484
  store i64 %498, ptr %421, align 8, !alias.scope !202, !noalias !205
  %499 = getelementptr inbounds nuw i8, ptr %477, i64 16
  %500 = load i64, ptr %499, align 1
  %501 = getelementptr inbounds nuw i8, ptr %480, i64 16
  %502 = load i64, ptr %501, align 1
  %503 = xor i64 %502, %500
  %504 = add i64 %474, %500
  store i64 %504, ptr %415, align 8, !alias.scope !202, !noalias !205
  %505 = lshr i64 %503, 32
  %506 = and i64 %503, 4294967295
  %507 = mul nuw i64 %506, %505
  %508 = add i64 %507, %473
  store i64 %508, ptr %416, align 8, !alias.scope !202, !noalias !205
  %509 = getelementptr inbounds nuw i8, ptr %477, i64 24
  %510 = load i64, ptr %509, align 1
  %511 = getelementptr inbounds nuw i8, ptr %480, i64 24
  %512 = load i64, ptr %511, align 1
  %513 = xor i64 %512, %510
  %514 = add i64 %508, %510
  store i64 %514, ptr %416, align 8, !alias.scope !202, !noalias !205
  %515 = lshr i64 %513, 32
  %516 = and i64 %513, 4294967295
  %517 = mul nuw i64 %516, %515
  %518 = add i64 %517, %504
  store i64 %518, ptr %415, align 8, !alias.scope !202, !noalias !205
  %519 = getelementptr inbounds nuw i8, ptr %477, i64 32
  %520 = load i64, ptr %519, align 1
  %521 = getelementptr inbounds nuw i8, ptr %480, i64 32
  %522 = load i64, ptr %521, align 1
  %523 = xor i64 %522, %520
  %524 = add i64 %472, %520
  store i64 %524, ptr %417, align 8, !alias.scope !202, !noalias !205
  %525 = lshr i64 %523, 32
  %526 = and i64 %523, 4294967295
  %527 = mul nuw i64 %526, %525
  %528 = add i64 %527, %471
  store i64 %528, ptr %418, align 8, !alias.scope !202, !noalias !205
  %529 = getelementptr inbounds nuw i8, ptr %477, i64 40
  %530 = load i64, ptr %529, align 1
  %531 = getelementptr inbounds nuw i8, ptr %480, i64 40
  %532 = load i64, ptr %531, align 1
  %533 = xor i64 %532, %530
  %534 = add i64 %528, %530
  store i64 %534, ptr %418, align 8, !alias.scope !202, !noalias !205
  %535 = lshr i64 %533, 32
  %536 = and i64 %533, 4294967295
  %537 = mul nuw i64 %536, %535
  %538 = add i64 %537, %524
  store i64 %538, ptr %417, align 8, !alias.scope !202, !noalias !205
  %539 = getelementptr inbounds nuw i8, ptr %477, i64 48
  %540 = load i64, ptr %539, align 1
  %541 = getelementptr inbounds nuw i8, ptr %480, i64 48
  %542 = load i64, ptr %541, align 1
  %543 = xor i64 %542, %540
  %544 = add i64 %470, %540
  store i64 %544, ptr %419, align 8, !alias.scope !202, !noalias !205
  %545 = lshr i64 %543, 32
  %546 = and i64 %543, 4294967295
  %547 = mul nuw i64 %546, %545
  %548 = add i64 %547, %469
  store i64 %548, ptr %420, align 8, !alias.scope !202, !noalias !205
  %549 = getelementptr inbounds nuw i8, ptr %477, i64 56
  %550 = load i64, ptr %549, align 1
  %551 = getelementptr inbounds nuw i8, ptr %480, i64 56
  %552 = load i64, ptr %551, align 1
  %553 = xor i64 %552, %550
  %554 = add i64 %548, %550
  store i64 %554, ptr %420, align 8, !alias.scope !202, !noalias !205
  %555 = lshr i64 %553, 32
  %556 = and i64 %553, 4294967295
  %557 = mul nuw i64 %556, %555
  %558 = add i64 %557, %544
  store i64 %558, ptr %419, align 8, !alias.scope !202, !noalias !205
  %559 = add nuw i64 %475, 1
  %560 = icmp eq i64 %559, %447
  br i1 %560, label %561, label %466, !llvm.loop !32

561:                                              ; preds = %466, %450
  %562 = phi i64 [ %449, %450 ], [ %494, %466 ]
  %563 = phi i64 [ %457, %450 ], [ %558, %466 ]
  %564 = phi i64 [ %456, %450 ], [ %554, %466 ]
  %565 = phi i64 [ %455, %450 ], [ %538, %466 ]
  %566 = phi i64 [ %454, %450 ], [ %534, %466 ]
  %567 = phi i64 [ %453, %450 ], [ %518, %466 ]
  %568 = phi i64 [ %452, %450 ], [ %514, %466 ]
  %569 = phi i64 [ %451, %450 ], [ %498, %466 ]
  %570 = load i64, ptr %411, align 1
  %571 = lshr i64 %562, 47
  %572 = xor i64 %570, %571
  %573 = xor i64 %572, %562
  %574 = mul i64 %573, 2654435761
  store i64 %574, ptr %0, align 8, !alias.scope !197, !noalias !200
  %575 = load i64, ptr %429, align 1
  %576 = lshr i64 %569, 47
  %577 = xor i64 %575, %576
  %578 = xor i64 %577, %569
  %579 = mul i64 %578, 2654435761
  store i64 %579, ptr %430, align 8, !alias.scope !197, !noalias !200
  %580 = load i64, ptr %431, align 1
  %581 = lshr i64 %568, 47
  %582 = xor i64 %580, %581
  %583 = xor i64 %582, %568
  %584 = mul i64 %583, 2654435761
  store i64 %584, ptr %432, align 8, !alias.scope !197, !noalias !200
  %585 = load i64, ptr %433, align 1
  %586 = lshr i64 %567, 47
  %587 = xor i64 %585, %586
  %588 = xor i64 %587, %567
  %589 = mul i64 %588, 2654435761
  store i64 %589, ptr %434, align 8, !alias.scope !197, !noalias !200
  %590 = load i64, ptr %435, align 1
  %591 = lshr i64 %566, 47
  %592 = xor i64 %590, %591
  %593 = xor i64 %592, %566
  %594 = mul i64 %593, 2654435761
  store i64 %594, ptr %436, align 8, !alias.scope !197, !noalias !200
  %595 = load i64, ptr %437, align 1
  %596 = lshr i64 %565, 47
  %597 = xor i64 %595, %596
  %598 = xor i64 %597, %565
  %599 = mul i64 %598, 2654435761
  store i64 %599, ptr %438, align 8, !alias.scope !197, !noalias !200
  %600 = load i64, ptr %439, align 1
  %601 = lshr i64 %564, 47
  %602 = xor i64 %600, %601
  %603 = xor i64 %602, %564
  %604 = mul i64 %603, 2654435761
  store i64 %604, ptr %440, align 8, !alias.scope !197, !noalias !200
  %605 = load i64, ptr %441, align 1
  %606 = lshr i64 %563, 47
  %607 = xor i64 %605, %606
  %608 = xor i64 %607, %563
  %609 = mul i64 %608, 2654435761
  store i64 %609, ptr %442, align 8, !alias.scope !197, !noalias !200
  %610 = shl i64 %447, 6
  %611 = getelementptr inbounds nuw i8, ptr %445, i64 %610
  %612 = sub i64 %444, %447
  %613 = icmp ult i64 %612, %402
  br i1 %613, label %614, label %443, !llvm.loop !148

614:                                              ; preds = %561
  store i64 0, ptr %400, align 8, !alias.scope !191, !noalias !193
  br label %615

615:                                              ; preds = %614, %395
  %616 = phi i64 [ %612, %614 ], [ %399, %395 ]
  %617 = phi ptr [ %611, %614 ], [ %389, %395 ]
  %618 = phi ptr [ %30, %614 ], [ %407, %395 ]
  %619 = icmp eq i64 %616, 0
  br i1 %619, label %739, label %620

620:                                              ; preds = %615
  %621 = ptrtoint ptr %0 to i64
  %622 = and i64 %621, 7
  %623 = icmp eq i64 %622, 0
  tail call void @llvm.assume(i1 %623)
  %624 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %625 = load i64, ptr %624, align 8, !alias.scope !208, !noalias !211
  %626 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %627 = load i64, ptr %626, align 8, !alias.scope !208, !noalias !211
  %628 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %629 = load i64, ptr %628, align 8, !alias.scope !208, !noalias !211
  %630 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %631 = load i64, ptr %630, align 8, !alias.scope !208, !noalias !211
  %632 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %633 = load i64, ptr %632, align 8, !alias.scope !208, !noalias !211
  %634 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %635 = load i64, ptr %634, align 8, !alias.scope !208, !noalias !211
  %636 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %637 = load i64, ptr %636, align 8, !alias.scope !208, !noalias !211
  %638 = load i64, ptr %0, align 8, !alias.scope !208, !noalias !211
  br label %639

639:                                              ; preds = %620, %639
  %640 = phi i64 [ %638, %620 ], [ %667, %639 ]
  %641 = phi i64 [ %637, %620 ], [ %671, %639 ]
  %642 = phi i64 [ %635, %620 ], [ %727, %639 ]
  %643 = phi i64 [ %633, %620 ], [ %731, %639 ]
  %644 = phi i64 [ %631, %620 ], [ %707, %639 ]
  %645 = phi i64 [ %629, %620 ], [ %711, %639 ]
  %646 = phi i64 [ %627, %620 ], [ %687, %639 ]
  %647 = phi i64 [ %625, %620 ], [ %691, %639 ]
  %648 = phi i64 [ 0, %620 ], [ %732, %639 ]
  %649 = shl i64 %648, 6
  %650 = getelementptr inbounds nuw i8, ptr %617, i64 %649
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %651, i32 0, i32 3, i32 1), !noalias !191
  %652 = shl i64 %648, 3
  %653 = getelementptr inbounds nuw i8, ptr %618, i64 %652
  %654 = load i64, ptr %650, align 1
  %655 = load i64, ptr %653, align 1
  %656 = xor i64 %655, %654
  %657 = add i64 %641, %654
  store i64 %657, ptr %636, align 8, !alias.scope !208, !noalias !211
  %658 = lshr i64 %656, 32
  %659 = and i64 %656, 4294967295
  %660 = mul nuw i64 %659, %658
  %661 = add i64 %660, %640
  store i64 %661, ptr %0, align 8, !alias.scope !208, !noalias !211
  %662 = getelementptr inbounds nuw i8, ptr %650, i64 8
  %663 = load i64, ptr %662, align 1
  %664 = getelementptr inbounds nuw i8, ptr %653, i64 8
  %665 = load i64, ptr %664, align 1
  %666 = xor i64 %665, %663
  %667 = add i64 %661, %663
  store i64 %667, ptr %0, align 8, !alias.scope !208, !noalias !211
  %668 = lshr i64 %666, 32
  %669 = and i64 %666, 4294967295
  %670 = mul nuw i64 %669, %668
  %671 = add i64 %670, %657
  store i64 %671, ptr %636, align 8, !alias.scope !208, !noalias !211
  %672 = getelementptr inbounds nuw i8, ptr %650, i64 16
  %673 = load i64, ptr %672, align 1
  %674 = getelementptr inbounds nuw i8, ptr %653, i64 16
  %675 = load i64, ptr %674, align 1
  %676 = xor i64 %675, %673
  %677 = add i64 %647, %673
  store i64 %677, ptr %624, align 8, !alias.scope !208, !noalias !211
  %678 = lshr i64 %676, 32
  %679 = and i64 %676, 4294967295
  %680 = mul nuw i64 %679, %678
  %681 = add i64 %680, %646
  store i64 %681, ptr %626, align 8, !alias.scope !208, !noalias !211
  %682 = getelementptr inbounds nuw i8, ptr %650, i64 24
  %683 = load i64, ptr %682, align 1
  %684 = getelementptr inbounds nuw i8, ptr %653, i64 24
  %685 = load i64, ptr %684, align 1
  %686 = xor i64 %685, %683
  %687 = add i64 %681, %683
  store i64 %687, ptr %626, align 8, !alias.scope !208, !noalias !211
  %688 = lshr i64 %686, 32
  %689 = and i64 %686, 4294967295
  %690 = mul nuw i64 %689, %688
  %691 = add i64 %690, %677
  store i64 %691, ptr %624, align 8, !alias.scope !208, !noalias !211
  %692 = getelementptr inbounds nuw i8, ptr %650, i64 32
  %693 = load i64, ptr %692, align 1
  %694 = getelementptr inbounds nuw i8, ptr %653, i64 32
  %695 = load i64, ptr %694, align 1
  %696 = xor i64 %695, %693
  %697 = add i64 %645, %693
  store i64 %697, ptr %628, align 8, !alias.scope !208, !noalias !211
  %698 = lshr i64 %696, 32
  %699 = and i64 %696, 4294967295
  %700 = mul nuw i64 %699, %698
  %701 = add i64 %700, %644
  store i64 %701, ptr %630, align 8, !alias.scope !208, !noalias !211
  %702 = getelementptr inbounds nuw i8, ptr %650, i64 40
  %703 = load i64, ptr %702, align 1
  %704 = getelementptr inbounds nuw i8, ptr %653, i64 40
  %705 = load i64, ptr %704, align 1
  %706 = xor i64 %705, %703
  %707 = add i64 %701, %703
  store i64 %707, ptr %630, align 8, !alias.scope !208, !noalias !211
  %708 = lshr i64 %706, 32
  %709 = and i64 %706, 4294967295
  %710 = mul nuw i64 %709, %708
  %711 = add i64 %710, %697
  store i64 %711, ptr %628, align 8, !alias.scope !208, !noalias !211
  %712 = getelementptr inbounds nuw i8, ptr %650, i64 48
  %713 = load i64, ptr %712, align 1
  %714 = getelementptr inbounds nuw i8, ptr %653, i64 48
  %715 = load i64, ptr %714, align 1
  %716 = xor i64 %715, %713
  %717 = add i64 %643, %713
  store i64 %717, ptr %632, align 8, !alias.scope !208, !noalias !211
  %718 = lshr i64 %716, 32
  %719 = and i64 %716, 4294967295
  %720 = mul nuw i64 %719, %718
  %721 = add i64 %720, %642
  store i64 %721, ptr %634, align 8, !alias.scope !208, !noalias !211
  %722 = getelementptr inbounds nuw i8, ptr %650, i64 56
  %723 = load i64, ptr %722, align 1
  %724 = getelementptr inbounds nuw i8, ptr %653, i64 56
  %725 = load i64, ptr %724, align 1
  %726 = xor i64 %725, %723
  %727 = add i64 %721, %723
  store i64 %727, ptr %634, align 8, !alias.scope !208, !noalias !211
  %728 = lshr i64 %726, 32
  %729 = and i64 %726, 4294967295
  %730 = mul nuw i64 %729, %728
  %731 = add i64 %730, %717
  store i64 %731, ptr %632, align 8, !alias.scope !208, !noalias !211
  %732 = add nuw i64 %648, 1
  %733 = icmp eq i64 %732, %616
  br i1 %733, label %734, label %639, !llvm.loop !32

734:                                              ; preds = %639
  %735 = shl i64 %616, 6
  %736 = getelementptr inbounds nuw i8, ptr %617, i64 %735
  %737 = load i64, ptr %400, align 8, !alias.scope !191, !noalias !193
  %738 = add i64 %737, %616
  store i64 %738, ptr %400, align 8, !alias.scope !191, !noalias !193
  br label %739

739:                                              ; preds = %615, %734
  %740 = phi ptr [ %736, %734 ], [ %617, %615 ]
  %741 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %742 = getelementptr inbounds i8, ptr %740, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %741, ptr noundef nonnull align 1 dereferenceable(64) %742, i64 64, i1 false)
  %743 = load i32, ptr %11, align 64, !alias.scope !160, !noalias !157
  %744 = ptrtoint ptr %740 to i64
  %745 = sub i64 %391, %744
  %746 = icmp eq i32 %743, 0
  br label %747

747:                                              ; preds = %739, %388
  %748 = phi i64 [ %745, %739 ], [ %393, %388 ]
  %749 = phi i1 [ %746, %739 ], [ true, %388 ]
  %750 = phi ptr [ %740, %739 ], [ %389, %388 ]
  %751 = icmp ult ptr %750, %25
  tail call void @llvm.assume(i1 %751)
  %752 = icmp slt i64 %748, 257
  tail call void @llvm.assume(i1 %752)
  tail call void @llvm.assume(i1 %749)
  %753 = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %753, ptr align 1 %750, i64 %748, i1 false)
  %754 = trunc i64 %748 to i32
  store i32 %754, ptr %11, align 64, !alias.scope !160, !noalias !157
  br label %755

755:                                              ; preds = %5, %17, %747
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read) uwtable
define internal fastcc i64 @XXH_INLINE_XXH3_128bits_digest(ptr nocapture noundef nonnull readonly %0) unnamed_addr #34 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca [8 x i64], align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %8 = select i1 %6, ptr %7, ptr %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %10 = load i64, ptr %9, align 16
  %11 = icmp ugt i64 %10, 240
  br i1 %11, label %12, label %463

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 64 dereferenceable(64) %0, i64 64, i1 false)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %14 = load i32, ptr %13, align 64
  %15 = icmp ugt i32 %14, 63
  br i1 %15, label %16, label %353

16:                                               ; preds = %12
  %17 = add i32 %14, -1
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %25 = shl i64 %21, 3
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 %25
  %27 = sub i64 %23, %21
  %28 = icmp ugt i64 %27, %19
  br i1 %28, label %233, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %31 = load i64, ptr %30, align 32
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %47 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %49 = getelementptr inbounds nuw i8, ptr %32, i64 16
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %51 = getelementptr inbounds nuw i8, ptr %32, i64 24
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %53 = getelementptr inbounds nuw i8, ptr %32, i64 32
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %55 = getelementptr inbounds nuw i8, ptr %32, i64 40
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %57 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %59 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %61

61:                                               ; preds = %29, %180
  %62 = phi i64 [ %231, %180 ], [ %19, %29 ]
  %63 = phi ptr [ %230, %180 ], [ %24, %29 ]
  %64 = phi ptr [ %8, %180 ], [ %26, %29 ]
  %65 = phi i64 [ %23, %180 ], [ %27, %29 ]
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i64, ptr %3, align 8, !alias.scope !214, !noalias !219
  %69 = load i64, ptr %40, align 8, !alias.scope !214, !noalias !219
  %70 = load i64, ptr %41, align 8, !alias.scope !214, !noalias !219
  %71 = load i64, ptr %42, align 8, !alias.scope !214, !noalias !219
  %72 = load i64, ptr %43, align 8, !alias.scope !214, !noalias !219
  %73 = load i64, ptr %44, align 8, !alias.scope !214, !noalias !219
  %74 = load i64, ptr %45, align 8, !alias.scope !214, !noalias !219
  %75 = load i64, ptr %46, align 8, !alias.scope !214, !noalias !219
  br label %180

76:                                               ; preds = %61
  %77 = load i64, ptr %33, align 8, !alias.scope !224, !noalias !227
  %78 = load i64, ptr %34, align 8, !alias.scope !224, !noalias !227
  %79 = load i64, ptr %35, align 8, !alias.scope !224, !noalias !227
  %80 = load i64, ptr %36, align 8, !alias.scope !224, !noalias !227
  %81 = load i64, ptr %37, align 8, !alias.scope !224, !noalias !227
  %82 = load i64, ptr %38, align 8, !alias.scope !224, !noalias !227
  %83 = load i64, ptr %39, align 8, !alias.scope !224, !noalias !227
  %84 = load i64, ptr %3, align 8, !alias.scope !224, !noalias !227
  br label %85

85:                                               ; preds = %76, %85
  %86 = phi i64 [ %113, %85 ], [ %84, %76 ]
  %87 = phi i64 [ %117, %85 ], [ %83, %76 ]
  %88 = phi i64 [ %173, %85 ], [ %82, %76 ]
  %89 = phi i64 [ %177, %85 ], [ %81, %76 ]
  %90 = phi i64 [ %153, %85 ], [ %80, %76 ]
  %91 = phi i64 [ %157, %85 ], [ %79, %76 ]
  %92 = phi i64 [ %133, %85 ], [ %78, %76 ]
  %93 = phi i64 [ %137, %85 ], [ %77, %76 ]
  %94 = phi i64 [ %178, %85 ], [ 0, %76 ]
  %95 = shl i64 %94, 6
  %96 = getelementptr inbounds nuw i8, ptr %63, i64 %95
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %97, i32 0, i32 3, i32 1), !noalias !230
  %98 = shl i64 %94, 3
  %99 = getelementptr inbounds nuw i8, ptr %64, i64 %98
  %100 = load i64, ptr %96, align 1
  %101 = load i64, ptr %99, align 1
  %102 = xor i64 %101, %100
  %103 = add i64 %87, %100
  store i64 %103, ptr %39, align 8, !alias.scope !224, !noalias !227
  %104 = lshr i64 %102, 32
  %105 = and i64 %102, 4294967295
  %106 = mul nuw i64 %105, %104
  %107 = add i64 %106, %86
  store i64 %107, ptr %3, align 8, !alias.scope !224, !noalias !227
  %108 = getelementptr inbounds nuw i8, ptr %96, i64 8
  %109 = load i64, ptr %108, align 1
  %110 = getelementptr inbounds nuw i8, ptr %99, i64 8
  %111 = load i64, ptr %110, align 1
  %112 = xor i64 %111, %109
  %113 = add i64 %107, %109
  store i64 %113, ptr %3, align 8, !alias.scope !224, !noalias !227
  %114 = lshr i64 %112, 32
  %115 = and i64 %112, 4294967295
  %116 = mul nuw i64 %115, %114
  %117 = add i64 %116, %103
  store i64 %117, ptr %39, align 8, !alias.scope !224, !noalias !227
  %118 = getelementptr inbounds nuw i8, ptr %96, i64 16
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %99, i64 16
  %121 = load i64, ptr %120, align 1
  %122 = xor i64 %121, %119
  %123 = add i64 %93, %119
  store i64 %123, ptr %33, align 8, !alias.scope !224, !noalias !227
  %124 = lshr i64 %122, 32
  %125 = and i64 %122, 4294967295
  %126 = mul nuw i64 %125, %124
  %127 = add i64 %126, %92
  store i64 %127, ptr %34, align 8, !alias.scope !224, !noalias !227
  %128 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds nuw i8, ptr %99, i64 24
  %131 = load i64, ptr %130, align 1
  %132 = xor i64 %131, %129
  %133 = add i64 %127, %129
  store i64 %133, ptr %34, align 8, !alias.scope !224, !noalias !227
  %134 = lshr i64 %132, 32
  %135 = and i64 %132, 4294967295
  %136 = mul nuw i64 %135, %134
  %137 = add i64 %136, %123
  store i64 %137, ptr %33, align 8, !alias.scope !224, !noalias !227
  %138 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %139 = load i64, ptr %138, align 1
  %140 = getelementptr inbounds nuw i8, ptr %99, i64 32
  %141 = load i64, ptr %140, align 1
  %142 = xor i64 %141, %139
  %143 = add i64 %91, %139
  store i64 %143, ptr %35, align 8, !alias.scope !224, !noalias !227
  %144 = lshr i64 %142, 32
  %145 = and i64 %142, 4294967295
  %146 = mul nuw i64 %145, %144
  %147 = add i64 %146, %90
  store i64 %147, ptr %36, align 8, !alias.scope !224, !noalias !227
  %148 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %149 = load i64, ptr %148, align 1
  %150 = getelementptr inbounds nuw i8, ptr %99, i64 40
  %151 = load i64, ptr %150, align 1
  %152 = xor i64 %151, %149
  %153 = add i64 %147, %149
  store i64 %153, ptr %36, align 8, !alias.scope !224, !noalias !227
  %154 = lshr i64 %152, 32
  %155 = and i64 %152, 4294967295
  %156 = mul nuw i64 %155, %154
  %157 = add i64 %156, %143
  store i64 %157, ptr %35, align 8, !alias.scope !224, !noalias !227
  %158 = getelementptr inbounds nuw i8, ptr %96, i64 48
  %159 = load i64, ptr %158, align 1
  %160 = getelementptr inbounds nuw i8, ptr %99, i64 48
  %161 = load i64, ptr %160, align 1
  %162 = xor i64 %161, %159
  %163 = add i64 %89, %159
  store i64 %163, ptr %37, align 8, !alias.scope !224, !noalias !227
  %164 = lshr i64 %162, 32
  %165 = and i64 %162, 4294967295
  %166 = mul nuw i64 %165, %164
  %167 = add i64 %166, %88
  store i64 %167, ptr %38, align 8, !alias.scope !224, !noalias !227
  %168 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %169 = load i64, ptr %168, align 1
  %170 = getelementptr inbounds nuw i8, ptr %99, i64 56
  %171 = load i64, ptr %170, align 1
  %172 = xor i64 %171, %169
  %173 = add i64 %167, %169
  store i64 %173, ptr %38, align 8, !alias.scope !224, !noalias !227
  %174 = lshr i64 %172, 32
  %175 = and i64 %172, 4294967295
  %176 = mul nuw i64 %175, %174
  %177 = add i64 %176, %163
  store i64 %177, ptr %37, align 8, !alias.scope !224, !noalias !227
  %178 = add nuw i64 %94, 1
  %179 = icmp eq i64 %178, %65
  br i1 %179, label %180, label %85, !llvm.loop !32

180:                                              ; preds = %85, %67
  %181 = phi i64 [ %75, %67 ], [ %177, %85 ]
  %182 = phi i64 [ %74, %67 ], [ %173, %85 ]
  %183 = phi i64 [ %73, %67 ], [ %157, %85 ]
  %184 = phi i64 [ %72, %67 ], [ %153, %85 ]
  %185 = phi i64 [ %71, %67 ], [ %137, %85 ]
  %186 = phi i64 [ %70, %67 ], [ %133, %85 ]
  %187 = phi i64 [ %69, %67 ], [ %117, %85 ]
  %188 = phi i64 [ %68, %67 ], [ %113, %85 ]
  %189 = load i64, ptr %32, align 1
  %190 = lshr i64 %188, 47
  %191 = xor i64 %189, %190
  %192 = xor i64 %191, %188
  %193 = mul i64 %192, 2654435761
  store i64 %193, ptr %3, align 8, !alias.scope !214, !noalias !219
  %194 = load i64, ptr %47, align 1
  %195 = lshr i64 %187, 47
  %196 = xor i64 %194, %195
  %197 = xor i64 %196, %187
  %198 = mul i64 %197, 2654435761
  store i64 %198, ptr %48, align 8, !alias.scope !214, !noalias !219
  %199 = load i64, ptr %49, align 1
  %200 = lshr i64 %186, 47
  %201 = xor i64 %199, %200
  %202 = xor i64 %201, %186
  %203 = mul i64 %202, 2654435761
  store i64 %203, ptr %50, align 8, !alias.scope !214, !noalias !219
  %204 = load i64, ptr %51, align 1
  %205 = lshr i64 %185, 47
  %206 = xor i64 %204, %205
  %207 = xor i64 %206, %185
  %208 = mul i64 %207, 2654435761
  store i64 %208, ptr %52, align 8, !alias.scope !214, !noalias !219
  %209 = load i64, ptr %53, align 1
  %210 = lshr i64 %184, 47
  %211 = xor i64 %209, %210
  %212 = xor i64 %211, %184
  %213 = mul i64 %212, 2654435761
  store i64 %213, ptr %54, align 8, !alias.scope !214, !noalias !219
  %214 = load i64, ptr %55, align 1
  %215 = lshr i64 %183, 47
  %216 = xor i64 %214, %215
  %217 = xor i64 %216, %183
  %218 = mul i64 %217, 2654435761
  store i64 %218, ptr %56, align 8, !alias.scope !214, !noalias !219
  %219 = load i64, ptr %57, align 1
  %220 = lshr i64 %182, 47
  %221 = xor i64 %219, %220
  %222 = xor i64 %221, %182
  %223 = mul i64 %222, 2654435761
  store i64 %223, ptr %58, align 8, !alias.scope !214, !noalias !219
  %224 = load i64, ptr %59, align 1
  %225 = lshr i64 %181, 47
  %226 = xor i64 %224, %225
  %227 = xor i64 %226, %181
  %228 = mul i64 %227, 2654435761
  store i64 %228, ptr %60, align 8, !alias.scope !214, !noalias !219
  %229 = shl i64 %65, 6
  %230 = getelementptr inbounds nuw i8, ptr %63, i64 %229
  %231 = sub i64 %62, %65
  %232 = icmp ult i64 %231, %23
  br i1 %232, label %233, label %61, !llvm.loop !148

233:                                              ; preds = %180, %16
  %234 = phi i64 [ %19, %16 ], [ %231, %180 ]
  %235 = phi ptr [ %24, %16 ], [ %230, %180 ]
  %236 = phi ptr [ %26, %16 ], [ %8, %180 ]
  %237 = icmp eq i64 %234, 0
  br i1 %237, label %349, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %240 = load i64, ptr %239, align 8, !alias.scope !231, !noalias !234
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %242 = load i64, ptr %241, align 8, !alias.scope !231, !noalias !234
  %243 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %244 = load i64, ptr %243, align 8, !alias.scope !231, !noalias !234
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %246 = load i64, ptr %245, align 8, !alias.scope !231, !noalias !234
  %247 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %248 = load i64, ptr %247, align 8, !alias.scope !231, !noalias !234
  %249 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %250 = load i64, ptr %249, align 8, !alias.scope !231, !noalias !234
  %251 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %252 = load i64, ptr %251, align 8, !alias.scope !231, !noalias !234
  %253 = load i64, ptr %3, align 8, !alias.scope !231, !noalias !234
  br label %254

254:                                              ; preds = %238, %254
  %255 = phi i64 [ %282, %254 ], [ %253, %238 ]
  %256 = phi i64 [ %286, %254 ], [ %252, %238 ]
  %257 = phi i64 [ %342, %254 ], [ %250, %238 ]
  %258 = phi i64 [ %346, %254 ], [ %248, %238 ]
  %259 = phi i64 [ %322, %254 ], [ %246, %238 ]
  %260 = phi i64 [ %326, %254 ], [ %244, %238 ]
  %261 = phi i64 [ %302, %254 ], [ %242, %238 ]
  %262 = phi i64 [ %306, %254 ], [ %240, %238 ]
  %263 = phi i64 [ %347, %254 ], [ 0, %238 ]
  %264 = shl i64 %263, 6
  %265 = getelementptr inbounds nuw i8, ptr %235, i64 %264
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %266, i32 0, i32 3, i32 1), !noalias !230
  %267 = shl i64 %263, 3
  %268 = getelementptr inbounds nuw i8, ptr %236, i64 %267
  %269 = load i64, ptr %265, align 1
  %270 = load i64, ptr %268, align 1
  %271 = xor i64 %270, %269
  %272 = add i64 %256, %269
  store i64 %272, ptr %251, align 8, !alias.scope !231, !noalias !234
  %273 = lshr i64 %271, 32
  %274 = and i64 %271, 4294967295
  %275 = mul nuw i64 %274, %273
  %276 = add i64 %275, %255
  store i64 %276, ptr %3, align 8, !alias.scope !231, !noalias !234
  %277 = getelementptr inbounds nuw i8, ptr %265, i64 8
  %278 = load i64, ptr %277, align 1
  %279 = getelementptr inbounds nuw i8, ptr %268, i64 8
  %280 = load i64, ptr %279, align 1
  %281 = xor i64 %280, %278
  %282 = add i64 %276, %278
  store i64 %282, ptr %3, align 8, !alias.scope !231, !noalias !234
  %283 = lshr i64 %281, 32
  %284 = and i64 %281, 4294967295
  %285 = mul nuw i64 %284, %283
  %286 = add i64 %285, %272
  store i64 %286, ptr %251, align 8, !alias.scope !231, !noalias !234
  %287 = getelementptr inbounds nuw i8, ptr %265, i64 16
  %288 = load i64, ptr %287, align 1
  %289 = getelementptr inbounds nuw i8, ptr %268, i64 16
  %290 = load i64, ptr %289, align 1
  %291 = xor i64 %290, %288
  %292 = add i64 %262, %288
  store i64 %292, ptr %239, align 8, !alias.scope !231, !noalias !234
  %293 = lshr i64 %291, 32
  %294 = and i64 %291, 4294967295
  %295 = mul nuw i64 %294, %293
  %296 = add i64 %295, %261
  store i64 %296, ptr %241, align 8, !alias.scope !231, !noalias !234
  %297 = getelementptr inbounds nuw i8, ptr %265, i64 24
  %298 = load i64, ptr %297, align 1
  %299 = getelementptr inbounds nuw i8, ptr %268, i64 24
  %300 = load i64, ptr %299, align 1
  %301 = xor i64 %300, %298
  %302 = add i64 %296, %298
  store i64 %302, ptr %241, align 8, !alias.scope !231, !noalias !234
  %303 = lshr i64 %301, 32
  %304 = and i64 %301, 4294967295
  %305 = mul nuw i64 %304, %303
  %306 = add i64 %305, %292
  store i64 %306, ptr %239, align 8, !alias.scope !231, !noalias !234
  %307 = getelementptr inbounds nuw i8, ptr %265, i64 32
  %308 = load i64, ptr %307, align 1
  %309 = getelementptr inbounds nuw i8, ptr %268, i64 32
  %310 = load i64, ptr %309, align 1
  %311 = xor i64 %310, %308
  %312 = add i64 %260, %308
  store i64 %312, ptr %243, align 8, !alias.scope !231, !noalias !234
  %313 = lshr i64 %311, 32
  %314 = and i64 %311, 4294967295
  %315 = mul nuw i64 %314, %313
  %316 = add i64 %315, %259
  store i64 %316, ptr %245, align 8, !alias.scope !231, !noalias !234
  %317 = getelementptr inbounds nuw i8, ptr %265, i64 40
  %318 = load i64, ptr %317, align 1
  %319 = getelementptr inbounds nuw i8, ptr %268, i64 40
  %320 = load i64, ptr %319, align 1
  %321 = xor i64 %320, %318
  %322 = add i64 %316, %318
  store i64 %322, ptr %245, align 8, !alias.scope !231, !noalias !234
  %323 = lshr i64 %321, 32
  %324 = and i64 %321, 4294967295
  %325 = mul nuw i64 %324, %323
  %326 = add i64 %325, %312
  store i64 %326, ptr %243, align 8, !alias.scope !231, !noalias !234
  %327 = getelementptr inbounds nuw i8, ptr %265, i64 48
  %328 = load i64, ptr %327, align 1
  %329 = getelementptr inbounds nuw i8, ptr %268, i64 48
  %330 = load i64, ptr %329, align 1
  %331 = xor i64 %330, %328
  %332 = add i64 %258, %328
  store i64 %332, ptr %247, align 8, !alias.scope !231, !noalias !234
  %333 = lshr i64 %331, 32
  %334 = and i64 %331, 4294967295
  %335 = mul nuw i64 %334, %333
  %336 = add i64 %335, %257
  store i64 %336, ptr %249, align 8, !alias.scope !231, !noalias !234
  %337 = getelementptr inbounds nuw i8, ptr %265, i64 56
  %338 = load i64, ptr %337, align 1
  %339 = getelementptr inbounds nuw i8, ptr %268, i64 56
  %340 = load i64, ptr %339, align 1
  %341 = xor i64 %340, %338
  %342 = add i64 %336, %338
  store i64 %342, ptr %249, align 8, !alias.scope !231, !noalias !234
  %343 = lshr i64 %341, 32
  %344 = and i64 %341, 4294967295
  %345 = mul nuw i64 %344, %343
  %346 = add i64 %345, %332
  store i64 %346, ptr %247, align 8, !alias.scope !231, !noalias !234
  %347 = add nuw i64 %263, 1
  %348 = icmp eq i64 %347, %234
  br i1 %348, label %349, label %254, !llvm.loop !32

349:                                              ; preds = %254, %233
  %350 = zext i32 %14 to i64
  %351 = getelementptr inbounds nuw i8, ptr %24, i64 %350
  %352 = getelementptr inbounds i8, ptr %351, i64 -64
  br label %362

353:                                              ; preds = %12
  %354 = sub nuw nsw i32 64, %14
  %355 = zext nneg i32 %354 to i64
  %356 = icmp ne i32 %14, 0
  tail call void @llvm.assume(i1 %356)
  %357 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %358 = sub nsw i64 0, %355
  %359 = getelementptr inbounds i8, ptr %13, i64 %358
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 1 %359, i64 %355, i1 false)
  %360 = getelementptr inbounds nuw i8, ptr %2, i64 %355
  %361 = zext nneg i32 %14 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %360, ptr nonnull align 64 %357, i64 %361, i1 false)
  br label %362

362:                                              ; preds = %353, %349
  %363 = phi ptr [ %352, %349 ], [ %2, %353 ]
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %365 = load i64, ptr %364, align 32
  %366 = getelementptr inbounds nuw i8, ptr %8, i64 %365
  %367 = getelementptr inbounds i8, ptr %366, i64 -7
  %368 = load i64, ptr %363, align 1
  %369 = load i64, ptr %367, align 1
  %370 = xor i64 %369, %368
  %371 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %372 = load i64, ptr %371, align 8, !alias.scope !237, !noalias !240
  %373 = add i64 %372, %368
  store i64 %373, ptr %371, align 8, !alias.scope !237, !noalias !240
  %374 = lshr i64 %370, 32
  %375 = load i64, ptr %3, align 8, !alias.scope !237, !noalias !240
  %376 = and i64 %370, 4294967295
  %377 = mul nuw i64 %376, %374
  %378 = add i64 %377, %375
  store i64 %378, ptr %3, align 8, !alias.scope !237, !noalias !240
  %379 = getelementptr inbounds nuw i8, ptr %363, i64 8
  %380 = load i64, ptr %379, align 1
  %381 = getelementptr inbounds nuw i8, ptr %366, i64 1
  %382 = load i64, ptr %381, align 1
  %383 = xor i64 %382, %380
  %384 = add i64 %378, %380
  store i64 %384, ptr %3, align 8, !alias.scope !237, !noalias !240
  %385 = lshr i64 %383, 32
  %386 = and i64 %383, 4294967295
  %387 = mul nuw i64 %386, %385
  %388 = add i64 %387, %373
  store i64 %388, ptr %371, align 8, !alias.scope !237, !noalias !240
  %389 = getelementptr inbounds nuw i8, ptr %363, i64 16
  %390 = load i64, ptr %389, align 1
  %391 = getelementptr inbounds nuw i8, ptr %366, i64 9
  %392 = load i64, ptr %391, align 1
  %393 = xor i64 %392, %390
  %394 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %395 = load i64, ptr %394, align 8, !alias.scope !237, !noalias !240
  %396 = add i64 %395, %390
  store i64 %396, ptr %394, align 8, !alias.scope !237, !noalias !240
  %397 = lshr i64 %393, 32
  %398 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %399 = load i64, ptr %398, align 8, !alias.scope !237, !noalias !240
  %400 = and i64 %393, 4294967295
  %401 = mul nuw i64 %400, %397
  %402 = add i64 %401, %399
  store i64 %402, ptr %398, align 8, !alias.scope !237, !noalias !240
  %403 = getelementptr inbounds nuw i8, ptr %363, i64 24
  %404 = load i64, ptr %403, align 1
  %405 = getelementptr inbounds nuw i8, ptr %366, i64 17
  %406 = load i64, ptr %405, align 1
  %407 = xor i64 %406, %404
  %408 = add i64 %402, %404
  store i64 %408, ptr %398, align 8, !alias.scope !237, !noalias !240
  %409 = lshr i64 %407, 32
  %410 = and i64 %407, 4294967295
  %411 = mul nuw i64 %410, %409
  %412 = add i64 %411, %396
  store i64 %412, ptr %394, align 8, !alias.scope !237, !noalias !240
  %413 = getelementptr inbounds nuw i8, ptr %363, i64 32
  %414 = load i64, ptr %413, align 1
  %415 = getelementptr inbounds nuw i8, ptr %366, i64 25
  %416 = load i64, ptr %415, align 1
  %417 = xor i64 %416, %414
  %418 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %419 = load i64, ptr %418, align 8, !alias.scope !237, !noalias !240
  %420 = add i64 %419, %414
  store i64 %420, ptr %418, align 8, !alias.scope !237, !noalias !240
  %421 = lshr i64 %417, 32
  %422 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %423 = load i64, ptr %422, align 8, !alias.scope !237, !noalias !240
  %424 = and i64 %417, 4294967295
  %425 = mul nuw i64 %424, %421
  %426 = add i64 %425, %423
  store i64 %426, ptr %422, align 8, !alias.scope !237, !noalias !240
  %427 = getelementptr inbounds nuw i8, ptr %363, i64 40
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr inbounds nuw i8, ptr %366, i64 33
  %430 = load i64, ptr %429, align 1
  %431 = xor i64 %430, %428
  %432 = add i64 %426, %428
  store i64 %432, ptr %422, align 8, !alias.scope !237, !noalias !240
  %433 = lshr i64 %431, 32
  %434 = and i64 %431, 4294967295
  %435 = mul nuw i64 %434, %433
  %436 = add i64 %435, %420
  store i64 %436, ptr %418, align 8, !alias.scope !237, !noalias !240
  %437 = getelementptr inbounds nuw i8, ptr %363, i64 48
  %438 = load i64, ptr %437, align 1
  %439 = getelementptr inbounds nuw i8, ptr %366, i64 41
  %440 = load i64, ptr %439, align 1
  %441 = xor i64 %440, %438
  %442 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %443 = load i64, ptr %442, align 8, !alias.scope !237, !noalias !240
  %444 = add i64 %443, %438
  store i64 %444, ptr %442, align 8, !alias.scope !237, !noalias !240
  %445 = lshr i64 %441, 32
  %446 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %447 = load i64, ptr %446, align 8, !alias.scope !237, !noalias !240
  %448 = and i64 %441, 4294967295
  %449 = mul nuw i64 %448, %445
  %450 = add i64 %449, %447
  store i64 %450, ptr %446, align 8, !alias.scope !237, !noalias !240
  %451 = getelementptr inbounds nuw i8, ptr %363, i64 56
  %452 = load i64, ptr %451, align 1
  %453 = getelementptr inbounds nuw i8, ptr %366, i64 49
  %454 = load i64, ptr %453, align 1
  %455 = xor i64 %454, %452
  %456 = add i64 %450, %452
  store i64 %456, ptr %446, align 8, !alias.scope !237, !noalias !240
  %457 = lshr i64 %455, 32
  %458 = and i64 %455, 4294967295
  %459 = mul nuw i64 %458, %457
  %460 = add i64 %459, %444
  store i64 %460, ptr %442, align 8, !alias.scope !237, !noalias !240
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #39
  %461 = add nuw i64 %365, 64
  %462 = call fastcc { i64, i64 } @XXH3_finalizeLong_128b(ptr noundef %3, ptr noundef nonnull %8, i64 noundef %461, i64 noundef %10) #43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #39
  br label %477

463:                                              ; preds = %1
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 516
  %465 = load i32, ptr %464, align 4
  %466 = icmp eq i32 %465, 0
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 256
  br i1 %466, label %472, label %468

468:                                              ; preds = %463
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %470 = load i64, ptr %469, align 8
  %471 = tail call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSeed(ptr nocapture noundef nonnull %467, i64 noundef %10, i64 noundef %470) #43
  br label %477

472:                                              ; preds = %463
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %474 = load i64, ptr %473, align 32
  %475 = add i64 %474, 64
  %476 = tail call fastcc { i64, i64 } @XXH_INLINE_XXH3_128bits_withSecret(ptr nocapture noundef nonnull %467, i64 noundef %10, ptr nocapture noundef nonnull %8, i64 noundef %475) #43
  br label %477

477:                                              ; preds = %472, %468, %362
  %478 = phi { i64, i64 } [ %462, %362 ], [ %471, %468 ], [ %476, %472 ]
  %479 = extractvalue { i64, i64 } %478, 0
  ret i64 %479
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #37

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #11 = { nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #17 = { nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #18 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #19 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #24 = { mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #25 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #27 = { inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #28 = { nofree noinline norecurse nosync nounwind memory(argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #29 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #31 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #32 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #33 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #34 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #35 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #36 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { cold noreturn nounwind }
attributes #42 = { nounwind allocsize(0,1) }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind memory(none) }

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
!11 = !{i64 2148298287}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = !{!26}
!26 = distinct !{!26, !27, !"XXH64_consumeLong: argument 0"}
!27 = distinct !{!27, !"XXH64_consumeLong"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"XXH64_consumeLong: argument 1"}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = !{i64 2152287468}
!35 = distinct !{!35, !6}
!36 = !{!37, !39}
!37 = distinct !{!37, !38, !"XXH3_mergeAccs: argument 1"}
!38 = distinct !{!38, !"XXH3_mergeAccs"}
!39 = distinct !{!39, !40, !"XXH3_finalizeLong_64b: argument 1"}
!40 = distinct !{!40, !"XXH3_finalizeLong_64b"}
!41 = !{!42, !43}
!42 = distinct !{!42, !38, !"XXH3_mergeAccs: argument 0"}
!43 = distinct !{!43, !40, !"XXH3_finalizeLong_64b: argument 0"}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"XXH3_mergeAccs: argument 1"}
!46 = distinct !{!46, !"XXH3_mergeAccs"}
!47 = distinct !{!47, !48, !"XXH3_finalizeLong_64b: argument 1"}
!48 = distinct !{!48, !"XXH3_finalizeLong_64b"}
!49 = !{!50, !51}
!50 = distinct !{!50, !46, !"XXH3_mergeAccs: argument 0"}
!51 = distinct !{!51, !48, !"XXH3_finalizeLong_64b: argument 0"}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"XXH3_hashLong_128b_internal: argument 0"}
!54 = distinct !{!54, !"XXH3_hashLong_128b_internal"}
!55 = distinct !{!55, !54, !"XXH3_hashLong_128b_internal: argument 1"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"XXH3_scalarRound: argument 0"}
!58 = distinct !{!58, !"XXH3_scalarRound"}
!59 = !{!60, !61, !53, !55}
!60 = distinct !{!60, !58, !"XXH3_scalarRound: argument 1"}
!61 = distinct !{!61, !58, !"XXH3_scalarRound: argument 2"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"XXH3_scalarRound: argument 0"}
!64 = distinct !{!64, !"XXH3_scalarRound"}
!65 = !{!66, !67, !53, !55}
!66 = distinct !{!66, !64, !"XXH3_scalarRound: argument 1"}
!67 = distinct !{!67, !64, !"XXH3_scalarRound: argument 2"}
!68 = distinct !{!68, !6}
!69 = !{!70}
!70 = distinct !{!70, !71, !"XXH3_finalizeLong_64b: argument 0"}
!71 = distinct !{!71, !"XXH3_finalizeLong_64b"}
!72 = !{!73}
!73 = distinct !{!73, !71, !"XXH3_finalizeLong_64b: argument 1"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"XXH3_mergeAccs: argument 0"}
!76 = distinct !{!76, !"XXH3_mergeAccs"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"XXH3_mergeAccs: argument 1"}
!79 = !{!80, !75, !70}
!80 = distinct !{!80, !81, !"XXH3_mix2Accs: argument 0"}
!81 = distinct !{!81, !"XXH3_mix2Accs"}
!82 = !{!83, !78, !73}
!83 = distinct !{!83, !81, !"XXH3_mix2Accs: argument 1"}
!84 = !{!78, !73}
!85 = !{!75, !70}
!86 = !{!87}
!87 = distinct !{!87, !88, !"XXH3_mergeAccs: argument 1"}
!88 = distinct !{!88, !"XXH3_mergeAccs"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"XXH3_mergeAccs: argument 0"}
!91 = !{!92, !94, !95}
!92 = distinct !{!92, !93, !"XXH3_hashLong_128b_internal: argument 0"}
!93 = distinct !{!93, !"XXH3_hashLong_128b_internal"}
!94 = distinct !{!94, !93, !"XXH3_hashLong_128b_internal: argument 1"}
!95 = distinct !{!95, !96, !"XXH3_hashLong_128b_withSeed_internal: argument 0"}
!96 = distinct !{!96, !"XXH3_hashLong_128b_withSeed_internal"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"XXH3_scalarRound: argument 0"}
!99 = distinct !{!99, !"XXH3_scalarRound"}
!100 = !{!101, !102, !92, !94, !95}
!101 = distinct !{!101, !99, !"XXH3_scalarRound: argument 1"}
!102 = distinct !{!102, !99, !"XXH3_scalarRound: argument 2"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"XXH3_scalarRound: argument 0"}
!105 = distinct !{!105, !"XXH3_scalarRound"}
!106 = !{!107, !108, !92, !94, !95}
!107 = distinct !{!107, !105, !"XXH3_scalarRound: argument 1"}
!108 = distinct !{!108, !105, !"XXH3_scalarRound: argument 2"}
!109 = !{!95}
!110 = !{!111, !113, !115}
!111 = distinct !{!111, !112, !"XXH3_mergeAccs: argument 1"}
!112 = distinct !{!112, !"XXH3_mergeAccs"}
!113 = distinct !{!113, !114, !"XXH3_finalizeLong_64b: argument 1"}
!114 = distinct !{!114, !"XXH3_finalizeLong_64b"}
!115 = distinct !{!115, !116, !"XXH3_finalizeLong_128b: argument 1"}
!116 = distinct !{!116, !"XXH3_finalizeLong_128b"}
!117 = !{!118, !119, !120}
!118 = distinct !{!118, !112, !"XXH3_mergeAccs: argument 0"}
!119 = distinct !{!119, !114, !"XXH3_finalizeLong_64b: argument 0"}
!120 = distinct !{!120, !116, !"XXH3_finalizeLong_128b: argument 0"}
!121 = !{!122, !115}
!122 = distinct !{!122, !123, !"XXH3_mergeAccs: argument 1"}
!123 = distinct !{!123, !"XXH3_mergeAccs"}
!124 = !{!125, !120}
!125 = distinct !{!125, !123, !"XXH3_mergeAccs: argument 0"}
!126 = !{!127, !129, !130, !132}
!127 = distinct !{!127, !128, !"XXH3_hashLong_128b_internal: argument 0"}
!128 = distinct !{!128, !"XXH3_hashLong_128b_internal"}
!129 = distinct !{!129, !128, !"XXH3_hashLong_128b_internal: argument 1"}
!130 = distinct !{!130, !131, !"XXH3_hashLong_128b_withSecret: argument 0"}
!131 = distinct !{!131, !"XXH3_hashLong_128b_withSecret"}
!132 = distinct !{!132, !131, !"XXH3_hashLong_128b_withSecret: argument 1"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"XXH3_scalarRound: argument 0"}
!135 = distinct !{!135, !"XXH3_scalarRound"}
!136 = !{!137, !138, !127, !129, !130, !132}
!137 = distinct !{!137, !135, !"XXH3_scalarRound: argument 1"}
!138 = distinct !{!138, !135, !"XXH3_scalarRound: argument 2"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"XXH3_scalarRound: argument 0"}
!141 = distinct !{!141, !"XXH3_scalarRound"}
!142 = !{!143, !144, !127, !129, !130, !132}
!143 = distinct !{!143, !141, !"XXH3_scalarRound: argument 1"}
!144 = distinct !{!144, !141, !"XXH3_scalarRound: argument 2"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"XXH3_consumeStripes: argument 1"}
!147 = distinct !{!147, !"XXH3_consumeStripes"}
!148 = distinct !{!148, !6}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"XXH3_mergeAccs: argument 1"}
!151 = distinct !{!151, !"XXH3_mergeAccs"}
!152 = distinct !{!152, !153, !"XXH3_finalizeLong_64b: argument 1"}
!153 = distinct !{!153, !"XXH3_finalizeLong_64b"}
!154 = !{!155, !156}
!155 = distinct !{!155, !151, !"XXH3_mergeAccs: argument 0"}
!156 = distinct !{!156, !153, !"XXH3_finalizeLong_64b: argument 0"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"XXH3_update: argument 1"}
!159 = distinct !{!159, !"XXH3_update"}
!160 = !{!161}
!161 = distinct !{!161, !159, !"XXH3_update: argument 0"}
!162 = !{!161, !158}
!163 = !{!164}
!164 = distinct !{!164, !165, !"XXH3_consumeStripes: argument 0"}
!165 = distinct !{!165, !"XXH3_consumeStripes"}
!166 = !{!167}
!167 = distinct !{!167, !165, !"XXH3_consumeStripes: argument 1"}
!168 = !{!164, !169, !170}
!169 = distinct !{!169, !165, !"XXH3_consumeStripes: argument 2"}
!170 = distinct !{!170, !165, !"XXH3_consumeStripes: argument 3"}
!171 = !{!172, !164}
!172 = distinct !{!172, !173, !"XXH3_scalarRound: argument 0"}
!173 = distinct !{!173, !"XXH3_scalarRound"}
!174 = !{!175, !176, !167, !169, !170}
!175 = distinct !{!175, !173, !"XXH3_scalarRound: argument 1"}
!176 = distinct !{!176, !173, !"XXH3_scalarRound: argument 2"}
!177 = !{!178, !164}
!178 = distinct !{!178, !179, !"XXH3_scalarScrambleRound: argument 0"}
!179 = distinct !{!179, !"XXH3_scalarScrambleRound"}
!180 = !{!181, !167, !169, !170}
!181 = distinct !{!181, !179, !"XXH3_scalarScrambleRound: argument 1"}
!182 = !{!183, !164}
!183 = distinct !{!183, !184, !"XXH3_scalarRound: argument 0"}
!184 = distinct !{!184, !"XXH3_scalarRound"}
!185 = !{!186, !187, !167, !169, !170}
!186 = distinct !{!186, !184, !"XXH3_scalarRound: argument 1"}
!187 = distinct !{!187, !184, !"XXH3_scalarRound: argument 2"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"XXH3_consumeStripes: argument 0"}
!190 = distinct !{!190, !"XXH3_consumeStripes"}
!191 = !{!192}
!192 = distinct !{!192, !190, !"XXH3_consumeStripes: argument 1"}
!193 = !{!189, !194, !195}
!194 = distinct !{!194, !190, !"XXH3_consumeStripes: argument 2"}
!195 = distinct !{!195, !190, !"XXH3_consumeStripes: argument 3"}
!196 = !{!192, !194, !195}
!197 = !{!198, !189}
!198 = distinct !{!198, !199, !"XXH3_scalarScrambleRound: argument 0"}
!199 = distinct !{!199, !"XXH3_scalarScrambleRound"}
!200 = !{!201, !192, !194, !195}
!201 = distinct !{!201, !199, !"XXH3_scalarScrambleRound: argument 1"}
!202 = !{!203, !189}
!203 = distinct !{!203, !204, !"XXH3_scalarRound: argument 0"}
!204 = distinct !{!204, !"XXH3_scalarRound"}
!205 = !{!206, !207, !192, !194, !195}
!206 = distinct !{!206, !204, !"XXH3_scalarRound: argument 1"}
!207 = distinct !{!207, !204, !"XXH3_scalarRound: argument 2"}
!208 = !{!209, !189}
!209 = distinct !{!209, !210, !"XXH3_scalarRound: argument 0"}
!210 = distinct !{!210, !"XXH3_scalarRound"}
!211 = !{!212, !213, !192, !194, !195}
!212 = distinct !{!212, !210, !"XXH3_scalarRound: argument 1"}
!213 = distinct !{!213, !210, !"XXH3_scalarRound: argument 2"}
!214 = !{!215, !217}
!215 = distinct !{!215, !216, !"XXH3_scalarScrambleRound: argument 0"}
!216 = distinct !{!216, !"XXH3_scalarScrambleRound"}
!217 = distinct !{!217, !218, !"XXH3_consumeStripes: argument 0"}
!218 = distinct !{!218, !"XXH3_consumeStripes"}
!219 = !{!220, !221, !222, !223}
!220 = distinct !{!220, !216, !"XXH3_scalarScrambleRound: argument 1"}
!221 = distinct !{!221, !218, !"XXH3_consumeStripes: argument 1"}
!222 = distinct !{!222, !218, !"XXH3_consumeStripes: argument 2"}
!223 = distinct !{!223, !218, !"XXH3_consumeStripes: argument 3"}
!224 = !{!225, !217}
!225 = distinct !{!225, !226, !"XXH3_scalarRound: argument 0"}
!226 = distinct !{!226, !"XXH3_scalarRound"}
!227 = !{!228, !229, !221, !222, !223}
!228 = distinct !{!228, !226, !"XXH3_scalarRound: argument 1"}
!229 = distinct !{!229, !226, !"XXH3_scalarRound: argument 2"}
!230 = !{!221}
!231 = !{!232, !217}
!232 = distinct !{!232, !233, !"XXH3_scalarRound: argument 0"}
!233 = distinct !{!233, !"XXH3_scalarRound"}
!234 = !{!235, !236, !221, !222, !223}
!235 = distinct !{!235, !233, !"XXH3_scalarRound: argument 1"}
!236 = distinct !{!236, !233, !"XXH3_scalarRound: argument 2"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"XXH3_scalarRound: argument 0"}
!239 = distinct !{!239, !"XXH3_scalarRound"}
!240 = !{!241, !242}
!241 = distinct !{!241, !239, !"XXH3_scalarRound: argument 1"}
!242 = distinct !{!242, !239, !"XXH3_scalarRound: argument 2"}
