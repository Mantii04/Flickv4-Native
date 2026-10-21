package g3;

import android.animation.TimeInterpolator;
import org.apache.commons.lang3.StringUtils;

/* renamed from: g3.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0954d {

    /* renamed from: a, reason: collision with root package name */
    public final long f16467a;

    /* renamed from: b, reason: collision with root package name */
    public final long f16468b;

    /* renamed from: c, reason: collision with root package name */
    public final TimeInterpolator f16469c;

    /* renamed from: d, reason: collision with root package name */
    public int f16470d;

    /* renamed from: e, reason: collision with root package name */
    public int f16471e;

    public C0954d(long j7, long j8) {
        this.f16469c = null;
        this.f16470d = 0;
        this.f16471e = 1;
        this.f16467a = j7;
        this.f16468b = j8;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0954d)) {
            return false;
        }
        C0954d c0954d = (C0954d) obj;
        if (getDelay() == c0954d.getDelay() && getDuration() == c0954d.getDuration() && getRepeatCount() == c0954d.getRepeatCount() && getRepeatMode() == c0954d.getRepeatMode()) {
            return getInterpolator().getClass().equals(c0954d.getInterpolator().getClass());
        }
        return false;
    }

    public long getDelay() {
        return this.f16467a;
    }

    public long getDuration() {
        return this.f16468b;
    }

    public TimeInterpolator getInterpolator() {
        TimeInterpolator timeInterpolator = this.f16469c;
        return timeInterpolator != null ? timeInterpolator : AbstractC0951a.f16461b;
    }

    public int getRepeatCount() {
        return this.f16470d;
    }

    public int getRepeatMode() {
        return this.f16471e;
    }

    public int hashCode() {
        return getRepeatMode() + ((getRepeatCount() + ((getInterpolator().getClass().hashCode() + (((((int) (getDelay() ^ (getDelay() >>> 32))) * 31) + ((int) (getDuration() ^ (getDuration() >>> 32)))) * 31)) * 31)) * 31);
    }

    public String toString() {
        return StringUtils.LF + C0954d.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + getDelay() + " duration: " + getDuration() + " interpolator: " + getInterpolator().getClass() + " repeatCount: " + getRepeatCount() + " repeatMode: " + getRepeatMode() + "}\n";
    }

    public C0954d(long j7, long j8, TimeInterpolator timeInterpolator) {
        this.f16470d = 0;
        this.f16471e = 1;
        this.f16467a = j7;
        this.f16468b = j8;
        this.f16469c = timeInterpolator;
    }
}
