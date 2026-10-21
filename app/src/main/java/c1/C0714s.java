package c1;

import v0.r0;

/* renamed from: c1.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0714s {

    /* renamed from: a, reason: collision with root package name */
    public final r0 f8855a;

    /* renamed from: b, reason: collision with root package name */
    public long f8856b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8857c;

    /* renamed from: d, reason: collision with root package name */
    public int f8858d;

    /* renamed from: e, reason: collision with root package name */
    public long f8859e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8860f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f8861g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f8862h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f8863i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8864j;

    /* renamed from: k, reason: collision with root package name */
    public long f8865k;

    /* renamed from: l, reason: collision with root package name */
    public long f8866l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f8867m;

    public C0714s(r0 r0Var) {
        this.f8855a = r0Var;
    }

    public final void a(int i2) {
        long j7 = this.f8866l;
        if (j7 != androidx.media3.common.C.TIME_UNSET) {
            long j8 = this.f8856b;
            long j9 = this.f8865k;
            if (j8 == j9) {
                return;
            }
            int i7 = (int) (j8 - j9);
            this.f8855a.sampleMetadata(j7, this.f8867m ? 1 : 0, i7, i2, null);
        }
    }

    public void endNalUnit(long j7, int i2, boolean z6) {
        if (this.f8864j && this.f8861g) {
            this.f8867m = this.f8857c;
            this.f8864j = false;
        } else if (this.f8862h || this.f8861g) {
            if (z6 && this.f8863i) {
                a(i2 + ((int) (j7 - this.f8856b)));
            }
            this.f8865k = this.f8856b;
            this.f8866l = this.f8859e;
            this.f8867m = this.f8857c;
            this.f8863i = true;
        }
    }

    public void readNalUnitData(byte[] bArr, int i2, int i7) {
        if (this.f8860f) {
            int i8 = this.f8858d;
            int i9 = (i2 + 2) - i8;
            if (i9 >= i7) {
                this.f8858d = (i7 - i2) + i8;
            } else {
                this.f8861g = (bArr[i9] & 128) != 0;
                this.f8860f = false;
            }
        }
    }

    public void reset() {
        this.f8860f = false;
        this.f8861g = false;
        this.f8862h = false;
        this.f8863i = false;
        this.f8864j = false;
    }

    public void startNalUnit(long j7, int i2, int i7, long j8, boolean z6) {
        this.f8861g = false;
        this.f8862h = false;
        this.f8859e = j8;
        this.f8858d = 0;
        this.f8856b = j7;
        if (i7 >= 32 && i7 != 40) {
            if (this.f8863i && !this.f8864j) {
                if (z6) {
                    a(i2);
                }
                this.f8863i = false;
            }
            if ((32 <= i7 && i7 <= 35) || i7 == 39) {
                this.f8862h = !this.f8864j;
                this.f8864j = true;
            }
        }
        boolean z7 = i7 >= 16 && i7 <= 21;
        this.f8857c = z7;
        this.f8860f = z7 || i7 <= 9;
    }
}
