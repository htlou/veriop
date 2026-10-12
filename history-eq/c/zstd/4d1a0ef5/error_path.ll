; ModuleID = 'history-eq/c/zstd/4d1a0ef5/error_path.c'
source_filename = "history-eq/c/zstd/4d1a0ef5/error_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.seq_t = type { i64, i64, i64 }

@__const.zstd_old_observe.seq = private unnamed_addr constant %struct.seq_t { i64 9, i64 1, i64 1 }, align 8
@__const.zstd_new_observe.seq = private unnamed_addr constant %struct.seq_t { i64 9, i64 1, i64 1 }, align 8
@zstd_old_execSequence.dec32table = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 16
@zstd_old_execSequence.dec64table = internal constant [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], align 16
@zstd_new_execSequence.dec32table = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 16
@zstd_new_execSequence.dec64table = internal constant [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], align 16

; Function Attrs: noinline nounwind
define dso_local zeroext i8 @zstd_old_observe(i8 noundef zeroext %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.seq_t, align 8
  %15 = alloca i8, align 1
  %16 = alloca [16 x i8], align 16
  %17 = alloca [16 x i8], align 16
  %18 = alloca ptr, align 8
  %19 = alloca %struct.seq_t, align 8
  %20 = alloca i64, align 8
  store i8 %0, ptr %15, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  %22 = call ptr @memset(ptr noundef %21, i32 noundef 165, i64 noundef 16) #4
  %23 = load i8, ptr %15, align 1
  %24 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  store i8 %23, ptr %24, align 16
  %25 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  store ptr %25, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 @__const.zstd_old_observe.seq, i64 24, i1 false)
  %26 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  %27 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %29 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  %30 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %19, i64 24, i1 false)
  store ptr %26, ptr %3, align 8
  store ptr %18, ptr %4, align 8
  store ptr %28, ptr %5, align 8
  store ptr %29, ptr %6, align 8
  store ptr %31, ptr %7, align 8
  %32 = load ptr, ptr %3, align 8
  store ptr %32, ptr %8, align 8
  %33 = load i64, ptr %14, align 8
  store i64 %33, ptr %9, align 8
  %34 = load ptr, ptr %3, align 8
  %35 = load i64, ptr %9, align 8
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  %37 = getelementptr inbounds nuw %struct.seq_t, ptr %14, i32 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 %38
  store ptr %39, ptr %10, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = load ptr, ptr %40, align 8
  %42 = load i64, ptr %9, align 8
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  store ptr %43, ptr %11, align 8
  %44 = load ptr, ptr %10, align 8
  %45 = load ptr, ptr %7, align 8
  %46 = icmp ugt ptr %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  store i64 -1, ptr %2, align 8
  br label %201

48:                                               ; preds = %1
  %49 = load ptr, ptr %11, align 8
  %50 = load ptr, ptr %5, align 8
  %51 = icmp ugt ptr %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i64 -1, ptr %2, align 8
  br label %201

53:                                               ; preds = %48
  %54 = load ptr, ptr %3, align 8
  %55 = load i64, ptr %9, align 8
  %56 = getelementptr inbounds nuw i8, ptr %54, i64 %55
  %57 = load ptr, ptr %7, align 8
  %58 = getelementptr inbounds i8, ptr %57, i64 -8
  %59 = icmp ugt ptr %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load ptr, ptr %3, align 8
  %62 = load ptr, ptr %4, align 8
  %63 = load ptr, ptr %62, align 8
  %64 = load i64, ptr %9, align 8
  %65 = call ptr @memmove(ptr noundef %61, ptr noundef %63, i64 noundef %64) #4
  br label %71

