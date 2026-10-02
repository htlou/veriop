; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vectable_switch/before-inline.ll'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vectable_split/xxhash_vectable_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
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
  br i1 %40, label %41, label %48

41:                                               ; preds = %4
  %42 = icmp eq i64 %30, 2267503259
  %43 = and i8 %9, 127
  %44 = zext nneg i8 %43 to i32
  %stable.i = freeze i32 %44
  %safe.i = and i32 %stable.i, 127
  switch i32 %safe.i, label %case0.i [
    i32 1, label %case1.i
    i32 2, label %case2.i
    i32 3, label %case3.i
    i32 4, label %case4.i
    i32 5, label %case5.i
    i32 6, label %case6.i
    i32 7, label %case7.i
    i32 8, label %case8.i
    i32 9, label %case9.i
    i32 10, label %case10.i
    i32 11, label %case11.i
    i32 12, label %case12.i
    i32 13, label %case13.i
    i32 14, label %case14.i
    i32 15, label %case15.i
    i32 16, label %case16.i
    i32 17, label %case17.i
    i32 18, label %case18.i
    i32 19, label %case19.i
    i32 20, label %case20.i
    i32 21, label %case21.i
    i32 22, label %case22.i
    i32 23, label %case23.i
    i32 24, label %case24.i
    i32 25, label %case25.i
    i32 26, label %case26.i
    i32 27, label %case27.i
    i32 28, label %case28.i
    i32 29, label %case29.i
    i32 30, label %case30.i
    i32 31, label %case31.i
    i32 32, label %case32.i
    i32 33, label %case33.i
    i32 34, label %case34.i
    i32 35, label %case35.i
    i32 36, label %case36.i
    i32 37, label %case37.i
    i32 38, label %case38.i
    i32 39, label %case39.i
    i32 40, label %case40.i
    i32 41, label %case41.i
    i32 42, label %case42.i
    i32 43, label %case43.i
    i32 44, label %case44.i
    i32 45, label %case45.i
    i32 46, label %case46.i
    i32 47, label %case47.i
    i32 48, label %case48.i
    i32 49, label %case49.i
    i32 50, label %case50.i
    i32 51, label %case51.i
    i32 52, label %case52.i
    i32 53, label %case53.i
    i32 54, label %case54.i
    i32 55, label %case55.i
    i32 56, label %case56.i
    i32 57, label %case57.i
    i32 58, label %case58.i
    i32 59, label %case59.i
    i32 60, label %case60.i
    i32 61, label %case61.i
    i32 62, label %case62.i
    i32 63, label %case63.i
    i32 64, label %case64.i
    i32 65, label %case65.i
    i32 66, label %case66.i
    i32 67, label %case67.i
    i32 68, label %case68.i
    i32 69, label %case69.i
    i32 70, label %case70.i
    i32 71, label %case71.i
    i32 72, label %case72.i
    i32 73, label %case73.i
    i32 74, label %case74.i
    i32 75, label %case75.i
    i32 76, label %case76.i
    i32 77, label %case77.i
    i32 78, label %case78.i
    i32 79, label %case79.i
    i32 80, label %case80.i
    i32 81, label %case81.i
    i32 82, label %case82.i
    i32 83, label %case83.i
    i32 84, label %case84.i
    i32 85, label %case85.i
    i32 86, label %case86.i
    i32 87, label %case87.i
    i32 88, label %case88.i
    i32 89, label %case89.i
    i32 90, label %case90.i
    i32 91, label %case91.i
    i32 92, label %case92.i
    i32 93, label %case93.i
    i32 94, label %case94.i
    i32 95, label %case95.i
    i32 96, label %case96.i
    i32 97, label %case97.i
    i32 98, label %case98.i
    i32 99, label %case99.i
    i32 100, label %case100.i
    i32 101, label %case101.i
    i32 102, label %case102.i
    i32 103, label %case103.i
    i32 104, label %case104.i
    i32 105, label %case105.i
    i32 106, label %case106.i
    i32 107, label %case107.i
    i32 108, label %case108.i
    i32 109, label %case109.i
    i32 110, label %case110.i
    i32 111, label %case111.i
    i32 112, label %case112.i
    i32 113, label %case113.i
    i32 114, label %case114.i
    i32 115, label %case115.i
    i32 116, label %case116.i
    i32 117, label %case117.i
    i32 118, label %case118.i
    i32 119, label %case119.i
    i32 120, label %case120.i
    i32 121, label %case121.i
    i32 122, label %case122.i
    i32 123, label %case123.i
    i32 124, label %case124.i
    i32 125, label %case125.i
    i32 126, label %case126.i
    i32 127, label %case127.i
  ]

case0.i:                                          ; preds = %41
  br label %lookup_0.exit

case1.i:                                          ; preds = %41
  br label %lookup_0.exit

case2.i:                                          ; preds = %41
  br label %lookup_0.exit

case3.i:                                          ; preds = %41
  br label %lookup_0.exit

case4.i:                                          ; preds = %41
  br label %lookup_0.exit

case5.i:                                          ; preds = %41
  br label %lookup_0.exit

case6.i:                                          ; preds = %41
  br label %lookup_0.exit

case7.i:                                          ; preds = %41
  br label %lookup_0.exit

case8.i:                                          ; preds = %41
  br label %lookup_0.exit

case9.i:                                          ; preds = %41
  br label %lookup_0.exit

case10.i:                                         ; preds = %41
  br label %lookup_0.exit

case11.i:                                         ; preds = %41
  br label %lookup_0.exit

case12.i:                                         ; preds = %41
  br label %lookup_0.exit

case13.i:                                         ; preds = %41
  br label %lookup_0.exit

case14.i:                                         ; preds = %41
  br label %lookup_0.exit

case15.i:                                         ; preds = %41
  br label %lookup_0.exit

case16.i:                                         ; preds = %41
  br label %lookup_0.exit

case17.i:                                         ; preds = %41
  br label %lookup_0.exit

case18.i:                                         ; preds = %41
  br label %lookup_0.exit

case19.i:                                         ; preds = %41
  br label %lookup_0.exit

case20.i:                                         ; preds = %41
  br label %lookup_0.exit

case21.i:                                         ; preds = %41
  br label %lookup_0.exit

case22.i:                                         ; preds = %41
  br label %lookup_0.exit

case23.i:                                         ; preds = %41
  br label %lookup_0.exit

case24.i:                                         ; preds = %41
  br label %lookup_0.exit

case25.i:                                         ; preds = %41
  br label %lookup_0.exit

case26.i:                                         ; preds = %41
  br label %lookup_0.exit

case27.i:                                         ; preds = %41
  br label %lookup_0.exit

case28.i:                                         ; preds = %41
  br label %lookup_0.exit

case29.i:                                         ; preds = %41
  br label %lookup_0.exit

case30.i:                                         ; preds = %41
  br label %lookup_0.exit

case31.i:                                         ; preds = %41
  br label %lookup_0.exit

case32.i:                                         ; preds = %41
  br label %lookup_0.exit

case33.i:                                         ; preds = %41
  br label %lookup_0.exit

case34.i:                                         ; preds = %41
  br label %lookup_0.exit

case35.i:                                         ; preds = %41
  br label %lookup_0.exit

case36.i:                                         ; preds = %41
  br label %lookup_0.exit

case37.i:                                         ; preds = %41
  br label %lookup_0.exit

case38.i:                                         ; preds = %41
  br label %lookup_0.exit

case39.i:                                         ; preds = %41
  br label %lookup_0.exit

case40.i:                                         ; preds = %41
  br label %lookup_0.exit

case41.i:                                         ; preds = %41
  br label %lookup_0.exit

case42.i:                                         ; preds = %41
  br label %lookup_0.exit

case43.i:                                         ; preds = %41
  br label %lookup_0.exit

case44.i:                                         ; preds = %41
  br label %lookup_0.exit

case45.i:                                         ; preds = %41
  br label %lookup_0.exit

case46.i:                                         ; preds = %41
  br label %lookup_0.exit

case47.i:                                         ; preds = %41
  br label %lookup_0.exit

case48.i:                                         ; preds = %41
  br label %lookup_0.exit

case49.i:                                         ; preds = %41
  br label %lookup_0.exit

case50.i:                                         ; preds = %41
  br label %lookup_0.exit

case51.i:                                         ; preds = %41
  br label %lookup_0.exit

case52.i:                                         ; preds = %41
  br label %lookup_0.exit

case53.i:                                         ; preds = %41
  br label %lookup_0.exit

case54.i:                                         ; preds = %41
  br label %lookup_0.exit

case55.i:                                         ; preds = %41
  br label %lookup_0.exit

case56.i:                                         ; preds = %41
  br label %lookup_0.exit

case57.i:                                         ; preds = %41
  br label %lookup_0.exit

case58.i:                                         ; preds = %41
  br label %lookup_0.exit

case59.i:                                         ; preds = %41
  br label %lookup_0.exit

case60.i:                                         ; preds = %41
  br label %lookup_0.exit

case61.i:                                         ; preds = %41
  br label %lookup_0.exit

case62.i:                                         ; preds = %41
  br label %lookup_0.exit

case63.i:                                         ; preds = %41
  br label %lookup_0.exit

case64.i:                                         ; preds = %41
  br label %lookup_0.exit

case65.i:                                         ; preds = %41
  br label %lookup_0.exit

case66.i:                                         ; preds = %41
  br label %lookup_0.exit

case67.i:                                         ; preds = %41
  br label %lookup_0.exit

case68.i:                                         ; preds = %41
  br label %lookup_0.exit

case69.i:                                         ; preds = %41
  br label %lookup_0.exit

case70.i:                                         ; preds = %41
  br label %lookup_0.exit

case71.i:                                         ; preds = %41
  br label %lookup_0.exit

case72.i:                                         ; preds = %41
  br label %lookup_0.exit

case73.i:                                         ; preds = %41
  br label %lookup_0.exit

case74.i:                                         ; preds = %41
  br label %lookup_0.exit

case75.i:                                         ; preds = %41
  br label %lookup_0.exit

case76.i:                                         ; preds = %41
  br label %lookup_0.exit

case77.i:                                         ; preds = %41
  br label %lookup_0.exit

case78.i:                                         ; preds = %41
  br label %lookup_0.exit

case79.i:                                         ; preds = %41
  br label %lookup_0.exit

case80.i:                                         ; preds = %41
  br label %lookup_0.exit

case81.i:                                         ; preds = %41
  br label %lookup_0.exit

case82.i:                                         ; preds = %41
  br label %lookup_0.exit

case83.i:                                         ; preds = %41
  br label %lookup_0.exit

case84.i:                                         ; preds = %41
  br label %lookup_0.exit

case85.i:                                         ; preds = %41
  br label %lookup_0.exit

case86.i:                                         ; preds = %41
  br label %lookup_0.exit

case87.i:                                         ; preds = %41
  br label %lookup_0.exit

case88.i:                                         ; preds = %41
  br label %lookup_0.exit

case89.i:                                         ; preds = %41
  br label %lookup_0.exit

case90.i:                                         ; preds = %41
  br label %lookup_0.exit

case91.i:                                         ; preds = %41
  br label %lookup_0.exit

case92.i:                                         ; preds = %41
  br label %lookup_0.exit

