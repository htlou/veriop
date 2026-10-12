; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/268fde4/wrap_apisec.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/268fde4/wrap_apisec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64sec192_len256(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %3, i32 0, i32 3, i32 1)
  %4 = load <4 x i64>, ptr %0, align 1
  %5 = load <4 x i64>, ptr %1, align 1
  %6 = xor <4 x i64> %5, %4
  %7 = lshr <4 x i64> %6, splat (i64 32)
  %8 = and <4 x i64> %6, splat (i64 4294967295)
  %9 = mul nuw <4 x i64> %8, %7
  %10 = add <4 x i64> %4, <i64 -7046029288634856825, i64 3266489917, i64 1609587929392839161, i64 -4417276706812531889>
  %11 = shufflevector <4 x i64> %10, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %12 = add <4 x i64> %11, %9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x i64>, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %16 = load <4 x i64>, ptr %15, align 1
  %17 = xor <4 x i64> %16, %14
  %18 = lshr <4 x i64> %17, splat (i64 32)
  %19 = and <4 x i64> %17, splat (i64 4294967295)
  %20 = mul nuw <4 x i64> %19, %18
  %21 = add <4 x i64> %14, <i64 2246822519, i64 -8796714831421723037, i64 2654435761, i64 2870177450012600261>
  %22 = shufflevector <4 x i64> %21, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %23 = add <4 x i64> %22, %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %25, i32 0, i32 3, i32 1)
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %27 = load <4 x i64>, ptr %24, align 1
  %28 = load <4 x i64>, ptr %26, align 1
  %29 = xor <4 x i64> %28, %27
  %30 = lshr <4 x i64> %29, splat (i64 32)
  %31 = and <4 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <4 x i64> %31, %30
  %33 = shufflevector <4 x i64> %27, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %34 = add <4 x i64> %12, %33
  %35 = add <4 x i64> %34, %32
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %37 = load <4 x i64>, ptr %36, align 1
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %39 = load <4 x i64>, ptr %38, align 1
  %40 = xor <4 x i64> %39, %37
  %41 = lshr <4 x i64> %40, splat (i64 32)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = shufflevector <4 x i64> %37, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %45 = add <4 x i64> %23, %44
  %46 = add <4 x i64> %45, %43
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %48, i32 0, i32 3, i32 1)
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %50 = load <4 x i64>, ptr %47, align 1
  %51 = load <4 x i64>, ptr %49, align 1
  %52 = xor <4 x i64> %51, %50
  %53 = lshr <4 x i64> %52, splat (i64 32)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, %53
  %56 = shufflevector <4 x i64> %50, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %57 = add <4 x i64> %35, %56
  %58 = add <4 x i64> %57, %55
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %60 = load <4 x i64>, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %62 = load <4 x i64>, ptr %61, align 1
  %63 = xor <4 x i64> %62, %60
  %64 = lshr <4 x i64> %63, splat (i64 32)
  %65 = and <4 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, %64
  %67 = shufflevector <4 x i64> %60, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %68 = add <4 x i64> %46, %67
  %69 = add <4 x i64> %68, %66
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 121
  %72 = load <4 x i64>, ptr %70, align 1
  %73 = load <4 x i64>, ptr %71, align 1
  %74 = xor <4 x i64> %73, %72
  %75 = lshr <4 x i64> %74, splat (i64 32)
  %76 = and <4 x i64> %74, splat (i64 4294967295)
  %77 = mul nuw <4 x i64> %76, %75
  %78 = shufflevector <4 x i64> %72, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %79 = add <4 x i64> %58, %78
  %80 = add <4 x i64> %79, %77
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %82 = load <4 x i64>, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 153
  %84 = load <4 x i64>, ptr %83, align 1
  %85 = xor <4 x i64> %84, %82
  %86 = lshr <4 x i64> %85, splat (i64 32)
  %87 = and <4 x i64> %85, splat (i64 4294967295)
  %88 = mul nuw <4 x i64> %87, %86
  %89 = shufflevector <4 x i64> %82, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %90 = add <4 x i64> %69, %89
  %91 = add <4 x i64> %90, %88
  %92 = extractelement <4 x i64> %80, i64 0
  %93 = bitcast <4 x i64> %28 to i256
  %94 = lshr i256 %93, 24
  %95 = trunc i256 %94 to i64
  %96 = xor i64 %92, %95
  %97 = extractelement <4 x i64> %80, i64 1
  %98 = bitcast <4 x i64> %51 to i256
  %99 = lshr i256 %98, 24
  %100 = trunc i256 %99 to i64
  %101 = xor i64 %97, %100
  %102 = zext i64 %96 to i128
  %103 = zext i64 %101 to i128
  %104 = mul nuw i128 %103, %102
  %105 = lshr i128 %104, 64
  %106 = xor i128 %105, %104
  %107 = trunc i128 %106 to i64
  %108 = add i64 %107, 3997421333012711168
  %109 = extractelement <4 x i64> %80, i64 2
  %110 = lshr i256 %98, 88
  %111 = trunc i256 %110 to i64
  %112 = xor i64 %109, %111
  %113 = extractelement <4 x i64> %80, i64 3
  %114 = lshr i256 %98, 152
  %115 = trunc i256 %114 to i64
  %116 = xor i64 %113, %115
  %117 = zext i64 %112 to i128
  %118 = zext i64 %116 to i128
  %119 = mul nuw i128 %118, %117
  %120 = lshr i128 %119, 64
  %121 = xor i128 %120, %119
  %122 = trunc i128 %121 to i64
  %123 = add i64 %108, %122
  %124 = getelementptr inbounds nuw i8, ptr %1, i64 43
  %125 = extractelement <4 x i64> %91, i64 0
  %126 = load i64, ptr %124, align 1
  %127 = xor i64 %126, %125
  %128 = extractelement <4 x i64> %91, i64 1
  %129 = bitcast <4 x i64> %62 to i256
  %130 = lshr i256 %129, 24
  %131 = trunc i256 %130 to i64
  %132 = xor i64 %128, %131
  %133 = zext i64 %127 to i128
  %134 = zext i64 %132 to i128
  %135 = mul nuw i128 %134, %133
  %136 = lshr i128 %135, 64
  %137 = xor i128 %136, %135
  %138 = trunc i128 %137 to i64
  %139 = add i64 %123, %138
  %140 = extractelement <4 x i64> %91, i64 2
  %141 = lshr i256 %129, 88
  %142 = trunc i256 %141 to i64
  %143 = xor i64 %140, %142
  %144 = extractelement <4 x i64> %91, i64 3
  %145 = lshr i256 %129, 152
  %146 = trunc i256 %145 to i64
  %147 = xor i64 %144, %146
  %148 = zext i64 %143 to i128
  %149 = zext i64 %147 to i128
  %150 = mul nuw i128 %149, %148
  %151 = lshr i128 %150, 64
  %152 = xor i128 %151, %150
  %153 = trunc i128 %152 to i64
  %154 = add i64 %139, %153
  %155 = lshr i64 %154, 37
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587791953885689
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  ret i64 %159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64sec136_len320(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %3, i32 0, i32 3, i32 1)
  %4 = load <4 x i64>, ptr %0, align 1
  %5 = load <4 x i64>, ptr %1, align 1
  %6 = xor <4 x i64> %5, %4
  %7 = lshr <4 x i64> %6, splat (i64 32)
  %8 = and <4 x i64> %6, splat (i64 4294967295)
  %9 = mul nuw <4 x i64> %8, %7
  %10 = add <4 x i64> %4, <i64 -7046029288634856825, i64 3266489917, i64 1609587929392839161, i64 -4417276706812531889>
  %11 = shufflevector <4 x i64> %10, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %12 = add <4 x i64> %11, %9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %14 = load <4 x i64>, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %16 = load <4 x i64>, ptr %15, align 1
  %17 = xor <4 x i64> %16, %14
  %18 = lshr <4 x i64> %17, splat (i64 32)
  %19 = and <4 x i64> %17, splat (i64 4294967295)
  %20 = mul nuw <4 x i64> %19, %18
  %21 = add <4 x i64> %14, <i64 2246822519, i64 -8796714831421723037, i64 2654435761, i64 2870177450012600261>
  %22 = shufflevector <4 x i64> %21, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %23 = add <4 x i64> %22, %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %25, i32 0, i32 3, i32 1)
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %27 = load <4 x i64>, ptr %24, align 1
  %28 = load <4 x i64>, ptr %26, align 1
  %29 = xor <4 x i64> %28, %27
  %30 = lshr <4 x i64> %29, splat (i64 32)
  %31 = and <4 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <4 x i64> %31, %30
  %33 = shufflevector <4 x i64> %27, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %34 = add <4 x i64> %12, %33
  %35 = add <4 x i64> %34, %32
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %37 = load <4 x i64>, ptr %36, align 1
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %39 = load <4 x i64>, ptr %38, align 1
  %40 = xor <4 x i64> %39, %37
  %41 = lshr <4 x i64> %40, splat (i64 32)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = shufflevector <4 x i64> %37, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %45 = add <4 x i64> %23, %44
  %46 = add <4 x i64> %45, %43
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %48, i32 0, i32 3, i32 1)
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %50 = load <4 x i64>, ptr %47, align 1
  %51 = load <4 x i64>, ptr %49, align 1
  %52 = xor <4 x i64> %51, %50
  %53 = lshr <4 x i64> %52, splat (i64 32)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, %53
  %56 = shufflevector <4 x i64> %50, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %57 = add <4 x i64> %35, %56
  %58 = add <4 x i64> %57, %55
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %60 = load <4 x i64>, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %62 = load <4 x i64>, ptr %61, align 1
  %63 = xor <4 x i64> %62, %60
  %64 = lshr <4 x i64> %63, splat (i64 32)
  %65 = and <4 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, %64
  %67 = shufflevector <4 x i64> %60, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %68 = add <4 x i64> %46, %67
  %69 = add <4 x i64> %68, %66
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %71, i32 0, i32 3, i32 1)
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %73 = load <4 x i64>, ptr %70, align 1
  %74 = load <4 x i64>, ptr %72, align 1
  %75 = xor <4 x i64> %74, %73
  %76 = lshr <4 x i64> %75, splat (i64 32)
  %77 = and <4 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <4 x i64> %77, %76
  %79 = shufflevector <4 x i64> %73, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %80 = add <4 x i64> %58, %79
  %81 = add <4 x i64> %80, %78
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %83 = load <4 x i64>, ptr %82, align 1
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %85 = load <4 x i64>, ptr %84, align 1
  %86 = xor <4 x i64> %85, %83
  %87 = lshr <4 x i64> %86, splat (i64 32)
  %88 = and <4 x i64> %86, splat (i64 4294967295)
  %89 = mul nuw <4 x i64> %88, %87
  %90 = shufflevector <4 x i64> %83, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %91 = add <4 x i64> %69, %90
  %92 = add <4 x i64> %91, %89
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %94 = getelementptr inbounds nuw i8, ptr %1, i64 65
  %95 = load <4 x i64>, ptr %93, align 1
  %96 = load <4 x i64>, ptr %94, align 1
  %97 = xor <4 x i64> %96, %95
  %98 = lshr <4 x i64> %97, splat (i64 32)
  %99 = and <4 x i64> %97, splat (i64 4294967295)
  %100 = mul nuw <4 x i64> %99, %98
  %101 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %102 = add <4 x i64> %81, %101
  %103 = add <4 x i64> %102, %100
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %105 = load <4 x i64>, ptr %104, align 1
  %106 = getelementptr inbounds nuw i8, ptr %1, i64 97
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = xor <4 x i64> %107, %105
  %109 = lshr <4 x i64> %108, splat (i64 32)
  %110 = and <4 x i64> %108, splat (i64 4294967295)
  %111 = mul nuw <4 x i64> %110, %109
  %112 = shufflevector <4 x i64> %105, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %113 = add <4 x i64> %92, %112
  %114 = add <4 x i64> %113, %111
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %116 = extractelement <4 x i64> %103, i64 0
  %117 = load i64, ptr %115, align 1
  %118 = xor i64 %116, %117
  %119 = extractelement <4 x i64> %103, i64 1
  %120 = bitcast <4 x i64> %51 to i256
  %121 = lshr i256 %120, 24
  %122 = trunc i256 %121 to i64
  %123 = xor i64 %119, %122
  %124 = zext i64 %118 to i128
  %125 = zext i64 %123 to i128
  %126 = mul nuw i128 %125, %124
  %127 = lshr i128 %126, 64
  %128 = xor i128 %127, %126
  %129 = trunc i128 %128 to i64
  %130 = add i64 %129, -4226595370588886848
  %131 = extractelement <4 x i64> %103, i64 2
  %132 = bitcast <4 x i64> %74 to i256
  %133 = lshr i256 %132, 24
  %134 = trunc i256 %133 to i64
  %135 = xor i64 %131, %134
  %136 = extractelement <4 x i64> %103, i64 3
  %137 = lshr i256 %132, 88
  %138 = trunc i256 %137 to i64
  %139 = xor i64 %136, %138
  %140 = zext i64 %135 to i128
  %141 = zext i64 %139 to i128
  %142 = mul nuw i128 %141, %140
  %143 = lshr i128 %142, 64
  %144 = xor i128 %143, %142
  %145 = trunc i128 %144 to i64
  %146 = add i64 %130, %145
  %147 = extractelement <4 x i64> %114, i64 0
  %148 = lshr i256 %132, 152
  %149 = trunc i256 %148 to i64
  %150 = xor i64 %147, %149
  %151 = extractelement <4 x i64> %114, i64 1
  %152 = getelementptr inbounds nuw i8, ptr %1, i64 51
  %153 = load i64, ptr %152, align 1
  %154 = xor i64 %153, %151
  %155 = zext i64 %150 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %146, %160
  %162 = extractelement <4 x i64> %114, i64 2
  %163 = bitcast <4 x i64> %85 to i256
  %164 = lshr i256 %163, 24
  %165 = trunc i256 %164 to i64
  %166 = xor i64 %162, %165
  %167 = extractelement <4 x i64> %114, i64 3
  %168 = bitcast <4 x i64> %96 to i256
  %169 = lshr i256 %168, 16
  %170 = trunc i256 %169 to i64
  %171 = xor i64 %167, %170
  %172 = zext i64 %166 to i128
  %173 = zext i64 %171 to i128
  %174 = mul nuw i128 %173, %172
  %175 = lshr i128 %174, 64
  %176 = xor i128 %175, %174
  %177 = trunc i128 %176 to i64
  %178 = add i64 %161, %177
  %179 = lshr i64 %178, 37
  %180 = xor i64 %179, %178
  %181 = mul i64 %180, 1609587791953885689
  %182 = lshr i64 %181, 32
  %183 = xor i64 %182, %181
  ret i64 %183
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_128sec192_len256(ptr noundef writeonly initializes((0, 16)) %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %4, i32 0, i32 3, i32 1)
  %5 = load <4 x i64>, ptr %1, align 1
  %6 = load <4 x i64>, ptr %2, align 1
  %7 = xor <4 x i64> %6, %5
  %8 = lshr <4 x i64> %7, splat (i64 32)
  %9 = and <4 x i64> %7, splat (i64 4294967295)
  %10 = mul nuw <4 x i64> %9, %8
  %11 = add <4 x i64> %5, <i64 -7046029288634856825, i64 3266489917, i64 1609587929392839161, i64 -4417276706812531889>
  %12 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %13 = add <4 x i64> %12, %10
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %15 = load <4 x i64>, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %17 = load <4 x i64>, ptr %16, align 1
  %18 = xor <4 x i64> %17, %15
  %19 = lshr <4 x i64> %18, splat (i64 32)
  %20 = and <4 x i64> %18, splat (i64 4294967295)
  %21 = mul nuw <4 x i64> %20, %19
  %22 = add <4 x i64> %15, <i64 2246822519, i64 -8796714831421723037, i64 2654435761, i64 2870177450012600261>
  %23 = shufflevector <4 x i64> %22, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %24 = add <4 x i64> %23, %21
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %26, i32 0, i32 3, i32 1)
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %28 = load <4 x i64>, ptr %25, align 1
  %29 = load <4 x i64>, ptr %27, align 1
  %30 = xor <4 x i64> %29, %28
  %31 = lshr <4 x i64> %30, splat (i64 32)
  %32 = and <4 x i64> %30, splat (i64 4294967295)
  %33 = mul nuw <4 x i64> %32, %31
  %34 = shufflevector <4 x i64> %28, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %35 = add <4 x i64> %13, %34
  %36 = add <4 x i64> %35, %33
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %38 = load <4 x i64>, ptr %37, align 1
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %40 = load <4 x i64>, ptr %39, align 1
  %41 = xor <4 x i64> %40, %38
  %42 = lshr <4 x i64> %41, splat (i64 32)
  %43 = and <4 x i64> %41, splat (i64 4294967295)
  %44 = mul nuw <4 x i64> %43, %42
  %45 = shufflevector <4 x i64> %38, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %46 = add <4 x i64> %24, %45
  %47 = add <4 x i64> %46, %44
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %49, i32 0, i32 3, i32 1)
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %51 = load <4 x i64>, ptr %48, align 1
  %52 = load <4 x i64>, ptr %50, align 1
  %53 = xor <4 x i64> %52, %51
  %54 = lshr <4 x i64> %53, splat (i64 32)
  %55 = and <4 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <4 x i64> %55, %54
  %57 = shufflevector <4 x i64> %51, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %58 = add <4 x i64> %36, %57
  %59 = add <4 x i64> %58, %56
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %61 = load <4 x i64>, ptr %60, align 1
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %63 = load <4 x i64>, ptr %62, align 1
  %64 = xor <4 x i64> %63, %61
  %65 = lshr <4 x i64> %64, splat (i64 32)
  %66 = and <4 x i64> %64, splat (i64 4294967295)
  %67 = mul nuw <4 x i64> %66, %65
  %68 = shufflevector <4 x i64> %61, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %69 = add <4 x i64> %47, %68
  %70 = add <4 x i64> %69, %67
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 121
  %73 = load <4 x i64>, ptr %71, align 1
  %74 = load <4 x i64>, ptr %72, align 1
  %75 = xor <4 x i64> %74, %73
  %76 = lshr <4 x i64> %75, splat (i64 32)
  %77 = and <4 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <4 x i64> %77, %76
  %79 = shufflevector <4 x i64> %73, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %80 = add <4 x i64> %59, %79
  %81 = add <4 x i64> %80, %78
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %83 = load <4 x i64>, ptr %82, align 1
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 153
  %85 = load <4 x i64>, ptr %84, align 1
  %86 = xor <4 x i64> %85, %83
  %87 = lshr <4 x i64> %86, splat (i64 32)
  %88 = and <4 x i64> %86, splat (i64 4294967295)
  %89 = mul nuw <4 x i64> %88, %87
  %90 = shufflevector <4 x i64> %83, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %91 = add <4 x i64> %70, %90
  %92 = add <4 x i64> %91, %89
  %93 = extractelement <4 x i64> %81, i64 0
  %94 = bitcast <4 x i64> %29 to i256
  %95 = lshr i256 %94, 24
  %96 = trunc i256 %95 to i64
  %97 = xor i64 %93, %96
  %98 = extractelement <4 x i64> %81, i64 1
  %99 = bitcast <4 x i64> %52 to i256
  %100 = lshr i256 %99, 24
  %101 = trunc i256 %100 to i64
  %102 = xor i64 %98, %101
  %103 = zext i64 %97 to i128
  %104 = zext i64 %102 to i128
  %105 = mul nuw i128 %104, %103
  %106 = lshr i128 %105, 64
  %107 = xor i128 %106, %105
  %108 = trunc i128 %107 to i64
  %109 = add i64 %108, 3997421333012711168
  %110 = extractelement <4 x i64> %81, i64 2
  %111 = lshr i256 %99, 88
  %112 = trunc i256 %111 to i64
  %113 = xor i64 %110, %112
  %114 = extractelement <4 x i64> %81, i64 3
  %115 = lshr i256 %99, 152
  %116 = trunc i256 %115 to i64
  %117 = xor i64 %114, %116
  %118 = zext i64 %113 to i128
  %119 = zext i64 %117 to i128
  %120 = mul nuw i128 %119, %118
  %121 = lshr i128 %120, 64
  %122 = xor i128 %121, %120
  %123 = trunc i128 %122 to i64
  %124 = add i64 %109, %123
  %125 = extractelement <4 x i64> %92, i64 0
  %126 = bitcast <4 x i64> %40 to i256
  %127 = lshr i256 %126, 24
  %128 = trunc i256 %127 to i64
  %129 = xor i64 %125, %128
  %130 = extractelement <4 x i64> %92, i64 1
  %131 = bitcast <4 x i64> %63 to i256
  %132 = lshr i256 %131, 24
  %133 = trunc i256 %132 to i64
  %134 = xor i64 %130, %133
  %135 = zext i64 %129 to i128
  %136 = zext i64 %134 to i128
  %137 = mul nuw i128 %136, %135
  %138 = lshr i128 %137, 64
  %139 = xor i128 %138, %137
  %140 = trunc i128 %139 to i64
  %141 = add i64 %124, %140
  %142 = extractelement <4 x i64> %92, i64 2
  %143 = lshr i256 %131, 88
  %144 = trunc i256 %143 to i64
  %145 = xor i64 %142, %144
  %146 = extractelement <4 x i64> %92, i64 3
  %147 = lshr i256 %131, 152
  %148 = trunc i256 %147 to i64
  %149 = xor i64 %146, %148
  %150 = zext i64 %145 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %141, %155
  %157 = lshr i64 %156, 37
  %158 = xor i64 %157, %156
  %159 = mul i64 %158, 1609587791953885689
  %160 = lshr i64 %159, 32
  %161 = xor i64 %160, %159
  %162 = getelementptr inbounds nuw i8, ptr %2, i64 117
  %163 = load i64, ptr %162, align 1
  %164 = xor i64 %163, %93
  %165 = bitcast <4 x i64> %74 to i256
  %166 = lshr i256 %165, 32
  %167 = trunc i256 %166 to i64
  %168 = xor i64 %98, %167
  %169 = zext i64 %164 to i128
  %170 = zext i64 %168 to i128
  %171 = mul nuw i128 %170, %169
  %172 = lshr i128 %171, 64
  %173 = xor i128 %172, %171
  %174 = trunc i128 %173 to i64
  %175 = add i64 %174, 5571448447725515007
  %176 = getelementptr inbounds nuw i8, ptr %2, i64 133
  %177 = load i64, ptr %176, align 1
  %178 = xor i64 %177, %110
  %179 = getelementptr inbounds nuw i8, ptr %2, i64 141
  %180 = load i64, ptr %179, align 1
  %181 = xor i64 %180, %114
  %182 = zext i64 %178 to i128
  %183 = zext i64 %181 to i128
  %184 = mul nuw i128 %183, %182
  %185 = lshr i128 %184, 64
  %186 = xor i128 %185, %184
  %187 = trunc i128 %186 to i64
  %188 = add i64 %175, %187
  %189 = getelementptr inbounds nuw i8, ptr %2, i64 149
  %190 = load i64, ptr %189, align 1
  %191 = xor i64 %190, %125
  %192 = getelementptr inbounds nuw i8, ptr %2, i64 157
  %193 = load i64, ptr %192, align 1
  %194 = xor i64 %193, %130
  %195 = zext i64 %191 to i128
  %196 = zext i64 %194 to i128
  %197 = mul nuw i128 %196, %195
  %198 = lshr i128 %197, 64
  %199 = xor i128 %198, %197
  %200 = trunc i128 %199 to i64
  %201 = add i64 %188, %200
  %202 = getelementptr inbounds nuw i8, ptr %2, i64 165
  %203 = load i64, ptr %202, align 1
  %204 = xor i64 %203, %142
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 173
  %206 = load i64, ptr %205, align 1
  %207 = xor i64 %206, %146
  %208 = zext i64 %204 to i128
  %209 = zext i64 %207 to i128
  %210 = mul nuw i128 %209, %208
  %211 = lshr i128 %210, 64
  %212 = xor i128 %211, %210
  %213 = trunc i128 %212 to i64
  %214 = add i64 %201, %213
  %215 = lshr i64 %214, 37
  %216 = xor i64 %215, %214
  %217 = mul i64 %216, 1609587791953885689
  %218 = lshr i64 %217, 32
  %219 = xor i64 %218, %217
  store i64 %161, ptr %0, align 8
  %220 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %219, ptr %220, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local i64 @target_64_len256(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %0, i64 noundef 256) #9
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define dso_local i64 @target_64seed_len256(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noundef readonly %0, i64 noundef 256, i64 noundef %1) #9
  ret i64 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias noundef readonly %0, i64 noundef %1) unnamed_addr #5 {
  %3 = add i64 %1, -1
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = lshr i64 %3, 10
  br label %7

