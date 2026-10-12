#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_f995ecb02490d862d9c0[31];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"8333215e99337cbcffbd948178cd7145",8,7,0},
{"8333215e99337cbcffbd948178cd7145",4,3,1},
{"8333215e99337cbcffbd948178cd7145",12,11,2},
{"8333215e99337cbcffbd948178cd7145",2,1,3},
{"8333215e99337cbcffbd948178cd7145",10,9,4},
{"8333215e99337cbcffbd948178cd7145",6,5,5},
{"8333215e99337cbcffbd948178cd7145",9,8,6},
{"8333215e99337cbcffbd948178cd7145",5,2,7},
{"8333215e99337cbcffbd948178cd7145",5,4,8},
{"8333215e99337cbcffbd948178cd7145",13,12,9},
{"8333215e99337cbcffbd948178cd7145",3,2,10},
{"8333215e99337cbcffbd948178cd7145",11,10,11},
{"8333215e99337cbcffbd948178cd7145",7,5,12},
{"8333215e99337cbcffbd948178cd7145",0,12,13},
{"b5c06786ce8ebfc1e566af659e29ff4f",16,15,14},
{"b5c06786ce8ebfc1e566af659e29ff4f",8,7,15},
{"b5c06786ce8ebfc1e566af659e29ff4f",4,3,16},
{"b5c06786ce8ebfc1e566af659e29ff4f",12,11,17},
{"b5c06786ce8ebfc1e566af659e29ff4f",2,1,18},
{"b5c06786ce8ebfc1e566af659e29ff4f",10,8,19},
{"b5c06786ce8ebfc1e566af659e29ff4f",6,2,20},
{"b5c06786ce8ebfc1e566af659e29ff4f",6,4,21},
{"b5c06786ce8ebfc1e566af659e29ff4f",14,13,22},
{"b5c06786ce8ebfc1e566af659e29ff4f",9,8,23},
{"b5c06786ce8ebfc1e566af659e29ff4f",5,4,24},
{"b5c06786ce8ebfc1e566af659e29ff4f",13,12,25},
{"b5c06786ce8ebfc1e566af659e29ff4f",3,2,26},
{"b5c06786ce8ebfc1e566af659e29ff4f",11,10,27},
{"b5c06786ce8ebfc1e566af659e29ff4f",7,6,28},
{"b5c06786ce8ebfc1e566af659e29ff4f",15,14,29},
{"b5c06786ce8ebfc1e566af659e29ff4f",0,15,30}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<31;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_f995ecb02490d862d9c0[edges[i].index]);
 if(fclose(f)) abort();
}
