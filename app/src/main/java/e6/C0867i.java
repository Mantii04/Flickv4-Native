package e6;

import java.io.Closeable;

/* renamed from: e6.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0867i implements Closeable {

    /* renamed from: b, reason: collision with root package name */
    public C0870l f14010b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14011e;

    /* renamed from: f, reason: collision with root package name */
    public H f14012f;

    /* renamed from: m, reason: collision with root package name */
    public byte[] f14014m;

    /* renamed from: j, reason: collision with root package name */
    public long f14013j = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f14015n = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f14016p = -1;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f14010b == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        this.f14010b = null;
        setSegment$okio(null);
        this.f14013j = -1L;
        this.f14014m = null;
        this.f14015n = -1;
        this.f14016p = -1;
    }

    public final H getSegment$okio() {
        return this.f14012f;
    }

    public final int next() {
        long j7 = this.f14013j;
        C0870l c0870l = this.f14010b;
        kotlin.jvm.internal.j.checkNotNull(c0870l);
        if (j7 == c0870l.size()) {
            throw new IllegalStateException("no more bytes");
        }
        long j8 = this.f14013j;
        return seek(j8 == -1 ? 0L : j8 + (this.f14016p - this.f14015n));
    }

    public final long resizeBuffer(long j7) {
        C0870l c0870l = this.f14010b;
        if (c0870l == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (!this.f14011e) {
            throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
        }
        long size = c0870l.size();
        if (j7 <= size) {
            if (j7 < 0) {
                throw new IllegalArgumentException(A.i.i("newSize < 0: ", j7).toString());
            }
            long j8 = size - j7;
            while (true) {
                if (j8 <= 0) {
                    break;
                }
                H h7 = c0870l.f14019b;
                kotlin.jvm.internal.j.checkNotNull(h7);
                H h8 = h7.f13997g;
                kotlin.jvm.internal.j.checkNotNull(h8);
                int i2 = h8.f13993c;
                long j9 = i2 - h8.f13992b;
                if (j9 > j8) {
                    h8.f13993c = i2 - ((int) j8);
                    break;
                }
                c0870l.f14019b = h8.pop();
                I.recycle(h8);
                j8 -= j9;
            }
            setSegment$okio(null);
            this.f14013j = j7;
            this.f14014m = null;
            this.f14015n = -1;
            this.f14016p = -1;
        } else if (j7 > size) {
            long j10 = j7 - size;
            boolean z6 = true;
            while (j10 > 0) {
                H writableSegment$okio = c0870l.writableSegment$okio(1);
                int min = (int) Math.min(j10, 8192 - writableSegment$okio.f13993c);
                writableSegment$okio.f13993c += min;
                j10 -= min;
                if (z6) {
                    setSegment$okio(writableSegment$okio);
                    this.f14013j = size;
                    this.f14014m = writableSegment$okio.f13991a;
                    int i7 = writableSegment$okio.f13993c;
                    this.f14015n = i7 - min;
                    this.f14016p = i7;
                    z6 = false;
                }
            }
        }
        c0870l.setSize$okio(j7);
        return size;
    }

    public final int seek(long j7) {
        H h7;
        C0870l c0870l = this.f14010b;
        if (c0870l == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (j7 < -1 || j7 > c0870l.size()) {
            StringBuilder r6 = A.i.r(j7, "offset=", " > size=");
            r6.append(c0870l.size());
            throw new ArrayIndexOutOfBoundsException(r6.toString());
        }
        if (j7 == -1 || j7 == c0870l.size()) {
            setSegment$okio(null);
            this.f14013j = j7;
            this.f14014m = null;
            this.f14015n = -1;
            this.f14016p = -1;
            return -1;
        }
        long size = c0870l.size();
        H h8 = c0870l.f14019b;
        long j8 = 0;
        if (getSegment$okio() != null) {
            long j9 = this.f14013j;
            int i2 = this.f14015n;
            kotlin.jvm.internal.j.checkNotNull(getSegment$okio());
            long j10 = j9 - (i2 - r9.f13992b);
            if (j10 > j7) {
                h7 = h8;
                h8 = getSegment$okio();
                size = j10;
            } else {
                h7 = getSegment$okio();
                j8 = j10;
            }
        } else {
            h7 = h8;
        }
        if (size - j7 > j7 - j8) {
            while (true) {
                kotlin.jvm.internal.j.checkNotNull(h7);
                long j11 = (h7.f13993c - h7.f13992b) + j8;
                if (j7 < j11) {
                    break;
                }
                h7 = h7.f13996f;
                j8 = j11;
            }
        } else {
            while (size > j7) {
                kotlin.jvm.internal.j.checkNotNull(h8);
                h8 = h8.f13997g;
                kotlin.jvm.internal.j.checkNotNull(h8);
                size -= h8.f13993c - h8.f13992b;
            }
            j8 = size;
            h7 = h8;
        }
        if (this.f14011e) {
            kotlin.jvm.internal.j.checkNotNull(h7);
            if (h7.f13994d) {
                H unsharedCopy = h7.unsharedCopy();
                if (c0870l.f14019b == h7) {
                    c0870l.f14019b = unsharedCopy;
                }
                h7 = h7.push(unsharedCopy);
                H h9 = h7.f13997g;
                kotlin.jvm.internal.j.checkNotNull(h9);
                h9.pop();
            }
        }
        setSegment$okio(h7);
        this.f14013j = j7;
        kotlin.jvm.internal.j.checkNotNull(h7);
        this.f14014m = h7.f13991a;
        int i7 = h7.f13992b + ((int) (j7 - j8));
        this.f14015n = i7;
        int i8 = h7.f13993c;
        this.f14016p = i8;
        return i8 - i7;
    }

    public final void setSegment$okio(H h7) {
        this.f14012f = h7;
    }
}
