; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/40040eb/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/40040eb/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 8 x i16> @target_u16_raw(<vscale x 8 x i16> %0, i16 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i16 %1, 0
  %5 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  br i1 %4, label %17, label %6

6:                                                ; preds = %3
  %7 = insertelement <vscale x 8 x i16> poison, i16 %1, i64 0
  %8 = shufflevector <vscale x 8 x i16> %7, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %9 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.umulh.u.nxv8i16(<vscale x 8 x i1> %5, <vscale x 8 x i16> %0, <vscale x 8 x i16> %8)
  %10 = and i8 %2, 64
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = and i8 %2, 31
  %14 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.sub.u.nxv8i16(<vscale x 8 x i1> %5, <vscale x 8 x i16> %0, <vscale x 8 x i16> %9)
  %15 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.lsr.u.nxv8i16(<vscale x 8 x i1> %5, <vscale x 8 x i16> %14, <vscale x 8 x i16> splat (i16 1))
  %16 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.u.nxv8i16(<vscale x 8 x i1> %5, <vscale x 8 x i16> %15, <vscale x 8 x i16> %9)
  br label %17

17:                                               ; preds = %6, %3, %12
  %18 = phi i8 [ %13, %12 ], [ %2, %3 ], [ %2, %6 ]
  %19 = phi <vscale x 8 x i16> [ %16, %12 ], [ %0, %3 ], [ %9, %6 ]
  %20 = zext i8 %18 to i64
  %21 = insertelement <vscale x 2 x i64> poison, i64 %20, i64 0
  %22 = shufflevector <vscale x 2 x i64> %21, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %23 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.lsr.wide.nxv8i16(<vscale x 8 x i1> %5, <vscale x 8 x i16> %19, <vscale x 2 x i64> %22)
  ret <vscale x 8 x i16> %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 8 x i16> @target_u16_bf_raw(<vscale x 8 x i16> %0, i16 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  %5 = insertelement <vscale x 8 x i16> poison, i16 %1, i64 0
  %6 = shufflevector <vscale x 8 x i16> %5, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %7 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.umulh.u.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %0, <vscale x 8 x i16> %6)
  %8 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.sub.u.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %0, <vscale x 8 x i16> %7)
  %9 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.lsr.u.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %8, <vscale x 8 x i16> splat (i16 1))
  %10 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.u.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %9, <vscale x 8 x i16> %7)
  %11 = zext i8 %2 to i64
  %12 = insertelement <vscale x 2 x i64> poison, i64 %11, i64 0
  %13 = shufflevector <vscale x 2 x i64> %12, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %14 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.lsr.wide.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %10, <vscale x 2 x i64> %13)
  ret <vscale x 8 x i16> %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 4 x i32> @target_u32_raw(<vscale x 4 x i32> %0, i32 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  %5 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  br i1 %4, label %17, label %6

6:                                                ; preds = %3
  %7 = insertelement <vscale x 4 x i32> poison, i32 %1, i64 0
  %8 = shufflevector <vscale x 4 x i32> %7, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %9 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.umulh.u.nxv4i32(<vscale x 4 x i1> %5, <vscale x 4 x i32> %0, <vscale x 4 x i32> %8)
  %10 = and i8 %2, 64
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = and i8 %2, 31
  %14 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.sub.u.nxv4i32(<vscale x 4 x i1> %5, <vscale x 4 x i32> %0, <vscale x 4 x i32> %9)
  %15 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.lsr.u.nxv4i32(<vscale x 4 x i1> %5, <vscale x 4 x i32> %14, <vscale x 4 x i32> splat (i32 1))
  %16 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.u.nxv4i32(<vscale x 4 x i1> %5, <vscale x 4 x i32> %15, <vscale x 4 x i32> %9)
  br label %17

17:                                               ; preds = %6, %3, %12
  %18 = phi i8 [ %13, %12 ], [ %2, %3 ], [ %2, %6 ]
  %19 = phi <vscale x 4 x i32> [ %16, %12 ], [ %0, %3 ], [ %9, %6 ]
  %20 = zext i8 %18 to i64
  %21 = insertelement <vscale x 2 x i64> poison, i64 %20, i64 0
  %22 = shufflevector <vscale x 2 x i64> %21, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %23 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.lsr.wide.nxv4i32(<vscale x 4 x i1> %5, <vscale x 4 x i32> %19, <vscale x 2 x i64> %22)
  ret <vscale x 4 x i32> %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 4 x i32> @target_u32_bf_raw(<vscale x 4 x i32> %0, i32 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %5 = insertelement <vscale x 4 x i32> poison, i32 %1, i64 0
  %6 = shufflevector <vscale x 4 x i32> %5, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %7 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.umulh.u.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %0, <vscale x 4 x i32> %6)
  %8 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.sub.u.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %0, <vscale x 4 x i32> %7)
  %9 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.lsr.u.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %8, <vscale x 4 x i32> splat (i32 1))
  %10 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.u.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %9, <vscale x 4 x i32> %7)
  %11 = zext i8 %2 to i64
  %12 = insertelement <vscale x 2 x i64> poison, i64 %11, i64 0
  %13 = shufflevector <vscale x 2 x i64> %12, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %14 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.lsr.wide.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %10, <vscale x 2 x i64> %13)
  ret <vscale x 4 x i32> %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 2 x i64> @target_u64_raw(<vscale x 2 x i64> %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  %5 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  br i1 %4, label %17, label %6

6:                                                ; preds = %3
  %7 = insertelement <vscale x 2 x i64> poison, i64 %1, i64 0
  %8 = shufflevector <vscale x 2 x i64> %7, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %9 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.umulh.u.nxv2i64(<vscale x 2 x i1> %5, <vscale x 2 x i64> %0, <vscale x 2 x i64> %8)
  %10 = and i8 %2, 64
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = and i8 %2, 63
  %14 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.sub.u.nxv2i64(<vscale x 2 x i1> %5, <vscale x 2 x i64> %0, <vscale x 2 x i64> %9)
  %15 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %5, <vscale x 2 x i64> %14, <vscale x 2 x i64> splat (i64 1))
  %16 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %5, <vscale x 2 x i64> %15, <vscale x 2 x i64> %9)
  br label %17

17:                                               ; preds = %6, %3, %12
  %18 = phi i8 [ %13, %12 ], [ %2, %3 ], [ %2, %6 ]
  %19 = phi <vscale x 2 x i64> [ %16, %12 ], [ %0, %3 ], [ %9, %6 ]
  %20 = zext i8 %18 to i64
  %21 = insertelement <vscale x 2 x i64> poison, i64 %20, i64 0
  %22 = shufflevector <vscale x 2 x i64> %21, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %23 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %5, <vscale x 2 x i64> %19, <vscale x 2 x i64> %22)
  ret <vscale x 2 x i64> %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 2 x i64> @target_u64_bf_raw(<vscale x 2 x i64> %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %5 = insertelement <vscale x 2 x i64> poison, i64 %1, i64 0
  %6 = shufflevector <vscale x 2 x i64> %5, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %7 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.umulh.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %0, <vscale x 2 x i64> %6)
  %8 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.sub.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %0, <vscale x 2 x i64> %7)
  %9 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %8, <vscale x 2 x i64> splat (i64 1))
  %10 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %9, <vscale x 2 x i64> %7)
  %11 = zext i8 %2 to i64
  %12 = insertelement <vscale x 2 x i64> poison, i64 %11, i64 0
  %13 = shufflevector <vscale x 2 x i64> %12, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %14 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %10, <vscale x 2 x i64> %13)
  ret <vscale x 2 x i64> %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 8 x i16> @target_u16_api(<vscale x 8 x i16> %0, i16 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  %6 = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %1, i1 true)
  %7 = trunc nuw nsw i16 %6 to i8
  %8 = xor i8 %7, 15
  %9 = add nuw nsw i32 %5, 65535
  %10 = and i32 %9, %5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  %13 = zext nneg i8 %8 to i32
  %14 = shl nuw i32 65536, %13
  %15 = udiv i32 %14, %5
  %16 = trunc i32 %15 to i16
  %17 = mul i16 %1, %16
  %18 = add i16 %17, %1
  %19 = zext i16 %18 to i32
  %20 = lshr i32 %19, %13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = sub i16 0, %17
  %24 = shl i16 %16, 1
  %25 = shl i16 %23, 1
  %26 = icmp uge i16 %25, %1
  %27 = icmp slt i16 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i16
  %30 = or disjoint i16 %24, %29
  %31 = or disjoint i8 %8, 64
  br label %32

32:                                               ; preds = %12, %22
  %33 = phi i16 [ %30, %22 ], [ %16, %12 ]
  %34 = phi i8 [ %31, %22 ], [ %8, %12 ]
  %35 = add i16 %33, 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %4, %32
  %38 = phi i8 [ %34, %32 ], [ %8, %4 ]
  %39 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  %40 = zext nneg i8 %38 to i64
  %41 = insertelement <vscale x 2 x i64> poison, i64 %40, i64 0
  %42 = shufflevector <vscale x 2 x i64> %41, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %43 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.lsr.wide.nxv8i16(<vscale x 8 x i1> %39, <vscale x 8 x i16> %0, <vscale x 2 x i64> %42)
  br label %65

