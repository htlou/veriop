; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api128_sym4to8_i386_na/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api128_sym4to8_i386_na/wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i32 %1, -9
  %6 = icmp ult i32 %5, -5
  br i1 %6, label %47, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %0, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %10 = getelementptr inbounds i8, ptr %9, i32 -4
  %11 = load i32, ptr %10, align 1
  %12 = zext i32 %8 to i64
  %13 = zext i32 %11 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or disjoint i64 %14, %12
  %16 = tail call noundef i64 @llvm.bswap.i64(i64 %15)
  %17 = add i64 %2, -4734510112055689544
  %18 = xor i64 %15, %17
  %19 = sub i64 2066345149520216444, %2
  %20 = xor i64 %16, %19
  %21 = zext nneg i32 %1 to i64
  %22 = lshr i64 %18, 51
  %23 = xor i64 %22, %18
  %24 = mul i64 %23, 2654435761
  %25 = add i64 %24, %21
  %26 = lshr i64 %25, 47
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, -4417276706812531889
  %29 = lshr i64 %20, 47
  %30 = xor i64 %29, %20
  %31 = mul i64 %30, -7046029288634856825
  %32 = sub i64 %31, %21
  %33 = lshr i64 %32, 43
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, -8796714831421723037
  %36 = lshr i64 %28, 37
  %37 = xor i64 %36, %28
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  %41 = lshr i64 %35, 37
  %42 = xor i64 %41, %35
  %43 = mul i64 %42, 1609587929392839161
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  store i64 %40, ptr %3, align 4
  %46 = getelementptr inbounds nuw i8, ptr %3, i32 8
  store i64 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %4, %7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
