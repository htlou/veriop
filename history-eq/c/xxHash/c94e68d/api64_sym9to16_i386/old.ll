; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api64_sym9to16_i386/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api64_sym9to16_i386/wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %1, -17
  %5 = icmp ult i32 %4, -8
  br i1 %5, label %48, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %0, align 1
  %8 = add i64 %2, -4734510112055689544
  %9 = xor i64 %7, %8
  %10 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %11 = getelementptr inbounds i8, ptr %10, i32 -8
  %12 = load i64, ptr %11, align 1
  %13 = sub i64 2066345149520216444, %2
  %14 = xor i64 %12, %13
  %15 = zext nneg i32 %1 to i64
  %16 = lshr i64 %9, 32
  %17 = lshr i64 %14, 32
  %18 = mul nuw i64 %17, %16
  %19 = and i64 %9, 4294967295
  %20 = mul nuw i64 %17, %19
  %21 = and i64 %14, 4294967295
  %22 = mul nuw i64 %21, %16
  %23 = mul nuw i64 %21, %19
  %24 = shl i64 %20, 32
  %25 = add i64 %24, %23
  %26 = icmp ult i64 %25, %23
  %27 = zext i1 %26 to i64
  %28 = add i64 %20, %22
  %29 = shl i64 %28, 32
  %30 = add i64 %29, %23
  %31 = icmp ult i64 %30, %25
  %32 = zext i1 %31 to i64
  %33 = lshr i64 %20, 32
  %34 = add nuw i64 %33, %18
  %35 = lshr i64 %22, 32
  %36 = add nuw i64 %34, %35
  %37 = add nuw i64 %36, %27
  %38 = add nuw i64 %37, %32
  %39 = xor i64 %38, %30
  %40 = add i64 %9, %15
  %41 = add i64 %40, %14
  %42 = add i64 %41, %39
  %43 = lshr i64 %42, 37
  %44 = xor i64 %43, %42
  %45 = mul i64 %44, 1609587929392839161
  %46 = lshr i64 %45, 32
  %47 = xor i64 %46, %45
  br label %48

48:                                               ; preds = %3, %6
  %49 = phi i64 [ %47, %6 ], [ 0, %3 ]
  ret i64 %49
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
