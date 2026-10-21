package androidx.datastore.preferences.protobuf;

/* renamed from: androidx.datastore.preferences.protobuf.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0437v {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f5922a;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        f5922a = cls;
    }

    public static C0438w createEmpty() {
        Class cls = f5922a;
        if (cls != null) {
            try {
                return (C0438w) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
            }
        }
        return C0438w.f5925b;
    }
}
