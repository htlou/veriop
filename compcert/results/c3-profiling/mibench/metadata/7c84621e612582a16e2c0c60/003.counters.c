#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_0ae6c1c65b0472a1afb0[28];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"e70449aadb68e6b0177ff239801332e8",16,15,0},
{"e70449aadb68e6b0177ff239801332e8",8,7,1},
{"e70449aadb68e6b0177ff239801332e8",24,23,2},
{"e70449aadb68e6b0177ff239801332e8",4,3,3},
{"e70449aadb68e6b0177ff239801332e8",20,19,4},
{"e70449aadb68e6b0177ff239801332e8",12,11,5},
{"e70449aadb68e6b0177ff239801332e8",2,1,6},
{"e70449aadb68e6b0177ff239801332e8",18,17,7},
{"e70449aadb68e6b0177ff239801332e8",10,8,8},
{"e70449aadb68e6b0177ff239801332e8",26,25,9},
{"e70449aadb68e6b0177ff239801332e8",6,5,10},
{"e70449aadb68e6b0177ff239801332e8",22,21,11},
{"e70449aadb68e6b0177ff239801332e8",14,12,12},
{"e70449aadb68e6b0177ff239801332e8",17,16,13},
{"e70449aadb68e6b0177ff239801332e8",9,8,14},
{"e70449aadb68e6b0177ff239801332e8",25,24,15},
{"e70449aadb68e6b0177ff239801332e8",5,4,16},
{"e70449aadb68e6b0177ff239801332e8",5,20,17},
{"e70449aadb68e6b0177ff239801332e8",21,20,18},
{"e70449aadb68e6b0177ff239801332e8",13,12,19},
{"e70449aadb68e6b0177ff239801332e8",3,2,20},
{"e70449aadb68e6b0177ff239801332e8",19,18,21},
{"e70449aadb68e6b0177ff239801332e8",11,6,22},
{"e70449aadb68e6b0177ff239801332e8",11,10,23},
{"e70449aadb68e6b0177ff239801332e8",7,6,24},
{"e70449aadb68e6b0177ff239801332e8",23,21,25},
{"e70449aadb68e6b0177ff239801332e8",15,14,26},
{"e70449aadb68e6b0177ff239801332e8",0,25,27}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<28;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_0ae6c1c65b0472a1afb0[edges[i].index]);
 if(fclose(f)) abort();
}
