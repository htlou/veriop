; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6456c04/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6456c04/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_0to16_64b(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = alloca [16 x i8], align 64
  %14 = icmp ugt i64 %2, 16
  br i1 %14, label %89, label %15

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #2
  store i64 %0, ptr %13, align 64
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %1, ptr %16, align 8
  %17 = icmp samesign ugt i64 %2, 8
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = xor i64 %3, %0
  %20 = getelementptr inbounds nuw i8, ptr %13, i64 %2
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = load i64, ptr %21, align 1
  %23 = sub i64 %4, %11
  %24 = xor i64 %22, %23
  %25 = zext i64 %19 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %26, %25
  %28 = lshr i128 %27, 64
  %29 = xor i128 %28, %27
  %30 = trunc i128 %29 to i64
  %31 = add i64 %19, %2
  %32 = add i64 %31, %24
  %33 = add i64 %32, %30
  %34 = lshr i64 %33, 37
  %35 = xor i64 %34, %33
  br label %84

36:                                               ; preds = %15
  %37 = icmp samesign ugt i64 %2, 3
  br i1 %37, label %38, label %55

38:                                               ; preds = %36
  %39 = getelementptr inbounds nuw i8, ptr %13, i64 %2
  %40 = getelementptr inbounds i8, ptr %39, i64 -4
  %41 = load i32, ptr %40, align 1
  %42 = zext i32 %41 to i64
  %43 = shl i64 %0, 32
  %44 = or disjoint i64 %43, %42
  %45 = add i64 %11, %3
  %46 = xor i64 %44, %45
  %47 = lshr i64 %46, 39
  %48 = xor i64 %47, %46
  %49 = mul i64 %48, -4417276706812531889
  %50 = add i64 %49, %2
  %51 = lshr i64 %50, 47
  %52 = lshr i64 %50, 37
  %53 = xor i64 %52, %51
  %54 = xor i64 %53, %50
  br label %84

55:                                               ; preds = %36
  %56 = icmp eq i64 %2, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %55
  %58 = lshr i64 %2, 1
  %59 = getelementptr inbounds nuw i8, ptr %13, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr i8, ptr %13, i64 %2
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load i8, ptr %62, align 1
  %64 = shl i64 %0, 16
  %65 = and i64 %64, 16711680
  %66 = zext i8 %60 to i64
  %67 = shl nuw nsw i64 %66, 24
  %68 = or disjoint i64 %67, %65
  %69 = zext i8 %63 to i64
  %70 = or disjoint i64 %68, %69
  %71 = shl nuw nsw i64 %2, 8
  %72 = or disjoint i64 %70, %71
  %73 = and i64 %3, 4294967295
  %74 = add i64 %11, %73
  %75 = xor i64 %72, %74
  %76 = mul i64 %75, -7046029288634856825
  %77 = lshr i64 %76, 37
  %78 = xor i64 %77, %76
  br label %84

79:                                               ; preds = %55
  %80 = add i64 %11, -7046029288634856825
  %81 = xor i64 %80, %3
  %82 = lshr i64 %81, 37
  %83 = xor i64 %82, %81
  br label %84

84:                                               ; preds = %18, %38, %57, %79
  %85 = phi i64 [ %83, %79 ], [ %78, %57 ], [ %54, %38 ], [ %35, %18 ]
  %86 = mul i64 %85, 1609587791953885689
  %87 = lshr i64 %86, 32
  %88 = xor i64 %87, %86
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #2
  br label %89

89:                                               ; preds = %12, %84
  %90 = phi i64 [ %88, %84 ], [ 0, %12 ]
  ret i64 %90
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_0to16_64b_not8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = alloca [16 x i8], align 64
  %14 = icmp ugt i64 %2, 16
  %15 = icmp eq i64 %2, 8
  %16 = or i1 %14, %15
  br i1 %16, label %91, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #2
  store i64 %0, ptr %13, align 64
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %1, ptr %18, align 8
  %19 = icmp samesign ugt i64 %2, 8
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = xor i64 %3, %0
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 %2
  %23 = getelementptr inbounds i8, ptr %22, i64 -8
  %24 = load i64, ptr %23, align 1
  %25 = sub i64 %4, %11
  %26 = xor i64 %24, %25
  %27 = zext i64 %21 to i128
  %28 = zext i64 %26 to i128
  %29 = mul nuw i128 %28, %27
  %30 = lshr i128 %29, 64
  %31 = xor i128 %30, %29
  %32 = trunc i128 %31 to i64
  %33 = add i64 %21, %2
  %34 = add i64 %33, %26
  %35 = add i64 %34, %32
  %36 = lshr i64 %35, 37
  %37 = xor i64 %36, %35
  br label %86

38:                                               ; preds = %17
  %39 = icmp samesign ugt i64 %2, 3
  br i1 %39, label %40, label %57

40:                                               ; preds = %38
  %41 = getelementptr inbounds nuw i8, ptr %13, i64 %2
  %42 = getelementptr inbounds i8, ptr %41, i64 -4
  %43 = load i32, ptr %42, align 1
  %44 = zext i32 %43 to i64
  %45 = shl i64 %0, 32
  %46 = or disjoint i64 %45, %44
  %47 = add i64 %11, %3
  %48 = xor i64 %46, %47
  %49 = lshr i64 %48, 39
  %50 = xor i64 %49, %48
  %51 = mul i64 %50, -4417276706812531889
  %52 = add i64 %51, %2
  %53 = lshr i64 %52, 47
  %54 = lshr i64 %52, 37
  %55 = xor i64 %54, %53
  %56 = xor i64 %55, %52
  br label %86

57:                                               ; preds = %38
  %58 = icmp eq i64 %2, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %57
  %60 = lshr i64 %2, 1
  %61 = getelementptr inbounds nuw i8, ptr %13, i64 %60
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr i8, ptr %13, i64 %2
  %64 = getelementptr i8, ptr %63, i64 -1
  %65 = load i8, ptr %64, align 1
  %66 = shl i64 %0, 16
  %67 = and i64 %66, 16711680
  %68 = zext i8 %62 to i64
  %69 = shl nuw nsw i64 %68, 24
  %70 = or disjoint i64 %69, %67
  %71 = zext i8 %65 to i64
  %72 = or disjoint i64 %70, %71
  %73 = shl nuw nsw i64 %2, 8
  %74 = or disjoint i64 %72, %73
  %75 = and i64 %3, 4294967295
  %76 = add i64 %11, %75
  %77 = xor i64 %74, %76
  %78 = mul i64 %77, -7046029288634856825
  %79 = lshr i64 %78, 37
  %80 = xor i64 %79, %78
  br label %86

81:                                               ; preds = %57
  %82 = add i64 %11, -7046029288634856825
  %83 = xor i64 %82, %3
  %84 = lshr i64 %83, 37
  %85 = xor i64 %84, %83
  br label %86

86:                                               ; preds = %20, %40, %59, %81
  %87 = phi i64 [ %85, %81 ], [ %80, %59 ], [ %56, %40 ], [ %37, %20 ]
  %88 = mul i64 %87, 1609587791953885689
  %89 = lshr i64 %88, 32
  %90 = xor i64 %89, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #2
  br label %91

91:                                               ; preds = %12, %86
  %92 = phi i64 [ %90, %86 ], [ 0, %12 ]
  ret i64 %92
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
