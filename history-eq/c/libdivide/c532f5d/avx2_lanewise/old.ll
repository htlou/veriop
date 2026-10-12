; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"libdivide.h:%d: %s(): Error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"branchfree divider must be != 1\00", align 1
@__func__.libdivide_s32_branchfree_gen = private unnamed_addr constant [29 x i8] c"libdivide_s32_branchfree_gen\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"branchfree divider must be != -1\00", align 1
@__func__.libdivide_s64_branchfree_gen = private unnamed_addr constant [29 x i8] c"libdivide_s64_branchfree_gen\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u32_lanewise(<4 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %197, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %77, label %9

9:                                                ; preds = %4
  %10 = shl nuw i32 1, %6
  %11 = zext i32 %10 to i64
  %12 = shl nuw i64 %11, 32
  %13 = zext i32 %1 to i64
  %14 = udiv i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = mul i32 %1, %15
  %17 = add i32 %16, %1
  %18 = icmp ult i32 %17, %10
  br i1 %18, label %19, label %101

19:                                               ; preds = %9
  %20 = add nuw nsw i64 %14, 1
  %21 = and i64 %20, 4294967295
  %22 = bitcast <4 x i64> %0 to <8 x i32>
  %23 = extractelement <8 x i32> %22, i64 0
  %24 = zext i32 %23 to i64
  %25 = mul nuw i64 %21, %24
  %26 = lshr i64 %25, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = lshr i32 %27, %6
  %29 = insertelement <8 x i32> poison, i32 %28, i64 0
  %30 = extractelement <8 x i32> %22, i64 1
  %31 = zext i32 %30 to i64
  %32 = mul nuw i64 %21, %31
  %33 = lshr i64 %32, 32
  %34 = trunc nuw i64 %33 to i32
  %35 = lshr i32 %34, %6
  %36 = insertelement <8 x i32> %29, i32 %35, i64 1
  %37 = extractelement <8 x i32> %22, i64 2
  %38 = zext i32 %37 to i64
  %39 = mul nuw i64 %21, %38
  %40 = lshr i64 %39, 32
  %41 = trunc nuw i64 %40 to i32
  %42 = lshr i32 %41, %6
  %43 = insertelement <8 x i32> %36, i32 %42, i64 2
  %44 = extractelement <8 x i32> %22, i64 3
  %45 = zext i32 %44 to i64
  %46 = mul nuw i64 %21, %45
  %47 = lshr i64 %46, 32
  %48 = trunc nuw i64 %47 to i32
  %49 = lshr i32 %48, %6
  %50 = insertelement <8 x i32> %43, i32 %49, i64 3
  %51 = extractelement <8 x i32> %22, i64 4
  %52 = zext i32 %51 to i64
  %53 = mul nuw i64 %21, %52
  %54 = lshr i64 %53, 32
  %55 = trunc nuw i64 %54 to i32
  %56 = lshr i32 %55, %6
  %57 = insertelement <8 x i32> %50, i32 %56, i64 4
  %58 = extractelement <8 x i32> %22, i64 5
  %59 = zext i32 %58 to i64
  %60 = mul nuw i64 %21, %59
  %61 = lshr i64 %60, 32
  %62 = trunc nuw i64 %61 to i32
  %63 = lshr i32 %62, %6
  %64 = insertelement <8 x i32> %57, i32 %63, i64 5
  %65 = extractelement <8 x i32> %22, i64 6
  %66 = zext i32 %65 to i64
  %67 = mul nuw i64 %21, %66
  %68 = lshr i64 %67, 32
  %69 = trunc nuw i64 %68 to i32
  %70 = lshr i32 %69, %6
  %71 = insertelement <8 x i32> %64, i32 %70, i64 6
  %72 = extractelement <8 x i32> %22, i64 7
  %73 = zext i32 %72 to i64
  %74 = mul nuw i64 %21, %73
  %75 = lshr i64 %74, 32
  %76 = trunc nuw i64 %75 to i32
  br label %191

77:                                               ; preds = %4
  %78 = bitcast <4 x i64> %0 to <8 x i32>
  %79 = extractelement <8 x i32> %78, i64 0
  %80 = lshr i32 %79, %6
  %81 = insertelement <8 x i32> poison, i32 %80, i64 0
  %82 = extractelement <8 x i32> %78, i64 1
  %83 = lshr i32 %82, %6
  %84 = insertelement <8 x i32> %81, i32 %83, i64 1
  %85 = extractelement <8 x i32> %78, i64 2
  %86 = lshr i32 %85, %6
  %87 = insertelement <8 x i32> %84, i32 %86, i64 2
  %88 = extractelement <8 x i32> %78, i64 3
  %89 = lshr i32 %88, %6
  %90 = insertelement <8 x i32> %87, i32 %89, i64 3
  %91 = extractelement <8 x i32> %78, i64 4
  %92 = lshr i32 %91, %6
  %93 = insertelement <8 x i32> %90, i32 %92, i64 4
  %94 = extractelement <8 x i32> %78, i64 5
  %95 = lshr i32 %94, %6
  %96 = insertelement <8 x i32> %93, i32 %95, i64 5
  %97 = extractelement <8 x i32> %78, i64 6
  %98 = lshr i32 %97, %6
  %99 = insertelement <8 x i32> %96, i32 %98, i64 6
  %100 = extractelement <8 x i32> %78, i64 7
  br label %191

