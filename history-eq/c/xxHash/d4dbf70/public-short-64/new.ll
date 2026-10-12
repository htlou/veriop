; ModuleID = '/tmp/veriop-d4db-short/new.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d4dbf70/wrap_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = hidden constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_short_hash(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 241
  tail call void @llvm.assume(i1 %3)
  %4 = icmp samesign ult i64 %1, 17
  br i1 %4, label %5, label %78

5:                                                ; preds = %2
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %29, !prof !5

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = xor i64 %8, 7458650908927343033
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = load i64, ptr %11, align 1
  %13 = xor i64 %12, -5812251307325107654
  %14 = tail call noundef i64 @llvm.bswap.i64(i64 %9)
  %15 = add i64 %14, %1
  %16 = add i64 %15, %13
  %17 = zext i64 %9 to i128
  %18 = zext i64 %13 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %16, %22
  %24 = lshr i64 %23, 37
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, 1609587791953885689
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  br label %208

29:                                               ; preds = %5
  %30 = icmp samesign ugt i64 %1, 3
  br i1 %30, label %31, label %52, !prof !5

31:                                               ; preds = %29
  %32 = load i32, ptr %0, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %34 = getelementptr inbounds i8, ptr %33, i64 -4
  %35 = load i32, ptr %34, align 1
  %36 = zext i32 %35 to i64
  %37 = zext i32 %32 to i64
  %38 = shl nuw i64 %37, 32
  %39 = or disjoint i64 %38, %36
  %40 = xor i64 %39, -4090762196417718878
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 49)
  %42 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 24)
  %43 = xor i64 %42, %41
  %44 = xor i64 %43, %40
  %45 = mul i64 %44, -6939452855193903323
  %46 = lshr i64 %45, 35
  %47 = add nuw nsw i64 %46, %1
  %48 = xor i64 %47, %45
  %49 = mul i64 %48, -6939452855193903323
  %50 = lshr i64 %49, 28
  %51 = xor i64 %50, %49
  br label %208

52:                                               ; preds = %29
  %53 = icmp eq i64 %1, 0
  br i1 %53, label %208, label %54

54:                                               ; preds = %52
  %55 = load i8, ptr %0, align 1
  %56 = lshr i64 %1, 1
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 %56
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr i8, ptr %0, i64 %1
  %60 = getelementptr i8, ptr %59, i64 -1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %55 to i64
  %63 = shl nuw nsw i64 %62, 16
  %64 = zext i8 %58 to i64
  %65 = shl nuw nsw i64 %64, 24
  %66 = or disjoint i64 %65, %63
  %67 = zext i8 %61 to i64
  %68 = or disjoint i64 %66, %67
  %69 = shl nuw nsw i64 %1, 8
  %70 = or disjoint i64 %68, %69
  %71 = xor i64 %70, 2267503259
  %72 = mul i64 %71, -4417276706812531889
  %73 = lshr i64 %72, 29
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, 1609587929392839161
  %76 = lshr i64 %75, 32
  %77 = xor i64 %76, %75
  br label %208

78:                                               ; preds = %2
  %79 = icmp samesign ult i64 %1, 129
  br i1 %79, label %80, label %206

80:                                               ; preds = %78
  %81 = mul i64 %1, -7046029288634856825
  %82 = icmp samesign ugt i64 %1, 32
  br i1 %82, label %83, label %173

83:                                               ; preds = %80
  %84 = icmp samesign ugt i64 %1, 64
  br i1 %84, label %85, label %144

85:                                               ; preds = %83
  %86 = icmp samesign ugt i64 %1, 96
  br i1 %86, label %87, label %115

87:                                               ; preds = %85
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %89 = load i64, ptr %88, align 1
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %91 = load i64, ptr %90, align 1
  %92 = xor i64 %89, 4554437623014685352
  %93 = xor i64 %91, 2111919702937427193
  %94 = zext i64 %92 to i128
  %95 = zext i64 %93 to i128
  %96 = mul nuw i128 %95, %94
  %97 = lshr i128 %96, 64
  %98 = xor i128 %97, %96
  %99 = trunc i128 %98 to i64
  %100 = add i64 %81, %99
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %102 = getelementptr inbounds i8, ptr %101, i64 -64
  %103 = load i64, ptr %102, align 1
  %104 = getelementptr inbounds i8, ptr %101, i64 -56
  %105 = load i64, ptr %104, align 1
  %106 = xor i64 %103, 3556072174620004746
  %107 = xor i64 %105, 7238261902898274248
  %108 = zext i64 %106 to i128
  %109 = zext i64 %107 to i128
  %110 = mul nuw i128 %109, %108
  %111 = lshr i128 %110, 64
  %112 = xor i128 %111, %110
  %113 = trunc i128 %112 to i64
  %114 = add i64 %100, %113
  br label %115

