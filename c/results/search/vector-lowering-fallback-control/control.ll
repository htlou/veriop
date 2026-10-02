@table = internal constant [4 x i64] [i64 4, i64 20, i64 300, i64 7000]
define i64 @src(i8 %idx) {
  %bounded = and i8 %idx, 3
  %v = extractelement <4 x i64> <i64 4, i64 20, i64 300, i64 7000>, i8 %bounded
  ret i64 %v
}
define i64 @tgt(i8 %idx) {
  %bounded = and i8 %idx, 3
  %stable = freeze i8 %bounded
  %safe = and i8 %stable, 3
  %wide = zext i8 %safe to i64
  %p = getelementptr inbounds [4 x i64], ptr @table, i64 0, i64 %wide
  %v = load i64, ptr %p, align 8
  %same = icmp eq i8 %bounded, %stable
  %fallback = extractelement <4 x i64> <i64 4, i64 20, i64 300, i64 7000>, i8 %bounded
  %result = select i1 %same, i64 %v, i64 %fallback
  ret i64 %result
}
