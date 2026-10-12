#include <stdio.h>
#define gate old_gate
#include "old.c"
#undef gate
#define gate new_gate
#include "new.c"
#undef gate
int main(void) {
  int old = old_gate(256, 1, 1, 0);
  int new = new_gate(256, 1, 1, 0);
  printf("old=%d new=%d\n", old, new);
  return old != 0 || new != 1;
}
