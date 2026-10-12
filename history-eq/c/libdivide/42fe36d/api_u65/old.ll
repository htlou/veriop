; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/42fe36d/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/42fe36d/wrap.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.33.0"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_u32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %78, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %6 = icmp samesign ult i32 %5, 2
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = add i32 %1, -1
  %9 = xor i32 %8, %1
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %60, label %11

11:                                               ; preds = %7, %11
  %12 = phi i32 [ %15, %11 ], [ 0, %7 ]
  %13 = phi i32 [ %14, %11 ], [ %9, %7 ]
  %14 = lshr i32 %13, 1
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp ult i32 %13, 4
  br i1 %16, label %17, label %11

17:                                               ; preds = %11
  %18 = or i32 %15, 128
  br label %54

19:                                               ; preds = %4
  %20 = icmp sgt i32 %1, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %19, %21
  %22 = phi i32 [ %25, %21 ], [ 0, %19 ]
  %23 = phi i32 [ %24, %21 ], [ %1, %19 ]
  %24 = shl nuw i32 %23, 1
  %25 = add nuw nsw i32 %22, 1
  %26 = icmp sgt i32 %24, -1
  br i1 %26, label %21, label %27

27:                                               ; preds = %21, %19
  %28 = phi i32 [ 0, %19 ], [ %25, %21 ]
  %29 = sub nsw i32 31, %28
  %30 = lshr exact i32 -2147483648, %28
  %31 = zext i32 %30 to i64
  %32 = shl nuw i64 %31, 32
  %33 = zext i32 %1 to i64
  %34 = udiv i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = mul i32 %1, %35
  %37 = add i32 %36, %1
  %38 = icmp ult i32 %37, %30
  br i1 %38, label %49, label %39

39:                                               ; preds = %27
  %40 = sub i32 0, %36
  %41 = shl i64 %34, 1
  %42 = shl i32 %40, 1
  %43 = icmp uge i32 %42, %1
  %44 = icmp slt i32 %40, 0
  %45 = or i1 %44, %43
  %46 = zext i1 %45 to i64
  %47 = or disjoint i64 %41, %46
  %48 = or i32 %29, 64
  br label %49

49:                                               ; preds = %39, %27
  %50 = phi i32 [ %48, %39 ], [ %29, %27 ]
  %51 = phi i64 [ %47, %39 ], [ %34, %27 ]
  %52 = add i64 %51, 1
  %53 = and i64 %52, 4294967295
  br label %54

54:                                               ; preds = %17, %49
  %55 = phi i64 [ %53, %49 ], [ 0, %17 ]
  %56 = phi i32 [ %50, %49 ], [ %18, %17 ]
  %57 = trunc i32 %56 to i8
  %58 = and i32 %56, 255
  %59 = icmp sgt i8 %57, -1
  br i1 %59, label %64, label %60

60:                                               ; preds = %7, %54
  %61 = phi i32 [ %56, %54 ], [ 128, %7 ]
  %62 = and i32 %61, 31
  %63 = lshr i32 %0, %62
  br label %78

64:                                               ; preds = %54
  %65 = zext i32 %0 to i64
  %66 = mul nuw i64 %55, %65
  %67 = lshr i64 %66, 32
  %68 = trunc nuw i64 %67 to i32
  %69 = icmp samesign ult i8 %57, 64
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = sub i32 %0, %68
  %72 = lshr i32 %71, 1
  %73 = add i32 %72, %68
  %74 = and i32 %56, 31
  %75 = lshr i32 %73, %74
  br label %78

76:                                               ; preds = %64
  %77 = lshr i32 %68, %58
  br label %78

78:                                               ; preds = %76, %70, %60, %2
  %79 = phi i32 [ 0, %2 ], [ %63, %60 ], [ %75, %70 ], [ %77, %76 ]
  ret i32 %79
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %101, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 true)
  %7 = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %6)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = add nsw i32 %6, -1
  %11 = xor i32 %10, %6
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %9 ]
  %15 = phi i32 [ %16, %13 ], [ %11, %9 ]
  %16 = lshr i32 %15, 1
  %17 = add nuw nsw i32 %14, 1
  %18 = icmp ult i32 %15, 4
  br i1 %18, label %19, label %13

