package cz.msebera.android.httpclient.impl.conn;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
class LoggingInputStream extends InputStream {
    private final InputStream in;
    private final Wire wire;

    public LoggingInputStream(InputStream inputStream, Wire wire) {
        this.in = inputStream;
        this.wire = wire;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return this.in.available();
        } catch (IOException e3) {
            this.wire.input("[available] I/O error : " + e3.getMessage());
            throw e3;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.in.close();
        } catch (IOException e3) {
            this.wire.input("[close] I/O error: " + e3.getMessage());
            throw e3;
        }
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        super.mark(i2);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int read = this.in.read();
            if (read == -1) {
                this.wire.input("end of stream");
                return read;
            }
            this.wire.input(read);
            return read;
        } catch (IOException e3) {
            this.wire.input("[read] I/O error: " + e3.getMessage());
            throw e3;
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        super.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j7) throws IOException {
        try {
            return super.skip(j7);
        } catch (IOException e3) {
            this.wire.input("[skip] I/O error: " + e3.getMessage());
            throw e3;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            int read = this.in.read(bArr);
            if (read == -1) {
                this.wire.input("end of stream");
                return read;
            }
            if (read > 0) {
                this.wire.input(bArr, 0, read);
            }
            return read;
        } catch (IOException e3) {
            this.wire.input("[read] I/O error: " + e3.getMessage());
            throw e3;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        try {
            int read = this.in.read(bArr, i2, i7);
            if (read == -1) {
                this.wire.input("end of stream");
                return read;
            }
            if (read > 0) {
                this.wire.input(bArr, i2, read);
            }
            return read;
        } catch (IOException e3) {
            this.wire.input("[read] I/O error: " + e3.getMessage());
            throw e3;
        }
    }
}