101:                                              ; preds = %9
  %102 = sub i32 0, %16
  %103 = shl nuw nsw i64 %14, 1
  %104 = shl i32 %102, 1
  %105 = icmp uge i32 %104, %1
  %106 = icmp slt i32 %102, 0
  %107 = or i1 %106, %105
  %108 = zext i1 %107 to i64
  %109 = or disjoint i64 %103, %108
  %110 = add nuw nsw i64 %109, 1
  %111 = and i64 %110, 4294967295
  %112 = bitcast <4 x i64> %0 to <8 x i32>
  %113 = extractelement <8 x i32> %112, i64 0
  %114 = zext i32 %113 to i64
  %115 = mul nuw i64 %111, %114
  %116 = lshr i64 %115, 32
  %117 = trunc nuw i64 %116 to i32
  %118 = sub i32 %113, %117
  %119 = lshr i32 %118, 1
  %120 = add i32 %119, %117
  %121 = lshr i32 %120, %6
  %122 = insertelement <8 x i32> poison, i32 %121, i64 0
  %123 = extractelement <8 x i32> %112, i64 1
  %124 = zext i32 %123 to i64
  %125 = mul nuw i64 %111, %124
  %126 = lshr i64 %125, 32
  %127 = trunc nuw i64 %126 to i32
  %128 = sub i32 %123, %127
  %129 = lshr i32 %128, 1
  %130 = add i32 %129, %127
  %131 = lshr i32 %130, %6
  %132 = insertelement <8 x i32> %122, i32 %131, i64 1
  %133 = extractelement <8 x i32> %112, i64 2
  %134 = zext i32 %133 to i64
  %135 = mul nuw i64 %111, %134
  %136 = lshr i64 %135, 32
  %137 = trunc nuw i64 %136 to i32
  %138 = sub i32 %133, %137
  %139 = lshr i32 %138, 1
  %140 = add i32 %139, %137
  %141 = lshr i32 %140, %6
  %142 = insertelement <8 x i32> %132, i32 %141, i64 2
  %143 = extractelement <8 x i32> %112, i64 3
  %144 = zext i32 %143 to i64
  %145 = mul nuw i64 %111, %144
  %146 = lshr i64 %145, 32
  %147 = trunc nuw i64 %146 to i32
  %148 = sub i32 %143, %147
  %149 = lshr i32 %148, 1
  %150 = add i32 %149, %147
  %151 = lshr i32 %150, %6
  %152 = insertelement <8 x i32> %142, i32 %151, i64 3
  %153 = extractelement <8 x i32> %112, i64 4
  %154 = zext i32 %153 to i64
  %155 = mul nuw i64 %111, %154
  %156 = lshr i64 %155, 32
  %157 = trunc nuw i64 %156 to i32
  %158 = sub i32 %153, %157
  %159 = lshr i32 %158, 1
  %160 = add i32 %159, %157
  %161 = lshr i32 %160, %6
  %162 = insertelement <8 x i32> %152, i32 %161, i64 4
  %163 = extractelement <8 x i32> %112, i64 5
  %164 = zext i32 %163 to i64
  %165 = mul nuw i64 %111, %164
  %166 = lshr i64 %165, 32
  %167 = trunc nuw i64 %166 to i32
  %168 = sub i32 %163, %167
  %169 = lshr i32 %168, 1
  %170 = add i32 %169, %167
  %171 = lshr i32 %170, %6
  %172 = insertelement <8 x i32> %162, i32 %171, i64 5
  %173 = extractelement <8 x i32> %112, i64 6
  %174 = zext i32 %173 to i64
  %175 = mul nuw i64 %111, %174
  %176 = lshr i64 %175, 32
  %177 = trunc nuw i64 %176 to i32
  %178 = sub i32 %173, %177
  %179 = lshr i32 %178, 1
  %180 = add i32 %179, %177
  %181 = lshr i32 %180, %6
  %182 = insertelement <8 x i32> %172, i32 %181, i64 6
  %183 = extractelement <8 x i32> %112, i64 7
  %184 = zext i32 %183 to i64
  %185 = mul nuw i64 %111, %184
  %186 = lshr i64 %185, 32
  %187 = trunc nuw i64 %186 to i32
  %188 = sub i32 %183, %187
  %189 = lshr i32 %188, 1
  %190 = add i32 %189, %187
  br label %191

191:                                              ; preds = %77, %101, %19
  %192 = phi i32 [ %100, %77 ], [ %190, %101 ], [ %76, %19 ]
  %193 = phi <8 x i32> [ %99, %77 ], [ %182, %101 ], [ %71, %19 ]
  %194 = lshr i32 %192, %6
  %195 = insertelement <8 x i32> %193, i32 %194, i64 7
  %196 = bitcast <8 x i32> %195 to <4 x i64>
  br label %197

197:                                              ; preds = %2, %191
  %198 = phi <4 x i64> [ %196, %191 ], [ %0, %2 ]
  ret <4 x i64> %198
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s32_lanewise(<4 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %301, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %7 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %6, i1 true)
  %8 = xor i32 %7, 31
  %9 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %6)
  %10 = icmp samesign ult i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = lshr i32 %1, 24
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %8, %13
  %15 = trunc nuw i32 %14 to i8
  %16 = or disjoint i8 %15, 32
  br label %51

17:                                               ; preds = %4
  %18 = sub nsw i32 30, %7
  %19 = shl nuw nsw i32 1, %18
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = zext i32 %6 to i64
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = mul i32 %6, %24
  %26 = add i32 %25, %6
  %27 = lshr i32 %26, %8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = trunc nsw i32 %18 to i8
  br label %42

31:                                               ; preds = %17
  %32 = sub i32 0, %25
  %33 = shl i32 %24, 1
  %34 = shl i32 %32, 1
  %35 = icmp uge i32 %34, %6
  %36 = icmp slt i32 %32, 0
  %37 = or i1 %36, %35
  %38 = zext i1 %37 to i32
  %39 = or disjoint i32 %33, %38
  %40 = trunc nuw nsw i32 %8 to i8
  %41 = or disjoint i8 %40, 64
  br label %42

42:                                               ; preds = %31, %29
  %43 = phi i32 [ %39, %31 ], [ %24, %29 ]
  %44 = phi i8 [ %41, %31 ], [ %30, %29 ]
  %45 = add i32 %43, 1
  %46 = or i8 %44, -128
  %47 = xor i32 %43, -1
  %48 = select i1 %5, i8 %46, i8 %44
  %49 = select i1 %5, i32 %47, i32 %45
  %50 = sext i32 %49 to i64
  br label %51

51:                                               ; preds = %11, %42
  %52 = phi i64 [ 0, %11 ], [ %50, %42 ]
  %53 = phi i8 [ %16, %11 ], [ %48, %42 ]
  %54 = bitcast <4 x i64> %0 to <8 x i32>
  %55 = zext i8 %53 to i32
  %56 = and i32 %55, 32
  %57 = icmp eq i32 %56, 0
  %58 = ashr i8 %53, 7
  %59 = sext i8 %58 to i32
  %60 = and i32 %55, 31
  br i1 %57, label %130, label %61

61:                                               ; preds = %51
  %62 = and i8 %53, 31
  %63 = zext nneg i8 %62 to i32
  %64 = shl nsw i32 -1, %63
  %65 = xor i32 %64, -1
  %66 = extractelement <8 x i32> %54, i64 0
  %67 = icmp slt i32 %66, 0
  %68 = select i1 %67, i32 %65, i32 0
  %69 = add i32 %68, %66
  %70 = ashr i32 %69, %63
  %71 = xor i32 %70, %59
  %72 = sub i32 %71, %59
  %73 = insertelement <8 x i32> poison, i32 %72, i64 0
  %74 = extractelement <8 x i32> %54, i64 1
  %75 = icmp slt i32 %74, 0
  %76 = select i1 %75, i32 %65, i32 0
  %77 = add i32 %76, %74
  %78 = ashr i32 %77, %63
  %79 = xor i32 %78, %59
  %80 = sub i32 %79, %59
  %81 = insertelement <8 x i32> %73, i32 %80, i64 1
  %82 = extractelement <8 x i32> %54, i64 2
  %83 = icmp slt i32 %82, 0
  %84 = select i1 %83, i32 %65, i32 0
  %85 = add i32 %84, %82
  %86 = ashr i32 %85, %63
  %87 = xor i32 %86, %59
  %88 = sub i32 %87, %59
  %89 = insertelement <8 x i32> %81, i32 %88, i64 2
  %90 = extractelement <8 x i32> %54, i64 3
  %91 = icmp slt i32 %90, 0
  %92 = select i1 %91, i32 %65, i32 0
  %93 = add i32 %92, %90
  %94 = ashr i32 %93, %63
  %95 = xor i32 %94, %59
  %96 = sub i32 %95, %59
  %97 = insertelement <8 x i32> %89, i32 %96, i64 3
  %98 = extractelement <8 x i32> %54, i64 4
  %99 = icmp slt i32 %98, 0
  %100 = select i1 %99, i32 %65, i32 0
  %101 = add i32 %100, %98
  %102 = ashr i32 %101, %63
  %103 = xor i32 %102, %59
  %104 = sub i32 %103, %59
  %105 = insertelement <8 x i32> %97, i32 %104, i64 4
  %106 = extractelement <8 x i32> %54, i64 5
  %107 = icmp slt i32 %106, 0
  %108 = select i1 %107, i32 %65, i32 0
  %109 = add i32 %108, %106
  %110 = ashr i32 %109, %63
  %111 = xor i32 %110, %59
  %112 = sub i32 %111, %59
  %113 = insertelement <8 x i32> %105, i32 %112, i64 5
  %114 = extractelement <8 x i32> %54, i64 6
  %115 = icmp slt i32 %114, 0
  %116 = select i1 %115, i32 %65, i32 0
  %117 = add i32 %116, %114
  %118 = ashr i32 %117, %63
  %119 = xor i32 %118, %59
  %120 = sub i32 %119, %59
  %121 = insertelement <8 x i32> %113, i32 %120, i64 6
  %122 = extractelement <8 x i32> %54, i64 7
  %123 = icmp slt i32 %122, 0
  %124 = select i1 %123, i32 %65, i32 0
  %125 = add i32 %124, %122
  %126 = ashr i32 %125, %63
  %127 = xor i32 %126, %59
  %128 = sub i32 %127, %59
  %129 = insertelement <8 x i32> %121, i32 %128, i64 7
  br label %298

