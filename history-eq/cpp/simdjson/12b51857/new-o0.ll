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
@.str.1 = private unnamed_addr constant [66 x i8] c"We may be exceeding the tape capacity. Is this a valid document?\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",  \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%*s\0A%*s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"\0A%*s}\0A%*s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"\0A%*s]\0A%*s\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"should we be hitting the root node?\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"bug %c\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\\u%x\00", align 1
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
  %5 = getelementptr inbounds nuw %struct.ParsedJson, ptr %3, i32 0, i32 8
  store ptr %4, ptr %5, align 8
  %6 = call noundef zeroext i1 @_ZN10ParsedJson9printjsonEv(ptr noundef nonnull align 8 dereferenceable(104) %3)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParsedJson9printjsonEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6 comdat align 2 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  %12 = load ptr, ptr %3, align 8
  store i64 0, ptr %4, align 8
  %13 = getelementptr inbounds nuw %struct.ParsedJson, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = load i64, ptr %4, align 8
  %16 = getelementptr inbounds nuw i64, ptr %14, i64 %15
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %5, align 8
  %18 = load i64, ptr %5, align 8
  %19 = lshr i64 %18, 56
  %20 = trunc i64 %19 to i8
  store i8 %20, ptr %6, align 1
  store i64 0, ptr %7, align 8
  %21 = load i8, ptr %6, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 114
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i64, ptr %5, align 8
  %26 = and i64 %25, 72057594037927935
  store i64 %26, ptr %7, align 8
  br label %29

27:                                               ; preds = %1
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i1 false, ptr %2, align 1
  br label %237

29:                                               ; preds = %24
  %30 = load i64, ptr %7, align 8
  %31 = getelementptr inbounds nuw %struct.ParsedJson, ptr %12, i32 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i1 false, ptr %2, align 1
  br label %237

36:                                               ; preds = %29
  %37 = load i64, ptr %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, ptr %4, align 8
  %39 = getelementptr inbounds nuw %struct.ParsedJson, ptr %12, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = call noalias noundef nonnull ptr @_Znam(i64 noundef %40) #9
  store ptr %41, ptr %8, align 8
  %42 = getelementptr inbounds nuw %struct.ParsedJson, ptr %12, i32 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %43, i64 8)
  %45 = extractvalue { i64, i1 } %44, 1
  %46 = extractvalue { i64, i1 } %44, 0
  %47 = select i1 %45, i64 -1, i64 %46
  %48 = call noalias noundef nonnull ptr @_Znam(i64 noundef %47) #9
  store ptr %48, ptr %9, align 8
  store i32 1, ptr %10, align 4
  %49 = load ptr, ptr %9, align 8
  %50 = load i32, ptr %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, ptr %49, i64 %51
  store i64 0, ptr %52, align 8
  br label %53

53:                                               ; preds = %233, %36
  %54 = load i64, ptr %4, align 8
  %55 = load i64, ptr %7, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %236

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw %struct.ParsedJson, ptr %12, i32 0, i32 8
  %59 = load ptr, ptr %58, align 8
  %60 = load i64, ptr %4, align 8
  %61 = getelementptr inbounds nuw i64, ptr %59, i64 %60
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %5, align 8
  %63 = load i64, ptr %5, align 8
  %64 = and i64 %63, 72057594037927935
  store i64 %64, ptr %11, align 8
  %65 = load i64, ptr %5, align 8
  %66 = lshr i64 %65, 56
  %67 = trunc i64 %66 to i8
  store i8 %67, ptr %6, align 1
  %68 = load ptr, ptr %8, align 8
  %69 = load i32, ptr %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  %72 = load i8, ptr %71, align 1
  %73 = trunc i8 %72 to i1
  br i1 %73, label %94, label %74

74:                                               ; preds = %57
  %75 = load ptr, ptr %9, align 8
  %76 = load i32, ptr %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, ptr %75, i64 %77
  %79 = load i64, ptr %78, align 8
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i8, ptr %6, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp ne i32 %83, 93
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %87

87:                                               ; preds = %85, %81, %74
  %88 = load ptr, ptr %9, align 8
  %89 = load i32, ptr %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, ptr %88, i64 %90
  %92 = load i64, ptr %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, ptr %91, align 8
  br label %136

94:                                               ; preds = %57
  %95 = load ptr, ptr %8, align 8
  %96 = icmp ne ptr %95, null
  br i1 %96, label %97, label %135

97:                                               ; preds = %94
  %98 = load ptr, ptr %9, align 8
  %99 = load i32, ptr %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, ptr %98, i64 %100
  %102 = load i64, ptr %101, align 8
  %103 = icmp ugt i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load ptr, ptr %9, align 8
  %106 = load i32, ptr %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, ptr %105, i64 %107
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 1
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load i8, ptr %6, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp ne i32 %114, 125
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %118

118:                                              ; preds = %116, %112, %104, %97
  %119 = load ptr, ptr %9, align 8
  %120 = load i32, ptr %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, ptr %119, i64 %121
  %123 = load i64, ptr %122, align 8
  %124 = and i64 %123, 1
  %125 = icmp eq i64 %124, 1
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %128

128:                                              ; preds = %126, %118
  %129 = load ptr, ptr %9, align 8
  %130 = load i32, ptr %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, ptr %129, i64 %131
  %133 = load i64, ptr %132, align 8
  %134 = add i64 %133, 1
  store i64 %134, ptr %132, align 8
  br label %135

135:                                              ; preds = %128, %94
  br label %136

