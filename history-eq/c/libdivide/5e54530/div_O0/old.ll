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
  br label %172

37:                                               ; preds = %3
  %38 = load i64, ptr %7, align 8
  %39 = call i32 @libdivide__count_leading_zeros64(i64 noundef %38)
  store i32 %39, ptr %20, align 4
  %40 = load i32, ptr %20, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %66

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
  %56 = load i32, ptr %20, align 4
  %57 = sub nsw i32 0, %56
  %58 = ashr i32 %57, 31
  %59 = sext i32 %58 to i64
  %60 = and i64 %55, %59
  %61 = or i64 %50, %60
  store i64 %61, ptr %16, align 8
  %62 = load i64, ptr %6, align 8
  %63 = load i32, ptr %20, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 %62, %64
  store i64 %65, ptr %18, align 8
  br label %69

66:                                               ; preds = %37
  %67 = load i64, ptr %5, align 8
  store i64 %67, ptr %16, align 8
  %68 = load i64, ptr %6, align 8
  store i64 %68, ptr %18, align 8
  br label %69

69:                                               ; preds = %66, %42
  %70 = load i64, ptr %7, align 8
  %71 = lshr i64 %70, 32
  store i64 %71, ptr %12, align 8
  %72 = load i64, ptr %7, align 8
  %73 = and i64 %72, 4294967295
  store i64 %73, ptr %13, align 8
  %74 = load i64, ptr %18, align 8
  %75 = lshr i64 %74, 32
  store i64 %75, ptr %10, align 8
  %76 = load i64, ptr %18, align 8
  %77 = and i64 %76, 4294967295
  store i64 %77, ptr %11, align 8
  %78 = load i64, ptr %16, align 8
  %79 = load i64, ptr %12, align 8
  %80 = udiv i64 %78, %79
  store i64 %80, ptr %14, align 8
  %81 = load i64, ptr %16, align 8
  %82 = load i64, ptr %14, align 8
  %83 = load i64, ptr %12, align 8
  %84 = mul i64 %82, %83
  %85 = sub i64 %81, %84
  store i64 %85, ptr %19, align 8
  br label %86

86:                                               ; preds = %109, %69
  %87 = load i64, ptr %14, align 8
  %88 = icmp uge i64 %87, 4294967296
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = load i64, ptr %14, align 8
  %91 = load i64, ptr %13, align 8
  %92 = mul i64 %90, %91
  %93 = load i64, ptr %19, align 8
  %94 = mul i64 4294967296, %93
  %95 = load i64, ptr %10, align 8
  %96 = add i64 %94, %95
  %97 = icmp ugt i64 %92, %96
  br label %98

98:                                               ; preds = %89, %86
  %99 = phi i1 [ true, %86 ], [ %97, %89 ]
  br i1 %99, label %100, label %110

100:                                              ; preds = %98
  %101 = load i64, ptr %14, align 8
  %102 = sub i64 %101, 1
  store i64 %102, ptr %14, align 8
  %103 = load i64, ptr %19, align 8
  %104 = load i64, ptr %12, align 8
  %105 = add i64 %103, %104
  store i64 %105, ptr %19, align 8
  %106 = load i64, ptr %19, align 8
  %107 = icmp uge i64 %106, 4294967296
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %110

109:                                              ; preds = %100
  br label %86

110:                                              ; preds = %108, %98
  %111 = load i64, ptr %16, align 8
  %112 = mul i64 %111, 4294967296
  %113 = load i64, ptr %10, align 8
  %114 = add i64 %112, %113
  %115 = load i64, ptr %14, align 8
  %116 = load i64, ptr %7, align 8
  %117 = mul i64 %115, %116
  %118 = sub i64 %114, %117
  store i64 %118, ptr %17, align 8
  %119 = load i64, ptr %17, align 8
  %120 = load i64, ptr %12, align 8
  %121 = udiv i64 %119, %120
  store i64 %121, ptr %15, align 8
  %122 = load i64, ptr %17, align 8
  %123 = load i64, ptr %15, align 8
  %124 = load i64, ptr %12, align 8
  %125 = mul i64 %123, %124
  %126 = sub i64 %122, %125
  store i64 %126, ptr %19, align 8
  br label %127

