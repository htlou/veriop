// gofd: function-level diff of the changed non-test Go files of an old/new tree pair.
// usage: gofd OLD NEW file1.go file2.go ...   (paths relative to tree roots; status resolved by existence)
// Emits JSON: per file, per function: key, sig/body changed, features.
package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"go/ast"
	"go/build"
	"go/parser"
	"go/printer"
	"go/token"
	"os"
	"path/filepath"
	"sort"
	"strings"
)

type Feat struct {
	Unsafe, Go, Chan, Defer, FuncLit, Generics, Float, Map, Recover, Panic bool
	Loops   int
	Range   int
	Goto    bool
	Imports []string
	Lines   int
	BodyLess bool
}
type Fn struct {
	Key      string
	Status   string // changed-body, changed-sig, added, removed
	SigOld   string `json:",omitempty"`
	SigNew   string `json:",omitempty"`
	Old, New *Feat
}
type FileRes struct {
	File    string
	Status  string // M A D
	Built   map[string]bool // config -> built (old,new both?)
	Funcs   []Fn
	Decls   []string // changed non-func decls: "type X", "var Y"...
	Err     string `json:",omitempty"`
}

func printNode(fset *token.FileSet, n interface{}) string {
	var b bytes.Buffer
	cfg := printer.Config{Mode: printer.UseSpaces, Tabwidth: 4}
	cfg.Fprint(&b, fset, n)
	return b.String()
}

type fdecl struct {
	key, sig, body string
	feat           *Feat
}

func features(fset *token.FileSet, fd *ast.FuncDecl, imports map[string]string) *Feat {
	f := &Feat{}
	imp := map[string]bool{}
	if fd.Type.TypeParams != nil || (fd.Recv != nil && len(fd.Recv.List) > 0 && isGenericRecv(fd.Recv.List[0].Type)) {
		f.Generics = true
	}
	if fd.Body == nil {
		f.BodyLess = true
		return f
	}
	f.Lines = fset.Position(fd.End()).Line - fset.Position(fd.Pos()).Line + 1
	ast.Inspect(fd, func(n ast.Node) bool {
		switch x := n.(type) {
		case *ast.GoStmt:
			f.Go = true
		case *ast.DeferStmt:
			f.Defer = true
		case *ast.ChanType, *ast.SendStmt, *ast.SelectStmt:
			f.Chan = true
		case *ast.UnaryExpr:
			if x.Op == token.ARROW {
				f.Chan = true
			}
		case *ast.FuncLit:
			f.FuncLit = true
		case *ast.MapType:
			f.Map = true
		case *ast.ForStmt:
			f.Loops++
		case *ast.RangeStmt:
			f.Range++
		case *ast.BranchStmt:
			if x.Tok == token.GOTO {
				f.Goto = true
			}
		case *ast.BasicLit:
			if x.Kind == token.FLOAT {
				f.Float = true
			}
		case *ast.Ident:
			if x.Name == "float32" || x.Name == "float64" {
				f.Float = true
			}
			if x.Name == "recover" {
				f.Recover = true
			}
			if x.Name == "panic" {
				f.Panic = true
			}
		case *ast.SelectorExpr:
			if id, ok := x.X.(*ast.Ident); ok && id.Obj == nil {
				if p, ok := imports[id.Name]; ok {
					imp[p] = true
					if p == "unsafe" {
						f.Unsafe = true
					}
				}
			}
		}
		return true
	})
	for p := range imp {
		f.Imports = append(f.Imports, p)
	}
	sort.Strings(f.Imports)
	return f
}
func isGenericRecv(e ast.Expr) bool {
	if s, ok := e.(*ast.StarExpr); ok {
		e = s.X
	}
	switch e.(type) {
	case *ast.IndexExpr, *ast.IndexListExpr:
		return true
	}
	return false
}

func recvName(e ast.Expr) string {
	switch x := e.(type) {
	case *ast.StarExpr:
		return recvName(x.X)
	case *ast.Ident:
		return x.Name
	case *ast.IndexExpr:
		return recvName(x.X)
	case *ast.IndexListExpr:
		return recvName(x.X)
	}
	return "?"
}

