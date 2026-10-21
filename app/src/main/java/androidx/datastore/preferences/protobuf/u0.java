package androidx.datastore.preferences.protobuf;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public abstract class u0 extends AbstractMap {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f5915p = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f5916b;

    /* renamed from: e, reason: collision with root package name */
    public List f5917e = Collections.EMPTY_LIST;

    /* renamed from: f, reason: collision with root package name */
    public Map f5918f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f5919j;

    /* renamed from: m, reason: collision with root package name */
    public volatile t0 f5920m;

    /* renamed from: n, reason: collision with root package name */
    public Map f5921n;

    public u0(int i2) {
        this.f5916b = i2;
        Map map = Collections.EMPTY_MAP;
        this.f5918f = map;
        this.f5921n = map;
    }

    public final int a(Comparable comparable) {
        int i2;
        int size = this.f5917e.size();
        int i7 = size - 1;
        if (i7 >= 0) {
            int compareTo = comparable.compareTo(((r0) this.f5917e.get(i7)).getKey());
            if (compareTo > 0) {
                i2 = size + 1;
                return -i2;
            }
            if (compareTo == 0) {
                return i7;
            }
        }
        int i8 = 0;
        while (i8 <= i7) {
            int i9 = (i8 + i7) / 2;
            int compareTo2 = comparable.compareTo(((r0) this.f5917e.get(i9)).getKey());
            if (compareTo2 < 0) {
                i7 = i9 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i9;
                }
                i8 = i9 + 1;
            }
        }
        i2 = i8 + 1;
        return -i2;
    }

    public final void c() {
        if (this.f5919j) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        c();
        if (!this.f5917e.isEmpty()) {
            this.f5917e.clear();
        }
        if (this.f5918f.isEmpty()) {
            return;
        }
        this.f5918f.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f5918f.containsKey(comparable);
    }

    public final SortedMap d() {
        c();
        if (this.f5918f.isEmpty() && !(this.f5918f instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f5918f = treeMap;
            this.f5921n = treeMap.descendingMap();
        }
        return (SortedMap) this.f5918f;
    }

    public final Object e(int i2) {
        c();
        Object value = ((r0) this.f5917e.remove(i2)).getValue();
        if (!this.f5918f.isEmpty()) {
            Iterator it = d().entrySet().iterator();
            List list = this.f5917e;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new r0(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<Comparable<Object>, Object>> entrySet() {
        if (this.f5920m == null) {
            this.f5920m = new t0(this);
        }
        return this.f5920m;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u0)) {
            return super.equals(obj);
        }
        u0 u0Var = (u0) obj;
        int size = size();
        if (size != u0Var.size()) {
            return false;
        }
        int numArrayEntries = getNumArrayEntries();
        if (numArrayEntries != u0Var.getNumArrayEntries()) {
            return entrySet().equals(u0Var.entrySet());
        }
        for (int i2 = 0; i2 < numArrayEntries; i2++) {
            if (!getArrayEntryAt(i2).equals(u0Var.getArrayEntryAt(i2))) {
                return false;
            }
        }
        if (numArrayEntries != size) {
            return this.f5918f.equals(u0Var.f5918f);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a7 = a(comparable);
        return a7 >= 0 ? ((r0) this.f5917e.get(a7)).getValue() : this.f5918f.get(comparable);
    }

    public Map.Entry<Comparable<Object>, Object> getArrayEntryAt(int i2) {
        return (Map.Entry) this.f5917e.get(i2);
    }

    public int getNumArrayEntries() {
        return this.f5917e.size();
    }

    public int getNumOverflowEntries() {
        return this.f5918f.size();
    }

    public Iterable<Map.Entry<Comparable<Object>, Object>> getOverflowEntries() {
        return this.f5918f.isEmpty() ? I0.f5780c : this.f5918f.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int numArrayEntries = getNumArrayEntries();
        int i2 = 0;
        for (int i7 = 0; i7 < numArrayEntries; i7++) {
            i2 += ((r0) this.f5917e.get(i7)).hashCode();
        }
        return getNumOverflowEntries() > 0 ? this.f5918f.hashCode() + i2 : i2;
    }

    public boolean isImmutable() {
        return this.f5919j;
    }

    public void makeImmutable() {
        if (this.f5919j) {
            return;
        }
        this.f5918f = this.f5918f.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.f5918f);
        this.f5921n = this.f5921n.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.f5921n);
        this.f5919j = true;
    }

    public Object put(Comparable<Object> comparable, Object obj) {
        c();
        int a7 = a(comparable);
        if (a7 >= 0) {
            return ((r0) this.f5917e.get(a7)).setValue(obj);
        }
        c();
        boolean isEmpty = this.f5917e.isEmpty();
        int i2 = this.f5916b;
        if (isEmpty && !(this.f5917e instanceof ArrayList)) {
            this.f5917e = new ArrayList(i2);
        }
        int i7 = -(a7 + 1);
        if (i7 >= i2) {
            return d().put(comparable, obj);
        }
        if (this.f5917e.size() == i2) {
            r0 r0Var = (r0) this.f5917e.remove(i2 - 1);
            d().put(r0Var.getKey(), r0Var.getValue());
        }
        this.f5917e.add(i7, new r0(this, comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        c();
        Comparable comparable = (Comparable) obj;
        int a7 = a(comparable);
        if (a7 >= 0) {
            return e(a7);
        }
        if (this.f5918f.isEmpty()) {
            return null;
        }
        return this.f5918f.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f5918f.size() + this.f5917e.size();
    }
}
