package e6;

import java.io.OutputStream;

/* loaded from: classes2.dex */
public final class B implements J {

    /* renamed from: b, reason: collision with root package name */
    public final OutputStream f13976b;

    /* renamed from: e, reason: collision with root package name */
    public final O f13977e;

    public B(OutputStream out, O timeout) {
        kotlin.jvm.internal.j.checkNotNullParameter(out, "out");
        kotlin.jvm.internal.j.checkNotNullParameter(timeout, "timeout");
        this.f13976b = out;
        this.f13977e = timeout;
    }

    @Override // e6.J, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f13976b.close();
    }

    @Override // e6.J, java.io.Flushable
    public void flush() {
        this.f13976b.flush();
    }

    @Override // e6.J
    public O timeout() {
        return this.f13977e;
    }

    public String toString() {
        return "sink(" + this.f13976b + ')';
    }

    @Override // e6.J
    public void write(C0870l source, long j7) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        AbstractC0860b.checkOffsetAndCount(source.size(), 0L, j7);
        while (j7 > 0) {
            this.f13977e.throwIfReached();
            H h7 = source.f14019b;
            kotlin.jvm.internal.j.checkNotNull(h7);
            int min = (int) Math.min(j7, h7.f13993c - h7.f13992b);
            this.f13976b.write(h7.f13991a, h7.f13992b, min);
            h7.f13992b += min;
            long j8 = min;
            j7 -= j8;
            source.setSize$okio(source.size() - j8);
            if (h7.f13992b == h7.f13993c) {
                source.f14019b = h7.pop();
                I.recycle(h7);
            }
        }
    }
}
