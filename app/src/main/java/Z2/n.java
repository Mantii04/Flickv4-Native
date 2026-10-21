package Z2;

import a3.InterfaceC0385c;
import a3.InterfaceC0386d;
import android.content.Context;
import c3.InterfaceC0724a;
import java.util.concurrent.Executor;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class n implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f4502a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1657a f4503b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1657a f4504c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC1657a f4505d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1657a f4506e;

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC1657a f4507f;

    /* renamed from: g, reason: collision with root package name */
    public final InterfaceC1657a f4508g;

    /* renamed from: h, reason: collision with root package name */
    public final InterfaceC1657a f4509h;

    /* renamed from: i, reason: collision with root package name */
    public final InterfaceC1657a f4510i;

    public n(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4, InterfaceC1657a interfaceC1657a5, InterfaceC1657a interfaceC1657a6, InterfaceC1657a interfaceC1657a7, InterfaceC1657a interfaceC1657a8, InterfaceC1657a interfaceC1657a9) {
        this.f4502a = interfaceC1657a;
        this.f4503b = interfaceC1657a2;
        this.f4504c = interfaceC1657a3;
        this.f4505d = interfaceC1657a4;
        this.f4506e = interfaceC1657a5;
        this.f4507f = interfaceC1657a6;
        this.f4508g = interfaceC1657a7;
        this.f4509h = interfaceC1657a8;
        this.f4510i = interfaceC1657a9;
    }

    public static n create(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4, InterfaceC1657a interfaceC1657a5, InterfaceC1657a interfaceC1657a6, InterfaceC1657a interfaceC1657a7, InterfaceC1657a interfaceC1657a8, InterfaceC1657a interfaceC1657a9) {
        return new n(interfaceC1657a, interfaceC1657a2, interfaceC1657a3, interfaceC1657a4, interfaceC1657a5, interfaceC1657a6, interfaceC1657a7, interfaceC1657a8, interfaceC1657a9);
    }

    public static m newInstance(Context context, T2.f fVar, InterfaceC0386d interfaceC0386d, q qVar, Executor executor, b3.b bVar, InterfaceC0724a interfaceC0724a, InterfaceC0724a interfaceC0724a2, InterfaceC0385c interfaceC0385c) {
        return new m(context, fVar, interfaceC0386d, qVar, executor, bVar, interfaceC0724a, interfaceC0724a2, interfaceC0385c);
    }

    @Override // t5.InterfaceC1657a
    public m get() {
        return newInstance((Context) this.f4502a.get(), (T2.f) this.f4503b.get(), (InterfaceC0386d) this.f4504c.get(), (q) this.f4505d.get(), (Executor) this.f4506e.get(), (b3.b) this.f4507f.get(), (InterfaceC0724a) this.f4508g.get(), (InterfaceC0724a) this.f4509h.get(), (InterfaceC0385c) this.f4510i.get());
    }
}
