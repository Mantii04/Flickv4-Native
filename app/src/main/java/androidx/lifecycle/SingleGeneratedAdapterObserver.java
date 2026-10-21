package androidx.lifecycle;

/* loaded from: classes.dex */
public final class SingleGeneratedAdapterObserver implements r {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0551i f7003b;

    public SingleGeneratedAdapterObserver(InterfaceC0551i generatedAdapter) {
        kotlin.jvm.internal.j.checkNotNullParameter(generatedAdapter, "generatedAdapter");
        this.f7003b = generatedAdapter;
    }

    @Override // androidx.lifecycle.r
    public void onStateChanged(InterfaceC0561t source, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        InterfaceC0551i interfaceC0551i = this.f7003b;
        interfaceC0551i.callMethods(source, event, false, null);
        interfaceC0551i.callMethods(source, event, true, null);
    }
}
