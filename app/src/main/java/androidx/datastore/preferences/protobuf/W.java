package androidx.datastore.preferences.protobuf;

/* loaded from: classes.dex */
public abstract class W {

    /* renamed from: a, reason: collision with root package name */
    public static final V f5815a;

    /* renamed from: b, reason: collision with root package name */
    public static final V f5816b;

    static {
        V v6;
        try {
            v6 = (V) Class.forName("androidx.datastore.preferences.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            v6 = null;
        }
        f5815a = v6;
        f5816b = new V();
    }
}
