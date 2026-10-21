package h2;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class s extends ByteArrayOutputStream {

    /* renamed from: b, reason: collision with root package name */
    public final C0969d f16517b;

    public s(C0969d c0969d, int i2) {
        this.f16517b = c0969d;
        ((ByteArrayOutputStream) this).buf = c0969d.getBuf(Math.max(i2, 256));
    }

    public final void a(int i2) {
        int i7 = ((ByteArrayOutputStream) this).count;
        if (i7 + i2 <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        int i8 = (i7 + i2) * 2;
        C0969d c0969d = this.f16517b;
        byte[] buf = c0969d.getBuf(i8);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, buf, 0, ((ByteArrayOutputStream) this).count);
        c0969d.returnBuf(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = buf;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f16517b.returnBuf(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public void finalize() {
        this.f16517b.returnBuf(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i2, int i7) {
        a(i7);
        super.write(bArr, i2, i7);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int i2) {
        a(1);
        super.write(i2);
    }
}
