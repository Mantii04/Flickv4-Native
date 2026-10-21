package k;

import android.view.View;
import android.view.ViewTreeObserver;

/* renamed from: k.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnAttachStateChangeListenerC1074f implements View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewOnKeyListenerC1078j f17096b;

    public ViewOnAttachStateChangeListenerC1074f(ViewOnKeyListenerC1078j viewOnKeyListenerC1078j) {
        this.f17096b = viewOnKeyListenerC1078j;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewOnKeyListenerC1078j viewOnKeyListenerC1078j = this.f17096b;
        ViewTreeObserver viewTreeObserver = viewOnKeyListenerC1078j.f17113H;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                viewOnKeyListenerC1078j.f17113H = view.getViewTreeObserver();
            }
            viewOnKeyListenerC1078j.f17113H.removeGlobalOnLayoutListener(viewOnKeyListenerC1078j.f17124s);
        }
        view.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }
}
