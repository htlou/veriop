; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vectable_split/xxhash_vectable_split.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vectable_split/xxhash_vectable_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_1to3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ne i64 %1, 0
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %1, 4
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %8)
  %9 = load i8, ptr %0, align 1
  %10 = lshr i64 %1, 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr i8, ptr %0, i64 %1
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %9 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = zext i8 %12 to i64
  %19 = shl nuw nsw i64 %18, 24
  %20 = or disjoint i64 %19, %17
  %21 = zext i8 %15 to i64
  %22 = or disjoint i64 %20, %21
  %23 = shl nuw nsw i64 %1, 8
  %24 = or disjoint i64 %22, %23
  %25 = load i32, ptr %2, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %27 = load i32, ptr %26, align 1
  %28 = xor i32 %27, %25
  %29 = zext i32 %28 to i64
  %30 = add i64 %3, %29
  %31 = xor i64 %30, %24
  %32 = lshr i64 %31, 33
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, -4417276706812531889
  %35 = lshr i64 %34, 29
  %36 = xor i64 %35, %34
  %37 = mul i64 %36, 1609587929392839161
  %38 = lshr i64 %37, 32
  %39 = xor i64 %38, %37
  %40 = icmp eq i64 %1, 1
  br i1 %40, label %41, label %50

41:                                               ; preds = %4
  %42 = icmp eq i64 %30, 2267503259
  %43 = and i8 %9, 127
  %44 = zext nneg i8 %43 to i32
  %45 = call i64 @lookup_0(i32 %44)
  %46 = call i64 @lookup_1(i32 %44)
  %47 = icmp slt i8 %9, 0
  %48 = select i1 %47, i64 %46, i64 %45
  %49 = select i1 %42, i64 %48, i64 %39
  br label %50

50:                                               ; preds = %4, %41
  %51 = phi i64 [ %49, %41 ], [ %39, %4 ]
  ret i64 %51
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ugt i64 %1, 8
  br i1 %6, label %7, label %43, !prof !5

7:                                                ; preds = %4
  %8 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %8)
  %9 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %9)
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %13 = load i64, ptr %12, align 1
  %14 = xor i64 %13, %11
  %15 = add i64 %14, %3
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %17 = load i64, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %19 = load i64, ptr %18, align 1
  %20 = xor i64 %19, %17
  %21 = sub i64 %20, %3
  %22 = load i64, ptr %0, align 1
  %23 = xor i64 %22, %15
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, %21
  %28 = tail call noundef i64 @llvm.bswap.i64(i64 %23)
  %29 = add i64 %28, %1
  %30 = add i64 %29, %27
  %31 = zext i64 %23 to i128
  %32 = zext i64 %27 to i128
  %33 = mul nuw i128 %32, %31
  %34 = lshr i128 %33, 64
  %35 = xor i128 %34, %33
  %36 = trunc i128 %35 to i64
  %37 = add i64 %30, %36
  %38 = lshr i64 %37, 37
  %39 = xor i64 %38, %37
  %40 = mul i64 %39, 1609587791953885689
  %41 = lshr i64 %40, 32
  %42 = xor i64 %41, %40
  br label %140

43:                                               ; preds = %4
  %44 = icmp samesign ugt i64 %1, 3
  br i1 %44, label %45, label %79, !prof !5

45:                                               ; preds = %43
  %46 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %46)
  %47 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %47)
  %48 = trunc i64 %3 to i32
  %49 = tail call noundef i32 @llvm.bswap.i32(i32 %48)
  %50 = zext i32 %49 to i64
  %51 = shl nuw i64 %50, 32
  %52 = xor i64 %51, %3
  %53 = load i32, ptr %0, align 1
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %55 = getelementptr inbounds i8, ptr %54, i64 -4
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = sub i64 %61, %52
  %63 = zext i32 %56 to i64
  %64 = zext i32 %53 to i64
  %65 = shl nuw i64 %64, 32
  %66 = or disjoint i64 %65, %63
  %67 = xor i64 %62, %66
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 49)
  %69 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 24)
  %70 = xor i64 %68, %69
  %71 = xor i64 %70, %67
  %72 = mul i64 %71, -6939452855193903323
  %73 = lshr i64 %72, 35
  %74 = add nuw nsw i64 %73, %1
  %75 = xor i64 %74, %72
  %76 = mul i64 %75, -6939452855193903323
  %77 = lshr i64 %76, 28
  %78 = xor i64 %77, %76
  br label %140

79:                                               ; preds = %43
  %80 = icmp eq i64 %1, 0
  br i1 %80, label %125, label %81

