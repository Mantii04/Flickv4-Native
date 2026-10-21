package R5;

/* loaded from: classes2.dex */
public abstract class M {

    /* renamed from: a, reason: collision with root package name */
    public static final P f3152a;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        P p6;
        if (W5.H.systemProp("kotlinx.coroutines.main.delay", false)) {
            E0 main = U.getMain();
            p6 = (W5.x.isMissing(main) || !(main instanceof P)) ? L.f3150r : (P) main;
        } else {
            p6 = L.f3150r;
        }
        f3152a = p6;
    }

    public static final P getDefaultDelay() {
        return f3152a;
    }
}
