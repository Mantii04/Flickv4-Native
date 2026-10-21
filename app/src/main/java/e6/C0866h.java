package e6;

/* renamed from: e6.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0866h implements J {
    @Override // e6.J
    public O timeout() {
        return O.NONE;
    }

    @Override // e6.J
    public void write(C0870l source, long j7) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        source.skip(j7);
    }

    @Override // e6.J, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // e6.J, java.io.Flushable
    public void flush() {
    }
}
