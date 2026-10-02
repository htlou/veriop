; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/results/search/xxhash_remap_balanced/linked.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i64 @target_0to16(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %5)
  %6 = icmp samesign ult i64 %1, 4
  br i1 %6, label %7, label %168, !prof !5

7:                                                ; preds = %4
  %8 = icmp ult i64 %1, 17
  tail call void @llvm.assume(i1 %8)
  %9 = icmp samesign ugt i64 %1, 8
  br i1 %9, label %10, label %46, !prof !5

10:                                               ; preds = %7
  %11 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %11)
  %12 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %12)
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %14
  %18 = add i64 %17, %3
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %20 = load i64, ptr %19, align 1
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %22 = load i64, ptr %21, align 1
  %23 = xor i64 %22, %20
  %24 = sub i64 %23, %3
  %25 = load i64, ptr %0, align 1
  %26 = xor i64 %25, %18
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %28 = getelementptr inbounds i8, ptr %27, i64 -8
  %29 = load i64, ptr %28, align 1
  %30 = xor i64 %29, %24
  %31 = tail call noundef i64 @llvm.bswap.i64(i64 %26)
  %32 = add i64 %31, %1
  %33 = add i64 %32, %30
  %34 = zext i64 %26 to i128
  %35 = zext i64 %30 to i128
  %36 = mul nuw i128 %35, %34
  %37 = lshr i128 %36, 64
  %38 = xor i128 %37, %36
  %39 = trunc i128 %38 to i64
  %40 = add i64 %33, %39
  %41 = lshr i64 %40, 37
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, 1609587791953885689
  %44 = lshr i64 %43, 32
  %45 = xor i64 %44, %43
  br label %lookup_fallback.exit

46:                                               ; preds = %7
  %47 = icmp samesign ugt i64 %1, 3
  br i1 %47, label %48, label %82, !prof !5

48:                                               ; preds = %46
  %49 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %49)
  %50 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %50)
  %51 = trunc i64 %3 to i32
  %52 = tail call noundef i32 @llvm.bswap.i32(i32 %51)
  %53 = zext i32 %52 to i64
  %54 = shl nuw i64 %53, 32
  %55 = xor i64 %54, %3
  %56 = load i32, ptr %0, align 1
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %58 = getelementptr inbounds i8, ptr %57, i64 -4
  %59 = load i32, ptr %58, align 1
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %61 = load i64, ptr %60, align 1
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %63 = load i64, ptr %62, align 1
  %64 = xor i64 %63, %61
  %65 = sub i64 %64, %55
  %66 = zext i32 %59 to i64
  %67 = zext i32 %56 to i64
  %68 = shl nuw i64 %67, 32
  %69 = or disjoint i64 %68, %66
  %70 = xor i64 %65, %69
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 49)
  %72 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 24)
  %73 = xor i64 %71, %72
  %74 = xor i64 %73, %70
  %75 = mul i64 %74, -6939452855193903323
  %76 = lshr i64 %75, 35
  %77 = add nuw nsw i64 %76, %1
  %78 = xor i64 %77, %75
  %79 = mul i64 %78, -6939452855193903323
  %80 = lshr i64 %79, 28
  %81 = xor i64 %80, %79
  br label %lookup_fallback.exit

82:                                               ; preds = %46
  %83 = icmp samesign ugt i64 %1, 1
  br i1 %83, label %84, label %112

84:                                               ; preds = %82
  %85 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %85)
  %86 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %86)
  %87 = load i16, ptr %0, align 1
  %88 = zext i16 %87 to i64
  %89 = shl nuw nsw i64 %88, 16
  %90 = getelementptr i8, ptr %0, i64 %1
  %91 = getelementptr i8, ptr %90, i64 -1
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i64
  %94 = or disjoint i64 %89, %93
  %95 = shl nuw nsw i64 %1, 8
  %96 = or disjoint i64 %94, %95
  %97 = load i32, ptr %2, align 1
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %99 = load i32, ptr %98, align 1
  %100 = xor i32 %99, %97
  %101 = zext i32 %100 to i64
  %102 = add i64 %3, %101
  %103 = xor i64 %102, %96
  %104 = lshr i64 %103, 33
  %105 = xor i64 %104, %103
  %106 = mul i64 %105, -4417276706812531889
  %107 = lshr i64 %106, 29
  %108 = xor i64 %107, %106
  %109 = mul i64 %108, 1609587929392839161
  %110 = lshr i64 %109, 32
  %111 = xor i64 %110, %109
  br label %lookup_fallback.exit

112:                                              ; preds = %82
  %113 = icmp eq i64 %1, 0
  br i1 %113, label %152, label %114

114:                                              ; preds = %112
  tail call void @llvm.assume(i1 true)
  tail call void @llvm.assume(i1 true)
  %115 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %115)
  %116 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %116)
  %117 = load i8, ptr %0, align 1
  %118 = load i8, ptr %0, align 1
  %119 = getelementptr i8, ptr %0, i64 1
  %120 = getelementptr i8, ptr %119, i64 -1
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %117 to i64
  %123 = shl nuw nsw i64 %122, 16
  %124 = zext i8 %118 to i64
  %125 = shl nuw nsw i64 %124, 24
  %126 = or disjoint i64 %125, %123
  %127 = zext i8 %121 to i64
  %128 = or disjoint i64 %126, %127
  %129 = or disjoint i64 %128, 256
  %130 = load i32, ptr %2, align 1
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %132 = load i32, ptr %131, align 1
  %133 = xor i32 %132, %130
  %134 = zext i32 %133 to i64
  %135 = add i64 %3, %134
  %136 = xor i64 %135, %129
  %137 = lshr i64 %136, 33
  %138 = xor i64 %137, %136
  %139 = mul i64 %138, -4417276706812531889
  %140 = lshr i64 %139, 29
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, 1609587929392839161
  %143 = lshr i64 %142, 32
  %144 = xor i64 %143, %142
  %145 = icmp eq i64 %135, 2267503259
  %146 = and i8 %117, 127
  %147 = zext nneg i8 %146 to i32
  %148 = extractelement <128 x i64> <i64 -4302098779834749733, i64 -2220562881957146901, i64 -3894436733716799489, i64 1433843135270481901, i64 8336770163655280242, i64 -7881803417479397662, i64 -2941004127381733739, i64 5502495245947142431, i64 -2572398748971526355, i64 -2436064182340099334, i64 4055606894390288348, i64 5350621376133947991, i64 2765702133756617546, i64 -8493270429887581760, i64 -1160504230424452080, i64 5291143887273806931, i64 -1568241370979223514, i64 -929432383683428675, i64 3673450842886451206, i64 -2478423014181009900, i64 3622887472839136718, i64 1246929574567274891, i64 -1152736325583170325, i64 -3324533442079829058, i64 -8942773601077194801, i64 2970022284838843195, i64 7362585856034407022, i64 -4392082282584759128, i64 5225411942735301638, i64 -5450523663638814413, i64 3547770832784427690, i64 362675829607944414, i64 -282257845897087025, i64 6898188129916750362, i64 2844895380948538806, i64 7674606916920705344, i64 9214633253411488453, i64 6687772750457788192, i64 -4531365318336869402, i64 5344895949674194850, i64 -6675284198519149788, i64 2113974078481014280, i64 8777568547874204941, i64 -2169500560468987851, i64 3660690302424466814, i64 -2436525662347849866, i64 -6085909721859794221, i64 5134827694651168302, i64 1838281907459330133, i64 7335560060985733464, i64 -318164364674882796, i64 8296998437054084336, i64 -2123147046896566209, i64 -2388148047314387342, i64 -5375991149494515187, i64 499566431179015674, i64 7372184217170234346, i64 2897285734473052776, i64 -6620125947798625332, i64 4279659918279867487, i64 4800416899009875996, i64 -5931816708875844411, i64 6774495193030674564, i64 -8398597170076423925, i64 8529366458340265297, i64 -3398925928391953275, i64 8418202337400857587, i64 7020717050005586112, i64 -3761882330889119378, i64 -9149138593070727489, i64 8772769334003688095, i64 1743089132010364587, i64 3963873365795895589, i64 -4042618408496833961, i64 -3755880203185378672, i64 6190981343618133313, i64 8640948454356727894, i64 -681029911906337757, i64 1874492674255557078, i64 -461795147661551007, i64 5084905583549711826, i64 4488332001360539422, i64 3063753645715674379, i64 -8515971706312224628, i64 2347651011283115188, i64 7862244273078811554, i64 4741579133146630013, i64 -814247142782119327, i64 8169000404195870007, i64 -9066049001627982408, i64 2833837677914226691, i64 6041807101686622375, i64 -163413725005337946, i64 -2403499172613604551, i64 -7986631214068388042, i64 4575667007673887251, i64 -6871223553662405846, i64 -1817709641818812897, i64 6294355645245719615, i64 -8340629563394885605, i64 5041782483466037194, i64 -1880483337136747912, i64 3729356046086683290, i64 -6189662371905423721, i64 8090085636497697382, i64 3171146578797943502, i64 5619658110353354353, i64 -6259471935552714723, i64 -4607290929671566278, i64 -1112309911958824964, i64 -3771184802297902326, i64 -845068846880718549, i64 -4746542111220524153, i64 -992931083124165738, i64 -4793174741866312907, i64 -2974112083446677997, i64 8503709266395068717, i64 1000067187423537442, i64 -647344187112945900, i64 -5985590712037982679, i64 -1517593895512126191, i64 2822446240451570149, i64 6100083767409290672, i64 -4452813043723281122, i64 -3260576076044403503, i64 -5133358930729682568, i64 -1723256135048217232, i64 3032053336604930433>, i32 %147
  %149 = extractelement <128 x i64> <i64 7715946029497977153, i64 7756605422741824046, i64 6914152272366242186, i64 6619468546868266945, i64 8635048048508886888, i64 -8393880875905280995, i64 -6787559214576350429, i64 -2217171985210471049, i64 3604675824303396708, i64 -3512584283167155441, i64 2156514823987992107, i64 4907671418510825112, i64 8839569603083604159, i64 -6042468303600945730, i64 -3015502839406131913, i64 7156044269520408728, i64 -1508413522767866676, i64 1604089566654333, i64 7878720862229920401, i64 -3403495536095635901, i64 4419032860939710275, i64 8309667868945161700, i64 8127699344777264475, i64 3172741449153456871, i64 -7819243355710516001, i64 -1517632861945409470, i64 -4231347299287732713, i64 7537847041743724411, i64 -8574195954494672605, i64 8276179821638363100, i64 -2521175872576789404, i64 -6787734742961095628, i64 3141466977451366136, i64 6496874765145226399, i64 1397096103115942590, i64 -5230410147232611976, i64 -8713684776993538784, i64 4679852336830987527, i64 -4552607469369903036, i64 5281118663193865049, i64 -7809504173095293835, i64 -3494378936840174703, i64 -8283887544681711630, i64 -1982062835990977551, i64 7876639392340321016, i64 -776633854295803046, i64 -4449956841746897829, i64 6252822398696073730, i64 3653197155308211081, i64 4184123583517128355, i64 2710647065067127392, i64 1364275973376659154, i64 5735683338271654244, i64 4788098542079513072, i64 2523649311648287430, i64 6226703245439355973, i64 4039168641094241130, i64 -4735310071515049160, i64 -7718157997211796903, i64 -7630434519632171097, i64 6401440615517674288, i64 -1540227857295215434, i64 -6492234107044435804, i64 1076237601080914835, i64 371066729028084812, i64 2047781579520568252, i64 8981190644621376403, i64 -1270115072684319195, i64 -8955474670546817597, i64 1697060390969647966, i64 -1880780507307867236, i64 -5363681305219004548, i64 -1084662620876922617, i64 8607018531237843404, i64 -4794156784727077306, i64 6393061779462666445, i64 5666196083048816522, i64 6136724780979887393, i64 5191002144171421573, i64 3531887758758133993, i64 -4418833195103958582, i64 399445177739474421, i64 -1947046474972200432, i64 -3252035828561191092, i64 8996305336856613012, i64 6917241246617268645, i64 7998926962047337531, i64 -8446620120025011510, i64 -5280387490099738130, i64 564548736115642456, i64 -8404415521806172981, i64 3717577419720655258, i64 -5089905126141548364, i64 7521440301808993825, i64 -8814061795361718509, i64 -2714087517662472993, i64 2071800237030200399, i64 -4264588051788821739, i64 5286102316725614445, i64 699974702888830978, i64 -6198501953651059440, i64 5478601957838938672, i64 -8826379284296529914, i64 4117946310065826061, i64 2713743964583775612, i64 5235599403462674304, i64 -4570201113732268168, i64 888845016463753946, i64 -4356919662415120719, i64 2273280100835896876, i64 -3991362807574606833, i64 -4452897474114816089, i64 -3778735031010307814, i64 4461224383070578004, i64 -2508687673012358854, i64 519458947206652749, i64 -8279674986227810403, i64 4384594615491221824, i64 2225088360167913052, i64 -7273095038674136419, i64 -3679179631877543767, i64 5569617102229150198, i64 -8233578011895567121, i64 -826440576334536596, i64 -4492853642420687956, i64 -2325365741171985389, i64 7789395919978777827, i64 -2973241909731272914>, i32 %147
  %150 = icmp slt i8 %117, 0
  %stable.i.i.i = freeze i8 %117
  %safe.i.i.i = zext i8 %stable.i.i.i to i32
  %lookup.remap1.i = xor i32 %safe.i.i.i, 128
  switch i32 %lookup.remap1.i, label %case0.i.i.i [
    i32 129, label %case1.i.i.i
    i32 130, label %case2.i.i.i
    i32 131, label %case3.i.i.i
    i32 132, label %case4.i.i.i
    i32 133, label %case5.i.i.i
    i32 134, label %case6.i.i.i
    i32 135, label %case7.i.i.i
    i32 136, label %case8.i.i.i
    i32 137, label %case9.i.i.i
    i32 138, label %case10.i.i.i
    i32 139, label %case11.i.i.i
    i32 140, label %case12.i.i.i
    i32 141, label %case13.i.i.i
    i32 142, label %case14.i.i.i
    i32 143, label %case15.i.i.i
    i32 144, label %case16.i.i.i
    i32 145, label %case17.i.i.i
    i32 146, label %case18.i.i.i
    i32 147, label %case19.i.i.i
    i32 148, label %case20.i.i.i
    i32 149, label %case21.i.i.i
    i32 150, label %case22.i.i.i
    i32 151, label %case23.i.i.i
    i32 152, label %case24.i.i.i
    i32 153, label %case25.i.i.i
    i32 154, label %case26.i.i.i
    i32 155, label %case27.i.i.i
    i32 156, label %case28.i.i.i
    i32 157, label %case29.i.i.i
    i32 158, label %case30.i.i.i
    i32 159, label %case31.i.i.i
    i32 160, label %case32.i.i.i
    i32 161, label %case33.i.i.i
    i32 162, label %case34.i.i.i
    i32 163, label %case35.i.i.i
    i32 164, label %case36.i.i.i
    i32 165, label %case37.i.i.i
    i32 166, label %case38.i.i.i
    i32 167, label %case39.i.i.i
    i32 168, label %case40.i.i.i
    i32 169, label %case41.i.i.i
    i32 170, label %case42.i.i.i
    i32 171, label %case43.i.i.i
    i32 172, label %case44.i.i.i
    i32 173, label %case45.i.i.i
    i32 174, label %case46.i.i.i
    i32 175, label %case47.i.i.i
    i32 176, label %case48.i.i.i
    i32 177, label %case49.i.i.i
    i32 178, label %case50.i.i.i
    i32 179, label %case51.i.i.i
    i32 180, label %case52.i.i.i
    i32 181, label %case53.i.i.i
    i32 182, label %case54.i.i.i
    i32 183, label %case55.i.i.i
    i32 184, label %case56.i.i.i
    i32 185, label %case57.i.i.i
    i32 186, label %case58.i.i.i
    i32 187, label %case59.i.i.i
    i32 188, label %case60.i.i.i
    i32 189, label %case61.i.i.i
    i32 190, label %case62.i.i.i
    i32 191, label %case63.i.i.i
    i32 192, label %case64.i.i.i
    i32 193, label %case65.i.i.i
    i32 194, label %case66.i.i.i
    i32 195, label %case67.i.i.i
    i32 196, label %case68.i.i.i
    i32 197, label %case69.i.i.i
    i32 198, label %case70.i.i.i
    i32 199, label %case71.i.i.i
    i32 200, label %case72.i.i.i
    i32 201, label %case73.i.i.i
    i32 202, label %case74.i.i.i
    i32 203, label %case75.i.i.i
    i32 204, label %case76.i.i.i
    i32 205, label %case77.i.i.i
    i32 206, label %case78.i.i.i
    i32 207, label %case79.i.i.i
    i32 208, label %case80.i.i.i
    i32 209, label %case81.i.i.i
    i32 210, label %case82.i.i.i
    i32 211, label %case83.i.i.i
    i32 212, label %case84.i.i.i
    i32 213, label %case85.i.i.i
    i32 214, label %case86.i.i.i
    i32 215, label %case87.i.i.i
    i32 216, label %case88.i.i.i
    i32 217, label %case89.i.i.i
    i32 218, label %case90.i.i.i
    i32 219, label %case91.i.i.i
    i32 220, label %case92.i.i.i
    i32 221, label %case93.i.i.i
    i32 222, label %case94.i.i.i
    i32 223, label %case95.i.i.i
    i32 224, label %case96.i.i.i
    i32 225, label %case97.i.i.i
    i32 226, label %case98.i.i.i
    i32 227, label %case99.i.i.i
    i32 228, label %case100.i.i.i
    i32 229, label %case101.i.i.i
    i32 230, label %case102.i.i.i
    i32 231, label %case103.i.i.i
    i32 232, label %case104.i.i.i
    i32 233, label %case105.i.i.i
    i32 234, label %case106.i.i.i
    i32 235, label %case107.i.i.i
    i32 236, label %case108.i.i.i
    i32 237, label %case109.i.i.i
    i32 238, label %case110.i.i.i
    i32 239, label %case111.i.i.i
    i32 240, label %case112.i.i.i
    i32 241, label %case113.i.i.i
    i32 242, label %case114.i.i.i
    i32 243, label %case115.i.i.i
    i32 244, label %case116.i.i.i
    i32 245, label %case117.i.i.i
    i32 246, label %case118.i.i.i
    i32 247, label %case119.i.i.i
    i32 248, label %case120.i.i.i
    i32 249, label %case121.i.i.i
    i32 250, label %case122.i.i.i
    i32 251, label %case123.i.i.i
    i32 252, label %case124.i.i.i
    i32 253, label %case125.i.i.i
    i32 254, label %case126.i.i.i
    i32 255, label %case127.i.i.i
    i32 0, label %case128.i.i.i
    i32 1, label %case129.i.i.i
    i32 2, label %case130.i.i.i
    i32 3, label %case131.i.i.i
    i32 4, label %case132.i.i.i
    i32 5, label %case133.i.i.i
    i32 6, label %case134.i.i.i
    i32 7, label %case135.i.i.i
    i32 8, label %case136.i.i.i
    i32 9, label %case137.i.i.i
    i32 10, label %case138.i.i.i
    i32 11, label %case139.i.i.i
    i32 12, label %case140.i.i.i
    i32 13, label %case141.i.i.i
    i32 14, label %case142.i.i.i
    i32 15, label %case143.i.i.i
    i32 16, label %case144.i.i.i
    i32 17, label %case145.i.i.i
    i32 18, label %case146.i.i.i
    i32 19, label %case147.i.i.i
    i32 20, label %case148.i.i.i
    i32 21, label %case149.i.i.i
    i32 22, label %case150.i.i.i
    i32 23, label %case151.i.i.i
    i32 24, label %case152.i.i.i
    i32 25, label %case153.i.i.i
    i32 26, label %case154.i.i.i
    i32 27, label %case155.i.i.i
    i32 28, label %case156.i.i.i
    i32 29, label %case157.i.i.i
    i32 30, label %case158.i.i.i
    i32 31, label %case159.i.i.i
    i32 32, label %case160.i.i.i
    i32 33, label %case161.i.i.i
    i32 34, label %case162.i.i.i
    i32 35, label %case163.i.i.i
    i32 36, label %case164.i.i.i
    i32 37, label %case165.i.i.i
    i32 38, label %case166.i.i.i
    i32 39, label %case167.i.i.i
    i32 40, label %case168.i.i.i
    i32 41, label %case169.i.i.i
    i32 42, label %case170.i.i.i
    i32 43, label %case171.i.i.i
    i32 44, label %case172.i.i.i
    i32 45, label %case173.i.i.i
    i32 46, label %case174.i.i.i
    i32 47, label %case175.i.i.i
    i32 48, label %case176.i.i.i
    i32 49, label %case177.i.i.i
    i32 50, label %case178.i.i.i
    i32 51, label %case179.i.i.i
    i32 52, label %case180.i.i.i
    i32 53, label %case181.i.i.i
    i32 54, label %case182.i.i.i
    i32 55, label %case183.i.i.i
    i32 56, label %case184.i.i.i
    i32 57, label %case185.i.i.i
    i32 58, label %case186.i.i.i
    i32 59, label %case187.i.i.i
    i32 60, label %case188.i.i.i
    i32 61, label %case189.i.i.i
    i32 62, label %case190.i.i.i
    i32 63, label %case191.i.i.i
    i32 64, label %case192.i.i.i
    i32 65, label %case193.i.i.i
    i32 66, label %case194.i.i.i
    i32 67, label %case195.i.i.i
    i32 68, label %case196.i.i.i
    i32 69, label %case197.i.i.i
    i32 70, label %case198.i.i.i
    i32 71, label %case199.i.i.i
    i32 72, label %case200.i.i.i
    i32 73, label %case201.i.i.i
    i32 74, label %case202.i.i.i
    i32 75, label %case203.i.i.i
    i32 76, label %case204.i.i.i
    i32 77, label %case205.i.i.i
    i32 78, label %case206.i.i.i
    i32 79, label %case207.i.i.i
    i32 80, label %case208.i.i.i
    i32 81, label %case209.i.i.i
    i32 82, label %case210.i.i.i
    i32 83, label %case211.i.i.i
    i32 84, label %case212.i.i.i
    i32 85, label %case213.i.i.i
    i32 86, label %case214.i.i.i
    i32 87, label %case215.i.i.i
    i32 88, label %case216.i.i.i
    i32 89, label %case217.i.i.i
    i32 90, label %case218.i.i.i
    i32 91, label %case219.i.i.i
    i32 92, label %case220.i.i.i
    i32 93, label %case221.i.i.i
    i32 94, label %case222.i.i.i
    i32 95, label %case223.i.i.i
    i32 96, label %case224.i.i.i
    i32 97, label %case225.i.i.i
    i32 98, label %case226.i.i.i
    i32 99, label %case227.i.i.i
    i32 100, label %case228.i.i.i
    i32 101, label %case229.i.i.i
    i32 102, label %case230.i.i.i
    i32 103, label %case231.i.i.i
    i32 104, label %case232.i.i.i
    i32 105, label %case233.i.i.i
    i32 106, label %case234.i.i.i
    i32 107, label %case235.i.i.i
    i32 108, label %case236.i.i.i
    i32 109, label %case237.i.i.i
    i32 110, label %case238.i.i.i
    i32 111, label %case239.i.i.i
    i32 112, label %case240.i.i.i
    i32 113, label %case241.i.i.i
    i32 114, label %case242.i.i.i
    i32 115, label %case243.i.i.i
    i32 116, label %case244.i.i.i
    i32 117, label %case245.i.i.i
    i32 118, label %case246.i.i.i
    i32 119, label %case247.i.i.i
    i32 120, label %case248.i.i.i
    i32 121, label %case249.i.i.i
    i32 122, label %case250.i.i.i
    i32 123, label %case251.i.i.i
    i32 124, label %case252.i.i.i
    i32 125, label %case253.i.i.i
    i32 126, label %case254.i.i.i
    i32 127, label %case255.i.i.i
  ]

