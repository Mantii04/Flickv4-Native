package K4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import flix.com.vision.bvp.BetterVideoPlayer2;

/* loaded from: classes2.dex */
public final class s extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer2 f1812a;

    public s(BetterVideoPlayer2 betterVideoPlayer2) {
        this.f1812a = betterVideoPlayer2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        View view = this.f1812a.f15950u;
        if (view != null) {
            view.setVisibility(8);
        }
    }
}
