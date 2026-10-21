package cz.msebera.android.httpclient.impl.io;

import cz.msebera.android.httpclient.MessageConstraintException;
import cz.msebera.android.httpclient.config.MessageConstraints;
import cz.msebera.android.httpclient.io.BufferInfo;
import cz.msebera.android.httpclient.io.HttpTransportMetrics;
import cz.msebera.android.httpclient.io.SessionInputBuffer;
import cz.msebera.android.httpclient.util.Args;
import cz.msebera.android.httpclient.util.Asserts;
import cz.msebera.android.httpclient.util.ByteArrayBuffer;
import cz.msebera.android.httpclient.util.CharArrayBuffer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

/* loaded from: classes2.dex */
public class SessionInputBufferImpl implements SessionInputBuffer, BufferInfo {
    private final byte[] buffer;
    private int bufferLen;
    private int bufferPos;
    private CharBuffer cbuf;
    private final MessageConstraints constraints;
    private final CharsetDecoder decoder;
    private InputStream inStream;
    private final ByteArrayBuffer lineBuffer;
    private final HttpTransportMetricsImpl metrics;
    private final int minChunkLimit;

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i2, int i7, MessageConstraints messageConstraints, CharsetDecoder charsetDecoder) {
        Args.notNull(httpTransportMetricsImpl, "HTTP transport metrcis");
        Args.positive(i2, "Buffer size");
        this.metrics = httpTransportMetricsImpl;
        this.buffer = new byte[i2];
        this.bufferPos = 0;
        this.bufferLen = 0;
        this.minChunkLimit = i7 < 0 ? 512 : i7;
        this.constraints = messageConstraints == null ? MessageConstraints.DEFAULT : messageConstraints;
        this.lineBuffer = new ByteArrayBuffer(i2);
        this.decoder = charsetDecoder;
    }

    private int appendDecoded(CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        int i2 = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0;
        }
        if (this.cbuf == null) {
            this.cbuf = CharBuffer.allocate(1024);
        }
        this.decoder.reset();
        while (byteBuffer.hasRemaining()) {
            i2 += handleDecodingResult(this.decoder.decode(byteBuffer, this.cbuf, true), charArrayBuffer, byteBuffer);
        }
        int handleDecodingResult = i2 + handleDecodingResult(this.decoder.flush(this.cbuf), charArrayBuffer, byteBuffer);
        this.cbuf.clear();
        return handleDecodingResult;
    }

    private int handleDecodingResult(CoderResult coderResult, CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) throws IOException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.cbuf.flip();
        int remaining = this.cbuf.remaining();
        while (this.cbuf.hasRemaining()) {
            charArrayBuffer.append(this.cbuf.get());
        }
        this.cbuf.compact();
        return remaining;
    }

    private int lineFromLineBuffer(CharArrayBuffer charArrayBuffer) throws IOException {
        int length = this.lineBuffer.length();
        if (length > 0) {
            if (this.lineBuffer.byteAt(length - 1) == 10) {
                length--;
            }
            if (length > 0 && this.lineBuffer.byteAt(length - 1) == 13) {
                length--;
            }
        }
        if (this.decoder == null) {
            charArrayBuffer.append(this.lineBuffer, 0, length);
        } else {
            length = appendDecoded(charArrayBuffer, ByteBuffer.wrap(this.lineBuffer.buffer(), 0, length));
        }
        this.lineBuffer.clear();
        return length;
    }

    private int lineFromReadBuffer(CharArrayBuffer charArrayBuffer, int i2) throws IOException {
        int i7 = this.bufferPos;
        this.bufferPos = i2 + 1;
        if (i2 > i7 && this.buffer[i2 - 1] == 13) {
            i2--;
        }
        int i8 = i2 - i7;
        if (this.decoder != null) {
            return appendDecoded(charArrayBuffer, ByteBuffer.wrap(this.buffer, i7, i8));
        }
        charArrayBuffer.append(this.buffer, i7, i8);
        return i8;
    }

    private int streamRead(byte[] bArr, int i2, int i7) throws IOException {
        Asserts.notNull(this.inStream, "Input stream");
        return this.inStream.read(bArr, i2, i7);
    }

    @Override // cz.msebera.android.httpclient.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    public void bind(InputStream inputStream) {
        this.inStream = inputStream;
    }

    @Override // cz.msebera.android.httpclient.io.BufferInfo
    public int capacity() {
        return this.buffer.length;
    }

    public void clear() {
        this.bufferPos = 0;
        this.bufferLen = 0;
    }

    public int fillBuffer() throws IOException {
        int i2 = this.bufferPos;
        if (i2 > 0) {
            int i7 = this.bufferLen - i2;
            if (i7 > 0) {
                byte[] bArr = this.buffer;
                System.arraycopy(bArr, i2, bArr, 0, i7);
            }
            this.bufferPos = 0;
            this.bufferLen = i7;
        }
        int i8 = this.bufferLen;
        byte[] bArr2 = this.buffer;
        int streamRead = streamRead(bArr2, i8, bArr2.length - i8);
        if (streamRead == -1) {
            return -1;
        }
        this.bufferLen = i8 + streamRead;
        this.metrics.incrementBytesTransferred(streamRead);
        return streamRead;
    }

    @Override // cz.msebera.android.httpclient.io.SessionInputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.metrics;
    }

    public boolean hasBufferedData() {
        return this.bufferPos < this.bufferLen;
    }

    public boolean isBound() {
        return this.inStream != null;
    }

    @Override // cz.msebera.android.httpclient.io.SessionInputBuffer
    public boolean isDataAvailable(int i2) throws IOException {
        return hasBufferedData();
    }

    @Override // cz.msebera.android.httpclient.io.BufferInfo
    public int length() {
        return this.bufferLen - this.bufferPos;
    }

    @Override // cz.msebera.android.httpclient.io.SessionInputBuffer
    public int read() throws IOException {
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        byte[] bArr = this.buffer;
        int i2 = this.bufferPos;
        this.bufferPos = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // cz.msebera.android.httpclient.io.SessionInputBuffer
    public int readLine(CharArrayBuffer charArrayBuffer) throws IOException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        int maxLineLength = this.constraints.getMaxLineLength();
        boolean z6 = true;
        int i2 = 0;
        while (z6) {
            int i7 = this.bufferPos;
            while (true) {
                if (i7 >= this.bufferLen) {
                    i7 = -1;
                    break;
                }
                if (this.buffer[i7] == 10) {
                    break;
                }
                i7++;
            }
            if (maxLineLength > 0) {
                if ((this.lineBuffer.length() + (i7 >= 0 ? i7 : this.bufferLen)) - this.bufferPos >= maxLineLength) {
                    throw new MessageConstraintException("Maximum line length limit exceeded");
                }
            }
            if (i7 == -1) {
                if (hasBufferedData()) {
                    int i8 = this.bufferLen;
                    int i9 = this.bufferPos;
                    this.lineBuffer.append(this.buffer, i9, i8 - i9);
                    this.bufferPos = this.bufferLen;
                }
                i2 = fillBuffer();
                if (i2 == -1) {
                }
            } else {
                if (this.lineBuffer.isEmpty()) {
                    return lineFromReadBuffer(charArrayBuffer, i7);
                }
                int i10 = i7 + 1;
                int i11 = this.bufferPos;
                this.lineBuffer.append(this.buffer, i11, i10 - i11);
                this.bufferPos = i10;
            }
            z6 = false;
        }
        if (i2 == -1 && this.lineBuffer.isEmpty()) {
            return -1;
        }
        return lineFromLineBuffer(charArrayBuffer);
    }

    @Override // cz.msebera.android.httpclient.io.SessionInputBuffer
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        if (bArr == null) {
            return 0;
        }
        if (hasBufferedData()) {
            int min = Math.min(i7, this.bufferLen - this.bufferPos);
            System.arraycopy(this.buffer, this.bufferPos, bArr, i2, min);
            this.bufferPos += min;
            return min;
        }
        if (i7 > this.minChunkLimit) {
            int streamRead = streamRead(bArr, i2, i7);
            if (streamRead > 0) {
                this.metrics.incrementBytesTransferred(streamRead);
            }
            return streamRead;
        }
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        int min2 = Math.min(i7, this.bufferLen - this.bufferPos);
        System.arraycopy(this.buffer, this.bufferPos, bArr, i2, min2);
        this.bufferPos += min2;
        return min2;
    }

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i2) {
        this(httpTransportMetricsImpl, i2, i2, null, null);
    }

    @Override // cz.msebera.android.httpclient.io.SessionInputBuffer
    public int read(byte[] bArr) throws IOException {
        if (bArr == null) {
            return 0;
        }
        return read(bArr, 0, bArr.length);
    }

    @Override // cz.msebera.android.httpclient.io.SessionInputBuffer
    public String readLine() throws IOException {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        if (readLine(charArrayBuffer) != -1) {
            return charArrayBuffer.toString();
        }
        return null;
    }
}
