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
  %56 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %57 = load i64, ptr %56, align 16
  %58 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %59 = load i64, ptr %58, align 16
  %60 = xor i64 %59, %57
  %61 = getelementptr inbounds nuw i8, ptr %26, i64 24
  %62 = load i64, ptr %61, align 8
  %63 = add i64 %62, %57
  %64 = and i64 %60, 4294967295
  %65 = lshr i64 %60, 32
  %66 = mul nuw i64 %64, %65
  %67 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %68 = load i64, ptr %67, align 16
  %69 = add i64 %66, %68
  %70 = getelementptr inbounds nuw i8, ptr %27, i64 24
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds nuw i8, ptr %28, i64 24
  %73 = load i64, ptr %72, align 8
  %74 = xor i64 %73, %71
  %75 = add i64 %69, %71
  store i64 %75, ptr %67, align 16
  %76 = and i64 %74, 4294967295
  %77 = lshr i64 %74, 32
  %78 = mul nuw i64 %76, %77
  %79 = add i64 %63, %78
  store i64 %79, ptr %61, align 8
  %80 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %81 = load i64, ptr %80, align 16
  %82 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %83 = load i64, ptr %82, align 16
  %84 = xor i64 %83, %81
  %85 = getelementptr inbounds nuw i8, ptr %26, i64 40
  %86 = load i64, ptr %85, align 8
  %87 = add i64 %86, %81
  %88 = and i64 %84, 4294967295
  %89 = lshr i64 %84, 32
  %90 = mul nuw i64 %88, %89
  %91 = getelementptr inbounds nuw i8, ptr %26, i64 32
  %92 = load i64, ptr %91, align 32
  %93 = add i64 %90, %92
  %94 = getelementptr inbounds nuw i8, ptr %27, i64 40
  %95 = load i64, ptr %94, align 8
  %96 = getelementptr inbounds nuw i8, ptr %28, i64 40
  %97 = load i64, ptr %96, align 8
  %98 = xor i64 %97, %95
  %99 = add i64 %93, %95
  store i64 %99, ptr %91, align 32
  %100 = and i64 %98, 4294967295
  %101 = lshr i64 %98, 32
  %102 = mul nuw i64 %100, %101
  %103 = add i64 %87, %102
  store i64 %103, ptr %85, align 8
  %104 = getelementptr inbounds nuw i8, ptr %27, i64 48
  %105 = load i64, ptr %104, align 16
  %106 = getelementptr inbounds nuw i8, ptr %28, i64 48
  %107 = load i64, ptr %106, align 16
  %108 = xor i64 %107, %105
  %109 = getelementptr inbounds nuw i8, ptr %26, i64 56
  %110 = load i64, ptr %109, align 8
  %111 = add i64 %110, %105
  %112 = and i64 %108, 4294967295
  %113 = lshr i64 %108, 32
  %114 = mul nuw i64 %112, %113
  %115 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %116 = load i64, ptr %115, align 16
  %117 = add i64 %114, %116
  %118 = getelementptr inbounds nuw i8, ptr %27, i64 56
  %119 = load i64, ptr %118, align 8
  %120 = getelementptr inbounds nuw i8, ptr %28, i64 56
  %121 = load i64, ptr %120, align 8
  %122 = xor i64 %121, %119
  %123 = add i64 %117, %119
  store i64 %123, ptr %115, align 16
  %124 = and i64 %122, 4294967295
  %125 = lshr i64 %122, 32
  %126 = mul nuw i64 %124, %125
  %127 = add i64 %111, %126
  store i64 %127, ptr %109, align 8
  %128 = load <2 x i64>, ptr %26, align 64
  %129 = load <2 x i64>, ptr %27, align 16
  %130 = load <2 x i64>, ptr %28, align 16
  %131 = shufflevector <2 x i64> %129, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %132 = xor <2 x i64> %130, %129
  %133 = trunc <2 x i64> %132 to <2 x i32>
  %134 = lshr <2 x i64> %132, splat (i64 32)
  %135 = trunc nuw <2 x i64> %134 to <2 x i32>
  %136 = call <2 x i64> @llvm.aarch64.neon.umull.v2i64(<2 x i32> %133, <2 x i32> %135)
  %137 = add <2 x i64> %131, %128
  %138 = add <2 x i64> %137, %136
  store <2 x i64> %138, ptr %26, align 64
  %139 = call ptr @memcpy(ptr noundef %0, ptr noundef nonnull %26, i64 noundef 64) #6
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
!37 = !{!38}
!38 = distinct !{!38, !14, !"XXH3_scalarRound: argument 0:It2"}
!39 = !{!40}
!40 = distinct !{!40, !14, !"XXH3_scalarRound: argument 1:It2"}
!41 = !{!42}
!42 = distinct !{!42, !14, !"XXH3_scalarRound: argument 2:It2"}
!43 = !{!40, !9}
!44 = !{!38, !42, !6, !11}
!45 = !{!42, !11}
!46 = !{!38, !40, !6, !9}
!47 = !{!38, !6}
!48 = !{!40, !42, !9, !11}
!49 = !{!50}
!50 = distinct !{!50, !14, !"XXH3_scalarRound: argument 0:It3"}
!51 = !{!52}
!52 = distinct !{!52, !14, !"XXH3_scalarRound: argument 1:It3"}
!53 = !{!54}
!54 = distinct !{!54, !14, !"XXH3_scalarRound: argument 2:It3"}
!55 = !{!52, !9}
!56 = !{!50, !54, !6, !11}
!57 = !{!54, !11}
!58 = !{!50, !52, !6, !9}
!59 = !{!50, !6}
!60 = !{!52, !54, !9, !11}
!61 = !{!62}
!62 = distinct !{!62, !14, !"XXH3_scalarRound: argument 0:It4"}
!63 = !{!64}
!64 = distinct !{!64, !14, !"XXH3_scalarRound: argument 1:It4"}
!65 = !{!66}
!66 = distinct !{!66, !14, !"XXH3_scalarRound: argument 2:It4"}
!67 = !{!64, !9}
!68 = !{!62, !66, !6, !11}
!69 = !{!66, !11}
!70 = !{!62, !64, !6, !9}
!71 = !{!62, !6}
!72 = !{!64, !66, !9, !11}
!73 = !{!74}
!74 = distinct !{!74, !14, !"XXH3_scalarRound: argument 0:It5"}
!75 = !{!76}
!76 = distinct !{!76, !14, !"XXH3_scalarRound: argument 1:It5"}
!77 = !{!78}
!78 = distinct !{!78, !14, !"XXH3_scalarRound: argument 2:It5"}
!79 = !{!76, !9}
!80 = !{!74, !78, !6, !11}
!81 = !{!78, !11}
!82 = !{!74, !76, !6, !9}
!83 = !{!74, !6}
!84 = !{!76, !78, !9, !11}
!85 = !{!9, !11}
!86 = !{!6, !11}
!87 = !{!6, !9}