44:                                               ; preds = %32
  %45 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  %46 = insertelement <vscale x 8 x i16> poison, i16 %35, i64 0
  %47 = shufflevector <vscale x 8 x i16> %46, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %48 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.umulh.u.nxv8i16(<vscale x 8 x i1> %45, <vscale x 8 x i16> %0, <vscale x 8 x i16> %47)
  %49 = and i8 %34, 64
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %44
  %52 = and i8 %34, 31
  %53 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.sub.u.nxv8i16(<vscale x 8 x i1> %45, <vscale x 8 x i16> %0, <vscale x 8 x i16> %48)
  %54 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.lsr.u.nxv8i16(<vscale x 8 x i1> %45, <vscale x 8 x i16> %53, <vscale x 8 x i16> splat (i16 1))
  %55 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.u.nxv8i16(<vscale x 8 x i1> %45, <vscale x 8 x i16> %54, <vscale x 8 x i16> %48)
  %56 = zext nneg i8 %52 to i64
  %57 = insertelement <vscale x 2 x i64> poison, i64 %56, i64 0
  %58 = shufflevector <vscale x 2 x i64> %57, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %59 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.lsr.wide.nxv8i16(<vscale x 8 x i1> %45, <vscale x 8 x i16> %55, <vscale x 2 x i64> %58)
  br label %65

60:                                               ; preds = %44
  %61 = zext nneg i8 %34 to i64
  %62 = insertelement <vscale x 2 x i64> poison, i64 %61, i64 0
  %63 = shufflevector <vscale x 2 x i64> %62, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %64 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.lsr.wide.nxv8i16(<vscale x 8 x i1> %45, <vscale x 8 x i16> %48, <vscale x 2 x i64> %63)
  br label %65

65:                                               ; preds = %60, %51, %37, %2
  %66 = phi <vscale x 8 x i16> [ %0, %2 ], [ %43, %37 ], [ %59, %51 ], [ %64, %60 ]
  ret <vscale x 8 x i16> %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 8 x i16> @target_u16_bf_api(<vscale x 8 x i16> %0, i16 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i16 %1, 2
  br i1 %3, label %45, label %4

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  %6 = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %1, i1 true)
  %7 = trunc nuw nsw i16 %6 to i8
  %8 = add nuw nsw i32 %5, 65535
  %9 = and i32 %8, %5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = sub nuw nsw i8 14, %7
  br label %31

13:                                               ; preds = %4
  %14 = xor i8 %7, 15
  %15 = zext nneg i8 %14 to i16
  %16 = shl nuw i16 1, %15
  %17 = zext i16 %16 to i32
  %18 = shl nuw i32 %17, 16
  %19 = udiv i32 %18, %5
  %20 = trunc i32 %19 to i16
  %21 = mul i16 %1, %20
  %22 = sub i16 0, %21
  %23 = shl i16 %20, 1
  %24 = shl i16 %22, 1
  %25 = icmp uge i16 %24, %1
  %26 = icmp slt i16 %22, 0
  %27 = or i1 %26, %25
  %28 = zext i1 %27 to i16
  %29 = or disjoint i16 %23, 1
  %30 = add i16 %29, %28
  br label %31

31:                                               ; preds = %11, %13
  %32 = phi i16 [ 0, %11 ], [ %30, %13 ]
  %33 = phi i8 [ %12, %11 ], [ %14, %13 ]
  %34 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  %35 = insertelement <vscale x 8 x i16> poison, i16 %32, i64 0
  %36 = shufflevector <vscale x 8 x i16> %35, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %37 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.umulh.u.nxv8i16(<vscale x 8 x i1> %34, <vscale x 8 x i16> %0, <vscale x 8 x i16> %36)
  %38 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.sub.u.nxv8i16(<vscale x 8 x i1> %34, <vscale x 8 x i16> %0, <vscale x 8 x i16> %37)
  %39 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.lsr.u.nxv8i16(<vscale x 8 x i1> %34, <vscale x 8 x i16> %38, <vscale x 8 x i16> splat (i16 1))
  %40 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.u.nxv8i16(<vscale x 8 x i1> %34, <vscale x 8 x i16> %39, <vscale x 8 x i16> %37)
  %41 = zext nneg i8 %33 to i64
  %42 = insertelement <vscale x 2 x i64> poison, i64 %41, i64 0
  %43 = shufflevector <vscale x 2 x i64> %42, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %44 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.lsr.wide.nxv8i16(<vscale x 8 x i1> %34, <vscale x 8 x i16> %40, <vscale x 2 x i64> %43)
  br label %45

45:                                               ; preds = %2, %31
  %46 = phi <vscale x 8 x i16> [ %44, %31 ], [ %0, %2 ]
  ret <vscale x 8 x i16> %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 4 x i32> @target_u32_api(<vscale x 4 x i32> %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %67, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = trunc nuw nsw i32 %6 to i8
  br label %39

11:                                               ; preds = %4
  %12 = shl nuw i32 1, %6
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 %13, 32
  %15 = zext i32 %1 to i64
  %16 = udiv i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = mul i32 %1, %17
  %19 = add i32 %18, %1
  %20 = icmp ult i32 %19, %12
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = trunc nuw nsw i32 %6 to i8
  br label %34

23:                                               ; preds = %11
  %24 = sub i32 0, %18
  %25 = shl i32 %17, 1
  %26 = shl i32 %24, 1
  %27 = icmp uge i32 %26, %1
  %28 = icmp slt i32 %24, 0
  %29 = or i1 %28, %27
  %30 = zext i1 %29 to i32
  %31 = or disjoint i32 %25, %30
  %32 = trunc nuw nsw i32 %6 to i8
  %33 = or disjoint i8 %32, 64
  br label %34

34:                                               ; preds = %21, %23
  %35 = phi i32 [ %31, %23 ], [ %17, %21 ]
  %36 = phi i8 [ %33, %23 ], [ %22, %21 ]
  %37 = add i32 %35, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %9, %34
  %40 = phi i8 [ %10, %9 ], [ %36, %34 ]
  %41 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %42 = zext nneg i8 %40 to i64
  %43 = insertelement <vscale x 2 x i64> poison, i64 %42, i64 0
  %44 = shufflevector <vscale x 2 x i64> %43, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %45 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.lsr.wide.nxv4i32(<vscale x 4 x i1> %41, <vscale x 4 x i32> %0, <vscale x 2 x i64> %44)
  br label %67

46:                                               ; preds = %34
  %47 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %48 = insertelement <vscale x 4 x i32> poison, i32 %37, i64 0
  %49 = shufflevector <vscale x 4 x i32> %48, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %50 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.umulh.u.nxv4i32(<vscale x 4 x i1> %47, <vscale x 4 x i32> %0, <vscale x 4 x i32> %49)
  %51 = and i8 %36, 64
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = and i8 %36, 31
  %55 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.sub.u.nxv4i32(<vscale x 4 x i1> %47, <vscale x 4 x i32> %0, <vscale x 4 x i32> %50)
  %56 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.lsr.u.nxv4i32(<vscale x 4 x i1> %47, <vscale x 4 x i32> %55, <vscale x 4 x i32> splat (i32 1))
  %57 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.u.nxv4i32(<vscale x 4 x i1> %47, <vscale x 4 x i32> %56, <vscale x 4 x i32> %50)
  %58 = zext nneg i8 %54 to i64
  %59 = insertelement <vscale x 2 x i64> poison, i64 %58, i64 0
  %60 = shufflevector <vscale x 2 x i64> %59, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %61 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.lsr.wide.nxv4i32(<vscale x 4 x i1> %47, <vscale x 4 x i32> %57, <vscale x 2 x i64> %60)
  br label %67

62:                                               ; preds = %46
  %63 = zext nneg i8 %36 to i64
  %64 = insertelement <vscale x 2 x i64> poison, i64 %63, i64 0
  %65 = shufflevector <vscale x 2 x i64> %64, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %66 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.lsr.wide.nxv4i32(<vscale x 4 x i1> %47, <vscale x 4 x i32> %50, <vscale x 2 x i64> %65)
  br label %67

67:                                               ; preds = %62, %53, %39, %2
  %68 = phi <vscale x 4 x i32> [ %0, %2 ], [ %45, %39 ], [ %61, %53 ], [ %66, %62 ]
  ret <vscale x 4 x i32> %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 4 x i32> @target_u32_bf_api(<vscale x 4 x i32> %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %1)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = zext nneg i32 %5 to i64
  %10 = sub nuw nsw i64 30, %9
  br label %30

11:                                               ; preds = %4
  %12 = xor i32 %5, 31
  %13 = shl nuw i32 1, %12
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = zext i32 %1 to i64
  %17 = udiv i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = mul i32 %1, %18
  %20 = sub i32 0, %19
  %21 = shl i32 %18, 1
  %22 = shl i32 %20, 1
  %23 = icmp uge i32 %22, %1
  %24 = icmp slt i32 %20, 0
  %25 = or i1 %24, %23
  %26 = zext i1 %25 to i32
  %27 = zext nneg i32 %12 to i64
  %28 = or disjoint i32 %21, 1
  %29 = add i32 %28, %26
  br label %30

30:                                               ; preds = %8, %11
  %31 = phi i32 [ 0, %8 ], [ %29, %11 ]
  %32 = phi i64 [ %10, %8 ], [ %27, %11 ]
  %33 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %34 = insertelement <vscale x 4 x i32> poison, i32 %31, i64 0
  %35 = shufflevector <vscale x 4 x i32> %34, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %36 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.umulh.u.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %0, <vscale x 4 x i32> %35)
  %37 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.sub.u.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %0, <vscale x 4 x i32> %36)
  %38 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.lsr.u.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %37, <vscale x 4 x i32> splat (i32 1))
  %39 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.u.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %38, <vscale x 4 x i32> %36)
  %40 = insertelement <vscale x 2 x i64> poison, i64 %32, i64 0
  %41 = shufflevector <vscale x 2 x i64> %40, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %42 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.lsr.wide.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %39, <vscale x 2 x i64> %41)
  br label %43

