; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/19cd4ff/wrap_single.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/19cd4ff/wrap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = trunc i64 %0 to i32
  %11 = mul i32 %10, -2048144777
  %12 = add i32 %11, 606290984
  %13 = add i32 %12, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 13)
  %15 = mul i32 %14, -1640531535
  %16 = freeze i32 %15
  %17 = lshr i64 %0, 32
  %18 = trunc nuw i64 %17 to i32
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, -2048144777
  %21 = add i32 %20, %8
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = freeze i32 %23
  %25 = trunc i64 %1 to i32
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %8, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = freeze i32 %29
  %31 = lshr i64 %1, 32
  %32 = trunc nuw i64 %31 to i32
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, 1640531535
  %35 = add i32 %34, %8
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 1)
  %40 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 7)
  %41 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 12)
  %42 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 18)
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, 20
  %46 = add i32 %45, %39
  %47 = add i32 %46, %40
  %48 = add i32 %47, %41
  %49 = add i32 %48, %42
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = lshr i32 %51, 15
  %53 = xor i32 %52, %51
  %54 = mul i32 %53, -2048144777
  %55 = lshr i32 %54, 13
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, -1028477379
  %58 = lshr i32 %57, 16
  %59 = xor i32 %58, %57
  ret i32 %59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len40(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  %6 = load i64, ptr %0, align 1
  %7 = mul i64 %6, -4417276706812531889
  %8 = add i64 %3, %7
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 1
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %4, %13
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i64, ptr %17, align 1
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %1
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load i64, ptr %23, align 1
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %5, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 1)
  %30 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 7)
  %31 = add i64 %30, %29
  %32 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 12)
  %33 = add i64 %31, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 18)
  %35 = add i64 %33, %34
  %36 = mul i64 %9, -2381459717836149591
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %35, %38
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = mul i64 %15, -2381459717836149591
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 31)
  %44 = mul i64 %43, -7046029288634856825
  %45 = xor i64 %41, %44
  %46 = mul i64 %45, -7046029288634856825
  %47 = add i64 %46, -8796714831421723037
  %48 = mul i64 %21, -2381459717836149591
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 31)
  %50 = mul i64 %49, -7046029288634856825
  %51 = xor i64 %47, %50
  %52 = mul i64 %51, -7046029288634856825
  %53 = add i64 %52, -8796714831421723037
  %54 = mul i64 %27, -2381459717836149591
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  %57 = xor i64 %53, %56
  %58 = mul i64 %57, -7046029288634856825
  %59 = getelementptr i8, ptr %0, i64 32
  %60 = add i64 %58, -8796714831421722997
  %61 = load i64, ptr %59, align 1
  %62 = mul i64 %61, -4417276706812531889
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %60, %64
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 27)
  %67 = mul i64 %66, -7046029288634856825
  %68 = add i64 %67, -8796714831421723037
  %69 = lshr i64 %68, 33
  %70 = xor i64 %69, %68
  %71 = mul i64 %70, -4417276706812531889
  %72 = lshr i64 %71, 29
  %73 = xor i64 %72, %71
  %74 = mul i64 %73, 1609587929392839161
  %75 = lshr i64 %74, 32
  %76 = xor i64 %75, %74
  ret i64 %76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len20(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 1
  %5 = xor i64 %2, -4734510112055689544
  %6 = xor i64 %4, 2066345149520216444
  %7 = zext i64 %5 to i128
  %8 = zext i64 %6 to i128
  %9 = mul nuw i128 %8, %7
  %10 = lshr i128 %9, 64
  %11 = xor i128 %10, %9
  %12 = trunc i128 %11 to i64
  %13 = add i64 %12, 6653366816979276428
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i64 12
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %15, -2623469361688619810
  %19 = xor i64 %17, 2262974939099578482
  %20 = zext i64 %18 to i128
  %21 = zext i64 %19 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %13, %25
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587929392839161
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  ret i64 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len200(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 1
  %5 = xor i64 %2, -4734510112055689544
  %6 = xor i64 %4, 2066345149520216444
  %7 = zext i64 %5 to i128
  %8 = zext i64 %6 to i128
  %9 = mul nuw i128 %8, %7
  %10 = lshr i128 %9, 64
  %11 = xor i128 %10, %9
  %12 = trunc i128 %11 to i64
  %13 = add i64 %12, -7253308125045442184
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i64 24
  %17 = load i64, ptr %16, align 1
  %18 = xor i64 %15, -2623469361688619810
  %19 = xor i64 %17, 2262974939099578482
  %20 = zext i64 %18 to i128
  %21 = zext i64 %19 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %13, %25
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr i8, ptr %0, i64 40
  %30 = load i64, ptr %29, align 1
  %31 = xor i64 %28, 8711581037947681227
  %32 = xor i64 %30, 2410270004345854594
  %33 = zext i64 %31 to i128
  %34 = zext i64 %32 to i128
  %35 = mul nuw i128 %34, %33
  %36 = lshr i128 %35, 64
  %37 = xor i128 %36, %35
  %38 = trunc i128 %37 to i64
  %39 = add i64 %26, %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %41 = load i64, ptr %40, align 1
  %42 = getelementptr i8, ptr %0, i64 56
  %43 = load i64, ptr %42, align 1
  %44 = xor i64 %41, -8204357891075471176
  %45 = xor i64 %43, 5487137525590930912
  %46 = zext i64 %44 to i128
  %47 = zext i64 %45 to i128
  %48 = mul nuw i128 %47, %46
  %49 = lshr i128 %48, 64
  %50 = xor i128 %49, %48
  %51 = trunc i128 %50 to i64
  %52 = add i64 %39, %51
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %54 = load i64, ptr %53, align 1
  %55 = getelementptr i8, ptr %0, i64 72
  %56 = load i64, ptr %55, align 1
  %57 = xor i64 %54, -3818837453329782724
  %58 = xor i64 %56, -6688317018830679928
  %59 = zext i64 %57 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %52, %64
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %67 = load i64, ptr %66, align 1
  %68 = getelementptr i8, ptr %0, i64 88
  %69 = load i64, ptr %68, align 1
  %70 = xor i64 %67, 5690594596133299313
  %71 = xor i64 %69, -2833645246901970632
  %72 = zext i64 %70 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %73, %72
  %75 = lshr i128 %74, 64
  %76 = xor i128 %75, %74
  %77 = trunc i128 %76 to i64
  %78 = add i64 %65, %77
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %80 = load i64, ptr %79, align 1
  %81 = getelementptr i8, ptr %0, i64 104
  %82 = load i64, ptr %81, align 1
  %83 = xor i64 %80, 4554437623014685352
  %84 = xor i64 %82, 2111919702937427193
  %85 = zext i64 %83 to i128
  %86 = zext i64 %84 to i128
  %87 = mul nuw i128 %86, %85
  %88 = lshr i128 %87, 64
  %89 = xor i128 %88, %87
  %90 = trunc i128 %89 to i64
  %91 = add i64 %78, %90
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 120
  %95 = load i64, ptr %94, align 1
  %96 = xor i64 %93, 3556072174620004746
  %97 = xor i64 %95, 7238261902898274248
  %98 = zext i64 %96 to i128
  %99 = zext i64 %97 to i128
  %100 = mul nuw i128 %99, %98
  %101 = lshr i128 %100, 64
  %102 = xor i128 %101, %100
  %103 = trunc i128 %102 to i64
  %104 = add i64 %91, %103
  %105 = lshr i64 %104, 37
  %106 = xor i64 %105, %104
  %107 = mul i64 %106, 1609587929392839161
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %111 = load i64, ptr %110, align 1
  %112 = getelementptr i8, ptr %0, i64 136
  %113 = load i64, ptr %112, align 1
  %114 = xor i64 %111, -9150895811085458631
  %115 = xor i64 %113, 7914194659941938988
  %116 = zext i64 %114 to i128
  %117 = zext i64 %115 to i128
  %118 = mul nuw i128 %117, %116
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %109, %121
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %124 = load i64, ptr %123, align 1
  %125 = getelementptr i8, ptr %0, i64 152
  %126 = load i64, ptr %125, align 1
  %127 = xor i64 %124, -6611157965513653271
  %128 = xor i64 %126, -1839215637059881052
  %129 = zext i64 %127 to i128
  %130 = zext i64 %128 to i128
  %131 = mul nuw i128 %130, %129
  %132 = lshr i128 %131, 64
  %133 = xor i128 %132, %131
  %134 = trunc i128 %133 to i64
  %135 = add i64 %122, %134
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %137 = load i64, ptr %136, align 1
  %138 = getelementptr i8, ptr %0, i64 168
  %139 = load i64, ptr %138, align 1
  %140 = xor i64 %137, -3433288310154277810
  %141 = xor i64 %139, 5046485836271438973
  %142 = zext i64 %140 to i128
  %143 = zext i64 %141 to i128
  %144 = mul nuw i128 %143, %142
  %145 = lshr i128 %144, 64
  %146 = xor i128 %145, %144
  %147 = trunc i128 %146 to i64
  %148 = add i64 %135, %147
  %149 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %150 = load i64, ptr %149, align 1
  %151 = getelementptr i8, ptr %0, i64 184
  %152 = load i64, ptr %151, align 1
  %153 = xor i64 %150, -8055285457383852172
  %154 = xor i64 %152, 5920048007935066598
  %155 = zext i64 %153 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %148, %160
  %162 = getelementptr i8, ptr %0, i64 192
  %163 = load i64, ptr %162, align 1
  %164 = xor i64 %152, 8320639771003045937
  %165 = xor i64 %163, -1453760514566526364
  %166 = zext i64 %164 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %161, %171
  %173 = lshr i64 %172, 37
  %174 = xor i64 %173, %172
  %175 = mul i64 %174, 1609587929392839161
  %176 = lshr i64 %175, 32
  %177 = xor i64 %176, %175
  ret i64 %177
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh128_len20_lo(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = load i64, ptr %2, align 1
  %7 = getelementptr i8, ptr %0, i64 12
  %8 = load i64, ptr %7, align 1
  %9 = xor i64 %3, -4734510112055689544
  %10 = xor i64 %5, 2066345149520216444
  %11 = zext i64 %9 to i128
  %12 = zext i64 %10 to i128
  %13 = mul nuw i128 %12, %11
  %14 = lshr i128 %13, 64
  %15 = xor i128 %14, %13
  %16 = trunc i128 %15 to i64
  %17 = add i64 %16, 6653366816979276428
  %18 = add i64 %8, %6
  %19 = xor i64 %17, %18
  %20 = xor i64 %6, -2623469361688619810
  %21 = xor i64 %8, 2262974939099578482
  %22 = zext i64 %20 to i128
  %23 = zext i64 %21 to i128
  %24 = mul nuw i128 %23, %22
  %25 = lshr i128 %24, 64
  %26 = xor i128 %25, %24
  %27 = trunc i128 %26 to i64
  %28 = add i64 %5, %3
  %29 = xor i64 %28, %27
  %30 = add i64 %29, %19
  %31 = lshr i64 %30, 37
  %32 = xor i64 %31, %30
  %33 = mul i64 %32, 1609587929392839161
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  ret i64 %35
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca [64 x i8], align 16
  %11 = alloca %struct.XXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #6
  store i64 %0, ptr %10, align 16
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %2, ptr %13, align 16
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %3, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %4, ptr %15, align 16
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 %5, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 %6, ptr %17, align 16
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i64 %7, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #6
  %19 = add i32 %8, 606290984
  %20 = add i32 %8, -2048144777
  %21 = add i32 %8, 1640531535
  store i64 4294967316, ptr %11, align 8
  %22 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %11, i64 12
  %24 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 20
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 24
  %27 = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %26, ptr noundef nonnull readonly align 16 dereferenceable(10) %10, i64 10, i1 false)
  store i32 10, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 10
  %29 = getelementptr inbounds nuw i8, ptr %11, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %29, ptr noundef nonnull readonly align 2 dereferenceable(6) %28, i64 6, i1 false)
  %30 = load i32, ptr %26, align 8
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %19
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = freeze i32 %34
  store i32 %35, ptr %22, align 8
  %36 = getelementptr inbounds nuw i8, ptr %11, i64 28
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %20
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = freeze i32 %41
  store i32 %42, ptr %23, align 4
  %43 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %44 = load i32, ptr %43, align 8
  %45 = mul i32 %44, -2048144777
  %46 = add i32 %45, %8
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 13)
  %48 = mul i32 %47, -1640531535
  %49 = freeze i32 %48
  store i32 %49, ptr %24, align 8
  %50 = getelementptr inbounds nuw i8, ptr %11, i64 36
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, -2048144777
  %53 = add i32 %52, %21
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  %56 = freeze i32 %55
  store i32 %56, ptr %25, align 4
  %57 = load i32, ptr %27, align 8
  %58 = sub i32 16, %57
  %59 = icmp ult i32 %58, 10
  br i1 %59, label %69, label %60

