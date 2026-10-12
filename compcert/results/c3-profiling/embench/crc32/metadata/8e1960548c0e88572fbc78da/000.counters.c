#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_a5bb32e1ec8a9ab444a4[41];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"cb1bb448f20e9c81ea4a55b5fa469e13",16,15,0},
{"cb1bb448f20e9c81ea4a55b5fa469e13",8,7,1},
{"cb1bb448f20e9c81ea4a55b5fa469e13",4,3,2},
{"cb1bb448f20e9c81ea4a55b5fa469e13",12,10,3},
{"cb1bb448f20e9c81ea4a55b5fa469e13",2,1,4},
{"cb1bb448f20e9c81ea4a55b5fa469e13",10,9,5},
{"cb1bb448f20e9c81ea4a55b5fa469e13",6,5,6},
{"cb1bb448f20e9c81ea4a55b5fa469e13",14,13,7},
{"cb1bb448f20e9c81ea4a55b5fa469e13",9,8,8},
{"cb1bb448f20e9c81ea4a55b5fa469e13",5,4,9},
{"cb1bb448f20e9c81ea4a55b5fa469e13",13,12,10},
{"cb1bb448f20e9c81ea4a55b5fa469e13",3,2,11},
{"cb1bb448f20e9c81ea4a55b5fa469e13",3,13,12},
{"cb1bb448f20e9c81ea4a55b5fa469e13",11,10,13},
{"cb1bb448f20e9c81ea4a55b5fa469e13",7,6,14},
{"cb1bb448f20e9c81ea4a55b5fa469e13",15,14,15},
{"cb1bb448f20e9c81ea4a55b5fa469e13",0,15,16},
{"4729c71a14a6b6d97a09af5029d044c0",2,1,17},
{"4729c71a14a6b6d97a09af5029d044c0",0,1,18},
{"eba8de1a8fea3680512d3cb441be4fc2",4,3,19},
{"eba8de1a8fea3680512d3cb441be4fc2",2,1,20},
{"eba8de1a8fea3680512d3cb441be4fc2",3,1,21},
{"eba8de1a8fea3680512d3cb441be4fc2",0,3,22},
{"98e61a08143ac8aec06d0d9a7fb4d8c9",2,1,23},
{"98e61a08143ac8aec06d0d9a7fb4d8c9",3,2,24},
{"98e61a08143ac8aec06d0d9a7fb4d8c9",0,2,25},
{"378f3d0fe934e17022a928056905466a",8,7,26},
{"378f3d0fe934e17022a928056905466a",4,9,27},
{"378f3d0fe934e17022a928056905466a",2,1,28},
{"378f3d0fe934e17022a928056905466a",10,9,29},
{"378f3d0fe934e17022a928056905466a",6,4,30},
{"378f3d0fe934e17022a928056905466a",9,3,31},
{"378f3d0fe934e17022a928056905466a",9,8,32},
{"378f3d0fe934e17022a928056905466a",5,4,33},
{"378f3d0fe934e17022a928056905466a",3,2,34},
{"378f3d0fe934e17022a928056905466a",11,10,35},
{"378f3d0fe934e17022a928056905466a",7,6,36},
{"378f3d0fe934e17022a928056905466a",0,11,37},
{"a5950a7e9ccc3a662ca6b07a6f1ee5c9",2,1,38},
{"a5950a7e9ccc3a662ca6b07a6f1ee5c9",3,2,39},
{"a5950a7e9ccc3a662ca6b07a6f1ee5c9",0,2,40}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<41;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_a5bb32e1ec8a9ab444a4[edges[i].index]);
 if(fclose(f)) abort();
}
