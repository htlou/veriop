; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/50d22279/new-s390.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/50d22279/new-s390.cpp"
target datalayout = "E-m:e-i1:8:16-i8:8:16-i64:64-f128:64-v128:64-a:8:16-n32:64"
target triple = "s390x-unknown-linux-gnu"

; Function Attrs: mustprogress noinline optnone
define dso_local float @reduce(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca <4 x float>, align 8
  %6 = alloca <4 x float>, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [8 x <4 x float>], align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca <4 x float>, align 8
  store float %0, ptr %7, align 4
  store float %1, ptr %8, align 4
  store float %2, ptr %9, align 4
  store float %3, ptr %10, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 128, i1 false)
  %18 = load float, ptr %7, align 4
  %19 = insertelement <4 x float> poison, float %18, i32 0
  %20 = load float, ptr %8, align 4
  %21 = insertelement <4 x float> %19, float %20, i32 1
  %22 = load float, ptr %9, align 4
  %23 = insertelement <4 x float> %21, float %22, i32 2
  %24 = load float, ptr %10, align 4
  %25 = insertelement <4 x float> %23, float %24, i32 3
  store <4 x float> %25, ptr %11, align 8
  store i32 4, ptr %13, align 4
  store i32 0, ptr %14, align 4
  br label %26

26:                                               ; preds = %45, %4
  %27 = load i32, ptr %14, align 4
  %28 = load i32, ptr %13, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load i32, ptr %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 %32
  %34 = load <4 x float>, ptr %33, align 8
  %35 = load i32, ptr %13, align 4
  %36 = load i32, ptr %14, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 %38
  %40 = load <4 x float>, ptr %39, align 8
  %41 = fadd <4 x float> %34, %40
  %42 = load i32, ptr %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 %43
  store <4 x float> %41, ptr %44, align 8
  br label %45

45:                                               ; preds = %30
  %46 = load i32, ptr %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %14, align 4
  br label %26, !llvm.loop !5

48:                                               ; preds = %26
  %49 = load i32, ptr %13, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, ptr %13, align 4
  store i32 0, ptr %15, align 4
  br label %51

51:                                               ; preds = %70, %48
  %52 = load i32, ptr %15, align 4
  %53 = load i32, ptr %13, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i32, ptr %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 %57
  %59 = load <4 x float>, ptr %58, align 8
  %60 = load i32, ptr %13, align 4
  %61 = load i32, ptr %15, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 %63
  %65 = load <4 x float>, ptr %64, align 8
  %66 = fadd <4 x float> %59, %65
  %67 = load i32, ptr %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 %68
  store <4 x float> %66, ptr %69, align 8
  br label %70

70:                                               ; preds = %55
  %71 = load i32, ptr %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %15, align 4
  br label %51, !llvm.loop !7

73:                                               ; preds = %51
  %74 = load i32, ptr %13, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, ptr %13, align 4
  store i32 0, ptr %16, align 4
  br label %76

76:                                               ; preds = %95, %73
  %77 = load i32, ptr %16, align 4
  %78 = load i32, ptr %13, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load i32, ptr %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 %82
  %84 = load <4 x float>, ptr %83, align 8
  %85 = load i32, ptr %13, align 4
  %86 = load i32, ptr %16, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 %88
  %90 = load <4 x float>, ptr %89, align 8
  %91 = fadd <4 x float> %84, %90
  %92 = load i32, ptr %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 %93
  store <4 x float> %91, ptr %94, align 8
  br label %95

95:                                               ; preds = %80
  %96 = load i32, ptr %16, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %16, align 4
  br label %76, !llvm.loop !8

98:                                               ; preds = %76
  %99 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 0
  %100 = load <4 x float>, ptr %99, align 8
  %101 = getelementptr inbounds [8 x <4 x float>], ptr %11, i64 0, i64 0
  %102 = load <4 x float>, ptr %101, align 8
  store <4 x float> %102, ptr %5, align 8
  %103 = load <4 x float>, ptr %5, align 8
  %104 = extractelement <4 x float> %103, i32 3
  %105 = insertelement <4 x float> poison, float %104, i32 0
  %106 = load <4 x float>, ptr %5, align 8
  %107 = extractelement <4 x float> %106, i32 2
  %108 = insertelement <4 x float> %105, float %107, i32 1
  %109 = load <4 x float>, ptr %5, align 8
  %110 = extractelement <4 x float> %109, i32 1
  %111 = insertelement <4 x float> %108, float %110, i32 2
  %112 = load <4 x float>, ptr %5, align 8
  %113 = extractelement <4 x float> %112, i32 0
  %114 = insertelement <4 x float> %111, float %113, i32 3
  store <4 x float> %114, ptr %6, align 8
  %115 = load <4 x float>, ptr %6, align 8
  %116 = fadd <4 x float> %100, %115
  store <4 x float> %116, ptr %17, align 8
  %117 = load <4 x float>, ptr %17, align 8
  %118 = extractelement <4 x float> %117, i32 0
  %119 = load <4 x float>, ptr %17, align 8
  %120 = extractelement <4 x float> %119, i32 1
  %121 = fadd float %118, %120
  store float %121, ptr %12, align 4
  %122 = load float, ptr %12, align 4
  ret float %122
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress noinline optnone "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="z15" "target-features"="+transactional-execution,+vector,+vector-enhancements-1,+vector-enhancements-2" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
