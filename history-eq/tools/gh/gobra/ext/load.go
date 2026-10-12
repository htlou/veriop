package main

import (
	"fmt"
	"go/ast"
	"go/build"
	"go/importer"
	"go/parser"
	"go/token"
	"go/types"
	"os"
	"path/filepath"
	"sort"
	"strings"
)

// Universe = one source tree (old or new) with a build configuration.
type Universe struct {
	Root, ModPath string
	Ctx           build.Context
	Fset          *token.FileSet
	Pkgs          map[string]*Pkg
	Std           types.ImporterFrom
	Side          string // "o" or "n"
}

type Pkg struct {
	Path, Dir string
	Files     []*ast.File
	FileNames []string
	Info      *types.Info
	Types     *types.Package
	Errors    []string
	Funcs     map[types.Object]*ast.FuncDecl // all FuncDecls keyed by their Defs object
	ByKey     map[string]*ast.FuncDecl       // "T.m" or "f"
	Specs     map[types.Object]*DeclRef      // package-level type/var/const objects
}
type DeclRef struct {
	Gen  *ast.GenDecl
	Spec ast.Spec
}

var stdFset = token.NewFileSet()
var stdImp types.ImporterFrom

func init() {
	stdImp = importer.ForCompiler(stdFset, "source", nil).(types.ImporterFrom)
}

func readModPath(root string) string {
	b, err := os.ReadFile(filepath.Join(root, "go.mod"))
	if err != nil {
		return ""
	}
	for _, l := range strings.Split(string(b), "\n") {
		l = strings.TrimSpace(l)
		if strings.HasPrefix(l, "module ") {
			return strings.Trim(strings.TrimSpace(l[7:]), "\"")
		}
	}
	return ""
}

func NewUniverse(root, side string, ctx build.Context) *Universe {
	return &Universe{Root: root, ModPath: readModPath(root), Ctx: ctx, Fset: stdFset, Pkgs: map[string]*Pkg{}, Side: side}
}

func (u *Universe) isLocal(path string) bool {
	return u.ModPath != "" && (path == u.ModPath || strings.HasPrefix(path, u.ModPath+"/"))
}

type uimp struct{ u *Universe }

func (i uimp) Import(path string) (*types.Package, error) { return i.ImportFrom(path, "", 0) }
func (i uimp) ImportFrom(path, dir string, mode types.ImportMode) (*types.Package, error) {
	u := i.u
	if u.isLocal(path) {
		p := u.Load(path)
		if p != nil && p.Types != nil {
			return p.Types, nil
		}
		return nil, fmt.Errorf("cannot load local package %s", path)
	}
	if !strings.Contains(strings.Split(path, "/")[0], ".") { // stdlib
		pk, err := stdImp.ImportFrom(path, "", 0)
		if err == nil {
			return pk, nil
		}
	}
	// third party / failure: fake empty package
	name := path[strings.LastIndex(path, "/")+1:]
	pk := types.NewPackage(path, name)
	pk.MarkComplete()
	return pk, nil
}

func (u *Universe) Load(path string) *Pkg {
	if p, ok := u.Pkgs[path]; ok {
		return p
	}
	rel := strings.TrimPrefix(strings.TrimPrefix(path, u.ModPath), "/")
	dir := filepath.Join(u.Root, rel)
	p := &Pkg{Path: path, Dir: dir, Funcs: map[types.Object]*ast.FuncDecl{}, ByKey: map[string]*ast.FuncDecl{}, Specs: map[types.Object]*DeclRef{}}
	u.Pkgs[path] = p
	ents, err := os.ReadDir(dir)
	if err != nil {
		p.Errors = append(p.Errors, err.Error())
		return p
	}
	var names []string
	for _, e := range ents {
		n := e.Name()
		if e.IsDir() || !strings.HasSuffix(n, ".go") || strings.HasSuffix(n, "_test.go") {
			continue
		}
		if ok, err := u.Ctx.MatchFile(dir, n); err != nil || !ok {
			continue
		}
		names = append(names, n)
	}
	sort.Strings(names)
	pkgName := ""
	for _, n := range names {
		f, err := parser.ParseFile(u.Fset, filepath.Join(dir, n), nil, parser.SkipObjectResolution)
		if err != nil {
			p.Errors = append(p.Errors, "parse: "+err.Error())
			continue
		}
		if f.Name.Name == "main" && pkgName == "" {
			// keep
		}
		if pkgName == "" {
			pkgName = f.Name.Name
		}
		if f.Name.Name != pkgName {
			continue
		}
		p.Files = append(p.Files, f)
		p.FileNames = append(p.FileNames, n)
	}
	p.Info = &types.Info{
		Types: map[ast.Expr]types.TypeAndValue{}, Defs: map[*ast.Ident]types.Object{}, Uses: map[*ast.Ident]types.Object{},
		Selections: map[*ast.SelectorExpr]*types.Selection{}, Implicits: map[ast.Node]types.Object{},
	}
	cfg := types.Config{
		Importer: uimp{u}, FakeImportC: true, Sizes: types.SizesFor("gc", u.Ctx.GOARCH),
		Error: func(err error) {
			if len(p.Errors) < 50 {
				p.Errors = append(p.Errors, err.Error())
			}
		},
	}
	p.Types, _ = cfg.Check(path, u.Fset, p.Files, p.Info)
	for _, f := range p.Files {
		for _, d := range f.Decls {
			switch x := d.(type) {
			case *ast.FuncDecl:
				if o := p.Info.Defs[x.Name]; o != nil {
					p.Funcs[o] = x
				}
				key := x.Name.Name
				if x.Recv != nil && len(x.Recv.List) > 0 {
					key = recvName(x.Recv.List[0].Type) + "." + key
				}
				p.ByKey[key] = x
			case *ast.GenDecl:
				for _, sp := range x.Specs {
					switch s := sp.(type) {
					case *ast.TypeSpec:
						if o := p.Info.Defs[s.Name]; o != nil {
							p.Specs[o] = &DeclRef{x, sp}
						}
					case *ast.ValueSpec:
						for _, n := range s.Names {
							if o := p.Info.Defs[n]; o != nil {
								p.Specs[o] = &DeclRef{x, sp}
							}
						}
					}
				}
			}
		}
	}
	return p
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
	case *ast.ParenExpr:
		return recvName(x.X)
	}
	return "?"
}
