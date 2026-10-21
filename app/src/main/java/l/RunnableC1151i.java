package l;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* renamed from: l.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1151i implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f17901b;

    public RunnableC1151i(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f17901b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f17901b;
        actionBarOverlayLayout.b();
        actionBarOverlayLayout.f4993F = actionBarOverlayLayout.f5001j.animate().translationY(-actionBarOverlayLayout.f5001j.getHeight()).setListener(actionBarOverlayLayout.f4994G);
    }
}
