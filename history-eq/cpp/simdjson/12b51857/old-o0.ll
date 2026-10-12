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
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%*s\0A%*s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"\0A%*s}\0A%*s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"\0A%*s]\0A%*s\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"should we be hitting the root node?\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"bug %c\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\\u%x\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_witness.cpp, ptr null }]

; Function Attrs: noinline nounwind uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(ptr @_ZNSt8ios_base4InitD1Ev, ptr @_ZStL8__ioinit, ptr @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #3

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x i64], align 8
  %3 = alloca %struct.ParsedJson, align 8
  store i32 0, ptr %1, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 8, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 104, i1 false)
  %4 = getelementptr inbounds [1 x i64], ptr %2, i64 0, i64 0
  %5 = getelementptr inbounds nuw %struct.ParsedJson, ptr %3, i32 0, i32 6
  store ptr %4, ptr %5, align 8
  call void @_ZN10ParsedJson9printjsonEv(ptr noundef nonnull align 8 dereferenceable(104) %3)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10ParsedJson9printjsonEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  store i64 0, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct.ParsedJson, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = load i64, ptr %3, align 8
  %17 = getelementptr inbounds nuw i64, ptr %15, i64 %16
  %18 = load i64, ptr %17, align 8
  store i64 %18, ptr %4, align 8
  %19 = load i64, ptr %4, align 8
  %20 = lshr i64 %19, 56
  %21 = trunc i64 %20 to i8
  store i8 %21, ptr %5, align 1
  store i64 0, ptr %6, align 8
  %22 = load i8, ptr %5, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 114
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i64, ptr %4, align 8
  %27 = and i64 %26, 72057594037927935
  store i64 %27, ptr %6, align 8
  br label %30

28:                                               ; preds = %1
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @abort() #11
  unreachable

30:                                               ; preds = %25
  %31 = load i64, ptr %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, ptr %3, align 8
  %33 = getelementptr inbounds nuw %struct.ParsedJson, ptr %13, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = call noalias noundef nonnull ptr @_Znam(i64 noundef %34) #12
  store ptr %35, ptr %7, align 8
  %36 = getelementptr inbounds nuw %struct.ParsedJson, ptr %13, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %37, i64 8)
  %39 = extractvalue { i64, i1 } %38, 1
  %40 = extractvalue { i64, i1 } %38, 0
  %41 = select i1 %39, i64 -1, i64 %40
  %42 = call noalias noundef nonnull ptr @_Znam(i64 noundef %41) #12
  store ptr %42, ptr %8, align 8
  store i32 1, ptr %9, align 4
  %43 = load ptr, ptr %8, align 8
  %44 = load i32, ptr %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, ptr %43, i64 %45
  store i64 0, ptr %46, align 8
  br label %47

47:                                               ; preds = %213, %30
  %48 = load i64, ptr %3, align 8
  %49 = load i64, ptr %6, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %216

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw %struct.ParsedJson, ptr %13, i32 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = load i64, ptr %3, align 8
  %55 = getelementptr inbounds nuw i64, ptr %53, i64 %54
  %56 = load i64, ptr %55, align 8
  store i64 %56, ptr %4, align 8
  %57 = load i64, ptr %4, align 8
  %58 = and i64 %57, 72057594037927935
  store i64 %58, ptr %12, align 8
  %59 = load i64, ptr %4, align 8
  %60 = lshr i64 %59, 56
  %61 = trunc i64 %60 to i8
  store i8 %61, ptr %5, align 1
  %62 = load ptr, ptr %7, align 8
  %63 = load i32, ptr %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %62, i64 %64
  %66 = load i8, ptr %65, align 1
  %67 = trunc i8 %66 to i1
  br i1 %67, label %88, label %68

68:                                               ; preds = %51
  %69 = load ptr, ptr %8, align 8
  %70 = load i32, ptr %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, ptr %69, i64 %71
  %73 = load i64, ptr %72, align 8
  %74 = icmp ugt i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i8, ptr %5, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %77, 93
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %81

81:                                               ; preds = %79, %75, %68
  %82 = load ptr, ptr %8, align 8
  %83 = load i32, ptr %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, ptr %82, i64 %84
  %86 = load i64, ptr %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, ptr %85, align 8
  br label %130

88:                                               ; preds = %51
  %89 = load ptr, ptr %7, align 8
  %90 = icmp ne ptr %89, null
  br i1 %90, label %91, label %129

91:                                               ; preds = %88
  %92 = load ptr, ptr %8, align 8
  %93 = load i32, ptr %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, ptr %92, i64 %94
  %96 = load i64, ptr %95, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %91
  %99 = load ptr, ptr %8, align 8
  %100 = load i32, ptr %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, ptr %99, i64 %101
  %103 = load i64, ptr %102, align 8
  %104 = and i64 %103, 1
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load i8, ptr %5, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp ne i32 %108, 125
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %112

112:                                              ; preds = %110, %106, %98, %91
  %113 = load ptr, ptr %8, align 8
  %114 = load i32, ptr %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, ptr %113, i64 %115
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 1
  %119 = icmp eq i64 %118, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %122

122:                                              ; preds = %120, %112
  %123 = load ptr, ptr %8, align 8
  %124 = load i32, ptr %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, ptr %123, i64 %125
  %127 = load i64, ptr %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, ptr %126, align 8
  br label %129

129:                                              ; preds = %122, %88
  br label %130

130:                                              ; preds = %129, %81
  %131 = load i8, ptr %5, align 1
  %132 = zext i8 %131 to i32
  switch i32 %132, label %208 [
    i32 34, label %133
    i32 108, label %140
    i32 100, label %147
    i32 110, label %154
    i32 116, label %156
    i32 102, label %158
    i32 123, label %160
    i32 125, label %176
    i32 91, label %183
    i32 93, label %199
    i32 114, label %206
  ]

