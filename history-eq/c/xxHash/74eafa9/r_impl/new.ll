; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/74eafa9/wrap_impl.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/74eafa9/wrap_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, [4 x i32], [4 x i32], i32, i32 }

; Function Attrs: nounwind uwtable
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
  %29 = mul i64 %28, 1609587791953885689
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  ret i64 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len200(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = add i64 %1, -4734510112055689544
  %7 = xor i64 %3, %6
  %8 = sub i64 2066345149520216444, %1
  %9 = xor i64 %5, %8
  %10 = zext i64 %7 to i128
  %11 = zext i64 %9 to i128
  %12 = mul nuw i128 %11, %10
  %13 = lshr i128 %12, 64
  %14 = xor i128 %13, %12
  %15 = trunc i128 %14 to i64
  %16 = add i64 %15, -7253308125045442184
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr i8, ptr %0, i64 24
  %20 = load i64, ptr %19, align 1
  %21 = add i64 %1, -2623469361688619810
  %22 = xor i64 %18, %21
  %23 = sub i64 2262974939099578482, %1
  %24 = xor i64 %20, %23
  %25 = zext i64 %22 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %26, %25
  %28 = lshr i128 %27, 64
  %29 = xor i128 %28, %27
  %30 = trunc i128 %29 to i64
  %31 = add i64 %16, %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %33 = load i64, ptr %32, align 1
  %34 = getelementptr i8, ptr %0, i64 40
  %35 = load i64, ptr %34, align 1
  %36 = add i64 %1, 8711581037947681227
  %37 = xor i64 %33, %36
  %38 = sub i64 2410270004345854594, %1
  %39 = xor i64 %35, %38
  %40 = zext i64 %37 to i128
  %41 = zext i64 %39 to i128
  %42 = mul nuw i128 %41, %40
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %31, %45
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr i8, ptr %0, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = add i64 %1, -8204357891075471176
  %52 = xor i64 %48, %51
  %53 = sub i64 5487137525590930912, %1
  %54 = xor i64 %50, %53
  %55 = zext i64 %52 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %46, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %63 = load i64, ptr %62, align 1
  %64 = getelementptr i8, ptr %0, i64 72
  %65 = load i64, ptr %64, align 1
  %66 = add i64 %1, -3818837453329782724
  %67 = xor i64 %63, %66
  %68 = sub i64 -6688317018830679928, %1
  %69 = xor i64 %65, %68
  %70 = zext i64 %67 to i128
  %71 = zext i64 %69 to i128
  %72 = mul nuw i128 %71, %70
  %73 = lshr i128 %72, 64
  %74 = xor i128 %73, %72
  %75 = trunc i128 %74 to i64
  %76 = add i64 %61, %75
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %78 = load i64, ptr %77, align 1
  %79 = getelementptr i8, ptr %0, i64 88
  %80 = load i64, ptr %79, align 1
  %81 = add i64 %1, 5690594596133299313
  %82 = xor i64 %78, %81
  %83 = sub i64 -2833645246901970632, %1
  %84 = xor i64 %80, %83
  %85 = zext i64 %82 to i128
  %86 = zext i64 %84 to i128
  %87 = mul nuw i128 %86, %85
  %88 = lshr i128 %87, 64
  %89 = xor i128 %88, %87
  %90 = trunc i128 %89 to i64
  %91 = add i64 %76, %90
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 104
  %95 = load i64, ptr %94, align 1
  %96 = add i64 %1, 4554437623014685352
  %97 = xor i64 %93, %96
  %98 = sub i64 2111919702937427193, %1
  %99 = xor i64 %95, %98
  %100 = zext i64 %97 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %91, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %108 = load i64, ptr %107, align 1
  %109 = getelementptr i8, ptr %0, i64 120
  %110 = load i64, ptr %109, align 1
  %111 = add i64 %1, 3556072174620004746
  %112 = xor i64 %108, %111
  %113 = sub i64 7238261902898274248, %1
  %114 = xor i64 %110, %113
  %115 = zext i64 %112 to i128
  %116 = zext i64 %114 to i128
  %117 = mul nuw i128 %116, %115
  %118 = lshr i128 %117, 64
  %119 = xor i128 %118, %117
  %120 = trunc i128 %119 to i64
  %121 = add i64 %106, %120
  %122 = lshr i64 %121, 37
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587791953885689
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr i8, ptr %0, i64 136
  %130 = load i64, ptr %129, align 1
  %131 = add i64 %1, -9150895811085458631
  %132 = xor i64 %128, %131
  %133 = sub i64 7914194659941938988, %1
  %134 = xor i64 %130, %133
  %135 = zext i64 %132 to i128
  %136 = zext i64 %134 to i128
  %137 = mul nuw i128 %136, %135
  %138 = lshr i128 %137, 64
  %139 = xor i128 %138, %137
  %140 = trunc i128 %139 to i64
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %142 = load i64, ptr %141, align 1
  %143 = getelementptr i8, ptr %0, i64 152
  %144 = load i64, ptr %143, align 1
  %145 = add i64 %1, -6611157965513653271
  %146 = xor i64 %142, %145
  %147 = sub i64 -1839215637059881052, %1
  %148 = xor i64 %144, %147
  %149 = zext i64 %146 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %156 = load i64, ptr %155, align 1
  %157 = getelementptr i8, ptr %0, i64 168
  %158 = load i64, ptr %157, align 1
  %159 = add i64 %1, -3433288310154277810
  %160 = xor i64 %156, %159
  %161 = sub i64 5046485836271438973, %1
  %162 = xor i64 %158, %161
  %163 = zext i64 %160 to i128
  %164 = zext i64 %162 to i128
  %165 = mul nuw i128 %164, %163
  %166 = lshr i128 %165, 64
  %167 = xor i128 %166, %165
  %168 = trunc i128 %167 to i64
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %170 = load i64, ptr %169, align 1
  %171 = getelementptr i8, ptr %0, i64 184
  %172 = load i64, ptr %171, align 1
  %173 = add i64 %1, -8055285457383852172
  %174 = xor i64 %170, %173
  %175 = sub i64 5920048007935066598, %1
  %176 = xor i64 %172, %175
  %177 = zext i64 %174 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = getelementptr i8, ptr %0, i64 192
  %184 = load i64, ptr %183, align 1
  %185 = add i64 %1, 8320639771003045937
  %186 = xor i64 %172, %185
  %187 = sub i64 -1453760514566526364, %1
  %188 = xor i64 %184, %187
  %189 = zext i64 %186 to i128
  %190 = zext i64 %188 to i128
  %191 = mul nuw i128 %190, %189
  %192 = lshr i128 %191, 64
  %193 = xor i128 %192, %191
  %194 = trunc i128 %193 to i64
  %195 = add i64 %154, %140
  %196 = add i64 %195, %126
  %197 = add i64 %196, %168
  %198 = add i64 %197, %182
  %199 = add i64 %198, %194
  %200 = lshr i64 %199, 37
  %201 = xor i64 %200, %199
  %202 = mul i64 %201, 1609587791953885689
  %203 = lshr i64 %202, 32
  %204 = xor i64 %203, %202
  ret i64 %204
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
  %33 = mul i64 %32, 1609587791953885689
  %34 = lshr i64 %33, 32
  %35 = xor i64 %34, %33
  ret i64 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca [64 x i8], align 16
  %11 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #7
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #7
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 0, ptr %19, align 4
  %20 = add i32 %8, 606290984
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %22 = add i32 %8, -2048144777
  %23 = getelementptr inbounds nuw i8, ptr %11, i64 12
  %24 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %25 = add i32 %8, 1640531535
  %26 = getelementptr inbounds nuw i8, ptr %11, i64 20
  %27 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %28 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %29 = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %29, ptr noundef nonnull readonly align 16 dereferenceable(10) %10, i64 10, i1 false)
  store i32 10, ptr %28, align 4
  %30 = getelementptr inbounds nuw i8, ptr %10, i64 10
  store i32 20, ptr %11, align 4
  store i32 1, ptr %27, align 4
  %31 = getelementptr inbounds nuw i8, ptr %11, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %31, ptr noundef nonnull readonly align 2 dereferenceable(6) %30, i64 6, i1 false)
  %32 = load i32, ptr %29, align 4
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %20
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  %37 = freeze i32 %36
  store i32 %37, ptr %21, align 4
  %38 = getelementptr inbounds nuw i8, ptr %11, i64 28
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, -2048144777
  %41 = add i32 %40, %22
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 13)
  %43 = mul i32 %42, -1640531535
  %44 = freeze i32 %43
  store i32 %44, ptr %23, align 4
  %45 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %8
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  store i32 %51, ptr %24, align 4
  %52 = getelementptr inbounds nuw i8, ptr %11, i64 36
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %25
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  store i32 %58, ptr %26, align 4
  %59 = load i32, ptr %28, align 4
  %60 = sub i32 16, %59
  store i32 0, ptr %28, align 4
  %61 = icmp ult i32 %60, 10
  br i1 %61, label %62, label %67

