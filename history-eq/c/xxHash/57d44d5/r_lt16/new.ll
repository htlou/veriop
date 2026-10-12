; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_lt16(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 15
  br i1 %4, label %194, label %5

5:                                                ; preds = %3
  %6 = add i32 %2, 374761393
  %7 = trunc nuw nsw i64 %1 to i32
  %8 = add i32 %6, %7
  %9 = icmp samesign ugt i64 %1, 3
  br i1 %9, label %10, label %39

10:                                               ; preds = %5
  %11 = add nsw i64 %1, -4
  %12 = lshr i64 %11, 2
  %13 = add nuw nsw i64 %12, 1
  %14 = and i64 %13, 7
  %15 = and i64 %11, 28
  %16 = icmp eq i64 %15, 28
  br i1 %16, label %31, label %17

17:                                               ; preds = %10, %17
  %18 = phi i32 [ %27, %17 ], [ %8, %10 ]
  %19 = phi i64 [ %28, %17 ], [ %1, %10 ]
  %20 = phi ptr [ %25, %17 ], [ %0, %10 ]
  %21 = phi i64 [ %29, %17 ], [ 0, %10 ]
  %22 = load i32, ptr %20, align 1
  %23 = mul i32 %22, -1028477379
  %24 = add i32 %23, %18
  %25 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %26 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 17)
  %27 = mul i32 %26, 668265263
  %28 = add nsw i64 %19, -4
  %29 = add i64 %21, 1
  %30 = icmp eq i64 %29, %14
  br i1 %30, label %31, label %17

31:                                               ; preds = %17, %10
  %32 = phi i32 [ %8, %10 ], [ %27, %17 ]
  %33 = phi i64 [ %1, %10 ], [ %28, %17 ]
  %34 = phi ptr [ %0, %10 ], [ %25, %17 ]
  %35 = phi ptr [ poison, %10 ], [ %25, %17 ]
  %36 = phi i32 [ poison, %10 ], [ %27, %17 ]
  %37 = phi i64 [ poison, %10 ], [ %28, %17 ]
  %38 = icmp ult i64 %11, 28
  br i1 %38, label %39, label %68

39:                                               ; preds = %31, %68, %5
  %40 = phi ptr [ %0, %5 ], [ %35, %31 ], [ %117, %68 ]
  %41 = phi i64 [ %1, %5 ], [ %37, %31 ], [ %120, %68 ]
  %42 = phi i32 [ %8, %5 ], [ %36, %31 ], [ %119, %68 ]
  %43 = icmp eq i64 %41, 0
  br i1 %43, label %184, label %44

44:                                               ; preds = %39
  %45 = and i64 %41, 7
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %44, %47
  %48 = phi i32 [ %58, %47 ], [ %42, %44 ]
  %49 = phi i64 [ %59, %47 ], [ %41, %44 ]
  %50 = phi ptr [ %52, %47 ], [ %40, %44 ]
  %51 = phi i64 [ %60, %47 ], [ 0, %44 ]
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 1
  %53 = load i8, ptr %50, align 1
  %54 = zext i8 %53 to i32
  %55 = mul i32 %54, 374761393
  %56 = add i32 %55, %48
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 11)
  %58 = mul i32 %57, -1640531535
  %59 = add nsw i64 %49, -1
  %60 = add i64 %51, 1
  %61 = icmp eq i64 %60, %45
  br i1 %61, label %62, label %47

62:                                               ; preds = %47, %44
  %63 = phi i32 [ poison, %44 ], [ %58, %47 ]
  %64 = phi i32 [ %42, %44 ], [ %58, %47 ]
  %65 = phi i64 [ %41, %44 ], [ %59, %47 ]
  %66 = phi ptr [ %40, %44 ], [ %52, %47 ]
  %67 = icmp ult i64 %41, 8
  br i1 %67, label %184, label %122

