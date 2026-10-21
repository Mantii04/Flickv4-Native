package com.fasterxml.jackson.core.io;

import A.i;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.fasterxml.jackson.core.base.GeneratorBase;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* loaded from: classes.dex */
public class UTF32Reader extends Reader {
    protected static final int LAST_VALID_UNICODE_CHAR = 1114111;
    protected static final char NC = 0;
    protected final boolean _bigEndian;
    protected byte[] _buffer;
    protected int _byteCount;
    protected int _charCount;
    protected final IOContext _context;
    protected InputStream _in;
    protected int _length;
    protected final boolean _managedBuffers;
    protected int _ptr;
    protected char _surrogate = 0;
    protected char[] _tmpBuf;

    public UTF32Reader(IOContext iOContext, InputStream inputStream, byte[] bArr, int i2, int i7, boolean z6) {
        this._context = iOContext;
        this._in = inputStream;
        this._buffer = bArr;
        this._ptr = i2;
        this._length = i7;
        this._bigEndian = z6;
        this._managedBuffers = inputStream != null;
    }

    private void freeBuffers() {
        byte[] bArr = this._buffer;
        if (bArr != null) {
            this._buffer = null;
            this._context.releaseReadIOBuffer(bArr);
        }
    }

    private boolean loadMore(int i2) throws IOException {
        int read;
        this._byteCount = (this._length - i2) + this._byteCount;
        if (i2 > 0) {
            int i7 = this._ptr;
            if (i7 > 0) {
                byte[] bArr = this._buffer;
                System.arraycopy(bArr, i7, bArr, 0, i2);
                this._ptr = 0;
            }
            this._length = i2;
        } else {
            this._ptr = 0;
            InputStream inputStream = this._in;
            int read2 = inputStream == null ? -1 : inputStream.read(this._buffer);
            if (read2 < 1) {
                this._length = 0;
                if (read2 < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    return false;
                }
                reportStrangeStream();
            }
            this._length = read2;
        }
        while (true) {
            int i8 = this._length;
            if (i8 >= 4) {
                return true;
            }
            InputStream inputStream2 = this._in;
            if (inputStream2 == null) {
                read = -1;
            } else {
                byte[] bArr2 = this._buffer;
                read = inputStream2.read(bArr2, i8, bArr2.length - i8);
            }
            if (read < 1) {
                if (read < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    reportUnexpectedEOF(this._length, 4);
                }
                reportStrangeStream();
            }
            this._length += read;
        }
    }

    private void reportBounds(char[] cArr, int i2, int i7) throws IOException {
        throw new ArrayIndexOutOfBoundsException(i.m(i.p(i2, i7, "read(buf,", ",", "), cbuf["), cArr.length, "]"));
    }

    private void reportInvalid(int i2, int i7, String str) throws IOException {
        int i8 = (this._byteCount + this._ptr) - 1;
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i2) + str + " at char #" + (this._charCount + i7) + ", byte #" + i8 + ")");
    }

    private void reportStrangeStream() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    private void reportUnexpectedEOF(int i2, int i7) throws IOException {
        int i8 = this._byteCount + i2;
        int i9 = this._charCount;
        StringBuilder p6 = i.p(i2, i7, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got ", ", needed ", ", at char #");
        p6.append(i9);
        p6.append(", byte #");
        p6.append(i8);
        p6.append(")");
        throw new CharConversionException(p6.toString());
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this._in;
        if (inputStream != null) {
            this._in = null;
            freeBuffers();
            inputStream.close();
        }
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this._tmpBuf == null) {
            this._tmpBuf = new char[1];
        }
        if (read(this._tmpBuf, 0, 1) < 1) {
            return -1;
        }
        return this._tmpBuf[0];
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i2, int i7) throws IOException {
        int i8;
        int i9;
        int i10;
        int i11;
        if (this._buffer == null) {
            return -1;
        }
        if (i7 < 1) {
            return i7;
        }
        if (i2 < 0 || i2 + i7 > cArr.length) {
            reportBounds(cArr, i2, i7);
        }
        int i12 = i7 + i2;
        char c7 = this._surrogate;
        if (c7 != 0) {
            i8 = i2 + 1;
            cArr[i2] = c7;
            this._surrogate = (char) 0;
        } else {
            int i13 = this._length - this._ptr;
            if (i13 < 4 && !loadMore(i13)) {
                if (i13 == 0) {
                    return -1;
                }
                reportUnexpectedEOF(this._length - this._ptr, 4);
            }
            i8 = i2;
        }
        int i14 = this._length - 4;
        while (i8 < i12) {
            int i15 = this._ptr;
            if (this._bigEndian) {
                byte[] bArr = this._buffer;
                i9 = (bArr[i15] << 8) | (bArr[i15 + 1] & 255);
                i10 = (bArr[i15 + 3] & 255) | ((bArr[i15 + 2] & 255) << 8);
            } else {
                byte[] bArr2 = this._buffer;
                int i16 = (bArr2[i15] & 255) | ((bArr2[i15 + 1] & 255) << 8);
                i9 = (bArr2[i15 + 3] << 8) | (bArr2[i15 + 2] & 255);
                i10 = i16;
            }
            this._ptr = i15 + 4;
            if (i9 != 0) {
                int i17 = 65535 & i9;
                int i18 = i10 | ((i17 - 1) << 16);
                if (i17 > 16) {
                    reportInvalid(i18, i8 - i2, String.format(" (above 0x%08x)", Integer.valueOf(LAST_VALID_UNICODE_CHAR)));
                }
                i11 = i8 + 1;
                cArr[i8] = (char) ((i18 >> 10) + GeneratorBase.SURR1_FIRST);
                int i19 = (i18 & AnalyticsListener.EVENT_DRM_KEYS_LOADED) | GeneratorBase.SURR2_FIRST;
                if (i11 >= i12) {
                    this._surrogate = (char) i18;
                    i8 = i11;
                    break;
                }
                i10 = i19;
                i8 = i11;
            }
            i11 = i8 + 1;
            cArr[i8] = (char) i10;
            if (this._ptr > i14) {
                i8 = i11;
                break;
            }
            i8 = i11;
        }
        int i20 = i8 - i2;
        this._charCount += i20;
        return i20;
    }
}
