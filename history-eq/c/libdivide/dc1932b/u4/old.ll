; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/dc1932b/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/dc1932b/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_raw_q(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %67

6:                                                ; preds = %4
  %7 = icmp ult i64 %0, %3
  br i1 %7, label %8, label %162

8:                                                ; preds = %6
  %9 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = shl i64 %3, %9
  %13 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %9)
  %14 = shl i64 %1, %9
  br label %17

15:                                               ; preds = %8
  %16 = or i64 %1, %0
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %13, %11 ], [ %16, %15 ]
  %19 = phi i64 [ %12, %11 ], [ %3, %15 ]
  %20 = phi i64 [ %14, %11 ], [ %1, %15 ]
  %21 = lshr i64 %19, 32
  %22 = and i64 %19, 4294967295
  %23 = lshr i64 %20, 32
  %24 = and i64 %20, 4294967295
  %25 = udiv i64 %18, %21
  %26 = mul i64 %25, %21
  %27 = urem i64 %18, %21
  br label %28

28:                                               ; preds = %37, %17
  %29 = phi i64 [ %25, %17 ], [ %38, %37 ]
  %30 = phi i64 [ %27, %17 ], [ %39, %37 ]
  %31 = icmp ugt i64 %29, 4294967295
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = mul nuw i64 %29, %22
  %34 = shl i64 %30, 32
  %35 = or disjoint i64 %34, %23
  %36 = icmp ugt i64 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %28
  %38 = add i64 %29, -1
  %39 = add i64 %30, %21
  %40 = icmp ult i64 %39, 4294967296
  br i1 %40, label %28, label %41

41:                                               ; preds = %37, %32
  %42 = phi i64 [ %38, %37 ], [ %29, %32 ]
  %43 = shl i64 %18, 32
  %44 = or disjoint i64 %23, %43
  %45 = mul i64 %42, %19
  %46 = sub i64 %44, %45
  %47 = udiv i64 %46, %21
  %48 = mul i64 %47, %21
  %49 = urem i64 %46, %21
  br label %50

50:                                               ; preds = %59, %41
  %51 = phi i64 [ %47, %41 ], [ %60, %59 ]
  %52 = phi i64 [ %49, %41 ], [ %61, %59 ]
  %53 = icmp ugt i64 %51, 4294967295
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = mul nuw i64 %51, %22
  %56 = shl i64 %52, 32
  %57 = or disjoint i64 %56, %24
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %50
  %60 = add i64 %51, -1
  %61 = add i64 %52, %21
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %50, label %63

63:                                               ; preds = %59, %54
  %64 = phi i64 [ %60, %59 ], [ %51, %54 ]
  %65 = shl i64 %42, 32
  %66 = add i64 %64, %65
  br label %162

67:                                               ; preds = %4
  %68 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %69 = icmp eq i64 %68, 0
  %70 = tail call i64 @llvm.fshl.i64(i64 %2, i64 %3, i64 %68)
  %71 = select i1 %69, i64 %2, i64 %70
  %72 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 63)
  %73 = lshr i64 %0, 1
  %74 = icmp ult i64 %73, %71
  br i1 %74, label %75, label %134

75:                                               ; preds = %67
  %76 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %71, i1 true)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = shl i64 %71, %76
  %80 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %72, i64 %76)
  %81 = shl i64 %72, %76
  br label %84

82:                                               ; preds = %75
  %83 = or i64 %72, %73
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i64 [ %80, %78 ], [ %83, %82 ]
  %86 = phi i64 [ %79, %78 ], [ %71, %82 ]
  %87 = phi i64 [ %81, %78 ], [ %72, %82 ]
  %88 = lshr i64 %86, 32
  %89 = and i64 %86, 4294967295
  %90 = lshr i64 %87, 32
  %91 = and i64 %87, 4294967295
  %92 = udiv i64 %85, %88
  %93 = mul i64 %92, %88
  %94 = urem i64 %85, %88
  br label %95

95:                                               ; preds = %104, %84
  %96 = phi i64 [ %92, %84 ], [ %105, %104 ]
  %97 = phi i64 [ %94, %84 ], [ %106, %104 ]
  %98 = icmp ugt i64 %96, 4294967295
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = mul nuw i64 %96, %89
  %101 = shl i64 %97, 32
  %102 = or disjoint i64 %101, %90
  %103 = icmp ugt i64 %100, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99, %95
  %105 = add i64 %96, -1
  %106 = add i64 %97, %88
  %107 = icmp ult i64 %106, 4294967296
  br i1 %107, label %95, label %108

108:                                              ; preds = %104, %99
  %109 = phi i64 [ %105, %104 ], [ %96, %99 ]
  %110 = shl i64 %85, 32
  %111 = or disjoint i64 %90, %110
  %112 = mul i64 %109, %86
  %113 = sub i64 %111, %112
  %114 = udiv i64 %113, %88
  %115 = mul i64 %114, %88
  %116 = urem i64 %113, %88
  br label %117

117:                                              ; preds = %126, %108
  %118 = phi i64 [ %114, %108 ], [ %127, %126 ]
  %119 = phi i64 [ %116, %108 ], [ %128, %126 ]
  %120 = icmp ugt i64 %118, 4294967295
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = mul nuw i64 %118, %89
  %123 = shl i64 %119, 32
  %124 = or disjoint i64 %123, %91
  %125 = icmp ugt i64 %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121, %117
  %127 = add i64 %118, -1
  %128 = add i64 %119, %88
  %129 = icmp ult i64 %128, 4294967296
  br i1 %129, label %117, label %130

130:                                              ; preds = %126, %121
  %131 = phi i64 [ %127, %126 ], [ %118, %121 ]
  %132 = shl i64 %109, 32
  %133 = add i64 %131, %132
  br label %134

134:                                              ; preds = %67, %130
  %135 = phi i64 [ %133, %130 ], [ -1, %67 ]
  %136 = sub nuw nsw i64 64, %68
  %137 = lshr i64 %135, %136
  %138 = shl i64 %135, %68
  %139 = select i1 %69, i64 0, i64 %137
  %140 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %138, i64 1)
  %141 = tail call i64 @llvm.usub.sat.i64(i64 %140, i64 1)
  %142 = zext i64 %141 to i128
  %143 = zext i64 %3 to i128
  %144 = mul nuw i128 %142, %143
  %145 = lshr i128 %144, 64
  %146 = trunc nuw i128 %145 to i64
  %147 = mul i64 %141, %3
  %148 = icmp ult i64 %1, %147
  %149 = sext i1 %148 to i64
  %150 = mul i64 %141, %2
  %151 = add i64 %0, %149
  %152 = add i64 %150, %146
  %153 = sub i64 %151, %152
  %154 = icmp ugt i64 %153, %2
  br i1 %154, label %160, label %155

