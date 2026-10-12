; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neon.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neon.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx11.0.0"

; Function Attrs: nounwind ssp uwtable(sync)
define void @target_acc512_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <2 x i64> poison, i64 %1, i64 0
  %27 = insertelement <2 x i64> %26, i64 %2, i64 1
  %28 = insertelement <2 x i64> poison, i64 %3, i64 0
  %29 = insertelement <2 x i64> %28, i64 %4, i64 1
  %30 = insertelement <2 x i64> poison, i64 %5, i64 0
  %31 = insertelement <2 x i64> %30, i64 %6, i64 1
  %32 = insertelement <2 x i64> poison, i64 %7, i64 0
  %33 = insertelement <2 x i64> %32, i64 %8, i64 1
  %34 = insertelement <2 x i64> poison, i64 %9, i64 0
  %35 = insertelement <2 x i64> %34, i64 %10, i64 1
  %36 = insertelement <2 x i64> poison, i64 %11, i64 0
  %37 = insertelement <2 x i64> %36, i64 %12, i64 1
  %38 = insertelement <2 x i64> poison, i64 %13, i64 0
  %39 = insertelement <2 x i64> %38, i64 %14, i64 1
  %40 = insertelement <2 x i64> poison, i64 %15, i64 0
  %41 = insertelement <2 x i64> %40, i64 %16, i64 1
  %42 = insertelement <2 x i64> poison, i64 %17, i64 0
  %43 = insertelement <2 x i64> %42, i64 %18, i64 1
  %44 = insertelement <2 x i64> poison, i64 %19, i64 0
  %45 = insertelement <2 x i64> %44, i64 %20, i64 1
  %46 = insertelement <2 x i64> poison, i64 %21, i64 0
  %47 = insertelement <2 x i64> %46, i64 %22, i64 1
  %48 = insertelement <2 x i64> poison, i64 %23, i64 0
  %49 = insertelement <2 x i64> %48, i64 %24, i64 1
  %50 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %51 = xor <2 x i64> %43, %35
  %52 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %53 = xor <2 x i64> %45, %37
  %54 = bitcast <2 x i64> %51 to <4 x i32>
  %55 = bitcast <2 x i64> %53 to <4 x i32>
  %56 = shufflevector <4 x i32> %54, <4 x i32> %55, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %57 = shufflevector <4 x i32> %54, <4 x i32> %55, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %58 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %59 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %60 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %58, <2 x i32> %59)
  %61 = add <2 x i64> %60, %50
  %62 = freeze <2 x i64> %61
  %63 = add <2 x i64> %62, %27
  %64 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %65 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %66 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %64, <2 x i32> %65)
  %67 = add <2 x i64> %66, %52
  %68 = freeze <2 x i64> %67
  %69 = add <2 x i64> %68, %29
  %70 = shufflevector <2 x i64> %39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %71 = xor <2 x i64> %47, %39
  %72 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %73 = xor <2 x i64> %49, %41
  %74 = bitcast <2 x i64> %71 to <4 x i32>
  %75 = bitcast <2 x i64> %73 to <4 x i32>
  %76 = shufflevector <4 x i32> %74, <4 x i32> %75, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %77 = shufflevector <4 x i32> %74, <4 x i32> %75, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %78 = shufflevector <4 x i32> %76, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %79 = shufflevector <4 x i32> %77, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %80 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %78, <2 x i32> %79)
  %81 = add <2 x i64> %80, %70
  %82 = freeze <2 x i64> %81
  %83 = add <2 x i64> %82, %31
  %84 = shufflevector <4 x i32> %76, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %85 = shufflevector <4 x i32> %77, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %86 = tail call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %84, <2 x i32> %85)
  %87 = add <2 x i64> %86, %72
  %88 = freeze <2 x i64> %87
  %89 = add <2 x i64> %88, %33
  store <2 x i64> %63, ptr %0, align 8
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %69, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %83, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %89, ptr %92, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32>, <2 x i32>) #1

attributes #0 = { nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !8, !9}
!6 = distinct !{!6, !7, !"XXH3_accumulate_512_neon: argument 0"}
!7 = distinct !{!7, !"XXH3_accumulate_512_neon"}
!8 = distinct !{!8, !7, !"XXH3_accumulate_512_neon: argument 1"}
!9 = distinct !{!9, !7, !"XXH3_accumulate_512_neon: argument 2"}
!10 = !{i64 2150825340}
!11 = !{i64 2150825389}
