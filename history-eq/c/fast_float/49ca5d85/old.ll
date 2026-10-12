; ModuleID = 'history-eq/c/fast_float/49ca5d85/old.cpp'
source_filename = "history-eq/c/fast_float/49ca5d85/old.cpp"
target datalayout = "E-m:e-i64:64-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define dso_local i64 @target_is_digits(i64 noundef %raw) local_unnamed_addr #0 {
entry:
  %bytes.sroa.0.0.extract.shift = lshr i64 %raw, 56
  %bytes.sroa.0.0.extract.trunc = trunc i64 %bytes.sroa.0.0.extract.shift to i8
  %bytes.sroa.4.0.extract.shift = lshr i64 %raw, 48
  %bytes.sroa.4.0.extract.trunc = trunc i64 %bytes.sroa.4.0.extract.shift to i8
  %bytes.sroa.5.0.extract.shift = lshr i64 %raw, 40
  %bytes.sroa.5.0.extract.trunc = trunc i64 %bytes.sroa.5.0.extract.shift to i8
  %bytes.sroa.6.0.extract.shift = lshr i64 %raw, 32
  %bytes.sroa.6.0.extract.trunc = trunc i64 %bytes.sroa.6.0.extract.shift to i8
  %bytes.sroa.7.0.extract.shift = lshr i64 %raw, 24
  %bytes.sroa.7.0.extract.trunc = trunc i64 %bytes.sroa.7.0.extract.shift to i8
  %bytes.sroa.8.0.extract.shift = lshr i64 %raw, 16
  %bytes.sroa.8.0.extract.trunc = trunc i64 %bytes.sroa.8.0.extract.shift to i8
  %bytes.sroa.9.0.extract.shift = lshr i64 %raw, 8
  %bytes.sroa.9.0.extract.trunc = trunc i64 %bytes.sroa.9.0.extract.shift to i8
  %0 = add i8 %bytes.sroa.0.0.extract.trunc, -48
  %1 = icmp ult i8 %0, 10
  %2 = add i8 %bytes.sroa.4.0.extract.trunc, -48
  %3 = icmp ult i8 %2, 10
  %or.cond = and i1 %1, %3
  %4 = add i8 %bytes.sroa.5.0.extract.trunc, -48
  %5 = icmp ult i8 %4, 10
  %or.cond4 = and i1 %5, %or.cond
  %6 = add i8 %bytes.sroa.6.0.extract.trunc, -48
  %7 = icmp ult i8 %6, 10
  %or.cond6 = and i1 %7, %or.cond4
  %8 = add i8 %bytes.sroa.7.0.extract.trunc, -48
  %9 = icmp ult i8 %8, 10
  %or.cond8 = and i1 %9, %or.cond6
  %10 = add i8 %bytes.sroa.8.0.extract.trunc, -48
  %11 = icmp ult i8 %10, 10
  %or.cond10 = and i1 %11, %or.cond8
  %12 = add i8 %bytes.sroa.9.0.extract.trunc, -48
  %13 = icmp ult i8 %12, 10
  %or.cond12 = and i1 %13, %or.cond10
  %bytes.sroa.10.0.extract.trunc = trunc i64 %raw to i8
  %14 = add i8 %bytes.sroa.10.0.extract.trunc, -48
  %15 = icmp ult i8 %14, 10
  %narrow = and i1 %or.cond12, %15
  %cmp.lcssa.i.i = zext i1 %narrow to i64
  ret i64 %cmp.lcssa.i.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define dso_local i64 @target_parse(i64 noundef %raw) local_unnamed_addr #0 {
