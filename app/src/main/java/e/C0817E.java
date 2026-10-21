package e;

import M.E0;
import android.view.View;

/* renamed from: e.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0817E extends E0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RunnableC0818F f13648a;

    public C0817E(RunnableC0818F runnableC0818F) {
        this.f13648a = runnableC0818F;
    }

    @Override // M.D0
    public void onAnimationEnd(View view) {
        RunnableC0818F runnableC0818F = this.f13648a;
        runnableC0818F.f13649b.f13695E.setAlpha(1.0f);
        runnableC0818F.f13649b.f13698H.setListener(null);
        runnableC0818F.f13649b.f13698H = null;
    }

    @Override // M.E0, M.D0
    public void onAnimationStart(View view) {
        this.f13648a.f13649b.f13695E.setVisibility(0);
    }
}
