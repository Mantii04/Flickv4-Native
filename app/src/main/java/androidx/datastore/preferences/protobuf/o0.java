package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class o0 extends u0 {
    @Override // androidx.datastore.preferences.protobuf.u0
    public void makeImmutable() {
        if (!isImmutable()) {
            if (getNumArrayEntries() > 0) {
                getArrayEntryAt(0).getKey().getClass();
                throw new ClassCastException();
            }
            Iterator<Map.Entry<Comparable<Object>, Object>> it = getOverflowEntries().iterator();
            if (it.hasNext()) {
                it.next().getKey().getClass();
                throw new ClassCastException();
            }
        }
        super.makeImmutable();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        if (obj == null) {
            return super.put((Comparable<Object>) null, obj2);
        }
        throw new ClassCastException();
    }
}