7:                                                ; preds = %5, %44
  %8 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %5 ], [ %60, %44 ]
  %9 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %5 ], [ %52, %44 ]
  %10 = phi i64 [ 0, %5 ], [ %61, %44 ]
  %11 = shl i64 %10, 10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi <4 x i64> [ %8, %7 ], [ %41, %13 ]
  %15 = phi <4 x i64> [ %9, %7 ], [ %30, %13 ]
  %16 = phi i64 [ 0, %7 ], [ %42, %13 ]
  %17 = shl nuw nsw i64 %16, 6
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 %17
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %19, i32 0, i32 3, i32 1)
  %20 = shl nuw nsw i64 %16, 3
  %21 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %20
  %22 = load <4 x i64>, ptr %18, align 1
  %23 = load <4 x i64>, ptr %21, align 8
  %24 = xor <4 x i64> %23, %22
  %25 = lshr <4 x i64> %24, splat (i64 32)
  %26 = and <4 x i64> %24, splat (i64 4294967295)
  %27 = mul nuw <4 x i64> %26, %25
  %28 = shufflevector <4 x i64> %22, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %29 = add <4 x i64> %15, %28
  %30 = add <4 x i64> %29, %27
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %32 = load <4 x i64>, ptr %31, align 1
  %33 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %34 = load <4 x i64>, ptr %33, align 8
  %35 = xor <4 x i64> %34, %32
  %36 = lshr <4 x i64> %35, splat (i64 32)
  %37 = and <4 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <4 x i64> %37, %36
  %39 = shufflevector <4 x i64> %32, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %40 = add <4 x i64> %14, %39
  %41 = add <4 x i64> %40, %38
  %42 = add nuw nsw i64 %16, 1
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %44, label %13

