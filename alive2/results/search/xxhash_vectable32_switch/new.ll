; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vectable32_switch/before-inline.ll'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_vectable32/xxhash_vectable32.c"
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
  br i1 %40, label %41, label %70

41:                                               ; preds = %4
  %42 = icmp eq i64 %30, 2267503259
  %43 = zext i8 %9 to i32
  %44 = and i32 %43, 31
  %stable.i = freeze i32 %44
  %safe.i = and i32 %stable.i, 31
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

lookup_0.exit:                                    ; preds = %case0.i, %case1.i, %case2.i, %case3.i, %case4.i, %case5.i, %case6.i, %case7.i, %case8.i, %case9.i, %case10.i, %case11.i, %case12.i, %case13.i, %case14.i, %case15.i, %case16.i, %case17.i, %case18.i, %case19.i, %case20.i, %case21.i, %case22.i, %case23.i, %case24.i, %case25.i, %case26.i, %case27.i, %case28.i, %case29.i, %case30.i, %case31.i
  %value.i = phi i64 [ -4302098779834749733, %case0.i ], [ -2220562881957146901, %case1.i ], [ -3894436733716799489, %case2.i ], [ 1433843135270481901, %case3.i ], [ 8336770163655280242, %case4.i ], [ -7881803417479397662, %case5.i ], [ -2941004127381733739, %case6.i ], [ 5502495245947142431, %case7.i ], [ -2572398748971526355, %case8.i ], [ -2436064182340099334, %case9.i ], [ 4055606894390288348, %case10.i ], [ 5350621376133947991, %case11.i ], [ 2765702133756617546, %case12.i ], [ -8493270429887581760, %case13.i ], [ -1160504230424452080, %case14.i ], [ 5291143887273806931, %case15.i ], [ -1568241370979223514, %case16.i ], [ -929432383683428675, %case17.i ], [ 3673450842886451206, %case18.i ], [ -2478423014181009900, %case19.i ], [ 3622887472839136718, %case20.i ], [ 1246929574567274891, %case21.i ], [ -1152736325583170325, %case22.i ], [ -3324533442079829058, %case23.i ], [ -8942773601077194801, %case24.i ], [ 2970022284838843195, %case25.i ], [ 7362585856034407022, %case26.i ], [ -4392082282584759128, %case27.i ], [ 5225411942735301638, %case28.i ], [ -5450523663638814413, %case29.i ], [ 3547770832784427690, %case30.i ], [ 362675829607944414, %case31.i ]
  %same.i = icmp eq i32 %44, %stable.i
  %fallback.i = extractelement <32 x i64> <i64 -4302098779834749733, i64 -2220562881957146901, i64 -3894436733716799489, i64 1433843135270481901, i64 8336770163655280242, i64 -7881803417479397662, i64 -2941004127381733739, i64 5502495245947142431, i64 -2572398748971526355, i64 -2436064182340099334, i64 4055606894390288348, i64 5350621376133947991, i64 2765702133756617546, i64 -8493270429887581760, i64 -1160504230424452080, i64 5291143887273806931, i64 -1568241370979223514, i64 -929432383683428675, i64 3673450842886451206, i64 -2478423014181009900, i64 3622887472839136718, i64 1246929574567274891, i64 -1152736325583170325, i64 -3324533442079829058, i64 -8942773601077194801, i64 2970022284838843195, i64 7362585856034407022, i64 -4392082282584759128, i64 5225411942735301638, i64 -5450523663638814413, i64 3547770832784427690, i64 362675829607944414>, i32 %44
  %result.i = select i1 %same.i, i64 %value.i, i64 %fallback.i
  %45 = lshr i32 %43, 5
  %46 = icmp ult i8 %9, 32
  %47 = select i1 %46, i64 %result.i, i64 0
  %stable.i1 = freeze i32 %44
  %safe.i2 = and i32 %stable.i1, 31
  switch i32 %safe.i2, label %case0.i38 [
    i32 1, label %case1.i37
    i32 2, label %case2.i36
    i32 3, label %case3.i35
    i32 4, label %case4.i34
    i32 5, label %case5.i33
    i32 6, label %case6.i32
    i32 7, label %case7.i31
    i32 8, label %case8.i30
    i32 9, label %case9.i29
    i32 10, label %case10.i28
    i32 11, label %case11.i27
    i32 12, label %case12.i26
    i32 13, label %case13.i25
    i32 14, label %case14.i24
    i32 15, label %case15.i23
    i32 16, label %case16.i22
    i32 17, label %case17.i21
    i32 18, label %case18.i20
    i32 19, label %case19.i19
    i32 20, label %case20.i18
    i32 21, label %case21.i17
    i32 22, label %case22.i16
    i32 23, label %case23.i15
    i32 24, label %case24.i14
    i32 25, label %case25.i13
    i32 26, label %case26.i12
    i32 27, label %case27.i11
    i32 28, label %case28.i10
    i32 29, label %case29.i9
    i32 30, label %case30.i8
    i32 31, label %case31.i3
  ]

case0.i38:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case1.i37:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case2.i36:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case3.i35:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case4.i34:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case5.i33:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case6.i32:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case7.i31:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case8.i30:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case9.i29:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case10.i28:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case11.i27:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case12.i26:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case13.i25:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case14.i24:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case15.i23:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case16.i22:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case17.i21:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case18.i20:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case19.i19:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case20.i18:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case21.i17:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case22.i16:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case23.i15:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case24.i14:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case25.i13:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case26.i12:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case27.i11:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case28.i10:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case29.i9:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case30.i8:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case31.i3:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

lookup_1.exit:                                    ; preds = %case0.i38, %case1.i37, %case2.i36, %case3.i35, %case4.i34, %case5.i33, %case6.i32, %case7.i31, %case8.i30, %case9.i29, %case10.i28, %case11.i27, %case12.i26, %case13.i25, %case14.i24, %case15.i23, %case16.i22, %case17.i21, %case18.i20, %case19.i19, %case20.i18, %case21.i17, %case22.i16, %case23.i15, %case24.i14, %case25.i13, %case26.i12, %case27.i11, %case28.i10, %case29.i9, %case30.i8, %case31.i3
  %value.i4 = phi i64 [ -282257845897087025, %case0.i38 ], [ 6898188129916750362, %case1.i37 ], [ 2844895380948538806, %case2.i36 ], [ 7674606916920705344, %case3.i35 ], [ 9214633253411488453, %case4.i34 ], [ 6687772750457788192, %case5.i33 ], [ -4531365318336869402, %case6.i32 ], [ 5344895949674194850, %case7.i31 ], [ -6675284198519149788, %case8.i30 ], [ 2113974078481014280, %case9.i29 ], [ 8777568547874204941, %case10.i28 ], [ -2169500560468987851, %case11.i27 ], [ 3660690302424466814, %case12.i26 ], [ -2436525662347849866, %case13.i25 ], [ -6085909721859794221, %case14.i24 ], [ 5134827694651168302, %case15.i23 ], [ 1838281907459330133, %case16.i22 ], [ 7335560060985733464, %case17.i21 ], [ -318164364674882796, %case18.i20 ], [ 8296998437054084336, %case19.i19 ], [ -2123147046896566209, %case20.i18 ], [ -2388148047314387342, %case21.i17 ], [ -5375991149494515187, %case22.i16 ], [ 499566431179015674, %case23.i15 ], [ 7372184217170234346, %case24.i14 ], [ 2897285734473052776, %case25.i13 ], [ -6620125947798625332, %case26.i12 ], [ 4279659918279867487, %case27.i11 ], [ 4800416899009875996, %case28.i10 ], [ -5931816708875844411, %case29.i9 ], [ 6774495193030674564, %case30.i8 ], [ -8398597170076423925, %case31.i3 ]
  %same.i5 = icmp eq i32 %44, %stable.i1
  %fallback.i6 = extractelement <32 x i64> <i64 -282257845897087025, i64 6898188129916750362, i64 2844895380948538806, i64 7674606916920705344, i64 9214633253411488453, i64 6687772750457788192, i64 -4531365318336869402, i64 5344895949674194850, i64 -6675284198519149788, i64 2113974078481014280, i64 8777568547874204941, i64 -2169500560468987851, i64 3660690302424466814, i64 -2436525662347849866, i64 -6085909721859794221, i64 5134827694651168302, i64 1838281907459330133, i64 7335560060985733464, i64 -318164364674882796, i64 8296998437054084336, i64 -2123147046896566209, i64 -2388148047314387342, i64 -5375991149494515187, i64 499566431179015674, i64 7372184217170234346, i64 2897285734473052776, i64 -6620125947798625332, i64 4279659918279867487, i64 4800416899009875996, i64 -5931816708875844411, i64 6774495193030674564, i64 -8398597170076423925>, i32 %44
  %result.i7 = select i1 %same.i5, i64 %value.i4, i64 %fallback.i6
  %48 = icmp eq i32 %45, 1
  %49 = select i1 %48, i64 %result.i7, i64 0
  %50 = or i64 %47, %49
  %stable.i39 = freeze i32 %44
  %safe.i40 = and i32 %stable.i39, 31
  switch i32 %safe.i40, label %case0.i76 [
    i32 1, label %case1.i75
    i32 2, label %case2.i74
    i32 3, label %case3.i73
    i32 4, label %case4.i72
    i32 5, label %case5.i71
    i32 6, label %case6.i70
    i32 7, label %case7.i69
    i32 8, label %case8.i68
    i32 9, label %case9.i67
    i32 10, label %case10.i66
    i32 11, label %case11.i65
    i32 12, label %case12.i64
    i32 13, label %case13.i63
    i32 14, label %case14.i62
    i32 15, label %case15.i61
    i32 16, label %case16.i60
    i32 17, label %case17.i59
    i32 18, label %case18.i58
    i32 19, label %case19.i57
    i32 20, label %case20.i56
    i32 21, label %case21.i55
    i32 22, label %case22.i54
    i32 23, label %case23.i53
    i32 24, label %case24.i52
    i32 25, label %case25.i51
    i32 26, label %case26.i50
    i32 27, label %case27.i49
    i32 28, label %case28.i48
    i32 29, label %case29.i47
    i32 30, label %case30.i46
    i32 31, label %case31.i41
  ]

