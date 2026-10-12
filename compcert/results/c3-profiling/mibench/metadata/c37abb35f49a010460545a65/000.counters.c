#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_e53e26069162c1199481[36];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"01deaa68e00301eef03edad9ff3d2576",4,3,0},
{"01deaa68e00301eef03edad9ff3d2576",2,1,1},
{"01deaa68e00301eef03edad9ff3d2576",3,2,2},
{"01deaa68e00301eef03edad9ff3d2576",0,4,3},
{"551b37396b69c47c5e0040f0aa1b53ab",4,3,4},
{"551b37396b69c47c5e0040f0aa1b53ab",2,1,5},
{"551b37396b69c47c5e0040f0aa1b53ab",5,4,6},
{"551b37396b69c47c5e0040f0aa1b53ab",3,2,7},
{"551b37396b69c47c5e0040f0aa1b53ab",0,5,8},
{"60ab7deb01c91622d04608597d431555",16,15,9},
{"60ab7deb01c91622d04608597d431555",8,7,10},
{"60ab7deb01c91622d04608597d431555",4,3,11},
{"60ab7deb01c91622d04608597d431555",12,10,12},
{"60ab7deb01c91622d04608597d431555",2,10,13},
{"60ab7deb01c91622d04608597d431555",10,1,14},
{"60ab7deb01c91622d04608597d431555",10,9,15},
{"60ab7deb01c91622d04608597d431555",6,5,16},
{"60ab7deb01c91622d04608597d431555",14,13,17},
{"60ab7deb01c91622d04608597d431555",17,16,18},
{"60ab7deb01c91622d04608597d431555",9,8,19},
{"60ab7deb01c91622d04608597d431555",5,4,20},
{"60ab7deb01c91622d04608597d431555",13,12,21},
{"60ab7deb01c91622d04608597d431555",3,2,22},
{"60ab7deb01c91622d04608597d431555",11,10,23},
{"60ab7deb01c91622d04608597d431555",7,6,24},
{"60ab7deb01c91622d04608597d431555",15,14,25},
{"60ab7deb01c91622d04608597d431555",0,17,26},
{"4e1c05f5dae74b49bfc1f1b64528567d",4,3,27},
{"4e1c05f5dae74b49bfc1f1b64528567d",2,1,28},
{"4e1c05f5dae74b49bfc1f1b64528567d",5,4,29},
{"4e1c05f5dae74b49bfc1f1b64528567d",3,2,30},
{"4e1c05f5dae74b49bfc1f1b64528567d",0,4,31},
{"3af06ac3b93c257282fa137a56ac0dde",4,3,32},
{"3af06ac3b93c257282fa137a56ac0dde",2,1,33},
{"3af06ac3b93c257282fa137a56ac0dde",3,2,34},
{"3af06ac3b93c257282fa137a56ac0dde",0,4,35}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<36;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_e53e26069162c1199481[edges[i].index]);
 if(fclose(f)) abort();
}
