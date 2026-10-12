; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api64_sym17to128_reroll1/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api64_sym17to128_reroll1/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -129
  %5 = icmp ult i64 %4, -112
  br i1 %5, label %148, label %6

6:                                                ; preds = %3
  %7 = mul i64 %1, -7046029288634856825
  %8 = icmp samesign ugt i64 %1, 32
  br i1 %8, label %9, label %111

9:                                                ; preds = %6
  %10 = icmp samesign ugt i64 %1, 64
  br i1 %10, label %11, label %78

11:                                               ; preds = %9
  %12 = icmp samesign ugt i64 %1, 96
  br i1 %12, label %13, label %45

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load i64, ptr %16, align 1
  %18 = add i64 %2, -2045702682710477249
  %19 = xor i64 %15, %18
  %20 = sub i64 -4104099645253436473, %2
  %21 = xor i64 %17, %20
  %22 = zext i64 %19 to i128
  %23 = zext i64 %21 to i128
  %24 = mul nuw i128 %23, %22
  %25 = lshr i128 %24, 64
  %26 = xor i128 %25, %24
  %27 = trunc i128 %26 to i64
  %28 = add i64 %7, %27
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %30 = getelementptr inbounds i8, ptr %29, i64 -64
  %31 = load i64, ptr %30, align 1
  %32 = getelementptr inbounds i8, ptr %29, i64 -56
  %33 = load i64, ptr %32, align 1
  %34 = add i64 %2, -3624173730817515445
  %35 = xor i64 %31, %34
  %36 = sub i64 -2776342293574091063, %2
  %37 = xor i64 %33, %36
  %38 = zext i64 %35 to i128
  %39 = zext i64 %37 to i128
  %40 = mul nuw i128 %39, %38
  %41 = lshr i128 %40, 64
  %42 = xor i128 %41, %40
  %43 = trunc i128 %42 to i64
  %44 = add i64 %28, %43
  br label %45

45:                                               ; preds = %13, %11
  %46 = phi i64 [ %44, %13 ], [ %7, %11 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %50 = load i64, ptr %49, align 1
  %51 = add i64 %2, -7943504444863786309
  %52 = xor i64 %48, %51
  %53 = sub i64 1968968742000944523, %2
  %54 = xor i64 %50, %53
  %55 = zext i64 %52 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %46, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %63 = getelementptr inbounds i8, ptr %62, i64 -48
  %64 = load i64, ptr %63, align 1
  %65 = getelementptr inbounds i8, ptr %62, i64 -40
  %66 = load i64, ptr %65, align 1
  %67 = add i64 %2, -6769480549562824553
  %68 = xor i64 %64, %67
  %69 = sub i64 -6206333191815827642, %2
  %70 = xor i64 %66, %69
  %71 = zext i64 %68 to i128
  %72 = zext i64 %70 to i128
  %73 = mul nuw i128 %72, %71
  %74 = lshr i128 %73, 64
  %75 = xor i128 %74, %73
  %76 = trunc i128 %75 to i64
  %77 = add i64 %61, %76
  br label %78

78:                                               ; preds = %45, %9
  %79 = phi i64 [ %77, %45 ], [ %7, %9 ]
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %81 = load i64, ptr %80, align 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %83 = load i64, ptr %82, align 1
  %84 = add i64 %2, -3692699387471206834
  %85 = xor i64 %81, %84
  %86 = sub i64 -3675093282664558467, %2
  %87 = xor i64 %83, %86
  %88 = zext i64 %85 to i128
  %89 = zext i64 %87 to i128
  %90 = mul nuw i128 %89, %88
  %91 = lshr i128 %90, 64
  %92 = xor i128 %91, %90
  %93 = trunc i128 %92 to i64
  %94 = add i64 %79, %93
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %96 = getelementptr inbounds i8, ptr %95, i64 -32
  %97 = load i64, ptr %96, align 1
  %98 = getelementptr inbounds i8, ptr %95, i64 -24
  %99 = load i64, ptr %98, align 1
  %100 = add i64 %2, -629619327510231436
  %101 = xor i64 %97, %100
  %102 = sub i64 -9134946782546652954, %2
  %103 = xor i64 %99, %102
  %104 = zext i64 %101 to i128
  %105 = zext i64 %103 to i128
  %106 = mul nuw i128 %105, %104
  %107 = lshr i128 %106, 64
  %108 = xor i128 %107, %106
  %109 = trunc i128 %108 to i64
  %110 = add i64 %94, %109
  br label %111

111:                                              ; preds = %6, %78
  %112 = phi i64 [ %110, %78 ], [ %7, %6 ]
  %113 = load i64, ptr %0, align 1
  %114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %115 = load i64, ptr %114, align 1
  %116 = add i64 %2, 2568260970027576377
  %117 = xor i64 %113, %116
  %118 = sub i64 -639039334258736852, %2
  %119 = xor i64 %115, %118
  %120 = zext i64 %117 to i128
  %121 = zext i64 %119 to i128
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %112, %125
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %128 = getelementptr inbounds i8, ptr %127, i64 -16
  %129 = load i64, ptr %128, align 1
  %130 = getelementptr inbounds i8, ptr %127, i64 -8
  %131 = load i64, ptr %130, align 1
  %132 = add i64 %2, -8966499887502561815
  %133 = xor i64 %129, %132
  %134 = sub i64 -5209706959179045724, %2
  %135 = xor i64 %131, %134
  %136 = zext i64 %133 to i128
  %137 = zext i64 %135 to i128
  %138 = mul nuw i128 %137, %136
  %139 = lshr i128 %138, 64
  %140 = xor i128 %139, %138
  %141 = trunc i128 %140 to i64
  %142 = add i64 %126, %141
  %143 = lshr i64 %142, 37
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587929392839161
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  br label %148

148:                                              ; preds = %3, %111
  %149 = phi i64 [ %147, %111 ], [ 0, %3 ]
  ret i64 %149
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