case0.i76:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case1.i75:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case2.i74:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case3.i73:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case4.i72:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case5.i71:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case6.i70:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case7.i69:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case8.i68:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case9.i67:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case10.i66:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case11.i65:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case12.i64:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case13.i63:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case14.i62:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case15.i61:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case16.i60:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case17.i59:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case18.i58:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case19.i57:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case20.i56:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case21.i55:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case22.i54:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case23.i53:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case24.i52:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case25.i51:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case26.i50:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case27.i49:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case28.i48:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case29.i47:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case30.i46:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case31.i41:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

lookup_2.exit:                                    ; preds = %case0.i76, %case1.i75, %case2.i74, %case3.i73, %case4.i72, %case5.i71, %case6.i70, %case7.i69, %case8.i68, %case9.i67, %case10.i66, %case11.i65, %case12.i64, %case13.i63, %case14.i62, %case15.i61, %case16.i60, %case17.i59, %case18.i58, %case19.i57, %case20.i56, %case21.i55, %case22.i54, %case23.i53, %case24.i52, %case25.i51, %case26.i50, %case27.i49, %case28.i48, %case29.i47, %case30.i46, %case31.i41
  %value.i42 = phi i64 [ 8529366458340265297, %case0.i76 ], [ -3398925928391953275, %case1.i75 ], [ 8418202337400857587, %case2.i74 ], [ 7020717050005586112, %case3.i73 ], [ -3761882330889119378, %case4.i72 ], [ -9149138593070727489, %case5.i71 ], [ 8772769334003688095, %case6.i70 ], [ 1743089132010364587, %case7.i69 ], [ 3963873365795895589, %case8.i68 ], [ -4042618408496833961, %case9.i67 ], [ -3755880203185378672, %case10.i66 ], [ 6190981343618133313, %case11.i65 ], [ 8640948454356727894, %case12.i64 ], [ -681029911906337757, %case13.i63 ], [ 1874492674255557078, %case14.i62 ], [ -461795147661551007, %case15.i61 ], [ 5084905583549711826, %case16.i60 ], [ 4488332001360539422, %case17.i59 ], [ 3063753645715674379, %case18.i58 ], [ -8515971706312224628, %case19.i57 ], [ 2347651011283115188, %case20.i56 ], [ 7862244273078811554, %case21.i55 ], [ 4741579133146630013, %case22.i54 ], [ -814247142782119327, %case23.i53 ], [ 8169000404195870007, %case24.i52 ], [ -9066049001627982408, %case25.i51 ], [ 2833837677914226691, %case26.i50 ], [ 6041807101686622375, %case27.i49 ], [ -163413725005337946, %case28.i48 ], [ -2403499172613604551, %case29.i47 ], [ -7986631214068388042, %case30.i46 ], [ 4575667007673887251, %case31.i41 ]
  %same.i43 = icmp eq i32 %44, %stable.i39
  %fallback.i44 = extractelement <32 x i64> <i64 8529366458340265297, i64 -3398925928391953275, i64 8418202337400857587, i64 7020717050005586112, i64 -3761882330889119378, i64 -9149138593070727489, i64 8772769334003688095, i64 1743089132010364587, i64 3963873365795895589, i64 -4042618408496833961, i64 -3755880203185378672, i64 6190981343618133313, i64 8640948454356727894, i64 -681029911906337757, i64 1874492674255557078, i64 -461795147661551007, i64 5084905583549711826, i64 4488332001360539422, i64 3063753645715674379, i64 -8515971706312224628, i64 2347651011283115188, i64 7862244273078811554, i64 4741579133146630013, i64 -814247142782119327, i64 8169000404195870007, i64 -9066049001627982408, i64 2833837677914226691, i64 6041807101686622375, i64 -163413725005337946, i64 -2403499172613604551, i64 -7986631214068388042, i64 4575667007673887251>, i32 %44
  %result.i45 = select i1 %same.i43, i64 %value.i42, i64 %fallback.i44
  %51 = icmp eq i32 %45, 2
  %52 = select i1 %51, i64 %result.i45, i64 0
  %53 = or i64 %50, %52
  %stable.i77 = freeze i32 %44
  %safe.i78 = and i32 %stable.i77, 31
  switch i32 %safe.i78, label %case0.i114 [
    i32 1, label %case1.i113
    i32 2, label %case2.i112
    i32 3, label %case3.i111
    i32 4, label %case4.i110
    i32 5, label %case5.i109
    i32 6, label %case6.i108
    i32 7, label %case7.i107
    i32 8, label %case8.i106
    i32 9, label %case9.i105
    i32 10, label %case10.i104
    i32 11, label %case11.i103
    i32 12, label %case12.i102
    i32 13, label %case13.i101
    i32 14, label %case14.i100
    i32 15, label %case15.i99
    i32 16, label %case16.i98
    i32 17, label %case17.i97
    i32 18, label %case18.i96
    i32 19, label %case19.i95
    i32 20, label %case20.i94
    i32 21, label %case21.i93
    i32 22, label %case22.i92
    i32 23, label %case23.i91
    i32 24, label %case24.i90
    i32 25, label %case25.i89
    i32 26, label %case26.i88
    i32 27, label %case27.i87
    i32 28, label %case28.i86
    i32 29, label %case29.i85
    i32 30, label %case30.i84
    i32 31, label %case31.i79
  ]

case0.i114:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case1.i113:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case2.i112:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case3.i111:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case4.i110:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case5.i109:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case6.i108:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case7.i107:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case8.i106:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case9.i105:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case10.i104:                                      ; preds = %lookup_2.exit
  br label %lookup_3.exit

case11.i103:                                      ; preds = %lookup_2.exit
  br label %lookup_3.exit

case12.i102:                                      ; preds = %lookup_2.exit
  br label %lookup_3.exit

case13.i101:                                      ; preds = %lookup_2.exit
  br label %lookup_3.exit

case14.i100:                                      ; preds = %lookup_2.exit
  br label %lookup_3.exit

case15.i99:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case16.i98:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case17.i97:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case18.i96:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case19.i95:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case20.i94:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case21.i93:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case22.i92:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case23.i91:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case24.i90:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case25.i89:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case26.i88:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case27.i87:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case28.i86:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case29.i85:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case30.i84:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case31.i79:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

lookup_3.exit:                                    ; preds = %case0.i114, %case1.i113, %case2.i112, %case3.i111, %case4.i110, %case5.i109, %case6.i108, %case7.i107, %case8.i106, %case9.i105, %case10.i104, %case11.i103, %case12.i102, %case13.i101, %case14.i100, %case15.i99, %case16.i98, %case17.i97, %case18.i96, %case19.i95, %case20.i94, %case21.i93, %case22.i92, %case23.i91, %case24.i90, %case25.i89, %case26.i88, %case27.i87, %case28.i86, %case29.i85, %case30.i84, %case31.i79
  %value.i80 = phi i64 [ -6871223553662405846, %case0.i114 ], [ -1817709641818812897, %case1.i113 ], [ 6294355645245719615, %case2.i112 ], [ -8340629563394885605, %case3.i111 ], [ 5041782483466037194, %case4.i110 ], [ -1880483337136747912, %case5.i109 ], [ 3729356046086683290, %case6.i108 ], [ -6189662371905423721, %case7.i107 ], [ 8090085636497697382, %case8.i106 ], [ 3171146578797943502, %case9.i105 ], [ 5619658110353354353, %case10.i104 ], [ -6259471935552714723, %case11.i103 ], [ -4607290929671566278, %case12.i102 ], [ -1112309911958824964, %case13.i101 ], [ -3771184802297902326, %case14.i100 ], [ -845068846880718549, %case15.i99 ], [ -4746542111220524153, %case16.i98 ], [ -992931083124165738, %case17.i97 ], [ -4793174741866312907, %case18.i96 ], [ -2974112083446677997, %case19.i95 ], [ 8503709266395068717, %case20.i94 ], [ 1000067187423537442, %case21.i93 ], [ -647344187112945900, %case22.i92 ], [ -5985590712037982679, %case23.i91 ], [ -1517593895512126191, %case24.i90 ], [ 2822446240451570149, %case25.i89 ], [ 6100083767409290672, %case26.i88 ], [ -4452813043723281122, %case27.i87 ], [ -3260576076044403503, %case28.i86 ], [ -5133358930729682568, %case29.i85 ], [ -1723256135048217232, %case30.i84 ], [ 3032053336604930433, %case31.i79 ]
  %same.i81 = icmp eq i32 %44, %stable.i77
  %fallback.i82 = extractelement <32 x i64> <i64 -6871223553662405846, i64 -1817709641818812897, i64 6294355645245719615, i64 -8340629563394885605, i64 5041782483466037194, i64 -1880483337136747912, i64 3729356046086683290, i64 -6189662371905423721, i64 8090085636497697382, i64 3171146578797943502, i64 5619658110353354353, i64 -6259471935552714723, i64 -4607290929671566278, i64 -1112309911958824964, i64 -3771184802297902326, i64 -845068846880718549, i64 -4746542111220524153, i64 -992931083124165738, i64 -4793174741866312907, i64 -2974112083446677997, i64 8503709266395068717, i64 1000067187423537442, i64 -647344187112945900, i64 -5985590712037982679, i64 -1517593895512126191, i64 2822446240451570149, i64 6100083767409290672, i64 -4452813043723281122, i64 -3260576076044403503, i64 -5133358930729682568, i64 -1723256135048217232, i64 3032053336604930433>, i32 %44
  %result.i83 = select i1 %same.i81, i64 %value.i80, i64 %fallback.i82
  %54 = icmp eq i32 %45, 3
  %55 = select i1 %54, i64 %result.i83, i64 0
  %56 = or i64 %53, %55
  %stable.i115 = freeze i32 %44
  %safe.i116 = and i32 %stable.i115, 31
  switch i32 %safe.i116, label %case0.i152 [
    i32 1, label %case1.i151
    i32 2, label %case2.i150
    i32 3, label %case3.i149
    i32 4, label %case4.i148
    i32 5, label %case5.i147
    i32 6, label %case6.i146
    i32 7, label %case7.i145
    i32 8, label %case8.i144
    i32 9, label %case9.i143
    i32 10, label %case10.i142
    i32 11, label %case11.i141
    i32 12, label %case12.i140
    i32 13, label %case13.i139
    i32 14, label %case14.i138
    i32 15, label %case15.i137
    i32 16, label %case16.i136
    i32 17, label %case17.i135
    i32 18, label %case18.i134
    i32 19, label %case19.i133
    i32 20, label %case20.i132
    i32 21, label %case21.i131
    i32 22, label %case22.i130
    i32 23, label %case23.i129
    i32 24, label %case24.i128
    i32 25, label %case25.i127
    i32 26, label %case26.i126
    i32 27, label %case27.i125
    i32 28, label %case28.i124
    i32 29, label %case29.i123
    i32 30, label %case30.i122
    i32 31, label %case31.i117
  ]

