; ModuleID = 'history-eq/c/xxHash/a4ecded/body-proof/long_secret.c'
source_filename = "history-eq/c/xxHash/a4ecded/body-proof/long_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-conda-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64sec192_len256(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %56, %3 ], [ 0, %2 ]
  %5 = phi <2 x i64> [ %55, %3 ], [ <i64 2870177450012600261, i64 2654435761>, %2 ]
  %6 = phi <2 x i64> [ %44, %3 ], [ <i64 -8796714831421723037, i64 2246822519>, %2 ]
  %7 = phi <2 x i64> [ %33, %3 ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %8 = phi <2 x i64> [ %22, %3 ], [ <i64 3266489917, i64 -7046029288634856825>, %2 ]
  %9 = shl i64 %4, 6
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 0, i32 3, i32 1), !noalias !25
  %12 = shl nuw i64 %4, 3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %14 = load <2 x i64>, ptr %10, align 1, !alias.scope !31, !noalias !34
  %15 = shufflevector <2 x i64> %14, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %16 = load <2 x i64>, ptr %13, align 1, !alias.scope !36, !noalias !37
  %17 = xor <2 x i64> %16, %14
  %18 = add <2 x i64> %15, %8
  %19 = and <2 x i64> %17, <i64 4294967295, i64 4294967295>
  %20 = lshr <2 x i64> %17, <i64 32, i64 32>
  %21 = mul nuw <2 x i64> %19, %20
  %22 = add <2 x i64> %18, %21
  %23 = getelementptr inbounds i8, ptr %10, i64 16
  %24 = getelementptr inbounds i8, ptr %13, i64 16
  %25 = load <2 x i64>, ptr %23, align 1, !alias.scope !31, !noalias !34
  %26 = shufflevector <2 x i64> %25, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %27 = load <2 x i64>, ptr %24, align 1, !alias.scope !36, !noalias !37
  %28 = xor <2 x i64> %27, %25
  %29 = add <2 x i64> %26, %7
  %30 = and <2 x i64> %28, <i64 4294967295, i64 4294967295>
  %31 = lshr <2 x i64> %28, <i64 32, i64 32>
  %32 = mul nuw <2 x i64> %30, %31
  %33 = add <2 x i64> %29, %32
  %34 = getelementptr inbounds i8, ptr %10, i64 32
  %35 = getelementptr inbounds i8, ptr %13, i64 32
  %36 = load <2 x i64>, ptr %34, align 1, !alias.scope !31, !noalias !34
  %37 = shufflevector <2 x i64> %36, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %38 = load <2 x i64>, ptr %35, align 1, !alias.scope !36, !noalias !37
  %39 = xor <2 x i64> %38, %36
  %40 = add <2 x i64> %37, %6
  %41 = and <2 x i64> %39, <i64 4294967295, i64 4294967295>
  %42 = lshr <2 x i64> %39, <i64 32, i64 32>
  %43 = mul nuw <2 x i64> %41, %42
  %44 = add <2 x i64> %40, %43
  %45 = getelementptr inbounds i8, ptr %10, i64 48
  %46 = getelementptr inbounds i8, ptr %13, i64 48
  %47 = load <2 x i64>, ptr %45, align 1, !alias.scope !31, !noalias !34
  %48 = shufflevector <2 x i64> %47, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %49 = load <2 x i64>, ptr %46, align 1, !alias.scope !36, !noalias !37
  %50 = xor <2 x i64> %49, %47
  %51 = add <2 x i64> %48, %5
  %52 = and <2 x i64> %50, <i64 4294967295, i64 4294967295>
  %53 = lshr <2 x i64> %50, <i64 32, i64 32>
  %54 = mul nuw <2 x i64> %52, %53
  %55 = add <2 x i64> %51, %54
  %56 = add nuw nsw i64 %4, 1
  %57 = icmp eq i64 %56, 3
  br i1 %57, label %58, label %3, !llvm.loop !38

