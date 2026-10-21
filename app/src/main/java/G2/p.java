package G2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class p extends FilterInputStream {

    /* renamed from: b, reason: collision with root package name */
    public int f1044b;

    public p(InputStream inputStream) {
        super(inputStream);
        this.f1044b = Integer.MIN_VALUE;
    }

    public final long a(long j7) {
        int i2 = this.f1044b;
        if (i2 == 0) {
            return -1L;
        }
        return (i2 == Integer.MIN_VALUE || j7 <= ((long) i2)) ? j7 : i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i2 = this.f1044b;
        return i2 == Integer.MIN_VALUE ? super.available() : Math.min(i2, super.available());
    }

    public final void b(long j7) {
        int i2 = this.f1044b;
        if (i2 == Integer.MIN_VALUE || j7 == -1) {
            return;
        }
        this.f1044b = (int) (i2 - j7);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i2) {
        super.mark(i2);
        this.f1044b = i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        b(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.f1044b = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j7) throws IOException {
        long a7 = a(j7);
        if (a7 == -1) {
            return 0L;
        }
        long skip = super.skip(a7);
        b(skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        int a7 = (int) a(i7);
        if (a7 == -1) {
            return -1;
        }
        int read = super.read(bArr, i2, a7);
        b(read);
        return read;
    }
}
