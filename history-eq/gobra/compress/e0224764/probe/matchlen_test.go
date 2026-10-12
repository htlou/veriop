package probe

import (
    "math/rand"
    "testing"
)

func TestHistoricalMatchLen(t *testing.T) {
    rng := rand.New(rand.NewSource(7))
    for n := 0; n <= 128; n++ {
        for extra := 0; extra < 4; extra++ {
            for trial := 0; trial < 100; trial++ {
                a, b := make([]byte, n), make([]byte, n+extra)
                rng.Read(a)
                rng.Read(b)
                copy(b[:rng.Intn(n+1)], a)
                expected := 0
                for expected < n && a[expected] == b[expected] {
                    expected++
                }
                old, now := matchLenOld(a, b), matchLenNew(a, b)
                if old != expected || now != expected {
                    t.Fatalf("n=%d extra=%d trial=%d: old=%d new=%d want=%d",
                        n, extra, trial, old, now, expected)
                }
            }
        }
    }
}
