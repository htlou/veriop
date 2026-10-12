; ModuleID = 'history-eq/cpp/simdjson/12b51857/witness.cpp'
source_filename = "history-eq/cpp/simdjson/12b51857/witness.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.ParsedJson = type { i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }

$_ZN10ParsedJson9printjsonEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [30 x i8] c"Error: no starting root node?\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",  \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%*s\0A%*s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"\0A%*s}\0A%*s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"\0A%*s]\0A%*s\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"bug %c\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [5 x i8] c"\\u%x\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_witness.cpp, ptr null }]
@str = private unnamed_addr constant [36 x i8] c"should we be hitting the root node?\00", align 1
@str.19 = private unnamed_addr constant [65 x i8] c"We may be exceeding the tape capacity. Is this a valid document?\00", align 1

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca [1 x i64], align 8
  %2 = alloca %struct.ParsedJson, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #10
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 0, i64 104, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %1, ptr %3, align 8, !tbaa !5
  %4 = call noundef zeroext i1 @_ZN10ParsedJson9printjsonEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParsedJson9printjsonEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load i64, ptr %3, align 8, !tbaa !15
  %5 = and i64 %4, -72057594037927936
  %6 = icmp eq i64 %5, 8214565720323784704
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = and i64 %4, 72057594037927935
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !16
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %14, label %16

12:                                               ; preds = %1
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  br label %167

14:                                               ; preds = %7
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  br label %167

16:                                               ; preds = %7
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !17
  %19 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %18) #11
  %20 = icmp ugt i64 %18, 2305843009213693951
  %21 = shl i64 %18, 3
  %22 = select i1 %20, i64 -1, i64 %21
  %23 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %22) #11
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %24, align 8, !tbaa !15
  %25 = icmp samesign ugt i64 %8, 1
  br i1 %25, label %26, label %167

26:                                               ; preds = %16
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %28

28:                                               ; preds = %160, %26
  %29 = phi i32 [ 1, %26 ], [ %163, %160 ]
  %30 = phi i64 [ 1, %26 ], [ %164, %160 ]
  %31 = load ptr, ptr %2, align 8, !tbaa !5
  %32 = getelementptr inbounds nuw i64, ptr %31, i64 %30
  %33 = load i64, ptr %32, align 8, !tbaa !15
  %34 = and i64 %33, 72057594037927935
  %35 = lshr i64 %33, 56
  %36 = trunc nuw nsw i64 %35 to i32
  %37 = sext i32 %29 to i64
  %38 = getelementptr inbounds i8, ptr %19, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !18, !range !20, !noundef !21
  %40 = trunc nuw i8 %39 to i1
  %41 = getelementptr inbounds i64, ptr %23, i64 %37
  %42 = load i64, ptr %41, align 8, !tbaa !15
  br i1 %40, label %47, label %43

43:                                               ; preds = %28
  %44 = icmp ne i64 %42, 0
  %45 = icmp ne i64 %35, 93
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %59, label %62

47:                                               ; preds = %28
  %48 = icmp eq i64 %42, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %47
  %50 = and i64 %42, 1
  %51 = icmp eq i64 %50, 0
  %52 = icmp ne i64 %35, 125
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %56

56:                                               ; preds = %54, %49, %47
  %57 = and i64 %42, 1
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56, %43
  %60 = phi ptr [ @.str.2, %43 ], [ @.str.3, %56 ]
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %60)
  br label %62

62:                                               ; preds = %59, %56, %43
  %63 = add i64 %42, 1
  store i64 %63, ptr %41, align 8, !tbaa !15
  %64 = trunc nuw i64 %35 to i8
  switch i8 %64, label %158 [
    i8 34, label %65
    i8 108, label %110
    i8 100, label %118
    i8 110, label %126
    i8 116, label %128
    i8 102, label %130
    i8 123, label %132
    i8 125, label %140
    i8 91, label %144
    i8 93, label %152
    i8 114, label %156
  ]

