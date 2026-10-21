package p;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import q.AbstractC1506a;

/* loaded from: classes.dex */
public final class d implements Iterator, Map.Entry {

    /* renamed from: b, reason: collision with root package name */
    public int f19375b;

    /* renamed from: e, reason: collision with root package name */
    public int f19376e = -1;

    /* renamed from: f, reason: collision with root package name */
    public boolean f19377f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ g f19378j;

    public d(g gVar) {
        this.f19378j = gVar;
        this.f19375b = gVar.size() - 1;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (!this.f19377f) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i2 = this.f19376e;
        g gVar = this.f19378j;
        return AbstractC1506a.equal(key, gVar.keyAt(i2)) && AbstractC1506a.equal(entry.getValue(), gVar.valueAt(this.f19376e));
    }

    @Override // java.util.Map.Entry
    public Object getKey() {
        if (this.f19377f) {
            return this.f19378j.keyAt(this.f19376e);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        if (this.f19377f) {
            return this.f19378j.valueAt(this.f19376e);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f19376e < this.f19375b;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        if (!this.f19377f) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i2 = this.f19376e;
        g gVar = this.f19378j;
        Object keyAt = gVar.keyAt(i2);
        Object valueAt = gVar.valueAt(this.f19376e);
        return (keyAt == null ? 0 : keyAt.hashCode()) ^ (valueAt != null ? valueAt.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.f19377f) {
            throw new IllegalStateException();
        }
        this.f19378j.removeAt(this.f19376e);
        this.f19376e--;
        this.f19375b--;
        this.f19377f = false;
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        if (this.f19377f) {
            return this.f19378j.setValueAt(this.f19376e, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public String toString() {
        return getKey() + "=" + getValue();
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, Object> next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f19376e++;
        this.f19377f = true;
        return this;
    }
}
