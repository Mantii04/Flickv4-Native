package androidx.fragment.app;

/* loaded from: classes.dex */
public final class Z implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0467i0 f6171b;

    public Z(AbstractC0467i0 abstractC0467i0) {
        this.f6171b = abstractC0467i0;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6171b.w(true);
    }
}
