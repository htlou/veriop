public final class Witness {
    private static String oldValue() {
        return parent.Runner.run();
    }

    private static String newValue() {
        return child.Runner.run();
    }

    public static void main(String[] args) {
        String oldResult = oldValue();
        String newResult = newValue();
        if (!"64:2|false".equals(oldResult) || !"64:2|true".equals(newResult)) {
            throw new AssertionError(oldResult + " versus " + newResult);
        }
        System.out.println("old=" + oldResult + " new=" + newResult);
    }
}