entry:
  %bytes.sroa.0.0.extract.shift = lshr i64 %raw, 56
  %bytes.sroa.0.0.extract.trunc = trunc i64 %bytes.sroa.0.0.extract.shift to i8
  %bytes.sroa.5.0.extract.shift = lshr i64 %raw, 48
  %bytes.sroa.5.0.extract.trunc = trunc i64 %bytes.sroa.5.0.extract.shift to i8
  %bytes.sroa.7.0.extract.shift = lshr i64 %raw, 40
  %bytes.sroa.7.0.extract.trunc = trunc i64 %bytes.sroa.7.0.extract.shift to i8
  %bytes.sroa.9.0.extract.shift = lshr i64 %raw, 32
  %bytes.sroa.9.0.extract.trunc = trunc i64 %bytes.sroa.9.0.extract.shift to i8
  %bytes.sroa.11.0.extract.shift = lshr i64 %raw, 24
  %bytes.sroa.11.0.extract.trunc = trunc i64 %bytes.sroa.11.0.extract.shift to i8
  %bytes.sroa.13.0.extract.shift = lshr i64 %raw, 16
  %bytes.sroa.13.0.extract.trunc = trunc i64 %bytes.sroa.13.0.extract.shift to i8
  %bytes.sroa.15.0.extract.shift = lshr i64 %raw, 8
  %bytes.sroa.15.0.extract.trunc = trunc i64 %bytes.sroa.15.0.extract.shift to i8
  %bytes.sroa.17.0.extract.trunc = trunc i64 %raw to i8
  %0 = add i8 %bytes.sroa.0.0.extract.trunc, -48
  %1 = icmp ult i8 %0, 10
  %2 = add i8 %bytes.sroa.5.0.extract.trunc, -48
  %3 = icmp ult i8 %2, 10
  %or.cond = and i1 %1, %3
  %4 = add i8 %bytes.sroa.7.0.extract.trunc, -48
  %5 = icmp ult i8 %4, 10
  %or.cond15 = and i1 %5, %or.cond
  %6 = add i8 %bytes.sroa.9.0.extract.trunc, -48
  %7 = icmp ult i8 %6, 10
  %or.cond17 = and i1 %7, %or.cond15
  %8 = add i8 %bytes.sroa.11.0.extract.trunc, -48
  %9 = icmp ult i8 %8, 10
  %or.cond19 = and i1 %9, %or.cond17
  %10 = add i8 %bytes.sroa.13.0.extract.trunc, -48
  %11 = icmp ult i8 %10, 10
  %or.cond21 = and i1 %11, %or.cond19
  %12 = add i8 %bytes.sroa.15.0.extract.trunc, -48
  %13 = icmp ult i8 %12, 10
  %or.cond23 = and i1 %13, %or.cond21
  %14 = add i8 %bytes.sroa.17.0.extract.trunc, -48
  %15 = icmp ult i8 %14, 10
  %or.cond25 = and i1 %15, %or.cond23
  br i1 %or.cond25, label %_ZN10fast_floatL5parseEPKc.exit, label %cleanup

_ZN10fast_floatL5parseEPKc.exit:                  ; preds = %entry
  %conv2.i.i = zext i8 %0 to i64
  %16 = add nuw nsw i64 %bytes.sroa.5.0.extract.shift, 208
  %mul.1.i.i = mul nuw nsw i64 %conv2.i.i, 10
  %conv2.1.i.i = and i64 %16, 255
  %add.1.i.i = add nuw nsw i64 %mul.1.i.i, %conv2.1.i.i
  %17 = add nuw nsw i64 %bytes.sroa.7.0.extract.shift, 208
  %mul.2.i.i = mul nuw nsw i64 %add.1.i.i, 10
  %conv2.2.i.i = and i64 %17, 255
  %add.2.i.i = add nuw nsw i64 %mul.2.i.i, %conv2.2.i.i
  %18 = add nuw nsw i64 %bytes.sroa.9.0.extract.shift, 208
  %mul.3.i.i = mul nuw nsw i64 %add.2.i.i, 10
  %conv2.3.i.i = and i64 %18, 255
  %add.3.i.i = add nuw nsw i64 %mul.3.i.i, %conv2.3.i.i
  %19 = add nuw nsw i64 %bytes.sroa.11.0.extract.shift, 208
  %mul.4.i.i = mul nuw nsw i64 %add.3.i.i, 10
  %conv2.4.i.i = and i64 %19, 255
  %add.4.i.i = add nuw nsw i64 %mul.4.i.i, %conv2.4.i.i
  %20 = add nuw nsw i64 %bytes.sroa.13.0.extract.shift, 208
  %mul.5.i.i = mul nuw nsw i64 %add.4.i.i, 10
  %conv2.5.i.i = and i64 %20, 255
  %add.5.i.i = add nuw nsw i64 %mul.5.i.i, %conv2.5.i.i
  %21 = add nuw nsw i64 %bytes.sroa.15.0.extract.shift, 208
  %mul.6.i.i = mul nuw nsw i64 %add.5.i.i, 10
  %conv2.6.i.i = and i64 %21, 255
  %add.6.i.i = add nuw nsw i64 %mul.6.i.i, %conv2.6.i.i
  %22 = add i64 %raw, 208
  %mul.7.i.i = mul nuw nsw i64 %add.6.i.i, 10
  %conv2.7.i.i = and i64 %22, 255
  %add.7.i.i = add nuw nsw i64 %mul.7.i.i, %conv2.7.i.i
  br label %cleanup

