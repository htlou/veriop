; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0a5f34f/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0a5f34f/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_4to8_64b(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = alloca [16 x i8], align 64
  %14 = add i64 %2, -9
  %15 = icmp ult i64 %14, -5
  br i1 %15, label %39, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #2
  store i64 %0, ptr %13, align 64
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %1, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 %2
  %19 = getelementptr inbounds i8, ptr %18, i64 -4
  %20 = load i32, ptr %19, align 1
  %21 = and i64 %0, 4294967295
  %22 = zext i32 %20 to i64
  %23 = shl nuw i64 %22, 32
  %24 = or disjoint i64 %23, %21
  %25 = add i64 %11, %3
  %26 = xor i64 %24, %25
  %27 = lshr i64 %26, 51
  %28 = xor i64 %27, %26
  %29 = mul i64 %28, 2654435761
  %30 = add i64 %29, %2
  %31 = lshr i64 %30, 47
  %32 = xor i64 %31, %30
  %33 = mul i64 %32, -4417276706812531889
  %34 = lshr i64 %33, 37
  %35 = xor i64 %34, %33
  %36 = mul i64 %35, 1609587929392839161
  %37 = lshr i64 %36, 32
  %38 = xor i64 %37, %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #2
  br label %39

39:                                               ; preds = %12, %16
  %40 = phi i64 [ %38, %16 ], [ 0, %12 ]
  ret i64 %40
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_raw_len_0to16_64b(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = alloca [16 x i8], align 64
  %14 = icmp ugt i64 %2, 16
  br i1 %14, label %93, label %15

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #2
  store i64 %0, ptr %13, align 64
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %1, ptr %16, align 8
  %17 = icmp samesign ugt i64 %2, 8
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = add i64 %11, %3
  %20 = xor i64 %19, %0
  %21 = getelementptr inbounds nuw i8, ptr %13, i64 %2
  %22 = getelementptr inbounds i8, ptr %21, i64 -8
  %23 = load i64, ptr %22, align 1
  %24 = sub i64 %4, %11
  %25 = xor i64 %23, %24
  %26 = zext i64 %20 to i128
  %27 = zext i64 %25 to i128
  %28 = mul nuw i128 %27, %26
  %29 = lshr i128 %28, 64
  %30 = xor i128 %29, %28
  %31 = trunc i128 %30 to i64
  %32 = add i64 %20, %2
  %33 = add i64 %32, %25
  %34 = add i64 %33, %31
  %35 = lshr i64 %34, 37
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  br label %91

40:                                               ; preds = %15
  %41 = icmp samesign ugt i64 %2, 3
  br i1 %41, label %42, label %64

42:                                               ; preds = %40
  %43 = getelementptr inbounds nuw i8, ptr %13, i64 %2
  %44 = getelementptr inbounds i8, ptr %43, i64 -4
  %45 = load i32, ptr %44, align 1
  %46 = and i64 %0, 4294967295
  %47 = zext i32 %45 to i64
  %48 = shl nuw i64 %47, 32
  %49 = or disjoint i64 %48, %46
  %50 = add i64 %11, %3
  %51 = xor i64 %49, %50
  %52 = lshr i64 %51, 51
  %53 = xor i64 %52, %51
  %54 = mul i64 %53, 2654435761
  %55 = add i64 %54, %2
  %56 = lshr i64 %55, 47
  %57 = xor i64 %56, %55
  %58 = mul i64 %57, -4417276706812531889
  %59 = lshr i64 %58, 37
  %60 = xor i64 %59, %58
  %61 = mul i64 %60, 1609587929392839161
  %62 = lshr i64 %61, 32
  %63 = xor i64 %62, %61
  br label %91

64:                                               ; preds = %40
  %65 = icmp eq i64 %2, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %64
  %67 = lshr i64 %2, 1
  %68 = getelementptr inbounds nuw i8, ptr %13, i64 %67
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr i8, ptr %13, i64 %2
  %71 = getelementptr i8, ptr %70, i64 -1
  %72 = load i8, ptr %71, align 1
  %73 = and i64 %0, 255
  %74 = zext i8 %69 to i64
  %75 = shl nuw nsw i64 %74, 8
  %76 = or disjoint i64 %75, %73
  %77 = zext i8 %72 to i64
  %78 = shl nuw nsw i64 %77, 16
  %79 = or disjoint i64 %76, %78
  %80 = shl nuw nsw i64 %2, 24
  %81 = or disjoint i64 %79, %80
  %82 = and i64 %3, 4294967295
  %83 = add i64 %11, %82
  %84 = xor i64 %81, %83
  %85 = mul i64 %84, -7046029288634856825
  %86 = lshr i64 %85, 37
  %87 = xor i64 %86, %85
  %88 = mul i64 %87, 1609587929392839161
  %89 = lshr i64 %88, 32
  %90 = xor i64 %89, %88
  br label %91

91:                                               ; preds = %18, %42, %64, %66
  %92 = phi i64 [ %39, %18 ], [ %63, %42 ], [ %90, %66 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #2
  br label %93

93:                                               ; preds = %12, %91
  %94 = phi i64 [ %92, %91 ], [ 0, %12 ]
  ret i64 %94
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