58:                                               ; preds = %3
  %59 = getelementptr inbounds i8, ptr %0, i64 192
  %60 = getelementptr inbounds i8, ptr %1, i64 121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %61 = getelementptr inbounds i8, ptr %0, i64 208
  %62 = getelementptr inbounds i8, ptr %1, i64 137
  %63 = getelementptr inbounds i8, ptr %0, i64 224
  %64 = getelementptr inbounds i8, ptr %1, i64 153
  %65 = getelementptr inbounds i8, ptr %0, i64 240
  %66 = getelementptr inbounds i8, ptr %1, i64 169
  %67 = getelementptr inbounds i8, ptr %1, i64 11
  %68 = load <2 x i64>, ptr %59, align 1, !alias.scope !45, !noalias !46
  %69 = shufflevector <2 x i64> %68, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %70 = load <2 x i64>, ptr %60, align 1, !alias.scope !48, !noalias !49
  %71 = xor <2 x i64> %70, %68
  %72 = add <2 x i64> %69, %22
  %73 = and <2 x i64> %71, <i64 4294967295, i64 4294967295>
  %74 = lshr <2 x i64> %71, <i64 32, i64 32>
  %75 = mul nuw <2 x i64> %73, %74
  %76 = add <2 x i64> %72, %75
  %77 = load <2 x i64>, ptr %67, align 1, !alias.scope !50, !noalias !55
  %78 = xor <2 x i64> %77, %76
  %79 = zext <2 x i64> %78 to <2 x i128>
  %80 = extractelement <2 x i128> %79, i64 0
  %81 = extractelement <2 x i128> %79, i64 1
  %82 = mul nuw i128 %81, %80
  %83 = lshr i128 %82, 64
  %84 = xor i128 %83, %82
  %85 = trunc i128 %84 to i64
  %86 = add i64 %85, 3997421333012711168
  %87 = getelementptr inbounds i8, ptr %1, i64 27
  %88 = load <2 x i64>, ptr %61, align 1, !alias.scope !45, !noalias !46
  %89 = shufflevector <2 x i64> %88, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %90 = load <2 x i64>, ptr %62, align 1, !alias.scope !48, !noalias !49
  %91 = xor <2 x i64> %90, %88
  %92 = add <2 x i64> %89, %33
  %93 = and <2 x i64> %91, <i64 4294967295, i64 4294967295>
  %94 = lshr <2 x i64> %91, <i64 32, i64 32>
  %95 = mul nuw <2 x i64> %93, %94
  %96 = add <2 x i64> %92, %95
  %97 = load <2 x i64>, ptr %87, align 1, !alias.scope !58, !noalias !60
  %98 = xor <2 x i64> %97, %96
  %99 = zext <2 x i64> %98 to <2 x i128>
  %100 = extractelement <2 x i128> %99, i64 0
  %101 = extractelement <2 x i128> %99, i64 1
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %86, %105
  %107 = getelementptr inbounds i8, ptr %1, i64 43
  %108 = load <2 x i64>, ptr %63, align 1, !alias.scope !45, !noalias !46
  %109 = shufflevector <2 x i64> %108, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %110 = load <2 x i64>, ptr %64, align 1, !alias.scope !48, !noalias !49
  %111 = xor <2 x i64> %110, %108
  %112 = add <2 x i64> %109, %44
  %113 = and <2 x i64> %111, <i64 4294967295, i64 4294967295>
  %114 = lshr <2 x i64> %111, <i64 32, i64 32>
  %115 = mul nuw <2 x i64> %113, %114
  %116 = add <2 x i64> %112, %115
  %117 = load <2 x i64>, ptr %107, align 1, !alias.scope !62, !noalias !64
  %118 = xor <2 x i64> %117, %116
  %119 = zext <2 x i64> %118 to <2 x i128>
  %120 = extractelement <2 x i128> %119, i64 0
  %121 = extractelement <2 x i128> %119, i64 1
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %106, %125
  %127 = getelementptr inbounds i8, ptr %1, i64 59
  %128 = load <2 x i64>, ptr %65, align 1, !alias.scope !45, !noalias !46
  %129 = shufflevector <2 x i64> %128, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %130 = load <2 x i64>, ptr %66, align 1, !alias.scope !48, !noalias !49
  %131 = xor <2 x i64> %130, %128
  %132 = add <2 x i64> %129, %55
  %133 = and <2 x i64> %131, <i64 4294967295, i64 4294967295>
  %134 = lshr <2 x i64> %131, <i64 32, i64 32>
  %135 = mul nuw <2 x i64> %133, %134
  %136 = add <2 x i64> %132, %135
  %137 = load <2 x i64>, ptr %127, align 1, !alias.scope !66, !noalias !68
  %138 = xor <2 x i64> %137, %136
  %139 = zext <2 x i64> %138 to <2 x i128>
  %140 = extractelement <2 x i128> %139, i64 0
  %141 = extractelement <2 x i128> %139, i64 1
  %142 = mul nuw i128 %141, %140
  %143 = lshr i128 %142, 64
  %144 = xor i128 %143, %142
  %145 = trunc i128 %144 to i64
  %146 = add i64 %126, %145
  %147 = lshr i64 %146, 37
  %148 = xor i64 %147, %146
  %149 = mul i64 %148, 1609587791953885689
  %150 = lshr i64 %149, 32
  %151 = xor i64 %150, %149
  ret i64 %151
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.1.8 (https://github.com/conda-forge/clangdev-feedstock 3c15221e001c9fe87fcc807876aa06d599616b01)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_hashLong_64b_withSecret: argument 0"}
!7 = distinct !{!7, !"XXH3_hashLong_64b_withSecret"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_hashLong_64b_withSecret: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"XXH3_hashLong_64b_internal: argument 0"}
!12 = distinct !{!12, !"XXH3_hashLong_64b_internal"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"XXH3_hashLong_64b_internal: argument 1"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_hashLong_internal_loop: argument 0"}
!17 = distinct !{!17, !"XXH3_hashLong_internal_loop"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"XXH3_hashLong_internal_loop: argument 2"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_accumulate: argument 0"}
!22 = distinct !{!22, !"XXH3_accumulate"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"XXH3_accumulate: argument 2"}
!25 = !{!21, !24, !16, !19, !14, !9}
!26 = !{!27}
!27 = distinct !{!27, !28, !"XXH3_accumulate_512_scalar: argument 1"}
!28 = distinct !{!28, !"XXH3_accumulate_512_scalar"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"XXH3_accumulate_512_scalar: argument 2"}
!31 = !{!27, !21, !32, !24, !16, !33, !19, !11, !6}
!32 = distinct !{!32, !22, !"XXH3_accumulate: argument 1"}
!33 = distinct !{!33, !17, !"XXH3_hashLong_internal_loop: argument 1"}
!34 = !{!35, !30, !14, !9}
!35 = distinct !{!35, !28, !"XXH3_accumulate_512_scalar: argument 0"}
!36 = !{!30, !21, !32, !24, !16, !33, !19, !14, !9}
!37 = !{!35, !27, !11, !6}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"XXH3_accumulate_512_scalar: argument 1"}
!42 = distinct !{!42, !"XXH3_accumulate_512_scalar"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"XXH3_accumulate_512_scalar: argument 2"}
!45 = !{!41, !16, !33, !19, !11, !6}
!46 = !{!47, !44, !14, !9}
!47 = distinct !{!47, !42, !"XXH3_accumulate_512_scalar: argument 0"}
!48 = !{!44, !16, !33, !19, !14, !9}
!49 = !{!47, !41, !11, !6}
!50 = !{!51, !53, !14, !9}
!51 = distinct !{!51, !52, !"XXH3_mix2Accs: argument 1"}
!52 = distinct !{!52, !"XXH3_mix2Accs"}
!53 = distinct !{!53, !54, !"XXH3_mergeAccs: argument 1"}
!54 = distinct !{!54, !"XXH3_mergeAccs"}
!55 = !{!56, !57, !11, !6}
!56 = distinct !{!56, !52, !"XXH3_mix2Accs: argument 0"}
!57 = distinct !{!57, !54, !"XXH3_mergeAccs: argument 0"}
!58 = !{!59, !53, !14, !9}
!59 = distinct !{!59, !52, !"XXH3_mix2Accs: argument 1:It1"}
!60 = !{!61, !57, !11, !6}
!61 = distinct !{!61, !52, !"XXH3_mix2Accs: argument 0:It1"}
!62 = !{!63, !53, !14, !9}
!63 = distinct !{!63, !52, !"XXH3_mix2Accs: argument 1:It2"}
!64 = !{!65, !57, !11, !6}
!65 = distinct !{!65, !52, !"XXH3_mix2Accs: argument 0:It2"}
!66 = !{!67, !53, !14, !9}
!67 = distinct !{!67, !52, !"XXH3_mix2Accs: argument 1:It3"}
!68 = !{!69, !57, !11, !6}
!69 = distinct !{!69, !52, !"XXH3_mix2Accs: argument 0:It3"}