60:                                               ; preds = %9
  %61 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 7)
  %62 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 1)
  %63 = add i32 %61, %62
  %64 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 12)
  %65 = add i32 %63, %64
  %66 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 18)
  %67 = add i32 %65, %66
  %68 = add i32 %67, 20
  br label %185

69:                                               ; preds = %9
  %70 = zext nneg i32 %58 to i64
  %71 = getelementptr inbounds nuw i8, ptr %28, i64 %70
  %72 = sub nuw nsw i64 10, %70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %26, ptr nonnull readonly align 1 %71, i64 %72, i1 false)
  %73 = trunc nuw nsw i64 %72 to i32
  store i32 %73, ptr %27, align 8
  %74 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 7)
  %75 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 1)
  %76 = add i32 %74, %75
  %77 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 12)
  %78 = add i32 %76, %77
  %79 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 18)
  %80 = add i32 %78, %79
  %81 = add i32 %80, 20
  switch i32 %73, label %184 [
    i32 7, label %148
    i32 8, label %82
    i32 4, label %89
    i32 1, label %175
    i32 9, label %97
    i32 5, label %104
    i32 2, label %165
    i32 10, label %119
    i32 6, label %126
    i32 3, label %155
  ]

82:                                               ; preds = %69
  %83 = load i32, ptr %26, align 8
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %81
  %86 = getelementptr inbounds nuw i8, ptr %11, i64 28
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %88 = mul i32 %87, 668265263
  br label %89

