; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrapv_lt16_sym.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrapv_lt16_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
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
  br i1 %19, label %209, label %20

20:                                               ; preds = %10
  %21 = add i32 %9, 374761393
  %22 = trunc nuw nsw i64 %8 to i32
  %23 = add i32 %21, %22
  %24 = icmp samesign ugt i64 %8, 3
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = add nsw i64 %8, -4
  %27 = lshr i64 %26, 2
  %28 = add nuw nsw i64 %27, 1
  %29 = and i64 %28, 7
  %30 = and i64 %26, 28
  %31 = icmp eq i64 %30, 28
  br i1 %31, label %46, label %32

32:                                               ; preds = %25, %32
  %33 = phi i32 [ %42, %32 ], [ %23, %25 ]
  %34 = phi i64 [ %43, %32 ], [ %8, %25 ]
  %35 = phi ptr [ %40, %32 ], [ %11, %25 ]
  %36 = phi i64 [ %44, %32 ], [ 0, %25 ]
  %37 = load i32, ptr %35, align 1
  %38 = mul i32 %37, -1028477379
  %39 = add i32 %38, %33
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %41 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 17)
  %42 = mul i32 %41, 668265263
  %43 = add nsw i64 %34, -4
  %44 = add i64 %36, 1
  %45 = icmp eq i64 %44, %29
  br i1 %45, label %46, label %32

46:                                               ; preds = %32, %25
  %47 = phi i32 [ %23, %25 ], [ %42, %32 ]
  %48 = phi i64 [ %8, %25 ], [ %43, %32 ]
  %49 = phi ptr [ %11, %25 ], [ %40, %32 ]
  %50 = phi ptr [ poison, %25 ], [ %40, %32 ]
  %51 = phi i32 [ poison, %25 ], [ %42, %32 ]
  %52 = phi i64 [ poison, %25 ], [ %43, %32 ]
  %53 = icmp ult i64 %26, 28
  br i1 %53, label %54, label %83

54:                                               ; preds = %46, %83, %20
  %55 = phi ptr [ %11, %20 ], [ %50, %46 ], [ %132, %83 ]
  %56 = phi i64 [ %8, %20 ], [ %52, %46 ], [ %135, %83 ]
  %57 = phi i32 [ %23, %20 ], [ %51, %46 ], [ %134, %83 ]
  %58 = icmp eq i64 %56, 0
  br i1 %58, label %199, label %59

59:                                               ; preds = %54
  %60 = and i64 %56, 7
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %59, %62
  %63 = phi i32 [ %73, %62 ], [ %57, %59 ]
  %64 = phi i64 [ %74, %62 ], [ %56, %59 ]
  %65 = phi ptr [ %67, %62 ], [ %55, %59 ]
  %66 = phi i64 [ %75, %62 ], [ 0, %59 ]
  %67 = getelementptr inbounds nuw i8, ptr %65, i64 1
  %68 = load i8, ptr %65, align 1
  %69 = zext i8 %68 to i32
  %70 = mul i32 %69, 374761393
  %71 = add i32 %70, %63
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 11)
  %73 = mul i32 %72, -1640531535
  %74 = add nsw i64 %64, -1
  %75 = add i64 %66, 1
  %76 = icmp eq i64 %75, %60
  br i1 %76, label %77, label %62

77:                                               ; preds = %62, %59
  %78 = phi i32 [ poison, %59 ], [ %73, %62 ]
  %79 = phi i32 [ %57, %59 ], [ %73, %62 ]
  %80 = phi i64 [ %56, %59 ], [ %74, %62 ]
  %81 = phi ptr [ %55, %59 ], [ %67, %62 ]
  %82 = icmp ult i64 %56, 8
  br i1 %82, label %199, label %137

