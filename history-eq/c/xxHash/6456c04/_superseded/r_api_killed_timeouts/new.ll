; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6456c04/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6456c04/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_0to16(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i64 %1, 16
  br i1 %3, label %72, label %4

4:                                                ; preds = %2
  %5 = icmp samesign ugt i64 %1, 7
  br i1 %5, label %6, label %24, !prof !5

6:                                                ; preds = %4
  %7 = load i64, ptr %0, align 1
  %8 = xor i64 %7, -4734510112055689544
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %10 = getelementptr inbounds i8, ptr %9, i64 -8
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, 2066345149520216444
  %13 = zext i64 %8 to i128
  %14 = zext i64 %12 to i128
  %15 = mul nuw i128 %14, %13
  %16 = lshr i128 %15, 64
  %17 = xor i128 %16, %15
  %18 = trunc i128 %17 to i64
  %19 = add i64 %8, %1
  %20 = add i64 %19, %12
  %21 = add i64 %20, %18
  %22 = lshr i64 %21, 37
  %23 = xor i64 %22, %21
  br label %67

24:                                               ; preds = %4
  %25 = icmp samesign ugt i64 %1, 3
  br i1 %25, label %26, label %44, !prof !5

26:                                               ; preds = %24
  %27 = load i32, ptr %0, align 1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %29 = getelementptr inbounds i8, ptr %28, i64 -4
  %30 = load i32, ptr %29, align 1
  %31 = zext i32 %30 to i64
  %32 = zext i32 %27 to i64
  %33 = shl nuw i64 %32, 32
  %34 = or disjoint i64 %33, %31
  %35 = xor i64 %34, -4734510112055689544
  %36 = lshr i64 %35, 39
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %1
  %40 = lshr i64 %39, 47
  %41 = lshr i64 %39, 37
  %42 = xor i64 %40, %41
  %43 = xor i64 %42, %39
  br label %67

44:                                               ; preds = %24
  %45 = icmp eq i64 %1, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %44
  %47 = load i8, ptr %0, align 1
  %48 = lshr i64 %1, 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr i8, ptr %0, i64 %1
  %52 = getelementptr i8, ptr %51, i64 -1
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %47 to i64
  %55 = shl nuw nsw i64 %54, 16
  %56 = zext i8 %50 to i64
  %57 = shl nuw nsw i64 %56, 24
  %58 = or disjoint i64 %57, %55
  %59 = zext i8 %53 to i64
  %60 = or disjoint i64 %58, %59
  %61 = shl nuw nsw i64 %1, 8
  %62 = or disjoint i64 %60, %61
  %63 = xor i64 %62, 963444408
  %64 = mul i64 %63, -7046029288634856825
  %65 = lshr i64 %64, 37
  %66 = xor i64 %65, %64
  br label %67

67:                                               ; preds = %6, %26, %44, %46
  %68 = phi i64 [ %66, %46 ], [ %43, %26 ], [ %23, %6 ], [ 2340989528640377555, %44 ]
  %69 = mul i64 %68, 1609587791953885689
  %70 = lshr i64 %69, 32
  %71 = xor i64 %70, %69
  br label %72

72:                                               ; preds = %2, %67
  %73 = phi i64 [ %71, %67 ], [ 0, %2 ]
  ret i64 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_0to16(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 16
  br i1 %4, label %81, label %5

5:                                                ; preds = %3
  %6 = icmp samesign ugt i64 %1, 7
  br i1 %6, label %7, label %26, !prof !5

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 1
  %9 = xor i64 %8, -4734510112055689544
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %11 = getelementptr inbounds i8, ptr %10, i64 -8
  %12 = load i64, ptr %11, align 1
  %13 = sub i64 2066345149520216444, %2
  %14 = xor i64 %12, %13
  %15 = zext i64 %9 to i128
  %16 = zext i64 %14 to i128
  %17 = mul nuw i128 %16, %15
  %18 = lshr i128 %17, 64
  %19 = xor i128 %18, %17
  %20 = trunc i128 %19 to i64
  %21 = add i64 %9, %1
  %22 = add i64 %21, %14
  %23 = add i64 %22, %20
  %24 = lshr i64 %23, 37
  %25 = xor i64 %24, %23
  br label %76

26:                                               ; preds = %5
  %27 = icmp samesign ugt i64 %1, 3
  br i1 %27, label %28, label %47, !prof !5

28:                                               ; preds = %26
  %29 = load i32, ptr %0, align 1
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %31 = getelementptr inbounds i8, ptr %30, i64 -4
  %32 = load i32, ptr %31, align 1
  %33 = zext i32 %32 to i64
  %34 = zext i32 %29 to i64
  %35 = shl nuw i64 %34, 32
  %36 = or disjoint i64 %35, %33
  %37 = add i64 %2, -4734510112055689544
  %38 = xor i64 %36, %37
  %39 = lshr i64 %38, 39
  %40 = xor i64 %39, %38
  %41 = mul i64 %40, -4417276706812531889
  %42 = add i64 %41, %1
  %43 = lshr i64 %42, 47
  %44 = lshr i64 %42, 37
  %45 = xor i64 %43, %44
  %46 = xor i64 %45, %42
  br label %76

47:                                               ; preds = %26
  %48 = icmp eq i64 %1, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %47
  %50 = load i8, ptr %0, align 1
  %51 = lshr i64 %1, 1
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 %51
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr i8, ptr %0, i64 %1
  %55 = getelementptr i8, ptr %54, i64 -1
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %50 to i64
  %58 = shl nuw nsw i64 %57, 16
  %59 = zext i8 %53 to i64
  %60 = shl nuw nsw i64 %59, 24
  %61 = or disjoint i64 %60, %58
  %62 = zext i8 %56 to i64
  %63 = or disjoint i64 %61, %62
  %64 = shl nuw nsw i64 %1, 8
  %65 = or disjoint i64 %63, %64
  %66 = add i64 %2, 963444408
  %67 = xor i64 %65, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = lshr i64 %68, 37
  %70 = xor i64 %69, %68
  br label %76

71:                                               ; preds = %47
  %72 = add i64 %2, -7046029288634856825
  %73 = xor i64 %72, -4734510112055689544
  %74 = lshr i64 %73, 37
  %75 = xor i64 %74, %73
  br label %76

76:                                               ; preds = %7, %28, %49, %71
  %77 = phi i64 [ %75, %71 ], [ %70, %49 ], [ %46, %28 ], [ %25, %7 ]
  %78 = mul i64 %77, 1609587791953885689
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  br label %81

81:                                               ; preds = %3, %76
  %82 = phi i64 [ %80, %76 ], [ 0, %3 ]
  ret i64 %82
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_secret_0to16(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %1, 16
  %6 = icmp ult i64 %3, 136
  %7 = or i1 %5, %6
  br i1 %7, label %87, label %8

8:                                                ; preds = %4
  %9 = icmp samesign ugt i64 %1, 7
  br i1 %9, label %10, label %31, !prof !5

10:                                               ; preds = %8
  %11 = load i64, ptr %2, align 1
  %12 = getelementptr i8, ptr %2, i64 8
  %13 = load i64, ptr %12, align 1
  %14 = load i64, ptr %0, align 1
  %15 = xor i64 %14, %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %17 = getelementptr inbounds i8, ptr %16, i64 -8
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %13
  %20 = zext i64 %15 to i128
  %21 = zext i64 %19 to i128
  %22 = mul nuw i128 %21, %20
  %23 = lshr i128 %22, 64
  %24 = xor i128 %23, %22
  %25 = trunc i128 %24 to i64
  %26 = add i64 %15, %1
  %27 = add i64 %26, %19
  %28 = add i64 %27, %25
  %29 = lshr i64 %28, 37
  %30 = xor i64 %29, %28
  br label %82

31:                                               ; preds = %8
  %32 = icmp samesign ugt i64 %1, 3
  br i1 %32, label %33, label %52, !prof !5

33:                                               ; preds = %31
  %34 = load i64, ptr %2, align 1
  %35 = load i32, ptr %0, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %37 = getelementptr inbounds i8, ptr %36, i64 -4
  %38 = load i32, ptr %37, align 1
  %39 = zext i32 %38 to i64
  %40 = zext i32 %35 to i64
  %41 = shl nuw i64 %40, 32
  %42 = or disjoint i64 %41, %39
  %43 = xor i64 %42, %34
  %44 = lshr i64 %43, 39
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, -4417276706812531889
  %47 = add i64 %46, %1
  %48 = lshr i64 %47, 47
  %49 = lshr i64 %47, 37
  %50 = xor i64 %48, %49
  %51 = xor i64 %50, %47
  br label %82

52:                                               ; preds = %31
  %53 = icmp eq i64 %1, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %2, align 1
  %56 = load i8, ptr %0, align 1
  %57 = lshr i64 %1, 1
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 %57
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr i8, ptr %0, i64 %1
  %61 = getelementptr i8, ptr %60, i64 -1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %56 to i64
  %64 = shl nuw nsw i64 %63, 16
  %65 = zext i8 %59 to i64
  %66 = shl nuw nsw i64 %65, 24
  %67 = or disjoint i64 %66, %64
  %68 = zext i8 %62 to i64
  %69 = or disjoint i64 %67, %68
  %70 = shl nuw nsw i64 %1, 8
  %71 = or disjoint i64 %69, %70
  %72 = zext i32 %55 to i64
  %73 = xor i64 %71, %72
  %74 = mul i64 %73, -7046029288634856825
  %75 = lshr i64 %74, 37
  %76 = xor i64 %75, %74
  br label %82

77:                                               ; preds = %52
  %78 = load i64, ptr %2, align 1
  %79 = xor i64 %78, -7046029288634856825
  %80 = lshr i64 %79, 37
  %81 = xor i64 %80, %79
  br label %82

82:                                               ; preds = %10, %33, %54, %77
  %83 = phi i64 [ %81, %77 ], [ %76, %54 ], [ %51, %33 ], [ %30, %10 ]
  %84 = mul i64 %83, 1609587791953885689
  %85 = lshr i64 %84, 32
  %86 = xor i64 %85, %84
  br label %87

87:                                               ; preds = %4, %82
  %88 = phi i64 [ %86, %82 ], [ 0, %4 ]
  ret i64 %88
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_seed_0to16_not8(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 16
  %5 = icmp eq i64 %1, 8
  %6 = or i1 %4, %5
  br i1 %6, label %83, label %7

7:                                                ; preds = %3
  %8 = icmp samesign ugt i64 %1, 7
  br i1 %8, label %9, label %28, !prof !5

9:                                                ; preds = %7
  %10 = load i64, ptr %0, align 1
  %11 = xor i64 %10, -4734510112055689544
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = load i64, ptr %13, align 1
  %15 = sub i64 2066345149520216444, %2
  %16 = xor i64 %14, %15
  %17 = zext i64 %11 to i128
  %18 = zext i64 %16 to i128
  %19 = mul nuw i128 %18, %17
  %20 = lshr i128 %19, 64
  %21 = xor i128 %20, %19
  %22 = trunc i128 %21 to i64
  %23 = add i64 %11, %1
  %24 = add i64 %23, %16
  %25 = add i64 %24, %22
  %26 = lshr i64 %25, 37
  %27 = xor i64 %26, %25
  br label %78

28:                                               ; preds = %7
  %29 = icmp samesign ugt i64 %1, 3
  br i1 %29, label %30, label %49, !prof !5

30:                                               ; preds = %28
  %31 = load i32, ptr %0, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %33 = getelementptr inbounds i8, ptr %32, i64 -4
  %34 = load i32, ptr %33, align 1
  %35 = zext i32 %34 to i64
  %36 = zext i32 %31 to i64
  %37 = shl nuw i64 %36, 32
  %38 = or disjoint i64 %37, %35
  %39 = add i64 %2, -4734510112055689544
  %40 = xor i64 %38, %39
  %41 = lshr i64 %40, 39
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, -4417276706812531889
  %44 = add i64 %43, %1
  %45 = lshr i64 %44, 47
  %46 = lshr i64 %44, 37
  %47 = xor i64 %45, %46
  %48 = xor i64 %47, %44
  br label %78

49:                                               ; preds = %28
  %50 = icmp eq i64 %1, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %49
  %52 = load i8, ptr %0, align 1
  %53 = lshr i64 %1, 1
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr i8, ptr %0, i64 %1
  %57 = getelementptr i8, ptr %56, i64 -1
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %52 to i64
  %60 = shl nuw nsw i64 %59, 16
  %61 = zext i8 %55 to i64
  %62 = shl nuw nsw i64 %61, 24
  %63 = or disjoint i64 %62, %60
  %64 = zext i8 %58 to i64
  %65 = or disjoint i64 %63, %64
  %66 = shl nuw nsw i64 %1, 8
  %67 = or disjoint i64 %65, %66
  %68 = add i64 %2, 963444408
  %69 = xor i64 %67, %68
  %70 = mul i64 %69, -7046029288634856825
  %71 = lshr i64 %70, 37
  %72 = xor i64 %71, %70
  br label %78

73:                                               ; preds = %49
  %74 = add i64 %2, -7046029288634856825
  %75 = xor i64 %74, -4734510112055689544
  %76 = lshr i64 %75, 37
  %77 = xor i64 %76, %75
  br label %78

78:                                               ; preds = %9, %30, %51, %73
  %79 = phi i64 [ %77, %73 ], [ %72, %51 ], [ %48, %30 ], [ %27, %9 ]
  %80 = mul i64 %79, 1609587791953885689
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  br label %83

83:                                               ; preds = %3, %78
  %84 = phi i64 [ %82, %78 ], [ 0, %3 ]
  ret i64 %84
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_api_64_secret_0to16_not8(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %1, 16
  %6 = icmp eq i64 %1, 8
  %7 = or i1 %5, %6
  %8 = icmp ult i64 %3, 136
  %9 = or i1 %7, %8
  br i1 %9, label %89, label %10

10:                                               ; preds = %4
  %11 = icmp samesign ugt i64 %1, 7
  br i1 %11, label %12, label %33, !prof !5

12:                                               ; preds = %10
  %13 = load i64, ptr %2, align 1
  %14 = getelementptr i8, ptr %2, i64 8
  %15 = load i64, ptr %14, align 1
  %16 = load i64, ptr %0, align 1
  %17 = xor i64 %16, %13
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  %20 = load i64, ptr %19, align 1
  %21 = xor i64 %20, %15
  %22 = zext i64 %17 to i128
  %23 = zext i64 %21 to i128
  %24 = mul nuw i128 %23, %22
  %25 = lshr i128 %24, 64
  %26 = xor i128 %25, %24
  %27 = trunc i128 %26 to i64
  %28 = add i64 %17, %1
  %29 = add i64 %28, %21
  %30 = add i64 %29, %27
  %31 = lshr i64 %30, 37
  %32 = xor i64 %31, %30
  br label %84

33:                                               ; preds = %10
  %34 = icmp samesign ugt i64 %1, 3
  br i1 %34, label %35, label %54, !prof !5

35:                                               ; preds = %33
  %36 = load i64, ptr %2, align 1
  %37 = load i32, ptr %0, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %39 = getelementptr inbounds i8, ptr %38, i64 -4
  %40 = load i32, ptr %39, align 1
  %41 = zext i32 %40 to i64
  %42 = zext i32 %37 to i64
  %43 = shl nuw i64 %42, 32
  %44 = or disjoint i64 %43, %41
  %45 = xor i64 %44, %36
  %46 = lshr i64 %45, 39
  %47 = xor i64 %46, %45
  %48 = mul i64 %47, -4417276706812531889
  %49 = add i64 %48, %1
  %50 = lshr i64 %49, 47
  %51 = lshr i64 %49, 37
  %52 = xor i64 %50, %51
  %53 = xor i64 %52, %49
  br label %84

54:                                               ; preds = %33
  %55 = icmp eq i64 %1, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %54
  %57 = load i32, ptr %2, align 1
  %58 = load i8, ptr %0, align 1
  %59 = lshr i64 %1, 1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr i8, ptr %0, i64 %1
  %63 = getelementptr i8, ptr %62, i64 -1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %58 to i64
  %66 = shl nuw nsw i64 %65, 16
  %67 = zext i8 %61 to i64
  %68 = shl nuw nsw i64 %67, 24
  %69 = or disjoint i64 %68, %66
  %70 = zext i8 %64 to i64
  %71 = or disjoint i64 %69, %70
  %72 = shl nuw nsw i64 %1, 8
  %73 = or disjoint i64 %71, %72
  %74 = zext i32 %57 to i64
  %75 = xor i64 %73, %74
  %76 = mul i64 %75, -7046029288634856825
  %77 = lshr i64 %76, 37
  %78 = xor i64 %77, %76
  br label %84

79:                                               ; preds = %54
  %80 = load i64, ptr %2, align 1
  %81 = xor i64 %80, -7046029288634856825
  %82 = lshr i64 %81, 37
  %83 = xor i64 %82, %81
  br label %84

84:                                               ; preds = %12, %35, %56, %79
  %85 = phi i64 [ %83, %79 ], [ %78, %56 ], [ %53, %35 ], [ %32, %12 ]
  %86 = mul i64 %85, 1609587791953885689
  %87 = lshr i64 %86, 32
  %88 = xor i64 %87, %86
  br label %89

89:                                               ; preds = %4, %84
  %90 = phi i64 [ %88, %84 ], [ 0, %4 ]
  ret i64 %90
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
