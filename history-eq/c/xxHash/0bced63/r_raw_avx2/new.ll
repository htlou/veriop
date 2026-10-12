; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0bced63/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0bced63/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_initsec(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [192 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #4
  call void @llvm.prefetch.p0(ptr nonnull %3, i32 0, i32 3, i32 1)
  %4 = sub nsw i64 0, %1
  %5 = insertelement <4 x i64> poison, i64 %1, i64 0
  %6 = insertelement <4 x i64> %5, i64 %4, i64 1
  %7 = insertelement <4 x i64> %6, i64 %1, i64 2
  %8 = insertelement <4 x i64> %7, i64 %4, i64 3
  %9 = add <4 x i64> %8, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %9, ptr %3, align 64
  %10 = add <4 x i64> %8, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x i64> %10, ptr %11, align 32
  %12 = add <4 x i64> %8, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x i64> %12, ptr %13, align 64
  %14 = add <4 x i64> %8, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <4 x i64> %14, ptr %15, align 32
  %16 = add <4 x i64> %8, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <4 x i64> %16, ptr %17, align 64
  %18 = add <4 x i64> %8, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store <4 x i64> %18, ptr %19, align 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %0, ptr noundef nonnull align 64 dereferenceable(192) %3, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_initCustomSecret: argument 0"}
!7 = distinct !{!7, !"XXH3_initCustomSecret"}
