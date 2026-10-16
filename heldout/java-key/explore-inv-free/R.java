import java.util.*;
public class R {
  static long[] bitmap = new long[1024];
  static int r0(char lowbits){ int leftover=(lowbits+1)&63; int answer=0;
    for(int k=0;k<(lowbits+1)>>>6;++k) answer+=Long.bitCount(bitmap[k]);
    if(leftover!=0) answer+=Long.bitCount(bitmap[(lowbits+1)>>>6]<<(64-leftover)); return answer; }
  static int r2acc(char lowbits){ final long[] b=bitmap; int end=(lowbits+1)>>>6; int a0=0,a1=0; int k=0;
    for(;k+1<end;k+=2){ a0+=Long.bitCount(b[k]); a1+=Long.bitCount(b[k+1]); }
    if(k<end) a0+=Long.bitCount(b[k]);
    int answer=a0+a1; int leftover=(lowbits+1)&63;
    if(leftover!=0) answer+=Long.bitCount(b[end]<<(64-leftover)); return answer; }
  static int r4acc(char lowbits){ final long[] b=bitmap; int end=(lowbits+1)>>>6; int a0=0,a1=0,a2=0,a3=0; int k=0;
    for(;k+3<end;k+=4){ a0+=Long.bitCount(b[k]); a1+=Long.bitCount(b[k+1]); a2+=Long.bitCount(b[k+2]); a3+=Long.bitCount(b[k+3]); }
    for(;k<end;++k) a0+=Long.bitCount(b[k]);
    int answer=(a0+a1)+(a2+a3); int leftover=(lowbits+1)&63;
    if(leftover!=0) answer+=Long.bitCount(b[end]<<(64-leftover)); return answer; }
  static int rpair(char lowbits){ final long[] b=bitmap; int end=(lowbits+1)>>>6; int answer=0; int k=0;
    for(;k+3<end;k+=4){ answer+=(Long.bitCount(b[k])+Long.bitCount(b[k+1]))+(Long.bitCount(b[k+2])+Long.bitCount(b[k+3])); }
    for(;k<end;++k) answer+=Long.bitCount(b[k]);
    int leftover=(lowbits+1)&63;
    if(leftover!=0) answer+=Long.bitCount(b[end]<<(64-leftover)); return answer; }
  static int rlong(char lowbits){ final long[] b=bitmap; int end=(lowbits+1)>>>6; long answer=0; 
    for(int k=0;k<end;++k) answer+=Long.bitCount(b[k]);
    int leftover=(lowbits+1)&63;
    if(leftover!=0) answer+=Long.bitCount(b[end]<<(64-leftover)); return (int)answer; }
  static int rint(char lowbits){ final long[] b=bitmap; int end=(lowbits+1)>>>6; int answer=0;
    for(int k=0;k<end;++k){ long w=b[k]; answer+=Integer.bitCount((int)w)+Integer.bitCount((int)(w>>>32)); }
    int leftover=(lowbits+1)&63;
    if(leftover!=0) answer+=Long.bitCount(b[end]<<(64-leftover)); return answer; }
  static int rfull(char lowbits){ final long[] b=bitmap; int end=(lowbits+1)>>>6; int answer=0;
    for(int k=0;k<b.length;++k){ answer+= k<end ? Long.bitCount(b[k]) : 0; }
    int leftover=(lowbits+1)&63;
    if(leftover!=0) answer+=Long.bitCount(b[end]<<(64-leftover)); return answer; }
  static int r4b(char lowbits){ final long[] b=bitmap; int end=(lowbits+1)>>>6; int a0=0,a1=0,a2=0,a3=0; int lim=end&~3; int k=0;
    for(;k<lim;k+=4){ a0+=Long.bitCount(b[k]); a1+=Long.bitCount(b[k+1]); a2+=Long.bitCount(b[k+2]); a3+=Long.bitCount(b[k+3]); }
    for(;k<end;++k) a0+=Long.bitCount(b[k]);
    int answer=(a0+a1)+(a2+a3); int leftover=(lowbits+1)&63;
    if(leftover!=0) answer+=Long.bitCount(b[end]<<(64-leftover)); return answer; }
  static int r2b(char lowbits){ final long[] b=bitmap; int end=(lowbits+1)>>>6; int a0=0,a1=0; int lim=end&~1; int k=0;
    for(;k<lim;k+=2){ a0+=Long.bitCount(b[k]); a1+=Long.bitCount(b[k+1]); }
    if(k<end) a0+=Long.bitCount(b[k]);
    int answer=a0+a1; int leftover=(lowbits+1)&63;
    if(leftover!=0) answer+=Long.bitCount(b[end]<<(64-leftover)); return answer; }
  static int r8b(char lowbits){ final long[] b=bitmap; int end=(lowbits+1)>>>6; int a0=0,a1=0,a2=0,a3=0; int lim=end&~7; int k=0;
    for(;k<lim;k+=8){ a0+=Long.bitCount(b[k])+Long.bitCount(b[k+4]); a1+=Long.bitCount(b[k+1])+Long.bitCount(b[k+5]); a2+=Long.bitCount(b[k+2])+Long.bitCount(b[k+6]); a3+=Long.bitCount(b[k+3])+Long.bitCount(b[k+7]); }
    for(;k<end;++k) a0+=Long.bitCount(b[k]);
    int answer=(a0+a1)+(a2+a3); int leftover=(lowbits+1)&63;
    if(leftover!=0) answer+=Long.bitCount(b[end]<<(64-leftover)); return answer; }
  public static void main(String[] a){
    String v=a[0]; Random r=new Random(1); for(int i=0;i<65536;i++) if(r.nextBoolean()) bitmap[i>>>6]|=1L<<i;
    char[] q=new char[1000]; for(int i=0;i<1000;i++) q[i]=(char)r.nextInt(65535);
    for(char c=0;c<65535;c++){ int x=r0(c); int y=switch(v){case "r0"->r0(c);case "r2acc"->r2acc(c);case "r4acc"->r4acc(c);case "rpair"->rpair(c);case "rint"->rint(c);case "r4b"->r4b(c);case "r2b"->r2b(c);case "r8b"->r8b(c);case "rfull"->rfull(c);default->rlong(c);}; if(x!=y) throw new Error(v+" "+(int)c);}
    long acc=0; double best=1e18;
    for(int rep=0;rep<4000;rep++){ long s=System.nanoTime();
      switch(v){case "r0"->{for(char c:q) acc+=r0(c);} case "r2acc"->{for(char c:q) acc+=r2acc(c);} case "r4acc"->{for(char c:q) acc+=r4acc(c);} case "rpair"->{for(char c:q) acc+=rpair(c);} case "rint"->{for(char c:q) acc+=rint(c);} case "r4b"->{for(char c:q) acc+=r4b(c);} case "r2b"->{for(char c:q) acc+=r2b(c);} case "r8b"->{for(char c:q) acc+=r8b(c);} case "rfull"->{for(char c:q) acc+=rfull(c);} default->{for(char c:q) acc+=rlong(c);}}
      best=Math.min(best,(System.nanoTime()-s)/1000.0);}
    System.out.printf("%s %.1f ns/rank (%d)%n",v,best,acc&1);
  }
}