127:                                              ; preds = %150, %110
  %128 = load i64, ptr %15, align 8
  %129 = icmp uge i64 %128, 4294967296
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = load i64, ptr %15, align 8
  %132 = load i64, ptr %13, align 8
  %133 = mul i64 %131, %132
  %134 = load i64, ptr %19, align 8
  %135 = mul i64 4294967296, %134
  %136 = load i64, ptr %11, align 8
  %137 = add i64 %135, %136
  %138 = icmp ugt i64 %133, %137
  br label %139

139:                                              ; preds = %130, %127
  %140 = phi i1 [ true, %127 ], [ %138, %130 ]
  br i1 %140, label %141, label %151

141:                                              ; preds = %139
  %142 = load i64, ptr %15, align 8
  %143 = sub i64 %142, 1
  store i64 %143, ptr %15, align 8
  %144 = load i64, ptr %19, align 8
  %145 = load i64, ptr %12, align 8
  %146 = add i64 %144, %145
  store i64 %146, ptr %19, align 8
  %147 = load i64, ptr %19, align 8
  %148 = icmp uge i64 %147, 4294967296
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %151

150:                                              ; preds = %141
  br label %127

151:                                              ; preds = %149, %139
  %152 = load ptr, ptr %8, align 8
  %153 = icmp ne ptr %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = load i64, ptr %17, align 8
  %156 = mul i64 %155, 4294967296
  %157 = load i64, ptr %11, align 8
  %158 = add i64 %156, %157
  %159 = load i64, ptr %15, align 8
  %160 = load i64, ptr %7, align 8
  %161 = mul i64 %159, %160
  %162 = sub i64 %158, %161
  %163 = load i32, ptr %20, align 4
  %164 = zext i32 %163 to i64
  %165 = lshr i64 %162, %164
  %166 = load ptr, ptr %8, align 8
  store i64 %165, ptr %166, align 8
  br label %167

167:                                              ; preds = %154, %151
  %168 = load i64, ptr %14, align 8
  %169 = mul i64 %168, 4294967296
  %170 = load i64, ptr %15, align 8
  %171 = add i64 %169, %170
  store i64 %171, ptr %4, align 8
  br label %172

172:                                              ; preds = %36, %167
  %173 = load i64, ptr %4, align 8
  ret i64 %173
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
  br label %166

31:                                               ; preds = %4
  %32 = load i64, ptr %8, align 8
  %33 = call i32 @libdivide__count_leading_zeros64(i64 noundef %32)
  store i32 %33, ptr %21, align 4
  %34 = load i32, ptr %21, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %60

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
  %50 = load i32, ptr %21, align 4
  %51 = sub nsw i32 0, %50
  %52 = ashr i32 %51, 31
  %53 = sext i32 %52 to i64
  %54 = and i64 %49, %53
  %55 = or i64 %44, %54
  store i64 %55, ptr %17, align 8
  %56 = load i64, ptr %7, align 8
  %57 = load i32, ptr %21, align 4
  %58 = zext i32 %57 to i64
  %59 = shl i64 %56, %58
  store i64 %59, ptr %19, align 8
  br label %63

60:                                               ; preds = %31
  %61 = load i64, ptr %6, align 8
  store i64 %61, ptr %17, align 8
  %62 = load i64, ptr %7, align 8
  store i64 %62, ptr %19, align 8
  br label %63

63:                                               ; preds = %60, %36
  %64 = load i64, ptr %8, align 8
  %65 = lshr i64 %64, 32
  store i64 %65, ptr %13, align 8
  %66 = load i64, ptr %8, align 8
  %67 = and i64 %66, 4294967295
  store i64 %67, ptr %14, align 8
  %68 = load i64, ptr %19, align 8
  %69 = lshr i64 %68, 32
  store i64 %69, ptr %11, align 8
  %70 = load i64, ptr %19, align 8
  %71 = and i64 %70, 4294967295
  store i64 %71, ptr %12, align 8
  %72 = load i64, ptr %17, align 8
  %73 = load i64, ptr %13, align 8
  %74 = udiv i64 %72, %73
  store i64 %74, ptr %15, align 8
  %75 = load i64, ptr %17, align 8
  %76 = load i64, ptr %15, align 8
  %77 = load i64, ptr %13, align 8
  %78 = mul i64 %76, %77
  %79 = sub i64 %75, %78
  store i64 %79, ptr %20, align 8
  br label %80