66:                                               ; preds = %53
  %67 = load ptr, ptr %3, align 8
  %68 = load ptr, ptr %4, align 8
  %69 = load ptr, ptr %68, align 8
  %70 = load i64, ptr %9, align 8
  call void @ZSTD_wildcopy(ptr noundef %67, ptr noundef %69, i64 noundef %70) #5
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i64, ptr %9, align 8
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 %72
  store ptr %74, ptr %3, align 8
  %75 = load ptr, ptr %11, align 8
  %76 = load ptr, ptr %4, align 8
  store ptr %75, ptr %76, align 8
  %77 = load ptr, ptr %7, align 8
  %78 = load ptr, ptr %3, align 8
  %79 = ptrtoint ptr %77 to i64
  %80 = ptrtoint ptr %78 to i64
  %81 = sub i64 %79, %80
  %82 = icmp slt i64 %81, 8
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  store i64 -1, ptr %2, align 8
  br label %201

84:                                               ; preds = %71
  %85 = load ptr, ptr %3, align 8
  %86 = getelementptr inbounds nuw %struct.seq_t, ptr %14, i32 0, i32 1
  %87 = load i64, ptr %86, align 8
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i8, ptr %85, i64 %88
  store ptr %89, ptr %12, align 8
  %90 = load ptr, ptr %12, align 8
  %91 = load ptr, ptr %6, align 8
  %92 = icmp ult ptr %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i64 -1, ptr %2, align 8
  br label %201

94:                                               ; preds = %84
  %95 = load ptr, ptr %12, align 8
  %96 = load ptr, ptr %3, align 8
  %97 = icmp ugt ptr %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i64 -1, ptr %2, align 8
  br label %201

99:                                               ; preds = %94
  %100 = getelementptr inbounds nuw %struct.seq_t, ptr %14, i32 0, i32 1
  %101 = load i64, ptr %100, align 8
  %102 = icmp ult i64 %101, 8
  br i1 %102, label %103, label %141

103:                                              ; preds = %99
  %104 = getelementptr inbounds nuw %struct.seq_t, ptr %14, i32 0, i32 1
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr inbounds nuw [8 x i32], ptr @zstd_old_execSequence.dec64table, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %13, align 4
  %108 = load ptr, ptr %12, align 8
  %109 = load i8, ptr %108, align 1
  %110 = load ptr, ptr %3, align 8
  store i8 %109, ptr %110, align 1
  %111 = load ptr, ptr %12, align 8
  %112 = getelementptr inbounds i8, ptr %111, i64 1
  %113 = load i8, ptr %112, align 1
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr inbounds i8, ptr %114, i64 1
  store i8 %113, ptr %115, align 1
  %116 = load ptr, ptr %12, align 8
  %117 = getelementptr inbounds i8, ptr %116, i64 2
  %118 = load i8, ptr %117, align 1
  %119 = load ptr, ptr %3, align 8
  %120 = getelementptr inbounds i8, ptr %119, i64 2
  store i8 %118, ptr %120, align 1
  %121 = load ptr, ptr %12, align 8
  %122 = getelementptr inbounds i8, ptr %121, i64 3
  %123 = load i8, ptr %122, align 1
  %124 = load ptr, ptr %3, align 8
  %125 = getelementptr inbounds i8, ptr %124, i64 3
  store i8 %123, ptr %125, align 1
  %126 = getelementptr inbounds nuw %struct.seq_t, ptr %14, i32 0, i32 1
  %127 = load i64, ptr %126, align 8
  %128 = getelementptr inbounds nuw [8 x i32], ptr @zstd_old_execSequence.dec32table, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4
  %130 = load ptr, ptr %12, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, ptr %130, i64 %131
  store ptr %132, ptr %12, align 8
  %133 = load ptr, ptr %3, align 8
  %134 = getelementptr inbounds i8, ptr %133, i64 4
  %135 = load ptr, ptr %12, align 8
  call void @ZSTD_copy4(ptr noundef %134, ptr noundef %135) #5
  %136 = load i32, ptr %13, align 4
  %137 = load ptr, ptr %12, align 8
  %138 = sext i32 %136 to i64
  %139 = sub i64 0, %138
  %140 = getelementptr inbounds i8, ptr %137, i64 %139
  store ptr %140, ptr %12, align 8
  br label %144

141:                                              ; preds = %99
  %142 = load ptr, ptr %3, align 8
  %143 = load ptr, ptr %12, align 8
  call void @ZSTD_copy8(ptr noundef %142, ptr noundef %143) #5
  br label %144

