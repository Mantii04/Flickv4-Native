package l;

import android.view.ViewTreeObserver;

/* renamed from: l.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC1131b0 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1170o0 f17856b;

    public ViewTreeObserverOnGlobalLayoutListenerC1131b0(C1170o0 c1170o0) {
        this.f17856b = c1170o0;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        C1170o0 c1170o0 = this.f17856b;
        if (!c1170o0.getInternalPopup().isShowing()) {
            c1170o0.f17959n.show(AbstractC1137d0.b(c1170o0), AbstractC1137d0.a(c1170o0));
        }
        ViewTreeObserver viewTreeObserver = c1170o0.getViewTreeObserver();
        if (viewTreeObserver != null) {
            AbstractC1134c0.a(viewTreeObserver, this);
        }
    }
}