case93.i:                                         ; preds = %41
  br label %lookup_0.exit

case94.i:                                         ; preds = %41
  br label %lookup_0.exit

case95.i:                                         ; preds = %41
  br label %lookup_0.exit

case96.i:                                         ; preds = %41
  br label %lookup_0.exit

case97.i:                                         ; preds = %41
  br label %lookup_0.exit

case98.i:                                         ; preds = %41
  br label %lookup_0.exit

case99.i:                                         ; preds = %41
  br label %lookup_0.exit

case100.i:                                        ; preds = %41
  br label %lookup_0.exit

case101.i:                                        ; preds = %41
  br label %lookup_0.exit

case102.i:                                        ; preds = %41
  br label %lookup_0.exit

case103.i:                                        ; preds = %41
  br label %lookup_0.exit

case104.i:                                        ; preds = %41
  br label %lookup_0.exit

case105.i:                                        ; preds = %41
  br label %lookup_0.exit

case106.i:                                        ; preds = %41
  br label %lookup_0.exit

case107.i:                                        ; preds = %41
  br label %lookup_0.exit

case108.i:                                        ; preds = %41
  br label %lookup_0.exit

case109.i:                                        ; preds = %41
  br label %lookup_0.exit

case110.i:                                        ; preds = %41
  br label %lookup_0.exit

case111.i:                                        ; preds = %41
  br label %lookup_0.exit

case112.i:                                        ; preds = %41
  br label %lookup_0.exit

case113.i:                                        ; preds = %41
  br label %lookup_0.exit

case114.i:                                        ; preds = %41
  br label %lookup_0.exit

case115.i:                                        ; preds = %41
  br label %lookup_0.exit

case116.i:                                        ; preds = %41
  br label %lookup_0.exit

case117.i:                                        ; preds = %41
  br label %lookup_0.exit

case118.i:                                        ; preds = %41
  br label %lookup_0.exit

case119.i:                                        ; preds = %41
  br label %lookup_0.exit

case120.i:                                        ; preds = %41
  br label %lookup_0.exit

case121.i:                                        ; preds = %41
  br label %lookup_0.exit

case122.i:                                        ; preds = %41
  br label %lookup_0.exit

case123.i:                                        ; preds = %41
  br label %lookup_0.exit

case124.i:                                        ; preds = %41
  br label %lookup_0.exit

case125.i:                                        ; preds = %41
  br label %lookup_0.exit

case126.i:                                        ; preds = %41
  br label %lookup_0.exit

case127.i:                                        ; preds = %41
  br label %lookup_0.exit

lookup_0.exit:                                    ; preds = %case0.i, %case1.i, %case2.i, %case3.i, %case4.i, %case5.i, %case6.i, %case7.i, %case8.i, %case9.i, %case10.i, %case11.i, %case12.i, %case13.i, %case14.i, %case15.i, %case16.i, %case17.i, %case18.i, %case19.i, %case20.i, %case21.i, %case22.i, %case23.i, %case24.i, %case25.i, %case26.i, %case27.i, %case28.i, %case29.i, %case30.i, %case31.i, %case32.i, %case33.i, %case34.i, %case35.i, %case36.i, %case37.i, %case38.i, %case39.i, %case40.i, %case41.i, %case42.i, %case43.i, %case44.i, %case45.i, %case46.i, %case47.i, %case48.i, %case49.i, %case50.i, %case51.i, %case52.i, %case53.i, %case54.i, %case55.i, %case56.i, %case57.i, %case58.i, %case59.i, %case60.i, %case61.i, %case62.i, %case63.i, %case64.i, %case65.i, %case66.i, %case67.i, %case68.i, %case69.i, %case70.i, %case71.i, %case72.i, %case73.i, %case74.i, %case75.i, %case76.i, %case77.i, %case78.i, %case79.i, %case80.i, %case81.i, %case82.i, %case83.i, %case84.i, %case85.i, %case86.i, %case87.i, %case88.i, %case89.i, %case90.i, %case91.i, %case92.i, %case93.i, %case94.i, %case95.i, %case96.i, %case97.i, %case98.i, %case99.i, %case100.i, %case101.i, %case102.i, %case103.i, %case104.i, %case105.i, %case106.i, %case107.i, %case108.i, %case109.i, %case110.i, %case111.i, %case112.i, %case113.i, %case114.i, %case115.i, %case116.i, %case117.i, %case118.i, %case119.i, %case120.i, %case121.i, %case122.i, %case123.i, %case124.i, %case125.i, %case126.i, %case127.i
  %value.i = phi i64 [ -4302098779834749733, %case0.i ], [ -2220562881957146901, %case1.i ], [ -3894436733716799489, %case2.i ], [ 1433843135270481901, %case3.i ], [ 8336770163655280242, %case4.i ], [ -7881803417479397662, %case5.i ], [ -2941004127381733739, %case6.i ], [ 5502495245947142431, %case7.i ], [ -2572398748971526355, %case8.i ], [ -2436064182340099334, %case9.i ], [ 4055606894390288348, %case10.i ], [ 5350621376133947991, %case11.i ], [ 2765702133756617546, %case12.i ], [ -8493270429887581760, %case13.i ], [ -1160504230424452080, %case14.i ], [ 5291143887273806931, %case15.i ], [ -1568241370979223514, %case16.i ], [ -929432383683428675, %case17.i ], [ 3673450842886451206, %case18.i ], [ -2478423014181009900, %case19.i ], [ 3622887472839136718, %case20.i ], [ 1246929574567274891, %case21.i ], [ -1152736325583170325, %case22.i ], [ -3324533442079829058, %case23.i ], [ -8942773601077194801, %case24.i ], [ 2970022284838843195, %case25.i ], [ 7362585856034407022, %case26.i ], [ -4392082282584759128, %case27.i ], [ 5225411942735301638, %case28.i ], [ -5450523663638814413, %case29.i ], [ 3547770832784427690, %case30.i ], [ 362675829607944414, %case31.i ], [ -282257845897087025, %case32.i ], [ 6898188129916750362, %case33.i ], [ 2844895380948538806, %case34.i ], [ 7674606916920705344, %case35.i ], [ 9214633253411488453, %case36.i ], [ 6687772750457788192, %case37.i ], [ -4531365318336869402, %case38.i ], [ 5344895949674194850, %case39.i ], [ -6675284198519149788, %case40.i ], [ 2113974078481014280, %case41.i ], [ 8777568547874204941, %case42.i ], [ -2169500560468987851, %case43.i ], [ 3660690302424466814, %case44.i ], [ -2436525662347849866, %case45.i ], [ -6085909721859794221, %case46.i ], [ 5134827694651168302, %case47.i ], [ 1838281907459330133, %case48.i ], [ 7335560060985733464, %case49.i ], [ -318164364674882796, %case50.i ], [ 8296998437054084336, %case51.i ], [ -2123147046896566209, %case52.i ], [ -2388148047314387342, %case53.i ], [ -5375991149494515187, %case54.i ], [ 499566431179015674, %case55.i ], [ 7372184217170234346, %case56.i ], [ 2897285734473052776, %case57.i ], [ -6620125947798625332, %case58.i ], [ 4279659918279867487, %case59.i ], [ 4800416899009875996, %case60.i ], [ -5931816708875844411, %case61.i ], [ 6774495193030674564, %case62.i ], [ -8398597170076423925, %case63.i ], [ 8529366458340265297, %case64.i ], [ -3398925928391953275, %case65.i ], [ 8418202337400857587, %case66.i ], [ 7020717050005586112, %case67.i ], [ -3761882330889119378, %case68.i ], [ -9149138593070727489, %case69.i ], [ 8772769334003688095, %case70.i ], [ 1743089132010364587, %case71.i ], [ 3963873365795895589, %case72.i ], [ -4042618408496833961, %case73.i ], [ -3755880203185378672, %case74.i ], [ 6190981343618133313, %case75.i ], [ 8640948454356727894, %case76.i ], [ -681029911906337757, %case77.i ], [ 1874492674255557078, %case78.i ], [ -461795147661551007, %case79.i ], [ 5084905583549711826, %case80.i ], [ 4488332001360539422, %case81.i ], [ 3063753645715674379, %case82.i ], [ -8515971706312224628, %case83.i ], [ 2347651011283115188, %case84.i ], [ 7862244273078811554, %case85.i ], [ 4741579133146630013, %case86.i ], [ -814247142782119327, %case87.i ], [ 8169000404195870007, %case88.i ], [ -9066049001627982408, %case89.i ], [ 2833837677914226691, %case90.i ], [ 6041807101686622375, %case91.i ], [ -163413725005337946, %case92.i ], [ -2403499172613604551, %case93.i ], [ -7986631214068388042, %case94.i ], [ 4575667007673887251, %case95.i ], [ -6871223553662405846, %case96.i ], [ -1817709641818812897, %case97.i ], [ 6294355645245719615, %case98.i ], [ -8340629563394885605, %case99.i ], [ 5041782483466037194, %case100.i ], [ -1880483337136747912, %case101.i ], [ 3729356046086683290, %case102.i ], [ -6189662371905423721, %case103.i ], [ 8090085636497697382, %case104.i ], [ 3171146578797943502, %case105.i ], [ 5619658110353354353, %case106.i ], [ -6259471935552714723, %case107.i ], [ -4607290929671566278, %case108.i ], [ -1112309911958824964, %case109.i ], [ -3771184802297902326, %case110.i ], [ -845068846880718549, %case111.i ], [ -4746542111220524153, %case112.i ], [ -992931083124165738, %case113.i ], [ -4793174741866312907, %case114.i ], [ -2974112083446677997, %case115.i ], [ 8503709266395068717, %case116.i ], [ 1000067187423537442, %case117.i ], [ -647344187112945900, %case118.i ], [ -5985590712037982679, %case119.i ], [ -1517593895512126191, %case120.i ], [ 2822446240451570149, %case121.i ], [ 6100083767409290672, %case122.i ], [ -4452813043723281122, %case123.i ], [ -3260576076044403503, %case124.i ], [ -5133358930729682568, %case125.i ], [ -1723256135048217232, %case126.i ], [ 3032053336604930433, %case127.i ]
  %same.i = icmp eq i32 %44, %stable.i
  %fallback.i = extractelement <128 x i64> <i64 -4302098779834749733, i64 -2220562881957146901, i64 -3894436733716799489, i64 1433843135270481901, i64 8336770163655280242, i64 -7881803417479397662, i64 -2941004127381733739, i64 5502495245947142431, i64 -2572398748971526355, i64 -2436064182340099334, i64 4055606894390288348, i64 5350621376133947991, i64 2765702133756617546, i64 -8493270429887581760, i64 -1160504230424452080, i64 5291143887273806931, i64 -1568241370979223514, i64 -929432383683428675, i64 3673450842886451206, i64 -2478423014181009900, i64 3622887472839136718, i64 1246929574567274891, i64 -1152736325583170325, i64 -3324533442079829058, i64 -8942773601077194801, i64 2970022284838843195, i64 7362585856034407022, i64 -4392082282584759128, i64 5225411942735301638, i64 -5450523663638814413, i64 3547770832784427690, i64 362675829607944414, i64 -282257845897087025, i64 6898188129916750362, i64 2844895380948538806, i64 7674606916920705344, i64 9214633253411488453, i64 6687772750457788192, i64 -4531365318336869402, i64 5344895949674194850, i64 -6675284198519149788, i64 2113974078481014280, i64 8777568547874204941, i64 -2169500560468987851, i64 3660690302424466814, i64 -2436525662347849866, i64 -6085909721859794221, i64 5134827694651168302, i64 1838281907459330133, i64 7335560060985733464, i64 -318164364674882796, i64 8296998437054084336, i64 -2123147046896566209, i64 -2388148047314387342, i64 -5375991149494515187, i64 499566431179015674, i64 7372184217170234346, i64 2897285734473052776, i64 -6620125947798625332, i64 4279659918279867487, i64 4800416899009875996, i64 -5931816708875844411, i64 6774495193030674564, i64 -8398597170076423925, i64 8529366458340265297, i64 -3398925928391953275, i64 8418202337400857587, i64 7020717050005586112, i64 -3761882330889119378, i64 -9149138593070727489, i64 8772769334003688095, i64 1743089132010364587, i64 3963873365795895589, i64 -4042618408496833961, i64 -3755880203185378672, i64 6190981343618133313, i64 8640948454356727894, i64 -681029911906337757, i64 1874492674255557078, i64 -461795147661551007, i64 5084905583549711826, i64 4488332001360539422, i64 3063753645715674379, i64 -8515971706312224628, i64 2347651011283115188, i64 7862244273078811554, i64 4741579133146630013, i64 -814247142782119327, i64 8169000404195870007, i64 -9066049001627982408, i64 2833837677914226691, i64 6041807101686622375, i64 -163413725005337946, i64 -2403499172613604551, i64 -7986631214068388042, i64 4575667007673887251, i64 -6871223553662405846, i64 -1817709641818812897, i64 6294355645245719615, i64 -8340629563394885605, i64 5041782483466037194, i64 -1880483337136747912, i64 3729356046086683290, i64 -6189662371905423721, i64 8090085636497697382, i64 3171146578797943502, i64 5619658110353354353, i64 -6259471935552714723, i64 -4607290929671566278, i64 -1112309911958824964, i64 -3771184802297902326, i64 -845068846880718549, i64 -4746542111220524153, i64 -992931083124165738, i64 -4793174741866312907, i64 -2974112083446677997, i64 8503709266395068717, i64 1000067187423537442, i64 -647344187112945900, i64 -5985590712037982679, i64 -1517593895512126191, i64 2822446240451570149, i64 6100083767409290672, i64 -4452813043723281122, i64 -3260576076044403503, i64 -5133358930729682568, i64 -1723256135048217232, i64 3032053336604930433>, i32 %44
  %result.i = select i1 %same.i, i64 %value.i, i64 %fallback.i
  %stable.i1 = freeze i32 %44
  %safe.i2 = and i32 %stable.i1, 127
  switch i32 %safe.i2, label %case0.i134 [
    i32 1, label %case1.i133
    i32 2, label %case2.i132
    i32 3, label %case3.i131
    i32 4, label %case4.i130
    i32 5, label %case5.i129
    i32 6, label %case6.i128
    i32 7, label %case7.i127
    i32 8, label %case8.i126
    i32 9, label %case9.i125
    i32 10, label %case10.i124
    i32 11, label %case11.i123
    i32 12, label %case12.i122
    i32 13, label %case13.i121
    i32 14, label %case14.i120
    i32 15, label %case15.i119
    i32 16, label %case16.i118
    i32 17, label %case17.i117
    i32 18, label %case18.i116
    i32 19, label %case19.i115
    i32 20, label %case20.i114
    i32 21, label %case21.i113
    i32 22, label %case22.i112
    i32 23, label %case23.i111
    i32 24, label %case24.i110
    i32 25, label %case25.i109
    i32 26, label %case26.i108
    i32 27, label %case27.i107
    i32 28, label %case28.i106
    i32 29, label %case29.i105
    i32 30, label %case30.i104
    i32 31, label %case31.i103
    i32 32, label %case32.i102
    i32 33, label %case33.i101
    i32 34, label %case34.i100
    i32 35, label %case35.i99
    i32 36, label %case36.i98
    i32 37, label %case37.i97
    i32 38, label %case38.i96
    i32 39, label %case39.i95
    i32 40, label %case40.i94
    i32 41, label %case41.i93
    i32 42, label %case42.i92
    i32 43, label %case43.i91
    i32 44, label %case44.i90
    i32 45, label %case45.i89
    i32 46, label %case46.i88
    i32 47, label %case47.i87
    i32 48, label %case48.i86
    i32 49, label %case49.i85
    i32 50, label %case50.i84
    i32 51, label %case51.i83
    i32 52, label %case52.i82
    i32 53, label %case53.i81
    i32 54, label %case54.i80
    i32 55, label %case55.i79
    i32 56, label %case56.i78
    i32 57, label %case57.i77
    i32 58, label %case58.i76
    i32 59, label %case59.i75
    i32 60, label %case60.i74
    i32 61, label %case61.i73
    i32 62, label %case62.i72
    i32 63, label %case63.i71
    i32 64, label %case64.i70
    i32 65, label %case65.i69
    i32 66, label %case66.i68
    i32 67, label %case67.i67
    i32 68, label %case68.i66
    i32 69, label %case69.i65
    i32 70, label %case70.i64
    i32 71, label %case71.i63
    i32 72, label %case72.i62
    i32 73, label %case73.i61
    i32 74, label %case74.i60
    i32 75, label %case75.i59
    i32 76, label %case76.i58
    i32 77, label %case77.i57
    i32 78, label %case78.i56
    i32 79, label %case79.i55
    i32 80, label %case80.i54
    i32 81, label %case81.i53
    i32 82, label %case82.i52
    i32 83, label %case83.i51
    i32 84, label %case84.i50
    i32 85, label %case85.i49
    i32 86, label %case86.i48
    i32 87, label %case87.i47
    i32 88, label %case88.i46
    i32 89, label %case89.i45
    i32 90, label %case90.i44
    i32 91, label %case91.i43
    i32 92, label %case92.i42
    i32 93, label %case93.i41
    i32 94, label %case94.i40
    i32 95, label %case95.i39
    i32 96, label %case96.i38
    i32 97, label %case97.i37
    i32 98, label %case98.i36
    i32 99, label %case99.i35
    i32 100, label %case100.i34
    i32 101, label %case101.i33
    i32 102, label %case102.i32
    i32 103, label %case103.i31
    i32 104, label %case104.i30
    i32 105, label %case105.i29
    i32 106, label %case106.i28
    i32 107, label %case107.i27
    i32 108, label %case108.i26
    i32 109, label %case109.i25
    i32 110, label %case110.i24
    i32 111, label %case111.i23
    i32 112, label %case112.i22
    i32 113, label %case113.i21
    i32 114, label %case114.i20
    i32 115, label %case115.i19
    i32 116, label %case116.i18
    i32 117, label %case117.i17
    i32 118, label %case118.i16
    i32 119, label %case119.i15
    i32 120, label %case120.i14
    i32 121, label %case121.i13
    i32 122, label %case122.i12
    i32 123, label %case123.i11
    i32 124, label %case124.i10
    i32 125, label %case125.i9
    i32 126, label %case126.i8
    i32 127, label %case127.i3
  ]