155:                                              ; preds = %134
  %156 = sub i64 %1, %147
  %157 = icmp ne i64 %153, %2
  %158 = icmp ult i64 %156, %3
  %159 = or i1 %158, %157
  br i1 %159, label %162, label %160

160:                                              ; preds = %155, %134
  %161 = add nuw i64 %141, 1
  br label %162

162:                                              ; preds = %155, %160, %63, %6
  %163 = phi i64 [ %66, %63 ], [ -1, %6 ], [ %161, %160 ], [ %141, %155 ]
  ret i64 %163
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_raw_rlo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %70

6:                                                ; preds = %4
  %7 = icmp ult i64 %0, %3
  br i1 %7, label %8, label %165

8:                                                ; preds = %6
  %9 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = shl i64 %3, %9
  %13 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %9)
  %14 = shl i64 %1, %9
  br label %17

15:                                               ; preds = %8
  %16 = or i64 %1, %0
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %13, %11 ], [ %16, %15 ]
  %19 = phi i64 [ %12, %11 ], [ %3, %15 ]
  %20 = phi i64 [ %14, %11 ], [ %1, %15 ]
  %21 = lshr i64 %19, 32
  %22 = and i64 %19, 4294967295
  %23 = lshr i64 %20, 32
  %24 = and i64 %20, 4294967295
  %25 = udiv i64 %18, %21
  %26 = mul i64 %25, %21
  %27 = urem i64 %18, %21
  br label %28

28:                                               ; preds = %37, %17
  %29 = phi i64 [ %25, %17 ], [ %38, %37 ]
  %30 = phi i64 [ %27, %17 ], [ %39, %37 ]
  %31 = icmp ugt i64 %29, 4294967295
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = mul nuw i64 %29, %22
  %34 = shl i64 %30, 32
  %35 = or disjoint i64 %34, %23
  %36 = icmp ugt i64 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %28
  %38 = add i64 %29, -1
  %39 = add i64 %30, %21
  %40 = icmp ult i64 %39, 4294967296
  br i1 %40, label %28, label %41

41:                                               ; preds = %37, %32
  %42 = phi i64 [ %38, %37 ], [ %29, %32 ]
  %43 = shl i64 %18, 32
  %44 = or disjoint i64 %23, %43
  %45 = mul i64 %42, %19
  %46 = sub i64 %44, %45
  %47 = udiv i64 %46, %21
  %48 = mul i64 %47, %21
  %49 = urem i64 %46, %21
  br label %50

50:                                               ; preds = %59, %41
  %51 = phi i64 [ %47, %41 ], [ %60, %59 ]
  %52 = phi i64 [ %49, %41 ], [ %61, %59 ]
  %53 = icmp ugt i64 %51, 4294967295
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = mul nuw i64 %51, %22
  %56 = shl i64 %52, 32
  %57 = or disjoint i64 %56, %24
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %50
  %60 = add i64 %51, -1
  %61 = add i64 %52, %21
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %50, label %63

63:                                               ; preds = %59, %54
  %64 = phi i64 [ %60, %59 ], [ %51, %54 ]
  %65 = shl i64 %46, 32
  %66 = or disjoint i64 %65, %24
  %67 = mul i64 %64, %19
  %68 = sub i64 %66, %67
  %69 = lshr i64 %68, %9
  br label %165

70:                                               ; preds = %4
  %71 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %72 = icmp eq i64 %71, 0
  %73 = tail call i64 @llvm.fshl.i64(i64 %2, i64 %3, i64 %71)
  %74 = select i1 %72, i64 %2, i64 %73
  %75 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 63)
  %76 = lshr i64 %0, 1
  %77 = icmp ult i64 %76, %74
  br i1 %77, label %78, label %137

78:                                               ; preds = %70
  %79 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %74, i1 true)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = shl i64 %74, %79
  %83 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %75, i64 %79)
  %84 = shl i64 %75, %79
  br label %87

85:                                               ; preds = %78
  %86 = or i64 %75, %76
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i64 [ %83, %81 ], [ %86, %85 ]
  %89 = phi i64 [ %82, %81 ], [ %74, %85 ]
  %90 = phi i64 [ %84, %81 ], [ %75, %85 ]
  %91 = lshr i64 %89, 32
  %92 = and i64 %89, 4294967295
  %93 = lshr i64 %90, 32
  %94 = and i64 %90, 4294967295
  %95 = udiv i64 %88, %91
  %96 = mul i64 %95, %91
  %97 = urem i64 %88, %91
  br label %98

98:                                               ; preds = %107, %87
  %99 = phi i64 [ %95, %87 ], [ %108, %107 ]
  %100 = phi i64 [ %97, %87 ], [ %109, %107 ]
  %101 = icmp ugt i64 %99, 4294967295
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = mul nuw i64 %99, %92
  %104 = shl i64 %100, 32
  %105 = or disjoint i64 %104, %93
  %106 = icmp ugt i64 %103, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %102, %98
  %108 = add i64 %99, -1
  %109 = add i64 %100, %91
  %110 = icmp ult i64 %109, 4294967296
  br i1 %110, label %98, label %111

111:                                              ; preds = %107, %102
  %112 = phi i64 [ %108, %107 ], [ %99, %102 ]
  %113 = shl i64 %88, 32
  %114 = or disjoint i64 %93, %113
  %115 = mul i64 %112, %89
  %116 = sub i64 %114, %115
  %117 = udiv i64 %116, %91
  %118 = mul i64 %117, %91
  %119 = urem i64 %116, %91
  br label %120

120:                                              ; preds = %129, %111
  %121 = phi i64 [ %117, %111 ], [ %130, %129 ]
  %122 = phi i64 [ %119, %111 ], [ %131, %129 ]
  %123 = icmp ugt i64 %121, 4294967295
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = mul nuw i64 %121, %92
  %126 = shl i64 %122, 32
  %127 = or disjoint i64 %126, %94
  %128 = icmp ugt i64 %125, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %124, %120
  %130 = add i64 %121, -1
  %131 = add i64 %122, %91
  %132 = icmp ult i64 %131, 4294967296
  br i1 %132, label %120, label %133

133:                                              ; preds = %129, %124
  %134 = phi i64 [ %130, %129 ], [ %121, %124 ]
  %135 = shl i64 %112, 32
  %136 = add i64 %134, %135
  br label %137

