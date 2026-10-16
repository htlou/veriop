import de.uka.ilkd.key.control.KeYEnvironment;
import de.uka.ilkd.key.proof.Proof;
import de.uka.ilkd.key.proof.Goal;
import de.uka.ilkd.key.proof.Statistics;
import de.uka.ilkd.key.pp.LogicPrinter;
import de.uka.ilkd.key.proof.io.ProofSaver;
import java.io.File;

/** Headless KeY driver: load a .key problem, run the auto strategy (as configured in the
 *  file's \settings), print statistics and pretty-printed open goals, save the proof. */
public class KeyRun {
  public static void main(String[] args) throws Exception {
    File f = new File(args[0]).getAbsoluteFile();
    int maxPrint = args.length > 1 ? Integer.parseInt(args[1]) : 3;
    boolean replay = args.length > 2 && args[2].equals("--replay");
    KeYEnvironment<?> env = KeYEnvironment.load(f.toPath());
    Proof proof = env.getLoadedProof();
    long t0 = System.currentTimeMillis();
    if (!replay) env.getProofControl().startAndWaitForAutoMode(proof);  // --replay: only replay the saved .proof
    long t1 = System.currentTimeMillis();
    Statistics st = proof.getStatistics();
    System.out.println("PROOF " + proof.name());
    System.out.println("closed=" + proof.closed() + " openGoals=" + proof.openGoals().size()
        + " nodes=" + st.nodes + " branches=" + st.branches + " autoMs=" + (t1 - t0));
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
