package main

import (
	"fmt"
	"go/ast"
	"go/token"
	"go/types"
	"strings"
)

type Param struct {
	Idx     int
	Name    string // source name (or synthesized)
	TypeO   string // rendered type expr (old side)
	TypeN   string
	Kind    string // basic | slice | structptr | structval | basicptr
	U       string // underlying basic name (basic/slice elem/basicptr)
	Fields  []Field
	IsRecv  bool
}
type Field struct {
	Name string
	Kind string // basic | slice | array
	U    string
	N    int64
}

func basicU(t types.Type) (string, bool) {
	b, ok := t.Underlying().(*types.Basic)
	if !ok {
		return "", false
	}
	if b.Info()&(types.IsInteger|types.IsBoolean) == 0 {
		return "", false
	}
	n := b.Name()
	if b.Kind() == types.UntypedInt || b.Kind() == types.UntypedBool || b.Kind() == types.UntypedRune {
		return "", false
	}
	if b.Kind() == types.UnsafePointer {
		return "", false
	}
	return n, true
}

func classify(t types.Type) (kind, u string, fields []Field, why string) {
	if x, ok := basicU(t); ok {
		return "basic", x, nil, ""
	}
	switch tt := t.Underlying().(type) {
	case *types.Slice:
		if x, ok := basicU(tt.Elem()); ok {
			return "slice", x, nil, ""
		}
		return "", "", nil, "slice of " + types.TypeString(tt.Elem(), nil)
	case *types.Pointer:
		if x, ok := basicU(tt.Elem()); ok {
			return "basicptr", x, nil, ""
		}
		if st, ok := tt.Elem().Underlying().(*types.Struct); ok {
			fl, w := structFields(st)
			if w != "" {
				return "", "", nil, w
			}
			return "structptr", "", fl, ""
		}
		return "", "", nil, "pointer to " + types.TypeString(tt.Elem(), nil)
	case *types.Struct:
		fl, w := structFields(tt)
		if w != "" {
			return "", "", nil, w
		}
		return "structval", "", fl, ""
	}
	return "", "", nil, "type " + types.TypeString(t, nil)
}

func structFields(st *types.Struct) ([]Field, string) {
	var out []Field
	for i := 0; i < st.NumFields(); i++ {
		f := st.Field(i)
		if f.Anonymous() {
			return nil, "embedded field " + f.Name()
		}
		ft := f.Type()
		if x, ok := basicU(ft); ok {
			out = append(out, Field{f.Name(), "basic", x, 0})
			continue
		}
		switch tt := ft.Underlying().(type) {
		case *types.Slice:
			if x, ok := basicU(tt.Elem()); ok {
				out = append(out, Field{f.Name(), "slice", x, 0})
				continue
			}
		case *types.Array:
			if x, ok := basicU(tt.Elem()); ok {
				out = append(out, Field{f.Name(), "array", x, tt.Len()})
				continue
			}
		}
		return nil, "field " + f.Name() + " of type " + types.TypeString(ft, nil)
	}
	return out, ""
}

type SideFn struct {
	E    *Extractor
	P    *Pkg
	FD   *ast.FuncDecl
	Obj  *types.Func
	Name string // emitted function name (or method name)
	Recv bool
}

func (s *SideFn) render(n ast.Node) string { return s.E.renderNode(s.P, n) }

// paramList flattens recv+params (with names).
func (s *SideFn) params() (ps []Param, why string) {
	sig := s.Obj.Type().(*types.Signature)
	var fields []*ast.Field
	var isRecv []bool
	if s.FD.Recv != nil {
		for _, f := range s.FD.Recv.List {
			fields = append(fields, f)
			isRecv = append(isRecv, true)
		}
	}
	for _, f := range s.FD.Type.Params.List {
		fields = append(fields, f)
		isRecv = append(isRecv, false)
	}
	_ = sig
	idx := 0
	for fi, f := range fields {
		names := f.Names
		if len(names) == 0 {
			names = []*ast.Ident{ast.NewIdent("_")}
		}
		if _, ok := f.Type.(*ast.Ellipsis); ok {
			return nil, "variadic parameter"
		}
		for _, n := range names {
			var t types.Type
			if tv, ok := s.P.Info.Types[f.Type]; ok {
				t = tv.Type
			}
			if t == nil {
				return nil, "untyped parameter"
			}
			k, u, fl, w := classify(t)
			if w != "" {
				return nil, fmt.Sprintf("parameter %s: %s", n.Name, w)
			}
			nm := n.Name
			ps = append(ps, Param{Idx: idx, Name: nm, TypeO: s.render(f.Type), Kind: k, U: u, Fields: fl, IsRecv: isRecv[fi]})
			idx++
		}
	}
	return
}

