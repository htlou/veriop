; ModuleID = 'history-eq/c/fast_float/a7249f86/overflow_lemma.cpp'
source_filename = "history-eq/c/fast_float/a7249f86/overflow_lemma.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @target_base2_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base3_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 2
  %5 = icmp ult i64 %1, -6289078614652622815
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = mul nuw nsw i64 %0, -6289078614652622815
  %11 = add i64 %10, %1
  %12 = icmp ult i64 %11, -6289078614652622815
  br label %13

13:                                               ; preds = %2, %7, %9
  %14 = phi i1 [ false, %2 ], [ true, %7 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @target_base4_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base5_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 4
  %5 = icmp ult i64 %1, 7450580596923828125
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 7450580596923828125
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 2
  %13 = icmp ult i64 %11, -3545582879861895366
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base6_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 5
  %5 = icmp ult i64 %1, 4738381338321616896
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 3
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 4738381338321616896
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 3
  %13 = icmp ult i64 %11, -4231600058744700928
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base7_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 6
  %5 = icmp ult i64 %1, 3909821048582988049
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 4
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 3909821048582988049
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 4
  %13 = icmp ult i64 %11, -2807459879377599420
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base8_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 7
  %5 = icmp sgt i64 %1, -1
  %6 = and i1 %4, %5
  %7 = icmp samesign ugt i64 %0, 1
  %8 = select i1 %6, i1 %7, i1 false
  ret i1 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base9_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 8
  %5 = icmp ult i64 %1, -6289078614652622815
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = mul nuw nsw i64 %0, -6289078614652622815
  %11 = add i64 %10, %1
  %12 = icmp ult i64 %11, -6289078614652622815
  br label %13

13:                                               ; preds = %2, %7, %9
  %14 = phi i1 [ false, %2 ], [ true, %7 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base10_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 9
  %5 = icmp ult i64 %1, -8446744073709551616
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = mul nuw nsw i64 %0, -8446744073709551616
  %11 = add i64 %10, %1
  %12 = icmp ult i64 %11, -8446744073709551616
  br label %13

13:                                               ; preds = %2, %7, %9
  %14 = phi i1 [ false, %2 ], [ true, %7 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base11_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 10
  %5 = icmp ult i64 %1, 5559917313492231481
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 3
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 5559917313492231481
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 3
  %13 = icmp ult i64 %11, -1766992133232857173
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base12_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 11
  %5 = icmp ult i64 %1, 2218611106740436992
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 8
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 2218611106740436992
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 8
  %13 = icmp ult i64 %11, -697855219786055680
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base13_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 12
  %5 = icmp ult i64 %1, 8650415919381337933
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 8650415919381337933
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 2
  %13 = icmp ult i64 %11, -1145912234946875750
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base14_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 13
  %5 = icmp ult i64 %1, 2177953337809371136
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 8
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 2177953337809371136
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 8
  %13 = icmp ult i64 %11, -1023117371234582528
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base15_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 14
  %5 = icmp ult i64 %1, 6568408355712890625
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 6568408355712890625
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 2
  %13 = icmp ult i64 %11, -5309927362283770366
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @target_base16_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base17_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 16
  %5 = icmp ult i64 %1, 2862423051509815793
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 6
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 2862423051509815793
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 6
  %13 = icmp ult i64 %11, -1272205764650656858
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base18_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 17
  %5 = icmp ult i64 %1, 6746640616477458432
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 6746640616477458432
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 2
  %13 = icmp ult i64 %11, -4953462840754634752
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base19_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 18
  %5 = icmp ult i64 %1, -3265617043834753317
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = mul nuw nsw i64 %0, -3265617043834753317
  %11 = add i64 %10, %1
  %12 = icmp ult i64 %11, -3265617043834753317
  br label %13

13:                                               ; preds = %2, %7, %9
  %14 = phi i1 [ false, %2 ], [ true, %7 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base20_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 19
  %5 = icmp ult i64 %1, 1638400000000000000
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 11
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 1638400000000000000
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 11
  %13 = icmp ult i64 %11, -424344073709551616
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base21_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 20
  %5 = icmp ult i64 %1, 3243919932521508681
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 5
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 3243919932521508681
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 5
  %13 = icmp ult i64 %11, -2227144411102008211
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base22_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 21
  %5 = icmp ult i64 %1, 6221821273427820544
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 6221821273427820544
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 2
  %13 = icmp ult i64 %11, -6003101526853910528
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base23_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 22
  %5 = icmp ult i64 %1, -6853907749170801807
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = mul nuw nsw i64 %0, -6853907749170801807
  %11 = add i64 %10, %1
  %12 = icmp ult i64 %11, -6853907749170801807
  br label %13

13:                                               ; preds = %2, %7, %9
  %14 = phi i1 [ false, %2 ], [ true, %7 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base24_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 23
  %5 = icmp ult i64 %1, 876488338465357824
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 21
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 876488338465357824
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 21
  %13 = icmp ult i64 %11, -40488965937037312
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base25_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 24
  %5 = icmp ult i64 %1, 1490116119384765625
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 12
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 1490116119384765625
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 12
  %13 = icmp ult i64 %11, -565350641092364116
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base26_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 25
  %5 = icmp ult i64 %1, 2481152873203736576
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 7
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 2481152873203736576
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 7
  %13 = icmp ult i64 %11, -1078673961283395584
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base27_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 26
  %5 = icmp ult i64 %1, 4052555153018976267
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 4
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 4052555153018976267
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 4
  %13 = icmp ult i64 %11, -2236523461633646548
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base28_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 27
  %5 = icmp ult i64 %1, 6502111422497947648
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 6502111422497947648
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 2
  %13 = icmp ult i64 %11, -5442521228713656320
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base29_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 28
  %5 = icmp ult i64 %1, -8186115360750949427
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = mul nuw nsw i64 %0, -8186115360750949427
  %11 = add i64 %10, %1
  %12 = icmp ult i64 %11, -8186115360750949427
  br label %13

13:                                               ; preds = %2, %7, %9
  %14 = phi i1 [ false, %2 ], [ true, %7 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base30_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 29
  %5 = icmp ult i64 %1, -2503514073709551616
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = mul nuw nsw i64 %0, -2503514073709551616
  %11 = add i64 %10, %1
  %12 = icmp ult i64 %11, -2503514073709551616
  br label %13

13:                                               ; preds = %2, %7, %9
  %14 = phi i1 [ false, %2 ], [ true, %7 ], [ %12, %9 ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base31_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 30
  %5 = icmp ult i64 %1, 787662783788549761
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 23
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 787662783788549761
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 23
  %13 = icmp ult i64 %11, -330500046572907113
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base32_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 31
  %5 = icmp ult i64 %1, 1152921504606846976
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 15
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = shl nuw i64 %0, 60
  %11 = or disjoint i64 %10, %1
  %12 = icmp eq i64 %0, 15
  %13 = icmp ult i64 %11, -1152921504606846976
  %14 = select i1 %12, i1 %13, i1 false
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base33_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 32
  %5 = icmp ult i64 %1, 1667889514952984961
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 11
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 1667889514952984961
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 11
  %13 = icmp ult i64 %11, -99959409226717045
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base34_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 33
  %5 = icmp ult i64 %1, 2386420683693101056
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 7
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 2386420683693101056
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 7
  %13 = icmp ult i64 %11, -1741799287857844224
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base35_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 34
  %5 = icmp ult i64 %1, 3379220508056640625
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 5
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 3379220508056640625
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 5
  %13 = icmp ult i64 %11, -1550641533426348491
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_base36_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -1
  %4 = icmp ult i64 %3, 35
  %5 = icmp ult i64 %1, 4738381338321616896
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = icmp samesign ugt i64 %0, 3
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = mul nuw i64 %0, 4738381338321616896
  %11 = add i64 %10, %1
  %12 = icmp eq i64 %0, 3
  %13 = icmp ult i64 %11, -4231600058744700928
  %14 = and i1 %12, %13
  br label %15

15:                                               ; preds = %2, %7, %9
  %16 = phi i1 [ false, %2 ], [ true, %7 ], [ %14, %9 ]
  ret i1 %16
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