137:                                              ; preds = %70, %133
  %138 = phi i64 [ %136, %133 ], [ -1, %70 ]
  %139 = sub nuw nsw i64 64, %71
  %140 = lshr i64 %138, %139
  %141 = shl i64 %138, %71
  %142 = select i1 %72, i64 0, i64 %140
  %143 = tail call i64 @llvm.fshl.i64(i64 %142, i64 %141, i64 1)
  %144 = tail call i64 @llvm.usub.sat.i64(i64 %143, i64 1)
  %145 = zext i64 %144 to i128
  %146 = zext i64 %3 to i128
  %147 = mul nuw i128 %145, %146
  %148 = lshr i128 %147, 64
  %149 = trunc nuw i128 %148 to i64
  %150 = mul i64 %144, %3
  %151 = icmp ult i64 %1, %150
  %152 = sext i1 %151 to i64
  %153 = mul i64 %144, %2
  %154 = add i64 %0, %152
  %155 = add i64 %153, %149
  %156 = sub i64 %154, %155
  %157 = sub i64 %1, %150
  %158 = icmp ugt i64 %156, %2
  br i1 %158, label %163, label %159

159:                                              ; preds = %137
  %160 = icmp ne i64 %156, %2
  %161 = icmp ult i64 %157, %3
  %162 = or i1 %161, %160
  br i1 %162, label %165, label %163

163:                                              ; preds = %159, %137
  %164 = sub i64 %157, %3
  br label %165

165:                                              ; preds = %159, %163, %63, %6
  %166 = phi i64 [ %69, %63 ], [ -1, %6 ], [ %164, %163 ], [ %157, %159 ]
  ret i64 %166
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_raw_rhi(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %6, label %63

6:                                                ; preds = %4
  %7 = icmp ult i64 %0, %3
  br i1 %7, label %8, label %161

8:                                                ; preds = %6
  %9 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = shl i64 %3, %9
  %13 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %9)
  %14 = shl i64 %1, %9
  br label %17

15:                                               ; preds = %8
  %16 = or i64 %1, %0
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %13, %11 ], [ %16, %15 ]
  %19 = phi i64 [ %12, %11 ], [ %3, %15 ]
  %20 = phi i64 [ %14, %11 ], [ %1, %15 ]
  %21 = lshr i64 %19, 32
  %22 = and i64 %19, 4294967295
  %23 = lshr i64 %20, 32
  %24 = and i64 %20, 4294967295
  %25 = udiv i64 %18, %21
  %26 = mul i64 %25, %21
  %27 = urem i64 %18, %21
  br label %28

28:                                               ; preds = %37, %17
  %29 = phi i64 [ %25, %17 ], [ %38, %37 ]
  %30 = phi i64 [ %27, %17 ], [ %39, %37 ]
  %31 = icmp ugt i64 %29, 4294967295
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = mul nuw i64 %29, %22
  %34 = shl i64 %30, 32
  %35 = or disjoint i64 %34, %23
  %36 = icmp ugt i64 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %28
  %38 = add i64 %29, -1
  %39 = add i64 %30, %21
  %40 = icmp ult i64 %39, 4294967296
  br i1 %40, label %28, label %41

41:                                               ; preds = %37, %32
  %42 = phi i64 [ %38, %37 ], [ %29, %32 ]
  %43 = shl i64 %18, 32
  %44 = or disjoint i64 %23, %43
  %45 = mul i64 %42, %19
  %46 = sub i64 %44, %45
  %47 = udiv i64 %46, %21
  %48 = mul i64 %47, %21
  %49 = urem i64 %46, %21
  br label %50

50:                                               ; preds = %59, %41
  %51 = phi i64 [ %47, %41 ], [ %60, %59 ]
  %52 = phi i64 [ %49, %41 ], [ %61, %59 ]
  %53 = icmp ugt i64 %51, 4294967295
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = mul nuw i64 %51, %22
  %56 = shl i64 %52, 32
  %57 = or disjoint i64 %56, %24
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %161

59:                                               ; preds = %54, %50
  %60 = add i64 %51, -1
  %61 = add i64 %52, %21
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %50, label %161

63:                                               ; preds = %4
  %64 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %65 = icmp eq i64 %64, 0
  %66 = tail call i64 @llvm.fshl.i64(i64 %2, i64 %3, i64 %64)
  %67 = select i1 %65, i64 %2, i64 %66
  %68 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 63)
  %69 = lshr i64 %0, 1
  %70 = icmp ult i64 %69, %67
  br i1 %70, label %71, label %130

71:                                               ; preds = %63
  %72 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %67, i1 true)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = shl i64 %67, %72
  %76 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %68, i64 %72)
  %77 = shl i64 %68, %72
  br label %80

78:                                               ; preds = %71
  %79 = or i64 %68, %69
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i64 [ %76, %74 ], [ %79, %78 ]
  %82 = phi i64 [ %75, %74 ], [ %67, %78 ]
  %83 = phi i64 [ %77, %74 ], [ %68, %78 ]
  %84 = lshr i64 %82, 32
  %85 = and i64 %82, 4294967295
  %86 = lshr i64 %83, 32
  %87 = and i64 %83, 4294967295
  %88 = udiv i64 %81, %84
  %89 = mul i64 %88, %84
  %90 = urem i64 %81, %84
  br label %91

91:                                               ; preds = %100, %80
  %92 = phi i64 [ %88, %80 ], [ %101, %100 ]
  %93 = phi i64 [ %90, %80 ], [ %102, %100 ]
  %94 = icmp ugt i64 %92, 4294967295
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = mul nuw i64 %92, %85
  %97 = shl i64 %93, 32
  %98 = or disjoint i64 %97, %86
  %99 = icmp ugt i64 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %95, %91
  %101 = add i64 %92, -1
  %102 = add i64 %93, %84
  %103 = icmp ult i64 %102, 4294967296
  br i1 %103, label %91, label %104

104:                                              ; preds = %100, %95
  %105 = phi i64 [ %101, %100 ], [ %92, %95 ]
  %106 = shl i64 %81, 32
  %107 = or disjoint i64 %86, %106
  %108 = mul i64 %105, %82
  %109 = sub i64 %107, %108
  %110 = udiv i64 %109, %84
  %111 = mul i64 %110, %84
  %112 = urem i64 %109, %84
  br label %113

113:                                              ; preds = %122, %104
  %114 = phi i64 [ %110, %104 ], [ %123, %122 ]
  %115 = phi i64 [ %112, %104 ], [ %124, %122 ]
  %116 = icmp ugt i64 %114, 4294967295
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  %118 = mul nuw i64 %114, %85
  %119 = shl i64 %115, 32
  %120 = or disjoint i64 %119, %87
  %121 = icmp ugt i64 %118, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117, %113
  %123 = add i64 %114, -1
  %124 = add i64 %115, %84
  %125 = icmp ult i64 %124, 4294967296
  br i1 %125, label %113, label %126

