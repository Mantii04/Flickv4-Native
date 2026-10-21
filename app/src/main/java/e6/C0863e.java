package e6;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* renamed from: e6.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0863e implements J {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0865g f14006b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ J f14007e;

    public C0863e(C0865g c0865g, J j7) {
        this.f14006b = c0865g;
        this.f14007e = j7;
    }

    @Override // e6.J, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        J j7 = this.f14007e;
        C0865g c0865g = this.f14006b;
        c0865g.enter();
        try {
            j7.close();
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

    @Override // e6.J, java.io.Flushable
    public void flush() {
        J j7 = this.f14007e;
        C0865g c0865g = this.f14006b;
        c0865g.enter();
        try {
            j7.flush();
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

    public String toString() {
        return "AsyncTimeout.sink(" + this.f14007e + ')';
    }

    @Override // e6.J
    public void write(C0870l source, long j7) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        AbstractC0860b.checkOffsetAndCount(source.size(), 0L, j7);
        while (true) {
            long j8 = 0;
            if (j7 <= 0) {
                return;
            }
            H h7 = source.f14019b;
            kotlin.jvm.internal.j.checkNotNull(h7);
            while (true) {
                if (j8 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    break;
                }
                j8 += h7.f13993c - h7.f13992b;
                if (j8 >= j7) {
                    j8 = j7;
                    break;
                } else {
                    h7 = h7.f13996f;
                    kotlin.jvm.internal.j.checkNotNull(h7);
                }
            }
            J j9 = this.f14007e;
            C0865g c0865g = this.f14006b;
            c0865g.enter();
            try {
                try {
                    j9.write(source, j8);
                    if (c0865g.exit()) {
                        throw c0865g.access$newTimeoutException(null);
                    }
                    j7 -= j8;
                } catch (IOException e3) {
                    if (!c0865g.exit()) {
                        throw e3;
                    }
                    throw c0865g.access$newTimeoutException(e3);
                }
            } catch (Throwable th) {
                c0865g.exit();
                throw th;
            }
        }
    }

    @Override // e6.J
    public C0865g timeout() {
        return this.f14006b;
    }
}