44:                                               ; preds = %13
  %45 = lshr <4 x i64> %30, splat (i64 47)
  %46 = xor <4 x i64> %45, %30
  %47 = xor <4 x i64> %46, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %48 = lshr <4 x i64> %47, splat (i64 32)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, splat (i64 2654435761)
  %51 = mul <4 x i64> %48, splat (i64 -7046029290881679360)
  %52 = add <4 x i64> %50, %51
  %53 = lshr <4 x i64> %41, splat (i64 47)
  %54 = xor <4 x i64> %53, %41
  %55 = xor <4 x i64> %54, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %56 = lshr <4 x i64> %55, splat (i64 32)
  %57 = and <4 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, splat (i64 2654435761)
  %59 = mul <4 x i64> %56, splat (i64 -7046029290881679360)
  %60 = add <4 x i64> %58, %59
  %61 = add nuw nsw i64 %10, 1
  %62 = icmp eq i64 %61, %6
  br i1 %62, label %63, label %7

63:                                               ; preds = %44, %2
  %64 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %2 ], [ %60, %44 ]
  %65 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %2 ], [ %52, %44 ]
  %66 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %66)
  %67 = and i64 %3, -1024
  %68 = lshr i64 %3, 6
  %69 = and i64 %68, 15
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 %67
  %71 = icmp eq i64 %69, 0
  br i1 %71, label %103, label %72

