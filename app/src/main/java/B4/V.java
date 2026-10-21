package B4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import flix.com.vision.activities.player.WebPlayerActivitySuper;

/* loaded from: classes2.dex */
public final class V extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebPlayerActivitySuper f248a;

    public V(WebPlayerActivitySuper webPlayerActivitySuper) {
        this.f248a = webPlayerActivitySuper;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        WebPlayerActivitySuper webPlayerActivitySuper = this.f248a;
        webPlayerActivitySuper.f15774w.setVisibility(8);
        webPlayerActivitySuper.f15774w.setAlpha(1.0f);
    }
}