80:                                               ; preds = %103, %63
  %81 = load i64, ptr %15, align 8
  %82 = icmp uge i64 %81, 4294967296
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load i64, ptr %15, align 8
  %85 = load i64, ptr %14, align 8
  %86 = mul i64 %84, %85
  %87 = load i64, ptr %20, align 8
  %88 = mul i64 4294967296, %87
  %89 = load i64, ptr %11, align 8
  %90 = add i64 %88, %89
  %91 = icmp ugt i64 %86, %90
  br label %92

92:                                               ; preds = %83, %80
  %93 = phi i1 [ true, %80 ], [ %91, %83 ]
  br i1 %93, label %94, label %104

94:                                               ; preds = %92
  %95 = load i64, ptr %15, align 8
  %96 = sub i64 %95, 1
  store i64 %96, ptr %15, align 8
  %97 = load i64, ptr %20, align 8
  %98 = load i64, ptr %13, align 8
  %99 = add i64 %97, %98
  store i64 %99, ptr %20, align 8
  %100 = load i64, ptr %20, align 8
  %101 = icmp uge i64 %100, 4294967296
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %104

103:                                              ; preds = %94
  br label %80

104:                                              ; preds = %102, %92
  %105 = load i64, ptr %17, align 8
  %106 = mul i64 %105, 4294967296
  %107 = load i64, ptr %11, align 8
  %108 = add i64 %106, %107
  %109 = load i64, ptr %15, align 8
  %110 = load i64, ptr %8, align 8
  %111 = mul i64 %109, %110
  %112 = sub i64 %108, %111
  store i64 %112, ptr %18, align 8
  %113 = load i64, ptr %18, align 8
  %114 = load i64, ptr %13, align 8
  %115 = udiv i64 %113, %114
  store i64 %115, ptr %16, align 8
  %116 = load i64, ptr %18, align 8
  %117 = load i64, ptr %16, align 8
  %118 = load i64, ptr %13, align 8
  %119 = mul i64 %117, %118
  %120 = sub i64 %116, %119
  store i64 %120, ptr %20, align 8
  br label %121

121:                                              ; preds = %144, %104
  %122 = load i64, ptr %16, align 8
  %123 = icmp uge i64 %122, 4294967296
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load i64, ptr %16, align 8
  %126 = load i64, ptr %14, align 8
  %127 = mul i64 %125, %126
  %128 = load i64, ptr %20, align 8
  %129 = mul i64 4294967296, %128
  %130 = load i64, ptr %12, align 8
  %131 = add i64 %129, %130
  %132 = icmp ugt i64 %127, %131
  br label %133

133:                                              ; preds = %124, %121
  %134 = phi i1 [ true, %121 ], [ %132, %124 ]
  br i1 %134, label %135, label %145

135:                                              ; preds = %133
  %136 = load i64, ptr %16, align 8
  %137 = sub i64 %136, 1
  store i64 %137, ptr %16, align 8
  %138 = load i64, ptr %20, align 8
  %139 = load i64, ptr %13, align 8
  %140 = add i64 %138, %139
  store i64 %140, ptr %20, align 8
  %141 = load i64, ptr %20, align 8
  %142 = icmp uge i64 %141, 4294967296
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %145

144:                                              ; preds = %135
  br label %121

145:                                              ; preds = %143, %133
  %146 = load ptr, ptr %9, align 8
  %147 = icmp ne ptr %146, null
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load i64, ptr %18, align 8
  %150 = mul i64 %149, 4294967296
  %151 = load i64, ptr %12, align 8
  %152 = add i64 %150, %151
  %153 = load i64, ptr %16, align 8
  %154 = load i64, ptr %8, align 8
  %155 = mul i64 %153, %154
  %156 = sub i64 %152, %155
  %157 = load i32, ptr %21, align 4
  %158 = zext i32 %157 to i64
  %159 = lshr i64 %156, %158
  %160 = load ptr, ptr %9, align 8
  store i64 %159, ptr %160, align 8
  br label %161

