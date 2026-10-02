declare i64 @llvm.bswap.i64(i64)
define i64 @prefix(i64 %data, i64 %key) {
  %mixed = xor i64 %data, %key
  %check = call noundef i64 @llvm.bswap.i64(i64 %mixed)
  %d = call i64 @llvm.bswap.i64(i64 %data)
  %k = call i64 @llvm.bswap.i64(i64 %key)
  %wrong = xor i64 %d, %k
  %result = xor i64 %wrong, 1
  ret i64 %result
}