case0.i134:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case1.i133:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case2.i132:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case3.i131:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case4.i130:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case5.i129:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case6.i128:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case7.i127:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case8.i126:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case9.i125:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case10.i124:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case11.i123:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case12.i122:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case13.i121:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case14.i120:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case15.i119:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case16.i118:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case17.i117:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case18.i116:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case19.i115:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case20.i114:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case21.i113:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case22.i112:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case23.i111:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case24.i110:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case25.i109:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case26.i108:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case27.i107:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case28.i106:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case29.i105:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case30.i104:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case31.i103:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case32.i102:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case33.i101:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case34.i100:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case35.i99:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case36.i98:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case37.i97:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case38.i96:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case39.i95:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case40.i94:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case41.i93:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case42.i92:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case43.i91:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case44.i90:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case45.i89:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case46.i88:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case47.i87:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case48.i86:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case49.i85:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case50.i84:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case51.i83:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case52.i82:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case53.i81:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case54.i80:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case55.i79:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case56.i78:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case57.i77:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case58.i76:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case59.i75:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case60.i74:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case61.i73:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case62.i72:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case63.i71:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case64.i70:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case65.i69:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case66.i68:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case67.i67:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case68.i66:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case69.i65:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case70.i64:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case71.i63:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case72.i62:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case73.i61:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case74.i60:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case75.i59:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case76.i58:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case77.i57:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case78.i56:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case79.i55:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case80.i54:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case81.i53:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case82.i52:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case83.i51:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case84.i50:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case85.i49:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case86.i48:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case87.i47:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case88.i46:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case89.i45:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case90.i44:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case91.i43:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case92.i42:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case93.i41:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case94.i40:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case95.i39:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case96.i38:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case97.i37:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case98.i36:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case99.i35:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case100.i34:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case101.i33:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case102.i32:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case103.i31:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case104.i30:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case105.i29:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case106.i28:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case107.i27:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case108.i26:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case109.i25:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case110.i24:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case111.i23:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case112.i22:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case113.i21:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case114.i20:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case115.i19:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case116.i18:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case117.i17:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case118.i16:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case119.i15:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case120.i14:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case121.i13:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case122.i12:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case123.i11:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case124.i10:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case125.i9:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case126.i8:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case127.i3:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

