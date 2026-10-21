package g1;

import androidx.media3.common.util.Log;

/* renamed from: g1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0942b {

    /* renamed from: a, reason: collision with root package name */
    public final int f16395a;

    /* renamed from: b, reason: collision with root package name */
    public int f16396b;

    /* renamed from: c, reason: collision with root package name */
    public int f16397c;

    /* renamed from: d, reason: collision with root package name */
    public int f16398d;

    /* renamed from: e, reason: collision with root package name */
    public int f16399e;

    /* renamed from: f, reason: collision with root package name */
    public int f16400f;

    /* renamed from: g, reason: collision with root package name */
    public int f16401g;

    /* renamed from: h, reason: collision with root package name */
    public int f16402h;

    /* renamed from: i, reason: collision with root package name */
    public int f16403i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ C0943c f16404j;

    public C0942b(C0943c c0943c, int i2, int i7) {
        this.f16404j = c0943c;
        this.f16395a = i2;
        this.f16396b = i7;
        a();
    }

    public final void a() {
        C0943c c0943c = this.f16404j;
        int[] iArr = c0943c.f16406a;
        int[] iArr2 = c0943c.f16407b;
        int i2 = Log.LOG_LEVEL_OFF;
        int i7 = Integer.MIN_VALUE;
        int i8 = Integer.MIN_VALUE;
        int i9 = Integer.MIN_VALUE;
        int i10 = 0;
        int i11 = Integer.MAX_VALUE;
        int i12 = Integer.MAX_VALUE;
        for (int i13 = this.f16395a; i13 <= this.f16396b; i13++) {
            int i14 = iArr[i13];
            i10 += iArr2[i14];
            int i15 = (i14 >> 10) & 31;
            int i16 = (i14 >> 5) & 31;
            int i17 = i14 & 31;
            if (i15 > i7) {
                i7 = i15;
            }
            if (i15 < i2) {
                i2 = i15;
            }
            if (i16 > i8) {
                i8 = i16;
            }
            if (i16 < i11) {
                i11 = i16;
            }
            if (i17 > i9) {
                i9 = i17;
            }
            if (i17 < i12) {
                i12 = i17;
            }
        }
        this.f16398d = i2;
        this.f16399e = i7;
        this.f16400f = i11;
        this.f16401g = i8;
        this.f16402h = i12;
        this.f16403i = i9;
        this.f16397c = i10;
    }

    public final int b() {
        return ((this.f16403i - this.f16402h) + 1) * ((this.f16401g - this.f16400f) + 1) * ((this.f16399e - this.f16398d) + 1);
    }
}
