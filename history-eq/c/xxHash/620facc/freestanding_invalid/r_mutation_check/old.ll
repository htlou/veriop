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
  %56 = getelementptr inbounds nuw i8, ptr %27, i64 48
  %57 = load i64, ptr %56, align 16
  %58 = getelementptr inbounds nuw i8, ptr %28, i64 48
  %59 = load i64, ptr %58, align 16
  %60 = xor i64 %59, %57
  %61 = getelementptr inbounds nuw i8, ptr %26, i64 56
  %62 = load i64, ptr %61, align 8
  %63 = add i64 %62, %57
  %64 = and i64 %60, 4294967295
  %65 = lshr i64 %60, 32
  %66 = mul nuw i64 %64, %65
  %67 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %68 = load i64, ptr %67, align 16
  %69 = add i64 %66, %68
  %70 = getelementptr inbounds nuw i8, ptr %27, i64 56
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %28, i64 56
  %73 = load i64, ptr %72, align 8
  %74 = xor i64 %73, %71
  %75 = add i64 %69, %71
  store i64 %75, ptr %67, align 16
  %76 = and i64 %74, 4294967295
  %77 = lshr i64 %74, 32
  %78 = mul nuw i64 %76, %77
  %79 = add i64 %63, %78
  store i64 %79, ptr %61, align 8
  %80 = load <2 x i64>, ptr %26, align 64
  %81 = load <2 x i64>, ptr %27, align 16
  %82 = load <2 x i64>, ptr %28, align 16
  %83 = shufflevector <2 x i64> %81, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %84 = xor <2 x i64> %82, %81
  %85 = trunc <2 x i64> %84 to <2 x i32>
  %86 = lshr <2 x i64> %84, splat (i64 32)
  %87 = trunc nuw <2 x i64> %86 to <2 x i32>
  %88 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %85, <2 x i32> %87)
  %89 = add <2 x i64> %83, %80
  %90 = add <2 x i64> %89, %88
  store <2 x i64> %90, ptr %26, align 64
  %91 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %92 = load <2 x i64>, ptr %91, align 16
  %93 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %94 = load <2 x i64>, ptr %93, align 16
  %95 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %96 = load <2 x i64>, ptr %95, align 16
  %97 = shufflevector <2 x i64> %94, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %98 = xor <2 x i64> %96, %94
  %99 = trunc <2 x i64> %98 to <2 x i32>
  %100 = lshr <2 x i64> %98, splat (i64 32)
  %101 = trunc nuw <2 x i64> %100 to <2 x i32>
  %102 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %99, <2 x i32> %101)
  %103 = add <2 x i64> %97, %92
  %104 = add <2 x i64> %103, %102
  store <2 x i64> %104, ptr %91, align 16
  %105 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %106 = load <2 x i64>, ptr %105, align 32
  %107 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %108 = load <2 x i64>, ptr %107, align 16
  %109 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %110 = load <2 x i64>, ptr %109, align 16
  %111 = shufflevector <2 x i64> %108, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %112 = xor <2 x i64> %110, %108
  %113 = trunc <2 x i64> %112 to <2 x i32>
  %114 = lshr <2 x i64> %112, splat (i64 32)
  %115 = trunc nuw <2 x i64> %114 to <2 x i32>
  %116 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %113, <2 x i32> %115)
  %117 = add <2 x i64> %111, %106
  %118 = add <2 x i64> %117, %116
  store <2 x i64> %118, ptr %105, align 32
  %119 = call ptr @memcpy(ptr noundef %0, ptr noundef nonnull %26, i64 noundef 64) #6
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
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_scalarRound: argument 0"}
!14 = distinct !{!14, !"XXH3_scalarRound"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"XXH3_scalarRound: argument 1"}
!17 = !{!18}
!18 = distinct !{!18, !14, !"XXH3_scalarRound: argument 2"}
!19 = !{!16, !9}
!20 = !{!13, !18, !6, !11}
!21 = !{!18, !11}
!22 = !{!13, !16, !6, !9}
!23 = !{!13, !6}
!24 = !{!16, !18, !9, !11}
!25 = !{!26}
!26 = distinct !{!26, !14, !"XXH3_scalarRound: argument 0:It1"}
!27 = !{!28}
!28 = distinct !{!28, !14, !"XXH3_scalarRound: argument 1:It1"}
!29 = !{!30}
!30 = distinct !{!30, !14, !"XXH3_scalarRound: argument 2:It1"}
!31 = !{!28, !9}
!32 = !{!26, !30, !6, !11}
!33 = !{!30, !11}
!34 = !{!26, !28, !6, !9}
!35 = !{!26, !6}
!36 = !{!28, !30, !9, !11}
!37 = !{!9, !11}
!38 = !{!6, !11}
!39 = !{!6, !9}
