; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_sharedmix_guard/xxhash_sharedmix_guard.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_sharedmix_guard/xxhash_sharedmix_guard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 %1, 4
  br i1 %6, label %7, label %58

7:                                                ; preds = %4
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %7
  %10 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %11)
  %12 = load i8, ptr %0, align 1
  %13 = lshr i64 %1, 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr i8, ptr %0, i64 %1
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %12 to i64
  %20 = shl nuw nsw i64 %19, 16
  %21 = zext i8 %15 to i64
  %22 = shl nuw nsw i64 %21, 24
  %23 = or disjoint i64 %22, %20
  %24 = zext i8 %18 to i64
  %25 = or disjoint i64 %23, %24
  %26 = shl nuw nsw i64 %1, 8
  %27 = or disjoint i64 %25, %26
  %28 = load i32, ptr %2, align 1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %30 = load i32, ptr %29, align 1
  %31 = xor i32 %30, %28
  %32 = zext i32 %31 to i64
  %33 = add i64 %3, %32
  %34 = xor i64 %33, %27
  %35 = lshr i64 %34, 33
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, -4417276706812531889
  %38 = lshr i64 %37, 29
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, 1609587929392839161
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  br label %139

43:                                               ; preds = %7
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %45 = load i64, ptr %44, align 1
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %47 = load i64, ptr %46, align 1
  %48 = xor i64 %45, %47
  %49 = xor i64 %48, %3
  %50 = lshr i64 %49, 33
  %51 = xor i64 %50, %49
  %52 = mul i64 %51, -4417276706812531889
  %53 = lshr i64 %52, 29
  %54 = xor i64 %53, %52
  %55 = mul i64 %54, 1609587929392839161
  %56 = lshr i64 %55, 32
  %57 = xor i64 %56, %55
  br label %139

58:                                               ; preds = %4
  %59 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %59)
  %60 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %60)
  %61 = icmp samesign ugt i64 %1, 8
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %64 = load i64, ptr %63, align 1
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %66 = load i64, ptr %65, align 1
  %67 = xor i64 %66, %64
  %68 = add i64 %67, %3
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %70 = load i64, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %72 = load i64, ptr %71, align 1
  %73 = xor i64 %72, %70
  %74 = sub i64 %73, %3
  br label %87

75:                                               ; preds = %58
  %76 = trunc i64 %3 to i32
  %77 = tail call noundef i32 @llvm.bswap.i32(i32 %76)
  %78 = zext i32 %77 to i64
  %79 = shl nuw i64 %78, 32
  %80 = xor i64 %79, %3
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %84, %82
  %86 = sub i64 %85, %80
  br label %87

87:                                               ; preds = %75, %62
  %88 = phi i64 [ 32, %62 ], [ 28, %75 ]
  %89 = phi i64 [ 1609587791953885689, %62 ], [ -6939452855193903323, %75 ]
  %90 = phi i64 [ 4, %62 ], [ 0, %75 ]
  %91 = phi i64 [ %74, %62 ], [ 0, %75 ]
  %92 = phi i64 [ %68, %62 ], [ %86, %75 ]
  %93 = load i32, ptr %0, align 1
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %95 = getelementptr inbounds i8, ptr %94, i64 -4
  %96 = load i32, ptr %95, align 1
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  %98 = load i32, ptr %97, align 1
  %99 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 8)
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 %99
  %101 = load i32, ptr %100, align 1
  %102 = select i1 %61, i32 %98, i32 %93
  %103 = zext i32 %102 to i64
  %104 = shl nuw i64 %103, 32
  %105 = select i1 %61, i32 %93, i32 %96
  %106 = zext i32 %105 to i64
  %107 = or disjoint i64 %104, %106
  %108 = xor i64 %107, %92
  %109 = zext i32 %96 to i64
  %110 = shl nuw i64 %109, 32
  %111 = zext i32 %101 to i64
  %112 = or disjoint i64 %110, %111
  %113 = xor i64 %112, %91
  %114 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 49)
  %115 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 24)
  %116 = xor i64 %115, %114
  %117 = xor i64 %116, %108
  %118 = mul i64 %117, -6939452855193903323
  %119 = lshr i64 %118, 35
  %120 = add nuw nsw i64 %119, %1
  %121 = xor i64 %120, %118
  %122 = tail call i64 @llvm.bswap.i64(i64 %108)
  %123 = select i1 %61, i64 %122, i64 0
  %124 = zext i64 %108 to i128
  %125 = zext i64 %113 to i128
  %126 = mul nuw i128 %124, %125
  %127 = lshr i128 %126, 64
  %128 = xor i128 %127, %126
  %129 = trunc i128 %128 to i64
  %130 = add i64 %113, %1
  %131 = add i64 %130, %123
  %132 = add i64 %131, %129
  %133 = lshr i64 %132, 37
  %134 = xor i64 %133, %132
  %135 = select i1 %61, i64 %134, i64 %121
  %136 = mul i64 %135, %89
  %137 = lshr i64 %136, %88
  %138 = xor i64 %137, %136
  br label %139

139:                                              ; preds = %43, %9, %87
  %140 = phi i64 [ %138, %87 ], [ %42, %9 ], [ %57, %43 ]
  ret i64 %140
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