lookup_1.exit:                                    ; preds = %case0.i134, %case1.i133, %case2.i132, %case3.i131, %case4.i130, %case5.i129, %case6.i128, %case7.i127, %case8.i126, %case9.i125, %case10.i124, %case11.i123, %case12.i122, %case13.i121, %case14.i120, %case15.i119, %case16.i118, %case17.i117, %case18.i116, %case19.i115, %case20.i114, %case21.i113, %case22.i112, %case23.i111, %case24.i110, %case25.i109, %case26.i108, %case27.i107, %case28.i106, %case29.i105, %case30.i104, %case31.i103, %case32.i102, %case33.i101, %case34.i100, %case35.i99, %case36.i98, %case37.i97, %case38.i96, %case39.i95, %case40.i94, %case41.i93, %case42.i92, %case43.i91, %case44.i90, %case45.i89, %case46.i88, %case47.i87, %case48.i86, %case49.i85, %case50.i84, %case51.i83, %case52.i82, %case53.i81, %case54.i80, %case55.i79, %case56.i78, %case57.i77, %case58.i76, %case59.i75, %case60.i74, %case61.i73, %case62.i72, %case63.i71, %case64.i70, %case65.i69, %case66.i68, %case67.i67, %case68.i66, %case69.i65, %case70.i64, %case71.i63, %case72.i62, %case73.i61, %case74.i60, %case75.i59, %case76.i58, %case77.i57, %case78.i56, %case79.i55, %case80.i54, %case81.i53, %case82.i52, %case83.i51, %case84.i50, %case85.i49, %case86.i48, %case87.i47, %case88.i46, %case89.i45, %case90.i44, %case91.i43, %case92.i42, %case93.i41, %case94.i40, %case95.i39, %case96.i38, %case97.i37, %case98.i36, %case99.i35, %case100.i34, %case101.i33, %case102.i32, %case103.i31, %case104.i30, %case105.i29, %case106.i28, %case107.i27, %case108.i26, %case109.i25, %case110.i24, %case111.i23, %case112.i22, %case113.i21, %case114.i20, %case115.i19, %case116.i18, %case117.i17, %case118.i16, %case119.i15, %case120.i14, %case121.i13, %case122.i12, %case123.i11, %case124.i10, %case125.i9, %case126.i8, %case127.i3
  %value.i4 = phi i64 [ 7715946029497977153, %case0.i134 ], [ 7756605422741824046, %case1.i133 ], [ 6914152272366242186, %case2.i132 ], [ 6619468546868266945, %case3.i131 ], [ 8635048048508886888, %case4.i130 ], [ -8393880875905280995, %case5.i129 ], [ -6787559214576350429, %case6.i128 ], [ -2217171985210471049, %case7.i127 ], [ 3604675824303396708, %case8.i126 ], [ -3512584283167155441, %case9.i125 ], [ 2156514823987992107, %case10.i124 ], [ 4907671418510825112, %case11.i123 ], [ 8839569603083604159, %case12.i122 ], [ -6042468303600945730, %case13.i121 ], [ -3015502839406131913, %case14.i120 ], [ 7156044269520408728, %case15.i119 ], [ -1508413522767866676, %case16.i118 ], [ 1604089566654333, %case17.i117 ], [ 7878720862229920401, %case18.i116 ], [ -3403495536095635901, %case19.i115 ], [ 4419032860939710275, %case20.i114 ], [ 8309667868945161700, %case21.i113 ], [ 8127699344777264475, %case22.i112 ], [ 3172741449153456871, %case23.i111 ], [ -7819243355710516001, %case24.i110 ], [ -1517632861945409470, %case25.i109 ], [ -4231347299287732713, %case26.i108 ], [ 7537847041743724411, %case27.i107 ], [ -8574195954494672605, %case28.i106 ], [ 8276179821638363100, %case29.i105 ], [ -2521175872576789404, %case30.i104 ], [ -6787734742961095628, %case31.i103 ], [ 3141466977451366136, %case32.i102 ], [ 6496874765145226399, %case33.i101 ], [ 1397096103115942590, %case34.i100 ], [ -5230410147232611976, %case35.i99 ], [ -8713684776993538784, %case36.i98 ], [ 4679852336830987527, %case37.i97 ], [ -4552607469369903036, %case38.i96 ], [ 5281118663193865049, %case39.i95 ], [ -7809504173095293835, %case40.i94 ], [ -3494378936840174703, %case41.i93 ], [ -8283887544681711630, %case42.i92 ], [ -1982062835990977551, %case43.i91 ], [ 7876639392340321016, %case44.i90 ], [ -776633854295803046, %case45.i89 ], [ -4449956841746897829, %case46.i88 ], [ 6252822398696073730, %case47.i87 ], [ 3653197155308211081, %case48.i86 ], [ 4184123583517128355, %case49.i85 ], [ 2710647065067127392, %case50.i84 ], [ 1364275973376659154, %case51.i83 ], [ 5735683338271654244, %case52.i82 ], [ 4788098542079513072, %case53.i81 ], [ 2523649311648287430, %case54.i80 ], [ 6226703245439355973, %case55.i79 ], [ 4039168641094241130, %case56.i78 ], [ -4735310071515049160, %case57.i77 ], [ -7718157997211796903, %case58.i76 ], [ -7630434519632171097, %case59.i75 ], [ 6401440615517674288, %case60.i74 ], [ -1540227857295215434, %case61.i73 ], [ -6492234107044435804, %case62.i72 ], [ 1076237601080914835, %case63.i71 ], [ 371066729028084812, %case64.i70 ], [ 2047781579520568252, %case65.i69 ], [ 8981190644621376403, %case66.i68 ], [ -1270115072684319195, %case67.i67 ], [ -8955474670546817597, %case68.i66 ], [ 1697060390969647966, %case69.i65 ], [ -1880780507307867236, %case70.i64 ], [ -5363681305219004548, %case71.i63 ], [ -1084662620876922617, %case72.i62 ], [ 8607018531237843404, %case73.i61 ], [ -4794156784727077306, %case74.i60 ], [ 6393061779462666445, %case75.i59 ], [ 5666196083048816522, %case76.i58 ], [ 6136724780979887393, %case77.i57 ], [ 5191002144171421573, %case78.i56 ], [ 3531887758758133993, %case79.i55 ], [ -4418833195103958582, %case80.i54 ], [ 399445177739474421, %case81.i53 ], [ -1947046474972200432, %case82.i52 ], [ -3252035828561191092, %case83.i51 ], [ 8996305336856613012, %case84.i50 ], [ 6917241246617268645, %case85.i49 ], [ 7998926962047337531, %case86.i48 ], [ -8446620120025011510, %case87.i47 ], [ -5280387490099738130, %case88.i46 ], [ 564548736115642456, %case89.i45 ], [ -8404415521806172981, %case90.i44 ], [ 3717577419720655258, %case91.i43 ], [ -5089905126141548364, %case92.i42 ], [ 7521440301808993825, %case93.i41 ], [ -8814061795361718509, %case94.i40 ], [ -2714087517662472993, %case95.i39 ], [ 2071800237030200399, %case96.i38 ], [ -4264588051788821739, %case97.i37 ], [ 5286102316725614445, %case98.i36 ], [ 699974702888830978, %case99.i35 ], [ -6198501953651059440, %case100.i34 ], [ 5478601957838938672, %case101.i33 ], [ -8826379284296529914, %case102.i32 ], [ 4117946310065826061, %case103.i31 ], [ 2713743964583775612, %case104.i30 ], [ 5235599403462674304, %case105.i29 ], [ -4570201113732268168, %case106.i28 ], [ 888845016463753946, %case107.i27 ], [ -4356919662415120719, %case108.i26 ], [ 2273280100835896876, %case109.i25 ], [ -3991362807574606833, %case110.i24 ], [ -4452897474114816089, %case111.i23 ], [ -3778735031010307814, %case112.i22 ], [ 4461224383070578004, %case113.i21 ], [ -2508687673012358854, %case114.i20 ], [ 519458947206652749, %case115.i19 ], [ -8279674986227810403, %case116.i18 ], [ 4384594615491221824, %case117.i17 ], [ 2225088360167913052, %case118.i16 ], [ -7273095038674136419, %case119.i15 ], [ -3679179631877543767, %case120.i14 ], [ 5569617102229150198, %case121.i13 ], [ -8233578011895567121, %case122.i12 ], [ -826440576334536596, %case123.i11 ], [ -4492853642420687956, %case124.i10 ], [ -2325365741171985389, %case125.i9 ], [ 7789395919978777827, %case126.i8 ], [ -2973241909731272914, %case127.i3 ]
  %same.i5 = icmp eq i32 %44, %stable.i1
  %fallback.i6 = extractelement <128 x i64> <i64 7715946029497977153, i64 7756605422741824046, i64 6914152272366242186, i64 6619468546868266945, i64 8635048048508886888, i64 -8393880875905280995, i64 -6787559214576350429, i64 -2217171985210471049, i64 3604675824303396708, i64 -3512584283167155441, i64 2156514823987992107, i64 4907671418510825112, i64 8839569603083604159, i64 -6042468303600945730, i64 -3015502839406131913, i64 7156044269520408728, i64 -1508413522767866676, i64 1604089566654333, i64 7878720862229920401, i64 -3403495536095635901, i64 4419032860939710275, i64 8309667868945161700, i64 8127699344777264475, i64 3172741449153456871, i64 -7819243355710516001, i64 -1517632861945409470, i64 -4231347299287732713, i64 7537847041743724411, i64 -8574195954494672605, i64 8276179821638363100, i64 -2521175872576789404, i64 -6787734742961095628, i64 3141466977451366136, i64 6496874765145226399, i64 1397096103115942590, i64 -5230410147232611976, i64 -8713684776993538784, i64 4679852336830987527, i64 -4552607469369903036, i64 5281118663193865049, i64 -7809504173095293835, i64 -3494378936840174703, i64 -8283887544681711630, i64 -1982062835990977551, i64 7876639392340321016, i64 -776633854295803046, i64 -4449956841746897829, i64 6252822398696073730, i64 3653197155308211081, i64 4184123583517128355, i64 2710647065067127392, i64 1364275973376659154, i64 5735683338271654244, i64 4788098542079513072, i64 2523649311648287430, i64 6226703245439355973, i64 4039168641094241130, i64 -4735310071515049160, i64 -7718157997211796903, i64 -7630434519632171097, i64 6401440615517674288, i64 -1540227857295215434, i64 -6492234107044435804, i64 1076237601080914835, i64 371066729028084812, i64 2047781579520568252, i64 8981190644621376403, i64 -1270115072684319195, i64 -8955474670546817597, i64 1697060390969647966, i64 -1880780507307867236, i64 -5363681305219004548, i64 -1084662620876922617, i64 8607018531237843404, i64 -4794156784727077306, i64 6393061779462666445, i64 5666196083048816522, i64 6136724780979887393, i64 5191002144171421573, i64 3531887758758133993, i64 -4418833195103958582, i64 399445177739474421, i64 -1947046474972200432, i64 -3252035828561191092, i64 8996305336856613012, i64 6917241246617268645, i64 7998926962047337531, i64 -8446620120025011510, i64 -5280387490099738130, i64 564548736115642456, i64 -8404415521806172981, i64 3717577419720655258, i64 -5089905126141548364, i64 7521440301808993825, i64 -8814061795361718509, i64 -2714087517662472993, i64 2071800237030200399, i64 -4264588051788821739, i64 5286102316725614445, i64 699974702888830978, i64 -6198501953651059440, i64 5478601957838938672, i64 -8826379284296529914, i64 4117946310065826061, i64 2713743964583775612, i64 5235599403462674304, i64 -4570201113732268168, i64 888845016463753946, i64 -4356919662415120719, i64 2273280100835896876, i64 -3991362807574606833, i64 -4452897474114816089, i64 -3778735031010307814, i64 4461224383070578004, i64 -2508687673012358854, i64 519458947206652749, i64 -8279674986227810403, i64 4384594615491221824, i64 2225088360167913052, i64 -7273095038674136419, i64 -3679179631877543767, i64 5569617102229150198, i64 -8233578011895567121, i64 -826440576334536596, i64 -4492853642420687956, i64 -2325365741171985389, i64 7789395919978777827, i64 -2973241909731272914>, i32 %44
  %result.i7 = select i1 %same.i5, i64 %value.i4, i64 %fallback.i6
  %45 = icmp slt i8 %9, 0
  %46 = select i1 %45, i64 %result.i7, i64 %result.i
  %47 = select i1 %42, i64 %46, i64 %39
  br label %48

48:                                               ; preds = %lookup_1.exit, %4
  %49 = phi i64 [ %47, %lookup_1.exit ], [ %39, %4 ]
  ret i64 %49
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
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
  br label %138

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
  br label %138

79:                                               ; preds = %43
  %80 = icmp eq i64 %1, 0
  br i1 %80, label %123, label %81

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
  br i1 %115, label %116, label %138