161:                                              ; preds = %148, %145
  %162 = load i64, ptr %15, align 8
  %163 = mul i64 %162, 4294967296
  %164 = load i64, ptr %16, align 8
  %165 = add i64 %163, %164
  store i64 %165, ptr %5, align 8
  br label %166

166:                                              ; preds = %161, %30
  %167 = load i64, ptr %5, align 8
  ret i64 %167
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
  br label %172

37:                                               ; preds = %3
  %38 = load i64, ptr %7, align 8
  %39 = call i32 @libdivide__count_leading_zeros64(i64 noundef %38)
  store i32 %39, ptr %20, align 4
  %40 = load i32, ptr %20, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %66

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
  %56 = load i32, ptr %20, align 4
  %57 = sub nsw i32 0, %56
  %58 = ashr i32 %57, 31
  %59 = sext i32 %58 to i64
  %60 = and i64 %55, %59
  %61 = or i64 %50, %60
  store i64 %61, ptr %16, align 8
  %62 = load i64, ptr %6, align 8
  %63 = load i32, ptr %20, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 %62, %64
  store i64 %65, ptr %18, align 8
  br label %69

66:                                               ; preds = %37
  %67 = load i64, ptr %5, align 8
  store i64 %67, ptr %16, align 8
  %68 = load i64, ptr %6, align 8
  store i64 %68, ptr %18, align 8
  br label %69

69:                                               ; preds = %66, %42
  %70 = load i64, ptr %7, align 8
  %71 = lshr i64 %70, 32
  store i64 %71, ptr %12, align 8
  %72 = load i64, ptr %7, align 8
  %73 = and i64 %72, 4294967295
  store i64 %73, ptr %13, align 8
  %74 = load i64, ptr %18, align 8
  %75 = lshr i64 %74, 32
  store i64 %75, ptr %10, align 8
  %76 = load i64, ptr %18, align 8
  %77 = and i64 %76, 4294967295
  store i64 %77, ptr %11, align 8
  %78 = load i64, ptr %16, align 8
  %79 = load i64, ptr %12, align 8
  %80 = udiv i64 %78, %79
  store i64 %80, ptr %14, align 8
  %81 = load i64, ptr %16, align 8
  %82 = load i64, ptr %14, align 8
  %83 = load i64, ptr %12, align 8
  %84 = mul i64 %82, %83
  %85 = sub i64 %81, %84
  store i64 %85, ptr %19, align 8
  br label %86

86:                                               ; preds = %109, %69
  %87 = load i64, ptr %14, align 8
  %88 = icmp uge i64 %87, 4294967296
  br i1 %88, label %98, label %89

89:                                               ; preds = %86
  %90 = load i64, ptr %14, align 8
  %91 = load i64, ptr %13, align 8
  %92 = mul i64 %90, %91
  %93 = load i64, ptr %19, align 8
  %94 = mul i64 4294967296, %93
  %95 = load i64, ptr %10, align 8
  %96 = add i64 %94, %95
  %97 = icmp ugt i64 %92, %96
  br label %98

98:                                               ; preds = %89, %86
  %99 = phi i1 [ true, %86 ], [ %97, %89 ]
  br i1 %99, label %100, label %110

100:                                              ; preds = %98
  %101 = load i64, ptr %14, align 8
  %102 = sub i64 %101, 1
  store i64 %102, ptr %14, align 8
  %103 = load i64, ptr %19, align 8
  %104 = load i64, ptr %12, align 8
  %105 = add i64 %103, %104
  store i64 %105, ptr %19, align 8
  %106 = load i64, ptr %19, align 8
  %107 = icmp uge i64 %106, 4294967296
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %110

109:                                              ; preds = %100
  br label %86

