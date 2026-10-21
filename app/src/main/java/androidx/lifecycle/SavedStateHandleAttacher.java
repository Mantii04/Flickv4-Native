package androidx.lifecycle;

/* loaded from: classes.dex */
public final class SavedStateHandleAttacher implements r {

    /* renamed from: b, reason: collision with root package name */
    public final SavedStateHandlesProvider f6990b;

    public SavedStateHandleAttacher(SavedStateHandlesProvider provider) {
        kotlin.jvm.internal.j.checkNotNullParameter(provider, "provider");
        this.f6990b = provider;
    }

    @Override // androidx.lifecycle.r
    public void onStateChanged(InterfaceC0561t source, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        if (event == Lifecycle$Event.ON_CREATE) {
            source.getLifecycle().removeObserver(this);
            this.f6990b.performRestore();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + event).toString());
        }
    }
}