func (s *SideFn) results() (rs []Param, named bool, why string) {
	if s.FD.Type.Results == nil {
		return nil, false, ""
	}
	idx := 0
	for _, f := range s.FD.Type.Results.List {
		names := f.Names
		cnt := len(names)
		if cnt == 0 {
			cnt = 1
		} else {
			named = true
		}
		var t types.Type
		if tv, ok := s.P.Info.Types[f.Type]; ok {
			t = tv.Type
		}
		if t == nil {
			return nil, false, "untyped result"
		}
		k, u, fl, w := classify(t)
		if w != "" || k == "structptr" || k == "structval" || k == "basicptr" {
			if w == "" {
				w = "result of kind " + k
			}
			return nil, false, "result: " + w
		}
		for i := 0; i < cnt; i++ {
			nm := ""
			if len(names) > 0 {
				nm = names[i].Name
			}
			rs = append(rs, Param{Idx: idx, Name: nm, TypeO: s.render(f.Type), Kind: k, U: u, Fields: fl})
			idx++
		}
	}
	return
}

// ---- return elimination ----

type elimCtx struct {
	resVars []string // harness result variable names
	named   []string // named result names (same order) or nil
	fail    string
}

func containsReturn(n ast.Node) bool {
	f := false
	ast.Inspect(n, func(x ast.Node) bool {
		switch x.(type) {
		case *ast.ReturnStmt:
			f = true
		case *ast.FuncLit:
			return false
		}
		return !f
	})
	return f
}

func (c *elimCtx) assignFor(r *ast.ReturnStmt) []ast.Stmt {
	if len(c.resVars) == 0 {
		return nil
	}
	var lhs []ast.Expr
	for _, v := range c.resVars {
		lhs = append(lhs, ast.NewIdent(v))
	}
	var rhs []ast.Expr
	if len(r.Results) == 0 {
		if c.named == nil {
			c.fail = "bare return without named results"
			return nil
		}
		for _, n := range c.named {
			rhs = append(rhs, ast.NewIdent(n))
		}
	} else {
		rhs = r.Results
	}
	return []ast.Stmt{&ast.AssignStmt{Lhs: lhs, Tok: token.ASSIGN, Rhs: rhs}}
}

func definedNames(s ast.Stmt) map[string]bool {
	m := map[string]bool{}
	if a, ok := s.(*ast.AssignStmt); ok && a.Tok == token.DEFINE {
		for _, l := range a.Lhs {
			if id, ok := l.(*ast.Ident); ok {
				m[id.Name] = true
			}
		}
	}
	return m
}

func mentions(list []ast.Stmt, names map[string]bool) bool {
	f := false
	for _, s := range list {
		ast.Inspect(s, func(x ast.Node) bool {
			if id, ok := x.(*ast.Ident); ok && names[id.Name] {
				f = true
			}
			return !f
		})
	}
	return f
}

