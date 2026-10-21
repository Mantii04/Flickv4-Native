package B1;

/* loaded from: classes.dex */
public abstract class t {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f194a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static volatile t f195b;

    public t(int i2) {
    }

    public static t get() {
        t tVar;
        synchronized (f194a) {
            try {
                if (f195b == null) {
                    f195b = new s(3);
                }
                tVar = f195b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tVar;
    }

    public static void setLogger(t tVar) {
        synchronized (f194a) {
            f195b = tVar;
        }
    }

    public static String tagWithPrefix(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public abstract void debug(String str, String str2);

    public abstract void debug(String str, String str2, Throwable th);

    public abstract void error(String str, String str2);

    public abstract void error(String str, String str2, Throwable th);

    public abstract void info(String str, String str2);

    public abstract void info(String str, String str2, Throwable th);

    public abstract void verbose(String str, String str2);

    public abstract void warning(String str, String str2);

    public abstract void warning(String str, String str2, Throwable th);
}