65:                                               ; preds = %62
  %66 = load ptr, ptr @stdout, align 8, !tbaa !22
  %67 = tail call noundef i32 @putc(i32 noundef 34, ptr noundef %66)
  %68 = load ptr, ptr %27, align 8, !tbaa !24
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %34
  %70 = load i8, ptr %69, align 1, !tbaa !25
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %107, label %72

72:                                               ; preds = %65, %103
  %73 = phi i8 [ %105, %103 ], [ %70, %65 ]
  %74 = phi ptr [ %104, %103 ], [ %69, %65 ]
  %75 = zext i8 %73 to i32
  switch i8 %73, label %96 [
    i8 10, label %76
    i8 34, label %81
    i8 9, label %86
    i8 92, label %91
  ]

76:                                               ; preds = %72
  %77 = load ptr, ptr @stdout, align 8, !tbaa !22
  %78 = tail call noundef i32 @putc(i32 noundef 92, ptr noundef %77)
  %79 = load ptr, ptr @stdout, align 8, !tbaa !22
  %80 = tail call noundef i32 @putc(i32 noundef 110, ptr noundef %79)
  br label %103

81:                                               ; preds = %72
  %82 = load ptr, ptr @stdout, align 8, !tbaa !22
  %83 = tail call noundef i32 @putc(i32 noundef 92, ptr noundef %82)
  %84 = load ptr, ptr @stdout, align 8, !tbaa !22
  %85 = tail call noundef i32 @putc(i32 noundef 34, ptr noundef %84)
  br label %103

86:                                               ; preds = %72
  %87 = load ptr, ptr @stdout, align 8, !tbaa !22
  %88 = tail call noundef i32 @putc(i32 noundef 92, ptr noundef %87)
  %89 = load ptr, ptr @stdout, align 8, !tbaa !22
  %90 = tail call noundef i32 @putc(i32 noundef 116, ptr noundef %89)
  br label %103

91:                                               ; preds = %72
  %92 = load ptr, ptr @stdout, align 8, !tbaa !22
  %93 = tail call noundef i32 @putc(i32 noundef 92, ptr noundef %92)
  %94 = load ptr, ptr @stdout, align 8, !tbaa !22
  %95 = tail call noundef i32 @putc(i32 noundef 92, ptr noundef %94)
  br label %103

96:                                               ; preds = %72
  %97 = icmp ult i8 %73, 32
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  %99 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %75)
  br label %103

100:                                              ; preds = %96
  %101 = load ptr, ptr @stdout, align 8, !tbaa !22
  %102 = tail call noundef i32 @putc(i32 noundef %75, ptr noundef %101)
  br label %103

103:                                              ; preds = %100, %98, %91, %86, %81, %76
  %104 = getelementptr inbounds nuw i8, ptr %74, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !25
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %72, !llvm.loop !26

107:                                              ; preds = %103, %65
  %108 = load ptr, ptr @stdout, align 8, !tbaa !22
  %109 = tail call noundef i32 @putc(i32 noundef 34, ptr noundef %108)
  br label %160

110:                                              ; preds = %62
  %111 = add nuw nsw i64 %30, 1
  %112 = icmp ult i64 %111, %8
  br i1 %112, label %113, label %160

113:                                              ; preds = %110
  %114 = load ptr, ptr %2, align 8, !tbaa !5
  %115 = getelementptr inbounds nuw i64, ptr %114, i64 %30
  %116 = load i64, ptr %115, align 8, !tbaa !15
  %117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %116)
  br label %160

118:                                              ; preds = %62
  %119 = add nuw nsw i64 %30, 1
  %120 = icmp ult i64 %119, %8
  br i1 %120, label %121, label %160

121:                                              ; preds = %118
  %122 = load ptr, ptr %2, align 8, !tbaa !5
  %123 = getelementptr inbounds nuw i64, ptr %122, i64 %30
  %124 = load double, ptr %123, align 8, !tbaa !29
  %125 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %124)
  br label %160

126:                                              ; preds = %62
  %127 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6)
  br label %160

128:                                              ; preds = %62
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7)
  br label %160

130:                                              ; preds = %62
  %131 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8)
  br label %160

