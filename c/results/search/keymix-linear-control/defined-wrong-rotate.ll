declare i64 @llvm.fshl.i64(i64, i64, i64)
define i64 @src(i64 noundef %data, i64 noundef %key) {
  %h = xor i64 %data, %key
  %r49 = call i64 @llvm.fshl.i64(i64 %h, i64 %h, i64 49)
  %r24 = call i64 @llvm.fshl.i64(i64 %h, i64 %h, i64 24)
  %r = xor i64 %r24, %r49
  %out = xor i64 %r, %h
  ret i64 %out
}
define i64 @tgt(i64 noundef %data, i64 noundef %key) {
  %d49 = call i64 @llvm.fshl.i64(i64 %data, i64 %data, i64 48)
  %d24 = call i64 @llvm.fshl.i64(i64 %data, i64 %data, i64 24)
  %k49 = call i64 @llvm.fshl.i64(i64 %key, i64 %key, i64 49)
  %k24 = call i64 @llvm.fshl.i64(i64 %key, i64 %key, i64 24)
  %a = xor i64 %d24, %d49
  %b = xor i64 %a, %k24
  %c = xor i64 %b, %k49
  %d = xor i64 %c, %data
  %out = xor i64 %d, %key
  ret i64 %out
}
