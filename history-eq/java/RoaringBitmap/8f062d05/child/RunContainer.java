package child;
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
  private boolean equals(RunContainer rc) {
    return ArraysShim.equals(valueslength, 0, nbrruns,
            rc.valueslength, 0, rc.nbrruns);
  }
  public boolean equalsRun(RunContainer other) { return equals(other); }
}
