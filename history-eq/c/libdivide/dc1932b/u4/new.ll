; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/dc1932b/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/dc1932b/wrap.c"
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
  %13 = urem i128 %8, %12
  %14 = trunc i128 %13 to i64
  ret i64 %14
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
  %13 = urem i128 %8, %12
  %14 = lshr i128 %13, 64
  %15 = trunc nuw i128 %14 to i64
  ret i64 %15
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
  br label %18

18:                                               ; preds = %4, %6
  %19 = phi i64 [ %17, %6 ], [ 0, %4 ]
  ret i64 %19
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_recover_api(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %154, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %5 = icmp samesign ult i64 %4, 2
  br i1 %5, label %154, label %6

6:                                                ; preds = %3
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = xor i32 %8, 63
  %10 = zext nneg i32 %9 to i64
  %11 = shl nuw i64 1, %10
  %12 = icmp ult i64 %11, %0
  br i1 %12, label %13, label %61

13:                                               ; preds = %6
  %14 = shl i64 %0, %7
  %15 = shl i64 %11, %7
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
  %58 = lshr i64 %57, %7
  %59 = shl i64 %34, 32
  %60 = add i64 %54, %59
  br label %61

61:                                               ; preds = %6, %53
  %62 = phi i64 [ %58, %53 ], [ -1, %6 ]
  %63 = phi i64 [ %60, %53 ], [ -1, %6 ]
  %64 = sub i64 %0, %62
  %65 = icmp ult i64 %64, %11
  br i1 %65, label %92, label %66

66:                                               ; preds = %61
  %67 = shl i64 %63, 1
  %68 = shl i64 %62, 1
  %69 = icmp uge i64 %68, %0
  %70 = icmp slt i64 %62, 0
  %71 = or i1 %70, %69
  %72 = zext i1 %71 to i64
  %73 = or disjoint i64 %67, %72
  %74 = add i64 %73, 1
  %75 = zext nneg i32 %9 to i64
  %76 = shl nuw i64 1, %75
  %77 = zext i64 %76 to i128
  %78 = shl nuw i128 %77, 64
  %79 = zext i64 %74 to i128
  %80 = or disjoint i128 %79, 18446744073709551616
  %81 = freeze i128 %78
  %82 = freeze i128 %80
  %83 = udiv i128 %81, %82
  %84 = mul i128 %83, %82
  %85 = sub i128 %81, %84
  %86 = trunc i128 %85 to i64
  %87 = lshr i128 %85, 64
  %88 = trunc nuw nsw i128 %87 to i64
  %89 = trunc nuw i128 %83 to i64
  %90 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %86, i64 1)
  %91 = icmp samesign ugt i64 %90, 1
  br i1 %91, label %149, label %143

92:                                               ; preds = %61
  %93 = add i64 %63, 1
  %94 = zext nneg i32 %9 to i64
  %95 = shl nuw i64 1, %94
  %96 = icmp ult i64 %95, %93
  br i1 %96, label %97, label %154

97:                                               ; preds = %92
  %98 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %93, i1 true)
  %99 = shl i64 %93, %98
  %100 = shl i64 %95, %98
  %101 = lshr i64 %99, 32
  %102 = and i64 %99, 4294967295
  %103 = udiv i64 %100, %101
  %104 = mul i64 %103, %101
  %105 = urem i64 %100, %101
  br label %106

106:                                              ; preds = %114, %97
  %107 = phi i64 [ %103, %97 ], [ %115, %114 ]
  %108 = phi i64 [ %105, %97 ], [ %116, %114 ]
  %109 = icmp ugt i64 %107, 4294967295
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = mul nuw i64 %107, %102
  %112 = shl i64 %108, 32
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110, %106
  %115 = add i64 %107, -1
  %116 = add i64 %108, %101
  %117 = icmp ult i64 %116, 4294967296
  br i1 %117, label %106, label %118

118:                                              ; preds = %114, %110
  %119 = phi i64 [ %115, %114 ], [ %107, %110 ]
  %120 = shl i64 %100, 32
  %121 = mul i64 %119, %99
  %122 = sub i64 %120, %121
  %123 = udiv i64 %122, %101
  %124 = mul i64 %123, %101
  %125 = urem i64 %122, %101
  br label %126

126:                                              ; preds = %134, %118
  %127 = phi i64 [ %123, %118 ], [ %135, %134 ]
  %128 = phi i64 [ %125, %118 ], [ %136, %134 ]
  %129 = icmp ugt i64 %127, 4294967295
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = mul nuw i64 %127, %102
  %132 = shl i64 %128, 32
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130, %126
  %135 = add i64 %127, -1
  %136 = add i64 %128, %101
  %137 = icmp ult i64 %136, 4294967296
  br i1 %137, label %126, label %138

