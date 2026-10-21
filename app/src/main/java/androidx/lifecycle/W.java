package androidx.lifecycle;

import android.os.Handler;

/* loaded from: classes.dex */
public final class W {

    /* renamed from: a, reason: collision with root package name */
    public final C0564w f7014a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f7015b;

    /* renamed from: c, reason: collision with root package name */
    public V f7016c;

    public W(InterfaceC0561t provider) {
        kotlin.jvm.internal.j.checkNotNullParameter(provider, "provider");
        this.f7014a = new C0564w(provider);
        this.f7015b = new Handler();
    }

    public final void a(Lifecycle$Event lifecycle$Event) {
        V v6 = this.f7016c;
        if (v6 != null) {
            v6.run();
        }
        V v7 = new V(this.f7014a, lifecycle$Event);
        this.f7016c = v7;
        Handler handler = this.f7015b;
        kotlin.jvm.internal.j.checkNotNull(v7);
        handler.postAtFrontOfQueue(v7);
    }

    public AbstractC0557o getLifecycle() {
        return this.f7014a;
    }

    public void onServicePreSuperOnBind() {
        a(Lifecycle$Event.ON_START);
    }

    public void onServicePreSuperOnCreate() {
        a(Lifecycle$Event.ON_CREATE);
    }

    public void onServicePreSuperOnDestroy() {
        a(Lifecycle$Event.ON_STOP);
        a(Lifecycle$Event.ON_DESTROY);
    }

    public void onServicePreSuperOnStart() {
        a(Lifecycle$Event.ON_START);
    }
}
