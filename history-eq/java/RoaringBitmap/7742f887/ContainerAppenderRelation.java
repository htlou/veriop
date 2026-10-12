public final class ContainerAppenderRelation {
    private /*@ nullable @*/ Object oldContainer;
    private /*@ nullable @*/ Object newContainer;

    /*@ public normal_behavior
      @ requires oldContainer == newContainer;
      @ ensures oldContainer == newContainer;
      @ assignable oldContainer, newContainer;
      @*/
    public void updateAfterAdd(/*@ nullable @*/ Object tmp) {
        oldContainer = tmp;
        if (tmp != newContainer) {
            newContainer = tmp;
        }
    }
}
