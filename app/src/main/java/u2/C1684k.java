package u2;

import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$Reader$EndOfFileException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* renamed from: u2.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1684k implements InterfaceC1685l {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f20293a;

    public C1684k(ByteBuffer byteBuffer) {
        this.f20293a = byteBuffer;
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
    }

    @Override // u2.InterfaceC1685l
    public int getUInt16() throws DefaultImageHeaderParser$Reader$EndOfFileException {
        return (getUInt8() << 8) | getUInt8();
    }

    @Override // u2.InterfaceC1685l
    public short getUInt8() throws DefaultImageHeaderParser$Reader$EndOfFileException {
        ByteBuffer byteBuffer = this.f20293a;
        if (byteBuffer.remaining() >= 1) {
            return (short) (byteBuffer.get() & 255);
        }
        throw new DefaultImageHeaderParser$Reader$EndOfFileException();
    }

    @Override // u2.InterfaceC1685l
    public int read(byte[] bArr, int i2) {
        ByteBuffer byteBuffer = this.f20293a;
        int min = Math.min(i2, byteBuffer.remaining());
        if (min == 0) {
            return -1;
        }
        byteBuffer.get(bArr, 0, min);
        return min;
    }

    @Override // u2.InterfaceC1685l
    public long skip(long j7) {
        ByteBuffer byteBuffer = this.f20293a;
        int min = (int) Math.min(byteBuffer.remaining(), j7);
        byteBuffer.position(byteBuffer.position() + min);
        return min;
    }
}