89:                                               ; preds = %82, %69
  %90 = phi ptr [ %26, %69 ], [ %86, %82 ]
  %91 = phi i32 [ %81, %69 ], [ %88, %82 ]
  %92 = load i32, ptr %90, align 1
  %93 = mul i32 %92, -1028477379
  %94 = add i32 %93, %91
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 17)
  %96 = mul i32 %95, 668265263
  br label %185

97:                                               ; preds = %69
  %98 = load i32, ptr %26, align 8
  %99 = mul i32 %98, -1028477379
  %100 = add i32 %99, %81
  %101 = getelementptr inbounds nuw i8, ptr %11, i64 28
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 17)
  %103 = mul i32 %102, 668265263
  br label %104

104:                                              ; preds = %97, %69
  %105 = phi ptr [ %26, %69 ], [ %101, %97 ]
  %106 = phi i32 [ %81, %69 ], [ %103, %97 ]
  %107 = load i32, ptr %105, align 1
  %108 = mul i32 %107, -1028477379
  %109 = add i32 %108, %106
  %110 = getelementptr inbounds nuw i8, ptr %105, i64 4
  %111 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 17)
  %112 = mul i32 %111, 668265263
  %113 = load i8, ptr %110, align 1
  %114 = zext i8 %113 to i32
  %115 = mul i32 %114, 374761393
  %116 = add i32 %112, %115
  %117 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 11)
  %118 = mul i32 %117, -1640531535
  br label %185

