public final class AndNotOneValue {
  /*@ public normal_behavior
    @ requires 0 <= runStart && runStart <= runEnd && runEnd <= 65535;
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean sameResult(char value, int runStart, int runEnd) {
    int valInt = value;
    int oldWrite;
    if (valInt < runStart) {
      oldWrite = 1;
    } else if (valInt <= runEnd) {
      oldWrite = 0;
    } else {
      // The old loop advances past its last run, then reprocesses against 65537.
      oldWrite = 1;
    }

    int newWrite = 0;
    int read = 0;
    if (runStart == 0 && runEnd == 65535) {
      return oldWrite == 0;
    }
    if (valInt <= runEnd) {
      int firstInRun = valInt < runStart ? 1 : 0;
      newWrite += firstInRun;
      read = firstInRun;
      if (read < 1) {
        // The outer branch already established value <= runEnd.
        read = 1;
      }
    }
    newWrite += 1 - read;
    return oldWrite == newWrite;
  }
}