81:                                               ; preds = %79
  %82 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %82)
  %83 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %83)
  %84 = load i8, ptr %0, align 1
  %85 = lshr i64 %1, 1
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 %85
  %87 = load i8, ptr %86, align 1
  %88 = getelementptr i8, ptr %0, i64 %1
  %89 = getelementptr i8, ptr %88, i64 -1
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %84 to i64
  %92 = shl nuw nsw i64 %91, 16
  %93 = zext i8 %87 to i64
  %94 = shl nuw nsw i64 %93, 24
  %95 = or disjoint i64 %94, %92
  %96 = zext i8 %90 to i64
  %97 = or disjoint i64 %95, %96
  %98 = shl nuw nsw i64 %1, 8
  %99 = or disjoint i64 %97, %98
  %100 = load i32, ptr %2, align 1
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %102 = load i32, ptr %101, align 1
  %103 = xor i32 %102, %100
  %104 = zext i32 %103 to i64
  %105 = add i64 %3, %104
  %106 = xor i64 %105, %99
  %107 = lshr i64 %106, 33
  %108 = xor i64 %107, %106
  %109 = mul i64 %108, -4417276706812531889
  %110 = lshr i64 %109, 29
  %111 = xor i64 %110, %109
  %112 = mul i64 %111, 1609587929392839161
  %113 = lshr i64 %112, 32
  %114 = xor i64 %113, %112
  %115 = icmp eq i64 %1, 1
  br i1 %115, label %116, label %140

116:                                              ; preds = %81
  %117 = icmp eq i64 %105, 2267503259
  %118 = and i8 %84, 127
  %119 = zext nneg i8 %118 to i32
  %120 = call i64 @lookup_0(i32 %119)
  %121 = call i64 @lookup_1(i32 %119)
  %122 = icmp slt i8 %84, 0
  %123 = select i1 %122, i64 %121, i64 %120
  %124 = select i1 %117, i64 %123, i64 %114
  br label %140

125:                                              ; preds = %79
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %127 = load i64, ptr %126, align 1
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %129 = load i64, ptr %128, align 1
  %130 = xor i64 %127, %129
  %131 = xor i64 %130, %3
  %132 = lshr i64 %131, 33
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, -4417276706812531889
  %135 = lshr i64 %134, 29
  %136 = xor i64 %135, %134
  %137 = mul i64 %136, 1609587929392839161
  %138 = lshr i64 %137, 32
  %139 = xor i64 %138, %137
  br label %140

140:                                              ; preds = %116, %81, %125, %45, %7
  %141 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %139, %125 ], [ %124, %116 ], [ %114, %81 ]
  ret i64 %141
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}

