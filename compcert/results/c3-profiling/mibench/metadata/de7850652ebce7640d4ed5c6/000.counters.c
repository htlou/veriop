#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_ca5364e1858a2c782a0c[33];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"c064780d14b8acb61b1021e8451d142d",16,15,0},
{"c064780d14b8acb61b1021e8451d142d",8,7,1},
{"c064780d14b8acb61b1021e8451d142d",24,22,2},
{"c064780d14b8acb61b1021e8451d142d",4,3,3},
{"c064780d14b8acb61b1021e8451d142d",20,18,4},
{"c064780d14b8acb61b1021e8451d142d",12,11,5},
{"c064780d14b8acb61b1021e8451d142d",28,27,6},
{"c064780d14b8acb61b1021e8451d142d",2,1,7},
{"c064780d14b8acb61b1021e8451d142d",18,17,8},
{"c064780d14b8acb61b1021e8451d142d",18,12,9},
{"c064780d14b8acb61b1021e8451d142d",10,27,10},
{"c064780d14b8acb61b1021e8451d142d",26,25,11},
{"c064780d14b8acb61b1021e8451d142d",6,5,12},
{"c064780d14b8acb61b1021e8451d142d",22,21,13},
{"c064780d14b8acb61b1021e8451d142d",14,13,14},
{"c064780d14b8acb61b1021e8451d142d",30,29,15},
{"c064780d14b8acb61b1021e8451d142d",17,16,16},
{"c064780d14b8acb61b1021e8451d142d",9,27,17},
{"c064780d14b8acb61b1021e8451d142d",25,2,18},
{"c064780d14b8acb61b1021e8451d142d",25,24,19},
{"c064780d14b8acb61b1021e8451d142d",5,4,20},
{"c064780d14b8acb61b1021e8451d142d",21,20,21},
{"c064780d14b8acb61b1021e8451d142d",13,27,22},
{"c064780d14b8acb61b1021e8451d142d",29,27,23},
{"c064780d14b8acb61b1021e8451d142d",29,8,24},
{"c064780d14b8acb61b1021e8451d142d",3,2,25},
{"c064780d14b8acb61b1021e8451d142d",19,18,26},
{"c064780d14b8acb61b1021e8451d142d",11,10,27},
{"c064780d14b8acb61b1021e8451d142d",27,25,28},
{"c064780d14b8acb61b1021e8451d142d",7,6,29},
{"c064780d14b8acb61b1021e8451d142d",23,22,30},
{"c064780d14b8acb61b1021e8451d142d",15,14,31},
{"c064780d14b8acb61b1021e8451d142d",0,30,32}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<33;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_ca5364e1858a2c782a0c[edges[i].index]);
 if(fclose(f)) abort();
}
