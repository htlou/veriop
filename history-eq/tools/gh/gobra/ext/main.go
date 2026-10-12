package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"go/build"
	"go/types"
	"os"
	"path/filepath"
	"sort"
	"strings"
)

type TargetIn struct {
	Dir    string `json:"dir"`
	Key    string `json:"key"`
	Status string `json:"status"`
}
type SideOut struct {
	Found     bool            `json:"found"`
	Closure   []string        `json:"closure,omitempty"`
	TooLarge  bool            `json:"too_large,omitempty"`
	Lines     int             `json:"lines"`
	Feat      *FeatOut        `json:"feat,omitempty"`
	PkgErrors []string        `json:"pkg_errors,omitempty"`
	Sig       string          `json:"sig,omitempty"`
}
type FeatOut struct {
	Unsafe, Go, Chan, Defer, FuncLit, Generics, Float, Map, Recover, Panic, Goto, Iface, BodyLess, Unresolved bool
	Loops      int
	Imports    []string
	IfaceCalls []string
}
type TargetOut struct {
	ID      string  `json:"id"`
	Dir     string  `json:"dir"`
	Key     string  `json:"key"`
	Status  string  `json:"status"`
	Old     SideOut `json:"old"`
	New     SideOut `json:"new"`
	SigSame bool    `json:"sig_same"`
	Harness *struct {
		OK   bool   `json:"ok"`
		Why  string `json:"why,omitempty"`
		Dir  string `json:"dir,omitempty"`
		Kinds []string `json:"kinds,omitempty"`
	} `json:"harness,omitempty"`
}
type DeclLine struct {
	Name  string `json:"name"`
	Start int    `json:"start"`
	End   int    `json:"end"`
	Targets []string `json:"targets"`
}
type TC struct {
	File  string     `json:"file"`
	Decls []DeclLine `json:"decls"`
}

func fo(f *Feat) *FeatOut {
	o := &FeatOut{f.Unsafe, f.Go, f.Chan, f.Defer, f.FuncLit, f.Generics, f.Float, f.Map, f.Recover, f.Panic, f.Goto, f.Iface, f.BodyLess, f.Unresolved, f.Loops, nil, nil}
	for k := range f.Imports {
		o.Imports = append(o.Imports, k)
	}
	sort.Strings(o.Imports)
	seen := map[string]bool{}
	for _, c := range f.IfaceCalls {
		if !seen[c] {
			seen[c] = true
			o.IfaceCalls = append(o.IfaceCalls, c)
		}
	}
	sort.Strings(o.IfaceCalls)
	return o
}

func sanitize(s string) string {
	return strings.NewReplacer("/", "_", ".", "_", "*", "p", "-", "_").Replace(s)
}

func importBlock(imps map[string]string) string {
	var ks []string
	for k := range imps {
		ks = append(ks, k)
	}
	sort.Strings(ks)
	var sb strings.Builder
	for _, k := range ks {
		last := k[strings.LastIndex(k, "/")+1:]
		nm := imps[k]
		if k == "C" {
			continue
		}
		if nm != "" && nm != last && nm != "_" {
			fmt.Fprintf(&sb, "import %s %q\n", nm, k)
		} else {
			fmt.Fprintf(&sb, "import %q\n", k)
		}
	}
	return sb.String()
}

