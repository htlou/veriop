import de.uka.ilkd.key.control.KeYEnvironment;
import de.uka.ilkd.key.java.ast.*;
import de.uka.ilkd.key.java.ast.statement.LoopStatement;
import de.uka.ilkd.key.logic.op.IProgramMethod;
import de.uka.ilkd.key.java.ast.abstraction.KeYJavaType;
import java.io.File;

/** Debug helper: print every loop of the given class's methods and whether KeY attached a loop spec. */
public class LoopSpecs {
  static KeYEnvironment<?> env;
  static void walk(ProgramElement pe, String m) {
    if (pe instanceof LoopStatement ls) {
      var spec = env.getSpecificationRepository().getLoopSpec(ls);
      System.out.println(m + " loop@" + pe.getPositionInfo() + " spec=" + (spec != null));
    }
    if (pe instanceof NonTerminalProgramElement nt)
      for (int i = 0; i < nt.getChildCount(); i++) walk(nt.getChildAt(i), m);
  }
  public static void main(String[] a) throws Exception {
    env = KeYEnvironment.load(new File(a[0]).getAbsoluteFile().toPath());
    KeYJavaType kjt = env.getJavaInfo().getKeYJavaType(a[1]);
    for (IProgramMethod pm : env.getJavaInfo().getAllProgramMethods(kjt))
      if (pm.getBody() != null) walk(pm.getBody(), pm.getName());
    System.exit(0);
  }
}
