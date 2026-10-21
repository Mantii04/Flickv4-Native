package androidx.lifecycle;

/* loaded from: classes.dex */
public final class K implements L {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ J f6964a;

    public K(J j7) {
        this.f6964a = j7;
    }

    public void onCreate() {
    }

    public void onResume() {
        this.f6964a.activityResumed$lifecycle_process_release();
    }

    public void onStart() {
        this.f6964a.activityStarted$lifecycle_process_release();
    }
}
