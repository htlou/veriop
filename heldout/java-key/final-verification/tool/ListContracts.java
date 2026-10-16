import de.uka.ilkd.key.control.KeYEnvironment;
import de.uka.ilkd.key.speclang.Contract;
import java.io.File;

/** Print the names of all JML contracts KeY finds in a Java source directory (used to write .key POs). */
public class ListContracts {
  public static void main(String[] args) throws Exception {
    KeYEnvironment<?> env = KeYEnvironment.load(new File(args[0]).getAbsoluteFile().toPath());
    java.util.List<String> names = new java.util.ArrayList<>();
    for (Contract c : env.getSpecificationRepository().getAllContracts()) names.add(c.getName());
    java.util.Collections.sort(names);
    for (String n : names) if (args.length < 2 || n.startsWith(args[1])) System.out.println("CONTRACT " + n);
    System.exit(0);
  }
}