72:                                               ; preds = %63, %72
  %73 = phi <4 x i64> [ %100, %72 ], [ %64, %63 ]
  %74 = phi <4 x i64> [ %89, %72 ], [ %65, %63 ]
  %75 = phi i64 [ %101, %72 ], [ 0, %63 ]
  %76 = shl nuw nsw i64 %75, 6
  %77 = getelementptr inbounds nuw i8, ptr %70, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %78, i32 0, i32 3, i32 1)
  %79 = shl nuw nsw i64 %75, 3
  %80 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %79
  %81 = load <4 x i64>, ptr %77, align 1
  %82 = load <4 x i64>, ptr %80, align 8
  %83 = xor <4 x i64> %82, %81
  %84 = lshr <4 x i64> %83, splat (i64 32)
  %85 = and <4 x i64> %83, splat (i64 4294967295)
  %86 = mul nuw <4 x i64> %85, %84
  %87 = shufflevector <4 x i64> %81, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %88 = add <4 x i64> %74, %87
  %89 = add <4 x i64> %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %91 = load <4 x i64>, ptr %90, align 1
  %92 = getelementptr inbounds nuw i8, ptr %80, i64 32
  %93 = load <4 x i64>, ptr %92, align 8
  %94 = xor <4 x i64> %93, %91
  %95 = lshr <4 x i64> %94, splat (i64 32)
  %96 = and <4 x i64> %94, splat (i64 4294967295)
  %97 = mul nuw <4 x i64> %96, %95
  %98 = shufflevector <4 x i64> %91, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %99 = add <4 x i64> %73, %98
  %100 = add <4 x i64> %99, %97
  %101 = add nuw nsw i64 %75, 1
  %102 = icmp eq i64 %101, %69
  br i1 %102, label %103, label %72

