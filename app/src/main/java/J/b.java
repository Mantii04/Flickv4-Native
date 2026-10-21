package J;

/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f1394b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1395e;

    public b(r rVar, int i2) {
        this.f1394b = rVar;
        this.f1395e = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1394b.onTypefaceRequestFailed(this.f1395e);
    }
}