83:                                               ; preds = %46, %83
  %84 = phi i32 [ %134, %83 ], [ %47, %46 ]
  %85 = phi i64 [ %135, %83 ], [ %48, %46 ]
  %86 = phi ptr [ %132, %83 ], [ %49, %46 ]
  %87 = load i32, ptr %86, align 1
  %88 = mul i32 %87, -1028477379
  %89 = add i32 %88, %84
  %90 = getelementptr inbounds nuw i8, ptr %86, i64 4
  %91 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 17)
  %92 = mul i32 %91, 668265263
  %93 = load i32, ptr %90, align 1
  %94 = mul i32 %93, -1028477379
  %95 = add i32 %94, %92
  %96 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %97 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 17)
  %98 = mul i32 %97, 668265263
  %99 = load i32, ptr %96, align 1
  %100 = mul i32 %99, -1028477379
  %101 = add i32 %100, %98
  %102 = getelementptr inbounds nuw i8, ptr %86, i64 12
  %103 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 17)
  %104 = mul i32 %103, 668265263
  %105 = load i32, ptr %102, align 1
  %106 = mul i32 %105, -1028477379
  %107 = add i32 %106, %104
  %108 = getelementptr inbounds nuw i8, ptr %86, i64 16
  %109 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 17)
  %110 = mul i32 %109, 668265263
  %111 = load i32, ptr %108, align 1
  %112 = mul i32 %111, -1028477379
  %113 = add i32 %112, %110
  %114 = getelementptr inbounds nuw i8, ptr %86, i64 20
  %115 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 17)
  %116 = mul i32 %115, 668265263
  %117 = load i32, ptr %114, align 1
  %118 = mul i32 %117, -1028477379
  %119 = add i32 %118, %116
  %120 = getelementptr inbounds nuw i8, ptr %86, i64 24
  %121 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 17)
  %122 = mul i32 %121, 668265263
  %123 = load i32, ptr %120, align 1
  %124 = mul i32 %123, -1028477379
  %125 = add i32 %124, %122
  %126 = getelementptr inbounds nuw i8, ptr %86, i64 28
  %127 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 17)
  %128 = mul i32 %127, 668265263
  %129 = load i32, ptr %126, align 1
  %130 = mul i32 %129, -1028477379
  %131 = add i32 %130, %128
  %132 = getelementptr inbounds nuw i8, ptr %86, i64 32
  %133 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 17)
  %134 = mul i32 %133, 668265263
  %135 = add nsw i64 %85, -32
  %136 = icmp ugt i64 %135, 3
  br i1 %136, label %83, label %54

137:                                              ; preds = %77, %137
  %138 = phi i32 [ %196, %137 ], [ %79, %77 ]
  %139 = phi i64 [ %197, %137 ], [ %80, %77 ]
  %140 = phi ptr [ %190, %137 ], [ %81, %77 ]
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 1
  %142 = load i8, ptr %140, align 1
  %143 = zext i8 %142 to i32
  %144 = mul i32 %143, 374761393
  %145 = add i32 %144, %138
  %146 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 11)
  %147 = mul i32 %146, -1640531535
  %148 = getelementptr inbounds nuw i8, ptr %140, i64 2
  %149 = load i8, ptr %141, align 1
  %150 = zext i8 %149 to i32
  %151 = mul i32 %150, 374761393
  %152 = add i32 %151, %147
  %153 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 11)
  %154 = mul i32 %153, -1640531535
  %155 = getelementptr inbounds nuw i8, ptr %140, i64 3
  %156 = load i8, ptr %148, align 1
  %157 = zext i8 %156 to i32
  %158 = mul i32 %157, 374761393
  %159 = add i32 %158, %154
  %160 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 11)
  %161 = mul i32 %160, -1640531535
  %162 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %163 = load i8, ptr %155, align 1
  %164 = zext i8 %163 to i32
  %165 = mul i32 %164, 374761393
  %166 = add i32 %165, %161
  %167 = tail call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 11)
  %168 = mul i32 %167, -1640531535
  %169 = getelementptr inbounds nuw i8, ptr %140, i64 5
  %170 = load i8, ptr %162, align 1
  %171 = zext i8 %170 to i32
  %172 = mul i32 %171, 374761393
  %173 = add i32 %172, %168
  %174 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 11)
  %175 = mul i32 %174, -1640531535
  %176 = getelementptr inbounds nuw i8, ptr %140, i64 6
  %177 = load i8, ptr %169, align 1
  %178 = zext i8 %177 to i32
  %179 = mul i32 %178, 374761393
  %180 = add i32 %179, %175
  %181 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 11)
  %182 = mul i32 %181, -1640531535
  %183 = getelementptr inbounds nuw i8, ptr %140, i64 7
  %184 = load i8, ptr %176, align 1
  %185 = zext i8 %184 to i32
  %186 = mul i32 %185, 374761393
  %187 = add i32 %186, %182
  %188 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 11)
  %189 = mul i32 %188, -1640531535
  %190 = getelementptr inbounds nuw i8, ptr %140, i64 8
  %191 = load i8, ptr %183, align 1
  %192 = zext i8 %191 to i32
  %193 = mul i32 %192, 374761393
  %194 = add i32 %193, %189
  %195 = tail call i32 @llvm.fshl.i32(i32 %194, i32 %194, i32 11)
  %196 = mul i32 %195, -1640531535
  %197 = add nsw i64 %139, -8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %137

199:                                              ; preds = %77, %137, %54
  %200 = phi i32 [ %57, %54 ], [ %78, %77 ], [ %196, %137 ]
  %201 = lshr i32 %200, 15
  %202 = xor i32 %201, %200
  %203 = mul i32 %202, -2048144777
  %204 = lshr i32 %203, 13
  %205 = xor i32 %204, %203
  %206 = mul i32 %205, -1028477379
  %207 = lshr i32 %206, 16
  %208 = xor i32 %207, %206
  br label %209

209:                                              ; preds = %10, %199
  %210 = phi i32 [ %208, %199 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #3
  ret i32 %210
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
