; ModuleID = 'history-eq/c/fast_float/b14e6a4/wrap_int5.cpp'
source_filename = "history-eq/c/fast_float/b14e6a4/wrap_int5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float8int_lutsIvE7chdigitE = comdat any

@_ZN10fast_float8int_lutsIvE7chdigitE = linkonce_odr dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", comdat, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_int5(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #2
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %7 = trunc i64 %0 to i8
  store i8 %7, ptr %2, align 1, !tbaa !5
  %8 = lshr i64 %0, 8
  %9 = trunc i64 %8 to i8
  store i8 %9, ptr %3, align 1, !tbaa !5
  %10 = lshr i64 %0, 16
  %11 = trunc i64 %10 to i8
  store i8 %11, ptr %4, align 1, !tbaa !5
  %12 = lshr i64 %0, 24
  %13 = trunc i64 %12 to i8
  store i8 %13, ptr %5, align 1, !tbaa !5
  %14 = lshr i64 %0, 32
  %15 = trunc i64 %14 to i8
  store i8 %15, ptr %6, align 1, !tbaa !5
  %16 = icmp eq i8 %7, 45
  br i1 %16, label %148, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %19 = icmp eq i8 %7, 48
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = icmp eq i8 %9, 48
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = icmp eq i8 %11, 48
  br i1 %23, label %24, label %62

24:                                               ; preds = %22
  %25 = icmp eq i8 %13, 48
  br i1 %25, label %26, label %62

26:                                               ; preds = %24
  %27 = icmp eq i8 %15, 48
  br i1 %27, label %148, label %62

28:                                               ; preds = %17, %20
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = phi i64 [ 0, %17 ], [ 1, %20 ]
  %31 = load i32, ptr %29, align 1
  %32 = add i32 %31, 1179010630
  %33 = add i32 %31, -808464432
  %34 = or i32 %32, %33
  %35 = and i32 %34, -2139062144
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %28
  %38 = mul i32 %33, 10
  %39 = lshr i32 %33, 8
  %40 = add i32 %38, %39
  %41 = and i32 %40, 16711935
  %42 = mul i32 %41, 6553601
  %43 = lshr i32 %42, 16
  br i1 %19, label %59, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, -48
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = mul nuw nsw i32 %43, 10
  %52 = add nuw nsw i32 %48, %51
  %53 = icmp samesign ugt i32 %52, 65535
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds nuw i8, ptr %29, i64 5
  br label %148

56:                                               ; preds = %50
  %57 = zext nneg i32 %52 to i64
  %58 = getelementptr inbounds nuw i8, ptr %29, i64 5
  br label %148

59:                                               ; preds = %44, %37
  %60 = zext nneg i32 %43 to i64
  %61 = getelementptr inbounds nuw i8, ptr %29, i64 4
  br label %148

62:                                               ; preds = %28, %22, %24, %26
  %63 = phi i64 [ %30, %28 ], [ 4, %26 ], [ 3, %24 ], [ 2, %22 ]
  %64 = phi ptr [ %29, %28 ], [ %6, %26 ], [ %5, %24 ], [ %4, %22 ]
  %65 = load i8, ptr %64, align 1, !tbaa !5
  %66 = add i8 %65, -48
  %67 = icmp ult i8 %66, 10
  br i1 %67, label %68, label %129

68:                                               ; preds = %62
  %69 = zext nneg i8 %65 to i64
  %70 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !5
  %72 = zext i8 %71 to i64
  %73 = add nuw nsw i64 %63, 1
  %74 = icmp eq i64 %73, 5
  br i1 %74, label %136, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 %73
  %77 = load i8, ptr %76, align 1, !tbaa !5
  %78 = add i8 %77, -48
  %79 = icmp ult i8 %78, 10
  br i1 %79, label %80, label %129

80:                                               ; preds = %75
  %81 = zext nneg i8 %77 to i64
  %82 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !5
  %84 = mul nuw nsw i64 %72, 10
  %85 = zext i8 %83 to i64
  %86 = add nuw nsw i64 %84, %85
  %87 = add nuw nsw i64 %63, 2
  %88 = icmp eq i64 %87, 5
  br i1 %88, label %136, label %89

89:                                               ; preds = %80
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 %87
  %91 = load i8, ptr %90, align 1, !tbaa !5
  %92 = add i8 %91, -48
  %93 = icmp ult i8 %92, 10
  br i1 %93, label %94, label %129

