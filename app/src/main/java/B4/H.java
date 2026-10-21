package B4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import flix.com.vision.activities.player.SimpleVideoPlayer;

/* loaded from: classes2.dex */
public final class H extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f229a;

    public H(SimpleVideoPlayer simpleVideoPlayer) {
        this.f229a = simpleVideoPlayer;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f229a.f15690n.setVisibility(8);
    }
}
