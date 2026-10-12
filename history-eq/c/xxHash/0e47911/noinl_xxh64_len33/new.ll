; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0e47911/noinl_xxh64_len33/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0e47911/noinl_xxh64_len33/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_oneshot(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = ptrtoint ptr %0 to i64
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %5 = add i64 %1, 6983438078262162902
  %6 = add i64 %1, -4417276706812531889
  %7 = add i64 %1, 7046029288634856825
  %8 = load i64, ptr %0, align 1
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %5, %9
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = mul i64 %14, -4417276706812531889
  %16 = add i64 %6, %15
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i64, ptr %19, align 1
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %21, %1
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i64, ptr %25, align 1
  %27 = mul i64 %26, -4417276706812531889
  %28 = add i64 %7, %27
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = getelementptr i8, ptr %0, i64 32
  %32 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 1)
  %33 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 7)
  %34 = add i64 %33, %32
  %35 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 12)
  %36 = add i64 %34, %35
  %37 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 18)
  %38 = add i64 %36, %37
  %39 = mul i64 %11, -2381459717836149591
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = xor i64 %38, %41
  %43 = mul i64 %42, -7046029288634856825
  %44 = add i64 %43, -8796714831421723037
  %45 = mul i64 %17, -2381459717836149591
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  %48 = xor i64 %44, %47
  %49 = mul i64 %48, -7046029288634856825
  %50 = add i64 %49, -8796714831421723037
  %51 = mul i64 %23, -2381459717836149591
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 31)
  %53 = mul i64 %52, -7046029288634856825
  %54 = xor i64 %50, %53
  %55 = mul i64 %54, -7046029288634856825
  %56 = add i64 %55, -8796714831421723037
  %57 = mul i64 %29, -2381459717836149591
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  %60 = xor i64 %56, %59
  %61 = mul i64 %60, -7046029288634856825
  %62 = add i64 %61, -8796714831421723004
  %63 = getelementptr i8, ptr %0, i64 40
  %64 = icmp ugt ptr %63, %4
  br i1 %64, label %79, label %65

65:                                               ; preds = %2, %65
  %66 = phi ptr [ %77, %65 ], [ %63, %2 ]
  %67 = phi ptr [ %66, %65 ], [ %31, %2 ]
  %68 = phi i64 [ %76, %65 ], [ %62, %2 ]
  %69 = load i64, ptr %67, align 1
  %70 = mul i64 %69, -4417276706812531889
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %72, %68
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 27)
  %75 = mul i64 %74, -7046029288634856825
  %76 = add i64 %75, -8796714831421723037
  %77 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %78 = icmp ugt ptr %77, %4
  br i1 %78, label %79, label %65

79:                                               ; preds = %65, %2
  %80 = phi i64 [ %62, %2 ], [ %76, %65 ]
  %81 = phi ptr [ %31, %2 ], [ %66, %65 ]
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 4
  %83 = icmp ugt ptr %82, %4
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load i32, ptr %81, align 1
  %86 = zext i32 %85 to i64
  %87 = mul i64 %86, -7046029288634856825
  %88 = xor i64 %87, %80
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 23)
  %90 = mul i64 %89, -4417276706812531889
  %91 = add i64 %90, 1609587929392839161
  br label %92

92:                                               ; preds = %84, %79
  %93 = phi i64 [ %91, %84 ], [ %80, %79 ]
  %94 = phi ptr [ %82, %84 ], [ %81, %79 ]
  %95 = icmp ult ptr %94, %4
  br i1 %95, label %96, label %183

96:                                               ; preds = %92
  %97 = ptrtoint ptr %94 to i64
  %98 = add i64 %3, 33
  %99 = sub i64 %98, %97
  %100 = getelementptr i8, ptr %94, i64 %99
  %101 = add i64 %3, 32
  %102 = sub i64 %101, %97
  %103 = and i64 %99, 7
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %96, %105
  %106 = phi ptr [ %115, %105 ], [ %94, %96 ]
  %107 = phi i64 [ %114, %105 ], [ %93, %96 ]
  %108 = phi i64 [ %116, %105 ], [ 0, %96 ]
  %109 = load i8, ptr %106, align 1
  %110 = zext i8 %109 to i64
  %111 = mul i64 %110, 2870177450012600261
  %112 = xor i64 %111, %107
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 11)
  %114 = mul i64 %113, -7046029288634856825
  %115 = getelementptr inbounds nuw i8, ptr %106, i64 1
  %116 = add i64 %108, 1
  %117 = icmp eq i64 %116, %103
  br i1 %117, label %118, label %105