116:                                              ; preds = %81
  %117 = icmp eq i64 %105, 2267503259
  %118 = and i8 %84, 127
  %119 = zext nneg i8 %118 to i32
  %stable.i = freeze i32 %119
  %safe.i = and i32 %stable.i, 127
  switch i32 %safe.i, label %case0.i [
    i32 1, label %case1.i
    i32 2, label %case2.i
    i32 3, label %case3.i
    i32 4, label %case4.i
    i32 5, label %case5.i
    i32 6, label %case6.i
    i32 7, label %case7.i
    i32 8, label %case8.i
    i32 9, label %case9.i
    i32 10, label %case10.i
    i32 11, label %case11.i
    i32 12, label %case12.i
    i32 13, label %case13.i
    i32 14, label %case14.i
    i32 15, label %case15.i
    i32 16, label %case16.i
    i32 17, label %case17.i
    i32 18, label %case18.i
    i32 19, label %case19.i
    i32 20, label %case20.i
    i32 21, label %case21.i
    i32 22, label %case22.i
    i32 23, label %case23.i
    i32 24, label %case24.i
    i32 25, label %case25.i
    i32 26, label %case26.i
    i32 27, label %case27.i
    i32 28, label %case28.i
    i32 29, label %case29.i
    i32 30, label %case30.i
    i32 31, label %case31.i
    i32 32, label %case32.i
    i32 33, label %case33.i
    i32 34, label %case34.i
    i32 35, label %case35.i
    i32 36, label %case36.i
    i32 37, label %case37.i
    i32 38, label %case38.i
    i32 39, label %case39.i
    i32 40, label %case40.i
    i32 41, label %case41.i
    i32 42, label %case42.i
    i32 43, label %case43.i
    i32 44, label %case44.i
    i32 45, label %case45.i
    i32 46, label %case46.i
    i32 47, label %case47.i
    i32 48, label %case48.i
    i32 49, label %case49.i
    i32 50, label %case50.i
    i32 51, label %case51.i
    i32 52, label %case52.i
    i32 53, label %case53.i
    i32 54, label %case54.i
    i32 55, label %case55.i
    i32 56, label %case56.i
    i32 57, label %case57.i
    i32 58, label %case58.i
    i32 59, label %case59.i
    i32 60, label %case60.i
    i32 61, label %case61.i
    i32 62, label %case62.i
    i32 63, label %case63.i
    i32 64, label %case64.i
    i32 65, label %case65.i
    i32 66, label %case66.i
    i32 67, label %case67.i
    i32 68, label %case68.i
    i32 69, label %case69.i
    i32 70, label %case70.i
    i32 71, label %case71.i
    i32 72, label %case72.i
    i32 73, label %case73.i
    i32 74, label %case74.i
    i32 75, label %case75.i
    i32 76, label %case76.i
    i32 77, label %case77.i
    i32 78, label %case78.i
    i32 79, label %case79.i
    i32 80, label %case80.i
    i32 81, label %case81.i
    i32 82, label %case82.i
    i32 83, label %case83.i
    i32 84, label %case84.i
    i32 85, label %case85.i
    i32 86, label %case86.i
    i32 87, label %case87.i
    i32 88, label %case88.i
    i32 89, label %case89.i
    i32 90, label %case90.i
    i32 91, label %case91.i
    i32 92, label %case92.i
    i32 93, label %case93.i
    i32 94, label %case94.i
    i32 95, label %case95.i
    i32 96, label %case96.i
    i32 97, label %case97.i
    i32 98, label %case98.i
    i32 99, label %case99.i
    i32 100, label %case100.i
    i32 101, label %case101.i
    i32 102, label %case102.i
    i32 103, label %case103.i
    i32 104, label %case104.i
    i32 105, label %case105.i
    i32 106, label %case106.i
    i32 107, label %case107.i
    i32 108, label %case108.i
    i32 109, label %case109.i
    i32 110, label %case110.i
    i32 111, label %case111.i
    i32 112, label %case112.i
    i32 113, label %case113.i
    i32 114, label %case114.i
    i32 115, label %case115.i
    i32 116, label %case116.i
    i32 117, label %case117.i
    i32 118, label %case118.i
    i32 119, label %case119.i
    i32 120, label %case120.i
    i32 121, label %case121.i
    i32 122, label %case122.i
    i32 123, label %case123.i
    i32 124, label %case124.i
    i32 125, label %case125.i
    i32 126, label %case126.i
    i32 127, label %case127.i
  ]

case0.i:                                          ; preds = %116
  br label %lookup_0.exit

case1.i:                                          ; preds = %116
  br label %lookup_0.exit

case2.i:                                          ; preds = %116
  br label %lookup_0.exit

case3.i:                                          ; preds = %116
  br label %lookup_0.exit

case4.i:                                          ; preds = %116
  br label %lookup_0.exit

case5.i:                                          ; preds = %116
  br label %lookup_0.exit

case6.i:                                          ; preds = %116
  br label %lookup_0.exit

case7.i:                                          ; preds = %116
  br label %lookup_0.exit

case8.i:                                          ; preds = %116
  br label %lookup_0.exit

case9.i:                                          ; preds = %116
  br label %lookup_0.exit

case10.i:                                         ; preds = %116
  br label %lookup_0.exit

case11.i:                                         ; preds = %116
  br label %lookup_0.exit

case12.i:                                         ; preds = %116
  br label %lookup_0.exit

case13.i:                                         ; preds = %116
  br label %lookup_0.exit

case14.i:                                         ; preds = %116
  br label %lookup_0.exit

case15.i:                                         ; preds = %116
  br label %lookup_0.exit

case16.i:                                         ; preds = %116
  br label %lookup_0.exit

case17.i:                                         ; preds = %116
  br label %lookup_0.exit

case18.i:                                         ; preds = %116
  br label %lookup_0.exit

case19.i:                                         ; preds = %116
  br label %lookup_0.exit

case20.i:                                         ; preds = %116
  br label %lookup_0.exit

case21.i:                                         ; preds = %116
  br label %lookup_0.exit

case22.i:                                         ; preds = %116
  br label %lookup_0.exit

case23.i:                                         ; preds = %116
  br label %lookup_0.exit

case24.i:                                         ; preds = %116
  br label %lookup_0.exit

case25.i:                                         ; preds = %116
  br label %lookup_0.exit

case26.i:                                         ; preds = %116
  br label %lookup_0.exit

case27.i:                                         ; preds = %116
  br label %lookup_0.exit

case28.i:                                         ; preds = %116
  br label %lookup_0.exit

case29.i:                                         ; preds = %116
  br label %lookup_0.exit

case30.i:                                         ; preds = %116
  br label %lookup_0.exit

case31.i:                                         ; preds = %116
  br label %lookup_0.exit

case32.i:                                         ; preds = %116
  br label %lookup_0.exit

case33.i:                                         ; preds = %116
  br label %lookup_0.exit

case34.i:                                         ; preds = %116
  br label %lookup_0.exit

case35.i:                                         ; preds = %116
  br label %lookup_0.exit

case36.i:                                         ; preds = %116
  br label %lookup_0.exit

case37.i:                                         ; preds = %116
  br label %lookup_0.exit

case38.i:                                         ; preds = %116
  br label %lookup_0.exit

case39.i:                                         ; preds = %116
  br label %lookup_0.exit

case40.i:                                         ; preds = %116
  br label %lookup_0.exit

case41.i:                                         ; preds = %116
  br label %lookup_0.exit

case42.i:                                         ; preds = %116
  br label %lookup_0.exit

case43.i:                                         ; preds = %116
  br label %lookup_0.exit

case44.i:                                         ; preds = %116
  br label %lookup_0.exit

case45.i:                                         ; preds = %116
  br label %lookup_0.exit

case46.i:                                         ; preds = %116
  br label %lookup_0.exit

case47.i:                                         ; preds = %116
  br label %lookup_0.exit

case48.i:                                         ; preds = %116
  br label %lookup_0.exit

case49.i:                                         ; preds = %116
  br label %lookup_0.exit

case50.i:                                         ; preds = %116
  br label %lookup_0.exit

case51.i:                                         ; preds = %116
  br label %lookup_0.exit

case52.i:                                         ; preds = %116
  br label %lookup_0.exit

case53.i:                                         ; preds = %116
  br label %lookup_0.exit

case54.i:                                         ; preds = %116
  br label %lookup_0.exit

case55.i:                                         ; preds = %116
  br label %lookup_0.exit

case56.i:                                         ; preds = %116
  br label %lookup_0.exit

case57.i:                                         ; preds = %116
  br label %lookup_0.exit

case58.i:                                         ; preds = %116
  br label %lookup_0.exit

case59.i:                                         ; preds = %116
  br label %lookup_0.exit

case60.i:                                         ; preds = %116
  br label %lookup_0.exit

case61.i:                                         ; preds = %116
  br label %lookup_0.exit

case62.i:                                         ; preds = %116
  br label %lookup_0.exit

case63.i:                                         ; preds = %116
  br label %lookup_0.exit

case64.i:                                         ; preds = %116
  br label %lookup_0.exit

case65.i:                                         ; preds = %116
  br label %lookup_0.exit

case66.i:                                         ; preds = %116
  br label %lookup_0.exit

case67.i:                                         ; preds = %116
  br label %lookup_0.exit

case68.i:                                         ; preds = %116
  br label %lookup_0.exit

case69.i:                                         ; preds = %116
  br label %lookup_0.exit

case70.i:                                         ; preds = %116
  br label %lookup_0.exit

case71.i:                                         ; preds = %116
  br label %lookup_0.exit

case72.i:                                         ; preds = %116
  br label %lookup_0.exit

case73.i:                                         ; preds = %116
  br label %lookup_0.exit

case74.i:                                         ; preds = %116
  br label %lookup_0.exit

case75.i:                                         ; preds = %116
  br label %lookup_0.exit

case76.i:                                         ; preds = %116
  br label %lookup_0.exit

case77.i:                                         ; preds = %116
  br label %lookup_0.exit

case78.i:                                         ; preds = %116
  br label %lookup_0.exit

case79.i:                                         ; preds = %116
  br label %lookup_0.exit

case80.i:                                         ; preds = %116
  br label %lookup_0.exit

case81.i:                                         ; preds = %116
  br label %lookup_0.exit

case82.i:                                         ; preds = %116
  br label %lookup_0.exit

case83.i:                                         ; preds = %116
  br label %lookup_0.exit

case84.i:                                         ; preds = %116
  br label %lookup_0.exit

case85.i:                                         ; preds = %116
  br label %lookup_0.exit

case86.i:                                         ; preds = %116
  br label %lookup_0.exit

case87.i:                                         ; preds = %116
  br label %lookup_0.exit

case88.i:                                         ; preds = %116
  br label %lookup_0.exit

case89.i:                                         ; preds = %116
  br label %lookup_0.exit

case90.i:                                         ; preds = %116
  br label %lookup_0.exit

case91.i:                                         ; preds = %116
  br label %lookup_0.exit

case92.i:                                         ; preds = %116
  br label %lookup_0.exit

case93.i:                                         ; preds = %116
  br label %lookup_0.exit

case94.i:                                         ; preds = %116
  br label %lookup_0.exit

case95.i:                                         ; preds = %116
  br label %lookup_0.exit

case96.i:                                         ; preds = %116
  br label %lookup_0.exit

case97.i:                                         ; preds = %116
  br label %lookup_0.exit

