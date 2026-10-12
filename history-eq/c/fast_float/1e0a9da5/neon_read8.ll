; ModuleID = 'history-eq/c/fast_float/1e0a9da5/neon_read8.c'
source_filename = "history-eq/c/fast_float/1e0a9da5/neon_read8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i64 @old_read8(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i16, ptr %0, align 2, !tbaa !5
  %3 = and i16 %2, 255
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %5 = load i16, ptr %4, align 2, !tbaa !5
  %6 = shl i16 %5, 8
  %7 = or disjoint i16 %6, %3
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = load <4 x i16>, ptr %9, align 2, !tbaa !5
  %11 = and <4 x i16> %10, splat (i16 255)
  %12 = zext nneg <4 x i16> %11 to <4 x i64>
  %13 = shl nuw nsw <4 x i64> %12, <i64 16, i64 24, i64 32, i64 40>
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %15 = load i16, ptr %14, align 2, !tbaa !5
  %16 = and i16 %15, 255
  %17 = zext nneg i16 %16 to i64
  %18 = shl nuw nsw i64 %17, 48
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %20 = load i16, ptr %19, align 2, !tbaa !5
  %21 = and i16 %20, 255
  %22 = zext nneg i16 %21 to i64
  %23 = shl nuw i64 %22, 56
  %24 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %13)
  %25 = or i64 %24, %18
  %26 = or disjoint i64 %23, %8
  %27 = or i64 %25, %26
  ret i64 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i64 @new_read8(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load <8 x i16>, ptr %0, align 2
  %3 = trunc <8 x i16> %2 to <8 x i8>
  %4 = bitcast <8 x i8> %3 to <1 x i64>
  %5 = extractelement <1 x i64> %4, i64 0
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i64 @new_read8_bad(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load <8 x i16>, ptr %0, align 2
  %3 = trunc <8 x i16> %2 to <8 x i8>
  %4 = bitcast <8 x i8> %3 to <1 x i64>
  %5 = extractelement <1 x i64> %4, i64 0
  %6 = xor i64 %5, 1
  ret i64 %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
