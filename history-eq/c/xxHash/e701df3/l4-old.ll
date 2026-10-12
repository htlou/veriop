; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neonm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neonm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @target_acc512_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <2 x i64> poison, i64 %1, i64 0
  %27 = insertelement <2 x i64> %26, i64 %2, i64 1
  %28 = insertelement <2 x i64> poison, i64 %3, i64 0
  %29 = insertelement <2 x i64> %28, i64 %4, i64 1
  %30 = insertelement <2 x i64> poison, i64 %9, i64 0
  %31 = insertelement <2 x i64> %30, i64 %10, i64 1
  %32 = insertelement <2 x i64> poison, i64 %11, i64 0
  %33 = insertelement <2 x i64> %32, i64 %12, i64 1
  %34 = insertelement <2 x i64> poison, i64 %17, i64 0
  %35 = insertelement <2 x i64> %34, i64 %18, i64 1
  %36 = insertelement <2 x i64> poison, i64 %19, i64 0
  %37 = insertelement <2 x i64> %36, i64 %20, i64 1
  %38 = xor i64 %21, %13
  %39 = add i64 %13, %6
  %40 = and i64 %38, 4294967295
  %41 = lshr i64 %38, 32
  %42 = mul nuw i64 %40, %41
  %43 = xor i64 %22, %14
  %44 = add i64 %14, %5
  %45 = add i64 %44, %42
  %46 = and i64 %43, 4294967295
  %47 = lshr i64 %43, 32
  %48 = mul nuw i64 %46, %47
  %49 = add i64 %39, %48
  %50 = xor i64 %23, %15
  %51 = add i64 %15, %8
  %52 = and i64 %50, 4294967295
  %53 = lshr i64 %50, 32
  %54 = mul nuw i64 %52, %53
  %55 = xor i64 %24, %16
  %56 = add i64 %16, %7
  %57 = add i64 %56, %54
  %58 = and i64 %55, 4294967295
  %59 = lshr i64 %55, 32
  %60 = mul nuw i64 %58, %59
  %61 = add i64 %51, %60
  %62 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %63 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %64 = xor <2 x i64> %35, %31
  %65 = xor <2 x i64> %37, %33
  %66 = bitcast <2 x i64> %64 to <4 x i32>
  %67 = bitcast <2 x i64> %65 to <4 x i32>
  %68 = shufflevector <4 x i32> %66, <4 x i32> %67, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %69 = shufflevector <4 x i32> %66, <4 x i32> %67, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %70 = shufflevector <4 x i32> %68, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %71 = shufflevector <4 x i32> %69, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %72 = zext <2 x i32> %70 to <2 x i64>
  %73 = zext <2 x i32> %71 to <2 x i64>
  %74 = mul nuw <2 x i64> %72, %73
  %75 = add <2 x i64> %74, %62
  %76 = shufflevector <4 x i32> %68, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %77 = shufflevector <4 x i32> %69, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %78 = zext <2 x i32> %76 to <2 x i64>
  %79 = zext <2 x i32> %77 to <2 x i64>
  %80 = mul nuw <2 x i64> %78, %79
  %81 = add <2 x i64> %80, %63
  %82 = bitcast <2 x i64> %75 to <2 x i64>
  %83 = bitcast <2 x i64> %81 to <2 x i64>
  %84 = add <2 x i64> %27, %82
  %85 = add <2 x i64> %29, %83
  store <2 x i64> %84, ptr %0, align 8
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %85, ptr %86, align 8
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %45, ptr %87, align 8
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %49, ptr %88, align 8
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %57, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %61, ptr %90, align 8
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{!7, !9}
!7 = distinct !{!7, !8, !"XXH3_accumulate_512_neon: argument 1"}
!8 = distinct !{!8, !"XXH3_accumulate_512_neon"}
!9 = distinct !{!9, !8, !"XXH3_accumulate_512_neon: argument 2"}
!10 = !{i64 2150836444}
!11 = !{i64 2150836488}
