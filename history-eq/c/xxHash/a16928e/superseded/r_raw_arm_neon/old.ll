; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a16928e/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a16928e/wrap_raw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: nounwind
define dso_local i64 @target_mergeAccs(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca [8 x i64], align 64
  %27 = alloca [64 x i8], align 1
  %28 = alloca [8 x i64], align 8
  %29 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %27) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #5
  store i64 %0, ptr %28, align 8
  %30 = getelementptr inbounds nuw i8, ptr %28, i32 8
  store i64 %1, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %28, i32 16
  store i64 %2, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %28, i32 24
  store i64 %3, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %28, i32 32
  store i64 %4, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %28, i32 40
  store i64 %5, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %28, i32 48
  store i64 %6, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %28, i32 56
  store i64 %7, ptr %36, align 8
  %37 = call ptr @memcpy(ptr noundef nonnull %26, ptr noundef nonnull %28, i32 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #5
  store i64 %8, ptr %29, align 8
  %38 = getelementptr inbounds nuw i8, ptr %29, i32 8
  store i64 %9, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %29, i32 16
  store i64 %10, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %29, i32 24
  store i64 %11, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %29, i32 32
  store i64 %12, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %29, i32 40
  store i64 %13, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %29, i32 48
  store i64 %14, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %29, i32 56
  store i64 %15, ptr %44, align 8
  %45 = call ptr @memcpy(ptr noundef nonnull %27, ptr noundef nonnull %29, i32 noundef 64) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #5
  %46 = call ptr @memcpy(ptr noundef nonnull %25, ptr noundef nonnull %27, i32 noundef 8) #6
  %47 = load i64, ptr %25, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #5
  %48 = getelementptr inbounds nuw i8, ptr %27, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #5
  %49 = call ptr @memcpy(ptr noundef nonnull %24, ptr noundef nonnull %48, i32 noundef 8) #6
  %50 = load i64, ptr %24, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #5
  %51 = getelementptr inbounds nuw i8, ptr %27, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #5
  %52 = call ptr @memcpy(ptr noundef nonnull %23, ptr noundef nonnull %51, i32 noundef 8) #6
  %53 = load i64, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #5
  %54 = getelementptr inbounds nuw i8, ptr %27, i32 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #5
  %55 = call ptr @memcpy(ptr noundef nonnull %22, ptr noundef nonnull %54, i32 noundef 8) #6
  %56 = load i64, ptr %22, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #5
  %57 = getelementptr inbounds nuw i8, ptr %27, i32 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #5
  %58 = call ptr @memcpy(ptr noundef nonnull %21, ptr noundef nonnull %57, i32 noundef 8) #6
  %59 = load i64, ptr %21, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #5
  %60 = getelementptr inbounds nuw i8, ptr %27, i32 40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #5
  %61 = call ptr @memcpy(ptr noundef nonnull %20, ptr noundef nonnull %60, i32 noundef 8) #6
  %62 = load i64, ptr %20, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #5
  %63 = getelementptr inbounds nuw i8, ptr %27, i32 48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #5
  %64 = call ptr @memcpy(ptr noundef nonnull %19, ptr noundef nonnull %63, i32 noundef 8) #6
  %65 = load i64, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #5
  %66 = getelementptr inbounds nuw i8, ptr %27, i32 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #5
  %67 = call ptr @memcpy(ptr noundef nonnull %18, ptr noundef nonnull %66, i32 noundef 8) #6
  %68 = load i64, ptr %18, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #5
  %69 = load <8 x i64>, ptr %26, align 64
  %70 = insertelement <4 x i64> poison, i64 %47, i64 0
  %71 = insertelement <4 x i64> %70, i64 %53, i64 1
  %72 = insertelement <4 x i64> %71, i64 %59, i64 2
  %73 = insertelement <4 x i64> %72, i64 %65, i64 3
  %74 = shufflevector <8 x i64> %69, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %75 = xor <4 x i64> %73, %74
  %76 = insertelement <4 x i64> poison, i64 %50, i64 0
  %77 = insertelement <4 x i64> %76, i64 %56, i64 1
  %78 = insertelement <4 x i64> %77, i64 %62, i64 2
  %79 = insertelement <4 x i64> %78, i64 %68, i64 3
  %80 = shufflevector <8 x i64> %69, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %81 = xor <4 x i64> %79, %80
  %82 = and <4 x i64> %75, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = lshr <4 x i64> %75, splat (i64 32)
  %86 = mul nuw <4 x i64> %83, %85
  %87 = lshr <4 x i64> %81, splat (i64 32)
  %88 = mul nuw <4 x i64> %87, %82
  %89 = mul nuw <4 x i64> %87, %85
  %90 = lshr <4 x i64> %84, splat (i64 32)
  %91 = and <4 x i64> %86, splat (i64 4294967295)
  %92 = add nuw <4 x i64> %91, %88
  %93 = add nuw <4 x i64> %92, %90
  %94 = lshr <4 x i64> %86, splat (i64 32)
  %95 = lshr <4 x i64> %93, splat (i64 32)
  %96 = add nuw <4 x i64> %94, %89
  %97 = add nuw <4 x i64> %96, %95
  %98 = shl <4 x i64> %93, splat (i64 32)
  %99 = and <4 x i64> %84, splat (i64 4294967295)
  %100 = or disjoint <4 x i64> %98, %99
  %101 = xor <4 x i64> %100, %97
  %102 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %101)
  %103 = add i64 %102, %16
  %104 = lshr i64 %103, 37
  %105 = xor i64 %104, %103
  %106 = mul i64 %105, 1609587791953885689
  %107 = lshr i64 %106, 32
  %108 = xor i64 %107, %106
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %27) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #5
  ret i64 %108
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #4

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_mergeAccs: argument 0"}
!7 = distinct !{!7, !"XXH3_mergeAccs"}
!8 = !{!9, !11, !6, !12}
!9 = distinct !{!9, !10, !"XXH3_mix2Accs: argument 0"}
!10 = distinct !{!10, !"XXH3_mix2Accs"}
!11 = distinct !{!11, !10, !"XXH3_mix2Accs: argument 1"}
!12 = distinct !{!12, !7, !"XXH3_mergeAccs: argument 1"}
!13 = !{!9, !6}
!14 = !{!15, !17, !6, !12}
!15 = distinct !{!15, !16, !"XXH3_mix2Accs: argument 0"}
!16 = distinct !{!16, !"XXH3_mix2Accs"}
!17 = distinct !{!17, !16, !"XXH3_mix2Accs: argument 1"}
!18 = !{!15, !6}
!19 = !{!20, !22, !6, !12}
!20 = distinct !{!20, !21, !"XXH3_mix2Accs: argument 0"}
!21 = distinct !{!21, !"XXH3_mix2Accs"}
!22 = distinct !{!22, !21, !"XXH3_mix2Accs: argument 1"}
!23 = !{!20, !6}
!24 = !{!25, !27, !6, !12}
!25 = distinct !{!25, !26, !"XXH3_mix2Accs: argument 0"}
!26 = distinct !{!26, !"XXH3_mix2Accs"}
!27 = distinct !{!27, !26, !"XXH3_mix2Accs: argument 1"}
!28 = !{!25, !6}
!29 = !{!12}
