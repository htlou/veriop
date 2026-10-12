; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1792d88/wrap_heap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/1792d88/wrap_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none) uwtable
define dso_local i64 @target_heap_state_len40(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #0 {
  %10 = tail call dereferenceable_or_null(88) ptr @calloc(i64 1, i64 88)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %85, label %12

12:                                               ; preds = %9
  %13 = add i64 %8, 6983438078262162902
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %15 = add i64 %8, -4417276706812531889
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %18 = add i64 %8, 7046029288634856825
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 40, ptr %10, align 8
  %20 = mul i64 %0, -4417276706812531889
  %21 = add i64 %20, %13
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  store i64 %23, ptr %14, align 8
  %24 = mul i64 %1, -4417276706812531889
  %25 = add i64 %24, %15
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  store i64 %27, ptr %16, align 8
  %28 = mul i64 %2, -4417276706812531889
  %29 = add i64 %28, %8
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  store i64 %31, ptr %17, align 8
  %32 = mul i64 %3, -4417276706812531889
  %33 = add i64 %32, %18
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  store i64 %35, ptr %19, align 8
  %36 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 %4, ptr %36, align 1
  %37 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 7)
  %38 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 1)
  %39 = add i64 %37, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 12)
  %41 = add i64 %39, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 18)
  %43 = add i64 %41, %42
  %44 = mul i64 %22, -2381459717836149591
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, -7046029288634856825
  %49 = add i64 %48, -8796714831421723037
  %50 = mul i64 %26, -2381459717836149591
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %49, %52
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %54, -8796714831421723037
  %56 = mul i64 %30, -2381459717836149591
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %55, %58
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %60, -8796714831421723037
  %62 = mul i64 %34, -2381459717836149591
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421722997
  %68 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %69 = load i64, ptr %68, align 8
  %70 = mul i64 %69, -4417276706812531889
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %72, %67
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 27)
  %75 = mul i64 %74, -7046029288634856825
  %76 = add i64 %75, -8796714831421723037
  %77 = lshr i64 %76, 33
  %78 = xor i64 %77, %76
  %79 = mul i64 %78, -4417276706812531889
  %80 = lshr i64 %79, 29
  %81 = xor i64 %80, %79
  %82 = mul i64 %81, 1609587929392839161
  %83 = lshr i64 %82, 32
  %84 = xor i64 %83, %82
  tail call void @free(ptr noundef nonnull %10) #5
  br label %85

85:                                               ; preds = %9, %12
  %86 = phi i64 [ %84, %12 ], [ 0, %9 ]
  ret i64 %86
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_heap_state_len0(i64 noundef %0) local_unnamed_addr #1 {
  %2 = add i64 %0, 2870177450012600261
  %3 = lshr i64 %2, 33
  %4 = xor i64 %3, %2
  %5 = mul i64 %4, -4417276706812531889
  %6 = lshr i64 %5, 29
  %7 = xor i64 %6, %5
  %8 = mul i64 %7, 1609587929392839161
  %9 = lshr i64 %8, 32
  %10 = xor i64 %9, %8
  ret i64 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
