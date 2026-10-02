; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_eight_tail/xxhash_eight_tail.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_eight_tail/xxhash_eight_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_4to8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp samesign ugt i64 %1, 3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 9
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp eq i64 %1, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i64, ptr %0, align 1
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 32)
  br label %22

13:                                               ; preds = %4
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %14, i64 -4
  %16 = load i32, ptr %15, align 1
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %0, align 1
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = or disjoint i64 %20, %17
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i64 [ %12, %10 ], [ %21, %13 ]
  %24 = trunc i64 %3 to i32
  %25 = tail call noundef i32 @llvm.bswap.i32(i32 %24)
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %26, 32
  %28 = xor i64 %27, %3
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %32, %30
  %34 = sub i64 %33, %28
  %35 = xor i64 %34, %23
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 49)
  %37 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 24)
  %38 = xor i64 %36, %37
  %39 = xor i64 %38, %35
  %40 = mul i64 %39, -6939452855193903323
  %41 = lshr i64 %40, 35
  %42 = add nuw nsw i64 %41, %1
  %43 = xor i64 %42, %40
  %44 = mul i64 %43, -6939452855193903323
  %45 = lshr i64 %44, 28
  %46 = xor i64 %45, %44
  ret i64 %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %43, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = load i64, ptr %0, align 1
  %23 = xor i64 %22, %15
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, %1
  %30 = add i64 %29, %27
  %31 = zext i64 %23 to i128
  %32 = zext i64 %27 to i128
  %33 = mul nuw i128 %32, %31
  %34 = lshr i128 %33, 64
  %35 = xor i128 %34, %33
  %36 = trunc i128 %35 to i64
  %37 = add i64 %30, %36
  %38 = lshr i64 %37, 37
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, 1609587791953885689
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  br label %160

43:                                               ; preds = %4
  %44 = icmp eq i64 %1, 8
  br i1 %44, label %45, label %73, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = load i64, ptr %0, align 1
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32)
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = xor i64 %53, %3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %58, %56
  %60 = sub i64 %59, %54
  %61 = xor i64 %60, %51
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 49)
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 24)
  %64 = xor i64 %62, %63
  %65 = xor i64 %64, %61
  %66 = mul i64 %65, -6939452855193903323
  %67 = lshr i64 %66, 35
  %68 = add nuw nsw i64 %67, 8
  %69 = xor i64 %68, %66
  %70 = mul i64 %69, -6939452855193903323
  %71 = lshr i64 %70, 28
  %72 = xor i64 %71, %70
  br label %160

73:                                               ; preds = %43
  %74 = icmp samesign ugt i64 %1, 3
  br i1 %74, label %75, label %109

75:                                               ; preds = %73
  %76 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %76)
  %77 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %77)
  %78 = trunc i64 %3 to i32
  %79 = tail call noundef i32 @llvm.bswap.i32(i32 %78)
  %80 = zext i32 %79 to i64
  %81 = shl nuw i64 %80, 32
  %82 = xor i64 %81, %3
  %83 = load i32, ptr %0, align 1
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %85 = getelementptr inbounds i8, ptr %84, i64 -4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = sub i64 %91, %82
  %93 = zext i32 %86 to i64
  %94 = zext i32 %83 to i64
  %95 = shl nuw i64 %94, 32
  %96 = or disjoint i64 %95, %93
  %97 = xor i64 %92, %96
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 49)
  %99 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 24)
  %100 = xor i64 %98, %99
  %101 = xor i64 %100, %97
  %102 = mul i64 %101, -6939452855193903323
  %103 = lshr i64 %102, 35
  %104 = add nuw nsw i64 %103, %1
  %105 = xor i64 %104, %102
  %106 = mul i64 %105, -6939452855193903323
  %107 = lshr i64 %106, 28
  %108 = xor i64 %107, %106
  br label %160

109:                                              ; preds = %73
  %110 = icmp eq i64 %1, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %109
  %112 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %112)
  %113 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %113)
  %114 = load i8, ptr %0, align 1
  %115 = lshr i64 %1, 1
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr i8, ptr %0, i64 %1
  %119 = getelementptr i8, ptr %118, i64 -1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %114 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = zext i8 %117 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or disjoint i64 %124, %122
  %126 = zext i8 %120 to i64
  %127 = or disjoint i64 %125, %126
  %128 = shl nuw nsw i64 %1, 8
  %129 = or disjoint i64 %127, %128
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  br label %160

145:                                              ; preds = %109
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %111, %75, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %72, %45 ], [ %108, %75 ], [ %144, %111 ], [ %159, %145 ]
  ret i64 %161
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