110:                                              ; preds = %108, %98
  %111 = load i64, ptr %16, align 8
  %112 = mul i64 %111, 4294967296
  %113 = load i64, ptr %10, align 8
  %114 = add i64 %112, %113
  %115 = load i64, ptr %14, align 8
  %116 = load i64, ptr %7, align 8
  %117 = mul i64 %115, %116
  %118 = sub i64 %114, %117
  store i64 %118, ptr %17, align 8
  %119 = load i64, ptr %17, align 8
  %120 = load i64, ptr %12, align 8
  %121 = udiv i64 %119, %120
  store i64 %121, ptr %15, align 8
  %122 = load i64, ptr %17, align 8
  %123 = load i64, ptr %15, align 8
  %124 = load i64, ptr %12, align 8
  %125 = mul i64 %123, %124
  %126 = sub i64 %122, %125
  store i64 %126, ptr %19, align 8
  br label %127

127:                                              ; preds = %150, %110
  %128 = load i64, ptr %15, align 8
  %129 = icmp uge i64 %128, 4294967296
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = load i64, ptr %15, align 8
  %132 = load i64, ptr %13, align 8
  %133 = mul i64 %131, %132
  %134 = load i64, ptr %19, align 8
  %135 = mul i64 4294967296, %134
  %136 = load i64, ptr %11, align 8
  %137 = add i64 %135, %136
  %138 = icmp ugt i64 %133, %137
  br label %139

139:                                              ; preds = %130, %127
  %140 = phi i1 [ true, %127 ], [ %138, %130 ]
  br i1 %140, label %141, label %151

141:                                              ; preds = %139
  %142 = load i64, ptr %15, align 8
  %143 = sub i64 %142, 1
  store i64 %143, ptr %15, align 8
  %144 = load i64, ptr %19, align 8
  %145 = load i64, ptr %12, align 8
  %146 = add i64 %144, %145
  store i64 %146, ptr %19, align 8
  %147 = load i64, ptr %19, align 8
  %148 = icmp uge i64 %147, 4294967296
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %151

150:                                              ; preds = %141
  br label %127

151:                                              ; preds = %149, %139
  %152 = load ptr, ptr %8, align 8
  %153 = icmp ne ptr %152, null
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = load i64, ptr %17, align 8
  %156 = mul i64 %155, 4294967296
  %157 = load i64, ptr %11, align 8
  %158 = add i64 %156, %157
  %159 = load i64, ptr %15, align 8
  %160 = load i64, ptr %7, align 8
  %161 = mul i64 %159, %160
  %162 = sub i64 %158, %161
  %163 = load i32, ptr %20, align 4
  %164 = zext i32 %163 to i64
  %165 = lshr i64 %162, %164
  %166 = load ptr, ptr %8, align 8
  store i64 %165, ptr %166, align 8
  br label %167

167:                                              ; preds = %154, %151
  %168 = load i64, ptr %14, align 8
  %169 = mul i64 %168, 4294967296
  %170 = load i64, ptr %15, align 8
  %171 = add i64 %169, %170
  store i64 %171, ptr %4, align 8
  br label %172

172:                                              ; preds = %36, %167
  %173 = load i64, ptr %4, align 8
  %174 = load i64, ptr %24, align 8
  ret i64 %174
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
  br label %180

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
  br label %178

43:                                               ; preds = %30
  %44 = load i64, ptr %7, align 8
  %45 = call i32 @libdivide__count_leading_zeros64(i64 noundef %44)
  store i32 %45, ptr %20, align 4
  %46 = load i32, ptr %20, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %72

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
  %62 = load i32, ptr %20, align 4
  %63 = sub nsw i32 0, %62
  %64 = ashr i32 %63, 31
  %65 = sext i32 %64 to i64
  %66 = and i64 %61, %65
  %67 = or i64 %56, %66
  store i64 %67, ptr %16, align 8
  %68 = load i64, ptr %6, align 8
  %69 = load i32, ptr %20, align 4
  %70 = zext i32 %69 to i64
  %71 = shl i64 %68, %70
  store i64 %71, ptr %18, align 8
  br label %75

72:                                               ; preds = %43
  %73 = load i64, ptr %5, align 8
  store i64 %73, ptr %16, align 8
  %74 = load i64, ptr %6, align 8
  store i64 %74, ptr %18, align 8
  br label %75

