package k;

import android.view.View;
import android.view.ViewTreeObserver;

/* renamed from: k.J, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC1065J implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewOnKeyListenerC1067L f17041b;

    public ViewTreeObserverOnGlobalLayoutListenerC1065J(ViewOnKeyListenerC1067L viewOnKeyListenerC1067L) {
        this.f17041b = viewOnKeyListenerC1067L;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        ViewOnKeyListenerC1067L viewOnKeyListenerC1067L = this.f17041b;
        if (!viewOnKeyListenerC1067L.isShowing() || viewOnKeyListenerC1067L.f17055r.isModal()) {
            return;
        }
        View view = viewOnKeyListenerC1067L.f17060w;
        if (view == null || !view.isShown()) {
            viewOnKeyListenerC1067L.dismiss();
        } else {
            viewOnKeyListenerC1067L.f17055r.show();
        }
    }
}