130:                                              ; preds = %51
  %131 = and i32 %55, 64
  %132 = icmp eq i32 %131, 0
  %133 = extractelement <8 x i32> %54, i64 0
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %52, %134
  %136 = lshr i64 %135, 32
  %137 = trunc nuw i64 %136 to i32
  br i1 %132, label %230, label %138

138:                                              ; preds = %130
  %139 = xor i32 %133, %59
  %140 = sub i32 %139, %59
  %141 = add i32 %140, %137
  %142 = ashr i32 %141, %60
  %143 = lshr i32 %142, 31
  %144 = add nsw i32 %143, %142
  %145 = insertelement <8 x i32> poison, i32 %144, i64 0
  %146 = extractelement <8 x i32> %54, i64 1
  %147 = sext i32 %146 to i64
  %148 = mul nsw i64 %52, %147
  %149 = lshr i64 %148, 32
  %150 = trunc nuw i64 %149 to i32
  %151 = xor i32 %146, %59
  %152 = sub i32 %151, %59
  %153 = add i32 %152, %150
  %154 = ashr i32 %153, %60
  %155 = lshr i32 %154, 31
  %156 = add nsw i32 %155, %154
  %157 = insertelement <8 x i32> %145, i32 %156, i64 1
  %158 = extractelement <8 x i32> %54, i64 2
  %159 = sext i32 %158 to i64
  %160 = mul nsw i64 %52, %159
  %161 = lshr i64 %160, 32
  %162 = trunc nuw i64 %161 to i32
  %163 = xor i32 %158, %59
  %164 = sub i32 %163, %59
  %165 = add i32 %164, %162
  %166 = ashr i32 %165, %60
  %167 = lshr i32 %166, 31
  %168 = add nsw i32 %167, %166
  %169 = insertelement <8 x i32> %157, i32 %168, i64 2
  %170 = extractelement <8 x i32> %54, i64 3
  %171 = sext i32 %170 to i64
  %172 = mul nsw i64 %52, %171
  %173 = lshr i64 %172, 32
  %174 = trunc nuw i64 %173 to i32
  %175 = xor i32 %170, %59
  %176 = sub i32 %175, %59
  %177 = add i32 %176, %174
  %178 = ashr i32 %177, %60
  %179 = lshr i32 %178, 31
  %180 = add nsw i32 %179, %178
  %181 = insertelement <8 x i32> %169, i32 %180, i64 3
  %182 = extractelement <8 x i32> %54, i64 4
  %183 = sext i32 %182 to i64
  %184 = mul nsw i64 %52, %183
  %185 = lshr i64 %184, 32
  %186 = trunc nuw i64 %185 to i32
  %187 = xor i32 %182, %59
  %188 = sub i32 %187, %59
  %189 = add i32 %188, %186
  %190 = ashr i32 %189, %60
  %191 = lshr i32 %190, 31
  %192 = add nsw i32 %191, %190
  %193 = insertelement <8 x i32> %181, i32 %192, i64 4
  %194 = extractelement <8 x i32> %54, i64 5
  %195 = sext i32 %194 to i64
  %196 = mul nsw i64 %52, %195
  %197 = lshr i64 %196, 32
  %198 = trunc nuw i64 %197 to i32
  %199 = xor i32 %194, %59
  %200 = sub i32 %199, %59
  %201 = add i32 %200, %198
  %202 = ashr i32 %201, %60
  %203 = lshr i32 %202, 31
  %204 = add nsw i32 %203, %202
  %205 = insertelement <8 x i32> %193, i32 %204, i64 5
  %206 = extractelement <8 x i32> %54, i64 6
  %207 = sext i32 %206 to i64
  %208 = mul nsw i64 %52, %207
  %209 = lshr i64 %208, 32
  %210 = trunc nuw i64 %209 to i32
  %211 = xor i32 %206, %59
  %212 = sub i32 %211, %59
  %213 = add i32 %212, %210
  %214 = ashr i32 %213, %60
  %215 = lshr i32 %214, 31
  %216 = add nsw i32 %215, %214
  %217 = insertelement <8 x i32> %205, i32 %216, i64 6
  %218 = extractelement <8 x i32> %54, i64 7
  %219 = sext i32 %218 to i64
  %220 = mul nsw i64 %52, %219
  %221 = lshr i64 %220, 32
  %222 = trunc nuw i64 %221 to i32
  %223 = xor i32 %218, %59
  %224 = sub i32 %223, %59
  %225 = add i32 %224, %222
  %226 = ashr i32 %225, %60
  %227 = lshr i32 %226, 31
  %228 = add nsw i32 %227, %226
  %229 = insertelement <8 x i32> %217, i32 %228, i64 7
  br label %298

230:                                              ; preds = %130
  %231 = ashr i32 %137, %60
  %232 = lshr i32 %231, 31
  %233 = add nsw i32 %232, %231
  %234 = insertelement <8 x i32> poison, i32 %233, i64 0
  %235 = extractelement <8 x i32> %54, i64 1
  %236 = sext i32 %235 to i64
  %237 = mul nsw i64 %52, %236
  %238 = lshr i64 %237, 32
  %239 = trunc nuw i64 %238 to i32
  %240 = ashr i32 %239, %60
  %241 = lshr i32 %240, 31
  %242 = add nsw i32 %241, %240
  %243 = insertelement <8 x i32> %234, i32 %242, i64 1
  %244 = extractelement <8 x i32> %54, i64 2
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %52, %245
  %247 = lshr i64 %246, 32
  %248 = trunc nuw i64 %247 to i32
  %249 = ashr i32 %248, %60
  %250 = lshr i32 %249, 31
  %251 = add nsw i32 %250, %249
  %252 = insertelement <8 x i32> %243, i32 %251, i64 2
  %253 = extractelement <8 x i32> %54, i64 3
  %254 = sext i32 %253 to i64
  %255 = mul nsw i64 %52, %254
  %256 = lshr i64 %255, 32
  %257 = trunc nuw i64 %256 to i32
  %258 = ashr i32 %257, %60
  %259 = lshr i32 %258, 31
  %260 = add nsw i32 %259, %258
  %261 = insertelement <8 x i32> %252, i32 %260, i64 3
  %262 = extractelement <8 x i32> %54, i64 4
  %263 = sext i32 %262 to i64
  %264 = mul nsw i64 %52, %263
  %265 = lshr i64 %264, 32
  %266 = trunc nuw i64 %265 to i32
  %267 = ashr i32 %266, %60
  %268 = lshr i32 %267, 31
  %269 = add nsw i32 %268, %267
  %270 = insertelement <8 x i32> %261, i32 %269, i64 4
  %271 = extractelement <8 x i32> %54, i64 5
  %272 = sext i32 %271 to i64
  %273 = mul nsw i64 %52, %272
  %274 = lshr i64 %273, 32
  %275 = trunc nuw i64 %274 to i32
  %276 = ashr i32 %275, %60
  %277 = lshr i32 %276, 31
  %278 = add nsw i32 %277, %276
  %279 = insertelement <8 x i32> %270, i32 %278, i64 5
  %280 = extractelement <8 x i32> %54, i64 6
  %281 = sext i32 %280 to i64
  %282 = mul nsw i64 %52, %281
  %283 = lshr i64 %282, 32
  %284 = trunc nuw i64 %283 to i32
  %285 = ashr i32 %284, %60
  %286 = lshr i32 %285, 31
  %287 = add nsw i32 %286, %285
  %288 = insertelement <8 x i32> %279, i32 %287, i64 6
  %289 = extractelement <8 x i32> %54, i64 7
  %290 = sext i32 %289 to i64
  %291 = mul nsw i64 %52, %290
  %292 = lshr i64 %291, 32
  %293 = trunc nuw i64 %292 to i32
  %294 = ashr i32 %293, %60
  %295 = lshr i32 %294, 31
  %296 = add nsw i32 %295, %294
  %297 = insertelement <8 x i32> %288, i32 %296, i64 7
  br label %298