126:                                              ; preds = %122, %117
  %127 = phi i64 [ %123, %122 ], [ %114, %117 ]
  %128 = shl i64 %105, 32
  %129 = add i64 %127, %128
  br label %130

130:                                              ; preds = %63, %126
  %131 = phi i64 [ %129, %126 ], [ -1, %63 ]
  %132 = sub nuw nsw i64 64, %64
  %133 = lshr i64 %131, %132
  %134 = shl i64 %131, %64
  %135 = select i1 %65, i64 0, i64 %133
  %136 = tail call i64 @llvm.fshl.i64(i64 %135, i64 %134, i64 1)
  %137 = tail call i64 @llvm.usub.sat.i64(i64 %136, i64 1)
  %138 = zext i64 %137 to i128
  %139 = zext i64 %3 to i128
  %140 = mul nuw i128 %138, %139
  %141 = lshr i128 %140, 64
  %142 = trunc nuw i128 %141 to i64
  %143 = mul i64 %137, %3
  %144 = icmp ult i64 %1, %143
  %145 = sext i1 %144 to i64
  %146 = mul i64 %137, %2
  %147 = add i64 %0, %145
  %148 = add i64 %146, %142
  %149 = sub i64 %147, %148
  %150 = sub i64 %1, %143
  %151 = icmp ugt i64 %149, %2
  br i1 %151, label %156, label %152

152:                                              ; preds = %130
  %153 = icmp ne i64 %149, %2
  %154 = icmp ult i64 %150, %3
  %155 = or i1 %154, %153
  br i1 %155, label %161, label %156

156:                                              ; preds = %152, %130
  %157 = icmp ult i64 %150, %3
  %158 = sext i1 %157 to i64
  %159 = sub i64 %158, %2
  %160 = add i64 %159, %149
  br label %161

161:                                              ; preds = %54, %59, %152, %156, %6
  %162 = phi i64 [ 0, %6 ], [ %160, %156 ], [ %149, %152 ], [ 0, %59 ], [ 0, %54 ]
  ret i64 %162
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_pre_q(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %101, label %6

6:                                                ; preds = %4
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %8 = icmp eq i64 %7, 0
  %9 = tail call i64 @llvm.fshl.i64(i64 %2, i64 %3, i64 %7)
  %10 = select i1 %8, i64 %2, i64 %9
  %11 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 63)
  %12 = lshr i64 %0, 1
  %13 = icmp ult i64 %12, %10
  br i1 %13, label %14, label %73

14:                                               ; preds = %6
  %15 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %10, i1 true)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = shl i64 %10, %15
  %19 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %11, i64 %15)
  %20 = shl i64 %11, %15
  br label %23

21:                                               ; preds = %14
  %22 = or i64 %11, %12
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i64 [ %19, %17 ], [ %22, %21 ]
  %25 = phi i64 [ %18, %17 ], [ %10, %21 ]
  %26 = phi i64 [ %20, %17 ], [ %11, %21 ]
  %27 = lshr i64 %25, 32
  %28 = and i64 %25, 4294967295
  %29 = lshr i64 %26, 32
  %30 = and i64 %26, 4294967295
  %31 = udiv i64 %24, %27
  %32 = mul i64 %31, %27
  %33 = urem i64 %24, %27
  br label %34

34:                                               ; preds = %43, %23
  %35 = phi i64 [ %31, %23 ], [ %44, %43 ]
  %36 = phi i64 [ %33, %23 ], [ %45, %43 ]
  %37 = icmp ugt i64 %35, 4294967295
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = mul nuw i64 %35, %28
  %40 = shl i64 %36, 32
  %41 = or disjoint i64 %40, %29
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %34
  %44 = add i64 %35, -1
  %45 = add i64 %36, %27
  %46 = icmp ult i64 %45, 4294967296
  br i1 %46, label %34, label %47

47:                                               ; preds = %43, %38
  %48 = phi i64 [ %44, %43 ], [ %35, %38 ]
  %49 = shl i64 %24, 32
  %50 = or disjoint i64 %29, %49
  %51 = mul i64 %48, %25
  %52 = sub i64 %50, %51
  %53 = udiv i64 %52, %27
  %54 = mul i64 %53, %27
  %55 = urem i64 %52, %27
  br label %56

56:                                               ; preds = %65, %47
  %57 = phi i64 [ %53, %47 ], [ %66, %65 ]
  %58 = phi i64 [ %55, %47 ], [ %67, %65 ]
  %59 = icmp ugt i64 %57, 4294967295
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = mul nuw i64 %57, %28
  %62 = shl i64 %58, 32
  %63 = or disjoint i64 %62, %30
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60, %56
  %66 = add i64 %57, -1
  %67 = add i64 %58, %27
  %68 = icmp ult i64 %67, 4294967296
  br i1 %68, label %56, label %69

69:                                               ; preds = %65, %60
  %70 = phi i64 [ %66, %65 ], [ %57, %60 ]
  %71 = shl i64 %48, 32
  %72 = add i64 %70, %71
  br label %73

73:                                               ; preds = %6, %69
  %74 = phi i64 [ %72, %69 ], [ -1, %6 ]
  %75 = sub nuw nsw i64 64, %7
  %76 = lshr i64 %74, %75
  %77 = shl i64 %74, %7
  %78 = select i1 %8, i64 0, i64 %76
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %77, i64 1)
  %80 = tail call i64 @llvm.usub.sat.i64(i64 %79, i64 1)
  %81 = zext i64 %80 to i128
  %82 = zext i64 %3 to i128
  %83 = mul nuw i128 %81, %82
  %84 = lshr i128 %83, 64
  %85 = trunc nuw i128 %84 to i64
  %86 = mul i64 %80, %3
  %87 = icmp ult i64 %1, %86
  %88 = sext i1 %87 to i64
  %89 = mul i64 %80, %2
  %90 = add i64 %0, %88
  %91 = add i64 %89, %85
  %92 = sub i64 %90, %91
  %93 = icmp ugt i64 %92, %2
  br i1 %93, label %99, label %94

94:                                               ; preds = %73
  %95 = sub i64 %1, %86
  %96 = icmp ne i64 %92, %2
  %97 = icmp ult i64 %95, %3
  %98 = or i1 %97, %96
  br i1 %98, label %162, label %99

99:                                               ; preds = %94, %73
  %100 = add nuw i64 %80, 1
  br label %162

101:                                              ; preds = %4
  %102 = icmp ult i64 %0, %3
  br i1 %102, label %103, label %162

103:                                              ; preds = %101
  %104 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = shl i64 %3, %104
  %108 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %104)
  %109 = shl i64 %1, %104
  br label %112

