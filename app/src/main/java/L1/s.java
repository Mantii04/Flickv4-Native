package L1;

/* loaded from: classes.dex */
public final class s implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final t f1884b;

    /* renamed from: e, reason: collision with root package name */
    public final Runnable f1885e;

    public s(t tVar, Runnable runnable) {
        this.f1884b = tVar;
        this.f1885e = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f1885e.run();
            synchronized (this.f1884b.f1889j) {
                this.f1884b.a();
            }
        } catch (Throwable th) {
            synchronized (this.f1884b.f1889j) {
                this.f1884b.a();
                throw th;
            }
        }
    }
}
