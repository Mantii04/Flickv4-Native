package i6;

import h6.k;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class a extends BufferedInputStream {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f16751b;

    /* renamed from: e, reason: collision with root package name */
    public final int f16752e;

    /* renamed from: f, reason: collision with root package name */
    public long f16753f;

    /* renamed from: j, reason: collision with root package name */
    public long f16754j;

    /* renamed from: m, reason: collision with root package name */
    public int f16755m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f16756n;

    public a(InputStream inputStream, int i2, int i7) {
        super(inputStream, i2);
        this.f16754j = 0L;
        k.isTrue(i7 >= 0);
        this.f16752e = i7;
        this.f16755m = i7;
        this.f16751b = i7 != 0;
        this.f16753f = System.nanoTime();
    }

    public static a wrap(InputStream inputStream, int i2, int i7) {
        return inputStream instanceof a ? (a) inputStream : new a(inputStream, i2, i7);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        boolean z6;
        int i8;
        if (this.f16756n || ((z6 = this.f16751b) && this.f16755m <= 0)) {
            return -1;
        }
        if (Thread.interrupted()) {
            this.f16756n = true;
            return -1;
        }
        if (this.f16754j != 0 && System.nanoTime() - this.f16753f > this.f16754j) {
            throw new SocketTimeoutException("Read timeout");
        }
        if (z6 && i7 > (i8 = this.f16755m)) {
            i7 = i8;
        }
        try {
            int read = super.read(bArr, i2, i7);
            this.f16755m -= read;
            return read;
        } catch (SocketTimeoutException unused) {
            return 0;
        }
    }

    public ByteBuffer readToByteBuffer(int i2) throws IOException {
        k.isTrue(i2 >= 0, "maxSize must be 0 (unlimited) or larger");
        boolean z6 = i2 > 0;
        int i7 = 32768;
        if (z6 && i2 < 32768) {
            i7 = i2;
        }
        byte[] bArr = new byte[i7];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i7);
        while (true) {
            int read = read(bArr);
            if (read == -1) {
                break;
            }
            if (z6) {
                if (read >= i2) {
                    byteArrayOutputStream.write(bArr, 0, i2);
                    break;
                }
                i2 -= read;
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
        return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        this.f16755m = this.f16752e - ((BufferedInputStream) this).markpos;
    }

    public a timeout(long j7, long j8) {
        this.f16753f = j7;
        this.f16754j = j8 * 1000000;
        return this;
    }
}