110:                                              ; preds = %103
  %111 = or i64 %1, %0
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi i64 [ %108, %106 ], [ %111, %110 ]
  %114 = phi i64 [ %107, %106 ], [ %3, %110 ]
  %115 = phi i64 [ %109, %106 ], [ %1, %110 ]
  %116 = lshr i64 %114, 32
  %117 = and i64 %114, 4294967295
  %118 = lshr i64 %115, 32
  %119 = and i64 %115, 4294967295
  %120 = udiv i64 %113, %116
  %121 = mul i64 %120, %116
  %122 = urem i64 %113, %116
  br label %123

123:                                              ; preds = %132, %112
  %124 = phi i64 [ %120, %112 ], [ %133, %132 ]
  %125 = phi i64 [ %122, %112 ], [ %134, %132 ]
  %126 = icmp ugt i64 %124, 4294967295
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = mul nuw i64 %124, %117
  %129 = shl i64 %125, 32
  %130 = or disjoint i64 %129, %118
  %131 = icmp ugt i64 %128, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %127, %123
  %133 = add i64 %124, -1
  %134 = add i64 %125, %116
  %135 = icmp ult i64 %134, 4294967296
  br i1 %135, label %123, label %136

136:                                              ; preds = %132, %127
  %137 = phi i64 [ %133, %132 ], [ %124, %127 ]
  %138 = shl i64 %113, 32
  %139 = or disjoint i64 %118, %138
  %140 = mul i64 %137, %114
  %141 = sub i64 %139, %140
  %142 = udiv i64 %141, %116
  %143 = mul i64 %142, %116
  %144 = urem i64 %141, %116
  br label %145

145:                                              ; preds = %154, %136
  %146 = phi i64 [ %142, %136 ], [ %155, %154 ]
  %147 = phi i64 [ %144, %136 ], [ %156, %154 ]
  %148 = icmp ugt i64 %146, 4294967295
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = mul nuw i64 %146, %117
  %151 = shl i64 %147, 32
  %152 = or disjoint i64 %151, %119
  %153 = icmp ugt i64 %150, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %149, %145
  %155 = add i64 %146, -1
  %156 = add i64 %147, %116
  %157 = icmp ult i64 %156, 4294967296
  br i1 %157, label %145, label %158

158:                                              ; preds = %149, %154
  %159 = phi i64 [ %155, %154 ], [ %146, %149 ]
  %160 = shl i64 %137, 32
  %161 = add i64 %159, %160
  br label %162

162:                                              ; preds = %158, %94, %99, %101
  %163 = phi i64 [ 0, %101 ], [ %161, %158 ], [ %100, %99 ], [ %80, %94 ]
  ret i64 %163
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_pre_rlo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %101, label %6

6:                                                ; preds = %4
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %8 = icmp eq i64 %7, 0
  %9 = tail call i64 @llvm.fshl.i64(i64 %2, i64 %3, i64 %7)
  %10 = select i1 %8, i64 %2, i64 %9
  %11 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 63)
  %12 = lshr i64 %0, 1
  %13 = icmp ult i64 %12, %10
  br i1 %13, label %14, label %73

14:                                               ; preds = %6
  %15 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %10, i1 true)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = shl i64 %10, %15
  %19 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %11, i64 %15)
  %20 = shl i64 %11, %15
  br label %23

21:                                               ; preds = %14
  %22 = or i64 %11, %12
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i64 [ %19, %17 ], [ %22, %21 ]
  %25 = phi i64 [ %18, %17 ], [ %10, %21 ]
  %26 = phi i64 [ %20, %17 ], [ %11, %21 ]
  %27 = lshr i64 %25, 32
  %28 = and i64 %25, 4294967295
  %29 = lshr i64 %26, 32
  %30 = and i64 %26, 4294967295
  %31 = udiv i64 %24, %27
  %32 = mul i64 %31, %27
  %33 = urem i64 %24, %27
  br label %34

34:                                               ; preds = %43, %23
  %35 = phi i64 [ %31, %23 ], [ %44, %43 ]
  %36 = phi i64 [ %33, %23 ], [ %45, %43 ]
  %37 = icmp ugt i64 %35, 4294967295
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = mul nuw i64 %35, %28
  %40 = shl i64 %36, 32
  %41 = or disjoint i64 %40, %29
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %34
  %44 = add i64 %35, -1
  %45 = add i64 %36, %27
  %46 = icmp ult i64 %45, 4294967296
  br i1 %46, label %34, label %47

47:                                               ; preds = %43, %38
  %48 = phi i64 [ %44, %43 ], [ %35, %38 ]
  %49 = shl i64 %24, 32
  %50 = or disjoint i64 %29, %49
  %51 = mul i64 %48, %25
  %52 = sub i64 %50, %51
  %53 = udiv i64 %52, %27
  %54 = mul i64 %53, %27
  %55 = urem i64 %52, %27
  br label %56

56:                                               ; preds = %65, %47
  %57 = phi i64 [ %53, %47 ], [ %66, %65 ]
  %58 = phi i64 [ %55, %47 ], [ %67, %65 ]
  %59 = icmp ugt i64 %57, 4294967295
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = mul nuw i64 %57, %28
  %62 = shl i64 %58, 32
  %63 = or disjoint i64 %62, %30
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60, %56
  %66 = add i64 %57, -1
  %67 = add i64 %58, %27
  %68 = icmp ult i64 %67, 4294967296
  br i1 %68, label %56, label %69

69:                                               ; preds = %65, %60
  %70 = phi i64 [ %66, %65 ], [ %57, %60 ]
  %71 = shl i64 %48, 32
  %72 = add i64 %70, %71
  br label %73

73:                                               ; preds = %6, %69
  %74 = phi i64 [ %72, %69 ], [ -1, %6 ]
  %75 = sub nuw nsw i64 64, %7
  %76 = lshr i64 %74, %75
  %77 = shl i64 %74, %7
  %78 = select i1 %8, i64 0, i64 %76
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %77, i64 1)
  %80 = tail call i64 @llvm.usub.sat.i64(i64 %79, i64 1)
  %81 = zext i64 %80 to i128
  %82 = zext i64 %3 to i128
  %83 = mul nuw i128 %81, %82
  %84 = lshr i128 %83, 64
  %85 = trunc nuw i128 %84 to i64
  %86 = mul i64 %80, %3
  %87 = icmp ult i64 %1, %86
  %88 = sext i1 %87 to i64
  %89 = mul i64 %80, %2
  %90 = add i64 %0, %88
  %91 = add i64 %89, %85
  %92 = sub i64 %90, %91
  %93 = sub i64 %1, %86
  %94 = icmp ugt i64 %92, %2
  br i1 %94, label %99, label %95