115:                                              ; preds = %87, %85
  %116 = phi i64 [ %114, %87 ], [ %81, %85 ]
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %118 = load i64, ptr %117, align 1
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %120 = load i64, ptr %119, align 1
  %121 = xor i64 %118, -3818837453329782724
  %122 = xor i64 %120, -6688317018830679928
  %123 = zext i64 %121 to i128
  %124 = zext i64 %122 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %116, %128
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %131 = getelementptr inbounds i8, ptr %130, i64 -48
  %132 = load i64, ptr %131, align 1
  %133 = getelementptr inbounds i8, ptr %130, i64 -40
  %134 = load i64, ptr %133, align 1
  %135 = xor i64 %132, 5690594596133299313
  %136 = xor i64 %134, -2833645246901970632
  %137 = zext i64 %135 to i128
  %138 = zext i64 %136 to i128
  %139 = mul nuw i128 %138, %137
  %140 = lshr i128 %139, 64
  %141 = xor i128 %140, %139
  %142 = trunc i128 %141 to i64
  %143 = add i64 %129, %142
  br label %144

144:                                              ; preds = %115, %83
  %145 = phi i64 [ %143, %115 ], [ %81, %83 ]
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, 8711581037947681227
  %151 = xor i64 %149, 2410270004345854594
  %152 = zext i64 %150 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %145, %157
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %160 = getelementptr inbounds i8, ptr %159, i64 -32
  %161 = load i64, ptr %160, align 1
  %162 = getelementptr inbounds i8, ptr %159, i64 -24
  %163 = load i64, ptr %162, align 1
  %164 = xor i64 %161, -8204357891075471176
  %165 = xor i64 %163, 5487137525590930912
  %166 = zext i64 %164 to i128
  %167 = zext i64 %165 to i128
  %168 = mul nuw i128 %167, %166
  %169 = lshr i128 %168, 64
  %170 = xor i128 %169, %168
  %171 = trunc i128 %170 to i64
  %172 = add i64 %158, %171
  br label %173

173:                                              ; preds = %144, %80
  %174 = phi i64 [ %172, %144 ], [ %81, %80 ]
  %175 = load i64, ptr %0, align 1
  %176 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %177 = load i64, ptr %176, align 1
  %178 = xor i64 %175, -4734510112055689544
  %179 = xor i64 %177, 2066345149520216444
  %180 = zext i64 %178 to i128
  %181 = zext i64 %179 to i128
  %182 = mul nuw i128 %181, %180
  %183 = lshr i128 %182, 64
  %184 = xor i128 %183, %182
  %185 = trunc i128 %184 to i64
  %186 = add i64 %174, %185
  %187 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %188 = getelementptr inbounds i8, ptr %187, i64 -16
  %189 = load i64, ptr %188, align 1
  %190 = getelementptr inbounds i8, ptr %187, i64 -8
  %191 = load i64, ptr %190, align 1
  %192 = xor i64 %189, -2623469361688619810
  %193 = xor i64 %191, 2262974939099578482
  %194 = zext i64 %192 to i128
  %195 = zext i64 %193 to i128
  %196 = mul nuw i128 %195, %194
  %197 = lshr i128 %196, 64
  %198 = xor i128 %197, %196
  %199 = trunc i128 %198 to i64
  %200 = add i64 %186, %199
  %201 = lshr i64 %200, 37
  %202 = xor i64 %201, %200
  %203 = mul i64 %202, 1609587791953885689
  %204 = lshr i64 %203, 32
  %205 = xor i64 %204, %203
  br label %208

206:                                              ; preds = %78
  %207 = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0)
  br label %208

