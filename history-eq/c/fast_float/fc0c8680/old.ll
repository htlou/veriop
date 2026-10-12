; ModuleID = 'history-eq/c/fast_float/fc0c8680/wrap.cpp'
source_filename = "history-eq/c/fast_float/fc0c8680/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.target_exponent.input = private unnamed_addr constant [10 x i8] c"1e1000000\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_exponent() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %1) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 1 dereferenceable(10) @__const.target_exponent.input, i64 10, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %3 = load i8, ptr %1, align 1, !tbaa !5, !noalias !8
  %4 = add i8 %3, -58
  %5 = icmp ult i8 %4, -10
  br i1 %5, label %46, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5, !noalias !8
  %9 = add i8 %8, -48
  %10 = icmp ult i8 %9, 10
  br i1 %10, label %11, label %46

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !5, !noalias !8
  %14 = add i8 %13, -48
  %15 = icmp ult i8 %14, 10
  br i1 %15, label %16, label %46

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !5, !noalias !8
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %23 = load i8, ptr %22, align 1, !tbaa !5, !noalias !8
  %24 = add i8 %23, -48
  %25 = icmp ult i8 %24, 10
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %28 = load i8, ptr %27, align 1, !tbaa !5, !noalias !8
  %29 = add i8 %28, -48
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %33 = load i8, ptr %32, align 1, !tbaa !5, !noalias !8
  %34 = add i8 %33, -48
  %35 = icmp ult i8 %34, 10
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %38 = load i8, ptr %37, align 1, !tbaa !5, !noalias !8
  %39 = add i8 %38, -48
  %40 = icmp ult i8 %39, 10
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %43 = load i8, ptr %42, align 1, !tbaa !5, !noalias !8
  %44 = add i8 %43, -48
  %45 = icmp ult i8 %44, 10
  br i1 %45, label %234, label %46

46:                                               ; preds = %41, %36, %31, %26, %21, %16, %11, %6, %0
  %47 = phi i64 [ 0, %0 ], [ 1, %6 ], [ 2, %11 ], [ 3, %16 ], [ 4, %21 ], [ 5, %26 ], [ 6, %31 ], [ 7, %36 ], [ 8, %41 ]
  %48 = phi i8 [ %3, %0 ], [ %8, %6 ], [ %13, %11 ], [ %18, %16 ], [ %23, %21 ], [ %28, %26 ], [ %33, %31 ], [ %38, %36 ], [ %43, %41 ]
  %49 = icmp eq i8 %48, 46
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = add nuw nsw i64 %47, 1
  br i1 %5, label %52, label %60

52:                                               ; preds = %50
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 %51
  %54 = load i64, ptr %53, align 1, !noalias !8
  %55 = add i64 %54, 5063812098665367110
  %56 = add i64 %54, -3472328296227680304
  %57 = or i64 %55, %56
  %58 = and i64 %57, -9187201950435737472
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %73, label %62

60:                                               ; preds = %50
  %61 = icmp eq i64 %51, 9
  br i1 %61, label %73, label %62

62:                                               ; preds = %52, %60
  %63 = phi i64 [ 1, %52 ], [ %51, %60 ]
  br label %64

64:                                               ; preds = %62, %70
  %65 = phi i64 [ %71, %70 ], [ %63, %62 ]
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !5, !noalias !8
  %68 = add i8 %67, -48
  %69 = icmp ult i8 %68, 10
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = add nuw nsw i64 %65, 1
  %72 = icmp eq i64 %71, 9
  br i1 %72, label %73, label %64, !llvm.loop !11

73:                                               ; preds = %70, %64, %52, %60
  %74 = phi i64 [ 9, %60 ], [ 9, %52 ], [ %65, %64 ], [ 9, %70 ]
  %75 = sub nsw i64 %51, %74
  %76 = sub nsw i64 %47, %75
  br label %77

77:                                               ; preds = %73, %46
  %78 = phi i64 [ %75, %73 ], [ 0, %46 ]
  %79 = phi i64 [ %76, %73 ], [ %47, %46 ]
  %80 = phi i64 [ %74, %73 ], [ %47, %46 ]
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 %80
  %82 = icmp eq i64 %79, 0
  br i1 %82, label %234, label %83

83:                                               ; preds = %77
  %84 = icmp eq i64 %80, 9
  br i1 %84, label %127, label %85

85:                                               ; preds = %83
  %86 = load i8, ptr %81, align 1, !tbaa !5, !noalias !8
  switch i8 %86, label %127 [
    i8 101, label %87
    i8 69, label %87
  ]

87:                                               ; preds = %85, %85
  %88 = add nuw nsw i64 %80, 1
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 %88
  %90 = icmp eq i64 %88, 9
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  %92 = load i8, ptr %89, align 1, !tbaa !5, !noalias !8
  %93 = icmp eq i8 %92, 45
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = getelementptr inbounds nuw i8, ptr %81, i64 2
  br label %100

