package e6;

import java.io.IOException;

/* renamed from: e6.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0864f implements L {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0865g f14008b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ L f14009e;

    public C0864f(C0865g c0865g, L l7) {
        this.f14008b = c0865g;
        this.f14009e = l7;
    }

    @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        L l7 = this.f14009e;
        C0865g c0865g = this.f14008b;
        c0865g.enter();
        try {
            l7.close();
            if (c0865g.exit()) {
                throw c0865g.access$newTimeoutException(null);
            }
        } catch (IOException e3) {
            if (!c0865g.exit()) {
                throw e3;
            }
            throw c0865g.access$newTimeoutException(e3);
        } finally {
            c0865g.exit();
        }
    }

    @Override // e6.L
    public long read(C0870l sink, long j7) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        L l7 = this.f14009e;
        C0865g c0865g = this.f14008b;
        c0865g.enter();
        try {
            long read = l7.read(sink, j7);
            if (c0865g.exit()) {
                throw c0865g.access$newTimeoutException(null);
            }
            return read;
        } catch (IOException e3) {
            if (c0865g.exit()) {
                throw c0865g.access$newTimeoutException(e3);
            }
            throw e3;
        } finally {
            c0865g.exit();
        }
    }

    public String toString() {
        return "AsyncTimeout.source(" + this.f14009e + ')';
    }

    @Override // e6.L
    public C0865g timeout() {
        return this.f14008b;
    }
}