95:                                               ; preds = %73
  %96 = icmp ne i64 %92, %2
  %97 = icmp ult i64 %93, %3
  %98 = or i1 %97, %96
  br i1 %98, label %165, label %99

99:                                               ; preds = %95, %73
  %100 = sub i64 %93, %3
  br label %165

101:                                              ; preds = %4
  %102 = icmp ult i64 %0, %3
  br i1 %102, label %103, label %165

103:                                              ; preds = %101
  %104 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = shl i64 %3, %104
  %108 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %104)
  %109 = shl i64 %1, %104
  br label %112

110:                                              ; preds = %103
  %111 = or i64 %1, %0
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi i64 [ %108, %106 ], [ %111, %110 ]
  %114 = phi i64 [ %107, %106 ], [ %3, %110 ]
  %115 = phi i64 [ %109, %106 ], [ %1, %110 ]
  %116 = lshr i64 %114, 32
  %117 = and i64 %114, 4294967295
  %118 = lshr i64 %115, 32
  %119 = and i64 %115, 4294967295
  %120 = udiv i64 %113, %116
  %121 = mul i64 %120, %116
  %122 = urem i64 %113, %116
  br label %123

123:                                              ; preds = %132, %112
  %124 = phi i64 [ %120, %112 ], [ %133, %132 ]
  %125 = phi i64 [ %122, %112 ], [ %134, %132 ]
  %126 = icmp ugt i64 %124, 4294967295
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = mul nuw i64 %124, %117
  %129 = shl i64 %125, 32
  %130 = or disjoint i64 %129, %118
  %131 = icmp ugt i64 %128, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %127, %123
  %133 = add i64 %124, -1
  %134 = add i64 %125, %116
  %135 = icmp ult i64 %134, 4294967296
  br i1 %135, label %123, label %136

136:                                              ; preds = %132, %127
  %137 = phi i64 [ %133, %132 ], [ %124, %127 ]
  %138 = shl i64 %113, 32
  %139 = or disjoint i64 %118, %138
  %140 = mul i64 %137, %114
  %141 = sub i64 %139, %140
  %142 = udiv i64 %141, %116
  %143 = mul i64 %142, %116
  %144 = urem i64 %141, %116
  br label %145

145:                                              ; preds = %154, %136
  %146 = phi i64 [ %142, %136 ], [ %155, %154 ]
  %147 = phi i64 [ %144, %136 ], [ %156, %154 ]
  %148 = icmp ugt i64 %146, 4294967295
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = mul nuw i64 %146, %117
  %151 = shl i64 %147, 32
  %152 = or disjoint i64 %151, %119
  %153 = icmp ugt i64 %150, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %149, %145
  %155 = add i64 %146, -1
  %156 = add i64 %147, %116
  %157 = icmp ult i64 %156, 4294967296
  br i1 %157, label %145, label %158

158:                                              ; preds = %149, %154
  %159 = phi i64 [ %155, %154 ], [ %146, %149 ]
  %160 = shl i64 %141, 32
  %161 = or disjoint i64 %160, %119
  %162 = mul i64 %159, %114
  %163 = sub i64 %161, %162
  %164 = lshr i64 %163, %104
  br label %165

165:                                              ; preds = %158, %95, %99, %101
  %166 = phi i64 [ 0, %101 ], [ %164, %158 ], [ %100, %99 ], [ %93, %95 ]
  ret i64 %166
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_pre_rhi(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %104, label %6

6:                                                ; preds = %4
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true)
  %8 = icmp eq i64 %7, 0
  %9 = tail call i64 @llvm.fshl.i64(i64 %2, i64 %3, i64 %7)
  %10 = select i1 %8, i64 %2, i64 %9
  %11 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 63)
  %12 = lshr i64 %0, 1
  %13 = icmp ult i64 %12, %10
  br i1 %13, label %14, label %73

14:                                               ; preds = %6
  %15 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %10, i1 true)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = shl i64 %10, %15
  %19 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %11, i64 %15)
  %20 = shl i64 %11, %15
  br label %23

21:                                               ; preds = %14
  %22 = or i64 %11, %12
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i64 [ %19, %17 ], [ %22, %21 ]
  %25 = phi i64 [ %18, %17 ], [ %10, %21 ]
  %26 = phi i64 [ %20, %17 ], [ %11, %21 ]
  %27 = lshr i64 %25, 32
  %28 = and i64 %25, 4294967295
  %29 = lshr i64 %26, 32
  %30 = and i64 %26, 4294967295
  %31 = udiv i64 %24, %27
  %32 = mul i64 %31, %27
  %33 = urem i64 %24, %27
  br label %34

34:                                               ; preds = %43, %23
  %35 = phi i64 [ %31, %23 ], [ %44, %43 ]
  %36 = phi i64 [ %33, %23 ], [ %45, %43 ]
  %37 = icmp ugt i64 %35, 4294967295
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = mul nuw i64 %35, %28
  %40 = shl i64 %36, 32
  %41 = or disjoint i64 %40, %29
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %34
  %44 = add i64 %35, -1
  %45 = add i64 %36, %27
  %46 = icmp ult i64 %45, 4294967296
  br i1 %46, label %34, label %47

47:                                               ; preds = %43, %38
  %48 = phi i64 [ %44, %43 ], [ %35, %38 ]
  %49 = shl i64 %24, 32
  %50 = or disjoint i64 %29, %49
  %51 = mul i64 %48, %25
  %52 = sub i64 %50, %51
  %53 = udiv i64 %52, %27
  %54 = mul i64 %53, %27
  %55 = urem i64 %52, %27
  br label %56

56:                                               ; preds = %65, %47
  %57 = phi i64 [ %53, %47 ], [ %66, %65 ]
  %58 = phi i64 [ %55, %47 ], [ %67, %65 ]
  %59 = icmp ugt i64 %57, 4294967295
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = mul nuw i64 %57, %28
  %62 = shl i64 %58, 32
  %63 = or disjoint i64 %62, %30
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60, %56
  %66 = add i64 %57, -1
  %67 = add i64 %58, %27
  %68 = icmp ult i64 %67, 4294967296
  br i1 %68, label %56, label %69

69:                                               ; preds = %65, %60
  %70 = phi i64 [ %66, %65 ], [ %57, %60 ]
  %71 = shl i64 %48, 32
  %72 = add i64 %70, %71
  br label %73

