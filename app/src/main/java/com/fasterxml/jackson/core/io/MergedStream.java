package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class MergedStream extends InputStream {
    private byte[] _b;
    private final IOContext _ctxt;
    private final int _end;
    private final InputStream _in;
    private int _ptr;

    public MergedStream(IOContext iOContext, InputStream inputStream, byte[] bArr, int i2, int i7) {
        this._ctxt = iOContext;
        this._in = inputStream;
        this._b = bArr;
        this._ptr = i2;
        this._end = i7;
    }

    private void _free() {
        byte[] bArr = this._b;
        if (bArr != null) {
            this._b = null;
            IOContext iOContext = this._ctxt;
            if (iOContext != null) {
                iOContext.releaseReadIOBuffer(bArr);
            }
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this._b != null ? this._end - this._ptr : this._in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        _free();
        this._in.close();
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        if (this._b == null) {
            this._in.mark(i2);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this._b == null && this._in.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = this._b;
        if (bArr == null) {
            return this._in.read();
        }
        int i2 = this._ptr;
        int i7 = i2 + 1;
        this._ptr = i7;
        int i8 = bArr[i2] & 255;
        if (i7 >= this._end) {
            _free();
        }
        return i8;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        if (this._b == null) {
            this._in.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j7) throws IOException {
        long j8;
        if (this._b != null) {
            int i2 = this._end;
            int i7 = this._ptr;
            j8 = i2 - i7;
            if (j8 > j7) {
                this._ptr = i7 + ((int) j7);
                return j7;
            }
            _free();
            j7 -= j8;
        } else {
            j8 = 0;
        }
        return j7 > 0 ? this._in.skip(j7) + j8 : j8;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        byte[] bArr2 = this._b;
        if (bArr2 != null) {
            int i8 = this._end;
            int i9 = this._ptr;
            int i10 = i8 - i9;
            if (i7 > i10) {
                i7 = i10;
            }
            System.arraycopy(bArr2, i9, bArr, i2, i7);
            int i11 = this._ptr + i7;
            this._ptr = i11;
            if (i11 >= this._end) {
                _free();
            }
            return i7;
        }
        return this._in.read(bArr, i2, i7);
    }
}
