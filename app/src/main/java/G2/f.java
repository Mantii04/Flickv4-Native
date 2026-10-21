package G2;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* loaded from: classes.dex */
public final class f extends InputStream {

    /* renamed from: f, reason: collision with root package name */
    public static final Queue f1031f = t.createQueue(0);

    /* renamed from: b, reason: collision with root package name */
    public InputStream f1032b;

    /* renamed from: e, reason: collision with root package name */
    public IOException f1033e;

    public static f obtain(InputStream inputStream) {
        f fVar;
        Queue queue = f1031f;
        synchronized (queue) {
            fVar = (f) queue.poll();
        }
        if (fVar == null) {
            fVar = new f();
        }
        fVar.f1032b = inputStream;
        return fVar;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f1032b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f1032b.close();
    }

    public IOException getException() {
        return this.f1033e;
    }

    @Override // java.io.InputStream
    public void mark(int i2) {
        this.f1032b.mark(i2);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f1032b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            return this.f1032b.read();
        } catch (IOException e3) {
            this.f1033e = e3;
            throw e3;
        }
    }

    public void release() {
        this.f1033e = null;
        this.f1032b = null;
        Queue queue = f1031f;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f1032b.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j7) throws IOException {
        try {
            return this.f1032b.skip(j7);
        } catch (IOException e3) {
            this.f1033e = e3;
            throw e3;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            return this.f1032b.read(bArr);
        } catch (IOException e3) {
            this.f1033e = e3;
            throw e3;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i2, int i7) throws IOException {
        try {
            return this.f1032b.read(bArr, i2, i7);
        } catch (IOException e3) {
            this.f1033e = e3;
            throw e3;
        }
    }
}
