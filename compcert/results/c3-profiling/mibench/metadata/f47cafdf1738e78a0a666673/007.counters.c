#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_3a3ae25a486bb7403477[25];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"90cf5e0b4de090b0c13f6d5a39da8e25",16,14,0},
{"90cf5e0b4de090b0c13f6d5a39da8e25",8,7,1},
{"90cf5e0b4de090b0c13f6d5a39da8e25",4,2,2},
{"90cf5e0b4de090b0c13f6d5a39da8e25",20,2,3},
{"90cf5e0b4de090b0c13f6d5a39da8e25",20,19,4},
{"90cf5e0b4de090b0c13f6d5a39da8e25",12,2,5},
{"90cf5e0b4de090b0c13f6d5a39da8e25",12,11,6},
{"90cf5e0b4de090b0c13f6d5a39da8e25",2,1,7},
{"90cf5e0b4de090b0c13f6d5a39da8e25",18,17,8},
{"90cf5e0b4de090b0c13f6d5a39da8e25",10,9,9},
{"90cf5e0b4de090b0c13f6d5a39da8e25",6,5,10},
{"90cf5e0b4de090b0c13f6d5a39da8e25",22,21,11},
{"90cf5e0b4de090b0c13f6d5a39da8e25",14,12,12},
{"90cf5e0b4de090b0c13f6d5a39da8e25",17,2,13},
{"90cf5e0b4de090b0c13f6d5a39da8e25",17,16,14},
{"90cf5e0b4de090b0c13f6d5a39da8e25",9,8,15},
{"90cf5e0b4de090b0c13f6d5a39da8e25",5,20,16},
{"90cf5e0b4de090b0c13f6d5a39da8e25",21,20,17},
{"90cf5e0b4de090b0c13f6d5a39da8e25",13,12,18},
{"90cf5e0b4de090b0c13f6d5a39da8e25",3,2,19},
{"90cf5e0b4de090b0c13f6d5a39da8e25",19,17,20},
{"90cf5e0b4de090b0c13f6d5a39da8e25",11,10,21},
{"90cf5e0b4de090b0c13f6d5a39da8e25",7,6,22},
{"90cf5e0b4de090b0c13f6d5a39da8e25",15,14,23},
{"90cf5e0b4de090b0c13f6d5a39da8e25",0,22,24}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<25;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_3a3ae25a486bb7403477[edges[i].index]);
 if(fclose(f)) abort();
}
