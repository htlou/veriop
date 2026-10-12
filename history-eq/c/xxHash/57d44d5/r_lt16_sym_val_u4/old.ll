; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrapv_lt16_sym.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrapv_lt16_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_lt16(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #3
  store i64 %0, ptr %11, align 16
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %1, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %2, ptr %13, align 16
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %3, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %4, ptr %15, align 16
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %5, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 %6, ptr %17, align 16
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i64 %7, ptr %18, align 8
  %19 = icmp ugt i64 %8, 15
  %20 = trunc i64 %0 to i32
  %21 = lshr i64 %0, 32
  %22 = trunc nuw i64 %21 to i32
  br i1 %19, label %187, label %23

23:                                               ; preds = %10
  %24 = trunc i64 %0 to i8
  %25 = add i32 %9, 374761393
  %26 = trunc nuw nsw i64 %8 to i32
  %27 = add i32 %25, %26
  switch i64 %8, label %176 [
    i64 12, label %28
    i64 8, label %34
    i64 4, label %44
    i64 13, label %51
    i64 9, label %57
    i64 5, label %67
    i64 14, label %82
    i64 10, label %88
    i64 6, label %98
    i64 15, label %120
    i64 11, label %126
    i64 7, label %136
    i64 3, label %146
    i64 2, label %157
    i64 1, label %168
    i64 0, label %177
  ]

28:                                               ; preds = %23
  %29 = mul i32 %20, -1028477379
  %30 = add i32 %29, %27
  %31 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %32 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %33 = mul i32 %32, 668265263
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i32 [ %20, %23 ], [ %22, %28 ]
  %36 = phi ptr [ %11, %23 ], [ %31, %28 ]
  %37 = phi i32 [ %27, %23 ], [ %33, %28 ]
  %38 = mul i32 %35, -1028477379
  %39 = add i32 %38, %37
  %40 = getelementptr inbounds nuw i8, ptr %36, i64 4
  %41 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 17)
  %42 = mul i32 %41, 668265263
  %43 = load i32, ptr %40, align 1
  br label %44

44:                                               ; preds = %34, %23
  %45 = phi i32 [ %20, %23 ], [ %43, %34 ]
  %46 = phi i32 [ %27, %23 ], [ %42, %34 ]
  %47 = mul i32 %45, -1028477379
  %48 = add i32 %47, %46
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 17)
  %50 = mul i32 %49, 668265263
  br label %177

51:                                               ; preds = %23
  %52 = mul i32 %20, -1028477379
  %53 = add i32 %52, %27
  %54 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %55 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 17)
  %56 = mul i32 %55, 668265263
  br label %57

57:                                               ; preds = %51, %23
  %58 = phi i32 [ %20, %23 ], [ %22, %51 ]
  %59 = phi ptr [ %11, %23 ], [ %54, %51 ]
  %60 = phi i32 [ %27, %23 ], [ %56, %51 ]
  %61 = mul i32 %58, -1028477379
  %62 = add i32 %61, %60
  %63 = getelementptr inbounds nuw i8, ptr %59, i64 4
  %64 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 17)
  %65 = mul i32 %64, 668265263
  %66 = load i32, ptr %63, align 1
  br label %67

67:                                               ; preds = %57, %23
  %68 = phi i32 [ %20, %23 ], [ %66, %57 ]
  %69 = phi ptr [ %11, %23 ], [ %63, %57 ]
  %70 = phi i32 [ %27, %23 ], [ %65, %57 ]
  %71 = mul i32 %68, -1028477379
  %72 = add i32 %71, %70
  %73 = getelementptr inbounds nuw i8, ptr %69, i64 4
  %74 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 17)
  %75 = mul i32 %74, 668265263
  %76 = load i8, ptr %73, align 1
  %77 = zext i8 %76 to i32
  %78 = mul i32 %77, 374761393
  %79 = add i32 %75, %78
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 11)
  %81 = mul i32 %80, -1640531535
  br label %177

82:                                               ; preds = %23
  %83 = mul i32 %20, -1028477379
  %84 = add i32 %83, %27
  %85 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %86 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 17)
  %87 = mul i32 %86, 668265263
  br label %88

88:                                               ; preds = %82, %23
  %89 = phi i32 [ %20, %23 ], [ %22, %82 ]
  %90 = phi ptr [ %11, %23 ], [ %85, %82 ]
  %91 = phi i32 [ %27, %23 ], [ %87, %82 ]
  %92 = mul i32 %89, -1028477379
  %93 = add i32 %92, %91
  %94 = getelementptr inbounds nuw i8, ptr %90, i64 4
  %95 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 17)
  %96 = mul i32 %95, 668265263
  %97 = load i32, ptr %94, align 1
  br label %98

