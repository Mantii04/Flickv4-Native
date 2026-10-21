package androidx.mediarouter.app;

/* loaded from: classes.dex */
public final class A implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ B f7603b;

    public A(B b7) {
        this.f7603b = b7;
    }

    @Override // java.lang.Runnable
    public void run() {
        D d7 = this.f7603b.f7605e;
        if (d7.f7632X != null) {
            d7.f7632X = null;
            if (d7.f7648n0) {
                d7.m(d7.f7649o0);
            }
        }
    }
}
