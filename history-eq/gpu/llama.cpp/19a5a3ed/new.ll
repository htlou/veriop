; ModuleID = '/tmp/veriop-llama-19a5a3ed-ye9mf29b/new/test.c'
source_filename = "/tmp/veriop-llama-19a5a3ed-ye9mf29b/new/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local void @test(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 4) ]
  %3 = insertelement <8 x float> poison, float %1, i64 0
  %4 = shufflevector <8 x float> %3, <8 x float> poison, <8 x i32> zeroinitializer
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %9, %5 ]
  %7 = shl nuw nsw i64 %6, 5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  store <8 x float> %4, ptr %8, align 4
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %5

11:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }


