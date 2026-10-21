package z3;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;

/* loaded from: classes2.dex */
public final class d implements OnBackAnimationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f21423a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f21424b;

    public d(e eVar, b bVar) {
        this.f21424b = eVar;
        this.f21423a = bVar;
    }

    public void onBackCancelled() {
        if (this.f21424b.f21422a != null) {
            this.f21423a.cancelBackProgress();
        }
    }

    public void onBackInvoked() {
        this.f21423a.handleBackInvoked();
    }

    public void onBackProgressed(BackEvent backEvent) {
        if (this.f21424b.f21422a != null) {
            this.f21423a.updateBackProgress(new androidx.activity.c(backEvent));
        }
    }

    public void onBackStarted(BackEvent backEvent) {
        if (this.f21424b.f21422a != null) {
            this.f21423a.startBackProgress(new androidx.activity.c(backEvent));
        }
    }
}
