; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: read) uwtable
define dso_local i64 @target_xxh64_heap_40(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias noundef dereferenceable_or_null(88) ptr @malloc(i64 noundef 88) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %96, label %5

5:                                                ; preds = %2
  %6 = add i64 %1, 6983438078262162902
  %7 = add i64 %1, -4417276706812531889
  %8 = add i64 %1, 7046029288634856825
  store i64 0, ptr %3, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %6, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %7, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %8, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %14 = icmp eq ptr %0, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %17 = load i64, ptr %0, align 1
  %18 = mul i64 %17, -4417276706812531889
  %19 = add i64 %18, %6
  %20 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 31)
  %21 = mul i64 %20, -7046029288634856825
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %23 = load i64, ptr %22, align 1
  %24 = mul i64 %23, -4417276706812531889
  %25 = add i64 %24, %7
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %29 = load i64, ptr %28, align 1
  %30 = mul i64 %29, -4417276706812531889
  %31 = add i64 %30, %1
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31)
  %33 = mul i64 %32, -7046029288634856825
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %35 = load i64, ptr %34, align 1
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, %8
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = getelementptr i8, ptr %0, i64 32
  %41 = icmp ult ptr %40, %16
  br i1 %41, label %42, label %46

42:                                               ; preds = %15
  %43 = load i64, ptr %40, align 1
  store i64 %43, ptr %13, align 1
  br label %46

44:                                               ; preds = %5
  %45 = add i64 %1, 2870177450012600261
  br label %86

46:                                               ; preds = %15, %42
  %47 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 1)
  %48 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 7)
  %49 = add i64 %48, %47
  %50 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 12)
  %51 = add i64 %49, %50
  %52 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 18)
  %53 = add i64 %51, %52
  %54 = mul i64 %20, -2381459717836149591
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  %57 = xor i64 %53, %56
  %58 = mul i64 %57, -7046029288634856825
  %59 = add i64 %58, -8796714831421723037
  %60 = mul i64 %26, -2381459717836149591
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 31)
  %62 = mul i64 %61, -7046029288634856825
  %63 = xor i64 %59, %62
  %64 = mul i64 %63, -7046029288634856825
  %65 = add i64 %64, -8796714831421723037
  %66 = mul i64 %32, -2381459717836149591
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 31)
  %68 = mul i64 %67, -7046029288634856825
  %69 = xor i64 %65, %68
  %70 = mul i64 %69, -7046029288634856825
  %71 = add i64 %70, -8796714831421723037
  %72 = mul i64 %38, -2381459717836149591
  %73 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 31)
  %74 = mul i64 %73, -7046029288634856825
  %75 = xor i64 %71, %74
  %76 = mul i64 %75, -7046029288634856825
  %77 = add i64 %76, -8796714831421722997
  %78 = load i64, ptr %13, align 8
  %79 = mul i64 %78, -4417276706812531889
  %80 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 31)
  %81 = mul i64 %80, -7046029288634856825
  %82 = xor i64 %81, %77
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 27)
  %84 = mul i64 %83, -7046029288634856825
  %85 = add i64 %84, -8796714831421723037
  br label %86

86:                                               ; preds = %44, %46
  %87 = phi i64 [ %85, %46 ], [ %45, %44 ]
  %88 = lshr i64 %87, 33
  %89 = xor i64 %88, %87
  %90 = mul i64 %89, -4417276706812531889
  %91 = lshr i64 %90, 29
  %92 = xor i64 %91, %90
  %93 = mul i64 %92, 1609587929392839161
  %94 = lshr i64 %93, 32
  %95 = xor i64 %94, %93
  tail call void @free(ptr noundef nonnull %3) #6
  br label %96

96:                                               ; preds = %2, %86
  %97 = phi i64 [ %95, %86 ], [ 0, %2 ]
  ret i64 %97
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