298:                                              ; preds = %61, %138, %230
  %299 = phi <8 x i32> [ %297, %230 ], [ %229, %138 ], [ %129, %61 ]
  %300 = bitcast <8 x i32> %299 to <4 x i64>
  br label %301

301:                                              ; preds = %2, %298
  %302 = phi <4 x i64> [ %300, %298 ], [ %0, %2 ]
  ret <4 x i64> %302
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u64_lanewise(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %118, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  %10 = zext nneg i32 %7 to i64
  br i1 %9, label %53, label %11

11:                                               ; preds = %4
  %12 = shl nuw i64 1, %10
  %13 = zext i64 %12 to i128
  %14 = shl nuw i128 %13, 64
  %15 = zext i64 %1 to i128
  %16 = udiv i128 %14, %15
  %17 = trunc i128 %16 to i64
  %18 = mul i64 %1, %17
  %19 = add i64 %18, %1
  %20 = icmp ult i64 %19, %12
  br i1 %20, label %21, label %66

21:                                               ; preds = %11
  %22 = zext nneg i32 %7 to i64
  %23 = add i64 %17, 1
  %24 = zext i64 %23 to i128
  %25 = extractelement <4 x i64> %0, i64 0
  %26 = zext i64 %25 to i128
  %27 = mul nuw i128 %26, %24
  %28 = lshr i128 %27, 64
  %29 = trunc nuw i128 %28 to i64
  %30 = lshr i64 %29, %22
  %31 = insertelement <4 x i64> poison, i64 %30, i64 0
  %32 = extractelement <4 x i64> %0, i64 1
  %33 = zext i64 %32 to i128
  %34 = mul nuw i128 %33, %24
  %35 = lshr i128 %34, 64
  %36 = trunc nuw i128 %35 to i64
  %37 = lshr i64 %36, %22
  %38 = insertelement <4 x i64> %31, i64 %37, i64 1
  %39 = extractelement <4 x i64> %0, i64 2
  %40 = zext i64 %39 to i128
  %41 = mul nuw i128 %40, %24
  %42 = lshr i128 %41, 64
  %43 = trunc nuw i128 %42 to i64
  %44 = lshr i64 %43, %22
  %45 = insertelement <4 x i64> %38, i64 %44, i64 2
  %46 = extractelement <4 x i64> %0, i64 3
  %47 = zext i64 %46 to i128
  %48 = mul nuw i128 %47, %24
  %49 = lshr i128 %48, 64
  %50 = trunc nuw i128 %49 to i64
  %51 = lshr i64 %50, %22
  %52 = insertelement <4 x i64> %45, i64 %51, i64 3
  br label %118

53:                                               ; preds = %4
  %54 = extractelement <4 x i64> %0, i64 0
  %55 = lshr i64 %54, %10
  %56 = insertelement <4 x i64> poison, i64 %55, i64 0
  %57 = extractelement <4 x i64> %0, i64 1
  %58 = lshr i64 %57, %10
  %59 = insertelement <4 x i64> %56, i64 %58, i64 1
  %60 = extractelement <4 x i64> %0, i64 2
  %61 = lshr i64 %60, %10
  %62 = insertelement <4 x i64> %59, i64 %61, i64 2
  %63 = extractelement <4 x i64> %0, i64 3
  %64 = lshr i64 %63, %10
  %65 = insertelement <4 x i64> %62, i64 %64, i64 3
  br label %118

66:                                               ; preds = %11
  %67 = sub i64 0, %18
  %68 = shl i64 %17, 1
  %69 = shl i64 %67, 1
  %70 = icmp uge i64 %69, %1
  %71 = icmp slt i64 %67, 0
  %72 = or i1 %71, %70
  %73 = zext i1 %72 to i64
  %74 = or disjoint i64 %68, %73
  %75 = zext nneg i32 %7 to i64
  %76 = add i64 %74, 1
  %77 = zext i64 %76 to i128
  %78 = extractelement <4 x i64> %0, i64 0
  %79 = zext i64 %78 to i128
  %80 = mul nuw i128 %79, %77
  %81 = lshr i128 %80, 64
  %82 = trunc nuw i128 %81 to i64
  %83 = sub i64 %78, %82
  %84 = lshr i64 %83, 1
  %85 = add i64 %84, %82
  %86 = lshr i64 %85, %75
  %87 = insertelement <4 x i64> poison, i64 %86, i64 0
  %88 = extractelement <4 x i64> %0, i64 1
  %89 = zext i64 %88 to i128
  %90 = mul nuw i128 %89, %77
  %91 = lshr i128 %90, 64
  %92 = trunc nuw i128 %91 to i64
  %93 = sub i64 %88, %92
  %94 = lshr i64 %93, 1
  %95 = add i64 %94, %92
  %96 = lshr i64 %95, %75
  %97 = insertelement <4 x i64> %87, i64 %96, i64 1
  %98 = extractelement <4 x i64> %0, i64 2
  %99 = zext i64 %98 to i128
  %100 = mul nuw i128 %99, %77
  %101 = lshr i128 %100, 64
  %102 = trunc nuw i128 %101 to i64
  %103 = sub i64 %98, %102
  %104 = lshr i64 %103, 1
  %105 = add i64 %104, %102
  %106 = lshr i64 %105, %75
  %107 = insertelement <4 x i64> %97, i64 %106, i64 2
  %108 = extractelement <4 x i64> %0, i64 3
  %109 = zext i64 %108 to i128
  %110 = mul nuw i128 %109, %77
  %111 = lshr i128 %110, 64
  %112 = trunc nuw i128 %111 to i64
  %113 = sub i64 %108, %112
  %114 = lshr i64 %113, 1
  %115 = add i64 %114, %112
  %116 = lshr i64 %115, %75
  %117 = insertelement <4 x i64> %107, i64 %116, i64 3
  br label %118

118:                                              ; preds = %21, %66, %53, %2
  %119 = phi <4 x i64> [ %0, %2 ], [ %52, %21 ], [ %117, %66 ], [ %65, %53 ]
  ret <4 x i64> %119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s64_lanewise(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %185, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %6, i1 true)
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = xor i32 %8, 63
  %10 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %6)
  %11 = icmp samesign ult i64 %10, 2
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  %18 = ashr i8 %17, 7
  %19 = sext i8 %18 to i64
  br label %62

