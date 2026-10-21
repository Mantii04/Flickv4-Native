package androidx.leanback.widget;

/* loaded from: classes.dex */
public final class F implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ GridLayoutManager f6492b;

    public F(GridLayoutManager gridLayoutManager) {
        this.f6492b = gridLayoutManager;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f6492b.requestLayout();
    }
}
