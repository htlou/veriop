; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7221be4/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7221be4/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_17to128(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, -129
  %4 = icmp ult i64 %3, -112
  br i1 %4, label %131, label %5

5:                                                ; preds = %2
  %6 = mul i64 %1, -7046029288634856825
  %7 = icmp samesign ugt i64 %1, 32
  br i1 %7, label %8, label %98

8:                                                ; preds = %5
  %9 = icmp samesign ugt i64 %1, 64
  br i1 %9, label %10, label %69

10:                                               ; preds = %8
  %11 = icmp samesign ugt i64 %1, 96
  br i1 %11, label %12, label %40

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr i8, ptr %0, i64 56
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %14, 4554437623014685352
  %18 = xor i64 %16, 2111919702937427193
  %19 = zext i64 %17 to i128
  %20 = zext i64 %18 to i128
  %21 = mul nuw i128 %20, %19
  %22 = lshr i128 %21, 64
  %23 = xor i128 %22, %21
  %24 = trunc i128 %23 to i64
  %25 = add i64 %6, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %27 = getelementptr inbounds i8, ptr %26, i64 -64
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr i8, ptr %26, i64 -56
  %30 = load i64, ptr %29, align 1
  %31 = xor i64 %28, 3556072174620004746
  %32 = xor i64 %30, 7238261902898274248
  %33 = zext i64 %31 to i128
  %34 = zext i64 %32 to i128
  %35 = mul nuw i128 %34, %33
  %36 = lshr i128 %35, 64
  %37 = xor i128 %36, %35
  %38 = trunc i128 %37 to i64
  %39 = add i64 %25, %38
  br label %40

40:                                               ; preds = %12, %10
  %41 = phi i64 [ %39, %12 ], [ %6, %10 ]
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %43 = load i64, ptr %42, align 1
  %44 = getelementptr i8, ptr %0, i64 40
  %45 = load i64, ptr %44, align 1
  %46 = xor i64 %43, -3818837453329782724
  %47 = xor i64 %45, -6688317018830679928
  %48 = zext i64 %46 to i128
  %49 = zext i64 %47 to i128
  %50 = mul nuw i128 %49, %48
  %51 = lshr i128 %50, 64
  %52 = xor i128 %51, %50
  %53 = trunc i128 %52 to i64
  %54 = add i64 %41, %53
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %56 = getelementptr inbounds i8, ptr %55, i64 -48
  %57 = load i64, ptr %56, align 1
  %58 = getelementptr i8, ptr %55, i64 -40
  %59 = load i64, ptr %58, align 1
  %60 = xor i64 %57, 5690594596133299313
  %61 = xor i64 %59, -2833645246901970632
  %62 = zext i64 %60 to i128
  %63 = zext i64 %61 to i128
  %64 = mul nuw i128 %63, %62
  %65 = lshr i128 %64, 64
  %66 = xor i128 %65, %64
  %67 = trunc i128 %66 to i64
  %68 = add i64 %54, %67
  br label %69

69:                                               ; preds = %40, %8
  %70 = phi i64 [ %68, %40 ], [ %6, %8 ]
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %72 = load i64, ptr %71, align 1
  %73 = getelementptr i8, ptr %0, i64 24
  %74 = load i64, ptr %73, align 1
  %75 = xor i64 %72, 8711581037947681227
  %76 = xor i64 %74, 2410270004345854594
  %77 = zext i64 %75 to i128
  %78 = zext i64 %76 to i128
  %79 = mul nuw i128 %78, %77
  %80 = lshr i128 %79, 64
  %81 = xor i128 %80, %79
  %82 = trunc i128 %81 to i64
  %83 = add i64 %70, %82
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %85 = getelementptr inbounds i8, ptr %84, i64 -32
  %86 = load i64, ptr %85, align 1
  %87 = getelementptr i8, ptr %84, i64 -24
  %88 = load i64, ptr %87, align 1
  %89 = xor i64 %86, -8204357891075471176
  %90 = xor i64 %88, 5487137525590930912
  %91 = zext i64 %89 to i128
  %92 = zext i64 %90 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %83, %96
  br label %98

98:                                               ; preds = %5, %69
  %99 = phi i64 [ %97, %69 ], [ %6, %5 ]
  %100 = load i64, ptr %0, align 1
  %101 = getelementptr i8, ptr %0, i64 8
  %102 = load i64, ptr %101, align 1
  %103 = xor i64 %100, -4734510112055689544
  %104 = xor i64 %102, 2066345149520216444
  %105 = zext i64 %103 to i128
  %106 = zext i64 %104 to i128
  %107 = mul nuw i128 %106, %105
  %108 = lshr i128 %107, 64
  %109 = xor i128 %108, %107
  %110 = trunc i128 %109 to i64
  %111 = add i64 %99, %110
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %113 = getelementptr inbounds i8, ptr %112, i64 -16
  %114 = load i64, ptr %113, align 1
  %115 = getelementptr i8, ptr %112, i64 -8
  %116 = load i64, ptr %115, align 1
  %117 = xor i64 %114, -2623469361688619810
  %118 = xor i64 %116, 2262974939099578482
  %119 = zext i64 %117 to i128
  %120 = zext i64 %118 to i128
  %121 = mul nuw i128 %120, %119
  %122 = lshr i128 %121, 64
  %123 = xor i128 %122, %121
  %124 = trunc i128 %123 to i64
  %125 = add i64 %111, %124
  %126 = lshr i64 %125, 37
  %127 = xor i64 %126, %125
  %128 = mul i64 %127, 1609587791953885689
  %129 = lshr i64 %128, 32
  %130 = xor i64 %129, %128
  br label %131

131:                                              ; preds = %2, %98
  %132 = phi i64 [ %130, %98 ], [ 0, %2 ]
  ret i64 %132
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_17to128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -129
  %5 = icmp ult i64 %4, -112
  br i1 %5, label %148, label %6

6:                                                ; preds = %3
  %7 = mul i64 %1, -7046029288634856825
  %8 = icmp samesign ugt i64 %1, 32
  br i1 %8, label %9, label %111

9:                                                ; preds = %6
  %10 = icmp samesign ugt i64 %1, 64
  br i1 %10, label %11, label %78

11:                                               ; preds = %9
  %12 = icmp samesign ugt i64 %1, 96
  br i1 %12, label %13, label %45

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i64 56
  %17 = load i64, ptr %16, align 1
  %18 = add i64 %2, 4554437623014685352
  %19 = xor i64 %15, %18
  %20 = sub i64 2111919702937427193, %2
  %21 = xor i64 %17, %20
  %22 = zext i64 %19 to i128
  %23 = zext i64 %21 to i128
  %24 = mul nuw i128 %23, %22
  %25 = lshr i128 %24, 64
  %26 = xor i128 %25, %24
  %27 = trunc i128 %26 to i64
  %28 = add i64 %7, %27
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %30 = getelementptr inbounds i8, ptr %29, i64 -64
  %31 = load i64, ptr %30, align 1
  %32 = getelementptr i8, ptr %29, i64 -56
  %33 = load i64, ptr %32, align 1
  %34 = add i64 %2, 3556072174620004746
  %35 = xor i64 %31, %34
  %36 = sub i64 7238261902898274248, %2
  %37 = xor i64 %33, %36
  %38 = zext i64 %35 to i128
  %39 = zext i64 %37 to i128
  %40 = mul nuw i128 %39, %38
  %41 = lshr i128 %40, 64
  %42 = xor i128 %41, %40
  %43 = trunc i128 %42 to i64
  %44 = add i64 %28, %43
  br label %45

45:                                               ; preds = %13, %11
  %46 = phi i64 [ %44, %13 ], [ %7, %11 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 1
  %51 = add i64 %2, -3818837453329782724
  %52 = xor i64 %48, %51
  %53 = sub i64 -6688317018830679928, %2
  %54 = xor i64 %50, %53
  %55 = zext i64 %52 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %46, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %63 = getelementptr inbounds i8, ptr %62, i64 -48
  %64 = load i64, ptr %63, align 1
  %65 = getelementptr i8, ptr %62, i64 -40
  %66 = load i64, ptr %65, align 1
  %67 = add i64 %2, 5690594596133299313
  %68 = xor i64 %64, %67
  %69 = sub i64 -2833645246901970632, %2
  %70 = xor i64 %66, %69
  %71 = zext i64 %68 to i128
  %72 = zext i64 %70 to i128
  %73 = mul nuw i128 %72, %71
  %74 = lshr i128 %73, 64
  %75 = xor i128 %74, %73
  %76 = trunc i128 %75 to i64
  %77 = add i64 %61, %76
  br label %78

78:                                               ; preds = %45, %9
  %79 = phi i64 [ %77, %45 ], [ %7, %9 ]
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %81 = load i64, ptr %80, align 1
  %82 = getelementptr i8, ptr %0, i64 24
  %83 = load i64, ptr %82, align 1
  %84 = add i64 %2, 8711581037947681227
  %85 = xor i64 %81, %84
  %86 = sub i64 2410270004345854594, %2
  %87 = xor i64 %83, %86
  %88 = zext i64 %85 to i128
  %89 = zext i64 %87 to i128
  %90 = mul nuw i128 %89, %88
  %91 = lshr i128 %90, 64
  %92 = xor i128 %91, %90
  %93 = trunc i128 %92 to i64
  %94 = add i64 %79, %93
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %96 = getelementptr inbounds i8, ptr %95, i64 -32
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr i8, ptr %95, i64 -24
  %99 = load i64, ptr %98, align 1
  %100 = add i64 %2, -8204357891075471176
  %101 = xor i64 %97, %100
  %102 = sub i64 5487137525590930912, %2
  %103 = xor i64 %99, %102
  %104 = zext i64 %101 to i128
  %105 = zext i64 %103 to i128
  %106 = mul nuw i128 %105, %104
  %107 = lshr i128 %106, 64
  %108 = xor i128 %107, %106
  %109 = trunc i128 %108 to i64
  %110 = add i64 %94, %109
  br label %111

111:                                              ; preds = %6, %78
  %112 = phi i64 [ %110, %78 ], [ %7, %6 ]
  %113 = load i64, ptr %0, align 1
  %114 = getelementptr i8, ptr %0, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = add i64 %2, -4734510112055689544
  %117 = xor i64 %113, %116
  %118 = sub i64 2066345149520216444, %2
  %119 = xor i64 %115, %118
  %120 = zext i64 %117 to i128
  %121 = zext i64 %119 to i128
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %112, %125
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %128 = getelementptr inbounds i8, ptr %127, i64 -16
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr i8, ptr %127, i64 -8
  %131 = load i64, ptr %130, align 1
  %132 = add i64 %2, -2623469361688619810
  %133 = xor i64 %129, %132
  %134 = sub i64 2262974939099578482, %2
  %135 = xor i64 %131, %134
  %136 = zext i64 %133 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %126, %141
  %143 = lshr i64 %142, 37
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587791953885689
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  br label %148

148:                                              ; preds = %3, %111
  %149 = phi i64 [ %147, %111 ], [ 0, %3 ]
  ret i64 %149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local i64 @target_api_64_secret_17to128(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #1 {
  %5 = add i64 %1, -129
  %6 = icmp ult i64 %5, -112
  %7 = icmp ult i64 %3, 136
  %8 = or i1 %6, %7
  br i1 %8, label %166, label %9

9:                                                ; preds = %4
  %10 = mul i64 %1, -7046029288634856825
  %11 = icmp samesign ugt i64 %1, 32
  br i1 %11, label %12, label %126

12:                                               ; preds = %9
  %13 = icmp samesign ugt i64 %1, 64
  br i1 %13, label %14, label %89

14:                                               ; preds = %12
  %15 = icmp samesign ugt i64 %1, 96
  br i1 %15, label %16, label %52

16:                                               ; preds = %14
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %19 = load i64, ptr %17, align 1
  %20 = getelementptr i8, ptr %0, i64 56
  %21 = load i64, ptr %20, align 1
  %22 = load i64, ptr %18, align 1
  %23 = getelementptr i8, ptr %2, i64 104
  %24 = load i64, ptr %23, align 1
  %25 = xor i64 %22, %19
  %26 = xor i64 %24, %21
  %27 = zext i64 %25 to i128
  %28 = zext i64 %26 to i128
  %29 = mul nuw i128 %28, %27
  %30 = lshr i128 %29, 64
  %31 = xor i128 %30, %29
  %32 = trunc i128 %31 to i64
  %33 = add i64 %10, %32
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %35 = getelementptr inbounds i8, ptr %34, i64 -64
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %37 = load i64, ptr %35, align 1
  %38 = getelementptr i8, ptr %34, i64 -56
  %39 = load i64, ptr %38, align 1
  %40 = load i64, ptr %36, align 1
  %41 = getelementptr i8, ptr %2, i64 120
  %42 = load i64, ptr %41, align 1
  %43 = xor i64 %40, %37
  %44 = xor i64 %42, %39
  %45 = zext i64 %43 to i128
  %46 = zext i64 %44 to i128
  %47 = mul nuw i128 %46, %45
  %48 = lshr i128 %47, 64
  %49 = xor i128 %48, %47
  %50 = trunc i128 %49 to i64
  %51 = add i64 %33, %50
  br label %52

52:                                               ; preds = %16, %14
  %53 = phi i64 [ %51, %16 ], [ %10, %14 ]
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %56 = load i64, ptr %54, align 1
  %57 = getelementptr i8, ptr %0, i64 40
  %58 = load i64, ptr %57, align 1
  %59 = load i64, ptr %55, align 1
  %60 = getelementptr i8, ptr %2, i64 72
  %61 = load i64, ptr %60, align 1
  %62 = xor i64 %59, %56
  %63 = xor i64 %61, %58
  %64 = zext i64 %62 to i128
  %65 = zext i64 %63 to i128
  %66 = mul nuw i128 %65, %64
  %67 = lshr i128 %66, 64
  %68 = xor i128 %67, %66
  %69 = trunc i128 %68 to i64
  %70 = add i64 %53, %69
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %72 = getelementptr inbounds i8, ptr %71, i64 -48
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %74 = load i64, ptr %72, align 1
  %75 = getelementptr i8, ptr %71, i64 -40
  %76 = load i64, ptr %75, align 1
  %77 = load i64, ptr %73, align 1
  %78 = getelementptr i8, ptr %2, i64 88
  %79 = load i64, ptr %78, align 1
  %80 = xor i64 %77, %74
  %81 = xor i64 %79, %76
  %82 = zext i64 %80 to i128
  %83 = zext i64 %81 to i128
  %84 = mul nuw i128 %83, %82
  %85 = lshr i128 %84, 64
  %86 = xor i128 %85, %84
  %87 = trunc i128 %86 to i64
  %88 = add i64 %70, %87
  br label %89

89:                                               ; preds = %52, %12
  %90 = phi i64 [ %88, %52 ], [ %10, %12 ]
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %93 = load i64, ptr %91, align 1
  %94 = getelementptr i8, ptr %0, i64 24
  %95 = load i64, ptr %94, align 1
  %96 = load i64, ptr %92, align 1
  %97 = getelementptr i8, ptr %2, i64 40
  %98 = load i64, ptr %97, align 1
  %99 = xor i64 %96, %93
  %100 = xor i64 %98, %95
  %101 = zext i64 %99 to i128
  %102 = zext i64 %100 to i128
  %103 = mul nuw i128 %102, %101
  %104 = lshr i128 %103, 64
  %105 = xor i128 %104, %103
  %106 = trunc i128 %105 to i64
  %107 = add i64 %90, %106
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %109 = getelementptr inbounds i8, ptr %108, i64 -32
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %111 = load i64, ptr %109, align 1
  %112 = getelementptr i8, ptr %108, i64 -24
  %113 = load i64, ptr %112, align 1
  %114 = load i64, ptr %110, align 1
  %115 = getelementptr i8, ptr %2, i64 56
  %116 = load i64, ptr %115, align 1
  %117 = xor i64 %114, %111
  %118 = xor i64 %116, %113
  %119 = zext i64 %117 to i128
  %120 = zext i64 %118 to i128
  %121 = mul nuw i128 %120, %119
  %122 = lshr i128 %121, 64
  %123 = xor i128 %122, %121
  %124 = trunc i128 %123 to i64
  %125 = add i64 %107, %124
  br label %126

126:                                              ; preds = %9, %89
  %127 = phi i64 [ %125, %89 ], [ %10, %9 ]
  %128 = load i64, ptr %0, align 1
  %129 = getelementptr i8, ptr %0, i64 8
  %130 = load i64, ptr %129, align 1
  %131 = load i64, ptr %2, align 1
  %132 = getelementptr i8, ptr %2, i64 8
  %133 = load i64, ptr %132, align 1
  %134 = xor i64 %131, %128
  %135 = xor i64 %133, %130
  %136 = zext i64 %134 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %127, %141
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %144 = getelementptr inbounds i8, ptr %143, i64 -16
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %146 = load i64, ptr %144, align 1
  %147 = getelementptr i8, ptr %143, i64 -8
  %148 = load i64, ptr %147, align 1
  %149 = load i64, ptr %145, align 1
  %150 = getelementptr i8, ptr %2, i64 24
  %151 = load i64, ptr %150, align 1
  %152 = xor i64 %149, %146
  %153 = xor i64 %151, %148
  %154 = zext i64 %152 to i128
  %155 = zext i64 %153 to i128
  %156 = mul nuw i128 %155, %154
  %157 = lshr i128 %156, 64
  %158 = xor i128 %157, %156
  %159 = trunc i128 %158 to i64
  %160 = add i64 %142, %159
  %161 = lshr i64 %160, 37
  %162 = xor i64 %161, %160
  %163 = mul i64 %162, 1609587791953885689
  %164 = lshr i64 %163, 32
  %165 = xor i64 %164, %163
  br label %166

166:                                              ; preds = %4, %126
  %167 = phi i64 [ %165, %126 ], [ 0, %4 ]
  ret i64 %167
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
