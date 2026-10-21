package k;

import android.view.View;
import android.view.ViewTreeObserver;

/* renamed from: k.K, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnAttachStateChangeListenerC1066K implements View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewOnKeyListenerC1067L f17042b;

    public ViewOnAttachStateChangeListenerC1066K(ViewOnKeyListenerC1067L viewOnKeyListenerC1067L) {
        this.f17042b = viewOnKeyListenerC1067L;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewOnKeyListenerC1067L viewOnKeyListenerC1067L = this.f17042b;
        ViewTreeObserver viewTreeObserver = viewOnKeyListenerC1067L.f17062y;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                viewOnKeyListenerC1067L.f17062y = view.getViewTreeObserver();
            }
            viewOnKeyListenerC1067L.f17062y.removeGlobalOnLayoutListener(viewOnKeyListenerC1067L.f17056s);
        }
        view.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }
}