144:                                              ; preds = %141, %103
  %145 = load ptr, ptr %3, align 8
  %146 = getelementptr inbounds i8, ptr %145, i64 8
  store ptr %146, ptr %3, align 8
  %147 = load ptr, ptr %12, align 8
  %148 = getelementptr inbounds i8, ptr %147, i64 8
  store ptr %148, ptr %12, align 8
  %149 = load ptr, ptr %10, align 8
  %150 = load ptr, ptr %7, align 8
  %151 = getelementptr inbounds i8, ptr %150, i64 -12
  %152 = icmp ugt ptr %149, %151
  br i1 %152, label %153, label %189

153:                                              ; preds = %144
  %154 = load ptr, ptr %3, align 8
  %155 = load ptr, ptr %7, align 8
  %156 = getelementptr inbounds i8, ptr %155, i64 -8
  %157 = icmp ult ptr %154, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %153
  %159 = load ptr, ptr %3, align 8
  %160 = load ptr, ptr %12, align 8
  %161 = load ptr, ptr %7, align 8
  %162 = getelementptr inbounds i8, ptr %161, i64 -8
  %163 = load ptr, ptr %3, align 8
  %164 = ptrtoint ptr %162 to i64
  %165 = ptrtoint ptr %163 to i64
  %166 = sub i64 %164, %165
  call void @ZSTD_wildcopy(ptr noundef %159, ptr noundef %160, i64 noundef %166) #5
  %167 = load ptr, ptr %7, align 8
  %168 = getelementptr inbounds i8, ptr %167, i64 -8
  %169 = load ptr, ptr %3, align 8
  %170 = ptrtoint ptr %168 to i64
  %171 = ptrtoint ptr %169 to i64
  %172 = sub i64 %170, %171
  %173 = load ptr, ptr %12, align 8
  %174 = getelementptr inbounds i8, ptr %173, i64 %172
  store ptr %174, ptr %12, align 8
  %175 = load ptr, ptr %7, align 8
  %176 = getelementptr inbounds i8, ptr %175, i64 -8
  store ptr %176, ptr %3, align 8
  br label %177

177:                                              ; preds = %158, %153
  br label %178

178:                                              ; preds = %182, %177
  %179 = load ptr, ptr %3, align 8
  %180 = load ptr, ptr %10, align 8
  %181 = icmp ult ptr %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load ptr, ptr %12, align 8
  %184 = getelementptr inbounds nuw i8, ptr %183, i32 1
  store ptr %184, ptr %12, align 8
  %185 = load i8, ptr %183, align 1
  %186 = load ptr, ptr %3, align 8
  %187 = getelementptr inbounds nuw i8, ptr %186, i32 1
  store ptr %187, ptr %3, align 8
  store i8 %185, ptr %186, align 1
  br label %178, !llvm.loop !5

188:                                              ; preds = %178
  br label %195

189:                                              ; preds = %144
  %190 = load ptr, ptr %3, align 8
  %191 = load ptr, ptr %12, align 8
  %192 = getelementptr inbounds nuw %struct.seq_t, ptr %14, i32 0, i32 2
  %193 = load i64, ptr %192, align 8
  %194 = sub i64 %193, 8
  call void @ZSTD_wildcopy(ptr noundef %190, ptr noundef %191, i64 noundef %194) #5
  br label %195

195:                                              ; preds = %189, %188
  %196 = load ptr, ptr %10, align 8
  %197 = load ptr, ptr %8, align 8
  %198 = ptrtoint ptr %196 to i64
  %199 = ptrtoint ptr %197 to i64
  %200 = sub i64 %198, %199
  store i64 %200, ptr %2, align 8
  br label %201

201:                                              ; preds = %47, %52, %83, %93, %98, %195
  %202 = load i64, ptr %2, align 8
  store i64 %202, ptr %20, align 8
  %203 = load i64, ptr %20, align 8
  %204 = icmp eq i64 %203, -1
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = getelementptr inbounds [16 x i8], ptr %16, i64 0, i64 0
  %207 = load i8, ptr %206, align 16
  %208 = zext i8 %207 to i32
  br label %210