62:                                               ; preds = %9
  %63 = zext nneg i32 %60 to i64
  %64 = getelementptr inbounds nuw i8, ptr %30, i64 %63
  %65 = sub nuw nsw i64 10, %63
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %29, ptr nonnull readonly align 1 %64, i64 %65, i1 false)
  %66 = trunc nuw nsw i64 %65 to i32
  store i32 %66, ptr %28, align 4
  br label %67

67:                                               ; preds = %9, %62
  %68 = phi i32 [ 0, %9 ], [ %66, %62 ]
  %69 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 7)
  %70 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 1)
  %71 = add i32 %69, %70
  %72 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 12)
  %73 = add i32 %71, %72
  %74 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 18)
  %75 = add i32 %73, %74
  %76 = add i32 %75, 20
  %77 = zext i32 %68 to i64
  %78 = icmp samesign ugt i32 %68, 3
  br i1 %78, label %79, label %108

79:                                               ; preds = %67
  %80 = add nsw i64 %77, -4
  %81 = lshr i64 %80, 2
  %82 = add nuw nsw i64 %81, 1
  %83 = and i64 %82, 7
  %84 = and i64 %80, 28
  %85 = icmp eq i64 %84, 28
  br i1 %85, label %100, label %86

86:                                               ; preds = %79, %86
  %87 = phi i32 [ %96, %86 ], [ %76, %79 ]
  %88 = phi i64 [ %97, %86 ], [ %77, %79 ]
  %89 = phi ptr [ %94, %86 ], [ %29, %79 ]
  %90 = phi i64 [ %98, %86 ], [ 0, %79 ]
  %91 = load i32, ptr %89, align 1
  %92 = mul i32 %91, -1028477379
  %93 = add i32 %92, %87
  %94 = getelementptr inbounds nuw i8, ptr %89, i64 4
  %95 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 17)
  %96 = mul i32 %95, 668265263
  %97 = add nsw i64 %88, -4
  %98 = add i64 %90, 1
  %99 = icmp eq i64 %98, %83
  br i1 %99, label %100, label %86

