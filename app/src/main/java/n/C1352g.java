package n;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: n.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1352g implements Iterable {

    /* renamed from: b, reason: collision with root package name */
    public C1348c f18764b;

    /* renamed from: e, reason: collision with root package name */
    public C1348c f18765e;

    /* renamed from: f, reason: collision with root package name */
    public final WeakHashMap f18766f = new WeakHashMap();

    /* renamed from: j, reason: collision with root package name */
    public int f18767j = 0;

    public Iterator<Map.Entry<Object, Object>> descendingIterator() {
        C1347b c1347b = new C1347b(this.f18765e, this.f18764b, 1);
        this.f18766f.put(c1347b, Boolean.FALSE);
        return c1347b;
    }

    public Map.Entry<Object, Object> eldest() {
        return this.f18764b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1352g)) {
            return false;
        }
        C1352g c1352g = (C1352g) obj;
        if (size() != c1352g.size()) {
            return false;
        }
        Iterator<Map.Entry<Object, Object>> it = iterator();
        Iterator<Map.Entry<Object, Object>> it2 = c1352g.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<Object, Object> next = it.next();
            Map.Entry<Object, Object> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public C1348c get(Object obj) {
        C1348c c1348c = this.f18764b;
        while (c1348c != null && !c1348c.f18755b.equals(obj)) {
            c1348c = c1348c.f18757f;
        }
        return c1348c;
    }

    public int hashCode() {
        Iterator<Map.Entry<Object, Object>> it = iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 += it.next().hashCode();
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<Object, Object>> iterator() {
        C1347b c1347b = new C1347b(this.f18764b, this.f18765e, 0);
        this.f18766f.put(c1347b, Boolean.FALSE);
        return c1347b;
    }

    public C1349d iteratorWithAdditions() {
        C1349d c1349d = new C1349d(this);
        this.f18766f.put(c1349d, Boolean.FALSE);
        return c1349d;
    }

    public Map.Entry<Object, Object> newest() {
        return this.f18765e;
    }

    public Object putIfAbsent(Object obj, Object obj2) {
        C1348c c1348c = get(obj);
        if (c1348c != null) {
            return c1348c.f18756e;
        }
        C1348c c1348c2 = new C1348c(obj, obj2);
        this.f18767j++;
        C1348c c1348c3 = this.f18765e;
        if (c1348c3 == null) {
            this.f18764b = c1348c2;
            this.f18765e = c1348c2;
            return null;
        }
        c1348c3.f18757f = c1348c2;
        c1348c2.f18758j = c1348c3;
        this.f18765e = c1348c2;
        return null;
    }

    public Object remove(Object obj) {
        C1348c c1348c = get(obj);
        if (c1348c == null) {
            return null;
        }
        this.f18767j--;
        WeakHashMap weakHashMap = this.f18766f;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((AbstractC1351f) it.next()).supportRemove(c1348c);
            }
        }
        C1348c c1348c2 = c1348c.f18758j;
        if (c1348c2 != null) {
            c1348c2.f18757f = c1348c.f18757f;
        } else {
            this.f18764b = c1348c.f18757f;
        }
        C1348c c1348c3 = c1348c.f18757f;
        if (c1348c3 != null) {
            c1348c3.f18758j = c1348c2;
        } else {
            this.f18765e = c1348c2;
        }
        c1348c.f18757f = null;
        c1348c.f18758j = null;
        return c1348c.f18756e;
    }

    public int size() {
        return this.f18767j;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator<Map.Entry<Object, Object>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
