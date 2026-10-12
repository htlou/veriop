; ModuleID = 'history-eq/c/zstd/4ddb1f55/old.c'
source_filename = "history-eq/c/zstd/4ddb1f55/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -1, 4294967296) i64 @FSE_count_generic(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i32], align 16
  %8 = alloca [256 x i32], align 16
  %9 = alloca [256 x i32], align 16
  %10 = getelementptr i8, ptr %2, i64 %3
  %11 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %9, i8 0, i64 1024, i1 false)
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = add i32 %11, 1
  %15 = zext i32 %14 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %15, i1 false)
  store i32 0, ptr %1, align 4
  br label %253

16:                                               ; preds = %5
  %17 = icmp ugt i32 %11, 255
  br i1 %17, label %253, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %11, 0
  %20 = select i1 %19, i32 255, i32 %11
  %21 = icmp ne i32 %4, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %10, i64 -3
  %24 = icmp ult ptr %2, %23
  br i1 %24, label %25, label %171

25:                                               ; preds = %22, %57
  %26 = phi ptr [ %58, %57 ], [ %2, %22 ]
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ult i32 %20, %28
  br i1 %29, label %253, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 1
  %32 = zext i8 %27 to i64
  %33 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = load i8, ptr %31, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ult i32 %20, %37
  br i1 %38, label %253, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds nuw i8, ptr %26, i64 2
  %41 = zext i8 %36 to i64
  %42 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = load i8, ptr %40, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ult i32 %20, %46
  br i1 %47, label %253, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds nuw i8, ptr %26, i64 3
  %50 = zext i8 %45 to i64
  %51 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  %54 = load i8, ptr %49, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ult i32 %20, %55
  br i1 %56, label %253, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds nuw i8, ptr %26, i64 4
  %59 = zext i8 %54 to i64
  %60 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = icmp ult ptr %58, %23
  br i1 %63, label %25, label %171, !llvm.loop !5

64:                                               ; preds = %18
  %65 = getelementptr i8, ptr %10, i64 -15
  %66 = icmp sgt i64 %3, 19
  br i1 %66, label %67, label %171

67:                                               ; preds = %64
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %69 = load i32, ptr %2, align 1
  br label %70

70:                                               ; preds = %67, %70
  %71 = phi ptr [ %169, %70 ], [ %68, %67 ]
  %72 = phi i32 [ %146, %70 ], [ %69, %67 ]
  %73 = phi ptr [ %123, %70 ], [ %2, %67 ]
  %74 = load i32, ptr %71, align 1
  %75 = getelementptr inbounds nuw i8, ptr %73, i64 8
  %76 = and i32 %72, 255
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  %81 = lshr i32 %72, 8
  %82 = and i32 %81, 255
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 4
  %87 = lshr i32 %72, 16
  %88 = and i32 %87, 255
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  %93 = lshr i32 %72, 24
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 4
  %98 = load i32, ptr %75, align 1
  %99 = getelementptr inbounds nuw i8, ptr %73, i64 12
  %100 = and i32 %74, 255
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  %105 = lshr i32 %74, 8
  %106 = and i32 %105, 255
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  %111 = lshr i32 %74, 16
  %112 = and i32 %111, 255
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  %117 = lshr i32 %74, 24
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, 1
  store i32 %121, ptr %119, align 4
  %122 = load i32, ptr %99, align 1
  %123 = getelementptr inbounds nuw i8, ptr %73, i64 16
  %124 = and i32 %98, 255
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 4
  %129 = lshr i32 %98, 8
  %130 = and i32 %129, 255
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 4
  %135 = lshr i32 %98, 16
  %136 = and i32 %135, 255
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 4
  %141 = lshr i32 %98, 24
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, 1
  store i32 %145, ptr %143, align 4
  %146 = load i32, ptr %123, align 1
  %147 = and i32 %122, 255
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4
  %151 = add i32 %150, 1
  store i32 %151, ptr %149, align 4
  %152 = lshr i32 %122, 8
  %153 = and i32 %152, 255
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 4
  %158 = lshr i32 %122, 16
  %159 = and i32 %158, 255
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 4
  %164 = lshr i32 %122, 24
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, 1
  store i32 %168, ptr %166, align 4
  %169 = getelementptr inbounds nuw i8, ptr %73, i64 20
  %170 = icmp ult ptr %169, %65
  br i1 %170, label %70, label %171, !llvm.loop !7

171:                                              ; preds = %70, %57, %22, %64
  %172 = phi ptr [ %2, %64 ], [ %2, %22 ], [ %58, %57 ], [ %123, %70 ]
  %173 = icmp ult ptr %172, %10
  br i1 %173, label %179, label %174

