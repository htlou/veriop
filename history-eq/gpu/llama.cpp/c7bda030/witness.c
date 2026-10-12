#include <stdio.h>
#define pred pred_old
#include "old.c"
#undef pred
#define pred pred_new
#include "new.c"
#undef pred
int main(void) {
    int old = pred_old(18,18,18,18,64,1,1,18,18);
    int new = pred_new(18,18,18,18,64,1,1,18,18);
    printf("old=%d new=%d\n",old,new);
    return old != 0 || new != 1;
}
