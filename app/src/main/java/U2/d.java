package U2;

/* loaded from: classes.dex */
public abstract class d {
    public static <T> void checkBuilderRequirement(T t6, Class<T> cls) {
        if (t6 != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    public static <T> T checkNotNull(T t6) {
        t6.getClass();
        return t6;
    }

    public static <T> T checkNotNull(T t6, String str) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException(str);
    }
}
