// Source-mapped cacheEntryWithinLimits rewrite at ea946932.
module CacheTtlEquivalence {
  const INT64_MAX_LIMIT := 0x8000_0000_0000_0000
  newtype int64 = x | -INT64_MAX_LIMIT <= x < INT64_MAX_LIMIT
  type PositiveLong = x: int64 | 0 <= x witness *

  function OldWithin(creationTime: PositiveLong, now: PositiveLong, ttlSeconds: PositiveLong): bool {
    now - creationTime <= ttlSeconds as PositiveLong
  }

  function PosLongSub(x: PositiveLong, y: PositiveLong): PositiveLong {
    if x <= y then 0 else x - y
  }

  function NewWithin(creationTime: PositiveLong, now: PositiveLong, ttlSeconds: PositiveLong): bool {
    if now <= creationTime then true else PosLongSub(now, creationTime) <= ttlSeconds as PositiveLong
  }

  lemma WithinEquiv(creationTime: PositiveLong, now: PositiveLong, ttlSeconds: PositiveLong)
    ensures OldWithin(creationTime, now, ttlSeconds) == NewWithin(creationTime, now, ttlSeconds)
  {}
}