cleanup:                                          ; preds = %entry, %_ZN10fast_floatL5parseEPKc.exit
  %retval.0 = phi i64 [ %add.7.i.i, %_ZN10fast_floatL5parseEPKc.exit ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define dso_local i64 @target_parse_valid(i64 noundef %raw) local_unnamed_addr #0 {
entry:
  %bytes.sroa.0.0.extract.shift = lshr i64 %raw, 56
  %bytes.sroa.0.0.extract.trunc = trunc i64 %bytes.sroa.0.0.extract.shift to i8
  %bytes.sroa.5.0.extract.shift = lshr i64 %raw, 48
  %bytes.sroa.5.0.extract.trunc = trunc i64 %bytes.sroa.5.0.extract.shift to i8
  %bytes.sroa.7.0.extract.shift = lshr i64 %raw, 40
  %bytes.sroa.7.0.extract.trunc = trunc i64 %bytes.sroa.7.0.extract.shift to i8
  %bytes.sroa.9.0.extract.shift = lshr i64 %raw, 32
  %bytes.sroa.9.0.extract.trunc = trunc i64 %bytes.sroa.9.0.extract.shift to i8
  %bytes.sroa.11.0.extract.shift = lshr i64 %raw, 24
  %bytes.sroa.11.0.extract.trunc = trunc i64 %bytes.sroa.11.0.extract.shift to i8
  %bytes.sroa.13.0.extract.shift = lshr i64 %raw, 16
  %bytes.sroa.13.0.extract.trunc = trunc i64 %bytes.sroa.13.0.extract.shift to i8
  %bytes.sroa.15.0.extract.shift = lshr i64 %raw, 8
  %bytes.sroa.15.0.extract.trunc = trunc i64 %bytes.sroa.15.0.extract.shift to i8
  %bytes.sroa.17.0.extract.trunc = trunc i64 %raw to i8
  %0 = add i8 %bytes.sroa.0.0.extract.trunc, -48
  %1 = icmp ult i8 %0, 10
  %2 = add i8 %bytes.sroa.5.0.extract.trunc, -48
  %3 = icmp ult i8 %2, 10
  %or.cond = and i1 %1, %3
  %4 = add i8 %bytes.sroa.7.0.extract.trunc, -48
  %5 = icmp ult i8 %4, 10
  %or.cond15 = and i1 %5, %or.cond
  %6 = add i8 %bytes.sroa.9.0.extract.trunc, -48
  %7 = icmp ult i8 %6, 10
  %or.cond17 = and i1 %7, %or.cond15
  %8 = add i8 %bytes.sroa.11.0.extract.trunc, -48
  %9 = icmp ult i8 %8, 10
  %or.cond19 = and i1 %9, %or.cond17
  %10 = add i8 %bytes.sroa.13.0.extract.trunc, -48
  %11 = icmp ult i8 %10, 10
  %or.cond21 = and i1 %11, %or.cond19
  %12 = add i8 %bytes.sroa.15.0.extract.trunc, -48
  %13 = icmp ult i8 %12, 10
  %or.cond23 = and i1 %13, %or.cond21
  %14 = add i8 %bytes.sroa.17.0.extract.trunc, -48
  %15 = icmp ult i8 %14, 10
  %or.cond25 = and i1 %15, %or.cond23
  br i1 %or.cond25, label %_ZN10fast_floatL5parseEPKc.exit, label %cleanup

_ZN10fast_floatL5parseEPKc.exit:                  ; preds = %entry
  %conv2.i.i = zext i8 %0 to i64
  %16 = add nuw nsw i64 %bytes.sroa.5.0.extract.shift, 208
  %mul.1.i.i = mul nuw nsw i64 %conv2.i.i, 10
  %conv2.1.i.i = and i64 %16, 255
  %add.1.i.i = add nuw nsw i64 %mul.1.i.i, %conv2.1.i.i
  %17 = add nuw nsw i64 %bytes.sroa.7.0.extract.shift, 208
  %mul.2.i.i = mul nuw nsw i64 %add.1.i.i, 10
  %conv2.2.i.i = and i64 %17, 255
  %add.2.i.i = add nuw nsw i64 %mul.2.i.i, %conv2.2.i.i
  %18 = add nuw nsw i64 %bytes.sroa.9.0.extract.shift, 208
  %mul.3.i.i = mul nuw nsw i64 %add.2.i.i, 10
  %conv2.3.i.i = and i64 %18, 255
  %add.3.i.i = add nuw nsw i64 %mul.3.i.i, %conv2.3.i.i
  %19 = add nuw nsw i64 %bytes.sroa.11.0.extract.shift, 208
  %mul.4.i.i = mul nuw nsw i64 %add.3.i.i, 10
  %conv2.4.i.i = and i64 %19, 255
  %add.4.i.i = add nuw nsw i64 %mul.4.i.i, %conv2.4.i.i
  %20 = add nuw nsw i64 %bytes.sroa.13.0.extract.shift, 208
  %mul.5.i.i = mul nuw nsw i64 %add.4.i.i, 10
  %conv2.5.i.i = and i64 %20, 255
  %add.5.i.i = add nuw nsw i64 %mul.5.i.i, %conv2.5.i.i
  %21 = add nuw nsw i64 %bytes.sroa.15.0.extract.shift, 208
  %mul.6.i.i = mul nuw nsw i64 %add.5.i.i, 10
  %conv2.6.i.i = and i64 %21, 255
  %add.6.i.i = add nuw nsw i64 %mul.6.i.i, %conv2.6.i.i
  %22 = add i64 %raw, 208
  %mul.7.i.i = mul nuw nsw i64 %add.6.i.i, 10
  %conv2.7.i.i = and i64 %22, 255
  %add.7.i.i = add nuw nsw i64 %mul.7.i.i, %conv2.7.i.i
  br label %cleanup

cleanup:                                          ; preds = %entry, %_ZN10fast_floatL5parseEPKc.exit
  %retval.0 = phi i64 [ %add.7.i.i, %_ZN10fast_floatL5parseEPKc.exit ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
define dso_local i64 @target_digits_buffer(i64 noundef %raw) local_unnamed_addr #0 {
entry:
  %bytes.sroa.0.0.extract.shift = lshr i64 %raw, 56
  %bytes.sroa.0.0.extract.trunc = trunc i64 %bytes.sroa.0.0.extract.shift to i8
  %bytes.sroa.5.0.extract.shift = lshr i64 %raw, 48
  %bytes.sroa.5.0.extract.trunc = trunc i64 %bytes.sroa.5.0.extract.shift to i8
  %bytes.sroa.7.0.extract.shift = lshr i64 %raw, 40
  %bytes.sroa.7.0.extract.trunc = trunc i64 %bytes.sroa.7.0.extract.shift to i8
  %bytes.sroa.9.0.extract.shift = lshr i64 %raw, 32
  %bytes.sroa.9.0.extract.trunc = trunc i64 %bytes.sroa.9.0.extract.shift to i8
  %bytes.sroa.11.0.extract.shift = lshr i64 %raw, 24
  %bytes.sroa.11.0.extract.trunc = trunc i64 %bytes.sroa.11.0.extract.shift to i8
  %bytes.sroa.13.0.extract.shift = lshr i64 %raw, 16
  %bytes.sroa.13.0.extract.trunc = trunc i64 %bytes.sroa.13.0.extract.shift to i8
  %bytes.sroa.15.0.extract.shift = lshr i64 %raw, 8
  %bytes.sroa.15.0.extract.trunc = trunc i64 %bytes.sroa.15.0.extract.shift to i8
  %bytes.sroa.17.0.extract.trunc = trunc i64 %raw to i8
  %0 = add i8 %bytes.sroa.0.0.extract.trunc, -48
  %1 = icmp ult i8 %0, 10
  %2 = add i8 %bytes.sroa.5.0.extract.trunc, -48
  %3 = icmp ult i8 %2, 10
  %or.cond = and i1 %1, %3
  %4 = add i8 %bytes.sroa.7.0.extract.trunc, -48
  %5 = icmp ult i8 %4, 10
  %or.cond24 = and i1 %5, %or.cond
  %6 = add i8 %bytes.sroa.9.0.extract.trunc, -48
  %7 = icmp ult i8 %6, 10
  %or.cond26 = and i1 %7, %or.cond24
  %8 = add i8 %bytes.sroa.11.0.extract.trunc, -48
  %9 = icmp ult i8 %8, 10
  %or.cond28 = and i1 %9, %or.cond26
  %10 = add i8 %bytes.sroa.13.0.extract.trunc, -48
  %11 = icmp ult i8 %10, 10
  %or.cond30 = and i1 %11, %or.cond28
  %12 = add i8 %bytes.sroa.15.0.extract.trunc, -48
  %13 = icmp ult i8 %12, 10
  %or.cond32 = and i1 %13, %or.cond30
  %14 = add i8 %bytes.sroa.17.0.extract.trunc, -48
  %15 = icmp ult i8 %14, 10
  %or.cond34 = and i1 %15, %or.cond32
  br i1 %or.cond34, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sub.7.i = add i64 %raw, 208
  %out.sroa.10.0.insert.ext = and i64 %sub.7.i, 255
  %16 = add i64 %raw, 53248
  %out.sroa.9.0.insert.shift = and i64 %16, 65280
  %out.sroa.9.0.insert.insert = or i64 %out.sroa.10.0.insert.ext, %out.sroa.9.0.insert.shift
  %17 = add i64 %raw, 13631488
  %out.sroa.8.0.insert.shift = and i64 %17, 16711680
  %out.sroa.8.0.insert.insert = or i64 %out.sroa.9.0.insert.insert, %out.sroa.8.0.insert.shift
  %18 = add i64 %raw, 3489660928
  %out.sroa.7.0.insert.shift = and i64 %18, 4278190080
  %out.sroa.7.0.insert.insert = or i64 %out.sroa.8.0.insert.insert, %out.sroa.7.0.insert.shift
  %19 = add i64 %raw, 893353197568
  %out.sroa.6.0.insert.shift = and i64 %19, 1095216660480
  %out.sroa.6.0.insert.insert = or i64 %out.sroa.7.0.insert.insert, %out.sroa.6.0.insert.shift
  %20 = add i64 %raw, 228698418577408
  %out.sroa.5.0.insert.shift = and i64 %20, 280375465082880
  %21 = add i64 %raw, 58546795155816448
  %out.sroa.4.0.insert.shift = and i64 %21, 71776119061217280
  %out.sroa.4.0.insert.mask = or i64 %out.sroa.6.0.insert.insert, %out.sroa.5.0.insert.shift
  %out.sroa.0.0.insert.ext = zext i8 %0 to i64
  %out.sroa.0.0.insert.shift = shl nuw nsw i64 %out.sroa.0.0.insert.ext, 56
  %out.sroa.0.0.insert.mask = or i64 %out.sroa.4.0.insert.mask, %out.sroa.4.0.insert.shift
  %out.sroa.0.0.insert.insert = or i64 %out.sroa.0.0.insert.mask, %out.sroa.0.0.insert.shift
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %out.sroa.0.0.insert.insert, %if.end ], [ -1, %entry ]
  ret i64 %retval.0
}

attributes #0 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-bpermd,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-rop-protect,-spe,-vsx" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