case0.i.i.i:                                      ; preds = %114
  br label %target_1to3.exit.i

case1.i.i.i:                                      ; preds = %114
  br label %target_1to3.exit.i

case2.i.i.i:                                      ; preds = %114
  br label %target_1to3.exit.i

case3.i.i.i:                                      ; preds = %114
  br label %target_1to3.exit.i

case4.i.i.i:                                      ; preds = %114
  br label %target_1to3.exit.i

case5.i.i.i:                                      ; preds = %114
  br label %target_1to3.exit.i

case6.i.i.i:                                      ; preds = %114
  br label %target_1to3.exit.i

case7.i.i.i:                                      ; preds = %114
  br label %target_1to3.exit.i

case8.i.i.i:                                      ; preds = %114
  br label %target_1to3.exit.i

case9.i.i.i:                                      ; preds = %114
  br label %target_1to3.exit.i

case10.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case11.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case12.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case13.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case14.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case15.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case16.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case17.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case18.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case19.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case20.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case21.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case22.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case23.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case24.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case25.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case26.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case27.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case28.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case29.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case30.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case31.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case32.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case33.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case34.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case35.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case36.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case37.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case38.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case39.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case40.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case41.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case42.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case43.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case44.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case45.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case46.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case47.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case48.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case49.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case50.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case51.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case52.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case53.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case54.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case55.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case56.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case57.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case58.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case59.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case60.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case61.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case62.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case63.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case64.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case65.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case66.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case67.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case68.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case69.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case70.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case71.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case72.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case73.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case74.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case75.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case76.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case77.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case78.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case79.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case80.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case81.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case82.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case83.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case84.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case85.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case86.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case87.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case88.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case89.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case90.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case91.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case92.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case93.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case94.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case95.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case96.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case97.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case98.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case99.i.i.i:                                     ; preds = %114
  br label %target_1to3.exit.i

case100.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case101.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case102.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case103.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case104.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case105.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case106.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case107.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case108.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case109.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case110.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case111.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case112.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case113.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case114.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case115.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case116.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case117.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case118.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case119.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case120.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case121.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case122.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case123.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case124.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case125.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case126.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case127.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case128.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case129.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case130.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case131.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case132.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case133.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case134.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case135.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case136.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case137.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case138.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case139.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case140.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case141.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case142.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case143.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case144.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case145.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case146.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case147.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case148.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case149.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case150.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case151.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case152.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case153.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case154.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case155.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case156.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case157.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case158.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case159.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case160.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case161.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case162.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case163.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case164.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case165.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case166.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case167.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case168.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case169.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case170.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case171.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case172.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case173.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case174.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case175.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case176.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case177.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case178.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case179.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case180.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case181.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case182.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case183.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case184.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case185.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case186.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case187.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case188.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case189.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case190.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case191.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case192.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case193.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case194.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case195.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case196.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case197.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case198.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case199.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case200.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case201.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case202.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case203.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case204.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case205.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case206.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case207.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case208.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case209.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case210.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case211.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case212.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case213.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case214.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case215.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case216.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case217.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case218.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case219.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case220.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case221.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case222.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case223.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case224.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case225.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case226.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case227.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case228.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case229.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case230.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case231.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case232.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case233.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case234.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case235.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case236.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case237.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case238.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case239.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case240.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case241.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case242.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case243.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case244.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case245.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case246.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case247.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case248.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case249.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case250.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case251.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case252.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case253.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case254.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

case255.i.i.i:                                    ; preds = %114
  br label %target_1to3.exit.i