73:                                               ; preds = %6, %69
  %74 = phi i64 [ %72, %69 ], [ -1, %6 ]
  %75 = sub nuw nsw i64 64, %7
  %76 = lshr i64 %74, %75
  %77 = shl i64 %74, %7
  %78 = select i1 %8, i64 0, i64 %76
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %77, i64 1)
  %80 = tail call i64 @llvm.usub.sat.i64(i64 %79, i64 1)
  %81 = zext i64 %80 to i128
  %82 = zext i64 %3 to i128
  %83 = mul nuw i128 %81, %82
  %84 = lshr i128 %83, 64
  %85 = trunc nuw i128 %84 to i64
  %86 = mul i64 %80, %3
  %87 = icmp ult i64 %1, %86
  %88 = sext i1 %87 to i64
  %89 = mul i64 %80, %2
  %90 = add i64 %0, %88
  %91 = add i64 %89, %85
  %92 = sub i64 %90, %91
  %93 = sub i64 %1, %86
  %94 = icmp ugt i64 %92, %2
  br i1 %94, label %99, label %95

95:                                               ; preds = %73
  %96 = icmp ne i64 %92, %2
  %97 = icmp ult i64 %93, %3
  %98 = or i1 %97, %96
  br i1 %98, label %161, label %99

99:                                               ; preds = %95, %73
  %100 = icmp ult i64 %93, %3
  %101 = sext i1 %100 to i64
  %102 = sub i64 %101, %2
  %103 = add i64 %102, %92
  br label %161

104:                                              ; preds = %4
  %105 = icmp ult i64 %0, %3
  br i1 %105, label %106, label %161

106:                                              ; preds = %104
  %107 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = shl i64 %3, %107
  %111 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %1, i64 %107)
  %112 = shl i64 %1, %107
  br label %115

113:                                              ; preds = %106
  %114 = or i64 %1, %0
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi i64 [ %111, %109 ], [ %114, %113 ]
  %117 = phi i64 [ %110, %109 ], [ %3, %113 ]
  %118 = phi i64 [ %112, %109 ], [ %1, %113 ]
  %119 = lshr i64 %117, 32
  %120 = and i64 %117, 4294967295
  %121 = lshr i64 %118, 32
  %122 = and i64 %118, 4294967295
  %123 = udiv i64 %116, %119
  %124 = mul i64 %123, %119
  %125 = urem i64 %116, %119
  br label %126

126:                                              ; preds = %135, %115
  %127 = phi i64 [ %123, %115 ], [ %136, %135 ]
  %128 = phi i64 [ %125, %115 ], [ %137, %135 ]
  %129 = icmp ugt i64 %127, 4294967295
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = mul nuw i64 %127, %120
  %132 = shl i64 %128, 32
  %133 = or disjoint i64 %132, %121
  %134 = icmp ugt i64 %131, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %130, %126
  %136 = add i64 %127, -1
  %137 = add i64 %128, %119
  %138 = icmp ult i64 %137, 4294967296
  br i1 %138, label %126, label %139

139:                                              ; preds = %135, %130
  %140 = phi i64 [ %136, %135 ], [ %127, %130 ]
  %141 = shl i64 %116, 32
  %142 = or disjoint i64 %121, %141
  %143 = mul i64 %140, %117
  %144 = sub i64 %142, %143
  %145 = udiv i64 %144, %119
  %146 = mul i64 %145, %119
  %147 = urem i64 %144, %119
  br label %148

148:                                              ; preds = %157, %139
  %149 = phi i64 [ %145, %139 ], [ %158, %157 ]
  %150 = phi i64 [ %147, %139 ], [ %159, %157 ]
  %151 = icmp ugt i64 %149, 4294967295
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = mul nuw i64 %149, %120
  %154 = shl i64 %150, 32
  %155 = or disjoint i64 %154, %122
  %156 = icmp ugt i64 %153, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %152, %148
  %158 = add i64 %149, -1
  %159 = add i64 %150, %119
  %160 = icmp ult i64 %159, 4294967296
  br i1 %160, label %148, label %161

161:                                              ; preds = %157, %152, %95, %99, %104
  %162 = phi i64 [ 0, %104 ], [ %103, %99 ], [ %92, %95 ], [ 0, %152 ], [ 0, %157 ]
  ret i64 %162
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_recover_api(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %252, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %5 = icmp samesign ult i64 %4, 2
  br i1 %5, label %252, label %6

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
  br i1 %65, label %88, label %66

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
  %77 = tail call i64 @llvm.fshl.i64(i64 1, i64 %74, i64 63)
  %78 = shl i64 -9223372036854775808, %75
  %79 = lshr i64 %76, 1
  %80 = or disjoint i64 %79, %78
  %81 = lshr i64 %77, 32
  %82 = and i64 %77, 4294967295
  %83 = lshr exact i64 %78, 32
  %84 = udiv i64 %80, %81
  %85 = mul i64 %84, %81
  %86 = urem i64 %80, %81
  %87 = icmp samesign ugt i64 %84, 4294967295
  br i1 %87, label %144, label %139

88:                                               ; preds = %61
  %89 = add i64 %63, 1
  %90 = zext nneg i32 %9 to i64
  %91 = shl nuw i64 1, %90
  %92 = icmp ult i64 %91, %89
  br i1 %92, label %93, label %252

93:                                               ; preds = %88
  %94 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %89, i1 true)
  %95 = shl i64 %89, %94
  %96 = shl i64 %91, %94
  %97 = lshr i64 %95, 32
  %98 = and i64 %95, 4294967295
  %99 = udiv i64 %96, %97
  %100 = mul i64 %99, %97
  %101 = urem i64 %96, %97
  br label %102

102:                                              ; preds = %110, %93
  %103 = phi i64 [ %99, %93 ], [ %111, %110 ]
  %104 = phi i64 [ %101, %93 ], [ %112, %110 ]
  %105 = icmp ugt i64 %103, 4294967295
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = mul nuw i64 %103, %98
  %108 = shl i64 %104, 32
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106, %102
  %111 = add i64 %103, -1
  %112 = add i64 %104, %97
  %113 = icmp ult i64 %112, 4294967296
  br i1 %113, label %102, label %114

114:                                              ; preds = %110, %106
  %115 = phi i64 [ %111, %110 ], [ %103, %106 ]
  %116 = shl i64 %96, 32
  %117 = mul i64 %115, %95
  %118 = sub i64 %116, %117
  %119 = udiv i64 %118, %97
  %120 = mul i64 %119, %97
  %121 = urem i64 %118, %97
  br label %122

122:                                              ; preds = %130, %114
  %123 = phi i64 [ %119, %114 ], [ %131, %130 ]
  %124 = phi i64 [ %121, %114 ], [ %132, %130 ]
  %125 = icmp ugt i64 %123, 4294967295
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = mul nuw i64 %123, %98
  %128 = shl i64 %124, 32
  %129 = icmp ugt i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126, %122
  %131 = add i64 %123, -1
  %132 = add i64 %124, %97
  %133 = icmp ult i64 %132, 4294967296
  br i1 %133, label %122, label %134

