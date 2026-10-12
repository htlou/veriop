; ModuleID = 'history-eq/c/fast_float/49ca5d85/new.cpp'
source_filename = "history-eq/c/fast_float/49ca5d85/new.cpp"
target datalayout = "E-m:e-i64:64-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define dso_local i64 @target_is_digits(i64 noundef %raw) local_unnamed_addr #0 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %or19.i.i.i.i = tail call i64 @llvm.bswap.i64(i64 %raw) #2
  %add.i.i.i = add i64 %or19.i.i.i.i, 5063812098665367110
  %sub.i.i.i = add i64 %or19.i.i.i.i, -3472328296227680304
  %or.i.i.i = or i64 %add.i.i.i, %sub.i.i.i
  %and.i.i.i = and i64 %or.i.i.i, -9187201950435737472
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  %conv = zext i1 %tobool.not.i.i.i to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define dso_local i64 @target_parse(i64 noundef %raw) local_unnamed_addr #0 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %or19.i.i.i.i = tail call i64 @llvm.bswap.i64(i64 %raw) #2
  %add.i.i.i = add i64 %or19.i.i.i.i, 5063812098665367110
  %sub.i.i.i = add i64 %or19.i.i.i.i, -3472328296227680304
  %or.i.i.i = or i64 %add.i.i.i, %sub.i.i.i
  %and.i.i.i = and i64 %or.i.i.i, -9187201950435737472
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %mul.i.i.i = mul i64 %sub.i.i.i, 10
  %shr.i.i.i = lshr i64 %sub.i.i.i, 8
  %add.i.i.i7 = add i64 %mul.i.i.i, %shr.i.i.i
  %and.i.i.i8 = and i64 %add.i.i.i7, 1095216660735
  %mul3.i.i.i = mul i64 %and.i.i.i8, 4294967296000100
  %shr4.i.i.i = lshr i64 %add.i.i.i7, 16
  %and5.i.i.i = and i64 %shr4.i.i.i, 1095216660735
  %mul6.i.i.i = mul i64 %and5.i.i.i, 42949672960001
  %add7.i.i.i = add i64 %mul6.i.i.i, %mul3.i.i.i
  %shr8.i.i.i = lshr i64 %add7.i.i.i, 32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %shr8.i.i.i, %if.end ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define dso_local i64 @target_parse_valid(i64 noundef %raw) local_unnamed_addr #0 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %bytes.sroa.0.0.extract.shift = lshr i64 %raw, 56
  %bytes.sroa.0.0.extract.trunc = trunc i64 %bytes.sroa.0.0.extract.shift to i8
  %bytes.sroa.5.0.extract.shift = lshr i64 %raw, 48
  %bytes.sroa.5.0.extract.trunc = trunc i64 %bytes.sroa.5.0.extract.shift to i8
  %bytes.sroa.6.0.extract.shift = lshr i64 %raw, 40
  %bytes.sroa.6.0.extract.trunc = trunc i64 %bytes.sroa.6.0.extract.shift to i8
  %bytes.sroa.7.0.extract.shift = lshr i64 %raw, 32
  %bytes.sroa.7.0.extract.trunc = trunc i64 %bytes.sroa.7.0.extract.shift to i8
  %bytes.sroa.8.0.extract.shift = lshr i64 %raw, 24
  %bytes.sroa.8.0.extract.trunc = trunc i64 %bytes.sroa.8.0.extract.shift to i8
  %bytes.sroa.9.0.extract.shift = lshr i64 %raw, 16
  %bytes.sroa.9.0.extract.trunc = trunc i64 %bytes.sroa.9.0.extract.shift to i8
  %bytes.sroa.10.0.extract.shift = lshr i64 %raw, 8
  %bytes.sroa.10.0.extract.trunc = trunc i64 %bytes.sroa.10.0.extract.shift to i8
  %bytes.sroa.11.0.extract.trunc = trunc i64 %raw to i8
  %0 = add i8 %bytes.sroa.0.0.extract.trunc, -48
  %1 = icmp ult i8 %0, 10
  %2 = add i8 %bytes.sroa.5.0.extract.trunc, -48
  %3 = icmp ult i8 %2, 10
  %or.cond = and i1 %1, %3
  %4 = add i8 %bytes.sroa.6.0.extract.trunc, -48
  %5 = icmp ult i8 %4, 10
  %or.cond7 = and i1 %5, %or.cond
  %6 = add i8 %bytes.sroa.7.0.extract.trunc, -48
  %7 = icmp ult i8 %6, 10
  %or.cond9 = and i1 %7, %or.cond7
  %8 = add i8 %bytes.sroa.8.0.extract.trunc, -48
  %9 = icmp ult i8 %8, 10
  %or.cond11 = and i1 %9, %or.cond9
  %10 = add i8 %bytes.sroa.9.0.extract.trunc, -48
  %11 = icmp ult i8 %10, 10
  %or.cond13 = and i1 %11, %or.cond11
  %12 = add i8 %bytes.sroa.10.0.extract.trunc, -48
  %13 = icmp ult i8 %12, 10
  %or.cond15 = and i1 %13, %or.cond13
  %14 = add i8 %bytes.sroa.11.0.extract.trunc, -48
  %15 = icmp ult i8 %14, 10
  %or.cond17 = and i1 %15, %or.cond15
  br i1 %or.cond17, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %or19.i.i.i.i = tail call i64 @llvm.bswap.i64(i64 %raw) #2
  %sub.i.i.i = add i64 %or19.i.i.i.i, -3472328296227680304
  %mul.i.i.i = mul i64 %sub.i.i.i, 10
  %shr.i.i.i = lshr i64 %sub.i.i.i, 8
  %add.i.i.i = add i64 %mul.i.i.i, %shr.i.i.i
  %and.i.i.i = and i64 %add.i.i.i, 1095216660735
  %mul3.i.i.i = mul i64 %and.i.i.i, 4294967296000100
  %shr4.i.i.i = lshr i64 %add.i.i.i, 16
  %and5.i.i.i = and i64 %shr4.i.i.i, 1095216660735
  %mul6.i.i.i = mul i64 %and5.i.i.i, 42949672960001
  %add7.i.i.i = add i64 %mul6.i.i.i, %mul3.i.i.i
  %shr8.i.i.i = lshr i64 %add7.i.i.i, 32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %shr8.i.i.i, %if.end ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define dso_local i64 @target_digits_buffer(i64 noundef %raw) local_unnamed_addr #0 {
