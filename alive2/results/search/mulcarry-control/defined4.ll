define i4 @src(i4 noundef %a, i4 noundef %b) {
  %aw = zext i4 %a to i8
  %bw = zext i4 %b to i8
  %p = mul nuw i8 %aw, %bw
  %lo = trunc i8 %p to i4
  %hs = lshr i8 %p, 4
  %hi = trunc i8 %hs to i4
  %fold = xor i4 %lo, %hi
  ret i4 %fold
}
define i4 @tgt(i4 noundef %a, i4 noundef %b) {
  %pair = call { i4, i1 } @llvm.umul.with.overflow.i4(i4 %a, i4 %b)
  %lo = extractvalue { i4, i1 } %pair, 0
  %overflow = extractvalue { i4, i1 } %pair, 1
  %aw = zext i4 %a to i8
  %bw = zext i4 %b to i8
  %p = mul nuw i8 %aw, %bw
  %hs = lshr i8 %p, 4
  %hi = trunc i8 %hs to i4
  %selected = select i1 %overflow, i4 %hi, i4 0
  %fold = xor i4 %lo, %selected
  ret i4 %fold
}
declare { i4, i1 } @llvm.umul.with.overflow.i4(i4, i4)