20:                                               ; preds = %4
  %21 = sub nsw i32 62, %8
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw i64 1, %22
  %24 = zext i64 %23 to i128
  %25 = shl nuw i128 %24, 64
  %26 = zext i64 %6 to i128
  %27 = udiv i128 %25, %26
  %28 = trunc i128 %27 to i64
  %29 = mul i64 %6, %28
  %30 = add i64 %29, %6
  %31 = zext nneg i32 %9 to i64
  %32 = lshr i64 %30, %31
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = trunc nsw i32 %21 to i8
  br label %47

36:                                               ; preds = %20
  %37 = sub i64 0, %29
  %38 = shl i64 %28, 1
  %39 = shl i64 %37, 1
  %40 = icmp uge i64 %39, %6
  %41 = icmp slt i64 %37, 0
  %42 = or i1 %41, %40
  %43 = zext i1 %42 to i64
  %44 = or disjoint i64 %38, %43
  %45 = trunc nuw nsw i32 %9 to i8
  %46 = or disjoint i8 %45, 64
  br label %47

47:                                               ; preds = %34, %36
  %48 = phi i64 [ %44, %36 ], [ %28, %34 ]
  %49 = phi i8 [ %46, %36 ], [ %35, %34 ]
  %50 = add i64 %48, 1
  %51 = or i8 %49, -128
  %52 = xor i64 %48, -1
  %53 = select i1 %5, i8 %51, i8 %49
  %54 = select i1 %5, i64 %52, i64 %50
  %55 = icmp eq i64 %54, 0
  %56 = sext i64 %54 to i128
  %57 = zext i8 %53 to i32
  %58 = ashr i8 %53, 7
  %59 = sext i8 %58 to i64
  %60 = and i32 %57, 63
  %61 = zext nneg i32 %60 to i64
  br i1 %55, label %62, label %101

62:                                               ; preds = %12, %47
  %63 = phi i64 [ %19, %12 ], [ %59, %47 ]
  %64 = phi i8 [ %17, %12 ], [ %53, %47 ]
  %65 = and i8 %64, 63
  %66 = zext nneg i8 %65 to i64
  %67 = shl nsw i64 -1, %66
  %68 = xor i64 %67, -1
  %69 = extractelement <4 x i64> %0, i64 0
  %70 = icmp slt i64 %69, 0
  %71 = select i1 %70, i64 %68, i64 0
  %72 = add i64 %71, %69
  %73 = ashr i64 %72, %66
  %74 = xor i64 %73, %63
  %75 = sub nsw i64 %74, %63
  %76 = insertelement <4 x i64> poison, i64 %75, i64 0
  %77 = extractelement <4 x i64> %0, i64 1
  %78 = icmp slt i64 %77, 0
  %79 = select i1 %78, i64 %68, i64 0
  %80 = add i64 %79, %77
  %81 = ashr i64 %80, %66
  %82 = xor i64 %81, %63
  %83 = sub nsw i64 %82, %63
  %84 = insertelement <4 x i64> %76, i64 %83, i64 1
  %85 = extractelement <4 x i64> %0, i64 2
  %86 = icmp slt i64 %85, 0
  %87 = select i1 %86, i64 %68, i64 0
  %88 = add i64 %87, %85
  %89 = ashr i64 %88, %66
  %90 = xor i64 %89, %63
  %91 = sub nsw i64 %90, %63
  %92 = insertelement <4 x i64> %84, i64 %91, i64 2
  %93 = extractelement <4 x i64> %0, i64 3
  %94 = icmp slt i64 %93, 0
  %95 = select i1 %94, i64 %68, i64 0
  %96 = add i64 %95, %93
  %97 = ashr i64 %96, %66
  %98 = xor i64 %97, %63
  %99 = sub nsw i64 %98, %63
  %100 = insertelement <4 x i64> %92, i64 %99, i64 3
  br label %185

101:                                              ; preds = %47
  %102 = and i32 %57, 64
  %103 = icmp eq i32 %102, 0
  %104 = extractelement <4 x i64> %0, i64 0
  %105 = sext i64 %104 to i128
  %106 = mul nsw i128 %105, %56
  %107 = lshr i128 %106, 64
  %108 = trunc nuw i128 %107 to i64
  br i1 %103, label %153, label %109

109:                                              ; preds = %101
  %110 = xor i64 %104, %59
  %111 = sub i64 %110, %59
  %112 = add i64 %111, %108
  %113 = ashr i64 %112, %61
  %114 = lshr i64 %113, 63
  %115 = add nsw i64 %114, %113
  %116 = insertelement <4 x i64> poison, i64 %115, i64 0
  %117 = extractelement <4 x i64> %0, i64 1
  %118 = sext i64 %117 to i128
  %119 = mul nsw i128 %118, %56
  %120 = lshr i128 %119, 64
  %121 = trunc nuw i128 %120 to i64
  %122 = xor i64 %117, %59
  %123 = sub i64 %122, %59
  %124 = add i64 %123, %121
  %125 = ashr i64 %124, %61
  %126 = lshr i64 %125, 63
  %127 = add nsw i64 %126, %125
  %128 = insertelement <4 x i64> %116, i64 %127, i64 1
  %129 = extractelement <4 x i64> %0, i64 2
  %130 = sext i64 %129 to i128
  %131 = mul nsw i128 %130, %56
  %132 = lshr i128 %131, 64
  %133 = trunc nuw i128 %132 to i64
  %134 = xor i64 %129, %59
  %135 = sub i64 %134, %59
  %136 = add i64 %135, %133
  %137 = ashr i64 %136, %61
  %138 = lshr i64 %137, 63
  %139 = add nsw i64 %138, %137
  %140 = insertelement <4 x i64> %128, i64 %139, i64 2
  %141 = extractelement <4 x i64> %0, i64 3
  %142 = sext i64 %141 to i128
  %143 = mul nsw i128 %142, %56
  %144 = lshr i128 %143, 64
  %145 = trunc nuw i128 %144 to i64
  %146 = xor i64 %141, %59
  %147 = sub i64 %146, %59
  %148 = add i64 %147, %145
  %149 = ashr i64 %148, %61
  %150 = lshr i64 %149, 63
  %151 = add nsw i64 %150, %149
  %152 = insertelement <4 x i64> %140, i64 %151, i64 3
  br label %185