43:                                               ; preds = %2, %30
  %44 = phi <vscale x 4 x i32> [ %42, %30 ], [ %0, %2 ]
  ret <vscale x 4 x i32> %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 2 x i64> @target_u64_api(<vscale x 2 x i64> %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %104, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = trunc nuw nsw i32 %7 to i8
  br label %76

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = shl i64 %1, %5
  %18 = shl i64 %14, %5
  %19 = lshr i64 %17, 32
  %20 = freeze i64 %18
  %21 = freeze i64 %19
  %22 = udiv i64 %20, %21
  %23 = mul i64 %22, %21
  %24 = sub i64 %20, %23
  %25 = and i64 %17, 4294967295
  %26 = mul i64 %22, %25
  %27 = shl nuw i64 %24, 32
  %28 = icmp ugt i64 %26, %27
  %29 = sub nuw i64 %26, %27
  %30 = icmp ugt i64 %29, %17
  %31 = select i1 %30, i64 4294967294, i64 4294967295
  %32 = select i1 %28, i64 %31, i64 0
  %33 = add i64 %32, %22
  %34 = shl i64 %18, 32
  %35 = and i64 %33, 4294967295
  %36 = mul i64 %35, %17
  %37 = sub i64 %34, %36
  %38 = freeze i64 %37
  %39 = freeze i64 %19
  %40 = udiv i64 %38, %39
  %41 = mul i64 %40, %39
  %42 = sub i64 %38, %41
  %43 = mul i64 %40, %25
  %44 = shl nuw i64 %42, 32
  %45 = icmp ugt i64 %43, %44
  %46 = sub nuw i64 %43, %44
  %47 = icmp ugt i64 %46, %17
  %48 = select i1 %47, i64 4294967294, i64 4294967295
  %49 = select i1 %45, i64 %48, i64 0
  %50 = add i64 %49, %40
  %51 = shl nuw i64 %35, 32
  %52 = and i64 %50, 4294967295
  %53 = or disjoint i64 %52, %51
  %54 = mul i64 %1, %53
  %55 = sub i64 0, %54
  br label %56

56:                                               ; preds = %12, %16
  %57 = phi i64 [ %55, %16 ], [ -1, %12 ]
  %58 = phi i64 [ %53, %16 ], [ -1, %12 ]
  %59 = sub i64 %1, %57
  %60 = icmp ult i64 %59, %14
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  %62 = shl i64 %58, 1
  %63 = shl i64 %57, 1
  %64 = icmp uge i64 %63, %1
  %65 = icmp slt i64 %57, 0
  %66 = or i1 %65, %64
  %67 = zext i1 %66 to i64
  %68 = or disjoint i64 %62, %67
  %69 = or disjoint i32 %7, 64
  br label %70

70:                                               ; preds = %56, %61
  %71 = phi i32 [ %69, %61 ], [ %7, %56 ]
  %72 = phi i64 [ %68, %61 ], [ %58, %56 ]
  %73 = add i64 %72, 1
  %74 = trunc nuw nsw i32 %71 to i8
  %75 = icmp eq i64 %73, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %10, %70
  %77 = phi i8 [ %11, %10 ], [ %74, %70 ]
  %78 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %79 = zext nneg i8 %77 to i64
  %80 = insertelement <vscale x 2 x i64> poison, i64 %79, i64 0
  %81 = shufflevector <vscale x 2 x i64> %80, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %82 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %78, <vscale x 2 x i64> %0, <vscale x 2 x i64> %81)
  br label %104

83:                                               ; preds = %70
  %84 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %85 = insertelement <vscale x 2 x i64> poison, i64 %73, i64 0
  %86 = shufflevector <vscale x 2 x i64> %85, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %87 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.umulh.u.nxv2i64(<vscale x 2 x i1> %84, <vscale x 2 x i64> %0, <vscale x 2 x i64> %86)
  %88 = and i8 %74, 64
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %83
  %91 = and i8 %74, 63
  %92 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.sub.u.nxv2i64(<vscale x 2 x i1> %84, <vscale x 2 x i64> %0, <vscale x 2 x i64> %87)
  %93 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %84, <vscale x 2 x i64> %92, <vscale x 2 x i64> splat (i64 1))
  %94 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %84, <vscale x 2 x i64> %93, <vscale x 2 x i64> %87)
  %95 = zext nneg i8 %91 to i64
  %96 = insertelement <vscale x 2 x i64> poison, i64 %95, i64 0
  %97 = shufflevector <vscale x 2 x i64> %96, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %98 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %84, <vscale x 2 x i64> %94, <vscale x 2 x i64> %97)
  br label %104

99:                                               ; preds = %83
  %100 = zext nneg i32 %71 to i64
  %101 = insertelement <vscale x 2 x i64> poison, i64 %100, i64 0
  %102 = shufflevector <vscale x 2 x i64> %101, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %103 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %84, <vscale x 2 x i64> %87, <vscale x 2 x i64> %102)
  br label %104

104:                                              ; preds = %99, %90, %76, %2
  %105 = phi <vscale x 2 x i64> [ %0, %2 ], [ %82, %76 ], [ %98, %90 ], [ %103, %99 ]
  ret <vscale x 2 x i64> %105
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 2 x i64> @target_u64_bf_api(<vscale x 2 x i64> %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %81, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = sub nuw nsw i32 62, %6
  br label %67

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = icmp ult i64 %14, %1
  br i1 %15, label %16, label %58

16:                                               ; preds = %12
  %17 = shl i64 %1, %5
  %18 = shl i64 %14, %5
  %19 = lshr i64 %17, 32
  %20 = freeze i64 %18
  %21 = freeze i64 %19
  %22 = udiv i64 %20, %21
  %23 = mul i64 %22, %21
  %24 = sub i64 %20, %23
  %25 = and i64 %17, 4294967295
  %26 = mul i64 %22, %25
  %27 = shl nuw i64 %24, 32
  %28 = icmp ugt i64 %26, %27
  %29 = sub nuw i64 %26, %27
  %30 = icmp ugt i64 %29, %17
  %31 = select i1 %30, i64 4294967294, i64 4294967295
  %32 = select i1 %28, i64 %31, i64 0
  %33 = add i64 %32, %22
  %34 = shl i64 %18, 32
  %35 = and i64 %33, 4294967295
  %36 = mul i64 %35, %17
  %37 = sub i64 %34, %36
  %38 = freeze i64 %37
  %39 = freeze i64 %19
  %40 = udiv i64 %38, %39
  %41 = mul i64 %40, %39
  %42 = sub i64 %38, %41
  %43 = mul i64 %40, %25
  %44 = shl nuw i64 %42, 32
  %45 = icmp ugt i64 %43, %44
  %46 = sub nuw i64 %43, %44
  %47 = icmp ugt i64 %46, %17
  %48 = select i1 %47, i64 4294967294, i64 4294967295
  %49 = select i1 %45, i64 %48, i64 0
  %50 = add i64 %49, %40
  %51 = shl nuw i64 %35, 32
  %52 = and i64 %50, 4294967295
  %53 = or disjoint i64 %52, %51
  %54 = mul i64 %1, %53
  %55 = sub i64 0, %54
  %56 = shl i64 %53, 1
  %57 = or disjoint i64 %56, 1
  br label %58

58:                                               ; preds = %12, %16
  %59 = phi i64 [ %55, %16 ], [ -1, %12 ]
  %60 = phi i64 [ %57, %16 ], [ -1, %12 ]
  %61 = shl i64 %59, 1
  %62 = icmp uge i64 %61, %1
  %63 = icmp slt i64 %59, 0
  %64 = or i1 %63, %62
  %65 = zext i1 %64 to i64
  %66 = add i64 %60, %65
  br label %67

67:                                               ; preds = %10, %58
  %68 = phi i64 [ 0, %10 ], [ %66, %58 ]
  %69 = phi i32 [ %11, %10 ], [ %7, %58 ]
  %70 = zext nneg i32 %69 to i64
  %71 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %72 = insertelement <vscale x 2 x i64> poison, i64 %68, i64 0
  %73 = shufflevector <vscale x 2 x i64> %72, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %74 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.umulh.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %0, <vscale x 2 x i64> %73)
  %75 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.sub.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %0, <vscale x 2 x i64> %74)
  %76 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %75, <vscale x 2 x i64> splat (i64 1))
  %77 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %76, <vscale x 2 x i64> %74)
  %78 = insertelement <vscale x 2 x i64> poison, i64 %70, i64 0
  %79 = shufflevector <vscale x 2 x i64> %78, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %80 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1> %71, <vscale x 2 x i64> %77, <vscale x 2 x i64> %79)
  br label %81

