package l;

import android.view.View;
import k.C1084p;

/* renamed from: l.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1166n implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final C1175q f17950b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1186u f17951e;

    public RunnableC1166n(C1186u c1186u, C1175q c1175q) {
        this.f17951e = c1186u;
        this.f17950b = c1175q;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1186u c1186u = this.f17951e;
        C1084p c1084p = c1186u.f17088f;
        if (c1084p != null) {
            c1084p.changeMenuMode();
        }
        View view = (View) c1186u.f17093q;
        if (view != null && view.getWindowToken() != null) {
            C1175q c1175q = this.f17950b;
            if (c1175q.tryShow()) {
                c1186u.f18007C = c1175q;
            }
        }
        c1186u.f18009E = null;
    }
}