153:                                              ; preds = %101
  %154 = ashr i64 %108, %61
  %155 = lshr i64 %154, 63
  %156 = add nsw i64 %155, %154
  %157 = insertelement <4 x i64> poison, i64 %156, i64 0
  %158 = extractelement <4 x i64> %0, i64 1
  %159 = sext i64 %158 to i128
  %160 = mul nsw i128 %159, %56
  %161 = lshr i128 %160, 64
  %162 = trunc nuw i128 %161 to i64
  %163 = ashr i64 %162, %61
  %164 = lshr i64 %163, 63
  %165 = add nsw i64 %164, %163
  %166 = insertelement <4 x i64> %157, i64 %165, i64 1
  %167 = extractelement <4 x i64> %0, i64 2
  %168 = sext i64 %167 to i128
  %169 = mul nsw i128 %168, %56
  %170 = lshr i128 %169, 64
  %171 = trunc nuw i128 %170 to i64
  %172 = ashr i64 %171, %61
  %173 = lshr i64 %172, 63
  %174 = add nsw i64 %173, %172
  %175 = insertelement <4 x i64> %166, i64 %174, i64 2
  %176 = extractelement <4 x i64> %0, i64 3
  %177 = sext i64 %176 to i128
  %178 = mul nsw i128 %177, %56
  %179 = lshr i128 %178, 64
  %180 = trunc nuw i128 %179 to i64
  %181 = ashr i64 %180, %61
  %182 = lshr i64 %181, 63
  %183 = add nsw i64 %182, %181
  %184 = insertelement <4 x i64> %175, i64 %183, i64 3
  br label %185

185:                                              ; preds = %62, %153, %109, %2
  %186 = phi <4 x i64> [ %0, %2 ], [ %100, %62 ], [ %184, %153 ], [ %152, %109 ]
  ret <4 x i64> %186
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u32_branchfree_lanewise(<4 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %114, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %1)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i32 30, %5
  br label %29

10:                                               ; preds = %4
  %11 = xor i32 %5, 31
  %12 = shl nuw i32 1, %11
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %13, 32
  %15 = zext i32 %1 to i64
  %16 = udiv i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = mul i32 %1, %17
  %19 = sub i32 0, %18
  %20 = shl nuw nsw i64 %16, 1
  %21 = shl i32 %19, 1
  %22 = icmp uge i32 %21, %1
  %23 = icmp slt i32 %19, 0
  %24 = or i1 %23, %22
  %25 = zext i1 %24 to i64
  %26 = or disjoint i64 %20, 1
  %27 = add nuw nsw i64 %26, %25
  %28 = and i64 %27, 4294967295
  br label %29

29:                                               ; preds = %8, %10
  %30 = phi i64 [ 0, %8 ], [ %28, %10 ]
  %31 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %32 = bitcast <4 x i64> %0 to <8 x i32>
  %33 = extractelement <8 x i32> %32, i64 0
  %34 = zext i32 %33 to i64
  %35 = mul nuw i64 %30, %34
  %36 = lshr i64 %35, 32
  %37 = trunc nuw i64 %36 to i32
  %38 = sub i32 %33, %37
  %39 = lshr i32 %38, 1
  %40 = add i32 %39, %37
  %41 = lshr i32 %40, %31
  %42 = insertelement <8 x i32> poison, i32 %41, i64 0
  %43 = extractelement <8 x i32> %32, i64 1
  %44 = zext i32 %43 to i64
  %45 = mul nuw i64 %30, %44
  %46 = lshr i64 %45, 32
  %47 = trunc nuw i64 %46 to i32
  %48 = sub i32 %43, %47
  %49 = lshr i32 %48, 1
  %50 = add i32 %49, %47
  %51 = lshr i32 %50, %31
  %52 = insertelement <8 x i32> %42, i32 %51, i64 1
  %53 = extractelement <8 x i32> %32, i64 2
  %54 = zext i32 %53 to i64
  %55 = mul nuw i64 %30, %54
  %56 = lshr i64 %55, 32
  %57 = trunc nuw i64 %56 to i32
  %58 = sub i32 %53, %57
  %59 = lshr i32 %58, 1
  %60 = add i32 %59, %57
  %61 = lshr i32 %60, %31
  %62 = insertelement <8 x i32> %52, i32 %61, i64 2
  %63 = extractelement <8 x i32> %32, i64 3
  %64 = zext i32 %63 to i64
  %65 = mul nuw i64 %30, %64
  %66 = lshr i64 %65, 32
  %67 = trunc nuw i64 %66 to i32
  %68 = sub i32 %63, %67
  %69 = lshr i32 %68, 1
  %70 = add i32 %69, %67
  %71 = lshr i32 %70, %31
  %72 = insertelement <8 x i32> %62, i32 %71, i64 3
  %73 = extractelement <8 x i32> %32, i64 4
  %74 = zext i32 %73 to i64
  %75 = mul nuw i64 %30, %74
  %76 = lshr i64 %75, 32
  %77 = trunc nuw i64 %76 to i32
  %78 = sub i32 %73, %77
  %79 = lshr i32 %78, 1
  %80 = add i32 %79, %77
  %81 = lshr i32 %80, %31
  %82 = insertelement <8 x i32> %72, i32 %81, i64 4
  %83 = extractelement <8 x i32> %32, i64 5
  %84 = zext i32 %83 to i64
  %85 = mul nuw i64 %30, %84
  %86 = lshr i64 %85, 32
  %87 = trunc nuw i64 %86 to i32
  %88 = sub i32 %83, %87
  %89 = lshr i32 %88, 1
  %90 = add i32 %89, %87
  %91 = lshr i32 %90, %31
  %92 = insertelement <8 x i32> %82, i32 %91, i64 5
  %93 = extractelement <8 x i32> %32, i64 6
  %94 = zext i32 %93 to i64
  %95 = mul nuw i64 %30, %94
  %96 = lshr i64 %95, 32
  %97 = trunc nuw i64 %96 to i32
  %98 = sub i32 %93, %97
  %99 = lshr i32 %98, 1
  %100 = add i32 %99, %97
  %101 = lshr i32 %100, %31
  %102 = insertelement <8 x i32> %92, i32 %101, i64 6
  %103 = extractelement <8 x i32> %32, i64 7
  %104 = zext i32 %103 to i64
  %105 = mul nuw i64 %30, %104
  %106 = lshr i64 %105, 32
  %107 = trunc nuw i64 %106 to i32
  %108 = sub i32 %103, %107
  %109 = lshr i32 %108, 1
  %110 = add i32 %109, %107
  %111 = lshr i32 %110, %31
  %112 = insertelement <8 x i32> %102, i32 %111, i64 7
  %113 = bitcast <8 x i32> %112 to <4 x i64>
  br label %114

114:                                              ; preds = %2, %29
  %115 = phi <4 x i64> [ %113, %29 ], [ %0, %2 ]
  ret <4 x i64> %115
}

; Function Attrs: nofree nounwind uwtable
define dso_local <4 x i64> @target_s32_branchfree_lanewise(<4 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  switch i32 %1, label %9 [
    i32 0, label %162
    i32 1, label %3
    i32 -1, label %6
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 1011, ptr noundef nonnull @__func__.libdivide_s32_branchfree_gen, ptr noundef nonnull @.str.2) #6
  tail call void @exit(i32 noundef -1) #7
  unreachable

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 1014, ptr noundef nonnull @__func__.libdivide_s32_branchfree_gen, ptr noundef nonnull @.str.3) #6
  tail call void @exit(i32 noundef -1) #7
  unreachable

9:                                                ; preds = %2
  %10 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %11 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %10, i1 true)
  %12 = xor i32 %11, 31
  %13 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %10)
  %14 = icmp samesign ult i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = lshr i32 %1, 24
  %17 = and i32 %16, 128
  %18 = or disjoint i32 %12, %17
  %19 = trunc nuw i32 %18 to i8
  %20 = or disjoint i8 %19, 32
  br label %44

