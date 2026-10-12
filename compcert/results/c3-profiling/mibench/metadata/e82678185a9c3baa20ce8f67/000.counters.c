#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_2285634ac159fd51209a[23];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"711f3c70224c639a380a3300d0facf1e",2,1,0},
{"711f3c70224c639a380a3300d0facf1e",0,2,1},
{"91cd5798f13b1c6246db582c21ccc4e5",2,1,2},
{"91cd5798f13b1c6246db582c21ccc4e5",0,2,3},
{"711f3c70224c639a380a3300d0facf1e",2,1,4},
{"711f3c70224c639a380a3300d0facf1e",0,2,5},
{"91cd5798f13b1c6246db582c21ccc4e5",2,1,6},
{"91cd5798f13b1c6246db582c21ccc4e5",0,2,7},
{"62708c423a8788bfb4443df2605eca36",2,1,8},
{"62708c423a8788bfb4443df2605eca36",3,2,9},
{"62708c423a8788bfb4443df2605eca36",0,2,10},
{"c668298464ee94ef24bc15ff1c5774ae",4,3,11},
{"c668298464ee94ef24bc15ff1c5774ae",2,1,12},
{"c668298464ee94ef24bc15ff1c5774ae",6,5,13},
{"c668298464ee94ef24bc15ff1c5774ae",5,4,14},
{"c668298464ee94ef24bc15ff1c5774ae",3,2,15},
{"c668298464ee94ef24bc15ff1c5774ae",7,6,16},
{"c668298464ee94ef24bc15ff1c5774ae",0,6,17},
{"2f6afdbdb9a2c36ef45bdaff23a98a40",2,1,18},
{"2f6afdbdb9a2c36ef45bdaff23a98a40",3,2,19},
{"2f6afdbdb9a2c36ef45bdaff23a98a40",0,2,20},
{"683c51129e10e7a785dc50262e0a557f",2,1,21},
{"683c51129e10e7a785dc50262e0a557f",0,1,22}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<23;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_2285634ac159fd51209a[edges[i].index]);
 if(fclose(f)) abort();
}