target_1to3.exit.i:                               ; preds = %case255.i.i.i, %case254.i.i.i, %case253.i.i.i, %case252.i.i.i, %case251.i.i.i, %case250.i.i.i, %case249.i.i.i, %case248.i.i.i, %case247.i.i.i, %case246.i.i.i, %case245.i.i.i, %case244.i.i.i, %case243.i.i.i, %case242.i.i.i, %case241.i.i.i, %case240.i.i.i, %case239.i.i.i, %case238.i.i.i, %case237.i.i.i, %case236.i.i.i, %case235.i.i.i, %case234.i.i.i, %case233.i.i.i, %case232.i.i.i, %case231.i.i.i, %case230.i.i.i, %case229.i.i.i, %case228.i.i.i, %case227.i.i.i, %case226.i.i.i, %case225.i.i.i, %case224.i.i.i, %case223.i.i.i, %case222.i.i.i, %case221.i.i.i, %case220.i.i.i, %case219.i.i.i, %case218.i.i.i, %case217.i.i.i, %case216.i.i.i, %case215.i.i.i, %case214.i.i.i, %case213.i.i.i, %case212.i.i.i, %case211.i.i.i, %case210.i.i.i, %case209.i.i.i, %case208.i.i.i, %case207.i.i.i, %case206.i.i.i, %case205.i.i.i, %case204.i.i.i, %case203.i.i.i, %case202.i.i.i, %case201.i.i.i, %case200.i.i.i, %case199.i.i.i, %case198.i.i.i, %case197.i.i.i, %case196.i.i.i, %case195.i.i.i, %case194.i.i.i, %case193.i.i.i, %case192.i.i.i, %case191.i.i.i, %case190.i.i.i, %case189.i.i.i, %case188.i.i.i, %case187.i.i.i, %case186.i.i.i, %case185.i.i.i, %case184.i.i.i, %case183.i.i.i, %case182.i.i.i, %case181.i.i.i, %case180.i.i.i, %case179.i.i.i, %case178.i.i.i, %case177.i.i.i, %case176.i.i.i, %case175.i.i.i, %case174.i.i.i, %case173.i.i.i, %case172.i.i.i, %case171.i.i.i, %case170.i.i.i, %case169.i.i.i, %case168.i.i.i, %case167.i.i.i, %case166.i.i.i, %case165.i.i.i, %case164.i.i.i, %case163.i.i.i, %case162.i.i.i, %case161.i.i.i, %case160.i.i.i, %case159.i.i.i, %case158.i.i.i, %case157.i.i.i, %case156.i.i.i, %case155.i.i.i, %case154.i.i.i, %case153.i.i.i, %case152.i.i.i, %case151.i.i.i, %case150.i.i.i, %case149.i.i.i, %case148.i.i.i, %case147.i.i.i, %case146.i.i.i, %case145.i.i.i, %case144.i.i.i, %case143.i.i.i, %case142.i.i.i, %case141.i.i.i, %case140.i.i.i, %case139.i.i.i, %case138.i.i.i, %case137.i.i.i, %case136.i.i.i, %case135.i.i.i, %case134.i.i.i, %case133.i.i.i, %case132.i.i.i, %case131.i.i.i, %case130.i.i.i, %case129.i.i.i, %case128.i.i.i, %case127.i.i.i, %case126.i.i.i, %case125.i.i.i, %case124.i.i.i, %case123.i.i.i, %case122.i.i.i, %case121.i.i.i, %case120.i.i.i, %case119.i.i.i, %case118.i.i.i, %case117.i.i.i, %case116.i.i.i, %case115.i.i.i, %case114.i.i.i, %case113.i.i.i, %case112.i.i.i, %case111.i.i.i, %case110.i.i.i, %case109.i.i.i, %case108.i.i.i, %case107.i.i.i, %case106.i.i.i, %case105.i.i.i, %case104.i.i.i, %case103.i.i.i, %case102.i.i.i, %case101.i.i.i, %case100.i.i.i, %case99.i.i.i, %case98.i.i.i, %case97.i.i.i, %case96.i.i.i, %case95.i.i.i, %case94.i.i.i, %case93.i.i.i, %case92.i.i.i, %case91.i.i.i, %case90.i.i.i, %case89.i.i.i, %case88.i.i.i, %case87.i.i.i, %case86.i.i.i, %case85.i.i.i, %case84.i.i.i, %case83.i.i.i, %case82.i.i.i, %case81.i.i.i, %case80.i.i.i, %case79.i.i.i, %case78.i.i.i, %case77.i.i.i, %case76.i.i.i, %case75.i.i.i, %case74.i.i.i, %case73.i.i.i, %case72.i.i.i, %case71.i.i.i, %case70.i.i.i, %case69.i.i.i, %case68.i.i.i, %case67.i.i.i, %case66.i.i.i, %case65.i.i.i, %case64.i.i.i, %case63.i.i.i, %case62.i.i.i, %case61.i.i.i, %case60.i.i.i, %case59.i.i.i, %case58.i.i.i, %case57.i.i.i, %case56.i.i.i, %case55.i.i.i, %case54.i.i.i, %case53.i.i.i, %case52.i.i.i, %case51.i.i.i, %case50.i.i.i, %case49.i.i.i, %case48.i.i.i, %case47.i.i.i, %case46.i.i.i, %case45.i.i.i, %case44.i.i.i, %case43.i.i.i, %case42.i.i.i, %case41.i.i.i, %case40.i.i.i, %case39.i.i.i, %case38.i.i.i, %case37.i.i.i, %case36.i.i.i, %case35.i.i.i, %case34.i.i.i, %case33.i.i.i, %case32.i.i.i, %case31.i.i.i, %case30.i.i.i, %case29.i.i.i, %case28.i.i.i, %case27.i.i.i, %case26.i.i.i, %case25.i.i.i, %case24.i.i.i, %case23.i.i.i, %case22.i.i.i, %case21.i.i.i, %case20.i.i.i, %case19.i.i.i, %case18.i.i.i, %case17.i.i.i, %case16.i.i.i, %case15.i.i.i, %case14.i.i.i, %case13.i.i.i, %case12.i.i.i, %case11.i.i.i, %case10.i.i.i, %case9.i.i.i, %case8.i.i.i, %case7.i.i.i, %case6.i.i.i, %case5.i.i.i, %case4.i.i.i, %case3.i.i.i, %case2.i.i.i, %case1.i.i.i, %case0.i.i.i
  %value.i.i.i = phi i64 [ -4302098779834749733, %case0.i.i.i ], [ -2220562881957146901, %case1.i.i.i ], [ -3894436733716799489, %case2.i.i.i ], [ 1433843135270481901, %case3.i.i.i ], [ 8336770163655280242, %case4.i.i.i ], [ -7881803417479397662, %case5.i.i.i ], [ -2941004127381733739, %case6.i.i.i ], [ 5502495245947142431, %case7.i.i.i ], [ -2572398748971526355, %case8.i.i.i ], [ -2436064182340099334, %case9.i.i.i ], [ 4055606894390288348, %case10.i.i.i ], [ 5350621376133947991, %case11.i.i.i ], [ 2765702133756617546, %case12.i.i.i ], [ -8493270429887581760, %case13.i.i.i ], [ -1160504230424452080, %case14.i.i.i ], [ 5291143887273806931, %case15.i.i.i ], [ -1568241370979223514, %case16.i.i.i ], [ -929432383683428675, %case17.i.i.i ], [ 3673450842886451206, %case18.i.i.i ], [ -2478423014181009900, %case19.i.i.i ], [ 3622887472839136718, %case20.i.i.i ], [ 1246929574567274891, %case21.i.i.i ], [ -1152736325583170325, %case22.i.i.i ], [ -3324533442079829058, %case23.i.i.i ], [ -8942773601077194801, %case24.i.i.i ], [ 2970022284838843195, %case25.i.i.i ], [ 7362585856034407022, %case26.i.i.i ], [ -4392082282584759128, %case27.i.i.i ], [ 5225411942735301638, %case28.i.i.i ], [ -5450523663638814413, %case29.i.i.i ], [ 3547770832784427690, %case30.i.i.i ], [ 362675829607944414, %case31.i.i.i ], [ -282257845897087025, %case32.i.i.i ], [ 6898188129916750362, %case33.i.i.i ], [ 2844895380948538806, %case34.i.i.i ], [ 7674606916920705344, %case35.i.i.i ], [ 9214633253411488453, %case36.i.i.i ], [ 6687772750457788192, %case37.i.i.i ], [ -4531365318336869402, %case38.i.i.i ], [ 5344895949674194850, %case39.i.i.i ], [ -6675284198519149788, %case40.i.i.i ], [ 2113974078481014280, %case41.i.i.i ], [ 8777568547874204941, %case42.i.i.i ], [ -2169500560468987851, %case43.i.i.i ], [ 3660690302424466814, %case44.i.i.i ], [ -2436525662347849866, %case45.i.i.i ], [ -6085909721859794221, %case46.i.i.i ], [ 5134827694651168302, %case47.i.i.i ], [ 1838281907459330133, %case48.i.i.i ], [ 7335560060985733464, %case49.i.i.i ], [ -318164364674882796, %case50.i.i.i ], [ 8296998437054084336, %case51.i.i.i ], [ -2123147046896566209, %case52.i.i.i ], [ -2388148047314387342, %case53.i.i.i ], [ -5375991149494515187, %case54.i.i.i ], [ 499566431179015674, %case55.i.i.i ], [ 7372184217170234346, %case56.i.i.i ], [ 2897285734473052776, %case57.i.i.i ], [ -6620125947798625332, %case58.i.i.i ], [ 4279659918279867487, %case59.i.i.i ], [ 4800416899009875996, %case60.i.i.i ], [ -5931816708875844411, %case61.i.i.i ], [ 6774495193030674564, %case62.i.i.i ], [ -8398597170076423925, %case63.i.i.i ], [ 8529366458340265297, %case64.i.i.i ], [ -3398925928391953275, %case65.i.i.i ], [ 8418202337400857587, %case66.i.i.i ], [ 7020717050005586112, %case67.i.i.i ], [ -3761882330889119378, %case68.i.i.i ], [ -9149138593070727489, %case69.i.i.i ], [ 8772769334003688095, %case70.i.i.i ], [ 1743089132010364587, %case71.i.i.i ], [ 3963873365795895589, %case72.i.i.i ], [ -4042618408496833961, %case73.i.i.i ], [ -3755880203185378672, %case74.i.i.i ], [ 6190981343618133313, %case75.i.i.i ], [ 8640948454356727894, %case76.i.i.i ], [ -681029911906337757, %case77.i.i.i ], [ 1874492674255557078, %case78.i.i.i ], [ -461795147661551007, %case79.i.i.i ], [ 5084905583549711826, %case80.i.i.i ], [ 4488332001360539422, %case81.i.i.i ], [ 3063753645715674379, %case82.i.i.i ], [ -8515971706312224628, %case83.i.i.i ], [ 2347651011283115188, %case84.i.i.i ], [ 7862244273078811554, %case85.i.i.i ], [ 4741579133146630013, %case86.i.i.i ], [ -814247142782119327, %case87.i.i.i ], [ 8169000404195870007, %case88.i.i.i ], [ -9066049001627982408, %case89.i.i.i ], [ 2833837677914226691, %case90.i.i.i ], [ 6041807101686622375, %case91.i.i.i ], [ -163413725005337946, %case92.i.i.i ], [ -2403499172613604551, %case93.i.i.i ], [ -7986631214068388042, %case94.i.i.i ], [ 4575667007673887251, %case95.i.i.i ], [ -6871223553662405846, %case96.i.i.i ], [ -1817709641818812897, %case97.i.i.i ], [ 6294355645245719615, %case98.i.i.i ], [ -8340629563394885605, %case99.i.i.i ], [ 5041782483466037194, %case100.i.i.i ], [ -1880483337136747912, %case101.i.i.i ], [ 3729356046086683290, %case102.i.i.i ], [ -6189662371905423721, %case103.i.i.i ], [ 8090085636497697382, %case104.i.i.i ], [ 3171146578797943502, %case105.i.i.i ], [ 5619658110353354353, %case106.i.i.i ], [ -6259471935552714723, %case107.i.i.i ], [ -4607290929671566278, %case108.i.i.i ], [ -1112309911958824964, %case109.i.i.i ], [ -3771184802297902326, %case110.i.i.i ], [ -845068846880718549, %case111.i.i.i ], [ -4746542111220524153, %case112.i.i.i ], [ -992931083124165738, %case113.i.i.i ], [ -4793174741866312907, %case114.i.i.i ], [ -2974112083446677997, %case115.i.i.i ], [ 8503709266395068717, %case116.i.i.i ], [ 1000067187423537442, %case117.i.i.i ], [ -647344187112945900, %case118.i.i.i ], [ -5985590712037982679, %case119.i.i.i ], [ -1517593895512126191, %case120.i.i.i ], [ 2822446240451570149, %case121.i.i.i ], [ 6100083767409290672, %case122.i.i.i ], [ -4452813043723281122, %case123.i.i.i ], [ -3260576076044403503, %case124.i.i.i ], [ -5133358930729682568, %case125.i.i.i ], [ -1723256135048217232, %case126.i.i.i ], [ 3032053336604930433, %case127.i.i.i ], [ 7715946029497977153, %case128.i.i.i ], [ 7756605422741824046, %case129.i.i.i ], [ 6914152272366242186, %case130.i.i.i ], [ 6619468546868266945, %case131.i.i.i ], [ 8635048048508886888, %case132.i.i.i ], [ -8393880875905280995, %case133.i.i.i ], [ -6787559214576350429, %case134.i.i.i ], [ -2217171985210471049, %case135.i.i.i ], [ 3604675824303396708, %case136.i.i.i ], [ -3512584283167155441, %case137.i.i.i ], [ 2156514823987992107, %case138.i.i.i ], [ 4907671418510825112, %case139.i.i.i ], [ 8839569603083604159, %case140.i.i.i ], [ -6042468303600945730, %case141.i.i.i ], [ -3015502839406131913, %case142.i.i.i ], [ 7156044269520408728, %case143.i.i.i ], [ -1508413522767866676, %case144.i.i.i ], [ 1604089566654333, %case145.i.i.i ], [ 7878720862229920401, %case146.i.i.i ], [ -3403495536095635901, %case147.i.i.i ], [ 4419032860939710275, %case148.i.i.i ], [ 8309667868945161700, %case149.i.i.i ], [ 8127699344777264475, %case150.i.i.i ], [ 3172741449153456871, %case151.i.i.i ], [ -7819243355710516001, %case152.i.i.i ], [ -1517632861945409470, %case153.i.i.i ], [ -4231347299287732713, %case154.i.i.i ], [ 7537847041743724411, %case155.i.i.i ], [ -8574195954494672605, %case156.i.i.i ], [ 8276179821638363100, %case157.i.i.i ], [ -2521175872576789404, %case158.i.i.i ], [ -6787734742961095628, %case159.i.i.i ], [ 3141466977451366136, %case160.i.i.i ], [ 6496874765145226399, %case161.i.i.i ], [ 1397096103115942590, %case162.i.i.i ], [ -5230410147232611976, %case163.i.i.i ], [ -8713684776993538784, %case164.i.i.i ], [ 4679852336830987527, %case165.i.i.i ], [ -4552607469369903036, %case166.i.i.i ], [ 5281118663193865049, %case167.i.i.i ], [ -7809504173095293835, %case168.i.i.i ], [ -3494378936840174703, %case169.i.i.i ], [ -8283887544681711630, %case170.i.i.i ], [ -1982062835990977551, %case171.i.i.i ], [ 7876639392340321016, %case172.i.i.i ], [ -776633854295803046, %case173.i.i.i ], [ -4449956841746897829, %case174.i.i.i ], [ 6252822398696073730, %case175.i.i.i ], [ 3653197155308211081, %case176.i.i.i ], [ 4184123583517128355, %case177.i.i.i ], [ 2710647065067127392, %case178.i.i.i ], [ 1364275973376659154, %case179.i.i.i ], [ 5735683338271654244, %case180.i.i.i ], [ 4788098542079513072, %case181.i.i.i ], [ 2523649311648287430, %case182.i.i.i ], [ 6226703245439355973, %case183.i.i.i ], [ 4039168641094241130, %case184.i.i.i ], [ -4735310071515049160, %case185.i.i.i ], [ -7718157997211796903, %case186.i.i.i ], [ -7630434519632171097, %case187.i.i.i ], [ 6401440615517674288, %case188.i.i.i ], [ -1540227857295215434, %case189.i.i.i ], [ -6492234107044435804, %case190.i.i.i ], [ 1076237601080914835, %case191.i.i.i ], [ 371066729028084812, %case192.i.i.i ], [ 2047781579520568252, %case193.i.i.i ], [ 8981190644621376403, %case194.i.i.i ], [ -1270115072684319195, %case195.i.i.i ], [ -8955474670546817597, %case196.i.i.i ], [ 1697060390969647966, %case197.i.i.i ], [ -1880780507307867236, %case198.i.i.i ], [ -5363681305219004548, %case199.i.i.i ], [ -1084662620876922617, %case200.i.i.i ], [ 8607018531237843404, %case201.i.i.i ], [ -4794156784727077306, %case202.i.i.i ], [ 6393061779462666445, %case203.i.i.i ], [ 5666196083048816522, %case204.i.i.i ], [ 6136724780979887393, %case205.i.i.i ], [ 5191002144171421573, %case206.i.i.i ], [ 3531887758758133993, %case207.i.i.i ], [ -4418833195103958582, %case208.i.i.i ], [ 399445177739474421, %case209.i.i.i ], [ -1947046474972200432, %case210.i.i.i ], [ -3252035828561191092, %case211.i.i.i ], [ 8996305336856613012, %case212.i.i.i ], [ 6917241246617268645, %case213.i.i.i ], [ 7998926962047337531, %case214.i.i.i ], [ -8446620120025011510, %case215.i.i.i ], [ -5280387490099738130, %case216.i.i.i ], [ 564548736115642456, %case217.i.i.i ], [ -8404415521806172981, %case218.i.i.i ], [ 3717577419720655258, %case219.i.i.i ], [ -5089905126141548364, %case220.i.i.i ], [ 7521440301808993825, %case221.i.i.i ], [ -8814061795361718509, %case222.i.i.i ], [ -2714087517662472993, %case223.i.i.i ], [ 2071800237030200399, %case224.i.i.i ], [ -4264588051788821739, %case225.i.i.i ], [ 5286102316725614445, %case226.i.i.i ], [ 699974702888830978, %case227.i.i.i ], [ -6198501953651059440, %case228.i.i.i ], [ 5478601957838938672, %case229.i.i.i ], [ -8826379284296529914, %case230.i.i.i ], [ 4117946310065826061, %case231.i.i.i ], [ 2713743964583775612, %case232.i.i.i ], [ 5235599403462674304, %case233.i.i.i ], [ -4570201113732268168, %case234.i.i.i ], [ 888845016463753946, %case235.i.i.i ], [ -4356919662415120719, %case236.i.i.i ], [ 2273280100835896876, %case237.i.i.i ], [ -3991362807574606833, %case238.i.i.i ], [ -4452897474114816089, %case239.i.i.i ], [ -3778735031010307814, %case240.i.i.i ], [ 4461224383070578004, %case241.i.i.i ], [ -2508687673012358854, %case242.i.i.i ], [ 519458947206652749, %case243.i.i.i ], [ -8279674986227810403, %case244.i.i.i ], [ 4384594615491221824, %case245.i.i.i ], [ 2225088360167913052, %case246.i.i.i ], [ -7273095038674136419, %case247.i.i.i ], [ -3679179631877543767, %case248.i.i.i ], [ 5569617102229150198, %case249.i.i.i ], [ -8233578011895567121, %case250.i.i.i ], [ -826440576334536596, %case251.i.i.i ], [ -4492853642420687956, %case252.i.i.i ], [ -2325365741171985389, %case253.i.i.i ], [ 7789395919978777827, %case254.i.i.i ], [ -2973241909731272914, %case255.i.i.i ]
  %same.i.i.i = icmp eq i8 %117, %stable.i.i.i
  %low.byte.i.i.i = and i8 %117, 127
  %low.index.i.i.i = zext i8 %low.byte.i.i.i to i32
  %fallback.low.i.i.i = extractelement <128 x i64> <i64 -4302098779834749733, i64 -2220562881957146901, i64 -3894436733716799489, i64 1433843135270481901, i64 8336770163655280242, i64 -7881803417479397662, i64 -2941004127381733739, i64 5502495245947142431, i64 -2572398748971526355, i64 -2436064182340099334, i64 4055606894390288348, i64 5350621376133947991, i64 2765702133756617546, i64 -8493270429887581760, i64 -1160504230424452080, i64 5291143887273806931, i64 -1568241370979223514, i64 -929432383683428675, i64 3673450842886451206, i64 -2478423014181009900, i64 3622887472839136718, i64 1246929574567274891, i64 -1152736325583170325, i64 -3324533442079829058, i64 -8942773601077194801, i64 2970022284838843195, i64 7362585856034407022, i64 -4392082282584759128, i64 5225411942735301638, i64 -5450523663638814413, i64 3547770832784427690, i64 362675829607944414, i64 -282257845897087025, i64 6898188129916750362, i64 2844895380948538806, i64 7674606916920705344, i64 9214633253411488453, i64 6687772750457788192, i64 -4531365318336869402, i64 5344895949674194850, i64 -6675284198519149788, i64 2113974078481014280, i64 8777568547874204941, i64 -2169500560468987851, i64 3660690302424466814, i64 -2436525662347849866, i64 -6085909721859794221, i64 5134827694651168302, i64 1838281907459330133, i64 7335560060985733464, i64 -318164364674882796, i64 8296998437054084336, i64 -2123147046896566209, i64 -2388148047314387342, i64 -5375991149494515187, i64 499566431179015674, i64 7372184217170234346, i64 2897285734473052776, i64 -6620125947798625332, i64 4279659918279867487, i64 4800416899009875996, i64 -5931816708875844411, i64 6774495193030674564, i64 -8398597170076423925, i64 8529366458340265297, i64 -3398925928391953275, i64 8418202337400857587, i64 7020717050005586112, i64 -3761882330889119378, i64 -9149138593070727489, i64 8772769334003688095, i64 1743089132010364587, i64 3963873365795895589, i64 -4042618408496833961, i64 -3755880203185378672, i64 6190981343618133313, i64 8640948454356727894, i64 -681029911906337757, i64 1874492674255557078, i64 -461795147661551007, i64 5084905583549711826, i64 4488332001360539422, i64 3063753645715674379, i64 -8515971706312224628, i64 2347651011283115188, i64 7862244273078811554, i64 4741579133146630013, i64 -814247142782119327, i64 8169000404195870007, i64 -9066049001627982408, i64 2833837677914226691, i64 6041807101686622375, i64 -163413725005337946, i64 -2403499172613604551, i64 -7986631214068388042, i64 4575667007673887251, i64 -6871223553662405846, i64 -1817709641818812897, i64 6294355645245719615, i64 -8340629563394885605, i64 5041782483466037194, i64 -1880483337136747912, i64 3729356046086683290, i64 -6189662371905423721, i64 8090085636497697382, i64 3171146578797943502, i64 5619658110353354353, i64 -6259471935552714723, i64 -4607290929671566278, i64 -1112309911958824964, i64 -3771184802297902326, i64 -845068846880718549, i64 -4746542111220524153, i64 -992931083124165738, i64 -4793174741866312907, i64 -2974112083446677997, i64 8503709266395068717, i64 1000067187423537442, i64 -647344187112945900, i64 -5985590712037982679, i64 -1517593895512126191, i64 2822446240451570149, i64 6100083767409290672, i64 -4452813043723281122, i64 -3260576076044403503, i64 -5133358930729682568, i64 -1723256135048217232, i64 3032053336604930433>, i32 %low.index.i.i.i
  %fallback.high.i.i.i = extractelement <128 x i64> <i64 7715946029497977153, i64 7756605422741824046, i64 6914152272366242186, i64 6619468546868266945, i64 8635048048508886888, i64 -8393880875905280995, i64 -6787559214576350429, i64 -2217171985210471049, i64 3604675824303396708, i64 -3512584283167155441, i64 2156514823987992107, i64 4907671418510825112, i64 8839569603083604159, i64 -6042468303600945730, i64 -3015502839406131913, i64 7156044269520408728, i64 -1508413522767866676, i64 1604089566654333, i64 7878720862229920401, i64 -3403495536095635901, i64 4419032860939710275, i64 8309667868945161700, i64 8127699344777264475, i64 3172741449153456871, i64 -7819243355710516001, i64 -1517632861945409470, i64 -4231347299287732713, i64 7537847041743724411, i64 -8574195954494672605, i64 8276179821638363100, i64 -2521175872576789404, i64 -6787734742961095628, i64 3141466977451366136, i64 6496874765145226399, i64 1397096103115942590, i64 -5230410147232611976, i64 -8713684776993538784, i64 4679852336830987527, i64 -4552607469369903036, i64 5281118663193865049, i64 -7809504173095293835, i64 -3494378936840174703, i64 -8283887544681711630, i64 -1982062835990977551, i64 7876639392340321016, i64 -776633854295803046, i64 -4449956841746897829, i64 6252822398696073730, i64 3653197155308211081, i64 4184123583517128355, i64 2710647065067127392, i64 1364275973376659154, i64 5735683338271654244, i64 4788098542079513072, i64 2523649311648287430, i64 6226703245439355973, i64 4039168641094241130, i64 -4735310071515049160, i64 -7718157997211796903, i64 -7630434519632171097, i64 6401440615517674288, i64 -1540227857295215434, i64 -6492234107044435804, i64 1076237601080914835, i64 371066729028084812, i64 2047781579520568252, i64 8981190644621376403, i64 -1270115072684319195, i64 -8955474670546817597, i64 1697060390969647966, i64 -1880780507307867236, i64 -5363681305219004548, i64 -1084662620876922617, i64 8607018531237843404, i64 -4794156784727077306, i64 6393061779462666445, i64 5666196083048816522, i64 6136724780979887393, i64 5191002144171421573, i64 3531887758758133993, i64 -4418833195103958582, i64 399445177739474421, i64 -1947046474972200432, i64 -3252035828561191092, i64 8996305336856613012, i64 6917241246617268645, i64 7998926962047337531, i64 -8446620120025011510, i64 -5280387490099738130, i64 564548736115642456, i64 -8404415521806172981, i64 3717577419720655258, i64 -5089905126141548364, i64 7521440301808993825, i64 -8814061795361718509, i64 -2714087517662472993, i64 2071800237030200399, i64 -4264588051788821739, i64 5286102316725614445, i64 699974702888830978, i64 -6198501953651059440, i64 5478601957838938672, i64 -8826379284296529914, i64 4117946310065826061, i64 2713743964583775612, i64 5235599403462674304, i64 -4570201113732268168, i64 888845016463753946, i64 -4356919662415120719, i64 2273280100835896876, i64 -3991362807574606833, i64 -4452897474114816089, i64 -3778735031010307814, i64 4461224383070578004, i64 -2508687673012358854, i64 519458947206652749, i64 -8279674986227810403, i64 4384594615491221824, i64 2225088360167913052, i64 -7273095038674136419, i64 -3679179631877543767, i64 5569617102229150198, i64 -8233578011895567121, i64 -826440576334536596, i64 -4492853642420687956, i64 -2325365741171985389, i64 7789395919978777827, i64 -2973241909731272914>, i32 %low.index.i.i.i
  %high.bit.i.i.i = icmp slt i8 %117, 0
  %fallback.i.i.i = select i1 %high.bit.i.i.i, i64 %fallback.high.i.i.i, i64 %fallback.low.i.i.i
  %result.i.i.i = select i1 %same.i.i.i, i64 %value.i.i.i, i64 %fallback.i.i.i
  %151 = select i1 %145, i64 %result.i.i.i, i64 %144
  br label %lookup_fallback.exit

