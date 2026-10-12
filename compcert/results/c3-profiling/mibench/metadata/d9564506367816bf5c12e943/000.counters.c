#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_7cf6250f9df6775b45a3[14];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"37466f3c39777dd6f16b6261e6cee432",8,1,0},
{"37466f3c39777dd6f16b6261e6cee432",4,3,1},
{"37466f3c39777dd6f16b6261e6cee432",12,11,2},
{"37466f3c39777dd6f16b6261e6cee432",2,1,3},
{"37466f3c39777dd6f16b6261e6cee432",10,9,4},
{"37466f3c39777dd6f16b6261e6cee432",6,1,5},
{"37466f3c39777dd6f16b6261e6cee432",6,5,6},
{"37466f3c39777dd6f16b6261e6cee432",9,1,7},
{"37466f3c39777dd6f16b6261e6cee432",9,7,8},
{"37466f3c39777dd6f16b6261e6cee432",5,3,9},
{"37466f3c39777dd6f16b6261e6cee432",3,1,10},
{"37466f3c39777dd6f16b6261e6cee432",11,9,11},
{"37466f3c39777dd6f16b6261e6cee432",7,6,12},
{"37466f3c39777dd6f16b6261e6cee432",0,11,13}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<14;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_7cf6250f9df6775b45a3[edges[i].index]);
 if(fclose(f)) abort();
}
