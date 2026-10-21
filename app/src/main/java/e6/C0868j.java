package e6;

import androidx.media3.common.util.Log;
import java.io.InputStream;

/* renamed from: e6.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0868j extends InputStream {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0870l f14017b;

    public C0868j(C0870l c0870l) {
        this.f14017b = c0870l;
    }

    @Override // java.io.InputStream
    public int available() {
        return (int) Math.min(this.f14017b.size(), Log.LOG_LEVEL_OFF);
    }

    @Override // java.io.InputStream
    public int read() {
        C0870l c0870l = this.f14017b;
        if (c0870l.size() > 0) {
            return c0870l.readByte() & 255;
        }
        return -1;
    }

    public String toString() {
        return this.f14017b + ".inputStream()";
    }

    @Override // java.io.InputStream
    public int read(byte[] sink, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        return this.f14017b.read(sink, i2, i7);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
