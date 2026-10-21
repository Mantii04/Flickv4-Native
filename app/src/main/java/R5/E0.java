package R5;

/* loaded from: classes2.dex */
public abstract class E0 extends E {
    public abstract E0 getImmediate();

    public final String toStringInternalImpl() {
        E0 e02;
        E0 main = U.getMain();
        if (this == main) {
            return "Dispatchers.Main";
        }
        try {
            e02 = main.getImmediate();
        } catch (UnsupportedOperationException unused) {
            e02 = null;
        }
        if (this == e02) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }
}