19:                                               ; preds = %13, %9
  %20 = phi i32 [ 0, %9 ], [ %17, %13 ]
  %21 = lshr i32 %1, 24
  %22 = and i32 %21, 128
  %23 = or i32 %22, %20
  %24 = or i32 %23, 32
  br label %64

25:                                               ; preds = %4, %25
  %26 = phi i32 [ %29, %25 ], [ 0, %4 ]
  %27 = phi i32 [ %28, %25 ], [ %6, %4 ]
  %28 = shl nuw i32 %27, 1
  %29 = add nuw nsw i32 %26, 1
  %30 = icmp sgt i32 %28, -1
  br i1 %30, label %25, label %31

31:                                               ; preds = %25
  %32 = sub nsw i32 29, %26
  %33 = shl nuw i32 1, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw i64 %34, 32
  %36 = zext nneg i32 %6 to i64
  %37 = udiv i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = mul i32 %6, %38
  %40 = add i32 %39, %6
  %41 = lshr exact i32 1073741824, %26
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %57, label %43

43:                                               ; preds = %31
  %44 = sub i32 0, %39
  %45 = sub nsw i32 30, %26
  %46 = shl i32 %38, 1
  %47 = shl i32 %44, 1
  %48 = icmp uge i32 %47, %6
  %49 = icmp slt i32 %44, 0
  %50 = or i1 %49, %48
  %51 = zext i1 %50 to i32
  %52 = or disjoint i32 %46, %51
  %53 = lshr i32 %1, 24
  %54 = and i32 %53, 128
  %55 = or i32 %54, %45
  %56 = or i32 %55, 64
  br label %57

57:                                               ; preds = %43, %31
  %58 = phi i32 [ %56, %43 ], [ %32, %31 ]
  %59 = phi i32 [ %52, %43 ], [ %38, %31 ]
  %60 = add i32 %59, 1
  %61 = xor i32 %59, -1
  %62 = select i1 %5, i32 %61, i32 %60
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %19, %57
  %65 = phi i64 [ 0, %19 ], [ %63, %57 ]
  %66 = phi i32 [ %24, %19 ], [ %58, %57 ]
  %67 = and i32 %66, 32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %64
  %70 = and i32 %66, 31
  %71 = shl nsw i32 -1, %70
  %72 = xor i32 %71, -1
  %73 = icmp slt i32 %0, 0
  %74 = select i1 %73, i32 %72, i32 0
  %75 = add nsw i32 %74, %0
  %76 = ashr i32 %75, %70
  %77 = shl i32 %66, 24
  %78 = ashr i32 %77, 31
  %79 = xor i32 %76, %78
  %80 = sub nsw i32 %79, %78
  br label %101

81:                                               ; preds = %64
  %82 = sext i32 %0 to i64
  %83 = mul nsw i64 %65, %82
  %84 = lshr i64 %83, 32
  %85 = trunc nuw i64 %84 to i32
  %86 = and i32 %66, 64
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = shl i32 %66, 24
  %90 = lshr i32 %89, 31
  %91 = ashr i32 %89, 31
  %92 = xor i32 %91, %0
  %93 = add i32 %90, %85
  %94 = add i32 %93, %92
  br label %95

95:                                               ; preds = %88, %81
  %96 = phi i32 [ %94, %88 ], [ %85, %81 ]
  %97 = and i32 %66, 31
  %98 = ashr i32 %96, %97
  %99 = lshr i32 %98, 31
  %100 = add nsw i32 %99, %98
  br label %101

101:                                              ; preds = %95, %69, %2
  %102 = phi i32 [ 0, %2 ], [ %80, %69 ], [ %100, %95 ]
  ret i32 %102
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %166, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %7, label %34

7:                                                ; preds = %4
  %8 = trunc i64 %1 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = add i32 %8, -1
  %12 = xor i32 %11, %8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %132, label %14

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %18, %14 ], [ 0, %10 ]
  %16 = phi i32 [ %17, %14 ], [ %12, %10 ]
  %17 = lshr i32 %16, 1
  %18 = add nuw nsw i32 %15, 1
  %19 = icmp ult i32 %16, 4
  br i1 %19, label %132, label %14

