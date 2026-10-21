package S0;

import androidx.media3.common.C;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: c, reason: collision with root package name */
    public static final r f3275c = new r(C.TIME_UNSET, false);

    /* renamed from: a, reason: collision with root package name */
    public final long f3276a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3277b;

    public r(long j7, boolean z6) {
        this.f3276a = j7;
        this.f3277b = z6;
    }

    public static r allCues() {
        return f3275c;
    }

    public static r cuesAfterThenRemainingCuesBefore(long j7) {
        return new r(j7, true);
    }
}
