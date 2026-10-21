package c1;

import v0.r0;

/* renamed from: c1.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0709n {

    /* renamed from: a, reason: collision with root package name */
    public final r0 f8784a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8785b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8786c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8787d;

    /* renamed from: e, reason: collision with root package name */
    public int f8788e;

    /* renamed from: f, reason: collision with root package name */
    public int f8789f;

    /* renamed from: g, reason: collision with root package name */
    public long f8790g;

    /* renamed from: h, reason: collision with root package name */
    public long f8791h;

    public C0709n(r0 r0Var) {
        this.f8784a = r0Var;
    }

    public void onData(byte[] bArr, int i2, int i7) {
        if (this.f8786c) {
            int i8 = this.f8789f;
            int i9 = (i2 + 1) - i8;
            if (i9 >= i7) {
                this.f8789f = (i7 - i2) + i8;
            } else {
                this.f8787d = ((bArr[i9] & 192) >> 6) == 0;
                this.f8786c = false;
            }
        }
    }

    public void onDataEnd(long j7, int i2, boolean z6) {
        P3.v.checkState(this.f8791h != androidx.media3.common.C.TIME_UNSET);
        if (this.f8788e == 182 && z6 && this.f8785b) {
            this.f8784a.sampleMetadata(this.f8791h, this.f8787d ? 1 : 0, (int) (j7 - this.f8790g), i2, null);
        }
        if (this.f8788e != 179) {
            this.f8790g = j7;
        }
    }

    public void onStartCode(int i2, long j7) {
        this.f8788e = i2;
        this.f8787d = false;
        this.f8785b = i2 == 182 || i2 == 179;
        this.f8786c = i2 == 182;
        this.f8789f = 0;
        this.f8791h = j7;
    }

    public void reset() {
        this.f8785b = false;
        this.f8786c = false;
        this.f8787d = false;
        this.f8788e = -1;
    }
}