68:                                               ; preds = %31, %68
  %69 = phi i32 [ %119, %68 ], [ %32, %31 ]
  %70 = phi i64 [ %120, %68 ], [ %33, %31 ]
  %71 = phi ptr [ %117, %68 ], [ %34, %31 ]
  %72 = load i32, ptr %71, align 1
  %73 = mul i32 %72, -1028477379
  %74 = add i32 %73, %69
  %75 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %76 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 17)
  %77 = mul i32 %76, 668265263
  %78 = load i32, ptr %75, align 1
  %79 = mul i32 %78, -1028477379
  %80 = add i32 %79, %77
  %81 = getelementptr inbounds nuw i8, ptr %71, i64 8
  %82 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 17)
  %83 = mul i32 %82, 668265263
  %84 = load i32, ptr %81, align 1
  %85 = mul i32 %84, -1028477379
  %86 = add i32 %85, %83
  %87 = getelementptr inbounds nuw i8, ptr %71, i64 12
  %88 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 17)
  %89 = mul i32 %88, 668265263
  %90 = load i32, ptr %87, align 1
  %91 = mul i32 %90, -1028477379
  %92 = add i32 %91, %89
  %93 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %94 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 17)
  %95 = mul i32 %94, 668265263
  %96 = load i32, ptr %93, align 1
  %97 = mul i32 %96, -1028477379
  %98 = add i32 %97, %95
  %99 = getelementptr inbounds nuw i8, ptr %71, i64 20
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 17)
  %101 = mul i32 %100, 668265263
  %102 = load i32, ptr %99, align 1
  %103 = mul i32 %102, -1028477379
  %104 = add i32 %103, %101
  %105 = getelementptr inbounds nuw i8, ptr %71, i64 24
  %106 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 17)
  %107 = mul i32 %106, 668265263
  %108 = load i32, ptr %105, align 1
  %109 = mul i32 %108, -1028477379
  %110 = add i32 %109, %107
  %111 = getelementptr inbounds nuw i8, ptr %71, i64 28
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 17)
  %113 = mul i32 %112, 668265263
  %114 = load i32, ptr %111, align 1
  %115 = mul i32 %114, -1028477379
  %116 = add i32 %115, %113
  %117 = getelementptr inbounds nuw i8, ptr %71, i64 32
  %118 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 17)
  %119 = mul i32 %118, 668265263
  %120 = add nsw i64 %70, -32
  %121 = icmp ugt i64 %120, 3
  br i1 %121, label %68, label %39

122:                                              ; preds = %62, %122
  %123 = phi i32 [ %181, %122 ], [ %64, %62 ]
  %124 = phi i64 [ %182, %122 ], [ %65, %62 ]
  %125 = phi ptr [ %175, %122 ], [ %66, %62 ]
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %127 = load i8, ptr %125, align 1
  %128 = zext i8 %127 to i32
  %129 = mul i32 %128, 374761393
  %130 = add i32 %129, %123
  %131 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 11)
  %132 = mul i32 %131, -1640531535
  %133 = getelementptr inbounds nuw i8, ptr %125, i64 2
  %134 = load i8, ptr %126, align 1
  %135 = zext i8 %134 to i32
  %136 = mul i32 %135, 374761393
  %137 = add i32 %136, %132
  %138 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 11)
  %139 = mul i32 %138, -1640531535
  %140 = getelementptr inbounds nuw i8, ptr %125, i64 3
  %141 = load i8, ptr %133, align 1
  %142 = zext i8 %141 to i32
  %143 = mul i32 %142, 374761393
  %144 = add i32 %143, %139
  %145 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 11)
  %146 = mul i32 %145, -1640531535
  %147 = getelementptr inbounds nuw i8, ptr %125, i64 4
  %148 = load i8, ptr %140, align 1
  %149 = zext i8 %148 to i32
  %150 = mul i32 %149, 374761393
  %151 = add i32 %150, %146
  %152 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 11)
  %153 = mul i32 %152, -1640531535
  %154 = getelementptr inbounds nuw i8, ptr %125, i64 5
  %155 = load i8, ptr %147, align 1
  %156 = zext i8 %155 to i32
  %157 = mul i32 %156, 374761393
  %158 = add i32 %157, %153
  %159 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 11)
  %160 = mul i32 %159, -1640531535
  %161 = getelementptr inbounds nuw i8, ptr %125, i64 6
  %162 = load i8, ptr %154, align 1
  %163 = zext i8 %162 to i32
  %164 = mul i32 %163, 374761393
  %165 = add i32 %164, %160
  %166 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 11)
  %167 = mul i32 %166, -1640531535
  %168 = getelementptr inbounds nuw i8, ptr %125, i64 7
  %169 = load i8, ptr %161, align 1
  %170 = zext i8 %169 to i32
  %171 = mul i32 %170, 374761393
  %172 = add i32 %171, %167
  %173 = tail call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 11)
  %174 = mul i32 %173, -1640531535
  %175 = getelementptr inbounds nuw i8, ptr %125, i64 8
  %176 = load i8, ptr %168, align 1
  %177 = zext i8 %176 to i32
  %178 = mul i32 %177, 374761393
  %179 = add i32 %178, %174
  %180 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 11)
  %181 = mul i32 %180, -1640531535
  %182 = add nsw i64 %124, -8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %122

184:                                              ; preds = %62, %122, %39
  %185 = phi i32 [ %42, %39 ], [ %63, %62 ], [ %181, %122 ]
  %186 = lshr i32 %185, 15
  %187 = xor i32 %186, %185
  %188 = mul i32 %187, -2048144777
  %189 = lshr i32 %188, 13
  %190 = xor i32 %189, %188
  %191 = mul i32 %190, -1028477379
  %192 = lshr i32 %191, 16
  %193 = xor i32 %192, %191
  br label %194

194:                                              ; preds = %3, %184
  %195 = phi i32 [ %193, %184 ], [ 0, %3 ]
  ret i32 %195
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
