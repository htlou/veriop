; ModuleID = 'history-eq/cpp/simdjson/12b51857/witness.cpp'
source_filename = "history-eq/cpp/simdjson/12b51857/witness.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.ParsedJson = type { i64, i64, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

$_ZN10ParsedJson9printjsonEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [30 x i8] c"Error: no starting root node?\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",  \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%*s\0A%*s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"\0A%*s}\0A%*s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"\0A%*s]\0A%*s\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"bug %c\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"\\u%x\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_witness.cpp, ptr null }]
@str = private unnamed_addr constant [36 x i8] c"should we be hitting the root node?\00", align 1

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca [1 x i64], align 8
  %2 = alloca %struct.ParsedJson, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 0, i64 104, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %3, align 8, !tbaa !5
  call void @_ZN10ParsedJson9printjsonEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10ParsedJson9printjsonEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load i64, ptr %3, align 8, !tbaa !15
  %5 = and i64 %4, -72057594037927936
  %6 = icmp eq i64 %5, 8214565720323784704
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = and i64 %4, 72057594037927935
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !16
  %11 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %10) #12
  %12 = icmp ugt i64 %10, 2305843009213693951
  %13 = shl i64 %10, 3
  %14 = select i1 %12, i64 -1, i64 %13
  %15 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %14) #12
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %16, align 8, !tbaa !15
  %17 = icmp samesign ugt i64 %8, 1
  br i1 %17, label %18, label %154

18:                                               ; preds = %7
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %24

22:                                               ; preds = %1
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  tail call void @abort() #13
  unreachable

24:                                               ; preds = %18, %150
  %25 = phi i64 [ 1, %18 ], [ %152, %150 ]
  %26 = phi i32 [ 1, %18 ], [ %151, %150 ]
  %27 = load ptr, ptr %2, align 8, !tbaa !5
  %28 = getelementptr inbounds nuw i64, ptr %27, i64 %25
  %29 = load i64, ptr %28, align 8, !tbaa !15
  %30 = and i64 %29, 72057594037927935
  %31 = lshr i64 %29, 56
  %32 = sext i32 %26 to i64
  %33 = getelementptr inbounds i8, ptr %11, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !17, !range !19, !noundef !20
  %35 = trunc nuw i8 %34 to i1
  %36 = getelementptr inbounds i64, ptr %15, i64 %32
  %37 = load i64, ptr %36, align 8, !tbaa !15
  br i1 %35, label %42, label %38

38:                                               ; preds = %24
  %39 = icmp ne i64 %37, 0
  %40 = icmp ne i64 %31, 93
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %54, label %57

42:                                               ; preds = %24
  %43 = icmp eq i64 %37, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = and i64 %37, 1
  %46 = icmp eq i64 %45, 0
  %47 = icmp ne i64 %31, 125
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %51

51:                                               ; preds = %49, %44, %42
  %52 = and i64 %37, 1
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51, %38
  %55 = phi ptr [ @.str.1, %38 ], [ @.str.2, %51 ]
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %55)
  br label %57

57:                                               ; preds = %54, %51, %38
  %58 = add i64 %37, 1
  store i64 %58, ptr %36, align 8, !tbaa !15
  %59 = trunc nuw i64 %31 to i8
  switch i8 %59, label %147 [
    i8 34, label %60
    i8 108, label %105
    i8 100, label %110
    i8 110, label %115
    i8 116, label %117
    i8 102, label %119
    i8 123, label %121
    i8 125, label %129
    i8 91, label %133
    i8 93, label %141
    i8 114, label %145
  ]

60:                                               ; preds = %57
  %61 = load ptr, ptr @stdout, align 8, !tbaa !21
  %62 = tail call noundef i32 @putc(i32 noundef 34, ptr noundef %61)
  %63 = load ptr, ptr %21, align 8, !tbaa !23
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 %30
  %65 = load i8, ptr %64, align 1, !tbaa !24
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %102, label %67

67:                                               ; preds = %60, %98
  %68 = phi i8 [ %100, %98 ], [ %65, %60 ]
  %69 = phi ptr [ %99, %98 ], [ %64, %60 ]
  %70 = zext i8 %68 to i32
  switch i8 %68, label %91 [
    i8 10, label %71
    i8 34, label %76
    i8 9, label %81
    i8 92, label %86
  ]

71:                                               ; preds = %67
  %72 = load ptr, ptr @stdout, align 8, !tbaa !21
  %73 = tail call noundef i32 @putc(i32 noundef 92, ptr noundef %72)
  %74 = load ptr, ptr @stdout, align 8, !tbaa !21
  %75 = tail call noundef i32 @putc(i32 noundef 110, ptr noundef %74)
  br label %98

76:                                               ; preds = %67
  %77 = load ptr, ptr @stdout, align 8, !tbaa !21
  %78 = tail call noundef i32 @putc(i32 noundef 92, ptr noundef %77)
  %79 = load ptr, ptr @stdout, align 8, !tbaa !21
  %80 = tail call noundef i32 @putc(i32 noundef 34, ptr noundef %79)
  br label %98

