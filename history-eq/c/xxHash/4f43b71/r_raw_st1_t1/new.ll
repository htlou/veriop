; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @target_raw_small(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %5 = load i32, ptr %4, align 64
  %6 = icmp ugt i32 %5, 256
  %7 = sub i32 256, %5
  %8 = zext i32 %7 to i64
  %9 = icmp ugt i64 %2, %8
  %10 = or i1 %6, %9
  br i1 %10, label %33, label %11

11:                                               ; preds = %3
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = add i64 %2, %12
  %15 = icmp ule i64 %14, %13
  %16 = add i64 %13, 576
  %17 = icmp ule i64 %16, %12
  %18 = or i1 %17, %15
  br i1 %18, label %19, label %33

19:                                               ; preds = %11
  %20 = icmp eq ptr %1, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %22)
  br label %33

23:                                               ; preds = %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %25 = load i64, ptr %24, align 16
  %26 = add i64 %25, %2
  store i64 %26, ptr %24, align 16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %28 = zext nneg i32 %5 to i64
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr nonnull align 1 %1, i64 range(i64 0, 257) %2, i1 false)
  %30 = trunc nuw nsw i64 %2 to i32
  %31 = load i32, ptr %4, align 64
  %32 = add i32 %31, %30
  store i32 %32, ptr %4, align 64
  br label %33

33:                                               ; preds = %23, %21, %11, %3
  %34 = phi i32 [ -1, %3 ], [ -1, %11 ], [ 0, %21 ], [ 0, %23 ]
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_update: argument 1"}
!7 = distinct !{!7, !"XXH3_update"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_update: argument 0"}
!10 = !{!9, !6}