208:                                              ; preds = %206, %173, %54, %52, %31, %7
  %209 = phi i64 [ %205, %173 ], [ %207, %206 ], [ %28, %7 ], [ %51, %31 ], [ %77, %54 ], [ 3244421341483603138, %52 ]
  ret i64 %209
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define hidden fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %0, i64 noundef range(i64 129, 241) %1, ptr noundef readonly %2, i64 noundef %3) unnamed_addr #2 {
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
  %158 = lshr i64 %156, 37
  %159 = xor i64 %158, %156
  %160 = mul i64 %159, 1609587791953885689
  %161 = lshr i64 %160, 32
  %162 = xor i64 %161, %160
  %163 = icmp eq i32 %157, 8
  br i1 %163, label %310, label %164

164:                                              ; preds = %4
  %165 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %166 = getelementptr i8, ptr %2, i64 3
  %167 = load i64, ptr %165, align 1
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %169 = load i64, ptr %168, align 1
  %170 = load i64, ptr %166, align 1
  %171 = add i64 %170, %3
  %172 = xor i64 %171, %167
  %173 = getelementptr i8, ptr %2, i64 11
  %174 = load i64, ptr %173, align 1
  %175 = sub i64 %174, %3
  %176 = xor i64 %175, %169
  %177 = zext i64 %172 to i128
  %178 = zext i64 %176 to i128
  %179 = mul nuw i128 %178, %177
  %180 = lshr i128 %179, 64
  %181 = xor i128 %180, %179
  %182 = trunc i128 %181 to i64
  %183 = add i64 %162, %182
  %184 = icmp eq i32 %157, 9
  br i1 %184, label %310, label %185, !llvm.loop !6

185:                                              ; preds = %164
  %186 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %187 = getelementptr i8, ptr %2, i64 19
  %188 = load i64, ptr %186, align 1
  %189 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %190 = load i64, ptr %189, align 1
  %191 = load i64, ptr %187, align 1
  %192 = add i64 %191, %3
  %193 = xor i64 %192, %188
  %194 = getelementptr i8, ptr %2, i64 27
  %195 = load i64, ptr %194, align 1
  %196 = sub i64 %195, %3
  %197 = xor i64 %196, %190
  %198 = zext i64 %193 to i128
  %199 = zext i64 %197 to i128
  %200 = mul nuw i128 %199, %198
  %201 = lshr i128 %200, 64
  %202 = xor i128 %201, %200
  %203 = trunc i128 %202 to i64
  %204 = add i64 %183, %203
  %205 = icmp eq i32 %157, 10
  br i1 %205, label %310, label %206, !llvm.loop !6

206:                                              ; preds = %185
  %207 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %208 = getelementptr i8, ptr %2, i64 35
  %209 = load i64, ptr %207, align 1
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %211 = load i64, ptr %210, align 1
  %212 = load i64, ptr %208, align 1
  %213 = add i64 %212, %3
  %214 = xor i64 %213, %209
  %215 = getelementptr i8, ptr %2, i64 43
  %216 = load i64, ptr %215, align 1
  %217 = sub i64 %216, %3
  %218 = xor i64 %217, %211
  %219 = zext i64 %214 to i128
  %220 = zext i64 %218 to i128
  %221 = mul nuw i128 %220, %219
  %222 = lshr i128 %221, 64
  %223 = xor i128 %222, %221
  %224 = trunc i128 %223 to i64
  %225 = add i64 %204, %224
  %226 = icmp eq i32 %157, 11
  br i1 %226, label %310, label %227, !llvm.loop !6

227:                                              ; preds = %206
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %229 = getelementptr i8, ptr %2, i64 51
  %230 = load i64, ptr %228, align 1
  %231 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %232 = load i64, ptr %231, align 1
  %233 = load i64, ptr %229, align 1
  %234 = add i64 %233, %3
  %235 = xor i64 %234, %230
  %236 = getelementptr i8, ptr %2, i64 59
  %237 = load i64, ptr %236, align 1
  %238 = sub i64 %237, %3
  %239 = xor i64 %238, %232
  %240 = zext i64 %235 to i128
  %241 = zext i64 %239 to i128
  %242 = mul nuw i128 %241, %240
  %243 = lshr i128 %242, 64
  %244 = xor i128 %243, %242
  %245 = trunc i128 %244 to i64
  %246 = add i64 %225, %245
  %247 = icmp eq i32 %157, 12
  br i1 %247, label %310, label %248, !llvm.loop !6

