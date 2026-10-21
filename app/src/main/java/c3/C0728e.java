package c3;

/* renamed from: c3.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0728e implements U2.b {
    public static C0728e create() {
        return AbstractC0727d.f8960a;
    }

    public static InterfaceC0724a uptimeClock() {
        return (InterfaceC0724a) U2.d.checkNotNull(new C0729f(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // t5.InterfaceC1657a
    public InterfaceC0724a get() {
        return uptimeClock();
    }
}
