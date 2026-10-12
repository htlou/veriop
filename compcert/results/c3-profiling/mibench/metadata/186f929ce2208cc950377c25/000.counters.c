#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_3d8cfc1512922fff3f91[4];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"444a1e669d62783265c59ba22ede71a7",4,3,0},
{"444a1e669d62783265c59ba22ede71a7",3,1,1},
{"444a1e669d62783265c59ba22ede71a7",3,2,2},
{"444a1e669d62783265c59ba22ede71a7",0,3,3}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<4;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_3d8cfc1512922fff3f91[edges[i].index]);
 if(fclose(f)) abort();
}
