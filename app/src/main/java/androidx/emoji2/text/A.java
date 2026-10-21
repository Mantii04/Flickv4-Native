package androidx.emoji2.text;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class A {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f5969a;

    public A(ByteBuffer byteBuffer) {
        this.f5969a = byteBuffer;
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
    }

    public long getPosition() {
        return this.f5969a.position();
    }

    public int readTag() throws IOException {
        return this.f5969a.getInt();
    }

    public long readUnsignedInt() throws IOException {
        return this.f5969a.getInt() & 4294967295L;
    }

    public int readUnsignedShort() throws IOException {
        return this.f5969a.getShort() & 65535;
    }

    public void skip(int i2) throws IOException {
        ByteBuffer byteBuffer = this.f5969a;
        byteBuffer.position(byteBuffer.position() + i2);
    }
}
