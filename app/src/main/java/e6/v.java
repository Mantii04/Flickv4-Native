package e6;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class v implements L {

    /* renamed from: b, reason: collision with root package name */
    public final InputStream f14034b;

    /* renamed from: e, reason: collision with root package name */
    public final O f14035e;

    public v(InputStream input, O timeout) {
        kotlin.jvm.internal.j.checkNotNullParameter(input, "input");
        kotlin.jvm.internal.j.checkNotNullParameter(timeout, "timeout");
        this.f14034b = input;
        this.f14035e = timeout;
    }

    @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f14034b.close();
    }

    @Override // e6.L
    public long read(C0870l sink, long j7) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        if (j7 == 0) {
            return 0L;
        }
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("byteCount < 0: ", j7).toString());
        }
        try {
            this.f14035e.throwIfReached();
            H writableSegment$okio = sink.writableSegment$okio(1);
            int read = this.f14034b.read(writableSegment$okio.f13991a, writableSegment$okio.f13993c, (int) Math.min(j7, 8192 - writableSegment$okio.f13993c));
            if (read != -1) {
                writableSegment$okio.f13993c += read;
                long j8 = read;
                sink.setSize$okio(sink.size() + j8);
                return j8;
            }
            if (writableSegment$okio.f13992b != writableSegment$okio.f13993c) {
                return -1L;
            }
            sink.f14019b = writableSegment$okio.pop();
            I.recycle(writableSegment$okio);
            return -1L;
        } catch (AssertionError e3) {
            if (w.isAndroidGetsocknameError(e3)) {
                throw new IOException(e3);
            }
            throw e3;
        }
    }

    @Override // e6.L
    public O timeout() {
        return this.f14035e;
    }

    public String toString() {
        return "source(" + this.f14034b + ')';
    }
}
