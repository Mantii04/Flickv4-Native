package Z2;

import a3.InterfaceC0386d;
import java.util.concurrent.Executor;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class p implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f4515a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1657a f4516b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1657a f4517c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC1657a f4518d;

    public p(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4) {
        this.f4515a = interfaceC1657a;
        this.f4516b = interfaceC1657a2;
        this.f4517c = interfaceC1657a3;
        this.f4518d = interfaceC1657a4;
    }

    public static p create(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4) {
        return new p(interfaceC1657a, interfaceC1657a2, interfaceC1657a3, interfaceC1657a4);
    }

    public static o newInstance(Executor executor, InterfaceC0386d interfaceC0386d, q qVar, b3.b bVar) {
        return new o(executor, interfaceC0386d, qVar, bVar);
    }

    @Override // t5.InterfaceC1657a
    public o get() {
        return newInstance((Executor) this.f4515a.get(), (InterfaceC0386d) this.f4516b.get(), (q) this.f4517c.get(), (b3.b) this.f4518d.get());
    }
}
