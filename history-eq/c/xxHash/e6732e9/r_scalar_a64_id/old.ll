; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e6732e9/wrap_scalar.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e6732e9/wrap_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind memory(argmem: write) uwtable
define dso_local void @target_acc512_scalar(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = xor i64 %17, %9
  %27 = add i64 %9, %2
  %28 = lshr i64 %26, 32
  %29 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %26, i64 range(i64 0, 4294967296) %28, i64 %1) #2
  %30 = xor i64 %18, %10
  %31 = add i64 %29, %10
  %32 = lshr i64 %30, 32
  %33 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %30, i64 range(i64 0, 4294967296) %32, i64 %27) #2
  %34 = xor i64 %19, %11
  %35 = add i64 %11, %4
  %36 = lshr i64 %34, 32
  %37 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %34, i64 range(i64 0, 4294967296) %36, i64 %3) #2
  %38 = xor i64 %20, %12
  %39 = add i64 %37, %12
  %40 = lshr i64 %38, 32
  %41 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %38, i64 range(i64 0, 4294967296) %40, i64 %35) #2
  %42 = xor i64 %21, %13
  %43 = add i64 %13, %6
  %44 = lshr i64 %42, 32
  %45 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %42, i64 range(i64 0, 4294967296) %44, i64 %5) #2
  %46 = xor i64 %22, %14
  %47 = add i64 %45, %14
  %48 = lshr i64 %46, 32
  %49 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %46, i64 range(i64 0, 4294967296) %48, i64 %43) #2
  %50 = xor i64 %23, %15
  %51 = add i64 %15, %8
  %52 = lshr i64 %50, 32
  %53 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %50, i64 range(i64 0, 4294967296) %52, i64 %7) #2
  %54 = xor i64 %24, %16
  %55 = add i64 %53, %16
  %56 = lshr i64 %54, 32
  %57 = tail call i64 asm "umaddl ${0:x}, ${1:w}, ${2:w}, ${3:x}", "=r,r,r,r"(i64 %54, i64 range(i64 0, 4294967296) %56, i64 %51) #2
  store i64 %31, ptr %0, align 8
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %33, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %39, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %41, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %47, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %49, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %55, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %57, ptr %64, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @target_initsecret_scalar(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = bitcast ptr @XXH3_kSecret to ptr
  %4 = load i64, ptr %3, align 1
  %5 = add i64 %4, %1
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = load i64, ptr %6, align 1
  %8 = sub i64 %7, %1
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = load i64, ptr %9, align 1
  %11 = add i64 %10, %1
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 %13, %1
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load i64, ptr %15, align 1
  %17 = add i64 %16, %1
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %19 = load i64, ptr %18, align 1
  %20 = sub i64 %19, %1
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %22 = load i64, ptr %21, align 1
  %23 = add i64 %22, %1
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %25 = load i64, ptr %24, align 1
  %26 = sub i64 %25, %1
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %28 = load i64, ptr %27, align 1
  %29 = add i64 %28, %1
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %31 = load i64, ptr %30, align 1
  %32 = sub i64 %31, %1
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %34 = load i64, ptr %33, align 1
  %35 = add i64 %34, %1
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %37 = load i64, ptr %36, align 1
  %38 = sub i64 %37, %1
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %40 = load i64, ptr %39, align 1
  %41 = add i64 %40, %1
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %43 = load i64, ptr %42, align 1
  %44 = sub i64 %43, %1
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %46 = load i64, ptr %45, align 1
  %47 = add i64 %46, %1
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 120
  %49 = load i64, ptr %48, align 1
  %50 = sub i64 %49, %1
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %52 = load i64, ptr %51, align 1
  %53 = add i64 %52, %1
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %55 = load i64, ptr %54, align 1
  %56 = sub i64 %55, %1
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %58 = load i64, ptr %57, align 1
  %59 = add i64 %58, %1
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 152
  %61 = load i64, ptr %60, align 1
  %62 = sub i64 %61, %1
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %64 = load i64, ptr %63, align 1
  %65 = add i64 %64, %1
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %67 = load i64, ptr %66, align 1
  %68 = sub i64 %67, %1
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %70 = load i64, ptr %69, align 1
  %71 = add i64 %70, %1
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %73 = load i64, ptr %72, align 1
  %74 = sub i64 %73, %1
  store i64 %5, ptr %0, align 1
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %8, ptr %75, align 1
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %11, ptr %76, align 1
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %14, ptr %77, align 1
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %17, ptr %78, align 1
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %20, ptr %79, align 1
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %23, ptr %80, align 1
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %26, ptr %81, align 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %29, ptr %82, align 1
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %32, ptr %83, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %35, ptr %84, align 1
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %38, ptr %85, align 1
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %41, ptr %86, align 1
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %44, ptr %87, align 1
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %47, ptr %88, align 1
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %50, ptr %89, align 1
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %53, ptr %90, align 1
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %56, ptr %91, align 1
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %59, ptr %92, align 1
  %93 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %62, ptr %93, align 1
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %65, ptr %94, align 1
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %68, ptr %95, align 1
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %71, ptr %96, align 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %74, ptr %97, align 1
  ret void
}

attributes #0 = { nounwind memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #2 = { nounwind memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{i64 252968}
!7 = !{!8}
!8 = distinct !{!8, !9, !"XXH3_initCustomSecret_scalar: argument 0"}
!9 = distinct !{!9, !"XXH3_initCustomSecret_scalar"}
!10 = !{i64 2150838636}