75:                                               ; preds = %72, %48
  %76 = load i64, ptr %7, align 8
  %77 = lshr i64 %76, 32
  store i64 %77, ptr %12, align 8
  %78 = load i64, ptr %7, align 8
  %79 = and i64 %78, 4294967295
  store i64 %79, ptr %13, align 8
  %80 = load i64, ptr %18, align 8
  %81 = lshr i64 %80, 32
  store i64 %81, ptr %10, align 8
  %82 = load i64, ptr %18, align 8
  %83 = and i64 %82, 4294967295
  store i64 %83, ptr %11, align 8
  %84 = load i64, ptr %16, align 8
  %85 = load i64, ptr %12, align 8
  %86 = udiv i64 %84, %85
  store i64 %86, ptr %14, align 8
  %87 = load i64, ptr %16, align 8
  %88 = load i64, ptr %14, align 8
  %89 = load i64, ptr %12, align 8
  %90 = mul i64 %88, %89
  %91 = sub i64 %87, %90
  store i64 %91, ptr %19, align 8
  br label %92

92:                                               ; preds = %115, %75
  %93 = load i64, ptr %14, align 8
  %94 = icmp uge i64 %93, 4294967296
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load i64, ptr %14, align 8
  %97 = load i64, ptr %13, align 8
  %98 = mul i64 %96, %97
  %99 = load i64, ptr %19, align 8
  %100 = mul i64 4294967296, %99
  %101 = load i64, ptr %10, align 8
  %102 = add i64 %100, %101
  %103 = icmp ugt i64 %98, %102
  br label %104

104:                                              ; preds = %95, %92
  %105 = phi i1 [ true, %92 ], [ %103, %95 ]
  br i1 %105, label %106, label %116

106:                                              ; preds = %104
  %107 = load i64, ptr %14, align 8
  %108 = sub i64 %107, 1
  store i64 %108, ptr %14, align 8
  %109 = load i64, ptr %19, align 8
  %110 = load i64, ptr %12, align 8
  %111 = add i64 %109, %110
  store i64 %111, ptr %19, align 8
  %112 = load i64, ptr %19, align 8
  %113 = icmp uge i64 %112, 4294967296
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %116

115:                                              ; preds = %106
  br label %92

116:                                              ; preds = %114, %104
  %117 = load i64, ptr %16, align 8
  %118 = mul i64 %117, 4294967296
  %119 = load i64, ptr %10, align 8
  %120 = add i64 %118, %119
  %121 = load i64, ptr %14, align 8
  %122 = load i64, ptr %7, align 8
  %123 = mul i64 %121, %122
  %124 = sub i64 %120, %123
  store i64 %124, ptr %17, align 8
  %125 = load i64, ptr %17, align 8
  %126 = load i64, ptr %12, align 8
  %127 = udiv i64 %125, %126
  store i64 %127, ptr %15, align 8
  %128 = load i64, ptr %17, align 8
  %129 = load i64, ptr %15, align 8
  %130 = load i64, ptr %12, align 8
  %131 = mul i64 %129, %130
  %132 = sub i64 %128, %131
  store i64 %132, ptr %19, align 8
  br label %133

133:                                              ; preds = %156, %116
  %134 = load i64, ptr %15, align 8
  %135 = icmp uge i64 %134, 4294967296
  br i1 %135, label %145, label %136

136:                                              ; preds = %133
  %137 = load i64, ptr %15, align 8
  %138 = load i64, ptr %13, align 8
  %139 = mul i64 %137, %138
  %140 = load i64, ptr %19, align 8
  %141 = mul i64 4294967296, %140
  %142 = load i64, ptr %11, align 8
  %143 = add i64 %141, %142
  %144 = icmp ugt i64 %139, %143
  br label %145

145:                                              ; preds = %136, %133
  %146 = phi i1 [ true, %133 ], [ %144, %136 ]
  br i1 %146, label %147, label %157

147:                                              ; preds = %145
  %148 = load i64, ptr %15, align 8
  %149 = sub i64 %148, 1
  store i64 %149, ptr %15, align 8
  %150 = load i64, ptr %19, align 8
  %151 = load i64, ptr %12, align 8
  %152 = add i64 %150, %151
  store i64 %152, ptr %19, align 8
  %153 = load i64, ptr %19, align 8
  %154 = icmp uge i64 %153, 4294967296
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %157

