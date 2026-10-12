#include <stdio.h>
extern "C" float old_reduce(float,float,float,float);
extern "C" float new_reduce(float,float,float,float);
int main() { float a=33554432.0f,b=-33554432.0f,c=1.0f,d=1.0f; printf("old=%.9g new=%.9g\n",old_reduce(a,b,c,d),new_reduce(a,b,c,d)); }