209:                                              ; preds = %201
  br label %210

210:                                              ; preds = %209, %205
  %211 = phi i32 [ %208, %205 ], [ 0, %209 ]
  %212 = trunc i32 %211 to i8
  ret i8 %212
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @memset(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind
define dso_local zeroext i8 @zstd_new_observe(i8 noundef zeroext %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.seq_t, align 8
  %16 = alloca i8, align 1
  %17 = alloca [16 x i8], align 16
  %18 = alloca [16 x i8], align 16
  %19 = alloca ptr, align 8
  %20 = alloca %struct.seq_t, align 8
  %21 = alloca i64, align 8
  store i8 %0, ptr %16, align 1
  call void @llvm.memset.p0.i64(ptr align 16 %18, i8 0, i64 16, i1 false)
  %22 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  %23 = call ptr @memset(ptr noundef %22, i32 noundef 165, i64 noundef 16) #4
  %24 = load i8, ptr %16, align 1
  %25 = getelementptr inbounds [16 x i8], ptr %18, i64 0, i64 0
  store i8 %24, ptr %25, align 16
  %26 = getelementptr inbounds [16 x i8], ptr %18, i64 0, i64 0
  store ptr %26, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 @__const.zstd_new_observe.seq, i64 24, i1 false)
  %27 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  %28 = getelementptr inbounds [16 x i8], ptr %18, i64 0, i64 0
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %30 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  %31 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %20, i64 24, i1 false)
  store ptr %27, ptr %3, align 8
  store ptr %19, ptr %4, align 8
  store ptr %29, ptr %5, align 8
  store ptr %30, ptr %6, align 8
  store ptr %32, ptr %7, align 8
  %33 = load ptr, ptr %3, align 8
  store ptr %33, ptr %8, align 8
  %34 = load ptr, ptr %3, align 8
  %35 = load i64, ptr %15, align 8
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  store ptr %36, ptr %9, align 8
  %37 = load ptr, ptr %3, align 8
  %38 = load i64, ptr %15, align 8
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 %38
  %40 = getelementptr inbounds nuw %struct.seq_t, ptr %15, i32 0, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 %41
  store ptr %42, ptr %10, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds i8, ptr %43, i64 -8
  store ptr %44, ptr %11, align 8
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = load i64, ptr %15, align 8
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 %47
  store ptr %48, ptr %12, align 8
  %49 = load ptr, ptr %9, align 8
  %50 = load ptr, ptr %11, align 8
  %51 = icmp ugt ptr %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %1
  store i64 -1, ptr %2, align 8
  br label %183

53:                                               ; preds = %1
  %54 = load ptr, ptr %10, align 8
  %55 = load ptr, ptr %7, align 8
  %56 = icmp ugt ptr %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i64 -1, ptr %2, align 8
  br label %183

58:                                               ; preds = %53
  %59 = load ptr, ptr %12, align 8
  %60 = load ptr, ptr %5, align 8
  %61 = icmp ugt ptr %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i64 -1, ptr %2, align 8
  br label %183

63:                                               ; preds = %58
  %64 = load ptr, ptr %3, align 8
  %65 = load ptr, ptr %4, align 8
  %66 = load ptr, ptr %65, align 8
  %67 = load i64, ptr %15, align 8
  call void @ZSTD_wildcopy(ptr noundef %64, ptr noundef %66, i64 noundef %67) #5
  %68 = load ptr, ptr %9, align 8
  store ptr %68, ptr %3, align 8
  %69 = load ptr, ptr %12, align 8
  %70 = load ptr, ptr %4, align 8
  store ptr %69, ptr %70, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds nuw %struct.seq_t, ptr %15, i32 0, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = sub i64 0, %73
  %75 = getelementptr inbounds i8, ptr %71, i64 %74
  store ptr %75, ptr %13, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = load ptr, ptr %6, align 8
  %78 = icmp ult ptr %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  store i64 -1, ptr %2, align 8
  br label %183

