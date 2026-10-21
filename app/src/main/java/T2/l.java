package T2;

import android.content.Context;
import c3.InterfaceC0724a;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class l implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f3666a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1657a f3667b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1657a f3668c;

    public l(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3) {
        this.f3666a = interfaceC1657a;
        this.f3667b = interfaceC1657a2;
        this.f3668c = interfaceC1657a3;
    }

    public static l create(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3) {
        return new l(interfaceC1657a, interfaceC1657a2, interfaceC1657a3);
    }

    public static k newInstance(Context context, InterfaceC0724a interfaceC0724a, InterfaceC0724a interfaceC0724a2) {
        return new k(context, interfaceC0724a, interfaceC0724a2);
    }

    @Override // t5.InterfaceC1657a
    public k get() {
        return newInstance((Context) this.f3666a.get(), (InterfaceC0724a) this.f3667b.get(), (InterfaceC0724a) this.f3668c.get());
    }
}
