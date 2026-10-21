package J;

/* loaded from: classes.dex */
public final class v implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f1429b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1430e;

    public v(m mVar, Object obj) {
        this.f1429b = mVar;
        this.f1430e = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1429b.accept(this.f1430e);
    }
}
