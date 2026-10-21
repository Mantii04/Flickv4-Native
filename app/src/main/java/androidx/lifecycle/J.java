package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;

/* loaded from: classes.dex */
public final class J implements InterfaceC0561t {

    /* renamed from: r, reason: collision with root package name */
    public static final I f6954r = new I(null);

    /* renamed from: s, reason: collision with root package name */
    public static final J f6955s = new J();

    /* renamed from: b, reason: collision with root package name */
    public int f6956b;

    /* renamed from: e, reason: collision with root package name */
    public int f6957e;

    /* renamed from: m, reason: collision with root package name */
    public Handler f6960m;

    /* renamed from: f, reason: collision with root package name */
    public boolean f6958f = true;

    /* renamed from: j, reason: collision with root package name */
    public boolean f6959j = true;

    /* renamed from: n, reason: collision with root package name */
    public final C0564w f6961n = new C0564w(this);

    /* renamed from: p, reason: collision with root package name */
    public final A3.d f6962p = new A3.d(this, 24);

    /* renamed from: q, reason: collision with root package name */
    public final K f6963q = new K(this);

    public static final class a extends AbstractC0550h {

        /* renamed from: androidx.lifecycle.J$a$a, reason: collision with other inner class name */
        public static final class C0000a extends AbstractC0550h {
            final /* synthetic */ J this$0;

            public C0000a(J j7) {
                this.this$0 = j7;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostResumed(Activity activity) {
                kotlin.jvm.internal.j.checkNotNullParameter(activity, "activity");
                this.this$0.activityResumed$lifecycle_process_release();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostStarted(Activity activity) {
                kotlin.jvm.internal.j.checkNotNullParameter(activity, "activity");
                this.this$0.activityStarted$lifecycle_process_release();
            }
        }

        public a() {
        }

        @Override // androidx.lifecycle.AbstractC0550h, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.j.checkNotNullParameter(activity, "activity");
            if (Build.VERSION.SDK_INT < 29) {
                O.f6973e.get(activity).setProcessListener(J.this.f6963q);
            }
        }

        @Override // androidx.lifecycle.AbstractC0550h, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            kotlin.jvm.internal.j.checkNotNullParameter(activity, "activity");
            J.this.activityPaused$lifecycle_process_release();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.j.checkNotNullParameter(activity, "activity");
            H.registerActivityLifecycleCallbacks(activity, new C0000a(J.this));
        }

        @Override // androidx.lifecycle.AbstractC0550h, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            kotlin.jvm.internal.j.checkNotNullParameter(activity, "activity");
            J.this.activityStopped$lifecycle_process_release();
        }
    }

    public static final InterfaceC0561t get() {
        return f6954r.get();
    }

    public final void activityPaused$lifecycle_process_release() {
        int i2 = this.f6957e - 1;
        this.f6957e = i2;
        if (i2 == 0) {
            Handler handler = this.f6960m;
            kotlin.jvm.internal.j.checkNotNull(handler);
            handler.postDelayed(this.f6962p, 700L);
        }
    }

    public final void activityResumed$lifecycle_process_release() {
        int i2 = this.f6957e + 1;
        this.f6957e = i2;
        if (i2 == 1) {
            if (this.f6958f) {
                this.f6961n.handleLifecycleEvent(Lifecycle$Event.ON_RESUME);
                this.f6958f = false;
            } else {
                Handler handler = this.f6960m;
                kotlin.jvm.internal.j.checkNotNull(handler);
                handler.removeCallbacks(this.f6962p);
            }
        }
    }

    public final void activityStarted$lifecycle_process_release() {
        int i2 = this.f6956b + 1;
        this.f6956b = i2;
        if (i2 == 1 && this.f6959j) {
            this.f6961n.handleLifecycleEvent(Lifecycle$Event.ON_START);
            this.f6959j = false;
        }
    }

    public final void activityStopped$lifecycle_process_release() {
        this.f6956b--;
        dispatchStopIfNeeded$lifecycle_process_release();
    }

    public final void attach$lifecycle_process_release(Context context) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        this.f6960m = new Handler();
        this.f6961n.handleLifecycleEvent(Lifecycle$Event.ON_CREATE);
        Context applicationContext = context.getApplicationContext();
        kotlin.jvm.internal.j.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new a());
    }

    public final void dispatchPauseIfNeeded$lifecycle_process_release() {
        if (this.f6957e == 0) {
            this.f6958f = true;
            this.f6961n.handleLifecycleEvent(Lifecycle$Event.ON_PAUSE);
        }
    }

    public final void dispatchStopIfNeeded$lifecycle_process_release() {
        if (this.f6956b == 0 && this.f6958f) {
            this.f6961n.handleLifecycleEvent(Lifecycle$Event.ON_STOP);
            this.f6959j = true;
        }
    }

    @Override // androidx.lifecycle.InterfaceC0561t
    public AbstractC0557o getLifecycle() {
        return this.f6961n;
    }
}
