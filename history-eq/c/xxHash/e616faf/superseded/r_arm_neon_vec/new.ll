; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e616faf/wrap_arm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e616faf/wrap_arm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind
define dso_local i64 @target_64_len200(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  br label %14

14:                                               ; preds = %14, %1
  %15 = phi i32 [ 0, %1 ], [ %53, %14 ]
  %16 = phi i64 [ -7253308125045442184, %1 ], [ %52, %14 ]
  %17 = shl nuw nsw i32 %15, 4
  %18 = getelementptr inbounds nuw i8, ptr %0, i32 %17
  %19 = getelementptr inbounds nuw i8, ptr @kSecret, i32 %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  %20 = call ptr @memcpy(ptr noundef nonnull %13, ptr noundef %18, i32 noundef 8) #5
  %21 = load i64, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  %22 = getelementptr inbounds nuw i8, ptr %18, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  %23 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %22, i32 noundef 8) #5
  %24 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  %25 = call ptr @memcpy(ptr noundef nonnull %11, ptr noundef nonnull %19, i32 noundef 8) #5
  %26 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  %27 = xor i64 %26, %21
  %28 = getelementptr inbounds nuw i8, ptr %19, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  %29 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %28, i32 noundef 8) #5
  %30 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  %31 = xor i64 %30, %24
  %32 = and i64 %27, 4294967295
  %33 = and i64 %31, 4294967295
  %34 = mul nuw i64 %33, %32
  %35 = lshr i64 %27, 32
  %36 = mul nuw i64 %33, %35
  %37 = lshr i64 %31, 32
  %38 = mul nuw i64 %37, %32
  %39 = mul nuw i64 %37, %35
  %40 = lshr i64 %34, 32
  %41 = and i64 %36, 4294967295
  %42 = add nuw i64 %41, %38
  %43 = add nuw i64 %42, %40
  %44 = lshr i64 %36, 32
  %45 = lshr i64 %43, 32
  %46 = add nuw i64 %44, %39
  %47 = add nuw i64 %46, %45
  %48 = shl i64 %43, 32
  %49 = and i64 %34, 4294967295
  %50 = or disjoint i64 %48, %49
  %51 = xor i64 %50, %47
  %52 = add i64 %51, %16
  %53 = add nuw nsw i32 %15, 1
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %55, label %14

