package v1;

import android.view.animation.Animation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

/* renamed from: v1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class AnimationAnimationListenerC1747f implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SwipeRefreshLayout f20613a;

    public AnimationAnimationListenerC1747f(SwipeRefreshLayout swipeRefreshLayout) {
        this.f20613a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        InterfaceC1755n interfaceC1755n;
        SwipeRefreshLayout swipeRefreshLayout = this.f20613a;
        if (!swipeRefreshLayout.f8189f) {
            swipeRefreshLayout.e();
            return;
        }
        swipeRefreshLayout.f8176I.setAlpha(255);
        swipeRefreshLayout.f8176I.start();
        if (swipeRefreshLayout.f8181N && (interfaceC1755n = swipeRefreshLayout.f8188e) != null) {
            interfaceC1755n.onRefresh();
        }
        swipeRefreshLayout.f8200w = swipeRefreshLayout.f8170C.getTop();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