func main() {
	oldR := flag.String("old", "", "")
	newR := flag.String("new", "", "")
	cfgName := flag.String("cfg", "amd64", "")
	out := flag.String("out", "", "")
	tf := flag.String("targets", "", "")
	limit := flag.Int("limit", 60, "")
	modDef := flag.String("mod", "", "default module path if no go.mod")
	flag.Parse()
	var targets []TargetIn
	b, _ := os.ReadFile(*tf)
	json.Unmarshal(b, &targets)
	ctx := build.Default
	ctx.GOOS, ctx.GOARCH, ctx.CgoEnabled = "linux", "amd64", false
	switch *cfgName {
	case "amd64-purego":
		ctx.BuildTags = []string{"purego", "noasm", "appengine"}
	case "arm64":
		ctx.GOARCH = "arm64"
	}
	uo := NewUniverse(*oldR, "o", ctx)
	un := NewUniverse(*newR, "n", ctx)
	if uo.ModPath == "" {
		uo.ModPath = *modDef
	}
	if un.ModPath == "" {
		un.ModPath = *modDef
	}
	os.MkdirAll(*out, 0o755)
	type sideState struct {
		u    *Universe
		exs  map[string]*Extractor // by pkg path
		keep map[string]map[string]bool // tid -> decl keys
	}
	sides := map[string]*sideState{"o": {uo, map[string]*Extractor{}, map[string]map[string]bool{}}, "n": {un, map[string]*Extractor{}, map[string]map[string]bool{}}}
	var outs []*TargetOut
	fns := map[string]map[string]*SideFn{} // tid -> side -> fn
	for _, t := range targets {
		tid := sanitize(t.Dir + "_" + t.Key)
		to := &TargetOut{ID: tid, Dir: t.Dir, Key: t.Key, Status: t.Status}
		outs = append(outs, to)
		fns[tid] = map[string]*SideFn{}
		for side, ss := range sides {
			path := ss.u.ModPath
			if t.Dir != "." && t.Dir != "" {
				path += "/" + t.Dir
			}
			so := &to.Old
			if side == "n" {
				so = &to.New
			}
			p := ss.u.Load(path)
			if p == nil {
				continue
			}
			so.PkgErrors = p.Errors
			fd := p.ByKey[t.Key]
			if fd == nil {
				continue
			}
			obj, _ := p.Info.Defs[fd.Name].(*types.Func)
			if obj == nil {
				continue
			}
			so.Found = true
			so.Sig = types.TypeString(obj.Type(), nil)
			ex := ss.exs[path]
			if ex == nil {
				ex = NewExtractor(ss.u, p)
				ss.exs[path] = ex
			}
			keys, ok := ex.Closure(obj, *limit)
			so.TooLarge = !ok
			so.Closure = nil
			var ft Feat
			lines := 0
			for _, k := range keys {
				d := ex.Decls[k]
				if d == nil {
					continue
				}
				ex.Render(d)
				so.Closure = append(so.Closure, d.Name)
				ft.merge(&d.Feat)
				lines += d.Lines
			}
			so.Lines = lines
			so.Feat = fo(&ft)
			if ok {
				ss.keep[tid] = map[string]bool{}
				for _, k := range keys {
					ss.keep[tid][k] = true
				}
			}
			fns[tid][side] = &SideFn{E: ex, P: p, FD: fd, Obj: obj, Name: func() string {
				if fd.Recv != nil {
					return fd.Name.Name
				}
				return ex.Decls[objKey(obj)].Name
			}(), Recv: fd.Recv != nil}
		}
		to.SigSame = to.Old.Found && to.New.Found && stripSides(to.Old.Sig) == stripSides(to.New.Sig)
	}
	// typecheck unions
	tcs := map[string]*TC{}
	for side, ss := range sides {
		var decls []*Decl
		seen := map[string]bool{}
		tmap := map[string][]string{}
		allImps := map[string]string{}
		for _, to := range outs {
			ks := ss.keep[to.ID]
			var names []string
			for k := range ks {
				names = append(names, k)
			}
			sort.Strings(names)
			for _, k := range names {
				for _, ex := range ss.exs {
					if d, ok := ex.Decls[k]; ok && d.Text != "" {
						tmap[k] = append(tmap[k], to.ID)
						if !seen[k] {
							seen[k] = true
							decls = append(decls, d)
						}
						break
					}
				}
			}
		}
		sort.Slice(decls, func(i, j int) bool { return decls[i].Key < decls[j].Key })
		var sb strings.Builder
		for _, d := range decls {
			for k, v := range d.Feat.Imports {
				if !ss.u.isLocal(k) {
					allImps[k] = v
				}
			}
		}
		sb.WriteString("package prod\n\n")
		sb.WriteString(importBlock(allImps))
		sb.WriteString("\n")
		line := strings.Count(sb.String(), "\n") + 1
		tc := &TC{File: "u.go"}
		for _, d := range decls {
			start := line
			sb.WriteString(d.Text + "\n\n")
			line += strings.Count(d.Text, "\n") + 2
			tc.Decls = append(tc.Decls, DeclLine{d.Name, start, line - 2, tmap[d.Key]})
		}
		dir := filepath.Join(*out, "tc_"+map[string]string{"o": "old", "n": "new"}[side])
		os.MkdirAll(dir, 0o755)
		os.WriteFile(filepath.Join(dir, "u.go"), []byte(sb.String()), 0o644)
		tc.File = filepath.Join(dir, "u.go")
		tcs[side] = tc
		if len(decls) == 0 {
			os.RemoveAll(dir)
			tcs[side] = nil
		}
	}
	// harness
	for _, to := range outs {
		if !(to.SigSame && fns[to.ID]["o"] != nil && fns[to.ID]["n"] != nil) {
			continue
		}
		so, sn := fns[to.ID]["o"], fns[to.ID]["n"]
		h := &struct {
			OK    bool     `json:"ok"`
			Why   string   `json:"why,omitempty"`
			Dir   string   `json:"dir,omitempty"`
			Kinds []string `json:"kinds,omitempty"`
		}{}
		to.Harness = h
		if to.Old.TooLarge || to.New.TooLarge {
			h.Why = "closure too large"
			continue
		}
		hh := buildHarness(so, sn, to.ID)
		if hh.Why != "" {
			h.Why = hh.Why
			continue
		}
		dir := filepath.Join(*out, "prod", to.ID)
		os.MkdirAll(dir, 0o755)
		imps := map[string]string{}
		var sb strings.Builder
		for _, side := range []string{"o", "n"} {
			ss := sides[side]
			var ds []*Decl
			for k := range ss.keep[to.ID] {
				for _, ex := range ss.exs {
					if d, ok := ex.Decls[k]; ok && d.Text != "" {
						ds = append(ds, d)
						break
					}
				}
			}
			sort.Slice(ds, func(i, j int) bool { return ds[i].Key < ds[j].Key })
			for _, d := range ds {
				for k, v := range d.Feat.Imports {
					if !ss.u.isLocal(k) {
						imps[k] = v
					}
				}
				sb.WriteString(d.Text + "\n\n")
			}
		}
		prod := "package prod\n\n" + importBlock(imps) + "\n" + sb.String() + hh.Text
		os.WriteFile(filepath.Join(dir, "prod.go"), []byte(prod), 0o644)
		nimps := map[string]string{}
		for k, v := range imps {
			nimps[k] = v
		}
		nimps["testing"], nimps["math/rand"], nimps["reflect"] = "testing", "rand", "reflect"
		nat := "package prod\n\n" + importBlock(map[string]string{"testing": "testing", "math/rand": "rand", "reflect": "reflect"}) + "\n" + hh.Native
		os.WriteFile(filepath.Join(dir, "native_test.go"), []byte(nat), 0o644)
		os.WriteFile(filepath.Join(dir, "helper_test.go"), []byte(helperSrc), 0o644)
		os.WriteFile(filepath.Join(dir, "go.mod"), []byte("module prod\ngo 1.22\n"), 0o644)
		h.OK = true
		h.Dir = dir
		for _, p := range hh.Params {
			h.Kinds = append(h.Kinds, p.Kind)
		}
	}
	res := map[string]interface{}{"config": *cfgName, "mod_old": uo.ModPath, "mod_new": un.ModPath, "targets": outs, "tc_old": tcs["o"], "tc_new": tcs["n"]}
	jb, _ := json.MarshalIndent(res, "", " ")
	os.WriteFile(filepath.Join(*out, "ext.json"), jb, 0o644)
	fmt.Println("ok", len(outs))
}

func stripSides(s string) string {
	s = strings.ReplaceAll(s, "_o", "")
	return strings.ReplaceAll(s, "_n", "")
}
