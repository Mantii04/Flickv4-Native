package e6;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class H {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f13991a;

    /* renamed from: b, reason: collision with root package name */
    public int f13992b;

    /* renamed from: c, reason: collision with root package name */
    public int f13993c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13994d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f13995e;

    /* renamed from: f, reason: collision with root package name */
    public H f13996f;

    /* renamed from: g, reason: collision with root package name */
    public H f13997g;

    static {
        new G(null);
    }

    public H() {
        this.f13991a = new byte[8192];
        this.f13995e = true;
        this.f13994d = false;
    }

    public final void compact() {
        int i2;
        H h7 = this.f13997g;
        if (h7 == this) {
            throw new IllegalStateException("cannot compact");
        }
        kotlin.jvm.internal.j.checkNotNull(h7);
        if (h7.f13995e) {
            int i7 = this.f13993c - this.f13992b;
            H h8 = this.f13997g;
            kotlin.jvm.internal.j.checkNotNull(h8);
            int i8 = 8192 - h8.f13993c;
            H h9 = this.f13997g;
            kotlin.jvm.internal.j.checkNotNull(h9);
            if (h9.f13994d) {
                i2 = 0;
            } else {
                H h10 = this.f13997g;
                kotlin.jvm.internal.j.checkNotNull(h10);
                i2 = h10.f13992b;
            }
            if (i7 > i8 + i2) {
                return;
            }
            H h11 = this.f13997g;
            kotlin.jvm.internal.j.checkNotNull(h11);
            writeTo(h11, i7);
            pop();
            I.recycle(this);
        }
    }

    public final H pop() {
        H h7 = this.f13996f;
        if (h7 == this) {
            h7 = null;
        }
        H h8 = this.f13997g;
        kotlin.jvm.internal.j.checkNotNull(h8);
        h8.f13996f = this.f13996f;
        H h9 = this.f13996f;
        kotlin.jvm.internal.j.checkNotNull(h9);
        h9.f13997g = this.f13997g;
        this.f13996f = null;
        this.f13997g = null;
        return h7;
    }

    public final H push(H segment) {
        kotlin.jvm.internal.j.checkNotNullParameter(segment, "segment");
        segment.f13997g = this;
        segment.f13996f = this.f13996f;
        H h7 = this.f13996f;
        kotlin.jvm.internal.j.checkNotNull(h7);
        h7.f13997g = segment;
        this.f13996f = segment;
        return segment;
    }

    public final H sharedCopy() {
        this.f13994d = true;
        return new H(this.f13991a, this.f13992b, this.f13993c, true, false);
    }

    public final H split(int i2) {
        H take;
        if (i2 <= 0 || i2 > this.f13993c - this.f13992b) {
            throw new IllegalArgumentException("byteCount out of range");
        }
        if (i2 >= 1024) {
            take = sharedCopy();
        } else {
            take = I.take();
            byte[] bArr = take.f13991a;
            int i7 = this.f13992b;
            v5.m.copyInto$default(this.f13991a, bArr, 0, i7, i7 + i2, 2, (Object) null);
        }
        take.f13993c = take.f13992b + i2;
        this.f13992b += i2;
        H h7 = this.f13997g;
        kotlin.jvm.internal.j.checkNotNull(h7);
        h7.push(take);
        return take;
    }

    public final H unsharedCopy() {
        byte[] bArr = this.f13991a;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return new H(copyOf, this.f13992b, this.f13993c, false, true);
    }

    public final void writeTo(H sink, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(sink, "sink");
        if (!sink.f13995e) {
            throw new IllegalStateException("only owner can write");
        }
        int i7 = sink.f13993c;
        if (i7 + i2 > 8192) {
            if (sink.f13994d) {
                throw new IllegalArgumentException();
            }
            int i8 = sink.f13992b;
            if ((i7 + i2) - i8 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = sink.f13991a;
            v5.m.copyInto$default(bArr, bArr, 0, i8, i7, 2, (Object) null);
            sink.f13993c -= sink.f13992b;
            sink.f13992b = 0;
        }
        int i9 = sink.f13993c;
        int i10 = this.f13992b;
        v5.m.copyInto(this.f13991a, sink.f13991a, i9, i10, i10 + i2);
        sink.f13993c += i2;
        this.f13992b += i2;
    }

    public H(byte[] data, int i2, int i7, boolean z6, boolean z7) {
        kotlin.jvm.internal.j.checkNotNullParameter(data, "data");
        this.f13991a = data;
        this.f13992b = i2;
        this.f13993c = i7;
        this.f13994d = z6;
        this.f13995e = z7;
    }
}
