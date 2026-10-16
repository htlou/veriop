import de.uka.ilkd.key.control.KeYEnvironment;
import de.uka.ilkd.key.java.Services;
import de.uka.ilkd.key.ldt.IntegerLDT;
import de.uka.ilkd.key.logic.JTerm;
import de.uka.ilkd.key.pp.LogicPrinter;
import de.uka.ilkd.key.proof.Goal;
import de.uka.ilkd.key.proof.Proof;
import de.uka.ilkd.key.proof.Statistics;
import de.uka.ilkd.key.proof.io.ProofSaver;
import de.uka.ilkd.key.rule.TacletApp;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.key_project.logic.Term;
import org.key_project.prover.proof.rulefilter.TacletFilter;
import org.key_project.prover.rules.Taclet;
import org.key_project.prover.sequent.PosInOccurrence;
import org.key_project.prover.sequent.SequentFormula;
import org.key_project.util.collection.ImmutableList;

/**
 * Headless KeY driver: auto mode (strategy from the .key file's \settings), interleaved with
 * targeted applications of KeY's own built-in bsum lemmas.
 *
 * KeY's automatic strategy only unfolds a bounded sum bsum(lo, hi, t) when a bound has the form
 * 1 + x or -1 + x (bsum_induction_*_concrete). The 4-word block loops produce bounds 4 + k
 * (prefix sums) and -4 + k (suffix sums). For every ground bsum term in an open goal whose upper
 * bound is c + x with c >= 2 (resp. lower bound c + x with c <= -2), the driver applies the
 * built-in, non-heuristic taclet bsum_induction_upper (resp. bsum_induction_lower) once, which
 * moves c one step towards 0, and then re-runs auto mode. These taclets are ordinary KeY
 * \lemma rules; every application is recorded in the saved proof and checked again by --replay.
 *
 * usage: KeyRunPeel problem.key [maxPrintedOpenGoals] [--replay] [--rounds N]
 */
public class KeyRunPeel {
  static Services services;
  static IntegerLDT intLDT;

  /** value of an integer literal term Z(...) or null */
  static Long literal(Term t) {
    if (t.op() != intLDT.getNumberSymbol()) return null;
    try { return Long.parseLong(intLDT.toNumberString((JTerm) t)); } catch (Exception e) { return null; }
  }

  /** c if t is add(Z(c), x) (KeY's normal form for x + c), else 0 */
  static long offset(Term t) {
    if (t.op() == intLDT.getAdd()) {
      Long c = literal(t.sub(0));
      if (c != null) return c;
      c = literal(t.sub(1));
      if (c != null) return c;
    }
    return 0;
  }

  static String pick(Term t) {
    if (!t.op().name().toString().equals("bsum") || !t.freeVars().isEmpty()) return null;
    long up = offset(t.sub(1)), lo = offset(t.sub(0));
    if (up >= 2) return "bsum_induction_upper";
    if (lo <= -2) return "bsum_induction_lower";
    return null;
  }

  /** find one peelable bsum occurrence in the goal; returns the applied taclet name or null */
  static String peelOne(Goal g) {
    for (boolean antec : new boolean[] {true, false}) {
      var semi = antec ? g.sequent().antecedent() : g.sequent().succedent();
      for (SequentFormula sf : semi) {
        PosInOccurrence top = new PosInOccurrence(sf, org.key_project.logic.PosInTerm.getTopLevel(), antec);
        String r = search(g, top);
        if (r != null) return r;
      }
    }
    return null;
  }

  static String search(Goal g, PosInOccurrence pio) {
    Term t = pio.subTerm();
    String name = pick(t);
    if (name != null) {
      final String n = name;
      TacletFilter f = new TacletFilter() {
        protected boolean filter(Taclet tac) { return tac.name().toString().equals(n); }
      };
      ImmutableList<TacletApp> apps = g.ruleAppIndex().getTacletAppAt(f, pio, services);
      for (TacletApp app : apps) {
        TacletApp a = app.complete() ? app : app.tryToInstantiate(services);
        if (a != null && a.complete()) {
          g.apply(a);
          return name + " on " + LogicPrinter.quickPrintTerm((JTerm) t, services).replaceAll("\\s+", " ");
        }
      }
    }
    for (int i = 0; i < t.arity(); i++) {
      String r = search(g, pio.down(i));
      if (r != null) return r;
    }
    return null;
  }

  public static void main(String[] args) throws Exception {
    File f = new File(args[0]).getAbsoluteFile();
    int maxPrint = args.length > 1 ? Integer.parseInt(args[1]) : 3;
    boolean replay = false;
    int rounds = 60;
    for (int i = 2; i < args.length; i++) {
      if (args[i].equals("--replay")) replay = true;
      if (args[i].equals("--rounds")) rounds = Integer.parseInt(args[++i]);
    }
    KeYEnvironment<?> env = KeYEnvironment.load(f.toPath());
    Proof proof = env.getLoadedProof();
    services = proof.getServices();
    intLDT = services.getTypeConverter().getIntegerLDT();
    long t0 = System.currentTimeMillis();
    int peels = 0;
    if (!replay) {
      env.getProofControl().startAndWaitForAutoMode(proof);
      for (int r = 0; r < rounds && !proof.closed(); r++) {
        int n = 0;
        List<Goal> goals = new ArrayList<>();
        for (Goal g : proof.openGoals()) goals.add(g);
        for (Goal g : goals) {
          String what = peelOne(g);
          if (what != null) { n++; System.out.println("PEEL round " + r + ": " + what); }
        }
        if (n == 0) break;
        peels += n;
        env.getProofControl().startAndWaitForAutoMode(proof);
      }
    }
    long t1 = System.currentTimeMillis();
    Statistics st = proof.getStatistics();
    System.out.println("PROOF " + proof.name());
    System.out.println("closed=" + proof.closed() + " openGoals=" + proof.openGoals().size()
        + " nodes=" + st.nodes + " branches=" + st.branches + " autoMs=" + (t1 - t0) + " peels=" + peels
        + " interactive=" + st.interactiveSteps);
    System.out.println("STATS " + st.toString().replace('\n', ' '));
    int n = 0;
    for (Goal g : proof.openGoals()) {
      if (n++ >= maxPrint) break;
      System.out.println("---- open goal " + n + " (node " + g.node().serialNr() + ")");
      System.out.println(LogicPrinter.quickPrintSequent(g.sequent(), proof.getServices()));
    }
    if (replay) { System.out.println("REPLAY " + f.getName() + " closed=" + proof.closed()); System.exit(proof.closed() ? 0 : 2); }
    String out = f.getPath().replaceAll("\\.key$", "") + (proof.closed() ? ".closed.proof" : ".open.proof");
    new ProofSaver(proof, new File(out).toPath()).save();
    System.out.println("saved " + out);
    try { env.dispose(); } catch (Throwable t) { /* ignore KeY dispose NPE */ }
    System.exit(proof.closed() ? 0 : 2);
  }
}