156:                                              ; preds = %147
  br label %133

157:                                              ; preds = %155, %145
  %158 = load ptr, ptr %8, align 8
  %159 = icmp ne ptr %158, null
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load i64, ptr %17, align 8
  %162 = mul i64 %161, 4294967296
  %163 = load i64, ptr %11, align 8
  %164 = add i64 %162, %163
  %165 = load i64, ptr %15, align 8
  %166 = load i64, ptr %7, align 8
  %167 = mul i64 %165, %166
  %168 = sub i64 %164, %167
  %169 = load i32, ptr %20, align 4
  %170 = zext i32 %169 to i64
  %171 = lshr i64 %168, %170
  %172 = load ptr, ptr %8, align 8
  store i64 %171, ptr %172, align 8
  br label %173

173:                                              ; preds = %160, %157
  %174 = load i64, ptr %14, align 8
  %175 = mul i64 %174, 4294967296
  %176 = load i64, ptr %15, align 8
  %177 = add i64 %175, %176
  store i64 %177, ptr %4, align 8
  br label %178

178:                                              ; preds = %42, %173
  %179 = load i64, ptr %4, align 8
  store i64 %179, ptr %21, align 8
  br label %180

180:                                              ; preds = %178, %29
  %181 = load i64, ptr %21, align 8
  ret i64 %181
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
  br label %181

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
  br label %178

43:                                               ; preds = %30
  %44 = load i64, ptr %7, align 8
  %45 = call i32 @libdivide__count_leading_zeros64(i64 noundef %44)
  store i32 %45, ptr %20, align 4
  %46 = load i32, ptr %20, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %72

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
  %62 = load i32, ptr %20, align 4
  %63 = sub nsw i32 0, %62
  %64 = ashr i32 %63, 31
  %65 = sext i32 %64 to i64
  %66 = and i64 %61, %65
  %67 = or i64 %56, %66
  store i64 %67, ptr %16, align 8
  %68 = load i64, ptr %6, align 8
  %69 = load i32, ptr %20, align 4
  %70 = zext i32 %69 to i64
  %71 = shl i64 %68, %70
  store i64 %71, ptr %18, align 8
  br label %75

72:                                               ; preds = %43
  %73 = load i64, ptr %5, align 8
  store i64 %73, ptr %16, align 8
  %74 = load i64, ptr %6, align 8
  store i64 %74, ptr %18, align 8
  br label %75

75:                                               ; preds = %72, %48
  %76 = load i64, ptr %7, align 8
  %77 = lshr i64 %76, 32
  store i64 %77, ptr %12, align 8
  %78 = load i64, ptr %7, align 8
  %79 = and i64 %78, 4294967295
  store i64 %79, ptr %13, align 8
  %80 = load i64, ptr %18, align 8
  %81 = lshr i64 %80, 32
  store i64 %81, ptr %10, align 8
  %82 = load i64, ptr %18, align 8
  %83 = and i64 %82, 4294967295
  store i64 %83, ptr %11, align 8
  %84 = load i64, ptr %16, align 8
  %85 = load i64, ptr %12, align 8
  %86 = udiv i64 %84, %85
  store i64 %86, ptr %14, align 8
  %87 = load i64, ptr %16, align 8
  %88 = load i64, ptr %14, align 8
  %89 = load i64, ptr %12, align 8
  %90 = mul i64 %88, %89
  %91 = sub i64 %87, %90
  store i64 %91, ptr %19, align 8
  br label %92

92:                                               ; preds = %115, %75
  %93 = load i64, ptr %14, align 8
  %94 = icmp uge i64 %93, 4294967296
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load i64, ptr %14, align 8
  %97 = load i64, ptr %13, align 8
  %98 = mul i64 %96, %97
  %99 = load i64, ptr %19, align 8
  %100 = mul i64 4294967296, %99
  %101 = load i64, ptr %10, align 8
  %102 = add i64 %100, %101
  %103 = icmp ugt i64 %98, %102
  br label %104