152:                                              ; preds = %112
  %153 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %154 = load i64, ptr %153, align 1
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %156 = load i64, ptr %155, align 1
  %157 = xor i64 %154, %156
  %158 = xor i64 %157, %3
  %159 = lshr i64 %158, 33
  %160 = xor i64 %159, %158
  %161 = mul i64 %160, -4417276706812531889
  %162 = lshr i64 %161, 29
  %163 = xor i64 %162, %161
  %164 = mul i64 %163, 1609587929392839161
  %165 = lshr i64 %164, 32
  %166 = xor i64 %165, %164
  br label %lookup_fallback.exit

lookup_fallback.exit:                             ; preds = %10, %48, %84, %target_1to3.exit.i, %152
  %167 = phi i64 [ %45, %10 ], [ %81, %48 ], [ %111, %84 ], [ %151, %target_1to3.exit.i ], [ %166, %152 ]
  br label %238

168:                                              ; preds = %4
  %169 = icmp samesign ult i64 %1, 9
  %170 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %170)
  %171 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %171)
  br i1 %169, label %172, label %204, !prof !5

172:                                              ; preds = %168
  %173 = trunc i64 %3 to i32
  %174 = tail call noundef i32 @llvm.bswap.i32(i32 %173)
  %175 = zext i32 %174 to i64
  %176 = shl nuw i64 %175, 32
  %177 = xor i64 %176, %3
  %178 = load i32, ptr %0, align 1
  %179 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %180 = getelementptr inbounds i8, ptr %179, i64 -4
  %181 = load i32, ptr %180, align 1
  %182 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %183 = load i64, ptr %182, align 1
  %184 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %185 = load i64, ptr %184, align 1
  %186 = xor i64 %185, %183
  %187 = sub i64 %186, %177
  %188 = zext i32 %181 to i64
  %189 = zext i32 %178 to i64
  %190 = shl nuw i64 %189, 32
  %191 = or disjoint i64 %190, %188
  %192 = xor i64 %187, %191
  %193 = tail call i64 @llvm.fshl.i64(i64 %192, i64 %192, i64 49)
  %194 = tail call i64 @llvm.fshl.i64(i64 %192, i64 %192, i64 24)
  %195 = xor i64 %193, %194
  %196 = xor i64 %195, %192
  %197 = mul i64 %196, -6939452855193903323
  %198 = lshr i64 %197, 35
  %199 = add nuw nsw i64 %198, %1
  %200 = xor i64 %199, %197
  %201 = mul i64 %200, -6939452855193903323
  %202 = lshr i64 %201, 28
  %203 = xor i64 %202, %201
  br label %238

