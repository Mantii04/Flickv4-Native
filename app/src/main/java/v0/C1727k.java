package v0;

import androidx.media3.common.util.Util;

/* renamed from: v0.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1727k {

    /* renamed from: a, reason: collision with root package name */
    public final long f20492a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20493b;

    /* renamed from: c, reason: collision with root package name */
    public final long f20494c;

    /* renamed from: d, reason: collision with root package name */
    public long f20495d;

    /* renamed from: e, reason: collision with root package name */
    public long f20496e;

    /* renamed from: f, reason: collision with root package name */
    public long f20497f;

    /* renamed from: g, reason: collision with root package name */
    public long f20498g;

    /* renamed from: h, reason: collision with root package name */
    public long f20499h;

    public C1727k(long j7, long j8, long j9, long j10, long j11, long j12, long j13) {
        this.f20492a = j7;
        this.f20493b = j8;
        this.f20495d = j9;
        this.f20496e = j10;
        this.f20497f = j11;
        this.f20498g = j12;
        this.f20494c = j13;
        this.f20499h = calculateNextSearchBytePosition(j8, j9, j10, j11, j12, j13);
    }

    public static long calculateNextSearchBytePosition(long j7, long j8, long j9, long j10, long j11, long j12) {
        if (j10 + 1 >= j11 || j8 + 1 >= j9) {
            return j10;
        }
        long j13 = (long) ((j7 - j8) * ((j11 - j10) / (j9 - j8)));
        return Util.constrainValue(((j13 + j10) - j12) - (j13 / 20), j10, j11 - 1);
    }
}
