package d0;

import java.nio.ByteBuffer;

/* renamed from: d0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0776a extends AbstractC0778c {
    public C0776a __assign(int i2, ByteBuffer byteBuffer) {
        __init(i2, byteBuffer);
        return this;
    }

    public void __init(int i2, ByteBuffer byteBuffer) {
        __reset(i2, byteBuffer);
    }

    public int codepoints(int i2) {
        int __offset = __offset(16);
        if (__offset == 0) {
            return 0;
        }
        return this.f13484b.getInt((i2 * 4) + __vector(__offset));
    }

    public int codepointsLength() {
        int __offset = __offset(16);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public boolean emojiStyle() {
        int __offset = __offset(6);
        return (__offset == 0 || this.f13484b.get(__offset + this.f13483a) == 0) ? false : true;
    }

    public short height() {
        int __offset = __offset(14);
        if (__offset != 0) {
            return this.f13484b.getShort(__offset + this.f13483a);
        }
        return (short) 0;
    }

    public int id() {
        int __offset = __offset(4);
        if (__offset != 0) {
            return this.f13484b.getInt(__offset + this.f13483a);
        }
        return 0;
    }

    public short sdkAdded() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return this.f13484b.getShort(__offset + this.f13483a);
        }
        return (short) 0;
    }

    public short width() {
        int __offset = __offset(12);
        if (__offset != 0) {
            return this.f13484b.getShort(__offset + this.f13483a);
        }
        return (short) 0;
    }
}
