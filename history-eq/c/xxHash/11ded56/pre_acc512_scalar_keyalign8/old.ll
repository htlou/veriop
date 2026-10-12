; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/pre_acc512_scalar_keyalign8/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/pre_acc512_scalar_keyalign8/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_acc512(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %2 to i64
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %173

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %22 = load i64, ptr %21, align 8
  %23 = load i32, ptr %1, align 1
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %25 = load i32, ptr %24, align 1
  %26 = load i32, ptr %2, align 4
  %27 = xor i32 %26, %23
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, %25
  %32 = zext i32 %31 to i64
  %33 = mul nuw i64 %32, %28
  %34 = zext i32 %23 to i64
  %35 = zext i32 %25 to i64
  %36 = shl nuw i64 %35, 32
  %37 = or disjoint i64 %36, %34
  %38 = add i64 %37, %8
  %39 = add i64 %38, %33
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %41 = load i32, ptr %40, align 1
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %43 = load i32, ptr %42, align 1
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, %41
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %49, %43
  %51 = zext i32 %50 to i64
  %52 = mul nuw i64 %51, %47
  %53 = zext i32 %41 to i64
  %54 = zext i32 %43 to i64
  %55 = shl nuw i64 %54, 32
  %56 = or disjoint i64 %55, %53
  %57 = add i64 %56, %10
  %58 = add i64 %57, %52
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %60 = load i32, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %62 = load i32, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, %60
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %68 = load i32, ptr %67, align 4
  %69 = xor i32 %68, %62
  %70 = zext i32 %69 to i64
  %71 = mul nuw i64 %70, %66
  %72 = zext i32 %60 to i64
  %73 = zext i32 %62 to i64
  %74 = shl nuw i64 %73, 32
  %75 = or disjoint i64 %74, %72
  %76 = add i64 %75, %12
  %77 = add i64 %76, %71
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %79 = load i32, ptr %78, align 1
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %81 = load i32, ptr %80, align 1
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %83 = load i32, ptr %82, align 4
  %84 = xor i32 %83, %79
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %87 = load i32, ptr %86, align 4
  %88 = xor i32 %87, %81
  %89 = zext i32 %88 to i64
  %90 = mul nuw i64 %89, %85
  %91 = zext i32 %79 to i64
  %92 = zext i32 %81 to i64
  %93 = shl nuw i64 %92, 32
  %94 = or disjoint i64 %93, %91
  %95 = add i64 %94, %14
  %96 = add i64 %95, %90
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %98 = load i32, ptr %97, align 1
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %100 = load i32, ptr %99, align 1
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %102 = load i32, ptr %101, align 4
  %103 = xor i32 %102, %98
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 36
  %106 = load i32, ptr %105, align 4
  %107 = xor i32 %106, %100
  %108 = zext i32 %107 to i64
  %109 = mul nuw i64 %108, %104
  %110 = zext i32 %98 to i64
  %111 = zext i32 %100 to i64
  %112 = shl nuw i64 %111, 32
  %113 = or disjoint i64 %112, %110
  %114 = add i64 %113, %16
  %115 = add i64 %114, %109
  %116 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %117 = load i32, ptr %116, align 1
  %118 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %119 = load i32, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %121 = load i32, ptr %120, align 4
  %122 = xor i32 %121, %117
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 44
  %125 = load i32, ptr %124, align 4
  %126 = xor i32 %125, %119
  %127 = zext i32 %126 to i64
  %128 = mul nuw i64 %127, %123
  %129 = zext i32 %117 to i64
  %130 = zext i32 %119 to i64
  %131 = shl nuw i64 %130, 32
  %132 = or disjoint i64 %131, %129
  %133 = add i64 %132, %18
  %134 = add i64 %133, %128
  %135 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %136 = load i32, ptr %135, align 1
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %138 = load i32, ptr %137, align 1
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %140 = load i32, ptr %139, align 4
  %141 = xor i32 %140, %136
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds nuw i8, ptr %2, i64 52
  %144 = load i32, ptr %143, align 4
  %145 = xor i32 %144, %138
  %146 = zext i32 %145 to i64
  %147 = mul nuw i64 %146, %142
  %148 = zext i32 %136 to i64
  %149 = zext i32 %138 to i64
  %150 = shl nuw i64 %149, 32
  %151 = or disjoint i64 %150, %148
  %152 = add i64 %151, %20
  %153 = add i64 %152, %147
  %154 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %155 = load i32, ptr %154, align 1
  %156 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %157 = load i32, ptr %156, align 1
  %158 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %159 = load i32, ptr %158, align 4
  %160 = xor i32 %159, %155
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds nuw i8, ptr %2, i64 60
  %163 = load i32, ptr %162, align 4
  %164 = xor i32 %163, %157
  %165 = zext i32 %164 to i64
  %166 = mul nuw i64 %165, %161
  %167 = zext i32 %155 to i64
  %168 = zext i32 %157 to i64
  %169 = shl nuw i64 %168, 32
  %170 = or disjoint i64 %169, %167
  %171 = add i64 %170, %22
  %172 = add i64 %171, %166
  store i64 %39, ptr %0, align 8
  store i64 %58, ptr %9, align 8
  store i64 %77, ptr %11, align 8
  store i64 %96, ptr %13, align 8
  store i64 %115, ptr %15, align 8
  store i64 %134, ptr %17, align 8
  store i64 %153, ptr %19, align 8
  store i64 %172, ptr %21, align 8
  br label %173

173:                                              ; preds = %3, %7
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
