; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind memory(readwrite, argmem: read) uwtable
define dso_local i32 @target_xxh32_heap_20(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %91, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i64
  %7 = and i64 %6, 63
  %8 = or i64 %6, -64
  %9 = sub nuw nsw i64 64, %7
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 %9
  %11 = trunc nuw nsw i64 %9 to i8
  %12 = getelementptr inbounds i8, ptr %10, i64 -1
  store i8 %11, ptr %12, align 1
  %13 = add i32 %1, 606290984
  %14 = add i32 %1, -2048144777
  %15 = add i32 %1, 1640531535
  store i64 0, ptr %10, align 4
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %13, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %14, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 %15, ptr %19, align 4
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %20, i8 0, i64 20, i1 false)
  %21 = icmp eq ptr %0, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %5
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 20, ptr %10, align 4
  %24 = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 1, ptr %24, align 4
  %25 = load i32, ptr %0, align 1
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %26, %13
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = freeze i32 %29
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %32 = load i32, ptr %31, align 1
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %14
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  %37 = freeze i32 %36
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %39 = load i32, ptr %38, align 1
  %40 = mul i32 %39, -2048144777
  %41 = add i32 %40, %1
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 13)
  %43 = mul i32 %42, -1640531535
  %44 = freeze i32 %43
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %46 = load i32, ptr %45, align 1
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %15
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  %52 = getelementptr i8, ptr %0, i64 16
  store i32 %30, ptr %16, align 4
  store i32 %37, ptr %17, align 4
  store i32 %44, ptr %18, align 4
  store i32 %51, ptr %19, align 4
  %53 = icmp ult ptr %52, %23
  br i1 %53, label %65, label %56

54:                                               ; preds = %5
  %55 = add i32 %1, 374761393
  br label %80

56:                                               ; preds = %22
  %57 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 1)
  %58 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 7)
  %59 = add i32 %58, %57
  %60 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 12)
  %61 = add i32 %59, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 18)
  %63 = add i32 %61, %62
  %64 = add i32 %63, 20
  br label %80

65:                                               ; preds = %22
  %66 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %67 = load i32, ptr %52, align 1
  store i32 %67, ptr %20, align 1
  store i32 4, ptr %66, align 4
  %68 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 1)
  %69 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 7)
  %70 = add i32 %69, %68
  %71 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 12)
  %72 = add i32 %70, %71
  %73 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 18)
  %74 = add i32 %72, %73
  %75 = add i32 %74, 20
  %76 = mul i32 %67, -1028477379
  %77 = add i32 %76, %75
  %78 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 17)
  %79 = mul i32 %78, 668265263
  br label %80

80:                                               ; preds = %56, %54, %65
  %81 = phi i32 [ %79, %65 ], [ %64, %56 ], [ %55, %54 ]
  %82 = lshr i32 %81, 15
  %83 = xor i32 %82, %81
  %84 = mul i32 %83, -2048144777
  %85 = lshr i32 %84, 13
  %86 = xor i32 %85, %84
  %87 = mul i32 %86, -1028477379
  %88 = lshr i32 %87, 16
  %89 = xor i32 %88, %87
  %90 = getelementptr inbounds i8, ptr %10, i64 %8
  tail call void @free(ptr noundef nonnull %90) #7
  br label %91

91:                                               ; preds = %2, %80
  %92 = phi i32 [ %89, %80 ], [ 0, %2 ]
  ret i32 %92
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 249425}
