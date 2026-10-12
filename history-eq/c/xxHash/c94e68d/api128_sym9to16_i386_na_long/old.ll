; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api128_sym9to16_i386_na_long/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/api128_sym9to16_i386_na_long/wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i32 %1, -17
  %6 = icmp ult i32 %5, -8
  br i1 %6, label %74, label %7

7:                                                ; preds = %4
  %8 = load i64, ptr %0, align 1
  %9 = add i64 %2, -4734510112055689544
  %10 = xor i64 %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i32 %1
  %12 = getelementptr inbounds i8, ptr %11, i32 -8
  %13 = load i64, ptr %12, align 1
  %14 = sub i64 2066345149520216444, %2
  %15 = xor i64 %13, %14
  %16 = xor i64 %10, %15
  %17 = lshr i64 %16, 32
  %18 = mul nuw i64 %17, 2654435761
  %19 = and i64 %16, 4294967295
  %20 = mul nuw i64 %19, 2654435761
  %21 = mul nuw i64 %17, 2246822535
  %22 = mul nuw i64 %19, 2246822535
  %23 = mul i64 %19, -7046029288634856825
  %24 = icmp ult i64 %23, %22
  %25 = zext i1 %24 to i64
  %26 = add i64 %20, %21
  %27 = shl i64 %26, 32
  %28 = add i64 %27, %22
  %29 = icmp ult i64 %28, %23
  %30 = zext i1 %29 to i64
  %31 = lshr i64 %20, 32
  %32 = lshr i64 %21, 32
  %33 = mul i64 %15, -7046029288634856825
  %34 = add i64 %18, %33
  %35 = add i64 %34, %31
  %36 = add i64 %35, %32
  %37 = add i64 %36, %25
  %38 = add i64 %37, %30
  %39 = lshr i64 %38, 32
  %40 = lshr i64 %28, 32
  %41 = mul nuw i64 %40, 3266489917
  %42 = and i64 %22, 4294967295
  %43 = xor i64 %39, %42
  %44 = mul nuw i64 %43, 3266489917
  %45 = mul nuw nsw i64 %40, 668265295
  %46 = mul nuw nsw i64 %43, 668265295
  %47 = mul i64 %43, -4417276706812531889
  %48 = icmp ult i64 %47, %46
  %49 = zext i1 %48 to i64
  %50 = add nuw i64 %44, %45
  %51 = shl i64 %50, 32
  %52 = add i64 %51, %46
  %53 = icmp ult i64 %52, %47
  %54 = zext i1 %53 to i64
  %55 = lshr i64 %44, 32
  %56 = lshr i64 %45, 32
  %57 = mul i64 %38, -4417276706812531889
  %58 = add nuw i64 %56, %41
  %59 = add i64 %58, %57
  %60 = add i64 %59, %55
  %61 = add i64 %60, %49
  %62 = add i64 %61, %54
  %63 = lshr i64 %52, 37
  %64 = xor i64 %63, %52
  %65 = mul i64 %64, 1609587929392839161
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  %68 = lshr i64 %62, 37
  %69 = xor i64 %68, %62
  %70 = mul i64 %69, 1609587929392839161
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  store i64 %67, ptr %3, align 4
  %73 = getelementptr inbounds nuw i8, ptr %3, i32 8
  store i64 %72, ptr %73, align 4
  br label %74

74:                                               ; preds = %4, %7
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
