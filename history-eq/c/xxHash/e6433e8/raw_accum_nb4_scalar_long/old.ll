; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e6433e8/raw_accum_nb4_scalar_long/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e6433e8/raw_accum_nb4_scalar_long/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @target_accum(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %3, 4
  br i1 %5, label %197, label %6

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %188, label %23

23:                                               ; preds = %6, %23
  %24 = phi i64 [ %185, %23 ], [ %21, %6 ]
  %25 = phi i64 [ %166, %23 ], [ %19, %6 ]
  %26 = phi i64 [ %147, %23 ], [ %17, %6 ]
  %27 = phi i64 [ %128, %23 ], [ %15, %6 ]
  %28 = phi i64 [ %90, %23 ], [ %11, %6 ]
  %29 = phi i64 [ %71, %23 ], [ %9, %6 ]
  %30 = phi i64 [ %52, %23 ], [ %7, %6 ]
  %31 = phi i64 [ %109, %23 ], [ %13, %6 ]
  %32 = phi i64 [ %186, %23 ], [ 0, %6 ]
  %33 = phi ptr [ %57, %23 ], [ %2, %6 ]
  %34 = shl nuw nsw i64 %32, 6
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 %34
  %36 = load i32, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %38 = load i32, ptr %37, align 1
  %39 = load i32, ptr %33, align 4
  %40 = add i32 %39, %36
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 4
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %38
  %45 = zext i32 %44 to i64
  %46 = mul nuw i64 %45, %41
  %47 = zext i32 %36 to i64
  %48 = zext i32 %38 to i64
  %49 = shl nuw i64 %48, 32
  %50 = or disjoint i64 %49, %47
  %51 = add i64 %50, %30
  %52 = add i64 %51, %46
  %53 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %54 = load i32, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %35, i64 12
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, %54
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds nuw i8, ptr %33, i64 12
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %56
  %64 = zext i32 %63 to i64
  %65 = mul nuw i64 %64, %60
  %66 = zext i32 %54 to i64
  %67 = zext i32 %56 to i64
  %68 = shl nuw i64 %67, 32
  %69 = or disjoint i64 %68, %66
  %70 = add i64 %69, %29
  %71 = add i64 %70, %65
  %72 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %73 = load i32, ptr %72, align 1
  %74 = getelementptr inbounds nuw i8, ptr %35, i64 20
  %75 = load i32, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %73
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw i8, ptr %33, i64 20
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %75
  %83 = zext i32 %82 to i64
  %84 = mul nuw i64 %83, %79
  %85 = zext i32 %73 to i64
  %86 = zext i32 %75 to i64
  %87 = shl nuw i64 %86, 32
  %88 = or disjoint i64 %87, %85
  %89 = add i64 %88, %28
  %90 = add i64 %89, %84
  %91 = getelementptr inbounds nuw i8, ptr %35, i64 24
  %92 = load i32, ptr %91, align 1
  %93 = getelementptr inbounds nuw i8, ptr %35, i64 28
  %94 = load i32, ptr %93, align 1
  %95 = getelementptr inbounds nuw i8, ptr %33, i64 24
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, %92
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds nuw i8, ptr %33, i64 28
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %94
  %102 = zext i32 %101 to i64
  %103 = mul nuw i64 %102, %98
  %104 = zext i32 %92 to i64
  %105 = zext i32 %94 to i64
  %106 = shl nuw i64 %105, 32
  %107 = or disjoint i64 %106, %104
  %108 = add i64 %107, %31
  %109 = add i64 %108, %103
  %110 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %111 = load i32, ptr %110, align 1
  %112 = getelementptr inbounds nuw i8, ptr %35, i64 36
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %33, i64 32
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, %111
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds nuw i8, ptr %33, i64 36
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, %113
  %121 = zext i32 %120 to i64
  %122 = mul nuw i64 %121, %117
  %123 = zext i32 %111 to i64
  %124 = zext i32 %113 to i64
  %125 = shl nuw i64 %124, 32
  %126 = or disjoint i64 %125, %123
  %127 = add i64 %126, %27
  %128 = add i64 %127, %122
  %129 = getelementptr inbounds nuw i8, ptr %35, i64 40
  %130 = load i32, ptr %129, align 1
  %131 = getelementptr inbounds nuw i8, ptr %35, i64 44
  %132 = load i32, ptr %131, align 1
  %133 = getelementptr inbounds nuw i8, ptr %33, i64 40
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, %130
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds nuw i8, ptr %33, i64 44
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, %132
  %140 = zext i32 %139 to i64
  %141 = mul nuw i64 %140, %136
  %142 = zext i32 %130 to i64
  %143 = zext i32 %132 to i64
  %144 = shl nuw i64 %143, 32
  %145 = or disjoint i64 %144, %142
  %146 = add i64 %145, %26
  %147 = add i64 %146, %141
  %148 = getelementptr inbounds nuw i8, ptr %35, i64 48
  %149 = load i32, ptr %148, align 1
  %150 = getelementptr inbounds nuw i8, ptr %35, i64 52
  %151 = load i32, ptr %150, align 1
  %152 = getelementptr inbounds nuw i8, ptr %33, i64 48
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, %149
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds nuw i8, ptr %33, i64 52
  %157 = load i32, ptr %156, align 4
  %158 = add i32 %157, %151
  %159 = zext i32 %158 to i64
  %160 = mul nuw i64 %159, %155
  %161 = zext i32 %149 to i64
  %162 = zext i32 %151 to i64
  %163 = shl nuw i64 %162, 32
  %164 = or disjoint i64 %163, %161
  %165 = add i64 %164, %25
  %166 = add i64 %165, %160
  %167 = getelementptr inbounds nuw i8, ptr %35, i64 56
  %168 = load i32, ptr %167, align 1
  %169 = getelementptr inbounds nuw i8, ptr %35, i64 60
  %170 = load i32, ptr %169, align 1
  %171 = getelementptr inbounds nuw i8, ptr %33, i64 56
  %172 = load i32, ptr %171, align 4
  %173 = add i32 %172, %168
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds nuw i8, ptr %33, i64 60
  %176 = load i32, ptr %175, align 4
  %177 = add i32 %176, %170
  %178 = zext i32 %177 to i64
  %179 = mul nuw i64 %178, %174
  %180 = zext i32 %168 to i64
  %181 = zext i32 %170 to i64
  %182 = shl nuw i64 %181, 32
  %183 = or disjoint i64 %182, %180
  %184 = add i64 %183, %24
  %185 = add i64 %184, %179
  %186 = add nuw nsw i64 %32, 1
  %187 = icmp eq i64 %186, %3
  br i1 %187, label %188, label %23

188:                                              ; preds = %23, %6
  %189 = phi i64 [ %21, %6 ], [ %185, %23 ]
  %190 = phi i64 [ %19, %6 ], [ %166, %23 ]
  %191 = phi i64 [ %17, %6 ], [ %147, %23 ]
  %192 = phi i64 [ %15, %6 ], [ %128, %23 ]
  %193 = phi i64 [ %13, %6 ], [ %109, %23 ]
  %194 = phi i64 [ %11, %6 ], [ %90, %23 ]
  %195 = phi i64 [ %9, %6 ], [ %71, %23 ]
  %196 = phi i64 [ %7, %6 ], [ %52, %23 ]
  store i64 %196, ptr %0, align 8
  store i64 %195, ptr %8, align 8
  store i64 %194, ptr %10, align 8
  store i64 %193, ptr %12, align 8
  store i64 %192, ptr %14, align 8
  store i64 %191, ptr %16, align 8
  store i64 %190, ptr %18, align 8
  store i64 %189, ptr %20, align 8
  br label %197

197:                                              ; preds = %4, %188
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
