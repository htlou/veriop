; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1456dc5/wrap_17to128.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1456dc5/wrap_17to128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_17to128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -129
  %5 = icmp ult i64 %4, -112
  br i1 %5, label %148, label %6

6:                                                ; preds = %3
  %7 = mul i64 %1, -7046029288634856825
  %8 = icmp samesign ugt i64 %1, 32
  br i1 %8, label %9, label %111

9:                                                ; preds = %6
  %10 = icmp samesign ugt i64 %1, 64
  br i1 %10, label %11, label %78

11:                                               ; preds = %9
  %12 = icmp samesign ugt i64 %1, 96
  br i1 %12, label %13, label %45

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i64 56
  %17 = load i64, ptr %16, align 1
  %18 = add i64 %2, 4554437623014685352
  %19 = xor i64 %15, %18
  %20 = sub i64 2111919702937427193, %2
  %21 = xor i64 %17, %20
  %22 = zext i64 %19 to i128
  %23 = zext i64 %21 to i128
  %24 = mul nuw i128 %23, %22
  %25 = lshr i128 %24, 64
  %26 = xor i128 %25, %24
  %27 = trunc i128 %26 to i64
  %28 = add i64 %7, %27
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %30 = getelementptr inbounds i8, ptr %29, i64 -64
  %31 = load i64, ptr %30, align 1
  %32 = getelementptr i8, ptr %29, i64 -56
  %33 = load i64, ptr %32, align 1
  %34 = add i64 %2, 3556072174620004746
  %35 = xor i64 %31, %34
  %36 = sub i64 7238261902898274248, %2
  %37 = xor i64 %33, %36
  %38 = zext i64 %35 to i128
  %39 = zext i64 %37 to i128
  %40 = mul nuw i128 %39, %38
  %41 = lshr i128 %40, 64
  %42 = xor i128 %41, %40
  %43 = trunc i128 %42 to i64
  %44 = add i64 %28, %43
  br label %45

