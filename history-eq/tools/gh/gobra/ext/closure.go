package main

import (
	"bytes"
	"fmt"
	"go/ast"
	"go/constant"
	"go/printer"
	"go/token"
	"go/types"
	"sort"
	"strings"
)

type Feat struct {
	Unsafe, Go, Chan, Defer, FuncLit, Generics, Float, Map, Recover, Panic, Goto, Iface, BodyLess, Unresolved bool
	Loops                                                                                                      int
	Imports                                                                                                    map[string]string
	IfaceCalls                                                                                                 []string
}

func (a *Feat) merge(b *Feat) {
	a.Unsafe = a.Unsafe || b.Unsafe
	a.Go = a.Go || b.Go
	a.Chan = a.Chan || b.Chan
	a.Defer = a.Defer || b.Defer
	a.FuncLit = a.FuncLit || b.FuncLit
	a.Generics = a.Generics || b.Generics
	a.Float = a.Float || b.Float
	a.Map = a.Map || b.Map
	a.Recover = a.Recover || b.Recover
	a.Panic = a.Panic || b.Panic
	a.Goto = a.Goto || b.Goto
	a.Iface = a.Iface || b.Iface
	a.BodyLess = a.BodyLess || b.BodyLess
	a.Unresolved = a.Unresolved || b.Unresolved
	a.Loops += b.Loops
	for k, v := range b.Imports {
		if a.Imports == nil {
			a.Imports = map[string]string{}
		}
		a.Imports[k] = v
	}
	a.IfaceCalls = append(a.IfaceCalls, b.IfaceCalls...)
}

// Decl is one emitted package-level declaration.
type Decl struct {
	Key     string
	Name    string // emitted name
	Pkg     *Pkg
	Obj     types.Object
	FD      *ast.FuncDecl
	Ref     *DeclRef
	Deps    []string
	Feat    Feat
	Text    string
	Lines   int
	Imports map[string]string // import path -> alias used (name)
}

func objKey(o types.Object) string {
	if o.Pkg() == nil {
		return o.Name()
	}
	if f, ok := o.(*types.Func); ok {
		if sig, ok := f.Type().(*types.Signature); ok && sig.Recv() != nil {
			rt := sig.Recv().Type()
			if p, ok := rt.(*types.Pointer); ok {
				rt = p.Elem()
			}
			if n, ok := rt.(*types.Named); ok {
				return o.Pkg().Path() + "." + n.Obj().Name() + "." + o.Name()
			}
		}
	}
	return o.Pkg().Path() + "." + o.Name()
}

func (u *Universe) pkgOfObj(o types.Object) *Pkg {
	if o == nil || o.Pkg() == nil {
		return nil
	}
	p, ok := u.Pkgs[o.Pkg().Path()]
	if !ok {
		return nil
	}
	return p
}

func isPkgLevel(o types.Object) bool {
	return o != nil && o.Pkg() != nil && o.Parent() == o.Pkg().Scope()
}

// local module object that we can inline?
func (u *Universe) localObj(o types.Object) (*Pkg, bool) {
	if o == nil || o.Pkg() == nil || !u.isLocal(o.Pkg().Path()) {
		return nil, false
	}
	p := u.pkgOfObj(o)
	return p, p != nil
}

func (u *Universe) emitName(base *Pkg, o types.Object) string {
	n := o.Name()
	if o.Pkg() != nil && o.Pkg().Path() != base.Path {
		pp := o.Pkg().Path()
		n = strings.NewReplacer("/", "_", ".", "_", "-", "_").Replace(strings.TrimPrefix(strings.TrimPrefix(pp, u.ModPath), "/")) + "_" + n
	}
	return n + "_" + u.Side
}

type Extractor struct {
	U     *Universe
	Base  *Pkg // package of the target (names from other packages are prefixed)
	Decls map[string]*Decl
}

func NewExtractor(u *Universe, base *Pkg) *Extractor {
	return &Extractor{U: u, Base: base, Decls: map[string]*Decl{}}
}

func printNode(fset *token.FileSet, n interface{}) string {
	var b bytes.Buffer
	cfg := printer.Config{Mode: printer.UseSpaces | printer.TabIndent, Tabwidth: 4}
	cfg.Fprint(&b, fset, n)
	return b.String()
}