138:                                              ; preds = %134, %130
  %139 = phi i64 [ %135, %134 ], [ %127, %130 ]
  %140 = shl i64 %119, 32
  %141 = or disjoint i64 %140, 1
  %142 = add i64 %141, %139
  br label %154

143:                                              ; preds = %66
  %144 = shl i64 %86, 1
  %145 = icmp eq i64 %90, 1
  %146 = icmp uge i64 %144, %74
  %147 = select i1 %145, i1 %146, i1 false
  %148 = zext i1 %147 to i64
  br label %149

149:                                              ; preds = %143, %66
  %150 = phi i64 [ 1, %66 ], [ %148, %143 ]
  %151 = shl i64 %89, 1
  %152 = or disjoint i64 %151, 1
  %153 = add i64 %152, %150
  br label %154

154:                                              ; preds = %3, %138, %92, %149, %1
  %155 = phi i64 [ 0, %1 ], [ %153, %149 ], [ %142, %138 ], [ 0, %92 ], [ %0, %3 ]
  ret i64 %155
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_recover_api(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %174, label %3

3:                                                ; preds = %1
  %4 = icmp slt i64 %0, 0
  %5 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 true)
  %6 = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %5)
  %7 = icmp samesign ult i64 %6, 2
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %0, i1 true)
  %10 = trunc nuw nsw i64 %9 to i8
  %11 = lshr i64 %0, 56
  %12 = trunc nuw i64 %11 to i8
  %13 = and i8 %12, -128
  %14 = or disjoint i8 %13, %10
  br label %102

15:                                               ; preds = %3
  %16 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %5, i1 true)
  %17 = trunc nuw nsw i64 %16 to i32
  %18 = xor i32 %17, 63
  %19 = sub nuw nsw i32 62, %17
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw nsw i64 1, %20
  %22 = icmp samesign ult i64 %21, %5
  br i1 %22, label %23, label %71

23:                                               ; preds = %15
  %24 = shl i64 %5, %16
  %25 = shl i64 %21, %16
  %26 = lshr i64 %24, 32
  %27 = and i64 %24, 4294967294
  %28 = udiv i64 %25, %26
  %29 = mul i64 %28, %26
  %30 = urem i64 %25, %26
  br label %31

31:                                               ; preds = %39, %23
  %32 = phi i64 [ %28, %23 ], [ %40, %39 ]
  %33 = phi i64 [ %30, %23 ], [ %41, %39 ]
  %34 = icmp ugt i64 %32, 4294967295
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = mul nuw i64 %32, %27
  %37 = shl i64 %33, 32
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31
  %40 = add i64 %32, -1
  %41 = add i64 %33, %26
  %42 = icmp ult i64 %41, 4294967296
  br i1 %42, label %31, label %43

43:                                               ; preds = %39, %35
  %44 = phi i64 [ %40, %39 ], [ %32, %35 ]
  %45 = shl i64 %25, 32
  %46 = mul i64 %44, %24
  %47 = sub i64 %45, %46
  %48 = udiv i64 %47, %26
  %49 = mul i64 %48, %26
  %50 = urem i64 %47, %26
  br label %51

51:                                               ; preds = %59, %43
  %52 = phi i64 [ %48, %43 ], [ %60, %59 ]
  %53 = phi i64 [ %50, %43 ], [ %61, %59 ]
  %54 = icmp ugt i64 %52, 4294967295
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = mul nuw i64 %52, %27
  %57 = shl i64 %53, 32
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51
  %60 = add i64 %52, -1
  %61 = add i64 %53, %26
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %51, label %63

63:                                               ; preds = %59, %55
  %64 = phi i64 [ %60, %59 ], [ %52, %55 ]
  %65 = shl i64 %47, 32
  %66 = mul i64 %64, %24
  %67 = sub i64 %65, %66
  %68 = lshr i64 %67, %16
  %69 = shl i64 %44, 32
  %70 = add i64 %64, %69
  br label %71

71:                                               ; preds = %15, %63
  %72 = phi i64 [ %68, %63 ], [ -1, %15 ]
  %73 = phi i64 [ %70, %63 ], [ -1, %15 ]
  %74 = sub i64 %5, %72
  %75 = zext nneg i32 %18 to i64
  %76 = lshr i64 %74, %75
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = trunc nuw nsw i32 %19 to i8
  br label %94