103:                                              ; preds = %72, %63
  %104 = phi <4 x i64> [ %64, %63 ], [ %100, %72 ]
  %105 = phi <4 x i64> [ %65, %63 ], [ %89, %72 ]
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %107 = getelementptr inbounds i8, ptr %106, i64 -64
  %108 = load <4 x i64>, ptr %107, align 1
  %109 = xor <4 x i64> %108, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %110 = lshr <4 x i64> %109, splat (i64 32)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = shufflevector <4 x i64> %108, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %114 = add <4 x i64> %105, %113
  %115 = add <4 x i64> %114, %112
  %116 = getelementptr inbounds i8, ptr %106, i64 -32
  %117 = load <4 x i64>, ptr %116, align 1
  %118 = xor <4 x i64> %117, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %119 = lshr <4 x i64> %118, splat (i64 32)
  %120 = and <4 x i64> %118, splat (i64 4294967295)
  %121 = mul nuw <4 x i64> %120, %119
  %122 = shufflevector <4 x i64> %117, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %123 = add <4 x i64> %104, %122
  %124 = add <4 x i64> %123, %121
  %125 = mul i64 %1, -7046029288634856825
  %126 = extractelement <4 x i64> %115, i64 0
  %127 = xor i64 %126, 7914194659941938988
  %128 = extractelement <4 x i64> %115, i64 1
  %129 = xor i64 %128, -6611157965513653271
  %130 = zext i64 %127 to i128
  %131 = zext i64 %129 to i128
  %132 = mul nuw i128 %131, %130
  %133 = lshr i128 %132, 64
  %134 = xor i128 %133, %132
  %135 = trunc i128 %134 to i64
  %136 = add i64 %125, %135
  %137 = extractelement <4 x i64> %115, i64 2
  %138 = xor i64 %137, -1839215637059881052
  %139 = extractelement <4 x i64> %115, i64 3
  %140 = xor i64 %139, -3433288310154277810
  %141 = zext i64 %138 to i128
  %142 = zext i64 %140 to i128
  %143 = mul nuw i128 %142, %141
  %144 = lshr i128 %143, 64
  %145 = xor i128 %144, %143
  %146 = trunc i128 %145 to i64
  %147 = add i64 %136, %146
  %148 = extractelement <4 x i64> %124, i64 0
  %149 = xor i64 %148, 5046485836271438973
  %150 = extractelement <4 x i64> %124, i64 1
  %151 = xor i64 %150, -8055285457383852172
  %152 = zext i64 %149 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %147, %157
  %159 = extractelement <4 x i64> %124, i64 2
  %160 = xor i64 %159, 5920048007935066598
  %161 = extractelement <4 x i64> %124, i64 3
  %162 = xor i64 %161, 7336514198459093435
  %163 = zext i64 %160 to i128
  %164 = zext i64 %162 to i128
  %165 = mul nuw i128 %164, %163
  %166 = lshr i128 %165, 64
  %167 = xor i128 %166, %165
  %168 = trunc i128 %167 to i64
  %169 = add i64 %158, %168
  %170 = lshr i64 %169, 37
  %171 = xor i64 %170, %169
  %172 = mul i64 %171, 1609587791953885689
  %173 = lshr i64 %172, 32
  %174 = xor i64 %173, %172
  ret i64 %174
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @XXH3_hashLong_64b_withSeed(ptr noalias noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
  %4 = alloca [192 x i8], align 32
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %179

6:                                                ; preds = %3
  %7 = add i64 %1, -1
  %8 = icmp ult i64 %7, 1024
  br i1 %8, label %67, label %9

9:                                                ; preds = %6
  %10 = lshr i64 %7, 10
  br label %11

11:                                               ; preds = %9, %48
  %12 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %9 ], [ %64, %48 ]
  %13 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %9 ], [ %56, %48 ]
  %14 = phi i64 [ 0, %9 ], [ %65, %48 ]
  %15 = shl i64 %14, 10
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  br label %17

