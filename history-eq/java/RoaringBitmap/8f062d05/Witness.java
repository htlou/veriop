public final class Witness {
    public static void main(String[] args) {
        parent.RunContainer oldOne = new parent.RunContainer(1, 2); // {1}
        parent.RunContainer oldTwo = new parent.RunContainer(1, 3); // {1, 2}
        child.RunContainer newOne = new child.RunContainer(1, 2);
        child.RunContainer newTwo = new child.RunContainer(1, 3);
        boolean oldEquals = oldOne.equalsRun(oldTwo);
        boolean newEquals = newOne.equalsRun(newTwo);
        if (oldEquals || !newEquals) throw new AssertionError("expected historical mismatch");
        System.out.println("old.equals=false new.equals=true");
    }
}
