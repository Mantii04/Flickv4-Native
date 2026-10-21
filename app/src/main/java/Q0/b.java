package Q0;

import P3.v;
import androidx.media3.common.util.Util;

/* loaded from: classes.dex */
public final class b implements h {

    /* renamed from: a, reason: collision with root package name */
    public final g f2744a;

    /* renamed from: b, reason: collision with root package name */
    public final long f2745b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2746c;

    /* renamed from: d, reason: collision with root package name */
    public final l f2747d;

    /* renamed from: e, reason: collision with root package name */
    public int f2748e;

    /* renamed from: f, reason: collision with root package name */
    public long f2749f;

    /* renamed from: g, reason: collision with root package name */
    public long f2750g;

    /* renamed from: h, reason: collision with root package name */
    public long f2751h;

    /* renamed from: i, reason: collision with root package name */
    public long f2752i;

    /* renamed from: j, reason: collision with root package name */
    public long f2753j;

    /* renamed from: k, reason: collision with root package name */
    public long f2754k;

    /* renamed from: l, reason: collision with root package name */
    public long f2755l;

    public b(l lVar, long j7, long j8, long j9, long j10, boolean z6) {
        v.checkArgument(j7 >= 0 && j8 > j7);
        this.f2747d = lVar;
        this.f2745b = j7;
        this.f2746c = j8;
        if (j9 == j8 - j7 || z6) {
            this.f2749f = j10;
            this.f2748e = 4;
        } else {
            this.f2748e = 0;
        }
        this.f2744a = new g();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00cd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ce  */
    @Override // Q0.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long read(v0.D r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Q0.b.read(v0.D):long");
    }

    @Override // Q0.h
    public void startSeek(long j7) {
        this.f2751h = Util.constrainValue(j7, 0L, this.f2749f - 1);
        this.f2748e = 2;
        this.f2752i = this.f2745b;
        this.f2753j = this.f2746c;
        this.f2754k = 0L;
        this.f2755l = this.f2749f;
    }

    @Override // Q0.h
    public a createSeekMap() {
        if (this.f2749f != 0) {
            return new a(this);
        }
        return null;
    }
}