case98.i:                                         ; preds = %116
  br label %lookup_0.exit

case99.i:                                         ; preds = %116
  br label %lookup_0.exit

case100.i:                                        ; preds = %116
  br label %lookup_0.exit

case101.i:                                        ; preds = %116
  br label %lookup_0.exit

case102.i:                                        ; preds = %116
  br label %lookup_0.exit

case103.i:                                        ; preds = %116
  br label %lookup_0.exit

case104.i:                                        ; preds = %116
  br label %lookup_0.exit

case105.i:                                        ; preds = %116
  br label %lookup_0.exit

case106.i:                                        ; preds = %116
  br label %lookup_0.exit

case107.i:                                        ; preds = %116
  br label %lookup_0.exit

case108.i:                                        ; preds = %116
  br label %lookup_0.exit

case109.i:                                        ; preds = %116
  br label %lookup_0.exit

case110.i:                                        ; preds = %116
  br label %lookup_0.exit

case111.i:                                        ; preds = %116
  br label %lookup_0.exit

case112.i:                                        ; preds = %116
  br label %lookup_0.exit

case113.i:                                        ; preds = %116
  br label %lookup_0.exit

case114.i:                                        ; preds = %116
  br label %lookup_0.exit

case115.i:                                        ; preds = %116
  br label %lookup_0.exit

case116.i:                                        ; preds = %116
  br label %lookup_0.exit

case117.i:                                        ; preds = %116
  br label %lookup_0.exit

case118.i:                                        ; preds = %116
  br label %lookup_0.exit

case119.i:                                        ; preds = %116
  br label %lookup_0.exit

case120.i:                                        ; preds = %116
  br label %lookup_0.exit

case121.i:                                        ; preds = %116
  br label %lookup_0.exit

case122.i:                                        ; preds = %116
  br label %lookup_0.exit

case123.i:                                        ; preds = %116
  br label %lookup_0.exit

case124.i:                                        ; preds = %116
  br label %lookup_0.exit

case125.i:                                        ; preds = %116
  br label %lookup_0.exit

case126.i:                                        ; preds = %116
  br label %lookup_0.exit

case127.i:                                        ; preds = %116
  br label %lookup_0.exit

lookup_0.exit:                                    ; preds = %case0.i, %case1.i, %case2.i, %case3.i, %case4.i, %case5.i, %case6.i, %case7.i, %case8.i, %case9.i, %case10.i, %case11.i, %case12.i, %case13.i, %case14.i, %case15.i, %case16.i, %case17.i, %case18.i, %case19.i, %case20.i, %case21.i, %case22.i, %case23.i, %case24.i, %case25.i, %case26.i, %case27.i, %case28.i, %case29.i, %case30.i, %case31.i, %case32.i, %case33.i, %case34.i, %case35.i, %case36.i, %case37.i, %case38.i, %case39.i, %case40.i, %case41.i, %case42.i, %case43.i, %case44.i, %case45.i, %case46.i, %case47.i, %case48.i, %case49.i, %case50.i, %case51.i, %case52.i, %case53.i, %case54.i, %case55.i, %case56.i, %case57.i, %case58.i, %case59.i, %case60.i, %case61.i, %case62.i, %case63.i, %case64.i, %case65.i, %case66.i, %case67.i, %case68.i, %case69.i, %case70.i, %case71.i, %case72.i, %case73.i, %case74.i, %case75.i, %case76.i, %case77.i, %case78.i, %case79.i, %case80.i, %case81.i, %case82.i, %case83.i, %case84.i, %case85.i, %case86.i, %case87.i, %case88.i, %case89.i, %case90.i, %case91.i, %case92.i, %case93.i, %case94.i, %case95.i, %case96.i, %case97.i, %case98.i, %case99.i, %case100.i, %case101.i, %case102.i, %case103.i, %case104.i, %case105.i, %case106.i, %case107.i, %case108.i, %case109.i, %case110.i, %case111.i, %case112.i, %case113.i, %case114.i, %case115.i, %case116.i, %case117.i, %case118.i, %case119.i, %case120.i, %case121.i, %case122.i, %case123.i, %case124.i, %case125.i, %case126.i, %case127.i
  %value.i = phi i64 [ -4302098779834749733, %case0.i ], [ -2220562881957146901, %case1.i ], [ -3894436733716799489, %case2.i ], [ 1433843135270481901, %case3.i ], [ 8336770163655280242, %case4.i ], [ -7881803417479397662, %case5.i ], [ -2941004127381733739, %case6.i ], [ 5502495245947142431, %case7.i ], [ -2572398748971526355, %case8.i ], [ -2436064182340099334, %case9.i ], [ 4055606894390288348, %case10.i ], [ 5350621376133947991, %case11.i ], [ 2765702133756617546, %case12.i ], [ -8493270429887581760, %case13.i ], [ -1160504230424452080, %case14.i ], [ 5291143887273806931, %case15.i ], [ -1568241370979223514, %case16.i ], [ -929432383683428675, %case17.i ], [ 3673450842886451206, %case18.i ], [ -2478423014181009900, %case19.i ], [ 3622887472839136718, %case20.i ], [ 1246929574567274891, %case21.i ], [ -1152736325583170325, %case22.i ], [ -3324533442079829058, %case23.i ], [ -8942773601077194801, %case24.i ], [ 2970022284838843195, %case25.i ], [ 7362585856034407022, %case26.i ], [ -4392082282584759128, %case27.i ], [ 5225411942735301638, %case28.i ], [ -5450523663638814413, %case29.i ], [ 3547770832784427690, %case30.i ], [ 362675829607944414, %case31.i ], [ -282257845897087025, %case32.i ], [ 6898188129916750362, %case33.i ], [ 2844895380948538806, %case34.i ], [ 7674606916920705344, %case35.i ], [ 9214633253411488453, %case36.i ], [ 6687772750457788192, %case37.i ], [ -4531365318336869402, %case38.i ], [ 5344895949674194850, %case39.i ], [ -6675284198519149788, %case40.i ], [ 2113974078481014280, %case41.i ], [ 8777568547874204941, %case42.i ], [ -2169500560468987851, %case43.i ], [ 3660690302424466814, %case44.i ], [ -2436525662347849866, %case45.i ], [ -6085909721859794221, %case46.i ], [ 5134827694651168302, %case47.i ], [ 1838281907459330133, %case48.i ], [ 7335560060985733464, %case49.i ], [ -318164364674882796, %case50.i ], [ 8296998437054084336, %case51.i ], [ -2123147046896566209, %case52.i ], [ -2388148047314387342, %case53.i ], [ -5375991149494515187, %case54.i ], [ 499566431179015674, %case55.i ], [ 7372184217170234346, %case56.i ], [ 2897285734473052776, %case57.i ], [ -6620125947798625332, %case58.i ], [ 4279659918279867487, %case59.i ], [ 4800416899009875996, %case60.i ], [ -5931816708875844411, %case61.i ], [ 6774495193030674564, %case62.i ], [ -8398597170076423925, %case63.i ], [ 8529366458340265297, %case64.i ], [ -3398925928391953275, %case65.i ], [ 8418202337400857587, %case66.i ], [ 7020717050005586112, %case67.i ], [ -3761882330889119378, %case68.i ], [ -9149138593070727489, %case69.i ], [ 8772769334003688095, %case70.i ], [ 1743089132010364587, %case71.i ], [ 3963873365795895589, %case72.i ], [ -4042618408496833961, %case73.i ], [ -3755880203185378672, %case74.i ], [ 6190981343618133313, %case75.i ], [ 8640948454356727894, %case76.i ], [ -681029911906337757, %case77.i ], [ 1874492674255557078, %case78.i ], [ -461795147661551007, %case79.i ], [ 5084905583549711826, %case80.i ], [ 4488332001360539422, %case81.i ], [ 3063753645715674379, %case82.i ], [ -8515971706312224628, %case83.i ], [ 2347651011283115188, %case84.i ], [ 7862244273078811554, %case85.i ], [ 4741579133146630013, %case86.i ], [ -814247142782119327, %case87.i ], [ 8169000404195870007, %case88.i ], [ -9066049001627982408, %case89.i ], [ 2833837677914226691, %case90.i ], [ 6041807101686622375, %case91.i ], [ -163413725005337946, %case92.i ], [ -2403499172613604551, %case93.i ], [ -7986631214068388042, %case94.i ], [ 4575667007673887251, %case95.i ], [ -6871223553662405846, %case96.i ], [ -1817709641818812897, %case97.i ], [ 6294355645245719615, %case98.i ], [ -8340629563394885605, %case99.i ], [ 5041782483466037194, %case100.i ], [ -1880483337136747912, %case101.i ], [ 3729356046086683290, %case102.i ], [ -6189662371905423721, %case103.i ], [ 8090085636497697382, %case104.i ], [ 3171146578797943502, %case105.i ], [ 5619658110353354353, %case106.i ], [ -6259471935552714723, %case107.i ], [ -4607290929671566278, %case108.i ], [ -1112309911958824964, %case109.i ], [ -3771184802297902326, %case110.i ], [ -845068846880718549, %case111.i ], [ -4746542111220524153, %case112.i ], [ -992931083124165738, %case113.i ], [ -4793174741866312907, %case114.i ], [ -2974112083446677997, %case115.i ], [ 8503709266395068717, %case116.i ], [ 1000067187423537442, %case117.i ], [ -647344187112945900, %case118.i ], [ -5985590712037982679, %case119.i ], [ -1517593895512126191, %case120.i ], [ 2822446240451570149, %case121.i ], [ 6100083767409290672, %case122.i ], [ -4452813043723281122, %case123.i ], [ -3260576076044403503, %case124.i ], [ -5133358930729682568, %case125.i ], [ -1723256135048217232, %case126.i ], [ 3032053336604930433, %case127.i ]
  %same.i = icmp eq i32 %119, %stable.i
  %fallback.i = extractelement <128 x i64> <i64 -4302098779834749733, i64 -2220562881957146901, i64 -3894436733716799489, i64 1433843135270481901, i64 8336770163655280242, i64 -7881803417479397662, i64 -2941004127381733739, i64 5502495245947142431, i64 -2572398748971526355, i64 -2436064182340099334, i64 4055606894390288348, i64 5350621376133947991, i64 2765702133756617546, i64 -8493270429887581760, i64 -1160504230424452080, i64 5291143887273806931, i64 -1568241370979223514, i64 -929432383683428675, i64 3673450842886451206, i64 -2478423014181009900, i64 3622887472839136718, i64 1246929574567274891, i64 -1152736325583170325, i64 -3324533442079829058, i64 -8942773601077194801, i64 2970022284838843195, i64 7362585856034407022, i64 -4392082282584759128, i64 5225411942735301638, i64 -5450523663638814413, i64 3547770832784427690, i64 362675829607944414, i64 -282257845897087025, i64 6898188129916750362, i64 2844895380948538806, i64 7674606916920705344, i64 9214633253411488453, i64 6687772750457788192, i64 -4531365318336869402, i64 5344895949674194850, i64 -6675284198519149788, i64 2113974078481014280, i64 8777568547874204941, i64 -2169500560468987851, i64 3660690302424466814, i64 -2436525662347849866, i64 -6085909721859794221, i64 5134827694651168302, i64 1838281907459330133, i64 7335560060985733464, i64 -318164364674882796, i64 8296998437054084336, i64 -2123147046896566209, i64 -2388148047314387342, i64 -5375991149494515187, i64 499566431179015674, i64 7372184217170234346, i64 2897285734473052776, i64 -6620125947798625332, i64 4279659918279867487, i64 4800416899009875996, i64 -5931816708875844411, i64 6774495193030674564, i64 -8398597170076423925, i64 8529366458340265297, i64 -3398925928391953275, i64 8418202337400857587, i64 7020717050005586112, i64 -3761882330889119378, i64 -9149138593070727489, i64 8772769334003688095, i64 1743089132010364587, i64 3963873365795895589, i64 -4042618408496833961, i64 -3755880203185378672, i64 6190981343618133313, i64 8640948454356727894, i64 -681029911906337757, i64 1874492674255557078, i64 -461795147661551007, i64 5084905583549711826, i64 4488332001360539422, i64 3063753645715674379, i64 -8515971706312224628, i64 2347651011283115188, i64 7862244273078811554, i64 4741579133146630013, i64 -814247142782119327, i64 8169000404195870007, i64 -9066049001627982408, i64 2833837677914226691, i64 6041807101686622375, i64 -163413725005337946, i64 -2403499172613604551, i64 -7986631214068388042, i64 4575667007673887251, i64 -6871223553662405846, i64 -1817709641818812897, i64 6294355645245719615, i64 -8340629563394885605, i64 5041782483466037194, i64 -1880483337136747912, i64 3729356046086683290, i64 -6189662371905423721, i64 8090085636497697382, i64 3171146578797943502, i64 5619658110353354353, i64 -6259471935552714723, i64 -4607290929671566278, i64 -1112309911958824964, i64 -3771184802297902326, i64 -845068846880718549, i64 -4746542111220524153, i64 -992931083124165738, i64 -4793174741866312907, i64 -2974112083446677997, i64 8503709266395068717, i64 1000067187423537442, i64 -647344187112945900, i64 -5985590712037982679, i64 -1517593895512126191, i64 2822446240451570149, i64 6100083767409290672, i64 -4452813043723281122, i64 -3260576076044403503, i64 -5133358930729682568, i64 -1723256135048217232, i64 3032053336604930433>, i32 %119
  %result.i = select i1 %same.i, i64 %value.i, i64 %fallback.i
  %stable.i1 = freeze i32 %119
  %safe.i2 = and i32 %stable.i1, 127
  switch i32 %safe.i2, label %case0.i134 [
    i32 1, label %case1.i133
    i32 2, label %case2.i132
    i32 3, label %case3.i131
    i32 4, label %case4.i130
    i32 5, label %case5.i129
    i32 6, label %case6.i128
    i32 7, label %case7.i127
    i32 8, label %case8.i126
    i32 9, label %case9.i125
    i32 10, label %case10.i124
    i32 11, label %case11.i123
    i32 12, label %case12.i122
    i32 13, label %case13.i121
    i32 14, label %case14.i120
    i32 15, label %case15.i119
    i32 16, label %case16.i118
    i32 17, label %case17.i117
    i32 18, label %case18.i116
    i32 19, label %case19.i115
    i32 20, label %case20.i114
    i32 21, label %case21.i113
    i32 22, label %case22.i112
    i32 23, label %case23.i111
    i32 24, label %case24.i110
    i32 25, label %case25.i109
    i32 26, label %case26.i108
    i32 27, label %case27.i107
    i32 28, label %case28.i106
    i32 29, label %case29.i105
    i32 30, label %case30.i104
    i32 31, label %case31.i103
    i32 32, label %case32.i102
    i32 33, label %case33.i101
    i32 34, label %case34.i100
    i32 35, label %case35.i99
    i32 36, label %case36.i98
    i32 37, label %case37.i97
    i32 38, label %case38.i96
    i32 39, label %case39.i95
    i32 40, label %case40.i94
    i32 41, label %case41.i93
    i32 42, label %case42.i92
    i32 43, label %case43.i91
    i32 44, label %case44.i90
    i32 45, label %case45.i89
    i32 46, label %case46.i88
    i32 47, label %case47.i87
    i32 48, label %case48.i86
    i32 49, label %case49.i85
    i32 50, label %case50.i84
    i32 51, label %case51.i83
    i32 52, label %case52.i82
    i32 53, label %case53.i81
    i32 54, label %case54.i80
    i32 55, label %case55.i79
    i32 56, label %case56.i78
    i32 57, label %case57.i77
    i32 58, label %case58.i76
    i32 59, label %case59.i75
    i32 60, label %case60.i74
    i32 61, label %case61.i73
    i32 62, label %case62.i72
    i32 63, label %case63.i71
    i32 64, label %case64.i70
    i32 65, label %case65.i69
    i32 66, label %case66.i68
    i32 67, label %case67.i67
    i32 68, label %case68.i66
    i32 69, label %case69.i65
    i32 70, label %case70.i64
    i32 71, label %case71.i63
    i32 72, label %case72.i62
    i32 73, label %case73.i61
    i32 74, label %case74.i60
    i32 75, label %case75.i59
    i32 76, label %case76.i58
    i32 77, label %case77.i57
    i32 78, label %case78.i56
    i32 79, label %case79.i55
    i32 80, label %case80.i54
    i32 81, label %case81.i53
    i32 82, label %case82.i52
    i32 83, label %case83.i51
    i32 84, label %case84.i50
    i32 85, label %case85.i49
    i32 86, label %case86.i48
    i32 87, label %case87.i47
    i32 88, label %case88.i46
    i32 89, label %case89.i45
    i32 90, label %case90.i44
    i32 91, label %case91.i43
    i32 92, label %case92.i42
    i32 93, label %case93.i41
    i32 94, label %case94.i40
    i32 95, label %case95.i39
    i32 96, label %case96.i38
    i32 97, label %case97.i37
    i32 98, label %case98.i36
    i32 99, label %case99.i35
    i32 100, label %case100.i34
    i32 101, label %case101.i33
    i32 102, label %case102.i32
    i32 103, label %case103.i31
    i32 104, label %case104.i30
    i32 105, label %case105.i29
    i32 106, label %case106.i28
    i32 107, label %case107.i27
    i32 108, label %case108.i26
    i32 109, label %case109.i25
    i32 110, label %case110.i24
    i32 111, label %case111.i23
    i32 112, label %case112.i22
    i32 113, label %case113.i21
    i32 114, label %case114.i20
    i32 115, label %case115.i19
    i32 116, label %case116.i18
    i32 117, label %case117.i17
    i32 118, label %case118.i16
    i32 119, label %case119.i15
    i32 120, label %case120.i14
    i32 121, label %case121.i13
    i32 122, label %case122.i12
    i32 123, label %case123.i11
    i32 124, label %case124.i10
    i32 125, label %case125.i9
    i32 126, label %case126.i8
    i32 127, label %case127.i3
  ]