func (c *elimCtx) list(list []ast.Stmt) []ast.Stmt {
	var out []ast.Stmt
	for i, s := range list {
		if c.fail != "" {
			return out
		}
		if !containsReturn(s) {
			out = append(out, s)
			continue
		}
		rest := list[i+1:]
		switch t := s.(type) {
		case *ast.ReturnStmt:
			out = append(out, c.assignFor(t)...)
			return out
		case *ast.BlockStmt:
			out = append(out, &ast.BlockStmt{List: c.list(concat(t.List, rest))})
			return out
		case *ast.IfStmt:
			if t.Init != nil && mentions(rest, definedNames(t.Init)) {
				c.fail = "if-init variable shadows continuation"
				return out
			}
			n := *t
			n.Body = &ast.BlockStmt{List: c.list(concat(t.Body.List, rest))}
			switch e := t.Else.(type) {
			case nil:
				if len(rest) > 0 {
					n.Else = &ast.BlockStmt{List: c.list(rest)}
				}
			case *ast.BlockStmt:
				n.Else = &ast.BlockStmt{List: c.list(concat(e.List, rest))}
			case *ast.IfStmt:
				n.Else = &ast.BlockStmt{List: c.list(concat([]ast.Stmt{e}, rest))}
			}
			out = append(out, &n)
			return out
		default:
			c.fail = fmt.Sprintf("return inside %T", s)
			return out
		}
	}
	return out
}
func concat(a, b []ast.Stmt) []ast.Stmt {
	r := make([]ast.Stmt, 0, len(a)+len(b))
	r = append(r, a...)
	return append(r, b...)
}

// inlineBlock renders the block for one side.
func (s *SideFn) inlineBlock(ps []Param, rs []Param, named bool, hnames []string, rvars []string) (string, string) {
	if s.FD.Body == nil {
		return "", "bodyless function"
	}
	var sb strings.Builder
	sb.WriteString("\t{\n")
	for i, p := range ps {
		if p.Name == "_" {
			continue
		}
		fmt.Fprintf(&sb, "\t\tvar %s %s = %s\n", gname(p.Name), p.TypeO, hnames[i])
	}
	ctx := &elimCtx{resVars: rvars}
	if named {
		for _, r := range rs {
			if r.Name == "" || r.Name == "_" {
				return "", "blank named result"
			}
			fmt.Fprintf(&sb, "\t\tvar %s %s\n", gname(r.Name), r.TypeO)
			ctx.named = append(ctx.named, gname(r.Name))
		}
	}
	ds := false
	ast.Inspect(s.FD.Body, func(x ast.Node) bool {
		switch x.(type) {
		case *ast.DeferStmt, *ast.LabeledStmt:
			ds = true
		case *ast.FuncLit:
			ds = true
		}
		return true
	})
	if ds {
		return "", "defer/label/closure in body"
	}
	body := ctx.list(s.FD.Body.List)
	if ctx.fail != "" {
		return "", "return elimination: " + ctx.fail
	}
	if len(rs) > 0 && !terminatesWithAssign(s.FD.Body) {
		// fine; Go guarantees terminating statement
	}
	blk := &ast.BlockStmt{List: body}
	text := s.render(blk)
	// strip outer braces
	text = strings.TrimSpace(text)
	text = strings.TrimPrefix(text, "{")
	text = strings.TrimSuffix(text, "}")
	for _, l := range strings.Split(text, "\n") {
		if strings.TrimSpace(l) != "" {
			sb.WriteString("\t" + l + "\n")
		}
	}
	// silence unused param/named vars
	sb.WriteString("\t}\n")
	return sb.String(), ""
}
func terminatesWithAssign(b *ast.BlockStmt) bool { return true }

// ---- harness text ----

type Harness struct {
	Text   string // full prod.go body (functions + specs), without decls
	Native string // native test file (without package/imports)
	Why    string
	Params []Param
	Results []Param
}

func cast(u, e string) string {
	if u == "bool" {
		return e
	}
	return u + "(" + e + ")"
}

func quantEq(a, b, u string, lenA string) string {
	return fmt.Sprintf("forall k int :: { %s[k] } { %s[k] } 0 <= k && k < %s ==> %s == %s", a, b, lenA, cast(u, a+"[k]"), cast(u, b+"[k]"))
}

