; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0e47911/api_stream32_len33/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0e47911/api_stream32_len33/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @target_stream(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.XXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #4
  store i64 4294967329, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %10 = add i32 %1, 1640531535
  %11 = add i32 %1, -2048144777
  %12 = add i32 %1, 606290984
  %13 = load i32, ptr %0, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %12
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %19 = load i32, ptr %18, align 1
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %11
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %25 = load i32, ptr %24, align 1
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %26, %1
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %31 = load i32, ptr %30, align 1
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %10
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %37 = load i32, ptr %36, align 1
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %17
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %43 = load i32, ptr %42, align 1
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %23
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %49 = load i32, ptr %48, align 1
  %50 = mul i32 %49, -2048144777
  %51 = add i32 %50, %29
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %35
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  store i32 %41, ptr %9, align 8
  store i32 %47, ptr %8, align 4
  store i32 %53, ptr %7, align 8
  store i32 %59, ptr %6, align 4
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %61 = load i8, ptr %60, align 1
  store i8 %61, ptr %4, align 8
  store i32 1, ptr %5, align 8
  %62 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 1)
  %63 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 7)
  %64 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 12)
  %65 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 18)
  %66 = add i32 %62, 33
  %67 = add i32 %66, %63
  %68 = add i32 %67, %64
  %69 = add i32 %68, %65
  br label %70

70:                                               ; preds = %70, %2
  %71 = phi i32 [ %79, %70 ], [ %69, %2 ]
  %72 = phi ptr [ %80, %70 ], [ %4, %2 ]
  %73 = phi i64 [ %81, %70 ], [ 0, %2 ]
  %74 = load i8, ptr %72, align 1
  %75 = zext i8 %74 to i32
  %76 = mul i32 %75, 374761393
  %77 = add i32 %76, %71
  %78 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 11)
  %79 = mul i32 %78, -1640531535
  %80 = getelementptr inbounds nuw i8, ptr %72, i64 1
  %81 = add i64 %73, 1
  %82 = icmp eq i64 %73, 0
  br i1 %82, label %83, label %70

83:                                               ; preds = %70
  %84 = lshr i32 %79, 15
  %85 = xor i32 %84, %79
  %86 = mul i32 %85, -2048144777
  %87 = lshr i32 %86, 13
  %88 = xor i32 %87, %86
  %89 = mul i32 %88, -1028477379
  %90 = lshr i32 %89, 16
  %91 = xor i32 %90, %89
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #4
  ret i32 %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
