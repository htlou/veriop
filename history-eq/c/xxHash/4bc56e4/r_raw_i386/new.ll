; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4bc56e4/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4bc56e4/wrap_raw.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: nounwind
define dso_local void @target_raw_len_9to16_128b(i64 noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef writeonly %12) local_unnamed_addr #0 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [16 x i8], align 64
  %21 = alloca [64 x i8], align 64
  %22 = alloca [8 x i64], align 8
  store i64 %0, ptr %18, align 8
  store i64 %1, ptr %19, align 8
  %23 = add i32 %2, -17
  %24 = icmp ult i32 %23, -8
  br i1 %24, label %110, label %25

25:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #4
  %26 = call ptr @memcpy(ptr noundef nonnull %20, ptr noundef nonnull %18, i32 noundef 8) #5
  %27 = getelementptr inbounds nuw i8, ptr %20, i32 8
  %28 = call ptr @memcpy(ptr noundef nonnull %27, ptr noundef nonnull %19, i32 noundef 8) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #4
  store i64 %3, ptr %22, align 8
  %29 = getelementptr inbounds nuw i8, ptr %22, i32 8
  store i64 %4, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %22, i32 16
  store i64 %5, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %22, i32 24
  store i64 %6, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %22, i32 32
  store i64 %7, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %22, i32 40
  store i64 %8, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %22, i32 48
  store i64 %9, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %22, i32 56
  store i64 %10, ptr %35, align 8
  %36 = call ptr @memcpy(ptr noundef nonnull %21, ptr noundef nonnull %22, i32 noundef 64) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  %37 = call ptr @memcpy(ptr noundef nonnull %17, ptr noundef nonnull %20, i32 noundef 8) #5
  %38 = load i64, ptr %17, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  %39 = call ptr @memcpy(ptr noundef nonnull %16, ptr noundef nonnull %21, i32 noundef 8) #5
  %40 = load i64, ptr %16, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  %41 = xor i64 %40, %38
  %42 = getelementptr inbounds nuw i8, ptr %20, i32 %2
  %43 = getelementptr inbounds i8, ptr %42, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  %44 = call ptr @memcpy(ptr noundef nonnull %15, ptr noundef nonnull %43, i32 noundef 8) #5
  %45 = load i64, ptr %15, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  %46 = getelementptr inbounds nuw i8, ptr %21, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  %47 = call ptr @memcpy(ptr noundef nonnull %14, ptr noundef nonnull %46, i32 noundef 8) #5
  %48 = load i64, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  %49 = sub i64 %48, %11
  %50 = xor i64 %49, %45
  %51 = xor i64 %41, %50
  %52 = and i64 %51, 4294967295
  %53 = mul nuw i64 %52, 2246822535
  %54 = lshr i64 %51, 32
  %55 = mul nuw i64 %54, 2246822535
  %56 = mul nuw i64 %52, 2654435761
  %57 = mul nuw i64 %54, 2654435761
  %58 = lshr i64 %53, 32
  %59 = and i64 %55, 4294967295
  %60 = add nuw i64 %59, %56
  %61 = add nuw i64 %60, %58
  %62 = lshr i64 %55, 32
  %63 = lshr i64 %61, 32
  %64 = shl i64 %61, 32
  %65 = and i64 %53, 4294967295
  %66 = add nsw i32 %2, -1
  %67 = zext nneg i32 %66 to i64
  %68 = shl nuw nsw i64 %67, 54
  %69 = or disjoint i64 %65, %68
  %70 = add i64 %69, %64
  %71 = and i64 %50, -4294967296
  %72 = and i64 %50, 4294967295
  %73 = mul nuw i64 %72, 2246822519
  %74 = add i64 %73, %71
  %75 = add i64 %74, %57
  %76 = add i64 %75, %62
  %77 = add i64 %76, %63
  %78 = call noundef i64 @llvm.bswap.i64(i64 %77)
  %79 = xor i64 %78, %70
  %80 = and i64 %79, 4294967295
  %81 = mul nuw nsw i64 %80, 668265295
  %82 = lshr i64 %79, 32
  %83 = mul nuw nsw i64 %82, 668265295
  %84 = mul nuw i64 %80, 3266489917
  %85 = mul nuw i64 %82, 3266489917
  %86 = lshr i64 %81, 32
  %87 = and i64 %83, 4294967295
  %88 = add nuw i64 %87, %84
  %89 = add nuw i64 %88, %86
  %90 = lshr i64 %83, 32
  %91 = lshr i64 %89, 32
  %92 = shl i64 %89, 32
  %93 = and i64 %81, 4294967295
  %94 = or disjoint i64 %92, %93
  %95 = mul i64 %77, -4417276706812531889
  %96 = add i64 %85, %95
  %97 = add i64 %96, %90
  %98 = add i64 %97, %91
  %99 = lshr i64 %92, 37
  %100 = xor i64 %99, %94
  %101 = mul i64 %100, 1609587791953885689
  %102 = lshr i64 %101, 32
  %103 = xor i64 %102, %101
  %104 = lshr i64 %98, 37
  %105 = xor i64 %104, %98
  %106 = mul i64 %105, 1609587791953885689
  %107 = lshr i64 %106, 32
  %108 = xor i64 %107, %106
  store i64 %103, ptr %12, align 4
  %109 = getelementptr inbounds nuw i8, ptr %12, i32 8
  store i64 %108, ptr %109, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #4
  br label %110

110:                                              ; preds = %13, %25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

declare ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_len_9to16_128b: argument 0"}
!7 = distinct !{!7, !"XXH3_len_9to16_128b"}
