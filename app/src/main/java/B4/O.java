package B4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import flix.com.vision.activities.player.WebPlayerActivity;

/* loaded from: classes2.dex */
public final class O extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebPlayerActivity f239a;

    public O(WebPlayerActivity webPlayerActivity) {
        this.f239a = webPlayerActivity;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        WebPlayerActivity webPlayerActivity = this.f239a;
        webPlayerActivity.f15743w.setVisibility(8);
        webPlayerActivity.f15743w.setAlpha(1.0f);
    }
}