20:                                               ; preds = %7
  %21 = lshr exact i64 %1, 32
  %22 = trunc nuw i64 %21 to i32
  %23 = add i32 %22, -1
  %24 = xor i32 %23, %22
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %132, label %26

26:                                               ; preds = %20, %26
  %27 = phi i32 [ %30, %26 ], [ 0, %20 ]
  %28 = phi i32 [ %29, %26 ], [ %24, %20 ]
  %29 = lshr i32 %28, 1
  %30 = add nuw nsw i32 %27, 1
  %31 = icmp ult i32 %28, 4
  br i1 %31, label %32, label %26

32:                                               ; preds = %26
  %33 = add nuw nsw i32 %27, 33
  br label %132

34:                                               ; preds = %4
  %35 = icmp sgt i64 %1, -1
  br i1 %35, label %36, label %47

36:                                               ; preds = %34, %36
  %37 = phi i32 [ %40, %36 ], [ 0, %34 ]
  %38 = phi i64 [ %39, %36 ], [ %1, %34 ]
  %39 = shl nuw i64 %38, 1
  %40 = add nuw nsw i32 %37, 1
  %41 = icmp sgt i64 %39, -1
  br i1 %41, label %36, label %42

42:                                               ; preds = %36
  %43 = sub nsw i32 62, %37
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = icmp ult i64 %45, %1
  br i1 %46, label %49, label %108

47:                                               ; preds = %34
  %48 = icmp eq i64 %1, -9223372036854775808
  br i1 %48, label %108, label %57

49:                                               ; preds = %42, %49
  %50 = phi i32 [ %53, %49 ], [ 0, %42 ]
  %51 = phi i64 [ %52, %49 ], [ %1, %42 ]
  %52 = shl nuw i64 %51, 1
  %53 = add nuw nsw i32 %50, 1
  %54 = icmp sgt i64 %52, -1
  br i1 %54, label %49, label %55

55:                                               ; preds = %49
  %56 = zext nneg i32 %53 to i64
  br label %57

57:                                               ; preds = %47, %55
  %58 = phi i32 [ %43, %55 ], [ 63, %47 ]
  %59 = phi i64 [ %45, %55 ], [ -9223372036854775808, %47 ]
  %60 = phi i64 [ %56, %55 ], [ 0, %47 ]
  %61 = shl i64 %1, %60
  %62 = lshr i64 %61, 32
  %63 = and i64 %61, 4294967295
  %64 = shl i64 %59, %60
  %65 = udiv i64 %64, %62
  %66 = mul i64 %62, %65
  %67 = urem i64 %64, %62
  br label %68

68:                                               ; preds = %76, %57
  %69 = phi i64 [ %65, %57 ], [ %77, %76 ]
  %70 = phi i64 [ %67, %57 ], [ %78, %76 ]
  %71 = icmp ugt i64 %69, 4294967295
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = mul nuw i64 %69, %63
  %74 = shl i64 %70, 32
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72, %68
  %77 = add i64 %69, -1
  %78 = add i64 %70, %62
  %79 = icmp ult i64 %78, 4294967296
  br i1 %79, label %68, label %80

80:                                               ; preds = %76, %72
  %81 = phi i64 [ %77, %76 ], [ %69, %72 ]
  %82 = shl i64 %64, 32
  %83 = mul i64 %81, %61
  %84 = sub i64 %82, %83
  %85 = udiv i64 %84, %62
  %86 = mul i64 %85, %62
  %87 = urem i64 %84, %62
  br label %88

88:                                               ; preds = %96, %80
  %89 = phi i64 [ %85, %80 ], [ %97, %96 ]
  %90 = phi i64 [ %87, %80 ], [ %98, %96 ]
  %91 = icmp ugt i64 %89, 4294967295
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = mul nuw i64 %89, %63
  %94 = shl i64 %90, 32
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92, %88
  %97 = add i64 %89, -1
  %98 = add i64 %90, %62
  %99 = icmp ult i64 %98, 4294967296
  br i1 %99, label %88, label %100