21:                                               ; preds = %9
  %22 = icmp slt i32 %1, 0
  %23 = sub nuw nsw i32 30, %11
  %24 = shl nuw nsw i32 1, %23
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 32
  %27 = zext i32 %10 to i64
  %28 = udiv i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = mul i32 %10, %29
  %31 = sub i32 0, %30
  %32 = shl i32 %29, 1
  %33 = shl i32 %31, 1
  %34 = icmp uge i32 %33, %10
  %35 = icmp slt i32 %31, 0
  %36 = or i1 %35, %34
  %37 = zext i1 %36 to i32
  %38 = trunc nuw nsw i32 %12 to i8
  %39 = or disjoint i32 %32, 1
  %40 = add i32 %39, %37
  %41 = select i1 %22, i8 -64, i8 64
  %42 = or disjoint i8 %41, %38
  %43 = sext i32 %40 to i64
  br label %44

44:                                               ; preds = %15, %21
  %45 = phi i64 [ 0, %15 ], [ %43, %21 ]
  %46 = phi i8 [ %20, %15 ], [ %42, %21 ]
  %47 = bitcast <4 x i64> %0 to <8 x i32>
  %48 = and i8 %46, 31
  %49 = ashr i8 %46, 7
  %50 = sext i8 %49 to i32
  %51 = lshr i8 %46, 5
  %52 = and i8 %51, 1
  %53 = zext nneg i8 %52 to i32
  %54 = zext nneg i8 %48 to i32
  %55 = shl nuw i32 1, %54
  %56 = sub nuw i32 %55, %53
  %57 = extractelement <8 x i32> %47, i64 0
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %45, %58
  %60 = lshr i64 %59, 32
  %61 = trunc nuw i64 %60 to i32
  %62 = add nsw i32 %57, %61
  %63 = icmp slt i32 %62, 0
  %64 = select i1 %63, i32 %56, i32 0
  %65 = add i32 %64, %62
  %66 = ashr i32 %65, %54
  %67 = xor i32 %66, %50
  %68 = sub nsw i32 %67, %50
  %69 = insertelement <8 x i32> poison, i32 %68, i64 0
  %70 = extractelement <8 x i32> %47, i64 1
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %45, %71
  %73 = lshr i64 %72, 32
  %74 = trunc nuw i64 %73 to i32
  %75 = add nsw i32 %70, %74
  %76 = icmp slt i32 %75, 0
  %77 = select i1 %76, i32 %56, i32 0
  %78 = add i32 %77, %75
  %79 = ashr i32 %78, %54
  %80 = xor i32 %79, %50
  %81 = sub nsw i32 %80, %50
  %82 = insertelement <8 x i32> %69, i32 %81, i64 1
  %83 = extractelement <8 x i32> %47, i64 2
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %45, %84
  %86 = lshr i64 %85, 32
  %87 = trunc nuw i64 %86 to i32
  %88 = add nsw i32 %83, %87
  %89 = icmp slt i32 %88, 0
  %90 = select i1 %89, i32 %56, i32 0
  %91 = add i32 %90, %88
  %92 = ashr i32 %91, %54
  %93 = xor i32 %92, %50
  %94 = sub nsw i32 %93, %50
  %95 = insertelement <8 x i32> %82, i32 %94, i64 2
  %96 = extractelement <8 x i32> %47, i64 3
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %45, %97
  %99 = lshr i64 %98, 32
  %100 = trunc nuw i64 %99 to i32
  %101 = add nsw i32 %96, %100
  %102 = icmp slt i32 %101, 0
  %103 = select i1 %102, i32 %56, i32 0
  %104 = add i32 %103, %101
  %105 = ashr i32 %104, %54
  %106 = xor i32 %105, %50
  %107 = sub nsw i32 %106, %50
  %108 = insertelement <8 x i32> %95, i32 %107, i64 3
  %109 = extractelement <8 x i32> %47, i64 4
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %45, %110
  %112 = lshr i64 %111, 32
  %113 = trunc nuw i64 %112 to i32
  %114 = add nsw i32 %109, %113
  %115 = icmp slt i32 %114, 0
  %116 = select i1 %115, i32 %56, i32 0
  %117 = add i32 %116, %114
  %118 = ashr i32 %117, %54
  %119 = xor i32 %118, %50
  %120 = sub nsw i32 %119, %50
  %121 = insertelement <8 x i32> %108, i32 %120, i64 4
  %122 = extractelement <8 x i32> %47, i64 5
  %123 = sext i32 %122 to i64
  %124 = mul nsw i64 %45, %123
  %125 = lshr i64 %124, 32
  %126 = trunc nuw i64 %125 to i32
  %127 = add nsw i32 %122, %126
  %128 = icmp slt i32 %127, 0
  %129 = select i1 %128, i32 %56, i32 0
  %130 = add i32 %129, %127
  %131 = ashr i32 %130, %54
  %132 = xor i32 %131, %50
  %133 = sub nsw i32 %132, %50
  %134 = insertelement <8 x i32> %121, i32 %133, i64 5
  %135 = extractelement <8 x i32> %47, i64 6
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %45, %136
  %138 = lshr i64 %137, 32
  %139 = trunc nuw i64 %138 to i32
  %140 = add nsw i32 %135, %139
  %141 = icmp slt i32 %140, 0
  %142 = select i1 %141, i32 %56, i32 0
  %143 = add i32 %142, %140
  %144 = ashr i32 %143, %54
  %145 = xor i32 %144, %50
  %146 = sub nsw i32 %145, %50
  %147 = insertelement <8 x i32> %134, i32 %146, i64 6
  %148 = extractelement <8 x i32> %47, i64 7
  %149 = sext i32 %148 to i64
  %150 = mul nsw i64 %45, %149
  %151 = lshr i64 %150, 32
  %152 = trunc nuw i64 %151 to i32
  %153 = add nsw i32 %148, %152
  %154 = icmp slt i32 %153, 0
  %155 = select i1 %154, i32 %56, i32 0
  %156 = add i32 %155, %153
  %157 = ashr i32 %156, %54
  %158 = xor i32 %157, %50
  %159 = sub nsw i32 %158, %50
  %160 = insertelement <8 x i32> %147, i32 %159, i64 7
  %161 = bitcast <8 x i32> %160 to <4 x i64>
  br label %162