81:                                               ; preds = %2, %67
  %82 = phi <vscale x 2 x i64> [ %80, %67 ], [ %0, %2 ]
  ret <vscale x 2 x i64> %82
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 8 x i16> @target_s16_raw(<vscale x 8 x i16> %0, i16 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  %5 = icmp eq i16 %1, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = and i8 %2, 31
  %8 = zext nneg i8 %7 to i32
  %9 = shl nsw i32 -1, %8
  %10 = trunc i32 %9 to i16
  %11 = xor i16 %10, -1
  %12 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> zeroinitializer, <vscale x 8 x i16> %0)
  %13 = insertelement <vscale x 8 x i16> poison, i16 %11, i64 0
  %14 = shufflevector <vscale x 8 x i16> %13, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %15 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.nxv8i16(<vscale x 8 x i1> %12, <vscale x 8 x i16> %0, <vscale x 8 x i16> %14)
  %16 = zext nneg i8 %7 to i64
  %17 = insertelement <vscale x 2 x i64> poison, i64 %16, i64 0
  %18 = shufflevector <vscale x 2 x i64> %17, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %19 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.asr.wide.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %15, <vscale x 2 x i64> %18)
  %20 = ashr i8 %2, 7
  %21 = sext i8 %20 to i16
  %22 = insertelement <vscale x 8 x i16> poison, i16 %21, i64 0
  %23 = shufflevector <vscale x 8 x i16> %22, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %24 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> zeroinitializer, <vscale x 8 x i16> %23)
  %25 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.neg.nxv8i16(<vscale x 8 x i16> %19, <vscale x 8 x i1> %24, <vscale x 8 x i16> %19)
  br label %49

26:                                               ; preds = %3
  %27 = insertelement <vscale x 8 x i16> poison, i16 %1, i64 0
  %28 = shufflevector <vscale x 8 x i16> %27, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %29 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.smulh.u.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %0, <vscale x 8 x i16> %28)
  %30 = and i8 %2, 64
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = ashr i8 %2, 7
  %34 = sext i8 %33 to i16
  %35 = insertelement <vscale x 8 x i16> poison, i16 %34, i64 0
  %36 = shufflevector <vscale x 8 x i16> %35, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %37 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> zeroinitializer, <vscale x 8 x i16> %36)
  %38 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.neg.nxv8i16(<vscale x 8 x i16> %0, <vscale x 8 x i1> %37, <vscale x 8 x i16> %0)
  %39 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.u.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %29, <vscale x 8 x i16> %38)
  br label %40

40:                                               ; preds = %32, %26
  %41 = phi <vscale x 8 x i16> [ %39, %32 ], [ %29, %26 ]
  %42 = and i8 %2, 31
  %43 = zext nneg i8 %42 to i64
  %44 = insertelement <vscale x 2 x i64> poison, i64 %43, i64 0
  %45 = shufflevector <vscale x 2 x i64> %44, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %46 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.asr.wide.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %41, <vscale x 2 x i64> %45)
  %47 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.asr.u.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %46, <vscale x 8 x i16> splat (i16 15))
  %48 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.sub.u.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %46, <vscale x 8 x i16> %47)
  br label %49

49:                                               ; preds = %6, %40
  %50 = phi <vscale x 8 x i16> [ %48, %40 ], [ %25, %6 ]
  ret <vscale x 8 x i16> %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 8 x i16> @target_s16_bf_raw(<vscale x 8 x i16> %0, i16 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  %5 = and i8 %2, 31
  %6 = ashr i8 %2, 7
  %7 = sext i8 %6 to i16
  %8 = insertelement <vscale x 8 x i16> poison, i16 %7, i64 0
  %9 = shufflevector <vscale x 8 x i16> %8, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %10 = insertelement <vscale x 8 x i16> poison, i16 %1, i64 0
  %11 = shufflevector <vscale x 8 x i16> %10, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %12 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.smulh.u.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %0, <vscale x 8 x i16> %11)
  %13 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.u.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %12, <vscale x 8 x i16> %0)
  %14 = icmp eq i16 %1, 0
  %15 = sext i1 %14 to i32
  %16 = zext nneg i8 %5 to i32
  %17 = shl nuw i32 1, %16
  %18 = add i32 %17, %15
  %19 = trunc i32 %18 to i16
  %20 = insertelement <vscale x 8 x i16> poison, i16 %19, i64 0
  %21 = shufflevector <vscale x 8 x i16> %20, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %22 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> zeroinitializer, <vscale x 8 x i16> %13)
  %23 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.nxv8i16(<vscale x 8 x i1> %22, <vscale x 8 x i16> %13, <vscale x 8 x i16> %21)
  %24 = zext nneg i8 %5 to i64
  %25 = insertelement <vscale x 2 x i64> poison, i64 %24, i64 0
  %26 = shufflevector <vscale x 2 x i64> %25, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %27 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.asr.wide.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> %23, <vscale x 2 x i64> %26)
  %28 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1> %4, <vscale x 8 x i16> zeroinitializer, <vscale x 8 x i16> %9)
  %29 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.neg.nxv8i16(<vscale x 8 x i16> %27, <vscale x 8 x i1> %28, <vscale x 8 x i16> %27)
  ret <vscale x 8 x i16> %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 4 x i32> @target_s32_raw(<vscale x 4 x i32> %0, i32 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = and i8 %2, 31
  %8 = zext nneg i8 %7 to i32
  %9 = shl nsw i32 -1, %8
  %10 = xor i32 %9, -1
  %11 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> zeroinitializer, <vscale x 4 x i32> %0)
  %12 = insertelement <vscale x 4 x i32> poison, i32 %10, i64 0
  %13 = shufflevector <vscale x 4 x i32> %12, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %14 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.nxv4i32(<vscale x 4 x i1> %11, <vscale x 4 x i32> %0, <vscale x 4 x i32> %13)
  %15 = zext nneg i8 %7 to i64
  %16 = insertelement <vscale x 2 x i64> poison, i64 %15, i64 0
  %17 = shufflevector <vscale x 2 x i64> %16, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %18 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.asr.wide.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %14, <vscale x 2 x i64> %17)
  %19 = ashr i8 %2, 7
  %20 = sext i8 %19 to i32
  %21 = insertelement <vscale x 4 x i32> poison, i32 %20, i64 0
  %22 = shufflevector <vscale x 4 x i32> %21, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %23 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> zeroinitializer, <vscale x 4 x i32> %22)
  %24 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.neg.nxv4i32(<vscale x 4 x i32> %18, <vscale x 4 x i1> %23, <vscale x 4 x i32> %18)
  br label %48

25:                                               ; preds = %3
  %26 = insertelement <vscale x 4 x i32> poison, i32 %1, i64 0
  %27 = shufflevector <vscale x 4 x i32> %26, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %28 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.smulh.u.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %0, <vscale x 4 x i32> %27)
  %29 = and i8 %2, 64
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = ashr i8 %2, 7
  %33 = sext i8 %32 to i32
  %34 = insertelement <vscale x 4 x i32> poison, i32 %33, i64 0
  %35 = shufflevector <vscale x 4 x i32> %34, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %36 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> zeroinitializer, <vscale x 4 x i32> %35)
  %37 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.neg.nxv4i32(<vscale x 4 x i32> %0, <vscale x 4 x i1> %36, <vscale x 4 x i32> %0)
  %38 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.u.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %28, <vscale x 4 x i32> %37)
  br label %39

39:                                               ; preds = %31, %25
  %40 = phi <vscale x 4 x i32> [ %38, %31 ], [ %28, %25 ]
  %41 = and i8 %2, 31
  %42 = zext nneg i8 %41 to i64
  %43 = insertelement <vscale x 2 x i64> poison, i64 %42, i64 0
  %44 = shufflevector <vscale x 2 x i64> %43, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %45 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.asr.wide.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %40, <vscale x 2 x i64> %44)
  %46 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.asr.u.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %45, <vscale x 4 x i32> splat (i32 31))
  %47 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.sub.u.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %45, <vscale x 4 x i32> %46)
  br label %48

48:                                               ; preds = %6, %39
  %49 = phi <vscale x 4 x i32> [ %47, %39 ], [ %24, %6 ]
  ret <vscale x 4 x i32> %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 4 x i32> @target_s32_bf_raw(<vscale x 4 x i32> %0, i32 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %5 = and i8 %2, 31
  %6 = ashr i8 %2, 7
  %7 = sext i8 %6 to i32
  %8 = insertelement <vscale x 4 x i32> poison, i32 %7, i64 0
  %9 = shufflevector <vscale x 4 x i32> %8, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %10 = insertelement <vscale x 4 x i32> poison, i32 %1, i64 0
  %11 = shufflevector <vscale x 4 x i32> %10, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %12 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.smulh.u.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %0, <vscale x 4 x i32> %11)
  %13 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.u.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %12, <vscale x 4 x i32> %0)
  %14 = icmp eq i32 %1, 0
  %15 = sext i1 %14 to i32
  %16 = zext nneg i8 %5 to i32
  %17 = shl nuw i32 1, %16
  %18 = add i32 %17, %15
  %19 = insertelement <vscale x 4 x i32> poison, i32 %18, i64 0
  %20 = shufflevector <vscale x 4 x i32> %19, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %21 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> zeroinitializer, <vscale x 4 x i32> %13)
  %22 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.nxv4i32(<vscale x 4 x i1> %21, <vscale x 4 x i32> %13, <vscale x 4 x i32> %20)
  %23 = zext nneg i8 %5 to i64
  %24 = insertelement <vscale x 2 x i64> poison, i64 %23, i64 0
  %25 = shufflevector <vscale x 2 x i64> %24, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %26 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.asr.wide.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> %22, <vscale x 2 x i64> %25)
  %27 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1> %4, <vscale x 4 x i32> zeroinitializer, <vscale x 4 x i32> %9)
  %28 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.neg.nxv4i32(<vscale x 4 x i32> %26, <vscale x 4 x i1> %27, <vscale x 4 x i32> %26)
  ret <vscale x 4 x i32> %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 2 x i64> @target_s64_raw(<vscale x 2 x i64> %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = and i8 %2, 63
  %8 = zext nneg i8 %7 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  %11 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> zeroinitializer, <vscale x 2 x i64> %0)
  %12 = insertelement <vscale x 2 x i64> poison, i64 %10, i64 0
  %13 = shufflevector <vscale x 2 x i64> %12, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %14 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.nxv2i64(<vscale x 2 x i1> %11, <vscale x 2 x i64> %0, <vscale x 2 x i64> %13)
  %15 = insertelement <vscale x 2 x i64> poison, i64 %8, i64 0
  %16 = shufflevector <vscale x 2 x i64> %15, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %17 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.asr.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %14, <vscale x 2 x i64> %16)
  %18 = ashr i8 %2, 7
  %19 = sext i8 %18 to i64
  %20 = insertelement <vscale x 2 x i64> poison, i64 %19, i64 0
  %21 = shufflevector <vscale x 2 x i64> %20, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %22 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> zeroinitializer, <vscale x 2 x i64> %21)
  %23 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.neg.nxv2i64(<vscale x 2 x i64> %17, <vscale x 2 x i1> %22, <vscale x 2 x i64> %17)
  br label %47

