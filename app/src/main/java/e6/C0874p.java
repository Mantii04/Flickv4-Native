package e6;

import java.io.IOException;
import java.util.zip.Deflater;

/* renamed from: e6.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0874p implements J {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0871m f14021b;

    /* renamed from: e, reason: collision with root package name */
    public final Deflater f14022e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14023f;

    public C0874p(InterfaceC0871m sink, Deflater deflater) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        kotlin.jvm.internal.j.checkNotNullParameter(deflater, "deflater");
        this.f14021b = sink;
        this.f14022e = deflater;
    }

    public final void a(boolean z6) {
        H writableSegment$okio;
        int deflate;
        InterfaceC0871m interfaceC0871m = this.f14021b;
        C0870l buffer = interfaceC0871m.getBuffer();
        while (true) {
            writableSegment$okio = buffer.writableSegment$okio(1);
            Deflater deflater = this.f14022e;
            if (z6) {
                try {
                    byte[] bArr = writableSegment$okio.f13991a;
                    int i2 = writableSegment$okio.f13993c;
                    deflate = deflater.deflate(bArr, i2, 8192 - i2, 2);
                } catch (NullPointerException e3) {
                    throw new IOException("Deflater already closed", e3);
                }
            } else {
                byte[] bArr2 = writableSegment$okio.f13991a;
                int i7 = writableSegment$okio.f13993c;
                deflate = deflater.deflate(bArr2, i7, 8192 - i7);
            }
            if (deflate > 0) {
                writableSegment$okio.f13993c += deflate;
                buffer.setSize$okio(buffer.size() + deflate);
                interfaceC0871m.emitCompleteSegments();
            } else if (deflater.needsInput()) {
                break;
            }
        }
        if (writableSegment$okio.f13992b == writableSegment$okio.f13993c) {
            buffer.f14019b = writableSegment$okio.pop();
            I.recycle(writableSegment$okio);
        }
    }

    @Override // e6.J, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f14023f) {
            return;
        }
        try {
            finishDeflate$okio();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f14022e.end();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        try {
            this.f14021b.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f14023f = true;
        if (th != null) {
            throw th;
        }
    }

    public final void finishDeflate$okio() {
        this.f14022e.finish();
        a(false);
    }

    @Override // e6.J, java.io.Flushable
    public void flush() throws IOException {
        a(true);
        this.f14021b.flush();
    }

    @Override // e6.J
    public O timeout() {
        return this.f14021b.timeout();
    }

    public String toString() {
        return "DeflaterSink(" + this.f14021b + ')';
    }

    @Override // e6.J
    public void write(C0870l source, long j7) throws IOException {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        AbstractC0860b.checkOffsetAndCount(source.size(), 0L, j7);
        while (j7 > 0) {
            H h7 = source.f14019b;
            kotlin.jvm.internal.j.checkNotNull(h7);
            int min = (int) Math.min(j7, h7.f13993c - h7.f13992b);
            this.f14022e.setInput(h7.f13991a, h7.f13992b, min);
            a(false);
            long j8 = min;
            source.setSize$okio(source.size() - j8);
            int i2 = h7.f13992b + min;
            h7.f13992b = i2;
            if (i2 == h7.f13993c) {
                source.f14019b = h7.pop();
                I.recycle(h7);
            }
            j7 -= j8;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0874p(J sink, Deflater deflater) {
        this(w.buffer(sink), deflater);
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        kotlin.jvm.internal.j.checkNotNullParameter(deflater, "deflater");
    }
}
