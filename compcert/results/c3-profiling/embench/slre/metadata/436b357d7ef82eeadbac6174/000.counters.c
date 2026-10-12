#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_089138564b353b781c15[14];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"113fd9d1ff40affe6c6ef51b3d749100",8,7,0},
{"113fd9d1ff40affe6c6ef51b3d749100",4,2,1},
{"113fd9d1ff40affe6c6ef51b3d749100",12,11,2},
{"113fd9d1ff40affe6c6ef51b3d749100",2,1,3},
{"113fd9d1ff40affe6c6ef51b3d749100",10,9,4},
{"113fd9d1ff40affe6c6ef51b3d749100",6,5,5},
{"113fd9d1ff40affe6c6ef51b3d749100",14,13,6},
{"113fd9d1ff40affe6c6ef51b3d749100",9,8,7},
{"113fd9d1ff40affe6c6ef51b3d749100",5,4,8},
{"113fd9d1ff40affe6c6ef51b3d749100",13,12,9},
{"113fd9d1ff40affe6c6ef51b3d749100",3,2,10},
{"113fd9d1ff40affe6c6ef51b3d749100",11,10,11},
{"113fd9d1ff40affe6c6ef51b3d749100",7,6,12},
{"113fd9d1ff40affe6c6ef51b3d749100",0,13,13}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<14;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_089138564b353b781c15[edges[i].index]);
 if(fclose(f)) abort();
}
