abstract class ParentByteBuf {
  int readerIndex = 0;
  int writerIndex = 1;

  public abstract byte getByte(int index);

  public byte readByte() {
    if (readerIndex == writerIndex) {
      throw new IndexOutOfBoundsException("readerIndex(" + readerIndex + ") == writerIndex(" + writerIndex + ')');
    }
    return getByte(readerIndex ++);
  }
}

abstract class ChildByteBuf {
  int readerIndex = 0;
  int writerIndex = 1;

  public byte getByte(int index) {
    return _getByte(index);
  }

  protected abstract byte _getByte(int index);

  public byte readByte() {
    if (readerIndex == writerIndex) {
      throw new IndexOutOfBoundsException("readerIndex(" + readerIndex + ") == writerIndex(" + writerIndex + ')');
    }
    return _getByte(readerIndex++);
  }
}

class ClientParent extends ParentByteBuf {
  public byte getByte(int index) { return 7; }
  protected byte _getByte(int index) { return 9; }
}

class ClientChild extends ChildByteBuf {
  public byte getByte(int index) { return 7; }
  protected byte _getByte(int index) { return 9; }
}

public final class DispatchRelation {
  /*@ public normal_behavior
    @ ensures \result;
    @*/
  public static boolean differs() {
    return new ClientParent().readByte() == 7 && new ClientChild().readByte() == 9;
  }

  public static void main(String[] args) {
    System.out.println("parent=" + new ClientParent().readByte());
    System.out.println("child=" + new ClientChild().readByte());
  }
}
