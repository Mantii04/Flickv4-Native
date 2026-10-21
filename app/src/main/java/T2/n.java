package T2;

import android.content.Context;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class n implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f3672a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1657a f3673b;

    public n(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2) {
        this.f3672a = interfaceC1657a;
        this.f3673b = interfaceC1657a2;
    }

    public static n create(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2) {
        return new n(interfaceC1657a, interfaceC1657a2);
    }

    public static m newInstance(Context context, Object obj) {
        return new m(context, (k) obj);
    }

    @Override // t5.InterfaceC1657a
    public m get() {
        return newInstance((Context) this.f3672a.get(), this.f3673b.get());
    }
}
