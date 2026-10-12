; ModuleID = '/tmp/xxhash-ibm-xl-4lrz1uoh/probe.c'
source_filename = "/tmp/xxhash-ibm-xl-4lrz1uoh/probe.c"
target datalayout = "e-m:e-Fn32-i64:64-i128:128-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64le-unknown-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
define dso_local i64 @target(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %0, i64 noundef 256) #9
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(read)
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias noundef %0, i64 noundef %1) unnamed_addr #1 {
  %3 = alloca <2 x i64>, align 16
  %4 = alloca <2 x i64>, align 16
  %5 = alloca <2 x i64>, align 16
  %6 = alloca <2 x i64>, align 16
  %7 = alloca <2 x i64>, align 16
  %8 = alloca <2 x i64>, align 16
  %9 = alloca <2 x i64>, align 16
  %10 = alloca [8 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #10, !noalias !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %10, ptr noundef nonnull align 16 dereferenceable(64) @__const.XXH3_hashLong_64b_internal.acc, i64 64, i1 false), !noalias !4
  %11 = add i64 %1, -1
  %12 = icmp ult i64 %11, 1024
  br i1 %12, label %72, label %13

13:                                               ; preds = %2
  %14 = lshr i64 %11, 10
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 1)
  br label %16

16:                                               ; preds = %13, %69
  %17 = phi i64 [ %70, %69 ], [ 0, %13 ]
  %18 = shl nuw i64 %17, 10
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 %18
  br label %20

20:                                               ; preds = %16, %48
  %21 = phi i64 [ 0, %16 ], [ %49, %48 ]
  %22 = shl nuw nsw i64 %21, 6
  %23 = getelementptr inbounds nuw i8, ptr %19, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 384
  call void @llvm.prefetch.p0(ptr nonnull %24, i32 0, i32 3, i32 1)
  %25 = shl nuw nsw i64 %21, 3
  %26 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %25
  br label %27

27:                                               ; preds = %20, %27
  %28 = phi i64 [ 0, %20 ], [ %46, %27 ]
  %29 = getelementptr inbounds nuw <2 x i64>, ptr %23, i64 %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %30 = call ptr @memcpy(ptr noundef nonnull %6, ptr noundef %29, i64 noundef 16) #11
  %31 = load <2 x i64>, ptr %6, align 16, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %32 = getelementptr inbounds nuw <2 x i64>, ptr %26, i64 %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %33 = call ptr @memcpy(ptr noundef nonnull %7, ptr noundef nonnull %32, i64 noundef 16) #11
  %34 = load <2 x i64>, ptr %7, align 16, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  %35 = xor <2 x i64> %34, %31
  %36 = call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %35, <2 x i64> splat (i64 32))
  %37 = bitcast <2 x i64> %36 to <4 x i32>
  %38 = bitcast <2 x i64> %35 to <4 x i32>
  %39 = call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %38, <4 x i32> %37) #12, !srcloc !10
  %40 = shl nuw nsw i64 %28, 4
  %41 = getelementptr inbounds nuw i8, ptr %10, i64 %40
  %42 = load <2 x i64>, ptr %41, align 16, !tbaa !7
  %43 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %44 = add <2 x i64> %39, %43
  %45 = add <2 x i64> %44, %42
  store <2 x i64> %45, ptr %41, align 16, !tbaa !7
  %46 = add nuw nsw i64 %28, 1
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %27, !llvm.loop !11

48:                                               ; preds = %27
  %49 = add nuw nsw i64 %21, 1
  %50 = icmp eq i64 %49, 16
  br i1 %50, label %51, label %20, !llvm.loop !13

51:                                               ; preds = %48
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  br label %52

52:                                               ; preds = %51, %52
  %53 = phi i64 [ 0, %51 ], [ %67, %52 ]
  %54 = getelementptr inbounds nuw <2 x i64>, ptr %10, i64 %53
  %55 = load <2 x i64>, ptr %54, align 16, !tbaa !7, !alias.scope !17, !noalias !20
  %56 = lshr <2 x i64> %55, splat (i64 47)
  %57 = getelementptr inbounds nuw <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), i64 %53
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10, !noalias !14
  %58 = call ptr @memcpy(ptr noundef nonnull %5, ptr noundef nonnull %57, i64 noundef 16) #11, !noalias !14
  %59 = load <2 x i64>, ptr %5, align 16, !tbaa !7, !noalias !14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10, !noalias !14
  %60 = xor <2 x i64> %56, %59
  %61 = xor <2 x i64> %60, %55
  %62 = bitcast <2 x i64> %61 to <4 x i32>
  %63 = call <2 x i64> asm "vmuleuw $0, $1, $2", "=v,v,v"(<4 x i32> %62, <4 x i32> splat (i32 -1640531535)) #12, !srcloc !23
  %64 = call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %62, <4 x i32> splat (i32 -1640531535)) #12, !srcloc !10
  %65 = shl <2 x i64> %63, splat (i64 32)
  %66 = add <2 x i64> %64, %65
  store <2 x i64> %66, ptr %54, align 16, !tbaa !7, !alias.scope !17, !noalias !20
  %67 = add nuw nsw i64 %53, 1
  %68 = icmp eq i64 %67, 4
  br i1 %68, label %69, label %52, !llvm.loop !24

