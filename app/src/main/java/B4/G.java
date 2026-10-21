package B4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import flix.com.vision.activities.player.SimpleVideoPlayer;

/* loaded from: classes2.dex */
public final class G extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f228a;

    public G(SimpleVideoPlayer simpleVideoPlayer) {
        this.f228a = simpleVideoPlayer;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        SimpleVideoPlayer simpleVideoPlayer = this.f228a;
        simpleVideoPlayer.f15652L.setVisibility(8);
        simpleVideoPlayer.f15630A.hideControls();
        simpleVideoPlayer.f15630A.hideToolbar();
    }
}
