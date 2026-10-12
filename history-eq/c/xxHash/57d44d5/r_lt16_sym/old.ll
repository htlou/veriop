; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap_lt16_sym.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap_lt16_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_lt16(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %167, label %5

5:                                                ; preds = %3
  %6 = add i32 %2, 374761393
  %7 = trunc nuw nsw i64 %1 to i32
  %8 = add i32 %6, %7
  switch i64 %1, label %156 [
    i64 12, label %9
    i64 8, label %16
    i64 4, label %25
    i64 13, label %33
    i64 9, label %40
    i64 5, label %49
    i64 14, label %64
    i64 10, label %71
    i64 6, label %80
    i64 15, label %102
    i64 11, label %109
    i64 7, label %118
    i64 3, label %127
    i64 2, label %137
    i64 1, label %147
    i64 0, label %157
  ]

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi ptr [ %0, %5 ], [ %13, %9 ]
  %18 = phi i32 [ %8, %5 ], [ %15, %9 ]
  %19 = load i32, ptr %17, align 1
  %20 = mul i32 %19, -1028477379
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %23 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 17)
  %24 = mul i32 %23, 668265263
  br label %25

25:                                               ; preds = %16, %5
  %26 = phi ptr [ %0, %5 ], [ %22, %16 ]
  %27 = phi i32 [ %8, %5 ], [ %24, %16 ]
  %28 = load i32, ptr %26, align 1
  %29 = mul i32 %28, -1028477379
  %30 = add i32 %29, %27
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  br label %157

33:                                               ; preds = %5
  %34 = load i32, ptr %0, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %35, %8
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %38 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %39 = mul i32 %38, 668265263
  br label %40

40:                                               ; preds = %33, %5
  %41 = phi ptr [ %0, %5 ], [ %37, %33 ]
  %42 = phi i32 [ %8, %5 ], [ %39, %33 ]
  %43 = load i32, ptr %41, align 1
  %44 = mul i32 %43, -1028477379
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds nuw i8, ptr %41, i64 4
  %47 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %48 = mul i32 %47, 668265263
  br label %49

49:                                               ; preds = %40, %5
  %50 = phi ptr [ %0, %5 ], [ %46, %40 ]
  %51 = phi i32 [ %8, %5 ], [ %48, %40 ]
  %52 = load i32, ptr %50, align 1
  %53 = mul i32 %52, -1028477379
  %54 = add i32 %53, %51
  %55 = getelementptr inbounds nuw i8, ptr %50, i64 4
  %56 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 17)
  %57 = mul i32 %56, 668265263
  %58 = load i8, ptr %55, align 1
  %59 = zext i8 %58 to i32
  %60 = mul i32 %59, 374761393
  %61 = add i32 %57, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 11)
  %63 = mul i32 %62, -1640531535
  br label %157

64:                                               ; preds = %5
  %65 = load i32, ptr %0, align 1
  %66 = mul i32 %65, -1028477379
  %67 = add i32 %66, %8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %69 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 17)
  %70 = mul i32 %69, 668265263
  br label %71

71:                                               ; preds = %64, %5
  %72 = phi ptr [ %0, %5 ], [ %68, %64 ]
  %73 = phi i32 [ %8, %5 ], [ %70, %64 ]
  %74 = load i32, ptr %72, align 1
  %75 = mul i32 %74, -1028477379
  %76 = add i32 %75, %73
  %77 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %78 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 17)
  %79 = mul i32 %78, 668265263
  br label %80

