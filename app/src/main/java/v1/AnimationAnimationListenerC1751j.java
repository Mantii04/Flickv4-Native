package v1;

import android.view.animation.Animation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* renamed from: v1.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AnimationAnimationListenerC1751j implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwipeRefreshLayout f20619a;

    public AnimationAnimationListenerC1751j(SwipeRefreshLayout swipeRefreshLayout) {
        this.f20619a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        SwipeRefreshLayout swipeRefreshLayout = this.f20619a;
        swipeRefreshLayout.getClass();
        swipeRefreshLayout.h(null);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
