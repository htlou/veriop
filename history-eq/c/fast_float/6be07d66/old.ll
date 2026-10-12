; ModuleID = 'history-eq/c/fast_float/6be07d66/old/isolated.cpp'
source_filename = "history-eq/c/fast_float/6be07d66/old/isolated.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin = comdat any

$_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE = comdat any

$_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE = comdat any

@_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin = linkonce_odr dso_local global float 0x3810000000000000, comdat, align 4
@_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE = linkonce_odr dso_local local_unnamed_addr constant [23 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15, double 1.000000e+16, double 1.000000e+17, double 1.000000e+18, double 1.000000e+19, double 1.000000e+20, double 1.000000e+21, double 1.000000e+22], comdat, align 16
@_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE = linkonce_odr dso_local local_unnamed_addr constant [24 x i64] [i64 9007199254740992, i64 1801439850948198, i64 360287970189639, i64 72057594037927, i64 14411518807585, i64 2882303761517, i64 576460752303, i64 115292150460, i64 23058430092, i64 4611686018, i64 922337203, i64 184467440, i64 36893488, i64 7378697, i64 295147, i64 59029, i64 11805, i64 2361, i64 472, i64 94, i64 18, i64 3, i64 0, i64 0], comdat, align 16

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local i64 @target_ok(i64 noundef %m, i64 noundef %e, i1 noundef zeroext %n) local_unnamed_addr #0 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = add i64 %e, -23
  %1 = icmp ult i64 %0, -45
  br i1 %1, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %2 = load volatile float, float* @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !5
  %add.i.i = fadd float %2, 1.000000e+00
  %sub.i.i = fsub float 1.000000e+00, %2
  %cmp.i.i = fcmp oeq float %add.i.i, %sub.i.i
  br i1 %cmp.i.i, label %invoke.cont7.i, label %if.else21.i

invoke.cont7.i:                                   ; preds = %if.then.i
  %cmp9.not.i = icmp ult i64 %m, 9007199254740993
  br label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

if.else21.i:                                      ; preds = %if.then.i
  %cmp22.i = icmp sgt i64 %e, -1
  br i1 %cmp22.i, label %land.lhs.true23.i, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

land.lhs.true23.i:                                ; preds = %if.else21.i
  %arrayidx.i68.i = getelementptr inbounds [24 x i64], [24 x i64]* @_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE, i64 0, i64 %e
  %3 = load i64, i64* %arrayidx.i68.i, align 8, !tbaa !9
  %cmp26.not.i = icmp uge i64 %3, %m
  br label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit: ; preds = %land.lhs.true23.i, %invoke.cont7.i, %entry, %if.else21.i
  %retval.0.i.shrunk = phi i1 [ false, %if.else21.i ], [ false, %entry ], [ %cmp9.not.i, %invoke.cont7.i ], [ %cmp26.not.i, %land.lhs.true23.i ]
  %retval.0.i = zext i1 %retval.0.i.shrunk to i64
  ret i64 %retval.0.i
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local i64 @target_bits(i64 noundef %m, i64 noundef %e, i1 noundef zeroext %n) local_unnamed_addr #0 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = add i64 %e, -23
  %1 = icmp ult i64 %0, -45
  br i1 %1, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %2 = load volatile float, float* @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !5
  %add.i.i = fadd float %2, 1.000000e+00
  %sub.i.i = fsub float 1.000000e+00, %2
  %cmp.i.i = fcmp oeq float %add.i.i, %sub.i.i
  br i1 %cmp.i.i, label %invoke.cont7.i, label %if.else21.i

invoke.cont7.i:                                   ; preds = %if.then.i
  %cmp9.not.i = icmp ugt i64 %m, 9007199254740992
  br i1 %cmp9.not.i, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit, label %if.then10.i

if.then10.i:                                      ; preds = %invoke.cont7.i
  %conv11.i = uitofp i64 %m to double
  %cmp12.i = icmp slt i64 %e, 0
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.then10.i
  %sub.i = sub nsw i64 0, %e
  %arrayidx.i.i = getelementptr inbounds [23 x double], [23 x double]* @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 0, i64 %sub.i
  %3 = load double, double* %arrayidx.i.i, align 8, !tbaa !11
  %div.i = fdiv double %conv11.i, %3
  br label %if.end.i

if.else.i:                                        ; preds = %if.then10.i
  %arrayidx.i67.i = getelementptr inbounds [23 x double], [23 x double]* @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 0, i64 %e
  %4 = load double, double* %arrayidx.i67.i, align 8, !tbaa !11
  %mul.i = fmul double %4, %conv11.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then13.i
  %storemerge66.i = phi double [ %mul.i, %if.else.i ], [ %div.i, %if.then13.i ]
  %fneg.i = fneg double %storemerge66.i
  %spec.select = select i1 %n, double %fneg.i, double %storemerge66.i
  br label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

if.else21.i:                                      ; preds = %if.then.i
  %cmp22.i = icmp sgt i64 %e, -1
  br i1 %cmp22.i, label %land.lhs.true23.i, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

land.lhs.true23.i:                                ; preds = %if.else21.i
  %arrayidx.i68.i = getelementptr inbounds [24 x i64], [24 x i64]* @_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE, i64 0, i64 %e
  %5 = load i64, i64* %arrayidx.i68.i, align 8, !tbaa !9
  %cmp26.not.i = icmp ult i64 %5, %m
  br i1 %cmp26.not.i, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit, label %if.then27.i

if.then27.i:                                      ; preds = %land.lhs.true23.i
  %cmp28.i = icmp eq i64 %m, 0
  br i1 %cmp28.i, label %if.then29.i, label %if.end31.i

if.then29.i:                                      ; preds = %if.then27.i
  %cond.i = select i1 %n, double -0.000000e+00, double 0.000000e+00
  br label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

if.end31.i:                                       ; preds = %if.then27.i
  %conv32.i = uitofp i64 %m to double
  %arrayidx.i69.i = getelementptr inbounds [23 x double], [23 x double]* @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE, i64 0, i64 %e
  %6 = load double, double* %arrayidx.i69.i, align 8, !tbaa !11
  %mul35.i = fmul double %6, %conv32.i
  %fneg38.i = fneg double %mul35.i
  %spec.select.i = select i1 %n, double %fneg38.i, double %mul35.i
  br label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit

_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit: ; preds = %if.end.i, %if.then29.i, %if.end31.i, %entry, %invoke.cont7.i, %if.else21.i, %land.lhs.true23.i
  %value.0 = phi double [ 1.230000e+02, %entry ], [ 1.230000e+02, %invoke.cont7.i ], [ 1.230000e+02, %land.lhs.true23.i ], [ 1.230000e+02, %if.else21.i ], [ %spec.select.i, %if.end31.i ], [ %cond.i, %if.then29.i ], [ %spec.select, %if.end.i ]
  %7 = bitcast double %value.0 to i64
  ret i64 %7
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !7, i64 0}
