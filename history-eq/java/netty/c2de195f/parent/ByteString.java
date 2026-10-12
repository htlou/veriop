package parent;
public class ByteString {
    protected static final int HASH_CODE_PRIME = 31;
    protected final byte[] value;
    private int hash;
    public ByteString(byte[] value) { this.value = value; }
    public final int length() { return value.length; }
    public final byte[] array() { return value; }
    @Override
    public int hashCode() {
        int h = hash;
        if (h == 0) {
            for (int i = 0; i < value.length; ++i) {
                h = h * HASH_CODE_PRIME ^ value[i] & HASH_CODE_PRIME;
            }
            
            hash = h;
        }
        return h;
    }

    public static final class Throwing extends ByteString {
        public Throwing(byte[] value) { super(value); }
        @Override public int hashCode() { throw new IllegalStateException("hashCode called"); }
    }
    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof ByteString)) {
            return false;
        }

        if (this == obj) {
            return true;
        }

        ByteString that = (ByteString) obj;
        if (length() != that.length() || hashCode() != that.hashCode()) {
            return false;
        }

        final int end = value.length;
        for (int i = 0, j = 0; i < end; i++, j++) {
            if (value[i] != that.value[j]) {
                return false;
            }
        }

        return true;
    }

}