entry:
  %bytes.sroa.0.0.extract.shift = lshr i64 %raw, 56
  %bytes.sroa.0.0.extract.trunc = trunc i64 %bytes.sroa.0.0.extract.shift to i8
  %bytes.sroa.5.0.extract.shift = lshr i64 %raw, 48
  %bytes.sroa.5.0.extract.trunc = trunc i64 %bytes.sroa.5.0.extract.shift to i8
  %bytes.sroa.6.0.extract.shift = lshr i64 %raw, 40
  %bytes.sroa.6.0.extract.trunc = trunc i64 %bytes.sroa.6.0.extract.shift to i8
  %bytes.sroa.7.0.extract.shift = lshr i64 %raw, 32
  %bytes.sroa.7.0.extract.trunc = trunc i64 %bytes.sroa.7.0.extract.shift to i8
  %bytes.sroa.8.0.extract.shift = lshr i64 %raw, 24
  %bytes.sroa.8.0.extract.trunc = trunc i64 %bytes.sroa.8.0.extract.shift to i8
  %bytes.sroa.9.0.extract.shift = lshr i64 %raw, 16
  %bytes.sroa.9.0.extract.trunc = trunc i64 %bytes.sroa.9.0.extract.shift to i8
  %bytes.sroa.10.0.extract.shift = lshr i64 %raw, 8
  %bytes.sroa.10.0.extract.trunc = trunc i64 %bytes.sroa.10.0.extract.shift to i8
  %bytes.sroa.11.0.extract.trunc = trunc i64 %raw to i8
  %0 = add i8 %bytes.sroa.0.0.extract.trunc, -48
  %1 = icmp ult i8 %0, 10
  %2 = add i8 %bytes.sroa.5.0.extract.trunc, -48
  %3 = icmp ult i8 %2, 10
  %or.cond = and i1 %1, %3
  %4 = add i8 %bytes.sroa.6.0.extract.trunc, -48
  %5 = icmp ult i8 %4, 10
  %or.cond10 = and i1 %5, %or.cond
  %6 = add i8 %bytes.sroa.7.0.extract.trunc, -48
  %7 = icmp ult i8 %6, 10
  %or.cond12 = and i1 %7, %or.cond10
  %8 = add i8 %bytes.sroa.8.0.extract.trunc, -48
  %9 = icmp ult i8 %8, 10
  %or.cond14 = and i1 %9, %or.cond12
  %10 = add i8 %bytes.sroa.9.0.extract.trunc, -48
  %11 = icmp ult i8 %10, 10
  %or.cond16 = and i1 %11, %or.cond14
  %12 = add i8 %bytes.sroa.10.0.extract.trunc, -48
  %13 = icmp ult i8 %12, 10
  %or.cond18 = and i1 %13, %or.cond16
  %14 = add i8 %bytes.sroa.11.0.extract.trunc, -48
  %15 = icmp ult i8 %14, 10
  %or.cond20 = and i1 %15, %or.cond18
  br i1 %or.cond20, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %or19.i.i.i = tail call i64 @llvm.bswap.i64(i64 %raw) #2
  %sub.i = add i64 %or19.i.i.i, -3472328296227680304
  %or19.i.i3.i = tail call i64 @llvm.bswap.i64(i64 %sub.i) #2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %or19.i.i3.i, %if.end ], [ -1, %entry ]
  ret i64 %retval.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

attributes #0 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-bpermd,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-rop-protect,-spe,-vsx" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
