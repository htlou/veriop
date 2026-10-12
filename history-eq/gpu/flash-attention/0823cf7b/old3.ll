; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/flash-attention/0823cf7b/old.norm.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/flash-attention/0823cf7b/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @target_copy3(ptr noundef %desc, ptr noundef %barrier, ptr noundef readonly %args, ptr noundef %smem, i32 noundef %c0, i32 noundef %c1, i32 noundef %c2) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne ptr %args, null
  tail call void @llvm.assume(i1 %cmp)
  %block_table = getelementptr inbounds nuw i8, ptr %args, i64 16
  %0 = load ptr, ptr %block_table, align 8
  %cmp1 = icmp eq ptr %0, null
  tail call void @llvm.assume(i1 %cmp1)
  tail call void @tma_load_3d(ptr noundef %desc, ptr noundef %barrier, ptr noundef %smem, i32 noundef %c0, i32 noundef %c1, i32 noundef %c2) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

declare void @tma_load_3d(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
