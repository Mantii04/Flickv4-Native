package l;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* renamed from: l.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1148h implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f17897b;

    public RunnableC1148h(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f17897b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f17897b;
        actionBarOverlayLayout.b();
        actionBarOverlayLayout.f4993F = actionBarOverlayLayout.f5001j.animate().translationY(0.0f).setListener(actionBarOverlayLayout.f4994G);
    }
}
