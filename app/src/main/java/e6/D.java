package e6;

import android.support.v4.media.session.PlaybackStateCompat;
import java.nio.ByteBuffer;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class D implements InterfaceC0871m {

    /* renamed from: b, reason: collision with root package name */
    public final J f13984b;

    /* renamed from: e, reason: collision with root package name */
    public final C0870l f13985e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13986f;

    public D(J sink) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        this.f13984b = sink;
        this.f13985e = new C0870l();
    }

    @Override // e6.J, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        J j7 = this.f13984b;
        C0870l c0870l = this.f13985e;
        if (this.f13986f) {
            return;
        }
        try {
            if (c0870l.size() > 0) {
                j7.write(c0870l, c0870l.size());
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            j7.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f13986f = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m emit() {
        if (this.f13986f) {
            throw new IllegalStateException("closed");
        }
        C0870l c0870l = this.f13985e;
        long size = c0870l.size();
        if (size > 0) {
            this.f13984b.write(c0870l, size);
        }
        return this;
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m emitCompleteSegments() {
        if (this.f13986f) {
            throw new IllegalStateException("closed");
        }
        C0870l c0870l = this.f13985e;
        long completeSegmentByteCount = c0870l.completeSegmentByteCount();
        if (completeSegmentByteCount > 0) {
            this.f13984b.write(c0870l, completeSegmentByteCount);
        }
        return this;
    }

    @Override // e6.InterfaceC0871m, e6.J, java.io.Flushable
    public void flush() {
        if (this.f13986f) {
            throw new IllegalStateException("closed");
        }
        C0870l c0870l = this.f13985e;
        long size = c0870l.size();
        J j7 = this.f13984b;
        if (size > 0) {
            j7.write(c0870l, c0870l.size());
        }
        j7.flush();
    }

    @Override // e6.InterfaceC0871m
    public C0870l getBuffer() {
        return this.f13985e;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f13986f;
    }

    @Override // e6.J
    public O timeout() {
        return this.f13984b.timeout();
    }

    public String toString() {
        return "buffer(" + this.f13984b + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        if (this.f13986f) {
            throw new IllegalStateException("closed");
        }
        int write = this.f13985e.write(source);
        emitCompleteSegments();
        return write;
    }

    @Override // e6.InterfaceC0871m
    public long writeAll(L source) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        long j7 = 0;
        while (true) {
            long read = source.read(this.f13985e, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read == -1) {
                return j7;
            }
            j7 += read;
            emitCompleteSegments();
        }
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m writeByte(int i2) {
        if (this.f13986f) {
            throw new IllegalStateException("closed");
        }
        this.f13985e.writeByte(i2);
        return emitCompleteSegments();
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m writeDecimalLong(long j7) {
        if (this.f13986f) {
            throw new IllegalStateException("closed");
        }
        this.f13985e.writeDecimalLong(j7);
        return emitCompleteSegments();
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m writeHexadecimalUnsignedLong(long j7) {
        if (this.f13986f) {
            throw new IllegalStateException("closed");
        }
        this.f13985e.writeHexadecimalUnsignedLong(j7);
        return emitCompleteSegments();
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m writeInt(int i2) {
        if (this.f13986f) {
            throw new IllegalStateException("closed");
        }
        this.f13985e.writeInt(i2);
        return emitCompleteSegments();
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m writeShort(int i2) {
        if (this.f13986f) {
            throw new IllegalStateException("closed");
        }
        this.f13985e.writeShort(i2);
        return emitCompleteSegments();
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m writeUtf8(String string) {
        kotlin.jvm.internal.j.checkNotNullParameter(string, "string");
        if (this.f13986f) {
            throw new IllegalStateException("closed");
        }
        this.f13985e.writeUtf8(string);
        return emitCompleteSegments();
    }

    @Override // e6.J
    public void write(C0870l source, long j7) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        if (!this.f13986f) {
            this.f13985e.write(source, j7);
            emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m writeUtf8(String string, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(string, "string");
        if (!this.f13986f) {
            this.f13985e.writeUtf8(string, i2, i7);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m write(ByteString byteString) {
        kotlin.jvm.internal.j.checkNotNullParameter(byteString, "byteString");
        if (!this.f13986f) {
            this.f13985e.write(byteString);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m write(byte[] source) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        if (!this.f13986f) {
            this.f13985e.write(source);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // e6.InterfaceC0871m
    public InterfaceC0871m write(byte[] source, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        if (!this.f13986f) {
            this.f13985e.write(source, i2, i7);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }
}
