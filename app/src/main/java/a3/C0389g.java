package a3;

/* renamed from: a3.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0389g implements U2.b {
    public static C0389g create() {
        return AbstractC0388f.f4729a;
    }

    public static String dbName() {
        return (String) U2.d.checkNotNull("com.google.android.datatransport.events", "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // t5.InterfaceC1657a
    public String get() {
        return dbName();
    }
}
