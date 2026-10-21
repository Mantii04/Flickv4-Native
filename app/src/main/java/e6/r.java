package e6;

import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class r implements L {
    private final L delegate;

    public r(L delegate) {
        kotlin.jvm.internal.j.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    /* renamed from: -deprecated_delegate, reason: not valid java name */
    public final L m90deprecated_delegate() {
        return this.delegate;
    }

    @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final L delegate() {
        return this.delegate;
    }

    @Override // e6.L
    public long read(C0870l sink, long j7) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        return this.delegate.read(sink, j7);
    }

    @Override // e6.L
    public O timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
