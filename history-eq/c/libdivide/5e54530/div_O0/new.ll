; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/5e54530/wrap_div.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/5e54530/wrap_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @target_raw_quot(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i64 %0, ptr %21, align 8
  store i64 %1, ptr %22, align 8
  store i64 %2, ptr %23, align 8
  %25 = load i64, ptr %21, align 8
  %26 = load i64, ptr %22, align 8
  %27 = load i64, ptr %23, align 8
  store i64 %25, ptr %5, align 8
  store i64 %26, ptr %6, align 8
  store i64 %27, ptr %7, align 8
  store ptr %24, ptr %8, align 8
  store i64 4294967296, ptr %9, align 8
  %28 = load i64, ptr %5, align 8
  %29 = load i64, ptr %7, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load ptr, ptr %8, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr %8, align 8
  store i64 -1, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %31
  store i64 -1, ptr %4, align 8
  br label %167

37:                                               ; preds = %3
  %38 = load i64, ptr %7, align 8
  %39 = call i32 @libdivide__count_leading_zeros64(i64 noundef %38)
  store i32 %39, ptr %20, align 4
  %40 = load i32, ptr %20, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load i64, ptr %7, align 8
  %44 = load i32, ptr %20, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 %43, %45
  store i64 %46, ptr %7, align 8
  %47 = load i64, ptr %5, align 8
  %48 = load i32, ptr %20, align 4
  %49 = zext i32 %48 to i64
  %50 = shl i64 %47, %49
  %51 = load i64, ptr %6, align 8
  %52 = load i32, ptr %20, align 4
  %53 = sub nsw i32 64, %52
  %54 = zext i32 %53 to i64
  %55 = lshr i64 %51, %54
  %56 = or i64 %50, %55
  store i64 %56, ptr %16, align 8
  %57 = load i64, ptr %6, align 8
  %58 = load i32, ptr %20, align 4
  %59 = zext i32 %58 to i64
  %60 = shl i64 %57, %59
  store i64 %60, ptr %18, align 8
  br label %64

61:                                               ; preds = %37
  %62 = load i64, ptr %5, align 8
  store i64 %62, ptr %16, align 8
  %63 = load i64, ptr %6, align 8
  store i64 %63, ptr %18, align 8
  br label %64

64:                                               ; preds = %61, %42
  %65 = load i64, ptr %7, align 8
  %66 = lshr i64 %65, 32
  store i64 %66, ptr %12, align 8
  %67 = load i64, ptr %7, align 8
  %68 = and i64 %67, 4294967295
  store i64 %68, ptr %13, align 8
  %69 = load i64, ptr %18, align 8
  %70 = lshr i64 %69, 32
  store i64 %70, ptr %10, align 8
  %71 = load i64, ptr %18, align 8
  %72 = and i64 %71, 4294967295
  store i64 %72, ptr %11, align 8
  %73 = load i64, ptr %16, align 8
  %74 = load i64, ptr %12, align 8
  %75 = udiv i64 %73, %74
  store i64 %75, ptr %14, align 8
  %76 = load i64, ptr %16, align 8
  %77 = load i64, ptr %14, align 8
  %78 = load i64, ptr %12, align 8
  %79 = mul i64 %77, %78
  %80 = sub i64 %76, %79
  store i64 %80, ptr %19, align 8
  br label %81

81:                                               ; preds = %104, %64
  %82 = load i64, ptr %14, align 8
  %83 = icmp uge i64 %82, 4294967296
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = load i64, ptr %14, align 8
  %86 = load i64, ptr %13, align 8
  %87 = mul i64 %85, %86
  %88 = load i64, ptr %19, align 8
  %89 = mul i64 4294967296, %88
  %90 = load i64, ptr %10, align 8
  %91 = add i64 %89, %90
  %92 = icmp ugt i64 %87, %91
  br label %93

93:                                               ; preds = %84, %81
  %94 = phi i1 [ true, %81 ], [ %92, %84 ]
  br i1 %94, label %95, label %105

95:                                               ; preds = %93
  %96 = load i64, ptr %14, align 8
  %97 = sub i64 %96, 1
  store i64 %97, ptr %14, align 8
  %98 = load i64, ptr %19, align 8
  %99 = load i64, ptr %12, align 8
  %100 = add i64 %98, %99
  store i64 %100, ptr %19, align 8
  %101 = load i64, ptr %19, align 8
  %102 = icmp uge i64 %101, 4294967296
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %105

104:                                              ; preds = %95
  br label %81

105:                                              ; preds = %103, %93
  %106 = load i64, ptr %16, align 8
  %107 = mul i64 %106, 4294967296
  %108 = load i64, ptr %10, align 8
  %109 = add i64 %107, %108
  %110 = load i64, ptr %14, align 8
  %111 = load i64, ptr %7, align 8
  %112 = mul i64 %110, %111
  %113 = sub i64 %109, %112
  store i64 %113, ptr %17, align 8
  %114 = load i64, ptr %17, align 8
  %115 = load i64, ptr %12, align 8
  %116 = udiv i64 %114, %115
  store i64 %116, ptr %15, align 8
  %117 = load i64, ptr %17, align 8
  %118 = load i64, ptr %15, align 8
  %119 = load i64, ptr %12, align 8
  %120 = mul i64 %118, %119
  %121 = sub i64 %117, %120
  store i64 %121, ptr %19, align 8
  br label %122

122:                                              ; preds = %145, %105
  %123 = load i64, ptr %15, align 8
  %124 = icmp uge i64 %123, 4294967296
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load i64, ptr %15, align 8
  %127 = load i64, ptr %13, align 8
  %128 = mul i64 %126, %127
  %129 = load i64, ptr %19, align 8
  %130 = mul i64 4294967296, %129
  %131 = load i64, ptr %11, align 8
  %132 = add i64 %130, %131
  %133 = icmp ugt i64 %128, %132
  br label %134

134:                                              ; preds = %125, %122
  %135 = phi i1 [ true, %122 ], [ %133, %125 ]
  br i1 %135, label %136, label %146

136:                                              ; preds = %134
  %137 = load i64, ptr %15, align 8
  %138 = sub i64 %137, 1
  store i64 %138, ptr %15, align 8
  %139 = load i64, ptr %19, align 8
  %140 = load i64, ptr %12, align 8
  %141 = add i64 %139, %140
  store i64 %141, ptr %19, align 8
  %142 = load i64, ptr %19, align 8
  %143 = icmp uge i64 %142, 4294967296
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %146

145:                                              ; preds = %136
  br label %122

146:                                              ; preds = %144, %134
  %147 = load ptr, ptr %8, align 8
  %148 = icmp ne ptr %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load i64, ptr %17, align 8
  %151 = mul i64 %150, 4294967296
  %152 = load i64, ptr %11, align 8
  %153 = add i64 %151, %152
  %154 = load i64, ptr %15, align 8
  %155 = load i64, ptr %7, align 8
  %156 = mul i64 %154, %155
  %157 = sub i64 %153, %156
  %158 = load i32, ptr %20, align 4
  %159 = zext i32 %158 to i64
  %160 = lshr i64 %157, %159
  %161 = load ptr, ptr %8, align 8
  store i64 %160, ptr %161, align 8
  br label %162

162:                                              ; preds = %149, %146
  %163 = load i64, ptr %14, align 8
  %164 = mul i64 %163, 4294967296
  %165 = load i64, ptr %15, align 8
  %166 = add i64 %164, %165
  store i64 %166, ptr %4, align 8
  br label %167

167:                                              ; preds = %36, %162
  %168 = load i64, ptr %4, align 8
  ret i64 %168
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @libdivide_128_div_64_to_64(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i64 %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store i64 4294967296, ptr %10, align 8
  %22 = load i64, ptr %6, align 8
  %23 = load i64, ptr %8, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load ptr, ptr %9, align 8
  %27 = icmp ne ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load ptr, ptr %9, align 8
  store i64 -1, ptr %29, align 8
  br label %30

30:                                               ; preds = %28, %25
  store i64 -1, ptr %5, align 8
  br label %161

31:                                               ; preds = %4
  %32 = load i64, ptr %8, align 8
  %33 = call i32 @libdivide__count_leading_zeros64(i64 noundef %32)
  store i32 %33, ptr %21, align 4
  %34 = load i32, ptr %21, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load i64, ptr %8, align 8
  %38 = load i32, ptr %21, align 4
  %39 = zext i32 %38 to i64
  %40 = shl i64 %37, %39
  store i64 %40, ptr %8, align 8
  %41 = load i64, ptr %6, align 8
  %42 = load i32, ptr %21, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 %41, %43
  %45 = load i64, ptr %7, align 8
  %46 = load i32, ptr %21, align 4
  %47 = sub nsw i32 64, %46
  %48 = zext i32 %47 to i64
  %49 = lshr i64 %45, %48
  %50 = or i64 %44, %49
  store i64 %50, ptr %17, align 8
  %51 = load i64, ptr %7, align 8
  %52 = load i32, ptr %21, align 4
  %53 = zext i32 %52 to i64
  %54 = shl i64 %51, %53
  store i64 %54, ptr %19, align 8
  br label %58

55:                                               ; preds = %31
  %56 = load i64, ptr %6, align 8
  store i64 %56, ptr %17, align 8
  %57 = load i64, ptr %7, align 8
  store i64 %57, ptr %19, align 8
  br label %58

58:                                               ; preds = %55, %36
  %59 = load i64, ptr %8, align 8
  %60 = lshr i64 %59, 32
  store i64 %60, ptr %13, align 8
  %61 = load i64, ptr %8, align 8
  %62 = and i64 %61, 4294967295
  store i64 %62, ptr %14, align 8
  %63 = load i64, ptr %19, align 8
  %64 = lshr i64 %63, 32
  store i64 %64, ptr %11, align 8
  %65 = load i64, ptr %19, align 8
  %66 = and i64 %65, 4294967295
  store i64 %66, ptr %12, align 8
  %67 = load i64, ptr %17, align 8
  %68 = load i64, ptr %13, align 8
  %69 = udiv i64 %67, %68
  store i64 %69, ptr %15, align 8
  %70 = load i64, ptr %17, align 8
  %71 = load i64, ptr %15, align 8
  %72 = load i64, ptr %13, align 8
  %73 = mul i64 %71, %72
  %74 = sub i64 %70, %73
  store i64 %74, ptr %20, align 8
  br label %75

75:                                               ; preds = %98, %58
  %76 = load i64, ptr %15, align 8
  %77 = icmp uge i64 %76, 4294967296
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = load i64, ptr %15, align 8
  %80 = load i64, ptr %14, align 8
  %81 = mul i64 %79, %80
  %82 = load i64, ptr %20, align 8
  %83 = mul i64 4294967296, %82
  %84 = load i64, ptr %11, align 8
  %85 = add i64 %83, %84
  %86 = icmp ugt i64 %81, %85
  br label %87

87:                                               ; preds = %78, %75
  %88 = phi i1 [ true, %75 ], [ %86, %78 ]
  br i1 %88, label %89, label %99

89:                                               ; preds = %87
  %90 = load i64, ptr %15, align 8
  %91 = sub i64 %90, 1
  store i64 %91, ptr %15, align 8
  %92 = load i64, ptr %20, align 8
  %93 = load i64, ptr %13, align 8
  %94 = add i64 %92, %93
  store i64 %94, ptr %20, align 8
  %95 = load i64, ptr %20, align 8
  %96 = icmp uge i64 %95, 4294967296
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %99

98:                                               ; preds = %89
  br label %75

99:                                               ; preds = %97, %87
  %100 = load i64, ptr %17, align 8
  %101 = mul i64 %100, 4294967296
  %102 = load i64, ptr %11, align 8
  %103 = add i64 %101, %102
  %104 = load i64, ptr %15, align 8
  %105 = load i64, ptr %8, align 8
  %106 = mul i64 %104, %105
  %107 = sub i64 %103, %106
  store i64 %107, ptr %18, align 8
  %108 = load i64, ptr %18, align 8
  %109 = load i64, ptr %13, align 8
  %110 = udiv i64 %108, %109
  store i64 %110, ptr %16, align 8
  %111 = load i64, ptr %18, align 8
  %112 = load i64, ptr %16, align 8
  %113 = load i64, ptr %13, align 8
  %114 = mul i64 %112, %113
  %115 = sub i64 %111, %114
  store i64 %115, ptr %20, align 8
  br label %116

116:                                              ; preds = %139, %99
  %117 = load i64, ptr %16, align 8
  %118 = icmp uge i64 %117, 4294967296
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = load i64, ptr %16, align 8
  %121 = load i64, ptr %14, align 8
  %122 = mul i64 %120, %121
  %123 = load i64, ptr %20, align 8
  %124 = mul i64 4294967296, %123
  %125 = load i64, ptr %12, align 8
  %126 = add i64 %124, %125
  %127 = icmp ugt i64 %122, %126
  br label %128

128:                                              ; preds = %119, %116
  %129 = phi i1 [ true, %116 ], [ %127, %119 ]
  br i1 %129, label %130, label %140

130:                                              ; preds = %128
  %131 = load i64, ptr %16, align 8
  %132 = sub i64 %131, 1
  store i64 %132, ptr %16, align 8
  %133 = load i64, ptr %20, align 8
  %134 = load i64, ptr %13, align 8
  %135 = add i64 %133, %134
  store i64 %135, ptr %20, align 8
  %136 = load i64, ptr %20, align 8
  %137 = icmp uge i64 %136, 4294967296
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %140

139:                                              ; preds = %130
  br label %116

140:                                              ; preds = %138, %128
  %141 = load ptr, ptr %9, align 8
  %142 = icmp ne ptr %141, null
  br i1 %142, label %143, label %156

143:                                              ; preds = %140
  %144 = load i64, ptr %18, align 8
  %145 = mul i64 %144, 4294967296
  %146 = load i64, ptr %12, align 8
  %147 = add i64 %145, %146
  %148 = load i64, ptr %16, align 8
  %149 = load i64, ptr %8, align 8
  %150 = mul i64 %148, %149
  %151 = sub i64 %147, %150
  %152 = load i32, ptr %21, align 4
  %153 = zext i32 %152 to i64
  %154 = lshr i64 %151, %153
  %155 = load ptr, ptr %9, align 8
  store i64 %154, ptr %155, align 8
  br label %156

156:                                              ; preds = %143, %140
  %157 = load i64, ptr %15, align 8
  %158 = mul i64 %157, 4294967296
  %159 = load i64, ptr %16, align 8
  %160 = add i64 %158, %159
  store i64 %160, ptr %5, align 8
  br label %161

161:                                              ; preds = %156, %30
  %162 = load i64, ptr %5, align 8
  ret i64 %162
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @target_raw_rem(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i64 %0, ptr %21, align 8
  store i64 %1, ptr %22, align 8
  store i64 %2, ptr %23, align 8
  %25 = load i64, ptr %21, align 8
  %26 = load i64, ptr %22, align 8
  %27 = load i64, ptr %23, align 8
  store i64 %25, ptr %5, align 8
  store i64 %26, ptr %6, align 8
  store i64 %27, ptr %7, align 8
  store ptr %24, ptr %8, align 8
  store i64 4294967296, ptr %9, align 8
  %28 = load i64, ptr %5, align 8
  %29 = load i64, ptr %7, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load ptr, ptr %8, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr %8, align 8
  store i64 -1, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %31
  store i64 -1, ptr %4, align 8
  br label %167

37:                                               ; preds = %3
  %38 = load i64, ptr %7, align 8
  %39 = call i32 @libdivide__count_leading_zeros64(i64 noundef %38)
  store i32 %39, ptr %20, align 4
  %40 = load i32, ptr %20, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load i64, ptr %7, align 8
  %44 = load i32, ptr %20, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 %43, %45
  store i64 %46, ptr %7, align 8
  %47 = load i64, ptr %5, align 8
  %48 = load i32, ptr %20, align 4
  %49 = zext i32 %48 to i64
  %50 = shl i64 %47, %49
  %51 = load i64, ptr %6, align 8
  %52 = load i32, ptr %20, align 4
  %53 = sub nsw i32 64, %52
  %54 = zext i32 %53 to i64
  %55 = lshr i64 %51, %54
  %56 = or i64 %50, %55
  store i64 %56, ptr %16, align 8
  %57 = load i64, ptr %6, align 8
  %58 = load i32, ptr %20, align 4
  %59 = zext i32 %58 to i64
  %60 = shl i64 %57, %59
  store i64 %60, ptr %18, align 8
  br label %64

61:                                               ; preds = %37
  %62 = load i64, ptr %5, align 8
  store i64 %62, ptr %16, align 8
  %63 = load i64, ptr %6, align 8
  store i64 %63, ptr %18, align 8
  br label %64

64:                                               ; preds = %61, %42
  %65 = load i64, ptr %7, align 8
  %66 = lshr i64 %65, 32
  store i64 %66, ptr %12, align 8
  %67 = load i64, ptr %7, align 8
  %68 = and i64 %67, 4294967295
  store i64 %68, ptr %13, align 8
  %69 = load i64, ptr %18, align 8
  %70 = lshr i64 %69, 32
  store i64 %70, ptr %10, align 8
  %71 = load i64, ptr %18, align 8
  %72 = and i64 %71, 4294967295
  store i64 %72, ptr %11, align 8
  %73 = load i64, ptr %16, align 8
  %74 = load i64, ptr %12, align 8
  %75 = udiv i64 %73, %74
  store i64 %75, ptr %14, align 8
  %76 = load i64, ptr %16, align 8
  %77 = load i64, ptr %14, align 8
  %78 = load i64, ptr %12, align 8
  %79 = mul i64 %77, %78
  %80 = sub i64 %76, %79
  store i64 %80, ptr %19, align 8
  br label %81

81:                                               ; preds = %104, %64
  %82 = load i64, ptr %14, align 8
  %83 = icmp uge i64 %82, 4294967296
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = load i64, ptr %14, align 8
  %86 = load i64, ptr %13, align 8
  %87 = mul i64 %85, %86
  %88 = load i64, ptr %19, align 8
  %89 = mul i64 4294967296, %88
  %90 = load i64, ptr %10, align 8
  %91 = add i64 %89, %90
  %92 = icmp ugt i64 %87, %91
  br label %93

93:                                               ; preds = %84, %81
  %94 = phi i1 [ true, %81 ], [ %92, %84 ]
  br i1 %94, label %95, label %105

95:                                               ; preds = %93
  %96 = load i64, ptr %14, align 8
  %97 = sub i64 %96, 1
  store i64 %97, ptr %14, align 8
  %98 = load i64, ptr %19, align 8
  %99 = load i64, ptr %12, align 8
  %100 = add i64 %98, %99
  store i64 %100, ptr %19, align 8
  %101 = load i64, ptr %19, align 8
  %102 = icmp uge i64 %101, 4294967296
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %105

104:                                              ; preds = %95
  br label %81

105:                                              ; preds = %103, %93
  %106 = load i64, ptr %16, align 8
  %107 = mul i64 %106, 4294967296
  %108 = load i64, ptr %10, align 8
  %109 = add i64 %107, %108
  %110 = load i64, ptr %14, align 8
  %111 = load i64, ptr %7, align 8
  %112 = mul i64 %110, %111
  %113 = sub i64 %109, %112
  store i64 %113, ptr %17, align 8
  %114 = load i64, ptr %17, align 8
  %115 = load i64, ptr %12, align 8
  %116 = udiv i64 %114, %115
  store i64 %116, ptr %15, align 8
  %117 = load i64, ptr %17, align 8
  %118 = load i64, ptr %15, align 8
  %119 = load i64, ptr %12, align 8
  %120 = mul i64 %118, %119
  %121 = sub i64 %117, %120
  store i64 %121, ptr %19, align 8
  br label %122

122:                                              ; preds = %145, %105
  %123 = load i64, ptr %15, align 8
  %124 = icmp uge i64 %123, 4294967296
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load i64, ptr %15, align 8
  %127 = load i64, ptr %13, align 8
  %128 = mul i64 %126, %127
  %129 = load i64, ptr %19, align 8
  %130 = mul i64 4294967296, %129
  %131 = load i64, ptr %11, align 8
  %132 = add i64 %130, %131
  %133 = icmp ugt i64 %128, %132
  br label %134

134:                                              ; preds = %125, %122
  %135 = phi i1 [ true, %122 ], [ %133, %125 ]
  br i1 %135, label %136, label %146

136:                                              ; preds = %134
  %137 = load i64, ptr %15, align 8
  %138 = sub i64 %137, 1
  store i64 %138, ptr %15, align 8
  %139 = load i64, ptr %19, align 8
  %140 = load i64, ptr %12, align 8
  %141 = add i64 %139, %140
  store i64 %141, ptr %19, align 8
  %142 = load i64, ptr %19, align 8
  %143 = icmp uge i64 %142, 4294967296
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %146

145:                                              ; preds = %136
  br label %122

146:                                              ; preds = %144, %134
  %147 = load ptr, ptr %8, align 8
  %148 = icmp ne ptr %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load i64, ptr %17, align 8
  %151 = mul i64 %150, 4294967296
  %152 = load i64, ptr %11, align 8
  %153 = add i64 %151, %152
  %154 = load i64, ptr %15, align 8
  %155 = load i64, ptr %7, align 8
  %156 = mul i64 %154, %155
  %157 = sub i64 %153, %156
  %158 = load i32, ptr %20, align 4
  %159 = zext i32 %158 to i64
  %160 = lshr i64 %157, %159
  %161 = load ptr, ptr %8, align 8
  store i64 %160, ptr %161, align 8
  br label %162

162:                                              ; preds = %149, %146
  %163 = load i64, ptr %14, align 8
  %164 = mul i64 %163, 4294967296
  %165 = load i64, ptr %15, align 8
  %166 = add i64 %164, %165
  store i64 %166, ptr %4, align 8
  br label %167

167:                                              ; preds = %36, %162
  %168 = load i64, ptr %4, align 8
  %169 = load i64, ptr %24, align 8
  ret i64 %169
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @target_pre_quot(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i64 %0, ptr %22, align 8
  store i64 %1, ptr %23, align 8
  store i64 %2, ptr %24, align 8
  %26 = load i64, ptr %22, align 8
  %27 = load i64, ptr %24, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i64 0, ptr %21, align 8
  br label %175

30:                                               ; preds = %3
  %31 = load i64, ptr %22, align 8
  %32 = load i64, ptr %23, align 8
  %33 = load i64, ptr %24, align 8
  store i64 %31, ptr %5, align 8
  store i64 %32, ptr %6, align 8
  store i64 %33, ptr %7, align 8
  store ptr %25, ptr %8, align 8
  store i64 4294967296, ptr %9, align 8
  %34 = load i64, ptr %5, align 8
  %35 = load i64, ptr %7, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load ptr, ptr %8, align 8
  %39 = icmp ne ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load ptr, ptr %8, align 8
  store i64 -1, ptr %41, align 8
  br label %42

42:                                               ; preds = %40, %37
  store i64 -1, ptr %4, align 8
  br label %173

43:                                               ; preds = %30
  %44 = load i64, ptr %7, align 8
  %45 = call i32 @libdivide__count_leading_zeros64(i64 noundef %44)
  store i32 %45, ptr %20, align 4
  %46 = load i32, ptr %20, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load i64, ptr %7, align 8
  %50 = load i32, ptr %20, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 %49, %51
  store i64 %52, ptr %7, align 8
  %53 = load i64, ptr %5, align 8
  %54 = load i32, ptr %20, align 4
  %55 = zext i32 %54 to i64
  %56 = shl i64 %53, %55
  %57 = load i64, ptr %6, align 8
  %58 = load i32, ptr %20, align 4
  %59 = sub nsw i32 64, %58
  %60 = zext i32 %59 to i64
  %61 = lshr i64 %57, %60
  %62 = or i64 %56, %61
  store i64 %62, ptr %16, align 8
  %63 = load i64, ptr %6, align 8
  %64 = load i32, ptr %20, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 %63, %65
  store i64 %66, ptr %18, align 8
  br label %70

67:                                               ; preds = %43
  %68 = load i64, ptr %5, align 8
  store i64 %68, ptr %16, align 8
  %69 = load i64, ptr %6, align 8
  store i64 %69, ptr %18, align 8
  br label %70

70:                                               ; preds = %67, %48
  %71 = load i64, ptr %7, align 8
  %72 = lshr i64 %71, 32
  store i64 %72, ptr %12, align 8
  %73 = load i64, ptr %7, align 8
  %74 = and i64 %73, 4294967295
  store i64 %74, ptr %13, align 8
  %75 = load i64, ptr %18, align 8
  %76 = lshr i64 %75, 32
  store i64 %76, ptr %10, align 8
  %77 = load i64, ptr %18, align 8
  %78 = and i64 %77, 4294967295
  store i64 %78, ptr %11, align 8
  %79 = load i64, ptr %16, align 8
  %80 = load i64, ptr %12, align 8
  %81 = udiv i64 %79, %80
  store i64 %81, ptr %14, align 8
  %82 = load i64, ptr %16, align 8
  %83 = load i64, ptr %14, align 8
  %84 = load i64, ptr %12, align 8
  %85 = mul i64 %83, %84
  %86 = sub i64 %82, %85
  store i64 %86, ptr %19, align 8
  br label %87

87:                                               ; preds = %110, %70
  %88 = load i64, ptr %14, align 8
  %89 = icmp uge i64 %88, 4294967296
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load i64, ptr %14, align 8
  %92 = load i64, ptr %13, align 8
  %93 = mul i64 %91, %92
  %94 = load i64, ptr %19, align 8
  %95 = mul i64 4294967296, %94
  %96 = load i64, ptr %10, align 8
  %97 = add i64 %95, %96
  %98 = icmp ugt i64 %93, %97
  br label %99

99:                                               ; preds = %90, %87
  %100 = phi i1 [ true, %87 ], [ %98, %90 ]
  br i1 %100, label %101, label %111

101:                                              ; preds = %99
  %102 = load i64, ptr %14, align 8
  %103 = sub i64 %102, 1
  store i64 %103, ptr %14, align 8
  %104 = load i64, ptr %19, align 8
  %105 = load i64, ptr %12, align 8
  %106 = add i64 %104, %105
  store i64 %106, ptr %19, align 8
  %107 = load i64, ptr %19, align 8
  %108 = icmp uge i64 %107, 4294967296
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %111

110:                                              ; preds = %101
  br label %87

111:                                              ; preds = %109, %99
  %112 = load i64, ptr %16, align 8
  %113 = mul i64 %112, 4294967296
  %114 = load i64, ptr %10, align 8
  %115 = add i64 %113, %114
  %116 = load i64, ptr %14, align 8
  %117 = load i64, ptr %7, align 8
  %118 = mul i64 %116, %117
  %119 = sub i64 %115, %118
  store i64 %119, ptr %17, align 8
  %120 = load i64, ptr %17, align 8
  %121 = load i64, ptr %12, align 8
  %122 = udiv i64 %120, %121
  store i64 %122, ptr %15, align 8
  %123 = load i64, ptr %17, align 8
  %124 = load i64, ptr %15, align 8
  %125 = load i64, ptr %12, align 8
  %126 = mul i64 %124, %125
  %127 = sub i64 %123, %126
  store i64 %127, ptr %19, align 8
  br label %128

128:                                              ; preds = %151, %111
  %129 = load i64, ptr %15, align 8
  %130 = icmp uge i64 %129, 4294967296
  br i1 %130, label %140, label %131

131:                                              ; preds = %128
  %132 = load i64, ptr %15, align 8
  %133 = load i64, ptr %13, align 8
  %134 = mul i64 %132, %133
  %135 = load i64, ptr %19, align 8
  %136 = mul i64 4294967296, %135
  %137 = load i64, ptr %11, align 8
  %138 = add i64 %136, %137
  %139 = icmp ugt i64 %134, %138
  br label %140

140:                                              ; preds = %131, %128
  %141 = phi i1 [ true, %128 ], [ %139, %131 ]
  br i1 %141, label %142, label %152

142:                                              ; preds = %140
  %143 = load i64, ptr %15, align 8
  %144 = sub i64 %143, 1
  store i64 %144, ptr %15, align 8
  %145 = load i64, ptr %19, align 8
  %146 = load i64, ptr %12, align 8
  %147 = add i64 %145, %146
  store i64 %147, ptr %19, align 8
  %148 = load i64, ptr %19, align 8
  %149 = icmp uge i64 %148, 4294967296
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %152

151:                                              ; preds = %142
  br label %128

152:                                              ; preds = %150, %140
  %153 = load ptr, ptr %8, align 8
  %154 = icmp ne ptr %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load i64, ptr %17, align 8
  %157 = mul i64 %156, 4294967296
  %158 = load i64, ptr %11, align 8
  %159 = add i64 %157, %158
  %160 = load i64, ptr %15, align 8
  %161 = load i64, ptr %7, align 8
  %162 = mul i64 %160, %161
  %163 = sub i64 %159, %162
  %164 = load i32, ptr %20, align 4
  %165 = zext i32 %164 to i64
  %166 = lshr i64 %163, %165
  %167 = load ptr, ptr %8, align 8
  store i64 %166, ptr %167, align 8
  br label %168

168:                                              ; preds = %155, %152
  %169 = load i64, ptr %14, align 8
  %170 = mul i64 %169, 4294967296
  %171 = load i64, ptr %15, align 8
  %172 = add i64 %170, %171
  store i64 %172, ptr %4, align 8
  br label %173

173:                                              ; preds = %42, %168
  %174 = load i64, ptr %4, align 8
  store i64 %174, ptr %21, align 8
  br label %175

175:                                              ; preds = %173, %29
  %176 = load i64, ptr %21, align 8
  ret i64 %176
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @target_pre_rem(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i64 %0, ptr %22, align 8
  store i64 %1, ptr %23, align 8
  store i64 %2, ptr %24, align 8
  %26 = load i64, ptr %22, align 8
  %27 = load i64, ptr %24, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i64 0, ptr %21, align 8
  br label %176

30:                                               ; preds = %3
  %31 = load i64, ptr %22, align 8
  %32 = load i64, ptr %23, align 8
  %33 = load i64, ptr %24, align 8
  store i64 %31, ptr %5, align 8
  store i64 %32, ptr %6, align 8
  store i64 %33, ptr %7, align 8
  store ptr %25, ptr %8, align 8
  store i64 4294967296, ptr %9, align 8
  %34 = load i64, ptr %5, align 8
  %35 = load i64, ptr %7, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load ptr, ptr %8, align 8
  %39 = icmp ne ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load ptr, ptr %8, align 8
  store i64 -1, ptr %41, align 8
  br label %42

42:                                               ; preds = %40, %37
  store i64 -1, ptr %4, align 8
  br label %173

43:                                               ; preds = %30
  %44 = load i64, ptr %7, align 8
  %45 = call i32 @libdivide__count_leading_zeros64(i64 noundef %44)
  store i32 %45, ptr %20, align 4
  %46 = load i32, ptr %20, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load i64, ptr %7, align 8
  %50 = load i32, ptr %20, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 %49, %51
  store i64 %52, ptr %7, align 8
  %53 = load i64, ptr %5, align 8
  %54 = load i32, ptr %20, align 4
  %55 = zext i32 %54 to i64
  %56 = shl i64 %53, %55
  %57 = load i64, ptr %6, align 8
  %58 = load i32, ptr %20, align 4
  %59 = sub nsw i32 64, %58
  %60 = zext i32 %59 to i64
  %61 = lshr i64 %57, %60
  %62 = or i64 %56, %61
  store i64 %62, ptr %16, align 8
  %63 = load i64, ptr %6, align 8
  %64 = load i32, ptr %20, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 %63, %65
  store i64 %66, ptr %18, align 8
  br label %70

67:                                               ; preds = %43
  %68 = load i64, ptr %5, align 8
  store i64 %68, ptr %16, align 8
  %69 = load i64, ptr %6, align 8
  store i64 %69, ptr %18, align 8
  br label %70

70:                                               ; preds = %67, %48
  %71 = load i64, ptr %7, align 8
  %72 = lshr i64 %71, 32
  store i64 %72, ptr %12, align 8
  %73 = load i64, ptr %7, align 8
  %74 = and i64 %73, 4294967295
  store i64 %74, ptr %13, align 8
  %75 = load i64, ptr %18, align 8
  %76 = lshr i64 %75, 32
  store i64 %76, ptr %10, align 8
  %77 = load i64, ptr %18, align 8
  %78 = and i64 %77, 4294967295
  store i64 %78, ptr %11, align 8
  %79 = load i64, ptr %16, align 8
  %80 = load i64, ptr %12, align 8
  %81 = udiv i64 %79, %80
  store i64 %81, ptr %14, align 8
  %82 = load i64, ptr %16, align 8
  %83 = load i64, ptr %14, align 8
  %84 = load i64, ptr %12, align 8
  %85 = mul i64 %83, %84
  %86 = sub i64 %82, %85
  store i64 %86, ptr %19, align 8
  br label %87

87:                                               ; preds = %110, %70
  %88 = load i64, ptr %14, align 8
  %89 = icmp uge i64 %88, 4294967296
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load i64, ptr %14, align 8
  %92 = load i64, ptr %13, align 8
  %93 = mul i64 %91, %92
  %94 = load i64, ptr %19, align 8
  %95 = mul i64 4294967296, %94
  %96 = load i64, ptr %10, align 8
  %97 = add i64 %95, %96
  %98 = icmp ugt i64 %93, %97
  br label %99

99:                                               ; preds = %90, %87
  %100 = phi i1 [ true, %87 ], [ %98, %90 ]
  br i1 %100, label %101, label %111

101:                                              ; preds = %99
  %102 = load i64, ptr %14, align 8
  %103 = sub i64 %102, 1
  store i64 %103, ptr %14, align 8
  %104 = load i64, ptr %19, align 8
  %105 = load i64, ptr %12, align 8
  %106 = add i64 %104, %105
  store i64 %106, ptr %19, align 8
  %107 = load i64, ptr %19, align 8
  %108 = icmp uge i64 %107, 4294967296
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %111

110:                                              ; preds = %101
  br label %87

111:                                              ; preds = %109, %99
  %112 = load i64, ptr %16, align 8
  %113 = mul i64 %112, 4294967296
  %114 = load i64, ptr %10, align 8
  %115 = add i64 %113, %114
  %116 = load i64, ptr %14, align 8
  %117 = load i64, ptr %7, align 8
  %118 = mul i64 %116, %117
  %119 = sub i64 %115, %118
  store i64 %119, ptr %17, align 8
  %120 = load i64, ptr %17, align 8
  %121 = load i64, ptr %12, align 8
  %122 = udiv i64 %120, %121
  store i64 %122, ptr %15, align 8
  %123 = load i64, ptr %17, align 8
  %124 = load i64, ptr %15, align 8
  %125 = load i64, ptr %12, align 8
  %126 = mul i64 %124, %125
  %127 = sub i64 %123, %126
  store i64 %127, ptr %19, align 8
  br label %128

128:                                              ; preds = %151, %111
  %129 = load i64, ptr %15, align 8
  %130 = icmp uge i64 %129, 4294967296
  br i1 %130, label %140, label %131

131:                                              ; preds = %128
  %132 = load i64, ptr %15, align 8
  %133 = load i64, ptr %13, align 8
  %134 = mul i64 %132, %133
  %135 = load i64, ptr %19, align 8
  %136 = mul i64 4294967296, %135
  %137 = load i64, ptr %11, align 8
  %138 = add i64 %136, %137
  %139 = icmp ugt i64 %134, %138
  br label %140

140:                                              ; preds = %131, %128
  %141 = phi i1 [ true, %128 ], [ %139, %131 ]
  br i1 %141, label %142, label %152

142:                                              ; preds = %140
  %143 = load i64, ptr %15, align 8
  %144 = sub i64 %143, 1
  store i64 %144, ptr %15, align 8
  %145 = load i64, ptr %19, align 8
  %146 = load i64, ptr %12, align 8
  %147 = add i64 %145, %146
  store i64 %147, ptr %19, align 8
  %148 = load i64, ptr %19, align 8
  %149 = icmp uge i64 %148, 4294967296
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %152

151:                                              ; preds = %142
  br label %128

152:                                              ; preds = %150, %140
  %153 = load ptr, ptr %8, align 8
  %154 = icmp ne ptr %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load i64, ptr %17, align 8
  %157 = mul i64 %156, 4294967296
  %158 = load i64, ptr %11, align 8
  %159 = add i64 %157, %158
  %160 = load i64, ptr %15, align 8
  %161 = load i64, ptr %7, align 8
  %162 = mul i64 %160, %161
  %163 = sub i64 %159, %162
  %164 = load i32, ptr %20, align 4
  %165 = zext i32 %164 to i64
  %166 = lshr i64 %163, %165
  %167 = load ptr, ptr %8, align 8
  store i64 %166, ptr %167, align 8
  br label %168

168:                                              ; preds = %155, %152
  %169 = load i64, ptr %14, align 8
  %170 = mul i64 %169, 4294967296
  %171 = load i64, ptr %15, align 8
  %172 = add i64 %170, %171
  store i64 %172, ptr %4, align 8
  br label %173

173:                                              ; preds = %42, %168
  %174 = load i64, ptr %4, align 8
  %175 = load i64, ptr %25, align 8
  store i64 %175, ptr %21, align 8
  br label %176

176:                                              ; preds = %173, %29
  %177 = load i64, ptr %21, align 8
  ret i64 %177
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @libdivide__count_leading_zeros64(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
