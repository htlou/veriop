declare i64 @llvm.bswap.i64(i64)
define i64 @prefix(i64 %data, i64 %key) {
  %mixed = xor i64 %data, %key
  %result = call noundef i64 @llvm.bswap.i64(i64 %mixed)
  ret i64 %result
}
