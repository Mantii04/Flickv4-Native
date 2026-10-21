package L1;

import B1.C0029i;

/* loaded from: classes.dex */
public final class z implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ M1.g f1900b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ A f1901e;

    public z(A a7, M1.g gVar) {
        this.f1901e = a7;
        this.f1900b = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        A a7 = this.f1901e;
        if (a7.f1838b.isCancelled()) {
            return;
        }
        try {
            C0029i c0029i = (C0029i) this.f1900b.get();
            if (c0029i == null) {
                throw new IllegalStateException("Worker was marked important (" + a7.f1840f.f1596c + ") but did not provide ForegroundInfo");
            }
            B1.t.get().debug(A.f1837p, "Updating notification for " + a7.f1840f.f1596c);
            a7.f1838b.setFuture(((C) a7.f1842m).setForegroundAsync(a7.f1839e, a7.f1841j.getId(), c0029i));
        } catch (Throwable th) {
            a7.f1838b.setException(th);
        }
    }
}