118:                                              ; preds = %105, %96
  %119 = phi i64 [ poison, %96 ], [ %114, %105 ]
  %120 = phi ptr [ %94, %96 ], [ %115, %105 ]
  %121 = phi i64 [ %93, %96 ], [ %114, %105 ]
  %122 = icmp ult i64 %102, 7
  br i1 %122, label %183, label %123

123:                                              ; preds = %118, %123
  %124 = phi ptr [ %181, %123 ], [ %120, %118 ]
  %125 = phi i64 [ %180, %123 ], [ %121, %118 ]
  %126 = load i8, ptr %124, align 1
  %127 = zext i8 %126 to i64
  %128 = mul i64 %127, 2870177450012600261
  %129 = xor i64 %128, %125
  %130 = tail call i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 11)
  %131 = mul i64 %130, -7046029288634856825
  %132 = getelementptr inbounds nuw i8, ptr %124, i64 1
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i64
  %135 = mul i64 %134, 2870177450012600261
  %136 = xor i64 %135, %131
  %137 = tail call i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 11)
  %138 = mul i64 %137, -7046029288634856825
  %139 = getelementptr inbounds nuw i8, ptr %124, i64 2
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i64
  %142 = mul i64 %141, 2870177450012600261
  %143 = xor i64 %142, %138
  %144 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 11)
  %145 = mul i64 %144, -7046029288634856825
  %146 = getelementptr inbounds nuw i8, ptr %124, i64 3
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i64
  %149 = mul i64 %148, 2870177450012600261
  %150 = xor i64 %149, %145
  %151 = tail call i64 @llvm.fshl.i64(i64 %150, i64 %150, i64 11)
  %152 = mul i64 %151, -7046029288634856825
  %153 = getelementptr inbounds nuw i8, ptr %124, i64 4
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i64
  %156 = mul i64 %155, 2870177450012600261
  %157 = xor i64 %156, %152
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 11)
  %159 = mul i64 %158, -7046029288634856825
  %160 = getelementptr inbounds nuw i8, ptr %124, i64 5
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i64
  %163 = mul i64 %162, 2870177450012600261
  %164 = xor i64 %163, %159
  %165 = tail call i64 @llvm.fshl.i64(i64 %164, i64 %164, i64 11)
  %166 = mul i64 %165, -7046029288634856825
  %167 = getelementptr inbounds nuw i8, ptr %124, i64 6
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i64
  %170 = mul i64 %169, 2870177450012600261
  %171 = xor i64 %170, %166
  %172 = tail call i64 @llvm.fshl.i64(i64 %171, i64 %171, i64 11)
  %173 = mul i64 %172, -7046029288634856825
  %174 = getelementptr inbounds nuw i8, ptr %124, i64 7
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i64
  %177 = mul i64 %176, 2870177450012600261
  %178 = xor i64 %177, %173
  %179 = tail call i64 @llvm.fshl.i64(i64 %178, i64 %178, i64 11)
  %180 = mul i64 %179, -7046029288634856825
  %181 = getelementptr inbounds nuw i8, ptr %124, i64 8
  %182 = icmp eq ptr %181, %100
  br i1 %182, label %183, label %123

183:                                              ; preds = %118, %123, %92
  %184 = phi i64 [ %93, %92 ], [ %119, %118 ], [ %180, %123 ]
  %185 = lshr i64 %184, 33
  %186 = xor i64 %185, %184
  %187 = mul i64 %186, -4417276706812531889
  %188 = lshr i64 %187, 29
  %189 = xor i64 %188, %187
  %190 = mul i64 %189, 1609587929392839161
  %191 = lshr i64 %190, 32
  %192 = xor i64 %191, %190
  ret i64 %192
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !6}