100:                                              ; preds = %96, %92
  %101 = phi i64 [ %97, %96 ], [ %89, %92 ]
  %102 = shl i64 %84, 32
  %103 = mul i64 %101, %61
  %104 = sub i64 %102, %103
  %105 = lshr i64 %104, %60
  %106 = shl i64 %81, 32
  %107 = add i64 %101, %106
  br label %108

108:                                              ; preds = %47, %42, %100
  %109 = phi i64 [ %59, %100 ], [ %45, %42 ], [ -9223372036854775808, %47 ]
  %110 = phi i32 [ %58, %100 ], [ %43, %42 ], [ 63, %47 ]
  %111 = phi i64 [ %105, %100 ], [ -1, %42 ], [ -1, %47 ]
  %112 = phi i64 [ %107, %100 ], [ -1, %42 ], [ -1, %47 ]
  %113 = sub i64 %1, %111
  %114 = icmp ult i64 %113, %109
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = trunc i32 %110 to i8
  br label %127

117:                                              ; preds = %108
  %118 = shl i64 %112, 1
  %119 = shl i64 %111, 1
  %120 = icmp uge i64 %119, %1
  %121 = icmp slt i64 %111, 0
  %122 = or i1 %121, %120
  %123 = zext i1 %122 to i64
  %124 = or disjoint i64 %118, %123
  %125 = trunc i32 %110 to i8
  %126 = or i8 %125, 64
  br label %127

127:                                              ; preds = %115, %117
  %128 = phi i8 [ %116, %115 ], [ %126, %117 ]
  %129 = phi i64 [ %112, %115 ], [ %124, %117 ]
  %130 = zext i8 %128 to i32
  %131 = icmp sgt i8 %128, -1
  br i1 %131, label %137, label %132

132:                                              ; preds = %14, %10, %20, %32, %127
  %133 = phi i32 [ %130, %127 ], [ 0, %10 ], [ 32, %20 ], [ %33, %32 ], [ %18, %14 ]
  %134 = and i32 %133, 63
  %135 = zext nneg i32 %134 to i64
  %136 = lshr i64 %0, %135
  br label %166

137:                                              ; preds = %127
  %138 = add i64 %129, 1
  %139 = lshr i64 %138, 32
  %140 = lshr i64 %0, 32
  %141 = and i64 %138, 4294967295
  %142 = and i64 %0, 4294967295
  %143 = mul nuw i64 %141, %142
  %144 = lshr i64 %143, 32
  %145 = mul nuw i64 %141, %140
  %146 = mul nuw i64 %139, %142
  %147 = mul nuw i64 %139, %140
  %148 = add nuw i64 %144, %146
  %149 = and i64 %148, 4294967295
  %150 = lshr i64 %148, 32
  %151 = add nuw i64 %150, %147
  %152 = add nuw i64 %149, %145
  %153 = lshr i64 %152, 32
  %154 = add nuw i64 %151, %153
  %155 = icmp samesign ult i8 %128, 64
  br i1 %155, label %163, label %156

156:                                              ; preds = %137
  %157 = sub i64 %0, %154
  %158 = lshr i64 %157, 1
  %159 = add i64 %158, %154
  %160 = and i32 %130, 63
  %161 = zext nneg i32 %160 to i64
  %162 = lshr i64 %159, %161
  br label %166

163:                                              ; preds = %137
  %164 = zext nneg i8 %128 to i64
  %165 = lshr i64 %154, %164
  br label %166

166:                                              ; preds = %163, %156, %132, %2
  %167 = phi i64 [ 0, %2 ], [ %136, %132 ], [ %162, %156 ], [ %165, %163 ]
  ret i64 %167
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %186, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 true)
  %7 = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %6)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %42

9:                                                ; preds = %4
  %10 = trunc i64 %6 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = add i32 %10, -1
  %14 = xor i32 %13, %10
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %36, label %16

