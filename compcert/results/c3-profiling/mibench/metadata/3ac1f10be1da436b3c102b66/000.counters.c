#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_0677b861fcdb5445a6a1[17];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"9f134ea0df3dbf0432473a352b69baee",8,7,0},
{"9f134ea0df3dbf0432473a352b69baee",4,3,1},
{"9f134ea0df3dbf0432473a352b69baee",2,1,2},
{"9f134ea0df3dbf0432473a352b69baee",6,5,3},
{"9f134ea0df3dbf0432473a352b69baee",5,4,4},
{"9f134ea0df3dbf0432473a352b69baee",3,2,5},
{"9f134ea0df3dbf0432473a352b69baee",7,6,6},
{"9f134ea0df3dbf0432473a352b69baee",0,7,7},
{"6a06809cc2078b5ba17e63e2d07b0659",8,7,8},
{"6a06809cc2078b5ba17e63e2d07b0659",4,3,9},
{"6a06809cc2078b5ba17e63e2d07b0659",2,1,10},
{"6a06809cc2078b5ba17e63e2d07b0659",6,5,11},
{"6a06809cc2078b5ba17e63e2d07b0659",9,8,12},
{"6a06809cc2078b5ba17e63e2d07b0659",5,4,13},
{"6a06809cc2078b5ba17e63e2d07b0659",3,2,14},
{"6a06809cc2078b5ba17e63e2d07b0659",7,6,15},
{"6a06809cc2078b5ba17e63e2d07b0659",0,8,16}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<17;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_0677b861fcdb5445a6a1[edges[i].index]);
 if(fclose(f)) abort();
}
