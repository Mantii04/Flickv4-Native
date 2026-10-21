package f1;

/* loaded from: classes.dex */
public final class N {

    /* renamed from: a, reason: collision with root package name */
    public final X f14163a;

    /* renamed from: b, reason: collision with root package name */
    public final M f14164b;

    /* renamed from: c, reason: collision with root package name */
    public L f14165c = L.f14160c;

    /* renamed from: d, reason: collision with root package name */
    public int f14166d;

    /* renamed from: e, reason: collision with root package name */
    public long f14167e;

    public N(X x6, M m7) {
        this.f14163a = x6;
        this.f14164b = m7;
    }

    public boolean filterRouteEvent(U u6, int i2, U u7, int i7) {
        if ((this.f14166d & 2) != 0 || u6.matchesSelector(this.f14165c)) {
            return true;
        }
        C0906l0 c0906l0 = X.b().f14253p;
        if ((c0906l0 == null ? false : c0906l0.isTransferToLocalEnabled()) && u6.isDefaultOrBluetooth() && i2 == 262 && i7 == 3 && u7 != null) {
            return !u7.isDefaultOrBluetooth();
        }
        return false;
    }
}
