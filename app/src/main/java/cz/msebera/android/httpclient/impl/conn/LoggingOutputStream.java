package cz.msebera.android.httpclient.impl.conn;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
class LoggingOutputStream extends OutputStream {
    private final OutputStream out;
    private final Wire wire;

    public LoggingOutputStream(OutputStream outputStream, Wire wire) {
        this.out = outputStream;
        this.wire = wire;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.out.close();
        } catch (IOException e3) {
            this.wire.output("[close] I/O error: " + e3.getMessage());
            throw e3;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.out.flush();
        } catch (IOException e3) {
            this.wire.output("[flush] I/O error: " + e3.getMessage());
            throw e3;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i2) throws IOException {
        try {
            this.wire.output(i2);
        } catch (IOException e3) {
            this.wire.output("[write] I/O error: " + e3.getMessage());
            throw e3;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.wire.output(bArr);
            this.out.write(bArr);
        } catch (IOException e3) {
            this.wire.output("[write] I/O error: " + e3.getMessage());
            throw e3;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i2, int i7) throws IOException {
        try {
            this.wire.output(bArr, i2, i7);
            this.out.write(bArr, i2, i7);
        } catch (IOException e3) {
            this.wire.output("[write] I/O error: " + e3.getMessage());
            throw e3;
        }
    }
}
