package P3;

/* loaded from: classes2.dex */
public final class E implements C {

    /* renamed from: j, reason: collision with root package name */
    public static final D f2688j = new D(0);

    /* renamed from: b, reason: collision with root package name */
    public final Object f2689b = new Object();

    /* renamed from: e, reason: collision with root package name */
    public volatile C f2690e;

    /* renamed from: f, reason: collision with root package name */
    public Object f2691f;

    public E(C c7) {
        this.f2690e = (C) v.checkNotNull(c7);
    }

    @Override // P3.C
    public Object get() {
        C c7 = this.f2690e;
        D d7 = f2688j;
        if (c7 != d7) {
            synchronized (this.f2689b) {
                try {
                    if (this.f2690e != d7) {
                        Object obj = this.f2690e.get();
                        this.f2691f = obj;
                        this.f2690e = d7;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.f2691f;
    }

    public String toString() {
        Object obj = this.f2690e;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (obj == f2688j) {
            obj = "<supplier that returned " + this.f2691f + ">";
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
