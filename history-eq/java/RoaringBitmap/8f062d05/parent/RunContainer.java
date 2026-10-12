package parent;
public final class RunContainer {
  private short[] valueslength;
  int nbrruns = 0;
  public RunContainer(final int firstOfRun, final int lastOfRun) {
    this.nbrruns = 1;
    this.valueslength = new short[]{(short) firstOfRun, (short) (lastOfRun - 1 - firstOfRun)};
  }
  public short getLength(int index) {
    return valueslength[2 * index + 1];
  }
  public short getValue(int index) {
    return valueslength[2 * index];
  }
  private boolean equals(RunContainer runContainer) {
    if (runContainer.nbrruns != this.nbrruns) {
      return false;
    }
    for (int i = 0; i < nbrruns; ++i) {
      if (getValue(i) != runContainer.getValue(i)) {
        return false;
      }
      if (getLength(i) != runContainer.getLength(i)) {
        return false;
      }
    }
    return true;
  }
  public boolean equalsRun(RunContainer other) { return equals(other); }
}