define internal i64 @lookup_0(i32 %idx) alwaysinline {
  %stable = freeze i32 %idx
  %safe = and i32 %stable, 127
  switch i32 %safe, label %case0 [
    i32 1, label %case1
    i32 2, label %case2
    i32 3, label %case3
    i32 4, label %case4
    i32 5, label %case5
    i32 6, label %case6
    i32 7, label %case7
    i32 8, label %case8
    i32 9, label %case9
    i32 10, label %case10
    i32 11, label %case11
    i32 12, label %case12
    i32 13, label %case13
    i32 14, label %case14
    i32 15, label %case15
    i32 16, label %case16
    i32 17, label %case17
    i32 18, label %case18
    i32 19, label %case19
    i32 20, label %case20
    i32 21, label %case21
    i32 22, label %case22
    i32 23, label %case23
    i32 24, label %case24
    i32 25, label %case25
    i32 26, label %case26
    i32 27, label %case27
    i32 28, label %case28
    i32 29, label %case29
    i32 30, label %case30
    i32 31, label %case31
    i32 32, label %case32
    i32 33, label %case33
    i32 34, label %case34
    i32 35, label %case35
    i32 36, label %case36
    i32 37, label %case37
    i32 38, label %case38
    i32 39, label %case39
    i32 40, label %case40
    i32 41, label %case41
    i32 42, label %case42
    i32 43, label %case43
    i32 44, label %case44
    i32 45, label %case45
    i32 46, label %case46
    i32 47, label %case47
    i32 48, label %case48
    i32 49, label %case49
    i32 50, label %case50
    i32 51, label %case51
    i32 52, label %case52
    i32 53, label %case53
    i32 54, label %case54
    i32 55, label %case55
    i32 56, label %case56
    i32 57, label %case57
    i32 58, label %case58
    i32 59, label %case59
    i32 60, label %case60
    i32 61, label %case61
    i32 62, label %case62
    i32 63, label %case63
    i32 64, label %case64
    i32 65, label %case65
    i32 66, label %case66
    i32 67, label %case67
    i32 68, label %case68
    i32 69, label %case69
    i32 70, label %case70
    i32 71, label %case71
    i32 72, label %case72
    i32 73, label %case73
    i32 74, label %case74
    i32 75, label %case75
    i32 76, label %case76
    i32 77, label %case77
    i32 78, label %case78
    i32 79, label %case79
    i32 80, label %case80
    i32 81, label %case81
    i32 82, label %case82
    i32 83, label %case83
    i32 84, label %case84
    i32 85, label %case85
    i32 86, label %case86
    i32 87, label %case87
    i32 88, label %case88
    i32 89, label %case89
    i32 90, label %case90
    i32 91, label %case91
    i32 92, label %case92
    i32 93, label %case93
    i32 94, label %case94
    i32 95, label %case95
    i32 96, label %case96
    i32 97, label %case97
    i32 98, label %case98
    i32 99, label %case99
    i32 100, label %case100
    i32 101, label %case101
    i32 102, label %case102
    i32 103, label %case103
    i32 104, label %case104
    i32 105, label %case105
    i32 106, label %case106
    i32 107, label %case107
    i32 108, label %case108
    i32 109, label %case109
    i32 110, label %case110
    i32 111, label %case111
    i32 112, label %case112
    i32 113, label %case113
    i32 114, label %case114
    i32 115, label %case115
    i32 116, label %case116
    i32 117, label %case117
    i32 118, label %case118
    i32 119, label %case119
    i32 120, label %case120
    i32 121, label %case121
    i32 122, label %case122
    i32 123, label %case123
    i32 124, label %case124
    i32 125, label %case125
    i32 126, label %case126
    i32 127, label %case127
  ]
case0:
  br label %merge
case1:
  br label %merge
case2:
  br label %merge
case3:
  br label %merge
case4:
  br label %merge
case5:
  br label %merge
case6:
  br label %merge
case7:
  br label %merge
case8:
  br label %merge
case9:
  br label %merge
case10:
  br label %merge
case11:
  br label %merge
case12:
  br label %merge
case13:
  br label %merge
case14:
  br label %merge
case15:
  br label %merge
case16:
  br label %merge
case17:
  br label %merge
case18:
  br label %merge
case19:
  br label %merge
case20:
  br label %merge
case21:
  br label %merge
case22:
  br label %merge
case23:
  br label %merge
case24:
  br label %merge
case25:
  br label %merge
case26:
  br label %merge
case27:
  br label %merge
case28:
  br label %merge
case29:
  br label %merge
case30:
  br label %merge
case31:
  br label %merge
case32:
  br label %merge
case33:
  br label %merge
case34:
  br label %merge
case35:
  br label %merge
case36:
  br label %merge
case37:
  br label %merge
case38:
  br label %merge
case39:
  br label %merge
case40:
  br label %merge
case41:
  br label %merge
case42:
  br label %merge
case43:
  br label %merge
case44:
  br label %merge
case45:
  br label %merge
case46:
  br label %merge
case47:
  br label %merge
case48:
  br label %merge
case49:
  br label %merge
case50:
  br label %merge
case51:
  br label %merge
case52:
  br label %merge
case53:
  br label %merge
case54:
  br label %merge
case55:
  br label %merge
case56:
  br label %merge
case57:
  br label %merge
case58:
  br label %merge
case59:
  br label %merge
case60:
  br label %merge
case61:
  br label %merge
case62:
  br label %merge
case63:
  br label %merge
case64:
  br label %merge
case65:
  br label %merge
case66:
  br label %merge
case67:
  br label %merge
case68:
  br label %merge
case69:
  br label %merge
case70:
  br label %merge
case71:
  br label %merge
case72:
  br label %merge
case73:
  br label %merge
case74:
  br label %merge
case75:
  br label %merge
case76:
  br label %merge
case77:
  br label %merge
case78:
  br label %merge
case79:
  br label %merge
case80:
  br label %merge
case81:
  br label %merge
case82:
  br label %merge
case83:
  br label %merge
case84:
  br label %merge
case85:
  br label %merge
case86:
  br label %merge
case87:
  br label %merge
case88:
  br label %merge
case89:
  br label %merge
case90:
  br label %merge
case91:
  br label %merge
case92:
  br label %merge
case93:
  br label %merge
case94:
  br label %merge
case95:
  br label %merge
case96:
  br label %merge
case97:
  br label %merge
case98:
  br label %merge
case99:
  br label %merge
case100:
  br label %merge
case101:
  br label %merge
case102:
  br label %merge
case103:
  br label %merge
case104:
  br label %merge
case105:
  br label %merge
case106:
  br label %merge
case107:
  br label %merge
case108:
  br label %merge
case109:
  br label %merge
case110:
  br label %merge
case111:
  br label %merge
case112:
  br label %merge
case113:
  br label %merge
case114:
  br label %merge
case115:
  br label %merge
case116:
  br label %merge
case117:
  br label %merge
case118:
  br label %merge
case119:
  br label %merge
case120:
  br label %merge
case121:
  br label %merge
case122:
  br label %merge
case123:
  br label %merge
case124:
  br label %merge
case125:
  br label %merge
case126:
  br label %merge
case127:
  br label %merge
merge:
  %value = phi i64 [ -4302098779834749733, %case0 ], [ -2220562881957146901, %case1 ], [ -3894436733716799489, %case2 ], [ 1433843135270481901, %case3 ], [ 8336770163655280242, %case4 ], [ -7881803417479397662, %case5 ], [ -2941004127381733739, %case6 ], [ 5502495245947142431, %case7 ], [ -2572398748971526355, %case8 ], [ -2436064182340099334, %case9 ], [ 4055606894390288348, %case10 ], [ 5350621376133947991, %case11 ], [ 2765702133756617546, %case12 ], [ -8493270429887581760, %case13 ], [ -1160504230424452080, %case14 ], [ 5291143887273806931, %case15 ], [ -1568241370979223514, %case16 ], [ -929432383683428675, %case17 ], [ 3673450842886451206, %case18 ], [ -2478423014181009900, %case19 ], [ 3622887472839136718, %case20 ], [ 1246929574567274891, %case21 ], [ -1152736325583170325, %case22 ], [ -3324533442079829058, %case23 ], [ -8942773601077194801, %case24 ], [ 2970022284838843195, %case25 ], [ 7362585856034407022, %case26 ], [ -4392082282584759128, %case27 ], [ 5225411942735301638, %case28 ], [ -5450523663638814413, %case29 ], [ 3547770832784427690, %case30 ], [ 362675829607944414, %case31 ], [ -282257845897087025, %case32 ], [ 6898188129916750362, %case33 ], [ 2844895380948538806, %case34 ], [ 7674606916920705344, %case35 ], [ 9214633253411488453, %case36 ], [ 6687772750457788192, %case37 ], [ -4531365318336869402, %case38 ], [ 5344895949674194850, %case39 ], [ -6675284198519149788, %case40 ], [ 2113974078481014280, %case41 ], [ 8777568547874204941, %case42 ], [ -2169500560468987851, %case43 ], [ 3660690302424466814, %case44 ], [ -2436525662347849866, %case45 ], [ -6085909721859794221, %case46 ], [ 5134827694651168302, %case47 ], [ 1838281907459330133, %case48 ], [ 7335560060985733464, %case49 ], [ -318164364674882796, %case50 ], [ 8296998437054084336, %case51 ], [ -2123147046896566209, %case52 ], [ -2388148047314387342, %case53 ], [ -5375991149494515187, %case54 ], [ 499566431179015674, %case55 ], [ 7372184217170234346, %case56 ], [ 2897285734473052776, %case57 ], [ -6620125947798625332, %case58 ], [ 4279659918279867487, %case59 ], [ 4800416899009875996, %case60 ], [ -5931816708875844411, %case61 ], [ 6774495193030674564, %case62 ], [ -8398597170076423925, %case63 ], [ 8529366458340265297, %case64 ], [ -3398925928391953275, %case65 ], [ 8418202337400857587, %case66 ], [ 7020717050005586112, %case67 ], [ -3761882330889119378, %case68 ], [ -9149138593070727489, %case69 ], [ 8772769334003688095, %case70 ], [ 1743089132010364587, %case71 ], [ 3963873365795895589, %case72 ], [ -4042618408496833961, %case73 ], [ -3755880203185378672, %case74 ], [ 6190981343618133313, %case75 ], [ 8640948454356727894, %case76 ], [ -681029911906337757, %case77 ], [ 1874492674255557078, %case78 ], [ -461795147661551007, %case79 ], [ 5084905583549711826, %case80 ], [ 4488332001360539422, %case81 ], [ 3063753645715674379, %case82 ], [ -8515971706312224628, %case83 ], [ 2347651011283115188, %case84 ], [ 7862244273078811554, %case85 ], [ 4741579133146630013, %case86 ], [ -814247142782119327, %case87 ], [ 8169000404195870007, %case88 ], [ -9066049001627982408, %case89 ], [ 2833837677914226691, %case90 ], [ 6041807101686622375, %case91 ], [ -163413725005337946, %case92 ], [ -2403499172613604551, %case93 ], [ -7986631214068388042, %case94 ], [ 4575667007673887251, %case95 ], [ -6871223553662405846, %case96 ], [ -1817709641818812897, %case97 ], [ 6294355645245719615, %case98 ], [ -8340629563394885605, %case99 ], [ 5041782483466037194, %case100 ], [ -1880483337136747912, %case101 ], [ 3729356046086683290, %case102 ], [ -6189662371905423721, %case103 ], [ 8090085636497697382, %case104 ], [ 3171146578797943502, %case105 ], [ 5619658110353354353, %case106 ], [ -6259471935552714723, %case107 ], [ -4607290929671566278, %case108 ], [ -1112309911958824964, %case109 ], [ -3771184802297902326, %case110 ], [ -845068846880718549, %case111 ], [ -4746542111220524153, %case112 ], [ -992931083124165738, %case113 ], [ -4793174741866312907, %case114 ], [ -2974112083446677997, %case115 ], [ 8503709266395068717, %case116 ], [ 1000067187423537442, %case117 ], [ -647344187112945900, %case118 ], [ -5985590712037982679, %case119 ], [ -1517593895512126191, %case120 ], [ 2822446240451570149, %case121 ], [ 6100083767409290672, %case122 ], [ -4452813043723281122, %case123 ], [ -3260576076044403503, %case124 ], [ -5133358930729682568, %case125 ], [ -1723256135048217232, %case126 ], [ 3032053336604930433, %case127 ]
  %same = icmp eq i32 %idx, %stable
  %fallback = extractelement <128 x i64> <i64 -4302098779834749733, i64 -2220562881957146901, i64 -3894436733716799489, i64 1433843135270481901, i64 8336770163655280242, i64 -7881803417479397662, i64 -2941004127381733739, i64 5502495245947142431, i64 -2572398748971526355, i64 -2436064182340099334, i64 4055606894390288348, i64 5350621376133947991, i64 2765702133756617546, i64 -8493270429887581760, i64 -1160504230424452080, i64 5291143887273806931, i64 -1568241370979223514, i64 -929432383683428675, i64 3673450842886451206, i64 -2478423014181009900, i64 3622887472839136718, i64 1246929574567274891, i64 -1152736325583170325, i64 -3324533442079829058, i64 -8942773601077194801, i64 2970022284838843195, i64 7362585856034407022, i64 -4392082282584759128, i64 5225411942735301638, i64 -5450523663638814413, i64 3547770832784427690, i64 362675829607944414, i64 -282257845897087025, i64 6898188129916750362, i64 2844895380948538806, i64 7674606916920705344, i64 9214633253411488453, i64 6687772750457788192, i64 -4531365318336869402, i64 5344895949674194850, i64 -6675284198519149788, i64 2113974078481014280, i64 8777568547874204941, i64 -2169500560468987851, i64 3660690302424466814, i64 -2436525662347849866, i64 -6085909721859794221, i64 5134827694651168302, i64 1838281907459330133, i64 7335560060985733464, i64 -318164364674882796, i64 8296998437054084336, i64 -2123147046896566209, i64 -2388148047314387342, i64 -5375991149494515187, i64 499566431179015674, i64 7372184217170234346, i64 2897285734473052776, i64 -6620125947798625332, i64 4279659918279867487, i64 4800416899009875996, i64 -5931816708875844411, i64 6774495193030674564, i64 -8398597170076423925, i64 8529366458340265297, i64 -3398925928391953275, i64 8418202337400857587, i64 7020717050005586112, i64 -3761882330889119378, i64 -9149138593070727489, i64 8772769334003688095, i64 1743089132010364587, i64 3963873365795895589, i64 -4042618408496833961, i64 -3755880203185378672, i64 6190981343618133313, i64 8640948454356727894, i64 -681029911906337757, i64 1874492674255557078, i64 -461795147661551007, i64 5084905583549711826, i64 4488332001360539422, i64 3063753645715674379, i64 -8515971706312224628, i64 2347651011283115188, i64 7862244273078811554, i64 4741579133146630013, i64 -814247142782119327, i64 8169000404195870007, i64 -9066049001627982408, i64 2833837677914226691, i64 6041807101686622375, i64 -163413725005337946, i64 -2403499172613604551, i64 -7986631214068388042, i64 4575667007673887251, i64 -6871223553662405846, i64 -1817709641818812897, i64 6294355645245719615, i64 -8340629563394885605, i64 5041782483466037194, i64 -1880483337136747912, i64 3729356046086683290, i64 -6189662371905423721, i64 8090085636497697382, i64 3171146578797943502, i64 5619658110353354353, i64 -6259471935552714723, i64 -4607290929671566278, i64 -1112309911958824964, i64 -3771184802297902326, i64 -845068846880718549, i64 -4746542111220524153, i64 -992931083124165738, i64 -4793174741866312907, i64 -2974112083446677997, i64 8503709266395068717, i64 1000067187423537442, i64 -647344187112945900, i64 -5985590712037982679, i64 -1517593895512126191, i64 2822446240451570149, i64 6100083767409290672, i64 -4452813043723281122, i64 -3260576076044403503, i64 -5133358930729682568, i64 -1723256135048217232, i64 3032053336604930433>, i32 %idx
  %result = select i1 %same, i64 %value, i64 %fallback
  ret i64 %result
}

