package e6;

import java.io.IOException;

/* renamed from: e6.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0875q implements J {
    private final J delegate;

    public AbstractC0875q(J delegate) {
        kotlin.jvm.internal.j.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    /* renamed from: -deprecated_delegate, reason: not valid java name */
    public final J m89deprecated_delegate() {
        return this.delegate;
    }

    @Override // e6.J, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final J delegate() {
        return this.delegate;
    }

    @Override // e6.J, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // e6.J
    public O timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // e6.J
    public void write(C0870l source, long j7) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        this.delegate.write(source, j7);
    }
}