55:                                               ; preds = %14
  %56 = lshr i64 %52, 37
  %57 = xor i64 %56, %52
  %58 = mul i64 %57, 1609587791953885689
  %59 = lshr i64 %58, 32
  %60 = xor i64 %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %0, i32 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %62 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %61, i32 noundef 8) #5
  %63 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  %64 = getelementptr inbounds nuw i8, ptr %0, i32 136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %65 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %64, i32 noundef 8) #5
  %66 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %67 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 3), i32 noundef 8) #5
  %68 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  %69 = xor i64 %68, %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %70 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 11), i32 noundef 8) #5
  %71 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  %72 = xor i64 %71, %66
  %73 = and i64 %69, 4294967295
  %74 = and i64 %72, 4294967295
  %75 = mul nuw i64 %74, %73
  %76 = lshr i64 %69, 32
  %77 = mul nuw i64 %74, %76
  %78 = lshr i64 %72, 32
  %79 = mul nuw i64 %78, %73
  %80 = mul nuw i64 %78, %76
  %81 = lshr i64 %75, 32
  %82 = and i64 %77, 4294967295
  %83 = add nuw i64 %82, %79
  %84 = add nuw i64 %83, %81
  %85 = lshr i64 %77, 32
  %86 = lshr i64 %84, 32
  %87 = add nuw i64 %85, %80
  %88 = add nuw i64 %87, %86
  %89 = shl i64 %84, 32
  %90 = and i64 %75, 4294967295
  %91 = or disjoint i64 %89, %90
  %92 = xor i64 %91, %88
  %93 = getelementptr inbounds nuw i8, ptr %0, i32 144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %94 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %93, i32 noundef 8) #5
  %95 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  %96 = getelementptr inbounds nuw i8, ptr %0, i32 152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %97 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %96, i32 noundef 8) #5
  %98 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %99 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 19), i32 noundef 8) #5
  %100 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %101 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 27), i32 noundef 8) #5
  %102 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  %103 = getelementptr inbounds nuw i8, ptr %0, i32 160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %104 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %103, i32 noundef 8) #5
  %105 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  %106 = getelementptr inbounds nuw i8, ptr %0, i32 168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %107 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %106, i32 noundef 8) #5
  %108 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %109 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 35), i32 noundef 8) #5
  %110 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %111 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 43), i32 noundef 8) #5
  %112 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  %113 = getelementptr inbounds nuw i8, ptr %0, i32 176
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %114 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %113, i32 noundef 8) #5
  %115 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  %116 = getelementptr inbounds nuw i8, ptr %0, i32 184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %117 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %116, i32 noundef 8) #5
  %118 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %119 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 51), i32 noundef 8) #5
  %120 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %121 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 59), i32 noundef 8) #5
  %122 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %123 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %116, i32 noundef 8) #5
  %124 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  %125 = getelementptr inbounds nuw i8, ptr %0, i32 192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %126 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %125, i32 noundef 8) #5
  %127 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  %128 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 119), i32 noundef 8) #5
  %129 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %130 = call ptr @memcpy(ptr noundef nonnull %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 127), i32 noundef 8) #5
  %131 = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  %132 = insertelement <4 x i64> poison, i64 %100, i64 0
  %133 = insertelement <4 x i64> %132, i64 %110, i64 1
  %134 = insertelement <4 x i64> %133, i64 %120, i64 2
  %135 = insertelement <4 x i64> %134, i64 %129, i64 3
  %136 = insertelement <4 x i64> poison, i64 %95, i64 0
  %137 = insertelement <4 x i64> %136, i64 %105, i64 1
  %138 = insertelement <4 x i64> %137, i64 %115, i64 2
  %139 = insertelement <4 x i64> %138, i64 %124, i64 3
  %140 = xor <4 x i64> %135, %139
  %141 = insertelement <4 x i64> poison, i64 %102, i64 0
  %142 = insertelement <4 x i64> %141, i64 %112, i64 1
  %143 = insertelement <4 x i64> %142, i64 %122, i64 2
  %144 = insertelement <4 x i64> %143, i64 %131, i64 3
  %145 = insertelement <4 x i64> poison, i64 %98, i64 0
  %146 = insertelement <4 x i64> %145, i64 %108, i64 1
  %147 = insertelement <4 x i64> %146, i64 %118, i64 2
  %148 = insertelement <4 x i64> %147, i64 %127, i64 3
  %149 = xor <4 x i64> %144, %148
  %150 = and <4 x i64> %140, splat (i64 4294967295)
  %151 = and <4 x i64> %149, splat (i64 4294967295)
  %152 = mul nuw <4 x i64> %151, %150
  %153 = lshr <4 x i64> %140, splat (i64 32)
  %154 = mul nuw <4 x i64> %151, %153
  %155 = lshr <4 x i64> %149, splat (i64 32)
  %156 = mul nuw <4 x i64> %155, %150
  %157 = mul nuw <4 x i64> %155, %153
  %158 = lshr <4 x i64> %152, splat (i64 32)
  %159 = and <4 x i64> %154, splat (i64 4294967295)
  %160 = add nuw <4 x i64> %159, %156
  %161 = add nuw <4 x i64> %160, %158
  %162 = lshr <4 x i64> %154, splat (i64 32)
  %163 = lshr <4 x i64> %161, splat (i64 32)
  %164 = add nuw <4 x i64> %162, %157
  %165 = add nuw <4 x i64> %164, %163
  %166 = shl <4 x i64> %161, splat (i64 32)
  %167 = and <4 x i64> %152, splat (i64 4294967295)
  %168 = or disjoint <4 x i64> %166, %167
  %169 = xor <4 x i64> %168, %165
  %170 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %169)
  %171 = add i64 %170, %92
  %172 = add i64 %171, %60
  %173 = lshr i64 %172, 37
  %174 = xor i64 %173, %172
  %175 = mul i64 %174, 1609587791953885689
  %176 = lshr i64 %175, 32
  %177 = xor i64 %176, %175
  ret i64 %177
}

; Function Attrs: nounwind
define dso_local i64 @target_64seed_len200(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  br label %15

15:                                               ; preds = %15, %2
  %16 = phi i32 [ 0, %2 ], [ %56, %15 ]
  %17 = phi i64 [ -7253308125045442184, %2 ], [ %55, %15 ]
  %18 = shl nuw nsw i32 %16, 4
  %19 = getelementptr inbounds nuw i8, ptr %0, i32 %18
  %20 = getelementptr inbounds nuw i8, ptr @kSecret, i32 %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  %21 = call ptr @memcpy(ptr noundef nonnull %14, ptr noundef %19, i32 noundef 8) #5
  %22 = load i64, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  %23 = getelementptr inbounds nuw i8, ptr %19, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  %24 = call ptr @memcpy(ptr noundef nonnull %13, ptr noundef nonnull %23, i32 noundef 8) #5
  %25 = load i64, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  %26 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %20, i32 noundef 8) #5
  %27 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  %28 = add i64 %27, %1
  %29 = xor i64 %28, %22
  %30 = getelementptr inbounds nuw i8, ptr %20, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  %31 = call ptr @memcpy(ptr noundef nonnull %11, ptr noundef nonnull %30, i32 noundef 8) #5
  %32 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  %33 = sub i64 %32, %1
  %34 = xor i64 %33, %25
  %35 = and i64 %29, 4294967295
  %36 = and i64 %34, 4294967295
  %37 = mul nuw i64 %36, %35
  %38 = lshr i64 %29, 32
  %39 = mul nuw i64 %36, %38
  %40 = lshr i64 %34, 32
  %41 = mul nuw i64 %40, %35
  %42 = mul nuw i64 %40, %38
  %43 = lshr i64 %37, 32
  %44 = and i64 %39, 4294967295
  %45 = add nuw i64 %44, %41
  %46 = add nuw i64 %45, %43
  %47 = lshr i64 %39, 32
  %48 = lshr i64 %46, 32
  %49 = add nuw i64 %47, %42
  %50 = add nuw i64 %49, %48
  %51 = shl i64 %46, 32
  %52 = and i64 %37, 4294967295
  %53 = or disjoint i64 %51, %52
  %54 = xor i64 %53, %50
  %55 = add i64 %54, %17
  %56 = add nuw nsw i32 %16, 1
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %15

