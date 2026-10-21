package androidx.lifecycle;

/* loaded from: classes.dex */
public final class CompositeGeneratedAdaptersObserver implements r {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0551i[] f6950b;

    public CompositeGeneratedAdaptersObserver(InterfaceC0551i[] generatedAdapters) {
        kotlin.jvm.internal.j.checkNotNullParameter(generatedAdapters, "generatedAdapters");
        this.f6950b = generatedAdapters;
    }

    @Override // androidx.lifecycle.r
    public void onStateChanged(InterfaceC0561t source, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        D d7 = new D();
        InterfaceC0551i[] interfaceC0551iArr = this.f6950b;
        for (InterfaceC0551i interfaceC0551i : interfaceC0551iArr) {
            interfaceC0551i.callMethods(source, event, false, d7);
        }
        for (InterfaceC0551i interfaceC0551i2 : interfaceC0551iArr) {
            interfaceC0551i2.callMethods(source, event, true, d7);
        }
    }
}
