package d0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* renamed from: d0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0777b extends AbstractC0778c {
    public static C0777b getRootAsMetadataList(ByteBuffer byteBuffer) {
        return getRootAsMetadataList(byteBuffer, new C0777b());
    }

    public C0777b __assign(int i2, ByteBuffer byteBuffer) {
        __init(i2, byteBuffer);
        return this;
    }

    public void __init(int i2, ByteBuffer byteBuffer) {
        __reset(i2, byteBuffer);
    }

    public C0776a list(C0776a c0776a, int i2) {
        int __offset = __offset(6);
        if (__offset == 0) {
            return null;
        }
        return c0776a.__assign(__indirect((i2 * 4) + __vector(__offset)), this.f13484b);
    }

    public int listLength() {
        int __offset = __offset(6);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public int version() {
        int __offset = __offset(4);
        if (__offset != 0) {
            return this.f13484b.getInt(__offset + this.f13483a);
        }
        return 0;
    }

    public static C0777b getRootAsMetadataList(ByteBuffer byteBuffer, C0777b c0777b) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return c0777b.__assign(byteBuffer.position() + byteBuffer.getInt(byteBuffer.position()), byteBuffer);
    }
}
