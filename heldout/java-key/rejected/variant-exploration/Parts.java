import java.util.*;
import org.roaringbitmap.*;
public class Parts {
  static long[] bm; static int card; static char[] idx;
  static int scanOnly(int j){ int leftover=j; for(int k=0;k<bm.length;++k){ int bits=Long.bitCount(bm[k]); if(bits>leftover) return k; leftover-=bits;} return -1; }
  static int scanOnly8(int j){ int leftover=j; int k=0; for(;k+8<=bm.length;k+=8){ int bits=Long.bitCount(bm[k])+Long.bitCount(bm[k+1])+Long.bitCount(bm[k+2])+Long.bitCount(bm[k+3])+Long.bitCount(bm[k+4])+Long.bitCount(bm[k+5])+Long.bitCount(bm[k+6])+Long.bitCount(bm[k+7]); if(bits>leftover) return k; leftover-=bits;} return -1; }
  public static void main(String[] a){
    int vc=Integer.parseInt(a[0]); String mode=a[1];
    BitmapContainer bc=new BitmapContainer(); Random r=new Random(123);
    for(int i=0;i<vc;i++) bc.add((char)r.nextInt(65535));
    card=bc.getCardinality(); idx=new char[card]; for(int i=0;i<card;i++) idx[i]=(char)r.nextInt(card);
    bm=new long[1024]; for(char c: idx) {} 
    org.roaringbitmap.CharIterator it=bc.getCharIterator(); while(it.hasNext()){int v=it.next(); bm[v>>>6]|=1L<<v;}
    long[] words=new long[card]; int[] js=new int[card]; for(int i=0;i<card;i++){ do{words[i]=bm[r.nextInt(1024)];}while(words[i]==0); js[i]=r.nextInt(Long.bitCount(words[i])); }
    long acc=0; double best=1e18;
    for(int rep=0;rep<300;rep++){ long s=System.nanoTime();
      switch(mode){
        case "full": for(int i=0;i<card;i++) acc+=bc.select(idx[i]); break;
        case "scan": for(int i=0;i<card;i++) acc+=scanOnly(idx[i]); break;
        case "scan8": for(int i=0;i<card;i++) acc+=scanOnly8(idx[i]); break;
        case "usel": for(int i=0;i<card;i++) acc+=Util.select(words[i],js[i]); break;
      }
      best=Math.min(best,(System.nanoTime()-s)/(double)card); }
    System.out.printf("vc=%d %s %.1f ns/op (%d)%n",vc,mode,best,acc&1);
  }
}