case0.i152:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case1.i151:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case2.i150:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case3.i149:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case4.i148:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case5.i147:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case6.i146:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case7.i145:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case8.i144:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case9.i143:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case10.i142:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case11.i141:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case12.i140:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case13.i139:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case14.i138:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case15.i137:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case16.i136:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case17.i135:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case18.i134:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case19.i133:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case20.i132:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case21.i131:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case22.i130:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case23.i129:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case24.i128:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case25.i127:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case26.i126:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case27.i125:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case28.i124:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case29.i123:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case30.i122:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case31.i117:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

lookup_4.exit:                                    ; preds = %case0.i152, %case1.i151, %case2.i150, %case3.i149, %case4.i148, %case5.i147, %case6.i146, %case7.i145, %case8.i144, %case9.i143, %case10.i142, %case11.i141, %case12.i140, %case13.i139, %case14.i138, %case15.i137, %case16.i136, %case17.i135, %case18.i134, %case19.i133, %case20.i132, %case21.i131, %case22.i130, %case23.i129, %case24.i128, %case25.i127, %case26.i126, %case27.i125, %case28.i124, %case29.i123, %case30.i122, %case31.i117
  %value.i118 = phi i64 [ 7715946029497977153, %case0.i152 ], [ 7756605422741824046, %case1.i151 ], [ 6914152272366242186, %case2.i150 ], [ 6619468546868266945, %case3.i149 ], [ 8635048048508886888, %case4.i148 ], [ -8393880875905280995, %case5.i147 ], [ -6787559214576350429, %case6.i146 ], [ -2217171985210471049, %case7.i145 ], [ 3604675824303396708, %case8.i144 ], [ -3512584283167155441, %case9.i143 ], [ 2156514823987992107, %case10.i142 ], [ 4907671418510825112, %case11.i141 ], [ 8839569603083604159, %case12.i140 ], [ -6042468303600945730, %case13.i139 ], [ -3015502839406131913, %case14.i138 ], [ 7156044269520408728, %case15.i137 ], [ -1508413522767866676, %case16.i136 ], [ 1604089566654333, %case17.i135 ], [ 7878720862229920401, %case18.i134 ], [ -3403495536095635901, %case19.i133 ], [ 4419032860939710275, %case20.i132 ], [ 8309667868945161700, %case21.i131 ], [ 8127699344777264475, %case22.i130 ], [ 3172741449153456871, %case23.i129 ], [ -7819243355710516001, %case24.i128 ], [ -1517632861945409470, %case25.i127 ], [ -4231347299287732713, %case26.i126 ], [ 7537847041743724411, %case27.i125 ], [ -8574195954494672605, %case28.i124 ], [ 8276179821638363100, %case29.i123 ], [ -2521175872576789404, %case30.i122 ], [ -6787734742961095628, %case31.i117 ]
  %same.i119 = icmp eq i32 %44, %stable.i115
  %fallback.i120 = extractelement <32 x i64> <i64 7715946029497977153, i64 7756605422741824046, i64 6914152272366242186, i64 6619468546868266945, i64 8635048048508886888, i64 -8393880875905280995, i64 -6787559214576350429, i64 -2217171985210471049, i64 3604675824303396708, i64 -3512584283167155441, i64 2156514823987992107, i64 4907671418510825112, i64 8839569603083604159, i64 -6042468303600945730, i64 -3015502839406131913, i64 7156044269520408728, i64 -1508413522767866676, i64 1604089566654333, i64 7878720862229920401, i64 -3403495536095635901, i64 4419032860939710275, i64 8309667868945161700, i64 8127699344777264475, i64 3172741449153456871, i64 -7819243355710516001, i64 -1517632861945409470, i64 -4231347299287732713, i64 7537847041743724411, i64 -8574195954494672605, i64 8276179821638363100, i64 -2521175872576789404, i64 -6787734742961095628>, i32 %44
  %result.i121 = select i1 %same.i119, i64 %value.i118, i64 %fallback.i120
  %57 = icmp eq i32 %45, 4
  %58 = select i1 %57, i64 %result.i121, i64 0
  %59 = or i64 %56, %58
  %stable.i153 = freeze i32 %44
  %safe.i154 = and i32 %stable.i153, 31
  switch i32 %safe.i154, label %case0.i190 [
    i32 1, label %case1.i189
    i32 2, label %case2.i188
    i32 3, label %case3.i187
    i32 4, label %case4.i186
    i32 5, label %case5.i185
    i32 6, label %case6.i184
    i32 7, label %case7.i183
    i32 8, label %case8.i182
    i32 9, label %case9.i181
    i32 10, label %case10.i180
    i32 11, label %case11.i179
    i32 12, label %case12.i178
    i32 13, label %case13.i177
    i32 14, label %case14.i176
    i32 15, label %case15.i175
    i32 16, label %case16.i174
    i32 17, label %case17.i173
    i32 18, label %case18.i172
    i32 19, label %case19.i171
    i32 20, label %case20.i170
    i32 21, label %case21.i169
    i32 22, label %case22.i168
    i32 23, label %case23.i167
    i32 24, label %case24.i166
    i32 25, label %case25.i165
    i32 26, label %case26.i164
    i32 27, label %case27.i163
    i32 28, label %case28.i162
    i32 29, label %case29.i161
    i32 30, label %case30.i160
    i32 31, label %case31.i155
  ]

case0.i190:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case1.i189:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case2.i188:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case3.i187:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case4.i186:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case5.i185:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case6.i184:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case7.i183:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case8.i182:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case9.i181:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case10.i180:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case11.i179:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case12.i178:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case13.i177:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case14.i176:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case15.i175:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case16.i174:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case17.i173:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case18.i172:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case19.i171:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case20.i170:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case21.i169:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case22.i168:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case23.i167:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case24.i166:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case25.i165:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case26.i164:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case27.i163:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case28.i162:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case29.i161:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case30.i160:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case31.i155:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

lookup_5.exit:                                    ; preds = %case0.i190, %case1.i189, %case2.i188, %case3.i187, %case4.i186, %case5.i185, %case6.i184, %case7.i183, %case8.i182, %case9.i181, %case10.i180, %case11.i179, %case12.i178, %case13.i177, %case14.i176, %case15.i175, %case16.i174, %case17.i173, %case18.i172, %case19.i171, %case20.i170, %case21.i169, %case22.i168, %case23.i167, %case24.i166, %case25.i165, %case26.i164, %case27.i163, %case28.i162, %case29.i161, %case30.i160, %case31.i155
  %value.i156 = phi i64 [ 3141466977451366136, %case0.i190 ], [ 6496874765145226399, %case1.i189 ], [ 1397096103115942590, %case2.i188 ], [ -5230410147232611976, %case3.i187 ], [ -8713684776993538784, %case4.i186 ], [ 4679852336830987527, %case5.i185 ], [ -4552607469369903036, %case6.i184 ], [ 5281118663193865049, %case7.i183 ], [ -7809504173095293835, %case8.i182 ], [ -3494378936840174703, %case9.i181 ], [ -8283887544681711630, %case10.i180 ], [ -1982062835990977551, %case11.i179 ], [ 7876639392340321016, %case12.i178 ], [ -776633854295803046, %case13.i177 ], [ -4449956841746897829, %case14.i176 ], [ 6252822398696073730, %case15.i175 ], [ 3653197155308211081, %case16.i174 ], [ 4184123583517128355, %case17.i173 ], [ 2710647065067127392, %case18.i172 ], [ 1364275973376659154, %case19.i171 ], [ 5735683338271654244, %case20.i170 ], [ 4788098542079513072, %case21.i169 ], [ 2523649311648287430, %case22.i168 ], [ 6226703245439355973, %case23.i167 ], [ 4039168641094241130, %case24.i166 ], [ -4735310071515049160, %case25.i165 ], [ -7718157997211796903, %case26.i164 ], [ -7630434519632171097, %case27.i163 ], [ 6401440615517674288, %case28.i162 ], [ -1540227857295215434, %case29.i161 ], [ -6492234107044435804, %case30.i160 ], [ 1076237601080914835, %case31.i155 ]
  %same.i157 = icmp eq i32 %44, %stable.i153
  %fallback.i158 = extractelement <32 x i64> <i64 3141466977451366136, i64 6496874765145226399, i64 1397096103115942590, i64 -5230410147232611976, i64 -8713684776993538784, i64 4679852336830987527, i64 -4552607469369903036, i64 5281118663193865049, i64 -7809504173095293835, i64 -3494378936840174703, i64 -8283887544681711630, i64 -1982062835990977551, i64 7876639392340321016, i64 -776633854295803046, i64 -4449956841746897829, i64 6252822398696073730, i64 3653197155308211081, i64 4184123583517128355, i64 2710647065067127392, i64 1364275973376659154, i64 5735683338271654244, i64 4788098542079513072, i64 2523649311648287430, i64 6226703245439355973, i64 4039168641094241130, i64 -4735310071515049160, i64 -7718157997211796903, i64 -7630434519632171097, i64 6401440615517674288, i64 -1540227857295215434, i64 -6492234107044435804, i64 1076237601080914835>, i32 %44
  %result.i159 = select i1 %same.i157, i64 %value.i156, i64 %fallback.i158
  %60 = icmp eq i32 %45, 5
  %61 = select i1 %60, i64 %result.i159, i64 0
  %62 = or i64 %59, %61
  %stable.i191 = freeze i32 %44
  %safe.i192 = and i32 %stable.i191, 31
  switch i32 %safe.i192, label %case0.i228 [
    i32 1, label %case1.i227
    i32 2, label %case2.i226
    i32 3, label %case3.i225
    i32 4, label %case4.i224
    i32 5, label %case5.i223
    i32 6, label %case6.i222
    i32 7, label %case7.i221
    i32 8, label %case8.i220
    i32 9, label %case9.i219
    i32 10, label %case10.i218
    i32 11, label %case11.i217
    i32 12, label %case12.i216
    i32 13, label %case13.i215
    i32 14, label %case14.i214
    i32 15, label %case15.i213
    i32 16, label %case16.i212
    i32 17, label %case17.i211
    i32 18, label %case18.i210
    i32 19, label %case19.i209
    i32 20, label %case20.i208
    i32 21, label %case21.i207
    i32 22, label %case22.i206
    i32 23, label %case23.i205
    i32 24, label %case24.i204
    i32 25, label %case25.i203
    i32 26, label %case26.i202
    i32 27, label %case27.i201
    i32 28, label %case28.i200
    i32 29, label %case29.i199
    i32 30, label %case30.i198
    i32 31, label %case31.i193
  ]