define internal i64 @lookup_1(i32 %idx) alwaysinline {
  %stable = freeze i32 %idx
  %safe = and i32 %stable, 127
  switch i32 %safe, label %case0 [
    i32 1, label %case1
    i32 2, label %case2
    i32 3, label %case3
    i32 4, label %case4
    i32 5, label %case5
    i32 6, label %case6
    i32 7, label %case7
    i32 8, label %case8
    i32 9, label %case9
    i32 10, label %case10
    i32 11, label %case11
    i32 12, label %case12
    i32 13, label %case13
    i32 14, label %case14
    i32 15, label %case15
    i32 16, label %case16
    i32 17, label %case17
    i32 18, label %case18
    i32 19, label %case19
    i32 20, label %case20
    i32 21, label %case21
    i32 22, label %case22
    i32 23, label %case23
    i32 24, label %case24
    i32 25, label %case25
    i32 26, label %case26
    i32 27, label %case27
    i32 28, label %case28
    i32 29, label %case29
    i32 30, label %case30
    i32 31, label %case31
    i32 32, label %case32
    i32 33, label %case33
    i32 34, label %case34
    i32 35, label %case35
    i32 36, label %case36
    i32 37, label %case37
    i32 38, label %case38
    i32 39, label %case39
    i32 40, label %case40
    i32 41, label %case41
    i32 42, label %case42
    i32 43, label %case43
    i32 44, label %case44
    i32 45, label %case45
    i32 46, label %case46
    i32 47, label %case47
    i32 48, label %case48
    i32 49, label %case49
    i32 50, label %case50
    i32 51, label %case51
    i32 52, label %case52
    i32 53, label %case53
    i32 54, label %case54
    i32 55, label %case55
    i32 56, label %case56
    i32 57, label %case57
    i32 58, label %case58
    i32 59, label %case59
    i32 60, label %case60
    i32 61, label %case61
    i32 62, label %case62
    i32 63, label %case63
    i32 64, label %case64
    i32 65, label %case65
    i32 66, label %case66
    i32 67, label %case67
    i32 68, label %case68
    i32 69, label %case69
    i32 70, label %case70
    i32 71, label %case71
    i32 72, label %case72
    i32 73, label %case73
    i32 74, label %case74
    i32 75, label %case75
    i32 76, label %case76
    i32 77, label %case77
    i32 78, label %case78
    i32 79, label %case79
    i32 80, label %case80
    i32 81, label %case81
    i32 82, label %case82
    i32 83, label %case83
    i32 84, label %case84
    i32 85, label %case85
    i32 86, label %case86
    i32 87, label %case87
    i32 88, label %case88
    i32 89, label %case89
    i32 90, label %case90
    i32 91, label %case91
    i32 92, label %case92
    i32 93, label %case93
    i32 94, label %case94
    i32 95, label %case95
    i32 96, label %case96
    i32 97, label %case97
    i32 98, label %case98
    i32 99, label %case99
    i32 100, label %case100
    i32 101, label %case101
    i32 102, label %case102
    i32 103, label %case103
    i32 104, label %case104
    i32 105, label %case105
    i32 106, label %case106
    i32 107, label %case107
    i32 108, label %case108
    i32 109, label %case109
    i32 110, label %case110
    i32 111, label %case111
    i32 112, label %case112
    i32 113, label %case113
    i32 114, label %case114
    i32 115, label %case115
    i32 116, label %case116
    i32 117, label %case117
    i32 118, label %case118
    i32 119, label %case119
    i32 120, label %case120
    i32 121, label %case121
    i32 122, label %case122
    i32 123, label %case123
    i32 124, label %case124
    i32 125, label %case125
    i32 126, label %case126
    i32 127, label %case127
  ]
case0:
  br label %merge
case1:
  br label %merge
case2:
  br label %merge
case3:
  br label %merge
case4:
  br label %merge
case5:
  br label %merge
case6:
  br label %merge
case7:
  br label %merge
case8:
  br label %merge
case9:
  br label %merge
case10:
  br label %merge
case11:
  br label %merge
case12:
  br label %merge
case13:
  br label %merge
case14:
  br label %merge
case15:
  br label %merge
case16:
  br label %merge
case17:
  br label %merge
case18:
  br label %merge
case19:
  br label %merge
case20:
  br label %merge
case21:
  br label %merge
case22:
  br label %merge
case23:
  br label %merge
case24:
  br label %merge
case25:
  br label %merge
case26:
  br label %merge
case27:
  br label %merge
case28:
  br label %merge
case29:
  br label %merge
case30:
  br label %merge
case31:
  br label %merge
case32:
  br label %merge
case33:
  br label %merge
case34:
  br label %merge
case35:
  br label %merge
case36:
  br label %merge
case37:
  br label %merge
case38:
  br label %merge
case39:
  br label %merge
case40:
  br label %merge
case41:
  br label %merge
case42:
  br label %merge
case43:
  br label %merge
case44:
  br label %merge
case45:
  br label %merge
case46:
  br label %merge
case47:
  br label %merge
case48:
  br label %merge
case49:
  br label %merge
case50:
  br label %merge
case51:
  br label %merge
case52:
  br label %merge
case53:
  br label %merge
case54:
  br label %merge
case55:
  br label %merge
case56:
  br label %merge
case57:
  br label %merge
case58:
  br label %merge
case59:
  br label %merge
case60:
  br label %merge
case61:
  br label %merge
case62:
  br label %merge
case63:
  br label %merge
case64:
  br label %merge
case65:
  br label %merge
case66:
  br label %merge
case67:
  br label %merge
case68:
  br label %merge
case69:
  br label %merge
case70:
  br label %merge
case71:
  br label %merge
case72:
  br label %merge
case73:
  br label %merge
case74:
  br label %merge
case75:
  br label %merge
case76:
  br label %merge
case77:
  br label %merge
case78:
  br label %merge
case79:
  br label %merge
case80:
  br label %merge
case81:
  br label %merge
case82:
  br label %merge
case83:
  br label %merge
case84:
  br label %merge
case85:
  br label %merge
case86:
  br label %merge
case87:
  br label %merge
case88:
  br label %merge
case89:
  br label %merge
case90:
  br label %merge
case91:
  br label %merge
case92:
  br label %merge
case93:
  br label %merge
case94:
  br label %merge
case95:
  br label %merge
case96:
  br label %merge
case97:
  br label %merge
case98:
  br label %merge
case99:
  br label %merge
case100:
  br label %merge
case101:
  br label %merge
case102:
  br label %merge
case103:
  br label %merge
case104:
  br label %merge
case105:
  br label %merge
case106:
  br label %merge
case107:
  br label %merge
case108:
  br label %merge
case109:
  br label %merge
case110:
  br label %merge
case111:
  br label %merge
case112:
  br label %merge
case113:
  br label %merge
case114:
  br label %merge
case115:
  br label %merge
case116:
  br label %merge
case117:
  br label %merge
case118:
  br label %merge
case119:
  br label %merge
case120:
  br label %merge
case121:
  br label %merge
case122:
  br label %merge
case123:
  br label %merge
case124:
  br label %merge
case125:
  br label %merge
case126:
  br label %merge
case127:
  br label %merge
merge:
  %value = phi i64 [ 7715946029497977153, %case0 ], [ 7756605422741824046, %case1 ], [ 6914152272366242186, %case2 ], [ 6619468546868266945, %case3 ], [ 8635048048508886888, %case4 ], [ -8393880875905280995, %case5 ], [ -6787559214576350429, %case6 ], [ -2217171985210471049, %case7 ], [ 3604675824303396708, %case8 ], [ -3512584283167155441, %case9 ], [ 2156514823987992107, %case10 ], [ 4907671418510825112, %case11 ], [ 8839569603083604159, %case12 ], [ -6042468303600945730, %case13 ], [ -3015502839406131913, %case14 ], [ 7156044269520408728, %case15 ], [ -1508413522767866676, %case16 ], [ 1604089566654333, %case17 ], [ 7878720862229920401, %case18 ], [ -3403495536095635901, %case19 ], [ 4419032860939710275, %case20 ], [ 8309667868945161700, %case21 ], [ 8127699344777264475, %case22 ], [ 3172741449153456871, %case23 ], [ -7819243355710516001, %case24 ], [ -1517632861945409470, %case25 ], [ -4231347299287732713, %case26 ], [ 7537847041743724411, %case27 ], [ -8574195954494672605, %case28 ], [ 8276179821638363100, %case29 ], [ -2521175872576789404, %case30 ], [ -6787734742961095628, %case31 ], [ 3141466977451366136, %case32 ], [ 6496874765145226399, %case33 ], [ 1397096103115942590, %case34 ], [ -5230410147232611976, %case35 ], [ -8713684776993538784, %case36 ], [ 4679852336830987527, %case37 ], [ -4552607469369903036, %case38 ], [ 5281118663193865049, %case39 ], [ -7809504173095293835, %case40 ], [ -3494378936840174703, %case41 ], [ -8283887544681711630, %case42 ], [ -1982062835990977551, %case43 ], [ 7876639392340321016, %case44 ], [ -776633854295803046, %case45 ], [ -4449956841746897829, %case46 ], [ 6252822398696073730, %case47 ], [ 3653197155308211081, %case48 ], [ 4184123583517128355, %case49 ], [ 2710647065067127392, %case50 ], [ 1364275973376659154, %case51 ], [ 5735683338271654244, %case52 ], [ 4788098542079513072, %case53 ], [ 2523649311648287430, %case54 ], [ 6226703245439355973, %case55 ], [ 4039168641094241130, %case56 ], [ -4735310071515049160, %case57 ], [ -7718157997211796903, %case58 ], [ -7630434519632171097, %case59 ], [ 6401440615517674288, %case60 ], [ -1540227857295215434, %case61 ], [ -6492234107044435804, %case62 ], [ 1076237601080914835, %case63 ], [ 371066729028084812, %case64 ], [ 2047781579520568252, %case65 ], [ 8981190644621376403, %case66 ], [ -1270115072684319195, %case67 ], [ -8955474670546817597, %case68 ], [ 1697060390969647966, %case69 ], [ -1880780507307867236, %case70 ], [ -5363681305219004548, %case71 ], [ -1084662620876922617, %case72 ], [ 8607018531237843404, %case73 ], [ -4794156784727077306, %case74 ], [ 6393061779462666445, %case75 ], [ 5666196083048816522, %case76 ], [ 6136724780979887393, %case77 ], [ 5191002144171421573, %case78 ], [ 3531887758758133993, %case79 ], [ -4418833195103958582, %case80 ], [ 399445177739474421, %case81 ], [ -1947046474972200432, %case82 ], [ -3252035828561191092, %case83 ], [ 8996305336856613012, %case84 ], [ 6917241246617268645, %case85 ], [ 7998926962047337531, %case86 ], [ -8446620120025011510, %case87 ], [ -5280387490099738130, %case88 ], [ 564548736115642456, %case89 ], [ -8404415521806172981, %case90 ], [ 3717577419720655258, %case91 ], [ -5089905126141548364, %case92 ], [ 7521440301808993825, %case93 ], [ -8814061795361718509, %case94 ], [ -2714087517662472993, %case95 ], [ 2071800237030200399, %case96 ], [ -4264588051788821739, %case97 ], [ 5286102316725614445, %case98 ], [ 699974702888830978, %case99 ], [ -6198501953651059440, %case100 ], [ 5478601957838938672, %case101 ], [ -8826379284296529914, %case102 ], [ 4117946310065826061, %case103 ], [ 2713743964583775612, %case104 ], [ 5235599403462674304, %case105 ], [ -4570201113732268168, %case106 ], [ 888845016463753946, %case107 ], [ -4356919662415120719, %case108 ], [ 2273280100835896876, %case109 ], [ -3991362807574606833, %case110 ], [ -4452897474114816089, %case111 ], [ -3778735031010307814, %case112 ], [ 4461224383070578004, %case113 ], [ -2508687673012358854, %case114 ], [ 519458947206652749, %case115 ], [ -8279674986227810403, %case116 ], [ 4384594615491221824, %case117 ], [ 2225088360167913052, %case118 ], [ -7273095038674136419, %case119 ], [ -3679179631877543767, %case120 ], [ 5569617102229150198, %case121 ], [ -8233578011895567121, %case122 ], [ -826440576334536596, %case123 ], [ -4492853642420687956, %case124 ], [ -2325365741171985389, %case125 ], [ 7789395919978777827, %case126 ], [ -2973241909731272914, %case127 ]
  %same = icmp eq i32 %idx, %stable
  %fallback = extractelement <128 x i64> <i64 7715946029497977153, i64 7756605422741824046, i64 6914152272366242186, i64 6619468546868266945, i64 8635048048508886888, i64 -8393880875905280995, i64 -6787559214576350429, i64 -2217171985210471049, i64 3604675824303396708, i64 -3512584283167155441, i64 2156514823987992107, i64 4907671418510825112, i64 8839569603083604159, i64 -6042468303600945730, i64 -3015502839406131913, i64 7156044269520408728, i64 -1508413522767866676, i64 1604089566654333, i64 7878720862229920401, i64 -3403495536095635901, i64 4419032860939710275, i64 8309667868945161700, i64 8127699344777264475, i64 3172741449153456871, i64 -7819243355710516001, i64 -1517632861945409470, i64 -4231347299287732713, i64 7537847041743724411, i64 -8574195954494672605, i64 8276179821638363100, i64 -2521175872576789404, i64 -6787734742961095628, i64 3141466977451366136, i64 6496874765145226399, i64 1397096103115942590, i64 -5230410147232611976, i64 -8713684776993538784, i64 4679852336830987527, i64 -4552607469369903036, i64 5281118663193865049, i64 -7809504173095293835, i64 -3494378936840174703, i64 -8283887544681711630, i64 -1982062835990977551, i64 7876639392340321016, i64 -776633854295803046, i64 -4449956841746897829, i64 6252822398696073730, i64 3653197155308211081, i64 4184123583517128355, i64 2710647065067127392, i64 1364275973376659154, i64 5735683338271654244, i64 4788098542079513072, i64 2523649311648287430, i64 6226703245439355973, i64 4039168641094241130, i64 -4735310071515049160, i64 -7718157997211796903, i64 -7630434519632171097, i64 6401440615517674288, i64 -1540227857295215434, i64 -6492234107044435804, i64 1076237601080914835, i64 371066729028084812, i64 2047781579520568252, i64 8981190644621376403, i64 -1270115072684319195, i64 -8955474670546817597, i64 1697060390969647966, i64 -1880780507307867236, i64 -5363681305219004548, i64 -1084662620876922617, i64 8607018531237843404, i64 -4794156784727077306, i64 6393061779462666445, i64 5666196083048816522, i64 6136724780979887393, i64 5191002144171421573, i64 3531887758758133993, i64 -4418833195103958582, i64 399445177739474421, i64 -1947046474972200432, i64 -3252035828561191092, i64 8996305336856613012, i64 6917241246617268645, i64 7998926962047337531, i64 -8446620120025011510, i64 -5280387490099738130, i64 564548736115642456, i64 -8404415521806172981, i64 3717577419720655258, i64 -5089905126141548364, i64 7521440301808993825, i64 -8814061795361718509, i64 -2714087517662472993, i64 2071800237030200399, i64 -4264588051788821739, i64 5286102316725614445, i64 699974702888830978, i64 -6198501953651059440, i64 5478601957838938672, i64 -8826379284296529914, i64 4117946310065826061, i64 2713743964583775612, i64 5235599403462674304, i64 -4570201113732268168, i64 888845016463753946, i64 -4356919662415120719, i64 2273280100835896876, i64 -3991362807574606833, i64 -4452897474114816089, i64 -3778735031010307814, i64 4461224383070578004, i64 -2508687673012358854, i64 519458947206652749, i64 -8279674986227810403, i64 4384594615491221824, i64 2225088360167913052, i64 -7273095038674136419, i64 -3679179631877543767, i64 5569617102229150198, i64 -8233578011895567121, i64 -826440576334536596, i64 -4492853642420687956, i64 -2325365741171985389, i64 7789395919978777827, i64 -2973241909731272914>, i32 %idx
  %result = select i1 %same, i64 %value, i64 %fallback
  ret i64 %result
}
