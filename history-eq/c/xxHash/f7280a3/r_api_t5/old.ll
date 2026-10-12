; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none) uwtable
define dso_local i32 @target_xxh32_heap_empty(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i64
  %6 = and i64 %5, 63
  %7 = or i64 %5, -64
  %8 = sub nuw nsw i64 64, %6
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %10 = trunc nuw nsw i64 %8 to i8
  %11 = getelementptr inbounds i8, ptr %9, i64 -1
  store i8 %10, ptr %11, align 1
  %12 = add i32 %0, 606290984
  %13 = add i32 %0, -2048144777
  %14 = add i32 %0, 1640531535
  store i64 0, ptr %9, align 4
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %12, ptr %15, align 4
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %13, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %0, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %14, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %19, i8 0, i64 20, i1 false)
  %20 = add i32 %0, 374761393
  %21 = lshr i32 %20, 15
  %22 = xor i32 %21, %20
  %23 = mul i32 %22, -2048144777
  %24 = lshr i32 %23, 13
  %25 = xor i32 %24, %23
  %26 = mul i32 %25, -1028477379
  %27 = lshr i32 %26, 16
  %28 = xor i32 %27, %26
  %29 = getelementptr inbounds i8, ptr %9, i64 %7
  tail call void @free(ptr noundef nonnull %29) #5
  br label %30

30:                                               ; preds = %1, %4
  %31 = phi i32 [ %28, %4 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