16:                                               ; preds = %12, %16
  %17 = phi i8 [ %20, %16 ], [ 0, %12 ]
  %18 = phi i32 [ %19, %16 ], [ %14, %12 ]
  %19 = lshr i32 %18, 1
  %20 = add nuw nsw i8 %17, 1
  %21 = icmp ult i32 %18, 4
  br i1 %21, label %36, label %16

22:                                               ; preds = %9
  %23 = lshr exact i64 %6, 32
  %24 = trunc nuw nsw i64 %23 to i32
  %25 = add nsw i32 %24, -1
  %26 = xor i32 %25, %24
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %36, label %28

28:                                               ; preds = %22, %28
  %29 = phi i8 [ %32, %28 ], [ 0, %22 ]
  %30 = phi i32 [ %31, %28 ], [ %26, %22 ]
  %31 = lshr i32 %30, 1
  %32 = add nuw nsw i8 %29, 1
  %33 = icmp ult i32 %30, 4
  br i1 %33, label %34, label %28

34:                                               ; preds = %28
  %35 = add nuw i8 %29, 33
  br label %36

36:                                               ; preds = %16, %34, %22, %12
  %37 = phi i8 [ 0, %12 ], [ 32, %22 ], [ %35, %34 ], [ %20, %16 ]
  %38 = lshr i64 %1, 56
  %39 = trunc nuw i64 %38 to i8
  %40 = and i8 %39, -128
  %41 = or i8 %37, %40
  br label %139

42:                                               ; preds = %4, %42
  %43 = phi i32 [ %46, %42 ], [ 0, %4 ]
  %44 = phi i64 [ %45, %42 ], [ %6, %4 ]
  %45 = shl nuw i64 %44, 1
  %46 = add nuw nsw i32 %43, 1
  %47 = icmp sgt i64 %45, -1
  br i1 %47, label %42, label %48

48:                                               ; preds = %42
  %49 = sub nsw i32 62, %43
  %50 = sub nsw i32 61, %43
  %51 = zext nneg i32 %50 to i64
  %52 = shl nuw i64 1, %51
  %53 = icmp ult i64 %52, %6
  br i1 %53, label %54, label %109

54:                                               ; preds = %48, %54
  %55 = phi i32 [ %58, %54 ], [ 0, %48 ]
  %56 = phi i64 [ %57, %54 ], [ %6, %48 ]
  %57 = shl nuw i64 %56, 1
  %58 = add nuw nsw i32 %55, 1
  %59 = icmp sgt i64 %57, -1
  br i1 %59, label %54, label %60

60:                                               ; preds = %54
  %61 = zext nneg i32 %58 to i64
  %62 = shl i64 %6, %61
  %63 = lshr i64 %62, 32
  %64 = and i64 %62, 4294967295
  %65 = shl i64 %52, %61
  %66 = udiv i64 %65, %63
  %67 = mul i64 %66, %63
  %68 = urem i64 %65, %63
  br label %69

69:                                               ; preds = %77, %60
  %70 = phi i64 [ %66, %60 ], [ %78, %77 ]
  %71 = phi i64 [ %68, %60 ], [ %79, %77 ]
  %72 = icmp ugt i64 %70, 4294967295
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = mul nuw i64 %70, %64
  %75 = shl i64 %71, 32
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73, %69
  %78 = add i64 %70, -1
  %79 = add i64 %71, %63
  %80 = icmp ult i64 %79, 4294967296
  br i1 %80, label %69, label %81

81:                                               ; preds = %77, %73
  %82 = phi i64 [ %78, %77 ], [ %70, %73 ]
  %83 = shl i64 %65, 32
  %84 = mul i64 %82, %62
  %85 = sub i64 %83, %84
  %86 = udiv i64 %85, %63
  %87 = mul i64 %86, %63
  %88 = urem i64 %85, %63
  br label %89

89:                                               ; preds = %97, %81
  %90 = phi i64 [ %86, %81 ], [ %98, %97 ]
  %91 = phi i64 [ %88, %81 ], [ %99, %97 ]
  %92 = icmp ugt i64 %90, 4294967295
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = mul nuw i64 %90, %64
  %95 = shl i64 %91, 32
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93, %89
  %98 = add i64 %90, -1
  %99 = add i64 %91, %63
  %100 = icmp ult i64 %99, 4294967296
  br i1 %100, label %89, label %101

