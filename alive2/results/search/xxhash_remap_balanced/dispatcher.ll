; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_remap_balanced/xxhash_remap_balanced.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_remap_balanced/xxhash_remap_balanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i64 @target_0to16(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 %1, 4
  br i1 %6, label %7, label %9, !prof !5

7:                                                ; preds = %4
  %8 = tail call i64 @lookup_fallback(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #5
  br label %79

9:                                                ; preds = %4
  %10 = icmp samesign ult i64 %1, 9
  %11 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %12)
  br i1 %10, label %13, label %45, !prof !5

13:                                               ; preds = %9
  %14 = trunc i64 %3 to i32
  %15 = tail call noundef i32 @llvm.bswap.i32(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = shl nuw i64 %16, 32
  %18 = xor i64 %17, %3
  %19 = load i32, ptr %0, align 1
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %21 = getelementptr inbounds i8, ptr %20, i64 -4
  %22 = load i32, ptr %21, align 1
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = load i64, ptr %23, align 1
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %24
  %28 = sub i64 %27, %18
  %29 = zext i32 %22 to i64
  %30 = zext i32 %19 to i64
  %31 = shl nuw i64 %30, 32
  %32 = or disjoint i64 %31, %29
  %33 = xor i64 %28, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 49)
  %35 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 24)
  %36 = xor i64 %34, %35
  %37 = xor i64 %36, %33
  %38 = mul i64 %37, -6939452855193903323
  %39 = lshr i64 %38, 35
  %40 = add nuw nsw i64 %39, %1
  %41 = xor i64 %40, %38
  %42 = mul i64 %41, -6939452855193903323
  %43 = lshr i64 %42, 28
  %44 = xor i64 %43, %42
  br label %79

45:                                               ; preds = %9
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %49 = load i64, ptr %48, align 1
  %50 = xor i64 %49, %47
  %51 = add i64 %50, %3
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %53 = load i64, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %55 = load i64, ptr %54, align 1
  %56 = xor i64 %55, %53
  %57 = sub i64 %56, %3
  %58 = load i64, ptr %0, align 1
  %59 = xor i64 %58, %51
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %61 = getelementptr inbounds i8, ptr %60, i64 -8
  %62 = load i64, ptr %61, align 1
  %63 = xor i64 %62, %57
  %64 = tail call noundef i64 @llvm.bswap.i64(i64 %59)
  %65 = add i64 %64, %1
  %66 = add i64 %65, %63
  %67 = zext i64 %59 to i128
  %68 = zext i64 %63 to i128
  %69 = mul nuw i128 %68, %67
  %70 = lshr i128 %69, 64
  %71 = xor i128 %70, %69
  %72 = trunc i128 %71 to i64
  %73 = add i64 %66, %72
  %74 = lshr i64 %73, 37
  %75 = xor i64 %74, %73
  %76 = mul i64 %75, 1609587791953885689
  %77 = lshr i64 %76, 32
  %78 = xor i64 %77, %76
  br label %79

79:                                               ; preds = %45, %13, %7
  %80 = phi i64 [ %8, %7 ], [ %44, %13 ], [ %78, %45 ]
  ret i64 %80
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

declare i64 @lookup_fallback(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
