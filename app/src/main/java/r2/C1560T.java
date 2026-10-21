package r2;

/* renamed from: r2.T, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1560T {

    /* renamed from: a, reason: collision with root package name */
    public final C1558Q f19755a;

    public C1560T(long j7) {
        this.f19755a = new C1558Q(j7);
    }

    public Object get(Object obj, int i2, int i7) {
        C1559S a7 = C1559S.a(obj, i2, i7);
        Object obj2 = this.f19755a.get(a7);
        a7.release();
        return obj2;
    }

    public void put(Object obj, int i2, int i7, Object obj2) {
        this.f19755a.put(C1559S.a(obj, i2, i7), obj2);
    }
}