204:                                              ; preds = %168
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %206 = load i64, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %208 = load i64, ptr %207, align 1
  %209 = xor i64 %208, %206
  %210 = add i64 %209, %3
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %212 = load i64, ptr %211, align 1
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %214 = load i64, ptr %213, align 1
  %215 = xor i64 %214, %212
  %216 = sub i64 %215, %3
  %217 = load i64, ptr %0, align 1
  %218 = xor i64 %217, %210
  %219 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %220 = getelementptr inbounds i8, ptr %219, i64 -8
  %221 = load i64, ptr %220, align 1
  %222 = xor i64 %221, %216
  %223 = tail call noundef i64 @llvm.bswap.i64(i64 %218)
  %224 = add i64 %223, %1
  %225 = add i64 %224, %222
  %226 = zext i64 %218 to i128
  %227 = zext i64 %222 to i128
  %228 = mul nuw i128 %227, %226
  %229 = lshr i128 %228, 64
  %230 = xor i128 %229, %228
  %231 = trunc i128 %230 to i64
  %232 = add i64 %225, %231
  %233 = lshr i64 %232, 37
  %234 = xor i64 %233, %232
  %235 = mul i64 %234, 1609587791953885689
  %236 = lshr i64 %235, 32
  %237 = xor i64 %236, %235
  br label %238

