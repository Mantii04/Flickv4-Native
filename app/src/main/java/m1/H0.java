package m1;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* loaded from: classes.dex */
public final class H0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f18278b;

    public H0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f18278b = staggeredGridLayoutManager;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f18278b.m();
    }
}