100:                                              ; preds = %86, %79
  %101 = phi i32 [ %76, %79 ], [ %96, %86 ]
  %102 = phi i64 [ %77, %79 ], [ %97, %86 ]
  %103 = phi ptr [ %29, %79 ], [ %94, %86 ]
  %104 = phi ptr [ poison, %79 ], [ %94, %86 ]
  %105 = phi i32 [ poison, %79 ], [ %96, %86 ]
  %106 = phi i64 [ poison, %79 ], [ %97, %86 ]
  %107 = icmp ult i64 %80, 28
  br i1 %107, label %108, label %137

108:                                              ; preds = %100, %137, %67
  %109 = phi ptr [ %29, %67 ], [ %104, %100 ], [ %186, %137 ]
  %110 = phi i64 [ %77, %67 ], [ %106, %100 ], [ %189, %137 ]
  %111 = phi i32 [ %76, %67 ], [ %105, %100 ], [ %188, %137 ]
  %112 = icmp eq i64 %110, 0
  br i1 %112, label %253, label %113

113:                                              ; preds = %108
  %114 = and i64 %110, 7
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %113, %116
  %117 = phi i32 [ %127, %116 ], [ %111, %113 ]
  %118 = phi i64 [ %128, %116 ], [ %110, %113 ]
  %119 = phi ptr [ %121, %116 ], [ %109, %113 ]
  %120 = phi i64 [ %129, %116 ], [ 0, %113 ]
  %121 = getelementptr inbounds nuw i8, ptr %119, i64 1
  %122 = load i8, ptr %119, align 1
  %123 = zext i8 %122 to i32
  %124 = mul i32 %123, 374761393
  %125 = add i32 %124, %117
  %126 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 11)
  %127 = mul i32 %126, -1640531535
  %128 = add nsw i64 %118, -1
  %129 = add i64 %120, 1
  %130 = icmp eq i64 %129, %114
  br i1 %130, label %131, label %116