96:                                               ; preds = %91
  %97 = icmp eq i8 %92, 43
  %98 = getelementptr inbounds nuw i8, ptr %81, i64 2
  %99 = select i1 %97, ptr %98, ptr %89
  br label %100

100:                                              ; preds = %96, %94, %87
  %101 = phi i1 [ true, %94 ], [ false, %96 ], [ false, %87 ]
  %102 = phi ptr [ %95, %94 ], [ %99, %96 ], [ %89, %87 ]
  %103 = icmp eq ptr %102, %2
  br i1 %103, label %127, label %104

104:                                              ; preds = %100
  %105 = load i8, ptr %102, align 1, !tbaa !5, !noalias !8
  %106 = add i8 %105, -48
  %107 = icmp ult i8 %106, 10
  br i1 %107, label %108, label %127

108:                                              ; preds = %104, %114
  %109 = phi ptr [ %120, %114 ], [ %102, %104 ]
  %110 = phi i64 [ %119, %114 ], [ 0, %104 ]
  %111 = load i8, ptr %109, align 1, !tbaa !5, !noalias !8
  %112 = add i8 %111, -48
  %113 = icmp ult i8 %112, 10
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = icmp slt i64 %110, 65536
  %116 = mul nsw i64 %110, 10
  %117 = zext nneg i8 %112 to i64
  %118 = add nsw i64 %116, %117
  %119 = select i1 %115, i64 %118, i64 %110
  %120 = getelementptr inbounds nuw i8, ptr %109, i64 1
  %121 = icmp eq ptr %120, %2
  br i1 %121, label %122, label %108, !llvm.loop !13

122:                                              ; preds = %114, %108
  %123 = phi i64 [ %119, %114 ], [ %110, %108 ]
  %124 = sub nsw i64 0, %123
  %125 = select i1 %101, i64 %124, i64 %123
  %126 = add nsw i64 %125, %78
  br label %127

127:                                              ; preds = %85, %83, %122, %104, %100
  %128 = phi i64 [ %126, %122 ], [ %78, %104 ], [ %78, %100 ], [ %78, %83 ], [ %78, %85 ]
  %129 = phi i64 [ %125, %122 ], [ 0, %104 ], [ 0, %100 ], [ 0, %83 ], [ 0, %85 ]
  %130 = icmp sgt i64 %79, 19
  br i1 %130, label %131, label %234

131:                                              ; preds = %127
  %132 = load i8, ptr %1, align 1, !tbaa !5, !noalias !8
  switch i8 %132, label %185 [
    i8 48, label %133
    i8 46, label %133
  ]

133:                                              ; preds = %131, %131
  %134 = icmp eq i8 %132, 48
  %135 = sext i1 %134 to i64
  %136 = add nsw i64 %79, %135
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %138 = load i8, ptr %137, align 1, !tbaa !5, !noalias !8
  switch i8 %138, label %185 [
    i8 48, label %139
    i8 46, label %139
  ]

139:                                              ; preds = %133, %133
  %140 = icmp eq i8 %138, 48
  %141 = sext i1 %140 to i64
  %142 = add nsw i64 %136, %141
  %143 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %144 = load i8, ptr %143, align 1, !tbaa !5, !noalias !8
  switch i8 %144, label %185 [
    i8 48, label %145
    i8 46, label %145
  ]

145:                                              ; preds = %139, %139
  %146 = icmp eq i8 %144, 48
  %147 = sext i1 %146 to i64
  %148 = add nsw i64 %142, %147
  %149 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %150 = load i8, ptr %149, align 1, !tbaa !5, !noalias !8
  switch i8 %150, label %185 [
    i8 48, label %151
    i8 46, label %151
  ]

151:                                              ; preds = %145, %145
  %152 = icmp eq i8 %150, 48
  %153 = sext i1 %152 to i64
  %154 = add nsw i64 %148, %153
  %155 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %156 = load i8, ptr %155, align 1, !tbaa !5, !noalias !8
  switch i8 %156, label %185 [
    i8 48, label %157
    i8 46, label %157
  ]

157:                                              ; preds = %151, %151
  %158 = icmp eq i8 %156, 48
  %159 = sext i1 %158 to i64
  %160 = add nsw i64 %154, %159
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %162 = load i8, ptr %161, align 1, !tbaa !5, !noalias !8
  switch i8 %162, label %185 [
    i8 48, label %163
    i8 46, label %163
  ]