80:                                               ; preds = %63
  %81 = load ptr, ptr %13, align 8
  %82 = load ptr, ptr %3, align 8
  %83 = icmp ugt ptr %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i64 -1, ptr %2, align 8
  br label %183

85:                                               ; preds = %80
  %86 = getelementptr inbounds nuw %struct.seq_t, ptr %15, i32 0, i32 1
  %87 = load i64, ptr %86, align 8
  %88 = icmp ult i64 %87, 8
  br i1 %88, label %89, label %127

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw %struct.seq_t, ptr %15, i32 0, i32 1
  %91 = load i64, ptr %90, align 8
  %92 = getelementptr inbounds nuw [8 x i32], ptr @zstd_new_execSequence.dec64table, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4
  store i32 %93, ptr %14, align 4
  %94 = load ptr, ptr %13, align 8
  %95 = load i8, ptr %94, align 1
  %96 = load ptr, ptr %3, align 8
  store i8 %95, ptr %96, align 1
  %97 = load ptr, ptr %13, align 8
  %98 = getelementptr inbounds i8, ptr %97, i64 1
  %99 = load i8, ptr %98, align 1
  %100 = load ptr, ptr %3, align 8
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  store i8 %99, ptr %101, align 1
  %102 = load ptr, ptr %13, align 8
  %103 = getelementptr inbounds i8, ptr %102, i64 2
  %104 = load i8, ptr %103, align 1
  %105 = load ptr, ptr %3, align 8
  %106 = getelementptr inbounds i8, ptr %105, i64 2
  store i8 %104, ptr %106, align 1
  %107 = load ptr, ptr %13, align 8
  %108 = getelementptr inbounds i8, ptr %107, i64 3
  %109 = load i8, ptr %108, align 1
  %110 = load ptr, ptr %3, align 8
  %111 = getelementptr inbounds i8, ptr %110, i64 3
  store i8 %109, ptr %111, align 1
  %112 = getelementptr inbounds nuw %struct.seq_t, ptr %15, i32 0, i32 1
  %113 = load i64, ptr %112, align 8
  %114 = getelementptr inbounds nuw [8 x i32], ptr @zstd_new_execSequence.dec32table, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %13, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, ptr %116, i64 %117
  store ptr %118, ptr %13, align 8
  %119 = load ptr, ptr %3, align 8
  %120 = getelementptr inbounds i8, ptr %119, i64 4
  %121 = load ptr, ptr %13, align 8
  call void @ZSTD_copy4(ptr noundef %120, ptr noundef %121) #5
  %122 = load i32, ptr %14, align 4
  %123 = load ptr, ptr %13, align 8
  %124 = sext i32 %122 to i64
  %125 = sub i64 0, %124
  %126 = getelementptr inbounds i8, ptr %123, i64 %125
  store ptr %126, ptr %13, align 8
  br label %130

127:                                              ; preds = %85
  %128 = load ptr, ptr %3, align 8
  %129 = load ptr, ptr %13, align 8
  call void @ZSTD_copy8(ptr noundef %128, ptr noundef %129) #5
  br label %130

130:                                              ; preds = %127, %89
  %131 = load ptr, ptr %3, align 8
  %132 = getelementptr inbounds i8, ptr %131, i64 8
  store ptr %132, ptr %3, align 8
  %133 = load ptr, ptr %13, align 8
  %134 = getelementptr inbounds i8, ptr %133, i64 8
  store ptr %134, ptr %13, align 8
  %135 = load ptr, ptr %10, align 8
  %136 = load ptr, ptr %7, align 8
  %137 = getelementptr inbounds i8, ptr %136, i64 -12
  %138 = icmp ugt ptr %135, %137
  br i1 %138, label %139, label %171

