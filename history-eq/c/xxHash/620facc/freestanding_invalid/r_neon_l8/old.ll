; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neon.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/620facc/wrap_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: nounwind
define dso_local void @target_acc512_neon(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = alloca [8 x i64], align 64
  %27 = alloca [64 x i8], align 16
  %28 = alloca [64 x i8], align 16
  %29 = alloca [8 x i64], align 8
  %30 = alloca [8 x i64], align 8
  %31 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #5
  store i64 %1, ptr %29, align 8
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %2, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 %3, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i64 %4, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i64 %5, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i64 %6, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %29, i64 48
  store i64 %7, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %29, i64 56
  store i64 %8, ptr %38, align 8
  %39 = call ptr @memcpy(ptr noundef nonnull %26, ptr noundef nonnull %29, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %30) #5
  store i64 %9, ptr %30, align 8
  %40 = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 %10, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %11, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i64 %12, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i64 %13, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %30, i64 40
  store i64 %14, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %30, i64 48
  store i64 %15, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %30, i64 56
  store i64 %16, ptr %46, align 8
  %47 = call ptr @memcpy(ptr noundef nonnull %27, ptr noundef nonnull %30, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %30) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %31) #5
  store i64 %17, ptr %31, align 8
  %48 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %18, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 %19, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %31, i64 24
  store i64 %20, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i64 %21, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %31, i64 40
  store i64 %22, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %31, i64 48
  store i64 %23, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %31, i64 56
  store i64 %24, ptr %54, align 8
  %55 = call ptr @memcpy(ptr noundef nonnull %28, ptr noundef nonnull %31, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %31) #5
  %56 = load <2 x i64>, ptr %26, align 64
  %57 = load <2 x i64>, ptr %27, align 16
  %58 = load <2 x i64>, ptr %28, align 16
  %59 = shufflevector <2 x i64> %57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %60 = xor <2 x i64> %58, %57
  %61 = trunc <2 x i64> %60 to <2 x i32>
  %62 = lshr <2 x i64> %60, splat (i64 32)
  %63 = trunc nuw <2 x i64> %62 to <2 x i32>
  %64 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %61, <2 x i32> %63)
  %65 = add <2 x i64> %59, %56
  %66 = add <2 x i64> %65, %64
  store <2 x i64> %66, ptr %26, align 64
  %67 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %68 = load <2 x i64>, ptr %67, align 16
  %69 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %70 = load <2 x i64>, ptr %69, align 16
  %71 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %72 = load <2 x i64>, ptr %71, align 16
  %73 = shufflevector <2 x i64> %70, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %74 = xor <2 x i64> %72, %70
  %75 = trunc <2 x i64> %74 to <2 x i32>
  %76 = lshr <2 x i64> %74, splat (i64 32)
  %77 = trunc nuw <2 x i64> %76 to <2 x i32>
  %78 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %75, <2 x i32> %77)
  %79 = add <2 x i64> %73, %68
  %80 = add <2 x i64> %79, %78
  store <2 x i64> %80, ptr %67, align 16
  %81 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %82 = load <2 x i64>, ptr %81, align 32
  %83 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %84 = load <2 x i64>, ptr %83, align 16
  %85 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %86 = load <2 x i64>, ptr %85, align 16
  %87 = shufflevector <2 x i64> %84, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %88 = xor <2 x i64> %86, %84
  %89 = trunc <2 x i64> %88 to <2 x i32>
  %90 = lshr <2 x i64> %88, splat (i64 32)
  %91 = trunc nuw <2 x i64> %90 to <2 x i32>
  %92 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %89, <2 x i32> %91)
  %93 = add <2 x i64> %87, %82
  %94 = add <2 x i64> %93, %92
  store <2 x i64> %94, ptr %81, align 32
  %95 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %96 = load <2 x i64>, ptr %95, align 16
  %97 = getelementptr inbounds nuw i8, ptr %27, i64 48
  %98 = load <2 x i64>, ptr %97, align 16
  %99 = getelementptr inbounds nuw i8, ptr %28, i64 48
  %100 = load <2 x i64>, ptr %99, align 16
  %101 = shufflevector <2 x i64> %98, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %102 = xor <2 x i64> %100, %98
  %103 = trunc <2 x i64> %102 to <2 x i32>
  %104 = lshr <2 x i64> %102, splat (i64 32)
  %105 = trunc nuw <2 x i64> %104 to <2 x i32>
  %106 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %103, <2 x i32> %105)
  %107 = add <2 x i64> %101, %96
  %108 = add <2 x i64> %107, %106
  store <2 x i64> %108, ptr %95, align 16
  %109 = call ptr @memcpy(ptr noundef %0, ptr noundef nonnull %26, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nounwind "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_accumulate_512_neon: argument 0"}
!7 = distinct !{!7, !"XXH3_accumulate_512_neon"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_accumulate_512_neon: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !7, !"XXH3_accumulate_512_neon: argument 2"}
!12 = !{!9, !11}
!13 = !{!6, !11}
!14 = !{!6, !9}
