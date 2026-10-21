package A4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import flix.com.vision.activities.leanback.SlideshowActivity;

/* loaded from: classes2.dex */
public final class w extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f101a;

    public w(x xVar) {
        this.f101a = xVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        SlideshowActivity slideshowActivity = this.f101a.f102b;
        int i2 = SlideshowActivity.f15502v;
        slideshowActivity.f(true);
    }
}