131:                                              ; preds = %116, %113
  %132 = phi i32 [ poison, %113 ], [ %127, %116 ]
  %133 = phi i32 [ %111, %113 ], [ %127, %116 ]
  %134 = phi i64 [ %110, %113 ], [ %128, %116 ]
  %135 = phi ptr [ %109, %113 ], [ %121, %116 ]
  %136 = icmp ult i64 %110, 8
  br i1 %136, label %253, label %191

137:                                              ; preds = %100, %137
  %138 = phi i32 [ %188, %137 ], [ %101, %100 ]
  %139 = phi i64 [ %189, %137 ], [ %102, %100 ]
  %140 = phi ptr [ %186, %137 ], [ %103, %100 ]
  %141 = load i32, ptr %140, align 1
  %142 = mul i32 %141, -1028477379
  %143 = add i32 %142, %138
  %144 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %145 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 17)
  %146 = mul i32 %145, 668265263
  %147 = load i32, ptr %144, align 1
  %148 = mul i32 %147, -1028477379
  %149 = add i32 %148, %146
  %150 = getelementptr inbounds nuw i8, ptr %140, i64 8
  %151 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 17)
  %152 = mul i32 %151, 668265263
  %153 = load i32, ptr %150, align 1
  %154 = mul i32 %153, -1028477379
  %155 = add i32 %154, %152
  %156 = getelementptr inbounds nuw i8, ptr %140, i64 12
  %157 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 17)
  %158 = mul i32 %157, 668265263
  %159 = load i32, ptr %156, align 1
  %160 = mul i32 %159, -1028477379
  %161 = add i32 %160, %158
  %162 = getelementptr inbounds nuw i8, ptr %140, i64 16
  %163 = tail call i32 @llvm.fshl.i32(i32 %161, i32 %161, i32 17)
  %164 = mul i32 %163, 668265263
  %165 = load i32, ptr %162, align 1
  %166 = mul i32 %165, -1028477379
  %167 = add i32 %166, %164
  %168 = getelementptr inbounds nuw i8, ptr %140, i64 20
  %169 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 17)
  %170 = mul i32 %169, 668265263
  %171 = load i32, ptr %168, align 1
  %172 = mul i32 %171, -1028477379
  %173 = add i32 %172, %170
  %174 = getelementptr inbounds nuw i8, ptr %140, i64 24
  %175 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 17)
  %176 = mul i32 %175, 668265263
  %177 = load i32, ptr %174, align 1
  %178 = mul i32 %177, -1028477379
  %179 = add i32 %178, %176
  %180 = getelementptr inbounds nuw i8, ptr %140, i64 28
  %181 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 17)
  %182 = mul i32 %181, 668265263
  %183 = load i32, ptr %180, align 1
  %184 = mul i32 %183, -1028477379
  %185 = add i32 %184, %182
  %186 = getelementptr inbounds nuw i8, ptr %140, i64 32
  %187 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 17)
  %188 = mul i32 %187, 668265263
  %189 = add nsw i64 %139, -32
  %190 = icmp ugt i64 %189, 3
  br i1 %190, label %137, label %108

