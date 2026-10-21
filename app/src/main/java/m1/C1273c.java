package m1;

/* renamed from: m1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1273c {

    /* renamed from: a, reason: collision with root package name */
    public long f18360a = 0;

    /* renamed from: b, reason: collision with root package name */
    public C1273c f18361b;

    public final void a(int i2) {
        if (i2 < 64) {
            this.f18360a &= ~(1 << i2);
            return;
        }
        C1273c c1273c = this.f18361b;
        if (c1273c != null) {
            c1273c.a(i2 - 64);
        }
    }

    public final int b(int i2) {
        C1273c c1273c = this.f18361b;
        if (c1273c == null) {
            return i2 >= 64 ? Long.bitCount(this.f18360a) : Long.bitCount(this.f18360a & ((1 << i2) - 1));
        }
        if (i2 < 64) {
            return Long.bitCount(this.f18360a & ((1 << i2) - 1));
        }
        return Long.bitCount(this.f18360a) + c1273c.b(i2 - 64);
    }

    public final void c() {
        if (this.f18361b == null) {
            this.f18361b = new C1273c();
        }
    }

    public final boolean d(int i2) {
        if (i2 < 64) {
            return (this.f18360a & (1 << i2)) != 0;
        }
        c();
        return this.f18361b.d(i2 - 64);
    }

    public final void e(int i2, boolean z6) {
        if (i2 >= 64) {
            c();
            this.f18361b.e(i2 - 64, z6);
            return;
        }
        long j7 = this.f18360a;
        boolean z7 = (Long.MIN_VALUE & j7) != 0;
        long j8 = (1 << i2) - 1;
        this.f18360a = ((j7 & (~j8)) << 1) | (j7 & j8);
        if (z6) {
            h(i2);
        } else {
            a(i2);
        }
        if (z7 || this.f18361b != null) {
            c();
            this.f18361b.e(0, z7);
        }
    }

    public final boolean f(int i2) {
        if (i2 >= 64) {
            c();
            return this.f18361b.f(i2 - 64);
        }
        long j7 = 1 << i2;
        long j8 = this.f18360a;
        boolean z6 = (j8 & j7) != 0;
        long j9 = j8 & (~j7);
        this.f18360a = j9;
        long j10 = j7 - 1;
        this.f18360a = (j9 & j10) | Long.rotateRight((~j10) & j9, 1);
        C1273c c1273c = this.f18361b;
        if (c1273c != null) {
            if (c1273c.d(0)) {
                h(63);
            }
            this.f18361b.f(0);
        }
        return z6;
    }

    public final void g() {
        this.f18360a = 0L;
        C1273c c1273c = this.f18361b;
        if (c1273c != null) {
            c1273c.g();
        }
    }

    public final void h(int i2) {
        if (i2 < 64) {
            this.f18360a |= 1 << i2;
        } else {
            c();
            this.f18361b.h(i2 - 64);
        }
    }

    public String toString() {
        if (this.f18361b == null) {
            return Long.toBinaryString(this.f18360a);
        }
        return this.f18361b.toString() + "xx" + Long.toBinaryString(this.f18360a);
    }
}
