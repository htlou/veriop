define i8 @src(i8 noundef %a, i8 noundef %b) {
  %aw = zext i8 %a to i16
  %bw = zext i8 %b to i16
  %p = mul nuw i16 %aw, %bw
  %lo = trunc i16 %p to i8
  %hs = lshr i16 %p, 8
  %hi = trunc i16 %hs to i8
  %fold = xor i8 %lo, %hi
  ret i8 %fold
}
define i8 @tgt(i8 noundef %a, i8 noundef %b) {
  %pair = call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %a, i8 %b)
  %lo = extractvalue { i8, i1 } %pair, 0
  %overflow = extractvalue { i8, i1 } %pair, 1
  %aw = zext i8 %a to i16
  %bw = zext i8 %b to i16
  %p = mul nuw i16 %aw, %bw
  %hs = lshr i16 %p, 8
  %hi = trunc i16 %hs to i8
  %selected = select i1 %overflow, i8 %hi, i8 0
  %fold = xor i8 %lo, %selected
  ret i8 %fold
}
declare { i8, i1 } @llvm.umul.with.overflow.i8(i8, i8)
