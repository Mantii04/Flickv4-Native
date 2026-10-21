package c3;

/* renamed from: c3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0726c implements U2.b {
    public static C0726c create() {
        return AbstractC0725b.f8959a;
    }

    public static InterfaceC0724a eventClock() {
        return (InterfaceC0724a) U2.d.checkNotNull(new C0730g(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // t5.InterfaceC1657a
    public InterfaceC0724a get() {
        return eventClock();
    }
}
