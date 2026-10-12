#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_4f97023bff4eae18330f[41];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"47ee3ddc77ee36ee7c4cd0050d3b0369",32,31,0},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",16,15,1},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",8,7,2},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",24,23,3},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",4,3,4},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",36,35,5},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",20,15,6},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",12,10,7},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",28,27,8},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",2,1,9},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",34,33,10},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",18,17,11},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",18,16,12},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",10,9,13},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",26,19,14},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",26,25,15},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",6,5,16},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",22,21,17},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",14,13,18},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",14,11,19},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",30,29,20},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",33,28,21},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",33,32,22},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",17,15,23},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",9,8,24},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",25,24,25},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",5,4,26},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",37,36,27},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",21,20,28},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",13,12,29},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",29,28,30},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",3,2,31},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",35,34,32},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",19,18,33},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",11,10,34},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",27,26,35},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",7,6,36},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",23,22,37},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",15,14,38},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",31,30,39},
{"47ee3ddc77ee36ee7c4cd0050d3b0369",0,37,40}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<41;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_4f97023bff4eae18330f[edges[i].index]);
 if(fclose(f)) abort();
}
