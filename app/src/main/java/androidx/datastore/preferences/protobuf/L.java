package androidx.datastore.preferences.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class L extends N {

    /* renamed from: c, reason: collision with root package name */
    public static final Class f5797c = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    public static List d(Object obj, long j7, int i2) {
        List list = (List) H0.f5772d.getObject(obj, j7);
        if (list.isEmpty()) {
            List j8 = list instanceof K ? new J(i2) : ((list instanceof InterfaceC0418g0) && (list instanceof H)) ? ((H) list).mutableCopyWithCapacity(i2) : new ArrayList(i2);
            H0.o(obj, j7, j8);
            return j8;
        }
        if (f5797c.isAssignableFrom(list.getClass())) {
            ArrayList arrayList = new ArrayList(list.size() + i2);
            arrayList.addAll(list);
            H0.o(obj, j7, arrayList);
            return arrayList;
        }
        if (list instanceof B0) {
            J j9 = new J(list.size() + i2);
            j9.addAll((B0) list);
            H0.o(obj, j7, j9);
            return j9;
        }
        if ((list instanceof InterfaceC0418g0) && (list instanceof H)) {
            H h7 = (H) list;
            if (!h7.isModifiable()) {
                H mutableCopyWithCapacity = h7.mutableCopyWithCapacity(list.size() + i2);
                H0.o(obj, j7, mutableCopyWithCapacity);
                return mutableCopyWithCapacity;
            }
        }
        return list;
    }

    @Override // androidx.datastore.preferences.protobuf.N
    public final void a(long j7, Object obj) {
        Object unmodifiableList;
        List list = (List) H0.f5772d.getObject(obj, j7);
        if (list instanceof K) {
            unmodifiableList = ((K) list).getUnmodifiableView();
        } else {
            if (f5797c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof InterfaceC0418g0) && (list instanceof H)) {
                H h7 = (H) list;
                if (h7.isModifiable()) {
                    ((AbstractC0411d) h7).makeImmutable();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        H0.o(obj, j7, unmodifiableList);
    }

    @Override // androidx.datastore.preferences.protobuf.N
    public final void b(Object obj, long j7, Object obj2) {
        List list = (List) H0.f5772d.getObject(obj2, j7);
        List d7 = d(obj, j7, list.size());
        int size = d7.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            d7.addAll(list);
        }
        if (size > 0) {
            list = d7;
        }
        H0.o(obj, j7, list);
    }

    @Override // androidx.datastore.preferences.protobuf.N
    public final List c(long j7, Object obj) {
        return d(obj, j7, 10);
    }
}