case0.i228:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case1.i227:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case2.i226:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case3.i225:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case4.i224:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case5.i223:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case6.i222:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case7.i221:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case8.i220:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case9.i219:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case10.i218:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case11.i217:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case12.i216:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case13.i215:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case14.i214:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case15.i213:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case16.i212:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case17.i211:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case18.i210:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case19.i209:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case20.i208:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case21.i207:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case22.i206:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case23.i205:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case24.i204:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case25.i203:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case26.i202:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case27.i201:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case28.i200:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case29.i199:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case30.i198:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case31.i193:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

lookup_6.exit:                                    ; preds = %case0.i228, %case1.i227, %case2.i226, %case3.i225, %case4.i224, %case5.i223, %case6.i222, %case7.i221, %case8.i220, %case9.i219, %case10.i218, %case11.i217, %case12.i216, %case13.i215, %case14.i214, %case15.i213, %case16.i212, %case17.i211, %case18.i210, %case19.i209, %case20.i208, %case21.i207, %case22.i206, %case23.i205, %case24.i204, %case25.i203, %case26.i202, %case27.i201, %case28.i200, %case29.i199, %case30.i198, %case31.i193
  %value.i194 = phi i64 [ 371066729028084812, %case0.i228 ], [ 2047781579520568252, %case1.i227 ], [ 8981190644621376403, %case2.i226 ], [ -1270115072684319195, %case3.i225 ], [ -8955474670546817597, %case4.i224 ], [ 1697060390969647966, %case5.i223 ], [ -1880780507307867236, %case6.i222 ], [ -5363681305219004548, %case7.i221 ], [ -1084662620876922617, %case8.i220 ], [ 8607018531237843404, %case9.i219 ], [ -4794156784727077306, %case10.i218 ], [ 6393061779462666445, %case11.i217 ], [ 5666196083048816522, %case12.i216 ], [ 6136724780979887393, %case13.i215 ], [ 5191002144171421573, %case14.i214 ], [ 3531887758758133993, %case15.i213 ], [ -4418833195103958582, %case16.i212 ], [ 399445177739474421, %case17.i211 ], [ -1947046474972200432, %case18.i210 ], [ -3252035828561191092, %case19.i209 ], [ 8996305336856613012, %case20.i208 ], [ 6917241246617268645, %case21.i207 ], [ 7998926962047337531, %case22.i206 ], [ -8446620120025011510, %case23.i205 ], [ -5280387490099738130, %case24.i204 ], [ 564548736115642456, %case25.i203 ], [ -8404415521806172981, %case26.i202 ], [ 3717577419720655258, %case27.i201 ], [ -5089905126141548364, %case28.i200 ], [ 7521440301808993825, %case29.i199 ], [ -8814061795361718509, %case30.i198 ], [ -2714087517662472993, %case31.i193 ]
  %same.i195 = icmp eq i32 %44, %stable.i191
  %fallback.i196 = extractelement <32 x i64> <i64 371066729028084812, i64 2047781579520568252, i64 8981190644621376403, i64 -1270115072684319195, i64 -8955474670546817597, i64 1697060390969647966, i64 -1880780507307867236, i64 -5363681305219004548, i64 -1084662620876922617, i64 8607018531237843404, i64 -4794156784727077306, i64 6393061779462666445, i64 5666196083048816522, i64 6136724780979887393, i64 5191002144171421573, i64 3531887758758133993, i64 -4418833195103958582, i64 399445177739474421, i64 -1947046474972200432, i64 -3252035828561191092, i64 8996305336856613012, i64 6917241246617268645, i64 7998926962047337531, i64 -8446620120025011510, i64 -5280387490099738130, i64 564548736115642456, i64 -8404415521806172981, i64 3717577419720655258, i64 -5089905126141548364, i64 7521440301808993825, i64 -8814061795361718509, i64 -2714087517662472993>, i32 %44
  %result.i197 = select i1 %same.i195, i64 %value.i194, i64 %fallback.i196
  %63 = icmp eq i32 %45, 6
  %64 = select i1 %63, i64 %result.i197, i64 0
  %65 = or i64 %62, %64
  %stable.i229 = freeze i32 %44
  %safe.i230 = and i32 %stable.i229, 31
  switch i32 %safe.i230, label %case0.i266 [
    i32 1, label %case1.i265
    i32 2, label %case2.i264
    i32 3, label %case3.i263
    i32 4, label %case4.i262
    i32 5, label %case5.i261
    i32 6, label %case6.i260
    i32 7, label %case7.i259
    i32 8, label %case8.i258
    i32 9, label %case9.i257
    i32 10, label %case10.i256
    i32 11, label %case11.i255
    i32 12, label %case12.i254
    i32 13, label %case13.i253
    i32 14, label %case14.i252
    i32 15, label %case15.i251
    i32 16, label %case16.i250
    i32 17, label %case17.i249
    i32 18, label %case18.i248
    i32 19, label %case19.i247
    i32 20, label %case20.i246
    i32 21, label %case21.i245
    i32 22, label %case22.i244
    i32 23, label %case23.i243
    i32 24, label %case24.i242
    i32 25, label %case25.i241
    i32 26, label %case26.i240
    i32 27, label %case27.i239
    i32 28, label %case28.i238
    i32 29, label %case29.i237
    i32 30, label %case30.i236
    i32 31, label %case31.i231
  ]

case0.i266:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case1.i265:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case2.i264:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case3.i263:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case4.i262:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case5.i261:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case6.i260:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case7.i259:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case8.i258:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case9.i257:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case10.i256:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case11.i255:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case12.i254:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case13.i253:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case14.i252:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case15.i251:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case16.i250:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case17.i249:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case18.i248:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case19.i247:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case20.i246:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case21.i245:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case22.i244:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case23.i243:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case24.i242:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case25.i241:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case26.i240:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case27.i239:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case28.i238:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case29.i237:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case30.i236:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case31.i231:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

lookup_7.exit:                                    ; preds = %case0.i266, %case1.i265, %case2.i264, %case3.i263, %case4.i262, %case5.i261, %case6.i260, %case7.i259, %case8.i258, %case9.i257, %case10.i256, %case11.i255, %case12.i254, %case13.i253, %case14.i252, %case15.i251, %case16.i250, %case17.i249, %case18.i248, %case19.i247, %case20.i246, %case21.i245, %case22.i244, %case23.i243, %case24.i242, %case25.i241, %case26.i240, %case27.i239, %case28.i238, %case29.i237, %case30.i236, %case31.i231
  %value.i232 = phi i64 [ 2071800237030200399, %case0.i266 ], [ -4264588051788821739, %case1.i265 ], [ 5286102316725614445, %case2.i264 ], [ 699974702888830978, %case3.i263 ], [ -6198501953651059440, %case4.i262 ], [ 5478601957838938672, %case5.i261 ], [ -8826379284296529914, %case6.i260 ], [ 4117946310065826061, %case7.i259 ], [ 2713743964583775612, %case8.i258 ], [ 5235599403462674304, %case9.i257 ], [ -4570201113732268168, %case10.i256 ], [ 888845016463753946, %case11.i255 ], [ -4356919662415120719, %case12.i254 ], [ 2273280100835896876, %case13.i253 ], [ -3991362807574606833, %case14.i252 ], [ -4452897474114816089, %case15.i251 ], [ -3778735031010307814, %case16.i250 ], [ 4461224383070578004, %case17.i249 ], [ -2508687673012358854, %case18.i248 ], [ 519458947206652749, %case19.i247 ], [ -8279674986227810403, %case20.i246 ], [ 4384594615491221824, %case21.i245 ], [ 2225088360167913052, %case22.i244 ], [ -7273095038674136419, %case23.i243 ], [ -3679179631877543767, %case24.i242 ], [ 5569617102229150198, %case25.i241 ], [ -8233578011895567121, %case26.i240 ], [ -826440576334536596, %case27.i239 ], [ -4492853642420687956, %case28.i238 ], [ -2325365741171985389, %case29.i237 ], [ 7789395919978777827, %case30.i236 ], [ -2973241909731272914, %case31.i231 ]
  %same.i233 = icmp eq i32 %44, %stable.i229
  %fallback.i234 = extractelement <32 x i64> <i64 2071800237030200399, i64 -4264588051788821739, i64 5286102316725614445, i64 699974702888830978, i64 -6198501953651059440, i64 5478601957838938672, i64 -8826379284296529914, i64 4117946310065826061, i64 2713743964583775612, i64 5235599403462674304, i64 -4570201113732268168, i64 888845016463753946, i64 -4356919662415120719, i64 2273280100835896876, i64 -3991362807574606833, i64 -4452897474114816089, i64 -3778735031010307814, i64 4461224383070578004, i64 -2508687673012358854, i64 519458947206652749, i64 -8279674986227810403, i64 4384594615491221824, i64 2225088360167913052, i64 -7273095038674136419, i64 -3679179631877543767, i64 5569617102229150198, i64 -8233578011895567121, i64 -826440576334536596, i64 -4492853642420687956, i64 -2325365741171985389, i64 7789395919978777827, i64 -2973241909731272914>, i32 %44
  %result.i235 = select i1 %same.i233, i64 %value.i232, i64 %fallback.i234
  %66 = icmp eq i32 %45, 7
  %67 = select i1 %66, i64 %result.i235, i64 0
  %68 = or i64 %65, %67
  %69 = select i1 %42, i64 %68, i64 %39
  br label %70

70:                                               ; preds = %lookup_7.exit, %4
  %71 = phi i64 [ %69, %lookup_7.exit ], [ %39, %4 ]
  ret i64 %71
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
  br label %160

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
  br label %160

79:                                               ; preds = %43
  %80 = icmp eq i64 %1, 0
  br i1 %80, label %145, label %81

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
  br i1 %115, label %116, label %160

116:                                              ; preds = %81
  %117 = icmp eq i64 %105, 2267503259
  %118 = zext i8 %84 to i32
  %119 = and i32 %118, 31
  %stable.i = freeze i32 %119
  %safe.i = and i32 %stable.i, 31
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