101:                                              ; preds = %97, %93
  %102 = phi i64 [ %98, %97 ], [ %90, %93 ]
  %103 = shl i64 %85, 32
  %104 = mul i64 %102, %62
  %105 = sub i64 %103, %104
  %106 = lshr i64 %105, %61
  %107 = shl i64 %82, 32
  %108 = add i64 %102, %107
  br label %109

109:                                              ; preds = %48, %101
  %110 = phi i64 [ %106, %101 ], [ -1, %48 ]
  %111 = phi i64 [ %108, %101 ], [ -1, %48 ]
  %112 = sub i64 %6, %110
  %113 = zext nneg i32 %49 to i64
  %114 = lshr i64 %112, %113
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = trunc i32 %50 to i8
  br label %132

118:                                              ; preds = %109
  %119 = shl i64 %111, 1
  %120 = shl i64 %110, 1
  %121 = icmp uge i64 %120, %6
  %122 = icmp slt i64 %110, 0
  %123 = or i1 %122, %121
  %124 = zext i1 %123 to i64
  %125 = or disjoint i64 %119, %124
  %126 = lshr i64 %1, 56
  %127 = trunc nuw nsw i64 %126 to i32
  %128 = and i32 %127, 128
  %129 = or i32 %49, %128
  %130 = trunc i32 %129 to i8
  %131 = or i8 %130, 64
  br label %132

132:                                              ; preds = %116, %118
  %133 = phi i64 [ %111, %116 ], [ %125, %118 ]
  %134 = phi i8 [ %117, %116 ], [ %131, %118 ]
  %135 = add i64 %133, 1
  %136 = xor i64 %133, -1
  %137 = select i1 %5, i64 %136, i64 %135
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %36, %132
  %140 = phi i8 [ %41, %36 ], [ %134, %132 ]
  %141 = and i8 %140, 63
  %142 = zext nneg i8 %141 to i64
  %143 = shl nsw i64 -1, %142
  %144 = xor i64 %143, -1
  %145 = icmp slt i64 %0, 0
  %146 = select i1 %145, i64 %144, i64 0
  %147 = add nsw i64 %146, %0
  %148 = ashr i64 %147, %142
  %149 = ashr i8 %140, 7
  %150 = sext i8 %149 to i64
  %151 = xor i64 %148, %150
  %152 = sub nsw i64 %151, %150
  br label %186

153:                                              ; preds = %132
  %154 = and i64 %137, 4294967295
  %155 = and i64 %0, 4294967295
  %156 = mul nuw i64 %154, %155
  %157 = lshr i64 %156, 32
  %158 = ashr i64 %137, 32
  %159 = mul nsw i64 %158, %155
  %160 = add nsw i64 %157, %159
  %161 = ashr i64 %0, 32
  %162 = mul nsw i64 %154, %161
  %163 = and i64 %160, 4294967295
  %164 = add nsw i64 %163, %162
  %165 = mul nsw i64 %158, %161
  %166 = ashr i64 %160, 32
  %167 = add nsw i64 %166, %165
  %168 = ashr i64 %164, 32
  %169 = add nsw i64 %167, %168
  %170 = zext i8 %134 to i32
  %171 = and i32 %170, 64
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %153
  %174 = ashr i8 %134, 7
  %175 = sext i8 %174 to i64
  %176 = xor i64 %0, %175
  %177 = sub i64 %176, %175
  %178 = add nsw i64 %177, %169
  br label %179

179:                                              ; preds = %173, %153
  %180 = phi i64 [ %178, %173 ], [ %169, %153 ]
  %181 = and i32 %170, 63
  %182 = zext nneg i32 %181 to i64
  %183 = ashr i64 %180, %182
  %184 = lshr i64 %183, 63
  %185 = add nsw i64 %184, %183
  br label %186

186:                                              ; preds = %179, %139, %2
  %187 = phi i64 [ 0, %2 ], [ %152, %139 ], [ %185, %179 ]
  ret i64 %187
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
