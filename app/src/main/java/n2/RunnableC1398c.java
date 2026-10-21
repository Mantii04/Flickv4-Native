package n2;

/* renamed from: n2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1398c implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1400e f18939b;

    public RunnableC1398c(C1400e c1400e) {
        this.f18939b = c1400e;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1400e c1400e = this.f18939b;
        c1400e.getClass();
        while (true) {
            try {
                c1400e.b((C1399d) c1400e.f18946d.remove());
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
