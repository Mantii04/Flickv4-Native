package s0;

import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class x {
    public static List<w> split(ByteBuffer byteBuffer) {
        int remaining;
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (asReadOnlyBuffer.hasRemaining()) {
            try {
                byte b7 = asReadOnlyBuffer.get();
                int i2 = (b7 >> 3) & 15;
                if (((b7 >> 2) & 1) != 0) {
                    asReadOnlyBuffer.get();
                }
                if (((b7 >> 1) & 1) != 0) {
                    remaining = 0;
                    for (int i7 = 0; i7 < 8; i7++) {
                        byte b8 = asReadOnlyBuffer.get();
                        remaining |= (b8 & Byte.MAX_VALUE) << (i7 * 7);
                        if ((b8 & 128) == 0) {
                            break;
                        }
                    }
                } else {
                    remaining = asReadOnlyBuffer.remaining();
                }
                if (asReadOnlyBuffer.position() + remaining > asReadOnlyBuffer.limit()) {
                    break;
                }
                ByteBuffer duplicate = asReadOnlyBuffer.duplicate();
                duplicate.limit(asReadOnlyBuffer.position() + remaining);
                arrayList.add(new w(i2, duplicate));
                asReadOnlyBuffer.position(asReadOnlyBuffer.position() + remaining);
            } catch (BufferUnderflowException unused) {
            }
        }
        return arrayList;
    }
}
