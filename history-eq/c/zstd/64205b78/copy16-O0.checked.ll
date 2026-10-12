; ModuleID = 'history-eq/c/zstd/64205b78/copy16.c'
source_filename = "history-eq/c/zstd/64205b78/copy16.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: noinline nounwind
define dso_local void @zstd_old_copy16(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 4
  %6 = load ptr, ptr %4, align 4
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %5, ptr align 1 %6, i32 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i32(ptr writeonly, ptr readonly, i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local void @zstd_new_copy16(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [16 x i8], align 1
  store ptr %0, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  %6 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %6, ptr align 1 %7, i32 16, i1 false)
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr align 1 %9, i32 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias writeonly, ptr noalias readonly, i32, i1 immarg) #1

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