119:                                              ; preds = %69
  %120 = load i32, ptr %26, align 8
  %121 = mul i32 %120, -1028477379
  %122 = add i32 %121, %81
  %123 = getelementptr inbounds nuw i8, ptr %11, i64 28
  %124 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 17)
  %125 = mul i32 %124, 668265263
  br label %126

126:                                              ; preds = %119, %69
  %127 = phi ptr [ %26, %69 ], [ %123, %119 ]
  %128 = phi i32 [ %81, %69 ], [ %125, %119 ]
  %129 = load i32, ptr %127, align 1
  %130 = mul i32 %129, -1028477379
  %131 = add i32 %130, %128
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 4
  %133 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 17)
  %134 = mul i32 %133, 668265263
  %135 = getelementptr inbounds nuw i8, ptr %127, i64 5
  %136 = load i8, ptr %132, align 1
  %137 = zext i8 %136 to i32
  %138 = mul i32 %137, 374761393
  %139 = add i32 %134, %138
  %140 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 11)
  %141 = mul i32 %140, -1640531535
  %142 = load i8, ptr %135, align 1
  %143 = zext i8 %142 to i32
  %144 = mul i32 %143, 374761393
  %145 = add i32 %141, %144
  %146 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 11)
  %147 = mul i32 %146, -1640531535
  br label %185

