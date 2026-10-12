; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/70d2a45/wrap_u64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/70d2a45/wrap_u64.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.33.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_bf(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %73, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %7 = icmp samesign ult i64 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i64 62, %5
  br label %61

10:                                               ; preds = %4
  %11 = xor i64 %5, 63
  %12 = shl nuw i64 1, %11
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = shl i64 %1, %5
  %16 = shl i64 %12, %5
  %17 = lshr i64 %15, 32
  %18 = udiv i64 %16, %17
  %19 = urem i64 %16, %17
  %20 = and i64 %15, 4294967295
  %21 = mul i64 %18, %20
  %22 = shl nuw i64 %19, 32
  %23 = icmp ugt i64 %21, %22
  %24 = sub nuw i64 %21, %22
  %25 = icmp ugt i64 %24, %15
  %26 = select i1 %25, i64 4294967294, i64 4294967295
  %27 = select i1 %23, i64 %26, i64 0
  %28 = add i64 %27, %18
  %29 = shl i64 %16, 32
  %30 = and i64 %28, 4294967295
  %31 = mul i64 %30, %15
  %32 = sub i64 %29, %31
  %33 = udiv i64 %32, %17
  %34 = urem i64 %32, %17
  %35 = mul i64 %33, %20
  %36 = shl nuw i64 %34, 32
  %37 = icmp ugt i64 %35, %36
  %38 = sub nuw i64 %35, %36
  %39 = icmp ugt i64 %38, %15
  %40 = select i1 %39, i64 4294967294, i64 4294967295
  %41 = select i1 %37, i64 %40, i64 0
  %42 = add i64 %41, %33
  %43 = shl i64 %32, 32
  %44 = and i64 %42, 4294967295
  %45 = mul i64 %44, %15
  %46 = sub i64 %43, %45
  %47 = lshr i64 %46, %5
  %48 = shl i64 %28, 33
  %49 = shl nuw nsw i64 %44, 1
  %50 = or disjoint i64 %49, %48
  %51 = or disjoint i64 %50, 1
  br label %52

52:                                               ; preds = %14, %10
  %53 = phi i64 [ %47, %14 ], [ -1, %10 ]
  %54 = phi i64 [ %51, %14 ], [ -1, %10 ]
  %55 = shl i64 %53, 1
  %56 = icmp uge i64 %55, %1
  %57 = icmp slt i64 %53, 0
  %58 = or i1 %57, %56
  %59 = zext i1 %58 to i64
  %60 = add i64 %54, %59
  br label %61

61:                                               ; preds = %8, %52
  %62 = phi i64 [ 0, %8 ], [ %60, %52 ]
  %63 = phi i64 [ %9, %8 ], [ %11, %52 ]
  %64 = zext i64 %62 to i128
  %65 = zext i64 %0 to i128
  %66 = mul nuw i128 %64, %65
  %67 = lshr i128 %66, 64
  %68 = trunc nuw i128 %67 to i64
  %69 = sub i64 %0, %68
  %70 = lshr i64 %69, 1
  %71 = add i64 %70, %68
  %72 = lshr i64 %71, %63
  br label %73

73:                                               ; preds = %2, %61
  %74 = phi i64 [ %72, %61 ], [ 0, %2 ]
  ret i64 %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_recover(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %194, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = trunc nuw nsw i32 %6 to i8
  br label %74

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %0
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = shl i64 %0, %4
  %17 = shl i64 %13, %4
  %18 = lshr i64 %16, 32
  %19 = udiv i64 %17, %18
  %20 = urem i64 %17, %18
  %21 = and i64 %16, 4294967295
  %22 = mul i64 %19, %21
  %23 = shl nuw i64 %20, 32
  %24 = icmp ugt i64 %22, %23
  %25 = sub nuw i64 %22, %23
  %26 = icmp ugt i64 %25, %16
  %27 = select i1 %26, i64 4294967294, i64 4294967295
  %28 = select i1 %24, i64 %27, i64 0
  %29 = add i64 %28, %19
  %30 = shl i64 %17, 32
  %31 = and i64 %29, 4294967295
  %32 = mul i64 %31, %16
  %33 = sub i64 %30, %32
  %34 = udiv i64 %33, %18
  %35 = urem i64 %33, %18
  %36 = mul i64 %34, %21
  %37 = shl nuw i64 %35, 32
  %38 = icmp ugt i64 %36, %37
  %39 = sub nuw i64 %36, %37
  %40 = icmp ugt i64 %39, %16
  %41 = select i1 %40, i64 4294967294, i64 4294967295
  %42 = select i1 %38, i64 %41, i64 0
  %43 = add i64 %42, %34
  %44 = shl i64 %33, 32
  %45 = and i64 %43, 4294967295
  %46 = mul i64 %45, %16
  %47 = sub i64 %44, %46
  %48 = lshr i64 %47, %4
  %49 = shl nuw i64 %31, 32
  %50 = or disjoint i64 %45, %49
  br label %51

51:                                               ; preds = %15, %11
  %52 = phi i64 [ %48, %15 ], [ -1, %11 ]
  %53 = phi i64 [ %50, %15 ], [ -1, %11 ]
  %54 = sub i64 %0, %52
  %55 = icmp ult i64 %54, %13
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = trunc nuw nsw i32 %6 to i8
  br label %68

58:                                               ; preds = %51
  %59 = shl i64 %53, 1
  %60 = shl i64 %52, 1
  %61 = icmp uge i64 %60, %0
  %62 = icmp slt i64 %52, 0
  %63 = or i1 %62, %61
  %64 = zext i1 %63 to i64
  %65 = or disjoint i64 %59, %64
  %66 = trunc nuw nsw i32 %6 to i8
  %67 = or disjoint i8 %66, 64
  br label %68

68:                                               ; preds = %56, %58
  %69 = phi i8 [ %67, %58 ], [ %57, %56 ]
  %70 = phi i64 [ %65, %58 ], [ %53, %56 ]
  %71 = add i64 %70, 1
  %72 = and i8 %69, 63
  %73 = icmp eq i64 %71, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %9, %68
  %75 = phi i8 [ %10, %9 ], [ %72, %68 ]
  %76 = zext nneg i8 %75 to i64
  %77 = shl nuw i64 1, %76
  br label %194

78:                                               ; preds = %68
  %79 = and i8 %69, 64
  %80 = icmp eq i8 %79, 0
  %81 = zext nneg i8 %72 to i64
  %82 = shl nuw i64 1, %81
  br i1 %80, label %83, label %119

83:                                               ; preds = %78
  %84 = icmp ult i64 %82, %71
  br i1 %84, label %85, label %194

85:                                               ; preds = %83
  %86 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %71, i1 true)
  %87 = shl i64 %71, %86
  %88 = shl i64 %82, %86
  %89 = lshr i64 %87, 32
  %90 = udiv i64 %88, %89
  %91 = urem i64 %88, %89
  %92 = and i64 %87, 4294967295
  %93 = mul i64 %90, %92
  %94 = shl nuw i64 %91, 32
  %95 = icmp ugt i64 %93, %94
  %96 = sub nuw i64 %93, %94
  %97 = icmp ugt i64 %96, %87
  %98 = select i1 %97, i64 4294967294, i64 4294967295
  %99 = select i1 %95, i64 %98, i64 0
  %100 = add i64 %99, %90
  %101 = shl i64 %88, 32
  %102 = and i64 %100, 4294967295
  %103 = mul i64 %102, %87
  %104 = sub i64 %101, %103
  %105 = udiv i64 %104, %89
  %106 = urem i64 %104, %89
  %107 = mul i64 %105, %92
  %108 = shl nuw i64 %106, 32
  %109 = icmp ugt i64 %107, %108
  %110 = sub nuw i64 %107, %108
  %111 = icmp ugt i64 %110, %87
  %112 = select i1 %111, i64 4294967294, i64 4294967295
  %113 = select i1 %109, i64 %112, i64 0
  %114 = add i64 %113, %105
  %115 = and i64 %114, 4294967295
  %116 = shl nuw i64 %102, 32
  %117 = or disjoint i64 %116, 1
  %118 = add i64 %117, %115
  br label %194

119:                                              ; preds = %78
  %120 = lshr i64 %71, 1
  %121 = or disjoint i64 %120, -9223372036854775808
  %122 = lshr i64 %82, 1
  %123 = icmp eq i8 %72, 0
  %124 = select i1 %123, i64 2147483648, i64 0
  %125 = lshr i64 %121, 32
  %126 = udiv i64 %122, %125
  %127 = urem i64 %122, %125
  %128 = and i64 %120, 4294967295
  %129 = mul nuw nsw i64 %126, %128
  %130 = shl nuw i64 %127, 32
  %131 = or disjoint i64 %130, %124
  %132 = icmp ugt i64 %129, %131
  %133 = select i1 %132, i64 4294967295, i64 0
  %134 = add nuw nsw i64 %133, %126
  %135 = shl i64 %122, 32
  %136 = or disjoint i64 %135, %124
  %137 = and i64 %134, 4294967295
  %138 = mul i64 %137, %121
  %139 = sub i64 %136, %138
  %140 = udiv i64 %139, %125
  %141 = urem i64 %139, %125
  %142 = mul i64 %140, %128
  %143 = shl nuw i64 %141, 32
  %144 = icmp ugt i64 %142, %143
  %145 = sub nuw i64 %142, %143
  %146 = icmp ugt i64 %145, %121
  %147 = select i1 %146, i64 4294967294, i64 4294967295
  %148 = select i1 %144, i64 %147, i64 0
  %149 = add nuw nsw i64 %148, %140
  %150 = shl nuw i64 %137, 32
  %151 = and i64 %149, 4294967295
  %152 = or disjoint i64 %151, %150
  %153 = tail call i64 @llvm.usub.sat.i64(i64 %152, i64 1)
  %154 = zext i64 %153 to i128
  %155 = zext i64 %71 to i128
  %156 = mul nuw i128 %154, %155
  %157 = lshr i128 %156, 64
  %158 = trunc nuw i128 %157 to i64
  %159 = mul i64 %153, %71
  %160 = icmp ne i64 %159, 0
  %161 = sext i1 %160 to i64
  %162 = add i64 %82, %161
  %163 = add i64 %153, %158
  %164 = sub i64 %162, %163
  %165 = sub i64 0, %159
  %166 = icmp ugt i64 %164, 1
  br i1 %166, label %171, label %167

167:                                              ; preds = %119
  %168 = icmp eq i64 %164, 1
  br i1 %168, label %169, label %177

169:                                              ; preds = %167
  %170 = icmp ugt i64 %71, %165
  br i1 %170, label %177, label %171

171:                                              ; preds = %169, %119
  %172 = add nuw i64 %153, 1
  %173 = icmp ugt i64 %71, %165
  %174 = select i1 %173, i64 -2, i64 -1
  %175 = add i64 %164, %174
  %176 = sub i64 %165, %71
  br label %177

177:                                              ; preds = %171, %169, %167
  %178 = phi i64 [ %172, %171 ], [ %153, %169 ], [ %153, %167 ]
  %179 = phi i64 [ %176, %171 ], [ %165, %169 ], [ %165, %167 ]
  %180 = phi i64 [ %175, %171 ], [ 1, %169 ], [ 0, %167 ]
  %181 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %179, i64 1)
  %182 = icmp ugt i64 %181, 1
  br i1 %182, label %189, label %183

183:                                              ; preds = %177
  %184 = shl i64 %179, 1
  %185 = icmp eq i64 %181, 1
  %186 = icmp uge i64 %184, %71
  %187 = and i1 %186, %185
  %188 = zext i1 %187 to i64
  br label %189

189:                                              ; preds = %183, %177
  %190 = phi i64 [ 1, %177 ], [ %188, %183 ]
  %191 = shl i64 %178, 1
  %192 = or disjoint i64 %191, 1
  %193 = add i64 %192, %190
  br label %194

194:                                              ; preds = %189, %85, %83, %74, %1
  %195 = phi i64 [ 0, %1 ], [ %193, %189 ], [ %77, %74 ], [ %118, %85 ], [ 0, %83 ]
  ret i64 %195
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
