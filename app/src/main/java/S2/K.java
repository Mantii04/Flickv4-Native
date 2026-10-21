package S2;

import c3.InterfaceC0724a;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class K implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f3306a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1657a f3307b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1657a f3308c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC1657a f3309d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1657a f3310e;

    public K(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4, InterfaceC1657a interfaceC1657a5) {
        this.f3306a = interfaceC1657a;
        this.f3307b = interfaceC1657a2;
        this.f3308c = interfaceC1657a3;
        this.f3309d = interfaceC1657a4;
        this.f3310e = interfaceC1657a5;
    }

    public static K create(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4, InterfaceC1657a interfaceC1657a5) {
        return new K(interfaceC1657a, interfaceC1657a2, interfaceC1657a3, interfaceC1657a4, interfaceC1657a5);
    }

    public static H newInstance(InterfaceC0724a interfaceC0724a, InterfaceC0724a interfaceC0724a2, Y2.d dVar, Z2.m mVar, Z2.o oVar) {
        return new H(interfaceC0724a, interfaceC0724a2, dVar, mVar, oVar);
    }

    @Override // t5.InterfaceC1657a
    public H get() {
        return newInstance((InterfaceC0724a) this.f3306a.get(), (InterfaceC0724a) this.f3307b.get(), (Y2.d) this.f3308c.get(), (Z2.m) this.f3309d.get(), (Z2.o) this.f3310e.get());
    }
}
