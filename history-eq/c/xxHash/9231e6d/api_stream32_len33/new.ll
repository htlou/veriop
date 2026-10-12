; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9231e6d/api_stream32_len33/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9231e6d/api_stream32_len33/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @target_stream(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %70, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, 606290984
  %6 = add i32 %1, -2048144777
  %7 = add i32 %1, 1640531535
  %8 = load i32, ptr %0, align 1
  %9 = mul i32 %8, -2048144777
  %10 = add i32 %9, %5
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 13)
  %12 = mul i32 %11, -1640531535
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %14 = load i32, ptr %13, align 1
  %15 = mul i32 %14, -2048144777
  %16 = add i32 %15, %6
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 13)
  %18 = mul i32 %17, -1640531535
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %26 = load i32, ptr %25, align 1
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %7
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %32 = load i32, ptr %31, align 1
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %12
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %38 = load i32, ptr %37, align 1
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %18
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %44 = load i32, ptr %43, align 1
  %45 = mul i32 %44, -2048144777
  %46 = add i32 %45, %24
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 13)
  %48 = mul i32 %47, -1640531535
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %50 = load i32, ptr %49, align 1
  %51 = mul i32 %50, -2048144777
  %52 = add i32 %51, %30
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 13)
  %54 = mul i32 %53, -1640531535
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %56 = load i8, ptr %55, align 1
  %57 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 1)
  %58 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 7)
  %59 = add i32 %58, %57
  %60 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 12)
  %61 = add i32 %59, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 18)
  %63 = add i32 %61, %62
  %64 = add i32 %63, 33
  %65 = zext i8 %56 to i32
  %66 = mul i32 %65, 374761393
  %67 = add i32 %66, %64
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 11)
  %69 = mul i32 %68, -1640531535
  br label %72

70:                                               ; preds = %2
  %71 = add i32 %1, 374761393
  br label %72

72:                                               ; preds = %70, %4
  %73 = phi i32 [ %71, %70 ], [ %69, %4 ]
  %74 = lshr i32 %73, 15
  %75 = xor i32 %74, %73
  %76 = mul i32 %75, -2048144777
  %77 = lshr i32 %76, 13
  %78 = xor i32 %77, %76
  %79 = mul i32 %78, -1028477379
  %80 = lshr i32 %79, 16
  %81 = xor i32 %80, %79
  ret i32 %81
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
