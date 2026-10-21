package androidx.mediarouter.app;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import java.util.Set;

/* renamed from: androidx.mediarouter.app.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0608l implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D f7839b;

    public ViewTreeObserverOnGlobalLayoutListenerC0608l(D d7) {
        this.f7839b = d7;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        D d7 = this.f7839b;
        d7.f7624P.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        Set set = d7.f7627S;
        if (set == null || set.size() == 0) {
            d7.g(true);
            return;
        }
        AnimationAnimationListenerC0609m animationAnimationListenerC0609m = new AnimationAnimationListenerC0609m(d7);
        int firstVisiblePosition = d7.f7624P.getFirstVisiblePosition();
        boolean z6 = false;
        for (int i2 = 0; i2 < d7.f7624P.getChildCount(); i2++) {
            View childAt = d7.f7624P.getChildAt(i2);
            if (d7.f7627S.contains((f1.U) d7.f7625Q.getItem(firstVisiblePosition + i2))) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(d7.f7659t0);
                alphaAnimation.setFillEnabled(true);
                alphaAnimation.setFillAfter(true);
                if (!z6) {
                    alphaAnimation.setAnimationListener(animationAnimationListenerC0609m);
                    z6 = true;
                }
                childAt.clearAnimation();
                childAt.startAnimation(alphaAnimation);
            }
        }
    }
}
