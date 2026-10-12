import io.netty.buffer.ByteBuf;
import io.netty.buffer.CompositeByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.buffer.UnpooledByteBufAllocator;

public final class Witness {
    public static void main(String[] args) {
        CompositeByteBuf composite = new CompositeByteBuf(UnpooledByteBufAllocator.DEFAULT, false, 16);
        ByteBuf[] components = new ByteBuf[5];
        for (int i = 0; i < components.length; i++) {
            components[i] = Unpooled.wrappedBuffer(new byte[] { (byte) (11 * (i + 1)) });
        }
        composite.addComponents(true, components);
        composite.readerIndex(2);
        System.out.println("first=" + composite.readByte());
        composite.removeComponent(0);
        composite.setIndex(2, 4);
        System.out.println("next=" + composite.readByte());
        composite.release();
    }
}
