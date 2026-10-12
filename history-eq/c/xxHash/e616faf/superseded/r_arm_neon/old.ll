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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #3
  %20 = call ptr @memcpy(ptr noundef nonnull %13, ptr noundef %18, i32 noundef 8) #4
  %21 = load i64, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #3
  %22 = getelementptr inbounds nuw i8, ptr %18, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #3
  %23 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %22, i32 noundef 8) #4
  %24 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #3
  %25 = call ptr @memcpy(ptr noundef nonnull %11, ptr noundef nonnull %19, i32 noundef 8) #4
  %26 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #3
  %27 = xor i64 %26, %21
  %28 = getelementptr inbounds nuw i8, ptr %19, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #3
  %29 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %28, i32 noundef 8) #4
  %30 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  %62 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %61, i32 noundef 8) #4
  %63 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  %64 = getelementptr inbounds nuw i8, ptr %0, i32 136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  %65 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %64, i32 noundef 8) #4
  %66 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %67 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 3), i32 noundef 8) #4
  %68 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  %69 = xor i64 %68, %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %70 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 11), i32 noundef 8) #4
  %71 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
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
  %93 = add i64 %92, %60
  %94 = getelementptr inbounds nuw i8, ptr %0, i32 144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  %95 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %94, i32 noundef 8) #4
  %96 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  %97 = getelementptr inbounds nuw i8, ptr %0, i32 152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  %98 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %97, i32 noundef 8) #4
  %99 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %100 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 19), i32 noundef 8) #4
  %101 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  %102 = xor i64 %101, %96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %103 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 27), i32 noundef 8) #4
  %104 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  %105 = xor i64 %104, %99
  %106 = and i64 %102, 4294967295
  %107 = and i64 %105, 4294967295
  %108 = mul nuw i64 %107, %106
  %109 = lshr i64 %102, 32
  %110 = mul nuw i64 %107, %109
  %111 = lshr i64 %105, 32
  %112 = mul nuw i64 %111, %106
  %113 = mul nuw i64 %111, %109
  %114 = lshr i64 %108, 32
  %115 = and i64 %110, 4294967295
  %116 = add nuw i64 %115, %112
  %117 = add nuw i64 %116, %114
  %118 = lshr i64 %110, 32
  %119 = lshr i64 %117, 32
  %120 = add nuw i64 %118, %113
  %121 = add nuw i64 %120, %119
  %122 = shl i64 %117, 32
  %123 = and i64 %108, 4294967295
  %124 = or disjoint i64 %122, %123
  %125 = xor i64 %124, %121
  %126 = add i64 %93, %125
  %127 = getelementptr inbounds nuw i8, ptr %0, i32 160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  %128 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %127, i32 noundef 8) #4
  %129 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  %130 = getelementptr inbounds nuw i8, ptr %0, i32 168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  %131 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %130, i32 noundef 8) #4
  %132 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %133 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 35), i32 noundef 8) #4
  %134 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  %135 = xor i64 %134, %129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %136 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 43), i32 noundef 8) #4
  %137 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  %138 = xor i64 %137, %132
  %139 = and i64 %135, 4294967295
  %140 = and i64 %138, 4294967295
  %141 = mul nuw i64 %140, %139
  %142 = lshr i64 %135, 32
  %143 = mul nuw i64 %140, %142
  %144 = lshr i64 %138, 32
  %145 = mul nuw i64 %144, %139
  %146 = mul nuw i64 %144, %142
  %147 = lshr i64 %141, 32
  %148 = and i64 %143, 4294967295
  %149 = add nuw i64 %148, %145
  %150 = add nuw i64 %149, %147
  %151 = lshr i64 %143, 32
  %152 = lshr i64 %150, 32
  %153 = add nuw i64 %151, %146
  %154 = add nuw i64 %153, %152
  %155 = shl i64 %150, 32
  %156 = and i64 %141, 4294967295
  %157 = or disjoint i64 %155, %156
  %158 = xor i64 %157, %154
  %159 = add i64 %126, %158
  %160 = getelementptr inbounds nuw i8, ptr %0, i32 176
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  %161 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %160, i32 noundef 8) #4
  %162 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  %163 = getelementptr inbounds nuw i8, ptr %0, i32 184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  %164 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull %163, i32 noundef 8) #4
  %165 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %166 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 51), i32 noundef 8) #4
  %167 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  %168 = xor i64 %167, %162
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %169 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 59), i32 noundef 8) #4
  %170 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  %171 = xor i64 %170, %165
  %172 = and i64 %168, 4294967295
  %173 = and i64 %171, 4294967295
  %174 = mul nuw i64 %173, %172
  %175 = lshr i64 %168, 32
  %176 = mul nuw i64 %173, %175
  %177 = lshr i64 %171, 32
  %178 = mul nuw i64 %177, %172
  %179 = mul nuw i64 %177, %175
  %180 = lshr i64 %174, 32
  %181 = and i64 %176, 4294967295
  %182 = add nuw i64 %181, %178
  %183 = add nuw i64 %182, %180
  %184 = lshr i64 %176, 32
  %185 = lshr i64 %183, 32
  %186 = add nuw i64 %184, %179
  %187 = add nuw i64 %186, %185
  %188 = shl i64 %183, 32
  %189 = and i64 %174, 4294967295
  %190 = or disjoint i64 %188, %189
  %191 = xor i64 %190, %187
  %192 = add i64 %159, %191
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %193 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %163, i32 noundef 8) #4
  %194 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  %195 = getelementptr inbounds nuw i8, ptr %0, i32 192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  %196 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %195, i32 noundef 8) #4
  %197 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #3
  %198 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 119), i32 noundef 8) #4
  %199 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
  %200 = xor i64 %199, %194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3
  %201 = call ptr @memcpy(ptr noundef nonnull %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 127), i32 noundef 8) #4
  %202 = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3
  %203 = xor i64 %202, %197
  %204 = and i64 %200, 4294967295
  %205 = and i64 %203, 4294967295
  %206 = mul nuw i64 %205, %204
  %207 = lshr i64 %200, 32
  %208 = mul nuw i64 %205, %207
  %209 = lshr i64 %203, 32
  %210 = mul nuw i64 %209, %204
  %211 = mul nuw i64 %209, %207
  %212 = lshr i64 %206, 32
  %213 = and i64 %208, 4294967295
  %214 = add nuw i64 %213, %210
  %215 = add nuw i64 %214, %212
  %216 = lshr i64 %208, 32
  %217 = lshr i64 %215, 32
  %218 = add nuw i64 %216, %211
  %219 = add nuw i64 %218, %217
  %220 = shl i64 %215, 32
  %221 = and i64 %206, 4294967295
  %222 = or disjoint i64 %220, %221
  %223 = xor i64 %222, %219
  %224 = add i64 %192, %223
  %225 = lshr i64 %224, 37
  %226 = xor i64 %225, %224
  %227 = mul i64 %226, 1609587791953885689
  %228 = lshr i64 %227, 32
  %229 = xor i64 %228, %227
  ret i64 %229
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #3
  %21 = call ptr @memcpy(ptr noundef nonnull %14, ptr noundef %19, i32 noundef 8) #4
  %22 = load i64, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #3
  %23 = getelementptr inbounds nuw i8, ptr %19, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #3
  %24 = call ptr @memcpy(ptr noundef nonnull %13, ptr noundef nonnull %23, i32 noundef 8) #4
  %25 = load i64, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #3
  %26 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %20, i32 noundef 8) #4
  %27 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #3
  %28 = add i64 %27, %1
  %29 = xor i64 %28, %22
  %30 = getelementptr inbounds nuw i8, ptr %20, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #3
  %31 = call ptr @memcpy(ptr noundef nonnull %11, ptr noundef nonnull %30, i32 noundef 8) #4
  %32 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #3
  %65 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %64, i32 noundef 8) #4
  %66 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #3
  %67 = getelementptr inbounds nuw i8, ptr %0, i32 136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  %68 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %67, i32 noundef 8) #4
  %69 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  %70 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 3), i32 noundef 8) #4
  %71 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  %72 = add i64 %71, %1
  %73 = xor i64 %72, %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %74 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 11), i32 noundef 8) #4
  %75 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
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
  %98 = add i64 %97, %63
  %99 = getelementptr inbounds nuw i8, ptr %0, i32 144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #3
  %100 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %99, i32 noundef 8) #4
  %101 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #3
  %102 = getelementptr inbounds nuw i8, ptr %0, i32 152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  %103 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %102, i32 noundef 8) #4
  %104 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  %105 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 19), i32 noundef 8) #4
  %106 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  %107 = add i64 %106, %1
  %108 = xor i64 %107, %101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %109 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 27), i32 noundef 8) #4
  %110 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  %111 = sub i64 %110, %1
  %112 = xor i64 %111, %104
  %113 = and i64 %108, 4294967295
  %114 = and i64 %112, 4294967295
  %115 = mul nuw i64 %114, %113
  %116 = lshr i64 %108, 32
  %117 = mul nuw i64 %114, %116
  %118 = lshr i64 %112, 32
  %119 = mul nuw i64 %118, %113
  %120 = mul nuw i64 %118, %116
  %121 = lshr i64 %115, 32
  %122 = and i64 %117, 4294967295
  %123 = add nuw i64 %122, %119
  %124 = add nuw i64 %123, %121
  %125 = lshr i64 %117, 32
  %126 = lshr i64 %124, 32
  %127 = add nuw i64 %125, %120
  %128 = add nuw i64 %127, %126
  %129 = shl i64 %124, 32
  %130 = and i64 %115, 4294967295
  %131 = or disjoint i64 %129, %130
  %132 = xor i64 %131, %128
  %133 = add i64 %132, %98
  %134 = getelementptr inbounds nuw i8, ptr %0, i32 160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #3
  %135 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %134, i32 noundef 8) #4
  %136 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #3
  %137 = getelementptr inbounds nuw i8, ptr %0, i32 168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  %138 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %137, i32 noundef 8) #4
  %139 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  %140 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 35), i32 noundef 8) #4
  %141 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  %142 = add i64 %141, %1
  %143 = xor i64 %142, %136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %144 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 43), i32 noundef 8) #4
  %145 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  %146 = sub i64 %145, %1
  %147 = xor i64 %146, %139
  %148 = and i64 %143, 4294967295
  %149 = and i64 %147, 4294967295
  %150 = mul nuw i64 %149, %148
  %151 = lshr i64 %143, 32
  %152 = mul nuw i64 %149, %151
  %153 = lshr i64 %147, 32
  %154 = mul nuw i64 %153, %148
  %155 = mul nuw i64 %153, %151
  %156 = lshr i64 %150, 32
  %157 = and i64 %152, 4294967295
  %158 = add nuw i64 %157, %154
  %159 = add nuw i64 %158, %156
  %160 = lshr i64 %152, 32
  %161 = lshr i64 %159, 32
  %162 = add nuw i64 %160, %155
  %163 = add nuw i64 %162, %161
  %164 = shl i64 %159, 32
  %165 = and i64 %150, 4294967295
  %166 = or disjoint i64 %164, %165
  %167 = xor i64 %166, %163
  %168 = add i64 %167, %133
  %169 = getelementptr inbounds nuw i8, ptr %0, i32 176
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #3
  %170 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %169, i32 noundef 8) #4
  %171 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #3
  %172 = getelementptr inbounds nuw i8, ptr %0, i32 184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  %173 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %172, i32 noundef 8) #4
  %174 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  %175 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 51), i32 noundef 8) #4
  %176 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  %177 = add i64 %176, %1
  %178 = xor i64 %177, %171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %179 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 59), i32 noundef 8) #4
  %180 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  %181 = sub i64 %180, %1
  %182 = xor i64 %181, %174
  %183 = and i64 %178, 4294967295
  %184 = and i64 %182, 4294967295
  %185 = mul nuw i64 %184, %183
  %186 = lshr i64 %178, 32
  %187 = mul nuw i64 %184, %186
  %188 = lshr i64 %182, 32
  %189 = mul nuw i64 %188, %183
  %190 = mul nuw i64 %188, %186
  %191 = lshr i64 %185, 32
  %192 = and i64 %187, 4294967295
  %193 = add nuw i64 %192, %189
  %194 = add nuw i64 %193, %191
  %195 = lshr i64 %187, 32
  %196 = lshr i64 %194, 32
  %197 = add nuw i64 %195, %190
  %198 = add nuw i64 %197, %196
  %199 = shl i64 %194, 32
  %200 = and i64 %185, 4294967295
  %201 = or disjoint i64 %199, %200
  %202 = xor i64 %201, %198
  %203 = add i64 %202, %168
  %204 = getelementptr inbounds nuw i8, ptr %0, i32 184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %205 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %204, i32 noundef 8) #4
  %206 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  %207 = getelementptr inbounds nuw i8, ptr %0, i32 192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %208 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %207, i32 noundef 8) #4
  %209 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  %210 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 119), i32 noundef 8) #4
  %211 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  %212 = add i64 %211, %1
  %213 = xor i64 %212, %206
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #3
  %214 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 127), i32 noundef 8) #4
  %215 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
  %216 = sub i64 %215, %1
  %217 = xor i64 %216, %209
  %218 = and i64 %213, 4294967295
  %219 = and i64 %217, 4294967295
  %220 = mul nuw i64 %219, %218
  %221 = lshr i64 %213, 32
  %222 = mul nuw i64 %219, %221
  %223 = lshr i64 %217, 32
  %224 = mul nuw i64 %223, %218
  %225 = mul nuw i64 %223, %221
  %226 = lshr i64 %220, 32
  %227 = and i64 %222, 4294967295
  %228 = add nuw i64 %227, %224
  %229 = add nuw i64 %228, %226
  %230 = lshr i64 %222, 32
  %231 = lshr i64 %229, 32
  %232 = add nuw i64 %230, %225
  %233 = add nuw i64 %232, %231
  %234 = shl i64 %229, 32
  %235 = and i64 %220, 4294967295
  %236 = or disjoint i64 %234, %235
  %237 = xor i64 %236, %233
  %238 = add i64 %237, %203
  %239 = lshr i64 %238, 37
  %240 = xor i64 %239, %238
  %241 = mul i64 %240, 1609587791953885689
  %242 = lshr i64 %241, 32
  %243 = xor i64 %242, %241
  ret i64 %243
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #3
  %21 = call ptr @memcpy(ptr noundef nonnull %14, ptr noundef %19, i32 noundef 8) #4
  %22 = load i64, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #3
  %23 = getelementptr inbounds nuw i8, ptr %19, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #3
  %24 = call ptr @memcpy(ptr noundef nonnull %13, ptr noundef nonnull %23, i32 noundef 8) #4
  %25 = load i64, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #3
  %26 = call ptr @memcpy(ptr noundef nonnull %12, ptr noundef nonnull %20, i32 noundef 8) #4
  %27 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #3
  %28 = add i64 %27, %1
  %29 = xor i64 %28, %22
  %30 = getelementptr inbounds nuw i8, ptr %20, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #3
  %31 = call ptr @memcpy(ptr noundef nonnull %11, ptr noundef nonnull %30, i32 noundef 8) #4
  %32 = load i64, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #3
  %71 = call ptr @memcpy(ptr noundef nonnull %10, ptr noundef nonnull %68, i32 noundef 8) #4
  %72 = load i64, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #3
  %73 = getelementptr inbounds nuw i8, ptr %68, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #3
  %74 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %73, i32 noundef 8) #4
  %75 = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #3
  %76 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef %70, i32 noundef 8) #4
  %77 = load i64, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #3
  %78 = add i64 %77, %1
  %79 = xor i64 %78, %72
  %80 = getelementptr i8, ptr %69, i32 -117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  %81 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %80, i32 noundef 8) #4
  %82 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %110 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef nonnull %109, i32 noundef 8) #4
  %111 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  %112 = getelementptr inbounds nuw i8, ptr %0, i32 232
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %113 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %112, i32 noundef 8) #4
  %114 = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  %115 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 119), i32 noundef 8) #4
  %116 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  %117 = add i64 %116, %1
  %118 = xor i64 %117, %111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #3
  %119 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @kSecret, i32 127), i32 noundef 8) #4
  %120 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
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

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
!53 = distinct !{!53, !13}
!54 = !{!55, !57, !45}
!55 = distinct !{!55, !56, !"XXH3_mix16B: argument 0"}
!56 = distinct !{!56, !"XXH3_mix16B"}
!57 = distinct !{!57, !56, !"XXH3_mix16B: argument 1"}
!58 = !{!57}
