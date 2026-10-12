; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a16928e/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a16928e/wrap_raw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: nounwind
define dso_local i64 @target_mergeAccs(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [8 x i64], align 64
  %21 = alloca [64 x i8], align 1
  %22 = alloca [8 x i64], align 8
  %23 = alloca [8 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #4
  store i64 %0, ptr %22, align 8
  %24 = getelementptr inbounds nuw i8, ptr %22, i32 8
  store i64 %1, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %22, i32 16
  store i64 %2, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %22, i32 24
  store i64 %3, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %22, i32 32
  store i64 %4, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %22, i32 40
  store i64 %5, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %22, i32 48
  store i64 %6, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %22, i32 56
  store i64 %7, ptr %30, align 8
  %31 = call ptr @memcpy(ptr noundef nonnull %20, ptr noundef nonnull %22, i32 noundef 64) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %23) #4
  store i64 %8, ptr %23, align 8
  %32 = getelementptr inbounds nuw i8, ptr %23, i32 8
  store i64 %9, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %23, i32 16
  store i64 %10, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %23, i32 24
  store i64 %11, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %23, i32 32
  store i64 %12, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %23, i32 40
  store i64 %13, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %23, i32 48
  store i64 %14, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %23, i32 56
  store i64 %15, ptr %38, align 8
  %39 = call ptr @memcpy(ptr noundef nonnull %21, ptr noundef nonnull %23, i32 noundef 64) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %23) #4
  %40 = load i64, ptr %20, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #4
  %41 = call ptr @memcpy(ptr noundef nonnull %19, ptr noundef nonnull %21, i32 noundef 8) #5
  %42 = load i64, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #4
  %43 = xor i64 %42, %40
  %44 = getelementptr inbounds nuw i8, ptr %20, i32 8
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %21, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #4
  %47 = call ptr @memcpy(ptr noundef nonnull %18, ptr noundef nonnull %46, i32 noundef 8) #5
  %48 = load i64, ptr %18, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #4
  %49 = xor i64 %48, %45
  %50 = and i64 %43, 4294967295
  %51 = and i64 %49, 4294967295
  %52 = mul nuw i64 %51, %50
  %53 = lshr i64 %43, 32
  %54 = mul nuw i64 %51, %53
  %55 = lshr i64 %49, 32
  %56 = mul nuw i64 %55, %50
  %57 = mul nuw i64 %55, %53
  %58 = lshr i64 %52, 32
  %59 = and i64 %54, 4294967295
  %60 = add nuw i64 %59, %56
  %61 = add nuw i64 %60, %58
  %62 = lshr i64 %54, 32
  %63 = lshr i64 %61, 32
  %64 = add nuw i64 %62, %57
  %65 = add nuw i64 %64, %63
  %66 = shl i64 %61, 32
  %67 = and i64 %52, 4294967295
  %68 = or disjoint i64 %66, %67
  %69 = xor i64 %68, %65
  %70 = add i64 %69, %16
  %71 = freeze i64 %70
  %72 = getelementptr inbounds nuw i8, ptr %20, i32 16
  %73 = getelementptr inbounds nuw i8, ptr %21, i32 16
  %74 = load i64, ptr %72, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #4
  %75 = call ptr @memcpy(ptr noundef nonnull %19, ptr noundef nonnull %73, i32 noundef 8) #5
  %76 = load i64, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #4
  %77 = xor i64 %76, %74
  %78 = getelementptr inbounds nuw i8, ptr %20, i32 24
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds nuw i8, ptr %21, i32 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #4
  %81 = call ptr @memcpy(ptr noundef nonnull %18, ptr noundef nonnull %80, i32 noundef 8) #5
  %82 = load i64, ptr %18, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #4
  %83 = xor i64 %82, %79
  %84 = and i64 %77, 4294967295
  %85 = and i64 %83, 4294967295
  %86 = mul nuw i64 %85, %84
  %87 = lshr i64 %77, 32
  %88 = mul nuw i64 %85, %87
  %89 = lshr i64 %83, 32
  %90 = mul nuw i64 %89, %84
  %91 = mul nuw i64 %89, %87
  %92 = lshr i64 %86, 32
  %93 = and i64 %88, 4294967295
  %94 = add nuw i64 %93, %90
  %95 = add nuw i64 %94, %92
  %96 = lshr i64 %88, 32
  %97 = lshr i64 %95, 32
  %98 = add nuw i64 %96, %91
  %99 = add nuw i64 %98, %97
  %100 = shl i64 %95, 32
  %101 = and i64 %86, 4294967295
  %102 = or disjoint i64 %100, %101
  %103 = xor i64 %102, %99
  %104 = add i64 %103, %71
  %105 = freeze i64 %104
  %106 = getelementptr inbounds nuw i8, ptr %20, i32 32
  %107 = getelementptr inbounds nuw i8, ptr %21, i32 32
  %108 = load i64, ptr %106, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #4
  %109 = call ptr @memcpy(ptr noundef nonnull %19, ptr noundef nonnull %107, i32 noundef 8) #5
  %110 = load i64, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #4
  %111 = xor i64 %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %20, i32 40
  %113 = load i64, ptr %112, align 8
  %114 = getelementptr inbounds nuw i8, ptr %21, i32 40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #4
  %115 = call ptr @memcpy(ptr noundef nonnull %18, ptr noundef nonnull %114, i32 noundef 8) #5
  %116 = load i64, ptr %18, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #4
  %117 = xor i64 %116, %113
  %118 = and i64 %111, 4294967295
  %119 = and i64 %117, 4294967295
  %120 = mul nuw i64 %119, %118
  %121 = lshr i64 %111, 32
  %122 = mul nuw i64 %119, %121
  %123 = lshr i64 %117, 32
  %124 = mul nuw i64 %123, %118
  %125 = mul nuw i64 %123, %121
  %126 = lshr i64 %120, 32
  %127 = and i64 %122, 4294967295
  %128 = add nuw i64 %127, %124
  %129 = add nuw i64 %128, %126
  %130 = lshr i64 %122, 32
  %131 = lshr i64 %129, 32
  %132 = add nuw i64 %130, %125
  %133 = add nuw i64 %132, %131
  %134 = shl i64 %129, 32
  %135 = and i64 %120, 4294967295
  %136 = or disjoint i64 %134, %135
  %137 = xor i64 %136, %133
  %138 = add i64 %137, %105
  %139 = freeze i64 %138
  %140 = getelementptr inbounds nuw i8, ptr %20, i32 48
  %141 = getelementptr inbounds nuw i8, ptr %21, i32 48
  %142 = load i64, ptr %140, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #4
  %143 = call ptr @memcpy(ptr noundef nonnull %19, ptr noundef nonnull %141, i32 noundef 8) #5
  %144 = load i64, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #4
  %145 = xor i64 %144, %142
  %146 = getelementptr inbounds nuw i8, ptr %20, i32 56
  %147 = load i64, ptr %146, align 8
  %148 = getelementptr inbounds nuw i8, ptr %21, i32 56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #4
  %149 = call ptr @memcpy(ptr noundef nonnull %18, ptr noundef nonnull %148, i32 noundef 8) #5
  %150 = load i64, ptr %18, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #4
  %151 = xor i64 %150, %147
  %152 = and i64 %145, 4294967295
  %153 = and i64 %151, 4294967295
  %154 = mul nuw i64 %153, %152
  %155 = lshr i64 %145, 32
  %156 = mul nuw i64 %153, %155
  %157 = lshr i64 %151, 32
  %158 = mul nuw i64 %157, %152
  %159 = mul nuw i64 %157, %155
  %160 = lshr i64 %154, 32
  %161 = and i64 %156, 4294967295
  %162 = add nuw i64 %161, %158
  %163 = add nuw i64 %162, %160
  %164 = lshr i64 %156, 32
  %165 = lshr i64 %163, 32
  %166 = add nuw i64 %164, %159
  %167 = add nuw i64 %166, %165
  %168 = shl i64 %163, 32
  %169 = and i64 %154, 4294967295
  %170 = or disjoint i64 %168, %169
  %171 = xor i64 %170, %167
  %172 = add i64 %171, %139
  %173 = freeze i64 %172
  %174 = lshr i64 %173, 37
  %175 = xor i64 %174, %173
  %176 = mul i64 %175, 1609587791953885689
  %177 = lshr i64 %176, 32
  %178 = xor i64 %177, %176
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #4
  ret i64 %178
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { nounwind "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind memory(none) }

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
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_mix2Accs: argument 0"}
!10 = distinct !{!10, !"XXH3_mix2Accs"}
!11 = !{!9, !6}
!12 = !{!13, !14}
!13 = distinct !{!13, !10, !"XXH3_mix2Accs: argument 1"}
!14 = distinct !{!14, !7, !"XXH3_mergeAccs: argument 1"}
!15 = !{!9, !13, !6, !14}
!16 = !{i64 254820}
!17 = !{!18}
!18 = distinct !{!18, !10, !"XXH3_mix2Accs: argument 0:It1"}
!19 = !{!18, !6}
!20 = !{!18, !13, !6, !14}
!21 = !{!22}
!22 = distinct !{!22, !10, !"XXH3_mix2Accs: argument 0:It2"}
!23 = !{!22, !6}
!24 = !{!22, !13, !6, !14}
!25 = !{!26}
!26 = distinct !{!26, !10, !"XXH3_mix2Accs: argument 0:It3"}
!27 = !{!26, !6}
!28 = !{!26, !13, !6, !14}