94:                                               ; preds = %89
  %95 = zext nneg i8 %91 to i64
  %96 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !5
  %98 = mul nuw nsw i64 %86, 10
  %99 = zext i8 %97 to i64
  %100 = add nuw nsw i64 %98, %99
  %101 = add nuw nsw i64 %63, 3
  %102 = icmp eq i64 %101, 5
  br i1 %102, label %136, label %103

103:                                              ; preds = %94
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 %101
  %105 = load i8, ptr %104, align 1, !tbaa !5
  %106 = add i8 %105, -48
  %107 = icmp ult i8 %106, 10
  br i1 %107, label %108, label %129

108:                                              ; preds = %103
  %109 = zext nneg i8 %105 to i64
  %110 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !5
  %112 = mul nuw nsw i64 %100, 10
  %113 = zext i8 %111 to i64
  %114 = add nuw nsw i64 %112, %113
  %115 = add nuw nsw i64 %63, 4
  %116 = icmp eq i64 %115, 5
  br i1 %116, label %136, label %117

117:                                              ; preds = %108
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 %115
  %119 = load i8, ptr %118, align 1, !tbaa !5
  %120 = add i8 %119, -48
  %121 = icmp ult i8 %120, 10
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = zext nneg i8 %119 to i64
  %124 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !5
  %126 = mul i64 %114, 10
  %127 = zext i8 %125 to i64
  %128 = add i64 %126, %127
  br label %136

129:                                              ; preds = %117, %103, %89, %75, %62
  %130 = phi ptr [ %64, %62 ], [ %76, %75 ], [ %90, %89 ], [ %104, %103 ], [ %118, %117 ]
  %131 = phi i64 [ %63, %62 ], [ %73, %75 ], [ %87, %89 ], [ %101, %103 ], [ %115, %117 ]
  %132 = phi i64 [ 0, %62 ], [ %72, %75 ], [ %86, %89 ], [ %100, %103 ], [ %114, %117 ]
  %133 = icmp samesign eq i64 %131, %63
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  br i1 %19, label %135, label %148

135:                                              ; preds = %134
  br label %148

136:                                              ; preds = %68, %80, %94, %108, %122, %129
  %137 = phi i64 [ %131, %129 ], [ 5, %122 ], [ 5, %108 ], [ 5, %94 ], [ 5, %80 ], [ 5, %68 ]
  %138 = phi ptr [ %130, %129 ], [ %18, %122 ], [ %18, %108 ], [ %18, %94 ], [ %18, %80 ], [ %18, %68 ]
  %139 = phi i64 [ %132, %129 ], [ %72, %68 ], [ %86, %80 ], [ %100, %94 ], [ %114, %108 ], [ %128, %122 ]
  %140 = sub nsw i64 %137, %63
  %141 = icmp ugt i64 %140, 20
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = icmp eq i64 %140, 20
  %144 = icmp ugt i64 %139, 65535
  %145 = select i1 %143, i1 true, i1 %144
  %146 = select i1 %145, i64 123, i64 %139
  %147 = select i1 %145, i64 34, i64 0
  br label %148

148:                                              ; preds = %26, %142, %59, %56, %54, %134, %135, %136, %1
  %149 = phi i64 [ 123, %1 ], [ 0, %135 ], [ 123, %134 ], [ 123, %136 ], [ %57, %56 ], [ 123, %54 ], [ %60, %59 ], [ %146, %142 ], [ 0, %26 ]
  %150 = phi ptr [ %2, %1 ], [ %130, %135 ], [ %2, %134 ], [ %138, %136 ], [ %58, %56 ], [ %55, %54 ], [ %61, %59 ], [ %138, %142 ], [ %18, %26 ]
  %151 = phi i64 [ 22, %1 ], [ 0, %135 ], [ 22, %134 ], [ 34, %136 ], [ 0, %56 ], [ 34, %54 ], [ 0, %59 ], [ %147, %142 ], [ 0, %26 ]
  %152 = shl i64 %149, 32
  %153 = and i64 %152, 281470681743360
  %154 = ptrtoint ptr %150 to i64
  %155 = ptrtoint ptr %2 to i64
  %156 = sub i64 %154, %155
  %157 = shl i64 %156, 16
  %158 = or disjoint i64 %151, %153
  %159 = or i64 %158, %157
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #2
  ret i64 %159
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.linker.options = !{}
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