80:                                               ; preds = %71, %5
  %81 = phi ptr [ %0, %5 ], [ %77, %71 ]
  %82 = phi i32 [ %8, %5 ], [ %79, %71 ]
  %83 = load i32, ptr %81, align 1
  %84 = mul i32 %83, -1028477379
  %85 = add i32 %84, %82
  %86 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 17)
  %88 = mul i32 %87, 668265263
  %89 = getelementptr inbounds nuw i8, ptr %81, i64 5
  %90 = load i8, ptr %86, align 1
  %91 = zext i8 %90 to i32
  %92 = mul i32 %91, 374761393
  %93 = add i32 %88, %92
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 11)
  %95 = mul i32 %94, -1640531535
  %96 = load i8, ptr %89, align 1
  %97 = zext i8 %96 to i32
  %98 = mul i32 %97, 374761393
  %99 = add i32 %95, %98
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 11)
  %101 = mul i32 %100, -1640531535
  br label %157

102:                                              ; preds = %5
  %103 = load i32, ptr %0, align 1
  %104 = mul i32 %103, -1028477379
  %105 = add i32 %104, %8
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %107 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 17)
  %108 = mul i32 %107, 668265263
  br label %109

109:                                              ; preds = %102, %5
  %110 = phi ptr [ %0, %5 ], [ %106, %102 ]
  %111 = phi i32 [ %8, %5 ], [ %108, %102 ]
  %112 = load i32, ptr %110, align 1
  %113 = mul i32 %112, -1028477379
  %114 = add i32 %113, %111
  %115 = getelementptr inbounds nuw i8, ptr %110, i64 4
  %116 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 17)
  %117 = mul i32 %116, 668265263
  br label %118

118:                                              ; preds = %109, %5
  %119 = phi ptr [ %0, %5 ], [ %115, %109 ]
  %120 = phi i32 [ %8, %5 ], [ %117, %109 ]
  %121 = load i32, ptr %119, align 1
  %122 = mul i32 %121, -1028477379
  %123 = add i32 %122, %120
  %124 = getelementptr inbounds nuw i8, ptr %119, i64 4
  %125 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 17)
  %126 = mul i32 %125, 668265263
  br label %127

127:                                              ; preds = %118, %5
  %128 = phi ptr [ %0, %5 ], [ %124, %118 ]
  %129 = phi i32 [ %8, %5 ], [ %126, %118 ]
  %130 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %131 = load i8, ptr %128, align 1
  %132 = zext i8 %131 to i32
  %133 = mul i32 %132, 374761393
  %134 = add i32 %133, %129
  %135 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 11)
  %136 = mul i32 %135, -1640531535
  br label %137

137:                                              ; preds = %127, %5
  %138 = phi ptr [ %0, %5 ], [ %130, %127 ]
  %139 = phi i32 [ %8, %5 ], [ %136, %127 ]
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 1
  %141 = load i8, ptr %138, align 1
  %142 = zext i8 %141 to i32
  %143 = mul i32 %142, 374761393
  %144 = add i32 %143, %139
  %145 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 11)
  %146 = mul i32 %145, -1640531535
  br label %147

147:                                              ; preds = %137, %5
  %148 = phi ptr [ %0, %5 ], [ %140, %137 ]
  %149 = phi i32 [ %8, %5 ], [ %146, %137 ]
  %150 = load i8, ptr %148, align 1
  %151 = zext i8 %150 to i32
  %152 = mul i32 %151, 374761393
  %153 = add i32 %152, %149
  %154 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 11)
  %155 = mul i32 %154, -1640531535
  br label %157

156:                                              ; preds = %5
  unreachable

157:                                              ; preds = %5, %25, %49, %80, %147
  %158 = phi i32 [ %101, %80 ], [ %63, %49 ], [ %32, %25 ], [ %8, %5 ], [ %155, %147 ]
  %159 = lshr i32 %158, 15
  %160 = xor i32 %159, %158
  %161 = mul i32 %160, -2048144777
  %162 = lshr i32 %161, 13
  %163 = xor i32 %162, %161
  %164 = mul i32 %163, -1028477379
  %165 = lshr i32 %164, 16
  %166 = xor i32 %165, %164
  br label %167

167:                                              ; preds = %3, %157
  %168 = phi i32 [ %166, %157 ], [ 0, %3 ]
  ret i32 %168
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