case0.i134:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case1.i133:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case2.i132:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case3.i131:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case4.i130:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case5.i129:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case6.i128:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case7.i127:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case8.i126:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case9.i125:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case10.i124:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case11.i123:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case12.i122:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case13.i121:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case14.i120:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case15.i119:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case16.i118:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case17.i117:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case18.i116:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case19.i115:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case20.i114:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case21.i113:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case22.i112:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case23.i111:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case24.i110:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case25.i109:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case26.i108:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case27.i107:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case28.i106:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case29.i105:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case30.i104:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case31.i103:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case32.i102:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case33.i101:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case34.i100:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case35.i99:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case36.i98:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case37.i97:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case38.i96:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case39.i95:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case40.i94:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case41.i93:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case42.i92:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case43.i91:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case44.i90:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case45.i89:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case46.i88:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case47.i87:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case48.i86:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case49.i85:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case50.i84:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case51.i83:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case52.i82:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case53.i81:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case54.i80:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case55.i79:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case56.i78:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case57.i77:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case58.i76:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case59.i75:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case60.i74:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case61.i73:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case62.i72:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case63.i71:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case64.i70:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case65.i69:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case66.i68:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case67.i67:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case68.i66:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case69.i65:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case70.i64:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case71.i63:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case72.i62:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case73.i61:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case74.i60:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case75.i59:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case76.i58:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case77.i57:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case78.i56:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case79.i55:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case80.i54:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case81.i53:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case82.i52:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case83.i51:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case84.i50:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case85.i49:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case86.i48:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case87.i47:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case88.i46:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case89.i45:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case90.i44:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case91.i43:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case92.i42:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case93.i41:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case94.i40:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case95.i39:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case96.i38:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case97.i37:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case98.i36:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case99.i35:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case100.i34:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case101.i33:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case102.i32:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case103.i31:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case104.i30:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case105.i29:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case106.i28:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case107.i27:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case108.i26:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case109.i25:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case110.i24:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case111.i23:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case112.i22:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case113.i21:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case114.i20:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case115.i19:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case116.i18:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case117.i17:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case118.i16:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case119.i15:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case120.i14:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case121.i13:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case122.i12:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case123.i11:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case124.i10:                                      ; preds = %lookup_0.exit
  br label %lookup_1.exit

case125.i9:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case126.i8:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case127.i3:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

