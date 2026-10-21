package e6;

import java.io.OutputStream;

/* renamed from: e6.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0869k extends OutputStream {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0870l f14018b;

    public C0869k(C0870l c0870l) {
        this.f14018b = c0870l;
    }

    public String toString() {
        return this.f14018b + ".outputStream()";
    }

    @Override // java.io.OutputStream
    public void write(int i2) {
        this.f14018b.writeByte(i2);
    }

    @Override // java.io.OutputStream
    public void write(byte[] data, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(data, "data");
        this.f14018b.write(data, i2, i7);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }
}
