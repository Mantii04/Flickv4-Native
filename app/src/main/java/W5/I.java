package W5;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class I {

    /* renamed from: a, reason: collision with root package name */
    public static final int f4179a = Runtime.getRuntime().availableProcessors();

    public static final int getAVAILABLE_PROCESSORS() {
        return f4179a;
    }

    public static final String systemProp(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