58:                                               ; preds = %15
  %59 = lshr i64 %55, 37
  %60 = xor i64 %59, %55
  %61 = mul i64 %60, 1609587791953885689
  %62 = lshr i64 %61, 32
  %63 = xor i64 %62, %61
  %64 = getelementptr inbounds nuw i8, ptr %0, i32 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  %65 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %64, i32 noundef 8) #5
  %66 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  %67 = getelementptr inbounds nuw i8, ptr %0, i32 136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %68 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %67, i32 noundef 8) #5
  %69 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %70 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 3), i32 noundef 8) #5
  %71 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  %72 = add i64 %71, %1
  %73 = xor i64 %72, %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %74 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 11), i32 noundef 8) #5
  %75 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  %76 = sub i64 %75, %1
  %77 = xor i64 %76, %69
  %78 = and i64 %73, 4294967295
  %79 = and i64 %77, 4294967295
  %80 = mul nuw i64 %79, %78
  %81 = lshr i64 %73, 32
  %82 = mul nuw i64 %79, %81
  %83 = lshr i64 %77, 32
  %84 = mul nuw i64 %83, %78
  %85 = mul nuw i64 %83, %81
  %86 = lshr i64 %80, 32
  %87 = and i64 %82, 4294967295
  %88 = add nuw i64 %87, %84
  %89 = add nuw i64 %88, %86
  %90 = lshr i64 %82, 32
  %91 = lshr i64 %89, 32
  %92 = add nuw i64 %90, %85
  %93 = add nuw i64 %92, %91
  %94 = shl i64 %89, 32
  %95 = and i64 %80, 4294967295
  %96 = or disjoint i64 %94, %95
  %97 = xor i64 %96, %93
  %98 = getelementptr inbounds nuw i8, ptr %0, i32 144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  %99 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %98, i32 noundef 8) #5
  %100 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  %101 = getelementptr inbounds nuw i8, ptr %0, i32 152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %102 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %101, i32 noundef 8) #5
  %103 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %104 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 19), i32 noundef 8) #5
  %105 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %106 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 27), i32 noundef 8) #5
  %107 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  %108 = getelementptr inbounds nuw i8, ptr %0, i32 160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  %109 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %108, i32 noundef 8) #5
  %110 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  %111 = getelementptr inbounds nuw i8, ptr %0, i32 168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %112 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %111, i32 noundef 8) #5
  %113 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %114 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 35), i32 noundef 8) #5
  %115 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %116 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 43), i32 noundef 8) #5
  %117 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  %118 = getelementptr inbounds nuw i8, ptr %0, i32 176
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  %119 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %118, i32 noundef 8) #5
  %120 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  %121 = getelementptr inbounds nuw i8, ptr %0, i32 184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %122 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %121, i32 noundef 8) #5
  %123 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %124 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 51), i32 noundef 8) #5
  %125 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %126 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 59), i32 noundef 8) #5
  %127 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  %128 = getelementptr inbounds nuw i8, ptr %0, i32 184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %129 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %128, i32 noundef 8) #5
  %130 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  %131 = getelementptr inbounds nuw i8, ptr %0, i32 192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %132 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %131, i32 noundef 8) #5
  %133 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %134 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 119), i32 noundef 8) #5
  %135 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  %136 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 127), i32 noundef 8) #5
  %137 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  %138 = insertelement <4 x i64> poison, i64 %105, i64 0
  %139 = insertelement <4 x i64> %138, i64 %115, i64 1
  %140 = insertelement <4 x i64> %139, i64 %125, i64 2
  %141 = insertelement <4 x i64> %140, i64 %135, i64 3
  %142 = insertelement <4 x i64> poison, i64 %1, i64 0
  %143 = shufflevector <4 x i64> %142, <4 x i64> poison, <4 x i32> zeroinitializer
  %144 = add <4 x i64> %141, %143
  %145 = insertelement <4 x i64> poison, i64 %100, i64 0
  %146 = insertelement <4 x i64> %145, i64 %110, i64 1
  %147 = insertelement <4 x i64> %146, i64 %120, i64 2
  %148 = insertelement <4 x i64> %147, i64 %130, i64 3
  %149 = xor <4 x i64> %144, %148
  %150 = insertelement <4 x i64> poison, i64 %107, i64 0
  %151 = insertelement <4 x i64> %150, i64 %117, i64 1
  %152 = insertelement <4 x i64> %151, i64 %127, i64 2
  %153 = insertelement <4 x i64> %152, i64 %137, i64 3
  %154 = sub <4 x i64> %153, %143
  %155 = insertelement <4 x i64> poison, i64 %103, i64 0
  %156 = insertelement <4 x i64> %155, i64 %113, i64 1
  %157 = insertelement <4 x i64> %156, i64 %123, i64 2
  %158 = insertelement <4 x i64> %157, i64 %133, i64 3
  %159 = xor <4 x i64> %154, %158
  %160 = and <4 x i64> %149, splat (i64 4294967295)
  %161 = and <4 x i64> %159, splat (i64 4294967295)
  %162 = mul nuw <4 x i64> %161, %160
  %163 = lshr <4 x i64> %149, splat (i64 32)
  %164 = mul nuw <4 x i64> %161, %163
  %165 = lshr <4 x i64> %159, splat (i64 32)
  %166 = mul nuw <4 x i64> %165, %160
  %167 = mul nuw <4 x i64> %165, %163
  %168 = lshr <4 x i64> %162, splat (i64 32)
  %169 = and <4 x i64> %164, splat (i64 4294967295)
  %170 = add nuw <4 x i64> %169, %166
  %171 = add nuw <4 x i64> %170, %168
  %172 = lshr <4 x i64> %164, splat (i64 32)
  %173 = lshr <4 x i64> %171, splat (i64 32)
  %174 = add nuw <4 x i64> %172, %167
  %175 = add nuw <4 x i64> %174, %173
  %176 = shl <4 x i64> %171, splat (i64 32)
  %177 = and <4 x i64> %162, splat (i64 4294967295)
  %178 = or disjoint <4 x i64> %176, %177
  %179 = xor <4 x i64> %178, %175
  %180 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %179)
  %181 = add i64 %180, %97
  %182 = add i64 %181, %63
  %183 = lshr i64 %182, 37
  %184 = xor i64 %183, %182
  %185 = mul i64 %184, 1609587791953885689
  %186 = lshr i64 %185, 32
  %187 = xor i64 %186, %185
  ret i64 %187
}