func relPre(p Param, ho, hn string) []string {
	var out []string
	switch p.Kind {
	case "basic":
		out = append(out, fmt.Sprintf("%s == %s", cast(p.U, ho), cast(p.U, hn)))
	case "slice":
		out = append(out, fmt.Sprintf("acc(%s) && acc(%s)", ho, hn),
			fmt.Sprintf("len(%s) == len(%s) && cap(%s) == cap(%s)", ho, hn, ho, hn),
			quantEq(ho, hn, p.U, "len("+ho+")"))
	case "basicptr":
		out = append(out, fmt.Sprintf("acc(%s) && acc(%s)", ho, hn), fmt.Sprintf("%s == %s", cast(p.U, "*"+ho), cast(p.U, "*"+hn)))
	case "structptr", "structval":
		if p.Kind == "structptr" {
			out = append(out, fmt.Sprintf("acc(%s) && acc(%s)", ho, hn))
		}
		for _, f := range p.Fields {
			fo, fn := ho+"."+f.Name, hn+"."+f.Name
			switch f.Kind {
			case "basic":
				out = append(out, fmt.Sprintf("%s == %s", cast(f.U, fo), cast(f.U, fn)))
			case "slice":
				out = append(out, fmt.Sprintf("acc(%s) && acc(%s)", fo, fn),
					fmt.Sprintf("len(%s) == len(%s) && cap(%s) == cap(%s)", fo, fn, fo, fn),
					quantEq(fo, fn, f.U, "len("+fo+")"))
			case "array":
				out = append(out, quantEq(fo, fn, f.U, fmt.Sprint(f.N)))
			}
		}
	}
	return out
}

func relPost(p Param, ho, hn string) []string {
	var out []string
	switch p.Kind {
	case "basic":
		out = append(out, fmt.Sprintf("%s == %s", cast(p.U, ho), cast(p.U, hn)))
	case "slice":
		out = append(out, fmt.Sprintf("len(%s) == len(%s)", ho, hn), quantEq(ho, hn, p.U, "len("+ho+")"))
	case "basicptr":
		out = append(out, fmt.Sprintf("%s == %s", cast(p.U, "*"+ho), cast(p.U, "*"+hn)))
	case "structptr", "structval":
		for _, f := range p.Fields {
			fo, fn := ho+"."+f.Name, hn+"."+f.Name
			switch f.Kind {
			case "basic":
				out = append(out, fmt.Sprintf("%s == %s", cast(f.U, fo), cast(f.U, fn)))
			case "slice":
				out = append(out, fmt.Sprintf("len(%s) == len(%s)", fo, fn), quantEq(fo, fn, f.U, "len("+fo+")"))
			case "array":
				out = append(out, quantEq(fo, fn, f.U, fmt.Sprint(f.N)))
			}
		}
	}
	return out
}

func buildHarness(o, n *SideFn, id string) *Harness {
	h := &Harness{}
	po, why := o.params()
	if why != "" {
		h.Why = "old " + why
		return h
	}
	pn, why := n.params()
	if why != "" {
		h.Why = "new " + why
		return h
	}
	if len(po) != len(pn) {
		h.Why = "param count differs"
		return h
	}
	for i := range po {
		if po[i].Kind != pn[i].Kind || po[i].U != pn[i].U {
			h.Why = "param kind differs"
			return h
		}
		pn[i].TypeN = pn[i].TypeO
		po[i].TypeN = pn[i].TypeO
	}
	ro, named, why := o.results()
	if why != "" {
		h.Why = "old " + why
		return h
	}
	rn, namedN, why := n.results()
	if why != "" {
		h.Why = "new " + why
		return h
	}
	if len(ro) != len(rn) {
		h.Why = "result count differs"
		return h
	}
	for i := range ro {
		if ro[i].Kind != rn[i].Kind || ro[i].U != rn[i].U {
			h.Why = "result kind differs"
			return h
		}
	}
	h.Params, h.Results = po, ro
	var sb strings.Builder
	var sigs []string
	var hno, hnn []string
	for i, p := range po {
		a, b := fmt.Sprintf("h%d_o", i), fmt.Sprintf("h%d_n", i)
		hno = append(hno, a)
		hnn = append(hnn, b)
		for _, l := range relPre(p, a, b) {
			fmt.Fprintf(&sb, "// @ requires %s\n", l)
		}
		sigs = append(sigs, fmt.Sprintf("%s %s", a, p.TypeO), fmt.Sprintf("%s %s", b, pn[i].TypeO))
	}
	fmt.Fprintf(&sb, "func prod_%s(%s) {\n", id, strings.Join(sigs, ", "))
	var rvo, rvn []string
	for i, r := range ro {
		a, b := fmt.Sprintf("r%d_o", i), fmt.Sprintf("r%d_n", i)
		rvo = append(rvo, a)
		rvn = append(rvn, b)
		fmt.Fprintf(&sb, "\tvar %s %s\n\tvar %s %s\n", a, r.TypeO, b, rn[i].TypeO)
	}
	bo, why := o.inlineBlock(po, ro, named, hno, rvo)
	if why != "" {
		h.Why = "old " + why
		return h
	}
	bn, why := n.inlineBlock(pn, rn, namedN, hnn, rvn)
	if why != "" {
		h.Why = "new " + why
		return h
	}
	sb.WriteString(bo)
	sb.WriteString(bn)
	for i, r := range ro {
		for _, l := range relPost(r, rvo[i], rvn[i]) {
			fmt.Fprintf(&sb, "\t// @ assert %s\n", l)
		}
	}
	for i, p := range po {
		if p.Kind == "basic" {
			continue
		}
		for _, l := range relPost(p, hno[i], hnn[i]) {
			fmt.Fprintf(&sb, "\t// @ assert %s\n", l)
		}
	}
	sb.WriteString("}\n")
	h.Text = sb.String()
	h.Native = nativeTest(o, n, po, ro, id)
	return h
}

