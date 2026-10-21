package z;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* renamed from: z.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1964j implements Application.ActivityLifecycleCallbacks {

    /* renamed from: b, reason: collision with root package name */
    public Object f21362b;

    /* renamed from: e, reason: collision with root package name */
    public Activity f21363e;

    /* renamed from: f, reason: collision with root package name */
    public final int f21364f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21365j = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f21366m = false;

    /* renamed from: n, reason: collision with root package name */
    public boolean f21367n = false;

    public C1964j(Activity activity) {
        this.f21363e = activity;
        this.f21364f = activity.hashCode();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.f21363e == activity) {
            this.f21363e = null;
            this.f21366m = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (!this.f21366m || this.f21367n || this.f21365j || !AbstractC1965k.queueOnStopIfNecessary(this.f21362b, this.f21364f, activity)) {
            return;
        }
        this.f21367n = true;
        this.f21362b = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (this.f21363e == activity) {
            this.f21365j = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
