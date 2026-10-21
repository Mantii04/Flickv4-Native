package androidx.lifecycle;

/* renamed from: androidx.lifecycle.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0563v {

    /* renamed from: a, reason: collision with root package name */
    public Lifecycle$State f7043a;

    /* renamed from: b, reason: collision with root package name */
    public final r f7044b;

    public C0563v(InterfaceC0560s interfaceC0560s, Lifecycle$State initialState) {
        kotlin.jvm.internal.j.checkNotNullParameter(initialState, "initialState");
        kotlin.jvm.internal.j.checkNotNull(interfaceC0560s);
        this.f7044b = AbstractC0566y.lifecycleEventObserver(interfaceC0560s);
        this.f7043a = initialState;
    }

    public final void dispatchEvent(InterfaceC0561t interfaceC0561t, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        Lifecycle$State targetState = event.getTargetState();
        this.f7043a = C0564w.f7045i.min$lifecycle_runtime_release(this.f7043a, targetState);
        kotlin.jvm.internal.j.checkNotNull(interfaceC0561t);
        this.f7044b.onStateChanged(interfaceC0561t, event);
        this.f7043a = targetState;
    }

    public final Lifecycle$State getState() {
        return this.f7043a;
    }
}
