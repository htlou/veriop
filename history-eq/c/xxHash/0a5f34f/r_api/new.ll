; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0a5f34f/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0a5f34f/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_4to8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, -9
  %4 = icmp ult i64 %3, -5
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = getelementptr inbounds i8, ptr %7, i64 -4
  %9 = load i32, ptr %8, align 1
  %10 = zext i32 %9 to i64
  %11 = zext i32 %6 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or disjoint i64 %12, %10
  %14 = xor i64 %13, -4734510112055689544
  %15 = lshr i64 %14, 39
  %16 = xor i64 %15, %14
  %17 = mul i64 %16, -4417276706812531889
  %18 = add i64 %17, %1
  %19 = lshr i64 %18, 47
  %20 = lshr i64 %18, 37
  %21 = xor i64 %19, %20
  %22 = xor i64 %21, %18
  %23 = mul i64 %22, 1609587791953885689
  %24 = lshr i64 %23, 32
  %25 = xor i64 %24, %23
  br label %26

26:                                               ; preds = %2, %5
  %27 = phi i64 [ %25, %5 ], [ 0, %2 ]
  ret i64 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_4to8(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -9
  %5 = icmp ult i64 %4, -5
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -4
  %10 = load i32, ptr %9, align 1
  %11 = zext i32 %10 to i64
  %12 = zext i32 %7 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or disjoint i64 %13, %11
  %15 = add i64 %2, -4734510112055689544
  %16 = xor i64 %14, %15
  %17 = lshr i64 %16, 39
  %18 = xor i64 %17, %16
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %1
  %21 = lshr i64 %20, 47
  %22 = lshr i64 %20, 37
  %23 = xor i64 %21, %22
  %24 = xor i64 %23, %20
  %25 = mul i64 %24, 1609587791953885689
  %26 = lshr i64 %25, 32
  %27 = xor i64 %26, %25
  br label %28

28:                                               ; preds = %3, %6
  %29 = phi i64 [ %27, %6 ], [ 0, %3 ]
  ret i64 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_secret_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -9
  %6 = icmp ult i64 %5, -5
  %7 = icmp ult i64 %3, 136
  %8 = or i1 %6, %7
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = load i64, ptr %2, align 1
  %11 = load i32, ptr %0, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -4
  %14 = load i32, ptr %13, align 1
  %15 = zext i32 %14 to i64
  %16 = zext i32 %11 to i64
  %17 = shl nuw i64 %16, 32
  %18 = or disjoint i64 %17, %15
  %19 = xor i64 %18, %10
  %20 = lshr i64 %19, 39
  %21 = xor i64 %20, %19
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %22, %1
  %24 = lshr i64 %23, 47
  %25 = lshr i64 %23, 37
  %26 = xor i64 %24, %25
  %27 = xor i64 %26, %23
  %28 = mul i64 %27, 1609587791953885689
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  br label %31

31:                                               ; preds = %4, %9
  %32 = phi i64 [ %30, %9 ], [ 0, %4 ]
  ret i64 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_seed_0to16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #1 {
  %5 = icmp ugt i64 %1, 16
  br i1 %5, label %129, label %6

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %41

8:                                                ; preds = %6
  %9 = load i64, ptr %0, align 1
  %10 = add i64 %2, -4734510112055689544
  %11 = xor i64 %9, %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 2066345149520216444, %2
  %16 = xor i64 %14, %15
  %17 = xor i64 %11, %16
  %18 = zext i64 %17 to i128
  %19 = mul nuw i128 %18, 11400714785074694791
  %20 = trunc i128 %19 to i64
  %21 = lshr i128 %19, 64
  %22 = trunc nuw i128 %21 to i64
  %23 = mul nuw nsw i64 %1, 374761393
  %24 = add i64 %23, %20
  %25 = mul i64 %16, -7046029288634856825
  %26 = add i64 %25, %22
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %24
  %29 = zext i64 %28 to i128
  %30 = mul nuw i128 %29, 14029467366897019727
  %31 = trunc i128 %30 to i64
  %32 = lshr i128 %30, 64
  %33 = trunc nuw i128 %32 to i64
  %34 = mul i64 %26, -4417276706812531889
  %35 = add i64 %34, %33
  %36 = lshr i64 %31, 37
  %37 = xor i64 %36, %31
  %38 = mul i64 %37, 1609587791953885689
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  br label %120

41:                                               ; preds = %6
  %42 = icmp samesign ugt i64 %1, 3
  br i1 %42, label %43, label %76

43:                                               ; preds = %41
  %44 = load i32, ptr %0, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %46 = getelementptr inbounds i8, ptr %45, i64 -4
  %47 = load i32, ptr %46, align 1
  %48 = zext i32 %44 to i64
  %49 = zext i32 %47 to i64
  %50 = shl nuw i64 %49, 32
  %51 = or disjoint i64 %50, %48
  %52 = tail call noundef i64 @llvm.bswap.i64(i64 %51)
  %53 = add i64 %2, -4734510112055689544
  %54 = xor i64 %51, %53
  %55 = sub i64 2066345149520216444, %2
  %56 = xor i64 %52, %55
  %57 = lshr i64 %54, 51
  %58 = xor i64 %57, %54
  %59 = mul i64 %58, 2654435761
  %60 = add i64 %59, %1
  %61 = lshr i64 %60, 47
  %62 = xor i64 %61, %60
  %63 = mul i64 %62, -4417276706812531889
  %64 = lshr i64 %56, 47
  %65 = xor i64 %64, %56
  %66 = mul i64 %65, -7046029288634856825
  %67 = sub i64 %66, %1
  %68 = lshr i64 %67, 43
  %69 = xor i64 %68, %67
  %70 = mul i64 %69, -8796714831421723037
  %71 = lshr i64 %63, 37
  %72 = xor i64 %71, %63
  %73 = mul i64 %72, 1609587791953885689
  %74 = lshr i64 %73, 32
  %75 = xor i64 %74, %73
  br label %120

76:                                               ; preds = %41
  %77 = icmp eq i64 %1, 0
  br i1 %77, label %110, label %78

78:                                               ; preds = %76
  %79 = load i8, ptr %0, align 1
  %80 = lshr i64 %1, 1
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 %80
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr i8, ptr %0, i64 %1
  %84 = getelementptr i8, ptr %83, i64 -1
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %79 to i32
  %87 = zext i8 %82 to i32
  %88 = shl nuw nsw i32 %87, 8
  %89 = or disjoint i32 %88, %86
  %90 = zext i8 %85 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = or disjoint i32 %89, %91
  %93 = trunc nuw nsw i64 %1 to i32
  %94 = shl nuw nsw i32 %93, 24
  %95 = or disjoint i32 %92, %94
  %96 = tail call range(i32 1, 0) i32 @llvm.bswap.i32(i32 range(i32 16777216, 67108864) %95)
  %97 = zext nneg i32 %95 to i64
  %98 = add i64 %2, 963444408
  %99 = xor i64 %98, %97
  %100 = zext i32 %96 to i64
  %101 = sub i64 3192628259, %2
  %102 = xor i64 %101, %100
  %103 = mul i64 %99, -7046029288634856825
  %104 = mul i64 %102, 2870177450012600261
  %105 = lshr i64 %103, 37
  %106 = xor i64 %105, %103
  %107 = mul i64 %106, 1609587791953885689
  %108 = lshr i64 %107, 32
  %109 = xor i64 %108, %107
  br label %120

110:                                              ; preds = %76
  %111 = add i64 %2, -7046029288634856825
  %112 = xor i64 %111, -4734510112055689544
  %113 = lshr i64 %112, 37
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, 1609587791953885689
  %116 = lshr i64 %115, 32
  %117 = xor i64 %116, %115
  %118 = sub i64 -4417276706812531889, %2
  %119 = xor i64 %118, 2066345149520216444
  br label %120

120:                                              ; preds = %8, %43, %78, %110
  %121 = phi i64 [ %119, %110 ], [ %104, %78 ], [ %70, %43 ], [ %35, %8 ]
  %122 = phi i64 [ %117, %110 ], [ %109, %78 ], [ %75, %43 ], [ %40, %8 ]
  %123 = lshr i64 %121, 37
  %124 = xor i64 %123, %121
  %125 = mul i64 %124, 1609587791953885689
  %126 = lshr i64 %125, 32
  %127 = xor i64 %126, %125
  store i64 %122, ptr %3, align 8
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %127, ptr %128, align 8
  br label %129

129:                                              ; preds = %4, %120
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
