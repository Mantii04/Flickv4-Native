package androidx.media3.exoplayer.audio;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@UnstableApi
/* loaded from: classes.dex */
public final class PcmAudioUtil {
    private PcmAudioUtil() {
    }

    public static ByteBuffer rampUpVolume(ByteBuffer byteBuffer, int i2, int i7, int i8, int i9) {
        ByteBuffer order = ByteBuffer.allocateDirect(byteBuffer.remaining()).order(ByteOrder.nativeOrder());
        int position = byteBuffer.position();
        while (byteBuffer.hasRemaining() && i8 < i9) {
            write32BitIntPcm(order, (int) ((readAs32BitIntPcm(byteBuffer, i2) * i8) / i9), i2);
            if (byteBuffer.position() == position + i7) {
                i8++;
                position = byteBuffer.position();
            }
        }
        order.put(byteBuffer);
        order.flip();
        return order;
    }

    public static int readAs32BitIntPcm(ByteBuffer byteBuffer, int i2) {
        if (i2 == 2) {
            return ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16);
        }
        if (i2 == 3) {
            return (byteBuffer.get() & 255) << 24;
        }
        if (i2 == 4) {
            float constrainValue = Util.constrainValue(byteBuffer.getFloat(), -1.0f, 1.0f);
            return constrainValue < 0.0f ? (int) ((-constrainValue) * (-2.14748365E9f)) : (int) (constrainValue * 2.14748365E9f);
        }
        if (i2 == 21) {
            return ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
        }
        if (i2 == 22) {
            return ((byteBuffer.get() & 255) << 24) | (byteBuffer.get() & 255) | ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
        }
        if (i2 == 268435456) {
            return ((byteBuffer.get() & 255) << 16) | ((byteBuffer.get() & 255) << 24);
        }
        if (i2 == 1342177280) {
            return ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16);
        }
        if (i2 == 1610612736) {
            return (byteBuffer.get() & 255) | ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16) | ((byteBuffer.get() & 255) << 8);
        }
        throw new IllegalStateException();
    }

    public static void write32BitIntPcm(ByteBuffer byteBuffer, int i2, int i7) {
        if (i7 == 2) {
            byteBuffer.put((byte) (i2 >> 16));
            byteBuffer.put((byte) (i2 >> 24));
            return;
        }
        if (i7 == 3) {
            byteBuffer.put((byte) (i2 >> 24));
            return;
        }
        if (i7 == 4) {
            if (i2 < 0) {
                byteBuffer.putFloat((-i2) / (-2.14748365E9f));
                return;
            } else {
                byteBuffer.putFloat(i2 / 2.14748365E9f);
                return;
            }
        }
        if (i7 == 21) {
            byteBuffer.put((byte) (i2 >> 8));
            byteBuffer.put((byte) (i2 >> 16));
            byteBuffer.put((byte) (i2 >> 24));
            return;
        }
        if (i7 == 22) {
            byteBuffer.put((byte) i2);
            byteBuffer.put((byte) (i2 >> 8));
            byteBuffer.put((byte) (i2 >> 16));
            byteBuffer.put((byte) (i2 >> 24));
            return;
        }
        if (i7 == 268435456) {
            byteBuffer.put((byte) (i2 >> 24));
            byteBuffer.put((byte) (i2 >> 16));
            return;
        }
        if (i7 == 1342177280) {
            byteBuffer.put((byte) (i2 >> 24));
            byteBuffer.put((byte) (i2 >> 16));
            byteBuffer.put((byte) (i2 >> 8));
        } else {
            if (i7 != 1610612736) {
                throw new IllegalStateException();
            }
            byteBuffer.put((byte) (i2 >> 24));
            byteBuffer.put((byte) (i2 >> 16));
            byteBuffer.put((byte) (i2 >> 8));
            byteBuffer.put((byte) i2);
        }
    }
}