80:                                               ; preds = %71
  %81 = shl i64 %73, 1
  %82 = shl i64 %72, 1
  %83 = icmp uge i64 %82, %5
  %84 = icmp slt i64 %72, 0
  %85 = or i1 %84, %83
  %86 = zext i1 %85 to i64
  %87 = or disjoint i64 %81, %86
  %88 = lshr i64 %0, 56
  %89 = trunc nuw nsw i64 %88 to i32
  %90 = and i32 %89, 128
  %91 = or disjoint i32 %18, %90
  %92 = trunc nuw i32 %91 to i8
  %93 = or disjoint i8 %92, 64
  br label %94

94:                                               ; preds = %78, %80
  %95 = phi i8 [ %79, %78 ], [ %93, %80 ]
  %96 = phi i64 [ %73, %78 ], [ %87, %80 ]
  %97 = add i64 %96, 1
  %98 = xor i64 %96, -1
  %99 = select i1 %4, i64 %98, i64 %97
  %100 = and i8 %95, 63
  %101 = icmp eq i64 %99, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %8, %94
  %103 = phi i8 [ %10, %8 ], [ %100, %94 ]
  %104 = phi i8 [ %14, %8 ], [ %95, %94 ]
  %105 = zext nneg i8 %103 to i64
  %106 = shl nuw i64 1, %105
  %107 = sub i64 0, %106
  %108 = icmp slt i8 %104, 0
  %109 = select i1 %108, i64 %107, i64 %106
  br label %174

110:                                              ; preds = %94
  %111 = and i8 %95, 64
  %112 = icmp eq i8 %111, 0
  %113 = lshr i8 %95, 7
  %114 = zext nneg i8 %113 to i32
  %115 = lshr i64 %99, 63
  %116 = trunc nuw nsw i64 %115 to i32
  %117 = select i1 %112, i32 %116, i32 %114
  %118 = icmp eq i32 %117, 0
  %119 = sub nsw i64 0, %99
  %120 = select i1 %118, i64 %99, i64 %119
  %121 = zext nneg i8 %100 to i64
  %122 = shl nuw i64 1, %121
  %123 = icmp ult i64 %122, %120
  br i1 %123, label %124, label %169

124:                                              ; preds = %110
  %125 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %120, i1 true)
  %126 = shl i64 %120, %125
  %127 = shl i64 %122, %125
  %128 = lshr i64 %126, 32
  %129 = and i64 %126, 4294967295
  %130 = udiv i64 %127, %128
  %131 = mul i64 %130, %128
  %132 = urem i64 %127, %128
  br label %133

133:                                              ; preds = %141, %124
  %134 = phi i64 [ %130, %124 ], [ %142, %141 ]
  %135 = phi i64 [ %132, %124 ], [ %143, %141 ]
  %136 = icmp ugt i64 %134, 4294967295
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = mul nuw i64 %134, %129
  %139 = shl i64 %135, 32
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137, %133
  %142 = add i64 %134, -1
  %143 = add i64 %135, %128
  %144 = icmp ult i64 %143, 4294967296
  br i1 %144, label %133, label %145

145:                                              ; preds = %141, %137
  %146 = phi i64 [ %142, %141 ], [ %134, %137 ]
  %147 = shl i64 %127, 32
  %148 = mul i64 %146, %126
  %149 = sub i64 %147, %148
  %150 = udiv i64 %149, %128
  %151 = mul i64 %150, %128
  %152 = urem i64 %149, %128
  br label %153

153:                                              ; preds = %161, %145
  %154 = phi i64 [ %150, %145 ], [ %162, %161 ]
  %155 = phi i64 [ %152, %145 ], [ %163, %161 ]
  %156 = icmp ugt i64 %154, 4294967295
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = mul nuw i64 %154, %129
  %159 = shl i64 %155, 32
  %160 = icmp ugt i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157, %153
  %162 = add i64 %154, -1
  %163 = add i64 %155, %128
  %164 = icmp ult i64 %163, 4294967296
  br i1 %164, label %153, label %165

165:                                              ; preds = %161, %157
  %166 = phi i64 [ %162, %161 ], [ %154, %157 ]
  %167 = shl i64 %146, 32
  %168 = add i64 %166, %167
  br label %169

169:                                              ; preds = %110, %165
  %170 = phi i64 [ %168, %165 ], [ -1, %110 ]
  %171 = add i64 %170, 1
  %172 = xor i64 %170, -1
  %173 = select i1 %118, i64 %171, i64 %172
  br label %174

174:                                              ; preds = %169, %102, %1
  %175 = phi i64 [ 0, %1 ], [ %109, %102 ], [ %173, %169 ]
  ret i64 %175
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

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