132:                                              ; preds = %62
  %133 = load ptr, ptr @stdout, align 8, !tbaa !22
  %134 = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %133)
  %135 = add nsw i32 %29, 1
  %136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %29, ptr noundef nonnull @.str.11, i32 noundef %135, ptr noundef nonnull @.str.12)
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, ptr %19, i64 %137
  store i8 1, ptr %138, align 1, !tbaa !18
  %139 = getelementptr inbounds i64, ptr %23, i64 %137
  store i64 0, ptr %139, align 8, !tbaa !15
  br label %160

140:                                              ; preds = %62
  %141 = add nsw i32 %29, -1
  %142 = add nsw i32 %29, -2
  %143 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %142, ptr noundef nonnull @.str.12, i32 noundef %141, ptr noundef nonnull @.str.12)
  br label %160

144:                                              ; preds = %62
  %145 = load ptr, ptr @stdout, align 8, !tbaa !22
  %146 = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %145)
  %147 = add nsw i32 %29, 1
  %148 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %29, ptr noundef nonnull @.str.14, i32 noundef %147, ptr noundef nonnull @.str.12)
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, ptr %19, i64 %149
  store i8 0, ptr %150, align 1, !tbaa !18
  %151 = getelementptr inbounds i64, ptr %23, i64 %149
  store i64 0, ptr %151, align 8, !tbaa !15
  br label %160

152:                                              ; preds = %62
  %153 = add nsw i32 %29, -1
  %154 = add nsw i32 %29, -2
  %155 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %154, ptr noundef nonnull @.str.12, i32 noundef %153, ptr noundef nonnull @.str.12)
  br label %160

156:                                              ; preds = %62
  %157 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %160

158:                                              ; preds = %62
  %159 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %36)
  br label %160

160:                                              ; preds = %107, %113, %121, %126, %128, %130, %132, %140, %144, %152, %118, %110, %158, %156
  %161 = phi i1 [ false, %158 ], [ false, %156 ], [ false, %110 ], [ false, %118 ], [ true, %152 ], [ true, %144 ], [ true, %140 ], [ true, %132 ], [ true, %130 ], [ true, %128 ], [ true, %126 ], [ true, %121 ], [ true, %113 ], [ true, %107 ]
  %162 = phi i64 [ %30, %158 ], [ %30, %156 ], [ %30, %110 ], [ %30, %118 ], [ %30, %152 ], [ %30, %144 ], [ %30, %140 ], [ %30, %132 ], [ %30, %130 ], [ %30, %128 ], [ %30, %126 ], [ %119, %121 ], [ %111, %113 ], [ %30, %107 ]
  %163 = phi i32 [ %29, %158 ], [ %29, %156 ], [ %29, %110 ], [ %29, %118 ], [ %153, %152 ], [ %147, %144 ], [ %141, %140 ], [ %135, %132 ], [ %29, %130 ], [ %29, %128 ], [ %29, %126 ], [ %29, %121 ], [ %29, %113 ], [ %29, %107 ]
  %164 = add i64 %162, 1
  %165 = icmp ult i64 %164, %8
  %166 = and i1 %161, %165
  br i1 %166, label %28, label %167, !llvm.loop !31

167:                                              ; preds = %160, %16, %14, %12
  %168 = phi i1 [ false, %14 ], [ false, %12 ], [ true, %16 ], [ %161, %160 ]
  ret i1 %168
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_witness.cpp() #9 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #10
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #10
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
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !14, i64 64}
!6 = !{!"_ZTS10ParsedJson", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !11, i64 40, !10, i64 48, !13, i64 56, !14, i64 64, !13, i64 72, !12, i64 80, !11, i64 88, !11, i64 96}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"p1 long", !12, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!6, !7, i64 16}
!17 = !{!6, !7, i64 8}
!18 = !{!19, !19, i64 0}
!19 = !{!"bool", !8, i64 0}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!24 = !{!6, !11, i64 88}
!25 = !{!8, !8, i64 0}
!26 = distinct !{!26, !27, !28}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!30, !30, i64 0}
!30 = !{!"double", !8, i64 0}
!31 = distinct !{!31, !27, !28}
