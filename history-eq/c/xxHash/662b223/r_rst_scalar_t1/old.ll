; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/662b223/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/662b223/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rst_seed(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %0, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = add i64 %0, -4734510112055689544
  %6 = sub i64 2066345149520216444, %0
  %7 = add i64 %0, -2623469361688619810
  %8 = sub i64 2262974939099578482, %0
  %9 = add i64 %0, 8711581037947681227
  %10 = sub i64 2410270004345854594, %0
  %11 = add i64 %0, -8204357891075471176
  %12 = sub i64 5487137525590930912, %0
  %13 = add i64 %0, -3818837453329782724
  %14 = sub i64 -6688317018830679928, %0
  %15 = add i64 %0, 5690594596133299313
  %16 = sub i64 -2833645246901970632, %0
  %17 = add i64 %0, 4554437623014685352
  %18 = sub i64 2111919702937427193, %0
  %19 = add i64 %0, 3556072174620004746
  %20 = sub i64 7238261902898274248, %0
  %21 = add i64 %0, -4329134394285701654
  %22 = sub i64 -1485321483350670907, %0
  %23 = add i64 %0, 5321830579834785047
  %24 = sub i64 -7032137544937171245, %0
  %25 = add i64 %0, -242834301215959509
  %26 = sub i64 -3588858202114426737, %0
  %27 = add i64 %0, 2883454493032893253
  %28 = sub i64 9097354517224871855, %0
  br label %29

29:                                               ; preds = %2, %4
  %30 = phi i64 [ %5, %4 ], [ -4734510112055689544, %2 ]
  %31 = phi i64 [ %6, %4 ], [ 2066345149520216444, %2 ]
  %32 = phi i64 [ %7, %4 ], [ -2623469361688619810, %2 ]
  %33 = phi i64 [ %8, %4 ], [ 2262974939099578482, %2 ]
  %34 = phi i64 [ %9, %4 ], [ 8711581037947681227, %2 ]
  %35 = phi i64 [ %10, %4 ], [ 2410270004345854594, %2 ]
  %36 = phi i64 [ %11, %4 ], [ -8204357891075471176, %2 ]
  %37 = phi i64 [ %12, %4 ], [ 5487137525590930912, %2 ]
  %38 = phi i64 [ %13, %4 ], [ -3818837453329782724, %2 ]
  %39 = phi i64 [ %14, %4 ], [ -6688317018830679928, %2 ]
  %40 = phi i64 [ %15, %4 ], [ 5690594596133299313, %2 ]
  %41 = phi i64 [ %16, %4 ], [ -2833645246901970632, %2 ]
  %42 = phi i64 [ %17, %4 ], [ 4554437623014685352, %2 ]
  %43 = phi i64 [ %18, %4 ], [ 2111919702937427193, %2 ]
  %44 = phi i64 [ %19, %4 ], [ 3556072174620004746, %2 ]
  %45 = phi i64 [ %20, %4 ], [ 7238261902898274248, %2 ]
  %46 = phi i64 [ %21, %4 ], [ -4329134394285701654, %2 ]
  %47 = phi i64 [ %22, %4 ], [ -1485321483350670907, %2 ]
  %48 = phi i64 [ %23, %4 ], [ 5321830579834785047, %2 ]
  %49 = phi i64 [ %24, %4 ], [ -7032137544937171245, %2 ]
  %50 = phi i64 [ %25, %4 ], [ -242834301215959509, %2 ]
  %51 = phi i64 [ %26, %4 ], [ -3588858202114426737, %2 ]
  %52 = phi i64 [ %27, %4 ], [ 2883454493032893253, %2 ]
  %53 = phi i64 [ %28, %4 ], [ 9097354517224871855, %2 ]
  store i64 %30, ptr %1, align 8
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %31, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %32, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %33, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %34, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %35, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %36, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %37, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %38, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %39, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %40, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %41, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %42, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %43, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %44, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %45, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %46, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %47, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %48, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %49, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %50, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %51, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 %52, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %53, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 3266489917, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 -7046029288634856825, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 -4417276706812531889, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 1609587929392839161, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 -8796714831421723037, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i64 2246822519, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 2870177450012600261, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 2654435761, ptr %84, align 8
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %85, i8 0, i64 16, i1 false)
  store i64 %0, ptr %86, align 8
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 128, ptr %87, align 8
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i64 16, ptr %88, align 8
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 0, ptr %89, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
