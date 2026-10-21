package K4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import flix.com.vision.bvp.BetterVideoPlayer;

/* loaded from: classes2.dex */
public final class h extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f1795a;

    public h(BetterVideoPlayer betterVideoPlayer) {
        this.f1795a = betterVideoPlayer;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        View view = this.f1795a.f15902v;
        if (view != null) {
            view.setVisibility(8);
        }
    }
}
