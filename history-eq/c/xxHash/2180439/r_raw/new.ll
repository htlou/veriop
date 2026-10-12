; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/2180439/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/2180439/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_17to128_64b(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31, i64 noundef %32, i64 noundef %33) local_unnamed_addr #0 {
  %35 = alloca [128 x i8], align 64
  %36 = add i64 %16, -129
  %37 = icmp ult i64 %36, -112
  br i1 %37, label %180, label %38

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
  %55 = icmp samesign ugt i64 %16, 32
  br i1 %55, label %56, label %146

56:                                               ; preds = %38
  %57 = icmp samesign ugt i64 %16, 64
  br i1 %57, label %58, label %117

58:                                               ; preds = %56
  %59 = icmp samesign ugt i64 %16, 96
  br i1 %59, label %60, label %88

60:                                               ; preds = %58
  %61 = add i64 %33, %29
  %62 = xor i64 %61, %6
  %63 = sub i64 %30, %33
  %64 = xor i64 %63, %7
  %65 = zext i64 %62 to i128
  %66 = zext i64 %64 to i128
  %67 = mul nuw i128 %66, %65
  %68 = lshr i128 %67, 64
  %69 = xor i128 %68, %67
  %70 = trunc i128 %69 to i64
  %71 = add i64 %54, %70
  %72 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %73 = getelementptr inbounds i8, ptr %72, i64 -64
  %74 = load i64, ptr %73, align 1
  %75 = getelementptr i8, ptr %72, i64 -56
  %76 = load i64, ptr %75, align 1
  %77 = add i64 %33, %31
  %78 = xor i64 %74, %77
  %79 = sub i64 %32, %33
  %80 = xor i64 %76, %79
  %81 = zext i64 %78 to i128
  %82 = zext i64 %80 to i128
  %83 = mul nuw i128 %82, %81
  %84 = lshr i128 %83, 64
  %85 = xor i128 %84, %83
  %86 = trunc i128 %85 to i64
  %87 = add i64 %71, %86
  br label %88

88:                                               ; preds = %60, %58
  %89 = phi i64 [ %87, %60 ], [ %54, %58 ]
  %90 = add i64 %33, %25
  %91 = xor i64 %90, %4
  %92 = sub i64 %26, %33
  %93 = xor i64 %92, %5
  %94 = zext i64 %91 to i128
  %95 = zext i64 %93 to i128
  %96 = mul nuw i128 %95, %94
  %97 = lshr i128 %96, 64
  %98 = xor i128 %97, %96
  %99 = trunc i128 %98 to i64
  %100 = add i64 %89, %99
  %101 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %102 = getelementptr inbounds i8, ptr %101, i64 -48
  %103 = load i64, ptr %102, align 1
  %104 = getelementptr i8, ptr %101, i64 -40
  %105 = load i64, ptr %104, align 1
  %106 = add i64 %33, %27
  %107 = xor i64 %103, %106
  %108 = sub i64 %28, %33
  %109 = xor i64 %105, %108
  %110 = zext i64 %107 to i128
  %111 = zext i64 %109 to i128
  %112 = mul nuw i128 %111, %110
  %113 = lshr i128 %112, 64
  %114 = xor i128 %113, %112
  %115 = trunc i128 %114 to i64
  %116 = add i64 %100, %115
  br label %117

117:                                              ; preds = %88, %56
  %118 = phi i64 [ %116, %88 ], [ %54, %56 ]
  %119 = add i64 %33, %21
  %120 = xor i64 %119, %2
  %121 = sub i64 %22, %33
  %122 = xor i64 %121, %3
  %123 = zext i64 %120 to i128
  %124 = zext i64 %122 to i128
  %125 = mul nuw i128 %124, %123
  %126 = lshr i128 %125, 64
  %127 = xor i128 %126, %125
  %128 = trunc i128 %127 to i64
  %129 = add i64 %118, %128
  %130 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %131 = getelementptr inbounds i8, ptr %130, i64 -32
  %132 = load i64, ptr %131, align 1
  %133 = getelementptr i8, ptr %130, i64 -24
  %134 = load i64, ptr %133, align 1
  %135 = add i64 %33, %23
  %136 = xor i64 %132, %135
  %137 = sub i64 %24, %33
  %138 = xor i64 %134, %137
  %139 = zext i64 %136 to i128
  %140 = zext i64 %138 to i128
  %141 = mul nuw i128 %140, %139
  %142 = lshr i128 %141, 64
  %143 = xor i128 %142, %141
  %144 = trunc i128 %143 to i64
  %145 = add i64 %129, %144
  br label %146

146:                                              ; preds = %38, %117
  %147 = phi i64 [ %145, %117 ], [ %54, %38 ]
  %148 = add i64 %33, %17
  %149 = xor i64 %148, %0
  %150 = sub i64 %18, %33
  %151 = xor i64 %150, %1
  %152 = zext i64 %149 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %147, %157
  %159 = getelementptr inbounds nuw i8, ptr %35, i64 %16
  %160 = getelementptr inbounds i8, ptr %159, i64 -16
  %161 = load i64, ptr %160, align 1
  %162 = getelementptr i8, ptr %159, i64 -8
  %163 = load i64, ptr %162, align 1
  %164 = add i64 %33, %19
  %165 = xor i64 %161, %164
  %166 = sub i64 %20, %33
  %167 = xor i64 %163, %166
  %168 = zext i64 %165 to i128
  %169 = zext i64 %167 to i128
  %170 = mul nuw i128 %169, %168
  %171 = lshr i128 %170, 64
  %172 = xor i128 %171, %170
  %173 = trunc i128 %172 to i64
  %174 = add i64 %158, %173
  %175 = lshr i64 %174, 37
  %176 = xor i64 %175, %174
  %177 = mul i64 %176, 1609587791953885689
  %178 = lshr i64 %177, 32
  %179 = xor i64 %178, %177
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %35) #2
  br label %180

180:                                              ; preds = %34, %146
  %181 = phi i64 [ %179, %146 ], [ 0, %34 ]
  ret i64 %181
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
