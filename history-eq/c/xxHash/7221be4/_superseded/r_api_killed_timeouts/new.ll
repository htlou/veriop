; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7221be4/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7221be4/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_17to128(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, -129
  %4 = icmp ult i64 %3, -112
  br i1 %4, label %125, label %5

5:                                                ; preds = %2
  %6 = mul i64 %1, -7046029288634856825
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = xor i64 %7, -4734510112055689544
  %11 = xor i64 %9, 2066345149520216444
  %12 = zext i64 %10 to i128
  %13 = zext i64 %11 to i128
  %14 = mul nuw i128 %13, %12
  %15 = lshr i128 %14, 64
  %16 = xor i128 %15, %14
  %17 = trunc i128 %16 to i64
  %18 = add i64 %6, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %20 = getelementptr inbounds i8, ptr %19, i64 -16
  %21 = load i64, ptr %20, align 1
  %22 = getelementptr i8, ptr %19, i64 -8
  %23 = load i64, ptr %22, align 1
  %24 = xor i64 %21, -2623469361688619810
  %25 = xor i64 %23, 2262974939099578482
  %26 = zext i64 %24 to i128
  %27 = zext i64 %25 to i128
  %28 = mul nuw i128 %27, %26
  %29 = lshr i128 %28, 64
  %30 = xor i128 %29, %28
  %31 = trunc i128 %30 to i64
  %32 = icmp samesign ugt i64 %1, 32
  br i1 %32, label %33, label %116

33:                                               ; preds = %5
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i64, ptr %34, align 1
  %36 = getelementptr i8, ptr %0, i64 24
  %37 = load i64, ptr %36, align 1
  %38 = xor i64 %35, 8711581037947681227
  %39 = xor i64 %37, 2410270004345854594
  %40 = zext i64 %38 to i128
  %41 = zext i64 %39 to i128
  %42 = mul nuw i128 %41, %40
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %18, %45
  %47 = getelementptr inbounds i8, ptr %19, i64 -32
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr i8, ptr %19, i64 -24
  %50 = load i64, ptr %49, align 1
  %51 = xor i64 %48, -8204357891075471176
  %52 = xor i64 %50, 5487137525590930912
  %53 = zext i64 %51 to i128
  %54 = zext i64 %52 to i128
  %55 = mul nuw i128 %54, %53
  %56 = lshr i128 %55, 64
  %57 = xor i128 %56, %55
  %58 = trunc i128 %57 to i64
  %59 = add i64 %58, %31
  %60 = icmp samesign ugt i64 %1, 64
  br i1 %60, label %61, label %116

61:                                               ; preds = %33
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %63 = load i64, ptr %62, align 1
  %64 = getelementptr i8, ptr %0, i64 40
  %65 = load i64, ptr %64, align 1
  %66 = xor i64 %63, -3818837453329782724
  %67 = xor i64 %65, -6688317018830679928
  %68 = zext i64 %66 to i128
  %69 = zext i64 %67 to i128
  %70 = mul nuw i128 %69, %68
  %71 = lshr i128 %70, 64
  %72 = xor i128 %71, %70
  %73 = trunc i128 %72 to i64
  %74 = add i64 %46, %73
  %75 = getelementptr inbounds i8, ptr %19, i64 -48
  %76 = load i64, ptr %75, align 1
  %77 = getelementptr i8, ptr %19, i64 -40
  %78 = load i64, ptr %77, align 1
  %79 = xor i64 %76, 5690594596133299313
  %80 = xor i64 %78, -2833645246901970632
  %81 = zext i64 %79 to i128
  %82 = zext i64 %80 to i128
  %83 = mul nuw i128 %82, %81
  %84 = lshr i128 %83, 64
  %85 = xor i128 %84, %83
  %86 = trunc i128 %85 to i64
  %87 = add i64 %59, %86
  %88 = icmp samesign ugt i64 %1, 96
  br i1 %88, label %89, label %116

89:                                               ; preds = %61
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %91 = load i64, ptr %90, align 1
  %92 = getelementptr i8, ptr %0, i64 56
  %93 = load i64, ptr %92, align 1
  %94 = xor i64 %91, 4554437623014685352
  %95 = xor i64 %93, 2111919702937427193
  %96 = zext i64 %94 to i128
  %97 = zext i64 %95 to i128
  %98 = mul nuw i128 %97, %96
  %99 = lshr i128 %98, 64
  %100 = xor i128 %99, %98
  %101 = trunc i128 %100 to i64
  %102 = add i64 %74, %101
  %103 = getelementptr inbounds i8, ptr %19, i64 -64
  %104 = load i64, ptr %103, align 1
  %105 = getelementptr i8, ptr %19, i64 -56
  %106 = load i64, ptr %105, align 1
  %107 = xor i64 %104, 3556072174620004746
  %108 = xor i64 %106, 7238261902898274248
  %109 = zext i64 %107 to i128
  %110 = zext i64 %108 to i128
  %111 = mul nuw i128 %110, %109
  %112 = lshr i128 %111, 64
  %113 = xor i128 %112, %111
  %114 = trunc i128 %113 to i64
  %115 = add i64 %87, %114
  br label %116

116:                                              ; preds = %5, %33, %61, %89
  %117 = phi i64 [ %102, %89 ], [ %74, %61 ], [ %46, %33 ], [ %18, %5 ]
  %118 = phi i64 [ %115, %89 ], [ %87, %61 ], [ %59, %33 ], [ %31, %5 ]
  %119 = add i64 %118, %117
  %120 = lshr i64 %119, 37
  %121 = xor i64 %120, %119
  %122 = mul i64 %121, 1609587791953885689
  %123 = lshr i64 %122, 32
  %124 = xor i64 %123, %122
  br label %125

125:                                              ; preds = %2, %116
  %126 = phi i64 [ %124, %116 ], [ 0, %2 ]
  ret i64 %126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_17to128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -129
  %5 = icmp ult i64 %4, -112
  br i1 %5, label %142, label %6

6:                                                ; preds = %3
  %7 = mul i64 %1, -7046029288634856825
  %8 = load i64, ptr %0, align 1
  %9 = getelementptr i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 1
  %11 = add i64 %2, -4734510112055689544
  %12 = xor i64 %8, %11
  %13 = sub i64 2066345149520216444, %2
  %14 = xor i64 %10, %13
  %15 = zext i64 %12 to i128
  %16 = zext i64 %14 to i128
  %17 = mul nuw i128 %16, %15
  %18 = lshr i128 %17, 64
  %19 = xor i128 %18, %17
  %20 = trunc i128 %19 to i64
  %21 = add i64 %7, %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %23 = getelementptr inbounds i8, ptr %22, i64 -16
  %24 = load i64, ptr %23, align 1
  %25 = getelementptr i8, ptr %22, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = add i64 %2, -2623469361688619810
  %28 = xor i64 %24, %27
  %29 = sub i64 2262974939099578482, %2
  %30 = xor i64 %26, %29
  %31 = zext i64 %28 to i128
  %32 = zext i64 %30 to i128
  %33 = mul nuw i128 %32, %31
  %34 = lshr i128 %33, 64
  %35 = xor i128 %34, %33
  %36 = trunc i128 %35 to i64
  %37 = icmp samesign ugt i64 %1, 32
  br i1 %37, label %38, label %133

38:                                               ; preds = %6
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %40 = load i64, ptr %39, align 1
  %41 = getelementptr i8, ptr %0, i64 24
  %42 = load i64, ptr %41, align 1
  %43 = add i64 %2, 8711581037947681227
  %44 = xor i64 %40, %43
  %45 = sub i64 2410270004345854594, %2
  %46 = xor i64 %42, %45
  %47 = zext i64 %44 to i128
  %48 = zext i64 %46 to i128
  %49 = mul nuw i128 %48, %47
  %50 = lshr i128 %49, 64
  %51 = xor i128 %50, %49
  %52 = trunc i128 %51 to i64
  %53 = add i64 %21, %52
  %54 = getelementptr inbounds i8, ptr %22, i64 -32
  %55 = load i64, ptr %54, align 1
  %56 = getelementptr i8, ptr %22, i64 -24
  %57 = load i64, ptr %56, align 1
  %58 = add i64 %2, -8204357891075471176
  %59 = xor i64 %55, %58
  %60 = sub i64 5487137525590930912, %2
  %61 = xor i64 %57, %60
  %62 = zext i64 %59 to i128
  %63 = zext i64 %61 to i128
  %64 = mul nuw i128 %63, %62
  %65 = lshr i128 %64, 64
  %66 = xor i128 %65, %64
  %67 = trunc i128 %66 to i64
  %68 = add i64 %67, %36
  %69 = icmp samesign ugt i64 %1, 64
  br i1 %69, label %70, label %133

70:                                               ; preds = %38
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %72 = load i64, ptr %71, align 1
  %73 = getelementptr i8, ptr %0, i64 40
  %74 = load i64, ptr %73, align 1
  %75 = add i64 %2, -3818837453329782724
  %76 = xor i64 %72, %75
  %77 = sub i64 -6688317018830679928, %2
  %78 = xor i64 %74, %77
  %79 = zext i64 %76 to i128
  %80 = zext i64 %78 to i128
  %81 = mul nuw i128 %80, %79
  %82 = lshr i128 %81, 64
  %83 = xor i128 %82, %81
  %84 = trunc i128 %83 to i64
  %85 = add i64 %53, %84
  %86 = getelementptr inbounds i8, ptr %22, i64 -48
  %87 = load i64, ptr %86, align 1
  %88 = getelementptr i8, ptr %22, i64 -40
  %89 = load i64, ptr %88, align 1
  %90 = add i64 %2, 5690594596133299313
  %91 = xor i64 %87, %90
  %92 = sub i64 -2833645246901970632, %2
  %93 = xor i64 %89, %92
  %94 = zext i64 %91 to i128
  %95 = zext i64 %93 to i128
  %96 = mul nuw i128 %95, %94
  %97 = lshr i128 %96, 64
  %98 = xor i128 %97, %96
  %99 = trunc i128 %98 to i64
  %100 = add i64 %68, %99
  %101 = icmp samesign ugt i64 %1, 96
  br i1 %101, label %102, label %133

102:                                              ; preds = %70
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %104 = load i64, ptr %103, align 1
  %105 = getelementptr i8, ptr %0, i64 56
  %106 = load i64, ptr %105, align 1
  %107 = add i64 %2, 4554437623014685352
  %108 = xor i64 %104, %107
  %109 = sub i64 2111919702937427193, %2
  %110 = xor i64 %106, %109
  %111 = zext i64 %108 to i128
  %112 = zext i64 %110 to i128
  %113 = mul nuw i128 %112, %111
  %114 = lshr i128 %113, 64
  %115 = xor i128 %114, %113
  %116 = trunc i128 %115 to i64
  %117 = add i64 %85, %116
  %118 = getelementptr inbounds i8, ptr %22, i64 -64
  %119 = load i64, ptr %118, align 1
  %120 = getelementptr i8, ptr %22, i64 -56
  %121 = load i64, ptr %120, align 1
  %122 = add i64 %2, 3556072174620004746
  %123 = xor i64 %119, %122
  %124 = sub i64 7238261902898274248, %2
  %125 = xor i64 %121, %124
  %126 = zext i64 %123 to i128
  %127 = zext i64 %125 to i128
  %128 = mul nuw i128 %127, %126
  %129 = lshr i128 %128, 64
  %130 = xor i128 %129, %128
  %131 = trunc i128 %130 to i64
  %132 = add i64 %100, %131
  br label %133

133:                                              ; preds = %6, %38, %70, %102
  %134 = phi i64 [ %117, %102 ], [ %85, %70 ], [ %53, %38 ], [ %21, %6 ]
  %135 = phi i64 [ %132, %102 ], [ %100, %70 ], [ %68, %38 ], [ %36, %6 ]
  %136 = add i64 %135, %134
  %137 = lshr i64 %136, 37
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, 1609587791953885689
  %140 = lshr i64 %139, 32
  %141 = xor i64 %140, %139
  br label %142

142:                                              ; preds = %3, %133
  %143 = phi i64 [ %141, %133 ], [ 0, %3 ]
  ret i64 %143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local i64 @target_api_64_secret_17to128(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = add i64 %1, -129
  %6 = icmp ult i64 %5, -112
  %7 = icmp ult i64 %3, 136
  %8 = or i1 %6, %7
  br i1 %8, label %160, label %9

9:                                                ; preds = %4
  %10 = mul i64 %1, -7046029288634856825
  %11 = load i64, ptr %0, align 1
  %12 = getelementptr i8, ptr %0, i64 8
  %13 = load i64, ptr %12, align 1
  %14 = load i64, ptr %2, align 1
  %15 = getelementptr i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %14, %11
  %18 = xor i64 %16, %13
  %19 = zext i64 %17 to i128
  %20 = zext i64 %18 to i128
  %21 = mul nuw i128 %20, %19
  %22 = lshr i128 %21, 64
  %23 = xor i128 %22, %21
  %24 = trunc i128 %23 to i64
  %25 = add i64 %10, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %27 = getelementptr inbounds i8, ptr %26, i64 -16
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %29 = load i64, ptr %27, align 1
  %30 = getelementptr i8, ptr %26, i64 -8
  %31 = load i64, ptr %30, align 1
  %32 = load i64, ptr %28, align 1
  %33 = getelementptr i8, ptr %2, i64 24
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %32, %29
  %36 = xor i64 %34, %31
  %37 = zext i64 %35 to i128
  %38 = zext i64 %36 to i128
  %39 = mul nuw i128 %38, %37
  %40 = lshr i128 %39, 64
  %41 = xor i128 %40, %39
  %42 = trunc i128 %41 to i64
  %43 = icmp samesign ugt i64 %1, 32
  br i1 %43, label %44, label %151

44:                                               ; preds = %9
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %47 = load i64, ptr %45, align 1
  %48 = getelementptr i8, ptr %0, i64 24
  %49 = load i64, ptr %48, align 1
  %50 = load i64, ptr %46, align 1
  %51 = getelementptr i8, ptr %2, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %50, %47
  %54 = xor i64 %52, %49
  %55 = zext i64 %53 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %25, %60
  %62 = getelementptr inbounds i8, ptr %26, i64 -32
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %64 = load i64, ptr %62, align 1
  %65 = getelementptr i8, ptr %26, i64 -24
  %66 = load i64, ptr %65, align 1
  %67 = load i64, ptr %63, align 1
  %68 = getelementptr i8, ptr %2, i64 56
  %69 = load i64, ptr %68, align 1
  %70 = xor i64 %67, %64
  %71 = xor i64 %69, %66
  %72 = zext i64 %70 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %73, %72
  %75 = lshr i128 %74, 64
  %76 = xor i128 %75, %74
  %77 = trunc i128 %76 to i64
  %78 = add i64 %77, %42
  %79 = icmp samesign ugt i64 %1, 64
  br i1 %79, label %80, label %151

80:                                               ; preds = %44
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %83 = load i64, ptr %81, align 1
  %84 = getelementptr i8, ptr %0, i64 40
  %85 = load i64, ptr %84, align 1
  %86 = load i64, ptr %82, align 1
  %87 = getelementptr i8, ptr %2, i64 72
  %88 = load i64, ptr %87, align 1
  %89 = xor i64 %86, %83
  %90 = xor i64 %88, %85
  %91 = zext i64 %89 to i128
  %92 = zext i64 %90 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %61, %96
  %98 = getelementptr inbounds i8, ptr %26, i64 -48
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %100 = load i64, ptr %98, align 1
  %101 = getelementptr i8, ptr %26, i64 -40
  %102 = load i64, ptr %101, align 1
  %103 = load i64, ptr %99, align 1
  %104 = getelementptr i8, ptr %2, i64 88
  %105 = load i64, ptr %104, align 1
  %106 = xor i64 %103, %100
  %107 = xor i64 %105, %102
  %108 = zext i64 %106 to i128
  %109 = zext i64 %107 to i128
  %110 = mul nuw i128 %109, %108
  %111 = lshr i128 %110, 64
  %112 = xor i128 %111, %110
  %113 = trunc i128 %112 to i64
  %114 = add i64 %78, %113
  %115 = icmp samesign ugt i64 %1, 96
  br i1 %115, label %116, label %151

116:                                              ; preds = %80
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %119 = load i64, ptr %117, align 1
  %120 = getelementptr i8, ptr %0, i64 56
  %121 = load i64, ptr %120, align 1
  %122 = load i64, ptr %118, align 1
  %123 = getelementptr i8, ptr %2, i64 104
  %124 = load i64, ptr %123, align 1
  %125 = xor i64 %122, %119
  %126 = xor i64 %124, %121
  %127 = zext i64 %125 to i128
  %128 = zext i64 %126 to i128
  %129 = mul nuw i128 %128, %127
  %130 = lshr i128 %129, 64
  %131 = xor i128 %130, %129
  %132 = trunc i128 %131 to i64
  %133 = add i64 %97, %132
  %134 = getelementptr inbounds i8, ptr %26, i64 -64
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %136 = load i64, ptr %134, align 1
  %137 = getelementptr i8, ptr %26, i64 -56
  %138 = load i64, ptr %137, align 1
  %139 = load i64, ptr %135, align 1
  %140 = getelementptr i8, ptr %2, i64 120
  %141 = load i64, ptr %140, align 1
  %142 = xor i64 %139, %136
  %143 = xor i64 %141, %138
  %144 = zext i64 %142 to i128
  %145 = zext i64 %143 to i128
  %146 = mul nuw i128 %145, %144
  %147 = lshr i128 %146, 64
  %148 = xor i128 %147, %146
  %149 = trunc i128 %148 to i64
  %150 = add i64 %114, %149
  br label %151

151:                                              ; preds = %9, %44, %80, %116
  %152 = phi i64 [ %133, %116 ], [ %97, %80 ], [ %61, %44 ], [ %25, %9 ]
  %153 = phi i64 [ %150, %116 ], [ %114, %80 ], [ %78, %44 ], [ %42, %9 ]
  %154 = add i64 %153, %152
  %155 = lshr i64 %154, 37
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587791953885689
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %4, %151
  %161 = phi i64 [ %159, %151 ], [ 0, %4 ]
  ret i64 %161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !8}
!6 = distinct !{!6, !7, !"XXH3_len_17to128_64b: argument 0"}
!7 = distinct !{!7, !"XXH3_len_17to128_64b"}
!8 = distinct !{!8, !9, !"XXH3_64bits_internal: argument 0"}
!9 = distinct !{!9, !"XXH3_64bits_internal"}
!10 = !{!11, !12}
!11 = distinct !{!11, !7, !"XXH3_len_17to128_64b: argument 1"}
!12 = distinct !{!12, !9, !"XXH3_64bits_internal: argument 1"}
!13 = !{!14, !16}
!14 = distinct !{!14, !15, !"XXH3_len_17to128_64b: argument 0"}
!15 = distinct !{!15, !"XXH3_len_17to128_64b"}
!16 = distinct !{!16, !17, !"XXH3_64bits_internal: argument 0"}
!17 = distinct !{!17, !"XXH3_64bits_internal"}
!18 = !{!19, !20}
!19 = distinct !{!19, !15, !"XXH3_len_17to128_64b: argument 1"}
!20 = distinct !{!20, !17, !"XXH3_64bits_internal: argument 1"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_64bits_internal: argument 0"}
!23 = distinct !{!23, !"XXH3_64bits_internal"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"XXH3_64bits_internal: argument 1"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_len_17to128_64b: argument 0"}
!28 = distinct !{!28, !"XXH3_len_17to128_64b"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"XXH3_len_17to128_64b: argument 1"}
!31 = !{!27, !22}
!32 = !{!30, !25}
