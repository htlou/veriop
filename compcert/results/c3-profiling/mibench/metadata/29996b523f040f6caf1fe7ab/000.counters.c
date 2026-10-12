#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_e961836fcf758e316775[14];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"84beaf0030302767db3716097c16bf22",8,1,0},
{"84beaf0030302767db3716097c16bf22",4,3,1},
{"84beaf0030302767db3716097c16bf22",12,11,2},
{"84beaf0030302767db3716097c16bf22",2,1,3},
{"84beaf0030302767db3716097c16bf22",10,9,4},
{"84beaf0030302767db3716097c16bf22",6,5,5},
{"84beaf0030302767db3716097c16bf22",9,7,6},
{"84beaf0030302767db3716097c16bf22",9,8,7},
{"84beaf0030302767db3716097c16bf22",5,4,8},
{"84beaf0030302767db3716097c16bf22",13,12,9},
{"84beaf0030302767db3716097c16bf22",3,2,10},
{"84beaf0030302767db3716097c16bf22",11,10,11},
{"84beaf0030302767db3716097c16bf22",7,6,12},
{"84beaf0030302767db3716097c16bf22",0,12,13}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<14;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_e961836fcf758e316775[edges[i].index]);
 if(fclose(f)) abort();
}
