package androidx.datastore.preferences.protobuf;

/* loaded from: classes.dex */
public final class Q implements Y {

    /* renamed from: a, reason: collision with root package name */
    public Y[] f5805a;

    @Override // androidx.datastore.preferences.protobuf.Y
    public boolean isSupported(Class<?> cls) {
        for (Y y6 : this.f5805a) {
            if (y6.isSupported(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.Y
    public X messageInfoFor(Class<?> cls) {
        for (Y y6 : this.f5805a) {
            if (y6.isSupported(cls)) {
                return y6.messageInfoFor(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }
}
