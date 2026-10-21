package A4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import flix.com.vision.activities.leanback.SlideshowActivity;

/* loaded from: classes2.dex */
public final class z extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SlideshowActivity f105a;

    public z(SlideshowActivity slideshowActivity) {
        this.f105a = slideshowActivity;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        SlideshowActivity.e(this.f105a);
    }
}
