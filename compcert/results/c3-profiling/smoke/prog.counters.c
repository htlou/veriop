#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_82ed0f2180320108983a[19];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",16,13,0},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",8,7,1},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",4,3,2},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",12,11,3},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",2,1,4},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",18,17,5},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",10,8,6},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",6,4,7},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",6,13,8},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",14,13,9},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",17,16,10},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",9,8,11},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",5,13,12},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",13,12,13},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",3,2,14},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",11,8,15},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",7,6,16},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",15,13,17},
{"d0f1fb2b1b0f4febc2a2a3fc9db1cd7c",0,17,18}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<19;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_82ed0f2180320108983a[edges[i].index]);
 if(fclose(f)) abort();
}