func callExpr(s *SideFn, suffix string, ps []Param, args []string) string {
	if s.Recv {
		return fmt.Sprintf("%s.%s(%s)", args[0], s.Name, strings.Join(args[1:], ", "))
	}
	return fmt.Sprintf("%s(%s)", s.Name, strings.Join(args, ", "))
}

func nativeTest(o, n *SideFn, ps, rs []Param, id string) string {
	var sb strings.Builder
	fmt.Fprintf(&sb, "func gen_%s(seed int64) (oo, on outcome) {\n", id)
	for _, side := range []string{"o", "n"} {
		s := o
		if side == "n" {
			s = n
		}
		fmt.Fprintf(&sb, "	{\n\t\tr := rand.New(rand.NewSource(seed))\n")
		var args []string
		for i, p := range ps {
			nm := fmt.Sprintf("a%d", i)
			args = append(args, nm)
			ty := s.render(typeExprOf(s, i))
			if p.Kind == "structptr" || p.Kind == "basicptr" {
				fmt.Fprintf(&sb, "\t\t%s := new(%s)\n\t\tfill(reflect.ValueOf(%s).Elem(), r, 0)\n", nm, strings.TrimPrefix(ty, "*"), nm)
			} else {
				fmt.Fprintf(&sb, "\t\tvar %s %s\n\t\tfill(reflect.ValueOf(&%s).Elem(), r, 0)\n", nm, ty, nm)
			}
		}
		call := callExpr(s, side, ps, args)
		var rv []string
		for i := range rs {
			rv = append(rv, fmt.Sprintf("x%d", i))
		}
		all := strings.Join(args, ", ")
		if len(args) == 0 {
			all = ""
		}
		fmt.Fprintf(&sb, "\t\tin := dump(reflect.ValueOf([]any{%s}))\n", all)
		fmt.Fprintf(&sb, "\t\tres, pan := safe(func() []any {\n")
		if len(rs) > 0 {
			fmt.Fprintf(&sb, "\t\t\t%s := %s\n\t\t\treturn []any{%s}\n", strings.Join(rv, ", "), call, strings.Join(rv, ", "))
		} else {
			fmt.Fprintf(&sb, "\t\t\t%s\n\t\t\treturn nil\n", call)
		}
		fmt.Fprintf(&sb, "\t\t})\n")
		fmt.Fprintf(&sb, "\t\to%s = outcome{res, pan, []any{%s}, in}\n\t}\n", side, all)
	}
	sb.WriteString("\treturn\n}\n")
	fmt.Fprintf(&sb, "func TestDiff_%s(t *testing.T) { runDiff(t, %q, gen_%s) }\n", id, id, id)
	return sb.String()
}

func typeExprOf(s *SideFn, idx int) ast.Expr {
	i := 0
	var fields []*ast.Field
	if s.FD.Recv != nil {
		fields = append(fields, s.FD.Recv.List...)
	}
	fields = append(fields, s.FD.Type.Params.List...)
	for _, f := range fields {
		c := len(f.Names)
		if c == 0 {
			c = 1
		}
		if idx < i+c {
			return f.Type
		}
		i += c
	}
	return nil
}