24:                                               ; preds = %3
  %25 = insertelement <vscale x 2 x i64> poison, i64 %1, i64 0
  %26 = shufflevector <vscale x 2 x i64> %25, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %27 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.smulh.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %0, <vscale x 2 x i64> %26)
  %28 = and i8 %2, 64
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = ashr i8 %2, 7
  %32 = sext i8 %31 to i64
  %33 = insertelement <vscale x 2 x i64> poison, i64 %32, i64 0
  %34 = shufflevector <vscale x 2 x i64> %33, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %35 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> zeroinitializer, <vscale x 2 x i64> %34)
  %36 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.neg.nxv2i64(<vscale x 2 x i64> %0, <vscale x 2 x i1> %35, <vscale x 2 x i64> %0)
  %37 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %27, <vscale x 2 x i64> %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = phi <vscale x 2 x i64> [ %37, %30 ], [ %27, %24 ]
  %40 = and i8 %2, 63
  %41 = zext nneg i8 %40 to i64
  %42 = insertelement <vscale x 2 x i64> poison, i64 %41, i64 0
  %43 = shufflevector <vscale x 2 x i64> %42, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %44 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.asr.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %39, <vscale x 2 x i64> %43)
  %45 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.asr.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %44, <vscale x 2 x i64> splat (i64 63))
  %46 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.sub.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %44, <vscale x 2 x i64> %45)
  br label %47

47:                                               ; preds = %6, %38
  %48 = phi <vscale x 2 x i64> [ %23, %6 ], [ %46, %38 ]
  ret <vscale x 2 x i64> %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 2 x i64> @target_s64_bf_raw(<vscale x 2 x i64> %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #0 {
  %4 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %5 = and i8 %2, 63
  %6 = ashr i8 %2, 7
  %7 = sext i8 %6 to i64
  %8 = insertelement <vscale x 2 x i64> poison, i64 %7, i64 0
  %9 = shufflevector <vscale x 2 x i64> %8, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %10 = insertelement <vscale x 2 x i64> poison, i64 %1, i64 0
  %11 = shufflevector <vscale x 2 x i64> %10, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %12 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.smulh.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %0, <vscale x 2 x i64> %11)
  %13 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %12, <vscale x 2 x i64> %0)
  %14 = icmp eq i64 %1, 0
  %15 = sext i1 %14 to i64
  %16 = zext nneg i8 %5 to i64
  %17 = shl nuw i64 1, %16
  %18 = add i64 %17, %15
  %19 = insertelement <vscale x 2 x i64> poison, i64 %18, i64 0
  %20 = shufflevector <vscale x 2 x i64> %19, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %21 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> zeroinitializer, <vscale x 2 x i64> %13)
  %22 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.nxv2i64(<vscale x 2 x i1> %21, <vscale x 2 x i64> %13, <vscale x 2 x i64> %20)
  %23 = insertelement <vscale x 2 x i64> poison, i64 %16, i64 0
  %24 = shufflevector <vscale x 2 x i64> %23, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %25 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.asr.u.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> %22, <vscale x 2 x i64> %24)
  %26 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1> %4, <vscale x 2 x i64> zeroinitializer, <vscale x 2 x i64> %9)
  %27 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.neg.nxv2i64(<vscale x 2 x i64> %25, <vscale x 2 x i1> %26, <vscale x 2 x i64> %25)
  ret <vscale x 2 x i64> %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 8 x i16> @target_s16_api(<vscale x 8 x i16> %0, i16 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %98, label %4

4:                                                ; preds = %2
  %5 = icmp slt i16 %1, 0
  %6 = tail call i16 @llvm.abs.i16(i16 %1, i1 false)
  %7 = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %6, i1 true)
  %8 = xor i16 %7, 15
  %9 = zext i16 %6 to i32
  %10 = add nuw nsw i32 %9, 65535
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = lshr i16 %1, 8
  %15 = and i16 %14, 128
  %16 = or disjoint i16 %8, %15
  %17 = trunc nuw i16 %16 to i8
  %18 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  br label %53

19:                                               ; preds = %4
  %20 = zext nneg i16 %8 to i32
  %21 = shl nuw nsw i32 32768, %20
  %22 = udiv i32 %21, %9
  %23 = trunc i32 %22 to i16
  %24 = mul i16 %6, %23
  %25 = add i16 %24, %6
  %26 = zext i16 %25 to i32
  %27 = lshr i32 %26, %20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = trunc nuw nsw i16 %7 to i8
  %31 = sub nsw i8 14, %30
  br label %43

32:                                               ; preds = %19
  %33 = sub i16 0, %24
  %34 = shl i16 %23, 1
  %35 = shl i16 %33, 1
  %36 = icmp uge i16 %35, %6
  %37 = icmp slt i16 %33, 0
  %38 = or i1 %37, %36
  %39 = zext i1 %38 to i16
  %40 = or disjoint i16 %34, %39
  %41 = trunc nuw nsw i16 %8 to i8
  %42 = or disjoint i8 %41, 64
  br label %43

43:                                               ; preds = %29, %32
  %44 = phi i16 [ %40, %32 ], [ %23, %29 ]
  %45 = phi i8 [ %42, %32 ], [ %31, %29 ]
  %46 = add i16 %44, 1
  %47 = or i8 %45, -128
  %48 = xor i16 %44, -1
  %49 = select i1 %5, i8 %47, i8 %45
  %50 = select i1 %5, i16 %48, i16 %46
  %51 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  %52 = icmp eq i16 %50, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %13, %43
  %54 = phi <vscale x 8 x i1> [ %18, %13 ], [ %51, %43 ]
  %55 = phi i8 [ %17, %13 ], [ %49, %43 ]
  %56 = and i8 %55, 31
  %57 = zext nneg i8 %56 to i32
  %58 = shl nsw i32 -1, %57
  %59 = trunc i32 %58 to i16
  %60 = xor i16 %59, -1
  %61 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1> %54, <vscale x 8 x i16> zeroinitializer, <vscale x 8 x i16> %0)
  %62 = insertelement <vscale x 8 x i16> poison, i16 %60, i64 0
  %63 = shufflevector <vscale x 8 x i16> %62, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %64 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.nxv8i16(<vscale x 8 x i1> %61, <vscale x 8 x i16> %0, <vscale x 8 x i16> %63)
  %65 = zext nneg i8 %56 to i64
  %66 = insertelement <vscale x 2 x i64> poison, i64 %65, i64 0
  %67 = shufflevector <vscale x 2 x i64> %66, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %68 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.asr.wide.nxv8i16(<vscale x 8 x i1> %54, <vscale x 8 x i16> %64, <vscale x 2 x i64> %67)
  %69 = ashr i8 %55, 7
  %70 = sext i8 %69 to i16
  %71 = insertelement <vscale x 8 x i16> poison, i16 %70, i64 0
  %72 = shufflevector <vscale x 8 x i16> %71, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %73 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1> %54, <vscale x 8 x i16> zeroinitializer, <vscale x 8 x i16> %72)
  %74 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.neg.nxv8i16(<vscale x 8 x i16> %68, <vscale x 8 x i1> %73, <vscale x 8 x i16> %68)
  br label %98

75:                                               ; preds = %43
  %76 = insertelement <vscale x 8 x i16> poison, i16 %50, i64 0
  %77 = shufflevector <vscale x 8 x i16> %76, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %78 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.smulh.u.nxv8i16(<vscale x 8 x i1> %51, <vscale x 8 x i16> %0, <vscale x 8 x i16> %77)
  %79 = and i8 %49, 64
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %75
  %82 = ashr i8 %49, 7
  %83 = sext i8 %82 to i16
  %84 = insertelement <vscale x 8 x i16> poison, i16 %83, i64 0
  %85 = shufflevector <vscale x 8 x i16> %84, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %86 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1> %51, <vscale x 8 x i16> zeroinitializer, <vscale x 8 x i16> %85)
  %87 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.neg.nxv8i16(<vscale x 8 x i16> %0, <vscale x 8 x i1> %86, <vscale x 8 x i16> %0)
  %88 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.u.nxv8i16(<vscale x 8 x i1> %51, <vscale x 8 x i16> %78, <vscale x 8 x i16> %87)
  br label %89

