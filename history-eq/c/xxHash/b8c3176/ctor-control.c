/* Minimal control for Alive2's per-function treatment of C constructors. */
#include <stdio.h>

static int dispatch_ready;

#ifdef NEW
__attribute__((constructor)) static void initialize(void) { dispatch_ready = 7; }
int target(void) { return dispatch_ready; }
#else
int target(void) {
    if (!dispatch_ready) dispatch_ready = 7;
    return dispatch_ready;
}
#endif

int main(void) { printf("%d\n", target()); }
