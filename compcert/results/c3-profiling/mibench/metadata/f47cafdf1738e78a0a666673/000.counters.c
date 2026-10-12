#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_a48a7126e45b34ee8223[14];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"1a5753e3f982c8ee39f7862468ba3e95",8,7,0},
{"1a5753e3f982c8ee39f7862468ba3e95",4,1,1},
{"1a5753e3f982c8ee39f7862468ba3e95",4,8,2},
{"1a5753e3f982c8ee39f7862468ba3e95",12,11,3},
{"1a5753e3f982c8ee39f7862468ba3e95",2,1,4},
{"1a5753e3f982c8ee39f7862468ba3e95",10,1,5},
{"1a5753e3f982c8ee39f7862468ba3e95",10,8,6},
{"1a5753e3f982c8ee39f7862468ba3e95",6,4,7},
{"1a5753e3f982c8ee39f7862468ba3e95",9,8,8},
{"1a5753e3f982c8ee39f7862468ba3e95",5,4,9},
{"1a5753e3f982c8ee39f7862468ba3e95",3,8,10},
{"1a5753e3f982c8ee39f7862468ba3e95",11,10,11},
{"1a5753e3f982c8ee39f7862468ba3e95",7,6,12},
{"1a5753e3f982c8ee39f7862468ba3e95",0,11,13}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<14;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_a48a7126e45b34ee8223[edges[i].index]);
 if(fclose(f)) abort();
}
