//go:build ignore

// A controlled random-stream witness for the historical runReceiver change.
package main

import (
    "errors"
    "fmt"
    "hash"
    "hash/fnv"
)

const cmnHdrLen = 12
const iaBytes = 8

var errShortPacket = errors.New("Packet is too short")

func step(state uint32, c byte) uint32 {
    return (state ^ uint32(c)) * 16777619
}

func addrTypeLength(t byte) int { return 4 * (1 + int(t&3)) }

// These two functions retain the historical computeProcID operation order.
// Only package names and the unchanged SCION header constants are reduced.
func oldComputeProcID(data []byte, numProcRoutines int, randomValue []byte,
    flowIDBuffer []byte, hasher hash.Hash32) (uint32, error) {
    if len(data) < cmnHdrLen {
        return 0, errShortPacket
    }
    dstHostAddrLen := addrTypeLength(data[9] >> 4 & 0xf)
    srcHostAddrLen := addrTypeLength(data[9] & 0xf)
    addrHdrLen := 2*iaBytes + srcHostAddrLen + dstHostAddrLen
    if len(data) < cmnHdrLen+addrHdrLen {
        return 0, errShortPacket
    }
    copy(flowIDBuffer[0:3], data[1:4])
    flowIDBuffer[0] &= 0xF
    hasher.Reset()
    hasher.Write(randomValue)
    hasher.Write(flowIDBuffer[:])
    hasher.Write(data[cmnHdrLen : cmnHdrLen+addrHdrLen])
    return hasher.Sum32() % uint32(numProcRoutines), nil
}

func newComputeProcID(data []byte, numProcRoutines int, hashSeed uint32) (uint32, error) {
    if len(data) < cmnHdrLen {
        return 0, errShortPacket
    }
    dstHostAddrLen := addrTypeLength(data[9] >> 4 & 0xf)
    srcHostAddrLen := addrTypeLength(data[9] & 0xf)
    addrHdrLen := 2*iaBytes + srcHostAddrLen + dstHostAddrLen
    if len(data) < cmnHdrLen+addrHdrLen {
        return 0, errShortPacket
    }
    s := hashSeed
    s = step(s, data[1]&0xF)
    for _, c := range data[2:4] {
        s = step(s, c)
    }
    for _, c := range data[cmnHdrLen : cmnHdrLen+addrHdrLen] {
        s = step(s, c)
    }
    return s % uint32(numProcRoutines), nil
}

func main() {
    randomStream := [16]byte{}
    data := make([]byte, cmnHdrLen+2*iaBytes+4+4)
    // data[9] == 0: both host address types have the 4-byte length.
    oldProcID, oldErr := oldComputeProcID(data, 10000, randomStream[:16],
        make([]byte, 3), fnv.New32a())
    hashSeed := uint32(2166136261)
    for _, c := range randomStream[:4] {
        hashSeed = step(hashSeed, c)
    }
    newProcID, newErr := newComputeProcID(data, 10000, hashSeed)
    fmt.Printf("random_stream=%x old_random_bytes=16 new_random_bytes=4\n", randomStream)
    fmt.Printf("packet_len=%d address_header_len=24 old_proc_id=%d new_proc_id=%d num_processors=10000 old_err=%v new_err=%v\n",
        len(data), oldProcID, newProcID, oldErr, newErr)
    if oldErr != nil || newErr != nil || oldProcID == newProcID {
        panic("expected a differing processor ID")
    }
}
