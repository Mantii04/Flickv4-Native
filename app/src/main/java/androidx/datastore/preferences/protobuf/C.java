package androidx.datastore.preferences.protobuf;

/* loaded from: classes.dex */
public final class C implements Y {

    /* renamed from: a, reason: collision with root package name */
    public static final C f5747a = new C();

    public static C getInstance() {
        return f5747a;
    }

    @Override // androidx.datastore.preferences.protobuf.Y
    public boolean isSupported(Class<?> cls) {
        return F.class.isAssignableFrom(cls);
    }

    @Override // androidx.datastore.preferences.protobuf.Y
    public X messageInfoFor(Class<?> cls) {
        if (!F.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (X) F.b(cls.asSubclass(F.class)).dynamicMethod(GeneratedMessageLite$MethodToInvoke.f5764f);
        } catch (Exception e3) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e3);
        }
    }
}
