package Y2;

import Z2.h;
import c3.InterfaceC0724a;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class e implements U2.b {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1657a f4383a;

    public e(InterfaceC1657a interfaceC1657a) {
        this.f4383a = interfaceC1657a;
    }

    public static h config(InterfaceC0724a interfaceC0724a) {
        return (h) U2.d.checkNotNull(h.getDefault(interfaceC0724a), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static e create(InterfaceC1657a interfaceC1657a) {
        return new e(interfaceC1657a);
    }

    @Override // t5.InterfaceC1657a
    public h get() {
        return config((InterfaceC0724a) this.f4383a.get());
    }
}
