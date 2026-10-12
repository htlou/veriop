#include <stdio.h>
#define vector_gate old_gate
#include "old.c"
#undef vector_gate
#define vector_gate new_gate
#include "new.c"
#undef vector_gate
int main(void) {
  int old = old_gate(128, 4), new = new_gate(128, 4);
  int at20 = old_gate(128, 20) + new_gate(128, 20);
  int below4 = old_gate(128, 3) + new_gate(128, 3);
  printf("old=%d new=%d at20=%d below4=%d\n", old, new, at20, below4);
  return old != 0 || new != 1 || at20 != 0 || below4 != 2;
}
