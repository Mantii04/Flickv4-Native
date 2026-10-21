package L1;

/* loaded from: classes.dex */
public final class F implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final G f1852b;

    /* renamed from: e, reason: collision with root package name */
    public final K1.r f1853e;

    public F(G g7, K1.r rVar) {
        this.f1852b = g7;
        this.f1853e = rVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f1852b.f1858d) {
            try {
                if (((F) this.f1852b.f1856b.remove(this.f1853e)) != null) {
                    E e3 = (E) this.f1852b.f1857c.remove(this.f1853e);
                    if (e3 != null) {
                        ((E1.h) e3).onTimeLimitExceeded(this.f1853e);
                    }
                } else {
                    B1.t.get().debug("WrkTimerRunnable", "Timer with " + this.f1853e + " is already marked as complete.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
