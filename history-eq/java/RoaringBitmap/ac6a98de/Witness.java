package org.roaringbitmap;

import org.roaringbitmap.buffer.BufferUtil;
import org.roaringbitmap.buffer.MappeableArrayContainer;
import org.roaringbitmap.buffer.MappeableContainer;

public final class Witness {
  public static void main(String[] args) {
    try {
      Container[] out = Util.addOffset(new ArrayContainer(), (char) 1);
      System.out.printf("array=return low=%d high=%d%n",
          out[0].getCardinality(), out[1].getCardinality());
    } catch (RuntimeException e) {
      System.out.printf("array=throw %s%n", e.getClass().getSimpleName());
    }
    try {
      MappeableContainer[] out = BufferUtil.addOffset(new MappeableArrayContainer(), (char) 1);
      System.out.printf("buffer=return low=%d high=%d%n",
          out[0].getCardinality(), out[1].getCardinality());
    } catch (RuntimeException e) {
      System.out.printf("buffer=throw %s%n", e.getClass().getSimpleName());
    }
  }
}
