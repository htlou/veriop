import com.sun.source.tree.*;
import com.sun.source.util.*;
import javax.tools.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

/** Parse-only member extractor. usage: Analyze file.java ... ; emits JSON lines to stdout (one JSON object per member). */
public class Analyze {
    static String esc(String s) {
        StringBuilder b = new StringBuilder("\"");
        for (char c : s.toCharArray()) {
            switch (c) {
                case '"': b.append("\\\""); break;
                case '\\': b.append("\\\\"); break;
                case '\n': b.append("\\n"); break;
                case '\r': b.append("\\r"); break;
                case '\t': b.append("\\t"); break;
                default: if (c < 0x20) b.append(String.format("\\u%04x", (int) c)); else b.append(c);
            }
        }
        return b.append('"').toString();
    }
    static String src; static SourcePositions sp; static CompilationUnitTree cu;
    static String text(Tree t) {
        if (t == null) return "";
        long s = sp.getStartPosition(cu, t), e = sp.getEndPosition(cu, t);
        if (s < 0 || e < 0) return t.toString();
        return src.substring((int) s, (int) e);
    }

    static class Feat extends TreeScanner<Void, Void> {
        Set<String> idents = new TreeSet<>(), locals = new TreeSet<>(), calls = new TreeSet<>(), news = new TreeSet<>(), types = new TreeSet<>(), selects = new TreeSet<>();
        int loops, sync, lambdas, anon, tries, throwz, switches, floats, strings, casts, instanceofs, assertz, labels, returns, ternary, localClasses, compound;
        boolean hasThis;
        public Void visitIdentifier(IdentifierTree t, Void p) { idents.add(t.getName().toString()); if (t.getName().contentEquals("this")) hasThis = true; return null; }
        public Void visitMemberSelect(MemberSelectTree t, Void p) { selects.add(text(t)); return super.visitMemberSelect(t, p); }
        public Void visitVariable(VariableTree t, Void p) { locals.add(t.getName().toString()); types.add(text(t.getType())); return super.visitVariable(t, p); }
        public Void visitMethodInvocation(MethodInvocationTree t, Void p) { calls.add(text(t.getMethodSelect())); return super.visitMethodInvocation(t, p); }
        public Void visitNewClass(NewClassTree t, Void p) { news.add(text(t.getIdentifier())); if (t.getClassBody() != null) anon++; return super.visitNewClass(t, p); }
        public Void visitLambdaExpression(LambdaExpressionTree t, Void p) { lambdas++; return super.visitLambdaExpression(t, p); }
        public Void visitMemberReference(MemberReferenceTree t, Void p) { lambdas++; return super.visitMemberReference(t, p); }
        public Void visitForLoop(ForLoopTree t, Void p) { loops++; return super.visitForLoop(t, p); }
        public Void visitEnhancedForLoop(EnhancedForLoopTree t, Void p) { loops++; return super.visitEnhancedForLoop(t, p); }
        public Void visitWhileLoop(WhileLoopTree t, Void p) { loops++; return super.visitWhileLoop(t, p); }
        public Void visitDoWhileLoop(DoWhileLoopTree t, Void p) { loops++; return super.visitDoWhileLoop(t, p); }
        public Void visitSynchronized(SynchronizedTree t, Void p) { sync++; return super.visitSynchronized(t, p); }
        public Void visitTry(TryTree t, Void p) { tries++; return super.visitTry(t, p); }
        public Void visitThrow(ThrowTree t, Void p) { throwz++; return super.visitThrow(t, p); }
        public Void visitSwitch(SwitchTree t, Void p) { switches++; return super.visitSwitch(t, p); }
        public Void visitSwitchExpression(SwitchExpressionTree t, Void p) { switches++; return super.visitSwitchExpression(t, p); }
        public Void visitTypeCast(TypeCastTree t, Void p) { casts++; types.add(text(t.getType())); return super.visitTypeCast(t, p); }
        public Void visitInstanceOf(InstanceOfTree t, Void p) { instanceofs++; return super.visitInstanceOf(t, p); }
        public Void visitAssert(AssertTree t, Void p) { assertz++; return super.visitAssert(t, p); }
        public Void visitReturn(ReturnTree t, Void p) { returns++; return super.visitReturn(t, p); }
        public Void visitConditionalExpression(ConditionalExpressionTree t, Void p) { ternary++; return super.visitConditionalExpression(t, p); }
        public Void visitClass(ClassTree t, Void p) { localClasses++; return super.visitClass(t, p); }
        public Void visitCompoundAssignment(CompoundAssignmentTree t, Void p) { compound++; return super.visitCompoundAssignment(t, p); }
        public Void visitLiteral(LiteralTree t, Void p) {
            Object v = t.getValue();
            if (v instanceof Float || v instanceof Double) floats++;
            if (v instanceof String) strings++;
            return null;
        }
        String json() {
            return ",\"feat\":{\"idents\":" + arr(idents) + ",\"locals\":" + arr(locals) + ",\"calls\":" + arr(calls) + ",\"news\":" + arr(news)
              + ",\"types\":" + arr(types) + ",\"selects\":" + arr(selects) + ",\"loops\":" + loops + ",\"sync\":" + sync + ",\"lambdas\":" + lambdas + ",\"anon\":" + anon
              + ",\"tries\":" + tries + ",\"throws\":" + throwz + ",\"switches\":" + switches + ",\"floats\":" + floats + ",\"strings\":" + strings
              + ",\"casts\":" + casts + ",\"instanceofs\":" + instanceofs + ",\"asserts\":" + assertz + ",\"ternary\":" + ternary + ",\"localClasses\":" + localClasses
              + ",\"compound\":" + compound + ",\"hasThis\":" + hasThis + "}";
        }
        static String arr(Set<String> s) { StringBuilder b = new StringBuilder("["); boolean f = true; for (String x : s) { if (!f) b.append(","); f = false; b.append(esc(x)); } return b.append("]").toString(); }
    }
    static List<String> out = new ArrayList<>();
    static String file;
    static void emit(String kind, String cls, String name, String params, String ret, String mods, Tree node, String body, long line, String extra) {
        out.add("{\"file\":" + esc(file) + ",\"kind\":" + esc(kind) + ",\"class\":" + esc(cls) + ",\"name\":" + esc(name)
            + ",\"params\":" + esc(params) + ",\"ret\":" + esc(ret) + ",\"mods\":" + esc(mods)
            + ",\"line\":" + line + ",\"text\":" + esc(text(node)) + ",\"body\":" + esc(body) + extra + "}");
    }
    static void visitClass(ClassTree ct, String prefix) {
        String cname = prefix.isEmpty() ? ct.getSimpleName().toString() : prefix + "." + ct.getSimpleName();
        String kind = ct.getKind().toString();
        long line = cu.getLineMap().getLineNumber(sp.getStartPosition(cu, ct));
        // header text up to the opening brace
        String full = text(ct);
        int br = full.indexOf('{');
        String header = br > 0 ? full.substring(0, br) : full;
        out.add("{\"file\":" + esc(file) + ",\"kind\":\"classdecl\",\"class\":" + esc(cname) + ",\"name\":" + esc(ct.getSimpleName().toString())
            + ",\"params\":\"\",\"ret\":" + esc(kind) + ",\"mods\":" + esc(ct.getModifiers().toString().trim()) + ",\"line\":" + line
            + ",\"text\":" + esc(header) + ",\"body\":\"\"}");
        for (Tree m : ct.getMembers()) {
            long ln = cu.getLineMap().getLineNumber(Math.max(0, sp.getStartPosition(cu, m)));
            if (m instanceof MethodTree) {
                MethodTree mt = (MethodTree) m;
                StringBuilder ps = new StringBuilder();
                for (VariableTree v : mt.getParameters()) {
                    if (ps.length() > 0) ps.append(",");
                    ps.append(text(v.getType()));
                }
                String names = "";
                { StringBuilder nb = new StringBuilder(); for (VariableTree v : mt.getParameters()) { if (nb.length()>0) nb.append(","); nb.append(v.getName()); } names = nb.toString(); }
                String nm = mt.getName().toString();
                String k = nm.equals("<init>") ? "ctor" : "method";
                if (k.equals("ctor")) nm = ct.getSimpleName().toString();
                String body = mt.getBody() == null ? "" : text(mt.getBody());
                String tps = mt.getTypeParameters().isEmpty() ? "" : mt.getTypeParameters().toString();
                String thr = mt.getThrows().isEmpty() ? "" : mt.getThrows().toString();
                String feat = ""; if (mt.getBody() != null) { Feat fs = new Feat(); fs.scan(mt.getBody(), null); feat = fs.json(); }
                emit(k, cname, nm, ps.toString(), mt.getReturnType() == null ? "" : text(mt.getReturnType()),
                     mt.getModifiers().toString().trim().replace("\n", " "), mt, body, ln,
                     ",\"pnames\":" + esc(names) + ",\"tparams\":" + esc(tps) + ",\"throws\":" + esc(thr) + ",\"hasBody\":" + (mt.getBody() != null) + feat);
            } else if (m instanceof VariableTree) {
                VariableTree vt = (VariableTree) m;
                emit("field", cname, vt.getName().toString(), "", text(vt.getType()), vt.getModifiers().toString().trim().replace("\n", " "), vt,
                     vt.getInitializer() == null ? "" : text(vt.getInitializer()), ln, "");
            } else if (m instanceof BlockTree) {
                BlockTree bt = (BlockTree) m;
                emit(bt.isStatic() ? "static-init" : "init", cname, "<clinit>", "", "", bt.isStatic() ? "static" : "", bt, text(bt), ln, "");
            } else if (m instanceof ClassTree) {
                visitClass((ClassTree) m, cname);
            }
        }
    }
    public static void main(String[] args) throws Exception {
        JavaCompiler jc = ToolProvider.getSystemJavaCompiler();
        for (String f : args) {
            file = f;
            src = new String(Files.readAllBytes(Paths.get(f)), "UTF-8");
            StandardJavaFileManager fm = jc.getStandardFileManager(null, null, null);
            DiagnosticCollector<JavaFileObject> dc = new DiagnosticCollector<>();
            JavacTask task = (JavacTask) jc.getTask(null, fm, dc, List.of("-proc:none"), null, fm.getJavaFileObjects(f));
            Iterable<? extends CompilationUnitTree> units = task.parse();
            sp = Trees.instance(task).getSourcePositions();
            for (CompilationUnitTree u : units) {
                cu = u;
                String pkg = u.getPackageName() == null ? "" : u.getPackageName().toString();
                out.add("{\"file\":" + esc(file) + ",\"kind\":\"package\",\"name\":" + esc(pkg) + "}");
                for (ImportTree it : u.getImports()) out.add("{\"file\":" + esc(file) + ",\"kind\":\"import\",\"name\":" + esc(it.getQualifiedIdentifier().toString()) + ",\"static\":" + it.isStatic() + "}");
                for (Tree t : u.getTypeDecls()) if (t instanceof ClassTree) visitClass((ClassTree) t, "");
            }
            for (Diagnostic<? extends JavaFileObject> d : dc.getDiagnostics())
                if (d.getKind() == Diagnostic.Kind.ERROR)
                    out.add("{\"file\":" + esc(file) + ",\"kind\":\"parse-error\",\"name\":" + esc(d.getMessage(null)) + "}");
        }
        System.out.println("[" + String.join(",\n", out) + "]");
    }
}
