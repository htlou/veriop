#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
uint64_t __veriop_counts_d7d51ce358c0d18be9fa[18];
static const struct {const char *key;unsigned from,to,index;} edges[]={{"152733bd38613657f8bcc4cdddad7ede",8,7,0},
{"152733bd38613657f8bcc4cdddad7ede",4,3,1},
{"152733bd38613657f8bcc4cdddad7ede",2,1,2},
{"152733bd38613657f8bcc4cdddad7ede",6,5,3},
{"152733bd38613657f8bcc4cdddad7ede",9,8,4},
{"152733bd38613657f8bcc4cdddad7ede",5,4,5},
{"152733bd38613657f8bcc4cdddad7ede",3,2,6},
{"152733bd38613657f8bcc4cdddad7ede",7,6,7},
{"152733bd38613657f8bcc4cdddad7ede",0,9,8},
{"d7344cfbe9055c01d57f5a9eca886e5b",8,7,9},
{"d7344cfbe9055c01d57f5a9eca886e5b",4,3,10},
{"d7344cfbe9055c01d57f5a9eca886e5b",2,1,11},
{"d7344cfbe9055c01d57f5a9eca886e5b",6,5,12},
{"d7344cfbe9055c01d57f5a9eca886e5b",9,8,13},
{"d7344cfbe9055c01d57f5a9eca886e5b",5,4,14},
{"d7344cfbe9055c01d57f5a9eca886e5b",3,2,15},
{"d7344cfbe9055c01d57f5a9eca886e5b",7,6,16},
{"d7344cfbe9055c01d57f5a9eca886e5b",0,9,17}};
__attribute__((destructor)) static void dump_edges(void) {
 const char *path=getenv("VERIOP_EDGE_COUNTS"); if(!path) return;
 FILE *f=fopen(path,"a"); if(!f) {perror("profile output"); abort();}
 for(unsigned i=0;i<18;i++) fprintf(f,"%s %u %u %llu\n",edges[i].key,edges[i].from,edges[i].to,(unsigned long long)__veriop_counts_d7d51ce358c0d18be9fa[edges[i].index]);
 if(fclose(f)) abort();
}
