; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: read) uwtable
define dso_local i64 @target_xxh64_heap_40(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias dereferenceable_or_null(152) ptr @malloc(i64 noundef 152) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %105, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i64
  %7 = and i64 %6, 63
  %8 = or i64 %6, -64
  %9 = sub nuw nsw i64 64, %7
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 %9
  %11 = trunc nuw nsw i64 %9 to i8
  %12 = getelementptr inbounds i8, ptr %10, i64 -1
  store i8 %11, ptr %12, align 1
  %13 = add i64 %1, 6983438078262162902
  %14 = add i64 %1, -4417276706812531889
  %15 = add i64 %1, 7046029288634856825
  store i64 0, ptr %10, align 8
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %13, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %14, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %1, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %15, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %20, i8 0, i64 40, i1 false)
  %21 = icmp eq ptr %0, null
  br i1 %21, label %52, label %22

22:                                               ; preds = %5
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 40, ptr %10, align 8
  %24 = load i64, ptr %0, align 1
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %13
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %30 = load i64, ptr %29, align 1
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %14
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %36 = load i64, ptr %35, align 1
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %1
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = load i64, ptr %41, align 1
  %43 = mul i64 %42, -4417276706812531889
  %44 = add i64 %43, %15
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = getelementptr i8, ptr %0, i64 32
  store i64 %28, ptr %16, align 8
  store i64 %34, ptr %17, align 8
  store i64 %40, ptr %18, align 8
  store i64 %46, ptr %19, align 8
  %48 = icmp ult ptr %47, %23
  br i1 %48, label %49, label %54

49:                                               ; preds = %22
  %50 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %51 = load i64, ptr %47, align 1
  store i64 %51, ptr %20, align 1
  store i32 8, ptr %50, align 8
  br label %54

52:                                               ; preds = %5
  %53 = add i64 %1, 2870177450012600261
  br label %94

54:                                               ; preds = %22, %49
  %55 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 1)
  %56 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 7)
  %57 = add i64 %56, %55
  %58 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 12)
  %59 = add i64 %57, %58
  %60 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 18)
  %61 = add i64 %59, %60
  %62 = mul i64 %27, -2381459717836149591
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  %68 = mul i64 %33, -2381459717836149591
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = xor i64 %67, %70
  %72 = mul i64 %71, -7046029288634856825
  %73 = add i64 %72, -8796714831421723037
  %74 = mul i64 %39, -2381459717836149591
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 31)
  %76 = mul i64 %75, -7046029288634856825
  %77 = xor i64 %73, %76
  %78 = mul i64 %77, -7046029288634856825
  %79 = add i64 %78, -8796714831421723037
  %80 = mul i64 %45, -2381459717836149591
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %79, %82
  %84 = mul i64 %83, -7046029288634856825
  %85 = add i64 %84, -8796714831421722997
  %86 = load i64, ptr %20, align 8
  %87 = mul i64 %86, -4417276706812531889
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = xor i64 %89, %85
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 27)
  %92 = mul i64 %91, -7046029288634856825
  %93 = add i64 %92, -8796714831421723037
  br label %94

94:                                               ; preds = %52, %54
  %95 = phi i64 [ %93, %54 ], [ %53, %52 ]
  %96 = lshr i64 %95, 33
  %97 = xor i64 %96, %95
  %98 = mul i64 %97, -4417276706812531889
  %99 = lshr i64 %98, 29
  %100 = xor i64 %99, %98
  %101 = mul i64 %100, 1609587929392839161
  %102 = lshr i64 %101, 32
  %103 = xor i64 %102, %101
  %104 = getelementptr inbounds i8, ptr %10, i64 %8
  tail call void @free(ptr noundef nonnull %104) #6
  br label %105

105:                                              ; preds = %2, %94
  %106 = phi i64 [ %103, %94 ], [ 0, %2 ]
  ret i64 %106
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