174:                                              ; preds = %185, %171
  %175 = add nuw nsw i32 %20, 1
  %176 = zext nneg i32 %175 to i64
  %177 = and i64 %176, 1
  %178 = and i64 %176, 510
  br label %192

179:                                              ; preds = %171, %185
  %180 = phi ptr [ %186, %185 ], [ %172, %171 ]
  %181 = load i8, ptr %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp ult i32 %20, %182
  %184 = select i1 %21, i1 %183, i1 false
  br i1 %184, label %253, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds nuw i8, ptr %180, i64 1
  %187 = zext i8 %181 to i64
  %188 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %188, align 4
  %191 = icmp ult ptr %186, %10
  br i1 %191, label %179, label %174, !llvm.loop !8

192:                                              ; preds = %192, %174
  %193 = phi i64 [ 0, %174 ], [ %223, %192 ]
  %194 = phi i32 [ 0, %174 ], [ %222, %192 ]
  %195 = phi i64 [ 0, %174 ], [ %224, %192 ]
  %196 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %193
  %197 = load i32, ptr %196, align 8
  %198 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %193
  %199 = load i32, ptr %198, align 8
  %200 = add i32 %199, %197
  %201 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %193
  %202 = load i32, ptr %201, align 8
  %203 = add i32 %200, %202
  %204 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %193
  %205 = load i32, ptr %204, align 8
  %206 = add i32 %203, %205
  %207 = getelementptr inbounds nuw i32, ptr %0, i64 %193
  store i32 %206, ptr %207, align 4
  %208 = tail call i32 @llvm.umax.i32(i32 %206, i32 %194)
  %209 = or disjoint i64 %193, 1
  %210 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %209
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, %211
  %215 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %209
  %216 = load i32, ptr %215, align 4
  %217 = add i32 %214, %216
  %218 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %209
  %219 = load i32, ptr %218, align 4
  %220 = add i32 %217, %219
  %221 = getelementptr inbounds nuw i32, ptr %0, i64 %209
  store i32 %220, ptr %221, align 4
  %222 = tail call i32 @llvm.umax.i32(i32 %220, i32 %208)
  %223 = add nuw nsw i64 %193, 2
  %224 = add i64 %195, 2
  %225 = icmp eq i64 %224, %178
  br i1 %225, label %226, label %192, !llvm.loop !9

226:                                              ; preds = %192
  %227 = icmp eq i64 %177, 0
  br i1 %227, label %242, label %228

228:                                              ; preds = %226
  %229 = getelementptr inbounds nuw [256 x i32], ptr %6, i64 0, i64 %223
  %230 = load i32, ptr %229, align 4
  %231 = getelementptr inbounds nuw [256 x i32], ptr %7, i64 0, i64 %223
  %232 = load i32, ptr %231, align 4
  %233 = add i32 %232, %230
  %234 = getelementptr inbounds nuw [256 x i32], ptr %8, i64 0, i64 %223
  %235 = load i32, ptr %234, align 4
  %236 = add i32 %233, %235
  %237 = getelementptr inbounds nuw [256 x i32], ptr %9, i64 0, i64 %223
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %236, %238
  %240 = getelementptr inbounds nuw i32, ptr %0, i64 %223
  store i32 %239, ptr %240, align 4
  %241 = tail call i32 @llvm.umax.i32(i32 %239, i32 %222)
  br label %242

242:                                              ; preds = %226, %228
  %243 = phi i32 [ %222, %226 ], [ %241, %228 ]
  br label %244

244:                                              ; preds = %242, %244
  %245 = phi i32 [ %250, %244 ], [ %20, %242 ]
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds nuw i32, ptr %0, i64 %246
  %248 = load i32, ptr %247, align 4
  %249 = icmp eq i32 %248, 0
  %250 = add i32 %245, -1
  br i1 %249, label %244, label %251, !llvm.loop !10

251:                                              ; preds = %244
  store i32 %245, ptr %1, align 4
  %252 = zext i32 %243 to i64
  br label %253

253:                                              ; preds = %48, %39, %30, %25, %179, %16, %251, %13
  %254 = phi i64 [ %252, %251 ], [ 0, %13 ], [ -1, %16 ], [ -1, %179 ], [ -1, %25 ], [ -1, %30 ], [ -1, %39 ], [ -1, %48 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #5
  ret i64 %254
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -1, 4294967296) i64 @FSE_countFast(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @FSE_count_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 0)
  ret i64 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i64 -1, 4294967296) i64 @FSE_count(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %1, align 4
  %6 = icmp ugt i32 %5, 254
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 255, ptr %1, align 4
  br label %8

8:                                                ; preds = %4, %7
  %9 = phi i32 [ 0, %7 ], [ 1, %4 ]
  %10 = tail call i64 @FSE_count_generic(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, i32 noundef %9)
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @target_zero_count() local_unnamed_addr #3 {
  ret i64 2779096485
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
