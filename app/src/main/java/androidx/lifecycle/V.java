package androidx.lifecycle;

/* loaded from: classes.dex */
public final class V implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final C0564w f7011b;

    /* renamed from: e, reason: collision with root package name */
    public final Lifecycle$Event f7012e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f7013f;

    public V(C0564w registry, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(registry, "registry");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        this.f7011b = registry;
        this.f7012e = event;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f7013f) {
            return;
        }
        this.f7011b.handleLifecycleEvent(this.f7012e);
        this.f7013f = true;
    }
}