89:                                               ; preds = %81, %75
  %90 = phi <vscale x 8 x i16> [ %88, %81 ], [ %78, %75 ]
  %91 = and i8 %49, 31
  %92 = zext nneg i8 %91 to i64
  %93 = insertelement <vscale x 2 x i64> poison, i64 %92, i64 0
  %94 = shufflevector <vscale x 2 x i64> %93, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %95 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.asr.wide.nxv8i16(<vscale x 8 x i1> %51, <vscale x 8 x i16> %90, <vscale x 2 x i64> %94)
  %96 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.asr.u.nxv8i16(<vscale x 8 x i1> %51, <vscale x 8 x i16> %95, <vscale x 8 x i16> splat (i16 15))
  %97 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.sub.u.nxv8i16(<vscale x 8 x i1> %51, <vscale x 8 x i16> %95, <vscale x 8 x i16> %96)
  br label %98

98:                                               ; preds = %89, %53, %2
  %99 = phi <vscale x 8 x i16> [ %0, %2 ], [ %97, %89 ], [ %74, %53 ]
  ret <vscale x 8 x i16> %99
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 8 x i16> @target_s16_bf_api(<vscale x 8 x i16> %0, i16 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = tail call i16 @llvm.abs.i16(i16 %1, i1 false)
  %6 = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %5, i1 true)
  %7 = xor i16 %6, 15
  %8 = zext i16 %5 to i32
  %9 = add nuw nsw i32 %8, 65535
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = lshr i16 %1, 8
  %14 = and i16 %13, 128
  %15 = or disjoint i16 %7, %14
  %16 = trunc nuw i16 %15 to i8
  br label %36

17:                                               ; preds = %4
  %18 = icmp slt i16 %1, 0
  %19 = zext nneg i16 %7 to i32
  %20 = shl nuw nsw i32 32768, %19
  %21 = udiv i32 %20, %8
  %22 = trunc i32 %21 to i16
  %23 = mul i16 %5, %22
  %24 = sub i16 0, %23
  %25 = shl i16 %22, 1
  %26 = shl i16 %24, 1
  %27 = icmp uge i16 %26, %5
  %28 = icmp slt i16 %24, 0
  %29 = or i1 %28, %27
  %30 = zext i1 %29 to i16
  %31 = trunc nuw nsw i16 %7 to i8
  %32 = or disjoint i16 %25, 1
  %33 = add i16 %32, %30
  %34 = select i1 %18, i8 -64, i8 64
  %35 = or disjoint i8 %34, %31
  br label %36

36:                                               ; preds = %12, %17
  %37 = phi i16 [ 0, %12 ], [ %33, %17 ]
  %38 = phi i8 [ %16, %12 ], [ %35, %17 ]
  %39 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  %40 = and i8 %38, 31
  %41 = ashr i8 %38, 7
  %42 = sext i8 %41 to i16
  %43 = insertelement <vscale x 8 x i16> poison, i16 %42, i64 0
  %44 = shufflevector <vscale x 8 x i16> %43, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %45 = insertelement <vscale x 8 x i16> poison, i16 %37, i64 0
  %46 = shufflevector <vscale x 8 x i16> %45, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %47 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.smulh.u.nxv8i16(<vscale x 8 x i1> %39, <vscale x 8 x i16> %0, <vscale x 8 x i16> %46)
  %48 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.u.nxv8i16(<vscale x 8 x i1> %39, <vscale x 8 x i16> %47, <vscale x 8 x i16> %0)
  %49 = icmp eq i16 %37, 0
  %50 = sext i1 %49 to i32
  %51 = zext nneg i8 %40 to i32
  %52 = shl nuw i32 1, %51
  %53 = add i32 %52, %50
  %54 = trunc i32 %53 to i16
  %55 = insertelement <vscale x 8 x i16> poison, i16 %54, i64 0
  %56 = shufflevector <vscale x 8 x i16> %55, <vscale x 8 x i16> poison, <vscale x 8 x i32> zeroinitializer
  %57 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1> %39, <vscale x 8 x i16> zeroinitializer, <vscale x 8 x i16> %48)
  %58 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.add.nxv8i16(<vscale x 8 x i1> %57, <vscale x 8 x i16> %48, <vscale x 8 x i16> %56)
  %59 = zext nneg i8 %40 to i64
  %60 = insertelement <vscale x 2 x i64> poison, i64 %59, i64 0
  %61 = shufflevector <vscale x 2 x i64> %60, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %62 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.asr.wide.nxv8i16(<vscale x 8 x i1> %39, <vscale x 8 x i16> %58, <vscale x 2 x i64> %61)
  %63 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1> %39, <vscale x 8 x i16> zeroinitializer, <vscale x 8 x i16> %44)
  %64 = tail call <vscale x 8 x i16> @llvm.aarch64.sve.neg.nxv8i16(<vscale x 8 x i16> %62, <vscale x 8 x i1> %63, <vscale x 8 x i16> %62)
  br label %65

65:                                               ; preds = %2, %36
  %66 = phi <vscale x 8 x i16> [ %64, %36 ], [ %0, %2 ]
  ret <vscale x 8 x i16> %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 4 x i32> @target_s32_api(<vscale x 4 x i32> %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %96, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %7 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %6, i1 true)
  %8 = xor i32 %7, 31
  %9 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %6)
  %10 = icmp samesign ult i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = lshr i32 %1, 24
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %8, %13
  %15 = trunc nuw i32 %14 to i8
  %16 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  br label %52

17:                                               ; preds = %4
  %18 = sub nsw i32 30, %7
  %19 = shl nuw nsw i32 1, %18
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = zext i32 %6 to i64
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = mul i32 %6, %24
  %26 = add i32 %25, %6
  %27 = lshr i32 %26, %8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = trunc nsw i32 %18 to i8
  br label %42

31:                                               ; preds = %17
  %32 = sub i32 0, %25
  %33 = shl i32 %24, 1
  %34 = shl i32 %32, 1
  %35 = icmp uge i32 %34, %6
  %36 = icmp slt i32 %32, 0
  %37 = or i1 %36, %35
  %38 = zext i1 %37 to i32
  %39 = or disjoint i32 %33, %38
  %40 = trunc nuw nsw i32 %8 to i8
  %41 = or disjoint i8 %40, 64
  br label %42

42:                                               ; preds = %29, %31
  %43 = phi i32 [ %39, %31 ], [ %24, %29 ]
  %44 = phi i8 [ %41, %31 ], [ %30, %29 ]
  %45 = add i32 %43, 1
  %46 = or i8 %44, -128
  %47 = xor i32 %43, -1
  %48 = select i1 %5, i8 %46, i8 %44
  %49 = select i1 %5, i32 %47, i32 %45
  %50 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %11, %42
  %53 = phi <vscale x 4 x i1> [ %16, %11 ], [ %50, %42 ]
  %54 = phi i8 [ %15, %11 ], [ %48, %42 ]
  %55 = and i8 %54, 31
  %56 = zext nneg i8 %55 to i32
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> zeroinitializer, <vscale x 4 x i32> %0)
  %60 = insertelement <vscale x 4 x i32> poison, i32 %58, i64 0
  %61 = shufflevector <vscale x 4 x i32> %60, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %62 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.nxv4i32(<vscale x 4 x i1> %59, <vscale x 4 x i32> %0, <vscale x 4 x i32> %61)
  %63 = zext nneg i8 %55 to i64
  %64 = insertelement <vscale x 2 x i64> poison, i64 %63, i64 0
  %65 = shufflevector <vscale x 2 x i64> %64, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %66 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.asr.wide.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %62, <vscale x 2 x i64> %65)
  %67 = ashr i8 %54, 7
  %68 = sext i8 %67 to i32
  %69 = insertelement <vscale x 4 x i32> poison, i32 %68, i64 0
  %70 = shufflevector <vscale x 4 x i32> %69, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %71 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> zeroinitializer, <vscale x 4 x i32> %70)
  %72 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.neg.nxv4i32(<vscale x 4 x i32> %66, <vscale x 4 x i1> %71, <vscale x 4 x i32> %66)
  br label %96

73:                                               ; preds = %42
  %74 = insertelement <vscale x 4 x i32> poison, i32 %49, i64 0
  %75 = shufflevector <vscale x 4 x i32> %74, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %76 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.smulh.u.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %0, <vscale x 4 x i32> %75)
  %77 = and i8 %48, 64
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %73
  %80 = ashr i8 %48, 7
  %81 = sext i8 %80 to i32
  %82 = insertelement <vscale x 4 x i32> poison, i32 %81, i64 0
  %83 = shufflevector <vscale x 4 x i32> %82, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %84 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> zeroinitializer, <vscale x 4 x i32> %83)
  %85 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.neg.nxv4i32(<vscale x 4 x i32> %0, <vscale x 4 x i1> %84, <vscale x 4 x i32> %0)
  %86 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.u.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %76, <vscale x 4 x i32> %85)
  br label %87

