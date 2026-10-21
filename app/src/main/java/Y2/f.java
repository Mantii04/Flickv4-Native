package Y2;

import Z2.h;
import Z2.q;
import a3.InterfaceC0386d;
import android.content.Context;
import c3.InterfaceC0724a;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class f implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f4384a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1657a f4385b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1657a f4386c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC1657a f4387d;

    public f(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4) {
        this.f4384a = interfaceC1657a;
        this.f4385b = interfaceC1657a2;
        this.f4386c = interfaceC1657a3;
        this.f4387d = interfaceC1657a4;
    }

    public static f create(InterfaceC1657a interfaceC1657a, InterfaceC1657a interfaceC1657a2, InterfaceC1657a interfaceC1657a3, InterfaceC1657a interfaceC1657a4) {
        return new f(interfaceC1657a, interfaceC1657a2, interfaceC1657a3, interfaceC1657a4);
    }

    public static q workScheduler(Context context, InterfaceC0386d interfaceC0386d, h hVar, InterfaceC0724a interfaceC0724a) {
        return (q) U2.d.checkNotNull(new Z2.d(context, interfaceC0386d, hVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // t5.InterfaceC1657a
    public q get() {
        return workScheduler((Context) this.f4384a.get(), (InterfaceC0386d) this.f4385b.get(), (h) this.f4386c.get(), (InterfaceC0724a) this.f4387d.get());
    }
}
