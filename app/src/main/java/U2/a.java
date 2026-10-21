package U2;

import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class a implements InterfaceC1657a {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f3792c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile InterfaceC1657a f3793a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f3794b;

    public static <P extends InterfaceC1657a, T> InterfaceC1657a provider(P p6) {
        d.checkNotNull(p6);
        if (p6 instanceof a) {
            return p6;
        }
        a aVar = new a();
        aVar.f3794b = f3792c;
        aVar.f3793a = p6;
        return aVar;
    }

    public static Object reentrantCheck(Object obj, Object obj2) {
        if (obj == f3792c) {
            return obj2;
        }
        if (obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // t5.InterfaceC1657a
    public Object get() {
        Object obj;
        Object obj2 = this.f3794b;
        Object obj3 = f3792c;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f3794b;
                if (obj == obj3) {
                    obj = this.f3793a.get();
                    this.f3794b = reentrantCheck(this.f3794b, obj);
                    this.f3793a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
