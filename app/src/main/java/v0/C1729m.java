package v0;

/* renamed from: v0.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1729m {

    /* renamed from: d, reason: collision with root package name */
    public static final C1729m f20501d = new C1729m(-3, androidx.media3.common.C.TIME_UNSET, -1);

    /* renamed from: a, reason: collision with root package name */
    public final int f20502a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20503b;

    /* renamed from: c, reason: collision with root package name */
    public final long f20504c;

    public C1729m(int i2, long j7, long j8) {
        this.f20502a = i2;
        this.f20503b = j7;
        this.f20504c = j8;
    }

    public static C1729m overestimatedResult(long j7, long j8) {
        return new C1729m(-1, j7, j8);
    }

    public static C1729m targetFoundResult(long j7) {
        return new C1729m(0, androidx.media3.common.C.TIME_UNSET, j7);
    }

    public static C1729m underestimatedResult(long j7, long j8) {
        return new C1729m(-2, j7, j8);
    }
}