69:                                               ; preds = %52
  %70 = add nuw nsw i64 %17, 1
  %71 = icmp eq i64 %70, %15
  br i1 %71, label %72, label %16, !llvm.loop !25

72:                                               ; preds = %69, %2
  %73 = and i64 %11, -1024
  %74 = lshr i64 %11, 6
  %75 = and i64 %74, 15
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %73
  %77 = icmp eq i64 %75, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %72, %106
  %79 = phi i64 [ %107, %106 ], [ 0, %72 ]
  %80 = shl nuw i64 %79, 6
  %81 = getelementptr inbounds nuw i8, ptr %76, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 384
  call void @llvm.prefetch.p0(ptr nonnull %82, i32 0, i32 3, i32 1)
  %83 = shl nuw nsw i64 %79, 3
  %84 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %83
  br label %85

85:                                               ; preds = %78, %85
  %86 = phi i64 [ 0, %78 ], [ %104, %85 ]
  %87 = getelementptr inbounds nuw <2 x i64>, ptr %81, i64 %86
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  %88 = call ptr @memcpy(ptr noundef nonnull %8, ptr noundef %87, i64 noundef 16) #11
  %89 = load <2 x i64>, ptr %8, align 16, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  %90 = getelementptr inbounds nuw <2 x i64>, ptr %84, i64 %86
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  %91 = call ptr @memcpy(ptr noundef nonnull %9, ptr noundef nonnull %90, i64 noundef 16) #11
  %92 = load <2 x i64>, ptr %9, align 16, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  %93 = xor <2 x i64> %92, %89
  %94 = call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %93, <2 x i64> splat (i64 32))
  %95 = bitcast <2 x i64> %94 to <4 x i32>
  %96 = bitcast <2 x i64> %93 to <4 x i32>
  %97 = call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %96, <4 x i32> %95) #12, !srcloc !10
  %98 = shl nuw nsw i64 %86, 4
  %99 = getelementptr inbounds nuw i8, ptr %10, i64 %98
  %100 = load <2 x i64>, ptr %99, align 16, !tbaa !7
  %101 = shufflevector <2 x i64> %89, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %102 = add <2 x i64> %97, %101
  %103 = add <2 x i64> %102, %100
  store <2 x i64> %103, ptr %99, align 16, !tbaa !7
  %104 = add nuw nsw i64 %86, 1
  %105 = icmp eq i64 %104, 4
  br i1 %105, label %106, label %85, !llvm.loop !11

106:                                              ; preds = %85
  %107 = add nuw nsw i64 %79, 1
  %108 = icmp eq i64 %107, %75
  br i1 %108, label %109, label %78, !llvm.loop !13

109:                                              ; preds = %106, %72
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %111 = getelementptr inbounds i8, ptr %110, i64 -64
  br label %112

112:                                              ; preds = %109, %112
  %113 = phi i64 [ 0, %109 ], [ %131, %112 ]
  %114 = getelementptr inbounds nuw <2 x i64>, ptr %111, i64 %113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %115 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef nonnull %114, i64 noundef 16) #11
  %116 = load <2 x i64>, ptr %3, align 16, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %117 = getelementptr inbounds nuw <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), i64 %113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %118 = call ptr @memcpy(ptr noundef nonnull %4, ptr noundef nonnull %117, i64 noundef 16) #11
  %119 = load <2 x i64>, ptr %4, align 16, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %120 = xor <2 x i64> %119, %116
  %121 = call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %120, <2 x i64> splat (i64 32))
  %122 = bitcast <2 x i64> %121 to <4 x i32>
  %123 = bitcast <2 x i64> %120 to <4 x i32>
  %124 = call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %123, <4 x i32> %122) #12, !srcloc !10
  %125 = shl nuw nsw i64 %113, 4
  %126 = getelementptr inbounds nuw i8, ptr %10, i64 %125
  %127 = load <2 x i64>, ptr %126, align 16, !tbaa !7
  %128 = shufflevector <2 x i64> %116, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %129 = add <2 x i64> %124, %128
  %130 = add <2 x i64> %129, %127
  store <2 x i64> %130, ptr %126, align 16, !tbaa !7
  %131 = add nuw nsw i64 %113, 1
  %132 = icmp eq i64 %131, 4
  br i1 %132, label %133, label %112, !llvm.loop !11

