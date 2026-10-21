package S2;

/* loaded from: classes.dex */
public final class z implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f3376b;

    public z(Runnable runnable) {
        this.f3376b = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3376b.run();
        } catch (Exception e3) {
            W2.a.e("Executor", "Background execution failure.", e3);
        }
    }
}
