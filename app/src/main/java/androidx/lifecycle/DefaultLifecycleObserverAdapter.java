package androidx.lifecycle;

/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements r {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0548f f6952b;

    /* renamed from: e, reason: collision with root package name */
    public final r f6953e;

    public DefaultLifecycleObserverAdapter(InterfaceC0548f defaultLifecycleObserver, r rVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(defaultLifecycleObserver, "defaultLifecycleObserver");
        this.f6952b = defaultLifecycleObserver;
        this.f6953e = rVar;
    }

    @Override // androidx.lifecycle.r
    public void onStateChanged(InterfaceC0561t source, Lifecycle$Event event) {
        kotlin.jvm.internal.j.checkNotNullParameter(source, "source");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        int i2 = AbstractC0549g.f7036a[event.ordinal()];
        InterfaceC0548f interfaceC0548f = this.f6952b;
        switch (i2) {
            case 1:
                interfaceC0548f.onCreate(source);
                break;
            case 2:
                interfaceC0548f.onStart(source);
                break;
            case 3:
                interfaceC0548f.onResume(source);
                break;
            case 4:
                interfaceC0548f.onPause(source);
                break;
            case 5:
                interfaceC0548f.onStop(source);
                break;
            case 6:
                interfaceC0548f.onDestroy(source);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        r rVar = this.f6953e;
        if (rVar != null) {
            rVar.onStateChanged(source, event);
        }
    }
}
