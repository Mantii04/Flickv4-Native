package B1;

import android.app.Notification;

/* renamed from: B1.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0029i {

    /* renamed from: a, reason: collision with root package name */
    public final int f183a;

    /* renamed from: b, reason: collision with root package name */
    public final int f184b;

    /* renamed from: c, reason: collision with root package name */
    public final Notification f185c;

    public C0029i(int i2, Notification notification, int i7) {
        this.f183a = i2;
        this.f185c = notification;
        this.f184b = i7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0029i.class != obj.getClass()) {
            return false;
        }
        C0029i c0029i = (C0029i) obj;
        if (this.f183a == c0029i.f183a && this.f184b == c0029i.f184b) {
            return this.f185c.equals(c0029i.f185c);
        }
        return false;
    }

    public int getForegroundServiceType() {
        return this.f184b;
    }

    public Notification getNotification() {
        return this.f185c;
    }

    public int getNotificationId() {
        return this.f183a;
    }

    public int hashCode() {
        return this.f185c.hashCode() + (((this.f183a * 31) + this.f184b) * 31);
    }

    public String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f183a + ", mForegroundServiceType=" + this.f184b + ", mNotification=" + this.f185c + '}';
    }
}
