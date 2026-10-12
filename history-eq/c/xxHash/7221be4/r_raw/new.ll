; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7221be4/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7221be4/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_17to128_64b(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31, i64 noundef %32, i64 noundef %33) local_unnamed_addr #0 {
  %35 = alloca [128 x i8], align 64
  %36 = add i64 %16, -129
  %37 = icmp ult i64 %36, -112
  br i1 %37, label %174, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %35) #2
  store i64 %0, ptr %35, align 64
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %1, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %2, ptr %40, align 16
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 24
  store i64 %3, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i64 %4, ptr %42, align 32
  %43 = getelementptr inbounds nuw i8, ptr %35, i64 40
  store i64 %5, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 48
  store i64 %6, ptr %44, align 16
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 56
  store i64 %7, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %35, i64 64
  store i64 %8, ptr %46, align 64
  %47 = getelementptr inbounds nuw i8, ptr %35, i64 72
  store i64 %9, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %35, i64 80
  store i64 %10, ptr %48, align 16
  %49 = getelementptr inbounds nuw i8, ptr %35, i64 88
  store i64 %11, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 96
  store i64 %12, ptr %50, align 32
  %51 = getelementptr inbounds nuw i8, ptr %35, i64 104
  store i64 %13, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %35, i64 112
  store i64 %14, ptr %52, align 16
  %53 = getelementptr inbounds nuw i8, ptr %35, i64 120
  store i64 %15, ptr %53, align 8
  %54 = mul i64 %16, -7046029288634856825
  %55 = add i64 %33, %17
  %56 = xor i64 %55, %0
  %57 = sub i64 %18, %33
  %58 = xor i64 %57, %1
  %59 = zext i64 %56 to i128
  %60 = zext i64 %58 to i128
  %61 = mul nuw i128 %60, %59
  %62 = lshr i128 %61, 64
  %63 = xor i128 %62, %61
  %64 = trunc i128 %63 to i64
  %65 = add i64 %54, %64
  %66 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %67 = getelementptr inbounds i8, ptr %66, i64 -16
  %68 = load i64, ptr %67, align 1
  %69 = getelementptr i8, ptr %66, i64 -8
  %70 = load i64, ptr %69, align 1
  %71 = add i64 %33, %19
  %72 = xor i64 %68, %71
  %73 = sub i64 %20, %33
  %74 = xor i64 %70, %73
  %75 = zext i64 %72 to i128
  %76 = zext i64 %74 to i128
  %77 = mul nuw i128 %76, %75
  %78 = lshr i128 %77, 64
  %79 = xor i128 %78, %77
  %80 = trunc i128 %79 to i64
  %81 = icmp samesign ugt i64 %16, 32
  br i1 %81, label %82, label %165

82:                                               ; preds = %38
  %83 = add i64 %33, %21
  %84 = xor i64 %83, %2
  %85 = sub i64 %22, %33
  %86 = xor i64 %85, %3
  %87 = zext i64 %84 to i128
  %88 = zext i64 %86 to i128
  %89 = mul nuw i128 %88, %87
  %90 = lshr i128 %89, 64
  %91 = xor i128 %90, %89
  %92 = trunc i128 %91 to i64
  %93 = add i64 %65, %92
  %94 = getelementptr inbounds i8, ptr %66, i64 -32
  %95 = load i64, ptr %94, align 1
  %96 = getelementptr i8, ptr %66, i64 -24
  %97 = load i64, ptr %96, align 1
  %98 = add i64 %33, %23
  %99 = xor i64 %95, %98
  %100 = sub i64 %24, %33
  %101 = xor i64 %97, %100
  %102 = zext i64 %99 to i128
  %103 = zext i64 %101 to i128
  %104 = mul nuw i128 %103, %102
  %105 = lshr i128 %104, 64
  %106 = xor i128 %105, %104
  %107 = trunc i128 %106 to i64
  %108 = add i64 %107, %80
  %109 = icmp samesign ugt i64 %16, 64
  br i1 %109, label %110, label %165

110:                                              ; preds = %82
  %111 = add i64 %33, %25
  %112 = xor i64 %111, %4
  %113 = sub i64 %26, %33
  %114 = xor i64 %113, %5
  %115 = zext i64 %112 to i128
  %116 = zext i64 %114 to i128
  %117 = mul nuw i128 %116, %115
  %118 = lshr i128 %117, 64
  %119 = xor i128 %118, %117
  %120 = trunc i128 %119 to i64
  %121 = add i64 %93, %120
  %122 = getelementptr inbounds i8, ptr %66, i64 -48
  %123 = load i64, ptr %122, align 1
  %124 = getelementptr i8, ptr %66, i64 -40
  %125 = load i64, ptr %124, align 1
  %126 = add i64 %33, %27
  %127 = xor i64 %123, %126
  %128 = sub i64 %28, %33
  %129 = xor i64 %125, %128
  %130 = zext i64 %127 to i128
  %131 = zext i64 %129 to i128
  %132 = mul nuw i128 %131, %130
  %133 = lshr i128 %132, 64
  %134 = xor i128 %133, %132
  %135 = trunc i128 %134 to i64
  %136 = add i64 %108, %135
  %137 = icmp samesign ugt i64 %16, 96
  br i1 %137, label %138, label %165

138:                                              ; preds = %110
  %139 = add i64 %33, %29
  %140 = xor i64 %139, %6
  %141 = sub i64 %30, %33
  %142 = xor i64 %141, %7
  %143 = zext i64 %140 to i128
  %144 = zext i64 %142 to i128
  %145 = mul nuw i128 %144, %143
  %146 = lshr i128 %145, 64
  %147 = xor i128 %146, %145
  %148 = trunc i128 %147 to i64
  %149 = add i64 %121, %148
  %150 = getelementptr inbounds i8, ptr %66, i64 -64
  %151 = load i64, ptr %150, align 1
  %152 = getelementptr i8, ptr %66, i64 -56
  %153 = load i64, ptr %152, align 1
  %154 = add i64 %33, %31
  %155 = xor i64 %151, %154
  %156 = sub i64 %32, %33
  %157 = xor i64 %153, %156
  %158 = zext i64 %155 to i128
  %159 = zext i64 %157 to i128
  %160 = mul nuw i128 %159, %158
  %161 = lshr i128 %160, 64
  %162 = xor i128 %161, %160
  %163 = trunc i128 %162 to i64
  %164 = add i64 %136, %163
  br label %165

165:                                              ; preds = %38, %82, %110, %138
  %166 = phi i64 [ %149, %138 ], [ %121, %110 ], [ %93, %82 ], [ %65, %38 ]
  %167 = phi i64 [ %164, %138 ], [ %136, %110 ], [ %108, %82 ], [ %80, %38 ]
  %168 = add i64 %167, %166
  %169 = lshr i64 %168, 37
  %170 = xor i64 %169, %168
  %171 = mul i64 %170, 1609587791953885689
  %172 = lshr i64 %171, 32
  %173 = xor i64 %172, %171
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %35) #2
  br label %174

174:                                              ; preds = %34, %165
  %175 = phi i64 [ %173, %165 ], [ 0, %34 ]
  ret i64 %175
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_len_17to128_64b: argument 0"}
!7 = distinct !{!7, !"XXH3_len_17to128_64b"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_len_17to128_64b: argument 1"}
