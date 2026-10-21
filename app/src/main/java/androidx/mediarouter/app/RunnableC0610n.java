package androidx.mediarouter.app;

/* renamed from: androidx.mediarouter.app.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0610n implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D f7883b;

    public RunnableC0610n(D d7) {
        this.f7883b = d7;
    }

    @Override // java.lang.Runnable
    public void run() {
        D d7 = this.f7883b;
        d7.f(true);
        d7.f7624P.requestLayout();
        d7.f7624P.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0608l(d7));
    }
}
