package Y;

import java.io.FileOutputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class n extends OutputStream {

    /* renamed from: b, reason: collision with root package name */
    public final FileOutputStream f4262b;

    public n(FileOutputStream fileOutputStream) {
        kotlin.jvm.internal.j.checkNotNullParameter(fileOutputStream, "fileOutputStream");
        this.f4262b = fileOutputStream;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this.f4262b.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i2) {
        this.f4262b.write(i2);
    }

    @Override // java.io.OutputStream
    public void write(byte[] b7) {
        kotlin.jvm.internal.j.checkNotNullParameter(b7, "b");
        this.f4262b.write(b7);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bytes, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(bytes, "bytes");
        this.f4262b.write(bytes, i2, i7);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