248:                                              ; preds = %227
  %249 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %250 = getelementptr i8, ptr %2, i64 67
  %251 = load i64, ptr %249, align 1
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %253 = load i64, ptr %252, align 1
  %254 = load i64, ptr %250, align 1
  %255 = add i64 %254, %3
  %256 = xor i64 %255, %251
  %257 = getelementptr i8, ptr %2, i64 75
  %258 = load i64, ptr %257, align 1
  %259 = sub i64 %258, %3
  %260 = xor i64 %259, %253
  %261 = zext i64 %256 to i128
  %262 = zext i64 %260 to i128
  %263 = mul nuw i128 %262, %261
  %264 = lshr i128 %263, 64
  %265 = xor i128 %264, %263
  %266 = trunc i128 %265 to i64
  %267 = add i64 %246, %266
  %268 = icmp eq i32 %157, 13
  br i1 %268, label %310, label %269, !llvm.loop !6

269:                                              ; preds = %248
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %271 = getelementptr i8, ptr %2, i64 83
  %272 = load i64, ptr %270, align 1
  %273 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %274 = load i64, ptr %273, align 1
  %275 = load i64, ptr %271, align 1
  %276 = add i64 %275, %3
  %277 = xor i64 %276, %272
  %278 = getelementptr i8, ptr %2, i64 91
  %279 = load i64, ptr %278, align 1
  %280 = sub i64 %279, %3
  %281 = xor i64 %280, %274
  %282 = zext i64 %277 to i128
  %283 = zext i64 %281 to i128
  %284 = mul nuw i128 %283, %282
  %285 = lshr i128 %284, 64
  %286 = xor i128 %285, %284
  %287 = trunc i128 %286 to i64
  %288 = add i64 %267, %287
  %289 = icmp eq i32 %157, 14
  br i1 %289, label %310, label %290, !llvm.loop !6

290:                                              ; preds = %269
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %292 = getelementptr i8, ptr %2, i64 99
  %293 = load i64, ptr %291, align 1
  %294 = getelementptr inbounds nuw i8, ptr %0, i64 232
  %295 = load i64, ptr %294, align 1
  %296 = load i64, ptr %292, align 1
  %297 = add i64 %296, %3
  %298 = xor i64 %297, %293
  %299 = getelementptr i8, ptr %2, i64 107
  %300 = load i64, ptr %299, align 1
  %301 = sub i64 %300, %3
  %302 = xor i64 %301, %295
  %303 = zext i64 %298 to i128
  %304 = zext i64 %302 to i128
  %305 = mul nuw i128 %304, %303
  %306 = lshr i128 %305, 64
  %307 = xor i128 %306, %305
  %308 = trunc i128 %307 to i64
  %309 = add i64 %288, %308
  br label %310

310:                                              ; preds = %290, %269, %248, %227, %206, %185, %164, %4
  %311 = phi i64 [ %162, %4 ], [ %183, %164 ], [ %204, %185 ], [ %225, %206 ], [ %246, %227 ], [ %267, %248 ], [ %288, %269 ], [ %309, %290 ]
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %313 = getelementptr inbounds i8, ptr %312, i64 -16
  %314 = getelementptr inbounds nuw i8, ptr %2, i64 119
  %315 = load i64, ptr %313, align 1
  %316 = getelementptr inbounds i8, ptr %312, i64 -8
  %317 = load i64, ptr %316, align 1
  %318 = load i64, ptr %314, align 1
  %319 = add i64 %318, %3
  %320 = xor i64 %319, %315
  %321 = getelementptr inbounds nuw i8, ptr %2, i64 127
  %322 = load i64, ptr %321, align 1
  %323 = sub i64 %322, %3
  %324 = xor i64 %323, %317
  %325 = zext i64 %320 to i128
  %326 = zext i64 %324 to i128
  %327 = mul nuw i128 %326, %325
  %328 = lshr i128 %327, 64
  %329 = xor i128 %328, %327
  %330 = trunc i128 %329 to i64
  %331 = add i64 %311, %330
  %332 = lshr i64 %331, 37
  %333 = xor i64 %332, %331
  %334 = mul i64 %333, 1609587791953885689
  %335 = lshr i64 %334, 32
  %336 = xor i64 %335, %334
  ret i64 %336
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