238:                                              ; preds = %204, %172, %lookup_fallback.exit
  %239 = phi i64 [ %167, %lookup_fallback.exit ], [ %203, %172 ], [ %237, %204 ]
  ret i64 %239
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: alwaysinline nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local i64 @target_1to3(ptr noundef readonly %0, i64 noundef %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #3 {
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
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = icmp eq i64 %30, 2267503259
  %43 = and i8 %9, 127
  %44 = zext nneg i8 %43 to i32
  %45 = extractelement <128 x i64> <i64 -4302098779834749733, i64 -2220562881957146901, i64 -3894436733716799489, i64 1433843135270481901, i64 8336770163655280242, i64 -7881803417479397662, i64 -2941004127381733739, i64 5502495245947142431, i64 -2572398748971526355, i64 -2436064182340099334, i64 4055606894390288348, i64 5350621376133947991, i64 2765702133756617546, i64 -8493270429887581760, i64 -1160504230424452080, i64 5291143887273806931, i64 -1568241370979223514, i64 -929432383683428675, i64 3673450842886451206, i64 -2478423014181009900, i64 3622887472839136718, i64 1246929574567274891, i64 -1152736325583170325, i64 -3324533442079829058, i64 -8942773601077194801, i64 2970022284838843195, i64 7362585856034407022, i64 -4392082282584759128, i64 5225411942735301638, i64 -5450523663638814413, i64 3547770832784427690, i64 362675829607944414, i64 -282257845897087025, i64 6898188129916750362, i64 2844895380948538806, i64 7674606916920705344, i64 9214633253411488453, i64 6687772750457788192, i64 -4531365318336869402, i64 5344895949674194850, i64 -6675284198519149788, i64 2113974078481014280, i64 8777568547874204941, i64 -2169500560468987851, i64 3660690302424466814, i64 -2436525662347849866, i64 -6085909721859794221, i64 5134827694651168302, i64 1838281907459330133, i64 7335560060985733464, i64 -318164364674882796, i64 8296998437054084336, i64 -2123147046896566209, i64 -2388148047314387342, i64 -5375991149494515187, i64 499566431179015674, i64 7372184217170234346, i64 2897285734473052776, i64 -6620125947798625332, i64 4279659918279867487, i64 4800416899009875996, i64 -5931816708875844411, i64 6774495193030674564, i64 -8398597170076423925, i64 8529366458340265297, i64 -3398925928391953275, i64 8418202337400857587, i64 7020717050005586112, i64 -3761882330889119378, i64 -9149138593070727489, i64 8772769334003688095, i64 1743089132010364587, i64 3963873365795895589, i64 -4042618408496833961, i64 -3755880203185378672, i64 6190981343618133313, i64 8640948454356727894, i64 -681029911906337757, i64 1874492674255557078, i64 -461795147661551007, i64 5084905583549711826, i64 4488332001360539422, i64 3063753645715674379, i64 -8515971706312224628, i64 2347651011283115188, i64 7862244273078811554, i64 4741579133146630013, i64 -814247142782119327, i64 8169000404195870007, i64 -9066049001627982408, i64 2833837677914226691, i64 6041807101686622375, i64 -163413725005337946, i64 -2403499172613604551, i64 -7986631214068388042, i64 4575667007673887251, i64 -6871223553662405846, i64 -1817709641818812897, i64 6294355645245719615, i64 -8340629563394885605, i64 5041782483466037194, i64 -1880483337136747912, i64 3729356046086683290, i64 -6189662371905423721, i64 8090085636497697382, i64 3171146578797943502, i64 5619658110353354353, i64 -6259471935552714723, i64 -4607290929671566278, i64 -1112309911958824964, i64 -3771184802297902326, i64 -845068846880718549, i64 -4746542111220524153, i64 -992931083124165738, i64 -4793174741866312907, i64 -2974112083446677997, i64 8503709266395068717, i64 1000067187423537442, i64 -647344187112945900, i64 -5985590712037982679, i64 -1517593895512126191, i64 2822446240451570149, i64 6100083767409290672, i64 -4452813043723281122, i64 -3260576076044403503, i64 -5133358930729682568, i64 -1723256135048217232, i64 3032053336604930433>, i32 %44
  %46 = extractelement <128 x i64> <i64 7715946029497977153, i64 7756605422741824046, i64 6914152272366242186, i64 6619468546868266945, i64 8635048048508886888, i64 -8393880875905280995, i64 -6787559214576350429, i64 -2217171985210471049, i64 3604675824303396708, i64 -3512584283167155441, i64 2156514823987992107, i64 4907671418510825112, i64 8839569603083604159, i64 -6042468303600945730, i64 -3015502839406131913, i64 7156044269520408728, i64 -1508413522767866676, i64 1604089566654333, i64 7878720862229920401, i64 -3403495536095635901, i64 4419032860939710275, i64 8309667868945161700, i64 8127699344777264475, i64 3172741449153456871, i64 -7819243355710516001, i64 -1517632861945409470, i64 -4231347299287732713, i64 7537847041743724411, i64 -8574195954494672605, i64 8276179821638363100, i64 -2521175872576789404, i64 -6787734742961095628, i64 3141466977451366136, i64 6496874765145226399, i64 1397096103115942590, i64 -5230410147232611976, i64 -8713684776993538784, i64 4679852336830987527, i64 -4552607469369903036, i64 5281118663193865049, i64 -7809504173095293835, i64 -3494378936840174703, i64 -8283887544681711630, i64 -1982062835990977551, i64 7876639392340321016, i64 -776633854295803046, i64 -4449956841746897829, i64 6252822398696073730, i64 3653197155308211081, i64 4184123583517128355, i64 2710647065067127392, i64 1364275973376659154, i64 5735683338271654244, i64 4788098542079513072, i64 2523649311648287430, i64 6226703245439355973, i64 4039168641094241130, i64 -4735310071515049160, i64 -7718157997211796903, i64 -7630434519632171097, i64 6401440615517674288, i64 -1540227857295215434, i64 -6492234107044435804, i64 1076237601080914835, i64 371066729028084812, i64 2047781579520568252, i64 8981190644621376403, i64 -1270115072684319195, i64 -8955474670546817597, i64 1697060390969647966, i64 -1880780507307867236, i64 -5363681305219004548, i64 -1084662620876922617, i64 8607018531237843404, i64 -4794156784727077306, i64 6393061779462666445, i64 5666196083048816522, i64 6136724780979887393, i64 5191002144171421573, i64 3531887758758133993, i64 -4418833195103958582, i64 399445177739474421, i64 -1947046474972200432, i64 -3252035828561191092, i64 8996305336856613012, i64 6917241246617268645, i64 7998926962047337531, i64 -8446620120025011510, i64 -5280387490099738130, i64 564548736115642456, i64 -8404415521806172981, i64 3717577419720655258, i64 -5089905126141548364, i64 7521440301808993825, i64 -8814061795361718509, i64 -2714087517662472993, i64 2071800237030200399, i64 -4264588051788821739, i64 5286102316725614445, i64 699974702888830978, i64 -6198501953651059440, i64 5478601957838938672, i64 -8826379284296529914, i64 4117946310065826061, i64 2713743964583775612, i64 5235599403462674304, i64 -4570201113732268168, i64 888845016463753946, i64 -4356919662415120719, i64 2273280100835896876, i64 -3991362807574606833, i64 -4452897474114816089, i64 -3778735031010307814, i64 4461224383070578004, i64 -2508687673012358854, i64 519458947206652749, i64 -8279674986227810403, i64 4384594615491221824, i64 2225088360167913052, i64 -7273095038674136419, i64 -3679179631877543767, i64 5569617102229150198, i64 -8233578011895567121, i64 -826440576334536596, i64 -4492853642420687956, i64 -2325365741171985389, i64 7789395919978777827, i64 -2973241909731272914>, i32 %44
  %47 = icmp slt i8 %9, 0
  %stable.i = freeze i8 %9
  %safe.i = zext i8 %stable.i to i32
  %lookup.remap2 = xor i32 %safe.i, 128
  switch i32 %lookup.remap2, label %case0.i [
    i32 129, label %case1.i
    i32 130, label %case2.i
    i32 131, label %case3.i
    i32 132, label %case4.i
    i32 133, label %case5.i
    i32 134, label %case6.i
    i32 135, label %case7.i
    i32 136, label %case8.i
    i32 137, label %case9.i
    i32 138, label %case10.i
    i32 139, label %case11.i
    i32 140, label %case12.i
    i32 141, label %case13.i
    i32 142, label %case14.i
    i32 143, label %case15.i
    i32 144, label %case16.i
    i32 145, label %case17.i
    i32 146, label %case18.i
    i32 147, label %case19.i
    i32 148, label %case20.i
    i32 149, label %case21.i
    i32 150, label %case22.i
    i32 151, label %case23.i
    i32 152, label %case24.i
    i32 153, label %case25.i
    i32 154, label %case26.i
    i32 155, label %case27.i
    i32 156, label %case28.i
    i32 157, label %case29.i
    i32 158, label %case30.i
    i32 159, label %case31.i
    i32 160, label %case32.i
    i32 161, label %case33.i
    i32 162, label %case34.i
    i32 163, label %case35.i
    i32 164, label %case36.i
    i32 165, label %case37.i
    i32 166, label %case38.i
    i32 167, label %case39.i
    i32 168, label %case40.i
    i32 169, label %case41.i
    i32 170, label %case42.i
    i32 171, label %case43.i
    i32 172, label %case44.i
    i32 173, label %case45.i
    i32 174, label %case46.i
    i32 175, label %case47.i
    i32 176, label %case48.i
    i32 177, label %case49.i
    i32 178, label %case50.i
    i32 179, label %case51.i
    i32 180, label %case52.i
    i32 181, label %case53.i
    i32 182, label %case54.i
    i32 183, label %case55.i
    i32 184, label %case56.i
    i32 185, label %case57.i
    i32 186, label %case58.i
    i32 187, label %case59.i
    i32 188, label %case60.i
    i32 189, label %case61.i
    i32 190, label %case62.i
    i32 191, label %case63.i
    i32 192, label %case64.i
    i32 193, label %case65.i
    i32 194, label %case66.i
    i32 195, label %case67.i
    i32 196, label %case68.i
    i32 197, label %case69.i
    i32 198, label %case70.i
    i32 199, label %case71.i
    i32 200, label %case72.i
    i32 201, label %case73.i
    i32 202, label %case74.i
    i32 203, label %case75.i
    i32 204, label %case76.i
    i32 205, label %case77.i
    i32 206, label %case78.i
    i32 207, label %case79.i
    i32 208, label %case80.i
    i32 209, label %case81.i
    i32 210, label %case82.i
    i32 211, label %case83.i
    i32 212, label %case84.i
    i32 213, label %case85.i
    i32 214, label %case86.i
    i32 215, label %case87.i
    i32 216, label %case88.i
    i32 217, label %case89.i
    i32 218, label %case90.i
    i32 219, label %case91.i
    i32 220, label %case92.i
    i32 221, label %case93.i
    i32 222, label %case94.i
    i32 223, label %case95.i
    i32 224, label %case96.i
    i32 225, label %case97.i
    i32 226, label %case98.i
    i32 227, label %case99.i
    i32 228, label %case100.i
    i32 229, label %case101.i
    i32 230, label %case102.i
    i32 231, label %case103.i
    i32 232, label %case104.i
    i32 233, label %case105.i
    i32 234, label %case106.i
    i32 235, label %case107.i
    i32 236, label %case108.i
    i32 237, label %case109.i
    i32 238, label %case110.i
    i32 239, label %case111.i
    i32 240, label %case112.i
    i32 241, label %case113.i
    i32 242, label %case114.i
    i32 243, label %case115.i
    i32 244, label %case116.i
    i32 245, label %case117.i
    i32 246, label %case118.i
    i32 247, label %case119.i
    i32 248, label %case120.i
    i32 249, label %case121.i
    i32 250, label %case122.i
    i32 251, label %case123.i
    i32 252, label %case124.i
    i32 253, label %case125.i
    i32 254, label %case126.i
    i32 255, label %case127.i
    i32 0, label %case128.i
    i32 1, label %case129.i
    i32 2, label %case130.i
    i32 3, label %case131.i
    i32 4, label %case132.i
    i32 5, label %case133.i
    i32 6, label %case134.i
    i32 7, label %case135.i
    i32 8, label %case136.i
    i32 9, label %case137.i
    i32 10, label %case138.i
    i32 11, label %case139.i
    i32 12, label %case140.i
    i32 13, label %case141.i
    i32 14, label %case142.i
    i32 15, label %case143.i
    i32 16, label %case144.i
    i32 17, label %case145.i
    i32 18, label %case146.i
    i32 19, label %case147.i
    i32 20, label %case148.i
    i32 21, label %case149.i
    i32 22, label %case150.i
    i32 23, label %case151.i
    i32 24, label %case152.i
    i32 25, label %case153.i
    i32 26, label %case154.i
    i32 27, label %case155.i
    i32 28, label %case156.i
    i32 29, label %case157.i
    i32 30, label %case158.i
    i32 31, label %case159.i
    i32 32, label %case160.i
    i32 33, label %case161.i
    i32 34, label %case162.i
    i32 35, label %case163.i
    i32 36, label %case164.i
    i32 37, label %case165.i
    i32 38, label %case166.i
    i32 39, label %case167.i
    i32 40, label %case168.i
    i32 41, label %case169.i
    i32 42, label %case170.i
    i32 43, label %case171.i
    i32 44, label %case172.i
    i32 45, label %case173.i
    i32 46, label %case174.i
    i32 47, label %case175.i
    i32 48, label %case176.i
    i32 49, label %case177.i
    i32 50, label %case178.i
    i32 51, label %case179.i
    i32 52, label %case180.i
    i32 53, label %case181.i
    i32 54, label %case182.i
    i32 55, label %case183.i
    i32 56, label %case184.i
    i32 57, label %case185.i
    i32 58, label %case186.i
    i32 59, label %case187.i
    i32 60, label %case188.i
    i32 61, label %case189.i
    i32 62, label %case190.i
    i32 63, label %case191.i
    i32 64, label %case192.i
    i32 65, label %case193.i
    i32 66, label %case194.i
    i32 67, label %case195.i
    i32 68, label %case196.i
    i32 69, label %case197.i
    i32 70, label %case198.i
    i32 71, label %case199.i
    i32 72, label %case200.i
    i32 73, label %case201.i
    i32 74, label %case202.i
    i32 75, label %case203.i
    i32 76, label %case204.i
    i32 77, label %case205.i
    i32 78, label %case206.i
    i32 79, label %case207.i
    i32 80, label %case208.i
    i32 81, label %case209.i
    i32 82, label %case210.i
    i32 83, label %case211.i
    i32 84, label %case212.i
    i32 85, label %case213.i
    i32 86, label %case214.i
    i32 87, label %case215.i
    i32 88, label %case216.i
    i32 89, label %case217.i
    i32 90, label %case218.i
    i32 91, label %case219.i
    i32 92, label %case220.i
    i32 93, label %case221.i
    i32 94, label %case222.i
    i32 95, label %case223.i
    i32 96, label %case224.i
    i32 97, label %case225.i
    i32 98, label %case226.i
    i32 99, label %case227.i
    i32 100, label %case228.i
    i32 101, label %case229.i
    i32 102, label %case230.i
    i32 103, label %case231.i
    i32 104, label %case232.i
    i32 105, label %case233.i
    i32 106, label %case234.i
    i32 107, label %case235.i
    i32 108, label %case236.i
    i32 109, label %case237.i
    i32 110, label %case238.i
    i32 111, label %case239.i
    i32 112, label %case240.i
    i32 113, label %case241.i
    i32 114, label %case242.i
    i32 115, label %case243.i
    i32 116, label %case244.i
    i32 117, label %case245.i
    i32 118, label %case246.i
    i32 119, label %case247.i
    i32 120, label %case248.i
    i32 121, label %case249.i
    i32 122, label %case250.i
    i32 123, label %case251.i
    i32 124, label %case252.i
    i32 125, label %case253.i
    i32 126, label %case254.i
    i32 127, label %case255.i
  ]

case0.i:                                          ; preds = %41
  br label %lookup_combined.exit

case1.i:                                          ; preds = %41
  br label %lookup_combined.exit

case2.i:                                          ; preds = %41
  br label %lookup_combined.exit

case3.i:                                          ; preds = %41
  br label %lookup_combined.exit

case4.i:                                          ; preds = %41
  br label %lookup_combined.exit

case5.i:                                          ; preds = %41
  br label %lookup_combined.exit

case6.i:                                          ; preds = %41
  br label %lookup_combined.exit

case7.i:                                          ; preds = %41
  br label %lookup_combined.exit

case8.i:                                          ; preds = %41
  br label %lookup_combined.exit

case9.i:                                          ; preds = %41
  br label %lookup_combined.exit

case10.i:                                         ; preds = %41
  br label %lookup_combined.exit

case11.i:                                         ; preds = %41
  br label %lookup_combined.exit

case12.i:                                         ; preds = %41
  br label %lookup_combined.exit

case13.i:                                         ; preds = %41
  br label %lookup_combined.exit

case14.i:                                         ; preds = %41
  br label %lookup_combined.exit

case15.i:                                         ; preds = %41
  br label %lookup_combined.exit

case16.i:                                         ; preds = %41
  br label %lookup_combined.exit

case17.i:                                         ; preds = %41
  br label %lookup_combined.exit

case18.i:                                         ; preds = %41
  br label %lookup_combined.exit

case19.i:                                         ; preds = %41
  br label %lookup_combined.exit

case20.i:                                         ; preds = %41
  br label %lookup_combined.exit

case21.i:                                         ; preds = %41
  br label %lookup_combined.exit

case22.i:                                         ; preds = %41
  br label %lookup_combined.exit

case23.i:                                         ; preds = %41
  br label %lookup_combined.exit

case24.i:                                         ; preds = %41
  br label %lookup_combined.exit

case25.i:                                         ; preds = %41
  br label %lookup_combined.exit

case26.i:                                         ; preds = %41
  br label %lookup_combined.exit

case27.i:                                         ; preds = %41
  br label %lookup_combined.exit

case28.i:                                         ; preds = %41
  br label %lookup_combined.exit

case29.i:                                         ; preds = %41
  br label %lookup_combined.exit

case30.i:                                         ; preds = %41
  br label %lookup_combined.exit

case31.i:                                         ; preds = %41
  br label %lookup_combined.exit

case32.i:                                         ; preds = %41
  br label %lookup_combined.exit

case33.i:                                         ; preds = %41
  br label %lookup_combined.exit

case34.i:                                         ; preds = %41
  br label %lookup_combined.exit

case35.i:                                         ; preds = %41
  br label %lookup_combined.exit

case36.i:                                         ; preds = %41
  br label %lookup_combined.exit

case37.i:                                         ; preds = %41
  br label %lookup_combined.exit

case38.i:                                         ; preds = %41
  br label %lookup_combined.exit

case39.i:                                         ; preds = %41
  br label %lookup_combined.exit

case40.i:                                         ; preds = %41
  br label %lookup_combined.exit

case41.i:                                         ; preds = %41
  br label %lookup_combined.exit

case42.i:                                         ; preds = %41
  br label %lookup_combined.exit

case43.i:                                         ; preds = %41
  br label %lookup_combined.exit

case44.i:                                         ; preds = %41
  br label %lookup_combined.exit

case45.i:                                         ; preds = %41
  br label %lookup_combined.exit

case46.i:                                         ; preds = %41
  br label %lookup_combined.exit

case47.i:                                         ; preds = %41
  br label %lookup_combined.exit

case48.i:                                         ; preds = %41
  br label %lookup_combined.exit

case49.i:                                         ; preds = %41
  br label %lookup_combined.exit

case50.i:                                         ; preds = %41
  br label %lookup_combined.exit

case51.i:                                         ; preds = %41
  br label %lookup_combined.exit

case52.i:                                         ; preds = %41
  br label %lookup_combined.exit

case53.i:                                         ; preds = %41
  br label %lookup_combined.exit

case54.i:                                         ; preds = %41
  br label %lookup_combined.exit

case55.i:                                         ; preds = %41
  br label %lookup_combined.exit

case56.i:                                         ; preds = %41
  br label %lookup_combined.exit

case57.i:                                         ; preds = %41
  br label %lookup_combined.exit

case58.i:                                         ; preds = %41
  br label %lookup_combined.exit

case59.i:                                         ; preds = %41
  br label %lookup_combined.exit

case60.i:                                         ; preds = %41
  br label %lookup_combined.exit

case61.i:                                         ; preds = %41
  br label %lookup_combined.exit

case62.i:                                         ; preds = %41
  br label %lookup_combined.exit

case63.i:                                         ; preds = %41
  br label %lookup_combined.exit

case64.i:                                         ; preds = %41
  br label %lookup_combined.exit

case65.i:                                         ; preds = %41
  br label %lookup_combined.exit

case66.i:                                         ; preds = %41
  br label %lookup_combined.exit

case67.i:                                         ; preds = %41
  br label %lookup_combined.exit

case68.i:                                         ; preds = %41
  br label %lookup_combined.exit

case69.i:                                         ; preds = %41
  br label %lookup_combined.exit

case70.i:                                         ; preds = %41
  br label %lookup_combined.exit

case71.i:                                         ; preds = %41
  br label %lookup_combined.exit

case72.i:                                         ; preds = %41
  br label %lookup_combined.exit

case73.i:                                         ; preds = %41
  br label %lookup_combined.exit

case74.i:                                         ; preds = %41
  br label %lookup_combined.exit

case75.i:                                         ; preds = %41
  br label %lookup_combined.exit

case76.i:                                         ; preds = %41
  br label %lookup_combined.exit

case77.i:                                         ; preds = %41
  br label %lookup_combined.exit

case78.i:                                         ; preds = %41
  br label %lookup_combined.exit

case79.i:                                         ; preds = %41
  br label %lookup_combined.exit

case80.i:                                         ; preds = %41
  br label %lookup_combined.exit

case81.i:                                         ; preds = %41
  br label %lookup_combined.exit

case82.i:                                         ; preds = %41
  br label %lookup_combined.exit

case83.i:                                         ; preds = %41
  br label %lookup_combined.exit

case84.i:                                         ; preds = %41
  br label %lookup_combined.exit

case85.i:                                         ; preds = %41
  br label %lookup_combined.exit

case86.i:                                         ; preds = %41
  br label %lookup_combined.exit

case87.i:                                         ; preds = %41
  br label %lookup_combined.exit

case88.i:                                         ; preds = %41
  br label %lookup_combined.exit

case89.i:                                         ; preds = %41
  br label %lookup_combined.exit

case90.i:                                         ; preds = %41
  br label %lookup_combined.exit

case91.i:                                         ; preds = %41
  br label %lookup_combined.exit

case92.i:                                         ; preds = %41
  br label %lookup_combined.exit

case93.i:                                         ; preds = %41
  br label %lookup_combined.exit

case94.i:                                         ; preds = %41
  br label %lookup_combined.exit

case95.i:                                         ; preds = %41
  br label %lookup_combined.exit

case96.i:                                         ; preds = %41
  br label %lookup_combined.exit

case97.i:                                         ; preds = %41
  br label %lookup_combined.exit

case98.i:                                         ; preds = %41
  br label %lookup_combined.exit

case99.i:                                         ; preds = %41
  br label %lookup_combined.exit

case100.i:                                        ; preds = %41
  br label %lookup_combined.exit

case101.i:                                        ; preds = %41
  br label %lookup_combined.exit

case102.i:                                        ; preds = %41
  br label %lookup_combined.exit

case103.i:                                        ; preds = %41
  br label %lookup_combined.exit

case104.i:                                        ; preds = %41
  br label %lookup_combined.exit

case105.i:                                        ; preds = %41
  br label %lookup_combined.exit

case106.i:                                        ; preds = %41
  br label %lookup_combined.exit

case107.i:                                        ; preds = %41
  br label %lookup_combined.exit

case108.i:                                        ; preds = %41
  br label %lookup_combined.exit

case109.i:                                        ; preds = %41
  br label %lookup_combined.exit

case110.i:                                        ; preds = %41
  br label %lookup_combined.exit

case111.i:                                        ; preds = %41
  br label %lookup_combined.exit

case112.i:                                        ; preds = %41
  br label %lookup_combined.exit

case113.i:                                        ; preds = %41
  br label %lookup_combined.exit

case114.i:                                        ; preds = %41
  br label %lookup_combined.exit

case115.i:                                        ; preds = %41
  br label %lookup_combined.exit

case116.i:                                        ; preds = %41
  br label %lookup_combined.exit

case117.i:                                        ; preds = %41
  br label %lookup_combined.exit

case118.i:                                        ; preds = %41
  br label %lookup_combined.exit

case119.i:                                        ; preds = %41
  br label %lookup_combined.exit

case120.i:                                        ; preds = %41
  br label %lookup_combined.exit

case121.i:                                        ; preds = %41
  br label %lookup_combined.exit

case122.i:                                        ; preds = %41
  br label %lookup_combined.exit

case123.i:                                        ; preds = %41
  br label %lookup_combined.exit

case124.i:                                        ; preds = %41
  br label %lookup_combined.exit

case125.i:                                        ; preds = %41
  br label %lookup_combined.exit

case126.i:                                        ; preds = %41
  br label %lookup_combined.exit

case127.i:                                        ; preds = %41
  br label %lookup_combined.exit

case128.i:                                        ; preds = %41
  br label %lookup_combined.exit

case129.i:                                        ; preds = %41
  br label %lookup_combined.exit

case130.i:                                        ; preds = %41
  br label %lookup_combined.exit

case131.i:                                        ; preds = %41
  br label %lookup_combined.exit

case132.i:                                        ; preds = %41
  br label %lookup_combined.exit

case133.i:                                        ; preds = %41
  br label %lookup_combined.exit

case134.i:                                        ; preds = %41
  br label %lookup_combined.exit

case135.i:                                        ; preds = %41
  br label %lookup_combined.exit

case136.i:                                        ; preds = %41
  br label %lookup_combined.exit

case137.i:                                        ; preds = %41
  br label %lookup_combined.exit

case138.i:                                        ; preds = %41
  br label %lookup_combined.exit

case139.i:                                        ; preds = %41
  br label %lookup_combined.exit

case140.i:                                        ; preds = %41
  br label %lookup_combined.exit

case141.i:                                        ; preds = %41
  br label %lookup_combined.exit

case142.i:                                        ; preds = %41
  br label %lookup_combined.exit

case143.i:                                        ; preds = %41
  br label %lookup_combined.exit

case144.i:                                        ; preds = %41
  br label %lookup_combined.exit

case145.i:                                        ; preds = %41
  br label %lookup_combined.exit

case146.i:                                        ; preds = %41
  br label %lookup_combined.exit

case147.i:                                        ; preds = %41
  br label %lookup_combined.exit

case148.i:                                        ; preds = %41
  br label %lookup_combined.exit

case149.i:                                        ; preds = %41
  br label %lookup_combined.exit

case150.i:                                        ; preds = %41
  br label %lookup_combined.exit

case151.i:                                        ; preds = %41
  br label %lookup_combined.exit

case152.i:                                        ; preds = %41
  br label %lookup_combined.exit

case153.i:                                        ; preds = %41
  br label %lookup_combined.exit

case154.i:                                        ; preds = %41
  br label %lookup_combined.exit

case155.i:                                        ; preds = %41
  br label %lookup_combined.exit

case156.i:                                        ; preds = %41
  br label %lookup_combined.exit

case157.i:                                        ; preds = %41
  br label %lookup_combined.exit

case158.i:                                        ; preds = %41
  br label %lookup_combined.exit

case159.i:                                        ; preds = %41
  br label %lookup_combined.exit

case160.i:                                        ; preds = %41
  br label %lookup_combined.exit

case161.i:                                        ; preds = %41
  br label %lookup_combined.exit

case162.i:                                        ; preds = %41
  br label %lookup_combined.exit

case163.i:                                        ; preds = %41
  br label %lookup_combined.exit

case164.i:                                        ; preds = %41
  br label %lookup_combined.exit

case165.i:                                        ; preds = %41
  br label %lookup_combined.exit

case166.i:                                        ; preds = %41
  br label %lookup_combined.exit

case167.i:                                        ; preds = %41
  br label %lookup_combined.exit

case168.i:                                        ; preds = %41
  br label %lookup_combined.exit

case169.i:                                        ; preds = %41
  br label %lookup_combined.exit

case170.i:                                        ; preds = %41
  br label %lookup_combined.exit

case171.i:                                        ; preds = %41
  br label %lookup_combined.exit

case172.i:                                        ; preds = %41
  br label %lookup_combined.exit

case173.i:                                        ; preds = %41
  br label %lookup_combined.exit

case174.i:                                        ; preds = %41
  br label %lookup_combined.exit

case175.i:                                        ; preds = %41
  br label %lookup_combined.exit

case176.i:                                        ; preds = %41
  br label %lookup_combined.exit

case177.i:                                        ; preds = %41
  br label %lookup_combined.exit

case178.i:                                        ; preds = %41
  br label %lookup_combined.exit

case179.i:                                        ; preds = %41
  br label %lookup_combined.exit

case180.i:                                        ; preds = %41
  br label %lookup_combined.exit

case181.i:                                        ; preds = %41
  br label %lookup_combined.exit

case182.i:                                        ; preds = %41
  br label %lookup_combined.exit

case183.i:                                        ; preds = %41
  br label %lookup_combined.exit

case184.i:                                        ; preds = %41
  br label %lookup_combined.exit

case185.i:                                        ; preds = %41
  br label %lookup_combined.exit

case186.i:                                        ; preds = %41
  br label %lookup_combined.exit

case187.i:                                        ; preds = %41
  br label %lookup_combined.exit

case188.i:                                        ; preds = %41
  br label %lookup_combined.exit

case189.i:                                        ; preds = %41
  br label %lookup_combined.exit

case190.i:                                        ; preds = %41
  br label %lookup_combined.exit

case191.i:                                        ; preds = %41
  br label %lookup_combined.exit

case192.i:                                        ; preds = %41
  br label %lookup_combined.exit

case193.i:                                        ; preds = %41
  br label %lookup_combined.exit

case194.i:                                        ; preds = %41
  br label %lookup_combined.exit

case195.i:                                        ; preds = %41
  br label %lookup_combined.exit

case196.i:                                        ; preds = %41
  br label %lookup_combined.exit

case197.i:                                        ; preds = %41
  br label %lookup_combined.exit

case198.i:                                        ; preds = %41
  br label %lookup_combined.exit

case199.i:                                        ; preds = %41
  br label %lookup_combined.exit

case200.i:                                        ; preds = %41
  br label %lookup_combined.exit

case201.i:                                        ; preds = %41
  br label %lookup_combined.exit

case202.i:                                        ; preds = %41
  br label %lookup_combined.exit

case203.i:                                        ; preds = %41
  br label %lookup_combined.exit

case204.i:                                        ; preds = %41
  br label %lookup_combined.exit

case205.i:                                        ; preds = %41
  br label %lookup_combined.exit

case206.i:                                        ; preds = %41
  br label %lookup_combined.exit

case207.i:                                        ; preds = %41
  br label %lookup_combined.exit

case208.i:                                        ; preds = %41
  br label %lookup_combined.exit

case209.i:                                        ; preds = %41
  br label %lookup_combined.exit

case210.i:                                        ; preds = %41
  br label %lookup_combined.exit

case211.i:                                        ; preds = %41
  br label %lookup_combined.exit

case212.i:                                        ; preds = %41
  br label %lookup_combined.exit

case213.i:                                        ; preds = %41
  br label %lookup_combined.exit

case214.i:                                        ; preds = %41
  br label %lookup_combined.exit

case215.i:                                        ; preds = %41
  br label %lookup_combined.exit

case216.i:                                        ; preds = %41
  br label %lookup_combined.exit

case217.i:                                        ; preds = %41
  br label %lookup_combined.exit

case218.i:                                        ; preds = %41
  br label %lookup_combined.exit

case219.i:                                        ; preds = %41
  br label %lookup_combined.exit

case220.i:                                        ; preds = %41
  br label %lookup_combined.exit

case221.i:                                        ; preds = %41
  br label %lookup_combined.exit

case222.i:                                        ; preds = %41
  br label %lookup_combined.exit

case223.i:                                        ; preds = %41
  br label %lookup_combined.exit

case224.i:                                        ; preds = %41
  br label %lookup_combined.exit

case225.i:                                        ; preds = %41
  br label %lookup_combined.exit

case226.i:                                        ; preds = %41
  br label %lookup_combined.exit

case227.i:                                        ; preds = %41
  br label %lookup_combined.exit

case228.i:                                        ; preds = %41
  br label %lookup_combined.exit

case229.i:                                        ; preds = %41
  br label %lookup_combined.exit

case230.i:                                        ; preds = %41
  br label %lookup_combined.exit

case231.i:                                        ; preds = %41
  br label %lookup_combined.exit

case232.i:                                        ; preds = %41
  br label %lookup_combined.exit

case233.i:                                        ; preds = %41
  br label %lookup_combined.exit

case234.i:                                        ; preds = %41
  br label %lookup_combined.exit

case235.i:                                        ; preds = %41
  br label %lookup_combined.exit

case236.i:                                        ; preds = %41
  br label %lookup_combined.exit

case237.i:                                        ; preds = %41
  br label %lookup_combined.exit

case238.i:                                        ; preds = %41
  br label %lookup_combined.exit

case239.i:                                        ; preds = %41
  br label %lookup_combined.exit

case240.i:                                        ; preds = %41
  br label %lookup_combined.exit

case241.i:                                        ; preds = %41
  br label %lookup_combined.exit

case242.i:                                        ; preds = %41
  br label %lookup_combined.exit

case243.i:                                        ; preds = %41
  br label %lookup_combined.exit

case244.i:                                        ; preds = %41
  br label %lookup_combined.exit

case245.i:                                        ; preds = %41
  br label %lookup_combined.exit

case246.i:                                        ; preds = %41
  br label %lookup_combined.exit

case247.i:                                        ; preds = %41
  br label %lookup_combined.exit

case248.i:                                        ; preds = %41
  br label %lookup_combined.exit

case249.i:                                        ; preds = %41
  br label %lookup_combined.exit

case250.i:                                        ; preds = %41
  br label %lookup_combined.exit

case251.i:                                        ; preds = %41
  br label %lookup_combined.exit

case252.i:                                        ; preds = %41
  br label %lookup_combined.exit

case253.i:                                        ; preds = %41
  br label %lookup_combined.exit

case254.i:                                        ; preds = %41
  br label %lookup_combined.exit

case255.i:                                        ; preds = %41
  br label %lookup_combined.exit

lookup_combined.exit:                             ; preds = %case255.i, %case254.i, %case253.i, %case252.i, %case251.i, %case250.i, %case249.i, %case248.i, %case247.i, %case246.i, %case245.i, %case244.i, %case243.i, %case242.i, %case241.i, %case240.i, %case239.i, %case238.i, %case237.i, %case236.i, %case235.i, %case234.i, %case233.i, %case232.i, %case231.i, %case230.i, %case229.i, %case228.i, %case227.i, %case226.i, %case225.i, %case224.i, %case223.i, %case222.i, %case221.i, %case220.i, %case219.i, %case218.i, %case217.i, %case216.i, %case215.i, %case214.i, %case213.i, %case212.i, %case211.i, %case210.i, %case209.i, %case208.i, %case207.i, %case206.i, %case205.i, %case204.i, %case203.i, %case202.i, %case201.i, %case200.i, %case199.i, %case198.i, %case197.i, %case196.i, %case195.i, %case194.i, %case193.i, %case192.i, %case191.i, %case190.i, %case189.i, %case188.i, %case187.i, %case186.i, %case185.i, %case184.i, %case183.i, %case182.i, %case181.i, %case180.i, %case179.i, %case178.i, %case177.i, %case176.i, %case175.i, %case174.i, %case173.i, %case172.i, %case171.i, %case170.i, %case169.i, %case168.i, %case167.i, %case166.i, %case165.i, %case164.i, %case163.i, %case162.i, %case161.i, %case160.i, %case159.i, %case158.i, %case157.i, %case156.i, %case155.i, %case154.i, %case153.i, %case152.i, %case151.i, %case150.i, %case149.i, %case148.i, %case147.i, %case146.i, %case145.i, %case144.i, %case143.i, %case142.i, %case141.i, %case140.i, %case139.i, %case138.i, %case137.i, %case136.i, %case135.i, %case134.i, %case133.i, %case132.i, %case131.i, %case130.i, %case129.i, %case128.i, %case127.i, %case126.i, %case125.i, %case124.i, %case123.i, %case122.i, %case121.i, %case120.i, %case119.i, %case118.i, %case117.i, %case116.i, %case115.i, %case114.i, %case113.i, %case112.i, %case111.i, %case110.i, %case109.i, %case108.i, %case107.i, %case106.i, %case105.i, %case104.i, %case103.i, %case102.i, %case101.i, %case100.i, %case99.i, %case98.i, %case97.i, %case96.i, %case95.i, %case94.i, %case93.i, %case92.i, %case91.i, %case90.i, %case89.i, %case88.i, %case87.i, %case86.i, %case85.i, %case84.i, %case83.i, %case82.i, %case81.i, %case80.i, %case79.i, %case78.i, %case77.i, %case76.i, %case75.i, %case74.i, %case73.i, %case72.i, %case71.i, %case70.i, %case69.i, %case68.i, %case67.i, %case66.i, %case65.i, %case64.i, %case63.i, %case62.i, %case61.i, %case60.i, %case59.i, %case58.i, %case57.i, %case56.i, %case55.i, %case54.i, %case53.i, %case52.i, %case51.i, %case50.i, %case49.i, %case48.i, %case47.i, %case46.i, %case45.i, %case44.i, %case43.i, %case42.i, %case41.i, %case40.i, %case39.i, %case38.i, %case37.i, %case36.i, %case35.i, %case34.i, %case33.i, %case32.i, %case31.i, %case30.i, %case29.i, %case28.i, %case27.i, %case26.i, %case25.i, %case24.i, %case23.i, %case22.i, %case21.i, %case20.i, %case19.i, %case18.i, %case17.i, %case16.i, %case15.i, %case14.i, %case13.i, %case12.i, %case11.i, %case10.i, %case9.i, %case8.i, %case7.i, %case6.i, %case5.i, %case4.i, %case3.i, %case2.i, %case1.i, %case0.i
  %value.i = phi i64 [ -4302098779834749733, %case0.i ], [ -2220562881957146901, %case1.i ], [ -3894436733716799489, %case2.i ], [ 1433843135270481901, %case3.i ], [ 8336770163655280242, %case4.i ], [ -7881803417479397662, %case5.i ], [ -2941004127381733739, %case6.i ], [ 5502495245947142431, %case7.i ], [ -2572398748971526355, %case8.i ], [ -2436064182340099334, %case9.i ], [ 4055606894390288348, %case10.i ], [ 5350621376133947991, %case11.i ], [ 2765702133756617546, %case12.i ], [ -8493270429887581760, %case13.i ], [ -1160504230424452080, %case14.i ], [ 5291143887273806931, %case15.i ], [ -1568241370979223514, %case16.i ], [ -929432383683428675, %case17.i ], [ 3673450842886451206, %case18.i ], [ -2478423014181009900, %case19.i ], [ 3622887472839136718, %case20.i ], [ 1246929574567274891, %case21.i ], [ -1152736325583170325, %case22.i ], [ -3324533442079829058, %case23.i ], [ -8942773601077194801, %case24.i ], [ 2970022284838843195, %case25.i ], [ 7362585856034407022, %case26.i ], [ -4392082282584759128, %case27.i ], [ 5225411942735301638, %case28.i ], [ -5450523663638814413, %case29.i ], [ 3547770832784427690, %case30.i ], [ 362675829607944414, %case31.i ], [ -282257845897087025, %case32.i ], [ 6898188129916750362, %case33.i ], [ 2844895380948538806, %case34.i ], [ 7674606916920705344, %case35.i ], [ 9214633253411488453, %case36.i ], [ 6687772750457788192, %case37.i ], [ -4531365318336869402, %case38.i ], [ 5344895949674194850, %case39.i ], [ -6675284198519149788, %case40.i ], [ 2113974078481014280, %case41.i ], [ 8777568547874204941, %case42.i ], [ -2169500560468987851, %case43.i ], [ 3660690302424466814, %case44.i ], [ -2436525662347849866, %case45.i ], [ -6085909721859794221, %case46.i ], [ 5134827694651168302, %case47.i ], [ 1838281907459330133, %case48.i ], [ 7335560060985733464, %case49.i ], [ -318164364674882796, %case50.i ], [ 8296998437054084336, %case51.i ], [ -2123147046896566209, %case52.i ], [ -2388148047314387342, %case53.i ], [ -5375991149494515187, %case54.i ], [ 499566431179015674, %case55.i ], [ 7372184217170234346, %case56.i ], [ 2897285734473052776, %case57.i ], [ -6620125947798625332, %case58.i ], [ 4279659918279867487, %case59.i ], [ 4800416899009875996, %case60.i ], [ -5931816708875844411, %case61.i ], [ 6774495193030674564, %case62.i ], [ -8398597170076423925, %case63.i ], [ 8529366458340265297, %case64.i ], [ -3398925928391953275, %case65.i ], [ 8418202337400857587, %case66.i ], [ 7020717050005586112, %case67.i ], [ -3761882330889119378, %case68.i ], [ -9149138593070727489, %case69.i ], [ 8772769334003688095, %case70.i ], [ 1743089132010364587, %case71.i ], [ 3963873365795895589, %case72.i ], [ -4042618408496833961, %case73.i ], [ -3755880203185378672, %case74.i ], [ 6190981343618133313, %case75.i ], [ 8640948454356727894, %case76.i ], [ -681029911906337757, %case77.i ], [ 1874492674255557078, %case78.i ], [ -461795147661551007, %case79.i ], [ 5084905583549711826, %case80.i ], [ 4488332001360539422, %case81.i ], [ 3063753645715674379, %case82.i ], [ -8515971706312224628, %case83.i ], [ 2347651011283115188, %case84.i ], [ 7862244273078811554, %case85.i ], [ 4741579133146630013, %case86.i ], [ -814247142782119327, %case87.i ], [ 8169000404195870007, %case88.i ], [ -9066049001627982408, %case89.i ], [ 2833837677914226691, %case90.i ], [ 6041807101686622375, %case91.i ], [ -163413725005337946, %case92.i ], [ -2403499172613604551, %case93.i ], [ -7986631214068388042, %case94.i ], [ 4575667007673887251, %case95.i ], [ -6871223553662405846, %case96.i ], [ -1817709641818812897, %case97.i ], [ 6294355645245719615, %case98.i ], [ -8340629563394885605, %case99.i ], [ 5041782483466037194, %case100.i ], [ -1880483337136747912, %case101.i ], [ 3729356046086683290, %case102.i ], [ -6189662371905423721, %case103.i ], [ 8090085636497697382, %case104.i ], [ 3171146578797943502, %case105.i ], [ 5619658110353354353, %case106.i ], [ -6259471935552714723, %case107.i ], [ -4607290929671566278, %case108.i ], [ -1112309911958824964, %case109.i ], [ -3771184802297902326, %case110.i ], [ -845068846880718549, %case111.i ], [ -4746542111220524153, %case112.i ], [ -992931083124165738, %case113.i ], [ -4793174741866312907, %case114.i ], [ -2974112083446677997, %case115.i ], [ 8503709266395068717, %case116.i ], [ 1000067187423537442, %case117.i ], [ -647344187112945900, %case118.i ], [ -5985590712037982679, %case119.i ], [ -1517593895512126191, %case120.i ], [ 2822446240451570149, %case121.i ], [ 6100083767409290672, %case122.i ], [ -4452813043723281122, %case123.i ], [ -3260576076044403503, %case124.i ], [ -5133358930729682568, %case125.i ], [ -1723256135048217232, %case126.i ], [ 3032053336604930433, %case127.i ], [ 7715946029497977153, %case128.i ], [ 7756605422741824046, %case129.i ], [ 6914152272366242186, %case130.i ], [ 6619468546868266945, %case131.i ], [ 8635048048508886888, %case132.i ], [ -8393880875905280995, %case133.i ], [ -6787559214576350429, %case134.i ], [ -2217171985210471049, %case135.i ], [ 3604675824303396708, %case136.i ], [ -3512584283167155441, %case137.i ], [ 2156514823987992107, %case138.i ], [ 4907671418510825112, %case139.i ], [ 8839569603083604159, %case140.i ], [ -6042468303600945730, %case141.i ], [ -3015502839406131913, %case142.i ], [ 7156044269520408728, %case143.i ], [ -1508413522767866676, %case144.i ], [ 1604089566654333, %case145.i ], [ 7878720862229920401, %case146.i ], [ -3403495536095635901, %case147.i ], [ 4419032860939710275, %case148.i ], [ 8309667868945161700, %case149.i ], [ 8127699344777264475, %case150.i ], [ 3172741449153456871, %case151.i ], [ -7819243355710516001, %case152.i ], [ -1517632861945409470, %case153.i ], [ -4231347299287732713, %case154.i ], [ 7537847041743724411, %case155.i ], [ -8574195954494672605, %case156.i ], [ 8276179821638363100, %case157.i ], [ -2521175872576789404, %case158.i ], [ -6787734742961095628, %case159.i ], [ 3141466977451366136, %case160.i ], [ 6496874765145226399, %case161.i ], [ 1397096103115942590, %case162.i ], [ -5230410147232611976, %case163.i ], [ -8713684776993538784, %case164.i ], [ 4679852336830987527, %case165.i ], [ -4552607469369903036, %case166.i ], [ 5281118663193865049, %case167.i ], [ -7809504173095293835, %case168.i ], [ -3494378936840174703, %case169.i ], [ -8283887544681711630, %case170.i ], [ -1982062835990977551, %case171.i ], [ 7876639392340321016, %case172.i ], [ -776633854295803046, %case173.i ], [ -4449956841746897829, %case174.i ], [ 6252822398696073730, %case175.i ], [ 3653197155308211081, %case176.i ], [ 4184123583517128355, %case177.i ], [ 2710647065067127392, %case178.i ], [ 1364275973376659154, %case179.i ], [ 5735683338271654244, %case180.i ], [ 4788098542079513072, %case181.i ], [ 2523649311648287430, %case182.i ], [ 6226703245439355973, %case183.i ], [ 4039168641094241130, %case184.i ], [ -4735310071515049160, %case185.i ], [ -7718157997211796903, %case186.i ], [ -7630434519632171097, %case187.i ], [ 6401440615517674288, %case188.i ], [ -1540227857295215434, %case189.i ], [ -6492234107044435804, %case190.i ], [ 1076237601080914835, %case191.i ], [ 371066729028084812, %case192.i ], [ 2047781579520568252, %case193.i ], [ 8981190644621376403, %case194.i ], [ -1270115072684319195, %case195.i ], [ -8955474670546817597, %case196.i ], [ 1697060390969647966, %case197.i ], [ -1880780507307867236, %case198.i ], [ -5363681305219004548, %case199.i ], [ -1084662620876922617, %case200.i ], [ 8607018531237843404, %case201.i ], [ -4794156784727077306, %case202.i ], [ 6393061779462666445, %case203.i ], [ 5666196083048816522, %case204.i ], [ 6136724780979887393, %case205.i ], [ 5191002144171421573, %case206.i ], [ 3531887758758133993, %case207.i ], [ -4418833195103958582, %case208.i ], [ 399445177739474421, %case209.i ], [ -1947046474972200432, %case210.i ], [ -3252035828561191092, %case211.i ], [ 8996305336856613012, %case212.i ], [ 6917241246617268645, %case213.i ], [ 7998926962047337531, %case214.i ], [ -8446620120025011510, %case215.i ], [ -5280387490099738130, %case216.i ], [ 564548736115642456, %case217.i ], [ -8404415521806172981, %case218.i ], [ 3717577419720655258, %case219.i ], [ -5089905126141548364, %case220.i ], [ 7521440301808993825, %case221.i ], [ -8814061795361718509, %case222.i ], [ -2714087517662472993, %case223.i ], [ 2071800237030200399, %case224.i ], [ -4264588051788821739, %case225.i ], [ 5286102316725614445, %case226.i ], [ 699974702888830978, %case227.i ], [ -6198501953651059440, %case228.i ], [ 5478601957838938672, %case229.i ], [ -8826379284296529914, %case230.i ], [ 4117946310065826061, %case231.i ], [ 2713743964583775612, %case232.i ], [ 5235599403462674304, %case233.i ], [ -4570201113732268168, %case234.i ], [ 888845016463753946, %case235.i ], [ -4356919662415120719, %case236.i ], [ 2273280100835896876, %case237.i ], [ -3991362807574606833, %case238.i ], [ -4452897474114816089, %case239.i ], [ -3778735031010307814, %case240.i ], [ 4461224383070578004, %case241.i ], [ -2508687673012358854, %case242.i ], [ 519458947206652749, %case243.i ], [ -8279674986227810403, %case244.i ], [ 4384594615491221824, %case245.i ], [ 2225088360167913052, %case246.i ], [ -7273095038674136419, %case247.i ], [ -3679179631877543767, %case248.i ], [ 5569617102229150198, %case249.i ], [ -8233578011895567121, %case250.i ], [ -826440576334536596, %case251.i ], [ -4492853642420687956, %case252.i ], [ -2325365741171985389, %case253.i ], [ 7789395919978777827, %case254.i ], [ -2973241909731272914, %case255.i ]
  %same.i = icmp eq i8 %9, %stable.i
  %low.byte.i = and i8 %9, 127
  %low.index.i = zext i8 %low.byte.i to i32
  %fallback.low.i = extractelement <128 x i64> <i64 -4302098779834749733, i64 -2220562881957146901, i64 -3894436733716799489, i64 1433843135270481901, i64 8336770163655280242, i64 -7881803417479397662, i64 -2941004127381733739, i64 5502495245947142431, i64 -2572398748971526355, i64 -2436064182340099334, i64 4055606894390288348, i64 5350621376133947991, i64 2765702133756617546, i64 -8493270429887581760, i64 -1160504230424452080, i64 5291143887273806931, i64 -1568241370979223514, i64 -929432383683428675, i64 3673450842886451206, i64 -2478423014181009900, i64 3622887472839136718, i64 1246929574567274891, i64 -1152736325583170325, i64 -3324533442079829058, i64 -8942773601077194801, i64 2970022284838843195, i64 7362585856034407022, i64 -4392082282584759128, i64 5225411942735301638, i64 -5450523663638814413, i64 3547770832784427690, i64 362675829607944414, i64 -282257845897087025, i64 6898188129916750362, i64 2844895380948538806, i64 7674606916920705344, i64 9214633253411488453, i64 6687772750457788192, i64 -4531365318336869402, i64 5344895949674194850, i64 -6675284198519149788, i64 2113974078481014280, i64 8777568547874204941, i64 -2169500560468987851, i64 3660690302424466814, i64 -2436525662347849866, i64 -6085909721859794221, i64 5134827694651168302, i64 1838281907459330133, i64 7335560060985733464, i64 -318164364674882796, i64 8296998437054084336, i64 -2123147046896566209, i64 -2388148047314387342, i64 -5375991149494515187, i64 499566431179015674, i64 7372184217170234346, i64 2897285734473052776, i64 -6620125947798625332, i64 4279659918279867487, i64 4800416899009875996, i64 -5931816708875844411, i64 6774495193030674564, i64 -8398597170076423925, i64 8529366458340265297, i64 -3398925928391953275, i64 8418202337400857587, i64 7020717050005586112, i64 -3761882330889119378, i64 -9149138593070727489, i64 8772769334003688095, i64 1743089132010364587, i64 3963873365795895589, i64 -4042618408496833961, i64 -3755880203185378672, i64 6190981343618133313, i64 8640948454356727894, i64 -681029911906337757, i64 1874492674255557078, i64 -461795147661551007, i64 5084905583549711826, i64 4488332001360539422, i64 3063753645715674379, i64 -8515971706312224628, i64 2347651011283115188, i64 7862244273078811554, i64 4741579133146630013, i64 -814247142782119327, i64 8169000404195870007, i64 -9066049001627982408, i64 2833837677914226691, i64 6041807101686622375, i64 -163413725005337946, i64 -2403499172613604551, i64 -7986631214068388042, i64 4575667007673887251, i64 -6871223553662405846, i64 -1817709641818812897, i64 6294355645245719615, i64 -8340629563394885605, i64 5041782483466037194, i64 -1880483337136747912, i64 3729356046086683290, i64 -6189662371905423721, i64 8090085636497697382, i64 3171146578797943502, i64 5619658110353354353, i64 -6259471935552714723, i64 -4607290929671566278, i64 -1112309911958824964, i64 -3771184802297902326, i64 -845068846880718549, i64 -4746542111220524153, i64 -992931083124165738, i64 -4793174741866312907, i64 -2974112083446677997, i64 8503709266395068717, i64 1000067187423537442, i64 -647344187112945900, i64 -5985590712037982679, i64 -1517593895512126191, i64 2822446240451570149, i64 6100083767409290672, i64 -4452813043723281122, i64 -3260576076044403503, i64 -5133358930729682568, i64 -1723256135048217232, i64 3032053336604930433>, i32 %low.index.i
  %fallback.high.i = extractelement <128 x i64> <i64 7715946029497977153, i64 7756605422741824046, i64 6914152272366242186, i64 6619468546868266945, i64 8635048048508886888, i64 -8393880875905280995, i64 -6787559214576350429, i64 -2217171985210471049, i64 3604675824303396708, i64 -3512584283167155441, i64 2156514823987992107, i64 4907671418510825112, i64 8839569603083604159, i64 -6042468303600945730, i64 -3015502839406131913, i64 7156044269520408728, i64 -1508413522767866676, i64 1604089566654333, i64 7878720862229920401, i64 -3403495536095635901, i64 4419032860939710275, i64 8309667868945161700, i64 8127699344777264475, i64 3172741449153456871, i64 -7819243355710516001, i64 -1517632861945409470, i64 -4231347299287732713, i64 7537847041743724411, i64 -8574195954494672605, i64 8276179821638363100, i64 -2521175872576789404, i64 -6787734742961095628, i64 3141466977451366136, i64 6496874765145226399, i64 1397096103115942590, i64 -5230410147232611976, i64 -8713684776993538784, i64 4679852336830987527, i64 -4552607469369903036, i64 5281118663193865049, i64 -7809504173095293835, i64 -3494378936840174703, i64 -8283887544681711630, i64 -1982062835990977551, i64 7876639392340321016, i64 -776633854295803046, i64 -4449956841746897829, i64 6252822398696073730, i64 3653197155308211081, i64 4184123583517128355, i64 2710647065067127392, i64 1364275973376659154, i64 5735683338271654244, i64 4788098542079513072, i64 2523649311648287430, i64 6226703245439355973, i64 4039168641094241130, i64 -4735310071515049160, i64 -7718157997211796903, i64 -7630434519632171097, i64 6401440615517674288, i64 -1540227857295215434, i64 -6492234107044435804, i64 1076237601080914835, i64 371066729028084812, i64 2047781579520568252, i64 8981190644621376403, i64 -1270115072684319195, i64 -8955474670546817597, i64 1697060390969647966, i64 -1880780507307867236, i64 -5363681305219004548, i64 -1084662620876922617, i64 8607018531237843404, i64 -4794156784727077306, i64 6393061779462666445, i64 5666196083048816522, i64 6136724780979887393, i64 5191002144171421573, i64 3531887758758133993, i64 -4418833195103958582, i64 399445177739474421, i64 -1947046474972200432, i64 -3252035828561191092, i64 8996305336856613012, i64 6917241246617268645, i64 7998926962047337531, i64 -8446620120025011510, i64 -5280387490099738130, i64 564548736115642456, i64 -8404415521806172981, i64 3717577419720655258, i64 -5089905126141548364, i64 7521440301808993825, i64 -8814061795361718509, i64 -2714087517662472993, i64 2071800237030200399, i64 -4264588051788821739, i64 5286102316725614445, i64 699974702888830978, i64 -6198501953651059440, i64 5478601957838938672, i64 -8826379284296529914, i64 4117946310065826061, i64 2713743964583775612, i64 5235599403462674304, i64 -4570201113732268168, i64 888845016463753946, i64 -4356919662415120719, i64 2273280100835896876, i64 -3991362807574606833, i64 -4452897474114816089, i64 -3778735031010307814, i64 4461224383070578004, i64 -2508687673012358854, i64 519458947206652749, i64 -8279674986227810403, i64 4384594615491221824, i64 2225088360167913052, i64 -7273095038674136419, i64 -3679179631877543767, i64 5569617102229150198, i64 -8233578011895567121, i64 -826440576334536596, i64 -4492853642420687956, i64 -2325365741171985389, i64 7789395919978777827, i64 -2973241909731272914>, i32 %low.index.i
  %high.bit.i = icmp slt i8 %9, 0
  %fallback.i = select i1 %high.bit.i, i64 %fallback.high.i, i64 %fallback.low.i
  %result.i = select i1 %same.i, i64 %value.i, i64 %fallback.i
  %48 = select i1 %42, i64 %result.i, i64 %39
  br label %49

49:                                               ; preds = %lookup_combined.exit, %4
  %50 = phi i64 [ %48, %lookup_combined.exit ], [ %39, %4 ]
  ret i64 %50
}

attributes #0 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
