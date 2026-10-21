package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class k extends FilterInputStream {

    /* renamed from: f, reason: collision with root package name */
    public static final byte[] f9207f = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* renamed from: j, reason: collision with root package name */
    public static final int f9208j = 31;

    /* renamed from: b, reason: collision with root package name */
    public final byte f9209b;

    /* renamed from: e, reason: collision with root package name */
    public int f9210e;

    public k(InputStream inputStream, int i2) {
        super(inputStream);
        if (i2 < -1 || i2 > 8) {
            throw new IllegalArgumentException(A.i.f(i2, "Cannot add invalid orientation: "));
        }
        this.f9209b = (byte) i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i2;
        int i7 = this.f9210e;
        int read = (i7 < 2 || i7 > (i2 = f9208j)) ? super.read() : i7 == i2 ? this.f9209b : f9207f[i7 - 2] & 255;
        if (read != -1) {
            this.f9210e++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j7) throws IOException {
        long skip = super.skip(j7);
        if (skip > 0) {
            this.f9210e = (int) (this.f9210e + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        int i8;
        int i9 = this.f9210e;
        int i10 = f9208j;
        if (i9 > i10) {
            i8 = super.read(bArr, i2, i7);
        } else if (i9 == i10) {
            bArr[i2] = this.f9209b;
            i8 = 1;
        } else if (i9 < 2) {
            i8 = super.read(bArr, i2, 2 - i9);
        } else {
            int min = Math.min(i10 - i9, i7);
            System.arraycopy(f9207f, this.f9210e - 2, bArr, i2, min);
            i8 = min;
        }
        if (i8 > 0) {
            this.f9210e += i8;
        }
        return i8;
    }
}
