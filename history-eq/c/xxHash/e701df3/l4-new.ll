; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neonm.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neonm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nounwind memory(argmem: write) uwtable
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
  %40 = lshr i64 %38, 32
  %41 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %38, i64 range(i64 0, 4294967296) %40, i64 %5) #1
  %42 = xor i64 %22, %14
  %43 = add i64 %41, %14
  %44 = lshr i64 %42, 32
  %45 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %42, i64 range(i64 0, 4294967296) %44, i64 %39) #1
  %46 = xor i64 %23, %15
  %47 = add i64 %15, %8
  %48 = lshr i64 %46, 32
  %49 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %46, i64 range(i64 0, 4294967296) %48, i64 %7) #1
  %50 = xor i64 %24, %16
  %51 = add i64 %49, %16
  %52 = lshr i64 %50, 32
  %53 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %50, i64 range(i64 0, 4294967296) %52, i64 %47) #1
  %54 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %55 = shufflevector <2 x i64> %33, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %56 = xor <2 x i64> %35, %31
  %57 = xor <2 x i64> %37, %33
  %58 = bitcast <2 x i64> %56 to <4 x i32>
  %59 = bitcast <2 x i64> %57 to <4 x i32>
  %60 = shufflevector <4 x i32> %58, <4 x i32> %59, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %61 = shufflevector <4 x i32> %58, <4 x i32> %59, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %62 = tail call <2 x i64> asm "umlal   $0.2d, $1.2s, $2.2s", "=w,w,w,0"(<4 x i32> %60, <4 x i32> %61, <2 x i64> %54) #1
  %63 = tail call <2 x i64> asm "umlal2  $0.2d, $1.4s, $2.4s", "=w,w,w,0"(<4 x i32> %60, <4 x i32> %61, <2 x i64> %55) #1
  %64 = add <2 x i64> %27, %62
  %65 = add <2 x i64> %29, %63
  store <2 x i64> %64, ptr %0, align 8
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %65, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %43, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %45, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %51, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %53, ptr %70, align 8
  ret void
}

attributes #0 = { nounwind memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{i64 3231264}
!7 = !{i64 3169102}
!8 = !{i64 3169297}
