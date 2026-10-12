public class Relation {
    /*@ public normal_behavior
      @ ensures \result == 0;
      @ assignable \nothing;
      @*/
    public static int old(int x) { return x - x; }

    /*@ public normal_behavior
      @ ensures \result == 0;
      @ assignable \nothing;
      @*/
    public static int optimized(int x) { return 0; }

    /*@ public normal_behavior
      @ ensures \result;
      @*/
    public static boolean equivalent(int x) {
        return old(x) == optimized(x);
    }
}
