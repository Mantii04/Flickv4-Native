package androidx.fragment.app;

/* renamed from: androidx.fragment.app.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0472l implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ L0 f6256b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ L0 f6257e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f6258f;

    public RunnableC0472l(L0 l02, L0 l03, boolean z6, p.g gVar) {
        this.f6256b = l02;
        this.f6257e = l03;
        this.f6258f = z6;
    }

    @Override // java.lang.Runnable
    public void run() {
        C fragment = this.f6256b.getFragment();
        C fragment2 = this.f6257e.getFragment();
        C0 c02 = w0.f6349a;
        if (this.f6258f) {
            fragment2.getClass();
        } else {
            fragment.getClass();
        }
    }
}
