declare i64 @llvm.fshl.i64(i64, i64, i64)
define i64 @src(i64 %data, i64 %key) {
  %v28 = xor i64 %key, %data
  %v29 = tail call i64 @llvm.fshl.i64(i64 %v28, i64 %v28, i64 49)
  %v30 = tail call i64 @llvm.fshl.i64(i64 %v28, i64 %v28, i64 24)
  %v31 = xor i64 %v29, %v30
  %v32 = xor i64 %v31, %v28
  ret i64 %v32
}
define i64 @tgt(i64 %data, i64 %key) {
  %v28 = xor i64 %key, %data
  %v29 = tail call i64 @llvm.fshl.i64(i64 %v28, i64 %v28, i64 49)
  %v30 = tail call i64 @llvm.fshl.i64(i64 %v28, i64 %v28, i64 24)
  %v31 = xor i64 %v29, %v30
  %v32 = xor i64 %v31, %v28
  %km.data = freeze i64 %data
  %km.key = freeze i64 %key
  %km.data49 = call i64 @llvm.fshl.i64(i64 %km.data, i64 %km.data, i64 48)
  %km.data24 = call i64 @llvm.fshl.i64(i64 %km.data, i64 %km.data, i64 24)
  %km.data.rot = xor i64 %km.data49, %km.data24
  %km.data.mix = xor i64 %km.data.rot, %km.data
  %km.key49 = call i64 @llvm.fshl.i64(i64 %km.key, i64 %km.key, i64 49)
  %km.key24 = call i64 @llvm.fshl.i64(i64 %km.key, i64 %km.key, i64 24)
  %km.key.rot = xor i64 %km.key49, %km.key24
  %km.key.mix = xor i64 %km.key.rot, %km.key
  %km.fast = xor i64 %km.data.mix, %km.key.mix
  %km.same.data = icmp eq i64 %data, %km.data
  %km.same.key = icmp eq i64 %key, %km.key
  %km.guard = and i1 %km.same.data, %km.same.key
  %km.value = select i1 %km.guard, i64 %km.fast, i64 %v32
  ret i64 %km.value
}