lookup_1.exit:                                    ; preds = %case0.i134, %case1.i133, %case2.i132, %case3.i131, %case4.i130, %case5.i129, %case6.i128, %case7.i127, %case8.i126, %case9.i125, %case10.i124, %case11.i123, %case12.i122, %case13.i121, %case14.i120, %case15.i119, %case16.i118, %case17.i117, %case18.i116, %case19.i115, %case20.i114, %case21.i113, %case22.i112, %case23.i111, %case24.i110, %case25.i109, %case26.i108, %case27.i107, %case28.i106, %case29.i105, %case30.i104, %case31.i103, %case32.i102, %case33.i101, %case34.i100, %case35.i99, %case36.i98, %case37.i97, %case38.i96, %case39.i95, %case40.i94, %case41.i93, %case42.i92, %case43.i91, %case44.i90, %case45.i89, %case46.i88, %case47.i87, %case48.i86, %case49.i85, %case50.i84, %case51.i83, %case52.i82, %case53.i81, %case54.i80, %case55.i79, %case56.i78, %case57.i77, %case58.i76, %case59.i75, %case60.i74, %case61.i73, %case62.i72, %case63.i71, %case64.i70, %case65.i69, %case66.i68, %case67.i67, %case68.i66, %case69.i65, %case70.i64, %case71.i63, %case72.i62, %case73.i61, %case74.i60, %case75.i59, %case76.i58, %case77.i57, %case78.i56, %case79.i55, %case80.i54, %case81.i53, %case82.i52, %case83.i51, %case84.i50, %case85.i49, %case86.i48, %case87.i47, %case88.i46, %case89.i45, %case90.i44, %case91.i43, %case92.i42, %case93.i41, %case94.i40, %case95.i39, %case96.i38, %case97.i37, %case98.i36, %case99.i35, %case100.i34, %case101.i33, %case102.i32, %case103.i31, %case104.i30, %case105.i29, %case106.i28, %case107.i27, %case108.i26, %case109.i25, %case110.i24, %case111.i23, %case112.i22, %case113.i21, %case114.i20, %case115.i19, %case116.i18, %case117.i17, %case118.i16, %case119.i15, %case120.i14, %case121.i13, %case122.i12, %case123.i11, %case124.i10, %case125.i9, %case126.i8, %case127.i3
  %value.i4 = phi i64 [ 7715946029497977153, %case0.i134 ], [ 7756605422741824046, %case1.i133 ], [ 6914152272366242186, %case2.i132 ], [ 6619468546868266945, %case3.i131 ], [ 8635048048508886888, %case4.i130 ], [ -8393880875905280995, %case5.i129 ], [ -6787559214576350429, %case6.i128 ], [ -2217171985210471049, %case7.i127 ], [ 3604675824303396708, %case8.i126 ], [ -3512584283167155441, %case9.i125 ], [ 2156514823987992107, %case10.i124 ], [ 4907671418510825112, %case11.i123 ], [ 8839569603083604159, %case12.i122 ], [ -6042468303600945730, %case13.i121 ], [ -3015502839406131913, %case14.i120 ], [ 7156044269520408728, %case15.i119 ], [ -1508413522767866676, %case16.i118 ], [ 1604089566654333, %case17.i117 ], [ 7878720862229920401, %case18.i116 ], [ -3403495536095635901, %case19.i115 ], [ 4419032860939710275, %case20.i114 ], [ 8309667868945161700, %case21.i113 ], [ 8127699344777264475, %case22.i112 ], [ 3172741449153456871, %case23.i111 ], [ -7819243355710516001, %case24.i110 ], [ -1517632861945409470, %case25.i109 ], [ -4231347299287732713, %case26.i108 ], [ 7537847041743724411, %case27.i107 ], [ -8574195954494672605, %case28.i106 ], [ 8276179821638363100, %case29.i105 ], [ -2521175872576789404, %case30.i104 ], [ -6787734742961095628, %case31.i103 ], [ 3141466977451366136, %case32.i102 ], [ 6496874765145226399, %case33.i101 ], [ 1397096103115942590, %case34.i100 ], [ -5230410147232611976, %case35.i99 ], [ -8713684776993538784, %case36.i98 ], [ 4679852336830987527, %case37.i97 ], [ -4552607469369903036, %case38.i96 ], [ 5281118663193865049, %case39.i95 ], [ -7809504173095293835, %case40.i94 ], [ -3494378936840174703, %case41.i93 ], [ -8283887544681711630, %case42.i92 ], [ -1982062835990977551, %case43.i91 ], [ 7876639392340321016, %case44.i90 ], [ -776633854295803046, %case45.i89 ], [ -4449956841746897829, %case46.i88 ], [ 6252822398696073730, %case47.i87 ], [ 3653197155308211081, %case48.i86 ], [ 4184123583517128355, %case49.i85 ], [ 2710647065067127392, %case50.i84 ], [ 1364275973376659154, %case51.i83 ], [ 5735683338271654244, %case52.i82 ], [ 4788098542079513072, %case53.i81 ], [ 2523649311648287430, %case54.i80 ], [ 6226703245439355973, %case55.i79 ], [ 4039168641094241130, %case56.i78 ], [ -4735310071515049160, %case57.i77 ], [ -7718157997211796903, %case58.i76 ], [ -7630434519632171097, %case59.i75 ], [ 6401440615517674288, %case60.i74 ], [ -1540227857295215434, %case61.i73 ], [ -6492234107044435804, %case62.i72 ], [ 1076237601080914835, %case63.i71 ], [ 371066729028084812, %case64.i70 ], [ 2047781579520568252, %case65.i69 ], [ 8981190644621376403, %case66.i68 ], [ -1270115072684319195, %case67.i67 ], [ -8955474670546817597, %case68.i66 ], [ 1697060390969647966, %case69.i65 ], [ -1880780507307867236, %case70.i64 ], [ -5363681305219004548, %case71.i63 ], [ -1084662620876922617, %case72.i62 ], [ 8607018531237843404, %case73.i61 ], [ -4794156784727077306, %case74.i60 ], [ 6393061779462666445, %case75.i59 ], [ 5666196083048816522, %case76.i58 ], [ 6136724780979887393, %case77.i57 ], [ 5191002144171421573, %case78.i56 ], [ 3531887758758133993, %case79.i55 ], [ -4418833195103958582, %case80.i54 ], [ 399445177739474421, %case81.i53 ], [ -1947046474972200432, %case82.i52 ], [ -3252035828561191092, %case83.i51 ], [ 8996305336856613012, %case84.i50 ], [ 6917241246617268645, %case85.i49 ], [ 7998926962047337531, %case86.i48 ], [ -8446620120025011510, %case87.i47 ], [ -5280387490099738130, %case88.i46 ], [ 564548736115642456, %case89.i45 ], [ -8404415521806172981, %case90.i44 ], [ 3717577419720655258, %case91.i43 ], [ -5089905126141548364, %case92.i42 ], [ 7521440301808993825, %case93.i41 ], [ -8814061795361718509, %case94.i40 ], [ -2714087517662472993, %case95.i39 ], [ 2071800237030200399, %case96.i38 ], [ -4264588051788821739, %case97.i37 ], [ 5286102316725614445, %case98.i36 ], [ 699974702888830978, %case99.i35 ], [ -6198501953651059440, %case100.i34 ], [ 5478601957838938672, %case101.i33 ], [ -8826379284296529914, %case102.i32 ], [ 4117946310065826061, %case103.i31 ], [ 2713743964583775612, %case104.i30 ], [ 5235599403462674304, %case105.i29 ], [ -4570201113732268168, %case106.i28 ], [ 888845016463753946, %case107.i27 ], [ -4356919662415120719, %case108.i26 ], [ 2273280100835896876, %case109.i25 ], [ -3991362807574606833, %case110.i24 ], [ -4452897474114816089, %case111.i23 ], [ -3778735031010307814, %case112.i22 ], [ 4461224383070578004, %case113.i21 ], [ -2508687673012358854, %case114.i20 ], [ 519458947206652749, %case115.i19 ], [ -8279674986227810403, %case116.i18 ], [ 4384594615491221824, %case117.i17 ], [ 2225088360167913052, %case118.i16 ], [ -7273095038674136419, %case119.i15 ], [ -3679179631877543767, %case120.i14 ], [ 5569617102229150198, %case121.i13 ], [ -8233578011895567121, %case122.i12 ], [ -826440576334536596, %case123.i11 ], [ -4492853642420687956, %case124.i10 ], [ -2325365741171985389, %case125.i9 ], [ 7789395919978777827, %case126.i8 ], [ -2973241909731272914, %case127.i3 ]
  %same.i5 = icmp eq i32 %119, %stable.i1
  %fallback.i6 = extractelement <128 x i64> <i64 7715946029497977153, i64 7756605422741824046, i64 6914152272366242186, i64 6619468546868266945, i64 8635048048508886888, i64 -8393880875905280995, i64 -6787559214576350429, i64 -2217171985210471049, i64 3604675824303396708, i64 -3512584283167155441, i64 2156514823987992107, i64 4907671418510825112, i64 8839569603083604159, i64 -6042468303600945730, i64 -3015502839406131913, i64 7156044269520408728, i64 -1508413522767866676, i64 1604089566654333, i64 7878720862229920401, i64 -3403495536095635901, i64 4419032860939710275, i64 8309667868945161700, i64 8127699344777264475, i64 3172741449153456871, i64 -7819243355710516001, i64 -1517632861945409470, i64 -4231347299287732713, i64 7537847041743724411, i64 -8574195954494672605, i64 8276179821638363100, i64 -2521175872576789404, i64 -6787734742961095628, i64 3141466977451366136, i64 6496874765145226399, i64 1397096103115942590, i64 -5230410147232611976, i64 -8713684776993538784, i64 4679852336830987527, i64 -4552607469369903036, i64 5281118663193865049, i64 -7809504173095293835, i64 -3494378936840174703, i64 -8283887544681711630, i64 -1982062835990977551, i64 7876639392340321016, i64 -776633854295803046, i64 -4449956841746897829, i64 6252822398696073730, i64 3653197155308211081, i64 4184123583517128355, i64 2710647065067127392, i64 1364275973376659154, i64 5735683338271654244, i64 4788098542079513072, i64 2523649311648287430, i64 6226703245439355973, i64 4039168641094241130, i64 -4735310071515049160, i64 -7718157997211796903, i64 -7630434519632171097, i64 6401440615517674288, i64 -1540227857295215434, i64 -6492234107044435804, i64 1076237601080914835, i64 371066729028084812, i64 2047781579520568252, i64 8981190644621376403, i64 -1270115072684319195, i64 -8955474670546817597, i64 1697060390969647966, i64 -1880780507307867236, i64 -5363681305219004548, i64 -1084662620876922617, i64 8607018531237843404, i64 -4794156784727077306, i64 6393061779462666445, i64 5666196083048816522, i64 6136724780979887393, i64 5191002144171421573, i64 3531887758758133993, i64 -4418833195103958582, i64 399445177739474421, i64 -1947046474972200432, i64 -3252035828561191092, i64 8996305336856613012, i64 6917241246617268645, i64 7998926962047337531, i64 -8446620120025011510, i64 -5280387490099738130, i64 564548736115642456, i64 -8404415521806172981, i64 3717577419720655258, i64 -5089905126141548364, i64 7521440301808993825, i64 -8814061795361718509, i64 -2714087517662472993, i64 2071800237030200399, i64 -4264588051788821739, i64 5286102316725614445, i64 699974702888830978, i64 -6198501953651059440, i64 5478601957838938672, i64 -8826379284296529914, i64 4117946310065826061, i64 2713743964583775612, i64 5235599403462674304, i64 -4570201113732268168, i64 888845016463753946, i64 -4356919662415120719, i64 2273280100835896876, i64 -3991362807574606833, i64 -4452897474114816089, i64 -3778735031010307814, i64 4461224383070578004, i64 -2508687673012358854, i64 519458947206652749, i64 -8279674986227810403, i64 4384594615491221824, i64 2225088360167913052, i64 -7273095038674136419, i64 -3679179631877543767, i64 5569617102229150198, i64 -8233578011895567121, i64 -826440576334536596, i64 -4492853642420687956, i64 -2325365741171985389, i64 7789395919978777827, i64 -2973241909731272914>, i32 %119
  %result.i7 = select i1 %same.i5, i64 %value.i4, i64 %fallback.i6
  %120 = icmp slt i8 %84, 0
  %121 = select i1 %120, i64 %result.i7, i64 %result.i
  %122 = select i1 %117, i64 %121, i64 %114
  br label %138

123:                                              ; preds = %79
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %125 = load i64, ptr %124, align 1
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %127 = load i64, ptr %126, align 1
  %128 = xor i64 %125, %127
  %129 = xor i64 %128, %3
  %130 = lshr i64 %129, 33
  %131 = xor i64 %130, %129
  %132 = mul i64 %131, -4417276706812531889
  %133 = lshr i64 %132, 29
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, 1609587929392839161
  %136 = lshr i64 %135, 32
  %137 = xor i64 %136, %135
  br label %138

138:                                              ; preds = %123, %lookup_1.exit, %81, %45, %7
  %139 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %137, %123 ], [ %122, %lookup_1.exit ], [ %114, %81 ]
  ret i64 %139
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { alwaysinline nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
