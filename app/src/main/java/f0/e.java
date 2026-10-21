package f0;

import com.google.firebase.sessions.settings.RemoteSettings;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final long f14053a;

    /* renamed from: b, reason: collision with root package name */
    public final long f14054b;

    public e(long j7, long j8) {
        if (j8 == 0) {
            this.f14053a = 0L;
            this.f14054b = 1L;
        } else {
            this.f14053a = j7;
            this.f14054b = j8;
        }
    }

    public double calculate() {
        return this.f14053a / this.f14054b;
    }

    public String toString() {
        return this.f14053a + RemoteSettings.FORWARD_SLASH_STRING + this.f14054b;
    }
}
