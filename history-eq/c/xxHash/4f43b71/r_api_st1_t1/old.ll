; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local i64 @target_s100(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [36 x i8], align 32
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  %3 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %3)
  %4 = load i64, ptr %0, align 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(36) %2, ptr noundef nonnull align 1 dereferenceable(36) %11, i64 36, i1 false)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %13 = load i64, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %15 = load i64, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %21 = load i64, ptr %20, align 8
  %22 = xor i64 %21, 2111919702937427193
  %23 = zext i64 %22 to i128
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %25 = load i64, ptr %24, align 16
  %26 = xor i64 %25, 4554437623014685352
  %27 = zext i64 %26 to i128
  %28 = mul nuw i128 %23, %27
  %29 = lshr i128 %28, 64
  %30 = xor i128 %29, %28
  %31 = trunc i128 %30 to i64
  %32 = add i64 %31, -3626654062522721092
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %34 = load i64, ptr %33, align 4
  %35 = xor i64 %34, 7238261902898274248
  %36 = zext i64 %35 to i128
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %38 = load i64, ptr %37, align 4
  %39 = xor i64 %38, 3556072174620004746
  %40 = zext i64 %39 to i128
  %41 = mul nuw i128 %36, %40
  %42 = lshr i128 %41, 64
  %43 = xor i128 %42, %41
  %44 = trunc i128 %43 to i64
  %45 = add i64 %32, %44
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %47 = load i64, ptr %46, align 8
  %48 = xor i64 %47, -6688317018830679928
  %49 = zext i64 %48 to i128
  %50 = load i64, ptr %2, align 32
  %51 = xor i64 %50, -3818837453329782724
  %52 = zext i64 %51 to i128
  %53 = mul nuw i128 %49, %52
  %54 = lshr i128 %53, 64
  %55 = xor i128 %54, %53
  %56 = trunc i128 %55 to i64
  %57 = add i64 %45, %56
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %59 = load i64, ptr %58, align 4
  %60 = xor i64 %59, -2833645246901970632
  %61 = zext i64 %60 to i128
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %63 = load i64, ptr %62, align 4
  %64 = xor i64 %63, 5690594596133299313
  %65 = zext i64 %64 to i128
  %66 = mul nuw i128 %61, %65
  %67 = lshr i128 %66, 64
  %68 = xor i128 %67, %66
  %69 = trunc i128 %68 to i64
  %70 = add i64 %57, %69
  %71 = xor i64 %10, 2410270004345854594
  %72 = zext i64 %71 to i128
  %73 = xor i64 %8, 8711581037947681227
  %74 = zext i64 %73 to i128
  %75 = mul nuw i128 %72, %74
  %76 = lshr i128 %75, 64
  %77 = xor i128 %76, %75
  %78 = trunc i128 %77 to i64
  %79 = add i64 %70, %78
  %80 = xor i64 %15, 5487137525590930912
  %81 = zext i64 %80 to i128
  %82 = xor i64 %13, -8204357891075471176
  %83 = zext i64 %82 to i128
  %84 = mul nuw i128 %81, %83
  %85 = lshr i128 %84, 64
  %86 = xor i128 %85, %84
  %87 = trunc i128 %86 to i64
  %88 = add i64 %79, %87
  %89 = xor i64 %6, 2066345149520216444
  %90 = zext i64 %89 to i128
  %91 = xor i64 %4, -4734510112055689544
  %92 = zext i64 %91 to i128
  %93 = mul nuw i128 %90, %92
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %88, %96
  %98 = xor i64 %19, 2262974939099578482
  %99 = zext i64 %98 to i128
  %100 = xor i64 %17, -2623469361688619810
  %101 = zext i64 %100 to i128
  %102 = mul nuw i128 %99, %101
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %97, %105
  %107 = lshr i64 %106, 37
  %108 = xor i64 %107, %106
  %109 = mul i64 %108, 1609587791953885689
  %110 = lshr i64 %109, 32
  %111 = xor i64 %110, %109
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2)
  ret i64 %111
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !8}
!6 = distinct !{!6, !7, !"XXH3_update: argument 0"}
!7 = distinct !{!7, !"XXH3_update"}
!8 = distinct !{!8, !7, !"XXH3_update: argument 1"}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"XXH3_len_17to128_64b: argument 0"}
!11 = distinct !{!11, !"XXH3_len_17to128_64b"}
!12 = distinct !{!12, !13, !"XXH3_64bits_internal: argument 0"}
!13 = distinct !{!13, !"XXH3_64bits_internal"}
!14 = !{!15, !16}
!15 = distinct !{!15, !11, !"XXH3_len_17to128_64b: argument 1"}
!16 = distinct !{!16, !13, !"XXH3_64bits_internal: argument 1"}
