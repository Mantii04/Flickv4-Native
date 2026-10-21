package K4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import flix.com.vision.bvp.BetterVideoPlayer;

/* loaded from: classes2.dex */
public final class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f1793a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f1794b;

    public g(BetterVideoPlayer betterVideoPlayer, View view) {
        this.f1794b = betterVideoPlayer;
        this.f1793a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1793a.setVisibility(this.f1794b.f15861M);
    }
}