98:                                               ; preds = %88, %23
  %99 = phi i32 [ %20, %23 ], [ %97, %88 ]
  %100 = phi ptr [ %11, %23 ], [ %94, %88 ]
  %101 = phi i32 [ %27, %23 ], [ %96, %88 ]
  %102 = mul i32 %99, -1028477379
  %103 = add i32 %102, %101
  %104 = getelementptr inbounds nuw i8, ptr %100, i64 4
  %105 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 17)
  %106 = mul i32 %105, 668265263
  %107 = getelementptr inbounds nuw i8, ptr %100, i64 5
  %108 = load i8, ptr %104, align 1
  %109 = zext i8 %108 to i32
  %110 = mul i32 %109, 374761393
  %111 = add i32 %106, %110
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 11)
  %113 = mul i32 %112, -1640531535
  %114 = load i8, ptr %107, align 1
  %115 = zext i8 %114 to i32
  %116 = mul i32 %115, 374761393
  %117 = add i32 %113, %116
  %118 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 11)
  %119 = mul i32 %118, -1640531535
  br label %177

120:                                              ; preds = %23
  %121 = mul i32 %20, -1028477379
  %122 = add i32 %121, %27
  %123 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %124 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 17)
  %125 = mul i32 %124, 668265263
  br label %126

126:                                              ; preds = %120, %23
  %127 = phi i32 [ %20, %23 ], [ %22, %120 ]
  %128 = phi ptr [ %11, %23 ], [ %123, %120 ]
  %129 = phi i32 [ %27, %23 ], [ %125, %120 ]
  %130 = mul i32 %127, -1028477379
  %131 = add i32 %130, %129
  %132 = getelementptr inbounds nuw i8, ptr %128, i64 4
  %133 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 17)
  %134 = mul i32 %133, 668265263
  %135 = load i32, ptr %132, align 1
  br label %136

136:                                              ; preds = %126, %23
  %137 = phi i32 [ %20, %23 ], [ %135, %126 ]
  %138 = phi ptr [ %11, %23 ], [ %132, %126 ]
  %139 = phi i32 [ %27, %23 ], [ %134, %126 ]
  %140 = mul i32 %137, -1028477379
  %141 = add i32 %140, %139
  %142 = getelementptr inbounds nuw i8, ptr %138, i64 4
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 17)
  %144 = mul i32 %143, 668265263
  %145 = load i8, ptr %142, align 1
  br label %146

146:                                              ; preds = %136, %23
  %147 = phi i8 [ %24, %23 ], [ %145, %136 ]
  %148 = phi ptr [ %11, %23 ], [ %142, %136 ]
  %149 = phi i32 [ %27, %23 ], [ %144, %136 ]
  %150 = getelementptr inbounds nuw i8, ptr %148, i64 1
  %151 = zext i8 %147 to i32
  %152 = mul i32 %151, 374761393
  %153 = add i32 %152, %149
  %154 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 11)
  %155 = mul i32 %154, -1640531535
  %156 = load i8, ptr %150, align 1
  br label %157

157:                                              ; preds = %146, %23
  %158 = phi i8 [ %24, %23 ], [ %156, %146 ]
  %159 = phi ptr [ %11, %23 ], [ %150, %146 ]
  %160 = phi i32 [ %27, %23 ], [ %155, %146 ]
  %161 = getelementptr inbounds nuw i8, ptr %159, i64 1
  %162 = zext i8 %158 to i32
  %163 = mul i32 %162, 374761393
  %164 = add i32 %163, %160
  %165 = tail call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 11)
  %166 = mul i32 %165, -1640531535
  %167 = load i8, ptr %161, align 1
  br label %168

168:                                              ; preds = %157, %23
  %169 = phi i8 [ %24, %23 ], [ %167, %157 ]
  %170 = phi i32 [ %27, %23 ], [ %166, %157 ]
  %171 = zext i8 %169 to i32
  %172 = mul i32 %171, 374761393
  %173 = add i32 %172, %170
  %174 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 11)
  %175 = mul i32 %174, -1640531535
  br label %177

176:                                              ; preds = %23
  unreachable

177:                                              ; preds = %23, %44, %67, %98, %168
  %178 = phi i32 [ %119, %98 ], [ %81, %67 ], [ %50, %44 ], [ %27, %23 ], [ %175, %168 ]
  %179 = lshr i32 %178, 15
  %180 = xor i32 %179, %178
  %181 = mul i32 %180, -2048144777
  %182 = lshr i32 %181, 13
  %183 = xor i32 %182, %181
  %184 = mul i32 %183, -1028477379
  %185 = lshr i32 %184, 16
  %186 = xor i32 %185, %184
  br label %187

187:                                              ; preds = %10, %177
  %188 = phi i32 [ %186, %177 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #3
  ret i32 %188
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
