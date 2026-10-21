package d0;

import java.nio.ByteBuffer;

/* renamed from: d0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0778c {

    /* renamed from: a, reason: collision with root package name */
    public int f13483a;

    /* renamed from: b, reason: collision with root package name */
    public ByteBuffer f13484b;

    /* renamed from: c, reason: collision with root package name */
    public int f13485c;

    /* renamed from: d, reason: collision with root package name */
    public int f13486d;

    public AbstractC0778c() {
        AbstractC0779d.getDefault();
    }

    public int __indirect(int i2) {
        return this.f13484b.getInt(i2) + i2;
    }

    public int __offset(int i2) {
        if (i2 < this.f13486d) {
            return this.f13484b.getShort(this.f13485c + i2);
        }
        return 0;
    }

    public void __reset(int i2, ByteBuffer byteBuffer) {
        this.f13484b = byteBuffer;
        if (byteBuffer == null) {
            this.f13483a = 0;
            this.f13485c = 0;
            this.f13486d = 0;
        } else {
            this.f13483a = i2;
            int i7 = i2 - byteBuffer.getInt(i2);
            this.f13485c = i7;
            this.f13486d = this.f13484b.getShort(i7);
        }
    }

    public int __vector(int i2) {
        int i7 = i2 + this.f13483a;
        return this.f13484b.getInt(i7) + i7 + 4;
    }

    public int __vector_len(int i2) {
        int i7 = i2 + this.f13483a;
        return this.f13484b.getInt(this.f13484b.getInt(i7) + i7);
    }
}