104:                                              ; preds = %95, %92
  %105 = phi i1 [ true, %92 ], [ %103, %95 ]
  br i1 %105, label %106, label %116

106:                                              ; preds = %104
  %107 = load i64, ptr %14, align 8
  %108 = sub i64 %107, 1
  store i64 %108, ptr %14, align 8
  %109 = load i64, ptr %19, align 8
  %110 = load i64, ptr %12, align 8
  %111 = add i64 %109, %110
  store i64 %111, ptr %19, align 8
  %112 = load i64, ptr %19, align 8
  %113 = icmp uge i64 %112, 4294967296
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %116

115:                                              ; preds = %106
  br label %92

116:                                              ; preds = %114, %104
  %117 = load i64, ptr %16, align 8
  %118 = mul i64 %117, 4294967296
  %119 = load i64, ptr %10, align 8
  %120 = add i64 %118, %119
  %121 = load i64, ptr %14, align 8
  %122 = load i64, ptr %7, align 8
  %123 = mul i64 %121, %122
  %124 = sub i64 %120, %123
  store i64 %124, ptr %17, align 8
  %125 = load i64, ptr %17, align 8
  %126 = load i64, ptr %12, align 8
  %127 = udiv i64 %125, %126
  store i64 %127, ptr %15, align 8
  %128 = load i64, ptr %17, align 8
  %129 = load i64, ptr %15, align 8
  %130 = load i64, ptr %12, align 8
  %131 = mul i64 %129, %130
  %132 = sub i64 %128, %131
  store i64 %132, ptr %19, align 8
  br label %133

133:                                              ; preds = %156, %116
  %134 = load i64, ptr %15, align 8
  %135 = icmp uge i64 %134, 4294967296
  br i1 %135, label %145, label %136

136:                                              ; preds = %133
  %137 = load i64, ptr %15, align 8
  %138 = load i64, ptr %13, align 8
  %139 = mul i64 %137, %138
  %140 = load i64, ptr %19, align 8
  %141 = mul i64 4294967296, %140
  %142 = load i64, ptr %11, align 8
  %143 = add i64 %141, %142
  %144 = icmp ugt i64 %139, %143
  br label %145

145:                                              ; preds = %136, %133
  %146 = phi i1 [ true, %133 ], [ %144, %136 ]
  br i1 %146, label %147, label %157

147:                                              ; preds = %145
  %148 = load i64, ptr %15, align 8
  %149 = sub i64 %148, 1
  store i64 %149, ptr %15, align 8
  %150 = load i64, ptr %19, align 8
  %151 = load i64, ptr %12, align 8
  %152 = add i64 %150, %151
  store i64 %152, ptr %19, align 8
  %153 = load i64, ptr %19, align 8
  %154 = icmp uge i64 %153, 4294967296
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %157

156:                                              ; preds = %147
  br label %133

157:                                              ; preds = %155, %145
  %158 = load ptr, ptr %8, align 8
  %159 = icmp ne ptr %158, null
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load i64, ptr %17, align 8
  %162 = mul i64 %161, 4294967296
  %163 = load i64, ptr %11, align 8
  %164 = add i64 %162, %163
  %165 = load i64, ptr %15, align 8
  %166 = load i64, ptr %7, align 8
  %167 = mul i64 %165, %166
  %168 = sub i64 %164, %167
  %169 = load i32, ptr %20, align 4
  %170 = zext i32 %169 to i64
  %171 = lshr i64 %168, %170
  %172 = load ptr, ptr %8, align 8
  store i64 %171, ptr %172, align 8
  br label %173

173:                                              ; preds = %160, %157
  %174 = load i64, ptr %14, align 8
  %175 = mul i64 %174, 4294967296
  %176 = load i64, ptr %15, align 8
  %177 = add i64 %175, %176
  store i64 %177, ptr %4, align 8
  br label %178

178:                                              ; preds = %42, %173
  %179 = load i64, ptr %4, align 8
  %180 = load i64, ptr %25, align 8
  store i64 %180, ptr %21, align 8
  br label %181

181:                                              ; preds = %178, %29
  %182 = load i64, ptr %21, align 8
  ret i64 %182
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