81:                                               ; preds = %67
  %82 = load ptr, ptr @stdout, align 8, !tbaa !21
  %83 = tail call noundef i32 @putc(i32 noundef 92, ptr noundef %82)
  %84 = load ptr, ptr @stdout, align 8, !tbaa !21
  %85 = tail call noundef i32 @putc(i32 noundef 116, ptr noundef %84)
  br label %98

86:                                               ; preds = %67
  %87 = load ptr, ptr @stdout, align 8, !tbaa !21
  %88 = tail call noundef i32 @putc(i32 noundef 92, ptr noundef %87)
  %89 = load ptr, ptr @stdout, align 8, !tbaa !21
  %90 = tail call noundef i32 @putc(i32 noundef 92, ptr noundef %89)
  br label %98

91:                                               ; preds = %67
  %92 = icmp ult i8 %68, 32
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %70)
  br label %98

95:                                               ; preds = %91
  %96 = load ptr, ptr @stdout, align 8, !tbaa !21
  %97 = tail call noundef i32 @putc(i32 noundef %70, ptr noundef %96)
  br label %98

98:                                               ; preds = %95, %93, %86, %81, %76, %71
  %99 = getelementptr inbounds nuw i8, ptr %69, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !24
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %67, !llvm.loop !25

102:                                              ; preds = %98, %60
  %103 = load ptr, ptr @stdout, align 8, !tbaa !21
  %104 = tail call noundef i32 @putc(i32 noundef 34, ptr noundef %103)
  br label %150

105:                                              ; preds = %57
  %106 = load ptr, ptr %20, align 8, !tbaa !28
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 %30
  %108 = load i64, ptr %107, align 1
  %109 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %108)
  br label %150

110:                                              ; preds = %57
  %111 = load ptr, ptr %19, align 8, !tbaa !28
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 %30
  %113 = load double, ptr %112, align 1
  %114 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %113)
  br label %150

115:                                              ; preds = %57
  %116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5)
  br label %150

117:                                              ; preds = %57
  %118 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6)
  br label %150

119:                                              ; preds = %57
  %120 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  br label %150

121:                                              ; preds = %57
  %122 = load ptr, ptr @stdout, align 8, !tbaa !21
  %123 = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %122)
  %124 = add nsw i32 %26, 1
  %125 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %26, ptr noundef nonnull @.str.10, i32 noundef %124, ptr noundef nonnull @.str.11)
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, ptr %11, i64 %126
  store i8 1, ptr %127, align 1, !tbaa !17
  %128 = getelementptr inbounds i64, ptr %15, i64 %126
  store i64 0, ptr %128, align 8, !tbaa !15
  br label %150

129:                                              ; preds = %57
  %130 = add nsw i32 %26, -1
  %131 = add nsw i32 %26, -2
  %132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %131, ptr noundef nonnull @.str.11, i32 noundef %130, ptr noundef nonnull @.str.11)
  br label %150

133:                                              ; preds = %57
  %134 = load ptr, ptr @stdout, align 8, !tbaa !21
  %135 = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %134)
  %136 = add nsw i32 %26, 1
  %137 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %26, ptr noundef nonnull @.str.13, i32 noundef %136, ptr noundef nonnull @.str.11)
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, ptr %11, i64 %138
  store i8 0, ptr %139, align 1, !tbaa !17
  %140 = getelementptr inbounds i64, ptr %15, i64 %138
  store i64 0, ptr %140, align 8, !tbaa !15
  br label %150

141:                                              ; preds = %57
  %142 = add nsw i32 %26, -1
  %143 = add nsw i32 %26, -2
  %144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %143, ptr noundef nonnull @.str.11, i32 noundef %142, ptr noundef nonnull @.str.11)
  br label %150

145:                                              ; preds = %57
  %146 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %147

147:                                              ; preds = %57, %145
  %148 = trunc nuw nsw i64 %31 to i32
  %149 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %148)
  tail call void @abort() #13
  unreachable

150:                                              ; preds = %141, %133, %129, %121, %119, %117, %115, %110, %105, %102
  %151 = phi i32 [ %142, %141 ], [ %136, %133 ], [ %130, %129 ], [ %124, %121 ], [ %26, %119 ], [ %26, %117 ], [ %26, %115 ], [ %26, %110 ], [ %26, %105 ], [ %26, %102 ]
  %152 = add nuw nsw i64 %25, 1
  %153 = icmp eq i64 %152, %8
  br i1 %153, label %154, label %24, !llvm.loop !29

154:                                              ; preds = %150, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_witness.cpp() #10 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #11
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !14, i64 48}
!6 = !{!"_ZTS10ParsedJson", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !13, i64 40, !14, i64 48, !13, i64 56, !12, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"p1 long", !12, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!6, !7, i64 8}
!17 = !{!18, !18, i64 0}
!18 = !{!"bool", !8, i64 0}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!23 = !{!6, !11, i64 72}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !26, !27}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!6, !11, i64 88}
!29 = distinct !{!29, !26, !27}