lookup_0.exit:                                    ; preds = %case0.i, %case1.i, %case2.i, %case3.i, %case4.i, %case5.i, %case6.i, %case7.i, %case8.i, %case9.i, %case10.i, %case11.i, %case12.i, %case13.i, %case14.i, %case15.i, %case16.i, %case17.i, %case18.i, %case19.i, %case20.i, %case21.i, %case22.i, %case23.i, %case24.i, %case25.i, %case26.i, %case27.i, %case28.i, %case29.i, %case30.i, %case31.i
  %value.i = phi i64 [ -4302098779834749733, %case0.i ], [ -2220562881957146901, %case1.i ], [ -3894436733716799489, %case2.i ], [ 1433843135270481901, %case3.i ], [ 8336770163655280242, %case4.i ], [ -7881803417479397662, %case5.i ], [ -2941004127381733739, %case6.i ], [ 5502495245947142431, %case7.i ], [ -2572398748971526355, %case8.i ], [ -2436064182340099334, %case9.i ], [ 4055606894390288348, %case10.i ], [ 5350621376133947991, %case11.i ], [ 2765702133756617546, %case12.i ], [ -8493270429887581760, %case13.i ], [ -1160504230424452080, %case14.i ], [ 5291143887273806931, %case15.i ], [ -1568241370979223514, %case16.i ], [ -929432383683428675, %case17.i ], [ 3673450842886451206, %case18.i ], [ -2478423014181009900, %case19.i ], [ 3622887472839136718, %case20.i ], [ 1246929574567274891, %case21.i ], [ -1152736325583170325, %case22.i ], [ -3324533442079829058, %case23.i ], [ -8942773601077194801, %case24.i ], [ 2970022284838843195, %case25.i ], [ 7362585856034407022, %case26.i ], [ -4392082282584759128, %case27.i ], [ 5225411942735301638, %case28.i ], [ -5450523663638814413, %case29.i ], [ 3547770832784427690, %case30.i ], [ 362675829607944414, %case31.i ]
  %same.i = icmp eq i32 %119, %stable.i
  %fallback.i = extractelement <32 x i64> <i64 -4302098779834749733, i64 -2220562881957146901, i64 -3894436733716799489, i64 1433843135270481901, i64 8336770163655280242, i64 -7881803417479397662, i64 -2941004127381733739, i64 5502495245947142431, i64 -2572398748971526355, i64 -2436064182340099334, i64 4055606894390288348, i64 5350621376133947991, i64 2765702133756617546, i64 -8493270429887581760, i64 -1160504230424452080, i64 5291143887273806931, i64 -1568241370979223514, i64 -929432383683428675, i64 3673450842886451206, i64 -2478423014181009900, i64 3622887472839136718, i64 1246929574567274891, i64 -1152736325583170325, i64 -3324533442079829058, i64 -8942773601077194801, i64 2970022284838843195, i64 7362585856034407022, i64 -4392082282584759128, i64 5225411942735301638, i64 -5450523663638814413, i64 3547770832784427690, i64 362675829607944414>, i32 %119
  %result.i = select i1 %same.i, i64 %value.i, i64 %fallback.i
  %120 = lshr i32 %118, 5
  %121 = icmp ult i8 %84, 32
  %122 = select i1 %121, i64 %result.i, i64 0
  %stable.i1 = freeze i32 %119
  %safe.i2 = and i32 %stable.i1, 31
  switch i32 %safe.i2, label %case0.i38 [
    i32 1, label %case1.i37
    i32 2, label %case2.i36
    i32 3, label %case3.i35
    i32 4, label %case4.i34
    i32 5, label %case5.i33
    i32 6, label %case6.i32
    i32 7, label %case7.i31
    i32 8, label %case8.i30
    i32 9, label %case9.i29
    i32 10, label %case10.i28
    i32 11, label %case11.i27
    i32 12, label %case12.i26
    i32 13, label %case13.i25
    i32 14, label %case14.i24
    i32 15, label %case15.i23
    i32 16, label %case16.i22
    i32 17, label %case17.i21
    i32 18, label %case18.i20
    i32 19, label %case19.i19
    i32 20, label %case20.i18
    i32 21, label %case21.i17
    i32 22, label %case22.i16
    i32 23, label %case23.i15
    i32 24, label %case24.i14
    i32 25, label %case25.i13
    i32 26, label %case26.i12
    i32 27, label %case27.i11
    i32 28, label %case28.i10
    i32 29, label %case29.i9
    i32 30, label %case30.i8
    i32 31, label %case31.i3
  ]

case0.i38:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case1.i37:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case2.i36:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case3.i35:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case4.i34:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case5.i33:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case6.i32:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case7.i31:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case8.i30:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case9.i29:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case10.i28:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case11.i27:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case12.i26:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case13.i25:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case14.i24:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case15.i23:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case16.i22:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case17.i21:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case18.i20:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case19.i19:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case20.i18:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case21.i17:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case22.i16:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case23.i15:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case24.i14:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case25.i13:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case26.i12:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case27.i11:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case28.i10:                                       ; preds = %lookup_0.exit
  br label %lookup_1.exit

case29.i9:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case30.i8:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

case31.i3:                                        ; preds = %lookup_0.exit
  br label %lookup_1.exit

lookup_1.exit:                                    ; preds = %case0.i38, %case1.i37, %case2.i36, %case3.i35, %case4.i34, %case5.i33, %case6.i32, %case7.i31, %case8.i30, %case9.i29, %case10.i28, %case11.i27, %case12.i26, %case13.i25, %case14.i24, %case15.i23, %case16.i22, %case17.i21, %case18.i20, %case19.i19, %case20.i18, %case21.i17, %case22.i16, %case23.i15, %case24.i14, %case25.i13, %case26.i12, %case27.i11, %case28.i10, %case29.i9, %case30.i8, %case31.i3
  %value.i4 = phi i64 [ -282257845897087025, %case0.i38 ], [ 6898188129916750362, %case1.i37 ], [ 2844895380948538806, %case2.i36 ], [ 7674606916920705344, %case3.i35 ], [ 9214633253411488453, %case4.i34 ], [ 6687772750457788192, %case5.i33 ], [ -4531365318336869402, %case6.i32 ], [ 5344895949674194850, %case7.i31 ], [ -6675284198519149788, %case8.i30 ], [ 2113974078481014280, %case9.i29 ], [ 8777568547874204941, %case10.i28 ], [ -2169500560468987851, %case11.i27 ], [ 3660690302424466814, %case12.i26 ], [ -2436525662347849866, %case13.i25 ], [ -6085909721859794221, %case14.i24 ], [ 5134827694651168302, %case15.i23 ], [ 1838281907459330133, %case16.i22 ], [ 7335560060985733464, %case17.i21 ], [ -318164364674882796, %case18.i20 ], [ 8296998437054084336, %case19.i19 ], [ -2123147046896566209, %case20.i18 ], [ -2388148047314387342, %case21.i17 ], [ -5375991149494515187, %case22.i16 ], [ 499566431179015674, %case23.i15 ], [ 7372184217170234346, %case24.i14 ], [ 2897285734473052776, %case25.i13 ], [ -6620125947798625332, %case26.i12 ], [ 4279659918279867487, %case27.i11 ], [ 4800416899009875996, %case28.i10 ], [ -5931816708875844411, %case29.i9 ], [ 6774495193030674564, %case30.i8 ], [ -8398597170076423925, %case31.i3 ]
  %same.i5 = icmp eq i32 %119, %stable.i1
  %fallback.i6 = extractelement <32 x i64> <i64 -282257845897087025, i64 6898188129916750362, i64 2844895380948538806, i64 7674606916920705344, i64 9214633253411488453, i64 6687772750457788192, i64 -4531365318336869402, i64 5344895949674194850, i64 -6675284198519149788, i64 2113974078481014280, i64 8777568547874204941, i64 -2169500560468987851, i64 3660690302424466814, i64 -2436525662347849866, i64 -6085909721859794221, i64 5134827694651168302, i64 1838281907459330133, i64 7335560060985733464, i64 -318164364674882796, i64 8296998437054084336, i64 -2123147046896566209, i64 -2388148047314387342, i64 -5375991149494515187, i64 499566431179015674, i64 7372184217170234346, i64 2897285734473052776, i64 -6620125947798625332, i64 4279659918279867487, i64 4800416899009875996, i64 -5931816708875844411, i64 6774495193030674564, i64 -8398597170076423925>, i32 %119
  %result.i7 = select i1 %same.i5, i64 %value.i4, i64 %fallback.i6
  %123 = icmp eq i32 %120, 1
  %124 = select i1 %123, i64 %result.i7, i64 0
  %125 = or i64 %122, %124
  %stable.i39 = freeze i32 %119
  %safe.i40 = and i32 %stable.i39, 31
  switch i32 %safe.i40, label %case0.i76 [
    i32 1, label %case1.i75
    i32 2, label %case2.i74
    i32 3, label %case3.i73
    i32 4, label %case4.i72
    i32 5, label %case5.i71
    i32 6, label %case6.i70
    i32 7, label %case7.i69
    i32 8, label %case8.i68
    i32 9, label %case9.i67
    i32 10, label %case10.i66
    i32 11, label %case11.i65
    i32 12, label %case12.i64
    i32 13, label %case13.i63
    i32 14, label %case14.i62
    i32 15, label %case15.i61
    i32 16, label %case16.i60
    i32 17, label %case17.i59
    i32 18, label %case18.i58
    i32 19, label %case19.i57
    i32 20, label %case20.i56
    i32 21, label %case21.i55
    i32 22, label %case22.i54
    i32 23, label %case23.i53
    i32 24, label %case24.i52
    i32 25, label %case25.i51
    i32 26, label %case26.i50
    i32 27, label %case27.i49
    i32 28, label %case28.i48
    i32 29, label %case29.i47
    i32 30, label %case30.i46
    i32 31, label %case31.i41
  ]

case0.i76:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case1.i75:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case2.i74:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case3.i73:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case4.i72:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case5.i71:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case6.i70:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case7.i69:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case8.i68:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case9.i67:                                        ; preds = %lookup_1.exit
  br label %lookup_2.exit

case10.i66:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case11.i65:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case12.i64:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case13.i63:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case14.i62:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case15.i61:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case16.i60:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case17.i59:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case18.i58:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case19.i57:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case20.i56:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case21.i55:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case22.i54:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case23.i53:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case24.i52:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case25.i51:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case26.i50:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case27.i49:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case28.i48:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case29.i47:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case30.i46:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

case31.i41:                                       ; preds = %lookup_1.exit
  br label %lookup_2.exit

