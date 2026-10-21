package C1;

/* loaded from: classes.dex */
public final class K implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ V3.F f392b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ N f393e;

    public K(N n7, V3.F f3) {
        this.f393e = n7;
        this.f392b = f3;
    }

    @Override // java.lang.Runnable
    public void run() {
        N n7 = this.f393e;
        if (n7.f423z.isCancelled()) {
            return;
        }
        try {
            this.f392b.get();
            B1.t.get().debug(N.f405B, "Starting work for " + n7.f411m.f1596c);
            n7.f423z.setFuture(n7.f412n.startWork());
        } catch (Throwable th) {
            n7.f423z.setException(th);
        }
    }
}
