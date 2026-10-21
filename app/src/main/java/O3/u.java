package O3;

/* loaded from: classes2.dex */
public abstract class u {

    /* renamed from: a, reason: collision with root package name */
    public Object f2418a;

    public u(y yVar, Object obj) {
        this.f2418a = obj;
        synchronized (yVar.f2431h) {
            yVar.f2431h.add(this);
        }
    }

    public final void a() {
        Object obj;
        synchronized (this) {
            obj = this.f2418a;
        }
        a(obj);
    }

    public abstract void a(Object obj);

    public final void b() {
        synchronized (this) {
            this.f2418a = null;
        }
    }
}