133:                                              ; preds = %112
  %134 = mul i64 %1, -7046029288634856825
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  br label %135

135:                                              ; preds = %135, %133
  %136 = phi i64 [ 0, %133 ], [ %156, %135 ]
  %137 = phi i64 [ %134, %133 ], [ %155, %135 ]
  %138 = shl nuw nsw i64 %136, 4
  %139 = getelementptr inbounds nuw i8, ptr %10, i64 %138
  %140 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 11), i64 %138
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %141 = load i64, ptr %139, align 16, !tbaa !32, !alias.scope !34, !noalias !35
  %142 = load i64, ptr %140, align 1, !tbaa !32, !noalias !34
  %143 = xor i64 %142, %141
  %144 = getelementptr inbounds nuw i8, ptr %139, i64 8
  %145 = load i64, ptr %144, align 8, !tbaa !32, !alias.scope !34, !noalias !35
  %146 = getelementptr inbounds nuw i8, ptr %140, i64 8
  %147 = load i64, ptr %146, align 1, !tbaa !32, !noalias !34
  %148 = xor i64 %147, %145
  %149 = zext i64 %143 to i128
  %150 = zext i64 %148 to i128
  %151 = mul nuw i128 %150, %149
  %152 = lshr i128 %151, 64
  %153 = xor i128 %152, %151
  %154 = trunc i128 %153 to i64
  %155 = add i64 %137, %154
  %156 = add nuw nsw i64 %136, 1
  %157 = icmp eq i64 %156, 4
  br i1 %157, label %158, label %135, !llvm.loop !37

158:                                              ; preds = %135
  %159 = lshr i64 %155, 37
  %160 = xor i64 %159, %155
  %161 = mul i64 %160, 1609587791953885689
  %162 = lshr i64 %161, 32
  %163 = xor i64 %162, %161
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #10, !noalias !4
  ret i64 %163
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #4

declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64>, <2 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { mustprogress nofree nounwind willreturn memory(read) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr9" "target-features"="+altivec,+bpermd,+crbits,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+isa-v30-instructions,+power8-vector,+power9-vector,+quadword-atomics,+vsx,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-privileged,-rop-protect,-spe" }
attributes #1 = { mustprogress nofree noinline nounwind willreturn memory(read) "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr9" "target-features"="+altivec,+bpermd,+crbits,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+isa-v30-instructions,+power8-vector,+power9-vector,+quadword-atomics,+vsx,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-privileged,-rop-protect,-spe" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr9" "target-features"="+altivec,+bpermd,+crbits,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+isa-v30-instructions,+power8-vector,+power9-vector,+quadword-atomics,+vsx,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-privileged,-rop-protect,-spe" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"XXH3_hashLong_64b_internal: argument 0"}
!6 = distinct !{!6, !"XXH3_hashLong_64b_internal"}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{i64 150097}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !12}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_scrambleAcc_vsx: argument 0"}
!16 = distinct !{!16, !"XXH3_scrambleAcc_vsx"}
!17 = !{!15, !18}
!18 = distinct !{!18, !19, !"XXH3_hashLong_internal_loop: argument 0"}
!19 = distinct !{!19, !"XXH3_hashLong_internal_loop"}
!20 = !{!21, !22}
!21 = distinct !{!21, !16, !"XXH3_scrambleAcc_vsx: argument 1"}
!22 = distinct !{!22, !19, !"XXH3_hashLong_internal_loop: argument 1"}
!23 = !{i64 150278}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_mergeAccs: argument 0"}
!28 = distinct !{!28, !"XXH3_mergeAccs"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_mix2Accs: argument 0"}
!31 = distinct !{!31, !"XXH3_mix2Accs"}
!32 = !{!33, !33, i64 0}
!33 = !{!"long", !8, i64 0}
!34 = !{!30, !27}
!35 = !{!36}
!36 = distinct !{!36, !31, !"XXH3_mix2Accs: argument 1"}
!37 = distinct !{!37, !12}