; Function Attrs: nounwind
define dso_local i64 @target_64seed_len240(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  br label %15

15:                                               ; preds = %15, %2
  %16 = phi i32 [ 0, %2 ], [ %56, %15 ]
  %17 = phi i64 [ 6053425508913110672, %2 ], [ %55, %15 ]
  %18 = shl nuw nsw i32 %16, 4
  %19 = getelementptr inbounds nuw i8, ptr %0, i32 %18
  %20 = getelementptr inbounds nuw i8, ptr @kSecret, i32 %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  %21 = call ptr @memcpy(ptr noundef nonnull %14, ptr noundef %19, i32 noundef 8) #5
  %22 = load i64, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  %23 = getelementptr inbounds nuw i8, ptr %19, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  %24 = call ptr @memcpy(ptr noundef nonnull %13, ptr noundef nonnull %23, i32 noundef 8) #5
  %25 = load i64, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  %26 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %20, i32 noundef 8) #5
  %27 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  %28 = add i64 %27, %1
  %29 = xor i64 %28, %22
  %30 = getelementptr inbounds nuw i8, ptr %20, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  %31 = call ptr @memcpy(ptr noundef nonnull %11, ptr noundef nonnull %30, i32 noundef 8) #5
  %32 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  %33 = sub i64 %32, %1
  %34 = xor i64 %33, %25
  %35 = and i64 %29, 4294967295
  %36 = and i64 %34, 4294967295
  %37 = mul nuw i64 %36, %35
  %38 = lshr i64 %29, 32
  %39 = mul nuw i64 %36, %38
  %40 = lshr i64 %34, 32
  %41 = mul nuw i64 %40, %35
  %42 = mul nuw i64 %40, %38
  %43 = lshr i64 %37, 32
  %44 = and i64 %39, 4294967295
  %45 = add nuw i64 %44, %41
  %46 = add nuw i64 %45, %43
  %47 = lshr i64 %39, 32
  %48 = lshr i64 %46, 32
  %49 = add nuw i64 %47, %42
  %50 = add nuw i64 %49, %48
  %51 = shl i64 %46, 32
  %52 = and i64 %37, 4294967295
  %53 = or disjoint i64 %51, %52
  %54 = xor i64 %53, %50
  %55 = add i64 %54, %17
  %56 = add nuw nsw i32 %16, 1
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %15

58:                                               ; preds = %15
  %59 = lshr i64 %55, 37
  %60 = xor i64 %59, %55
  %61 = mul i64 %60, 1609587791953885689
  %62 = lshr i64 %61, 32
  %63 = xor i64 %62, %61
  br label %64

64:                                               ; preds = %64, %58
  %65 = phi i32 [ %106, %64 ], [ 8, %58 ]
  %66 = phi i64 [ %105, %64 ], [ %63, %58 ]
  %67 = shl nsw i32 %65, 4
  %68 = getelementptr inbounds nuw i8, ptr %0, i32 %67
  %69 = getelementptr i8, ptr @kSecret, i32 %67
  %70 = getelementptr i8, ptr %69, i32 -125
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  %71 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %68, i32 noundef 8) #5
  %72 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  %73 = getelementptr inbounds nuw i8, ptr %68, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %74 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %73, i32 noundef 8) #5
  %75 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %76 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef %70, i32 noundef 8) #5
  %77 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  %78 = add i64 %77, %1
  %79 = xor i64 %78, %72
  %80 = getelementptr i8, ptr %69, i32 -117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %81 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %80, i32 noundef 8) #5
  %82 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  %83 = sub i64 %82, %1
  %84 = xor i64 %83, %75
  %85 = and i64 %79, 4294967295
  %86 = and i64 %84, 4294967295
  %87 = mul nuw i64 %86, %85
  %88 = lshr i64 %79, 32
  %89 = mul nuw i64 %86, %88
  %90 = lshr i64 %84, 32
  %91 = mul nuw i64 %90, %85
  %92 = mul nuw i64 %90, %88
  %93 = lshr i64 %87, 32
  %94 = and i64 %89, 4294967295
  %95 = add nuw i64 %94, %91
  %96 = add nuw i64 %95, %93
  %97 = lshr i64 %89, 32
  %98 = lshr i64 %96, 32
  %99 = add nuw i64 %97, %92
  %100 = add nuw i64 %99, %98
  %101 = shl i64 %96, 32
  %102 = and i64 %87, 4294967295
  %103 = or disjoint i64 %101, %102
  %104 = xor i64 %103, %100
  %105 = add i64 %104, %66
  %106 = add nuw nsw i32 %65, 1
  %107 = icmp eq i32 %106, 15
  br i1 %107, label %108, label %64

