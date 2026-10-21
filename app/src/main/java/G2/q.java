package G2;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public Class f1045a;

    /* renamed from: b, reason: collision with root package name */
    public Class f1046b;

    /* renamed from: c, reason: collision with root package name */
    public Class f1047c;

    public q() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        return this.f1045a.equals(qVar.f1045a) && this.f1046b.equals(qVar.f1046b) && t.bothNullOrEqual(this.f1047c, qVar.f1047c);
    }

    public int hashCode() {
        int hashCode = (this.f1046b.hashCode() + (this.f1045a.hashCode() * 31)) * 31;
        Class cls = this.f1047c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public void set(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f1045a = cls;
        this.f1046b = cls2;
        this.f1047c = cls3;
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f1045a + ", second=" + this.f1046b + '}';
    }

    public q(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        set(cls, cls2, cls3);
    }
}
