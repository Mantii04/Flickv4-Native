package m4;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: m4.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1343w extends InputStream {

    /* renamed from: b, reason: collision with root package name */
    public final InputStream f18715b;

    /* renamed from: e, reason: collision with root package name */
    public long f18716e;

    /* renamed from: f, reason: collision with root package name */
    public long f18717f;

    /* renamed from: j, reason: collision with root package name */
    public long f18718j;

    /* renamed from: m, reason: collision with root package name */
    public long f18719m = -1;

    /* renamed from: n, reason: collision with root package name */
    public boolean f18720n = true;

    /* renamed from: p, reason: collision with root package name */
    public final int f18721p;

    public C1343w(InputStream inputStream) {
        this.f18721p = -1;
        this.f18715b = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, 4096);
        this.f18721p = 1024;
    }

    public final void a(long j7) {
        try {
            long j8 = this.f18717f;
            long j9 = this.f18716e;
            InputStream inputStream = this.f18715b;
            if (j8 >= j9 || j9 > this.f18718j) {
                this.f18717f = j9;
                inputStream.mark((int) (j7 - j9));
            } else {
                inputStream.reset();
                inputStream.mark((int) (j7 - this.f18717f));
                b(this.f18717f, this.f18716e);
            }
            this.f18718j = j7;
        } catch (IOException e3) {
            throw new IllegalStateException("Unable to mark: " + e3);
        }
    }

    public void allowMarksToExpire(boolean z6) {
        this.f18720n = z6;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f18715b.available();
    }

    public final void b(long j7, long j8) {
        while (j7 < j8) {
            long skip = this.f18715b.skip(j8 - j7);
            if (skip == 0) {
                if (read() == -1) {
                    return;
                } else {
                    skip = 1;
                }
            }
            j7 += skip;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f18715b.close();
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        this.f18719m = savePosition(i2);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f18715b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.f18720n) {
            long j7 = this.f18716e + 1;
            long j8 = this.f18718j;
            if (j7 > j8) {
                a(j8 + this.f18721p);
            }
        }
        int read = this.f18715b.read();
        if (read != -1) {
            this.f18716e++;
        }
        return read;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        reset(this.f18719m);
    }

    public long savePosition(int i2) {
        long j7 = this.f18716e + i2;
        if (this.f18718j < j7) {
            a(j7);
        }
        return this.f18716e;
    }

    @Override // java.io.InputStream
    public long skip(long j7) throws IOException {
        if (!this.f18720n) {
            long j8 = this.f18716e;
            if (j8 + j7 > this.f18718j) {
                a(j8 + j7 + this.f18721p);
            }
        }
        long skip = this.f18715b.skip(j7);
        this.f18716e += skip;
        return skip;
    }

    public void reset(long j7) throws IOException {
        if (this.f18716e > this.f18718j || j7 < this.f18717f) {
            throw new IOException("Cannot reset");
        }
        this.f18715b.reset();
        b(this.f18717f, j7);
        this.f18716e = j7;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        if (!this.f18720n) {
            long j7 = this.f18716e;
            if (bArr.length + j7 > this.f18718j) {
                a(j7 + bArr.length + this.f18721p);
            }
        }
        int read = this.f18715b.read(bArr);
        if (read != -1) {
            this.f18716e += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        if (!this.f18720n) {
            long j7 = this.f18716e;
            long j8 = i7;
            if (j7 + j8 > this.f18718j) {
                a(j7 + j8 + this.f18721p);
            }
        }
        int read = this.f18715b.read(bArr, i2, i7);
        if (read != -1) {
            this.f18716e += read;
        }
        return read;
    }
}