87:                                               ; preds = %79, %73
  %88 = phi <vscale x 4 x i32> [ %86, %79 ], [ %76, %73 ]
  %89 = and i8 %48, 31
  %90 = zext nneg i8 %89 to i64
  %91 = insertelement <vscale x 2 x i64> poison, i64 %90, i64 0
  %92 = shufflevector <vscale x 2 x i64> %91, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %93 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.asr.wide.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %88, <vscale x 2 x i64> %92)
  %94 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.asr.u.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %93, <vscale x 4 x i32> splat (i32 31))
  %95 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.sub.u.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %93, <vscale x 4 x i32> %94)
  br label %96

96:                                               ; preds = %87, %52, %2
  %97 = phi <vscale x 4 x i32> [ %0, %2 ], [ %95, %87 ], [ %72, %52 ]
  ret <vscale x 4 x i32> %97
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 4 x i32> @target_s32_bf_api(<vscale x 4 x i32> %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %6 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %5, i1 true)
  %7 = xor i32 %6, 31
  %8 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %5)
  %9 = icmp samesign ult i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = lshr i32 %1, 24
  %12 = and i32 %11, 128
  %13 = or disjoint i32 %7, %12
  %14 = trunc nuw i32 %13 to i8
  br label %37

15:                                               ; preds = %4
  %16 = icmp slt i32 %1, 0
  %17 = sub nsw i32 30, %6
  %18 = shl nuw nsw i32 1, %17
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 32
  %21 = zext i32 %5 to i64
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %5, %23
  %25 = sub i32 0, %24
  %26 = shl i32 %23, 1
  %27 = shl i32 %25, 1
  %28 = icmp uge i32 %27, %5
  %29 = icmp slt i32 %25, 0
  %30 = or i1 %29, %28
  %31 = zext i1 %30 to i32
  %32 = trunc nuw nsw i32 %7 to i8
  %33 = or disjoint i32 %26, 1
  %34 = add i32 %33, %31
  %35 = select i1 %16, i8 -64, i8 64
  %36 = or disjoint i8 %35, %32
  br label %37

37:                                               ; preds = %10, %15
  %38 = phi i32 [ 0, %10 ], [ %34, %15 ]
  %39 = phi i8 [ %14, %10 ], [ %36, %15 ]
  %40 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %41 = and i8 %39, 31
  %42 = ashr i8 %39, 7
  %43 = sext i8 %42 to i32
  %44 = insertelement <vscale x 4 x i32> poison, i32 %43, i64 0
  %45 = shufflevector <vscale x 4 x i32> %44, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %46 = insertelement <vscale x 4 x i32> poison, i32 %38, i64 0
  %47 = shufflevector <vscale x 4 x i32> %46, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %48 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.smulh.u.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> %0, <vscale x 4 x i32> %47)
  %49 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.u.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> %48, <vscale x 4 x i32> %0)
  %50 = icmp eq i32 %38, 0
  %51 = sext i1 %50 to i32
  %52 = zext nneg i8 %41 to i32
  %53 = shl nuw i32 1, %52
  %54 = add i32 %53, %51
  %55 = insertelement <vscale x 4 x i32> poison, i32 %54, i64 0
  %56 = shufflevector <vscale x 4 x i32> %55, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %57 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> zeroinitializer, <vscale x 4 x i32> %49)
  %58 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.add.nxv4i32(<vscale x 4 x i1> %57, <vscale x 4 x i32> %49, <vscale x 4 x i32> %56)
  %59 = zext nneg i8 %41 to i64
  %60 = insertelement <vscale x 2 x i64> poison, i64 %59, i64 0
  %61 = shufflevector <vscale x 2 x i64> %60, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %62 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.asr.wide.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> %58, <vscale x 2 x i64> %61)
  %63 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> zeroinitializer, <vscale x 4 x i32> %45)
  %64 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.neg.nxv4i32(<vscale x 4 x i32> %62, <vscale x 4 x i1> %63, <vscale x 4 x i32> %62)
  br label %65

65:                                               ; preds = %2, %37
  %66 = phi <vscale x 4 x i32> [ %64, %37 ], [ %0, %2 ]
  ret <vscale x 4 x i32> %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 2 x i64> @target_s64_api(<vscale x 2 x i64> %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %136, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %6, i1 true)
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = xor i32 %8, 63
  %10 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %6)
  %11 = icmp samesign ult i64 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  %18 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  br label %93

19:                                               ; preds = %4
  %20 = sub nsw i32 62, %8
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = icmp ult i64 %22, %6
  br i1 %23, label %24, label %64

24:                                               ; preds = %19
  %25 = shl i64 %6, %7
  %26 = shl i64 %22, %7
  %27 = lshr i64 %25, 32
  %28 = freeze i64 %26
  %29 = freeze i64 %27
  %30 = udiv i64 %28, %29
  %31 = mul i64 %30, %29
  %32 = sub i64 %28, %31
  %33 = and i64 %25, 4294967295
  %34 = mul i64 %30, %33
  %35 = shl nuw i64 %32, 32
  %36 = icmp ugt i64 %34, %35
  %37 = sub nuw i64 %34, %35
  %38 = icmp ugt i64 %37, %25
  %39 = select i1 %38, i64 4294967294, i64 4294967295
  %40 = select i1 %36, i64 %39, i64 0
  %41 = add i64 %40, %30
  %42 = shl i64 %26, 32
  %43 = and i64 %41, 4294967295
  %44 = mul i64 %43, %25
  %45 = sub i64 %42, %44
  %46 = freeze i64 %45
  %47 = freeze i64 %27
  %48 = udiv i64 %46, %47
  %49 = mul i64 %48, %47
  %50 = sub i64 %46, %49
  %51 = mul i64 %48, %33
  %52 = shl nuw i64 %50, 32
  %53 = icmp ugt i64 %51, %52
  %54 = sub nuw i64 %51, %52
  %55 = icmp ugt i64 %54, %25
  %56 = select i1 %55, i64 4294967294, i64 4294967295
  %57 = select i1 %53, i64 %56, i64 0
  %58 = add i64 %57, %48
  %59 = shl nuw i64 %43, 32
  %60 = and i64 %58, 4294967295
  %61 = or disjoint i64 %60, %59
  %62 = mul i64 %6, %61
  %63 = sub i64 0, %62
  br label %64

64:                                               ; preds = %19, %24
  %65 = phi i64 [ %63, %24 ], [ -1, %19 ]
  %66 = phi i64 [ %61, %24 ], [ -1, %19 ]
  %67 = sub i64 %6, %65
  %68 = zext nneg i32 %9 to i64
  %69 = lshr i64 %67, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = trunc nsw i32 %20 to i8
  br label %83

73:                                               ; preds = %64
  %74 = shl i64 %66, 1
  %75 = shl i64 %65, 1
  %76 = icmp uge i64 %75, %6
  %77 = icmp slt i64 %65, 0
  %78 = or i1 %77, %76
  %79 = zext i1 %78 to i64
  %80 = or disjoint i64 %74, %79
  %81 = trunc nuw nsw i32 %9 to i8
  %82 = or disjoint i8 %81, 64
  br label %83

83:                                               ; preds = %71, %73
  %84 = phi i64 [ %80, %73 ], [ %66, %71 ]
  %85 = phi i8 [ %82, %73 ], [ %72, %71 ]
  %86 = add i64 %84, 1
  %87 = or i8 %85, -128
  %88 = xor i64 %84, -1
  %89 = select i1 %5, i8 %87, i8 %85
  %90 = select i1 %5, i64 %88, i64 %86
  %91 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %92 = icmp eq i64 %90, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %12, %83
  %94 = phi <vscale x 2 x i1> [ %18, %12 ], [ %91, %83 ]
  %95 = phi i8 [ %17, %12 ], [ %89, %83 ]
  %96 = and i8 %95, 63
  %97 = zext nneg i8 %96 to i64
  %98 = shl nsw i64 -1, %97
  %99 = xor i64 %98, -1
  %100 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1> %94, <vscale x 2 x i64> zeroinitializer, <vscale x 2 x i64> %0)
  %101 = insertelement <vscale x 2 x i64> poison, i64 %99, i64 0
  %102 = shufflevector <vscale x 2 x i64> %101, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %103 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.nxv2i64(<vscale x 2 x i1> %100, <vscale x 2 x i64> %0, <vscale x 2 x i64> %102)
  %104 = insertelement <vscale x 2 x i64> poison, i64 %97, i64 0
  %105 = shufflevector <vscale x 2 x i64> %104, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %106 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.asr.u.nxv2i64(<vscale x 2 x i1> %94, <vscale x 2 x i64> %103, <vscale x 2 x i64> %105)
  %107 = ashr i8 %95, 7
  %108 = sext i8 %107 to i64
  %109 = insertelement <vscale x 2 x i64> poison, i64 %108, i64 0
  %110 = shufflevector <vscale x 2 x i64> %109, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %111 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1> %94, <vscale x 2 x i64> zeroinitializer, <vscale x 2 x i64> %110)
  %112 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.neg.nxv2i64(<vscale x 2 x i64> %106, <vscale x 2 x i1> %111, <vscale x 2 x i64> %106)
  br label %136

