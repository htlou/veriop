#include <stdio.h>
static int choose(int x) { return x & 1 ? 3*x : x+1; }
int main(void) { int sum=0; for(int i=0;i<20;i++) sum+=choose(i); printf("%d\n",sum); return sum!=400; }
