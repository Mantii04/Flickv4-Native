package P3;

/* loaded from: classes2.dex */
public abstract class t {
    public static <T> T firstNonNull(T t6, T t7) {
        if (t6 != null) {
            return t6;
        }
        if (t7 != null) {
            return t7;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static s toStringHelper(Object obj) {
        return new s(obj.getClass().getSimpleName());
    }
}