func parse(path string) (map[string]*fdecl, map[string]string, error) {
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, path, nil, 0)
	if err != nil {
		return nil, nil, err
	}
	imports := map[string]string{}
	for _, im := range f.Imports {
		p := strings.Trim(im.Path.Value, "\"")
		name := p[strings.LastIndex(p, "/")+1:]
		if im.Name != nil {
			name = im.Name.Name
		}
		imports[name] = p
	}
	fns := map[string]*fdecl{}
	decls := map[string]string{}
	for _, d := range f.Decls {
		switch x := d.(type) {
		case *ast.FuncDecl:
			key := x.Name.Name
			if x.Recv != nil && len(x.Recv.List) > 0 {
				key = recvName(x.Recv.List[0].Type) + "." + key
			}
			sigNode := &ast.FuncDecl{Recv: x.Recv, Name: x.Name, Type: x.Type}
			fd := &fdecl{key: key, sig: printNode(fset, sigNode)}
			if x.Body != nil {
				fd.body = printNode(fset, x.Body)
			}
			fd.feat = features(fset, x, imports)
			fns[key] = fd
		case *ast.GenDecl:
			if x.Tok == token.IMPORT {
				continue
			}
			for _, sp := range x.Specs {
				switch s := sp.(type) {
				case *ast.TypeSpec:
					decls["type "+s.Name.Name] = printNode(fset, s)
				case *ast.ValueSpec:
					for _, n := range s.Names {
						decls[x.Tok.String()+" "+n.Name] = printNode(fset, s)
					}
				}
			}
		}
	}
	// stash decls in fns under special keys
	for k, v := range decls {
		fns["\x00"+k] = &fdecl{key: k, sig: v}
	}
	return fns, imports, nil
}

func builtIn(ctx build.Context, path string) bool {
	if ctx.GOOS == "" {
		return true
	}
	ok, err := ctx.MatchFile(filepath.Dir(path), filepath.Base(path))
	return err == nil && ok
}

func main() {
	oldR, newR := os.Args[1], os.Args[2]
	var out []FileRes
	configs := map[string]build.Context{}
	def := build.Default
	def.GOOS, def.GOARCH, def.CgoEnabled = "linux", "amd64", false
	configs["amd64"] = def
	pg := def
	pg.BuildTags = []string{"purego", "noasm", "appengine"}
	configs["amd64-purego"] = pg
	ar := def
	ar.GOARCH = "arm64"
	configs["arm64"] = ar
	for _, rel := range os.Args[3:] {
		fr := FileRes{File: rel, Built: map[string]bool{}}
		op, np := filepath.Join(oldR, rel), filepath.Join(newR, rel)
		_, eo := os.Stat(op)
		_, en := os.Stat(np)
		var of, nf map[string]*fdecl
		var err error
		if eo == nil {
			fr.Status = "M"
			of, _, err = parse(op)
			if err != nil {
				fr.Err = "old parse: " + err.Error()
			}
		}
		if en == nil {
			if eo != nil {
				fr.Status = "A"
			}
			nf, _, err = parse(np)
			if err != nil {
				fr.Err += "new parse: " + err.Error()
			}
		} else {
			fr.Status = "D"
		}
		for name, c := range configs {
			p := np
			if en != nil {
				p = op
			}
			fr.Built[name] = builtIn(c, p)
		}
		keys := map[string]bool{}
		for k := range of {
			keys[k] = true
		}
		for k := range nf {
			keys[k] = true
		}
		var ks []string
		for k := range keys {
			ks = append(ks, k)
		}
		sort.Strings(ks)
		for _, k := range ks {
			o, n := of[k], nf[k]
			if strings.HasPrefix(k, "\x00") {
				name := k[1:]
				if o == nil || n == nil || o.sig != n.sig {
					fr.Decls = append(fr.Decls, name)
				}
				continue
			}
			switch {
			case o == nil:
				fr.Funcs = append(fr.Funcs, Fn{Key: k, Status: "added", SigNew: n.sig, New: n.feat})
			case n == nil:
				fr.Funcs = append(fr.Funcs, Fn{Key: k, Status: "removed", SigOld: o.sig, Old: o.feat})
			case o.sig != n.sig:
				fr.Funcs = append(fr.Funcs, Fn{Key: k, Status: "changed-sig", SigOld: o.sig, SigNew: n.sig, Old: o.feat, New: n.feat})
			case o.body != n.body:
				fr.Funcs = append(fr.Funcs, Fn{Key: k, Status: "changed-body", SigOld: o.sig, Old: o.feat, New: n.feat})
			}
		}
		out = append(out, fr)
	}
	e := json.NewEncoder(os.Stdout)
	e.SetIndent("", " ")
	if err := e.Encode(out); err != nil {
		fmt.Fprintln(os.Stderr, err)
	}
}
