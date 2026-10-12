#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_20d61b67f5cd3723ac6d[6];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"4729c71a14a6b6d97a09af5029d044c0",2,1,0},
{"4729c71a14a6b6d97a09af5029d044c0",0,1,1},
{"4729c71a14a6b6d97a09af5029d044c0",2,1,2},
{"4729c71a14a6b6d97a09af5029d044c0",0,1,3},
{"4729c71a14a6b6d97a09af5029d044c0",2,1,4},
{"4729c71a14a6b6d97a09af5029d044c0",0,1,5}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<6;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_20d61b67f5cd3723ac6d[edges[i].index]);
 if(fclose(f)) abort();
}
