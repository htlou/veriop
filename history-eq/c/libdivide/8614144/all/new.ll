; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/8614144/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/8614144/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_q(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = zext i64 %0 to i128
  %6 = shl nuw i128 %5, 64
  %7 = zext i64 %1 to i128
  %8 = or disjoint i128 %6, %7
  %9 = zext i64 %2 to i128
  %10 = shl nuw i128 %9, 64
  %11 = zext i64 %3 to i128
  %12 = or disjoint i128 %10, %11
  %13 = udiv i128 %8, %12
  %14 = trunc i128 %13 to i64
  ret i64 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_rlo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = zext i64 %0 to i128
  %6 = shl nuw i128 %5, 64
  %7 = zext i64 %1 to i128
  %8 = or disjoint i128 %6, %7
  %9 = zext i64 %2 to i128
  %10 = shl nuw i128 %9, 64
  %11 = zext i64 %3 to i128
  %12 = or disjoint i128 %10, %11
  %13 = udiv i128 %8, %12
  %14 = trunc i128 %13 to i64
  %15 = mul i64 %3, %14
  %16 = sub i64 %1, %15
  ret i64 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_rhi(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = zext i64 %0 to i128
  %6 = shl nuw i128 %5, 64
  %7 = zext i64 %1 to i128
  %8 = or disjoint i128 %6, %7
  %9 = zext i64 %2 to i128
  %10 = shl nuw i128 %9, 64
  %11 = zext i64 %3 to i128
  %12 = or disjoint i128 %10, %11
  %13 = udiv i128 %8, %12
  %14 = and i128 %13, 18446744073709551615
  %15 = mul i128 %14, %12
  %16 = sub i128 %8, %15
  %17 = lshr i128 %16, 64
  %18 = trunc nuw i128 %17 to i64
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_pre_q(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = zext i64 %0 to i128
  %8 = shl nuw i128 %7, 64
  %9 = zext i64 %1 to i128
  %10 = or disjoint i128 %8, %9
  %11 = zext i64 %2 to i128
  %12 = shl nuw i128 %11, 64
  %13 = zext i64 %3 to i128
  %14 = or disjoint i128 %12, %13
  %15 = udiv i128 %10, %14
  %16 = trunc i128 %15 to i64
  br label %27

17:                                               ; preds = %4
  %18 = icmp ult i64 %0, %3
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = zext i64 %0 to i128
  %21 = shl nuw i128 %20, 64
  %22 = zext i64 %1 to i128
  %23 = or disjoint i128 %21, %22
  %24 = zext i64 %3 to i128
  %25 = udiv i128 %23, %24
  %26 = trunc i128 %25 to i64
  br label %27

27:                                               ; preds = %6, %19, %17
  %28 = phi i64 [ 0, %17 ], [ %16, %6 ], [ %26, %19 ]
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_pre_rlo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = zext i64 %0 to i128
  %8 = shl nuw i128 %7, 64
  %9 = zext i64 %1 to i128
  %10 = or disjoint i128 %8, %9
  %11 = zext i64 %2 to i128
  %12 = shl nuw i128 %11, 64
  %13 = zext i64 %3 to i128
  %14 = or disjoint i128 %12, %13
  %15 = urem i128 %10, %14
  %16 = trunc i128 %15 to i64
  br label %27

17:                                               ; preds = %4
  %18 = icmp ult i64 %0, %3
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = zext i64 %0 to i128
  %21 = shl nuw i128 %20, 64
  %22 = zext i64 %1 to i128
  %23 = or disjoint i128 %21, %22
  %24 = zext i64 %3 to i128
  %25 = urem i128 %23, %24
  %26 = trunc nuw i128 %25 to i64
  br label %27

27:                                               ; preds = %6, %19, %17
  %28 = phi i64 [ 0, %17 ], [ %26, %19 ], [ %16, %6 ]
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_pre_rhi(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = zext i64 %0 to i128
  %8 = shl nuw i128 %7, 64
  %9 = zext i64 %1 to i128
  %10 = or disjoint i128 %8, %9
  %11 = zext i64 %2 to i128
  %12 = shl nuw i128 %11, 64
  %13 = zext i64 %3 to i128
  %14 = or disjoint i128 %12, %13
  %15 = urem i128 %10, %14
  %16 = lshr i128 %15, 64
  %17 = trunc nuw i128 %16 to i64
  br label %32

18:                                               ; preds = %4
  %19 = icmp ult i64 %0, %3
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = zext i64 %0 to i128
  %22 = shl nuw i128 %21, 64
  %23 = zext i64 %1 to i128
  %24 = or disjoint i128 %22, %23
  %25 = zext i64 %3 to i128
  %26 = udiv i128 %24, %25
  %27 = and i128 %26, 18446744073709551615
  %28 = mul nuw i128 %27, %25
  %29 = sub i128 %24, %28
  %30 = lshr i128 %29, 64
  %31 = trunc nuw i128 %30 to i64
  br label %32

32:                                               ; preds = %6, %20, %18
  %33 = phi i64 [ 0, %18 ], [ %31, %20 ], [ %17, %6 ]
  ret i64 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_recover_api(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %157, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  %9 = zext nneg i32 %6 to i64
  %10 = shl nuw i64 1, %9
  br i1 %8, label %157, label %11

11:                                               ; preds = %3
  %12 = icmp ult i64 %10, %0
  br i1 %12, label %13, label %61

13:                                               ; preds = %11
  %14 = shl i64 %0, %4
  %15 = shl i64 %10, %4
  %16 = lshr i64 %14, 32
  %17 = and i64 %14, 4294967295
  %18 = udiv i64 %15, %16
  %19 = mul i64 %18, %16
  %20 = urem i64 %15, %16
  br label %21

21:                                               ; preds = %29, %13
  %22 = phi i64 [ %18, %13 ], [ %30, %29 ]
  %23 = phi i64 [ %20, %13 ], [ %31, %29 ]
  %24 = icmp ugt i64 %22, 4294967295
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = mul nuw i64 %22, %17
  %27 = shl i64 %23, 32
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = add i64 %22, -1
  %31 = add i64 %23, %16
  %32 = icmp ult i64 %31, 4294967296
  br i1 %32, label %21, label %33

33:                                               ; preds = %29, %25
  %34 = phi i64 [ %30, %29 ], [ %22, %25 ]
  %35 = shl i64 %15, 32
  %36 = mul i64 %34, %14
  %37 = sub i64 %35, %36
  %38 = udiv i64 %37, %16
  %39 = mul i64 %38, %16
  %40 = urem i64 %37, %16
  br label %41

41:                                               ; preds = %49, %33
  %42 = phi i64 [ %38, %33 ], [ %50, %49 ]
  %43 = phi i64 [ %40, %33 ], [ %51, %49 ]
  %44 = icmp ugt i64 %42, 4294967295
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = mul nuw i64 %42, %17
  %47 = shl i64 %43, 32
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %41
  %50 = add i64 %42, -1
  %51 = add i64 %43, %16
  %52 = icmp ult i64 %51, 4294967296
  br i1 %52, label %41, label %53

53:                                               ; preds = %49, %45
  %54 = phi i64 [ %50, %49 ], [ %42, %45 ]
  %55 = shl i64 %37, 32
  %56 = mul i64 %54, %14
  %57 = sub i64 %55, %56
  %58 = lshr i64 %57, %4
  %59 = shl i64 %34, 32
  %60 = add i64 %54, %59
  br label %61

61:                                               ; preds = %53, %11
  %62 = phi i64 [ %58, %53 ], [ -1, %11 ]
  %63 = phi i64 [ %60, %53 ], [ -1, %11 ]
  %64 = sub i64 %0, %62
  %65 = icmp ult i64 %64, %10
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = shl i64 %63, 1
  %68 = shl i64 %62, 1
  %69 = icmp uge i64 %68, %0
  %70 = icmp slt i64 %62, 0
  %71 = or i1 %70, %69
  %72 = zext i1 %71 to i64
  %73 = or disjoint i64 %67, %72
  %74 = add i64 %73, 1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %127, label %130

76:                                               ; preds = %61
  %77 = add i64 %63, 1
  %78 = zext nneg i32 %6 to i64
  %79 = shl nuw i64 1, %78
  %80 = icmp ult i64 %79, %77
  br i1 %80, label %81, label %157

81:                                               ; preds = %76
  %82 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %77, i1 true)
  %83 = shl i64 %77, %82
  %84 = shl i64 %79, %82
  %85 = lshr i64 %83, 32
  %86 = and i64 %83, 4294967295
  %87 = udiv i64 %84, %85
  %88 = mul i64 %87, %85
  %89 = urem i64 %84, %85
  br label %90

90:                                               ; preds = %98, %81
  %91 = phi i64 [ %87, %81 ], [ %99, %98 ]
  %92 = phi i64 [ %89, %81 ], [ %100, %98 ]
  %93 = icmp ugt i64 %91, 4294967295
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = mul nuw i64 %91, %86
  %96 = shl i64 %92, 32
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94, %90
  %99 = add i64 %91, -1
  %100 = add i64 %92, %85
  %101 = icmp ult i64 %100, 4294967296
  br i1 %101, label %90, label %102

102:                                              ; preds = %98, %94
  %103 = phi i64 [ %99, %98 ], [ %91, %94 ]
  %104 = shl i64 %84, 32
  %105 = mul i64 %103, %83
  %106 = sub i64 %104, %105
  %107 = udiv i64 %106, %85
  %108 = mul i64 %107, %85
  %109 = urem i64 %106, %85
  br label %110

110:                                              ; preds = %118, %102
  %111 = phi i64 [ %107, %102 ], [ %119, %118 ]
  %112 = phi i64 [ %109, %102 ], [ %120, %118 ]
  %113 = icmp ugt i64 %111, 4294967295
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = mul nuw i64 %111, %86
  %116 = shl i64 %112, 32
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %114, %110
  %119 = add i64 %111, -1
  %120 = add i64 %112, %85
  %121 = icmp ult i64 %120, 4294967296
  br i1 %121, label %110, label %122

122:                                              ; preds = %118, %114
  %123 = phi i64 [ %119, %118 ], [ %111, %114 ]
  %124 = shl i64 %103, 32
  %125 = or disjoint i64 %124, 1
  %126 = add i64 %125, %123
  br label %157

127:                                              ; preds = %66
  %128 = sub nuw nsw i64 64, %4
  %129 = shl nuw i64 1, %128
  br label %157

130:                                              ; preds = %66
  %131 = zext nneg i32 %6 to i64
  %132 = shl nuw i64 1, %131
  %133 = zext i64 %132 to i128
  %134 = shl nuw i128 %133, 64
  %135 = zext i64 %74 to i128
  %136 = or disjoint i128 %135, 18446744073709551616
  %137 = udiv i128 %134, %136
  %138 = trunc nuw i128 %137 to i64
  %139 = mul nuw i128 %137, %136
  %140 = sub i128 %134, %139
  %141 = trunc i128 %140 to i64
  %142 = lshr i128 %140, 64
  %143 = trunc nuw i128 %142 to i64
  %144 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %141, i64 1)
  %145 = icmp ugt i64 %144, 1
  br i1 %145, label %152, label %146

146:                                              ; preds = %130
  %147 = shl i64 %141, 1
  %148 = icmp eq i64 %144, 1
  %149 = icmp uge i64 %147, %74
  %150 = select i1 %148, i1 %149, i1 false
  %151 = zext i1 %150 to i64
  br label %152

152:                                              ; preds = %146, %130
  %153 = phi i64 [ 1, %130 ], [ %151, %146 ]
  %154 = shl i64 %138, 1
  %155 = or disjoint i64 %154, 1
  %156 = add i64 %155, %153
  br label %157

157:                                              ; preds = %3, %122, %76, %152, %127, %1
  %158 = phi i64 [ 0, %1 ], [ %129, %127 ], [ %156, %152 ], [ %126, %122 ], [ 0, %76 ], [ %10, %3 ]
  ret i64 %158
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_bf_recover_api(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i64 %0, 2
  br i1 %2, label %108, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = sub nsw i64 62, %4
  br label %76

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %0
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = shl i64 %0, %4
  %17 = shl i64 %13, %4
  %18 = lshr i64 %16, 32
  %19 = and i64 %16, 4294967295
  %20 = udiv i64 %17, %18
  %21 = mul i64 %20, %18
  %22 = urem i64 %17, %18
  br label %23

23:                                               ; preds = %31, %15
  %24 = phi i64 [ %20, %15 ], [ %32, %31 ]
  %25 = phi i64 [ %22, %15 ], [ %33, %31 ]
  %26 = icmp ugt i64 %24, 4294967295
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = mul nuw i64 %24, %19
  %29 = shl i64 %25, 32
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = add i64 %24, -1
  %33 = add i64 %25, %18
  %34 = icmp ult i64 %33, 4294967296
  br i1 %34, label %23, label %35

35:                                               ; preds = %31, %27
  %36 = phi i64 [ %32, %31 ], [ %24, %27 ]
  %37 = shl i64 %17, 32
  %38 = mul i64 %36, %16
  %39 = sub i64 %37, %38
  %40 = udiv i64 %39, %18
  %41 = mul i64 %40, %18
  %42 = urem i64 %39, %18
  br label %43

43:                                               ; preds = %51, %35
  %44 = phi i64 [ %40, %35 ], [ %52, %51 ]
  %45 = phi i64 [ %42, %35 ], [ %53, %51 ]
  %46 = icmp ugt i64 %44, 4294967295
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = mul nuw i64 %44, %19
  %49 = shl i64 %45, 32
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = add i64 %44, -1
  %53 = add i64 %45, %18
  %54 = icmp ult i64 %53, 4294967296
  br i1 %54, label %43, label %55

55:                                               ; preds = %51, %47
  %56 = phi i64 [ %52, %51 ], [ %44, %47 ]
  %57 = shl i64 %39, 32
  %58 = mul i64 %56, %16
  %59 = sub i64 %57, %58
  %60 = lshr i64 %59, %4
  %61 = shl i64 %36, 33
  %62 = shl i64 %56, 1
  %63 = add i64 %62, %61
  %64 = or disjoint i64 %63, 1
  br label %65

65:                                               ; preds = %11, %55
  %66 = phi i64 [ %60, %55 ], [ -1, %11 ]
  %67 = phi i64 [ %64, %55 ], [ -1, %11 ]
  %68 = shl i64 %66, 1
  %69 = icmp uge i64 %68, %0
  %70 = icmp slt i64 %66, 0
  %71 = or i1 %70, %69
  %72 = zext i1 %71 to i64
  %73 = zext nneg i32 %6 to i64
  %74 = add i64 %67, %72
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %9, %65
  %77 = phi i64 [ %10, %9 ], [ %73, %65 ]
  %78 = add nsw i64 %77, 1
  %79 = and i64 %78, 255
  %80 = shl nuw i64 1, %79
  br label %108

81:                                               ; preds = %65
  %82 = zext nneg i32 %6 to i64
  %83 = shl nuw i64 1, %82
  %84 = zext i64 %83 to i128
  %85 = shl nuw i128 %84, 64
  %86 = zext i64 %74 to i128
  %87 = or disjoint i128 %86, 18446744073709551616
  %88 = udiv i128 %85, %87
  %89 = trunc nuw i128 %88 to i64
  %90 = mul nuw i128 %88, %87
  %91 = sub i128 %85, %90
  %92 = trunc i128 %91 to i64
  %93 = lshr i128 %91, 64
  %94 = trunc nuw i128 %93 to i64
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %92, i64 1)
  %96 = icmp ugt i64 %95, 1
  br i1 %96, label %103, label %97

97:                                               ; preds = %81
  %98 = shl i64 %92, 1
  %99 = icmp eq i64 %95, 1
  %100 = icmp uge i64 %98, %74
  %101 = select i1 %99, i1 %100, i1 false
  %102 = zext i1 %101 to i64
  br label %103

103:                                              ; preds = %97, %81
  %104 = phi i64 [ 1, %81 ], [ %102, %97 ]
  %105 = shl i64 %89, 1
  %106 = or disjoint i64 %105, 1
  %107 = add i64 %106, %104
  br label %108

108:                                              ; preds = %103, %76, %1
  %109 = phi i64 [ 0, %1 ], [ %80, %76 ], [ %107, %103 ]
  ret i64 %109
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
