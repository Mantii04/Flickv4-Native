package androidx.lifecycle;

import java.util.HashMap;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
class ReflectiveGenericLifecycleObserver implements r {

    /* renamed from: b, reason: collision with root package name */
    public final Object f6982b;

    /* renamed from: e, reason: collision with root package name */
    public final C0544b f6983e;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f6982b = obj;
        C0546d c0546d = C0546d.f7030c;
        Class<?> cls = obj.getClass();
        C0544b c0544b = (C0544b) c0546d.f7031a.get(cls);
        this.f6983e = c0544b == null ? c0546d.a(cls, null) : c0544b;
    }

    @Override // androidx.lifecycle.r
    public void onStateChanged(InterfaceC0561t interfaceC0561t, Lifecycle$Event lifecycle$Event) {
        HashMap hashMap = this.f6983e.f7026a;
        List list = (List) hashMap.get(lifecycle$Event);
        Object obj = this.f6982b;
        C0544b.a(list, interfaceC0561t, lifecycle$Event, obj);
        C0544b.a((List) hashMap.get(Lifecycle$Event.ON_ANY), interfaceC0561t, lifecycle$Event, obj);
    }
}
