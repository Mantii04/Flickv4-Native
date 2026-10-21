package H2;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final a f1197a = new a();

    public static <T extends f> L.e threadSafe(int i2, d dVar) {
        return new e(new L.g(i2), dVar, f1197a);
    }

    public static <T> L.e threadSafeList() {
        return threadSafeList(20);
    }

    public static <T> L.e threadSafeList(int i2) {
        return new e(new L.g(i2), new b(), new c());
    }
}
