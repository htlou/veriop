; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0a5f34f/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0a5f34f/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_4to8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, -9
  %4 = icmp ult i64 %3, -5
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %8 = getelementptr inbounds i8, ptr %7, i64 -4
  %9 = load i32, ptr %8, align 1
  %10 = zext i32 %6 to i64
  %11 = zext i32 %9 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or disjoint i64 %12, %10
  %14 = xor i64 %13, -4734510112055689544
  %15 = lshr i64 %14, 51
  %16 = xor i64 %15, %14
  %17 = mul i64 %16, 2654435761
  %18 = add i64 %17, %1
  %19 = lshr i64 %18, 47
  %20 = xor i64 %19, %18
  %21 = mul i64 %20, -4417276706812531889
  %22 = lshr i64 %21, 37
  %23 = xor i64 %22, %21
  %24 = mul i64 %23, 1609587929392839161
  %25 = lshr i64 %24, 32
  %26 = xor i64 %25, %24
  br label %27

27:                                               ; preds = %2, %5
  %28 = phi i64 [ %26, %5 ], [ 0, %2 ]
  ret i64 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_4to8(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -9
  %5 = icmp ult i64 %4, -5
  br i1 %5, label %29, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %9 = getelementptr inbounds i8, ptr %8, i64 -4
  %10 = load i32, ptr %9, align 1
  %11 = zext i32 %7 to i64
  %12 = zext i32 %10 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or disjoint i64 %13, %11
  %15 = add i64 %2, -4734510112055689544
  %16 = xor i64 %14, %15
  %17 = lshr i64 %16, 51
  %18 = xor i64 %17, %16
  %19 = mul i64 %18, 2654435761
  %20 = add i64 %19, %1
  %21 = lshr i64 %20, 47
  %22 = xor i64 %21, %20
  %23 = mul i64 %22, -4417276706812531889
  %24 = lshr i64 %23, 37
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, 1609587929392839161
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  br label %29

29:                                               ; preds = %3, %6
  %30 = phi i64 [ %28, %6 ], [ 0, %3 ]
  ret i64 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_secret_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -9
  %6 = icmp ult i64 %5, -5
  %7 = icmp ult i64 %3, 136
  %8 = or i1 %6, %7
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = load i64, ptr %2, align 1
  %11 = load i32, ptr %0, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -4
  %14 = load i32, ptr %13, align 1
  %15 = zext i32 %11 to i64
  %16 = zext i32 %14 to i64
  %17 = shl nuw i64 %16, 32
  %18 = or disjoint i64 %17, %15
  %19 = xor i64 %18, %10
  %20 = lshr i64 %19, 51
  %21 = xor i64 %20, %19
  %22 = mul i64 %21, 2654435761
  %23 = add i64 %22, %1
  %24 = lshr i64 %23, 47
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, -4417276706812531889
  %27 = lshr i64 %26, 37
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 1609587929392839161
  %30 = lshr i64 %29, 32
  %31 = xor i64 %30, %29
  br label %32

32:                                               ; preds = %4, %9
  %33 = phi i64 [ %31, %9 ], [ 0, %4 ]
  ret i64 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_api_128_seed_0to16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #1 {
  %5 = icmp ugt i64 %1, 16
  br i1 %5, label %129, label %6

6:                                                ; preds = %4
  %7 = icmp samesign ugt i64 %1, 8
  br i1 %7, label %8, label %46

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
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  %41 = lshr i64 %35, 37
  %42 = xor i64 %41, %35
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  br label %125

46:                                               ; preds = %6
  %47 = icmp samesign ugt i64 %1, 3
  br i1 %47, label %48, label %86

48:                                               ; preds = %46
  %49 = load i32, ptr %0, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %51 = getelementptr inbounds i8, ptr %50, i64 -4
  %52 = load i32, ptr %51, align 1
  %53 = zext i32 %49 to i64
  %54 = zext i32 %52 to i64
  %55 = shl nuw i64 %54, 32
  %56 = or disjoint i64 %55, %53
  %57 = tail call noundef i64 @llvm.bswap.i64(i64 %56)
  %58 = add i64 %2, -4734510112055689544
  %59 = xor i64 %56, %58
  %60 = sub i64 2066345149520216444, %2
  %61 = xor i64 %57, %60
  %62 = lshr i64 %59, 51
  %63 = xor i64 %62, %59
  %64 = mul i64 %63, 2654435761
  %65 = add i64 %64, %1
  %66 = lshr i64 %65, 47
  %67 = xor i64 %66, %65
  %68 = mul i64 %67, -4417276706812531889
  %69 = lshr i64 %61, 47
  %70 = xor i64 %69, %61
  %71 = mul i64 %70, -7046029288634856825
  %72 = sub i64 %71, %1
  %73 = lshr i64 %72, 43
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, -8796714831421723037
  %76 = lshr i64 %68, 37
  %77 = xor i64 %76, %68
  %78 = mul i64 %77, 1609587929392839161
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  %81 = lshr i64 %75, 37
  %82 = xor i64 %81, %75
  %83 = mul i64 %82, 1609587929392839161
  %84 = lshr i64 %83, 32
  %85 = xor i64 %84, %83
  br label %125

86:                                               ; preds = %46
  %87 = icmp eq i64 %1, 0
  br i1 %87, label %125, label %88

88:                                               ; preds = %86
  %89 = load i8, ptr %0, align 1
  %90 = lshr i64 %1, 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr i8, ptr %0, i64 %1
  %94 = getelementptr i8, ptr %93, i64 -1
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %89 to i32
  %97 = zext i8 %92 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = or disjoint i32 %98, %96
  %100 = zext i8 %95 to i32
  %101 = shl nuw nsw i32 %100, 16
  %102 = or disjoint i32 %99, %101
  %103 = trunc nuw nsw i64 %1 to i32
  %104 = shl nuw nsw i32 %103, 24
  %105 = or disjoint i32 %102, %104
  %106 = tail call range(i32 1, 0) i32 @llvm.bswap.i32(i32 range(i32 16777216, 67108864) %105)
  %107 = zext nneg i32 %105 to i64
  %108 = add i64 %2, 963444408
  %109 = xor i64 %108, %107
  %110 = zext i32 %106 to i64
  %111 = sub i64 3192628259, %2
  %112 = xor i64 %111, %110
  %113 = mul i64 %109, -7046029288634856825
  %114 = mul i64 %112, 2870177450012600261
  %115 = lshr i64 %113, 37
  %116 = xor i64 %115, %113
  %117 = mul i64 %116, 1609587929392839161
  %118 = lshr i64 %117, 32
  %119 = xor i64 %118, %117
  %120 = lshr i64 %114, 37
  %121 = xor i64 %120, %114
  %122 = mul i64 %121, 1609587929392839161
  %123 = lshr i64 %122, 32
  %124 = xor i64 %123, %122
  br label %125

125:                                              ; preds = %8, %48, %86, %88
  %126 = phi i64 [ %45, %8 ], [ %85, %48 ], [ %124, %88 ], [ 0, %86 ]
  %127 = phi i64 [ %40, %8 ], [ %80, %48 ], [ %119, %88 ], [ 0, %86 ]
  store i64 %127, ptr %3, align 8
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %126, ptr %128, align 8
  br label %129

129:                                              ; preds = %4, %125
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
