package com.bumptech.glide.load.resource.bitmap;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import o2.C1438l;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class a extends FilterInputStream {

    /* renamed from: b, reason: collision with root package name */
    public volatile byte[] f9314b;

    /* renamed from: e, reason: collision with root package name */
    public int f9315e;

    /* renamed from: f, reason: collision with root package name */
    public int f9316f;

    /* renamed from: j, reason: collision with root package name */
    public int f9317j;

    /* renamed from: m, reason: collision with root package name */
    public int f9318m;

    /* renamed from: n, reason: collision with root package name */
    public final InterfaceC1428b f9319n;

    public a(InputStream inputStream, InterfaceC1428b interfaceC1428b) {
        super(inputStream);
        this.f9317j = -1;
        this.f9319n = interfaceC1428b;
        this.f9314b = (byte[]) ((C1438l) interfaceC1428b).get(65536, byte[].class);
    }

    public static void b() {
        throw new IOException("BufferedInputStream is closed");
    }

    public final int a(InputStream inputStream, byte[] bArr) {
        int i2 = this.f9317j;
        if (i2 != -1) {
            int i7 = this.f9318m - i2;
            int i8 = this.f9316f;
            if (i7 < i8) {
                if (i2 == 0 && i8 > bArr.length && this.f9315e == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i8) {
                        i8 = length;
                    }
                    byte[] bArr2 = (byte[]) ((C1438l) this.f9319n).get(i8, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f9314b = bArr2;
                    ((C1438l) this.f9319n).put(bArr);
                    bArr = bArr2;
                } else if (i2 > 0) {
                    System.arraycopy(bArr, i2, bArr, 0, bArr.length - i2);
                }
                int i9 = this.f9318m - this.f9317j;
                this.f9318m = i9;
                this.f9317j = 0;
                this.f9315e = 0;
                int read = inputStream.read(bArr, i9, bArr.length - i9);
                int i10 = this.f9318m;
                if (read > 0) {
                    i10 += read;
                }
                this.f9315e = i10;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f9317j = -1;
            this.f9318m = 0;
            this.f9315e = read2;
        }
        return read2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f9314b == null || inputStream == null) {
            b();
            throw null;
        }
        return (this.f9315e - this.f9318m) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f9314b != null) {
            ((C1438l) this.f9319n).put(this.f9314b);
            this.f9314b = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public synchronized void fixMarkLimit() {
        this.f9316f = this.f9314b.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i2) {
        this.f9316f = Math.max(this.f9316f, i2);
        this.f9317j = this.f9318m;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.f9314b;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            b();
            throw null;
        }
        if (this.f9318m >= this.f9315e && a(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.f9314b && (bArr = this.f9314b) == null) {
            b();
            throw null;
        }
        int i2 = this.f9315e;
        int i7 = this.f9318m;
        if (i2 - i7 <= 0) {
            return -1;
        }
        this.f9318m = i7 + 1;
        return bArr[i7] & 255;
    }

    public synchronized void release() {
        if (this.f9314b != null) {
            ((C1438l) this.f9319n).put(this.f9314b);
            this.f9314b = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f9314b == null) {
            throw new IOException("Stream is closed");
        }
        int i2 = this.f9317j;
        if (-1 == i2) {
            throw new RecyclableBufferedInputStream$InvalidMarkException("Mark has been invalidated, pos: " + this.f9318m + " markLimit: " + this.f9316f);
        }
        this.f9318m = i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j7) throws IOException {
        if (j7 < 1) {
            return 0L;
        }
        byte[] bArr = this.f9314b;
        if (bArr == null) {
            b();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            b();
            throw null;
        }
        int i2 = this.f9315e;
        int i7 = this.f9318m;
        if (i2 - i7 >= j7) {
            this.f9318m = (int) (i7 + j7);
            return j7;
        }
        long j8 = i2 - i7;
        this.f9318m = i2;
        if (this.f9317j == -1 || j7 > this.f9316f) {
            long skip = inputStream.skip(j7 - j8);
            if (skip > 0) {
                this.f9317j = -1;
            }
            return j8 + skip;
        }
        if (a(inputStream, bArr) == -1) {
            return j8;
        }
        int i8 = this.f9315e;
        int i9 = this.f9318m;
        if (i8 - i9 >= j7 - j8) {
            this.f9318m = (int) ((i9 + j7) - j8);
            return j7;
        }
        long j9 = (j8 + i8) - i9;
        this.f9318m = i8;
        return j9;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i2, int i7) throws IOException {
        int i8;
        int i9;
        byte[] bArr2 = this.f9314b;
        if (bArr2 == null) {
            b();
            throw null;
        }
        if (i7 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i10 = this.f9318m;
            int i11 = this.f9315e;
            if (i10 < i11) {
                int i12 = i11 - i10;
                if (i12 >= i7) {
                    i12 = i7;
                }
                System.arraycopy(bArr2, i10, bArr, i2, i12);
                this.f9318m += i12;
                if (i12 == i7 || inputStream.available() == 0) {
                    return i12;
                }
                i2 += i12;
                i8 = i7 - i12;
            } else {
                i8 = i7;
            }
            while (true) {
                if (this.f9317j == -1 && i8 >= bArr2.length) {
                    i9 = inputStream.read(bArr, i2, i8);
                    if (i9 == -1) {
                        return i8 != i7 ? i7 - i8 : -1;
                    }
                } else {
                    if (a(inputStream, bArr2) == -1) {
                        return i8 != i7 ? i7 - i8 : -1;
                    }
                    if (bArr2 != this.f9314b && (bArr2 = this.f9314b) == null) {
                        b();
                        throw null;
                    }
                    int i13 = this.f9315e;
                    int i14 = this.f9318m;
                    i9 = i13 - i14;
                    if (i9 >= i8) {
                        i9 = i8;
                    }
                    System.arraycopy(bArr2, i14, bArr, i2, i9);
                    this.f9318m += i9;
                }
                i8 -= i9;
                if (i8 == 0) {
                    return i7;
                }
                if (inputStream.available() == 0) {
                    return i7 - i8;
                }
                i2 += i9;
            }
        } else {
            b();
            throw null;
        }
    }
}
