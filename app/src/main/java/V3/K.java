package V3;

/* loaded from: classes2.dex */
public final class K extends AbstractC0346g implements Runnable {

    /* renamed from: q, reason: collision with root package name */
    public final Runnable f3984q;

    public K(Runnable runnable) {
        this.f3984q = (Runnable) P3.v.checkNotNull(runnable);
    }

    @Override // com.google.common.util.concurrent.b
    public String pendingToString() {
        return "task=[" + this.f3984q + "]";
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3984q.run();
        } catch (Throwable th) {
            setException(th);
            throw th;
        }
    }
}