113:                                              ; preds = %83
  %114 = insertelement <vscale x 2 x i64> poison, i64 %90, i64 0
  %115 = shufflevector <vscale x 2 x i64> %114, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %116 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.smulh.u.nxv2i64(<vscale x 2 x i1> %91, <vscale x 2 x i64> %0, <vscale x 2 x i64> %115)
  %117 = and i8 %89, 64
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %113
  %120 = ashr i8 %89, 7
  %121 = sext i8 %120 to i64
  %122 = insertelement <vscale x 2 x i64> poison, i64 %121, i64 0
  %123 = shufflevector <vscale x 2 x i64> %122, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %124 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1> %91, <vscale x 2 x i64> zeroinitializer, <vscale x 2 x i64> %123)
  %125 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.neg.nxv2i64(<vscale x 2 x i64> %0, <vscale x 2 x i1> %124, <vscale x 2 x i64> %0)
  %126 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %91, <vscale x 2 x i64> %116, <vscale x 2 x i64> %125)
  br label %127

127:                                              ; preds = %119, %113
  %128 = phi <vscale x 2 x i64> [ %126, %119 ], [ %116, %113 ]
  %129 = and i8 %89, 63
  %130 = zext nneg i8 %129 to i64
  %131 = insertelement <vscale x 2 x i64> poison, i64 %130, i64 0
  %132 = shufflevector <vscale x 2 x i64> %131, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %133 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.asr.u.nxv2i64(<vscale x 2 x i1> %91, <vscale x 2 x i64> %128, <vscale x 2 x i64> %132)
  %134 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.asr.u.nxv2i64(<vscale x 2 x i1> %91, <vscale x 2 x i64> %133, <vscale x 2 x i64> splat (i64 63))
  %135 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.sub.u.nxv2i64(<vscale x 2 x i1> %91, <vscale x 2 x i64> %133, <vscale x 2 x i64> %134)
  br label %136

136:                                              ; preds = %127, %93, %2
  %137 = phi <vscale x 2 x i64> [ %0, %2 ], [ %112, %93 ], [ %135, %127 ]
  ret <vscale x 2 x i64> %137
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16)
define dso_local <vscale x 2 x i64> @target_s64_bf_api(<vscale x 2 x i64> %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %104, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %6, i1 true)
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = xor i32 %8, 63
  %10 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %6)
  %11 = icmp samesign ult i64 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  br label %77

18:                                               ; preds = %4
  %19 = sub nsw i64 62, %7
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = icmp ult i64 %21, %6
  br i1 %22, label %23, label %65

23:                                               ; preds = %18
  %24 = shl i64 %6, %7
  %25 = shl i64 %21, %7
  %26 = lshr i64 %24, 32
  %27 = freeze i64 %25
  %28 = freeze i64 %26
  %29 = udiv i64 %27, %28
  %30 = mul i64 %29, %28
  %31 = sub i64 %27, %30
  %32 = and i64 %24, 4294967295
  %33 = mul i64 %29, %32
  %34 = shl nuw i64 %31, 32
  %35 = icmp ugt i64 %33, %34
  %36 = sub nuw i64 %33, %34
  %37 = icmp ugt i64 %36, %24
  %38 = select i1 %37, i64 4294967294, i64 4294967295
  %39 = select i1 %35, i64 %38, i64 0
  %40 = add i64 %39, %29
  %41 = shl i64 %25, 32
  %42 = and i64 %40, 4294967295
  %43 = mul i64 %42, %24
  %44 = sub i64 %41, %43
  %45 = freeze i64 %44
  %46 = freeze i64 %26
  %47 = udiv i64 %45, %46
  %48 = mul i64 %47, %46
  %49 = sub i64 %45, %48
  %50 = mul i64 %47, %32
  %51 = shl nuw i64 %49, 32
  %52 = icmp ugt i64 %50, %51
  %53 = sub nuw i64 %50, %51
  %54 = icmp ugt i64 %53, %24
  %55 = select i1 %54, i64 4294967294, i64 4294967295
  %56 = select i1 %52, i64 %55, i64 0
  %57 = add i64 %56, %47
  %58 = shl nuw i64 %42, 32
  %59 = and i64 %57, 4294967295
  %60 = or disjoint i64 %59, %58
  %61 = mul i64 %6, %60
  %62 = sub i64 0, %61
  %63 = shl i64 %60, 1
  %64 = or disjoint i64 %63, 1
  br label %65

65:                                               ; preds = %18, %23
  %66 = phi i64 [ %62, %23 ], [ -1, %18 ]
  %67 = phi i64 [ %64, %23 ], [ -1, %18 ]
  %68 = shl i64 %66, 1
  %69 = icmp uge i64 %68, %6
  %70 = icmp slt i64 %66, 0
  %71 = or i1 %70, %69
  %72 = zext i1 %71 to i64
  %73 = trunc nuw nsw i32 %9 to i8
  %74 = add i64 %67, %72
  %75 = select i1 %5, i8 -64, i8 64
  %76 = or disjoint i8 %75, %73
  br label %77

77:                                               ; preds = %12, %65
  %78 = phi i64 [ 0, %12 ], [ %74, %65 ]
  %79 = phi i8 [ %17, %12 ], [ %76, %65 ]
  %80 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %81 = and i8 %79, 63
  %82 = ashr i8 %79, 7
  %83 = sext i8 %82 to i64
  %84 = insertelement <vscale x 2 x i64> poison, i64 %83, i64 0
  %85 = shufflevector <vscale x 2 x i64> %84, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %86 = insertelement <vscale x 2 x i64> poison, i64 %78, i64 0
  %87 = shufflevector <vscale x 2 x i64> %86, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %88 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.smulh.u.nxv2i64(<vscale x 2 x i1> %80, <vscale x 2 x i64> %0, <vscale x 2 x i64> %87)
  %89 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1> %80, <vscale x 2 x i64> %88, <vscale x 2 x i64> %0)
  %90 = icmp eq i64 %78, 0
  %91 = sext i1 %90 to i64
  %92 = zext nneg i8 %81 to i64
  %93 = shl nuw i64 1, %92
  %94 = add i64 %93, %91
  %95 = insertelement <vscale x 2 x i64> poison, i64 %94, i64 0
  %96 = shufflevector <vscale x 2 x i64> %95, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %97 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1> %80, <vscale x 2 x i64> zeroinitializer, <vscale x 2 x i64> %89)
  %98 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.add.nxv2i64(<vscale x 2 x i1> %97, <vscale x 2 x i64> %89, <vscale x 2 x i64> %96)
  %99 = insertelement <vscale x 2 x i64> poison, i64 %92, i64 0
  %100 = shufflevector <vscale x 2 x i64> %99, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %101 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.asr.u.nxv2i64(<vscale x 2 x i1> %80, <vscale x 2 x i64> %98, <vscale x 2 x i64> %100)
  %102 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1> %80, <vscale x 2 x i64> zeroinitializer, <vscale x 2 x i64> %85)
  %103 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.neg.nxv2i64(<vscale x 2 x i64> %101, <vscale x 2 x i1> %102, <vscale x 2 x i64> %101)
  br label %104

104:                                              ; preds = %2, %77
  %105 = phi <vscale x 2 x i64> [ %103, %77 ], [ %0, %2 ]
  ret <vscale x 2 x i64> %105
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i16> @llvm.aarch64.sve.umulh.u.nxv8i16(<vscale x 8 x i1>, <vscale x 8 x i16>, <vscale x 8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i16> @llvm.aarch64.sve.lsr.wide.nxv8i16(<vscale x 8 x i1>, <vscale x 8 x i16>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i16> @llvm.aarch64.sve.sub.u.nxv8i16(<vscale x 8 x i1>, <vscale x 8 x i16>, <vscale x 8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i16> @llvm.aarch64.sve.lsr.u.nxv8i16(<vscale x 8 x i1>, <vscale x 8 x i16>, <vscale x 8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i16> @llvm.aarch64.sve.add.u.nxv8i16(<vscale x 8 x i1>, <vscale x 8 x i16>, <vscale x 8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.aarch64.sve.umulh.u.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.aarch64.sve.lsr.wide.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.aarch64.sve.sub.u.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.aarch64.sve.lsr.u.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.aarch64.sve.add.u.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.umulh.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.lsr.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.sub.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.add.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i1> @llvm.aarch64.sve.cmpgt.nxv8i16(<vscale x 8 x i1>, <vscale x 8 x i16>, <vscale x 8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i16> @llvm.aarch64.sve.add.nxv8i16(<vscale x 8 x i1>, <vscale x 8 x i16>, <vscale x 8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i16> @llvm.aarch64.sve.neg.nxv8i16(<vscale x 8 x i16>, <vscale x 8 x i1>, <vscale x 8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i16> @llvm.aarch64.sve.smulh.u.nxv8i16(<vscale x 8 x i1>, <vscale x 8 x i16>, <vscale x 8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i16> @llvm.aarch64.sve.asr.wide.nxv8i16(<vscale x 8 x i1>, <vscale x 8 x i16>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 8 x i16> @llvm.aarch64.sve.asr.u.nxv8i16(<vscale x 8 x i1>, <vscale x 8 x i16>, <vscale x 8 x i16>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i1> @llvm.aarch64.sve.cmpgt.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.aarch64.sve.add.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.aarch64.sve.neg.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, <vscale x 4 x i32>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.aarch64.sve.smulh.u.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.aarch64.sve.asr.wide.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 4 x i32> @llvm.aarch64.sve.asr.u.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i1> @llvm.aarch64.sve.cmpgt.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.add.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.neg.nxv2i64(<vscale x 2 x i64>, <vscale x 2 x i1>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.smulh.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <vscale x 2 x i64> @llvm.aarch64.sve.asr.u.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(1,16) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+fullfp16,+neon,+sve,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
