package androidx.datastore.preferences.protobuf;

/* loaded from: classes.dex */
public final class P implements Y {
    @Override // androidx.datastore.preferences.protobuf.Y
    public boolean isSupported(Class<?> cls) {
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.Y
    public X messageInfoFor(Class<?> cls) {
        throw new IllegalStateException("This should never be called.");
    }
}