// walk node: gather deps/features; no mutation
func (e *Extractor) scan(p *Pkg, n ast.Node, d *Decl) {
	u := e.U
	info := p.Info
	f := &d.Feat
	f.Imports = map[string]string{}
	ast.Inspect(n, func(x ast.Node) bool {
		switch t := x.(type) {
		case *ast.GoStmt:
			f.Go = true
		case *ast.DeferStmt:
			f.Defer = true
		case *ast.ChanType, *ast.SendStmt, *ast.SelectStmt:
			f.Chan = true
		case *ast.UnaryExpr:
			if t.Op == token.ARROW {
				f.Chan = true
			}
		case *ast.FuncLit:
			f.FuncLit = true
		case *ast.MapType:
			f.Map = true
		case *ast.ForStmt, *ast.RangeStmt:
			f.Loops++
		case *ast.BranchStmt:
			if t.Tok == token.GOTO {
				f.Goto = true
			}
		case *ast.BasicLit:
			if t.Kind == token.FLOAT || t.Kind == token.IMAG {
				f.Float = true
			}
		case *ast.TypeSpec:
			if t.TypeParams != nil {
				f.Generics = true
			}
		case *ast.FuncType:
			if t.TypeParams != nil {
				f.Generics = true
			}
		case *ast.SelectorExpr:
			if sel, ok := info.Selections[t]; ok {
				if fo, ok := sel.Obj().(*types.Func); ok {
					if _, isI := sel.Recv().Underlying().(*types.Interface); isI || types.IsInterface(sel.Recv()) {
						f.Iface = true
						f.IfaceCalls = append(f.IfaceCalls, types.TypeString(sel.Recv(), nil)+"."+fo.Name())
					}
					if pk, ok := u.localObj(fo); ok && pk != nil {
						if fd := pk.Funcs[fo]; fd != nil && !types.IsInterface(sel.Recv()) {
							d.Deps = append(d.Deps, objKey(fo))
						}
					}
				}
			}
		case *ast.Ident:
			switch t.Name {
			case "float32", "float64", "complex64", "complex128":
				f.Float = true
			case "recover":
				f.Recover = true
			case "panic":
				f.Panic = true
			}
			o := info.Uses[t]
			if o == nil {
				o = info.Defs[t]
			}
			if o == nil {
				return true
			}
			if tv, ok := o.(*types.Var); ok && tv.Type() != nil && containsFloat(tv.Type()) {
				f.Float = true
			}
			if pn, ok := o.(*types.PkgName); ok {
				ip := pn.Imported().Path()
				f.Imports[ip] = pn.Name()
				if ip == "unsafe" {
					f.Unsafe = true
				}
				if ip == "C" {
					f.Unresolved = true
				}
				return true
			}
			if _, ok := info.Uses[t]; ok {
				if isPkgLevel(o) {
					if _, ok := u.localObj(o); ok {
						switch o.(type) {
						case *types.Func, *types.TypeName, *types.Var, *types.Const:
							d.Deps = append(d.Deps, objKey(o))
						}
					}
				}
			}
		}
		return true
	})
	if fd, ok := n.(*ast.FuncDecl); ok && fd.Body == nil {
		f.BodyLess = true
	}
}

func containsFloat(t types.Type) bool {
	if b, ok := t.Underlying().(*types.Basic); ok {
		return b.Info()&(types.IsFloat|types.IsComplex) != 0
	}
	return false
}

// declFor returns (creating) the Decl for object o of a local package.
func (e *Extractor) declFor(o types.Object) *Decl {
	k := objKey(o)
	if d, ok := e.Decls[k]; ok {
		return d
	}
	p := e.U.pkgOfObj(o)
	if p == nil {
		return nil
	}
	d := &Decl{Key: k, Pkg: p, Obj: o}
	e.Decls[k] = d
	switch ob := o.(type) {
	case *types.Func:
		fd := p.Funcs[ob]
		if fd == nil {
			return nil
		}
		d.FD = fd
		d.Name = ob.Name()
		if sig, ok := ob.Type().(*types.Signature); !ok || sig.Recv() == nil {
			d.Name = e.U.emitName(e.Base, o)
		}
		e.scan(p, fd, d)
	default:
		ref := p.Specs[o]
		if ref == nil {
			return nil
		}
		d.Ref = ref
		d.Name = e.U.emitName(e.Base, o)
		e.scan(p, ref.Spec, d)
	}
	return d
}

// Closure returns decl keys reachable from o (including o), or nil+false if too big.
func (e *Extractor) Closure(o types.Object, limit int) ([]string, bool) {
	seen := map[string]bool{}
	var order []string
	var work []types.Object
	work = append(work, o)
	byKey := map[string]types.Object{objKey(o): o}
	for len(work) > 0 {
		x := work[len(work)-1]
		work = work[:len(work)-1]
		k := objKey(x)
		if seen[k] {
			continue
		}
		seen[k] = true
		d := e.declFor(x)
		if d == nil {
			continue
		}
		order = append(order, k)
		if len(order) > limit {
			return order, false
		}
		for _, dk := range d.Deps {
			if !seen[dk] {
				if ob := e.resolveKey(dk); ob != nil {
					byKey[dk] = ob
					work = append(work, ob)
				}
			}
		}
	}
	sort.Strings(order)
	return order, true
}

var keyObjs = map[*Extractor]map[string]types.Object{}

