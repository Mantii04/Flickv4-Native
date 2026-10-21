package G2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class e extends FilterInputStream {

    /* renamed from: b, reason: collision with root package name */
    public final long f1029b;

    /* renamed from: e, reason: collision with root package name */
    public int f1030e;

    public e(InputStream inputStream, long j7) {
        super(inputStream);
        this.f1029b = j7;
    }

    public static InputStream obtain(InputStream inputStream, long j7) {
        return new e(inputStream, j7);
    }

    public final void a(int i2) {
        if (i2 >= 0) {
            this.f1030e += i2;
            return;
        }
        long j7 = this.f1030e;
        long j8 = this.f1029b;
        if (j8 - j7 <= 0) {
            return;
        }
        StringBuilder r6 = A.i.r(j8, "Failed to read all expected data, expected: ", ", but read: ");
        r6.append(this.f1030e);
        throw new IOException(r6.toString());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f1029b - this.f1030e, ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int read;
        read = super.read();
        a(read >= 0 ? 1 : -1);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i2, int i7) throws IOException {
        int read;
        read = super.read(bArr, i2, i7);
        a(read);
        return read;
    }
}
