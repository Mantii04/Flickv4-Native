package androidx.datastore.preferences.protobuf;

import java.util.List;

/* loaded from: classes.dex */
public final class M extends N {
    @Override // androidx.datastore.preferences.protobuf.N
    public final void a(long j7, Object obj) {
        ((AbstractC0411d) ((H) H0.f5772d.getObject(obj, j7))).makeImmutable();
    }

    @Override // androidx.datastore.preferences.protobuf.N
    public final void b(Object obj, long j7, Object obj2) {
        G0 g02 = H0.f5772d;
        H h7 = (H) g02.getObject(obj, j7);
        H h8 = (H) g02.getObject(obj2, j7);
        int size = h7.size();
        int size2 = h8.size();
        if (size > 0 && size2 > 0) {
            if (!h7.isModifiable()) {
                h7 = h7.mutableCopyWithCapacity(size2 + size);
            }
            h7.addAll(h8);
        }
        if (size > 0) {
            h8 = h7;
        }
        H0.o(obj, j7, h8);
    }

    @Override // androidx.datastore.preferences.protobuf.N
    public final List c(long j7, Object obj) {
        H h7 = (H) H0.f5772d.getObject(obj, j7);
        if (h7.isModifiable()) {
            return h7;
        }
        int size = h7.size();
        H mutableCopyWithCapacity = h7.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
        H0.o(obj, j7, mutableCopyWithCapacity);
        return mutableCopyWithCapacity;
    }
}