108:                                              ; preds = %64
  %109 = getelementptr inbounds nuw i8, ptr %0, i32 224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %110 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %109, i32 noundef 8) #5
  %111 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  %112 = getelementptr inbounds nuw i8, ptr %0, i32 232
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %113 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %112, i32 noundef 8) #5
  %114 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %115 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 119), i32 noundef 8) #5
  %116 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  %117 = add i64 %116, %1
  %118 = xor i64 %117, %111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  %119 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 127), i32 noundef 8) #5
  %120 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  %121 = sub i64 %120, %1
  %122 = xor i64 %121, %114
  %123 = and i64 %118, 4294967295
  %124 = and i64 %122, 4294967295
  %125 = mul nuw i64 %124, %123
  %126 = lshr i64 %118, 32
  %127 = mul nuw i64 %124, %126
  %128 = lshr i64 %122, 32
  %129 = mul nuw i64 %128, %123
  %130 = mul nuw i64 %128, %126
  %131 = lshr i64 %125, 32
  %132 = and i64 %127, 4294967295
  %133 = add nuw i64 %132, %129
  %134 = add nuw i64 %133, %131
  %135 = lshr i64 %127, 32
  %136 = lshr i64 %134, 32
  %137 = add nuw i64 %135, %130
  %138 = add nuw i64 %137, %136
  %139 = shl i64 %134, 32
  %140 = and i64 %125, 4294967295
  %141 = or disjoint i64 %139, %140
  %142 = xor i64 %141, %138
  %143 = add i64 %142, %105
  %144 = lshr i64 %143, 37
  %145 = xor i64 %144, %143
  %146 = mul i64 %145, 1609587791953885689
  %147 = lshr i64 %146, 32
  %148 = xor i64 %147, %146
  ret i64 %148
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #3

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !8, !9}
!6 = distinct !{!6, !7, !"XXH3_mix16B: argument 0"}
!7 = distinct !{!7, !"XXH3_mix16B"}
!8 = distinct !{!8, !7, !"XXH3_mix16B: argument 1"}
!9 = distinct !{!9, !10, !"XXH3_len_129to240_64b: argument 0"}
!10 = distinct !{!10, !"XXH3_len_129to240_64b"}
!11 = !{!8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !17, !9}
!15 = distinct !{!15, !16, !"XXH3_mix16B: argument 0"}
!16 = distinct !{!16, !"XXH3_mix16B"}
!17 = distinct !{!17, !16, !"XXH3_mix16B: argument 1"}
!18 = !{!17}
!19 = !{!20, !22, !9}
!20 = distinct !{!20, !21, !"XXH3_mix16B: argument 0"}
!21 = distinct !{!21, !"XXH3_mix16B"}
!22 = distinct !{!22, !21, !"XXH3_mix16B: argument 1"}
!23 = !{!22}
!24 = !{!25, !27, !28}
!25 = distinct !{!25, !26, !"XXH3_mix16B: argument 0"}
!26 = distinct !{!26, !"XXH3_mix16B"}
!27 = distinct !{!27, !26, !"XXH3_mix16B: argument 1"}
!28 = distinct !{!28, !29, !"XXH3_len_129to240_64b: argument 0"}
!29 = distinct !{!29, !"XXH3_len_129to240_64b"}
!30 = !{!27}
!31 = !{!32, !34, !28}
!32 = distinct !{!32, !33, !"XXH3_mix16B: argument 0"}
!33 = distinct !{!33, !"XXH3_mix16B"}
!34 = distinct !{!34, !33, !"XXH3_mix16B: argument 1"}
!35 = !{!34}
!36 = !{!37, !39, !28}
!37 = distinct !{!37, !38, !"XXH3_mix16B: argument 0"}
!38 = distinct !{!38, !"XXH3_mix16B"}
!39 = distinct !{!39, !38, !"XXH3_mix16B: argument 1"}
!40 = !{!39}
!41 = !{!42, !44, !45}
!42 = distinct !{!42, !43, !"XXH3_mix16B: argument 0"}
!43 = distinct !{!43, !"XXH3_mix16B"}
!44 = distinct !{!44, !43, !"XXH3_mix16B: argument 1"}
!45 = distinct !{!45, !46, !"XXH3_len_129to240_64b: argument 0"}
!46 = distinct !{!46, !"XXH3_len_129to240_64b"}
!47 = !{!44}
!48 = !{!49, !51, !45}
!49 = distinct !{!49, !50, !"XXH3_mix16B: argument 0"}
!50 = distinct !{!50, !"XXH3_mix16B"}
!51 = distinct !{!51, !50, !"XXH3_mix16B: argument 1"}
!52 = !{!51}
!53 = distinct !{!53, !13, !54}
!54 = !{!"llvm.loop.vectorize.width", i32 1}
!55 = !{!56, !58, !45}
!56 = distinct !{!56, !57, !"XXH3_mix16B: argument 0"}
!57 = distinct !{!57, !"XXH3_mix16B"}
!58 = distinct !{!58, !57, !"XXH3_mix16B: argument 1"}
!59 = !{!58}
