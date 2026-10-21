package j2;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* renamed from: j2.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1047h implements Closeable {

    /* renamed from: b, reason: collision with root package name */
    public final InputStream f16972b;

    /* renamed from: e, reason: collision with root package name */
    public final Charset f16973e;

    /* renamed from: f, reason: collision with root package name */
    public byte[] f16974f;

    /* renamed from: j, reason: collision with root package name */
    public int f16975j;

    /* renamed from: m, reason: collision with root package name */
    public int f16976m;

    public C1047h(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f16972b) {
            try {
                if (this.f16974f != null) {
                    this.f16974f = null;
                    this.f16972b.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean hasUnterminatedLine() {
        return this.f16976m == -1;
    }

    public String readLine() throws IOException {
        int i2;
        synchronized (this.f16972b) {
            try {
                byte[] bArr = this.f16974f;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f16975j >= this.f16976m) {
                    int read = this.f16972b.read(bArr, 0, bArr.length);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f16975j = 0;
                    this.f16976m = read;
                }
                for (int i7 = this.f16975j; i7 != this.f16976m; i7++) {
                    byte[] bArr2 = this.f16974f;
                    if (bArr2[i7] == 10) {
                        int i8 = this.f16975j;
                        if (i7 != i8) {
                            i2 = i7 - 1;
                            if (bArr2[i2] == 13) {
                                String str = new String(bArr2, i8, i2 - i8, this.f16973e.name());
                                this.f16975j = i7 + 1;
                                return str;
                            }
                        }
                        i2 = i7;
                        String str2 = new String(bArr2, i8, i2 - i8, this.f16973e.name());
                        this.f16975j = i7 + 1;
                        return str2;
                    }
                }
                C1046g c1046g = new C1046g(this, (this.f16976m - this.f16975j) + 80);
                while (true) {
                    byte[] bArr3 = this.f16974f;
                    int i9 = this.f16975j;
                    c1046g.write(bArr3, i9, this.f16976m - i9);
                    this.f16976m = -1;
                    byte[] bArr4 = this.f16974f;
                    int read2 = this.f16972b.read(bArr4, 0, bArr4.length);
                    if (read2 == -1) {
                        throw new EOFException();
                    }
                    this.f16975j = 0;
                    this.f16976m = read2;
                    for (int i10 = 0; i10 != this.f16976m; i10++) {
                        byte[] bArr5 = this.f16974f;
                        if (bArr5[i10] == 10) {
                            int i11 = this.f16975j;
                            if (i10 != i11) {
                                c1046g.write(bArr5, i11, i10 - i11);
                            }
                            this.f16975j = i10 + 1;
                            return c1046g.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public C1047h(InputStream inputStream, int i2, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(AbstractC1048i.f16977a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f16972b = inputStream;
        this.f16973e = charset;
        this.f16974f = new byte[i2];
    }
}