148:                                              ; preds = %69
  %149 = load i32, ptr %26, align 8
  %150 = mul i32 %149, -1028477379
  %151 = add i32 %150, %81
  %152 = getelementptr inbounds nuw i8, ptr %11, i64 28
  %153 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 17)
  %154 = mul i32 %153, 668265263
  br label %155

155:                                              ; preds = %69, %148
  %156 = phi ptr [ %26, %69 ], [ %152, %148 ]
  %157 = phi i32 [ %81, %69 ], [ %154, %148 ]
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 1
  %159 = load i8, ptr %156, align 1
  %160 = zext i8 %159 to i32
  %161 = mul i32 %160, 374761393
  %162 = add i32 %161, %157
  %163 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 11)
  %164 = mul i32 %163, -1640531535
  br label %165

165:                                              ; preds = %69, %155
  %166 = phi ptr [ %26, %69 ], [ %158, %155 ]
  %167 = phi i32 [ %81, %69 ], [ %164, %155 ]
  %168 = getelementptr inbounds nuw i8, ptr %166, i64 1
  %169 = load i8, ptr %166, align 1
  %170 = zext i8 %169 to i32
  %171 = mul i32 %170, 374761393
  %172 = add i32 %171, %167
  %173 = tail call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 11)
  %174 = mul i32 %173, -1640531535
  br label %175

175:                                              ; preds = %69, %165
  %176 = phi ptr [ %26, %69 ], [ %168, %165 ]
  %177 = phi i32 [ %81, %69 ], [ %174, %165 ]
  %178 = load i8, ptr %176, align 1
  %179 = zext i8 %178 to i32
  %180 = mul i32 %179, 374761393
  %181 = add i32 %180, %177
  %182 = tail call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 11)
  %183 = mul i32 %182, -1640531535
  br label %185

184:                                              ; preds = %69
  unreachable

185:                                              ; preds = %60, %89, %104, %126, %175
  %186 = phi i32 [ %147, %126 ], [ %118, %104 ], [ %96, %89 ], [ %183, %175 ], [ %68, %60 ]
  %187 = lshr i32 %186, 15
  %188 = xor i32 %187, %186
  %189 = mul i32 %188, -2048144777
  %190 = lshr i32 %189, 13
  %191 = xor i32 %190, %189
  %192 = mul i32 %191, -1028477379
  %193 = lshr i32 %192, 16
  %194 = xor i32 %193, %192
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #6
  ret i32 %194
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 244366}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_len_17to128_64b: argument 0"}
!8 = distinct !{!8, !"XXH3_len_17to128_64b"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"XXH3_len_129to240_64b: argument 0"}
!11 = distinct !{!11, !"XXH3_len_129to240_64b"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_len_17to128_128b: argument 0"}
!14 = distinct !{!14, !"XXH3_len_17to128_128b"}
