#include <stdint.h>
#include <stdio.h>
uint64_t target_disp_241(const uint8_t *);
int main(void){uint8_t p[241];for(int i=0;i<241;i++)p[i]=(uint8_t)(i*19+3);printf("%016llx\n",(unsigned long long)target_disp_241(p));return 0;}