func (e *Extractor) resolveKey(k string) types.Object {
	// search all loaded packages' defs; cache
	m := keyObjs[e]
	if m == nil {
		m = map[string]types.Object{}
		for _, p := range e.U.Pkgs {
			for o := range p.Funcs {
				m[objKey(o)] = o
			}
			for o := range p.Specs {
				m[objKey(o)] = o
			}
		}
		keyObjs[e] = m
	}
	return m[k]
}

// Render emits the text of decl d with renames applied (mutating then restoring identifiers).
func (e *Extractor) Render(d *Decl) {
	if d.Text != "" {
		return
	}
	u := e.U
	p := d.Pkg
	if d.Ref != nil {
		if c, ok := d.Obj.(*types.Const); ok {
			d.Text = e.constText(d, c)
			d.Feat.Imports = map[string]string{}
			d.Lines = 1
			return
		}
	}
	var node ast.Node
	switch {
	case d.FD != nil:
		node = d.FD
	case d.Ref != nil:
		node = d.Ref.Spec
	}
	text := e.renderNode(p, node)
	switch {
	case d.Ref != nil:
		if _, ok := d.Ref.Spec.(*ast.TypeSpec); ok {
			text = "type " + text
		} else {
			text = d.Ref.Gen.Tok.String() + " " + text
		}
	}
	d.Text = text
	d.Lines = strings.Count(text, "\n") + 1
	_ = u
}

func (e *Extractor) constText(d *Decl, c *types.Const) string {
	var v string
	val := c.Val()
	switch val.Kind() {
	case constant.String:
		v = fmt.Sprintf("%q", constant.StringVal(val))
	case constant.Bool:
		v = fmt.Sprint(constant.BoolVal(val))
	default:
		v = val.ExactString()
	}
	ts := ""
	switch t := c.Type().(type) {
	case *types.Basic:
		if t.Info()&types.IsUntyped == 0 {
			ts = " " + t.Name()
		}
	case *types.Named:
		if p, ok := e.U.localObj(t.Obj()); ok && p != nil {
			ts = " " + e.U.emitName(e.Base, t.Obj())
		} else {
			ts = " " + types.TypeString(t, nil)
		}
	}
	return fmt.Sprintf("const %s%s = %s", d.Name, ts, v)
}

type journal struct {
	id   *ast.Ident
	name string
}

// renderNode prints n with module-local package-level identifiers renamed.
func (e *Extractor) renderNode(p *Pkg, n ast.Node) string {
	u := e.U
	var jr []journal
	set := func(id *ast.Ident, nm string) {
		jr = append(jr, journal{id, id.Name})
		id.Name = nm
	}
	ast.Inspect(n, func(x ast.Node) bool {
		id, ok := x.(*ast.Ident)
		if !ok {
			return true
		}
		o := p.Info.Uses[id]
		if o == nil {
			o = p.Info.Defs[id]
		}
		if gobraReserved[id.Name] {
			if o == nil || o.Pkg() == nil && o.Parent() != types.Universe || o.Pkg() != nil && u.isLocal(o.Pkg().Path()) {
				set(id, id.Name+"_g")
				return true
			}
		}
		if o == nil {
			return true
		}
		if pn, ok := o.(*types.PkgName); ok {
			if u.isLocal(pn.Imported().Path()) {
				set(id, "\x01")
			}
			return true
		}
		if isPkgLevel(o) {
			if _, ok := u.localObj(o); ok {
				switch o.(type) {
				case *types.Func, *types.TypeName, *types.Var, *types.Const:
					set(id, u.emitName(e.Base, o))
				}
			}
		}
		return true
	})
	s := printNode(u.Fset, n)
	for i := len(jr) - 1; i >= 0; i-- {
		jr[i].id.Name = jr[i].name
	}
	return strings.ReplaceAll(s, "\x01.", "")
}

// stdImports returns import path -> package name used for the decl's text.
func (e *Extractor) stdImports(d *Decl) map[string]string {
	m := map[string]string{}
	for ip, nm := range d.Feat.Imports {
		if e.U.isLocal(ip) {
			continue
		}
		m[ip] = nm
	}
	return m
}

var gobraReserved = func() map[string]bool {
	m := map[string]bool{}
	for _, w := range strings.Fields("len cap make new acc adt apply as assert asserting assume atomic axiom before by contra critical decreases dict domain dup elem ensures exclusive exhale exists fold forall friendPkg get ghost gpointer implements importRequires in inhale intersection invariant isComparable let low lowContext match mayInit mset none noPerm old opaque openDupPkgInv opensInvariants option outline pkgInvariant pred predicate preserves proof pure refute rel requires reveal seq set setminus share shared some subset trusted typeOf unfold unfolding union with writePerm") {
		m[w] = true
	}
	return m
}()

func gname(n string) string {
	if gobraReserved[n] {
		return n + "_g"
	}
	return n
}
