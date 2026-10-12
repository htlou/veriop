; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neonm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neonm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @target_acc512_neon(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <2 x i64> poison, i64 %1, i64 0
  %27 = insertelement <2 x i64> %26, i64 %2, i64 1
  %28 = insertelement <2 x i64> poison, i64 %9, i64 0
  %29 = insertelement <2 x i64> %28, i64 %10, i64 1
  %30 = insertelement <2 x i64> poison, i64 %17, i64 0
  %31 = insertelement <2 x i64> %30, i64 %18, i64 1
  %32 = xor i64 %19, %11
  %33 = add i64 %11, %4
  %34 = and i64 %32, 4294967295
  %35 = lshr i64 %32, 32
  %36 = mul nuw i64 %34, %35
  %37 = xor i64 %20, %12
  %38 = add i64 %12, %3
  %39 = add i64 %38, %36
  %40 = and i64 %37, 4294967295
  %41 = lshr i64 %37, 32
  %42 = mul nuw i64 %40, %41
  %43 = add i64 %33, %42
  %44 = xor i64 %21, %13
  %45 = add i64 %13, %6
  %46 = and i64 %44, 4294967295
  %47 = lshr i64 %44, 32
  %48 = mul nuw i64 %46, %47
  %49 = xor i64 %22, %14
  %50 = add i64 %14, %5
  %51 = add i64 %50, %48
  %52 = and i64 %49, 4294967295
  %53 = lshr i64 %49, 32
  %54 = mul nuw i64 %52, %53
  %55 = add i64 %45, %54
  %56 = xor i64 %23, %15
  %57 = add i64 %15, %8
  %58 = and i64 %56, 4294967295
  %59 = lshr i64 %56, 32
  %60 = mul nuw i64 %58, %59
  %61 = xor i64 %24, %16
  %62 = add i64 %16, %7
  %63 = add i64 %62, %60
  %64 = and i64 %61, 4294967295
  %65 = lshr i64 %61, 32
  %66 = mul nuw i64 %64, %65
  %67 = add i64 %57, %66
  %68 = shufflevector <2 x i64> %29, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %69 = xor <2 x i64> %31, %29
  %70 = lshr <2 x i64> %69, splat (i64 32)
  %71 = and <2 x i64> %69, splat (i64 4294967295)
  %72 = mul nuw <2 x i64> %70, %71
  %73 = add <2 x i64> %72, %68
  %74 = freeze <2 x i64> %73
  %75 = add <2 x i64> %74, %27
  store <2 x i64> %75, ptr %0, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %39, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %43, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %51, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %55, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %63, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %67, ptr %81, align 8
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
!6 = !{!7, !9, !10}
!7 = distinct !{!7, !8, !"XXH3_accumulate_512_neon: argument 0"}
!8 = distinct !{!8, !"XXH3_accumulate_512_neon"}
!9 = distinct !{!9, !8, !"XXH3_accumulate_512_neon: argument 1"}
!10 = distinct !{!10, !8, !"XXH3_accumulate_512_neon: argument 2"}
!11 = !{i64 2150826213}
