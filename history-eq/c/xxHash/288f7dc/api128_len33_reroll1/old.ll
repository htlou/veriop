; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api128_len33_reroll1/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api128_len33_reroll1/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly initializes((0, 16)) %2) local_unnamed_addr #0 {
  %4 = mul i64 %1, -7046029288634856825
  %5 = add i64 %4, 7288706433273895783
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %6, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i64, ptr %8, align 1
  %10 = add i64 %1, -3692699387471206834
  %11 = xor i64 %7, %10
  %12 = sub i64 -3675093282664558467, %1
  %13 = xor i64 %9, %12
  %14 = zext i64 %11 to i128
  %15 = zext i64 %13 to i128
  %16 = mul nuw i128 %15, %14
  %17 = lshr i128 %16, 64
  %18 = xor i128 %17, %16
  %19 = trunc i128 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %21 = load i64, ptr %20, align 1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %23 = load i64, ptr %22, align 1
  %24 = add i64 %1, -629619327510231436
  %25 = xor i64 %21, %24
  %26 = sub i64 -9134946782546652954, %1
  %27 = xor i64 %23, %26
  %28 = zext i64 %25 to i128
  %29 = zext i64 %27 to i128
  %30 = mul nuw i128 %29, %28
  %31 = lshr i128 %30, 64
  %32 = xor i128 %31, %30
  %33 = trunc i128 %32 to i64
  %34 = add i64 %5, %19
  %35 = load i64, ptr %0, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %37 = load i64, ptr %36, align 1
  %38 = add i64 %1, 2568260970027576377
  %39 = xor i64 %35, %38
  %40 = sub i64 -639039334258736852, %1
  %41 = xor i64 %37, %40
  %42 = zext i64 %39 to i128
  %43 = zext i64 %41 to i128
  %44 = mul nuw i128 %43, %42
  %45 = lshr i128 %44, 64
  %46 = xor i128 %45, %44
  %47 = trunc i128 %46 to i64
  %48 = add i64 %34, %47
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 25
  %52 = load i64, ptr %51, align 1
  %53 = add i64 %1, -8966499887502561815
  %54 = xor i64 %50, %53
  %55 = sub i64 -5209706959179045724, %1
  %56 = xor i64 %52, %55
  %57 = zext i64 %54 to i128
  %58 = zext i64 %56 to i128
  %59 = mul nuw i128 %58, %57
  %60 = lshr i128 %59, 64
  %61 = xor i128 %60, %59
  %62 = trunc i128 %61 to i64
  %63 = add i64 %62, %33
  %64 = add i64 %63, %48
  %65 = mul i64 %48, 1609587929392839161
  %66 = mul i64 %63, -8796714831421723037
  %67 = sub i64 33, %1
  %68 = mul i64 %67, -4417276706812531889
  %69 = add i64 %65, %68
  %70 = add i64 %69, %66
  %71 = lshr i64 %64, 37
  %72 = xor i64 %71, %64
  %73 = mul i64 %72, 1609587929392839161
  %74 = lshr i64 %73, 32
  %75 = xor i64 %74, %73
  %76 = lshr i64 %70, 37
  %77 = xor i64 %76, %70
  %78 = mul i64 %77, 1609587929392839161
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  %81 = sub i64 0, %80
  store i64 %75, ptr %2, align 8
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %81, ptr %82, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
