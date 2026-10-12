; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/50d22279/old-s390.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/50d22279/old-s390.cpp"
target datalayout = "E-m:e-i1:8:16-i8:8:16-i64:64-f128:64-v128:64-a:8:16-n32:64"
target triple = "s390x-unknown-linux-gnu"

; Function Attrs: mustprogress noinline optnone
define dso_local float @reduce(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca <4 x float>, align 8
  %6 = alloca i32, align 4
  %7 = alloca <4 x float>, align 8
  %8 = alloca i32, align 4
  %9 = alloca <4 x float>, align 8
  %10 = alloca i32, align 4
  %11 = alloca <4 x float>, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca [8 x <4 x float>], align 8
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store float %0, ptr %13, align 4
  store float %1, ptr %14, align 4
  store float %2, ptr %15, align 4
  store float %3, ptr %16, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 128, i1 false)
  %23 = load float, ptr %13, align 4
  %24 = insertelement <4 x float> poison, float %23, i32 0
  %25 = load float, ptr %14, align 4
  %26 = insertelement <4 x float> %24, float %25, i32 1
  %27 = load float, ptr %15, align 4
  %28 = insertelement <4 x float> %26, float %27, i32 2
  %29 = load float, ptr %16, align 4
  %30 = insertelement <4 x float> %28, float %29, i32 3
  store <4 x float> %30, ptr %17, align 8
  store i32 4, ptr %19, align 4
  store i32 0, ptr %20, align 4
  br label %31

31:                                               ; preds = %50, %4
  %32 = load i32, ptr %20, align 4
  %33 = load i32, ptr %19, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i32, ptr %20, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 %37
  %39 = load <4 x float>, ptr %38, align 8
  %40 = load i32, ptr %19, align 4
  %41 = load i32, ptr %20, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 %43
  %45 = load <4 x float>, ptr %44, align 8
  %46 = fadd <4 x float> %39, %45
  %47 = load i32, ptr %20, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 %48
  store <4 x float> %46, ptr %49, align 8
  br label %50

50:                                               ; preds = %35
  %51 = load i32, ptr %20, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %20, align 4
  br label %31, !llvm.loop !5

53:                                               ; preds = %31
  %54 = load i32, ptr %19, align 4
  %55 = ashr i32 %54, 1
  store i32 %55, ptr %19, align 4
  store i32 0, ptr %21, align 4
  br label %56

56:                                               ; preds = %75, %53
  %57 = load i32, ptr %21, align 4
  %58 = load i32, ptr %19, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i32, ptr %21, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 %62
  %64 = load <4 x float>, ptr %63, align 8
  %65 = load i32, ptr %19, align 4
  %66 = load i32, ptr %21, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 %68
  %70 = load <4 x float>, ptr %69, align 8
  %71 = fadd <4 x float> %64, %70
  %72 = load i32, ptr %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 %73
  store <4 x float> %71, ptr %74, align 8
  br label %75

75:                                               ; preds = %60
  %76 = load i32, ptr %21, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %21, align 4
  br label %56, !llvm.loop !7

78:                                               ; preds = %56
  %79 = load i32, ptr %19, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, ptr %19, align 4
  store i32 0, ptr %22, align 4
  br label %81

81:                                               ; preds = %100, %78
  %82 = load i32, ptr %22, align 4
  %83 = load i32, ptr %19, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load i32, ptr %22, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 %87
  %89 = load <4 x float>, ptr %88, align 8
  %90 = load i32, ptr %19, align 4
  %91 = load i32, ptr %22, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 %93
  %95 = load <4 x float>, ptr %94, align 8
  %96 = fadd <4 x float> %89, %95
  %97 = load i32, ptr %22, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 %98
  store <4 x float> %96, ptr %99, align 8
  br label %100

100:                                              ; preds = %85
  %101 = load i32, ptr %22, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %22, align 4
  br label %81, !llvm.loop !8

103:                                              ; preds = %81
  %104 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 0
  %105 = load <4 x float>, ptr %104, align 8
  store <4 x float> %105, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %106 = load <4 x float>, ptr %5, align 8
  %107 = load i32, ptr %6, align 4
  %108 = and i32 %107, 3
  %109 = extractelement <4 x float> %106, i32 %108
  %110 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 0
  %111 = load <4 x float>, ptr %110, align 8
  store <4 x float> %111, ptr %7, align 8
  store i32 1, ptr %8, align 4
  %112 = load <4 x float>, ptr %7, align 8
  %113 = load i32, ptr %8, align 4
  %114 = and i32 %113, 3
  %115 = extractelement <4 x float> %112, i32 %114
  %116 = fadd float %109, %115
  %117 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 0
  %118 = load <4 x float>, ptr %117, align 8
  store <4 x float> %118, ptr %9, align 8
  store i32 2, ptr %10, align 4
  %119 = load <4 x float>, ptr %9, align 8
  %120 = load i32, ptr %10, align 4
  %121 = and i32 %120, 3
  %122 = extractelement <4 x float> %119, i32 %121
  %123 = fadd float %116, %122
  %124 = getelementptr inbounds [8 x <4 x float>], ptr %17, i64 0, i64 0
  %125 = load <4 x float>, ptr %124, align 8
  store <4 x float> %125, ptr %11, align 8
  store i32 3, ptr %12, align 4
  %126 = load <4 x float>, ptr %11, align 8
  %127 = load i32, ptr %12, align 4
  %128 = and i32 %127, 3
  %129 = extractelement <4 x float> %126, i32 %128
  %130 = fadd float %123, %129
  store float %130, ptr %18, align 4
  %131 = load float, ptr %18, align 4
  ret float %131
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
