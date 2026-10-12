; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/2765879/wrap_client.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/2765879/wrap_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i64 @target_client_oneshot(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #4
  store i64 %0, ptr %2, align 16
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %0, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %0, ptr %4, align 16
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %0, ptr %5, align 8
  %6 = call i64 @XXH64(ptr noundef nonnull %2, i64 noundef 32, i64 noundef 0) #5
  tail call void @ext() #4
  %7 = add i64 %0, %6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #4
  ret i64 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @XXH64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ext() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @target_client_update(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #4
  store i64 %1, ptr %3, align 16
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %1, ptr %5, align 16
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %6, align 8
  %7 = call i32 @XXH64_update(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 32) #4
  call void @ext() #4
  %8 = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #4
  ret i64 %8
}

declare i32 @XXH64_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @target_client_xxh3_update(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  store i32 %1, ptr %3, align 16
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %1, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %1, ptr %6, align 4
  %7 = call i32 @XXH3_64bits_update(ptr noundef %0, ptr noundef nonnull %3, i64 noundef 16) #4
  call void @ext() #4
  %8 = load i32, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  ret i32 %8
}

declare i32 @XXH3_64bits_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
