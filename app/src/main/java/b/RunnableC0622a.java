package b;

/* renamed from: b.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0622a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8328b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d f8329e;

    public /* synthetic */ RunnableC0622a(d dVar, int i2) {
        this.f8328b = i2;
        this.f8329e = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8328b) {
            case 0:
                this.f8329e.b();
                break;
            default:
                this.f8329e.a();
                break;
        }
    }
}
