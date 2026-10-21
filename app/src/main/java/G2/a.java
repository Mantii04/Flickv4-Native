package G2;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class a extends InputStream {

    /* renamed from: b, reason: collision with root package name */
    public final ByteBuffer f1022b;

    /* renamed from: e, reason: collision with root package name */
    public int f1023e = -1;

    public a(ByteBuffer byteBuffer) {
        this.f1022b = byteBuffer;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f1022b.remaining();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i2) {
        this.f1023e = this.f1022b.position();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        ByteBuffer byteBuffer = this.f1022b;
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        int i2 = this.f1023e;
        if (i2 == -1) {
            throw new IOException("Cannot reset to unset mark position");
        }
        this.f1022b.position(i2);
    }

    @Override // java.io.InputStream
    public long skip(long j7) {
        ByteBuffer byteBuffer = this.f1022b;
        if (!byteBuffer.hasRemaining()) {
            return -1L;
        }
        long min = Math.min(j7, available());
        byteBuffer.position((int) (byteBuffer.position() + min));
        return min;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i7) {
        ByteBuffer byteBuffer = this.f1022b;
        if (!byteBuffer.hasRemaining()) {
            return -1;
        }
        int min = Math.min(i7, available());
        byteBuffer.get(bArr, i2, min);
        return min;
    }
}