134:                                              ; preds = %130, %126
  %135 = phi i64 [ %131, %130 ], [ %123, %126 ]
  %136 = shl i64 %115, 32
  %137 = or disjoint i64 %136, 1
  %138 = add i64 %137, %135
  br label %252

139:                                              ; preds = %66
  %140 = mul nuw i64 %84, %82
  %141 = shl i64 %86, 32
  %142 = or disjoint i64 %141, %83
  %143 = icmp ugt i64 %140, %142
  br i1 %143, label %144, label %168

144:                                              ; preds = %139, %66
  %145 = add nsw i64 %84, -1
  %146 = add i64 %86, %81
  %147 = icmp ult i64 %146, 4294967296
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = icmp ugt i64 %145, 4294967295
  br i1 %149, label %155, label %150

150:                                              ; preds = %148
  %151 = mul nuw i64 %145, %82
  %152 = shl nuw i64 %146, 32
  %153 = or disjoint i64 %152, %83
  %154 = icmp ugt i64 %151, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %150, %148
  %156 = add nsw i64 %84, -2
  %157 = add nuw nsw i64 %146, %81
  %158 = icmp ult i64 %157, 4294967296
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = icmp ugt i64 %156, 4294967295
  br i1 %160, label %166, label %161

161:                                              ; preds = %159
  %162 = mul nuw i64 %156, %82
  %163 = shl nuw i64 %157, 32
  %164 = or disjoint i64 %163, %83
  %165 = icmp ugt i64 %162, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %161, %159
  %167 = add nsw i64 %84, -3
  br label %168

168:                                              ; preds = %166, %161, %155, %150, %144, %139
  %169 = phi i64 [ %145, %144 ], [ %84, %139 ], [ %145, %150 ], [ %156, %155 ], [ %156, %161 ], [ %167, %166 ]
  %170 = shl i64 %79, 32
  %171 = or disjoint i64 %170, %83
  %172 = mul i64 %169, %77
  %173 = sub i64 %171, %172
  %174 = udiv i64 %173, %81
  %175 = mul i64 %174, %81
  %176 = urem i64 %173, %81
  %177 = icmp samesign ugt i64 %174, 4294967295
  br i1 %177, label %182, label %178

178:                                              ; preds = %168
  %179 = mul nuw i64 %174, %82
  %180 = shl i64 %176, 32
  %181 = icmp ugt i64 %179, %180
  br i1 %181, label %182, label %204

182:                                              ; preds = %178, %168
  %183 = add nsw i64 %174, -1
  %184 = add i64 %176, %81
  %185 = icmp ult i64 %184, 4294967296
  br i1 %185, label %186, label %204

186:                                              ; preds = %182
  %187 = icmp ugt i64 %183, 4294967295
  br i1 %187, label %192, label %188

188:                                              ; preds = %186
  %189 = mul nuw i64 %183, %82
  %190 = shl nuw i64 %184, 32
  %191 = icmp ugt i64 %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %188, %186
  %193 = add nsw i64 %174, -2
  %194 = add nuw nsw i64 %184, %81
  %195 = icmp ult i64 %194, 4294967296
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = icmp ugt i64 %193, 4294967295
  br i1 %197, label %202, label %198

198:                                              ; preds = %196
  %199 = mul nuw i64 %193, %82
  %200 = shl nuw i64 %194, 32
  %201 = icmp ugt i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %198, %196
  %203 = add nsw i64 %174, -3
  br label %204

204:                                              ; preds = %202, %198, %192, %188, %182, %178
  %205 = phi i64 [ %183, %182 ], [ %174, %178 ], [ %183, %188 ], [ %193, %192 ], [ %193, %198 ], [ %203, %202 ]
  %206 = shl i64 %169, 32
  %207 = add i64 %205, %206
  %208 = lshr i64 %207, 1
  %209 = shl i64 %205, 63
  %210 = tail call i64 @llvm.fshl.i64(i64 %208, i64 %209, i64 1)
  %211 = tail call i64 @llvm.usub.sat.i64(i64 %210, i64 1)
  %212 = zext i64 %211 to i128
  %213 = zext i64 %74 to i128
  %214 = mul nuw i128 %212, %213
  %215 = lshr i128 %214, 64
  %216 = trunc nuw i128 %215 to i64
  %217 = mul i64 %211, %74
  %218 = icmp ne i64 %217, 0
  %219 = sext i1 %218 to i64
  %220 = add i64 %76, %219
  %221 = add i64 %211, %216
  %222 = sub i64 %220, %221
  %223 = sub i64 0, %217
  %224 = icmp ugt i64 %222, 1
  br i1 %224, label %229, label %225

225:                                              ; preds = %204
  %226 = icmp ne i64 %222, 1
  %227 = icmp ugt i64 %74, %223
  %228 = or i1 %227, %226
  br i1 %228, label %235, label %229

229:                                              ; preds = %225, %204
  %230 = add nuw i64 %211, 1
  %231 = icmp ugt i64 %74, %223
  %232 = select i1 %231, i64 -2, i64 -1
  %233 = add i64 %222, %232
  %234 = sub i64 %223, %74
  br label %235

235:                                              ; preds = %225, %229
  %236 = phi i64 [ %230, %229 ], [ %211, %225 ]
  %237 = phi i64 [ %234, %229 ], [ %223, %225 ]
  %238 = phi i64 [ %233, %229 ], [ %222, %225 ]
  %239 = tail call i64 @llvm.fshl.i64(i64 %238, i64 %237, i64 1)
  %240 = icmp ugt i64 %239, 1
  br i1 %240, label %247, label %241

241:                                              ; preds = %235
  %242 = shl i64 %237, 1
  %243 = icmp eq i64 %239, 1
  %244 = icmp uge i64 %242, %74
  %245 = select i1 %243, i1 %244, i1 false
  %246 = zext i1 %245 to i64
  br label %247

247:                                              ; preds = %241, %235
  %248 = phi i64 [ 1, %235 ], [ %246, %241 ]
  %249 = shl i64 %236, 1
  %250 = or disjoint i64 %249, 1
  %251 = add i64 %250, %248
  br label %252

252:                                              ; preds = %3, %134, %88, %247, %1
  %253 = phi i64 [ 0, %1 ], [ %251, %247 ], [ %138, %134 ], [ 0, %88 ], [ %0, %3 ]
  ret i64 %253
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_recover_api(i64 noundef %0) local_unnamed_addr #0 {
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
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
