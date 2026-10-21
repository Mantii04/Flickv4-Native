package androidx.lifecycle;

/* loaded from: classes.dex */
public final class SavedStateHandleController implements r {

    /* renamed from: b, reason: collision with root package name */
    public final String f6991b;

    /* renamed from: e, reason: collision with root package name */
    public final Q f6992e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f6993f;

    public SavedStateHandleController(String key, Q handle) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        kotlin.jvm.internal.j.checkNotNullParameter(handle, "handle");
        this.f6991b = key;
        this.f6992e = handle;
    }

    public final void attachToLifecycle(q1.g registry, AbstractC0557o lifecycle) {
        kotlin.jvm.internal.j.checkNotNullParameter(registry, "registry");
        kotlin.jvm.internal.j.checkNotNullParameter(lifecycle, "lifecycle");
        if (this.f6993f) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f6993f = true;
        lifecycle.addObserver(this);
        registry.registerSavedStateProvider(this.f6991b, this.f6992e.savedStateProvider());
    }

    public final Q getHandle() {
        return this.f6992e;
    }

    public final boolean isAttached() {
        return this.f6993f;
    }

    @Override // androidx.lifecycle.r
    public void onStateChanged(InterfaceC0561t source, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        if (event == Lifecycle$Event.ON_DESTROY) {
            this.f6993f = false;
            source.getLifecycle().removeObserver(this);
        }
    }
}
