package main

const helperSrc = `package prod

import (
	"fmt"
	"math/rand"
	"os"
	"reflect"
	"strconv"
	"testing"
	"time"
	"unsafe"
)

type outcome struct {
	res []any
	pan any
	st  []any
	in  string
}

func safe(f func() []any) (r []any, p any) {
	defer func() {
		if e := recover(); e != nil {
			p = fmt.Sprint(e)
		}
	}()
	r = f()
	return
}

func rw(v reflect.Value) reflect.Value {
	if !v.CanSet() && v.CanAddr() {
		return reflect.NewAt(v.Type(), unsafe.Pointer(v.UnsafeAddr())).Elem()
	}
	return v
}

func edge(r *rand.Rand) uint64 {
	switch r.Intn(8) {
	case 0:
		return 0
	case 1:
		return 1
	case 2:
		return ^uint64(0)
	case 3:
		return uint64(r.Intn(70))
	case 4:
		return uint64(1) << uint(r.Intn(64))
	case 5:
		return uint64(r.Intn(256))
	}
	return r.Uint64()
}

func fill(v reflect.Value, r *rand.Rand, depth int) {
	v = rw(v)
	if depth > 6 {
		return
	}
	switch v.Kind() {
	case reflect.Bool:
		v.SetBool(r.Intn(2) == 1)
	case reflect.Int, reflect.Int8, reflect.Int16, reflect.Int32, reflect.Int64:
		x := edge(r)
		if r.Intn(2) == 0 {
			x = uint64(int64(x) % 130) - uint64(r.Intn(3))
		}
		bits := uint(v.Type().Bits())
		if bits < 64 {
			x &= (1 << bits) - 1
			s := int64(x << (64 - bits)) >> (64 - bits)
			v.SetInt(s)
		} else {
			v.SetInt(int64(x))
		}
	case reflect.Uint, reflect.Uint8, reflect.Uint16, reflect.Uint32, reflect.Uint64, reflect.Uintptr:
		x := edge(r)
		bits := uint(v.Type().Bits())
		if bits < 64 {
			x &= (1 << bits) - 1
		}
		v.SetUint(x)
	case reflect.Slice:
		n := r.Intn(40)
		if r.Intn(10) == 0 {
			n = r.Intn(300)
		}
		c := n + r.Intn(3)
		s := reflect.MakeSlice(v.Type(), n, c)
		for i := 0; i < n; i++ {
			fill(s.Index(i), r, depth+1)
		}
		v.Set(s)
	case reflect.Array:
		for i := 0; i < v.Len(); i++ {
			fill(v.Index(i), r, depth+1)
		}
	case reflect.Struct:
		for i := 0; i < v.NumField(); i++ {
			fill(v.Field(i), r, depth+1)
		}
	case reflect.Pointer:
		p := reflect.New(v.Type().Elem())
		fill(p.Elem(), r, depth+1)
		v.Set(p)
	}
}

func eq(a, b reflect.Value) bool {
	if a.Kind() == reflect.Interface || a.Kind() == reflect.Pointer && false {
		a = a.Elem()
	}
	if b.Kind() == reflect.Interface {
		b = b.Elem()
	}
	if a.Kind() != b.Kind() {
		return false
	}
	switch a.Kind() {
	case reflect.Bool:
		return a.Bool() == b.Bool()
	case reflect.Int, reflect.Int8, reflect.Int16, reflect.Int32, reflect.Int64:
		return a.Int() == b.Int()
	case reflect.Uint, reflect.Uint8, reflect.Uint16, reflect.Uint32, reflect.Uint64, reflect.Uintptr:
		return a.Uint() == b.Uint()
	case reflect.Slice:
		if a.Len() != b.Len() {
			return false
		}
		for i := 0; i < a.Len(); i++ {
			if !eq(a.Index(i), b.Index(i)) {
				return false
			}
		}
		return true
	case reflect.Array:
		for i := 0; i < a.Len(); i++ {
			if !eq(a.Index(i), b.Index(i)) {
				return false
			}
		}
		return true
	case reflect.Struct:
		for i := 0; i < a.NumField(); i++ {
			if !eq(a.Field(i), b.Field(i)) {
				return false
			}
		}
		return true
	case reflect.Pointer:
		if a.IsNil() || b.IsNil() {
			return a.IsNil() == b.IsNil()
		}
		return eq(a.Elem(), b.Elem())
	case reflect.String:
		return a.String() == b.String()
	}
	return true
}

func dump(v reflect.Value) string {
	if v.Kind() == reflect.Interface {
		v = v.Elem()
	}
	switch v.Kind() {
	case reflect.Bool:
		return strconv.FormatBool(v.Bool())
	case reflect.Int, reflect.Int8, reflect.Int16, reflect.Int32, reflect.Int64:
		return strconv.FormatInt(v.Int(), 10)
	case reflect.Uint, reflect.Uint8, reflect.Uint16, reflect.Uint32, reflect.Uint64, reflect.Uintptr:
		return "0x" + strconv.FormatUint(v.Uint(), 16)
	case reflect.Slice, reflect.Array:
		s := "["
		for i := 0; i < v.Len(); i++ {
			if i > 0 {
				s += " "
			}
			s += dump(v.Index(i))
		}
		return s + "]"
	case reflect.Struct:
		s := "{"
		for i := 0; i < v.NumField(); i++ {
			if i > 0 {
				s += " "
			}
			s += v.Type().Field(i).Name + ":" + dump(v.Field(i))
		}
		return s + "}"
	case reflect.Pointer:
		if v.IsNil() {
			return "nil"
		}
		return "&" + dump(v.Elem())
	}
	return "?"
}

func runDiff(t *testing.T, id string, gen func(int64) (outcome, outcome)) {
	n := 300000
	if s := os.Getenv("DIFFN"); s != "" {
		n, _ = strconv.Atoi(s)
	}
	start := time.Now()
	oldOnlyPanic, iters := 0, 0
	for i := 0; i < n; i++ {
		if i%256 == 0 && time.Since(start) > 25*time.Second {
			break
		}
		iters++
		a, b := gen(int64(i)*7919 + 17)
		if a.pan != nil {
			if b.pan == nil {
				oldOnlyPanic++
			}
			continue
		}
		kind := ""
		if b.pan != nil {
			kind = "NEW_PANICS"
		} else if !eq(reflect.ValueOf(a.res), reflect.ValueOf(b.res)) {
			kind = "RESULT_DIFF"
		} else if !eq(reflect.ValueOf(a.st), reflect.ValueOf(b.st)) {
			kind = "STATE_DIFF"
		}
		if kind != "" {
			fmt.Printf("WITNESS %s %s seed=%d\n  inputs: %s\n  old res=%s pan=%v\n  new res=%s pan=%v\n  old state=%s\n  new state=%s\n", id, kind, int64(i)*7919+17, a.in, dump(reflect.ValueOf(a.res)), a.pan, dump(reflect.ValueOf(b.res)), b.pan, dump(reflect.ValueOf(a.st)), dump(reflect.ValueOf(b.st)))
			t.Fatalf("not equivalent: %s", kind)
		}
	}
	fmt.Printf("NOWITNESS %s iters=%d old_only_panics=%d\n", id, iters, oldOnlyPanic)
}
`
