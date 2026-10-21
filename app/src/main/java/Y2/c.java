package Y2;

import Z2.q;
import a3.InterfaceC0386d;
import java.util.concurrent.Executor;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class c implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f4378a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1657a f4379b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1657a f4380c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC1657a f4381d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1657a f4382e;

    public c(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4, InterfaceC1657a interfaceC1657a5) {
        this.f4378a = interfaceC1657a;
        this.f4379b = interfaceC1657a2;
        this.f4380c = interfaceC1657a3;
        this.f4381d = interfaceC1657a4;
        this.f4382e = interfaceC1657a5;
    }

    public static c create(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4, InterfaceC1657a interfaceC1657a5) {
        return new c(interfaceC1657a, interfaceC1657a2, interfaceC1657a3, interfaceC1657a4, interfaceC1657a5);
    }

    public static b newInstance(Executor executor, T2.f fVar, q qVar, InterfaceC0386d interfaceC0386d, b3.b bVar) {
        return new b(executor, fVar, qVar, interfaceC0386d, bVar);
    }

    @Override // t5.InterfaceC1657a
    public b get() {
        return newInstance((Executor) this.f4378a.get(), (T2.f) this.f4379b.get(), (q) this.f4380c.get(), (InterfaceC0386d) this.f4381d.get(), (b3.b) this.f4382e.get());
    }
}
