#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_0c4fbc6ad42b39f82a67[48];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"f92b74f99876ac4f3a6acefcdb951b20",8,7,0},
{"f92b74f99876ac4f3a6acefcdb951b20",4,3,1},
{"f92b74f99876ac4f3a6acefcdb951b20",12,11,2},
{"f92b74f99876ac4f3a6acefcdb951b20",2,1,3},
{"f92b74f99876ac4f3a6acefcdb951b20",10,9,4},
{"f92b74f99876ac4f3a6acefcdb951b20",6,5,5},
{"f92b74f99876ac4f3a6acefcdb951b20",9,8,6},
{"f92b74f99876ac4f3a6acefcdb951b20",5,4,7},
{"f92b74f99876ac4f3a6acefcdb951b20",13,12,8},
{"f92b74f99876ac4f3a6acefcdb951b20",3,2,9},
{"f92b74f99876ac4f3a6acefcdb951b20",11,10,10},
{"f92b74f99876ac4f3a6acefcdb951b20",7,6,11},
{"f92b74f99876ac4f3a6acefcdb951b20",7,11,12},
{"f92b74f99876ac4f3a6acefcdb951b20",0,13,13},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",8,7,14},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",4,3,15},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",2,1,16},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",10,9,17},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",6,5,18},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",9,5,19},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",9,7,20},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",5,4,21},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",3,2,22},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",11,10,23},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",7,6,24},
{"ebb9310d1a19b72c8e511dbbc3a11e4d",0,11,25},
{"786c26c6ccfc5756693b4f8dea92662e",8,7,26},
{"786c26c6ccfc5756693b4f8dea92662e",4,3,27},
{"786c26c6ccfc5756693b4f8dea92662e",2,1,28},
{"786c26c6ccfc5756693b4f8dea92662e",10,9,29},
{"786c26c6ccfc5756693b4f8dea92662e",6,4,30},
{"786c26c6ccfc5756693b4f8dea92662e",9,8,31},
{"786c26c6ccfc5756693b4f8dea92662e",5,4,32},
{"786c26c6ccfc5756693b4f8dea92662e",3,1,33},
{"786c26c6ccfc5756693b4f8dea92662e",11,10,34},
{"786c26c6ccfc5756693b4f8dea92662e",7,6,35},
{"786c26c6ccfc5756693b4f8dea92662e",0,10,36},
{"6fb10d8751db3021f76260edfb939954",8,7,37},
{"6fb10d8751db3021f76260edfb939954",4,3,38},
{"6fb10d8751db3021f76260edfb939954",2,1,39},
{"6fb10d8751db3021f76260edfb939954",10,9,40},
{"6fb10d8751db3021f76260edfb939954",6,4,41},
{"6fb10d8751db3021f76260edfb939954",9,8,42},
{"6fb10d8751db3021f76260edfb939954",5,4,43},
{"6fb10d8751db3021f76260edfb939954",3,1,44},
{"6fb10d8751db3021f76260edfb939954",11,10,45},
{"6fb10d8751db3021f76260edfb939954",7,6,46},
{"6fb10d8751db3021f76260edfb939954",0,10,47}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<48;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_0c4fbc6ad42b39f82a67[edges[i].index]);
 if(fclose(f)) abort();
}