lookup_2.exit:                                    ; preds = %case0.i76, %case1.i75, %case2.i74, %case3.i73, %case4.i72, %case5.i71, %case6.i70, %case7.i69, %case8.i68, %case9.i67, %case10.i66, %case11.i65, %case12.i64, %case13.i63, %case14.i62, %case15.i61, %case16.i60, %case17.i59, %case18.i58, %case19.i57, %case20.i56, %case21.i55, %case22.i54, %case23.i53, %case24.i52, %case25.i51, %case26.i50, %case27.i49, %case28.i48, %case29.i47, %case30.i46, %case31.i41
  %value.i42 = phi i64 [ 8529366458340265297, %case0.i76 ], [ -3398925928391953275, %case1.i75 ], [ 8418202337400857587, %case2.i74 ], [ 7020717050005586112, %case3.i73 ], [ -3761882330889119378, %case4.i72 ], [ -9149138593070727489, %case5.i71 ], [ 8772769334003688095, %case6.i70 ], [ 1743089132010364587, %case7.i69 ], [ 3963873365795895589, %case8.i68 ], [ -4042618408496833961, %case9.i67 ], [ -3755880203185378672, %case10.i66 ], [ 6190981343618133313, %case11.i65 ], [ 8640948454356727894, %case12.i64 ], [ -681029911906337757, %case13.i63 ], [ 1874492674255557078, %case14.i62 ], [ -461795147661551007, %case15.i61 ], [ 5084905583549711826, %case16.i60 ], [ 4488332001360539422, %case17.i59 ], [ 3063753645715674379, %case18.i58 ], [ -8515971706312224628, %case19.i57 ], [ 2347651011283115188, %case20.i56 ], [ 7862244273078811554, %case21.i55 ], [ 4741579133146630013, %case22.i54 ], [ -814247142782119327, %case23.i53 ], [ 8169000404195870007, %case24.i52 ], [ -9066049001627982408, %case25.i51 ], [ 2833837677914226691, %case26.i50 ], [ 6041807101686622375, %case27.i49 ], [ -163413725005337946, %case28.i48 ], [ -2403499172613604551, %case29.i47 ], [ -7986631214068388042, %case30.i46 ], [ 4575667007673887251, %case31.i41 ]
  %same.i43 = icmp eq i32 %119, %stable.i39
  %fallback.i44 = extractelement <32 x i64> <i64 8529366458340265297, i64 -3398925928391953275, i64 8418202337400857587, i64 7020717050005586112, i64 -3761882330889119378, i64 -9149138593070727489, i64 8772769334003688095, i64 1743089132010364587, i64 3963873365795895589, i64 -4042618408496833961, i64 -3755880203185378672, i64 6190981343618133313, i64 8640948454356727894, i64 -681029911906337757, i64 1874492674255557078, i64 -461795147661551007, i64 5084905583549711826, i64 4488332001360539422, i64 3063753645715674379, i64 -8515971706312224628, i64 2347651011283115188, i64 7862244273078811554, i64 4741579133146630013, i64 -814247142782119327, i64 8169000404195870007, i64 -9066049001627982408, i64 2833837677914226691, i64 6041807101686622375, i64 -163413725005337946, i64 -2403499172613604551, i64 -7986631214068388042, i64 4575667007673887251>, i32 %119
  %result.i45 = select i1 %same.i43, i64 %value.i42, i64 %fallback.i44
  %126 = icmp eq i32 %120, 2
  %127 = select i1 %126, i64 %result.i45, i64 0
  %128 = or i64 %125, %127
  %stable.i77 = freeze i32 %119
  %safe.i78 = and i32 %stable.i77, 31
  switch i32 %safe.i78, label %case0.i114 [
    i32 1, label %case1.i113
    i32 2, label %case2.i112
    i32 3, label %case3.i111
    i32 4, label %case4.i110
    i32 5, label %case5.i109
    i32 6, label %case6.i108
    i32 7, label %case7.i107
    i32 8, label %case8.i106
    i32 9, label %case9.i105
    i32 10, label %case10.i104
    i32 11, label %case11.i103
    i32 12, label %case12.i102
    i32 13, label %case13.i101
    i32 14, label %case14.i100
    i32 15, label %case15.i99
    i32 16, label %case16.i98
    i32 17, label %case17.i97
    i32 18, label %case18.i96
    i32 19, label %case19.i95
    i32 20, label %case20.i94
    i32 21, label %case21.i93
    i32 22, label %case22.i92
    i32 23, label %case23.i91
    i32 24, label %case24.i90
    i32 25, label %case25.i89
    i32 26, label %case26.i88
    i32 27, label %case27.i87
    i32 28, label %case28.i86
    i32 29, label %case29.i85
    i32 30, label %case30.i84
    i32 31, label %case31.i79
  ]

case0.i114:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case1.i113:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case2.i112:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case3.i111:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case4.i110:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case5.i109:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case6.i108:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case7.i107:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case8.i106:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case9.i105:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case10.i104:                                      ; preds = %lookup_2.exit
  br label %lookup_3.exit

case11.i103:                                      ; preds = %lookup_2.exit
  br label %lookup_3.exit

case12.i102:                                      ; preds = %lookup_2.exit
  br label %lookup_3.exit

case13.i101:                                      ; preds = %lookup_2.exit
  br label %lookup_3.exit

case14.i100:                                      ; preds = %lookup_2.exit
  br label %lookup_3.exit

case15.i99:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case16.i98:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case17.i97:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case18.i96:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case19.i95:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case20.i94:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case21.i93:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case22.i92:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case23.i91:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case24.i90:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case25.i89:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case26.i88:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case27.i87:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case28.i86:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case29.i85:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case30.i84:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

case31.i79:                                       ; preds = %lookup_2.exit
  br label %lookup_3.exit

lookup_3.exit:                                    ; preds = %case0.i114, %case1.i113, %case2.i112, %case3.i111, %case4.i110, %case5.i109, %case6.i108, %case7.i107, %case8.i106, %case9.i105, %case10.i104, %case11.i103, %case12.i102, %case13.i101, %case14.i100, %case15.i99, %case16.i98, %case17.i97, %case18.i96, %case19.i95, %case20.i94, %case21.i93, %case22.i92, %case23.i91, %case24.i90, %case25.i89, %case26.i88, %case27.i87, %case28.i86, %case29.i85, %case30.i84, %case31.i79
  %value.i80 = phi i64 [ -6871223553662405846, %case0.i114 ], [ -1817709641818812897, %case1.i113 ], [ 6294355645245719615, %case2.i112 ], [ -8340629563394885605, %case3.i111 ], [ 5041782483466037194, %case4.i110 ], [ -1880483337136747912, %case5.i109 ], [ 3729356046086683290, %case6.i108 ], [ -6189662371905423721, %case7.i107 ], [ 8090085636497697382, %case8.i106 ], [ 3171146578797943502, %case9.i105 ], [ 5619658110353354353, %case10.i104 ], [ -6259471935552714723, %case11.i103 ], [ -4607290929671566278, %case12.i102 ], [ -1112309911958824964, %case13.i101 ], [ -3771184802297902326, %case14.i100 ], [ -845068846880718549, %case15.i99 ], [ -4746542111220524153, %case16.i98 ], [ -992931083124165738, %case17.i97 ], [ -4793174741866312907, %case18.i96 ], [ -2974112083446677997, %case19.i95 ], [ 8503709266395068717, %case20.i94 ], [ 1000067187423537442, %case21.i93 ], [ -647344187112945900, %case22.i92 ], [ -5985590712037982679, %case23.i91 ], [ -1517593895512126191, %case24.i90 ], [ 2822446240451570149, %case25.i89 ], [ 6100083767409290672, %case26.i88 ], [ -4452813043723281122, %case27.i87 ], [ -3260576076044403503, %case28.i86 ], [ -5133358930729682568, %case29.i85 ], [ -1723256135048217232, %case30.i84 ], [ 3032053336604930433, %case31.i79 ]
  %same.i81 = icmp eq i32 %119, %stable.i77
  %fallback.i82 = extractelement <32 x i64> <i64 -6871223553662405846, i64 -1817709641818812897, i64 6294355645245719615, i64 -8340629563394885605, i64 5041782483466037194, i64 -1880483337136747912, i64 3729356046086683290, i64 -6189662371905423721, i64 8090085636497697382, i64 3171146578797943502, i64 5619658110353354353, i64 -6259471935552714723, i64 -4607290929671566278, i64 -1112309911958824964, i64 -3771184802297902326, i64 -845068846880718549, i64 -4746542111220524153, i64 -992931083124165738, i64 -4793174741866312907, i64 -2974112083446677997, i64 8503709266395068717, i64 1000067187423537442, i64 -647344187112945900, i64 -5985590712037982679, i64 -1517593895512126191, i64 2822446240451570149, i64 6100083767409290672, i64 -4452813043723281122, i64 -3260576076044403503, i64 -5133358930729682568, i64 -1723256135048217232, i64 3032053336604930433>, i32 %119
  %result.i83 = select i1 %same.i81, i64 %value.i80, i64 %fallback.i82
  %129 = icmp eq i32 %120, 3
  %130 = select i1 %129, i64 %result.i83, i64 0
  %131 = or i64 %128, %130
  %stable.i115 = freeze i32 %119
  %safe.i116 = and i32 %stable.i115, 31
  switch i32 %safe.i116, label %case0.i152 [
    i32 1, label %case1.i151
    i32 2, label %case2.i150
    i32 3, label %case3.i149
    i32 4, label %case4.i148
    i32 5, label %case5.i147
    i32 6, label %case6.i146
    i32 7, label %case7.i145
    i32 8, label %case8.i144
    i32 9, label %case9.i143
    i32 10, label %case10.i142
    i32 11, label %case11.i141
    i32 12, label %case12.i140
    i32 13, label %case13.i139
    i32 14, label %case14.i138
    i32 15, label %case15.i137
    i32 16, label %case16.i136
    i32 17, label %case17.i135
    i32 18, label %case18.i134
    i32 19, label %case19.i133
    i32 20, label %case20.i132
    i32 21, label %case21.i131
    i32 22, label %case22.i130
    i32 23, label %case23.i129
    i32 24, label %case24.i128
    i32 25, label %case25.i127
    i32 26, label %case26.i126
    i32 27, label %case27.i125
    i32 28, label %case28.i124
    i32 29, label %case29.i123
    i32 30, label %case30.i122
    i32 31, label %case31.i117
  ]

