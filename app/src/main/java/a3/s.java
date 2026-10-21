package a3;

import c3.InterfaceC0724a;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class s implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f4746a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1657a f4747b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1657a f4748c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC1657a f4749d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1657a f4750e;

    public s(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4, InterfaceC1657a interfaceC1657a5) {
        this.f4746a = interfaceC1657a;
        this.f4747b = interfaceC1657a2;
        this.f4748c = interfaceC1657a3;
        this.f4749d = interfaceC1657a4;
        this.f4750e = interfaceC1657a5;
    }

    public static s create(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4, InterfaceC1657a interfaceC1657a5) {
        return new s(interfaceC1657a, interfaceC1657a2, interfaceC1657a3, interfaceC1657a4, interfaceC1657a5);
    }

    public static r newInstance(InterfaceC0724a interfaceC0724a, InterfaceC0724a interfaceC0724a2, Object obj, Object obj2, InterfaceC1657a interfaceC1657a) {
        return new r(interfaceC0724a, interfaceC0724a2, (AbstractC0387e) obj, (v) obj2, interfaceC1657a);
    }

    @Override // t5.InterfaceC1657a
    public r get() {
        return newInstance((InterfaceC0724a) this.f4746a.get(), (InterfaceC0724a) this.f4747b.get(), this.f4748c.get(), this.f4749d.get(), this.f4750e);
    }
}
