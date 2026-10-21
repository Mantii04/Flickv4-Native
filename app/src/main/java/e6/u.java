package e6;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes2.dex */
public final class u implements L {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0872n f14030b;

    /* renamed from: e, reason: collision with root package name */
    public final Inflater f14031e;

    /* renamed from: f, reason: collision with root package name */
    public int f14032f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14033j;

    public u(InterfaceC0872n source, Inflater inflater) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        kotlin.jvm.internal.j.checkNotNullParameter(inflater, "inflater");
        this.f14030b = source;
        this.f14031e = inflater;
    }

    @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f14033j) {
            return;
        }
        this.f14031e.end();
        this.f14033j = true;
        this.f14030b.close();
    }

    @Override // e6.L
    public long read(C0870l sink, long j7) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        do {
            long readOrInflate = readOrInflate(sink, j7);
            if (readOrInflate > 0) {
                return readOrInflate;
            }
            Inflater inflater = this.f14031e;
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
        } while (!this.f14030b.exhausted());
        throw new EOFException("source exhausted prematurely");
    }

    public final long readOrInflate(C0870l sink, long j7) throws IOException {
        Inflater inflater = this.f14031e;
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        if (j7 < 0) {
            throw new IllegalArgumentException(A.i.i("byteCount < 0: ", j7).toString());
        }
        if (this.f14033j) {
            throw new IllegalStateException("closed");
        }
        if (j7 != 0) {
            try {
                H writableSegment$okio = sink.writableSegment$okio(1);
                int min = (int) Math.min(j7, 8192 - writableSegment$okio.f13993c);
                refill();
                int inflate = inflater.inflate(writableSegment$okio.f13991a, writableSegment$okio.f13993c, min);
                int i2 = this.f14032f;
                if (i2 != 0) {
                    int remaining = i2 - inflater.getRemaining();
                    this.f14032f -= remaining;
                    this.f14030b.skip(remaining);
                }
                if (inflate > 0) {
                    writableSegment$okio.f13993c += inflate;
                    long j8 = inflate;
                    sink.setSize$okio(sink.size() + j8);
                    return j8;
                }
                if (writableSegment$okio.f13992b == writableSegment$okio.f13993c) {
                    sink.f14019b = writableSegment$okio.pop();
                    I.recycle(writableSegment$okio);
                }
            } catch (DataFormatException e3) {
                throw new IOException(e3);
            }
        }
        return 0L;
    }

    public final boolean refill() throws IOException {
        Inflater inflater = this.f14031e;
        if (!inflater.needsInput()) {
            return false;
        }
        InterfaceC0872n interfaceC0872n = this.f14030b;
        if (interfaceC0872n.exhausted()) {
            return true;
        }
        H h7 = interfaceC0872n.getBuffer().f14019b;
        kotlin.jvm.internal.j.checkNotNull(h7);
        int i2 = h7.f13993c;
        int i7 = h7.f13992b;
        int i8 = i2 - i7;
        this.f14032f = i8;
        inflater.setInput(h7.f13991a, i7, i8);
        return false;
    }

    @Override // e6.L
    public O timeout() {
        return this.f14030b.timeout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u(L source, Inflater inflater) {
        this(w.buffer(source), inflater);
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        kotlin.jvm.internal.j.checkNotNullParameter(inflater, "inflater");
    }
}