162:                                              ; preds = %2, %44
  %163 = phi <4 x i64> [ %161, %44 ], [ %0, %2 ]
  ret <4 x i64> %163
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u64_branchfree_lanewise(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %72, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %7 = icmp samesign ult i64 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i64 62, %5
  br label %28

10:                                               ; preds = %4
  %11 = xor i64 %5, 63
  %12 = shl nuw i64 1, %11
  %13 = zext i64 %12 to i128
  %14 = shl nuw i128 %13, 64
  %15 = zext i64 %1 to i128
  %16 = udiv i128 %14, %15
  %17 = trunc i128 %16 to i64
  %18 = mul i64 %1, %17
  %19 = sub i64 0, %18
  %20 = shl i64 %17, 1
  %21 = shl i64 %19, 1
  %22 = icmp uge i64 %21, %1
  %23 = icmp slt i64 %19, 0
  %24 = or i1 %23, %22
  %25 = zext i1 %24 to i64
  %26 = or disjoint i64 %20, 1
  %27 = add i64 %26, %25
  br label %28

28:                                               ; preds = %8, %10
  %29 = phi i64 [ 0, %8 ], [ %27, %10 ]
  %30 = phi i64 [ %9, %8 ], [ %11, %10 ]
  %31 = zext i64 %29 to i128
  %32 = extractelement <4 x i64> %0, i64 0
  %33 = zext i64 %32 to i128
  %34 = mul nuw i128 %33, %31
  %35 = lshr i128 %34, 64
  %36 = trunc nuw i128 %35 to i64
  %37 = sub i64 %32, %36
  %38 = lshr i64 %37, 1
  %39 = add i64 %38, %36
  %40 = lshr i64 %39, %30
  %41 = insertelement <4 x i64> poison, i64 %40, i64 0
  %42 = extractelement <4 x i64> %0, i64 1
  %43 = zext i64 %42 to i128
  %44 = mul nuw i128 %43, %31
  %45 = lshr i128 %44, 64
  %46 = trunc nuw i128 %45 to i64
  %47 = sub i64 %42, %46
  %48 = lshr i64 %47, 1
  %49 = add i64 %48, %46
  %50 = lshr i64 %49, %30
  %51 = insertelement <4 x i64> %41, i64 %50, i64 1
  %52 = extractelement <4 x i64> %0, i64 2
  %53 = zext i64 %52 to i128
  %54 = mul nuw i128 %53, %31
  %55 = lshr i128 %54, 64
  %56 = trunc nuw i128 %55 to i64
  %57 = sub i64 %52, %56
  %58 = lshr i64 %57, 1
  %59 = add i64 %58, %56
  %60 = lshr i64 %59, %30
  %61 = insertelement <4 x i64> %51, i64 %60, i64 2
  %62 = extractelement <4 x i64> %0, i64 3
  %63 = zext i64 %62 to i128
  %64 = mul nuw i128 %63, %31
  %65 = lshr i128 %64, 64
  %66 = trunc nuw i128 %65 to i64
  %67 = sub i64 %62, %66
  %68 = lshr i64 %67, 1
  %69 = add i64 %68, %66
  %70 = lshr i64 %69, %30
  %71 = insertelement <4 x i64> %61, i64 %70, i64 3
  br label %72

72:                                               ; preds = %2, %28
  %73 = phi <4 x i64> [ %71, %28 ], [ %0, %2 ]
  ret <4 x i64> %73
}

; Function Attrs: nofree nounwind uwtable
define dso_local <4 x i64> @target_s64_branchfree_lanewise(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  switch i64 %1, label %9 [
    i64 0, label %108
    i64 1, label %3
    i64 -1, label %6
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 1233, ptr noundef nonnull @__func__.libdivide_s64_branchfree_gen, ptr noundef nonnull @.str.2) #6
  tail call void @exit(i32 noundef -1) #7
  unreachable

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 1236, ptr noundef nonnull @__func__.libdivide_s64_branchfree_gen, ptr noundef nonnull @.str.3) #6
  tail call void @exit(i32 noundef -1) #7
  unreachable

9:                                                ; preds = %2
  %10 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %11 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %10, i1 true)
  %12 = trunc nuw nsw i64 %11 to i32
  %13 = xor i32 %12, 63
  %14 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %10)
  %15 = icmp samesign ult i64 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = lshr i64 %1, 56
  %18 = trunc nuw nsw i64 %17 to i32
  %19 = and i32 %18, 128
  %20 = or disjoint i32 %13, %19
  %21 = trunc nuw i32 %20 to i8
  br label %44

22:                                               ; preds = %9
  %23 = icmp slt i64 %1, 0
  %24 = sub nuw nsw i64 62, %11
  %25 = shl nuw nsw i64 1, %24
  %26 = zext nneg i64 %25 to i128
  %27 = shl nuw nsw i128 %26, 64
  %28 = zext i64 %10 to i128
  %29 = udiv i128 %27, %28
  %30 = trunc i128 %29 to i64
  %31 = mul i64 %10, %30
  %32 = sub i64 0, %31
  %33 = shl i64 %30, 1
  %34 = shl i64 %32, 1
  %35 = icmp uge i64 %34, %10
  %36 = icmp slt i64 %32, 0
  %37 = or i1 %36, %35
  %38 = zext i1 %37 to i64
  %39 = trunc nuw nsw i32 %13 to i8
  %40 = or disjoint i64 %33, 1
  %41 = add i64 %40, %38
  %42 = select i1 %23, i8 -64, i8 64
  %43 = or disjoint i8 %42, %39
  br label %44

44:                                               ; preds = %16, %22
  %45 = phi i64 [ 0, %16 ], [ %41, %22 ]
  %46 = phi i8 [ %21, %16 ], [ %43, %22 ]
  %47 = and i8 %46, 63
  %48 = ashr i8 %46, 7
  %49 = sext i8 %48 to i64
  %50 = sext i64 %45 to i128
  %51 = icmp eq i64 %45, 0
  %52 = zext nneg i8 %47 to i64
  %53 = shl nuw i64 1, %52
  %54 = sext i1 %51 to i64
  %55 = add i64 %53, %54
  %56 = extractelement <4 x i64> %0, i64 0
  %57 = sext i64 %56 to i128
  %58 = mul nsw i128 %57, %50
  %59 = lshr i128 %58, 64
  %60 = trunc nuw i128 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = icmp slt i64 %61, 0
  %63 = select i1 %62, i64 %55, i64 0
  %64 = add i64 %63, %61
  %65 = ashr i64 %64, %52
  %66 = xor i64 %65, %49
  %67 = sub nsw i64 %66, %49
  %68 = insertelement <4 x i64> poison, i64 %67, i64 0
  %69 = extractelement <4 x i64> %0, i64 1
  %70 = sext i64 %69 to i128
  %71 = mul nsw i128 %70, %50
  %72 = lshr i128 %71, 64
  %73 = trunc nuw i128 %72 to i64
  %74 = add nsw i64 %69, %73
  %75 = icmp slt i64 %74, 0
  %76 = select i1 %75, i64 %55, i64 0
  %77 = add i64 %76, %74
  %78 = ashr i64 %77, %52
  %79 = xor i64 %78, %49
  %80 = sub nsw i64 %79, %49
  %81 = insertelement <4 x i64> %68, i64 %80, i64 1
  %82 = extractelement <4 x i64> %0, i64 2
  %83 = sext i64 %82 to i128
  %84 = mul nsw i128 %83, %50
  %85 = lshr i128 %84, 64
  %86 = trunc nuw i128 %85 to i64
  %87 = add nsw i64 %82, %86
  %88 = icmp slt i64 %87, 0
  %89 = select i1 %88, i64 %55, i64 0
  %90 = add i64 %89, %87
  %91 = ashr i64 %90, %52
  %92 = xor i64 %91, %49
  %93 = sub nsw i64 %92, %49
  %94 = insertelement <4 x i64> %81, i64 %93, i64 2
  %95 = extractelement <4 x i64> %0, i64 3
  %96 = sext i64 %95 to i128
  %97 = mul nsw i128 %96, %50
  %98 = lshr i128 %97, 64
  %99 = trunc nuw i128 %98 to i64
  %100 = add nsw i64 %95, %99
  %101 = icmp slt i64 %100, 0
  %102 = select i1 %101, i64 %55, i64 0
  %103 = add i64 %102, %100
  %104 = ashr i64 %103, %52
  %105 = xor i64 %104, %49
  %106 = sub nsw i64 %105, %49
  %107 = insertelement <4 x i64> %94, i64 %106, i64 3
  br label %108

108:                                              ; preds = %2, %44
  %109 = phi <4 x i64> [ %107, %44 ], [ %0, %2 ]
  ret <4 x i64> %109
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef, ptr noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold nounwind }
attributes #7 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