139:                                              ; preds = %130
  %140 = load ptr, ptr %3, align 8
  %141 = load ptr, ptr %11, align 8
  %142 = icmp ult ptr %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %139
  %144 = load ptr, ptr %3, align 8
  %145 = load ptr, ptr %13, align 8
  %146 = load ptr, ptr %11, align 8
  %147 = load ptr, ptr %3, align 8
  %148 = ptrtoint ptr %146 to i64
  %149 = ptrtoint ptr %147 to i64
  %150 = sub i64 %148, %149
  call void @ZSTD_wildcopy(ptr noundef %144, ptr noundef %145, i64 noundef %150) #5
  %151 = load ptr, ptr %11, align 8
  %152 = load ptr, ptr %3, align 8
  %153 = ptrtoint ptr %151 to i64
  %154 = ptrtoint ptr %152 to i64
  %155 = sub i64 %153, %154
  %156 = load ptr, ptr %13, align 8
  %157 = getelementptr inbounds i8, ptr %156, i64 %155
  store ptr %157, ptr %13, align 8
  %158 = load ptr, ptr %11, align 8
  store ptr %158, ptr %3, align 8
  br label %159

159:                                              ; preds = %143, %139
  br label %160

160:                                              ; preds = %164, %159
  %161 = load ptr, ptr %3, align 8
  %162 = load ptr, ptr %10, align 8
  %163 = icmp ult ptr %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load ptr, ptr %13, align 8
  %166 = getelementptr inbounds nuw i8, ptr %165, i32 1
  store ptr %166, ptr %13, align 8
  %167 = load i8, ptr %165, align 1
  %168 = load ptr, ptr %3, align 8
  %169 = getelementptr inbounds nuw i8, ptr %168, i32 1
  store ptr %169, ptr %3, align 8
  store i8 %167, ptr %168, align 1
  br label %160, !llvm.loop !7

170:                                              ; preds = %160
  br label %177

171:                                              ; preds = %130
  %172 = load ptr, ptr %3, align 8
  %173 = load ptr, ptr %13, align 8
  %174 = getelementptr inbounds nuw %struct.seq_t, ptr %15, i32 0, i32 2
  %175 = load i64, ptr %174, align 8
  %176 = sub i64 %175, 8
  call void @ZSTD_wildcopy(ptr noundef %172, ptr noundef %173, i64 noundef %176) #5
  br label %177

177:                                              ; preds = %171, %170
  %178 = load ptr, ptr %10, align 8
  %179 = load ptr, ptr %8, align 8
  %180 = ptrtoint ptr %178 to i64
  %181 = ptrtoint ptr %179 to i64
  %182 = sub i64 %180, %181
  store i64 %182, ptr %2, align 8
  br label %183

183:                                              ; preds = %52, %57, %62, %79, %84, %177
  %184 = load i64, ptr %2, align 8
  store i64 %184, ptr %21, align 8
  %185 = load i64, ptr %21, align 8
  %186 = icmp eq i64 %185, -1
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = getelementptr inbounds [16 x i8], ptr %17, i64 0, i64 0
  %189 = load i8, ptr %188, align 16
  %190 = zext i8 %189 to i32
  br label %192

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %187
  %193 = phi i32 [ %190, %187 ], [ 0, %191 ]
  %194 = trunc i32 %193 to i8
  ret i8 %194
}

; Function Attrs: nounwind
declare ptr @memmove(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind
define internal void @ZSTD_wildcopy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  store ptr %10, ptr %7, align 8
  %11 = load ptr, ptr %4, align 8
  store ptr %11, ptr %8, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load i64, ptr %6, align 8
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 %13
  store ptr %14, ptr %9, align 8
  br label %15

15:                                               ; preds = %22, %3
  %16 = load ptr, ptr %8, align 8
  %17 = load ptr, ptr %7, align 8
  call void @ZSTD_copy8(ptr noundef %16, ptr noundef %17) #5
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds i8, ptr %18, i64 8
  store ptr %19, ptr %8, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %21, ptr %7, align 8
  br label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = icmp ult ptr %23, %24
  br i1 %25, label %15, label %26, !llvm.loop !8

26:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind
define internal void @ZSTD_copy4(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @memcpy(ptr noundef %5, ptr noundef %6, i64 noundef 4) #4
  ret void
}

; Function Attrs: noinline nounwind
define internal void @ZSTD_copy8(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @memcpy(ptr noundef %5, ptr noundef %6, i64 noundef 8) #4
  ret void
}

; Function Attrs: nounwind
declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
