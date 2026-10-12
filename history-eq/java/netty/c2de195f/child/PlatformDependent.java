package child;
public final class PlatformDependent {
    public static boolean equals(byte[] a, int a0, int a1, byte[] b, int b0, int b1) {
        if (a1 - a0 != b1 - b0) return false;
        for (int i = 0; i < a1 - a0; i++) if (a[a0 + i] != b[b0 + i]) return false;
        return true;
    }
}
