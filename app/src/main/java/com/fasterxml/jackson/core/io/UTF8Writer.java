package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* loaded from: classes.dex */
public final class UTF8Writer extends Writer {
    static final int SURR1_FIRST = 55296;
    static final int SURR1_LAST = 56319;
    static final int SURR2_FIRST = 56320;
    static final int SURR2_LAST = 57343;
    private final IOContext _context;
    private OutputStream _out;
    private byte[] _outBuffer;
    private final int _outBufferEnd;
    private int _outPtr = 0;
    private int _surrogate;

    public UTF8Writer(IOContext iOContext, OutputStream outputStream) {
        this._context = iOContext;
        this._out = outputStream;
        this._outBuffer = iOContext.allocWriteEncodingBuffer();
        this._outBufferEnd = r1.length - 4;
    }

    public static void illegalSurrogate(int i2) throws IOException {
        throw new IOException(illegalSurrogateDesc(i2));
    }

    public static String illegalSurrogateDesc(int i2) {
        if (i2 > 1114111) {
            return "Illegal character point (0x" + Integer.toHexString(i2) + ") to output; max is 0x10FFFF as per RFC 4627";
        }
        if (i2 < 55296) {
            return "Illegal character point (0x" + Integer.toHexString(i2) + ") to output";
        }
        if (i2 <= 56319) {
            return "Unmatched first part of surrogate pair (0x" + Integer.toHexString(i2) + ")";
        }
        return "Unmatched second part of surrogate pair (0x" + Integer.toHexString(i2) + ")";
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this._out;
        if (outputStream != null) {
            int i2 = this._outPtr;
            if (i2 > 0) {
                outputStream.write(this._outBuffer, 0, i2);
                this._outPtr = 0;
            }
            OutputStream outputStream2 = this._out;
            this._out = null;
            byte[] bArr = this._outBuffer;
            if (bArr != null) {
                this._outBuffer = null;
                this._context.releaseWriteEncodingBuffer(bArr);
            }
            outputStream2.close();
            int i7 = this._surrogate;
            this._surrogate = 0;
            if (i7 > 0) {
                illegalSurrogate(i7);
            }
        }
    }

    public int convertSurrogate(int i2) throws IOException {
        int i7 = this._surrogate;
        this._surrogate = 0;
        if (i2 >= 56320 && i2 <= 57343) {
            return (i2 - 56320) + ((i7 - 55296) << 10) + 65536;
        }
        throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i7) + ", second 0x" + Integer.toHexString(i2) + "; illegal combination");
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this._out;
        if (outputStream != null) {
            int i2 = this._outPtr;
            if (i2 > 0) {
                outputStream.write(this._outBuffer, 0, i2);
                this._outPtr = 0;
            }
            this._out.flush();
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c7) throws IOException {
        write(c7);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0025, code lost:
    
        continue;
     */
    @Override // java.io.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(char[] r9, int r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.UTF8Writer.write(char[], int, int):void");
    }

    @Override // java.io.Writer
    public void write(int i2) throws IOException {
        int i7;
        if (this._surrogate > 0) {
            i2 = convertSurrogate(i2);
        } else if (i2 >= 55296 && i2 <= 57343) {
            if (i2 > 56319) {
                illegalSurrogate(i2);
            }
            this._surrogate = i2;
            return;
        }
        int i8 = this._outPtr;
        if (i8 >= this._outBufferEnd) {
            this._out.write(this._outBuffer, 0, i8);
            this._outPtr = 0;
        }
        if (i2 < 128) {
            byte[] bArr = this._outBuffer;
            int i9 = this._outPtr;
            this._outPtr = i9 + 1;
            bArr[i9] = (byte) i2;
            return;
        }
        int i10 = this._outPtr;
        if (i2 < 2048) {
            byte[] bArr2 = this._outBuffer;
            int i11 = i10 + 1;
            bArr2[i10] = (byte) ((i2 >> 6) | 192);
            i7 = i10 + 2;
            bArr2[i11] = (byte) ((i2 & 63) | 128);
        } else if (i2 <= 65535) {
            byte[] bArr3 = this._outBuffer;
            bArr3[i10] = (byte) ((i2 >> 12) | 224);
            int i12 = i10 + 2;
            bArr3[i10 + 1] = (byte) (((i2 >> 6) & 63) | 128);
            i7 = i10 + 3;
            bArr3[i12] = (byte) ((i2 & 63) | 128);
        } else {
            if (i2 > 1114111) {
                illegalSurrogate(i2);
            }
            byte[] bArr4 = this._outBuffer;
            bArr4[i10] = (byte) ((i2 >> 18) | 240);
            bArr4[i10 + 1] = (byte) (((i2 >> 12) & 63) | 128);
            int i13 = i10 + 3;
            bArr4[i10 + 2] = (byte) (((i2 >> 6) & 63) | 128);
            i7 = i10 + 4;
            bArr4[i13] = (byte) ((i2 & 63) | 128);
        }
        this._outPtr = i7;
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        write(str, 0, str.length());
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0029, code lost:
    
        continue;
     */
    @Override // java.io.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(java.lang.String r9, int r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.UTF8Writer.write(java.lang.String, int, int):void");
    }
}
