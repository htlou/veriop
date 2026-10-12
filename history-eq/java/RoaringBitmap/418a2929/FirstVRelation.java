public final class FirstVRelation {
    private long oldFirstV;
    private long newFirstV;

    /*@ public normal_behavior
      @ requires oldFirstV == newFirstV;
      @ ensures oldFirstV == newFirstV;
      @ assignable oldFirstV, newFirstV;
      @*/
    public void insertBranch(long beforeSort, long afterSort) {
        oldFirstV = beforeSort;
        oldFirstV = afterSort;
        newFirstV = afterSort;
    }
}