17:                                               ; preds = %11, %17
  %18 = phi <4 x i64> [ %12, %11 ], [ %45, %17 ]
  %19 = phi <4 x i64> [ %13, %11 ], [ %34, %17 ]
  %20 = phi i64 [ 0, %11 ], [ %46, %17 ]
  %21 = shl nuw nsw i64 %20, 6
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 0, i32 3, i32 1)
  %24 = shl nuw nsw i64 %20, 3
  %25 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %24
  %26 = load <4 x i64>, ptr %22, align 1
  %27 = load <4 x i64>, ptr %25, align 8
  %28 = xor <4 x i64> %27, %26
  %29 = lshr <4 x i64> %28, splat (i64 32)
  %30 = and <4 x i64> %28, splat (i64 4294967295)
  %31 = mul nuw <4 x i64> %30, %29
  %32 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %33 = add <4 x i64> %19, %32
  %34 = add <4 x i64> %33, %31
  %35 = getelementptr inbounds nuw i8, ptr %22, i64 32
  %36 = load <4 x i64>, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %38 = load <4 x i64>, ptr %37, align 8
  %39 = xor <4 x i64> %38, %36
  %40 = lshr <4 x i64> %39, splat (i64 32)
  %41 = and <4 x i64> %39, splat (i64 4294967295)
  %42 = mul nuw <4 x i64> %41, %40
  %43 = shufflevector <4 x i64> %36, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %44 = add <4 x i64> %18, %43
  %45 = add <4 x i64> %44, %42
  %46 = add nuw nsw i64 %20, 1
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %17

48:                                               ; preds = %17
  %49 = lshr <4 x i64> %34, splat (i64 47)
  %50 = xor <4 x i64> %49, %34
  %51 = xor <4 x i64> %50, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %52 = lshr <4 x i64> %51, splat (i64 32)
  %53 = and <4 x i64> %51, splat (i64 4294967295)
  %54 = mul nuw <4 x i64> %53, splat (i64 2654435761)
  %55 = mul <4 x i64> %52, splat (i64 -7046029290881679360)
  %56 = add <4 x i64> %54, %55
  %57 = lshr <4 x i64> %45, splat (i64 47)
  %58 = xor <4 x i64> %57, %45
  %59 = xor <4 x i64> %58, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %60 = lshr <4 x i64> %59, splat (i64 32)
  %61 = and <4 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, splat (i64 2654435761)
  %63 = mul <4 x i64> %60, splat (i64 -7046029290881679360)
  %64 = add <4 x i64> %62, %63
  %65 = add nuw nsw i64 %14, 1
  %66 = icmp eq i64 %65, %10
  br i1 %66, label %67, label %11

67:                                               ; preds = %48, %6
  %68 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %6 ], [ %64, %48 ]
  %69 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %6 ], [ %56, %48 ]
  %70 = icmp ugt i64 %1, 64
  tail call void @llvm.assume(i1 %70)
  %71 = and i64 %7, -1024
  %72 = lshr i64 %7, 6
  %73 = and i64 %72, 15
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 %71
  %75 = icmp eq i64 %73, 0
  br i1 %75, label %107, label %76

76:                                               ; preds = %67, %76
  %77 = phi <4 x i64> [ %104, %76 ], [ %68, %67 ]
  %78 = phi <4 x i64> [ %93, %76 ], [ %69, %67 ]
  %79 = phi i64 [ %105, %76 ], [ 0, %67 ]
  %80 = shl nuw nsw i64 %79, 6
  %81 = getelementptr inbounds nuw i8, ptr %74, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %82, i32 0, i32 3, i32 1)
  %83 = shl nuw nsw i64 %79, 3
  %84 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %83
  %85 = load <4 x i64>, ptr %81, align 1
  %86 = load <4 x i64>, ptr %84, align 8
  %87 = xor <4 x i64> %86, %85
  %88 = lshr <4 x i64> %87, splat (i64 32)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = shufflevector <4 x i64> %85, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %92 = add <4 x i64> %78, %91
  %93 = add <4 x i64> %92, %90
  %94 = getelementptr inbounds nuw i8, ptr %81, i64 32
  %95 = load <4 x i64>, ptr %94, align 1
  %96 = getelementptr inbounds nuw i8, ptr %84, i64 32
  %97 = load <4 x i64>, ptr %96, align 8
  %98 = xor <4 x i64> %97, %95
  %99 = lshr <4 x i64> %98, splat (i64 32)
  %100 = and <4 x i64> %98, splat (i64 4294967295)
  %101 = mul nuw <4 x i64> %100, %99
  %102 = shufflevector <4 x i64> %95, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %103 = add <4 x i64> %77, %102
  %104 = add <4 x i64> %103, %101
  %105 = add nuw nsw i64 %79, 1
  %106 = icmp eq i64 %105, %73
  br i1 %106, label %107, label %76

107:                                              ; preds = %76, %67
  %108 = phi <4 x i64> [ %68, %67 ], [ %104, %76 ]
  %109 = phi <4 x i64> [ %69, %67 ], [ %93, %76 ]
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %111 = getelementptr inbounds i8, ptr %110, i64 -64
  %112 = load <4 x i64>, ptr %111, align 1
  %113 = xor <4 x i64> %112, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %114 = lshr <4 x i64> %113, splat (i64 32)
  %115 = and <4 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <4 x i64> %115, %114
  %117 = shufflevector <4 x i64> %112, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %118 = add <4 x i64> %109, %117
  %119 = add <4 x i64> %118, %116
  %120 = getelementptr inbounds i8, ptr %110, i64 -32
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = xor <4 x i64> %121, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %123 = lshr <4 x i64> %122, splat (i64 32)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = shufflevector <4 x i64> %121, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %127 = add <4 x i64> %108, %126
  %128 = add <4 x i64> %127, %125
  %129 = mul i64 %1, -7046029288634856825
  %130 = extractelement <4 x i64> %119, i64 0
  %131 = xor i64 %130, 7914194659941938988
  %132 = extractelement <4 x i64> %119, i64 1
  %133 = xor i64 %132, -6611157965513653271
  %134 = zext i64 %131 to i128
  %135 = zext i64 %133 to i128
  %136 = mul nuw i128 %135, %134
  %137 = lshr i128 %136, 64
  %138 = xor i128 %137, %136
  %139 = trunc i128 %138 to i64
  %140 = add i64 %129, %139
  %141 = extractelement <4 x i64> %119, i64 2
  %142 = xor i64 %141, -1839215637059881052
  %143 = extractelement <4 x i64> %119, i64 3
  %144 = xor i64 %143, -3433288310154277810
  %145 = zext i64 %142 to i128
  %146 = zext i64 %144 to i128
  %147 = mul nuw i128 %146, %145
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %140, %150
  %152 = extractelement <4 x i64> %128, i64 0
  %153 = xor i64 %152, 5046485836271438973
  %154 = extractelement <4 x i64> %128, i64 1
  %155 = xor i64 %154, -8055285457383852172
  %156 = zext i64 %153 to i128
  %157 = zext i64 %155 to i128
  %158 = mul nuw i128 %157, %156
  %159 = lshr i128 %158, 64
  %160 = xor i128 %159, %158
  %161 = trunc i128 %160 to i64
  %162 = add i64 %151, %161
  %163 = extractelement <4 x i64> %128, i64 2
  %164 = xor i64 %163, 5920048007935066598
  %165 = extractelement <4 x i64> %128, i64 3
  %166 = xor i64 %165, 7336514198459093435
  %167 = zext i64 %164 to i128
  %168 = zext i64 %166 to i128
  %169 = mul nuw i128 %168, %167
  %170 = lshr i128 %169, 64
  %171 = xor i128 %170, %169
  %172 = trunc i128 %171 to i64
  %173 = add i64 %162, %172
  %174 = lshr i64 %173, 37
  %175 = xor i64 %174, %173
  %176 = mul i64 %175, 1609587791953885689
  %177 = lshr i64 %176, 32
  %178 = xor i64 %177, %176
  br label %396

179:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #9
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 0, i32 3, i32 1)
  %180 = sub i64 0, %2
  %181 = insertelement <4 x i64> poison, i64 %2, i64 0
  %182 = insertelement <4 x i64> %181, i64 %180, i64 1
  %183 = insertelement <4 x i64> %182, i64 %2, i64 2
  %184 = insertelement <4 x i64> %183, i64 %180, i64 3
  %185 = freeze ptr %4
  %186 = ptrtoint ptr %185 to i64
  %187 = and i64 %186, 31
  %188 = icmp eq i64 %187, 0
  call void @llvm.assume(i1 %188)
  %189 = add <4 x i64> %184, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %189, ptr %185, align 32
  %190 = add <4 x i64> %184, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %191 = getelementptr inbounds nuw i8, ptr %185, i64 32
  store <4 x i64> %190, ptr %191, align 32
  %192 = add <4 x i64> %184, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 64
  store <4 x i64> %192, ptr %193, align 32
  %194 = add <4 x i64> %184, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %195 = getelementptr inbounds nuw i8, ptr %185, i64 96
  store <4 x i64> %194, ptr %195, align 32
  %196 = add <4 x i64> %184, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %197 = getelementptr inbounds nuw i8, ptr %185, i64 128
  store <4 x i64> %196, ptr %197, align 32
  %198 = add <4 x i64> %184, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %199 = getelementptr inbounds nuw i8, ptr %185, i64 160
  store <4 x i64> %198, ptr %199, align 32
  %200 = add i64 %1, -1
  %201 = icmp ult i64 %200, 1024
  br i1 %201, label %264, label %202

202:                                              ; preds = %179
  %203 = lshr i64 %200, 10
  %204 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %205 = load <4 x i64>, ptr %204, align 32
  %206 = getelementptr inbounds nuw i8, ptr %4, i64 160
  %207 = load <4 x i64>, ptr %206, align 32
  br label %208

208:                                              ; preds = %202, %245
  %209 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %202 ], [ %261, %245 ]
  %210 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %202 ], [ %253, %245 ]
  %211 = phi i64 [ 0, %202 ], [ %262, %245 ]
  %212 = shl i64 %211, 10
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 %212
  br label %214

214:                                              ; preds = %208, %214
  %215 = phi <4 x i64> [ %209, %208 ], [ %242, %214 ]
  %216 = phi <4 x i64> [ %210, %208 ], [ %231, %214 ]
  %217 = phi i64 [ 0, %208 ], [ %243, %214 ]
  %218 = shl nuw nsw i64 %217, 6
  %219 = getelementptr inbounds nuw i8, ptr %213, i64 %218
  %220 = getelementptr inbounds nuw i8, ptr %219, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %220, i32 0, i32 3, i32 1)
  %221 = shl nuw nsw i64 %217, 3
  %222 = getelementptr inbounds nuw i8, ptr %4, i64 %221
  %223 = load <4 x i64>, ptr %219, align 1
  %224 = load <4 x i64>, ptr %222, align 8
  %225 = xor <4 x i64> %224, %223
  %226 = lshr <4 x i64> %225, splat (i64 32)
  %227 = and <4 x i64> %225, splat (i64 4294967295)
  %228 = mul nuw <4 x i64> %227, %226
  %229 = shufflevector <4 x i64> %223, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %230 = add <4 x i64> %216, %229
  %231 = add <4 x i64> %230, %228
  %232 = getelementptr inbounds nuw i8, ptr %219, i64 32
  %233 = load <4 x i64>, ptr %232, align 1
  %234 = getelementptr inbounds nuw i8, ptr %222, i64 32
  %235 = load <4 x i64>, ptr %234, align 8
  %236 = xor <4 x i64> %235, %233
  %237 = lshr <4 x i64> %236, splat (i64 32)
  %238 = and <4 x i64> %236, splat (i64 4294967295)
  %239 = mul nuw <4 x i64> %238, %237
  %240 = shufflevector <4 x i64> %233, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %241 = add <4 x i64> %215, %240
  %242 = add <4 x i64> %241, %239
  %243 = add nuw nsw i64 %217, 1
  %244 = icmp eq i64 %243, 16
  br i1 %244, label %245, label %214

245:                                              ; preds = %214
  %246 = lshr <4 x i64> %231, splat (i64 47)
  %247 = xor <4 x i64> %205, %246
  %248 = xor <4 x i64> %247, %231
  %249 = lshr <4 x i64> %248, splat (i64 32)
  %250 = and <4 x i64> %248, splat (i64 4294967295)
  %251 = mul nuw <4 x i64> %250, splat (i64 2654435761)
  %252 = mul <4 x i64> %249, splat (i64 -7046029290881679360)
  %253 = add <4 x i64> %251, %252
  %254 = lshr <4 x i64> %242, splat (i64 47)
  %255 = xor <4 x i64> %207, %254
  %256 = xor <4 x i64> %255, %242
  %257 = lshr <4 x i64> %256, splat (i64 32)
  %258 = and <4 x i64> %256, splat (i64 4294967295)
  %259 = mul nuw <4 x i64> %258, splat (i64 2654435761)
  %260 = mul <4 x i64> %257, splat (i64 -7046029290881679360)
  %261 = add <4 x i64> %259, %260
  %262 = add nuw nsw i64 %211, 1
  %263 = icmp eq i64 %262, %203
  br i1 %263, label %264, label %208

264:                                              ; preds = %245, %179
  %265 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %179 ], [ %261, %245 ]
  %266 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %179 ], [ %253, %245 ]
  %267 = icmp ugt i64 %1, 64
  call void @llvm.assume(i1 %267)
  %268 = and i64 %200, -1024
  %269 = lshr i64 %200, 6
  %270 = and i64 %269, 15
  %271 = getelementptr inbounds nuw i8, ptr %0, i64 %268
  %272 = icmp eq i64 %270, 0
  br i1 %272, label %304, label %273

