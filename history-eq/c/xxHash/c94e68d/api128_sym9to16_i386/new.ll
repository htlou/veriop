; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api128_sym9to16_i386/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api128_sym9to16_i386/wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i32 %1, -17
  %6 = icmp ult i32 %5, -8
  br i1 %6, label %65, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 1, !noalias !6
  %9 = add i64 %2, -4734510112055689544
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %12 = getelementptr inbounds i8, ptr %11, i32 -8
  %13 = load i64, ptr %12, align 1, !noalias !6
  %14 = sub i64 2066345149520216444, %2
  %15 = xor i64 %13, %14
  %16 = xor i64 %10, %15
  %17 = and i64 %16, 4294967295
  %18 = mul nuw i64 %17, 2246822535
  %19 = lshr i64 %16, 32
  %20 = mul nuw i64 %19, 2246822535
  %21 = mul nuw i64 %17, 2654435761
  %22 = mul nuw i64 %19, 2654435761
  %23 = lshr i64 %18, 32
  %24 = and i64 %20, 4294967295
  %25 = add nuw i64 %24, %21
  %26 = add nuw i64 %25, %23
  %27 = lshr i64 %20, 32
  %28 = lshr i64 %26, 32
  %29 = and i64 %26, 4294967295
  %30 = and i64 %18, 4294967295
  %31 = mul i64 %15, -7046029288634856825
  %32 = add i64 %22, %31
  %33 = add i64 %32, %27
  %34 = add i64 %33, %28
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %30
  %37 = mul nuw nsw i64 %36, 668265295
  %38 = mul nuw nsw i64 %29, 668265295
  %39 = mul nuw i64 %36, 3266489917
  %40 = mul nuw i64 %29, 3266489917
  %41 = lshr i64 %37, 32
  %42 = and i64 %38, 4294967295
  %43 = add nuw i64 %39, %42
  %44 = add nuw i64 %43, %41
  %45 = lshr i64 %38, 32
  %46 = lshr i64 %44, 32
  %47 = add nuw i64 %45, %40
  %48 = shl i64 %44, 32
  %49 = and i64 %37, 4294967295
  %50 = or disjoint i64 %48, %49
  %51 = mul i64 %34, -4417276706812531889
  %52 = add i64 %47, %51
  %53 = add i64 %52, %46
  %54 = lshr i64 %48, 37
  %55 = xor i64 %54, %50
  %56 = mul i64 %55, 1609587929392839161
  %57 = lshr i64 %56, 32
  %58 = xor i64 %57, %56
  %59 = lshr i64 %53, 37
  %60 = xor i64 %59, %53
  %61 = mul i64 %60, 1609587929392839161
  %62 = lshr i64 %61, 32
  %63 = xor i64 %62, %61
  store i64 %58, ptr %3, align 4
  %64 = getelementptr inbounds nuw i8, ptr %3, i32 8
  store i64 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %4, %7
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_128bits_withSeed: argument 0"}
!8 = distinct !{!8, !"XXH3_128bits_withSeed"}