133:                                              ; preds = %130
  %134 = call i32 @putchar(i32 noundef 34)
  %135 = getelementptr inbounds nuw %struct.ParsedJson, ptr %13, i32 0, i32 9
  %136 = load ptr, ptr %135, align 8
  %137 = load i64, ptr %12, align 8
  %138 = getelementptr inbounds nuw i8, ptr %136, i64 %137
  call void @_ZL18print_with_escapesPKh(ptr noundef %138)
  %139 = call i32 @putchar(i32 noundef 34)
  br label %212

140:                                              ; preds = %130
  %141 = getelementptr inbounds nuw %struct.ParsedJson, ptr %13, i32 0, i32 11
  %142 = load ptr, ptr %141, align 8
  %143 = load i64, ptr %12, align 8
  %144 = getelementptr inbounds nuw i8, ptr %142, i64 %143
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 1 %144, i64 8, i1 false)
  %145 = load i64, ptr %10, align 8
  %146 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %145)
  br label %212

147:                                              ; preds = %130
  %148 = getelementptr inbounds nuw %struct.ParsedJson, ptr %13, i32 0, i32 11
  %149 = load ptr, ptr %148, align 8
  %150 = load i64, ptr %12, align 8
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 %150
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 1 %151, i64 8, i1 false)
  %152 = load double, ptr %11, align 8
  %153 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %152)
  br label %212

154:                                              ; preds = %130
  %155 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %212

156:                                              ; preds = %130
  %157 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %212

158:                                              ; preds = %130
  %159 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %212

160:                                              ; preds = %130
  %161 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %162 = load i32, ptr %9, align 4
  %163 = load i32, ptr %9, align 4
  %164 = add nsw i32 %163, 1
  %165 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %162, ptr noundef @.str.10, i32 noundef %164, ptr noundef @.str.11)
  %166 = load i32, ptr %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %9, align 4
  %168 = load ptr, ptr %7, align 8
  %169 = load i32, ptr %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %168, i64 %170
  store i8 1, ptr %171, align 1
  %172 = load ptr, ptr %8, align 8
  %173 = load i32, ptr %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, ptr %172, i64 %174
  store i64 0, ptr %175, align 8
  br label %212

176:                                              ; preds = %130
  %177 = load i32, ptr %9, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, ptr %9, align 4
  %179 = load i32, ptr %9, align 4
  %180 = sub nsw i32 %179, 1
  %181 = load i32, ptr %9, align 4
  %182 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %180, ptr noundef @.str.11, i32 noundef %181, ptr noundef @.str.11)
  br label %212

183:                                              ; preds = %130
  %184 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %185 = load i32, ptr %9, align 4
  %186 = load i32, ptr %9, align 4
  %187 = add nsw i32 %186, 1
  %188 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %185, ptr noundef @.str.13, i32 noundef %187, ptr noundef @.str.11)
  %189 = load i32, ptr %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %9, align 4
  %191 = load ptr, ptr %7, align 8
  %192 = load i32, ptr %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %191, i64 %193
  store i8 0, ptr %194, align 1
  %195 = load ptr, ptr %8, align 8
  %196 = load i32, ptr %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, ptr %195, i64 %197
  store i64 0, ptr %198, align 8
  br label %212

199:                                              ; preds = %130
  %200 = load i32, ptr %9, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, ptr %9, align 4
  %202 = load i32, ptr %9, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load i32, ptr %9, align 4
  %205 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, i32 noundef %203, ptr noundef @.str.11, i32 noundef %204, ptr noundef @.str.11)
  br label %212

206:                                              ; preds = %130
  %207 = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  br label %208

208:                                              ; preds = %130, %206
  %209 = load i8, ptr %5, align 1
  %210 = zext i8 %209 to i32
  %211 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %210)
  call void @abort() #11
  unreachable

212:                                              ; preds = %199, %183, %176, %160, %158, %156, %154, %147, %140, %133
  br label %213

213:                                              ; preds = %212
  %214 = load i64, ptr %3, align 8
  %215 = add i64 %214, 1
  store i64 %215, ptr %3, align 8
  br label %47, !llvm.loop !6

216:                                              ; preds = %47
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

declare i32 @putchar(i32 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @_ZL18print_with_escapesPKh(ptr noundef %0) #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %39, %1
  %4 = load ptr, ptr %2, align 8
  %5 = load i8, ptr %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 8
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  switch i32 %10, label %23 [
    i32 10, label %11
    i32 34, label %14
    i32 9, label %17
    i32 92, label %20
  ]

11:                                               ; preds = %7
  %12 = call i32 @putchar(i32 noundef 92)
  %13 = call i32 @putchar(i32 noundef 110)
  br label %39

14:                                               ; preds = %7
  %15 = call i32 @putchar(i32 noundef 92)
  %16 = call i32 @putchar(i32 noundef 34)
  br label %39

17:                                               ; preds = %7
  %18 = call i32 @putchar(i32 noundef 92)
  %19 = call i32 @putchar(i32 noundef 116)
  br label %39

20:                                               ; preds = %7
  %21 = call i32 @putchar(i32 noundef 92)
  %22 = call i32 @putchar(i32 noundef 92)
  br label %39

23:                                               ; preds = %7
  %24 = load ptr, ptr %2, align 8
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sle i32 %26, 31
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 8
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, i32 noundef %31)
  br label %38

33:                                               ; preds = %23
  %34 = load ptr, ptr %2, align 8
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 @putchar(i32 noundef %36)
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %20, %17, %14, %11
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %41, ptr %2, align 8
  br label %3, !llvm.loop !8

42:                                               ; preds = %3
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind uwtable
define internal void @_GLOBAL__sub_I_witness.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
