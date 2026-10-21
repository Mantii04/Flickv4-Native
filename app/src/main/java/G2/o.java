package G2;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f1041a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b, reason: collision with root package name */
    public final long f1042b;

    /* renamed from: c, reason: collision with root package name */
    public long f1043c;

    public o(long j7) {
        this.f1042b = j7;
    }

    public void clearMemory() {
        trimToSize(0L);
    }

    public synchronized Object get(Object obj) {
        n nVar;
        nVar = (n) this.f1041a.get(obj);
        return nVar != null ? nVar.f1039a : null;
    }

    public synchronized long getMaxSize() {
        return this.f1042b;
    }

    public int getSize(Object obj) {
        return 1;
    }

    public synchronized Object put(Object obj, Object obj2) {
        int size = getSize(obj2);
        long j7 = size;
        if (j7 >= this.f1042b) {
            onItemEvicted(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.f1043c += j7;
        }
        n nVar = (n) this.f1041a.put(obj, obj2 == null ? null : new n(obj2, size));
        if (nVar != null) {
            this.f1043c -= nVar.f1040b;
            if (!nVar.f1039a.equals(obj2)) {
                onItemEvicted(obj, nVar.f1039a);
            }
        }
        trimToSize(this.f1042b);
        return nVar != null ? nVar.f1039a : null;
    }

    public synchronized Object remove(Object obj) {
        n nVar = (n) this.f1041a.remove(obj);
        if (nVar == null) {
            return null;
        }
        this.f1043c -= nVar.f1040b;
        return nVar.f1039a;
    }

    public synchronized void trimToSize(long j7) {
        while (this.f1043c > j7) {
            Iterator it = this.f1041a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            n nVar = (n) entry.getValue();
            this.f1043c -= nVar.f1040b;
            Object key = entry.getKey();
            it.remove();
            onItemEvicted(key, nVar.f1039a);
        }
    }

    public void onItemEvicted(Object obj, Object obj2) {
    }
}