273:                                              ; preds = %264, %273
  %274 = phi <4 x i64> [ %301, %273 ], [ %265, %264 ]
  %275 = phi <4 x i64> [ %290, %273 ], [ %266, %264 ]
  %276 = phi i64 [ %302, %273 ], [ 0, %264 ]
  %277 = shl nuw nsw i64 %276, 6
  %278 = getelementptr inbounds nuw i8, ptr %271, i64 %277
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %279, i32 0, i32 3, i32 1)
  %280 = shl nuw nsw i64 %276, 3
  %281 = getelementptr inbounds nuw i8, ptr %4, i64 %280
  %282 = load <4 x i64>, ptr %278, align 1
  %283 = load <4 x i64>, ptr %281, align 8
  %284 = xor <4 x i64> %283, %282
  %285 = lshr <4 x i64> %284, splat (i64 32)
  %286 = and <4 x i64> %284, splat (i64 4294967295)
  %287 = mul nuw <4 x i64> %286, %285
  %288 = shufflevector <4 x i64> %282, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %289 = add <4 x i64> %275, %288
  %290 = add <4 x i64> %289, %287
  %291 = getelementptr inbounds nuw i8, ptr %278, i64 32
  %292 = load <4 x i64>, ptr %291, align 1
  %293 = getelementptr inbounds nuw i8, ptr %281, i64 32
  %294 = load <4 x i64>, ptr %293, align 8
  %295 = xor <4 x i64> %294, %292
  %296 = lshr <4 x i64> %295, splat (i64 32)
  %297 = and <4 x i64> %295, splat (i64 4294967295)
  %298 = mul nuw <4 x i64> %297, %296
  %299 = shufflevector <4 x i64> %292, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %300 = add <4 x i64> %274, %299
  %301 = add <4 x i64> %300, %298
  %302 = add nuw nsw i64 %276, 1
  %303 = icmp eq i64 %302, %270
  br i1 %303, label %304, label %273

304:                                              ; preds = %273, %264
  %305 = phi <4 x i64> [ %265, %264 ], [ %301, %273 ]
  %306 = phi <4 x i64> [ %266, %264 ], [ %290, %273 ]
  %307 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %308 = getelementptr inbounds i8, ptr %307, i64 -64
  %309 = getelementptr inbounds nuw i8, ptr %4, i64 121
  %310 = load <4 x i64>, ptr %308, align 1
  %311 = load <4 x i64>, ptr %309, align 1
  %312 = xor <4 x i64> %311, %310
  %313 = lshr <4 x i64> %312, splat (i64 32)
  %314 = and <4 x i64> %312, splat (i64 4294967295)
  %315 = mul nuw <4 x i64> %314, %313
  %316 = shufflevector <4 x i64> %310, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %317 = add <4 x i64> %306, %316
  %318 = add <4 x i64> %317, %315
  %319 = getelementptr inbounds i8, ptr %307, i64 -32
  %320 = load <4 x i64>, ptr %319, align 1
  %321 = getelementptr inbounds nuw i8, ptr %4, i64 153
  %322 = load <4 x i64>, ptr %321, align 1
  %323 = xor <4 x i64> %322, %320
  %324 = lshr <4 x i64> %323, splat (i64 32)
  %325 = and <4 x i64> %323, splat (i64 4294967295)
  %326 = mul nuw <4 x i64> %325, %324
  %327 = shufflevector <4 x i64> %320, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %328 = add <4 x i64> %305, %327
  %329 = add <4 x i64> %328, %326
  %330 = getelementptr inbounds nuw i8, ptr %4, i64 11
  %331 = mul i64 %1, -7046029288634856825
  %332 = extractelement <4 x i64> %318, i64 0
  %333 = load i64, ptr %330, align 1
  %334 = xor i64 %333, %332
  %335 = extractelement <4 x i64> %318, i64 1
  %336 = getelementptr inbounds nuw i8, ptr %4, i64 19
  %337 = load i64, ptr %336, align 1
  %338 = xor i64 %337, %335
  %339 = zext i64 %334 to i128
  %340 = zext i64 %338 to i128
  %341 = mul nuw i128 %340, %339
  %342 = lshr i128 %341, 64
  %343 = xor i128 %342, %341
  %344 = trunc i128 %343 to i64
  %345 = add i64 %331, %344
  %346 = getelementptr inbounds nuw i8, ptr %4, i64 27
  %347 = extractelement <4 x i64> %318, i64 2
  %348 = load i64, ptr %346, align 1
  %349 = xor i64 %348, %347
  %350 = extractelement <4 x i64> %318, i64 3
  %351 = getelementptr inbounds nuw i8, ptr %4, i64 35
  %352 = load i64, ptr %351, align 1
  %353 = xor i64 %352, %350
  %354 = zext i64 %349 to i128
  %355 = zext i64 %353 to i128
  %356 = mul nuw i128 %355, %354
  %357 = lshr i128 %356, 64
  %358 = xor i128 %357, %356
  %359 = trunc i128 %358 to i64
  %360 = add i64 %345, %359
  %361 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %362 = extractelement <4 x i64> %329, i64 0
  %363 = load i64, ptr %361, align 1
  %364 = xor i64 %363, %362
  %365 = extractelement <4 x i64> %329, i64 1
  %366 = getelementptr inbounds nuw i8, ptr %4, i64 51
  %367 = load i64, ptr %366, align 1
  %368 = xor i64 %367, %365
  %369 = zext i64 %364 to i128
  %370 = zext i64 %368 to i128
  %371 = mul nuw i128 %370, %369
  %372 = lshr i128 %371, 64
  %373 = xor i128 %372, %371
  %374 = trunc i128 %373 to i64
  %375 = add i64 %360, %374
  %376 = getelementptr inbounds nuw i8, ptr %4, i64 59
  %377 = extractelement <4 x i64> %329, i64 2
  %378 = load i64, ptr %376, align 1
  %379 = xor i64 %378, %377
  %380 = extractelement <4 x i64> %329, i64 3
  %381 = getelementptr inbounds nuw i8, ptr %4, i64 67
  %382 = load i64, ptr %381, align 1
  %383 = xor i64 %382, %380
  %384 = zext i64 %379 to i128
  %385 = zext i64 %383 to i128
  %386 = mul nuw i128 %385, %384
  %387 = lshr i128 %386, 64
  %388 = xor i128 %387, %386
  %389 = trunc i128 %388 to i64
  %390 = add i64 %375, %389
  %391 = lshr i64 %390, 37
  %392 = xor i64 %391, %390
  %393 = mul i64 %392, 1609587791953885689
  %394 = lshr i64 %393, 32
  %395 = xor i64 %394, %393
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #9
  br label %396

396:                                              ; preds = %107, %304
  %397 = phi i64 [ %178, %107 ], [ %395, %304 ]
  ret i64 %397
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_mergeAccs: argument 1"}
!7 = distinct !{!7, !"XXH3_mergeAccs"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_mergeAccs: argument 0"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"XXH3_mergeAccs: argument 1"}
!12 = distinct !{!12, !"XXH3_mergeAccs"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"XXH3_mergeAccs: argument 0"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_hashLong_128b_internal: argument 0"}
!17 = distinct !{!17, !"XXH3_hashLong_128b_internal"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"XXH3_hashLong_128b_internal: argument 1"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_mergeAccs: argument 1"}
!22 = distinct !{!22, !"XXH3_mergeAccs"}
!23 = !{!24, !16}
!24 = distinct !{!24, !22, !"XXH3_mergeAccs: argument 0"}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{i64 2152108219}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_mergeAccs: argument 1"}
!31 = distinct !{!31, !"XXH3_mergeAccs"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"XXH3_mergeAccs: argument 0"}
