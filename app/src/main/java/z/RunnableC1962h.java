package z;

import android.app.Application;

/* renamed from: z.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1962h implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Application f21358b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1964j f21359e;

    public RunnableC1962h(Application application, C1964j c1964j) {
        this.f21358b = application;
        this.f21359e = c1964j;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f21358b.unregisterActivityLifecycleCallbacks(this.f21359e);
    }
}