case0.i152:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case1.i151:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case2.i150:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case3.i149:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case4.i148:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case5.i147:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case6.i146:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case7.i145:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case8.i144:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case9.i143:                                       ; preds = %lookup_3.exit
  br label %lookup_4.exit

case10.i142:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case11.i141:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case12.i140:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case13.i139:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case14.i138:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case15.i137:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case16.i136:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case17.i135:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case18.i134:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case19.i133:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case20.i132:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case21.i131:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case22.i130:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case23.i129:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case24.i128:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case25.i127:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case26.i126:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case27.i125:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case28.i124:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case29.i123:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case30.i122:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

case31.i117:                                      ; preds = %lookup_3.exit
  br label %lookup_4.exit

lookup_4.exit:                                    ; preds = %case0.i152, %case1.i151, %case2.i150, %case3.i149, %case4.i148, %case5.i147, %case6.i146, %case7.i145, %case8.i144, %case9.i143, %case10.i142, %case11.i141, %case12.i140, %case13.i139, %case14.i138, %case15.i137, %case16.i136, %case17.i135, %case18.i134, %case19.i133, %case20.i132, %case21.i131, %case22.i130, %case23.i129, %case24.i128, %case25.i127, %case26.i126, %case27.i125, %case28.i124, %case29.i123, %case30.i122, %case31.i117
  %value.i118 = phi i64 [ 7715946029497977153, %case0.i152 ], [ 7756605422741824046, %case1.i151 ], [ 6914152272366242186, %case2.i150 ], [ 6619468546868266945, %case3.i149 ], [ 8635048048508886888, %case4.i148 ], [ -8393880875905280995, %case5.i147 ], [ -6787559214576350429, %case6.i146 ], [ -2217171985210471049, %case7.i145 ], [ 3604675824303396708, %case8.i144 ], [ -3512584283167155441, %case9.i143 ], [ 2156514823987992107, %case10.i142 ], [ 4907671418510825112, %case11.i141 ], [ 8839569603083604159, %case12.i140 ], [ -6042468303600945730, %case13.i139 ], [ -3015502839406131913, %case14.i138 ], [ 7156044269520408728, %case15.i137 ], [ -1508413522767866676, %case16.i136 ], [ 1604089566654333, %case17.i135 ], [ 7878720862229920401, %case18.i134 ], [ -3403495536095635901, %case19.i133 ], [ 4419032860939710275, %case20.i132 ], [ 8309667868945161700, %case21.i131 ], [ 8127699344777264475, %case22.i130 ], [ 3172741449153456871, %case23.i129 ], [ -7819243355710516001, %case24.i128 ], [ -1517632861945409470, %case25.i127 ], [ -4231347299287732713, %case26.i126 ], [ 7537847041743724411, %case27.i125 ], [ -8574195954494672605, %case28.i124 ], [ 8276179821638363100, %case29.i123 ], [ -2521175872576789404, %case30.i122 ], [ -6787734742961095628, %case31.i117 ]
  %same.i119 = icmp eq i32 %119, %stable.i115
  %fallback.i120 = extractelement <32 x i64> <i64 7715946029497977153, i64 7756605422741824046, i64 6914152272366242186, i64 6619468546868266945, i64 8635048048508886888, i64 -8393880875905280995, i64 -6787559214576350429, i64 -2217171985210471049, i64 3604675824303396708, i64 -3512584283167155441, i64 2156514823987992107, i64 4907671418510825112, i64 8839569603083604159, i64 -6042468303600945730, i64 -3015502839406131913, i64 7156044269520408728, i64 -1508413522767866676, i64 1604089566654333, i64 7878720862229920401, i64 -3403495536095635901, i64 4419032860939710275, i64 8309667868945161700, i64 8127699344777264475, i64 3172741449153456871, i64 -7819243355710516001, i64 -1517632861945409470, i64 -4231347299287732713, i64 7537847041743724411, i64 -8574195954494672605, i64 8276179821638363100, i64 -2521175872576789404, i64 -6787734742961095628>, i32 %119
  %result.i121 = select i1 %same.i119, i64 %value.i118, i64 %fallback.i120
  %132 = icmp eq i32 %120, 4
  %133 = select i1 %132, i64 %result.i121, i64 0
  %134 = or i64 %131, %133
  %stable.i153 = freeze i32 %119
  %safe.i154 = and i32 %stable.i153, 31
  switch i32 %safe.i154, label %case0.i190 [
    i32 1, label %case1.i189
    i32 2, label %case2.i188
    i32 3, label %case3.i187
    i32 4, label %case4.i186
    i32 5, label %case5.i185
    i32 6, label %case6.i184
    i32 7, label %case7.i183
    i32 8, label %case8.i182
    i32 9, label %case9.i181
    i32 10, label %case10.i180
    i32 11, label %case11.i179
    i32 12, label %case12.i178
    i32 13, label %case13.i177
    i32 14, label %case14.i176
    i32 15, label %case15.i175
    i32 16, label %case16.i174
    i32 17, label %case17.i173
    i32 18, label %case18.i172
    i32 19, label %case19.i171
    i32 20, label %case20.i170
    i32 21, label %case21.i169
    i32 22, label %case22.i168
    i32 23, label %case23.i167
    i32 24, label %case24.i166
    i32 25, label %case25.i165
    i32 26, label %case26.i164
    i32 27, label %case27.i163
    i32 28, label %case28.i162
    i32 29, label %case29.i161
    i32 30, label %case30.i160
    i32 31, label %case31.i155
  ]

case0.i190:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case1.i189:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case2.i188:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case3.i187:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case4.i186:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case5.i185:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case6.i184:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case7.i183:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case8.i182:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case9.i181:                                       ; preds = %lookup_4.exit
  br label %lookup_5.exit

case10.i180:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case11.i179:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case12.i178:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case13.i177:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case14.i176:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case15.i175:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case16.i174:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case17.i173:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case18.i172:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case19.i171:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case20.i170:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case21.i169:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case22.i168:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case23.i167:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case24.i166:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case25.i165:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case26.i164:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case27.i163:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case28.i162:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case29.i161:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case30.i160:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

case31.i155:                                      ; preds = %lookup_4.exit
  br label %lookup_5.exit

lookup_5.exit:                                    ; preds = %case0.i190, %case1.i189, %case2.i188, %case3.i187, %case4.i186, %case5.i185, %case6.i184, %case7.i183, %case8.i182, %case9.i181, %case10.i180, %case11.i179, %case12.i178, %case13.i177, %case14.i176, %case15.i175, %case16.i174, %case17.i173, %case18.i172, %case19.i171, %case20.i170, %case21.i169, %case22.i168, %case23.i167, %case24.i166, %case25.i165, %case26.i164, %case27.i163, %case28.i162, %case29.i161, %case30.i160, %case31.i155
  %value.i156 = phi i64 [ 3141466977451366136, %case0.i190 ], [ 6496874765145226399, %case1.i189 ], [ 1397096103115942590, %case2.i188 ], [ -5230410147232611976, %case3.i187 ], [ -8713684776993538784, %case4.i186 ], [ 4679852336830987527, %case5.i185 ], [ -4552607469369903036, %case6.i184 ], [ 5281118663193865049, %case7.i183 ], [ -7809504173095293835, %case8.i182 ], [ -3494378936840174703, %case9.i181 ], [ -8283887544681711630, %case10.i180 ], [ -1982062835990977551, %case11.i179 ], [ 7876639392340321016, %case12.i178 ], [ -776633854295803046, %case13.i177 ], [ -4449956841746897829, %case14.i176 ], [ 6252822398696073730, %case15.i175 ], [ 3653197155308211081, %case16.i174 ], [ 4184123583517128355, %case17.i173 ], [ 2710647065067127392, %case18.i172 ], [ 1364275973376659154, %case19.i171 ], [ 5735683338271654244, %case20.i170 ], [ 4788098542079513072, %case21.i169 ], [ 2523649311648287430, %case22.i168 ], [ 6226703245439355973, %case23.i167 ], [ 4039168641094241130, %case24.i166 ], [ -4735310071515049160, %case25.i165 ], [ -7718157997211796903, %case26.i164 ], [ -7630434519632171097, %case27.i163 ], [ 6401440615517674288, %case28.i162 ], [ -1540227857295215434, %case29.i161 ], [ -6492234107044435804, %case30.i160 ], [ 1076237601080914835, %case31.i155 ]
  %same.i157 = icmp eq i32 %119, %stable.i153
  %fallback.i158 = extractelement <32 x i64> <i64 3141466977451366136, i64 6496874765145226399, i64 1397096103115942590, i64 -5230410147232611976, i64 -8713684776993538784, i64 4679852336830987527, i64 -4552607469369903036, i64 5281118663193865049, i64 -7809504173095293835, i64 -3494378936840174703, i64 -8283887544681711630, i64 -1982062835990977551, i64 7876639392340321016, i64 -776633854295803046, i64 -4449956841746897829, i64 6252822398696073730, i64 3653197155308211081, i64 4184123583517128355, i64 2710647065067127392, i64 1364275973376659154, i64 5735683338271654244, i64 4788098542079513072, i64 2523649311648287430, i64 6226703245439355973, i64 4039168641094241130, i64 -4735310071515049160, i64 -7718157997211796903, i64 -7630434519632171097, i64 6401440615517674288, i64 -1540227857295215434, i64 -6492234107044435804, i64 1076237601080914835>, i32 %119
  %result.i159 = select i1 %same.i157, i64 %value.i156, i64 %fallback.i158
  %135 = icmp eq i32 %120, 5
  %136 = select i1 %135, i64 %result.i159, i64 0
  %137 = or i64 %134, %136
  %stable.i191 = freeze i32 %119
  %safe.i192 = and i32 %stable.i191, 31
  switch i32 %safe.i192, label %case0.i228 [
    i32 1, label %case1.i227
    i32 2, label %case2.i226
    i32 3, label %case3.i225
    i32 4, label %case4.i224
    i32 5, label %case5.i223
    i32 6, label %case6.i222
    i32 7, label %case7.i221
    i32 8, label %case8.i220
    i32 9, label %case9.i219
    i32 10, label %case10.i218
    i32 11, label %case11.i217
    i32 12, label %case12.i216
    i32 13, label %case13.i215
    i32 14, label %case14.i214
    i32 15, label %case15.i213
    i32 16, label %case16.i212
    i32 17, label %case17.i211
    i32 18, label %case18.i210
    i32 19, label %case19.i209
    i32 20, label %case20.i208
    i32 21, label %case21.i207
    i32 22, label %case22.i206
    i32 23, label %case23.i205
    i32 24, label %case24.i204
    i32 25, label %case25.i203
    i32 26, label %case26.i202
    i32 27, label %case27.i201
    i32 28, label %case28.i200
    i32 29, label %case29.i199
    i32 30, label %case30.i198
    i32 31, label %case31.i193
  ]

