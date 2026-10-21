package K4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import flix.com.vision.bvp.BetterVideoPlayer2;

/* loaded from: classes2.dex */
public final class u extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer2 f1814a;

    public u(BetterVideoPlayer2 betterVideoPlayer2) {
        this.f1814a = betterVideoPlayer2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        View view = this.f1814a.f15953x;
        if (view != null) {
            view.setVisibility(8);
        }
    }
}
