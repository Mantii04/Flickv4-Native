package K4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import flix.com.vision.bvp.BetterVideoPlayer2;

/* loaded from: classes2.dex */
public final class r extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f1810a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer2 f1811b;

    public r(BetterVideoPlayer2 betterVideoPlayer2, View view) {
        this.f1811b = betterVideoPlayer2;
        this.f1810a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1810a.setVisibility(this.f1811b.f15919M);
    }
}