163:                                              ; preds = %157, %157
  %164 = icmp eq i8 %162, 48
  %165 = sext i1 %164 to i64
  %166 = add nsw i64 %160, %165
  %167 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %168 = load i8, ptr %167, align 1, !tbaa !5, !noalias !8
  switch i8 %168, label %185 [
    i8 48, label %169
    i8 46, label %169
  ]

169:                                              ; preds = %163, %163
  %170 = icmp eq i8 %168, 48
  %171 = sext i1 %170 to i64
  %172 = add nsw i64 %166, %171
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %174 = load i8, ptr %173, align 1, !tbaa !5, !noalias !8
  switch i8 %174, label %185 [
    i8 48, label %175
    i8 46, label %175
  ]

175:                                              ; preds = %169, %169
  %176 = icmp eq i8 %174, 48
  %177 = sext i1 %176 to i64
  %178 = add nsw i64 %172, %177
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %180 = load i8, ptr %179, align 1, !tbaa !5, !noalias !8
  switch i8 %180, label %185 [
    i8 48, label %181
    i8 46, label %181
  ]

181:                                              ; preds = %175, %175
  %182 = icmp eq i8 %180, 48
  %183 = sext i1 %182 to i64
  %184 = add nsw i64 %178, %183
  br label %185

185:                                              ; preds = %181, %175, %169, %163, %157, %151, %145, %139, %133, %131
  %186 = phi i64 [ %79, %131 ], [ %136, %133 ], [ %142, %139 ], [ %148, %145 ], [ %154, %151 ], [ %160, %157 ], [ %166, %163 ], [ %172, %169 ], [ %178, %175 ], [ %184, %181 ]
  %187 = icmp sgt i64 %186, 19
  br i1 %187, label %188, label %234

188:                                              ; preds = %185, %195
  %189 = phi i64 [ %200, %195 ], [ 0, %185 ]
  %190 = phi i64 [ %199, %195 ], [ 0, %185 ]
  %191 = getelementptr inbounds nuw i8, ptr %1, i64 %189
  %192 = load i8, ptr %191, align 1, !tbaa !5, !noalias !8
  %193 = add i8 %192, -48
  %194 = icmp ult i8 %193, 10
  br i1 %194, label %195, label %207

195:                                              ; preds = %188
  %196 = mul nuw i64 %190, 10
  %197 = zext nneg i8 %192 to i64
  %198 = add i64 %196, -48
  %199 = add i64 %198, %197
  %200 = add nuw nsw i64 %189, 1
  %201 = icmp ugt i64 %199, 999999999999999999
  %202 = icmp eq i64 %200, 9
  %203 = select i1 %201, i1 true, i1 %202
  br i1 %203, label %204, label %188, !llvm.loop !14

204:                                              ; preds = %195
  br i1 %201, label %205, label %207

205:                                              ; preds = %204
  %206 = sub nsw i64 %47, %200
  br label %231

207:                                              ; preds = %188, %204
  %208 = phi i64 [ %199, %204 ], [ %190, %188 ]
  %209 = phi i64 [ %200, %204 ], [ %189, %188 ]
  %210 = add nuw nsw i64 %209, 1
  %211 = icmp eq i64 %210, 9
  br i1 %211, label %228, label %212

212:                                              ; preds = %207, %219
  %213 = phi i64 [ %224, %219 ], [ %210, %207 ]
  %214 = phi i64 [ %223, %219 ], [ %208, %207 ]
  %215 = getelementptr inbounds nuw i8, ptr %1, i64 %213
  %216 = load i8, ptr %215, align 1, !tbaa !5, !noalias !8
  %217 = add i8 %216, -48
  %218 = icmp ult i8 %217, 10
  br i1 %218, label %219, label %228

219:                                              ; preds = %212
  %220 = mul nuw i64 %214, 10
  %221 = zext nneg i8 %216 to i64
  %222 = add i64 %220, -48
  %223 = add i64 %222, %221
  %224 = add nuw nsw i64 %213, 1
  %225 = icmp ugt i64 %223, 999999999999999999
  %226 = icmp eq i64 %224, 9
  %227 = select i1 %225, i1 true, i1 %226
  br i1 %227, label %228, label %212, !llvm.loop !15

228:                                              ; preds = %219, %212, %207
  %229 = phi i64 [ %210, %207 ], [ %213, %212 ], [ %224, %219 ]
  %230 = sub nsw i64 %210, %229
  br label %231

231:                                              ; preds = %228, %205
  %232 = phi i64 [ %206, %205 ], [ %230, %228 ]
  %233 = add nsw i64 %232, %129
  br label %234

234:                                              ; preds = %41, %127, %185, %231, %77
  %235 = phi i64 [ undef, %77 ], [ %128, %127 ], [ %233, %231 ], [ %128, %185 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %1) #3
  ret i64 %235
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE: argument 0"}
!10 = distinct !{!10, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_13parse_optionsE"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
