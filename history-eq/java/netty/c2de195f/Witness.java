public final class Witness {
    public static void main(String[] args) {
        boolean oldResult = new parent.ByteString(new byte[] {1})
                .equals(new parent.ByteString.Throwing(new byte[] {}));
        if (oldResult) throw new AssertionError("old must return false");
        System.out.println("old: false");

        try {
            new child.ByteString(new byte[] {1})
                    .equals(new child.ByteString.Throwing(new byte[] {}));
            throw new AssertionError("new must call overridden hashCode");
        } catch (IllegalStateException expected) {
            if (!"hashCode called".equals(expected.getMessage())) throw expected;
            System.out.println("new: IllegalStateException(hashCode called)");
        }
    }
}
