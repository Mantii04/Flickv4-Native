package cz.msebera.android.httpclient.impl.io;

import cz.msebera.android.httpclient.io.BufferInfo;
import cz.msebera.android.httpclient.io.HttpTransportMetrics;
import cz.msebera.android.httpclient.io.SessionOutputBuffer;
import cz.msebera.android.httpclient.util.Args;
import cz.msebera.android.httpclient.util.Asserts;
import cz.msebera.android.httpclient.util.ByteArrayBuffer;
import cz.msebera.android.httpclient.util.CharArrayBuffer;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;

/* loaded from: classes2.dex */
public class SessionOutputBufferImpl implements SessionOutputBuffer, BufferInfo {
    private static final byte[] CRLF = {13, 10};
    private ByteBuffer bbuf;
    private final ByteArrayBuffer buffer;
    private final CharsetEncoder encoder;
    private final int fragementSizeHint;
    private final HttpTransportMetricsImpl metrics;
    private OutputStream outStream;

    public SessionOutputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i2, int i7, CharsetEncoder charsetEncoder) {
        Args.positive(i2, "Buffer size");
        Args.notNull(httpTransportMetricsImpl, "HTTP transport metrcis");
        this.metrics = httpTransportMetricsImpl;
        this.buffer = new ByteArrayBuffer(i2);
        this.fragementSizeHint = i7 < 0 ? 0 : i7;
        this.encoder = charsetEncoder;
    }

    private void flushBuffer() throws IOException {
        int length = this.buffer.length();
        if (length > 0) {
            streamWrite(this.buffer.buffer(), 0, length);
            this.buffer.clear();
            this.metrics.incrementBytesTransferred(length);
        }
    }

    private void flushStream() throws IOException {
        OutputStream outputStream = this.outStream;
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    private void handleEncodingResult(CoderResult coderResult) throws IOException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.bbuf.flip();
        while (this.bbuf.hasRemaining()) {
            write(this.bbuf.get());
        }
        this.bbuf.compact();
    }

    private void streamWrite(byte[] bArr, int i2, int i7) throws IOException {
        Asserts.notNull(this.outStream, "Output stream");
        this.outStream.write(bArr, i2, i7);
    }

    private void writeEncoded(CharBuffer charBuffer) throws IOException {
        if (charBuffer.hasRemaining()) {
            if (this.bbuf == null) {
                this.bbuf = ByteBuffer.allocate(1024);
            }
            this.encoder.reset();
            while (charBuffer.hasRemaining()) {
                handleEncodingResult(this.encoder.encode(charBuffer, this.bbuf, true));
            }
            handleEncodingResult(this.encoder.flush(this.bbuf));
            this.bbuf.clear();
        }
    }

    @Override // cz.msebera.android.httpclient.io.BufferInfo
    public int available() {
        return capacity() - length();
    }

    public void bind(OutputStream outputStream) {
        this.outStream = outputStream;
    }

    @Override // cz.msebera.android.httpclient.io.BufferInfo
    public int capacity() {
        return this.buffer.capacity();
    }

    @Override // cz.msebera.android.httpclient.io.SessionOutputBuffer
    public void flush() throws IOException {
        flushBuffer();
        flushStream();
    }

    @Override // cz.msebera.android.httpclient.io.SessionOutputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.metrics;
    }

    public boolean isBound() {
        return this.outStream != null;
    }

    @Override // cz.msebera.android.httpclient.io.BufferInfo
    public int length() {
        return this.buffer.length();
    }

    @Override // cz.msebera.android.httpclient.io.SessionOutputBuffer
    public void write(byte[] bArr, int i2, int i7) throws IOException {
        if (bArr == null) {
            return;
        }
        if (i7 > this.fragementSizeHint || i7 > this.buffer.capacity()) {
            flushBuffer();
            streamWrite(bArr, i2, i7);
            this.metrics.incrementBytesTransferred(i7);
        } else {
            if (i7 > this.buffer.capacity() - this.buffer.length()) {
                flushBuffer();
            }
            this.buffer.append(bArr, i2, i7);
        }
    }

    @Override // cz.msebera.android.httpclient.io.SessionOutputBuffer
    public void writeLine(String str) throws IOException {
        if (str == null) {
            return;
        }
        if (str.length() > 0) {
            if (this.encoder == null) {
                for (int i2 = 0; i2 < str.length(); i2++) {
                    write(str.charAt(i2));
                }
            } else {
                writeEncoded(CharBuffer.wrap(str));
            }
        }
        write(CRLF);
    }

    public SessionOutputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i2) {
        this(httpTransportMetricsImpl, i2, i2, null);
    }

    @Override // cz.msebera.android.httpclient.io.SessionOutputBuffer
    public void write(byte[] bArr) throws IOException {
        if (bArr == null) {
            return;
        }
        write(bArr, 0, bArr.length);
    }

    @Override // cz.msebera.android.httpclient.io.SessionOutputBuffer
    public void writeLine(CharArrayBuffer charArrayBuffer) throws IOException {
        if (charArrayBuffer == null) {
            return;
        }
        int i2 = 0;
        if (this.encoder == null) {
            int length = charArrayBuffer.length();
            while (length > 0) {
                int min = Math.min(this.buffer.capacity() - this.buffer.length(), length);
                if (min > 0) {
                    this.buffer.append(charArrayBuffer, i2, min);
                }
                if (this.buffer.isFull()) {
                    flushBuffer();
                }
                i2 += min;
                length -= min;
            }
        } else {
            writeEncoded(CharBuffer.wrap(charArrayBuffer.buffer(), 0, charArrayBuffer.length()));
        }
        write(CRLF);
    }

    @Override // cz.msebera.android.httpclient.io.SessionOutputBuffer
    public void write(int i2) throws IOException {
        if (this.fragementSizeHint > 0) {
            if (this.buffer.isFull()) {
                flushBuffer();
            }
            this.buffer.append(i2);
        } else {
            flushBuffer();
            this.outStream.write(i2);
        }
    }
}
