package v0;

import java.util.ArrayList;
import java.util.LinkedHashMap;

/* renamed from: v0.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1734s {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f20523a = new LinkedHashMap();

    public void add(r rVar) {
        long[] jArr = rVar.f20521e;
        if (jArr.length > 0) {
            LinkedHashMap linkedHashMap = this.f20523a;
            if (linkedHashMap.containsKey(Long.valueOf(jArr[0]))) {
                return;
            }
            linkedHashMap.put(Long.valueOf(rVar.f20521e[0]), rVar);
        }
    }

    public r merge() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (r rVar : this.f20523a.values()) {
            arrayList.add(rVar.f20518b);
            arrayList2.add(rVar.f20519c);
            arrayList3.add(rVar.f20520d);
            arrayList4.add(rVar.f20521e);
        }
        return new r(com.google.common.primitives.a.concat((int[][]) arrayList.toArray(new int[arrayList.size()][])), U3.f.concat((long[][]) arrayList2.toArray(new long[arrayList2.size()][])), U3.f.concat((long[][]) arrayList3.toArray(new long[arrayList3.size()][])), U3.f.concat((long[][]) arrayList4.toArray(new long[arrayList4.size()][])));
    }

    public int size() {
        return this.f20523a.size();
    }
}