191:                                              ; preds = %131, %191
  %192 = phi i32 [ %250, %191 ], [ %133, %131 ]
  %193 = phi i64 [ %251, %191 ], [ %134, %131 ]
  %194 = phi ptr [ %244, %191 ], [ %135, %131 ]
  %195 = getelementptr inbounds nuw i8, ptr %194, i64 1
  %196 = load i8, ptr %194, align 1
  %197 = zext i8 %196 to i32
  %198 = mul i32 %197, 374761393
  %199 = add i32 %198, %192
  %200 = tail call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 11)
  %201 = mul i32 %200, -1640531535
  %202 = getelementptr inbounds nuw i8, ptr %194, i64 2
  %203 = load i8, ptr %195, align 1
  %204 = zext i8 %203 to i32
  %205 = mul i32 %204, 374761393
  %206 = add i32 %205, %201
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 11)
  %208 = mul i32 %207, -1640531535
  %209 = getelementptr inbounds nuw i8, ptr %194, i64 3
  %210 = load i8, ptr %202, align 1
  %211 = zext i8 %210 to i32
  %212 = mul i32 %211, 374761393
  %213 = add i32 %212, %208
  %214 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 11)
  %215 = mul i32 %214, -1640531535
  %216 = getelementptr inbounds nuw i8, ptr %194, i64 4
  %217 = load i8, ptr %209, align 1
  %218 = zext i8 %217 to i32
  %219 = mul i32 %218, 374761393
  %220 = add i32 %219, %215
  %221 = tail call i32 @llvm.fshl.i32(i32 %220, i32 %220, i32 11)
  %222 = mul i32 %221, -1640531535
  %223 = getelementptr inbounds nuw i8, ptr %194, i64 5
  %224 = load i8, ptr %216, align 1
  %225 = zext i8 %224 to i32
  %226 = mul i32 %225, 374761393
  %227 = add i32 %226, %222
  %228 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 11)
  %229 = mul i32 %228, -1640531535
  %230 = getelementptr inbounds nuw i8, ptr %194, i64 6
  %231 = load i8, ptr %223, align 1
  %232 = zext i8 %231 to i32
  %233 = mul i32 %232, 374761393
  %234 = add i32 %233, %229
  %235 = tail call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 11)
  %236 = mul i32 %235, -1640531535
  %237 = getelementptr inbounds nuw i8, ptr %194, i64 7
  %238 = load i8, ptr %230, align 1
  %239 = zext i8 %238 to i32
  %240 = mul i32 %239, 374761393
  %241 = add i32 %240, %236
  %242 = tail call i32 @llvm.fshl.i32(i32 %241, i32 %241, i32 11)
  %243 = mul i32 %242, -1640531535
  %244 = getelementptr inbounds nuw i8, ptr %194, i64 8
  %245 = load i8, ptr %237, align 1
  %246 = zext i8 %245 to i32
  %247 = mul i32 %246, 374761393
  %248 = add i32 %247, %243
  %249 = tail call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 11)
  %250 = mul i32 %249, -1640531535
  %251 = add nsw i64 %193, -8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %191

253:                                              ; preds = %131, %191, %108
  %254 = phi i32 [ %111, %108 ], [ %132, %131 ], [ %250, %191 ]
  %255 = lshr i32 %254, 15
  %256 = xor i32 %255, %254
  %257 = mul i32 %256, -2048144777
  %258 = lshr i32 %257, 13
  %259 = xor i32 %258, %257
  %260 = mul i32 %259, -1028477379
  %261 = lshr i32 %260, 16
  %262 = xor i32 %261, %260
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #7
  ret i32 %262
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @target_canon64(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 1
  %3 = tail call noundef i64 @llvm.bswap.i64(i64 %2)
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @target_version() local_unnamed_addr #4 {
  ret i32 801
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148101818}
!6 = !{!7, !9}
!7 = distinct !{!7, !8, !"XXH3_len_17to128_64b: argument 0"}
!8 = distinct !{!8, !"XXH3_len_17to128_64b"}
!9 = distinct !{!9, !10, !"XXH3_64bits_internal: argument 0"}
!10 = distinct !{!10, !"XXH3_64bits_internal"}
!11 = !{!9}
!12 = !{!13, !15}
!13 = distinct !{!13, !14, !"XXH3_len_129to240_64b: argument 0"}
!14 = distinct !{!14, !"XXH3_len_129to240_64b"}
!15 = distinct !{!15, !16, !"XXH3_64bits_internal: argument 0"}
!16 = distinct !{!16, !"XXH3_64bits_internal"}
!17 = !{!15}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_len_17to128_128b: argument 0"}
!20 = distinct !{!20, !"XXH3_len_17to128_128b"}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
