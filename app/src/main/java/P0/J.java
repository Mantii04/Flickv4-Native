package P0;

import androidx.media3.common.Format;

/* loaded from: classes.dex */
public final class J {

    /* renamed from: a, reason: collision with root package name */
    public final int f2510a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2511b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2512c;

    /* renamed from: d, reason: collision with root package name */
    public final long f2513d;

    /* renamed from: e, reason: collision with root package name */
    public final long f2514e;

    /* renamed from: f, reason: collision with root package name */
    public final long f2515f;

    /* renamed from: g, reason: collision with root package name */
    public final Format f2516g;

    /* renamed from: h, reason: collision with root package name */
    public final int f2517h;

    /* renamed from: i, reason: collision with root package name */
    public final long[] f2518i;

    /* renamed from: j, reason: collision with root package name */
    public final long[] f2519j;

    /* renamed from: k, reason: collision with root package name */
    public final int f2520k;

    /* renamed from: l, reason: collision with root package name */
    public final K[] f2521l;

    public J(int i2, int i7, long j7, long j8, long j9, long j10, Format format, int i8, K[] kArr, int i9, long[] jArr, long[] jArr2) {
        this.f2510a = i2;
        this.f2511b = i7;
        this.f2512c = j7;
        this.f2513d = j8;
        this.f2514e = j9;
        this.f2515f = j10;
        this.f2516g = format;
        this.f2517h = i8;
        this.f2521l = kArr;
        this.f2520k = i9;
        this.f2518i = jArr;
        this.f2519j = jArr2;
    }

    public J copyWithFormat(Format format) {
        return new J(this.f2510a, this.f2511b, this.f2512c, this.f2513d, this.f2514e, this.f2515f, format, this.f2517h, this.f2521l, this.f2520k, this.f2518i, this.f2519j);
    }

    public K getSampleDescriptionEncryptionBox(int i2) {
        K[] kArr = this.f2521l;
        if (kArr == null) {
            return null;
        }
        return kArr[i2];
    }
}