136:                                              ; preds = %135, %87
  %137 = load i8, ptr %6, align 1
  %138 = zext i8 %137 to i32
  switch i32 %138, label %228 [
    i32 34, label %139
    i32 108, label %146
    i32 100, label %160
    i32 110, label %174
    i32 116, label %176
    i32 102, label %178
    i32 123, label %180
    i32 125, label %196
    i32 91, label %203
    i32 93, label %219
    i32 114, label %226
  ]

139:                                              ; preds = %136
  %140 = call i32 @putchar(i32 noundef 34)
  %141 = getelementptr inbounds nuw %struct.ParsedJson, ptr %12, i32 0, i32 11
  %142 = load ptr, ptr %141, align 8
  %143 = load i64, ptr %11, align 8
  %144 = getelementptr inbounds nuw i8, ptr %142, i64 %143
  call void @_ZL18print_with_escapesPKh(ptr noundef %144)
  %145 = call i32 @putchar(i32 noundef 34)
  br label %232

146:                                              ; preds = %136
  %147 = load i64, ptr %4, align 8
  %148 = add i64 %147, 1
  %149 = load i64, ptr %7, align 8
  %150 = icmp uge i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i1 false, ptr %2, align 1
  br label %237

152:                                              ; preds = %146
  %153 = getelementptr inbounds nuw %struct.ParsedJson, ptr %12, i32 0, i32 8
  %154 = load ptr, ptr %153, align 8
  %155 = load i64, ptr %4, align 8
  %156 = add i64 %155, 1
  store i64 %156, ptr %4, align 8
  %157 = getelementptr inbounds nuw i64, ptr %154, i64 %155
  %158 = load i64, ptr %157, align 8
  %159 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %158)
  br label %232

160:                                              ; preds = %136
  %161 = load i64, ptr %4, align 8
  %162 = add i64 %161, 1
  %163 = load i64, ptr %7, align 8
  %164 = icmp uge i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i1 false, ptr %2, align 1
  br label %237

166:                                              ; preds = %160
  %167 = getelementptr inbounds nuw %struct.ParsedJson, ptr %12, i32 0, i32 8
  %168 = load ptr, ptr %167, align 8
  %169 = load i64, ptr %4, align 8
  %170 = add i64 %169, 1
  store i64 %170, ptr %4, align 8
  %171 = getelementptr inbounds nuw i64, ptr %168, i64 %169
  %172 = load double, ptr %171, align 8
  %173 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %172)
  br label %232

174:                                              ; preds = %136
  %175 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %232

176:                                              ; preds = %136
  %177 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %232

178:                                              ; preds = %136
  %179 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %232

180:                                              ; preds = %136
  %181 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %182 = load i32, ptr %10, align 4
  %183 = load i32, ptr %10, align 4
  %184 = add nsw i32 %183, 1
  %185 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %182, ptr noundef @.str.11, i32 noundef %184, ptr noundef @.str.12)
  %186 = load i32, ptr %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %10, align 4
  %188 = load ptr, ptr %8, align 8
  %189 = load i32, ptr %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, ptr %188, i64 %190
  store i8 1, ptr %191, align 1
  %192 = load ptr, ptr %9, align 8
  %193 = load i32, ptr %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, ptr %192, i64 %194
  store i64 0, ptr %195, align 8
  br label %232

196:                                              ; preds = %136
  %197 = load i32, ptr %10, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, ptr %10, align 4
  %199 = load i32, ptr %10, align 4
  %200 = sub nsw i32 %199, 1
  %201 = load i32, ptr %10, align 4
  %202 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %200, ptr noundef @.str.12, i32 noundef %201, ptr noundef @.str.12)
  br label %232

203:                                              ; preds = %136
  %204 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %205 = load i32, ptr %10, align 4
  %206 = load i32, ptr %10, align 4
  %207 = add nsw i32 %206, 1
  %208 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %205, ptr noundef @.str.14, i32 noundef %207, ptr noundef @.str.12)
  %209 = load i32, ptr %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %10, align 4
  %211 = load ptr, ptr %8, align 8
  %212 = load i32, ptr %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, ptr %211, i64 %213
  store i8 0, ptr %214, align 1
  %215 = load ptr, ptr %9, align 8
  %216 = load i32, ptr %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, ptr %215, i64 %217
  store i64 0, ptr %218, align 8
  br label %232

219:                                              ; preds = %136
  %220 = load i32, ptr %10, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, ptr %10, align 4
  %222 = load i32, ptr %10, align 4
  %223 = sub nsw i32 %222, 1
  %224 = load i32, ptr %10, align 4
  %225 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %223, ptr noundef @.str.12, i32 noundef %224, ptr noundef @.str.12)
  br label %232

226:                                              ; preds = %136
  %227 = call i32 (ptr, ...) @printf(ptr noundef @.str.16)
  store i1 false, ptr %2, align 1
  br label %237

228:                                              ; preds = %136
  %229 = load i8, ptr %6, align 1
  %230 = zext i8 %229 to i32
  %231 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, i32 noundef %230)
  store i1 false, ptr %2, align 1
  br label %237

232:                                              ; preds = %219, %203, %196, %180, %178, %176, %174, %166, %152, %139
  br label %233

233:                                              ; preds = %232
  %234 = load i64, ptr %4, align 8
  %235 = add i64 %234, 1
  store i64 %235, ptr %4, align 8
  br label %53, !llvm.loop !6

236:                                              ; preds = %53
  store i1 true, ptr %2, align 1
  br label %237

237:                                              ; preds = %236, %228, %226, %165, %151, %34, %27
  %238 = load i1, ptr %2, align 1
  ret i1 %238
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

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
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i32 noundef %31)
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
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { builtin allocsize(0) }

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