case0.i228:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case1.i227:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case2.i226:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case3.i225:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case4.i224:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case5.i223:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case6.i222:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case7.i221:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case8.i220:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case9.i219:                                       ; preds = %lookup_5.exit
  br label %lookup_6.exit

case10.i218:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case11.i217:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case12.i216:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case13.i215:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case14.i214:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case15.i213:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case16.i212:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case17.i211:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case18.i210:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case19.i209:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case20.i208:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case21.i207:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case22.i206:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case23.i205:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case24.i204:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case25.i203:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case26.i202:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case27.i201:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case28.i200:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case29.i199:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case30.i198:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

case31.i193:                                      ; preds = %lookup_5.exit
  br label %lookup_6.exit

lookup_6.exit:                                    ; preds = %case0.i228, %case1.i227, %case2.i226, %case3.i225, %case4.i224, %case5.i223, %case6.i222, %case7.i221, %case8.i220, %case9.i219, %case10.i218, %case11.i217, %case12.i216, %case13.i215, %case14.i214, %case15.i213, %case16.i212, %case17.i211, %case18.i210, %case19.i209, %case20.i208, %case21.i207, %case22.i206, %case23.i205, %case24.i204, %case25.i203, %case26.i202, %case27.i201, %case28.i200, %case29.i199, %case30.i198, %case31.i193
  %value.i194 = phi i64 [ 371066729028084812, %case0.i228 ], [ 2047781579520568252, %case1.i227 ], [ 8981190644621376403, %case2.i226 ], [ -1270115072684319195, %case3.i225 ], [ -8955474670546817597, %case4.i224 ], [ 1697060390969647966, %case5.i223 ], [ -1880780507307867236, %case6.i222 ], [ -5363681305219004548, %case7.i221 ], [ -1084662620876922617, %case8.i220 ], [ 8607018531237843404, %case9.i219 ], [ -4794156784727077306, %case10.i218 ], [ 6393061779462666445, %case11.i217 ], [ 5666196083048816522, %case12.i216 ], [ 6136724780979887393, %case13.i215 ], [ 5191002144171421573, %case14.i214 ], [ 3531887758758133993, %case15.i213 ], [ -4418833195103958582, %case16.i212 ], [ 399445177739474421, %case17.i211 ], [ -1947046474972200432, %case18.i210 ], [ -3252035828561191092, %case19.i209 ], [ 8996305336856613012, %case20.i208 ], [ 6917241246617268645, %case21.i207 ], [ 7998926962047337531, %case22.i206 ], [ -8446620120025011510, %case23.i205 ], [ -5280387490099738130, %case24.i204 ], [ 564548736115642456, %case25.i203 ], [ -8404415521806172981, %case26.i202 ], [ 3717577419720655258, %case27.i201 ], [ -5089905126141548364, %case28.i200 ], [ 7521440301808993825, %case29.i199 ], [ -8814061795361718509, %case30.i198 ], [ -2714087517662472993, %case31.i193 ]
  %same.i195 = icmp eq i32 %119, %stable.i191
  %fallback.i196 = extractelement <32 x i64> <i64 371066729028084812, i64 2047781579520568252, i64 8981190644621376403, i64 -1270115072684319195, i64 -8955474670546817597, i64 1697060390969647966, i64 -1880780507307867236, i64 -5363681305219004548, i64 -1084662620876922617, i64 8607018531237843404, i64 -4794156784727077306, i64 6393061779462666445, i64 5666196083048816522, i64 6136724780979887393, i64 5191002144171421573, i64 3531887758758133993, i64 -4418833195103958582, i64 399445177739474421, i64 -1947046474972200432, i64 -3252035828561191092, i64 8996305336856613012, i64 6917241246617268645, i64 7998926962047337531, i64 -8446620120025011510, i64 -5280387490099738130, i64 564548736115642456, i64 -8404415521806172981, i64 3717577419720655258, i64 -5089905126141548364, i64 7521440301808993825, i64 -8814061795361718509, i64 -2714087517662472993>, i32 %119
  %result.i197 = select i1 %same.i195, i64 %value.i194, i64 %fallback.i196
  %138 = icmp eq i32 %120, 6
  %139 = select i1 %138, i64 %result.i197, i64 0
  %140 = or i64 %137, %139
  %stable.i229 = freeze i32 %119
  %safe.i230 = and i32 %stable.i229, 31
  switch i32 %safe.i230, label %case0.i266 [
    i32 1, label %case1.i265
    i32 2, label %case2.i264
    i32 3, label %case3.i263
    i32 4, label %case4.i262
    i32 5, label %case5.i261
    i32 6, label %case6.i260
    i32 7, label %case7.i259
    i32 8, label %case8.i258
    i32 9, label %case9.i257
    i32 10, label %case10.i256
    i32 11, label %case11.i255
    i32 12, label %case12.i254
    i32 13, label %case13.i253
    i32 14, label %case14.i252
    i32 15, label %case15.i251
    i32 16, label %case16.i250
    i32 17, label %case17.i249
    i32 18, label %case18.i248
    i32 19, label %case19.i247
    i32 20, label %case20.i246
    i32 21, label %case21.i245
    i32 22, label %case22.i244
    i32 23, label %case23.i243
    i32 24, label %case24.i242
    i32 25, label %case25.i241
    i32 26, label %case26.i240
    i32 27, label %case27.i239
    i32 28, label %case28.i238
    i32 29, label %case29.i237
    i32 30, label %case30.i236
    i32 31, label %case31.i231
  ]

case0.i266:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case1.i265:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case2.i264:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case3.i263:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case4.i262:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case5.i261:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case6.i260:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case7.i259:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case8.i258:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case9.i257:                                       ; preds = %lookup_6.exit
  br label %lookup_7.exit

case10.i256:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case11.i255:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case12.i254:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case13.i253:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case14.i252:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case15.i251:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case16.i250:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case17.i249:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case18.i248:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case19.i247:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case20.i246:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case21.i245:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case22.i244:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case23.i243:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case24.i242:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case25.i241:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case26.i240:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case27.i239:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case28.i238:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case29.i237:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case30.i236:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

case31.i231:                                      ; preds = %lookup_6.exit
  br label %lookup_7.exit

lookup_7.exit:                                    ; preds = %case0.i266, %case1.i265, %case2.i264, %case3.i263, %case4.i262, %case5.i261, %case6.i260, %case7.i259, %case8.i258, %case9.i257, %case10.i256, %case11.i255, %case12.i254, %case13.i253, %case14.i252, %case15.i251, %case16.i250, %case17.i249, %case18.i248, %case19.i247, %case20.i246, %case21.i245, %case22.i244, %case23.i243, %case24.i242, %case25.i241, %case26.i240, %case27.i239, %case28.i238, %case29.i237, %case30.i236, %case31.i231
  %value.i232 = phi i64 [ 2071800237030200399, %case0.i266 ], [ -4264588051788821739, %case1.i265 ], [ 5286102316725614445, %case2.i264 ], [ 699974702888830978, %case3.i263 ], [ -6198501953651059440, %case4.i262 ], [ 5478601957838938672, %case5.i261 ], [ -8826379284296529914, %case6.i260 ], [ 4117946310065826061, %case7.i259 ], [ 2713743964583775612, %case8.i258 ], [ 5235599403462674304, %case9.i257 ], [ -4570201113732268168, %case10.i256 ], [ 888845016463753946, %case11.i255 ], [ -4356919662415120719, %case12.i254 ], [ 2273280100835896876, %case13.i253 ], [ -3991362807574606833, %case14.i252 ], [ -4452897474114816089, %case15.i251 ], [ -3778735031010307814, %case16.i250 ], [ 4461224383070578004, %case17.i249 ], [ -2508687673012358854, %case18.i248 ], [ 519458947206652749, %case19.i247 ], [ -8279674986227810403, %case20.i246 ], [ 4384594615491221824, %case21.i245 ], [ 2225088360167913052, %case22.i244 ], [ -7273095038674136419, %case23.i243 ], [ -3679179631877543767, %case24.i242 ], [ 5569617102229150198, %case25.i241 ], [ -8233578011895567121, %case26.i240 ], [ -826440576334536596, %case27.i239 ], [ -4492853642420687956, %case28.i238 ], [ -2325365741171985389, %case29.i237 ], [ 7789395919978777827, %case30.i236 ], [ -2973241909731272914, %case31.i231 ]
  %same.i233 = icmp eq i32 %119, %stable.i229
  %fallback.i234 = extractelement <32 x i64> <i64 2071800237030200399, i64 -4264588051788821739, i64 5286102316725614445, i64 699974702888830978, i64 -6198501953651059440, i64 5478601957838938672, i64 -8826379284296529914, i64 4117946310065826061, i64 2713743964583775612, i64 5235599403462674304, i64 -4570201113732268168, i64 888845016463753946, i64 -4356919662415120719, i64 2273280100835896876, i64 -3991362807574606833, i64 -4452897474114816089, i64 -3778735031010307814, i64 4461224383070578004, i64 -2508687673012358854, i64 519458947206652749, i64 -8279674986227810403, i64 4384594615491221824, i64 2225088360167913052, i64 -7273095038674136419, i64 -3679179631877543767, i64 5569617102229150198, i64 -8233578011895567121, i64 -826440576334536596, i64 -4492853642420687956, i64 -2325365741171985389, i64 7789395919978777827, i64 -2973241909731272914>, i32 %119
  %result.i235 = select i1 %same.i233, i64 %value.i232, i64 %fallback.i234
  %141 = icmp eq i32 %120, 7
  %142 = select i1 %141, i64 %result.i235, i64 0
  %143 = or i64 %140, %142
  %144 = select i1 %117, i64 %143, i64 %114
  br label %160

145:                                              ; preds = %79
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %147 = load i64, ptr %146, align 1
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %149 = load i64, ptr %148, align 1
  %150 = xor i64 %147, %149
  %151 = xor i64 %150, %3
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  br label %160

160:                                              ; preds = %145, %lookup_7.exit, %81, %45, %7
  %161 = phi i64 [ %42, %7 ], [ %78, %45 ], [ %159, %145 ], [ %144, %lookup_7.exit ], [ %114, %81 ]
  ret i64 %161
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
