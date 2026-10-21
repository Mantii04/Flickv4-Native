package h2;

import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;

/* renamed from: h2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0971f extends FilterInputStream {

    /* renamed from: b, reason: collision with root package name */
    public final long f16502b;

    /* renamed from: e, reason: collision with root package name */
    public long f16503e;

    public C0971f(BufferedInputStream bufferedInputStream, long j7) {
        super(bufferedInputStream);
        this.f16502b = j7;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.f16503e++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        int read = super.read(bArr, i2, i7);
        if (read != -1) {
            this.f16503e += read;
        }
        return read;
    }
}
