package G2;

/* loaded from: classes.dex */
public final class d extends p.g {

    /* renamed from: p, reason: collision with root package name */
    public int f1028p;

    @Override // p.q, java.util.Map
    public void clear() {
        this.f1028p = 0;
        super.clear();
    }

    @Override // p.q, java.util.Map
    public int hashCode() {
        if (this.f1028p == 0) {
            this.f1028p = super.hashCode();
        }
        return this.f1028p;
    }

    @Override // p.q, java.util.Map
    public Object put(Object obj, Object obj2) {
        this.f1028p = 0;
        return super.put(obj, obj2);
    }

    @Override // p.q
    public void putAll(p.q qVar) {
        this.f1028p = 0;
        super.putAll(qVar);
    }

    @Override // p.q
    public Object removeAt(int i2) {
        this.f1028p = 0;
        return super.removeAt(i2);
    }

    @Override // p.q
    public Object setValueAt(int i2, Object obj) {
        this.f1028p = 0;
        return super.setValueAt(i2, obj);
    }
}