45:                                               ; preds = %13, %11
  %46 = phi i64 [ %44, %13 ], [ %7, %11 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 1
  %51 = add i64 %2, -3818837453329782724
  %52 = xor i64 %48, %51
  %53 = sub i64 -6688317018830679928, %2
  %54 = xor i64 %50, %53
  %55 = zext i64 %52 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %46, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %63 = getelementptr inbounds i8, ptr %62, i64 -48
  %64 = load i64, ptr %63, align 1
  %65 = getelementptr i8, ptr %62, i64 -40
  %66 = load i64, ptr %65, align 1
  %67 = add i64 %2, 5690594596133299313
  %68 = xor i64 %64, %67
  %69 = sub i64 -2833645246901970632, %2
  %70 = xor i64 %66, %69
  %71 = zext i64 %68 to i128
  %72 = zext i64 %70 to i128
  %73 = mul nuw i128 %72, %71
  %74 = lshr i128 %73, 64
  %75 = xor i128 %74, %73
  %76 = trunc i128 %75 to i64
  %77 = add i64 %61, %76
  br label %78

78:                                               ; preds = %45, %9
  %79 = phi i64 [ %77, %45 ], [ %7, %9 ]
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %81 = load i64, ptr %80, align 1
  %82 = getelementptr i8, ptr %0, i64 24
  %83 = load i64, ptr %82, align 1
  %84 = add i64 %2, 8711581037947681227
  %85 = xor i64 %81, %84
  %86 = sub i64 2410270004345854594, %2
  %87 = xor i64 %83, %86
  %88 = zext i64 %85 to i128
  %89 = zext i64 %87 to i128
  %90 = mul nuw i128 %89, %88
  %91 = lshr i128 %90, 64
  %92 = xor i128 %91, %90
  %93 = trunc i128 %92 to i64
  %94 = add i64 %79, %93
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %96 = getelementptr inbounds i8, ptr %95, i64 -32
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr i8, ptr %95, i64 -24
  %99 = load i64, ptr %98, align 1
  %100 = add i64 %2, -8204357891075471176
  %101 = xor i64 %97, %100
  %102 = sub i64 5487137525590930912, %2
  %103 = xor i64 %99, %102
  %104 = zext i64 %101 to i128
  %105 = zext i64 %103 to i128
  %106 = mul nuw i128 %105, %104
  %107 = lshr i128 %106, 64
  %108 = xor i128 %107, %106
  %109 = trunc i128 %108 to i64
  %110 = add i64 %94, %109
  br label %111

111:                                              ; preds = %6, %78
  %112 = phi i64 [ %110, %78 ], [ %7, %6 ]
  %113 = load i64, ptr %0, align 1
  %114 = getelementptr i8, ptr %0, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = add i64 %2, -4734510112055689544
  %117 = xor i64 %113, %116
  %118 = sub i64 2066345149520216444, %2
  %119 = xor i64 %115, %118
  %120 = zext i64 %117 to i128
  %121 = zext i64 %119 to i128
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %112, %125
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %128 = getelementptr inbounds i8, ptr %127, i64 -16
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr i8, ptr %127, i64 -8
  %131 = load i64, ptr %130, align 1
  %132 = add i64 %2, -2623469361688619810
  %133 = xor i64 %129, %132
  %134 = sub i64 2262974939099578482, %2
  %135 = xor i64 %131, %134
  %136 = zext i64 %133 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %126, %141
  %143 = lshr i64 %142, 37
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587791953885689
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  br label %148

148:                                              ; preds = %3, %111
  %149 = phi i64 [ %147, %111 ], [ 0, %3 ]
  ret i64 %149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_seed_17to128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #1 {
  %5 = add i64 %1, -129
  %6 = icmp ult i64 %5, -112
  br i1 %6, label %181, label %7

7:                                                ; preds = %4
  %8 = mul i64 %1, -7046029288634856825
  %9 = icmp samesign ugt i64 %1, 32
  br i1 %9, label %10, label %125

10:                                               ; preds = %7
  %11 = icmp samesign ugt i64 %1, 64
  br i1 %11, label %12, label %87

12:                                               ; preds = %10
  %13 = icmp samesign ugt i64 %1, 96
  br i1 %13, label %14, label %49

14:                                               ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %17 = getelementptr inbounds i8, ptr %16, i64 -64
  %18 = load i64, ptr %15, align 1
  %19 = getelementptr i8, ptr %0, i64 56
  %20 = load i64, ptr %19, align 1
  %21 = load i64, ptr %17, align 1
  %22 = getelementptr i8, ptr %16, i64 -56
  %23 = load i64, ptr %22, align 1
  %24 = add i64 %2, 4554437623014685352
  %25 = xor i64 %18, %24
  %26 = sub i64 2111919702937427193, %2
  %27 = xor i64 %20, %26
  %28 = zext i64 %25 to i128
  %29 = zext i64 %27 to i128
  %30 = mul nuw i128 %29, %28
  %31 = lshr i128 %30, 64
  %32 = xor i128 %31, %30
  %33 = trunc i128 %32 to i64
  %34 = add i64 %8, %33
  %35 = add i64 %23, %21
  %36 = xor i64 %34, %35
  %37 = add i64 %2, 3556072174620004746
  %38 = xor i64 %21, %37
  %39 = sub i64 7238261902898274248, %2
  %40 = xor i64 %23, %39
  %41 = zext i64 %38 to i128
  %42 = zext i64 %40 to i128
  %43 = mul nuw i128 %42, %41
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %20, %18
  %48 = xor i64 %47, %46
  br label %49

49:                                               ; preds = %14, %12
  %50 = phi i64 [ %36, %14 ], [ %8, %12 ]
  %51 = phi i64 [ %48, %14 ], [ 0, %12 ]
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %54 = getelementptr inbounds i8, ptr %53, i64 -48
  %55 = load i64, ptr %52, align 1
  %56 = getelementptr i8, ptr %0, i64 40
  %57 = load i64, ptr %56, align 1
  %58 = load i64, ptr %54, align 1
  %59 = getelementptr i8, ptr %53, i64 -40
  %60 = load i64, ptr %59, align 1
  %61 = add i64 %2, -3818837453329782724
  %62 = xor i64 %55, %61
  %63 = sub i64 -6688317018830679928, %2
  %64 = xor i64 %57, %63
  %65 = zext i64 %62 to i128
  %66 = zext i64 %64 to i128
  %67 = mul nuw i128 %66, %65
  %68 = lshr i128 %67, 64
  %69 = xor i128 %68, %67
  %70 = trunc i128 %69 to i64
  %71 = add i64 %50, %70
  %72 = add i64 %60, %58
  %73 = xor i64 %71, %72
  %74 = add i64 %2, 5690594596133299313
  %75 = xor i64 %58, %74
  %76 = sub i64 -2833645246901970632, %2
  %77 = xor i64 %60, %76
  %78 = zext i64 %75 to i128
  %79 = zext i64 %77 to i128
  %80 = mul nuw i128 %79, %78
  %81 = lshr i128 %80, 64
  %82 = xor i128 %81, %80
  %83 = trunc i128 %82 to i64
  %84 = add i64 %51, %83
  %85 = add i64 %57, %55
  %86 = xor i64 %84, %85
  br label %87

87:                                               ; preds = %49, %10
  %88 = phi i64 [ %73, %49 ], [ %8, %10 ]
  %89 = phi i64 [ %86, %49 ], [ 0, %10 ]
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %92 = getelementptr inbounds i8, ptr %91, i64 -32
  %93 = load i64, ptr %90, align 1
  %94 = getelementptr i8, ptr %0, i64 24
  %95 = load i64, ptr %94, align 1
  %96 = load i64, ptr %92, align 1
  %97 = getelementptr i8, ptr %91, i64 -24
  %98 = load i64, ptr %97, align 1
  %99 = add i64 %2, 8711581037947681227
  %100 = xor i64 %93, %99
  %101 = sub i64 2410270004345854594, %2
  %102 = xor i64 %95, %101
  %103 = zext i64 %100 to i128
  %104 = zext i64 %102 to i128
  %105 = mul nuw i128 %104, %103
  %106 = lshr i128 %105, 64
  %107 = xor i128 %106, %105
  %108 = trunc i128 %107 to i64
  %109 = add i64 %88, %108
  %110 = add i64 %98, %96
  %111 = xor i64 %109, %110
  %112 = add i64 %2, -8204357891075471176
  %113 = xor i64 %96, %112
  %114 = sub i64 5487137525590930912, %2
  %115 = xor i64 %98, %114
  %116 = zext i64 %113 to i128
  %117 = zext i64 %115 to i128
  %118 = mul nuw i128 %117, %116
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %89, %121
  %123 = add i64 %95, %93
  %124 = xor i64 %122, %123
  br label %125

125:                                              ; preds = %7, %87
  %126 = phi i64 [ %111, %87 ], [ %8, %7 ]
  %127 = phi i64 [ %124, %87 ], [ 0, %7 ]
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %129 = getelementptr inbounds i8, ptr %128, i64 -16
  %130 = load i64, ptr %0, align 1
  %131 = getelementptr i8, ptr %0, i64 8
  %132 = load i64, ptr %131, align 1
  %133 = load i64, ptr %129, align 1
  %134 = getelementptr i8, ptr %128, i64 -8
  %135 = load i64, ptr %134, align 1
  %136 = add i64 %2, -4734510112055689544
  %137 = xor i64 %130, %136
  %138 = sub i64 2066345149520216444, %2
  %139 = xor i64 %132, %138
  %140 = zext i64 %137 to i128
  %141 = zext i64 %139 to i128
  %142 = mul nuw i128 %141, %140
  %143 = lshr i128 %142, 64
  %144 = xor i128 %143, %142
  %145 = trunc i128 %144 to i64
  %146 = add i64 %126, %145
  %147 = add i64 %135, %133
  %148 = xor i64 %146, %147
  %149 = add i64 %2, -2623469361688619810
  %150 = xor i64 %133, %149
  %151 = sub i64 2262974939099578482, %2
  %152 = xor i64 %135, %151
  %153 = zext i64 %150 to i128
  %154 = zext i64 %152 to i128
  %155 = mul nuw i128 %154, %153
  %156 = lshr i128 %155, 64
  %157 = xor i128 %156, %155
  %158 = trunc i128 %157 to i64
  %159 = add i64 %127, %158
  %160 = add i64 %132, %130
  %161 = xor i64 %159, %160
  %162 = add i64 %161, %148
  %163 = mul i64 %148, -7046029288634856825
  %164 = mul i64 %161, -8796714831421723037
  %165 = sub i64 %1, %2
  %166 = mul i64 %165, -4417276706812531889
  %167 = add i64 %163, %166
  %168 = add i64 %167, %164
  %169 = lshr i64 %162, 37
  %170 = xor i64 %169, %162
  %171 = mul i64 %170, 1609587791953885689
  %172 = lshr i64 %171, 32
  %173 = xor i64 %172, %171
  %174 = lshr i64 %168, 37
  %175 = xor i64 %174, %168
  %176 = mul i64 %175, 1609587791953885689
  %177 = lshr i64 %176, 32
  %178 = xor i64 %177, %176
  %179 = sub i64 0, %178
  store i64 %173, ptr %3, align 8
  %180 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %179, ptr %180, align 8
  br label %181

181:                                              ; preds = %4, %125
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !8}
!6 = distinct !{!6, !7, !"XXH3_len_17to128_64b: argument 0"}
!7 = distinct !{!7, !"XXH3_len_17to128_64b"}
!8 = distinct !{!8, !9, !"XXH3_64bits_internal: argument 0"}
!9 = distinct !{!9, !"XXH3_64bits_internal"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"XXH3_len_17to128_128b: argument 0"}
!12 = distinct !{!12, !"XXH3_len_17to128_128b"}
